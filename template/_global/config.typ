#import "@preview/showybox:2.0.4": * // Blocchi grafici dinamici (definizione, esempio, dimostrazione)

// ===========================================
// COMPILA L'INTERO MANUALE O SOLO UN CAPITOLO
// ===========================================

#let standalone = sys.inputs.at("chapter", default: none) != none

// ====================================
// STATO GLOBALE PER L'ACCENTO DINAMICO
// ====================================

#let accent_color = state("accent_color", rgb("#1E90FF"))
#let gradient_color = state("gradient_color", gradient.linear(rgb("#1E90FF"), rgb("#63B8FF")))

// ===================
// CONFIGURAZIONE FONT
// ===================

#let serif-fonts = (
  "Faustina",
  )
#let sans-fonts = (
  "Archivo"  
  )
#let title-fonts = (
  "Archivo"
  )
#let cover-fonts = (
  "Archivo"
  )
#let math-fonts = (
  "Libertinus Math"
  )

// ============================================
// CONFIGURAZIONE COLORI DELLA COLLANA (ACCENT)
// ============================================

// Tema selezionabile in compilazione con:
//   typst compile --input theme=gruvbox main.typ
// Se non specificato, usa "storico" (la palette dei pigmenti storici, vedi colori.md).
#let theme-attivo = sys.inputs.at("theme", default: "storico")

#let themes = (
  storico: (
    mat:  rgb(2, 71, 182),   // Blu "Numero di Nepero" (e = 2.71828...)
    fis:  rgb("#4B0082"),    // Indaco di Newton-Maxwell
    chi:  rgb("#008080"),    // Verde petrolio
    bio:  rgb("#00755E"),    // Verde foresta tropicale
    ter:  rgb("#007BA7"),    // Azzurro Cceruleo
    ita:  rgb("#882D17"),    // Terra di Siena
    eng:  rgb("#C94F00"),    // Orange Dynasty
    lat:  rgb("#7e2b02"),    // Sinopia
    sto:  rgb("#C80815"),    // Rosso veneziano
    art:  rgb("#8A7500"),    // Oro ducato
    fil:  rgb("#66023C"),    // Porpora di Tiro
  ),
  gruvbox: (
    mat:  rgb("#076678"),
    fis:  rgb("#8F3F71"),
    chi:  rgb("#427B58"),
    bio:  rgb("#79740E"),
    ter:  rgb("#458588"),
    ita:  rgb("#AF3A03"),
    eng:  rgb("#B57614"),
    lat:  rgb("#7C2D00"),
    sto:  rgb("#9D0006"),
    art:  rgb("#98710A"),
    fil:  rgb("#B16286"),
  ),
  nord: (
    mat:  rgb("#5E81AC"), // nord10, già leggibile senza modifiche
    fis:  rgb("#9F6F96"), // nord15 scurito
    chi:  rgb("#518887"), // nord7 scurito
    bio:  rgb("#6A8B4E"), // nord14 scurito
    ter:  rgb("#5782AC"), // nord9 scurito
    ita:  rgb("#C36649"), // nord12 scurito
    eng:  rgb("#A2751B"), // nord13 scurito
    lat:  rgb("#A85A34"), // variante scura di nord12
    sto:  rgb("#BF616A"), // nord11, già leggibile senza modifiche
    art:  rgb("#7A5A12"), // variante scura di nord13
    fil:  rgb("#7C6296"), // blend nord9+nord15
  ),
  "catppuccin-latte": (
    mat:  rgb("#1E66F5"), // blue
    fis:  rgb("#8839EF"), // mauve
    chi:  rgb("#179299"), // teal
    bio:  rgb("#40A02B"), // green
    ter:  rgb("#0388BC"), // sky scurito
    ita:  rgb("#DF5200"), // peach scurito
    eng:  rgb("#B17117"), // yellow scurito
    lat:  rgb("#E64553"), // maroon
    sto:  rgb("#D20F39"), // red
    art:  rgb("#CF5F47"), // rosewater scurito
    fil:  rgb("#7287FD"), // lavender
  ),
)

#let accent = themes.at(theme-attivo)

// ==================================================
// SFONDO PAGINA PER TEMA
// ==================================================
// "storico" resta bianco puro: è il tema di riferimento, pensato anche per la
// stampa fisica (uno sfondo colorato su 500 pagine costa inchiostro/toner
// reale). I temi alternativi usano invece il loro sfondo "ufficiale" più
// noto — pensati più per la lettura a schermo che per la stampa.
#let page-backgrounds = (
  storico: white,
  gruvbox: rgb("#FBF1C7"),           // gruvbox-light bg0, ufficiale
  nord: rgb("#ECEFF4"),              // nord6 (snow storm, il più chiaro)
  "catppuccin-latte": rgb("#EFF1F5"), // "base" ufficiale di Catppuccin Latte
)

#let page-bg = page-backgrounds.at(theme-attivo)

// "gradient" è usato SOLO dal titolo enorme in copertina (template_cover.typ),
// sovrapposto a una foto scura velata al 50% di nero — non dal resto del libro.
// Serve quindi una variante vivida/luminosa, non la stessa tinta scura usata
// per il testo su sfondo bianco: schiariamo ogni accent finché non raggiunge
// una luminosità minima comune, invece di applicare una percentuale fissa
// (che lascerebbe scuri gli accent già scuri come Matematica o Filosofia).

#let luminance(c) = {
  let (r, g, b) = c.components(alpha: false)
  (0.2126*r + 0.7152*g + 0.0722*b) / 1%
}

#let brighten-for-cover(c, target: 50, saturate-by: 75%) = {
  let result = c
  let i = 0
  while luminance(result) < target and i < 40 {
    result = result.lighten(10%)
    i += 1
  }
  result.saturate(saturate-by)
}

#let cover-accent = accent.pairs().map(((key, color)) => (
  key, brighten-for-cover(color)
)).to-dict()

#let gradient = cover-accent.pairs().map(((key, color)) => (
  key, gradient.linear(color, color.lighten(5%))
)).to-dict()

// ================================
// FUNZIONI DI UTILITÀ INDIPENDENTI
// ================================

#let intro(body) = context {
  let accent = accent_color.get()
  showybox(
    frame: (
      border-color: accent.darken(10%), 
      body-color: accent.desaturate(50%).transparentize(90%), 
      radius: (top-right: 5pt, rest: 0pt),      
      thickness: (left: 1pt)
    ),
    body-style: (color: accent.darken(70%)),    
    text(
      font: sans-fonts,
      style: "italic",
      fill: color.mix((accent, 15%), (black, 20%)))[#body]
  )
}

#let TODO(content) = {
  align(center)[
    #rect(fill: yellow.lighten(50%))[#content]
  ]
}

// Box testo flottante
#let boxfl(where, body) = context {  
  let accent = accent_color.get()
  place(
    left + where,
    float: true,
    clearance: 6pt,
    rect(
      width: 100%,        
      fill: accent.transparentize(80%),
      radius: 3pt, 
      inset: 1em, 
      text(fill: color.mix((accent, 15%), (black, 20%)))[#body]
    ),
  )
}

// Box testo spezzabile
#let boxbr(body) = context {
  let accent = accent_color.get()
  block(
    width: 100%,     
    fill: accent.transparentize(80%),
    radius: 3pt, 
    inset: 1em, 
    breakable: true, 
    text(fill: color.mix((accent, 15%), (black, 20%)))[#body]
  )
}

#let lastpage(body) = context {
  let accent = accent_color.get()
  page(  
  fill: color.mix((accent, 10%), (gray, 10%), (page-bg, 75%)),
  text(fill: color.mix((accent, 15%), (black, 20%)))[#body]
  )
}

#let hl(body) = { highlight(body) }
#let hs0 = h(0em)
#let vs0 = v(0em)

// ==============================================================
// BLOCCHI GRAFICI DINAMICI (Definizione, Esempio, Dimostrazione)
// ==============================================================

// Riquadro per definizioni, teoremi, dimostrazioni..; utilizzo: #definizione[title: "optional title", label: <optional label>]; inserire un counter reset nel main.typ per ricominciare il conteggio ad ogni capitolo
#let definizione(title: none, label: none, ..sections) = {  
  let box-content = context {
    let accent = accent_color.get() 
    
    let args = (
      frame: (
        border-color: accent.lighten(20%), 
        title-color: accent.transparentize(65%), 
        body-color: accent.transparentize(90%), 
        radius: (top-right: 5pt, rest: 0pt), 
        thickness: (left: 1pt)
      ),
      title-style: (color: accent.darken(40%), weight: "bold", sep-thickness: 0pt),
      body-style: (color: accent.darken(50%)),    
      sep: (thickness: 0.5pt, dash: "dashed", color: accent.lighten(20%)),
      breakable: true,
    )
    
    let display-title = {    
      let n = counter(figure.where(kind: "definizione")).display()
      let t = if title != none and title != "" [: #title] else []
      text(size: 0.8em, weight: "bold", font: sans-fonts)[Definizione #text(fill: accent.darken(20%))[#n]#t]
    }
    
    args.insert("title", display-title)
    showybox(..args, ..sections.pos())
  }
  
  [#figure(
    box-content, 
    kind: "definizione", 
    supplement: [Def.], 
    numbering: "1.1", 
    caption: none
  )#label]
}

// Separatore da inserire all'interno di una #definizione
#let dimostrazione() = context {
  let accent = accent_color.get()
  block(width: 100%, height: 1em, outset: (x: 1em), inset: .0em,
    align(left + bottom)[#text(size: 0.8em, weight: "bold", font: sans-fonts, fill: accent.darken(20%))[Dimostrazione]]
  )
}

// Riquadro per esempi; utilizzo singolo (#esempio[]) oppure concatenato (#esempio[][][]); inserire un counter reset nel main.typ per ricominciare il conteggio ad ogni capitolo
#let esempio(title: "Esempio", ..sections) = context {
  let accent = accent_color.get().desaturate(85%)
  let s = sections.pos()
  let n-sections = s.len()
  if n-sections == 0 { return }

  let current-val = counter("esempio").get().first()
  
  let first-val = current-val + 1
  let last-val = current-val + n-sections
  let numbers = range(first-val, last-val + 1).map(str).join(", ")
  
  let steps = range(n-sections).map(idx => counter("esempio").step()).join()

  steps + showybox(
    frame: (border-color: accent.darken(30%), title-color: accent.transparentize(45%), body-color: accent.transparentize(90%), radius: (top-right: 5pt, rest: 0pt), thickness: (left: 1pt)),
    title-style: (color: accent.darken(70%), weight: "bold", sep-thickness: 0pt, size: 0.8em),
    body-style: (color: accent.darken(70%)),
    sep: (thickness: 0.5pt, dash: "dashed", color: accent.darken(20%)),
    breakable: true,
    title: text(size: 0.8em, font: sans-fonts)[#title #numbers],
    ..s
  )
}