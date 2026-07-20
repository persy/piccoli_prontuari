#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.ter)
#gradient_color.update(gradient.ter)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Scienze della Terra",
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/scienze_terra/introduzione/chapter.typ",
  "../../docs/scienze_terra/astronomia-fondamentale/chapter.typ",
  "../../docs/scienze_terra/stelle/chapter.typ",
  "../../docs/scienze_terra/sistema-solare/chapter.typ",
  "../../docs/scienze_terra/origine-universo/chapter.typ",
  "../../docs/scienze_terra/pianeta-terra/chapter.typ",
  "../../docs/scienze_terra/rappresentazione-cartografica/chapter.typ",
  "../../docs/scienze_terra/crosta-terrestre/chapter.typ",
  "../../docs/scienze_terra/rocce-ignee/chapter.typ",
  "../../docs/scienze_terra/rocce-sedimentarie/chapter.typ",
  "../../docs/scienze_terra/rocce-metamorfiche/chapter.typ",
  "../../docs/scienze_terra/interno-terra/chapter.typ",
  "../../docs/scienze_terra/teorie-tettoniche/chapter.typ",
  "../../docs/scienze_terra/deformazioni-tettoniche-litosfera/chapter.typ",
  "../../docs/scienze_terra/vulcanismo/chapter.typ",
  "../../docs/scienze_terra/sismicita/chapter.typ",
  "../../docs/scienze_terra/storia-terra/chapter.typ",
  "../../docs/scienze_terra/atmosfera/chapter.typ",
  "../../docs/scienze_terra/climi/chapter.typ",
  "../../docs/scienze_terra/idrosfera-acque-marine/chapter.typ",
  "../../docs/scienze_terra/idrosfera-acque-continentali/chapter.typ",
  "../../docs/scienze_terra/modellamento-superficie-terrestre/chapter.typ",
  "../../docs/scienze_terra/suolo/chapter.typ",
  "../../docs/scienze_terra/uomo-rischio-naturale/chapter.typ",
  "../../docs/scienze_terra/risorse-minerarie/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
