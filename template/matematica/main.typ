#import "../_global/template.typ": *
#import "../_global/config.typ": *

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.mat)
#gradient_color.update(gradient.mat)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Matematica",
)

// Resetta counter figure, formule matematiche, #definizione e #esempio ad ogni nuovo capitolo
#show heading.where(level: 1): it => {
  counter(figure.where(kind: image)).update(0)
  counter(math.equation).update(0)
  counter(figure.where(kind: "definizione")).update(0)
  counter("esempio").update(0)
  it
}

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/matematica/introduzione.typ",
  "../../docs/matematica/logica/chapter.typ",
  "../../docs/matematica/numeri-naturali-reali/chapter.typ",
  "../../docs/matematica/algebra-elementare/chapter.typ",
  "../../docs/matematica/funzioni/chapter.typ",
  "../../docs/matematica/equazioni-sistemi/chapter.typ",
  "../../docs/matematica/disequazioni/chapter.typ",
  "../../docs/matematica/potenze-esponenziali-logaritmi/chapter.typ",
  "../../docs/matematica/geometria-analitica/chapter.typ",
  "../../docs/matematica/geometria-euclidea-piana/chapter.typ",
  "../../docs/matematica/geometria-euclidea-solida/chapter.typ",
  "../../docs/matematica/goniometria-trigonometria/chapter.typ",
  "../../docs/matematica/calcolo-combinatorio/chapter.typ",
  "../../docs/matematica/funzioni-iperboliche/chapter.typ",
  "../../docs/matematica/numeri-complessi/chapter.typ",
  "../../docs/matematica/sistemi-lineari-geometria-spaziale/chapter.typ",
  "../../docs/matematica/affinita/chapter.typ",
  "../../docs/matematica/grafici-elementari/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}

#pagebreak()

// Retro
#include "retro.typ"