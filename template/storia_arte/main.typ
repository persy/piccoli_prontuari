#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.art)
#gradient_color.update(gradient.art)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Storia dell'Arte",
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/storia_arte/introduzione/chapter.typ",
  "../../docs/storia_arte/arte-preistorica-civiltà-antiche/chapter.typ",
  "../../docs/storia_arte/arte-greca/chapter.typ",
  "../../docs/storia_arte/arte-romana/chapter.typ",
  "../../docs/storia_arte/arte-paleocristiana-arte-carolingia/chapter.typ",
  "../../docs/storia_arte/romanico/chapter.typ",
  "../../docs/storia_arte/gotico/chapter.typ",
  "../../docs/storia_arte/pittura-architettura-trecento-quattrocento/chapter.typ",
  "../../docs/storia_arte/arte-rinascimentale/chapter.typ",
  "../../docs/storia_arte/maestri-rinascimento-maturo/chapter.typ",
  "../../docs/storia_arte/manierismo/chapter.typ",
  "../../docs/storia_arte/classicismo-caravaggismo/chapter.typ",
  "../../docs/storia_arte/barocco/chapter.typ",
  "../../docs/storia_arte/rococo-neoclassicismo/chapter.typ",
  "../../docs/storia_arte/pittura-europa-romantica/chapter.typ",
  "../../docs/storia_arte/impressionismo-simbolismo/chapter.typ",
  "../../docs/storia_arte/architettura-ottocento/chapter.typ",
  "../../docs/storia_arte/pittura-italiana-fine-ottocento/chapter.typ",
  "../../docs/storia_arte/avanguardie-espressionismo-cubismo/chapter.typ",
  "../../docs/storia_arte/italia-avanguardie/chapter.typ",
  "../../docs/storia_arte/italia-avanguardie/chapter.typ",
  "../../docs/storia_arte/chagall-nuova-oggettività/chapter.typ",
  "../../docs/storia_arte/dadaismo-surrealismo/chapter.typ",
  "../../docs/storia_arte/architettura-novecento/chapter.typ",
  "../../docs/storia_arte/anni-trenta-secondo-dopoguerra/chapter.typ",
  "../../docs/storia_arte/espressioni-arte-contemporanea/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
