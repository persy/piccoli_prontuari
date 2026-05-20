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
    // black.transparentize(60%) crea un velo nero al 40% di opacità.
    // Più il valore è alto (es. 70%), più l'immagine sarà Chiara.
    // Più il valore è basso (es. 40%), più l'immagine sarà Scura.
    fill: black.transparentize(50%) 
  )
]

// Scritta in bianco centrata sopra l'immagine
place(center + horizon)[
  // RIGA 1: Piccolo
  #block[
    #set text(size: 4em, weight: "bold", font: cover-fonts)
    #place(center + horizon, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[Piccolo]]
    #text(fill: white.darken(10%))[Piccolo]
  ]
  // RIGA 2: Prontuario
  #block[
    #set text(size: 4em, weight: "bold", font: cover-fonts)
    #place(center + horizon, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[Prontuario]]
    #text(fill: white.darken(10%))[Prontuario]
  ]
  
  // RIGA 3: di
  #block[
    #set text(size: 2em, weight: "light", font: cover-fonts)
    #place(top + left, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[di]]
    #text(fill: white.darken(10%))[di]
  ]   
  
  // RIGA 4: #subject
  #block[
    #set text(size: 5em, weight: "black", font: cover-fonts)
    #place(center + horizon, dx: 1.5pt, dy: 1.5pt)[#text(fill: black.transparentize(65%))[#subject]]
    #text(fill: gradient)[#subject]
  ] 
  #v(2em)
  
  // RIGA 5: #arguments 
  #block(inset: 2em)[
    #set text(size: 1.5em, weight: "regular", font: sans-fonts)
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