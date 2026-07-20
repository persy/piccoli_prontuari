#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.bio)
#gradient_color.update(gradient.bio)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Biologia",
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/biologia/introduzione/chapter.typ",
  "../../docs/biologia/atomi-biomolecole/chapter.typ",
  "../../docs/biologia/reazioni-chimiche/chapter.typ",
  "../../docs/biologia/struttura-cellula/chapter.typ",
  "../../docs/biologia/attivita-cellula/chapter.typ",
  "../../docs/biologia/linguaggio-cellula/chapter.typ",
  "../../docs/biologia/riproduzione-cellula/chapter.typ",
  "../../docs/biologia/ereditarieta-caratteri/chapter.typ",
  "../../docs/biologia/basi-molecolari-ereditarieta/chapter.typ",
  "../../docs/biologia/evoluzione/chapter.typ",
  "../../docs/biologia/storia-vita/chapter.typ",
  "../../docs/biologia/classificazione/chapter.typ",
  "../../docs/biologia/monere-protisti/chapter.typ",
  "../../docs/biologia/piante-funghi/chapter.typ",
  "../../docs/biologia/animali/chapter.typ",
  "../../docs/biologia/struttura-piante-superiori/chapter.typ",
  "../../docs/biologia/funzioni-piante-superiori/chapter.typ",
  "../../docs/biologia/tessuti-organi-animali/chapter.typ",
  "../../docs/biologia/sostegno-movimento/chapter.typ",
  "../../docs/biologia/circolazione-respirazione/chapter.typ",
  "../../docs/biologia/digestione-escrezione/chapter.typ",
  "../../docs/biologia/percezione-coordinamento-controllo/chapter.typ",
  "../../docs/biologia/riproduzione-sviluppo-embrionale/chapter.typ",
  "../../docs/biologia/sistema-immunitario/chapter.typ",
  "../../docs/biologia/etologia/chapter.typ",
  "../../docs/biologia/comportamento-sociale/chapter.typ",
  "../../docs/biologia/ecologia/chapter.typ",
  "../../docs/biologia/biosfera-biomi/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}

#pagebreak()

// Retro
#include "retro.typ"