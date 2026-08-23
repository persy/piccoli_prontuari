#!/usr/bin/env python3
"""
Script interattivo per compilare i manuali Typst.

Uso: python3 compila.py

Cerca le "materie" (una sotto-cartella per materia dentro template/,
contenente un main.typ), fa scegliere la materia con un menu a frecce,
elenca i capitoli letti dalla chapterlist del suo main.typ e fa scegliere
quali includere con un menu a checkbox (tutti preselezionati: basta
togliere quelli che non servono), infine fa scegliere il tema colore.
Copertina e retro vengono sempre inclusi, perché main.typ li include a
prescindere dal filtro sui capitoli.

Per compilare serve il motore Typst, in uno di questi due modi:
  - il pacchetto Python "typst" (pip install typst), oppure
  - l'eseguibile "typst" nel PATH (https://typst.app)
Lo script usa il primo che trova, nell'ordine sopra.

Per i menu interattivi serve anche "InquirerPy" (pip install InquirerPy).
"""

import re
import shutil
import subprocess
import sys
from pathlib import Path

try:
    import typst as typst_py
except ImportError:
    typst_py = None

try:
    from InquirerPy import inquirer
    from InquirerPy.base.control import Choice
except ImportError:
    sys.exit(
        "Manca 'InquirerPy', usato per i menu interattivi.\n"
        "Installalo con: pip install InquirerPy"
    )

ROOT = Path(__file__).resolve().parent
MATERIE_DIR = ROOT / "template"
OUTPUT_DIR = ROOT / "output"
FONTS_DIR = ROOT / "fonts"

# Radice del progetto Typst (equivalente a "typst compile --root ...").
# Struttura attesa:
#   piccoli_prontuari/            <- ROOT (qui sta questo script)
#     docs/<materia>/...
#     template/
#       _global/
#       <materia>/main.typ
# da template/<materia>/main.typ, "../_global/..." e "../../docs/..." risalgono
# entrambi fino a ROOT, quindi la project root di Typst è ROOT stesso.
PROJECT_ROOT = ROOT

CHAPTERLIST_RE = re.compile(
    r"#let\s+chapterlist\s*=\s*\((.*?)\)", re.S
)
PATH_RE = re.compile(r'"([^"]+\.typ)"')

# Deve restare sincronizzata con le chiavi di "themes" in template/_global/config.typ
TEMI = ["storico", "gruvbox", "nord", "catppuccin-latte"]


def trova_materie():
    """Ogni sottocartella di MATERIE_DIR (template/) che contiene un main.typ
    è una materia."""
    if not MATERIE_DIR.is_dir():
        sys.exit(f"Non trovo la cartella {MATERIE_DIR}")
    materie = []
    for d in sorted(MATERIE_DIR.iterdir()):
        if d.is_dir() and (d / "main.typ").exists():
            materie.append(d)
    return materie


def leggi_capitoli(main_typ: Path):
    """Estrae la lista dei path dei capitoli dal main.typ, in ordine."""
    testo = main_typ.read_text(encoding="utf-8")
    m = CHAPTERLIST_RE.search(testo)
    if not m:
        raise ValueError(f"Non trovo 'chapterlist' in {main_typ}")
    capitoli = PATH_RE.findall(m.group(1))
    return capitoli, testo, m


def nome_leggibile(path_capitolo: str) -> str:
    """Da '../../docs/matematica/geometria-analitica/chapter.typ'
    ricava 'Geometria Analitica'."""
    cartella = Path(path_capitolo).parent.name
    return cartella.replace("-", " ").replace("_", " ").title()


def scegli_materia(materie):
    scelta = inquirer.select(
        message="Scegli una materia:",
        choices=[Choice(m, name=m.name) for m in materie],
    ).execute()
    return scelta


def scegli_capitoli(capitoli):
    scelte = inquirer.checkbox(
        message="Capitoli da includere (spazio per selezionare/deselezionare, invio per confermare):",
        choices=[
            Choice(c, name=nome_leggibile(c), enabled=True)  # tutti preselezionati
            for c in capitoli
        ],
        validate=lambda risultato: len(risultato) > 0,
        invalid_message="Seleziona almeno un capitolo.",
    ).execute()
    # Manteniamo l'ordine originale del manuale, anche se l'utente ha
    # selezionato le voci saltando in giro nel menu.
    scelte_set = set(scelte)
    return [c for c in capitoli if c in scelte_set]


def scegli_tema():
    return inquirer.select(
        message="Tema colore:",
        choices=TEMI,
        default="storico",
    ).execute()


def genera_main_temporaneo(main_typ: Path, testo: str, match, capitoli_scelti):
    """Scrive una copia temporanea di main.typ con la chapterlist filtrata,
    nella STESSA cartella dell'originale (così gli import relativi
    '../_global/...' e 'cover.typ'/'retro.typ' continuano a funzionare)."""
    nuova_lista = "#let chapterlist = (\n"
    for c in capitoli_scelti:
        nuova_lista += f'  "{c}",\n'
    nuova_lista += ")"

    nuovo_testo = testo[: match.start()] + nuova_lista + testo[match.end():]

    temp_path = main_typ.with_name("_main_temp.typ")
    temp_path.write_text(nuovo_testo, encoding="utf-8")
    return temp_path


def compila(temp_main: Path, output_pdf: Path, tema: str):
    output_pdf.parent.mkdir(parents=True, exist_ok=True)

    if typst_py is not None:
        # Pacchetto Python (pip install typst): non serve il binario nel PATH.
        kwargs = {
            "output": str(output_pdf),
            "root": str(PROJECT_ROOT),
            "sys_inputs": {"theme": tema},
        }
        if FONTS_DIR.is_dir():
            kwargs["font_paths"] = [str(FONTS_DIR)]
        print(f"\nCompilazione (pacchetto Python 'typst', tema={tema}) -> {output_pdf}")
        typst_py.compile(str(temp_main), **kwargs)
        print(f"Fatto: {output_pdf}")
        return

    if shutil.which("typst") is None:
        sys.exit(
            "Non trovo né il pacchetto Python 'typst' (pip install typst) "
            "né l'eseguibile 'typst' nel PATH.\n"
            "Installa una delle due cose prima di continuare "
            "(vedi il README)."
        )

    cmd = ["typst", "compile", "--root", str(PROJECT_ROOT), "--input", f"theme={tema}"]
    if FONTS_DIR.is_dir():
        cmd += ["--font-path", str(FONTS_DIR)]
    cmd += [str(temp_main), str(output_pdf)]

    print("\nCompilazione in corso:", " ".join(cmd))
    risultato = subprocess.run(cmd, capture_output=True, text=True)
    if risultato.returncode != 0:
        print(risultato.stdout)
        print(risultato.stderr)
        sys.exit("Compilazione fallita.")
    print(f"Fatto: {output_pdf}")


def main():
    materie = trova_materie()
    if not materie:
        sys.exit(
            f"Nessuna materia trovata: cerco sottocartelle di {MATERIE_DIR} "
            "contenenti un main.typ."
        )

    materia = scegli_materia(materie)
    main_typ = materia / "main.typ"
    capitoli, testo, match = leggi_capitoli(main_typ)

    capitoli_scelti = scegli_capitoli(capitoli)
    tema = scegli_tema()

    temp_main = genera_main_temporaneo(main_typ, testo, match, capitoli_scelti)
    try:
        if len(capitoli_scelti) == len(capitoli):
            nome_output = f"{materia.name}_completo.pdf"
        elif len(capitoli_scelti) == 1:
            nome_output = f"{materia.name}_{Path(capitoli_scelti[0]).parent.name}.pdf"
        else:
            nome_output = f"{materia.name}_selezione.pdf"

        compila(temp_main, OUTPUT_DIR / nome_output, tema)
    finally:
        temp_main.unlink(missing_ok=True)


if __name__ == "__main__":
    main()