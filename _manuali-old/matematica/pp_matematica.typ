// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Matematica],
  authors: ("Marco Persy", "WikiBigino"),
  toc: true,
  colore: main_scienze,  
)

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
    fill: silver.darken(75%), 
    font: sans-fonts, 
    size: 9pt, 
    // Rimuovi il punto dopo l'1
    numbering("1", ..n) 
  )
})
//#show math.equation: math.upright
// Numeri formule in ellisse colorata
/* #set math.equation(numbering: n => {
  box(baseline: 2pt,
    ellipse(
      stroke: 0.8pt + main_scienze.lighten(15%),
      fill: main_scienze.lighten(15%),
      inset: 3pt, 
      text(fill: white, weight: "bold", size: 0.8em, font: sans-fonts, [#n])
    )
  )
}) */

// Didascalie a margine
// #set figure.caption(position: bottom)
//#show figure.caption.where(position: top): sidenote.with(numbered: false)

// Colore grassetto
#show strong: it => text(
  fill: main_scienze  
)[#it]

// Azzera conteggio #definizione, #esempio e formule matematiche, ad ogni nuovo capitolo.
#show heading.where(level: 1): it => {
  counter(figure.where(kind: "definizione")).update(0)
  it
}
#show heading.where(level: 1): it => {
  counter("esempio").update(0)
  it
}
#show heading.where(level: 1): it => {
  counter(math.equation).update(0)
  it
}

// // // // //

// Inizio documento

= *Introduzione* <senza_numero>

#include "_testi/0 Introduzione.typ"

/* = Il ragionamento matematico

#include "_testi/Geometria euclidea/1 Ragionamento matematico.typ"
 */

/* = I numeri reali

#include "_testi/1 Numeri reali.typ"

= Funzioni reali

#include "_testi/2 Funzioni reali.typ"

= Limiti di successioni

#include "_testi/3 Limiti di successioni.typ" */

= Elementi di logica <logica>

#include "_testi/1 Elementi di logica.typ"

= Dai numeri naturali ai quelli reali <numeri_naturali_reali>

#include "_testi/2 Dai numeri naturali ai quelli reali.typ"

= Algebra elementare <algebra>

#include "_testi/3 Algebra elementare.typ"

= Funzioni <funzioni>

#include "_testi/4 Funzioni.typ"

= Equazioni e sistemi <equazioni>

= Disequazioni <disequazioni>

= Potenze, esponenziali, logaritmi <potenze_esponenziali_logaritmi>

= Geometria analitica <geometria_analitica>

= Geometria euclidea piana <geometria_euclidea_piana>

= Geometria euclidea solida <geometria_euclidea_solida>

= Goniometria e trigonometria <goniometria_trigonometria>

= Calcolo combinatorio <calcolo_combinatorio>

= Funzioni iperboliche <funzioni_iperboliche>

= Numeri complessi <numeri_complessi>

= Sistemi lineari e geometria spaziale // trova un titolo migliore #TODO

= Affinità <affinità>

= Grafici costruibili per via elementare <grafici_elementari>

#pagebreak()

// Retro
#include "_retro.typ"