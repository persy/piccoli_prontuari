#import "../_global/template.typ": *
#import "../_global/config.typ": main_letteratura, main_color

// Copertina
#include "cover.typ"

// Colore della materia
#let selected_color = main_letteratura

// Aggiorna lo stato globale per subfile
#main_color.update(selected_color)

// 3. Applichiamo il layout del template
#show: template.with(
  title: "Letteratura latina",
  color: selected_color,  
)

// Capitoli

= *L'età arcaica* <senza_numero>

#include "../../docs/letteratura_latina/01_eta-arcaica/00_introduzione.typ"

= Il periodo delle origini

#include "../../docs/letteratura_latina/01_eta-arcaica/01_periodo-origini.typ"

= Il teatro arcaico

#include "../../docs/letteratura_latina/01_eta-arcaica/02_teatro-arcaico.typ"

= Andronico e Nevio

#include "../../docs/letteratura_latina/01_eta-arcaica/03_andronico-nevio.typ"

= Plauto

#include "../../docs/letteratura_latina/01_eta-arcaica/04_plauto.typ"

= Ennio

#include "../../docs/letteratura_latina/01_eta-arcaica/05_ennio.typ"

= Catone e la prosa arcaica

#include "../../docs/letteratura_latina/01_eta-arcaica/06_catone-prosa-arcaica.typ"

= Stazio e Terenzio

#include "../../docs/letteratura_latina/01_eta-arcaica/07_stazio-terenzio.typ"

= Il ritorno dell'atellana

#include "../../docs/letteratura_latina/01_eta-arcaica/08_ritorno-atellana.typ"

= Lucilio

#include "../../docs/letteratura_latina/01_eta-arcaica/09_lucilio.typ"

= *L'età di Cesare* <senza_numero>

#include "../../docs/letteratura_latina/02_eta-cesare/00_introduzione.typ"

= Il periodo classico della letteratura latina

#include "../../docs/letteratura_latina/02_eta-cesare/01_periodo-classico.typ"

= I _poetae novi_, o _neoteroi_

#include "../../docs/letteratura_latina/02_eta-cesare/02_poetae-novi.typ"

= Catullo

#include "../../docs/letteratura_latina/02_eta-cesare/03_catullo.typ"

= Lucrezio

#include "../../docs/letteratura_latina/02_eta-cesare/04_lucrezio.typ"

= Cicerone

#include "../../docs/letteratura_latina/02_eta-cesare/05_cicerone.typ"

= Cesare

#include "../../docs/letteratura_latina/02_eta-cesare/06_cesare.typ"

= Sallustio

#include "../../docs/letteratura_latina/02_eta-cesare/07_sallustio.typ"

= Varrone e gli scrittori minori

#include "../../docs/letteratura_latina/02_eta-cesare/08_varrone-scrittori-minori.typ"

= *L'età di Augusto* <senza_numero>

#include "../../docs/letteratura_latina/03_eta-augusto/00_introduzione.typ"

= Società e cultura sotto il principato di Augusto

#include "../../docs/letteratura_latina/03_eta-augusto/01_societa-cultura-augusto.typ"

= Virgilio

#include "../../docs/letteratura_latina/03_eta-augusto/02_virgilio.typ"

= Orazio

#include "../../docs/letteratura_latina/03_eta-augusto/03_orazio.typ"

= L'elegia d'amore, Tibullo e Properzio

#include "../../docs/letteratura_latina/03_eta-augusto/04_tibullo-properzio.typ"

= Ovidio

#include "../../docs/letteratura_latina/03_eta-augusto/05_ovidio.typ"

= Livio

#include "../../docs/letteratura_latina/03_eta-augusto/06_livio.typ"

= *L'età giulio-claudia* <senza_numero>

#include "../../docs/letteratura_latina/04_eta-giulio-claudia/00_introduzione.typ"

= Seneca

#include "../../docs/letteratura_latina/04_eta-giulio-claudia/01_seneca.typ"

= Lucano e la poesia minore

#include "../../docs/letteratura_latina/04_eta-giulio-claudia/02_lucano-poesia-minore.typ"

= Petronio e la prosa minore

#include "../../docs/letteratura_latina/04_eta-giulio-claudia/03_petronio-prosa-minore.typ"

= La satira di Persio

#include "../../docs/letteratura_latina/04_eta-giulio-claudia/04_satira-persio.typ"

= *L'età dei Flavi* <senza_numero>

#include "../../docs/letteratura_latina/05_eta-flavi/00_introduzione.typ"

= Marziale

#include "../../docs/letteratura_latina/05_eta-flavi/01_marziale.typ"

= Poeti epici

#include "../../docs/letteratura_latina/05_eta-flavi/02_poeti-epici.typ"

= Quintiliano

#include "../../docs/letteratura_latina/05_eta-flavi/03_quintiliano.typ"

= Plinio il Vecchio

#include "../../docs/letteratura_latina/05_eta-flavi/04_plinio-vecchio.typ"

= *L'età di Nerva e Traiano* <senza_numero>

#include "../../docs/letteratura_latina/06_eta-nerva-traiano/00_introduzione.typ"

= Tacito

#include "../../docs/letteratura_latina/06_eta-nerva-traiano/01_tacito.typ"

= La satira di Giovenale

#include "../../docs/letteratura_latina/06_eta-nerva-traiano/02_satira-giovenale.typ"

= Plinio il Giovane

#include "../../docs/letteratura_latina/06_eta-nerva-traiano/03_plinio-giovane.typ"

= *Dall'età di Adriano alle soglie del Medioevo* <senza_numero>

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/00_introduzione.typ"

= La poesia

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/01_poesia.typ"

= La prosa di Svetonio, Floro, Frontone e Gellio

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/02_svetonio-floro-frontone-gellio.typ"

= Apuleio

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/03_apuleio.typ"

= La fine della letteratura pagana, i prosatori e gli ultimi poeti

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/04_fine-letteratura-pagana.typ"

= Tertulliano e l'apologetica cristiana

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/05_tertulliano-apologetica-cristiana.typ"

= La poesia cristiana

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/06_poesia-cristiana.typ"

= I Padri della Chiesa latina

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/07_padri-chiesa-latina.typ"

= Agostino e i tardi prosatori latini

#include "../../docs/letteratura_latina/07_eta-adriano-medioevo/08_agostino-tardi-prosatori.typ"

#pagebreak()

// Retro
#include "retro.typ"