#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color
#import "@preview/mannot:0.3.1": * // Annotazioni matematiche

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.chi)
#gradient_color.update(gradient.chi)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Chimica",
  tufte: false,
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/chimica/introduzione/chapter.typ",
  "../../docs/chimica/materia/chapter.typ",
  "../../docs/chimica/atomi-molecole/chapter.typ",
  "../../docs/chimica/struttura-atomo/chapter.typ",
  "../../docs/chimica/sistema-periodico/chapter.typ",
  "../../docs/chimica/legami-chimici/chapter.typ",
  "../../docs/chimica/classificazione-nomenclatura-inorganici/chapter.typ",
  "../../docs/chimica/reazioni-chimiche/chapter.typ",
  "../../docs/chimica/stato-gassoso/chapter.typ",
  "../../docs/chimica/stato-liquido/chapter.typ",
  "../../docs/chimica/stato-solido/chapter.typ",
  "../../docs/chimica/soluzioni/chapter.typ",
  "../../docs/chimica/cinetica-chimica-equilibrio-chimico/chapter.typ",
  "../../docs/chimica/termodinamica/chapter.typ",
  "../../docs/chimica/acidi-basi/chapter.typ",
  "../../docs/chimica/elettrochimica/chapter.typ",
  "../../docs/chimica/chimica-nucleare/chapter.typ",
  "../../docs/chimica/chimica-inorganica-descrittiva/chapter.typ",
  "../../docs/chimica/carbonio-chimica-organica/chapter.typ",
  "../../docs/chimica/classi-composti-organici/chapter.typ",
  "../../docs/chimica/composti-organici-biologia/chapter.typ",
  "../../docs/chimica/chimica-ambiente/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
