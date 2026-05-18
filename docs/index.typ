#import "../template/_global/layout.typ": progetto

#show: progetto.with(
  titolo: "Piccoli Prontuari",
  autore: "Marco Persy",
)

= Benvenuto nel mio Hub di Studio

Questo spazio ospita la raccolta dei miei documenti, appunti e file di configurazione, organizzati per materie e pubblicati automaticamente tramite *GitHub Pages*.

== Materie disponibili

Di seguito trovi i collegamenti rapidi alle sezioni del progetto. Ogni cartella contiene i documenti di testo e le relative risorse visive.

#grid(
  columns: (1fr, 1fr),  
  row-gutter: 20pt,
  column-gutter: 15pt,
  [
    === #link("biologia/index.typ")[🧬 Biologia]
  ],[
    === #link("chimica/index.typ")[⚗️ Chimica]

  ],[ 
    === #link("filosofia/index.typ")[🧠 Filosofia] 

  ],[
    === #link("fisica/index.typ")[⚛️ Fisica]

  ],[
    === #link("letteratura_inglese/index.typ")[🎩Letteratura inglese]
    
  ],[
    === #link("letteratura_italiana/index.typ")[🍕 Letteratura italiana]

  ],[
    === #link("letteratura_latina/index.typ")[📜 Letteratura latina]

  ],[
    === #link("matematica/index.typ")[📐 Matematica]

  ],[
    === #link("scienze_terra/index.typ")[🌍 Scienze della Terra]
    
  ],[
    === #link("storia/index.typ")[⌛ Storia]

  ],[
    === #link("storia_arte/index.typ")[🎨 Storia dell'arte]

  ]

)

#align(center + bottom)[
#rect(
  width: 100%,
  fill: blue.lighten(95%),
  radius: 4pt,
  inset: 10pt,  
)[
  *Nota di aggiornamento:* Questa documentazione _non è ancora completa_ e viene compilata in HTML direttamente dai sorgenti `.typ` ogni volta che viene effettuato un `git push` sulla repository GitHub.
]
]