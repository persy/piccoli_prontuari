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

= *Le origini e il Duecento* <senza_numero>

#include "../../docs/letteratura_italiana/01_origini-duecento/00_introduzione.typ"

= Le origini

#include "../../docs/letteratura_italiana/01_origini-duecento/01_origini.typ"

= La poesia prestilnovistica

#include "../../docs/letteratura_italiana/01_origini-duecento/02_poesia-prestilnovistica.typ"

= La prosa

#include "../../docs/letteratura_italiana/01_origini-duecento/03_prosa.typ"

= Il dolce stilnovo

#include "../../docs/letteratura_italiana/01_origini-duecento/04_dolce-stilnovo.typ"

= *Il Trecento* <senza_numero>

#include "../../docs/letteratura_italiana/02_trecento/00_introduzione.typ"

= Dante Alighieri

#include "../../docs/letteratura_italiana/02_trecento/01_alighieri.typ"

= Francesco Petrarca

#include "../../docs/letteratura_italiana/02_trecento/02_petrarca.typ"

= Giovanni Boccaccio

#include "../../docs/letteratura_italiana/02_trecento/03_boccaccio.typ"

= Letteratura didattico-allegorica

#include "../../docs/letteratura_italiana/02_trecento/04_letteratura-didattico-allegorica.typ"

= Letteratura religiosa

#include "../../docs/letteratura_italiana/02_trecento/05_letteratura-religiosa.typ"

= La lirica e la novellistica

#include "../../docs/letteratura_italiana/02_trecento/06_lirica-novellistica.typ"

= *Il Quattrocento* <senza_numero>

#include "../../docs/letteratura_italiana/03_quattrocento/00_introduzione.typ"

= L'Umanesimo

#include "../../docs/letteratura_italiana/03_quattrocento/01_umanesimo.typ"

= La letteratura umanistica alla corte dei Medici

#include "../../docs/letteratura_italiana/03_quattrocento/02_letteratura-corte-medici.typ"

= La letteratura umanistica a Ferrara e Napoli

#include "../../docs/letteratura_italiana/03_quattrocento/03_letteratura-ferrara-napoli.typ"

= *Il Cinquecento* <senza_numero>

#include "../../docs/letteratura_italiana/04_cinquecento/00_introduzione.typ"

= Classicismo rinascimentale

#include "../../docs/letteratura_italiana/04_cinquecento/01_classicismo-rinascimentale.typ"

= Ludovico Ariosto

#include "../../docs/letteratura_italiana/04_cinquecento/02_ariosto.typ"

= Niccolò Macchiavelli e Francesco Guicciardini

#include "../../docs/letteratura_italiana/04_cinquecento/03_macchiavelli-guicciardini.typ"

= Novellistica e teatro del Rinascimento

#include "../../docs/letteratura_italiana/04_cinquecento/04-novellistica-teatro-rinascimento.typ"

= Anticlassicismo

#include "../../docs/letteratura_italiana/04_cinquecento/05_anticlassicismo.typ"

= Manierismo

#include "../../docs/letteratura_italiana/04_cinquecento/06_manierismo.typ"

= Tasso e il periodo controriformistico

#include "../../docs/letteratura_italiana/04_cinquecento/07_tasso-controriforma.typ"

= *Il Seicento* <senza_numero>

#include "../../docs/letteratura_italiana/05_seicento/00_introduzione.typ"

= Il barocco e Giambattista Marino

#include "../../docs/letteratura_italiana/05_seicento/01_barocco-marino.typ"

= Il classicismo barocco

#include "../../docs/letteratura_italiana/05_seicento/02_classicismo-barocco.typ"

= La prosa filosofica, scientifica e storica

#include "../../docs/letteratura_italiana/05_seicento/03_prosa-filosofica-scientifica-storica.typ"

= *Il Settecento* <senza_numero>

#include "../../docs/letteratura_italiana/06_settecento/00_introduzione.typ"

= Un nuovo orizzonte storico

#include "../../docs/letteratura_italiana/06_settecento/01_nuovo-orizzonte-storico.typ"

= L'illuminismo italiano

#include "../../docs/letteratura_italiana/06_settecento/02_illuminismo-italiano.typ"

= La riforma teatrale di Goldoni

#include "../../docs/letteratura_italiana/06_settecento/03_goldoni.typ"

= La cultura lombarda e Parini

#include "../../docs/letteratura_italiana/06_settecento/04_cultura-lombarda-parini.typ"

= Neoclassici e preromantici

#include "../../docs/letteratura_italiana/06_settecento/05_neoclassici-preromantici.typ"

= Vittorio Alfieri

#include "../../docs/letteratura_italiana/06_settecento/06_alfieri.typ"

= *L'Ottocento* <senza_numero>

#include "../../docs/letteratura_italiana/07_ottocento/00_introduzione.typ"

= Il periodo napoleonico e Vincenzo Monti

#include "../../docs/letteratura_italiana/07_ottocento/01_periodo-napoleonico-monti.typ"

= Ugo Foscolo

#include "../../docs/letteratura_italiana/07_ottocento/02_foscolo.typ"

= Il romanticismo

#include "../../docs/letteratura_italiana/07_ottocento/03_romanticismo.typ"

= Alessandro Manzoni

#include "../../docs/letteratura_italiana/07_ottocento/04_manzoni.typ"

= Giacomo Leopardi

#include "../../docs/letteratura_italiana/07_ottocento/05_leopardi.typ"

= Letteratura risorgimentale

#include "../../docs/letteratura_italiana/07_ottocento/06_letteratura-risorgimentale.typ"

= La reazione antiromantica

#include "../../docs/letteratura_italiana/07_ottocento/07_reazione-antiromantica.typ"

= Verismo

#include "../../docs/letteratura_italiana/07_ottocento/08_verismo.typ"

= Fra Ottocento e Novecento, la stagione decadente

#include "../../docs/letteratura_italiana/07_ottocento/09_decadentismo.typ"

= *Il Novecento* <senza_numero>

#include "../../docs/letteratura_italiana/08_novecento/00_introduzione.typ"

= Al di là del decadentismo

#include "../../docs/letteratura_italiana/08_novecento/01_postdecadentismo.typ"

= Benedetto Croce e il dibattito critico

#include "../../docs/letteratura_italiana/08_novecento/02_croce-dibattito-critico.typ"

= Luigi Pirandello

#include "../../docs/letteratura_italiana/08_novecento/03_pirandello.typ"

= Italo Svevo

#include "../../docs/letteratura_italiana/08_novecento/04_svevo.typ"

= La nuova poesia: Saba e Ungaretti

#include "../../docs/letteratura_italiana/08_novecento/05_saba-ungaretti.typ"

= Gli anni Venti e Trenta

#include "../../docs/letteratura_italiana/08_novecento/06_anni-venti-trenta.typ"

= Surrealismo e realismo

#include "../../docs/letteratura_italiana/08_novecento/07_surrealismo-realismo.typ"

= L'ermetismo

#include "../../docs/letteratura_italiana/08_novecento/08_ermetismo.typ"

= Eugenio Montale

#include "../../docs/letteratura_italiana/08_novecento/09_montale.typ"

= Carlo Emilio Gadda

#include "../../docs/letteratura_italiana/08_novecento/10_gadda.typ"

= Il neorealismo

#include "../../docs/letteratura_italiana/08_novecento/11_neorealismo.typ"

= Il realismo critico

#include "../../docs/letteratura_italiana/08_novecento/12_realismo-critico.typ"

= La poesia dialettale del Novecento

#include "../../docs/letteratura_italiana/08_novecento/13_poesia-dialettale.typ"

= La poesia del dopoguerra

#include "../../docs/letteratura_italiana/08_novecento/14_poesia-dopoguerra.typ"

= Sperimentalismo e neoavanguardia

#include "../../docs/letteratura_italiana/08_novecento/15_sperimentalismo-neoavanguardia.typ"

= Elsa Morante e le narratrici

#include "../../docs/letteratura_italiana/08_novecento/16_morante-narratrici.typ"

= Italo Calvino

#include "../../docs/letteratura_italiana/08_novecento/17_calvino.typ"

= Gli ultimi decenni del Novecento

#include "../../docs/letteratura_italiana/08_novecento/18_ultimi-novecento.typ"

#pagebreak()

// Retro
#include "retro.typ"