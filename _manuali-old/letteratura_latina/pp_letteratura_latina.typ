// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Biologia],
  authors: ("Marco Persy", "WikiBigino"),
  toc: true,
  colore: main_letteratura,
  full: true
)

#pagebreak(weak:true)

// Capitoli e sezioni
#set page(numbering: "1") // Da inserire dopo copertina e indice
#counter(page).update(4) // Aggiorna il numero della pagina

#set heading(numbering: (..nums) => {
  set text(fill: main_letteratura, weight: "bold")
      numbering("1.1.1", ..nums)
}
)

// Numeri didascalie
#set figure(numbering: (..nums) => {
  set text(fill: main_letteratura, font: sans-fonts)
      numbering("1.1.1", ..nums)
      
}
)

// Colore grassetto
#show strong: it => text(
  fill: main_letteratura
)[#it]

// // // // //

// Inizio documento

= *L'età arcaica* <senza_numero>

#include "_testi/1 L'età arcaica/0 Introduzione.typ"

= Il periodo delle origini

#include "_testi/1 L'età arcaica/1 Il periodo delle origini.typ"

= Il teatro arcaico

#include "_testi/1 L'età arcaica/2 Il teatro arcaico.typ"

= Andronico e Nevio

#include "_testi/1 L'età arcaica/3 Andronico e Nevio.typ"

= Plauto

#include "_testi/1 L'età arcaica/4 Plauto.typ"

= Ennio

#include "_testi/1 L'età arcaica/5 Ennio.typ"

= Catone e la prosa arcaica

#include "_testi/1 L'età arcaica/6 Catone e la prosa arcaica.typ"

= Stazio e Terenzio

#include "_testi/1 L'età arcaica/7 Stazio e Terenzio.typ"

= Il ritorno dell'atellana

#include "_testi/1 L'età arcaica/8 Il ritorno dell'atellana.typ"

= Lucilio

#include "_testi/1 L'età arcaica/9 Lucilio.typ"

= *L'età di Cesare* <senza_numero>

#include "_testi/2 L'età di Cesare/0 Introduzione.typ"

= Il periodo classico della letteratura latina

#include "_testi/2 L'età di Cesare/1 Il periodo classico della letteratura latina.typ"

= I _poetae novi_, o _neoteroi_

#include "_testi/2 L'età di Cesare/2 I poetae novi, o neoteroi.typ"

= Catullo

#include "_testi/2 L'età di Cesare/3 Catullo.typ"

= Lucrezio

#include "_testi/2 L'età di Cesare/4 Lucrezio.typ"

= Cicerone

#include "_testi/2 L'età di Cesare/5 Cicerone.typ"

= Cesare

#include "_testi/2 L'età di Cesare/6 Cesare.typ"

= Sallustio

#include "_testi/2 L'età di Cesare/7 Sallustio.typ"

= Varrone e gli scrittori minori

#include "_testi/2 L'età di Cesare/8 Varrone e gli scrittori minori.typ"

= *L'età di Augusto* <senza_numero>

#include "_testi/3 L'età di Augusto/0 Introduzione.typ"

= Società e cultura sotto il principato di Augusto

#include "_testi/3 L'età di Augusto/1 Società e cultura sotto il principato di Augusto.typ"

= Virgilio

#include "_testi/3 L'età di Augusto/2 Virgilio.typ"

= Orazio

#include "_testi/3 L'età di Augusto/3 Orazio.typ"

= L'elegia d'amore, Tibullo e Properzio

#include "_testi/3 L'età di Augusto/4 L'elegia d'amore, Tibullo e Properzio.typ"

= Ovidio

#include "_testi/3 L'età di Augusto/5 Ovidio.typ"

= Livio

#include "_testi/3 L'età di Augusto/6 Livio.typ"

= *L'età giulio-claudia* <senza_numero>

#include "_testi/4 L'età Giulio-Claudia/0 Introduzione.typ"

= Seneca

#include "_testi/4 L'età Giulio-Claudia/1 Seneca.typ"

= Lucano e la poesia minore

#include "_testi/4 L'età Giulio-Claudia/2 Lucano e la poesia minore.typ"

= Petronio e la prosa minore

#include "_testi/4 L'età Giulio-Claudia/3 Petronio e la prosa minore.typ"

= La satira di Persio

#include "_testi/4 L'età Giulio-Claudia/4 La satira di Persio.typ"

= *L'età dei Flavi* <senza_numero>

#include "_testi/5 L'età dei Flavi/0 Introduzione.typ"

= Marziale

#include "_testi/5 L'età dei Flavi/1 Marziale.typ"

= Poeti epici

#include "_testi/5 L'età dei Flavi/2 Poeti epici.typ"

= Quintiliano

#include "_testi/5 L'età dei Flavi/3 Quintiliano.typ"

= Plinio il Vecchio

#include "_testi/5 L'età dei Flavi/4 Plinio il Vecchio.typ"

= *L'età di Nerva e Traiano* <senza_numero>

#include "_testi/6 L'età di Nerva e Traiano/0 Introduzione.typ"

= Tacito

#include "_testi/6 L'età di Nerva e Traiano/1 Tacito.typ"

= La satira di Giovenale

#include "_testi/6 L'età di Nerva e Traiano/2 La satira, Giovenale.typ"

= Plinio il Giovane

#include "_testi/6 L'età di Nerva e Traiano/3 Plinio il Giovane.typ"

= *Dall'età di Adriano alle soglie del Medioevo* <senza_numero>

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/0 Introduzione.typ"

= La poesia

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/1 La poesia.typ"

= La prosa di Svetonio, Floro, Frontone e Gellio

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/2 La prosa di Svetonio, Floro, Frontone, Gellio.typ"

= Apuleio

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/3 Apuleio.typ"

= La fine della letteratura pagana, i prosatori e gli ultimi poeti

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/4 La fine della letteratura pagana, i prosatori e gli ultimi poeti.typ"

= Tertulliano e l'apologetica cristiana

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/5 Tertulliano e l'apologetica cristiana.typ"

= La poesia cristiana

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/6 La poesia cristiana.typ"

= I Padri della Chiesa latina

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/7 I Padri della Chiesa latina.typ"

= Agostino e i tardi prosatori latini

#include "_testi/7 Dall'età di Adriano alle soglie del Medioevo/8 Agostino e i tardi prosatori latini.typ"

#pagebreak()

// Retro
#include "_retro.typ"