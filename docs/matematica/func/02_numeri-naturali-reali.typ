#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart

//===================

// Tabelle

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

// Grafici

#let numerabilità_razionali = [
  #figure(
  
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (6, 4),
      axis-style: none,
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -0.5, x-max: 5.5,
      y-min: 0,    y-max: 4.5,
      x-label: [$x$],        
      y-label: [$y$],    
      x-grid: true,   
      y-grid: true,
      {
        let col = blue.lighten(25%) 
        
        for q in range(-3, 1) {
          let y0 = -float(q) // Intercetta all'asse y
          
          // Retta
          plot.add(
            domain: (0.2, 5),
            style: (stroke: (paint: col, thickness: 1pt)),
            x => x - float(q)
          )
          
          // 2. punta della freccia 
          if y0 >= 0 and y0 <= 4.5 {
            plot.annotate({
              mark(
                (0.1, y0 + 0.1), 
                (0, y0),  // Punto esatto sull'asse y (x=0, y=-q)
                symbol: ">",
                fill: col,
                stroke: (paint: col, thickness: 1pt),
                size: 0.15
              )
            })
          }
        }
      }
    )
    content((1.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 1)])
    content((2.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 2)])
    content((3.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 3)])
    content((4.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 4)])
    content((1.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 1)])
    content((2.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 2)])
    content((3.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 3)])
    content((1.5, 1.7), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(-1, 1)])
    content((2.5, 1.7), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(-1, 2)])
    content((1.5, 0.8), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(2, 1)])
  }),
  caption: []
)<numerabilità_razionali>
]

#let intersezione_retta_circonferenza = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      // Configurazione degli assi nello stile school-book
      set-style(axes: (
        y: (mark: (end: ")>", fill: black, stroke: black)),
        x: (mark: (end: ")>", fill: black, stroke: black))
      ))

      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-min: -4.1,
        x-max: 4.1,
        y-min: -1.5,
        y-max: 1.5,
        x-tick-step: 1,
        y-tick-step: 1, 
        x-equal: "y",      
        {
          // Soluzione pulita per il bug #157: stile passato dentro il dizionario 'style'
          plot.add(((0, 0),), style: (stroke: none))

          // Geometria del disegno
          
          plot.annotate({
            // Quadrato di costruzione
            rect((0, 0), (1, 1), stroke: 0.5pt + black)
            
            // Diagonale tratteggiata
            line((0, 0), (1, 1), stroke: (paint: accent.mat, dash: "dashed"))
            
            // Circonferenza centrata nell'origine O
            circle((0, 0), radius: calc.sqrt(2), stroke: accent.mat)

            // Funzione interna per piazzare i punti con le loro ancore
            let draw-point(coord, label, anchor) = {
              circle(coord, radius: 0.05, fill: accent.mat, stroke: none)
              content(coord, label, anchor: anchor, padding: 0)
            }

            // Disegno dei punti e delle etichette
            draw-point((0, 0), [$O$], "north-east")
            draw-point((1, 0), [$U$], "north-west")
            draw-point((0, 1), [$B$], "north-west")
            draw-point((1, 1), [$A$], "north-west")
            draw-point((calc.sqrt(2), 0), [$P$], "north-west")
          })
        }
      )
    }),
    caption: []
  )<intersezione_retta_circonferenza>
]



