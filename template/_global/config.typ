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
  "STIX Two Math",
  )

// ============================================
// CONFIGURAZIONE COLORI DELLA COLLANA (ACCENT)
// ============================================

#let accent = (
  mat:  rgb("#2563eb"), // Matematica
  fis:  rgb("#4f46e5"), // Fisica
  chi:  rgb("#0d9488"), // Chimica
  bio:  rgb("#059669"), // Biologia
  ter:  rgb("#0284c7"), // Scienze della Terra
  ita:  rgb("#ea580c"), // Lett. Italiana
  eng:  rgb("#d97706"), // Lett. Inglese
  lat:  rgb("#b45309"), // Lett. Latina
  sto:  rgb("#991b1b"), // Storia
  art:  rgb("#be185d"), // Storia dell'Arte
  fil:  rgb("#e23eb1")  // Filosofia
)

#let gradient = (
  mat:  gradient.linear(rgb("#2563eb"), rgb("#3b82f6")),
  fis:  gradient.linear(rgb("#4f46e5"), rgb("#6366f1")),
  chi:  gradient.linear(rgb("#0d9488"), rgb("#06b6d4")),
  bio:  gradient.linear(rgb("#059669"), rgb("#10b981")),
  ter:  gradient.linear(rgb("#0284c7"), rgb("#0ea5e9")),
  ita:  gradient.linear(rgb("#ea580c"), rgb("#f97316")),
  eng:  gradient.linear(rgb("#d97706"), rgb("#f59e0b")),
  lat:  gradient.linear(rgb("#b45309"), rgb("#d97706")),
  sto:  gradient.linear(rgb("#991b1b"), rgb("#dc2626")),
  art:  gradient.linear(rgb("#be185d"), rgb("#ec4899")),
  fil:  gradient.linear(rgb("#e23eb1"), rgb("#942372"))
)

// ================================
// FUNZIONI DI UTILITÀ INDIPENDENTI
// ================================

#let intro(body) = context {
  let act-accent = accent_color.get()
  showybox(
    frame: (
      border-color: act-accent.darken(10%), 
      body-color: act-accent.lighten(90%), 
      radius: (top-right: 5pt, rest: 0pt),      
      thickness: (left: 1pt)
    ),
    body-style: (color: act-accent.darken(70%)),    
    { set text(font: sans-fonts, size: 11pt, style: "italic"); body }
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
      fill: accent.negate(space: rgb).lighten(95%), 
      radius: 3pt, 
      inset: 1em, 
      body
    ),
)}

// Box testo spezzabile
#let boxbr(body) = context {
  let accent = accent_color.get()
  block(
    width: 100%, 
    fill: accent.negate(space: rgb).lighten(95%), 
    radius: 3pt, 
    inset: 1em, 
    breakable: true, 
    body
)}

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
        title-color: accent.lighten(80%), 
        body-color: accent.lighten(95%), 
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
    frame: (border-color: accent.darken(40%), title-color: accent.lighten(65%), body-color: accent.lighten(90%), radius: (top-right: 5pt, rest: 0pt), thickness: (left: 1pt)),
    title-style: (color: accent.darken(70%), weight: "bold", sep-thickness: 0pt, size: 0.8em),
    body-style: (color: accent.darken(70%)),
    sep: (thickness: 0.5pt, dash: "dashed", color: accent.darken(20%)),
    breakable: true,
    title: text(size: 0.8em, font: sans-fonts)[#title #numbers],
    ..s
  )
}