#import "@preview/drafting:0.2.2": *
#import "@preview/chic-hdr:0.5.0": * 
#import "@preview/showybox:2.0.4": * 
#import "@preview/alchemist:0.1.8": * 
#import "@preview/mannot:0.3.1": * 
#import "config.typ": *

// ==========================================
// BLOCCHI GRAFICI DINAMICI TRAMITE CONTEXT
// ==========================================

#let definizione(title: none, color: none, label: none, ..sections) = context {
  let actual-color = if color != none { color } else { main_color.get() }
  let def-numbering(def-num) = context {
    let cap = counter(heading).get()
    let cap-num = if cap.len() > 0 { cap.first() } else { 0 }
    [#cap-num.#def-num]
  }
  let box-content = {
    let args = (
      frame: (border-color: actual-color.lighten(20%), title-color: actual-color.lighten(80%), body-color: actual-color.lighten(95%), radius: (top-right: 5pt, rest: 0pt), thickness: (left: 1pt)),
      title-style: (color: actual-color.darken(40%), weight: "bold", sep-thickness: 0pt),
      body-style: (color: actual-color.darken(50%)),    
      sep: (thickness: 0.5pt, dash: "dashed", color: actual-color.lighten(20%)),
      breakable: true,
    )
    let display-title = {      
      let n = counter(figure.where(kind: "definizione")).display(def-numbering)
      let t = if title != none and title != "" [: #title] else []
      text(size: 0.8em, weight: "bold", font: sans-fonts)[Definizione #text(fill: actual-color.darken(20%))[#n]#t]
    }
    args.insert("title", display-title)
    showybox(..args, ..sections.pos())
  }
  [#figure(box-content, kind: "definizione", supplement: none, numbering: def-numbering, caption: none)#label]
}

#let dimostrazione(color: none) = context {
  let actual-color = if color != none { color } else { main_color.get() }
  block(
    width: 100%, height: 1em, outset: (x: 1em), inset: .0em,
    align(left + bottom)[#text(size: 0.8em, weight: "bold", font: sans-fonts, fill: actual-color.darken(20%))[Dimostrazione]]
  )
}

#let esempio(title: "Esempio", color: silver, ..sections) = context {
  let actual-color = if color != none { color } else { main_color.get() }
  let s = sections.pos()
  let n-sections = s.len()
  if n-sections == 0 { return }
  
  let steps = range(n-sections).map(idx => counter("esempio").step()).join()

  steps + showybox(
    frame: (border-color: actual-color.darken(40%), title-color: actual-color.lighten(65%), body-color: actual-color.lighten(90%), radius: (top-right: 5pt, rest: 0pt), thickness: (left: 1pt)),
    title-style: (color: actual-color.darken(70%), weight: "bold", sep-thickness: 0pt, size: 0.8em),
    body-style: (color: actual-color.darken(70%)),
    sep: (thickness: 0.5pt, dash: "dashed", color: actual-color.darken(20%)),
    breakable: true,
    title: {
      let last-val = counter("esempio").at(here()).first()
      let first-val = last-val - n-sections + 1
      let numbers = range(first-val, last-val + 1).map(str).join(", ")
      text(size: 0.8em, font: sans-fonts)[#title #numbers]
    },
    ..s
  )
}

// ==========================================
// STRUTTURA COPERTINA E RETRO
// ==========================================

#let copertina(
  subject: "", 
  color: black,
  image: "",
  arguments: "") = {
  v(20pt)
  align(center+top)[ 
    #text(32pt, font: cover-fonts, weight: "black", black.lighten(15%))[#text(color)[P]iccolo \ #text(color)[P]rontuario]  \  
    #text(22pt, font: cover-fonts)[di] \   
    #text(32pt, font: cover-fonts, weight: "black", color)[#subject]
    #v(50pt)
  ]
  figure(
    image
  )
  v(50pt)
  align(center)[#text(18pt, font: sans-fonts, black.lighten(20%))[#arguments]]
  context counter(figure.where(kind: image)).update(0) 
  place(
    top + left,
    dx: -71pt,
    dy: -71pt,
    rect(fill: color, height: 30pt, width: 597pt)[ ]
  )
  align(center + bottom)[dal \ #text(color, weight: "bold", font: cover-fonts)[
      #link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[
        WikiBigino
      ]
    ]
  ]
  place(
    bottom + left,
    dx: -71pt,
    dy: 71pt,
    rect(fill: color, height: 30pt, width: 597pt)[ 
      #v(13pt)
    ]
  )
}

#let retro( 
  color: blue, 
  body
) = context {
  show: chic.with(skip: ()) 
  place(top + left, dx: -108pt, dy: -73pt,
    rect(fill: color, height: 40pt, width: 100% + 217pt)
  )

  v(5em)
  body    
  v(1em)
  align(center)[\u{2660}]

  align(bottom + center)[\ Quest'opera è stata resa possibile grazie all'uso di #link("https://typst.app")[#text(fill: rgb("#239dad"), weight: "bold")[typst]].]
  v(5em)
  place(bottom + left, dx: -108pt, dy: 55pt,
    rect(fill: color, height: 40pt, width: 100% + 217pt)
  )
}

// ==========================================
// FUNZIONE TEMPLATE PRINCIPALE
// ==========================================

#let template(
  title: none,
  authors: none,
  date: datetime.today().display("[day] [month repr:long] [year]"),
  abstract: none,
  numbering: none,
  toc: true,
  full: false,
  header: true,
  footer: true,
  header-content: none,
  footer-content: none,
  bib: none,
  color: none,
  doc,
) = {
  let titleblock(title, authors, date) = {
    text([      
      #if title != none { [#align(center)[#text(14pt, font: title-fonts, weight: "bold", [#text(color)[P]iccolo #text(color)[P]rontuario di #text(fill: color)[*#title*]])] \ \ ] }      
      #align(left)[#text(font: sans-fonts)[*Autori*: #link("mailto:persy@tuta.io")[Marco Persy] + #link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[
        WikiBigino]      
      #if date != none { [#align(left)[*Ultimo aggiornamento*: #date] \ ] }]]
      
      // CARICAMENTO DEL FILE ESTERNO
      #include "prefazione.typ"
      
      #v(4.35in) 
      
      #include "licenza.typ"

      #if toc {[#colbreak() #text(font: title-fonts)[#outline(indent: 2em, title:"Indice", depth: 2)]]}
    ])
  }

  
  // Intestazione
  let headerblock(title, authors, date, header-content) = if header and header-content != none {
    header-content
  } else if header {
    set text(size: 9pt, fill: color, weight: "bold", font: sans-fonts)    
      set align(left)
      if counter(page).get().first() > 2 [
        #chic-heading-name()
      ]
  } else { none }
  
  // Piè pagina
  let footerblock(footer-content) = if footer and footer-content != none {
    footer-content
  } else if footer {
    set text(size: 9pt, fill: color, weight: "bold", font: sans-fonts)
      set align(right)
      counter(page).display("1") 
  } else { none }
  
  set document(title: title, author: authors) if authors != none
  set document(title: title) if authors == none

  show ref: set text(color, font: sans-fonts, size: 11pt)
  show link: set text(color)

  show footnote: set text(fill: color)
  set footnote.entry(separator: line(length: 30% + 0pt, stroke: 0.5pt + color))

  set cite(style: "american-physics-society")
  show bibliography: set par(spacing: 1em)

  set enum(indent: 0.5em)
  set list(indent: 0.5em)
  show enum: set par(spacing: 1.5em)
  show list: set par(spacing: 1.5em)

  set math.equation(numbering: "1", supplement: none, number-align: end)

  show math.equation: it => {
    show regex("\d+\.\d+"): it => {show ".": {","+h(0pt)}
        it}
    it
  }

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

  set text( 
    font: serif-fonts,
    size: 12pt, 
    lang: "it",
    fill: black.lighten(10%)
  )

  show heading.where( level: 1 ): set text(font: title-fonts, size: 17pt, weight: "bold", style: "normal")
  show heading.where( level: 2 ): set text(font: title-fonts, size: 14pt, weight: "bold", style: "normal")
  show heading.where( level: 3 ): set text(font: title-fonts, size: 13pt, weight: "bold", style: "normal")
  
  show math.equation: set text(size: 12pt, font: math-fonts)
  
  show footnote: it => {
    show math.equation: set text(size: 10pt) 
    it
  }

  show figure.caption: set text(size: 10pt, font: sans-fonts) 
  show figure.caption: it => {
    text(size: 10pt, font: sans-fonts, color)[#it.supplement #it.counter.display(it.numbering)]
    [ ]
    it.body
  }

  set par(
    justify: true,
    leading: 0.5em, 
    spacing: 0.75em, 
    first-line-indent: 0.5em 
  )

  set quote(block: true, quotes: true)

  set page(
    paper: "a4",
    margin: (left: 1.5in, right: 1.5in, top: 1in, bottom: 0.75in),
    header: context { headerblock(title, authors, date, header-content) },
    footer: context { footerblock(footer-content) },
    footer-descent: 55%,
  )
  // Numero titoli
  set heading(numbering: (..nums) => {
  let num-string = nums.pos().map(str).join(".") + "."
  text(fill: color, weight: "bold", num-string)
  })
  
  titleblock(title, authors, date)
  v(1.5em)

  show heading.where(level: 1): it => { colbreak(weak: true); it }
  show heading: set text(hyphenate: false)

  set sub(typographic: false, baseline: 0.2em)
  set super(typographic: false, baseline: -0.45em)

  show selector(<senza_numero>): set heading(numbering: none)

  show figure: set block(breakable: true)
  show table.cell: set text(size: 9pt, font: sans-fonts)
  show table.cell.where(y: 0): set text(weight: "bold", fill: white, font: sans-fonts)
  show table.cell.where(x: 0): set text(weight: "bold")

  set highlight(radius: 1pt, extent: .2em, fill: color.lighten(75%))

  doc
}