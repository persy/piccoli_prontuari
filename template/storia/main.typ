#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.sto)
#gradient_color.update(gradient.sto)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Storia",
)

// Capitoli
// Passa --input chapter=<path> a "typst compile"/"typst watch" per compilarne uno solo
// (path relativo a questo file, esattamente come negli #include sotto)

#let chapter = sys.inputs.at("chapter", default: none)

#let chapterlist = (
  "../../docs/storia/antica/introduzione/chapter.typ",
  "../../docs/storia/antica/preistoria/chapter.typ",
  "../../docs/storia/antica/rivoluzione-neolitico/chapter.typ",
  "../../docs/storia/antica/civiltà-mesopotamia/chapter.typ",
  "../../docs/storia/antica/civiltà-egizia/chapter.typ",
  "../../docs/storia/antica/ittiti-ebrei-fenici/chapter.typ",
  "../../docs/storia/antica/assiri-medi-persiani/chapter.typ",
  "../../docs/storia/antica/asia-minore-estremo-oriente/chapter.typ",
  "../../docs/storia/antica/grecia-origini/chapter.typ",
  "../../docs/storia/antica/polis/chapter.typ",
  "../../docs/storia/antica/sparta-atene/chapter.typ",
  "../../docs/storia/antica/guerre-persiane/chapter.typ",
  "../../docs/storia/antica/cultura-classica/chapter.typ",
  "../../docs/storia/antica/impero-alessandro-magno/chapter.typ",
  "../../docs/storia/antica/italia-preromana/chapter.typ",
  "../../docs/storia/antica/origini-roma/chapter.typ",
  "../../docs/storia/antica/repubblica-romana/chapter.typ",
  "../../docs/storia/antica/guerre-puniche-oriente/chapter.typ",
  "../../docs/storia/antica/crisi-repubblica/chapter.typ",
  "../../docs/storia/antica/primo-secondo-triumvirato/chapter.typ",
  "../../docs/storia/antica/principato-augusto/chapter.typ",
  "../../docs/storia/antica/dinastie-giulio-claudia-flavia/chapter.typ",
  "../../docs/storia/antica/traiano-diocleziano/chapter.typ",
  "../../docs/storia/antica/economia-societa-impero-romano/chapter.typ",
  "../../docs/storia/antica/cultura-civiltà-roma/chapter.typ",
  "../../docs/storia/antica/fine-impero-romano/chapter.typ",
  "../../docs/storia/medioevo/introduzione/chapter.typ",
  "../../docs/storia/medioevo/regni-romano-barbarici/chapter.typ",
  "../../docs/storia/medioevo/impero-bizantino/chapter.typ",
  "../../docs/storia/medioevo/islam/chapter.typ",
  "../../docs/storia/medioevo/italia-longobarda-stato-chiesa/chapter.typ",
  "../../docs/storia/medioevo/carlo-magno/chapter.typ",
  "../../docs/storia/medioevo/europa-feudale/chapter.typ",
  "../../docs/storia/medioevo/economia-demografia-medioevo/chapter.typ",
  "../../docs/storia/medioevo/ultime-invasioni/chapter.typ",
  "../../docs/storia/medioevo/crociate/chapter.typ",
  "../../docs/storia/medioevo/lotta-investiture/chapter.typ",
  "../../docs/storia/medioevo/sacro-romano-impero/chapter.typ",
  "../../docs/storia/medioevo/comuni-signorie-principati/chapter.typ",
  "../../docs/storia/medioevo/monarchie-nazionali/chapter.typ",
  "../../docs/storia/medioevo/umanesimo-rinascimento/chapter.typ",
  "../../docs/storia/moderna/introduzione/chapter.typ",
  "../../docs/storia/moderna/scoperte-geografiche-colonialismo/chapter.typ",
  "../../docs/storia/moderna/economia-demografia-cinquecento/chapter.typ",
  "../../docs/storia/moderna/stati-nazionali/chapter.typ",
  "../../docs/storia/moderna/riforma-controriforma/chapter.typ",
  "../../docs/storia/moderna/europa-carlo-v/chapter.typ",
  "../../docs/storia/moderna/europa-meta-cinquecento/chapter.typ",
  "../../docs/storia/moderna/guerra-trent-anni-crisi-seicento/chapter.typ",
  "../../docs/storia/moderna/rivoluzioni-inglesi/chapter.typ",
  "../../docs/storia/moderna/italia-cinquecento-seicento/chapter.typ",
  "../../docs/storia/moderna/luigi-xiv/chapter.typ",
  "../../docs/storia/moderna/nuovi-equilibri-europa-seicento/chapter.typ",
  "../../docs/storia/moderna/mondo-extraeuropeo/chapter.typ",
  "../../docs/storia/moderna/rivoluzione-scientifica/chapter.typ",
  "../../docs/storia/moderna/guerre-successione/chapter.typ",
  "../../docs/storia/moderna/imperi-coloniali/chapter.typ",
  "../../docs/storia/moderna/illuminismo/chapter.typ",
  "../../docs/storia/moderna/assolutismo-illuminato/chapter.typ",
  "../../docs/storia/moderna/italia-settecento/chapter.typ",
  "../../docs/storia/moderna/rivoluzione-americana/chapter.typ",
  "../../docs/storia/moderna/civilta-orientali/chapter.typ",
  "../../docs/storia/moderna/economia-demografia-settecento/chapter.typ",
  "../../docs/storia/moderna/ancien-regime-rivoluzione-francese/chapter.typ",
  "../../docs/storia/moderna/eta-napoleonica/chapter.typ",
  "../../docs/storia/contemporanea/introduzione/chapter.typ",
  "../../docs/storia/contemporanea/restaurazione/chapter.typ",
  "../../docs/storia/contemporanea/moti-anni-20-30/chapter.typ",
  "../../docs/storia/contemporanea/rivoluzione-industriale/chapter.typ",
  "../../docs/storia/contemporanea/europa-1848/chapter.typ",
  "../../docs/storia/contemporanea/risorgimento-italiano/chapter.typ",
  "../../docs/storia/contemporanea/unificazione-italia/chapter.typ",
  "../../docs/storia/contemporanea/giappone-moderno/chapter.typ",
  "../../docs/storia/contemporanea/occidente-meta-ottocento/chapter.typ",
  "../../docs/storia/contemporanea/movimenti-socialisti/chapter.typ",
  "../../docs/storia/contemporanea/espansione-coloniale-ottocento/chapter.typ",
  "../../docs/storia/contemporanea/seconda-rivoluzione-industriale/chapter.typ",
  "../../docs/storia/contemporanea/italia-unificazione-WWI/chapter.typ",
  "../../docs/storia/contemporanea/mondo-vigilia-WWI/chapter.typ",
  "../../docs/storia/contemporanea/prima-guerra-mondiale/chapter.typ",
  "../../docs/storia/contemporanea/rivoluzione-russa-stalin/chapter.typ",
  "../../docs/storia/contemporanea/europa-primo-dopoguerra/chapter.typ",
  "../../docs/storia/contemporanea/mondo-primo-dopoguerra/chapter.typ",
  "../../docs/storia/contemporanea/fascismo-nazismo/chapter.typ",
  "../../docs/storia/contemporanea/seconda-guerra-mondiale/chapter.typ",
  "../../docs/storia/contemporanea/secondo-dopoguerra/chapter.typ",
  "../../docs/storia/contemporanea/rivoluzione-cinese/chapter.typ",
  "../../docs/storia/contemporanea/fine-colonialismo/chapter.typ",
  "../../docs/storia/contemporanea/occidente-anni-50-80/chapter.typ",
  "../../docs/storia/contemporanea/italia-crisi-prima-repubblica/chapter.typ",
  "../../docs/storia/contemporanea/kruscev-perestroijka/chapter.typ",
  "../../docs/storia/contemporanea/caduta-regimi-comunisti/chapter.typ",
  "../../docs/storia/contemporanea/tecnologia-capitalismo-mondiale/chapter.typ",
  "../../docs/storia/contemporanea/nuovi-equilibri/chapter.typ",
  "../../docs/storia/contemporanea/XX-XXI-secolo/chapter.typ",
  "../../docs/storia/vita-quotidiana/chapter.typ",
)

#for cap in chapterlist {
  if chapter == none or cap == chapter {
    include cap
  }
}
#pagebreak()

// Retro
#include "retro.typ"
