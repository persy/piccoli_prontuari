// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Biologia],
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

#set math.equation(numbering: (..n) => {
  text(fill: main_scienze, font: sans-fonts, size: 9pt, numbering("1.", ..n))
})

// Didascalie a margine
// #set figure.caption(position: top)
//#show figure.caption.where(position: bottom): sidenote.with(numbered: false)

// Colore grassetto
#show strong: it => text(
  fill: main_scienze  
)[#it]

// // // // //

// Inizio documento
= Introduzione <senza_numero>

#include "_testi/0 Introduzione.typ"

#counter(heading).update(0)

= Dagli atomi alle biomolecole

#include "_testi/1 Dagli atomi alle biomolecole.typ"

= Le reazioni chimiche e gli scambi energetici

#include "_testi/2 Reazioni chimiche e scambi di energia.typ"

= La cellula e la sua struttura

#include "_testi/3 La struttura della cellula.typ"

= Le attività della cellula

#include "_testi/4 L'attività della cellula.typ"

= Il linguaggio della cellula

#include "_testi/5 Il linguaggio della cellula.typ"

= La riproduzione della cellula

#include "_testi/6 La riproduzione della cellula.typ"

= L'ereditarietà dei caratteri

#include "_testi/7 L'ereditarietà dei caratteri.typ"

= Le basi molecolari dell'ereditarietà

#include "_testi/8 Le basi molecolari dell'eredità.typ"

= L'evoluzione negli organismi

#include "_testi/9 L'evoluzione degli organismi.typ"

= La storia della vita

#include "_testi/10 La storia della vita sulla Terra.typ"

= Principi di classificazione

#include "_testi/11 Principi di classificazione.typ"

= Le monere e i protisti

#include "_testi/12 Le monere e i protisti.typ"

= Le piante e i funghi

#include "_testi/13 Le piante e i funghi.typ"

= Il regno degli animali

#include "_testi/14 Il regno degli animali.typ"

= La struttura delle piante superiori

#include "_testi/15 La struttura delle piante superiori.typ"

= Le funzioni delle piante superiori

#include "_testi/16 Le funzioni delle piante superiori.typ"

= I tessuti e gli organi degli animali

#include "_testi/17 I tessuti e gli organi degli animali.typ"

= Gli apparati di sostegno e di movimento

#include "_testi/18 Gli apparati di sostegno e movimento.typ"

= La circolazione e la respirazione

#include "_testi/19 Circolazione e respirazione.typ"

= La digestione e l'escrezione 

#include "_testi/20 Digestione ed escrezione.typ"

= Percezione, coordinamento e controllo

#include "_testi/21 Percezione, coordinamento e controllo.typ"

= La riproduzione e lo sviluppo embrionale negli animali

#include "_testi/22 Riproduzione e sviluppo embrionale negli animali.typ"

= Il sistema immunitario

#include "_testi/23 Il sistema immunitario.typ"

= Principi di etologia

#include "_testi/24 Principi di etologia.typ"

= Il comportamento sociale

#include "_testi/25 Il comportamento sociale.typ"

= Fondamenti di ecologia

#include "_testi/26 Fondamenti di ecologia.typ"

= La biosfera e i biomi

#include "_testi/27 La biosfera e i biomi.typ"






#pagebreak()
// Retro
// Retro
#include "_retro.typ"

