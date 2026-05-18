#import "@preview/drafting:0.2.2": *
#import "@preview/chic-hdr:0.5.0": * // Header e footer
//#import "@preview/frame-it:2.0.0": * // Frame
#import "@preview/showybox:2.0.4": * // Frame
#import "@preview/ccicons:1.0.1": * // CC icons
#import "@preview/alchemist:0.1.8": * // Alchemist formulae
#import "@preview/mannot:0.3.1": * // Annotazioni 

// Font testo principale
#let serif-fonts = (
  "TeX Gyre Pagella",
)

// Font didascalie, tabelle, header, footer
#let sans-fonts = (
  "Lato",
)

// Font titoli
#let title-fonts = (
  "Jost",
)

// Font cover
#let cover-fonts = (
  "Inter",
)

// Font math
#let math-fonts = (
  "TeX Gyre Pagella Math",
)

// Colori principali
#let main_arte = rgb("#DAA520") // goldenrod
#let main_letteratura = rgb("#FF7F50") // coral
#let main_umane = rgb("#6A5ACD") // slateblue
#let main_spettacolo = rgb("#C71585") // mediumvioletred
#let main_tecnologia = rgb("#228B22") // forestgreen
#let main_scienze = rgb("#1E90FF") // dodgerblue
#let main_storia = rgb("#B22222") // firebrick

// Copertina
#let copertina(
  materia: "", 
  colore: [],
  immagine: "",
  argomenti: "") = {
  // Sostituisci "#materia",`#colore` e `#immagine`
  v(20pt)
  align(center+top)[ 
    #text(32pt, font: cover-fonts, weight: "black", black.lighten(15%))[#text(colore)[P]iccolo \ #text(colore)[P]rontuario]  \  
    #text(22pt, font: cover-fonts)[di] \   
    #text(32pt, font: cover-fonts, weight: "black", colore)[#materia]
    #v(50pt)
  ]
  figure(
    immagine
  )
  v(50pt)
  align(center)[#text(18pt, font: sans-fonts, black.lighten(20%))[#argomenti]]
  context counter(figure.where(kind: image)).update(0) // Reset image counter
  place(
    top + left,
    dx: -71pt,
    dy: -71pt,
    rect(fill: colore, height: 30pt, width: 597pt)[ 
  ]
  )
  align(center + bottom)[dal \ #text(colore, weight: "bold", font: cover-fonts)[
      #link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[
        WikiBigino
      ]
    ]
  ]
  place(
    bottom + left,
    dx: -71pt,
    dy: 71pt,
    rect(fill: colore, height: 30pt, width: 597pt)[ 
      #v(13pt)
  ]
  )

}

// Retro
#let retro( 
  colore: blue, 
  body
) = context {
  
  // Intestazione
  show: chic.with(skip: ()) // Salta intestazione
  place(top + left, dx: -108pt, dy: -73pt,
    rect(fill: colore, height: 40pt, width: 100% + 217pt)
  )

  // Testo
  v(5em)
  body    
  v(1em)
  align(center)[\u{2660}]

  // Piè di pagina
  align(bottom + center)[\ Quest'opera è stata resa possibile grazie all'uso di #link("https://typst.app")[#text(fill: rgb("#239dad"), weight: "bold")[typst]].]
  v(5em)
  place(bottom + left, dx: -108pt, dy: 55pt,
    rect(fill: colore, height: 40pt, width: 100% + 217pt)
  )
}

#let template(
  title: none,
  authors: none,
  date: datetime.today().display("[day] [month repr:long] [year]"),
  abstract: none,
  numbering: none,
  toc: false,
  full: false,
  header: true,
  footer: true,
  header-content: none,
  footer-content: none,
  bib: none,
  colore: none,
  doc,
) = {
  // Funzioni
  let titleblock(title, authors, date) = {
    text([      
      #if title != none { [#align(center)[#text(14pt, font: title-fonts, weight: "bold", [#text(colore)[P]iccolo #text(colore)[P]rontuario di #text(fill: colore)[*#title*]])] \ \ ] }      
      #align(left)[#text(font: sans-fonts)[*Autori*: #link("mailto:persy@tuta.io")[Marco Persy] + #link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[
        WikiBigino]      
      #if date != none { [#align(left)[*Ultimo aggiornamento*: #date] \ ] }]]
      Ciao! Come gli altri volumi della collana "Piccolo Prontuario", anche questo non è il classico bigino tascabile. È il risultato di un viaggio personale attraverso lo studio, un percorso fatto di appunti, schemi e riassunti, raccolti e perfezionati nel tempo. L'obiettivo è semplice: offrire uno strumento agile, immediato e completo per affrontare con maggiore serenità l'apprendimento e il ripasso. \ \ Nonostante sia stato concepito prettamente per gli studenti, spero che possa essere utile a chiunque desideri approfondire o rinfrescare le proprie conoscenze in modo rapido ed efficace. È un concentrato di concetti chiave e nozioni essenziali, pensato per essere il tuo alleato ideale prima di una verifica, di un esame, o semplicemente per colmare una lacuna. \ \ Spero che questo lavoro possa accompagnarti nel tuo percorso di studio, rendendolo più leggero e produttivo. In bocca al lupo! \u{1F43A}
      #v(4.35in) 
      #align(center+bottom)[#text(font: sans-fonts)[Quest'opera è distribuita con licenza "Creative Commons: Attribuzione – Non commerciale – Condividi allo stesso modo 4.0 Internazionale".  \ #ccicon("cc-by-nc-sa", scale:1.5) \ \ Ti piace il progetto? #link("https://ko-fi.com/persycchiotto")[*Offrimi un caffè!*] #emoji.coffee]]

      #if toc {[#colbreak() #text(font: title-fonts)[#outline(indent: 2em, title:"Indice", depth: 2)]]}
    ])
  }
  // Intestazione
  let headerblock(title, authors, date, header-content) = if header and header-content != none {
    header-content
  } else if header {
    set text(size: 9pt, fill: colore, weight: "bold", font: sans-fonts)    
      set align(left)
      if counter(page).get().first() > 2 [
        #chic-heading-name()
      ]
    
  } else { none }
  // Piè di pagina
  let footerblock(footer-content) = if footer and footer-content != none {
    footer-content
  } else if footer {
    set text(size: 9pt, fill: colore, weight: "bold", font: sans-fonts)
    
      set align(right)
      counter(page).display("1") 
  } else { none }
  // Metadata
  if authors != none {
    set document(title: title, author: authors)
  } else {
    set document(title: title)
  }

  // Reference e link
  show ref: set text(colore, font: sans-fonts, size: 11pt)
  show link: set text(colore)

  // Footnote
  show footnote: set text(fill: colore)
  set footnote.entry(separator: line(length: 30% + 0pt, stroke: 0.5pt + colore))
  //show footnote.entry: set text(fill: red)


  set cite(style: "american-physics-society")
  show bibliography: set par(spacing: 1em)

  set enum(indent: 0.5em)
  set list(indent: 0.5em)
  show enum: set par(spacing: 1.5em)
  show list: set par(spacing: 1.5em)

  // Riferimenti formule
  set math.equation(numbering: "1", supplement: none, number-align: end)

  // Cambia punto in virgola nelle formule
  show math.equation: it => {
    show regex("\d+\.\d+"): it => {show ".": {","+h(0pt)}
        it}
    it
  }

  //Formule non in italico

  show raw.where(block: false): box.with(
    fill: luma(95%),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  show raw.where(block: true): block.with(
    fill: luma(95%),
    inset: 5pt,
    radius: 4pt,
    width: 100%,
  )

  // Font testo principale,
  set text( 
  font: serif-fonts,
  size: 12pt, 
  lang: "it",
  fill: black.lighten(10%)
  )

  // Font titolo liv. 1
  show heading.where( level: 1 ): set text(
  font: title-fonts,
  size: 17pt,
  weight: "bold",
  style: "normal",)

  // Font titolo liv. 2
  show heading.where( level: 2 ): set text(
  font: title-fonts,
  size: 14pt,
  weight: "bold",
  style: "normal",)

  // Font titolo liv. 3
  show heading.where( level: 3 ): set text(
  font: title-fonts,
  size: 13pt,
  weight: "bold",
  style: "normal",)

  // Formule matematiche nel testo principale
  show math.equation: set text(size: 12pt, font: math-fonts)
  
  // Formule in footnote, non funziona
  show footnote: it => {
  show math.equation: set text(size: 10pt) 
  it
}

  // Didascalie
  show figure.caption: set text(size: 10pt, font: sans-fonts) 
  show figure.caption: it => {
  text(size: 10pt, font: sans-fonts, colore)[#it.supplement #it.counter.display(it.numbering)]
  //it.separator
  [ ]
  it.body
  }

  // Paragrafi
  set par(
  justify: true,
  leading: 0.5em, // Interlinea
  spacing: 0.75em, // Spazio fra paragrafi
  first-line-indent: 0.5em // Rientro paragrafo
  )

  // Citazioni
  set quote(block: true, quotes: true)

  set page(
    paper: "a4",
    margin: (
      left: 1.5in,
      right: 1.5in,
      top: 1in,
      bottom: 0.75in,      
    ),
    header: context { headerblock(title, authors, date, header-content) },
    footer: context { footerblock(footer-content) },
    footer-descent: 55%,

  )

  // Frontespizio
  titleblock(title, authors, date)
  v(1.5em)

// Ogni capitolo e sottocapitolo inizia in una nuova pagina
show heading.where(level: 1): it => { colbreak(weak: true); it }
//show heading.where(level: 2): it => { pagebreak(weak: true); it }

// Titoli non seguono sillabazione
show heading: set text(hyphenate: false)

// Sub e super
set sub(
  typographic: false, // Force synthesized glyphs to use these settings
  baseline: 0.2em,   // Downward shift (adjust as needed)
)
set super(
  typographic: false, // Force synthesized glyphs to use these settings
  baseline: -0.45em,   // Downward shift (adjust as needed)
)

// Rimuovi numero dal capitolo o sezioni aggiungendo <senza_numero>
show selector(<senza_numero>): set heading(numbering: none)

// Tabelle
show figure: set block(breakable: true)
show table.cell: set text(size: 9pt, font: sans-fonts)
show table.cell.where(y: 0): set text(weight: "bold", fill: white, font: sans-fonts)
show table.cell.where(x: 0): set text(weight: "bold")

// Highlight
set highlight(radius: 1pt, extent: .2em, fill: colore.lighten(75%))

  doc

}

// Evidenzia testo; uso: #evidenzia[testo]
#let evidenzia(color: silver, body) = {
  showybox(
    frame: (
      border-color: color.darken(10%),      
      body-color: color.lighten(85%),
      radius: 0pt,      
      thickness: (left: 2pt),
    ),
    body-style: (    
    color: color.darken(70%)
    ),    
    {
      set text(font: sans-fonts, size: 10pt, style: "italic")
      body
    }
  )
}

// #definizione(title: "Definizione", label: <definizione>)[Contenuto]
#let definizione(title: none, color: main_scienze, label: none, ..sections) = {
  let def-numbering(def-num) = context {
    let cap = counter(heading).get()
    let cap-num = if cap.len() > 0 { cap.first() } else { 0 }
    [#cap-num.#def-num]
  }
  let box-content = {
    let args = (
      frame: (
        border-color: color.lighten(20%),
        title-color: color.lighten(80%),
        body-color: color.lighten(95%),
        radius: (top-right: 5pt, rest: 0pt),      
        thickness: (left: 1pt),
      ),
      title-style: (
        color: color.darken(40%),
        weight: "bold",
        sep-thickness: 0pt,
      ),
      body-style: (color: color.darken(50%)),    
      sep: (
        thickness: 0.5pt,
        dash: "dashed",
        color: color.lighten(20%),
      ),
      breakable: true,
    )

    let display-title = context {      
      let n = counter(figure.where(kind: "definizione")).display(def-numbering)
      let t = if title != none and title != "" [: #title] else []
      text(size: 0.8em, weight: "bold", font: sans-fonts)[Definizione #text(fill: color.darken(20%))[#n]#t]
    }

    args.insert("title", display-title)
    showybox(..args, ..sections.pos())
  }

  [
    #figure(
      box-content,
      kind: "definizione",
      supplement: none, 
      numbering: def-numbering,
      caption: none,
    )#label 
  ]
}

// Reset del counter è nel documento principale

// Separatore per dimostrazioni
#let dimostrazione(color: main_scienze) = {
  block(
    width: 100%,
    height: 1em, 
    //fill: color.lighten(90%),
    outset: (x: 1em), 
    inset: .0em,
    //stroke: (left: 0.99pt + color.lighten(20%)), 
    // Allineamento del contenuto all'interno del box
    align(left + bottom)[
      #text(size: 0.8em, weight: "bold", font: sans-fonts)[Dimostrazione]
    ]
  )
}

#let esempio(title: "Esempio", color: silver, ..sections) = {
  
  let s = sections.pos()
  let n-sections = s.len()
  
  if n-sections == 0 { return }

  // Incrementiamo il counter per ogni sezione passata  
  for _ in range(n-sections) {
    counter("esempio").step()
  }

  showybox(
    frame: (
      border-color: color.darken(40%),
      title-color: color.lighten(65%),
      body-color: color.lighten(90%),
      radius: (top-right: 5pt, rest: 0pt),       
      thickness: (left: 1pt),
    ),
    title-style: (
      color: color.darken(70%),
      weight: "bold",
      sep-thickness: 0pt, 
      size: 0.8em           
    ),
    body-style: (    
      color: color.darken(70%),    
    ),
    sep: (
      thickness: 0.5pt,
      dash: "dashed",
      color: color.darken(20%),
    ),
    breakable: true,
    
    // Titolo dinamico con la sequenza di numeri
    title: context {
      let last-val = counter("esempio").at(here()).first()
      let first-val = last-val - n-sections + 1
      
      // Crea la stringa "12, 13, 14"
      let numbers = range(first-val, last-val + 1).map(str).join(", ")
      
      text(size: 0.8em, font: sans-fonts)[#title #numbers]
    },
    
    // Spacchettiamo i segmenti del corpo
    ..s
  )
}

// Inserisci avviso \TODO per segnalare elementi mancanti. Uso: #\TODO[Immagine da inserire]
#let TODO(content) = {
  align(center)[
  #rect(fill: yellow.lighten(50%))[#content]
  ]  }

// Note; #note(bottom)[Nota a fondo pagina]; #note(top)[Nota a in alto alla pagina]
#let note(where, body) = place(
  left + where,
  float: true,
  clearance: 6pt,
  rect(
    width: 100%, 
    fill: black.lighten(95%), 
    radius: 3pt, 
    inset: 1em,        
    body
    ),
)

// Note alternativa; testo divisibile
#let notebr(body) = block(
  width: 100%,
  fill: black.lighten(95%),
  radius: 3pt,
  inset: 1em,
  breakable: true,
  body
)

// Aliases
// Highlight
#let hl(body) = {
  highlight(body)
}

// Spazio orizzontale/verticale zero; usando per comprimere formule
#let sh0 = h(0em)
#let sv0 = v(0em)

// Definizione
#let def = definizione