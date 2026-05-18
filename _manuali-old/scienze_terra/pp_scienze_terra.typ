// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Scienze della Terra],
  authors: ("Marco Persy", "WikiBigino"),
  toc: true,
  colore: main_scienze,  
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

// Didascalie a margine
// #set figure.caption(position: bottom)
//#show figure.caption.where(position: top): sidenote.with(numbered: false)

// Colore grassetto
#show strong: it => text(
  fill: main_scienze  
)[#it]

// // // // //

// Inizio documento

= Introduzione <senza_numero>

#include "_testi/0 Introduzione.typ"

= Astronomia fondamentale

#include "_testi/1 Astronomia fondamentale.typ"

= Le stelle

#include "_testi/2 Le stelle.typ"

= Il sistema solare

#include "_testi/3 Il sistema solare.typ"

= L'origine dell'universo

#include "_testi/4 L'origine dell'universo.typ"

= Il pianeta Terra

#include "_testi/5 Il pianeta Terra.typ"

= La rappresentazione cartografica

#include "_testi/6 La rappresentazione cartografica.typ"

= I materiali della crosta terrestre

#include "_testi/7 Materiali della crosta terrestre.typ"

= Le rocce ignee

#include "_testi/8 Rocce ignee.typ"

= Le rocce sedimentarie

#include "_testi/9 Rocce sedimentarie.typ"

= Le rocce metamorfiche

#include "_testi/10 Rocce metamorfiche.typ"

= L'interno della Terra

#include "_testi/11 L'interno della Terra.typ"

= Le teorie tettoniche

#include "_testi/12 Le teorie tettoniche.typ"

= Le deformazioni della litosfera

#include "_testi/13 Le deformazioni tettoniche della litosfera.typ"

= Il vulcanismo

#include "_testi/14 Il vulcanismo.typ"

= La sismicità

#include "_testi/15 La sismicità.typ"

= La storia della Terra

#include "_testi/16 La storia della Terra.typ"

= L'atmosfera

#include "_testi/17 L'atmosfera.typ"

= I climi

#include "_testi/18 I climi.typ"

= L'idrosfera: le acque marine

#include "_testi/19 Idrosfera, le acque marine.typ"

= L'idrosfera: le acque continentali

#include "_testi/20 Idrosfera, le acque continentali.typ"

= Il modellamento della superficie terrestre

#include "_testi/21 Il modellamento della superficie terrestre.typ"

= Il suolo

#include "_testi/22 Il suolo.typ"

= L'uomo e il rischio naturale

#include "_testi/23 L'uomo e il rischio naturale.typ"

= Le risorse minerarie

#include "_testi/24 Le risorse minerarie.typ"

#pagebreak()

// Retro
#include "_retro.typ"