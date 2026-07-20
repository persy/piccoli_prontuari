#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.fil)
#gradient_color.update(gradient.fil)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Filosofia",
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/filosofia/filosofia-ricerca/chapter.typ",
  "../../docs/filosofia/problema-metafisico/chapter.typ",
  "../../docs/filosofia/problema-morale/chapter.typ",
  "../../docs/filosofia/problema-politico/chapter.typ",
  "../../docs/filosofia/problema-scientifico/chapter.typ",
  "../../docs/filosofia/problema-religioso/chapter.typ",
  "../../docs/filosofia/problema-estetico/chapter.typ",
  "../../docs/filosofia/nascita-filosofia-greca/chapter.typ",
  "../../docs/filosofia/filosofi-ionici/chapter.typ",
  "../../docs/filosofia/pitagora-pitagorici/chapter.typ",
  "../../docs/filosofia/scuola-eleatica/chapter.typ",
  "../../docs/filosofia/fisici-pluralisti/chapter.typ",
  "../../docs/filosofia/atomismo/chapter.typ",
  "../../docs/filosofia/sofisti/chapter.typ",
  "../../docs/filosofia/socrate/chapter.typ",
  "../../docs/filosofia/platone/chapter.typ",
  "../../docs/filosofia/aristotele/chapter.typ",
  "../../docs/filosofia/filosofie-ellenistiche/chapter.typ",
  "../../docs/filosofia/filosofia-romana/chapter.typ",
  "../../docs/filosofia/plotino-neoplatonismo/chapter.typ",
  "../../docs/filosofia/filosofia-cristiana/chapter.typ",
  "../../docs/filosofia/agostino/chapter.typ",
  "../../docs/filosofia/scolastica/chapter.typ",
  "../../docs/filosofia/filosofia-araba-ebraica/chapter.typ",
  "../../docs/filosofia/aristotelismo-medievale-daquino/chapter.typ",
  "../../docs/filosofia/esaurirsi-scolastica/chapter.typ",
  "../../docs/filosofia/umanesimo-rinascimento/chapter.typ",
  "../../docs/filosofia/platonismo-aristotelismo-rinascimentali/chapter.typ",
  "../../docs/filosofia/riflessione-politica-500-600/chapter.typ",
  "../../docs/filosofia/riforma protestante-rinnovamento-cattolico/chapter.typ",
  "../../docs/filosofia/naturalismo-rinascimentale/chapter.typ",
  "../../docs/filosofia/rivoluzione-scientifica/chapter.typ",
  "../../docs/filosofia/filosofia-metodo/chapter.typ",
  "../../docs/filosofia/razionalismo/chapter.typ",
  "../../docs/filosofia/problema-etico-600-pascal/chapter.typ",
  "../../docs/filosofia/meccanicismo-empirismo/chapter.typ",
  "../../docs/filosofia/vico/chapter.typ",
  "../../docs/filosofia/morale-700/chapter.typ",
  "../../docs/filosofia/illuminismo/chapter.typ",
  "../../docs/filosofia/kant/chapter.typ",
  "../../docs/filosofia/romanticismo/chapter.typ",
  "../../docs/filosofia/idealismo-fichte-schelling/chapter.typ",
  "../../docs/filosofia/hegel/chapter.typ",
  "../../docs/filosofia/marx/chapter.typ",
  "../../docs/filosofia/opposizione-idealismo/chapter.typ",
  "../../docs/filosofia/filosofia-spiritualistica-italiana-800/chapter.typ",
  "../../docs/filosofia/positivismo/chapter.typ",
  "../../docs/filosofia/nietzsche/chapter.typ",
  "../../docs/filosofia/filosofia-azione-spiritualismo-francese/chapter.typ",
  "../../docs/filosofia/storicismo-neokantismo/chapter.typ",
  "../../docs/filosofia/pragmatismo-americano/chapter.typ",
  "../../docs/filosofia/neoidealismo-italiano/chapter.typ",
  "../../docs/filosofia/psicoanalisi/chapter.typ",
  "../../docs/filosofia/husserl-fenomenologia/chapter.typ",
  "../../docs/filosofia/heidegger-esistenzialismo/chapter.typ",
  "../../docs/filosofia/wittgenstein-neopositivismo/chapter.typ",
  "../../docs/filosofia/filosofia-analitica/chapter.typ",
  "../../docs/filosofia/marxismo-scuola-francoforte/chapter.typ",
  "../../docs/filosofia/filosofia-politica-900/chapter.typ",
  "../../docs/filosofia/strutturalismo/chapter.typ",
  "../../docs/filosofia/epistemologia-contemporanea/chapter.typ",
  "../../docs/filosofia/ermeneutica/chapter.typ",
  "../../docs/filosofia/etica-discorso-responsabilita/chapter.typ",
  "../../docs/filosofia/postmoderno/chapter.typ",
  "../../docs/filosofia/pensiero-postmetafisico/chapter.typ",
  "../../docs/filosofia/intelligenza-artificiale/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
