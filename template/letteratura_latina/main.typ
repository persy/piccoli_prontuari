#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.lat)
#gradient_color.update(gradient.lat)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Letteratura latina",
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/letteratura_latina/eta-arcaica/introduzione/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/periodo-origini/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/teatro-arcaico/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/andronico-nevio/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/plauto/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/ennio/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/catone-prosa-arcaica/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/stazio-terenzio/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/ritorno-atellana/chapter.typ",
  "../../docs/letteratura_latina/eta-arcaica/lucilio/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/introduzione/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/periodo-classico/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/poetae-novi/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/catullo/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/lucrezio/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/cicerone/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/cesare/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/sallustio/chapter.typ",
  "../../docs/letteratura_latina/eta-cesare/varrone-scrittori-minori/chapter.typ",
  "../../docs/letteratura_latina/eta-augusto/introduzione/chapter.typ",
  "../../docs/letteratura_latina/eta-augusto/societa-cultura-augusto/chapter.typ",
  "../../docs/letteratura_latina/eta-augusto/virgilio/chapter.typ",
  "../../docs/letteratura_latina/eta-augusto/orazio/chapter.typ",
  "../../docs/letteratura_latina/eta-augusto/tibullo-properzio/chapter.typ",
  "../../docs/letteratura_latina/eta-augusto/ovidio/chapter.typ",
  "../../docs/letteratura_latina/eta-augusto/livio/chapter.typ",
  "../../docs/letteratura_latina/eta-giulio-claudia/introduzione/chapter.typ",
  "../../docs/letteratura_latina/eta-giulio-claudia/seneca/chapter.typ",
  "../../docs/letteratura_latina/eta-giulio-claudia/lucano-poesia-minore/chapter.typ",
  "../../docs/letteratura_latina/eta-giulio-claudia/petronio-prosa-minore/chapter.typ",
  "../../docs/letteratura_latina/eta-giulio-claudia/satira-persio/chapter.typ",
  "../../docs/letteratura_latina/eta-flavi/introduzione/chapter.typ",
  "../../docs/letteratura_latina/eta-flavi/marziale/chapter.typ",
  "../../docs/letteratura_latina/eta-flavi/poeti-epici/chapter.typ",
  "../../docs/letteratura_latina/eta-flavi/quintiliano/chapter.typ",
  "../../docs/letteratura_latina/eta-flavi/plinio-vecchio/chapter.typ",
  "../../docs/letteratura_latina/eta-nerva-traiano/introduzione/chapter.typ",
  "../../docs/letteratura_latina/eta-nerva-traiano/tacito/chapter.typ",
  "../../docs/letteratura_latina/eta-nerva-traiano/satira-giovenale/chapter.typ",
  "../../docs/letteratura_latina/eta-nerva-traiano/plinio-giovane/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/introduzione/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/poesia/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/svetonio-floro-frontone-gellio/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/apuleio/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/fine-letteratura-pagana/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/tertulliano-apologetica-cristiana/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/poesia-cristiana/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/padri-chiesa-latina/chapter.typ",
  "../../docs/letteratura_latina/eta-adriano-medioevo/agostino-tardi-prosatori/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
