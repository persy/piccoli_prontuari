#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.eng)
#gradient_color.update(gradient.eng)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Letteratura inglese",
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/letteratura_inglese/origini-quattrocento/introduzione/chapter.typ",
  "../../docs/letteratura_inglese/origini-quattrocento/periodo-old-english/chapter.typ",
  "../../docs/letteratura_inglese/origini-quattrocento/periodo-middle-english/chapter.typ",
  "../../docs/letteratura_inglese/origini-quattrocento/chaucer/chapter.typ",
  "../../docs/letteratura_inglese/rinascimento-eta-elisabettiana/introduzione/chapter.typ",
  "../../docs/letteratura_inglese/rinascimento-eta-elisabettiana/umanesimo-riforma/chapter.typ",
  "../../docs/letteratura_inglese/rinascimento-eta-elisabettiana/poesia-prosa/chapter.typ",
  "../../docs/letteratura_inglese/rinascimento-eta-elisabettiana/teatro-elisabettiano/chapter.typ",
  "../../docs/letteratura_inglese/rinascimento-eta-elisabettiana/shakespeare/chapter.typ",
  "../../docs/letteratura_inglese/rinascimento-eta-elisabettiana/donne-poetry-of-wit/chapter.typ",
  "../../docs/letteratura_inglese/fine-rinascimento-restaurazione/introduzione/chapter.typ",
  "../../docs/letteratura_inglese/fine-rinascimento-restaurazione/poesia-prosa-1625-1660/chapter.typ",
  "../../docs/letteratura_inglese/fine-rinascimento-restaurazione/milton/chapter.typ",
  "../../docs/letteratura_inglese/fine-rinascimento-restaurazione/letteratura-restaurazione/chapter.typ",
  "../../docs/letteratura_inglese/fine-rinascimento-restaurazione/dryden/chapter.typ",
  "../../docs/letteratura_inglese/settecento-illuminismo/introduzione/chapter.typ",
  "../../docs/letteratura_inglese/settecento-illuminismo/poesia/chapter.typ",
  "../../docs/letteratura_inglese/settecento-illuminismo/pope/chapter.typ",
  "../../docs/letteratura_inglese/settecento-illuminismo/prosa-saggistica-teatro/chapter.typ",
  "../../docs/letteratura_inglese/settecento-illuminismo/swift/chapter.typ",
  "../../docs/letteratura_inglese/settecento-illuminismo/romanzo-moderno/chapter.typ",
  "../../docs/letteratura_inglese/settecento-illuminismo/austen/chapter.typ",
  "../../docs/letteratura_inglese/eta-romantica/introduzione/chapter.typ",
  "../../docs/letteratura_inglese/eta-romantica/romanticismo/chapter.typ",
  "../../docs/letteratura_inglese/eta-romantica/wordsworth-coleridge/chapter.typ",
  "../../docs/letteratura_inglese/eta-romantica/byron-shelley-keats/chapter.typ",
  "../../docs/letteratura_inglese/eta-romantica/romanzo-storico-autobiografia/chapter.typ",
  "../../docs/letteratura_inglese/eta-vittoriana/introduzione/chapter.typ",
  "../../docs/letteratura_inglese/eta-vittoriana/saggistica-storiografia/chapter.typ",
  "../../docs/letteratura_inglese/eta-vittoriana/romanzo-vittoriano-dickens/chapter.typ",
  "../../docs/letteratura_inglese/eta-vittoriana/tennyson-browning/chapter.typ",
  "../../docs/letteratura_inglese/eta-vittoriana/movimento-estetico-wilde/chapter.typ",
  "../../docs/letteratura_inglese/eta-vittoriana/hardy-romanzo-tardo-vittoriano/chapter.typ",
  "../../docs/letteratura_inglese/eta-vittoriana/rinascita-teatro-shaw/chapter.typ",
  "../../docs/letteratura_inglese/novecento/introduzione/chapter.typ",
  "../../docs/letteratura_inglese/novecento/romanzo-ottocento-novecento/chapter.typ",
  "../../docs/letteratura_inglese/novecento/yeats/chapter.typ",
  "../../docs/letteratura_inglese/novecento/pound-eliot/chapter.typ",
  "../../docs/letteratura_inglese/novecento/joyce/chapter.typ",
  "../../docs/letteratura_inglese/novecento/romanzo-guerre-mondiali/chapter.typ",
  "../../docs/letteratura_inglese/novecento/poesia-dopo-Eliot/chapter.typ",
  "../../docs/letteratura_inglese/novecento/teatro-novecento/chapter.typ",
  "../../docs/letteratura_inglese/novecento/romanzo-meta-novecento/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/introduzione/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/puritanesimo-origini/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/illuminismo/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/via-americana/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/emerson-thoreau/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/hawthorne-poe-melville/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/whitman-dickinson/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/twain/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/realismo-naturalismo/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/poesia-venti-trenta/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/prosa_guerre/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/teatro/chapter.typ",
  "../../docs/letteratura_inglese/letteratura-angloamericana/secondo-novecento/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
