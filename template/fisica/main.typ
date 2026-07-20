#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.fis)
#gradient_color.update(gradient.fis)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Fisica",
)

// Capitoli

=  Che cos'è la fisica <senza_numero>
// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/fisica/introduzione/chapter.typ",
  "../../docs/fisica/metodo-sperimentale/chapter.typ",
  "../../docs/fisica/vettori/chapter.typ",
  "../../docs/fisica/moti-rettilinei/chapter.typ",
  "../../docs/fisica/moti-curvilinei/chapter.typ",
  "../../docs/fisica/dinamica/chapter.typ",
  "../../docs/fisica/gravitazione/chapter.typ",
  "../../docs/fisica/lavoro-energia-potenza/chapter.typ",
  "../../docs/fisica/leggi-conservazione/chapter.typ",
  "../../docs/fisica/equilibrio-moto-rotatorio/chapter.typ",
  "../../docs/fisica/meccanica-fluidi/chapter.typ",
  "../../docs/fisica/calore-temperatura/chapter.typ",
  "../../docs/fisica/cambiamenti-stato/chapter.typ",
  "../../docs/fisica/teoria-cinetica-gas/chapter.typ",
  "../../docs/fisica/termodinamica/chapter.typ",
  "../../docs/fisica/elettricita-statica/chapter.typ",
  "../../docs/fisica/campo-elettrico/chapter.typ",
  "../../docs/fisica/corrente-elettrica/chapter.typ",
  "../../docs/fisica/magnetismo/chapter.typ",
  "../../docs/fisica/induzione-elettromagnetica-maxwell/chapter.typ",
  "../../docs/fisica/fenomeni-ondulatori/chapter.typ",
  "../../docs/fisica/suono/chapter.typ",
  "../../docs/fisica/onde-elettromagnetiche/chapter.typ",
  "../../docs/fisica/luce/chapter.typ",
  "../../docs/fisica/meccanica-quantistica/chapter.typ",
  "../../docs/fisica/nucleo-particelle-elementari/chapter.typ",
  "../../docs/fisica/relatività/chapter.typ",
  "../../docs/fisica/calcoli-fisica/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
