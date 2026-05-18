#import "@preview/showybox:2.0.4": *

// ==========================================
// STATO GLOBALE PER IL COLORE DINAMICO
// ==========================================
#let main_color = state("main_color", rgb("#1E90FF"))

// ==========================================
// CONFIGURAZIONE FONT
// ==========================================
#let serif-fonts = ("TeX Gyre Pagella",)
#let sans-fonts = ("Lato",)
#let title-fonts = ("Jost",)
#let cover-fonts = ("Inter",)
#let math-fonts = ("TeX Gyre Pagella Math",)

// ==========================================
// CONFIGURAZIONE COLORI DELLA COLLANA
// ==========================================
#let main_arte        = rgb("#DAA520") // goldenrod
#let main_letteratura = rgb("#FF7F50") // coral
#let main_umane       = rgb("#6A5ACD") // slateblue
#let main_spettacolo  = rgb("#C71585") // mediumvioletred
#let main_tecnologia  = rgb("#228B22") // forestgreen
#let main_scienze     = rgb("#1E90FF") // dodgerblue
#let main_storia      = rgb("#B22222") // firebrick

// ==========================================
// FUNZIONI DI UTILITÀ INDIPENDENTI
// ==========================================
#let intro(color: silver, body) = context {
  let actual-color = if color != none { color } else { main_color.get() }
  showybox(
    frame: (border-color: actual-color.darken(10%), body-color: actual-color.lighten(85%), radius: 0pt, thickness: (left: 2pt)),
    body-style: (color: actual-color.darken(70%)),    
    { set text(font: sans-fonts, size: 11pt, style: "italic"); body }
  )
}

#let TODO(content) = {
  align(center)[
    #rect(fill: yellow.lighten(50%))[#content]
  ]
}

#let note(where, body) = place(
  left + where,
  float: true,
  clearance: 6pt,
  rect(width: 100%, fill: black.lighten(95%), radius: 3pt, inset: 1em, body),
)

#let notebr(body) = block(
  width: 100%, 
  fill: black.lighten(95%), 
  radius: 3pt, 
  inset: 1em, 
  breakable: true, 
  body
)

#let hl(body) = { highlight(body) }
#let sh0 = h(0em)
#let sv0 = v(0em)