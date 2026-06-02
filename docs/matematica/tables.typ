#import "../../template/_global/config.typ": *
#import "@preview/cetz:0.5.2"

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

// Indice delle tabelle
#outline(
  title: "Indice delle Tabelle",
  target: figure.where(kind: "table"),
)

== Logica

// Tabella relazioni; riceve i dati in formato tupla, numero di colonne e colore (opzionale)
#let tabella_relazioni(
  data: (), 
  num_col: 4, 
  color: silver // predefinito
) = {
  // indice dell'ultima riga in base a quanti dati passiamo
  let num_row = int(data.len() / num_col)
  let last_row = num_row - 1

  // stile
  show table.cell.where(y: 0): set text(weight: "regular", fill: black)
  show table.cell.where(x: 0): set text(weight: "bold", fill: white)
  show table.cell.where(y: last_row): set text(weight: "regular", fill: white)
  table(
    columns: (2em,) * num_col,
    align: center + horizon,
    stroke: 0.5pt + color.lighten(90%),
    fill: (x, y) => {
      if y == last_row { return color }
      if x == 0 { return color }
      if calc.even(x) { return color.lighten(90%) }
      return white
    },
    // dati
    ..data 
  )
}

// Tabella logica 1
#let tabella_logica1 = [#figure(
  caption: [],
  //gap: 0pt, // Allinea la didascalia alla tabella
  table(
    stroke: 0.5pt + accent.mat.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return accent.mat // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return accent.mat.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: center + horizon,
  columns: (7),
  table.header[ $sans(P)$ ][ $sans(Q)$ ][ $sans(not P)$ ][ $sans(P and Q)$ ][ $P or Q$ ][ $P arrow.r.double Q$ ][ $P arrow.l.r.double Q$ ], 
  [ V ], [ V ], [ F ], [ V ], [ V ], [ V ], [ V ],  
  [ V ], [ F ], [ F ], [ F ], [ V ], [ F ], [ F ],  
  [ F ], [ V ], [ V ], [ F ], [ V ], [ V ], [ F ],  
  [ F ], [ F ], [ V ], [ F ], [ F ], [ V ], [ V ], 
)  
)<tabella_logica1>
]

// Tabella logica 2
#let tabella_logica2 = [
  #figure(
  caption: [],
  //gap: 0pt, // Allinea la didascalia alla tabella
  table(
    stroke: 0.5pt + accent.mat.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return accent.mat // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return accent.mat.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: center + horizon,
  columns: (7),
  table.header[$sans(P)$][$sans(Q)$][$sans(P and Q)$][$sans(not Q)$][$sans(P and not Q)$][$sans((P and Q) or (P and not Q))$][$sans(not ((P and Q) or (P and not Q)))$],
  [V], [V], [V], [F], [F], [V], [F],
  [V], [F], [F], [V], [V], [V], [F],
  [F], [V], [F], [F], [F], [F], [V],
  [F], [F], [V], [V], [F], [F], [V],
)  
)<tabella_logica2>
]

// Tabella relazioni 1
#let tabella_relazioni1 = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
  stroke: 0.5pt + accent.mat.lighten(90%),	
  fill: (x, y) => {
    if x == 0 {
    return accent.mat 
    } else if calc.even(x) {
    return accent.mat.lighten(90%)
    } else {
    return white
    }
  },
  align: center + horizon,	
  columns: (2em,) * 4, 
  [$-$], [], [], [], 
  [$ast$], [], [], [],
  [$+$], [], [], [],
  table.cell(stroke: accent.mat.lighten(90%))[$hash$], [], [], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)<tabella_relazioni1>
]

// Tabella relazioni 2
#let tabella_relazioni2 = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
  stroke: 0.5pt + accent.mat.lighten(90%),	
  fill: (x, y) => {
    if x == 0 {
    return accent.mat 
    } else if calc.even(x) {
    return accent.mat.lighten(90%)
    } else {
    return white
    }
  },
  align: center + horizon,	
  columns: (2em,) * 4, 
  [$-$], [$checkmark$], [], [], 
  [$ast$], [], [$checkmark$], [],
  [$+$], [$checkmark$], [], [],
  table.cell(stroke: accent.mat.lighten(90%))[$hash$], [], [], [$checkmark$],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)<tabella_relazioni2>
]

#let griglia_tabelle_relazioni = [
  #align(center)[
#grid(columns: 2, align: center, gutter: 2em)[
#tabella_relazioni(
  color: accent.mat,
  data: (
  [$c$], [], [], [], 
  [$b$], [$checkmark$], [$checkmark$], [],  
  table.cell(stroke: accent.mat.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: accent.mat,
  data: (
  [$c$], [], [$checkmark$], [$checkmark$], 
  [$b$], [], [$checkmark$], [$checkmark$],  
  table.cell(stroke: accent.mat.lighten(90%))[$a$], [$checkmark$], [], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: accent.mat,
  data: ( 
  [$c$], [], [], [$checkmark$], 
  [$b$], [], [$checkmark$], [$checkmark$],  
  table.cell(stroke: accent.mat.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [$checkmark$],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: accent.mat,
  data: (    
    [$c$], [], [$checkmark$], [], 
    [$b$], [], [], [],  
    table.cell(stroke: accent.mat.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [$checkmark$],    
    table.cell(stroke: white, fill: white)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)
]
]
]

== Dai numeri naturali ai quelli reali

#let esempio_divisione1 = [
  #align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$19 #hide[00]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$4#hide[,00]$],
  
  // Primo passaggio | Quoziente
  [$#hide[0] 30 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[$4.75$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[00] 20$],
  grid.cell(stroke: (left: .5pt))[],
  
  [#hide[000] $0$],
  grid.cell(stroke: (left: .5pt))[]
)]<esempio_divisione1>
]

#let esempio_divisione2 = [
  #align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$19 #hide[00]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$6#hide[,0000]$],
  
  // Primo passaggio | Quoziente
  [$#hide[0] 10 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[$3.16 dots$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[00] underline(4) 0$],
  grid.cell(stroke: (left: .5pt))[],
  
  [$#hide[000] underline(4)$],
  grid.cell(stroke: (left: .5pt))[]
)]<esempio_divisione2>
]

#let esempio_divisione3 = [
  #align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$40 #hide[00]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$33#hide[,000]$],
  
  // Primo passaggio | Quoziente
  [$#hide[0] underline(7)0 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[$1.21 dots$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[00] 40$],
  grid.cell(stroke: (left: .5pt))[],
  
  [$#hide[000] underline(7)$],
  grid.cell(stroke: (left: .5pt))[]
)]<esempio_divisione3>
]

#let esempio_divisione4 = [
  #align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$15 #hide[000000]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$7#hide[,00000000]$],
  
  // Primo passaggio | Quoziente
  [$#hide[0] underline(1)0 #hide[00000]$],
  grid.cell(stroke: (left: .5pt))[$2.142857 dots$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[00] 30 #hide[0000]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[000] 20 #hide[000]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[0000] 60 #hide[00]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[00000] 40 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[000000] 50$],
  grid.cell(stroke: (left: .5pt))[],
  
  [$#hide[0000000] underline(1)$],
  grid.cell(stroke: (left: .5pt))[]
)]<esempio_divisione4>
]

#let esempio_divisione5 = [
  #align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 5pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$2249 #hide[00000]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$1125#hide[,000]$],
  
  // Primo passaggio | Quoziente
  [$ 11240 #hide[0000]$],
  grid.cell(stroke: (left: .5pt))[$1.9991 dots$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[0] 11150 #hide[000]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[0] 10250 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[00] underline(125)0 $],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[000] underline(125) $],
  grid.cell(stroke: (left: .5pt))[],

)]<esempio_divisione5>
]

#let esempio_divisione6 = [
  #align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 10pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$1 #hide[0000]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$9900#hide[.000]$],
  
  [$10 #hide[000]$],
  grid.cell(stroke: (left: .5pt))[$0.0001 dots$],

  // Primo passaggio | Quoziente
  [$ underline(100) #hide[00]$],
  grid.cell(stroke: (left: .5pt))[],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$1000 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[],

  [$10000$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[0] 9900 $],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[00] underline(100) $],
  grid.cell(stroke: (left: .5pt))[],

)]<esempio_divisione6>
]

#let tabella_approssimazione = [
  #figure(  
  table(
    stroke: 0.5pt + accent.mat.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return accent.mat // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return accent.mat.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: right + horizon,
  columns: (3),
  table.header[Decimali][x][x#super[2]],
    [0], [1], [1],
    [1], [1.4], [1.96],
    [2], [1.41], [1.9881],
    [3], [1.414], [1.999396],
    [4], [1.4142], [1.99996164],
    [5], [1.41421], [1.9999899241],
    [6], [1.414213], [1.999998409369],
),
  caption: [], 
)<tabella_approssimazione>
]

== Algebra elementare

// spesso rette colore divisioni, ...
#let col_linea = .5pt + accent.mat

#let esempio_divisione_polinomi1 = [
  #align(center)[
  #grid(
  columns: 5,
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  [$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
  [#hide[0]],[],[],[],grid.cell(stroke: (left: col_linea))[],
  [],[],[],[],[],
  
  )
]<divisione_polinomi1>
]

#let esempio_divisione_polinomi2 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2#hide[- x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],    
    )
  ]<esempio_divisione_polinomi2>
]

#let esempio_divisione_polinomi3 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x#hide[x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],    
    )
  ]<esempio_divisione_polinomi3>
]

#let esempio_divisione_polinomi4 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x#hide[x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],
    [],[$-x^4$],[$+x^3$],[],[],
        
    )
  ]<esempio_divisione_polinomi4>
]

#let esempio_divisione_polinomi5 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x#hide[x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],
    [],grid.cell(stroke: (bottom: col_linea))[$-x^4$],grid.cell(stroke: (bottom: col_linea))[$+x^3$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[],
    [],[],[$x^3$],[$+x^2$],grid.cell(stroke: (left: col_linea))[],    
    )
  ]<esempio_divisione_polinomi5>
]

#let esempio_divisione_polinomi6 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,    
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2#hide[00]$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x +1$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],
    [],grid.cell(stroke: (bottom: col_linea))[$-x^4$],grid.cell(stroke: (bottom: col_linea))[$+x^3$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[],
    [],[],[$x^3$],[$+x^2$],grid.cell(stroke: (left: col_linea))[],
    [],[],grid.cell(stroke: (bottom: col_linea))[$-x^3$],grid.cell(stroke: (bottom: col_linea))[$+x^2$],grid.cell(stroke: (left: col_linea))[], 
    [],[],[],[$+2x^2$],grid.cell(stroke: (left: col_linea))[],  
    )
  ]<esempio_divisione_polinomi6>
]

#let esempio_divisione_polinomi7 = [
  #align(center)[
  #grid(
  columns: 6,
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,    
  [#hide[x.]$2x^4$],[$+x^3$],[],[$+x$],[+2],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^2 +3#hide[0000]$],
  grid.cell(stroke: (bottom: col_linea))[$-2x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[$-6x^2$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$2x^2 + x - 6$],
  [],[$#hide[0,]x^3$],[$-6x^2$],[$+x$],[$+2$],grid.cell(stroke: (left: col_linea))[],
  [],grid.cell(stroke: (bottom: col_linea))[$-x^3$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[$-3x#hide[0]$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[],
  [],[],[$-6x^2$],[$-2x#hide[0]$],[+2],grid.cell(stroke: (left: col_linea))[],
  [],[],grid.cell(stroke: (bottom: col_linea))[$#hide[00]6x^2$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[+18#hide[0]],grid.cell(stroke: (left: col_linea))[], 
  [],[],[],[$-2x#hide[0]$],[+20#hide[0]],grid.cell(stroke: (left: col_linea))[],  
  )
] <esempio_divisione_polinomi7>
]

#let triangolo_tartaglia = [
  #figure(
align(center)[
  #grid(
  columns: 14,
  inset: (x: 7pt, y: 4pt), 
  column-gutter: 0pt,
  [$n=0$],[],[],[],[],[],[],[1],[],[],[],[],[],[],
  [$n=1$],[],[],[],[],[],[1],[],[1],[],[],[],[],[],
  [$n=2$],[],[],[],[],[1],[],[2],[],[1],[],[],[],[],
  [$n=3$],[],[],[],[1],[],[3],[],[3],[],[1],[],[],[],
  [$n=4$],[],[],[1],[],[4],[],[6],[],[4],[],[1],[],[],
  [$n=5$],[],[1],[],[5],[],[10],[],[10],[],[5],[],[1],[],
  [$n=dots$],[1],[],[$dots$],[],[],[],[],[],[],[],[],[$dots$],[1],
  )
],
caption: []
)<triangolo_tartaglia>
]

#let esempio_ruffini1 = [
  #align(center)[
  #grid(
  columns: 7,
  inset: (x: 12pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [$3$],[$0$],[$0$],[$-5$],[$0$],grid.cell(stroke: (left: col_linea))[$+6$],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[#hide[0]],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea, bottom: col_linea))[],
  grid.cell(stroke: (right: col_linea))[#hide[0]], [],[],[],[],[],grid.cell(stroke: (left: col_linea))[],  
  )
]
]

#let esempio_ruffini2 = [
  #align(center)[
  #grid(
  columns: 7,
  inset: (x: 12pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [$3$],[$0$],[$0$],[$-5$],[$0$],grid.cell(stroke: (left: col_linea))[$+6$],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[$ 1/3$],grid.cell(stroke: (bottom: col_linea))[$arrow.b$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea, bottom: col_linea))[],
  grid.cell(stroke: (right: col_linea))[#hide[0]], [3],[],[],[],[],grid.cell(stroke: (left: col_linea))[],  
  )
]
]

#let esempio_ruffini3 = [
  #align(center)[
  #grid(
  columns: 7,
  inset: (x: 12pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [$3$],[$0$],[$0$],[$-5$],[$0$],grid.cell(stroke: (left: col_linea))[+6],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[$ 1/3$],grid.cell(stroke: (bottom: col_linea))[$arrow.b$],grid.cell(stroke: (bottom: col_linea))[1],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea, bottom: col_linea))[],
  grid.cell(stroke: (right: col_linea))[#hide[0]], [$3$],[$1$],[],[],[],grid.cell(stroke: (left: col_linea))[],  
  )
]
]

#let esempio_ruffini4 = [
  #align(center)[
  #grid(
  columns: 7,
  inset: (x: 12pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [$3$],[$0$],[$0$],[$-5$],[$0$],grid.cell(stroke: (left: col_linea))[+6],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[$ 1/3$],grid.cell(stroke: (bottom: col_linea))[$arrow.b$],grid.cell(stroke: (bottom: col_linea))[1],grid.cell(stroke: (bottom: col_linea))[$1/3$],grid.cell(stroke: (bottom: col_linea))[$1/9$],grid.cell(stroke: (bottom: col_linea))[$-44/27$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$-44/81$],
  grid.cell(stroke: (right: col_linea))[#hide[0]], [$3$],[$1$],[$1/3$],[$-44/9$],[$-44/27$],grid.cell(stroke: (left: col_linea))[$442/81$],  
  )
]
]

#let esempio_ruffini5 = [
  
#align(center)[
  #grid(
  columns: 9,
  inset: (x: 10pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [1], [#hide[--]0], [-2],[#hide[--]2],[-2],[#hide[--]2],[-3],grid.cell(stroke: (left: col_linea))[#hide[--]2],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[#hide[--]1],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[#hide[--]1],grid.cell(stroke: (bottom: col_linea))[#hide[--]1],grid.cell(stroke: (bottom: col_linea))[-1],grid.cell(stroke: (bottom: col_linea))[#hide[--]1],grid.cell(stroke: (bottom: col_linea))[-1],grid.cell(stroke: (bottom: col_linea))[#hide[--]1],grid.cell(stroke: (left: col_linea, bottom: col_linea))[-2],
  grid.cell(stroke: (right: col_linea))[#hide[--]],[1],[#hide[--]1], [-1],[#hide[--]1],[-1],[#hide[--]1],grid.cell(stroke: (left: col_linea))[-2],grid.cell(stroke: (left: col_linea))[#hide[--]0],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[-2],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[-2],grid.cell(stroke: (bottom: col_linea))[#hide[--]2],grid.cell(stroke: (bottom: col_linea))[-2],grid.cell(stroke: (bottom: col_linea))[#hide[--]2],grid.cell(stroke: (bottom: col_linea))[-2],grid.cell(stroke: (bottom: col_linea, left: col_linea))[#hide[--]2],[],
  grid.cell(stroke: (right: col_linea))[#hide[0]],[1],[-1], [#hide[--]1],[-1],[#hide[--]1],[-1],grid.cell(stroke: (left: col_linea))[#hide[--]0],[],  
  )
]
]

== Funzioni

#let tabella_funzione = [#figure(
  caption: [],  
  table(
    stroke: 0.5pt + accent.mat.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return accent.mat // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return accent.mat.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: left + horizon,
  columns: (2),
  table.header[$x$][$frac(x, 2, style: "skewed")$],
  [$1$], [$frac(1, 2, style: "skewed")$],
  [$2$], [$frac(2, 2, style: "skewed")$],
  [$3$], [$frac(3, 2, style: "skewed")$],
  [$4$], [$frac(4, 2, style: "skewed")$],
  [$5$], [$frac(5, 2, style: "skewed")$]
)  
) <tabella_funzione>
]

== Disequazioni 

// ==============================
// Schema segni

#let schema_segni(
  punti: (), 
  righe: (), 
  evidenzia: (), 
  intestazione: [$frac(+, -, style: "horizontal")$],
  linea_doppia: true // Parametro booleano attivo di default
) = context layout(size => {
  // Larghezza del testo più largo a sinistra in pt
  let max_w = 0pt
  for r in righe {
    let t = r.at("testo", default: [])
    let w = measure(t).width
    if w > max_w { max_w = w }
  }
  
  // Valori numerici puri
  let w_testo = max_w.pt()
  let w_totale = size.width.pt()
  
  cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let n_p = punti.len()
    let n_r = righe.len()
    
    // Spaziature e margini
    let x_min = -w_testo - 25.0
    let x_label = x_min / 2 - 5.0
    let x_asse_v = -14.0
    
    // Distribuzione dello spazio rimanente per i segni
    let w_disponibile = w_totale - w_testo - 60.0
    let dx = w_disponibile / ((n_p - 1) * 2)
    let dy = 30.0 
    
    let x_max = (n_p - 1) * 2 * dx + 15.0
    let y_doppio = -20.0 - ((n_r - 1) * dy)

    // Griglia principale e intestazione dinamica
    line((x_min, 0), (x_max, 0), stroke: 0.5pt + accent.mat) 
    line((x_asse_v, 20.0), (x_asse_v, y_doppio - (dy * 0.2)), stroke: 0.5pt + accent.mat) 
    
    content((x_label, 12.0), intestazione)

    // Capisaldi e tratteggi verticali
    for (i, p) in punti.enumerate() {
      let x = i * 2 * dx
      content((x, 12.0), p)
      if i > 0 and i < n_p - 1 {
        line((x, 0), (x, y_doppio - (dy * 0.2)), stroke: (paint: accent.mat.lighten(50%), thickness: 0.5pt, dash: "dashed"))
      }
    }

    // Righe dei segni
    for (r_idx, r) in righe.enumerate() {
      let y = -15.0 - (r_idx * dy)
      let testo = r.at("testo", default: none)
      let segni = r.at("segni", default: ())

      if testo != none { content((x_label, y), testo) }

      // Linee di divisione orizzontale condizionate
      let y_l = y - (dy * 0.5)
      if r_idx == n_r - 2 {
        line((x_min, y_l), (x_max, y_l), stroke: 0.5pt + accent.mat)
        if linea_doppia {
          // Disegna la seconda linea solo se linea_doppia è true
          line((x_min, y_l - 2.0), (x_max, y_l - 2.0), stroke: 0.5pt + accent.mat)
        }
      } else if r_idx < n_r - 1 {
        line((x_min, y_l), (x_max, y_l), stroke: 0.5pt + accent.mat)
      }

      // Evidenzia risultati
      if r_idx == n_r - 1 {
        for idx in evidenzia {
          circle((idx * dx, y), radius: 8pt, fill: accent.mat.lighten(80%), stroke: 0.5pt + accent.mat.lighten(70%))
        }
      }

      // Posizionamento segni
      for (s_idx, s) in segni.enumerate() {
        content((s_idx * dx, y), s)
      }
    }
  })
})

// Esempio
#schema_segni(
  punti: ([$-oo$], [$-1$], [$0$], [$2$], [$+oo$]),
  righe: (
    (
      testo: [ $x$ ],
      segni: ([$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$])
    ),
    (
      testo: [ $x + 1$ ],
      segni: ([$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$])
    ),
    (
      testo: [ $x - 2$ ],
      segni: ([$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$])
    ),
    (
      testo: [ Complessivo ],
      segni: ([$-$], [$0$], [$+$], [$0$], [$-$], [$0$], [$+$])
    ),
  ), 
  evidenzia: (2, 4), // evidenzia i punti 2 e 4
  intestazione: [ SGN ], // cambia simbolo in alto a sinistra (default +/-),
  linea_doppia: false // disattiva la linea doppia di fine riga (default: true)
)

#let schema_segni1 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-5$], [$1$], [$3$], [8], [12], [$+oo$]),
  righe: (
    (
      testo: [#hide[testo]],
      segni: ([], [$+$], [$times$], [$-$], [$+$], [$+$], [$0$], [$0$], [$-$], [$-$], [$-$], [$times$],)
    ),

  )
)
]
]

#let schema_segni2 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$1/(sqrt(2) - sqrt(3))$], [$+oo$]),
  righe: (
    (
      testo: [$(sqrt(2) - sqrt(3))x - 1$],
      segni: ([], [$+$], [$0$], [$-$])
    ),
  )
)
]
]

#let schema_segni3 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$5/2$], [$+oo$]),
  righe: (
    (
      testo: [$-2x^2 + 3x + 5$],
      segni: ([], [$-$], [$0$], [$+$], [$0$], [$-$])
    ),
  ),
  evidenzia: (3, )
)
]
]

#let schema_segni4 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$#hide[dd]$], [$+oo$]),
  righe: (
    (
      testo: [$x^2 + x + 2$],
      segni: ([], [], [$+$], [], [])
    ),
  )
)
]
]

#let schema_segni5 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$1$], [$+oo$]),
  righe: (
    (
      testo: [$-x^2 + 2x - 1$],
      segni: ([], [$-$], [$0$], [$-$], [])
    ),
  ),
  evidenzia: (1, 3)
)
]
]

#let schema_segni6 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$0$], [$2$], [$+oo$]),
  righe: (
    (
      testo: [$x$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x + 1$],
      segni: ([], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x - 2$],
      segni: ([], [$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$-$], [$0$], [$+$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
  evidenzia: (3, 7)
)
]
]

#let schema_segni7 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$0$], [$1$], [$frac(3, 2, style: "skewed")$], [$2$], [$+oo$]),
  righe: (
    (
      testo: [$4x^2 - 12x + 9$],
      segni: ([], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x^2 - 3x + 2$],
      segni: ([], [$+$], [$+$], [$+$], [$+$], [$+$], [$0$],[$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [$x^4 + 1$],
      segni: ([], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x^2 + x$],
      segni: ([], [$+$], [$0$], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [#hl[$-$]], [$times$], [$+$], [$times$], [$+$], [$0$], [$-$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
  evidenzia: (1, 6, 7, 8, 9, 10),   
)
]
]

#let schema_segni8 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$1$], [$+oo$]),
  righe: (
    (
      testo: [$f(x)$],
      segni: ([], [$+$], [$0$], [$0$], [$0$], [$+$], [])
    ),
  ),
  
)
]
]

#let schema_segni9 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-2$], [$2$], [$+oo$]),
  righe: (
    (
      testo: [$x^2 - 4$],
      segni: ([], [$+$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
  
)
]
]

#let schema_segni10 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-3$], [$+oo$]),
  righe: (
    (
      testo: [$x + 3$],
      segni: ([], [$-$], [$0$], [$+$], [])
    ),
  ),
  
)
]
]

#let schema_segni11 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$1 - sqrt(3)$], [$1$], [$1 + sqrt(3)$], [$+oo$]),
  righe: (
    (
      testo: [$x - 1$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x^2 - 2x - 2$],
      segni: ([], [$+$], [$0$], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$-$], [$0$], [$+$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
  
)
]
]

#let schema_segni12 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-3$], [$-2$], [#rotate(-45deg)[$quad 1 - sqrt(3)$]], [$1$], [$2$], [#rotate(-45deg)[$quad 1 + sqrt(3)$]], [$+oo$]),
  righe: (
    (
      testo: [$x^2 - 4$],
      segni: ([], [$+$], [$+$], [$+$], [$0$], [$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x + 3$],
      segni: ([], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x^3 - 3x^2 + 2$],
      segni: ([], [$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$], [$0$], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
  ),
  intestazione: [abs],
  linea_doppia: false,
)
]
]

#let schema_segni13 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$0$], [$+oo$]),
  righe: (
    (
      testo: [$f(x)$],
      segni: ([], [$-$], [$0$], [$0$], [$0$], [$+$], [])
    ),
  ),
  linea_doppia: false,
)
]
]

#let schema_segni14 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1/2$], [$0$], [$+oo$]),
  righe: (
    (
      testo: [$2x + 1$],
      segni: ([], [$-$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$+$], [$0$], [$-$], [$times$], [$+$], [])
    ),
  ),
)
]
]

#let schema_segni15 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1/5$], [$0$], [$1$], [$+oo$]),
  righe: (
    (
      testo: [Num.],
      segni: ([], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [Den.],
      segni: ([], [$+$], [$times$], [$-$], [$times$], [$-$], [$times$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$+$], [$times$], [$-$], [$times$], [$-$], [$times$], [$+$], [])
    ),
  ),
)
]
]

// ==========================================
// Grafico verificabilità disequazione singola riga (V/F)

#let tabella_ver_diseq_s(punti: (), elementi: ()) = [

#cetz.canvas({

  import cetz.draw: *
  line((-1.7, 0), (punti.len(), 0), stroke: 0.5pt + accent.mat)
  line((-0.8, 0.5), (-0.8, -1.3), stroke: 0.5pt + accent.mat)
  content((-1.3, 0.25), [$"V/F"$])

  for (i, p) in punti.enumerate() {
    content((i, 0.35), p)
    if i > 0 and i < punti.len() - 1 {
      line((i, 0), (i, -1.3), stroke: (paint: accent.mat.lighten(50%), thickness: 0.5pt, dash: "dashed"))
    }
  }

  for el in elementi {
    if el.len() == 3 {
      let (da, a, incl) = el
      line((da, -0.7), (a, -0.7), stroke: (thickness: .75pt, paint: accent.mat))
      if da > 0 and incl { circle((da, -0.7), radius: 1.5pt, fill: accent.mat, stroke: none) }
    } else if el.len() == 1 {
      circle((el.at(0), -0.7), radius: 1.5pt, fill: accent.mat, stroke: none)
    }
  }
})]

// Esempio
#tabella_ver_diseq_s(
  punti: ([$-oo$], [$-1$], [$1$], [$2$], [$3$], [$5$], [$6$], [$+oo$]),
  elementi: (
    (0, 1, false),
    (2, 3, true),
    (4,),
    (5, 6, false),
  )
) 

// ==========================================
// Grafico verificabilità disequazione più righe (V/F)
#let tabella_ver_diseq(punti: (), elementi: ()) = cetz.canvas({
  import cetz.draw: *

  let n_p = punti.len()

  // Determina il numero di righe totali in sicurezza
  let max-riga = 0
  for el in elementi {
    let r = el.at("riga", default: 0)
    if r > max-riga { max-riga = r }
  }
  let altezza-asse-v = -0.4 - (max-riga * 0.5)

  // Assi correnti
  line((-1.7, 0), (n_p + 1, 0), stroke: 0.5pt + accent.mat)
  line((-0.8, 0.5), (-0.8, altezza-asse-v - 0.35), stroke: 0.5pt + accent.mat)
  content((-1.3, 0.25), [V/F])

  // Capisaldi e linee verticali tratteggiate
  for (i, p) in punti.enumerate() {
    content((i, 0.35), p)
    if i > 0 and i < n_p - 1 {
      line((i, 0), (i, altezza-asse-v - 0.35), stroke: (paint: accent.mat, thickness: 0.5pt, dash: "dashed"))
    }
  }

  // Elementi e testi a sinistra
  for el in elementi {
    let riga = el.at("riga", default: 0)
    let y = -0.5 - (riga * 0.5)
    let testo = el.at("testo", default: none)

    // Testo a sinistra se presente
    if testo != none { content((-1.3, y), testo) }

    if el.at("tipo", default: "linea") == "linea" {
      let da = el.at("da")
      let a = el.at("a")
      // Nuovi parametri di inclusione indipendenti per i due estremi
      let incl_da = el.at("incl_da", default: false)
      let incl_a = el.at("incl_a", default: false)
      
      // Disegna la linea continua del grafico
      line((da, y), (a, y), stroke: (thickness: .75pt, paint: accent.mat))
      
      // Pallino a sinistra (solo se non è l'estremo -oo)
      if da > 0 and incl_da { 
        circle((da, y), radius: 1.5pt, fill: accent.mat, stroke: none) 
      }
      
      // Pallino a destra (solo se non è l'estremo +oo)
      if a < n_p - 1 and incl_a { 
        circle((a, y), radius: 1.5pt, fill: accent.mat, stroke: none) 
      }
      
    } else {
      // Punto isolato
      let pos = el.at("pos")
      circle((pos, y), radius: 1.5pt, fill: accent.mat, stroke: none)
    }
  }
})

// Esempio
#tabella_ver_diseq(
  punti: ([$-oo$], [$-1$], [$1$], [$2$], [$3$], [$5$], [$6$], [$+oo$]),
  elementi: (
    (tipo: "linea", da: 0, a: 1, incl_da: false, riga: 0, testo: [$N_1$]),
    (tipo: "linea", da: 2, a: 3, incl_da: true, incl_a: true,  riga: 1, testo: [$N_2$]),
    (tipo: "punto", pos: 4,                   riga: 1), // Condivide riga 1, non serve ripetere testo
    (tipo: "linea", da: 5, a: 6, incl_a: false, riga: 2, testo: [$D$]),
  )
)

#let grafico_disequazione1 = [#align(center)[
  #tabella_ver_diseq_s(
  punti: ([$-oo$], [$-1$], [$1$], [$2$], [$3$], [$5$], [$6$], [$+oo$]),
  elementi: (
    (0, 1, false),
    (2, 3, true),
    (4,),
    (5, 6, false),
  )
) 
]
]

#let tabella_ver_diseq1 = [#align(center)[

#tabella_ver_diseq(
  punti: ([$-oo$], [$-4$], [$-2$], [$-frac(3, 2, style: "skewed")$], [$-1$], [$+oo$]),
  elementi: (
    (tipo: "linea", da: 1, a: 5, incl: false, riga: 0, testo: [1]),
    (tipo: "linea", da: 2, a: 4, incl_da: true, incl_a: true,  riga: 1, testo: [2]),
    (tipo: "linea", da: 0, a: 3, riga: 2, testo: [3]),
    (tipo: "linea", da: 2, a: 3, incl_da: true, riga: 3, testo: [Sist.]),
  )
)
]
]



== Esponenziali e logaritmi


#let tabella_funzioni_potenza_esponenziali = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: sans-fonts)
  #show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
  #figure(
    caption: [],
    table(
    stroke: 0.5pt + accent.mat.lighten(90%),	
    fill: (x, y) => {
      if x == 0 {
      return accent.mat 
      } else if calc.even(x) {
      return accent.mat.lighten(90%)
      } else {
      return white
      }
    },
    align: center + horizon,	
    columns: (auto,) * 14, 
    [$x$], [0], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [10#super[2]], [10#super[3]],
    
    [$x^2$], [0], [1], [4], [9], [16], [25], [36], [49], [64], [81], [100], [10#super[4]], [10#super[6]],
    
    [$2^x$], [1], [2], [4], [8], [16], [32], [64], [128], [256], [512], [1024],[ #math.approx 10#super[30]], [#math.approx 10#super[301]]
    )
  ) <tabella_funzioni_potenza_esponenziali>
]
