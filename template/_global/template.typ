#import "@preview/marginalia:0.3.1" as marginalia
#import "config.typ": *

// =============================================================================
// STATO PER LA MODALITÀ TUFTE (attivabile/disattivabile)
// =============================================================================

#let tufte-layout = state("tufte-layout", false)

// Wrapper: usano marginalia se tufte è attivo, altrimenti fallback normali
#let note(..args) = context {
  if tufte-layout.get() { marginalia.note(..args) } else { footnote(args.pos().join()) }
}

#let notefigure(..args) = context {
  if tufte-layout.get() {
    marginalia.notefigure(..args)
  } else {
    figure(
      args.pos().join(),
      caption: args.named().at("caption", default: none)
    )
  }
}

#let wideblock(content) = context {
  if tufte-layout.get() { marginalia.wideblock(content) } else { block(width: 100%, content) }
}

// =============================================================================
// SETUP GLOBALE (Matematica, Liste, Intestazioni, Layout)
// =============================================================================

#let template(
  title: none,
  authors: none,
  date: datetime.today().display("[day] [month repr:long] [year]"),
  abstract: none,
  toc: true,
  full: false,
  header: true,
  footer: true,
  header-content: none,
  footer-content: none,
  bib: none,
  accent: none,
  tufte: false,
  doc,
) = context {
  let accent = accent_color.get()
  tufte-layout.update(tufte)

  let titleblock(title, authors, date) = {
    text([
      #if title != none { [#align(center)[#text(14pt, font: title-fonts, weight: "black", [Piccolo Prontuario di #text(fill: accent)[*#title*]])] \ \ ] }
      #align(left)[#text(font: sans-fonts)[*Autori*: #link("mailto:marco.persy@gmail.com")[#text(fill: accent)[Marco Persy]] + #link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[#text(fill: accent)[WikiBigino]]
      #if date != none { [#align(left)[*Ultimo aggiornamento*: #date] \ ] }]]

      // Prefazione e licenza
      #include "prefazione.typ"
      #v(3cm)
      #include "licenza.typ"

      // Indice
      #if toc {[#colbreak() #text(font: title-fonts)[#outline(indent: 2em, title:"Indice", depth: 2)]]}
    ])
  }

  // Recupera il titolo del capitolo corrente (sostituisce chic-heading-name())
  let capitolo-corrente() = {
    let capitoli = query(selector(heading.where(level: 1)).before(here()))
    if capitoli.len() > 0 {
      let cap = capitoli.last()
      let num-capitolo = counter(heading).at(cap.location()).first()
      [#num-capitolo. #cap.body]
    } else { none }
  }

  // Intestazione
  let headerblock(title, authors, date, header-content) = if header and header-content != none {
    header-content
  } else if header {
    let titolo-completo = capitolo-corrente()
    if titolo-completo != none and counter(page).get().first() > 2 {
      let i = counter(page).get().first()
      set text(size: 9pt, fill: accent, weight: "bold", font: sans-fonts)
      if tufte {
        let pos = if calc.odd(i) { left } else { right }
        align(pos, box(width: 11cm)[
          #align(pos, text(style: "italic")[#titolo-completo])
          #v(-5pt)
          #line(length: 100%, stroke: 0.5pt + accent)
        ])
      } else {
        align(left)[#titolo-completo]
      }
    }
  } else { none }

  // Piè pagina
  let footerblock(footer-content) = if footer and footer-content != none {
    footer-content
  } else if footer {
    let i = counter(page).get().first()
    set text(size: 9pt, fill: accent, weight: "bold", font: sans-fonts)
    let pos = if tufte { if calc.odd(i) { left } else { right } } else { right }
    align(pos, counter(page).display("1"))
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

  // Layout pagina (margine provvisorio: frontespizio/prefazione/indice sempre fullwidth)
  set page(
    paper: "iso-b5",
    margin: 18mm,
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

  // Titoli
  show heading.where( level: 1 ): set text(font: title-fonts, size: 18pt, weight: 900)
  show heading.where( level: 2 ): set text(font: title-fonts, size: 15pt, weight: 700)
  show heading.where( level: 3 ): set text(font: title-fonts, size: 13pt, weight: 500)
  show heading.where( level: 4 ): set text(font: title-fonts, size: 11pt, weight: 400)
  set heading(numbering: (..nums) => {
  let num-string = nums.pos().map(str).join(".")
  text(fill: accent, num-string)
  })
  show heading.where(level: 1): it => { colbreak(weak: true); it }
  show heading: set text(hyphenate: false)
  show selector(<senza_numero>): set heading(numbering: none)

  // Indice
  show outline.entry.where(level: 1): it => {
    set text(weight: "black")
    it
  }
  show outline.entry.where(level: 2): it => {
    set text(weight: "regular")
    it
  }
  set outline.entry(fill: line(length: 100%, stroke: 0.7pt + accent.lighten(50%)))

  // Frontespizio, prefazione, indice: sempre fullwidth (margine 18mm già impostato sopra)
  titleblock(title, authors, date)
  v(1.5em)

  // Setup marginalia: attivato solo da qui in poi, così frontespizio/prefazione/indice restano fullwidth
  show: it => if tufte {
    show: marginalia.setup.with(
      inner: (far: 1cm, width: 0mm, sep: 0mm),
      outer: (far: 0.3cm, width: 4.2cm, sep: 0.4cm),
      book: true,
    )
    show figure.where(kind: "marginalia"): set text(size: 8.5pt, spacing: 0.5em)
    it
  } else {
    it
  }

  // Pedici e apici
/*   set sub(typographic: false, baseline: 0.2em)
  set super(typographic: false, baseline: -0.45em) */

  // Tabelle e figure
  show figure: set block(breakable: true)
  show table.cell: set text(size: 9pt, font: sans-fonts)
  show table.cell.where(y: 0): set text(weight: "bold", fill: white, font: sans-fonts)
  show table.cell.where(x: 0): set text(weight: "bold")

  // Didascalie
  show figure.caption: set text(size: 10pt, font: sans-fonts)
  show figure.caption: it => {
    text(size: 10pt, font: sans-fonts, accent)[#it.supplement #it.counter.display(it.numbering)]
    [ ]
    it.body
  }

  // Citazioni, quote, note a piè di pagina, liste

  // Disattiva crossreference verso capitoli esclusi quando si compila un solo capitolo
  show ref: it => {
    if standalone and query(it.target).len() == 0 {
      text(fill: red, weight: "bold")[??]
    } else {
      it
    }
  }
  show ref: set text(accent, font: sans-fonts, size: 11pt)
  show link: set text(accent)

  show footnote: set text(fill: accent)
  set footnote.entry(separator: line(length: 30% + 0pt, stroke: 0.5pt + accent))

  set quote(block: true, quotes: true)
  set cite(style: "american-physics-society")
  show bibliography: set par(spacing: 1em)

  set enum(indent: 0.5em)
  set list(indent: 0.5em)
/*show enum: set par(spacing: 1.5em)
  show list: set par(spacing: 1.5em) */

  // Math
  show math.equation: set text(size: 12pt, font: math-fonts)

  set math.equation(
    numbering: (..nums) => text(size: 11pt, font: sans-fonts)[#numbering("1", ..nums)],
    supplement: none,
    number-align: end
  )

  // Punto diventa virgola nelle equazioni
  show math.equation: it => {
    show regex("\d+\.\d+"): it => {
      show ".": "," + h(0pt)
      it
    }
    it
  }

  // Evidenzia
  set highlight(radius: 1pt, extent: .2em, fill: accent.lighten(75%))

  doc
}
