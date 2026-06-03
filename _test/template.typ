#import "@preview/marginalia:0.3.1" as marginalia
#import "config.typ": *

// Stato per la gestione del layout (Tufte vs Pagina Intera)
#let tufte-layout = state("tufte-layout", true)

// --- FUNZIONI CONDIZIONALI (Tufte / Fallback-Footnote) ---

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

// --- TEMPLATE PRINCIPALE ---

#let template(
  title: none,
  date: datetime.today().display("[day] [month repr:long] [year]"),
  header: true,
  footer: true,
  bib: none,
  accent: none,
  tufte: true,
  doc,
) = context {
  let accent = accent_color.get()
  tufte-layout.update(tufte)

  // Configurazione Documento e Testo
  set document(title: title) 
  set text(font: serif-fonts, size: 12pt, lang: "it", fill: black.lighten(10%))
  set par(justify: true, leading: 0.5em, spacing: 0.75em, first-line-indent: 0.5em)

  // Layout di Pagina e Margini
  set page(
    width: 19cm, 
    height: 26cm,
    margin: if tufte {
      (top: 1.5cm, bottom: 1.5cm, inside: 1.5cm, outside: 6.5cm)
    } else {
      (top: 1.5cm, bottom: 1.5cm, left: 2.5cm, right: 2.5cm)
    },

    header: context {
      let capitoli = query(selector(heading.where(level: 1)).before(here()))
      if capitoli.len() > 0 {
        let cap = capitoli.last()
        let num-capitolo = counter(heading).at(cap.location()).first()
        let titolo-completo = [#num-capitolo. #cap.body]
        let i = counter(page).get().first()
        
        let testo-allineato = if tufte {
          if calc.odd(i) {
            align(left, text(font: sans-fonts, fill: black.lighten(30%), size: 8.5pt, style: "italic")[#titolo-completo])
          } else {
            align(right, text(font: sans-fonts, fill: black.lighten(30%), size: 8.5pt, style: "italic")[#titolo-completo])
          }
        } else {
          align(center, text(font: sans-fonts, fill: black.lighten(30%), size: 8.5pt, style: "italic")[#titolo-completo])
        }
        
        let larghezza-box = if tufte { 11.0cm } else { 100% }
        let posizione-box = if tufte { if calc.odd(i) { left } else { right } } else { center }
        
        align(posizione-box, box(width: larghezza-box)[
          #testo-allineato
          #v(-5pt)
          #line(length: 100%, stroke: 0.5pt + accent)
        ])
      }
    },

    footer: context {
      let i = counter(page).get().first()
      let pos = if tufte { if calc.odd(i) { left } else { right } } else { center }
      align(pos, text(font: sans-fonts, fill: accent, size: 9pt, weight: "bold")[#i])
    }
  )

  // Setup del Pacchetto Marginalia
  if tufte {
    show: marginalia.setup.with(outer: (far: 1.5cm, width: 4.5cm, sep: 0.5cm), book: true)
    show figure.where(kind: "marginalia"): set text(size: 8.5pt, spacing: 0.5em)
  }

  // Elementi Tipografici Generici
  show ref: set text(accent, font: sans-fonts, size: 10pt)
  show link: set text(accent)
  set quote(block: true, quotes: true)
  set cite(style: "american-physics-society")
  show bibliography: set par(spacing: 1em)
  set enum(indent: 0.5em)
  set list(indent: 0.5em)
  set highlight(radius: 1pt, extent: .2em, fill: accent.lighten(75%))

  // Note a Piè di Pagina (Fallback)
  show footnote: set text(fill: accent)
  set footnote.entry(separator: line(length: 30%, stroke: 0.5pt + accent))

  // Configurazione Matematica
  show math.equation: set text(size: 12pt, font: math-fonts)
  set math.equation(
    numbering: (..nums) => text(font: sans-fonts)[#numbering("1", ..nums)],
    supplement: none, 
    number-align: end
  )
  show math.equation: it => {
    show regex("\d+\.\d+"): it => {
      show ".": "," + h(0pt)
      it
    }
    it
  }

  // Struttura Titoli e Intestazioni
  show heading.where(level: 1): set text(font: title-fonts, size: 17pt, weight: "bold")
  show heading.where(level: 2): set text(font: title-fonts, size: 15pt, weight: "bold")
  show heading.where(level: 3): set text(font: title-fonts, size: 13pt, weight: "bold")
  show heading.where(level: 4): set text(font: title-fonts, size: 11pt, weight: "bold")
  
  set heading(numbering: (..nums) => {
    text(fill: accent, weight: "bold", nums.pos().map(str).join("."))
  })
  show heading.where(level: 1): it => { colbreak(weak: true); it }
  show heading: set text(hyphenate: false)
  show selector(<senza_numero>): set heading(numbering: none)

  // Tabelle, Figure e Didascalie
  set sub(typographic: false, baseline: 0.2em)
  set super(typographic: false, baseline: -0.45em)
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

  // --- COSTRUZIONE DEL DOCUMENTO ---

  // Layout Provvisorio (Copertina e Indice)
  set page(margin: (top: 1.5cm, bottom: 1.5cm, left: 2.5cm, right: 2.5cm))

  // Frontespizio (Corretto l'andata a capo senza '\')
  if title != none {
    align(center)[
      #text(14pt, font: title-fonts, weight: "bold")[
        #text(accent)[P]iccolo #text(accent)[P]rontuario di #text(fill: accent)[*#title*]
      ]
    ]
    v(1.5em)
  }      
  
  align(left)[
    #text(font: sans-fonts)[
      *Autori*: #link("mailto:persy@tuta.io")[Marco Persy] + #link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[WikiBigino]
    ]
    #if date != none [
      \ *Ultimo aggiornamento*: #date
    ]
  ]
  
  v(1em)
  include "prefazione.typ"
  v(3.4in) 
  include "licenza.typ"

  pagebreak(to: "odd")

  text(font: title-fonts)[#outline(indent: 2em, title: "Indice", depth: 2)]
  pagebreak(to: "odd")

  // Ripristino dei margini definitivi per il corpo del testo
  if tufte {
    set page(margin: (top: 1.5cm, bottom: 1.5cm, inside: 1.5cm, outside: 6.5cm))
    doc
  } else {
    doc
  }
}