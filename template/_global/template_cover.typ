#import "config.typ": *

#let copertina(subject: "", cover-image: "", arguments: "") = context {
  let accent = accent_color.get()
  let gradient = gradient_color.get()
  
  set page(
  paper: "a4", // o "a5", "letter", ecc.
  margin: 0cm,
)

// Immagine principale
place(top + left)[
  #block(width: 100% + 1pt, height: 100%, outset: 0pt)[
  #figure(cover-image)
  ]
]

// Filtro scuro sopra l'immagine
place(top + left)[
  #rect(
    width: 100% + 1pt,
    height: 100%,
    fill: black.transparentize(75%) 
  )
]

// Scritta in bianco centrata sopra l'immagine; due volte le scritte per proiettare ombra
place(center + horizon)[
  // RIGA 1: Piccolo
  #block[
    #set text(font: cover-fonts, size: 4em, weight: "bold")
    #place(center + horizon, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[Piccolo]]
    #text(fill: white.darken(10%))[Piccolo]
  ]
  // RIGA 2: Prontuario
  #block[
    #set text(font: cover-fonts, size: 4em, weight: "bold")
    #place(center + horizon, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[Prontuario]]
    #text(fill: white.darken(10%))[Prontuario]
  ]
  
  // RIGA 3: di
  #block[
    #set text(font: cover-fonts, size: 2em, weight: "light")
    #place(top + left, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[di]]
    #text(fill: white.darken(10%))[di]
  ]   
  
  // RIGA 4: #subject
  #block[
    #set text(font: cover-fonts, size: 6em, weight: "black")
    #place(center + horizon, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[#subject]]
    #text(fill: gradient)[#subject]
  ] 
  #v(2em)
  
  // RIGA 5: #arguments 
  #block(inset: 2em)[
    #set text(size: 1.5em, weight: "regular", font: sans-fonts, features: ("ss05",))
    #place(center + horizon, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[#arguments]]
    #text(fill: white.darken(10%))[#arguments]
  ]
]
  
  // RIGA 6: Logo in basso
  align(center + bottom)[
    #block(inset: 2em)[      
      #image("assets/logo.png", height: 2em)      
      
      #block[
        #set text(size: 1em, weight: "bold", font: cover-fonts)
        #place(top + center, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[WikiBigino]]
        #text(fill: white.darken(10%))[#link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[WikiBigino]]
      ]
    ] 
  ] 


}