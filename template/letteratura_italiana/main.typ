#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.ita)
#gradient_color.update(gradient.ita)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Letteratura italiana",
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/letteratura_italiana/origini-duecento/introduzione/chapter.typ",
  "../../docs/letteratura_italiana/origini-duecento/origini/chapter.typ",
  "../../docs/letteratura_italiana/origini-duecento/poesia-prestilnovistica/chapter.typ",
  "../../docs/letteratura_italiana/origini-duecento/prosa/chapter.typ",
  "../../docs/letteratura_italiana/origini-duecento/dolce-stilnovo/chapter.typ",
  "../../docs/letteratura_italiana/trecento/introduzione/chapter.typ",
  "../../docs/letteratura_italiana/trecento/alighieri/chapter.typ",
  "../../docs/letteratura_italiana/trecento/petrarca/chapter.typ",
  "../../docs/letteratura_italiana/trecento/boccaccio/chapter.typ",
  "../../docs/letteratura_italiana/trecento/letteratura-didattico-allegorica/chapter.typ",
  "../../docs/letteratura_italiana/trecento/letteratura-religiosa/chapter.typ",
  "../../docs/letteratura_italiana/trecento/lirica-novellistica/chapter.typ",
  "../../docs/letteratura_italiana/quattrocento/introduzione/chapter.typ",
  "../../docs/letteratura_italiana/quattrocento/umanesimo/chapter.typ",
  "../../docs/letteratura_italiana/quattrocento/letteratura-corte-medici/chapter.typ",
  "../../docs/letteratura_italiana/quattrocento/letteratura-ferrara-napoli/chapter.typ",
  "../../docs/letteratura_italiana/cinquecento/introduzione/chapter.typ",
  "../../docs/letteratura_italiana/cinquecento/classicismo-rinascimentale/chapter.typ",
  "../../docs/letteratura_italiana/cinquecento/ariosto/chapter.typ",
  "../../docs/letteratura_italiana/cinquecento/macchiavelli-guicciardini/chapter.typ",
  "../../docs/letteratura_italiana/cinquecento/novellistica-teatro-rinascimento/chapter.typ",
  "../../docs/letteratura_italiana/cinquecento/anticlassicismo/chapter.typ",
  "../../docs/letteratura_italiana/cinquecento/manierismo/chapter.typ",
  "../../docs/letteratura_italiana/cinquecento/tasso-controriforma/chapter.typ",
  "../../docs/letteratura_italiana/seicento/introduzione/chapter.typ",
  "../../docs/letteratura_italiana/seicento/barocco-marino/chapter.typ",
  "../../docs/letteratura_italiana/seicento/classicismo-barocco/chapter.typ",
  "../../docs/letteratura_italiana/seicento/prosa-filosofica-scientifica-storica/chapter.typ",
  "../../docs/letteratura_italiana/settecento/introduzione/chapter.typ",
  "../../docs/letteratura_italiana/settecento/nuovo-orizzonte-storico/chapter.typ",
  "../../docs/letteratura_italiana/settecento/illuminismo-italiano/chapter.typ",
  "../../docs/letteratura_italiana/settecento/goldoni/chapter.typ",
  "../../docs/letteratura_italiana/settecento/cultura-lombarda-parini/chapter.typ",
  "../../docs/letteratura_italiana/settecento/neoclassici-preromantici/chapter.typ",
  "../../docs/letteratura_italiana/settecento/alfieri/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/introduzione/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/periodo-napoleonico-monti/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/foscolo/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/romanticismo/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/manzoni/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/leopardi/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/letteratura-risorgimentale/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/reazione-antiromantica/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/verismo/chapter.typ",
  "../../docs/letteratura_italiana/ottocento/decadentismo/chapter.typ",
  "../../docs/letteratura_italiana/novecento/introduzione/chapter.typ",
  "../../docs/letteratura_italiana/novecento/postdecadentismo/chapter.typ",
  "../../docs/letteratura_italiana/novecento/croce-dibattito-critico/chapter.typ",
  "../../docs/letteratura_italiana/novecento/pirandello/chapter.typ",
  "../../docs/letteratura_italiana/novecento/svevo/chapter.typ",
  "../../docs/letteratura_italiana/novecento/saba-ungaretti/chapter.typ",
  "../../docs/letteratura_italiana/novecento/anni-venti-trenta/chapter.typ",
  "../../docs/letteratura_italiana/novecento/surrealismo-realismo/chapter.typ",
  "../../docs/letteratura_italiana/novecento/ermetismo/chapter.typ",
  "../../docs/letteratura_italiana/novecento/montale/chapter.typ",
  "../../docs/letteratura_italiana/novecento/gadda/chapter.typ",
  "../../docs/letteratura_italiana/novecento/neorealismo/chapter.typ",
  "../../docs/letteratura_italiana/novecento/realismo-critico/chapter.typ",
  "../../docs/letteratura_italiana/novecento/poesia-dialettale/chapter.typ",
  "../../docs/letteratura_italiana/novecento/poesia-dopoguerra/chapter.typ",
  "../../docs/letteratura_italiana/novecento/sperimentalismo-neoavanguardia/chapter.typ",
  "../../docs/letteratura_italiana/novecento/morante-narratrici/chapter.typ",
  "../../docs/letteratura_italiana/novecento/calvino/chapter.typ",
  "../../docs/letteratura_italiana/novecento/ultimi-novecento/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
