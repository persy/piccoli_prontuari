// Layout pagine sito
#let progetto(
  titolo: "",
  autore: "",
  materia: none,
  body
) = {
  
  // Pagina e margini
  set page(
    paper: "a4",
    margin: (x: 2.5cm, top: 3cm, bottom: 2.5cm),
    
    // Intestazione
    header: context {
      if titolo != "Il Mio Archivio Didattico" {
        text(9pt, fill: gray.darken(20%))[
          #if materia != none [ #materia ] #h(1fr) #titolo
        ]
        v(-4pt)
        line(length: 100%, stroke: 0.5pt + gray.lighten(50%))
      }
    },
    
    // Piè di pagina con il numero di pagina 
    footer: context {
      let page_number = counter(page).get().first()
      text(9pt, fill: gray)[
        #h(1fr) Pagina #page_number
      ]
    }
  )

  // Font
  set text(
    font: "Liberation Sans", 
    size: 11pt,
    fill: rgb("1a1a1a"), 
    lang: "it" 
  )
  
  set par(justify: true, leading: 0.7em)

  // Stile dei link
  show link: set text(fill: rgb("0066cc"))

  // Blocco del titolo Principale
  align(center)[
    #block(width: 100%)[
      #text(size: 26pt, weight: "bold", fill: rgb("1c3d5a"))[#titolo]
      
      #if autore != "" {
        v(8pt)
        text(size: 12pt, style: "italic", fill: gray.darken(40%))[di #autore]
      }
      #v(20pt) // Spazio sotto il blocco del titolo
    ]
  ]

  // Titoli
  show heading: it => {
    set text(weight: "bold", fill: rgb("1c3d5a"))
    let size = if it.level == 1 { 22pt } else if it.level == 2 { 16pt } else { 13pt }
    
    // Nelle nuove versioni si usa 'above' e 'below' dentro la funzione block()
    block(above: 1.5em, below: 1em)[
      #text(size: size)[#it.body]
    ]
  }

  body
}