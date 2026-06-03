#import "@preview/marginalia:0.3.1" as marginalia: note, notefigure, wideblock 
#import "config.typ": *
// =============================================================================
// TEMPLATE PRINCIPALE
// =============================================================================

#let template(
  title: none,
  authors: none,
  date: datetime.today().display("[day] [month repr:long] [year]"),
  abstract: none,
  //numbering: true,
  toc: true,
  full: false,
  header: true,
  footer: true,
  bib: none,
  accent: none,
  doc,
) = context {
  let accent = accent_color.get()

  show: marginalia.setup.with(
    outer: (
      far: 1.5cm,    
      width: 4.5cm,  
      sep: 0.5cm,    
    ),
    book: true,
  )
  show figure.where(kind: "marginalia"): set text(size: 8.5pt, spacing: 0.5em)

  let titleblock(title, authors, date) = {
    text([      
      #if title != none { [#align(center)[#text(14pt, font: title-fonts, weight: "bold", [#text(accent)[P]iccolo #text(accent)[P]rontuario di #text(fill: accent)[*#title*]])] \ \ ] }      
      #align(left)[#text(font: sans-fonts)[*Autori*: #link("mailto:persy@tuta.io")[Marco Persy] + #link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[
        WikiBigino]      
      #if date != none { [#align(left)[*Ultimo aggiornamento*: #date] \ ] }]]
      
      // Prefazione e licenza
      #include "prefazione.typ"
      #v(4.35in) 
      #include "licenza.typ"

      // Indice
      #if toc {[#colbreak() #text(font: title-fonts)[#outline(indent: 2em, title:"Indice", depth: 2)]]}
    ])
  }
  
  set document(title: title, author: authors) if authors != none
  set document(title: title) if authors == none

  // Paragrafi
  set par(
    justify: true,
    leading: 0.5em, 
    spacing: 0.75em, 
    first-line-indent: 0.5em 
  )

  // Layout pagina
  set page(
  width: 19cm, 
  height: 26cm,
  margin: (
    top: 1.5cm,      
    bottom: 1.5cm,
    inside: 1.5cm,  
    outside: 6.5cm,  
  ),
  // Header 
    header: context {
      let capitoli = query(selector(heading.where(level: 1)).before(here()))
      if capitoli.len() > 0 {
        let cap = capitoli.last()
        let num-capitolo = counter(heading).at(cap.location()).first()
        let titolo-completo = [#num-capitolo. #cap.body]
        let i = counter(page).get().first()
        let grigio = rgb("#555555")
        
        let testo-allineato = if calc.odd(i) {
          align(left, text(font: sans-fonts, fill: black.lighten(30%), size: 8.5pt, style: "italic")[#titolo-completo])
        } else {
          align(right, text(font: sans-fonts, fill: black.lighten(30%), size: 8.5pt, style: "italic")[#titolo-completo])
        }
        
        let posizione-box = if calc.odd(i) { left } else { right }
        
        align(posizione-box, box(width: 11.0cm)[
          #testo-allineato
          #v(-5pt)
          #line(length: 100%, stroke: 0.5pt + accent)
        ])
      }
    },

    // Footer 
    footer: context {
      let i = counter(page).get().first()
      if calc.odd(i) { 
        align(left, text(font: sans-fonts, fill: accent, size: 9pt, weight: "bold")[#i]) 
        } else { 
        align(right, text(font: sans-fonts, fill: accent, size: 9pt, weight: "bold")[#i]) }
    }
  
  )

  // Testo principale
  set text( 
    font: serif-fonts,
    size: 12pt, 
    lang: "it",
    fill: black.lighten(10%)
  )

  // Citazioni, quote, note a piè di pagina, liste
  show ref: set text(accent, font: sans-fonts, size: 10pt)
  show link: set text(accent)

  show footnote: set text(fill: accent)
  set footnote.entry(separator: line(length: 30% + 0pt, stroke: 0.5pt + accent))

  set quote(block: true, quotes: true)
  set cite(style: "american-physics-society")
  show bibliography: set par(spacing: 1em)

  set enum(indent: 0.5em)
  set list(indent: 0.5em)

  // Math
  show math.equation: set text(size: 12pt, font: math-fonts)
  
  // Punto diventa virgola nelle equazioni
  set math.equation(numbering: (..n) => {
  text(font: sans-fonts, numbering("1", ..n))
  })
    
  set math.equation(
    numbering: (..nums) => text(font: sans-fonts)[#numbering("1", ..nums)],
    supplement: none, 
    number-align: end
  )
  
  // Punto con la virgola nei decimali
  show math.equation: it => {
    show regex("\d+\.\d+"): it => {
      show ".": "," + h(0pt)
      it
    }
    it
  }
  

  //Titoli
  show heading.where( level: 1 ): set text(font: title-fonts, size: 17pt, weight: "bold", style: "normal")
  show heading.where( level: 2 ): set text(font: title-fonts, size: 15pt, weight: "bold", style: "normal")
  show heading.where( level: 3 ): set text(font: title-fonts, size: 13pt, weight: "bold", style: "normal")
  show heading.where( level: 4 ): set text(font: title-fonts, size: 11pt, weight: "bold", style: "normal")
  set heading(numbering: (..nums) => {
  let num-string = nums.pos().map(str).join(".")
  text(fill: accent, weight: "bold", num-string)
  })
  show heading.where(level: 1): it => { colbreak(weak: true); it }
  show heading: set text(hyphenate: false)
  show selector(<senza_numero>): set heading(numbering: none)

  // Frontespizio
  titleblock(title, authors, date)
  v(1.5em)
  
  // Pedici e apici
  set sub(typographic: false, baseline: 0.2em)
  set super(typographic: false, baseline: -0.45em)

  // Tabelle e figure
  show figure: set block(breakable: true)
  show table.cell: set text(size: 9pt, font: sans-fonts)
  show table.cell.where(y: 0): set text(weight: "bold", fill: white, font: sans-fonts)
  show table.cell.where(x: 0): set text(weight: "bold")

  show figure.caption: set text(size: 9pt, font: sans-fonts) 
  show figure.caption: it => {
    text(size: 10pt, font: sans-fonts, accent)[#it.supplement #it.counter.display(it.numbering)]
    [ ]
    it.body
  }

  // Evidenzia
  set highlight(radius: 1pt, extent: .2em, fill: accent.lighten(75%))

  doc
  
}