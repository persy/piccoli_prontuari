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

=  *Introduzione* <senza_numero>

#include "../../docs/storia_arte/00_introduzione.typ"

=  L'arte preistorica e delle civiltà antiche

#include "../../docs/storia_arte/01_arte-preistorica-civiltà-antiche.typ"

=  L'arte greca

#include "../../docs/storia_arte/02_arte-greca.typ"

=  L'arte romana

#include "../../docs/storia_arte/03_arte-romana.typ"

=  Dall'arte paleocristiana all'arte carolingia

#include "../../docs/storia_arte/04_arte-paleocristiana-arte-carolingia.typ"

=  Il romanico

#include "../../docs/storia_arte/05_romanico.typ"

=  L'arte gotica

#include "../../docs/storia_arte/06_gotico.typ"

=  Pittura e architettura fra Trecento e Quattrocento

#include "../../docs/storia_arte/07_pittura-architettura-trecento-quattrocento.typ"

=  La nuova funzione dell'arte nel Rinascimento

#include "../../docs/storia_arte/08_arte-rinascimentale.typ"

=  I maestri del Rinascimento maturo

#include "../../docs/storia_arte/09_maestri-rinascimento-maturo.typ"

= Il manierismo

#include "../../docs/storia_arte/10_manierismo.typ"

= Classicismo e caravaggismo

#include "../../docs/storia_arte/11_classicismo-caravaggismo.typ"

= Il Barocco

#include "../../docs/storia_arte/12_barocco.typ"

= Dal rococò al neoclassicismo

#include "../../docs/storia_arte/13_rococo-neoclassicismo.typ"

= La pittura nell'Europa romantica

#include "../../docs/storia_arte/14_pittura-europa-romantica.typ"

= Impressionismo e simbolismo

#include "../../docs/storia_arte/15_impressionismo-simbolismo.typ"

= Architettura e arti applicate nell'Ottocento

#include "../../docs/storia_arte/16_architettura-ottocento.typ"

= La pittura italiana alla fine dell'Ottocento

#include "../../docs/storia_arte/17_pittura-italiana-fine-ottocento.typ"

= Alle origini delle avanguardie - Espressionismo e cubismo

#include "../../docs/storia_arte/18_avanguardie-espressionismo-cubismo.typ"

= L'Italia delle avanguardie

#include "../../docs/storia_arte/19_italia-avanguardie.typ"

= L'astrattismo

#include "../../docs/storia_arte/19_italia-avanguardie.typ"

= Il recupero della figura - Da Chagall alla Nuova oggettività

#include "../../docs/storia_arte/21_chagall-nuova-oggettività.typ"

= Dadaismo e surrealismo

#include "../../docs/storia_arte/22_dadaismo-surrealismo.typ"

= L'architettura nella prima metà del Novecento

#include "../../docs/storia_arte/23_architettura-novecento.typ"

= Dagli anni Trenta al secondo dopoguerra

#include "../../docs/storia_arte/24_anni-trenta-secondo-dopoguerra.typ"

= Espressioni dell'arte contemporanea

#include "../../docs/storia_arte/25_espressioni-arte-contemporanea.typ"

#pagebreak()

// Retro
#include "retro.typ"