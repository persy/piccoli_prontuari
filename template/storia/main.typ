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

= *La preistoria e la storia antica* <senza_numero>

#include "../../docs/storia/01_antica/00_introduzione.typ"

= La preistoria

#include "../../docs/storia/01_antica/01_preistoria.typ"

= La rivoluzione del Neolitico

#include "../../docs/storia/01_antica/02_rivoluzione-neolitico.typ"

= Le civiltà della Mesopotamia

#include "../../docs/storia/01_antica/03_civiltà-mesopotamia.typ"

= La civiltà egizia

#include "../../docs/storia/01_antica/04_civiltà-egizia.typ"

= Ittiti, Ebrei e Fenici

#include "../../docs/storia/01_antica/05_ittiti-ebrei-fenici.typ"

= Assiri, Medi e Persiani

#include "../../docs/storia/01_antica/06_assiri-medi-persiani.typ"

= L'Asia Minore e le civiltà dell'Estremo Oriente

#include "../../docs/storia/01_antica/07_asia-minore-estremo-oriente.typ"

= La Grecia delle origini

#include "../../docs/storia/01_antica/08_grecia-origini.typ"

= La _polis_

#include "../../docs/storia/01_antica/09_polis.typ"

= Sparta e Atene

#include "../../docs/storia/01_antica/10_sparta-atene.typ"

= Le guerre persiane

#include "../../docs/storia/01_antica/11_guerre-persiane.typ"

= Il fiorire della cultura classica

#include "../../docs/storia/01_antica/12_cultura-classica.typ"

= L'Impero di Alessandro Magno

#include "../../docs/storia/01_antica/13_impero-alessandro-magno.typ"

= L'Italia preromana

#include "../../docs/storia/01_antica/14_italia-preromana.typ"

= Le origini di Roma

#include "../../docs/storia/01_antica/15_origini-roma.typ"

= La repubblica romana

#include "../../docs/storia/01_antica/16_repubblica-romana.typ"

= Le Guerre puniche e l'espansione in Oriente

#include "../../docs/storia/01_antica/17_guerre-puniche-oriente.typ"

= La crisi della Repubblica

#include "../../docs/storia/01_antica/18_crisi-repubblica.typ"

= Il primo e il secondo triumvirato

#include "../../docs/storia/01_antica/19_primo-secondo-triumvirato.typ"

= Il principato di Augusto

#include "../../docs/storia/01_antica/20_principato-augusto.typ"

= Le dinastie Giulio-Claudia e Flavia

#include "../../docs/storia/01_antica/21_dinastie-giulio-claudia-flavia.typ"

= Da Traiano a Diocleziano

#include "../../docs/storia/01_antica/22_traiano-diocleziano.typ"

= Economia e società nell'Impero romano

#include "../../docs/storia/01_antica/23_economia-societa-impero-romano.typ"

= Cultura e civiltà di Roma

#include "../../docs/storia/01_antica/24_cultura-civiltà-roma.typ"

= La fine dell'impero romano

#include "../../docs/storia/01_antica/25_fine-impero-romano.typ"

= *Il Medioevo* <senza_numero>

#include "../../docs/storia/02_medioevo/00_introduzione.typ"

= I regni romano-barbarici

#include "../../docs/storia/02_medioevo/01_regni-romano-barbarici.typ"

= L'impero bizantino

#include "../../docs/storia/02_medioevo/02_impero-bizantino.typ"

= L'Islam e la sua diffusione

#include "../../docs/storia/02_medioevo/03_islam.typ"

= L'Italia longobarda e la nascita dello Stato della Chiesa

#include "../../docs/storia/02_medioevo/04_italia-longobarda-stato-chiesa.typ"

= Carlo Magno e il Sacro romano impero

#include "../../docs/storia/02_medioevo/05_carlo-magno.typ"

= L'Europa feudale

#include "../../docs/storia/02_medioevo/06_europa-feudale.typ"

= Strutture produttive e demografia nel Medioevo

#include "../../docs/storia/02_medioevo/07_economia-demografia-medioevo.typ"

= Le ultime invasioni dell'Europa

#include "../../docs/storia/02_medioevo/08_ultime-invasioni.typ"

= Le Crociate

#include "../../docs/storia/02_medioevo/09_crociate.typ"

= La lotta per le investiture

#include "../../docs/storia/02_medioevo/10_lotta-investiture.typ"

= Il Sacro Romano Impero germanico e gli Svevi

#include "../../docs/storia/02_medioevo/11_sacro-romano-impero.typ"

= I Comuni, le Signorie e il Principato

#include "../../docs/storia/02_medioevo/12_comuni-signorie-principati.typ"

= La formazione delle monarchie nazionali

#include "../../docs/storia/02_medioevo/13_monarchie-nazionali.typ"

= Umanesimo e Rinascimento

#include "../../docs/storia/02_medioevo/14_umanesimo-rinascimento.typ"

= *L'età moderna* <senza_numero>

#include "../../docs/storia/03_moderna/00_introduzione.typ"

= Le scoperte geografiche e l'espansione coloniale

#include "../../docs/storia/03_moderna/01_scoperte-geografiche-colonialismo.typ"

= Lo sviluppo economico e demografico del Cinquecento

#include "../../docs/storia/03_moderna/02_economia-demografia-cinquecento.typ"

= La formazione degli Stati nazionali

#include "../../docs/storia/03_moderna/03_stati-nazionali.typ"

= La Riforma protestante e la Controriforma cattolica

#include "../../docs/storia/03_moderna/04_riforma-controriforma.typ"

= L'Europa di Carlo V

#include "../../docs/storia/03_moderna/05_europa-carlo-v.typ"

= L'Europa nella seconda metà del Cinquecento

#include "../../docs/storia/03_moderna/06_europa-meta-cinquecento.typ"

= La Guerra dei Trent'anni e la crisi del Seicento

#include "../../docs/storia/03_moderna/07_guerra-trent-anni-crisi-seicento.typ"

= Le due Rivoluzioni inglesi e la nascita del regime parlamentare

#include "../../docs/storia/03_moderna/08_rivoluzioni-inglesi.typ"

= L'Italia nel Cinquecento e nel Seicento

#include "../../docs/storia/03_moderna/09_italia-cinquecento-seicento.typ"

= La Francia di Luigi XIV

#include "../../docs/storia/03_moderna/10_luigi-xiv.typ"

= Nuovi equilibri nell'Europa del Seicento

#include "../../docs/storia/03_moderna/11_nuovi-equilibri-europa-seicento.typ"

= Il mondo extraeuropeo

#include "../../docs/storia/03_moderna/12_mondo-extraeuropeo.typ"

= La rivoluzione scientifica e l'evoluzione del pensiero politico

#include "../../docs/storia/03_moderna/13_rivoluzione-scientifica.typ"

= Le Guerre di successione

#include "../../docs/storia/03_moderna/14_guerre-successione.typ"

= Gli imperi coloniali del Sei-Settecento

#include "../../docs/storia/03_moderna/15_imperi-coloniali.typ"

= L'Illuminismo

#include "../../docs/storia/03_moderna/16_illuminismo.typ"

= L'assolutismo illuminato

#include "../../docs/storia/03_moderna/17_assolutismo-illuminato.typ"

= L'Italia del Settecento

#include "../../docs/storia/03_moderna/18_italia-settecento.typ"

= La Rivoluzione americana

#include "../../docs/storia/03_moderna/19_rivoluzione-americana.typ"

= Le civiltà orientali

#include "../../docs/storia/03_moderna/20_civilta-orientali.typ"

= L'espansione economica e sociale del Settecento

#include "../../docs/storia/03_moderna/21_economia-demografia-settecento.typ"

= La crisi dell'_Ancien Régime_ e la Rivoluzione Francese

#include "../../docs/storia/03_moderna/22_ancien-regime-rivoluzione-francese.typ"

= L'età napoleonica

#include "../../docs/storia/03_moderna/23_eta-napoleonica.typ"

= *L'età contemporanea* <senza_numero>

#include "../../docs/storia/04_contemporanea/00_introduzione.typ"

= Il Congresso di Vienna e la Restaurazione

#include "../../docs/storia/04_contemporanea/01_restaurazione.typ"

= I moti del \'20 e del \'30

#include "../../docs/storia/04_contemporanea/02_moti-anni-20-30.typ"

= La Rivoluzione industriale

#include "../../docs/storia/04_contemporanea/03_rivoluzione-industriale.typ"

= L'Europa del 1848

#include "../../docs/storia/04_contemporanea/04_europa-1848.typ"

= Il Risorgimento italiano

#include "../../docs/storia/04_contemporanea/05_risorgimento-italiano.typ"

= Le Guerre d'Indipendenza e l'unificazione italiana

#include "../../docs/storia/04_contemporanea/06_unificazione-italia.typ"

= Il Giappone moderno

#include "../../docs/storia/04_contemporanea/07_giappone-moderno.typ"

= Europa e Stati Uniti nella seconda metà dell'Ottocento

#include "../../docs/storia/04_contemporanea/08_occidente-meta-ottocento.typ"

= I movimenti socialisti

#include "../../docs/storia/04_contemporanea/09_movimenti-socialisti.typ"

= L'espansione coloniale del XIX secolo

#include "../../docs/storia/04_contemporanea/10_espansione-coloniale-ottocento.typ"

= La Seconda rivoluzione industriale

#include "../../docs/storia/04_contemporanea/11_seconda-rivoluzione-industriale.typ"

= L'Italia dall'unificazione alla Prima Guerra Mondiale

#include "../../docs/storia/04_contemporanea/12_italia-unificazione-WWI.typ"

= Il mondo alla vigilia della Prima Guerra Mondiale

#include "../../docs/storia/04_contemporanea/13_mondo-vigilia-WWI.typ"

= La Prima Guerra Mondiale

#include "../../docs/storia/04_contemporanea/14_prima-guerra-mondiale.typ"

= La Russia dalla Rivoluzione a Stalin

#include "../../docs/storia/04_contemporanea/15_rivoluzione-russa-stalin.typ"

= La situazione europea tra le due guerre

#include "../../docs/storia/04_contemporanea/16_europa-primo-dopoguerra.typ"

= La situazione mondiale tra le due guerre

#include "../../docs/storia/04_contemporanea/17_mondo-primo-dopoguerra.typ"

= Fascismo e nazismo

#include "../../docs/storia/04_contemporanea/18_fascismo-nazismo.typ"

= La Seconda Guerra Mondiale

#include "../../docs/storia/04_contemporanea/19_seconda-guerra-mondiale.typ"

= Il secondo dopoguerra

#include "../../docs/storia/04_contemporanea/20_secondo-dopoguerra.typ"

= La Rivoluzione cinese

#include "../../docs/storia/04_contemporanea/21_rivoluzione-cinese.typ"

= La fine del colonialismo

#include "../../docs/storia/04_contemporanea/22_fine-colonialismo.typ"

= L'Occidente dagli anni \'50 agli anni \'80

#include "../../docs/storia/04_contemporanea/23_occidente-anni-50-80.typ"

= L'Italia dal dopoguerra alla crisi della prima Repubblica

#include "../../docs/storia/04_contemporanea/24_italia-crisi-prima-repubblica.typ"

= Il mondo comunista da Kruscev alla _perestroijka_

#include "../../docs/storia/04_contemporanea/25_kruscev-perestroijka.typ"

= La caduta dei regimi comunisti

#include "../../docs/storia/04_contemporanea/26_caduta-regimi-comunisti.typ"

= Mutamenti tecnologici e nuove dimensioni del capitalismo mondiale

#include "../../docs/storia/04_contemporanea/27_tecnologia-capitalismo-mondiale.typ"

= Verso nuovi equilibri

#include "../../docs/storia/04_contemporanea/28_nuovi-equilibri.typ"

= Tra XX e XXI secolo

#include "../../docs/storia/04_contemporanea/29_XX-XXI-secolo.typ"

= *Vita quotidiana* <senza_numero>

#include "../../docs/storia/04_contemporanea/30_vita-quotidiana.typ"

#pagebreak()

// Retro
#include "retro.typ"