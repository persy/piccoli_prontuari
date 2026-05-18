#import "@preview/drafting:0.2.2": *
#import "@preview/chic-hdr:0.5.0": * // Header e footer
#import "@preview/frame-it:1.2.0": * // Frame
#import "@preview/ccicons:1.0.1": * // CC icons
#import "@preview/alchemist:0.1.8": * // Alchemist formulae
#import "@preview/mannot:0.3.1": * // Annotazioni 

// Template basato su toffee-tufte https://typst.app/universe/package/toffee-tufte v.0.1.1

// Font testo principale
#let serif-fonts = (
  "Crimson Text",
  /*
  "Crimson Pro",
  "Cambria",
  "IBM Plex Serif",
  "EB Garamond 12",
  "Atkinson Hyperlegible",
  "Libre Baskerville",
  "Source Serif 4",
  */
)

// Font didascalie, tabelle, header, footer
#let sans-fonts = (
  "Lato",
  /*
  "Alegreya Sans",
  "Roboto",
  "Source Sans 3",
  "IBM Plex Sans",
  "Jost",
  "Inter",
  "Noto Sans",
  */
)

// Font titoli
#let title-fonts = (
  "Jost",
  /*
  "IBM Plex Sans",
  "Lato",
  "Source Sans 3",
  "Inter",
  "Noto Sans",
  */  
)

// Font cover
#let cover-fonts = (
  "Inter",
  /*
  "IBM Plex Sans",
  "Lato",
  "Jost",
  "Source Sans 3",
  "Noto Sans",
  */
)

// Font math
#let math-fonts = (
  "STIX Two Math",
  /*
  "Fira Math", //Used in tables. Set font: show math.equation: set text(size: 10pt, font: math-fonts)
  "CMU Sans Serif",
  "CMU Serif",
  */
)

// Colori; per le trasparenze aggiungere .lighten(90%); es.: main_science.lighten(90%)
#let main_arte = color.rgb(177, 132, 0)
#let main_letteratura = color.rgb(205, 77, 3)
#let main_umane = color.rgb(65, 37, 106)
#let main_natura = color.rgb(51, 102, 153)
#let main_spettacolo = color.rgb(153, 51, 102)
#let main_sport = color.rgb(51, 153, 153)
#let main_tecnologia = color.rgb(51, 153, 51)
#let main_scienze = color.rgb(51, 102, 153)
#let main_storia = color.rgb(153, 51, 51) 

// Copertina
#let copertina(
  materia: "", 
  colore: [],
  immagine: "",
  argomenti: "") = {
  // Sostituisci "#materia",`#colore` e `#immagine`
  v(20pt)
  align(center+top)[ 
    /*#text(15pt, tracking: 10pt)[#smallcaps[Bigino]]
    #v(-8pt) 
    #text(12pt)[di]
    //#v(-20pt) */ 
    #text(32pt, font: cover-fonts, weight: "black", black.lighten(15%))[Prontuario \ Integrativo \ Pratico]  \  
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

  // Barra sopra
  place(
    top + left,
    dx: -71pt,
    dy: -71pt,
    rect(fill: colore, height: 30pt, width: 597pt)[ 
      
  //#text(white,weight: "extrabold")[P]#text(white)[rontuario] \
  //#text(white,weight: "extrabold")[I]#text(white)[ntegrativo] \
  //#text(white,weight: "extrabold")[P]#text(white)[ratico] \
  ]
  )
  
  // Scritta in basso
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
  //#text(white,weight: "extrabold")[P]#text(white)[rontuario] \
  //#text(white,weight: "extrabold")[I]#text(white)[ntegrativo] \
  //#text(white,weight: "extrabold")[P]#text(white)[ratico] \
  ]
  )

}

#let fullwidth = state("fullwidth", false)

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
  // Full width or with right margin; 0.7in was default, now 1.5in
  let right-margin = {
    if full { 1.5in } else { 3in }
  }
  let left-margin = 1.5in
  let margin-diff = right-margin - left-margin
  let wideblock(content) = block(width: 100% + margin-diff, content)

  // Update full width state used by note and notecite functions
  fullwidth.update(full)

  // Functions
  let titleblock(title, authors, date, abstract,) = {
    wideblock([      
      #if title != none { [#align(center)[#text(14pt, font: title-fonts, weight: "bold", [Prontuario Integrativo Pratico di #text(fill: colore)[*#title*]])] \ \ ] }
      /*#if authors != none {
        if type(authors) == array and authors.len() == 2 {
          [#authors.join(", ", last: " + ") \ ]
        } else if type(authors) == array {
          [#authors.join(", ", last: ", + ") \ ]
        } else if type(authors) == str {
          [#align(right)[#authors]]
        }
      }*/
      #align(left)[#text(font: sans-fonts)[*Autori*: #link("mailto:persy@tuta.io")[Marco Persy] + #link("https://wikibigino.miraheze.org/wiki/Pagina_principale")[
        WikiBigino]
      #v(-0.1in)
      #if date != none { [#align(left)[*Ultimo aggiornamento*: #date] \ ] }]]
      /*#if abstract != none { [\ #align(bottom)[#abstract \ ] ] }*/
      Ciao! Questo non è il classico manuale scolastico tascabile. È il risultato di un viaggio personale attraverso lo studio, un percorso fatto di appunti, schemi e riassunti, raccolti e perfezionati nel tempo. L'obiettivo è semplice: offrire uno strumento agile, immediato e completo per affrontare con maggiore serenità l'apprendimento e il ripasso. Nonostante sia stato concepito per gli studenti, spero che possa essere utile a chiunque desideri approfondire o rinfrescare le proprie conoscenze in modo rapido ed efficace. È un concentrato di concetti chiave e nozioni essenziali, pensato per essere il tuo alleato ideale prima di una verifica, di un esame, o semplicemente per colmare una lacuna. Spero che questo lavoro possa accompagnarti nel tuo percorso di studio, rendendolo più leggero e produttivo. In bocca al lupo! \u{1F43A}
      \ \
      Legenda dei simboli:
      - *📌*: importante
      - *💡*: idea
      - *🧩*: approfondimento
      - *❓*: quiz
      #v(20em)       
      #align(center+bottom)[#text(font: sans-fonts)[Quest'opera è distribuita con licenza "Creative Commons: Attribuzione – Non commerciale – Condividi allo stesso modo 4.0 Internazionale".  \ #ccicon("cc-by-nc-sa", scale:1.5) \ \ Ti piace il progetto? #link("https://ko-fi.com/persycchiotto")[*Offrimi un caffè!*] #emoji.coffee]]

      #if toc {[#colbreak() #text(font: title-fonts)[#outline(indent: auto, title:"Indice", depth: 2)]]}
    ])
  }

  let headerblock(title, authors, date, header-content) = if header and header-content != none {
    header-content
  } else if header {
    set text(size: 9pt, fill: colore, weight: "bold", font: sans-fonts)
    wideblock({
      set align(left)
      if counter(page).get().first() > 2 [
        #chic-heading-name()
      ]
    })
  } else { none }

  let footerblock(footer-content) = if footer and footer-content != none {
    footer-content
  } else if footer {
    set text(size: 9pt, fill: colore, weight: "bold", font: sans-fonts)
    wideblock({
      set align(right)
      counter(page).display("1")
    })
  } else { none }

  // Metadata
  if authors != none {
    set document(title: title, author: authors)
  } else {
    set document(title: title)
  }

  set text(font: sans-fonts, fill: luma(15%))
  show ref: set text(colore)
  show link: set text(colore)

  set par(justify: true, spacing: 1.5em)

  set cite(style: "american-physics-society")
  show bibliography: set par(spacing: 1em)

  set enum(indent: 1em)
  set list(indent: 1em)
  show enum: set par(spacing: 1.25em)
  show list: set par(spacing: 1.25em)

  // Math reference
  set math.equation(numbering: "1.", supplement: none, number-align: start)

  // Math decimal separator is comma
  show math.equation: it => {
    show regex("\d+\.\d+"): it => {show ".": {","+h(0pt)}
        it}
    it
  }

  // Math formula is not italic
  //show math.equation: math.upright

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

  // Equation and figure references
  show ref: it => {
    if it.element != none and it.element.func() == math.equation {
      link(it.target)[#it]
    } /*else if it.element != none and it.element.func() == figure {
      link(it.target)[#it.element.numbering]
    }*/ else {
      it
    }
  }
  
  // Font testo principale,
  set text( 
  font: serif-fonts,
  size: 12pt, 
  lang: "it",
  )

  // Font Titolo liv. 1
  show heading.where( level: 1 ): set text(
  font: title-fonts,
  size: 17pt,
  weight: "bold",
  style: "normal",)

  // Font Titolo liv. 2
  show heading.where( level: 2 ): set text(
  font: title-fonts,
  size: 14pt,
  weight: "bold",
  style: "normal",)

  // Font Titolo liv. 3
  show heading.where( level: 3 ): set text(
  font: title-fonts,
  size: 13pt,
  weight: "bold",
  style: "normal",)

  // Font math
  show math.equation: set text(size: 10pt, font: math-fonts)

  // Font caption
  show figure.caption: set text(size: 9pt, font: sans-fonts) 

  // Paragrafi
  set par(
  justify: true,
  leading: 0.52em,
  )

  // Citazioni
  set quote(block: true, quotes: true)

  set page(
    paper: "a4",
    margin: (
      left: left-margin,
      right: right-margin,
      top: 1in,
      bottom: 0.75in,
    ), 
    header: context { headerblock(title, authors, date, header-content) },
    footer: context { footerblock(footer-content) },
    footer-descent: 55%,
  )

  // Title block
  titleblock(title, authors, date, abstract)
  v(1.5em)

  // Using drafting package, margin-note customization
  set-page-properties(
    margin-right: right-margin - left-margin,
    margin-left: left-margin * 1.2,
  )
  set-margin-note-defaults(
    stroke: none, 
    side: right,    
  )

  // Ogni capitolo e sottocapitolo inizia in una nuova pagina
  show heading.where(level: 1): it => { pagebreak(weak: true); it }
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

  doc

  if bib != none { wideblock(bib) }
}

#let notecounter = counter("notecounter")
/// A sidenote.
///
/// Places a sidenote at the right margin.
/// If `full` template option is set to `true`, becomes a footnote instead.
///
/// - `dy: auto | length = auto` Vertical offset.
/// - `numbered: bool = true` Insert a superscript number.
/// - `body: content` Required. The content of the sidenote.
#let sidenote(dy: -1em, numbered: false, body) = context {
  if fullwidth.get() and not numbered {
    footnote(body, numbering: _ => [])
    counter(footnote).update(n => n - 1)
  } else if fullwidth.get() {
    footnote(body)
  } else {
    if numbered {
      notecounter.step()
      context super(notecounter.display())
    }
    text(size: 9pt, font: sans-fonts, margin-note(
      if numbered {
        text(size: 9pt, font: sans-fonts, {
          context super(notecounter.display())
        })                
        body
      } else {
        body
      },
      dy: dy,
    ))
  }
}

/// A sidenote citation.
///
/// Places a sidenote at the right margin.
/// If `full` template option is set to `true`, becomes a footnote instead.
/// Only display when `bibliography` is defined.
///
/// - `dy: auto | length = auto` Vertical offset.
/// - `form: none | str = "normal"` Form of in-text citation.
/// - `style: [csl] | auto | bytes | str = auto` Citation style.
/// - `supplement: content | none = none` Citation supplement.
/// - `key: cite-label` Required. The citation key.
#let sidecite(dy: auto, form: "normal", style: auto, supplement: none, key) = context {
  show cite: it => {
    show regex("\[\d\]"): set text(blue)
    it
  }
  let elems = query(bibliography)
  if elems.len() > 0 {
    cite(key, form: form, style: style, supplement: supplement)
    sidenote(
      cite(key, form: "full"),
      dy: dy,
      numbered: false,
    )
  }
}

/// Wideblock
///
/// Wrapped content will span the full width of the page.
///
/// - `content: content | none` Required. The content to span the full width.
#let wideblock(content) = context {
  if fullwidth.get() {
    block(width: 100%, content)
  } else {
    block(width: 100% + 2.3in, content)
  }
}

// Evidenzia testo; non togliere la virgola dopo evidenzia. Uso: #evidenzia[testo]
#let (evidenzia,) = frames(
  evidenzia: ("Esempio", silver),
)

// #sidenote[text]: Nota a margine
// #wideblock[text]: Testo full width
// #sidecite[text]: Citazione
// Rimuovi numero dal capitolo o sezioni aggiungendo <senza_numero>
// Per spostare la didascalia al margine usare il seguente codice nel documento, prima di #figure
// #set figure.caption(position: top)
// #show figure.caption: sidenote.with(numbered: false)

// Inserisci avviso \TODO per segnalare elementi mancanti. Uso: #\TODO[Immagine da inserire]

#let TODO(content) = {
  align(center)[
  #rect(fill: silver.lighten(50%), radius: 3pt)[#text(fill:black.lighten(50%))[#emoji.warning #content]]
  ]  }

// Note
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