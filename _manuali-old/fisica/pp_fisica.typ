// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Fisica],
  authors: ("Marco Persy", "WikiBigino"),
  toc: true,
  colore: main_scienze,
  full: true
)

#pagebreak(weak:true)

// Capitoli e sezioni
#set page(numbering: "1") // Da inserire dopo copertina e indice
#counter(page).update(4) // Aggiorna il numero della pagina

#set heading(numbering: (..nums) => {
  set text(fill: main_scienze, weight: "bold")
      numbering("1.1.1", ..nums)
}
)

// Numeri didascalie
#set figure(numbering: (..nums) => {
  set text(fill: main_scienze, font: sans-fonts)
      numbering("1.1.1", ..nums)
      
}
)

// Formule
#set math.equation(numbering: (..n) => {
  text(
    fill: main_scienze, 
    font: sans-fonts, 
    size: 9pt, 
    // Rimuovi il punto dopo l'1
    numbering("1", ..n) 
  )
})

// Didascalie
// #set figure.caption(position: bottom)
//#show figure.caption.where(position: top): sidenote.with(numbered: false)

// Colore grassetto
#show strong: it => text(
  fill: main_scienze
)[#it]

// // // // //

// Inizio documento

=  Che cos'è la fisica <senza_numero>

#include "_testi/0 Che cos'è la fisica.typ"

=  Il metodo sperimentale

#include "_testi/1 Il metodo sperimentale.typ"

=  I vettori

#include "_testi/2 I vettori.typ"

=  I moti rettilinei

#include "_testi/3 I moti rettilinei.typ"

=  I moti curvilinei

#include "_testi/4 I moti curvilinei.typ"

=  Le forze e i principi della dinamica

#include "_testi/5 Le forze e i principi della dinamica.typ"

=  La gravitazione universale

#include "_testi/6 La gravitazione universale.typ"

=  Lavoro, energia e potenza

#include "_testi/7 Lavoro, energia e potenza.typ"

=  Le leggi di conservazione

#include "_testi/8 Le leggi di conservazione.typ"

=  L'equilibrio e il moto rotatorio dei corpi

#include "_testi/9 L'equilibrio e il moto rotatorio dei corpi.typ"

=  La meccanica dei fluidi

#include "_testi/10 La meccanica dei fluidi.typ"

=  Il calore e la temperatura

#include "_testi/11 Il calore e la temperatura.typ"

=  I cambiamenti di stato

#include "_testi/12 I cambiamenti di stato.typ"

=  La teoria cinetica dei gas

#include "_testi/13 La teoria cinetica dei gas.typ"

=  La termodinamica

#include "_testi/14 La termodinamica.typ"

=  L'elettricità statica

#include "_testi/15 L'elettricità statica.typ"

=  Il campo elettrico

#include "_testi/16 Il campo elettrico.typ"

=  La corrente elettrica

#include "_testi/17 La corrente elettrica.typ"

=  Il magnetismo

#include "_testi/18 Il magnetismo.typ"

=  L'induzione elettromagnetica e le equazioni di Maxwell

#include "_testi/19 L'induzione elettromagnetica e le equazioni di Maxwell.typ"

=  I fenomeni ondulatori

#include "_testi/20 I fenomeni ondulatori.typ"

=  Il suono

#include "_testi/21 Il suono.typ"

=  Le onde elettromagnetiche

#include "_testi/22 Le onde elettromagnetiche.typ"

=  La luce

#include "_testi/23 La luce.typ"

=  La meccanica quantistica e l'atomo

#include "_testi/24 La meccanica quantistica e l'atomo.typ"

=  Il nucleo e le particelle elementari

#include "_testi/25 Il nucleo e le particelle elementari.typ"

=  La relatività

#include "_testi/26 La relatività.typ"

=  Calcoli per la fisica

#include "_testi/27 Calcoli per la fisica.typ"


#pagebreak()

// Retro
#include "_retro.typ"
