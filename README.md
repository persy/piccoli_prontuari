# Manuali per il WikiBigino

![Static Badge](https://img.shields.io/badge/typst-blue?logo=typst&logoColor=fff&color=%23239dad&link=https%3A%2F%2Ftypst.app%2F) [![Licenza: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC_BY--NC--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/) 

In questo repository trovi i sorgente in [typst](https://github.com/typst/typst) e tutti i file necessari per compilare i manuali. Qui sono trovi i pdf già precompilati, gli stessi  scaricabili dal [sito](https://persy.github.io/piccoli_prontuari/) dedicato.

<!-- PDF-LIST:START -->

<!-- PDF-LIST:END -->

<!--toc:start-->
- [Manuali per il WikiBigino](#manuali-per-il-wikibigino)
  - [Struttura del repository](#struttura-del-repository)
- [Struttura delle cartelle e file principali](#struttura-delle-cartelle-e-file-principali)
    - [Come vedere l'anteprima ed esportare il pdf di un manuale](#come-vedere-lanteprima-ed-esportare-il-pdf-di-un-manuale)
    - [Compilare solo un capitolo](#compilare-solo-un-capitolo)
    - [Compilare con lo script interattivo](#compilare-con-lo-script-interattivo)
  - [Materie](#materie)
  - [Filosofia del progetto](#filosofia-del-progetto)
  - [Futuro del progetto](#futuro-del-progetto)
<!--toc:end-->

## Struttura del repository

```bash
docs/
└── <materia>/
    ├── <capitolo>/
    │   ├── chapter.typ <-- testo
    │   ├── figures.typ <-- grafici e tabelle
    │   └── img/
    │       └── immagine.webp
    └── ...
template/
├── _global/
│   ├── config.typ <-- colori, box, font
│   ├── template.typ <-- layout
│   ├── template_cover.typ
│   ├── template_retro.typ
│   ├── prefazione.typ
│   └── ...
├── <materia>/
│   ├── main.typ <-- file principale
│   ├── cover.typ
│   └── retro.typ
└── ...
fonts/
├── <font>
└── ...
site/
├── index.html
└── ...
compila.py <-- script interattivo per compilare i manuali
.gitignore
LICENSE
README.md
```

# Struttura delle cartelle e file principali

- `docs/<materia>/` contiene tutti i testi dei manuali, suddivisi per materia (vedi in seguito)
    - `/img/` contiene le immagini
    - `/func/` contiene tutte le funzioni dei grafici e delle tabelle di una materia
- `template/_global/` è la cartella che contiene i template in comune fra tutti i manuali: 
    - `config.typ` contiene tutte le variabili e le funzioni che riguardano i font, i colori, i gradienti, i box...
    - `template.typ` è il template principale di tutti i manuali e riguarda prettamente la tipografia (margini, grandezza dei font, rientri...) 
- `template/<materia>/` contiene i template specifici per la materia, solitamente sono tre: 
    - `cover.typ`, la copertina
    - `retro.typ`, la quarta di copertina
    - `main.typ`, il file principale del manuale e unisce i singoli file di `docs/<materia>` con i `template/`
- Essendo i file in formato `.typ`, essi possono essere aperti da qualsiasi editor di testo, notepad incluso 🍋, anche senza aver installato `typst`

### Come vedere l'anteprima ed esportare il pdf di un manuale

- Clona il repository
- Installa typst seguendo la [guida](https://github.com/typst/typst?tab=readme-ov-file#installation)
- Installa [tinymist](https://github.com/Myriad-Dreamin/tinymist) (oppure usa VS Code assieme all'[estensione ufficiale](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist))
- Per l'anteprima, posizionati nella cartella del progetto e digita:

```typst
tinymist preview --root . --partial-rendering=true template/<materia>/main.typ
```

- Per compilare il pdf invece, posizionati nella cartella del progetto ed esegui il comando:

```typst
typst compile --font-paths ./fonts template/<materia>/main.typ
```

Ovviamente, sostituisci <materia> con la materia che hai scelto.

N.B. Usando `tinymist`, il file `main` verrà automaticamente designato come principale, risolvendo i collegamenti e i riferimenti fra i subfile[^1]. Nel caso volessi impostarlo manualmente, invoca su VSCode il comando "Pin the Main File to the Currently Open Document" oppure digita:

```typst
Typst Pin Main
```

### Compilare solo un capitolo

Per velocizzare l'anteprima su manuali lunghi, `main.typ` supporta la compilazione di un singolo capitolo tramite l'argomento `chapter`, passato come `sys.inputs`. Quando è attivo, i riferimenti verso capitoli esclusi vengono mostrati come `??` invece di generare un errore. Per compilare/vedere l'anteprima di un solo capitolo:

```typst
typst compile --input chapter=../../docs/<materia>/<capitolo>/chapter.typ --font-paths ./fonts template/<materia>/main.typ
```

```typst
tinymist preview --root . --partial-rendering=true --input chapter=../../docs/<materia>/<capitolo>/chapter.typ template/<materia>/main.typ
```

- Se usi l'estensione tinymist su VS Code, imposta lo stesso argomento in `.vscode/settings.json`:

```json
{
  "tinymist.typstExtraArgs": [
    "--input=chapter=../../docs/<materia>/<capitolo>/chapter.typ",
    "main.typ"
  ]
}
```

Per tornare alla compilazione dell'intero manuale, rimuovi l'argomento `--input`/il blocco `tinymist.typstExtraArgs` (o svuotalo).

### Compilare con lo script interattivo

In alternativa ai comandi `typst`/`tinymist` visti sopra, nella root del repository trovi `compila.py`: uno script interattivo che, senza dover ricordare a memoria i vari path, ti fa scegliere da menù:

1. la materia,
2. i capitoli da includere: tutti (invio a vuoto), uno solo (es. `7`), oppure una lista anche non consecutiva (es. `2,3,5,9,10`, l'ordine finale rispetta comunque quello del manuale),

e compila il pdf corrispondente in `output/`. Copertina e retro vengono sempre inclusi, qualunque sia la selezione.

Per usarlo:

```bash
python3 compila.py
```

**Pacchetti necessari**: 
- `python 3.9+`
- `typst`, disponibile in uno di questi due modi 
  - tramite pip:
  ```bash
  pip install typst
  ```
  - con il binario `typst` a riga di comando, installato seguendo la [guida ufficiale](https://github.com/typst/typst?tab=readme-ov-file#installation) e già richiesto nella sezione precedente.

## Materie

Di seguito una tabella con le materie trattate e il livello di completamento dei rispettivi libri:

| Materia        | Stesura testo | Formattazione | Media | Approfondimenti | Esercizi e quiz |
| -------------- | ------------- | ------------- | ----- | --------------- | --------------- |
| biologia       | ✅            | ✅             | -     | -               | -               |
| chimica        | ✅            | ✅             | -     | -               | -               |
| filosofia      | ✅            | ✅             | -     | -               | -               |
| fisica         | ✅            | ✅             | -     | -               | -               |
| lett. latina   | ✅            | ✅             | -     | -               | -               |
| lett. italiana | ✅            | ✅             | -     | -               | -               |
| sc. d. Terra   | ✅            | ✅             | -     | -               | -               |
| storia         | ✅            | ✅             | -     | -               | -               |
| lett. inglese  | ✅            | ✅             | -     | -               | -               |
| matematica     | ✍️            | -             | -     | -               | -               |
| st. dell'arte  | ✅            | ✅             | -     | -               | -               |

## Filosofia del progetto

- Linguaggio semplice e non accademico
- Parte testuale prioritaria
- Poche immagini e tabelle, nessuno schema preconfezionato
- Grafica minimale, con pochi colori
- Nessun "fuffa-box" con contenuti pop, aneddotici o pseudo-interdisciplinari 
- Approfondimenti mirati e pertinenti
- Modularità
- Rispetto degli standard di accessibilità
- Licenza libera per ogni documento (CC BY-NC-SA 4.0)
- Uso di modelli AI liberi, relegati esclusivamente a ruoli di supporto (correzione bozze, formattazione, pulitura del codice...)

[^1]: https://myriad-dreamin.github.io/tinymist/feature/project.html#:~:text=Use%20command%20Typst%20Pin%20Main,to%20unset%20the%20main%20file.

## Futuro del progetto
- Ottenuta una certa "stabilità" dei testi principali, il progetto verrà ampliato con l'inclusione di testi da fonti primarie ed esercizi originali
- Quando l'esportazione dei file in HTML avrà raggiunto una certa maturazione, verrà aperto un sito dove poter consultare online, pagina per pagina, ogni manuale, senza doverli scaricare singolarmente
- `compila.py` verrà trasformato in una TUI, con selezione di materia e capitoli via tastiera/click (checkbox multi-selezione stile `[x]`), al posto dell'attuale menù testuale a numeri
