#import "@preview/chic-hdr:0.5.0": * // Intestazioni, piè pagina chic
#import "config.typ": *

// =============================================================================
// 3. SETUP GLOBALE (Matematica, Liste, Intestazioni, Layout)
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
  header-content: none,
  footer-content: none,
  bib: none,
  accent: none,
  doc,
) = context {
  let accent = accent_color.get()
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
  
  // Intestazione
  let headerblock(title, authors, date, header-content) = if header and header-content != none {
    header-content
  } else if header {
    set text(size: 9pt, fill: accent, weight: "bold", font: sans-fonts)    
      set align(left)
      if counter(page).get().first() > 2 [
        #chic-heading-name()
      ]
  } else { none }
  
  // Piè pagina
  let footerblock(footer-content) = if footer and footer-content != none {
    footer-content
  } else if footer {
    set text(size: 9pt, fill: accent, weight: "bold", font: sans-fonts)
      set align(right)
      counter(page).display("1") 
  } else { none }
  
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
    paper: "a4",
    margin: (left: 1.5in, right: 1.5in, top: 1in, bottom: 0.75in),
    header: context { headerblock(title, authors, date, header-content) },
    footer: context { footerblock(footer-content) },
    footer-descent: 55%,
  )

  // Testo principale
  set text( 
    font: serif-fonts,
    size: 12pt, 
    lang: "it",
    fill: black.lighten(10%)
  )

  // Citazioni, quote, note a piè di pagina, liste
  show ref: set text(accent, font: sans-fonts, size: 11pt)
  show link: set text(accent)

  show footnote: set text(fill: accent)
  set footnote.entry(separator: line(length: 30% + 0pt, stroke: 0.5pt + accent))

  set quote(block: true, quotes: true)
  set cite(style: "american-physics-society")
  show bibliography: set par(spacing: 1em)

  set enum(indent: 0.5em)
  set list(indent: 0.5em)
  show enum: set par(spacing: 1.5em)
  show list: set par(spacing: 1.5em)

  // Math
  //show math.equation: set text(size: 11pt, font: math-fonts)
  
  // Punto diventa virgola nelle equazioni
  //show math.equation: set text(font: sans-fonts) 
  set math.equation(numbering: (..n) => {
  text(font: sans-fonts, numbering("1", ..n))
  })
    
  set math.equation(
    numbering: (..nums) => text(font: sans-fonts)[#numbering("1", ..nums)],
    supplement: none, 
    number-align: end
  )
  
  // Il tuo codice per sostituire il punto con la virgola nei decimali
  show math.equation: it => {
    show regex("\d+\.\d+"): it => {
      show ".": "," + h(0pt)
      it
    }
    it
  }
  show footnote: it => {
    show math.equation: set text(size: 10pt) 
    it
  }
  

/*   show raw.where(block: false): box.with(
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
  ) */

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

  show figure.caption: set text(size: 10pt, font: sans-fonts) 
  show figure.caption: it => {
    text(size: 10pt, font: sans-fonts, accent)[#it.supplement #it.counter.display(it.numbering)]
    [ ]
    it.body
  }

  // Evidenzia
  set highlight(radius: 1pt, extent: .2em, fill: accent.lighten(75%))

  doc
}