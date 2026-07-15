#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/ctz-euclide:0.2.0": *
#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart

#let default-point-shape = "dot"

// =======

#let grafico_segmenti1 = [

#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-def-points(
  A: (0, 0), B: (2, 1), C: (4, -.5),
  )
  ctz-draw-path("A{below, style: dot}--B{below, style: dot}--C{below, style: dot}",
  stroke: accent.mat)
  }),
caption: []
) <grafico_segmenti1>
]


#let grafico_segmenti2 = [

#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(point: (shape: "dot"))
  
  ctz-def-points(
  A: (0, 0), B: (2, .5), C: (4, 1),
  )
  ctz-draw-path("A{below, style: dot}--B{below, style: dot}--C{below, style: dot}",
  stroke: accent.mat)
  }),
  caption: []
) <grafico_segmenti2>
]

#let grafico_segmenti1-2 = [#align(center)[#grid(columns: 2, align: bottom + center, column-gutter: 3em)[#grafico_segmenti1][#grafico_segmenti2]]]

#let grafico_poligonale1 = [

#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-def-points(
  A: (0, 0), B: (2, 1), C: (4, -.5), D: (2.5, -1), E: (1.1, -0.75)
  )
  ctz-draw-path("A{above, style: dot}--B{above, style: dot}--C{right, style: dot}--D{above, style: dot}--E{above, style: dot}",
  stroke: accent.mat)
  }),
caption: []
) <grafico_poligonale1>
]

#let grafico_poligonale2 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  
  // Configura i vertici come punti pieni
  ctz-style(point: (shape: "dot"))
  
  ctz-def-points(
  A: (0, 0), B: (2, 1), C: (4, -.5), D: (2.5, -1), E: (1.1, -0.75)
  )
  ctz-def-polygon("P1", "A", "B", "C", "D", "E")
  ctz-draw("P1", stroke: accent.mat)
  
  // Disegna i punti e le etichette usando le funzioni native di ctz-euclide
  ctz-draw-points("A", "B", "C", "D", "E")
  ctz-draw-labels("A", "B", "C", "D", "E")

  }),
caption: []
) <grafico_poligonale2>
]

#let grafico_poligonale3 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot"))
  
  ctz-def-points(
  A: (0, -.5), B: (2, 1), C: (4, -.5), D: (2.5, -1), E: (.5, .5)
  )
  ctz-def-polygon("P1", "A", "B", "C", "D", "E")
  ctz-draw("P1", stroke: accent.mat)
  
  ctz-draw-points("A", "B", "C", "D", "E")
  ctz-draw-labels("A", A: "left", "B", "C", "D", "E")
  }),
caption: []
) <grafico_poligonale3>
]

#let grafico_poligonali1-3 = [#align(center)[#grid(columns: 3, align: bottom + center, column-gutter: -1em)[#grafico_poligonale1][#grafico_poligonale2][#grafico_poligonale3]]]

#let grafico_angoli1 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(
    point: (shape: "dot", size: 0.05, fill: accent.mat),
  )
  
  // Definiamo sia i punti base che quelli estesi moltiplicando le coordinate
  ctz-def-points(
    O: (0, 0),
    A: (2.5, 0),
    B: (1.5, 2.2),
    C: (-0.9, 2.2),
    
    // Punti prolungati per l'effetto semiretta
    A_ext: (2.5 * 1.3, 0 * 1.3),
    B_ext: (1.5 * 1.3, 2.2 * 1.3),
    C_ext: (-0.9 * 1.3, 2.2 * 1.3)
  )
  
  // Tratto continuo
  ctz-draw-line("O", "A", stroke: accent.mat)
  ctz-draw-line("O", "B", stroke: accent.mat)
  ctz-draw-line("O", "C", stroke: accent.mat)
  
  // Tratteggio finale
  ctz-draw-line("A", "A_ext", stroke: (dash: "dashed", paint: accent.mat))
  ctz-draw-line("B", "B_ext", stroke: (dash: "dashed", paint: accent.mat))
  ctz-draw-line("C", "C_ext", stroke: (dash: "dashed", paint: accent.mat))
  
  // Angoli acuti in O
  ctz-draw-angle("O", "A", "B", radius: 0.6, label: $alpha$, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("O", "B", "C", radius: 0.8, label: $beta$, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))
  
  ctz-draw-points("O")
  ctz-draw-labels("A", "B", "C", C: "left", "O", O: "below")

  }),
caption: []
) <grafico_angoli1>
]

#let grafico_angoli2 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(
    point: (shape: "dot", size: 0.05, fill: accent.mat),
  )
  
  // Definiamo sia i punti base che quelli estesi moltiplicando le coordinate
  ctz-def-points(
    O: (0, 0),
    A: (2.5, 0),
    B: (1.7, 1.3),
    C: (-1.9, 0),
    
    // Punti prolungati per l'effetto semiretta
    A_ext: (2.5 * 1.3, 0 * 1.3),
    B_ext: (1.7 * 1.3, 1.3 * 1.3),
    C_ext: (-1.9 * 1.3, 0 * 1.3)
  )
  
  // Tratto continuo
  ctz-draw-line("O", "A", stroke: accent.mat)
  ctz-draw-line("O", "B", stroke: accent.mat)
  ctz-draw-line("O", "C", stroke: accent.mat)
  
  // Tratteggio finale
  ctz-draw-line("A", "A_ext", stroke: (dash: "dashed", paint: accent.mat))
  ctz-draw-line("B", "B_ext", stroke: (dash: "dashed", paint: accent.mat))
  ctz-draw-line("C", "C_ext", stroke: (dash: "dashed", paint: accent.mat))
  
  // Angoli acuti in O
  ctz-draw-angle("O", "A", "B", radius: 0.6, label: $alpha$, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("O", "B", "C", radius: 0.8, label: $beta$, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))
  
  ctz-draw-points("O")
  ctz-draw-labels("A", "B", "C", C: "above", "O", O: "below")

  }),
caption: []
) <grafico_angoli2>
]

#let grafico_angoli3 = [
#figure(
  ctz-canvas(length: 0.6cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(
    point: (shape: "dot", size: 0.05, fill: accent.mat),
  )
  
  // Definiamo sia i punti base che quelli estesi moltiplicando le coordinate
  ctz-def-points(
    O: (0, 0),
    A: (-1, 2),
    B: (1, -2),
    C: (1, 2),
    D: (-1, -2),
    
    // Punti prolungati per l'effetto semiretta
    A_ext: (-1 * 1.3, 2 * 1.3),
    B_ext: (1 * 1.3, -2 * 1.3),
    C_ext: (1 * 1.3, 2 * 1.3),
    D_ext: (-1 * 1.3, -2 * 1.3),
  )
  
  // Tratto continuo
  ctz-draw-line("O", "A", stroke: accent.mat)
  ctz-draw-line("O", "B", stroke: accent.mat)
  ctz-draw-line("O", "C", stroke: accent.mat)
  ctz-draw-line("O", "D", stroke: accent.mat)
  
  // Tratteggio finale
  ctz-draw-line("A", "A_ext", stroke: (dash: "dashed", paint: accent.mat))
  ctz-draw-line("B", "B_ext", stroke: (dash: "dashed", paint: accent.mat))
  ctz-draw-line("C", "C_ext", stroke: (dash: "dashed", paint: accent.mat))
  ctz-draw-line("D", "D_ext", stroke: (dash: "dashed", paint: accent.mat))
  
  // Angoli acuti in O
  ctz-draw-angle("O", "B", "C", radius: 0.8, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))
  ctz-draw-angle("O", "A", "D", radius: 0.8, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))
  
  ctz-draw-points("O")
  ctz-draw-labels("A", A: (pos: "left", offset: (-0.0, 0)), "B", B: (offset: (0.2, 0)), "C", C: (pos: "right", offset: (0.0, 0)), "O", O: (pos: "below", offset: (-0.05, -0.3)), "D", D: (offset: (-0.3, 0)))

  }),
caption: []
) <grafico_angoli3>
]

#let grafico_angoli1-3 = [#align(center)[#grid(columns: 3, align: bottom + center, column-gutter: 1em)[#grafico_angoli1][#grafico_angoli2][#grafico_angoli3]]]

//#import "@preview/cetz:0.5.2" // TODO conflitto versioni CeTZ con cetz-euclide
#let grafico_striscia_piano = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (8, 8),
        axis-style: none,
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -4.5, x-max: 4.5,
        y-min: -4.5, y-max: 4.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let r(x) = 1/3 * x + 1.0
          let s(x) = 1/3 * x - 1.0

          // Il riempimento copre l'intera estensione visibile degli assi
          plot.add-fill-between(
            domain: (-4.5, 4.5),
            style: (fill: accent.mat.lighten(80%), stroke: none),
            s,
            r
          )

          // Disegno continuo delle rette limitato a (-3.5, 3.5)
          plot.add(domain: (-3.5, 3.5), style: (stroke: 1.2pt + accent.mat), r)
          plot.add(domain: (-3.5, 3.5), style: (stroke: 1.2pt + accent.mat), s)

          // Tratteggi di continuità inseriti dentro il dominio visibile (-4.5 a -3.5 e 3.5 a 4.5)
          plot.add(
            domain: (3.5, 4.5),
            style: (stroke: (thickness: 1.2pt, paint: accent.mat, dash: "dashed")),
            r
          )
          plot.add(
            domain: (3.5, 4.5),
            style: (stroke: (thickness: 1.2pt, paint: accent.mat, dash: "dashed")),
            s
          )
          plot.add(
            domain: (-4.5, -3.5),
            style: (stroke: (thickness: 1.2pt, paint: accent.mat, dash: "dashed")),
            r
          )
          plot.add(
            domain: (-4.5, -3.5),
            style: (stroke: (thickness: 1.2pt, paint: accent.mat, dash: "dashed")),
            s
          )

          plot.annotate({
            content((2.0, r(2.0)), [$r$], anchor: "south-east", padding: 4pt)
            content((2.0, s(2.0)), [$s$], anchor: "north-west", padding: 4pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_striscia_piano>
]

#let grafico_parallele = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-3, -2, 8, 5), {
  import cetz.draw: *
  ctz-init()
  ctz-def-points(A: (0, 0), B: (5, 1), C: (0.5, 2.5), D: (8, 4), E: (3, 4), F: (2, -1)) // Punti, poi nascosti
  ctz-def-points(r: (0.5, 2.5),s: (0, 0),  t: (2, -1)) // Etichette rette

  ctz-def-line("P1", "A", "B") // Parallela r
  ctz-def-line("P2", "C", "D") // Parallela s
  ctz-def-line("L1", "E", "F") // Incidente t
  ctz-def-ll("I1", "L1", "P1") // Intersezione 1
  ctz-def-ll("I2", "L1", "P2") // Intersezione 2

  ctz-draw-line-add("A", "B", add: (2, 2), stroke:
  accent.mat)
  ctz-draw-line-add("C", "D", add: (2, 2), stroke:
  accent.mat)
  ctz-draw-line-add("E", "F", add: (2, 2), stroke:
  accent.mat.lighten(50%))
  ctz-style(point: (shape: none)) // nascondi punti
  ctz-draw(points: ("r", "s", "t"), labels: (
  r: "above",
  s: "above",
  t: "below right"
  ))
  ctz-draw-angle("I2", "E", "D", 
    label: $alpha$,
    radius: 0.9,
    fill: accent.mat.lighten(70%),
    stroke: accent.mat.lighten(70%)
  )
  ctz-draw-angle("I2", "C", "F", 
    label: $gamma$,
    radius: 0.9,
    fill: accent.mat.lighten(70%),
    stroke: accent.mat.lighten(70%)
  )
  ctz-draw-angle("I1", "E", "B", 
    label: $epsilon$,
    radius: 0.9,
    fill: accent.mat.lighten(70%),
    stroke: accent.mat.lighten(70%)
  )
  ctz-draw-angle("I1", "A", "F", 
    label: $eta$,
    radius: 0.9,
    fill: accent.mat.lighten(70%),
    stroke: accent.mat.lighten(70%)
  )
  ctz-draw-angle("I2", "E", "C", 
    label: $beta$,
    radius: 0.7,
    fill: accent.mat.lighten(90%),
    stroke: accent.mat.lighten(90%)
  )
  ctz-draw-angle("I2", "D", "F", 
    label: $delta$,
    radius: 0.7,
    fill: accent.mat.lighten(90%),
    stroke: accent.mat.lighten(90%)
  )
  ctz-draw-angle("I1", "E", "A", 
    label: $zeta$,
    radius: 0.7,
    fill: accent.mat.lighten(90%),
    stroke: accent.mat.lighten(90%)
  )
  ctz-draw-angle("I1", "B", "F", 
    label: $theta$,
    radius: 0.7,
    fill: accent.mat.lighten(90%),
    stroke: accent.mat.lighten(90%)
  )
})
,
caption: []
) <grafico_parallele>
]

#let grafico_triangolo_angoli_esterni = [
#figure(
  ctz-canvas(length: 0.75cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  // Definiamo i tre vertici del triangolo scaleno
  // B è posizionato in basso a destra
  ctz-def-points(
    A: (-3, -1),   // In basso a sinistra
    B: (4, -1),    // In basso a destra
    C: (-1, 2.5),  // Vertice superiore
    D: (6, -1),
    E: (5.6, -2.1)
  )
  
  // Generiamo i prolungamenti dei lati che passano per B
  // Estendiamo il lato AB oltre B (k = 1.3)
  ctz-def-linear("Ext_AB", "A", "B", 1.35)
  // Estendiamo il lato CB oltre B (k = 1.35)
  ctz-def-linear("Ext_CB", "C", "B", 1.35)
  
  // Disegniamo il triangolo base ABC (in blu)
  ctz-def-polygon("T1", "A", "B", "C")
  ctz-draw("T1", stroke: accent.mat)
  
  // Disegniamo i prolungamenti oltre il vertice B (in tratteggio nero)
  ctz-draw-line("B", "Ext_AB", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line("B", "Ext_CB", stroke: (paint: accent.mat, dash: "dashed"))
  
  // --- ANGOLO INTERNO IN B ---
  ctz-draw-angle("B", "C", "A", radius: 0.5, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%))
  
  // --- ANGOLI ESTERNI IN B ---
  // Angolo esterno formato dal prolungamento di AB con il lato CB
  ctz-draw-angle("B", "Ext_AB", "C", radius: 0.7, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  // Angolo esterno formato dal prolungamento di CB con il lato AB
  ctz-draw-angle("B", "A", "Ext_CB", radius: 0.7, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  
  // Punti ed etichette posizionati correttamente
  ctz-draw-points("A", "B", "C", )
  ctz-draw-labels("A", A: (pos: "left", offset: (-0.0, 0)), "A", "B", B: (pos: "above right", offset: (-0.1, 0)), "C", C: (pos: "above", offset: (-0.0, 0)),  "D", D: (pos: "above", offset: (-0.0, 0)),  "E", E: (pos: "above", offset: (-0.0, 0)))

  }),
caption: []
) <grafico_triangolo_angoli_esterni>
]

#let grafico_due_lati_condivisi = [
#figure(
  ctz-canvas(length: 1cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  // Coordinate geometriche precise per avere CD = BC
  ctz-def-points(
    A: (0, 0),
    B: (5, 0),
    C: (3.8, 2.2),
    D: (2.6, 0)
  )
  
  ctz-draw(line: ("D", "B", "C", "D"), stroke: (paint: accent.mat, dash: "dashed"), fill: accent.mat.transparentize(90%))
  ctz-draw(line: ("A", "D", "C", "A"), stroke: accent.mat, fill: accent.mat.transparentize(80%))

  ctz-draw-angle("A", "D", "C", radius: 0.7, label: $alpha$, fill: accent.mat.lighten(80%), stroke: accent.mat)
  
  ctz-draw-mark-segment("B", "C", mark: 1)
  ctz-draw-mark-segment("C", "D", mark: 1)
  ctz-draw-mark-segment("A", "C", mark: 2)
  
  ctz-draw(
    points: ("A", "B", "C", "D"), 
    labels: (
      A: "below left", 
      B: "below right", 
      C: "above", 
      D: "below"
    )
  )

  }),
caption: []
) <grafico_due_lati_condivisi>
] 

#let grafico_triangolo_baricentro = [
#figure(
  ctz-canvas(length: 1cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  // Definiamo i vertici del triangolo scaleno ABC
  ctz-def-points(
    A: (0, 0),
    B: (5.5, 0),
    C: (1.8, 3.5)
  )
  
  ctz-def-midpoint("M_1", "B", "C")
  ctz-def-midpoint("M_2", "A", "C")
  ctz-def-midpoint("M_3", "A", "B")

  
  ctz-def-centroid("G", "A", "B", "C")

  
  // Disegniamo il perimetro del triangolo scaleno ABC (in blu continuo)
  ctz-draw(line: ("A", "B", "C", "A"), stroke: blue)
  
  // Disegniamo le tre mediane (tratteggiate in nero)
  ctz-draw(line: ("A", "M_1"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw(line: ("B", "M_2"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw(line: ("C", "M_3"), stroke: (paint: accent.mat, dash: "dashed"))
  
  ctz-draw(
    points: ("A", "B", "C", "M_1", "M_2", "M_3", "G"), 
    labels: (
      A: "below left", 
      B: "below right", 
      C: "above", 
      M_1: (text: $M_1$, pos: "above right"), 
      M_2: (text: $M_1$, pos: "above left"), 
      M_3: (text: $M_1$, pos: "below"),
      G: "above left"
    )
  )

  }),
caption: []
) <grafico_triangolo_baricentro>
]

#let grafico_triangolo_incentro = [
#figure(
  ctz-canvas(length: 1.0cm, clip-canvas: (-0.5, -0.5,
6, 3), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (0, 0),
    B: (5.5, 0),
    C: (1.8, 3.5)
  )

  // Definizione incentro
  ctz-def-incenter("I", "A", "B", "C")
    
  // Triangolo
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  
  // Circonferenza inscritta
  ctz-draw(incircle: ("A", "B", "C"), stroke: (paint: accent.mat, dash: "dotted"))

  // Punti bisettrici
  ctz-def-bisect("A1", "A2", "C", "A", "B")
  ctz-draw-segment("A1", "A2", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-def-bisect("B1", "B2", "A", "B", "C")
  ctz-draw-segment("B1", "B2", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-def-bisect("C1", "C2",  "A", "C","B")
  ctz-draw-segment("C1", "C2", stroke: (paint: accent.mat, dash: "dashed"))

  // Linee bisettrici
  ctz-def-line("L1", "A1", "A2")
  ctz-def-line("L2", "B1", "B2")
  ctz-def-line("L3", "C1", "C2")

  // Lati
  ctz-def-line("AB", "A", "B")
  ctz-def-line("BC", "B", "C")
  ctz-def-line("AC", "A", "C")

  // Punti intersezione bisettrici e lati
  ctz-def-ll("A'", "L1", "BC")
  ctz-def-ll("B'", "L2", "AC")
  ctz-def-ll("C'", "L3", "AB")
  
  // Punti ed etichette
  ctz-draw(
    points: ("A", "B", "C", "A'", "B'", "C'", "I"), 
    labels: (
      A: "below left", 
      B: "below right", 
      C: "above", 
      "A'": "above right", 
      "B'": "above left", 
      "C'": "below",
      I: "above right"
    )
  )

  }),
caption: []
) <grafico_triangolo_incentro>
]

#let grafico_triangolo_ortocentro1 = [
#figure(
  ctz-canvas(length: 0.6cm, clip-canvas: (-0.5, -0.5,
5.5, 3), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (2, 3.5))
  ctz-def-orthocenter("H", "A", "B", "C")
  
  // Altezze
  ctz-def-perp("Ha1", "Ha2", ("B", "C"), "A")
  ctz-def-perp("Hb1", "Hb2", ("A", "C"), "B")
  ctz-def-perp("Hc1", "Hc2", ("A", "B"), "C")

  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  
  ctz-draw-line-add("A", "Ha1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("B", "Hb1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("C", "Hc1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-line("H1", "Ha1", "Ha2")
  ctz-def-line("BC", "B", "C")
  ctz-def-ll("A'", "H1", "BC")

  ctz-draw-mark-right-angle("A", "A'", "B", size: 0.2)

  ctz-draw(points: ("A", "B", "C", "H"), labels: (
  A: "left",
  B: "right",
  C: "above",
  H: "below right"
  ))


  }),
caption: []
) <grafico_triangolo_ortocentro1>
]

#let grafico_triangolo_ortocentro2 = [
#figure(
  ctz-canvas(length: 0.6cm, clip-canvas: (-0.5, -0.5,
5.5, 3.5), {
  import cetz.draw: *
  ctz-init()
  
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (0, 3.5))
  ctz-def-orthocenter("H", "A", "B", "C")
  
  // Altezze
  ctz-def-perp("Ha1", "Ha2", ("B", "C"), "A")
  /* ctz-def-perp("Hb1", "Hb2", ("A", "C"), "B")
  ctz-def-perp("Hc1", "Hc2", ("A", "B"), "C") */

  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  
  ctz-draw-line-add("A", "Ha1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed"))
  /* ctz-draw-line-add("B", "Hb1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("C", "Hc1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed")) */

  ctz-def-line("H1", "Ha1", "Ha2")
  ctz-def-line("BC", "B", "C")
  ctz-def-ll("A'", "H1", "BC")

  ctz-draw-mark-right-angle("A", "A'", "B", size: 0.2)

  ctz-draw(points: ("A", "B", "C", "H"), labels: (
  A: "left",
  B: "right",
  C: "above",
  H: "below right"
  ))


  }),
caption: []
) <grafico_triangolo_ortocentro2>
]

#let grafico_triangolo_ortocentro3 = [
#figure(
  ctz-canvas(length: 0.6cm, clip-canvas: (-1.5, -1.9,
5.5, 3.5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (-1, 3.5))
  ctz-def-orthocenter("H", "A", "B", "C")
  
  // Altezze
  ctz-def-perp("Ha1", "Ha2", ("B", "C"), "A")
  ctz-def-perp("Hb1", "Hb2", ("A", "C"), "B")
  ctz-def-perp("Hc1", "Hc2", ("A", "B"), "C")

  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  
  ctz-draw-line-add("A", "Ha1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("B", "Hb1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("C", "Hc1", add: (2, 2), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-line("H1", "Ha1", "Ha2")
  ctz-def-line("BC", "B", "C")
  ctz-def-ll("A'", "H1", "BC")

  ctz-draw-mark-right-angle("A", "A'", "B", size: 0.2)
  ctz-draw(points: ("A", "B", "C", "H"), labels: (
  A: "left",
  B: "right",
  C: "above",
  H: "below right"
  ))


  }),
caption: []
) <grafico_triangolo_ortocentro3>
]

#let grafici_triangolo_ortocentro = [
#align(center)[
  #grid(columns: 3, column-gutter: -2.5em, row-gutter: 0.1em, align: center + bottom)[#grafico_triangolo_ortocentro1][][#grafico_triangolo_ortocentro2][][#grafico_triangolo_ortocentro3][]
]]

#let grafico_triangolo_circocentro1 = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-0.5, -0.5,
4.5, 3.5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (2, 3.5))
  ctz-def-circumcenter("O", "A", "B", "C")

  ctz-def-mediator("ABm1", "ABm2", "A", "B")
  ctz-draw(segment: ("ABm1", "ABm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-mediator("ACm1", "ACm2", "A", "C")
  ctz-draw(segment: ("ACm1", "ACm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-mediator("BCm1", "BCm2", "B", "C")
  ctz-draw(segment: ("BCm1", "BCm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-midpoint("ABm", "A", "B")
  ctz-def-midpoint("ACm", "A", "C")
  ctz-def-midpoint("BCm", "B", "C")
  ctz-draw-mark-right-angle("A", "ABm", "O", size: 0.2)
  ctz-draw-mark-right-angle("B", "BCm", "O", size: 0.2)
  ctz-draw-mark-right-angle("C", "ACm", "O", size: 0.2)

  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  ctz-draw(circle-through: ("O", "A"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(points: ("A", "B", "C", "O"), labels: (
  A: "below left",
  B: "below right",
  C: "above",
  O: "above"
  ))
}),
caption: []
) <grafico_triangolo_circocentro1>
]

#let grafico_triangolo_circocentro2 = [
#figure(
  ctz-canvas(length: 0.66cm, clip-canvas: (-0.5, -0.5,
4.5, 3.5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (0, 3.5))
  ctz-def-circumcenter("O", "A", "B", "C")

  ctz-def-mediator("ABm1", "ABm2", "A", "B")
  ctz-draw(segment: ("ABm1", "ABm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-mediator("ACm1", "ACm2", "A", "C")
  ctz-draw(segment: ("ACm1", "ACm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-mediator("BCm1", "BCm2", "B", "C")
  ctz-draw(segment: ("BCm1", "BCm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-midpoint("ABm", "A", "B")
  ctz-def-midpoint("ACm", "A", "C")
  ctz-def-midpoint("BCm", "B", "C")
  ctz-draw-mark-right-angle("A", "ABm", "O", size: 0.2)
  ctz-draw-mark-right-angle("B", "BCm", "BCm1", size: 0.2)
  ctz-draw-mark-right-angle("C", "ACm", "O", size: 0.2)

  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  ctz-draw(circle-through: ("O", "A"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(points: ("A", "B", "C", "O"), labels: (
  A: "below left",
  B: "below right",
  C: "above",
  O: "above"
  ))
}),
caption: []
) <grafico_triangolo_circocentro2>
]

#let grafico_triangolo_circocentro3 = [
#figure(
  ctz-canvas(length: 0.5cm, clip-canvas: (-0.5, -0.5,
4.5, 3.5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (-1.5, 3.5))
  ctz-def-circumcenter("O", "A", "B", "C")

  ctz-def-mediator("ABm1", "ABm2", "A", "B")
  ctz-draw(segment: ("ABm1", "ABm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-mediator("ACm1", "ACm2", "A", "C")
  ctz-draw(segment: ("ACm1", "ACm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-mediator("BCm1", "BCm2", "B", "C")
  ctz-draw(segment: ("BCm1", "BCm2"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-midpoint("ABm", "A", "B")
  ctz-def-midpoint("ACm", "A", "C")
  ctz-def-midpoint("BCm", "B", "C")
  ctz-draw-mark-right-angle("A", "ABm", "O", size: 0.2)
  ctz-draw-mark-right-angle("B", "BCm", "O", size: 0.2)
  ctz-draw-mark-right-angle("C", "ACm", "O", size: 0.2)

  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  ctz-draw(circle-through: ("O", "A"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(points: ("A", "B", "C", "O"), labels: (
  A: "below left",
  B: "below right",
  C: "above",
  O: "above"
  ))
}),
caption: []
) <grafico_triangolo_circocentro3>
]

#let grafici_triangolo_circocentro = [
#align(center)[
  #grid(columns: 3, column-gutter: -2.5em, align: center + bottom)[#grafico_triangolo_circocentro1][][#grafico_triangolo_circocentro2][][#grafico_triangolo_circocentro3][]
]]

#let grafico_triangolo_centri1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-def-points(A: (0, 0), B: (5, 0), C: (2.5, 6))
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  
  ctz-def-centroid("G", "A", "B", "C")
  ctz-def-circumcenter("O", "A", "B", "C")
  ctz-def-incenter("I", "A", "B", "C")
  ctz-def-orthocenter("H", "A", "B", "C")

  ctz-draw(segment: ("H", "O"), stroke: (paint: accent.mat.darken(20%),dash: "dotted",thickness: 1pt))
  ctz-draw(circle-through: ("O", "A"), stroke: (paint: accent.mat.lighten(50%), dash: "dashed"))
  ctz-draw(incircle: ("A", "B", "C"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-def-midpoint("Ma", "B", "C")
  ctz-def-midpoint("Mb", "A", "C")
  ctz-def-midpoint("Mc", "A", "B")
  ctz-draw(segment: ("A", "Ma"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw(segment: ("B", "Mb"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw(segment: ("C", "Mc"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw-mark-segment("A", "C", mark: 2)
  ctz-draw-mark-segment("C", "B", mark: 2)

  ctz-draw(points: ("A", "B", "C", "G", "O", "I", "H"), labels: (
  A: "below left",
  B: "below right",
  C: "above",
  G: "right",
  O: "above",
  I: "left",
  H: "left"
  ))
}),
caption: []
) <grafico_triangolo_centri1>
]

#let grafico_triangolo_centri2 = [
#figure(
  ctz-canvas(length: 0.6cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))
  ctz-def-points(A: (0, 0), B: (7, 0), C: (3.5, 7 * calc.sqrt(3)/2))

  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  ctz-def-centroid("G", "A", "B", "C")
  ctz-def-circumcenter("O", "A", "B", "C")
  ctz-def-incenter("I", "A", "B", "C")
  ctz-def-orthocenter("H", "A", "B", "C")

  ctz-draw(segment: ("H", "O"), stroke: (paint: accent.mat.darken(20%),dash: "dotted",thickness: 1pt))

  ctz-draw(circle-through: ("O", "A"), stroke: (paint: accent.mat.lighten(50%), dash: "dashed"))
  ctz-draw(incircle: ("A", "B", "C"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-def-midpoint("Ma", "B", "C")
  ctz-def-midpoint("Mb", "A", "C")
  ctz-def-midpoint("Mc", "A", "B")
  ctz-draw(segment: ("A", "Ma"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw(segment: ("B", "Mb"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw(segment: ("C", "Mc"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw-mark-segment("A", "B", mark: 1)
  ctz-draw-mark-segment("B", "C", mark: 1)
  ctz-draw-mark-segment("A", "C", mark: 1)

  ctz-draw(points: ("A", "B", "C", "G", "O", "I", "H"), labels: (
  A: "below left",
  B: "below right",
  C: "above",
  G: "above right",
  O: "below right",
  I: "above left",
  H: "below left"
  ))
}),
caption: []
) <grafico_triangolo_centri2>
]

#let grafici_triangolo_centri = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.2em, align: center + bottom)[#grafico_triangolo_centri1][#grafico_triangolo_centri2]
]]

#let grafico_rette_incidenti_bisettrici = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (0.5, 0.5,
4.5, 3.5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  let pO = (0.0, 0.0)
  
  let lenA = calc.sqrt(3.0*3.0 + 1.0*1.0)
  let uAx = 3.0 / lenA
  let uAy = 1.0 / lenA

  let lenB = calc.sqrt(2.0*2.0 + 2.5*2.5)
  let uBx = 2.0 / lenB
  let uBy = -2.5 / lenB

  let b1x = uAx + uBx
  let b1y = uAy + uBy
  let lenB1 = calc.sqrt(b1x*b1x + b1y*b1y)
  let ub1x = b1x / lenB1
  let ub1y = b1y / lenB1

  let b2x = uAx - uBx
  let b2y = uAy - uBy
  let lenB2 = calc.sqrt(b2x*b2x + b2y*b2y)
  let ub2x = b2x / lenB2
  let ub2y = b2y / lenB2

  let L = 3.5
  let pA1 = (-uAx * L, -uAy * L)
  let pA2 = (uAx * L, uAy * L)
  let pB1 = (-uBx * L, -uBy * L)
  let pB2 = (uBx * L, uBy * L)

  let pBis1_1 = (-ub1x * L, -ub1y * L)
  let pBis1_2 = (ub1x * L, ub1y * L)
  let pBis2_1 = (-ub2x * L, -ub2y * L)
  let pBis2_2 = (ub2x * L, ub2y * L)
  
  ctz-def-points(
    O: pO,
    A1: pA1,
    A2: pA2,
    B1: pB1,
    B2: pB2,
    Bis1_1: pBis1_1,
    Bis1_2: pBis1_2,
    Bis2_1: pBis2_1,
    Bis2_2: pBis2_2
  )
  
  ctz-draw(line: ("A1", "A2"), stroke: accent.mat)
  ctz-draw(line: ("B1", "B2"), stroke: accent.mat)
  
  ctz-draw(line: ("Bis1_1", "Bis1_2"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw(line: ("Bis2_1", "Bis2_2"), stroke: (paint: accent.mat, dash: "dashed"))
  
  ctz-draw-mark-right-angle("Bis1_2", "O", "Bis2_2", size: 0.2)
  
  ctz-draw(
    points: ("O"), 
    labels: (
      O: "above"
    )
  )

  content("A2", anchor: "south-west", padding: 0.1, $A$)
  content("B2", anchor: "north-west", padding: 0.1, $B$)
  content("Bis1_2", anchor: "west", padding: 0.1, $b_1$)
  content("Bis2_2", anchor: "north", padding: 0.1, $b_2$)

  }),
caption: []
) <grafico_rette_incidenti_bisettrici>
] // Da semplificare

#let grafico_triangolo_punti_medi = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  // 1. Vertici del triangolo generico ABC
  ctz-def-points(
    A: (0.0, 0.0),
    B: (5.5, 0.0),
    C: (1.8, 3.5)
  )
  
  // 2. Definizione dei punti medi tramite funzione nativa
  ctz-def-midpoint("M1", "A", "C")
  ctz-def-midpoint("M2", "B", "C")
  
  // 3. Disegno del perimetro del triangolo ABC
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  
  // 4. Collegamento tratteggiato tra i punti medi M1 e M2
  ctz-draw(line: ("M1", "M2"), stroke: (paint: accent.mat, dash: "dashed"))
  
  // 5. Disegno e testo automatico per i vertici principali
  ctz-draw(
    points: ("A", "B", "C"), 
    labels: (
      A: "below left", 
      B: "below right", 
      C: "above"
    )
  )
  
  // 6. Disegno dei punti medi
  circle("M1", radius: 0.07, fill: accent.mat, stroke: none)
  circle("M2", radius: 0.07, fill: accent.mat, stroke: none)
  
  // 7. Inserimento manuale delle etichette matematiche
  content("M1", anchor: "north-east", padding: 0.1, $M_1$)
  content("M2", anchor: "north-west", padding: 0.1, $M_2$)
  
  }),
caption: []
) <grafico_triangolo_punti_medi>
]

#let grafico_angoli_poligono1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (5, 2.1), D:(2.6, 4), E: (-0.5, 2.5))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "C", "A", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "D", "B", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "E", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("E", "A", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

  ctz-draw(points: ("A", "B", "C", "D", "E"), labels: (
  A: "below left",
  B: "below right",
  C: "right",
  D: "above",
  E: "left",
  ))
}),
caption: []
) <grafico_angoli_poligono1>
]

#let grafico_angoli_poligono2 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (5, 2.1), D:(2.6, 4), E: (-0.5, 2.5))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-def-linear("Aext", "E", "A", 1.3)
  ctz-def-linear("Bext", "A", "B", 1.3)
  ctz-def-linear("Cext", "B", "C", 1.3)
  ctz-def-linear("Dext", "C", "D", 1.3)
  ctz-def-linear("Eext", "D", "E", 1.3)

  ctz-draw(segment: ("A", "Aext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "Bext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("C", "Cext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("D", "Dext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("E", "Eext"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("A", "B", "Aext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "C", "Bext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "D", "Cext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "E", "Dext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("E", "A", "Eext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

  ctz-draw(points: ("A", "B", "C", "D", "E",), labels: (
  A: "left",
  B: "below",
  C: "right",
  D: "above right",
  E: "above left",
  ))
}),
caption: []
) <grafico_angoli_poligono2>
]

#let grafici_angoli_poligono = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, align: center + bottom)[#grafico_angoli_poligono1][#grafico_angoli_poligono2]
]]

#let grafico_angoli_poligono1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (5, 2.1), D:(2.6, 4), E: (-0.5, 2.5))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "C", "A", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "D", "B", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "E", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("E", "A", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

  ctz-draw(points: ("A", "B", "C", "D", "E"), labels: (
  A: "below left",
  B: "below right",
  C: "right",
  D: "above",
  E: "left",
  ))
}),
caption: []
) <grafico_angoli_poligono1>
]

#let grafico_diagonali_poligono = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (5, 2.1), D:(2.6, 4), E: (-0.5, 2.5))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("A", "D"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "E"), stroke: (paint: accent.mat, dash: "dotted"))  
  ctz-draw(segment: ("C", "E"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(points: ("A", "B", "C", "D", "E",), labels: (
  A: "left",
  B: "below",
  C: "right",
  D: "above right",
  E: "above left",
  ))
}),
caption: []
) <grafico_diagonali_poligono>
]

#let grafico_corda_poligono = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (5, 2.1), D:(2.6, 4), E: (-0.5, 2.5))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-def-line("L1", (-0.5, 1), (4, 3))
  ctz-def-line("AE", "A", "E")
  ctz-def-line("DC", "D", "C")

  ctz-def-ll("M", "L1", "AE")
  ctz-def-ll("N", "L1", "DC")

  ctz-draw(segment: ("M", "N"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(points: ("A", "B", "C", "D", "E", "M", "N"), labels: (
  A: "left",
  B: "below",
  C: "right",
  D: "above right",
  E: "above left",
  M: "left",
  N: "above right",
  ))
}),
caption: []
) <grafico_corda_poligono>
]

#let grafici_diagonali_corda_poligono = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, align: center + bottom)[#grafico_diagonali_poligono][#grafico_corda_poligono]
]]

#let grafico_parallelogramma1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (3, 3), D:(7, 3),)
  
  ctz-draw(line: ("A", "B", "D", "C", "A"), stroke: accent.mat)

  ctz-def-line("AB", "A", "B")
  ctz-def-perp("P1", "P2", ("A", "B"), "C")
  ctz-def-project("H", "C", "A", "B")
  ctz-draw(segment: ("H", "C"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("A", "H", "C", size: 0.3)


  ctz-draw(points: ("A", "B", "C", "D", ), labels: (
  A: "below left",
  B: "below right",
  C: "above left",
  D: "above right",
  ))
}),
caption: []
) <grafico_parallelogramma1>
]

#let grafico_parallelogramma2 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (3, 3), D:(7, 3),)
  
  ctz-draw(line: ("A", "B", "D", "C", "A"), stroke: accent.mat)

  ctz-def-line("BD", "B", "D")
  ctz-def-perp("P1", "P2", ("B", "D"), "C")
  ctz-def-project("H", "C", "B", "D")
  ctz-draw(segment: ("H", "C"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H", "C", size: 0.3)


  ctz-draw(points: ("A", "B", "C", "D", ), labels: (
  A: "below left",
  B: "below right",
  C: "above left",
  D: "above right",
  ))
}),
caption: []
) <grafico_parallelogramma2>
]

#let grafici_parallelogrammi = [
#align(center)[
  #grid(columns: 2, column-gutter: -1.5em, align: center + bottom)[#grafico_parallelogramma1][#grafico_parallelogramma2]
]]

#let grafico_trapezio_scaleno1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (3, 3), D:(1, 3))
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("A", "D"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat, dash: "dotted")) 

  ctz-def-project("H1", "C", "A", "B")
  ctz-def-perp("P1", "P2", ("A", "B"), "C")
  ctz-draw(segment: ("H1", "C"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H1", "C", size: 0.3)

  ctz-def-project("H2", "D", "A", "B")
  ctz-def-perp("P3", "P4", ("A", "B"), "D")
  ctz-draw(segment: ("H2", "D"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H2", "D", size: 0.3) 

  ctz-draw(points: ("A", "B", "C", "D",), labels: (
  A: "below left",
  B: "below right",
  C: "above right",
  D: "above left",
  ))
}),
caption: []
) <grafico_trapezio_scaleno1>
]

#let grafico_trapezio_scaleno2 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (3, 3), D:(-1, 3))
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("A", "D"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat, dash: "dotted")) 

  ctz-draw-line-add("B", "A", add: (0, .3), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-project("H1", "C", "A", "B")
  ctz-def-perp("P1", "P2", ("A", "B"), "C")
  ctz-draw(segment: ("H1", "C"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H1", "C", size: 0.3)

  ctz-def-project("H2", "D", "A", "B")
  ctz-def-perp("P3", "P4", ("A", "B"), "D")
  ctz-draw(segment: ("H2", "D"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H2", "D", size: 0.3) 

  ctz-draw(points: ("A", "B", "C", "D",), labels: (
  A: "below",
  B: "below right",
  C: "above right",
  D: "above left",
  ))
}),
caption: []
) <grafico_trapezio_scaleno2>
]

#let grafico_trapezio_isoscele = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (6, 0), C: (5, 3), D:(1, 3))
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("A", "D"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat, dash: "dotted")) 

  ctz-def-project("H1", "C", "A", "B")
  ctz-def-perp("P1", "P2", ("A", "B"), "C")
  ctz-draw(segment: ("H1", "C"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H1", "C", size: 0.3)

  ctz-def-project("H2", "D", "A", "B")
  ctz-def-perp("P3", "P4", ("A", "B"), "D")
  ctz-draw(segment: ("H2", "D"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H2", "D", size: 0.3) 

  ctz-draw(points: ("A", "B", "C", "D",), labels: (
  A: "below left",
  B: "below right",
  C: "above right",
  D: "above left",
  ))
}),
caption: []
) <grafico_trapezio_isoscele>
]

#let grafico_trapezio_rettangolo = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (5, 0), C: (3, 3), D:(0, 3))
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("A", "D"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat, dash: "dotted")) 

  ctz-def-project("H1", "C", "A", "B")
  ctz-def-perp("P1", "P2", ("A", "B"), "C")
  ctz-draw(segment: ("H1", "C"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H1", "C", size: 0.3)

  ctz-def-project("H2", "D", "A", "B")
  ctz-def-perp("P3", "P4", ("A", "B"), "D")
  ctz-draw(segment: ("H2", "D"), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-mark-right-angle("B", "H2", "D", size: 0.3) 

  ctz-draw(points: ("A", "B", "C", "D",), labels: (
  A: "below left",
  B: "below right",
  C: "above right",
  D: "above left",
  ))
}),
caption: []
) <grafico_trapezio_rettangolo>
]

#let grafici_trapezi = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 1em, align: center + bottom)[#grafico_trapezio_scaleno1][#grafico_trapezio_scaleno2][#grafico_trapezio_isoscele][#grafico_trapezio_rettangolo]
]]

#let grafico_poligono_concavo1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0.2), C: (2.2, 2.1), D:(2.6, 4), E: (-0.5, 3))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

}),
caption: []
) <grafico_poligono_concavo1>
]

#let grafico_poligono_concavo2 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (1, 0.5), B: (1.5, 2.5), C: (3, 4.5), D:(-1, 4), E: (0.5, 3))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

}),
caption: []
) <grafico_poligono_concavo2>
]

#let grafico_poligono_concavo3 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (1, 4), C: (2, 0.5), D:(2.5, 2), E: (-0.5, 1))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

}),
caption: []
) <grafico_poligono_concavo3>
]

#let grafico_poligono_concavo4 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 1), C: (-1, 3.5), D:(2, 1), E: (4, 4))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

}),
caption: []
) <grafico_poligono_concavo4>
]

#let grafici_poligoni_concavi = [
#align(center)[
  #grid(columns: 4, column-gutter: 0.5em, row-gutter: 1em, align: center + bottom)[#grafico_poligono_concavo1][#grafico_poligono_concavo2][#grafico_poligono_concavo3][#grafico_poligono_concavo4]
]]

#let grafico_angoli_interni_quadrilatero1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (1, 3), D:(-1, 2))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "A", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "C", "A", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

}),
caption: []
) <grafico_angoli_interni_quadrilatero1>
]

#let grafico_angoli_interni_quadrilatero2 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (1, 3), D:(1.5, 1))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "A", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "A", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%), direction: "ccw")

}),
caption: []
) <grafico_angoli_interni_quadrilatero2>
]

#let grafico_angoli_interni_quadrilatero3 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (0.5, 3), D:(4, 2.5))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "A", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%), direction: "cw")
  ctz-draw-angle("D", "A", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%), direction: "ccw")

}),
caption: []
) <grafico_angoli_interni_quadrilatero3>
]

#let grafici_angoli_interni_quadrilatero = [
#align(center)[
  #grid(columns: 3, column-gutter: 1.5em, row-gutter: 1em, align: center + bottom)[#grafico_angoli_interni_quadrilatero1][#grafico_angoli_interni_quadrilatero2][#grafico_angoli_interni_quadrilatero3]
]]

#let grafico_angoli_esterni_quadrilatero1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (1, 3), D:(-1, 2))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-def-linear("Aext", "D", "A", 1.3)
  ctz-def-linear("Bext", "A", "B", 1.3)
  ctz-def-linear("Cext", "B", "C", 1.3)
  ctz-def-linear("Dext", "C", "D", 1.3)

  ctz-draw(segment: ("A", "Aext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "Bext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("C", "Cext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("D", "Dext"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("A", "B", "Aext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "C", "Bext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "D", "Cext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "A", "Dext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

}),
caption: []
) <grafico_angoli_esterni_quadrilatero1>
]

#let grafico_angoli_esterni_quadrilatero2 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (1, 3), D:(1.5, 1))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-def-linear("Aext", "D", "A", 1.3)
  ctz-def-linear("Bext", "A", "B", 1.3)
  ctz-def-linear("Cext", "B", "C", 1.3)
  ctz-def-linear("Dext", "C", "D", 1.3)

  ctz-draw(segment: ("A", "Aext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "Bext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("C", "Cext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("D", "Dext"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("A", "B", "Aext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "C", "Bext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "D", "Cext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "A", "Dext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

}),
caption: []
) <grafico_angoli_esterni_quadrilatero2>
]

#let grafico_angoli_esterni_quadrilatero3 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0), C: (0.5, 3), D:(4, 2.5))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: accent.mat)

  ctz-def-linear("Aext", "D", "A", 1.3)
  ctz-def-linear("Bext", "A", "B", 1.3)
  ctz-def-linear("Cext", "B", "C", 1.3)
  ctz-def-linear("Dext", "C", "D", 1.3)

  ctz-draw(segment: ("A", "Aext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "Bext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("C", "Cext"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("D", "Dext"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("A", "B", "Aext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "C", "Bext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "D", "Cext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "A", "Dext", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

}),
caption: []
) <grafico_angoli_esterni_quadrilatero3>
]

#let grafici_angoli_esterni_quadrilatero = [
#align(center)[
  #grid(columns: 3, column-gutter: 0em, row-gutter: 1em, align: center + bottom)[#grafico_angoli_esterni_quadrilatero1][#grafico_angoli_esterni_quadrilatero2][#grafico_angoli_esterni_quadrilatero3]
]]

#let grafico_angoli_interni_pentagono1 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (3, 0), C: (4, 2), D:(1.5, 3), E: (-0.5, 1.5))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "A", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "C", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("E", "D", "A", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

}),
caption: []
) <grafico_angoli_interni_pentagono1>
]

#let grafico_angoli_interni_pentagono2 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (3, 0), C: (4, 2), D:(1.5, 1), E: (-0.2, 2.5))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "A", "C", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "C", "E", radius: 0.6, direction: "cw", fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("E", "D", "A", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))

}),
caption: []
) <grafico_angoli_interni_pentagono2>
]

#let grafico_angoli_interni_pentagono3 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (-1, 0), B: (0.5, 1), C: (1.7, 0.2), D:(3, 0), E: (0.5, 3))
  ctz-def-midpoint("M", "D", "E")
  ctz-draw-segment("D", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "A", "C", radius: 0.6, direction: "cw", fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "C", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("E", "D", "A", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
}),
caption: []
) <grafico_angoli_interni_pentagono3>
]

#let grafico_angoli_interni_pentagono4 = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0.5, 0), B: (1.5, 1.5), C: (3, 2.5), D:(-1, 3.5), E: (0, 2.5))
  ctz-def-midpoint("M", "E", "A")
  ctz-draw-segment("E", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "A", "C", radius: 0.6, direction: "cw", fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "B", "D", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "C", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("E", "D", "A", radius: 0.6, direction: "cw", fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
}),
caption: []
) <grafico_angoli_interni_pentagono4>
]

#let grafici_angoli_interni_pentagono = [
#align(center)[
  #grid(columns: 4, column-gutter: 0.7em, row-gutter: 1em, align: center + bottom)[#grafico_angoli_interni_pentagono1][#grafico_angoli_interni_pentagono2][#grafico_angoli_interni_pentagono3][#grafico_angoli_interni_pentagono4]
]]

#let grafico_angoli_esagono_intrecciato = [
#figure(
  ctz-canvas(length: 1cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (3, 0.5), C: (1.5, 2.5), D:(-1, 2), E: (4, 1.6), F:(3.5, 3))
  ctz-def-midpoint("M", "A", "B")
  ctz-draw-segment("A", "M", arrows: "->", stroke: accent.mat)
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "F", "A"), stroke: accent.mat)

  ctz-draw-angle("A", "B", "F", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("B", "A", "C", radius: 0.6, direction: "cw", fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("C", "B", "D", radius: 0.5, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("D", "C", "E", radius: 0.6, fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("E", "D", "F", radius: 0.6, direction: "cw", fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
  ctz-draw-angle("F", "E", "A", radius: 0.6, direction: "cw", fill: accent.mat.lighten(80%), stroke: accent.mat.lighten(80%))
}),
caption: []
) <grafico_angoli_esagono_intrecciato>
]

#let grafico_corde1 = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (0, -0.5, 3, 5.5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (1.5, 2.5), R: (3, 0), L1A: (0, 0), L1B: (2,1))
  ctz-def-line("L1", "L1A", "L1B")
  ctz-def-circle("C1", "O", through: "R")
  ctz-draw("C1", stroke: accent.mat.lighten(50%))
  ctz-def-lc(("A", "B"), "L1", "C1")

  ctz-def-mediator("M1", "M2", "A", "B")
  ctz-def-midpoint("M", "A", "B")
  ctz-draw(line: ("A", "B"), stroke: accent.mat)
  ctz-draw(segment: ("M1", "M2"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-mark-right-angle("M1", "M", "B", size: 0.25)
  ctz-draw-mark-segment("A", "M", mark: 1)
  ctz-draw-mark-segment("M", "B", mark: 1)

  ctz-draw(points: ("O", "A", "B"), labels: (
  O: "below",
  A: "below left",
  B: "above right"
  ))

}),
caption: []
) <grafico_corde1>
]

#let grafico_corde2 = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (-2, -0.5, 5, 5.5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (1.5, 2.5), R: (3, 0), L1A: (-1, 0), L1B: (0, 4), L2A: (4, 0), L2B: (3.5, 5))
  ctz-def-line("L1", "L1A", "L1B")
  ctz-def-circle("C1", "O", through: "R")
  ctz-draw("C1", stroke: accent.mat.lighten(50%))
  ctz-def-lc(("A", "B"), "L1", "C1")

  ctz-def-mediator("M1", "M2", "A", "B")
  ctz-def-midpoint("MAB", "A", "B")
  ctz-draw(line: ("A", "B"), stroke: accent.mat)
  ctz-draw(segment: ("O", "M1"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-mark-right-angle("M2", "MAB", "B", size: 0.25)
  ctz-draw-mark-segment("A", "MAB", mark: 1)
  ctz-draw-mark-segment("MAB", "B", mark: 1)

  //
  ctz-def-line("L2", "L2A", "L2B")
  ctz-def-lc(("C", "D"), "L2", "C1")

  ctz-def-mediator("M3", "M4", "C", "D")
  ctz-def-midpoint("MCD", "C", "D")
  ctz-draw(line: ("C", "D"), stroke: accent.mat)
  ctz-draw(segment: ("O", "M4"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-mark-right-angle("M3", "MCD", "C", size: 0.25)
  ctz-draw-mark-segment("D", "MCD", mark: 2)
  ctz-draw-mark-segment("MCD", "C", mark: 2)

  ctz-draw-mark-segment("O", "MAB", mark: 3)
  ctz-draw-mark-segment("O", "MCD", mark: 3)

  ctz-draw(points: ("O", "A", "B", "C", "D"), labels: (
  O: "below",
  A: "below left",
  B: "above left",
  C: "below right",
  D: "above right",
  ))

}),
caption: []
) <grafico_corde2>
]

#let grafici_corde = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 1em, align: center + bottom)[#grafico_corde1][#grafico_corde2]
]]

#let grafico_retta_circonferenza1 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3.5, -1, 5, 6), {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (1.5, 2.5), R: (3, 0), L1A: (-3, 0), L1B: (-2, 4))
  ctz-def-circle("C1", "O", through: "R")
  ctz-draw("C1", stroke: accent.mat)
  ctz-draw-line-add("L1A", "L1B", stroke: accent.mat.lighten(50%), add: (2, 2))

  /* ctz-show-clip(stroke:gray) */
  ctz-draw(points: ("O",), labels: (
  O: "below",
  ))
}),
caption: []
) <grafico_retta_circonferenza1>
]

#let grafico_retta_circonferenza2 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-2.5, -1, 5, 6), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (1.5, 2.5), P:(-1.5, 2))

  ctz-def-circle("C1", "O", through: "P")
  ctz-draw("C1", stroke: accent.mat)
  ctz-draw(segment: ("O", "P"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-def-tangent-at("Tg1", "Tg2", "P", "O")

  ctz-draw-line-add("Tg1", "Tg2", add: (2, 2), stroke:
  accent.mat.lighten(50%))

  /* ctz-show-clip(stroke:gray) */
  ctz-draw(points: ("O", "P"), labels: (
  O: "above",
  P: "left",
  ))
}),
caption: []
) <grafico_retta_circonferenza2>
]

#let grafico_retta_circonferenza3 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-1.5, -1, 5, 6), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (1.5, 2.5), R: (3, 0), L1A: (3, 0), L1B: (2.5, 4))
  ctz-def-circle("C1", "O", through: "R")
  ctz-def-line("L1", "L1A", "L1B")
  ctz-def-lc(("B", "A"), "L1", "C1")

  ctz-draw("C1", stroke: accent.mat)
  ctz-draw-line-add("L1A", "L1B", stroke: accent.mat.lighten(50%), add: (2, 2))

  /* ctz-show-clip(stroke:gray) */
  ctz-draw(points: ("O", "A", "B"), labels: (
  O: "below",
  A: "below left",
  B: "above left",
  ))
}),
caption: []
) <grafico_retta_circonferenza3>
]

#let grafici_retta_circonferenza = [
#align(center)[
  #grid(columns: 3, column-gutter: 1.5em, row-gutter: 1em, align: center + bottom)[#grafico_retta_circonferenza1][#grafico_retta_circonferenza2][#grafico_retta_circonferenza3]
]]

#let grafico_parti_circonferenza1 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -1, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 150)
  ctz-def-rotation("B", "R", "O", 30)

  ctz-draw-angle("O", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))

  ctz-draw(segment: ("A", "O"), stroke: accent.mat)
  ctz-draw(segment: ("B", "O"), stroke: accent.mat)
  ctz-draw-line-add("O", "A", add: (0, 1), stroke:
  accent.mat)
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:
  accent.mat)
  

  ctz-draw(points: ("O", "A", "B"), labels: (
  O: "below",
  A: "below left",
  B: "below right"
  ))

}),
caption: []
) <grafico_parti_circonferenza1>
]

#let grafico_parti_circonferenza2 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -1, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 150)
  ctz-def-rotation("B", "R", "O", 30)

  ctz-draw-arc("O", "B", "A", stroke: accent.mat)


  ctz-draw(segment: ("A", "O"), stroke: accent.mat.lighten(75%))
  ctz-draw(segment: ("B", "O"), stroke: accent.mat.lighten(75%))
  ctz-draw-line-add("O", "A", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  

  ctz-draw(points: ("O", "A", "B"), labels: (
  O: "below",
  A: "below left",
  B: "below right"
  ))

}),
caption: []
) <grafico_parti_circonferenza2>
]

#let grafico_parti_circonferenza3 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -1, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 150)
  ctz-def-rotation("B", "R", "O", 30)

  ctz-draw(segment: ("A", "B"), stroke: accent.mat)


  ctz-draw(segment: ("A", "O"), stroke: accent.mat.lighten(75%))
  ctz-draw(segment: ("B", "O"), stroke: accent.mat.lighten(75%))
  ctz-draw-line-add("O", "A", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  

  ctz-draw(points: ("O", "A", "B"), labels: (
  O: "below",
  A: "below left",
  B: "below right"
  ))

}),
caption: []
) <grafico_parti_circonferenza3>
]

#let grafico_parti_circonferenza4 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -1, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  

  ctz-def-rotation("A", "R", "O", 150)
  ctz-def-rotation("B", "R", "O", 30)

  ctz-draw-line-add("O", "A", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  
  ctz-draw-sector("O", "B", "A", stroke: accent.mat, fill: accent.mat.lighten(75%))
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))
  
  ctz-draw-arc("O", "B", "A", stroke: accent.mat)
  ctz-draw(segment: ("A", "O"), stroke: accent.mat)
  ctz-draw(segment: ("B", "O"), stroke: accent.mat)
  
  

  ctz-draw(points: ("O", "A", "B"), labels: (
  O: "below",
  A: "below left",
  B: "below right"
  ))

}),
caption: []
) <grafico_parti_circonferenza4>
]

#let grafico_parti_circonferenza5 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -1, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 150)
  ctz-def-rotation("B", "R", "O", 30)
  ctz-def-polygon("Trng", "A", "O", "B")

  ctz-draw-sector("O", "B", "A", stroke: accent.mat, fill: accent.mat.lighten(75%))
  ctz-draw-polygon("Trng", fill: white)
  ctz-draw-arc("O", "B", "A", stroke: accent.mat)
  ctz-draw(segment: ("A", "B"), stroke: accent.mat)


  ctz-draw(segment: ("A", "O"), stroke: accent.mat.lighten(75%))
  ctz-draw(segment: ("B", "O"), stroke: accent.mat.lighten(75%))
  ctz-draw-line-add("O", "A", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  

  ctz-draw(points: ("O", "A", "B"), labels: (
  O: "below",
  A: "below left",
  B: "below right"
  ))

}),
caption: []
) <grafico_parti_circonferenza5>
]

#let grafico_parti_circonferenza6 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -1, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0),)
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 150)
  ctz-def-rotation("B", "R", "O", 30)

  ctz-draw(segment: ("A", "O"), stroke: accent.mat.lighten(75%))
  ctz-draw(segment: ("B", "O"), stroke: accent.mat.lighten(75%))

  ctz-def-line("L1", (-1, -1), (2, -1))
  ctz-def-circle("C1", "O", radius: 3)
  ctz-def-lc(("D", "E"), "L1", "C1")
  ctz-def-polygon("Trng", "A", "O", "B")
  ctz-def-polygon("Trng2", "D", "O", "E")

  /* arc(anchor: "origin", "O", start: 200deg, stop: -20deg, radius: 3, stroke: accent.mat, fill: accent.mat.lighten(75%), mode: "CLOSE") // TODO: la funzione di cetz-euclide non funziona; v. 0.1.5 */

  //ctz-draw-sector("O", "B", "A", stroke: white, fill: white)
  //ctz-draw-sector("O", "D", "E", stroke: white, fill: white)

  //ctz-draw-polygon("Trng", stroke: accent.mat.lighten(75%), fill: accent.mat.lighten(75%))
  //ctz-draw-polygon("Trng2", stroke: accent.mat.lighten(75%), fill: accent.mat.lighten(75%))
   
  ctz-draw-line-add("O", "A", add: (0, 1), stroke:  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "E", add: (0, 1), stroke:  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "D", add: (0, 1), stroke:  accent.mat.lighten(75%))
  arc(anchor: "origin", "O", start: 200deg, stop: -20deg, radius: 3, stroke: accent.mat, fill: accent.mat.lighten(75%), mode: "CLOSE") // TODO: la funzione di cetz-euclide non funziona; v. 0.2.0

  arc(anchor: "origin", "O", start: 150deg, stop: 30deg, radius: 3, stroke: white, fill: white, mode: "CLOSE") // TODO: la funzione di cetz-euclide non funziona; v. 0.2.0
  

  
  ctz-draw(segment: ("A", "B"), stroke: accent.mat)
  /* ctz-draw(segment: ("D", "E"), stroke: accent.mat) */

  // ctz-draw-arc("O", "E", "B", stroke: accent.mat)
  //ctz-draw-arc("O", "A", "D", stroke: accent.mat)

  ctz-draw(points: ("O", "A", "B", "D", "E"), labels: (
  O: "below",
  A: "left",
  B: "right",
  D: "left",
  E: "right"
  ))

}),
caption: []
) <grafico_parti_circonferenza6>
]

#let grafici_parti_circonferenza = [
#align(center)[
  #grid(columns: 3, column-gutter: 0.5em, row-gutter: 1em, align: center + bottom)[#grafico_parti_circonferenza1][#grafico_parti_circonferenza2][#grafico_parti_circonferenza3][#grafico_parti_circonferenza4][#grafico_parti_circonferenza5][#grafico_parti_circonferenza6]
]]

#let grafico_angoli_circonferenza1 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -4, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 250)
  ctz-def-rotation("B", "R", "O", -30)
  ctz-def-rotation("C", "R", "O", 120)

  ctz-draw-angle("O", "A", "B", radius: 1.2, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%))
  ctz-draw-angle("C", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))

  ctz-draw(segment: ("A", "O"), stroke: accent.mat)
  ctz-draw(segment: ("B", "O"), stroke: accent.mat)
  ctz-draw-line-add("O", "A", add: (0, 1), stroke:
  accent.mat)
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:
  accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: accent.mat.lighten(30%))
  ctz-draw(segment: ("B", "C"), stroke: accent.mat.lighten(30%))
  ctz-draw-line-add("C", "A", add: (0, 1), stroke:
  accent.mat.lighten(30%))
  ctz-draw-line-add("C", "B", add: (0, 1), stroke:
  accent.mat.lighten(30%))
  
  ctz-draw(points: ("O", "A", "B", "C"), labels: (
  O: "above",
  A: "below left",
  B: "above right",
  C: "above"
  ))

}),
caption: []
) <grafico_angoli_circonferenza1>
]

#let grafico_angoli_circonferenza2 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -4, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), S: (3, 3.5))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("Q", "R", "O", -30)
  ctz-def-rotation("P", "R", "O", 100)
  ctz-def-rotation("C", "R", "O", 100)

  ctz-draw-angle("O", "Q", "P", radius: 1.2, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%))
  ctz-draw-angle("P", "Q", "S", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))

  ctz-draw(segment: ("Q", "O"), stroke: accent.mat)
  ctz-draw(segment: ("P", "O"), stroke: accent.mat)
  ctz-draw-line-add("O", "Q", add: (0, 1), stroke:
  accent.mat)
  ctz-draw-line-add("O", "P", add: (0, 1), stroke:
  accent.mat)

  ctz-draw(segment: ("Q", "P"), stroke: accent.mat.lighten(30%))
  ctz-draw(segment: ("P", "S"), stroke: accent.mat.lighten(30%))
  ctz-draw-line-add("P", "Q", add: (0, 1), stroke:
  accent.mat.lighten(30%))
  ctz-draw-line-add("P", "S", add: (0, 1), stroke:
  accent.mat.lighten(30%))
  
  ctz-draw(points: ("O", "Q", "P",), labels: (
  O: "below left",
  P: "above left",
  Q: "above right",
  ))

}),
caption: []
) <grafico_angoli_circonferenza2>
]

#let grafico_angoli_circonferenza3 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 190)
  ctz-def-rotation("B", "R", "O", -40)
  ctz-def-rotation("C", "R", "O", 150)
  ctz-def-rotation("D", "R", "O", 120)
  ctz-def-rotation("E", "R", "O", 80)
  ctz-def-rotation("F", "R", "O", 50)
  ctz-def-rotation("G", "R", "O", 30)
  ctz-def-rotation("H", "R", "O", 200)

  ctz-draw-angle("O", "A", "B", radius: 1.2, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%))
  ctz-draw-angle("C", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))
  /* ctz-draw-angle("D", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%)) */
  ctz-draw-angle("E", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))
  /* ctz-draw-angle("F", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%)) */
  ctz-draw-angle("G", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))
  ctz-draw-angle("A", "H", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))

  ctz-draw(segment: ("A", "O"), stroke: accent.mat)
  ctz-draw(segment: ("B", "O"), stroke: accent.mat)
  ctz-draw-line-add("O", "A", add: (0, 1), stroke:
  accent.mat)
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:
  accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "C"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("C", "A", add: (0, 2), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("C", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%))

  /* ctz-draw(segment: ("A", "D"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "D"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("D", "A", add: (0, 1), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("D", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%)) */

  ctz-draw(segment: ("A", "E"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "E"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("E", "A", add: (0, 1), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("E", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%))

  /* ctz-draw(segment: ("A", "F"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "F"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("F", "A", add: (0, 1), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("F", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%)) */

  ctz-draw(segment: ("A", "G"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "G"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("G", "A", add: (0, 1), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("G", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%))

  ctz-draw(segment: ("A", "G"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "G"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("G", "A", add: (0, 1), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("G", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%))

  ctz-draw(segment: ("A", "H"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "A"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("A", "H", add: (0, 5), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("A", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%))
  
  ctz-draw(points: ("O", ), labels: (
  O: "above",
  ))

}),
caption: []
) <grafico_angoli_circonferenza3>
]

#let grafico_angoli_circonferenza4 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), V:(1, 1), W:(2, 2))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 185)
  ctz-def-rotation("B", "R", "O", -15)
  ctz-def-rotation("C", "R", "O", 220)
  ctz-def-rotation("D", "R", "O", 290)

  // Angolo in B, costruito con intersezione fra punto E e retta incidente casuale
  ctz-def-rotation("E", "A", "B", 82)
  ctz-def-line("L1", "B", "E")
  ctz-def-line("L2", "W", "V")
  ctz-def-ll("Y", "L1", "L2")
  ctz-draw-angle("B", "O", "Y", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))

  ctz-draw-angle("O", "A", "B", radius: 1.2, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%), direction: "cw")
  ctz-draw-angle("C", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))
  ctz-draw-angle("D", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))

  ctz-draw(segment: ("A", "O"), stroke: accent.mat)
  ctz-draw(segment: ("B", "O"), stroke: accent.mat)
  ctz-draw-line-add("O", "A", add: (0, 1), stroke:
  accent.mat)
  ctz-draw-line-add("O", "B", add: (0, 1), stroke:
  accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "C"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("C", "A", add: (0, 5), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("C", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%))

  ctz-draw(segment: ("A", "D"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "D"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("D", "A", add: (0, 1), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("D", "B", add: (0, 1), stroke:
  accent.mat.lighten(60%))

  ctz-draw(segment: ("A", "B"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "E"), stroke: accent.mat.lighten(60%))
  ctz-draw-line-add("B", "A", add: (0, 1), stroke:
  accent.mat.lighten(60%))
  ctz-draw-line-add("E", "B", add: (0, 10), stroke:
  accent.mat.lighten(60%))

  ctz-draw(points: ("O", ), labels: (
  O: "below",
  ))

}),
caption: []
) <grafico_angoli_circonferenza4>
]

#let grafici_angoli_circonferenza = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_angoli_circonferenza1][#grafico_angoli_circonferenza2][#grafico_angoli_circonferenza3][#grafico_angoli_circonferenza4]
]]

#let grafico_due_circonferenze1 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3.5, -3, 7.7, 3), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O1: (0, 0), L1A: (3, 3), L1B: (3, -6), O2: (5.5, 0))
  ctz-def-circle("C1", "O1", radius: 3)
  ctz-draw("C1", stroke: accent.mat)
  ctz-def-circle("C2", "O2", radius: 2)
  ctz-draw("C2", stroke: accent.mat)

  /* ctz-draw-line-add("L1A", "L1B", stroke: accent.mat.lighten(50%), add: (2, 2)) */
  ctz-draw(segment: ("O1", "O2"), stroke: accent.mat.lighten(60%))

  ctz-draw(points: ("O1", "O2"))
}),
caption: []
) <grafico_due_circonferenze1>
]

#let grafico_due_circonferenze2 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3.5, -3, 7.2, 3), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O1: (0, 0), L1A: (3, 3), L1B: (3, -6), O2: (5, 0))
  ctz-def-circle("C1", "O1", radius: 3)
  ctz-draw("C1", stroke: accent.mat)
  ctz-def-circle("C2", "O2", radius: 2)
  ctz-draw("C2", stroke: accent.mat)

  ctz-draw-line-add("L1A", "L1B", stroke: accent.mat.lighten(50%), add: (2, 2))
  ctz-draw(segment: ("O1", "O2"), stroke: accent.mat.lighten(60%))

  ctz-def-cc(("I1", "I2"), "C1", "C2")
  ctz-draw-mark-right-angle("O1", "I1", "L1A", size: 0.25)

  ctz-draw(points: ("O1", "O2"))
}),
caption: []
) <grafico_due_circonferenze2>
]

#let grafico_due_circonferenze3 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3.5, -3, 6.5, 3), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O1: (0, 0), L1A: (3, 3), L1B: (3, -6), O2: (4, 0))

  ctz-def-circle("C1", "O1", radius: 3)
  ctz-draw("C1", stroke: accent.mat)
  ctz-def-circle("C2", "O2", radius: 2)
  ctz-draw("C2", stroke: accent.mat)
  ctz-def-cc(("I1", "I2"), "C1", "C2")

  ctz-draw-line-add("I1", "I2", stroke: accent.mat.lighten(50%), add: (2, 2))
  ctz-draw(segment: ("O1", "O2"), stroke: accent.mat.lighten(60%))

  ctz-def-line("L1", "O1", "O2")
  ctz-def-line("L2", "I1", "I2")
  ctz-def-ll("I3", "L1", "L2")

  ctz-draw-mark-right-angle("O1", "I3", "I1", size: 0.25)

  ctz-draw(points: ("O1", "O2"))
}),
caption: []
) <grafico_due_circonferenze3>
]

#let grafico_due_circonferenze4 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3.5, -3, 3.5, 3), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O1: (0, 0), L1A: (3, 3), L1B: (3, -6), O2: (2, 0))
  ctz-def-circle("C1", "O1", radius: 3)
  ctz-draw("C1", stroke: accent.mat)
  ctz-def-circle("C2", "O2", radius: 1)
  ctz-draw("C2", stroke: accent.mat)

  ctz-draw-line-add("L1A", "L1B", stroke: accent.mat.lighten(50%), add: (2, 2))
  ctz-draw(segment: ("O1", "O2"), stroke: accent.mat.lighten(60%))

  ctz-draw(points: ("O1", "O2"))
}),
caption: []
) <grafico_due_circonferenze4>
]

#let grafico_due_circonferenze5 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3.5, -3, 3.5, 3), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O1: (0, 0), L1A: (3, 3), L1B: (3, -6), O2: (1.5, 0))
  ctz-def-circle("C1", "O1", radius: 3)
  ctz-draw("C1", stroke: accent.mat)
  ctz-def-circle("C2", "O2", radius: 1)
  ctz-draw("C2", stroke: accent.mat)

  /* ctz-draw-line-add("L1A", "L1B", stroke: accent.mat.lighten(50%), add: (2, 2)) */
  ctz-draw(segment: ("O1", "O2"), stroke: accent.mat.lighten(60%))

  ctz-draw(points: ("O1", "O2"))
}),
caption: []
) <grafico_due_circonferenze5>
]

#let grafico_due_circonferenze6 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3.5, -3, 3.5, 3), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O1: (0, 0), L1A: (3, 3), L1B: (3, -6), O2: (0, 0))
  ctz-def-circle("C1", "O1", radius: 3)
  ctz-draw("C1", stroke: accent.mat, fill: accent.mat.lighten(75%))
  ctz-def-circle("C2", "O2", radius: 2)
  ctz-draw("C2", stroke: accent.mat, fill: accent.mat.lighten(95%))

  /* ctz-draw-line-add("L1A", "L1B", stroke: accent.mat.lighten(50%), add: (2, 2)) */
  ctz-draw(segment: ("O1", "O2"), stroke: accent.mat.lighten(60%))

  ctz-draw(points: ("O1", "O2"))
}),
caption: []
) <grafico_due_circonferenze6>
]

#let grafici_due_circonferenze = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_due_circonferenze1][#grafico_due_circonferenze2][#grafico_due_circonferenze3][#grafico_due_circonferenze4][#grafico_due_circonferenze5][#grafico_due_circonferenze6] 
]]

#let grafico_tangenti_circonferenza = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-9, -4, 6.5, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R:(2, 0), )
  ctz-def-rotation("A", "R", "O", 106)
  ctz-def-rotation("B", "R", "O", -106)
  ctz-def-tangent-at("TgM1", "TgM2", "A", "O")
  ctz-def-tangent-at("TgN1", "TgN2", "B", "O")

  ctz-def-circle("Crf", "O", through: "R")
  ctz-draw("Crf", stroke: accent.mat)

  ctz-def-line("Tg1", "TgM1", "TgM2")
  ctz-def-line("Tg2", "TgN1", "TgN2")
  ctz-def-ll("P", "Tg1", "Tg2")
  ctz-draw-line-add("TgM1", "TgM2", stroke: accent.mat.lighten(20%), add: (2, 2))
  ctz-draw-line-add("TgN1", "TgN2", stroke: accent.mat.lighten(20%), add: (2, 2))

  ctz-draw-line-add("P", "O", stroke: (dash: "dashed", paint: accent.mat.lighten(50%)), add: (2, 3))
  ctz-draw(segment: ("A", "B"), stroke: (dash: "dashed", paint: accent.mat.lighten(50%)))

  ctz-def-ll("I", ("P", "O"), ("A", "B"))
  ctz-draw-mark-right-angle("P", "I", "A", size: 0.25)


  ctz-draw(points: ("O", "A", "B", "P"), labels: (
  O: "above",
  A: "above",
  B: "below",
  P: "above"
  ))

}),
caption: []
) <grafico_tangenti_circonferenza>
]

#let grafico_poligoni_inscritti_circoscritti1 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", -70)
  ctz-def-rotation("B", "R", "O", 220)
  ctz-def-rotation("C", "R", "O", 180)
  ctz-def-rotation("D", "R", "O", 130)
  ctz-def-rotation("E", "R", "O", 80)
  ctz-def-rotation("F", "R", "O", 30)
  ctz-def-rotation("G", "R", "O", -10)
  ctz-def-rotation("H", "R", "O", 200)

  ctz-draw(line: ("A", "B", "C", "D", "E", "F", "G", "A"), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_inscritti_circoscritti1>
]

#let grafico_poligoni_inscritti_circoscritti2 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -4.2, 4.7, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", -70)
  ctz-def-rotation("B", "R", "O", 220)
  ctz-def-rotation("C", "R", "O", 170)
  ctz-def-rotation("D", "R", "O", 95)
  ctz-def-rotation("E", "R", "O", 20)

  ctz-def-perp("AP1", "AP2", ("O", "A"), "A")  
  ctz-def-perp("BP1", "BP2", ("O", "B"), "B")
  ctz-def-perp("CP1", "CP2", ("O", "C"), "C")
  ctz-def-perp("DP1", "DP2", ("O", "D"), "D")
  ctz-def-perp("EP1", "EP2", ("O", "E"), "E")

  ctz-def-ll("I1", ("AP1", "AP2"), ("BP1", "BP2"))
  ctz-def-ll("I2", ("BP1", "BP2"), ("CP1", "CP2"))
  ctz-def-ll("I3", ("CP1", "CP2"), ("DP1", "DP2"))
  ctz-def-ll("I4", ("DP1", "DP2"), ("EP1", "EP2"))
  ctz-def-ll("I5", ("EP1", "EP2"), ("AP1", "AP2"))

  ctz-draw(line: ("I1", "I2", "I3", "I4", "I5", "I1"), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_inscritti_circoscritti2>
]

#let grafico_poligoni_inscritti_circoscritti3 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", -70)
  ctz-def-rotation("B", "R", "O", 230)
  ctz-def-rotation("C", "R", "O", 160)
  ctz-def-rotation("D", "R", "O", 130)
  ctz-def-rotation("E", "R", "O", 70)
  ctz-def-rotation("F", "R", "O", 30)
  ctz-def-rotation("G", "R", "O", -10)
  ctz-def-rotation("H", "R", "O", 200)

  ctz-draw(line: ("A", "C", "B", "E", "D", "F", "G", "A"), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_inscritti_circoscritti3>
]

#let grafico_poligoni_inscritti_circoscritti4 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -4.2, 4.7, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (1, 0))
  ctz-draw(circle-r: (_pt("O"), 1), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", -60)
  ctz-def-rotation("B", "R", "O", 220)
  ctz-def-rotation("C", "R", "O", 150)
  ctz-def-rotation("D", "R", "O", 92)
  ctz-def-rotation("E", "R", "O", 10)

  ctz-def-perp("AP1", "AP2", ("O", "A"), "A")  
  ctz-def-perp("BP1", "BP2", ("O", "B"), "B")
  ctz-def-perp("CP1", "CP2", ("O", "C"), "C")
  ctz-def-perp("DP1", "DP2", ("O", "D"), "D")
  ctz-def-perp("EP1", "EP2", ("O", "E"), "E")

  ctz-def-ll("I1", ("AP1", "AP2"), ("BP1", "BP2"))
  ctz-def-ll("I2", ("BP1", "BP2"), ("CP1", "CP2"))
  ctz-def-ll("I3", ("CP1", "CP2"), ("DP1", "DP2"))
  ctz-def-ll("I4", ("DP1", "DP2"), ("EP1", "EP2"))
  ctz-def-ll("I5", ("EP1", "EP2"), ("AP1", "AP2"))

  ctz-def-ll("J1", ("I1", "I2"), ("I4", "I5"))
  ctz-def-ll("J2", ("I1", "I5"), ("I3", "I4"))
  ctz-def-ll("J3", ("I5", "I4"), ("I2", "I3"))
  ctz-def-ll("J4", ("I3", "I4"), ("I2", "I1"))
  ctz-def-ll("J5", ("I3", "I2"), ("I5", "I1"))

  ctz-draw(line: ("I1", "I2", "I3", "I4", "I5", "I1"), stroke: accent.mat.lighten(50%))
  ctz-draw(line: ("J1", "J3", "J5", "J2", "J4", "J1"), stroke: accent.mat)

  /* ctz-draw(points: ("A", "B", "C", "D", "E", "I1", "I2", "I3", "I4", "I5", "I1", "J1", "J2", "J3", "J4", "J5"), labels: (
  A: "above",
  )) */

}),
caption: []
) <grafico_poligoni_inscritti_circoscritti4>
]

#let grafici_poligoni_inscritti_circoscritti = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_poligoni_inscritti_circoscritti1][#grafico_poligoni_inscritti_circoscritti2][#grafico_poligoni_inscritti_circoscritti3][#grafico_poligoni_inscritti_circoscritti4]
]]

#let grafico_triangolo_excentro = [
#figure(
  ctz-canvas(length: 0.8cm, clip-canvas: (-0.5, -1.0,
8, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (0, 0),
    B: (5, 0),
    C: (3, 2)
  )
    
  // Triangolo
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)

  // Intersezioni con retta verticale (6, 0), (6, 3)
  ctz-def-ll("BX", ("A", "B"), ((6, 0), (6, 3)))
  ctz-def-ll("CX", ("A", "C"), ((6, 0), (6, 3)))
  ctz-draw-line-add("B", "BX", add:(0, 4), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("C", "CX", add:(0, 4), stroke: (paint: accent.mat, dash: "dashed"))

  // Punti bisettrici
  ctz-def-bisect("A1", "A2", "C", "A", "B")
  ctz-draw-segment("A1", "A2", stroke: (paint: accent.mat.lighten(75%), dash: "dashed"))
  ctz-def-bisect("B1", "B2", "C", "B", "BX")
  ctz-draw-segment("B1", "B2", stroke: (paint: accent.mat.lighten(75%), dash: "dashed"))
  ctz-def-bisect("C1", "C2",  "CX", "C","B")
  ctz-draw-segment("C1", "C2", stroke: (paint: accent.mat.lighten(75%), dash: "dashed"))

  // Circonferenza ex-scritta, con centro E (intersezione bisettrici), raggio EH (H è proiezione di E su CX)
  ctz-def-ll("E", ("A1", "A2"), ("B1", "B2"),)
  ctz-def-project("H", "E", "C", "CX")
  ctz-draw(circle-through: ("E", "H"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("A", "C", "E", radius: 0.7, fill: accent.mat.lighten(90%), stroke: accent.mat.lighten(90%))
  ctz-draw-angle("A", "B", "E", radius: 0.7, fill: accent.mat.lighten(90%), stroke: accent.mat.lighten(90%))
  ctz-draw-angle("B", "C", "E", radius: 0.7, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))
  ctz-draw-angle("B", "BX", "E", radius: 0.7, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%)) 
  ctz-draw-angle("C", "H", "E", radius: 0.7, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%))
  ctz-draw-angle("C", "B", "E", radius: 0.7, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%)) 
  
  
  // Punti ed etichette
  ctz-draw(
    points: ("A", "B", "C", "E",), 
    labels: (
      A: "below", 
      B: "below", 
      C: "above", 
      E: "above", 
    )
  )

  }),
caption: []
) <grafico_triangolo_excentro>
]

#let grafico_poligoni_regolari_circonferenza1 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  let n = 3

  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  let step = 360 / n
  let vert = range(n).map(i => "V" + str(i))
  let p_tan = range(n).map(i => "H" + str(i))


  for i in range(n) {
    ctz-def-rotation(vert.at(i), "R", "O", i * step)
  }

  for i in range(n) {
    let next_i = if i == n - 1 { 0 } else { i + 1 }
    ctz-def-midpoint(p_tan.at(i), vert.at(i), vert.at(next_i))
  }

  ctz-def-midpoint("H", vert.at(0), vert.at(1))
  ctz-draw(segment: ("O", "H"), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))

  ctz-draw(circle-through: ("O", p_tan.at(0)), stroke: (paint: accent.mat.lighten(75%)))

  ctz-draw(line: (..p_tan, p_tan.at(0)), stroke: accent.mat.lighten(50%))
  ctz-draw(line: (..vert, vert.at(0)), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_regolari_circonferenza1>
]

#let grafico_poligoni_regolari_circonferenza2 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  let n = 4

  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  let step = 360 / n
  let vert = range(n).map(i => "V" + str(i))
  let p_tan = range(n).map(i => "H" + str(i))


  for i in range(n) {
    ctz-def-rotation(vert.at(i), "R", "O", i * step)
  }

  for i in range(n) {
    let next_i = if i == n - 1 { 0 } else { i + 1 }
    ctz-def-midpoint(p_tan.at(i), vert.at(i), vert.at(next_i))
  }

  ctz-def-midpoint("H", vert.at(0), vert.at(1))
  ctz-draw(segment: ("O", "H"), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))

  ctz-draw(circle-through: ("O", p_tan.at(0)), stroke: (paint: accent.mat.lighten(75%)))

  ctz-draw(line: (..p_tan, p_tan.at(0)), stroke: accent.mat.lighten(50%))
  ctz-draw(line: (..vert, vert.at(0)), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_regolari_circonferenza2>
]

#let grafico_poligoni_regolari_circonferenza3 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  let n = 5

  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  let step = 360 / n
  let vert = range(n).map(i => "V" + str(i))
  let p_tan = range(n).map(i => "H" + str(i))


  for i in range(n) {
    ctz-def-rotation(vert.at(i), "R", "O", i * step)
  }

  for i in range(n) {
    let next_i = if i == n - 1 { 0 } else { i + 1 }
    ctz-def-midpoint(p_tan.at(i), vert.at(i), vert.at(next_i))
  }

  ctz-def-midpoint("H", vert.at(0), vert.at(1))
  ctz-draw(segment: ("O", "H"), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))

  ctz-draw(circle-through: ("O", p_tan.at(0)), stroke: (paint: accent.mat.lighten(75%)))

  ctz-draw(line: (..p_tan, p_tan.at(0)), stroke: accent.mat.lighten(50%))
  ctz-draw(line: (..vert, vert.at(0)), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_regolari_circonferenza3>
]

#let grafico_poligoni_regolari_circonferenza4 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  let n = 6

  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  let step = 360 / n
  let vert = range(n).map(i => "V" + str(i))
  let p_tan = range(n).map(i => "H" + str(i))


  for i in range(n) {
    ctz-def-rotation(vert.at(i), "R", "O", i * step)
  }

  for i in range(n) {
    let next_i = if i == n - 1 { 0 } else { i + 1 }
    ctz-def-midpoint(p_tan.at(i), vert.at(i), vert.at(next_i))
  }

  ctz-def-midpoint("H", vert.at(0), vert.at(1))
  ctz-draw(segment: ("O", "H"), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))

  ctz-draw(circle-through: ("O", p_tan.at(0)), stroke: (paint: accent.mat.lighten(75%)))

  ctz-draw(line: (..p_tan, p_tan.at(0)), stroke: accent.mat.lighten(50%))
  ctz-draw(line: (..vert, vert.at(0)), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_regolari_circonferenza4>
]

#let grafico_poligoni_regolari_circonferenza5 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  let n = 8

  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  let step = 360 / n
  let vert = range(n).map(i => "V" + str(i))
  let p_tan = range(n).map(i => "H" + str(i))


  for i in range(n) {
    ctz-def-rotation(vert.at(i), "R", "O", i * step)
  }

  for i in range(n) {
    let next_i = if i == n - 1 { 0 } else { i + 1 }
    ctz-def-midpoint(p_tan.at(i), vert.at(i), vert.at(next_i))
  }

  ctz-def-midpoint("H", vert.at(0), vert.at(1))
  ctz-draw(segment: ("O", "H"), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))

  ctz-draw(circle-through: ("O", p_tan.at(0)), stroke: (paint: accent.mat.lighten(75%)))

  ctz-draw(line: (..p_tan, p_tan.at(0)), stroke: accent.mat.lighten(50%))
  ctz-draw(line: (..vert, vert.at(0)), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_regolari_circonferenza5>
]

#let grafico_poligoni_regolari_circonferenza6 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  let n = 10

  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  let step = 360 / n
  let vert = range(n).map(i => "V" + str(i))
  let p_tan = range(n).map(i => "H" + str(i))


  for i in range(n) {
    ctz-def-rotation(vert.at(i), "R", "O", i * step)
  }

  for i in range(n) {
    let next_i = if i == n - 1 { 0 } else { i + 1 }
    ctz-def-midpoint(p_tan.at(i), vert.at(i), vert.at(next_i))
  }

  ctz-def-midpoint("H", vert.at(0), vert.at(1))
  ctz-draw(segment: ("O", "H"), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))

  ctz-draw(circle-through: ("O", p_tan.at(0)), stroke: (paint: accent.mat.lighten(75%)))

  ctz-draw(line: (..p_tan, p_tan.at(0)), stroke: accent.mat.lighten(50%))
  ctz-draw(line: (..vert, vert.at(0)), stroke: accent.mat)

}),
caption: []
) <grafico_poligoni_regolari_circonferenza6>
]

#let grafici_poligoni_regolari_circonferenza = [
#align(center)[
  #grid(columns: 3, column-gutter: 1.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_poligoni_regolari_circonferenza1][#grafico_poligoni_regolari_circonferenza2][#grafico_poligoni_regolari_circonferenza3][#grafico_poligoni_regolari_circonferenza4][#grafico_poligoni_regolari_circonferenza5][#grafico_poligoni_regolari_circonferenza6]
]]

#let grafico_riduzione_poligono1 = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (-1, -1, 6.5, 5), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke: gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))

  ctz-def-points(E: (0, 0), D: (4, 0), C: (5, 2.1), B:(2.6, 4), A: (-0.5, 2.5))
  
  ctz-draw(line: ("A", "B", "C", "D", "E", "A"), stroke: accent.mat)

  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line-add("D", "C", add: (0, 2), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-def-para("P1", "P2", ("A", "C"), "B")
  ctz-draw-line-add("P1", "P2", add: (2, 2), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-def-ll("P", ("C", "D",), ("P1", "P2",))
  ctz-draw(segment: ("A", "P"), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw(points: ("A", "B", "C", "D", "E", "P"), labels: (
  A: "left",
  B: "above",
  C: "right",
  D: "below right",
  E: "below left",
  P: "above",
  ))
}),
caption: []
) <grafico_riduzione_poligono1>
]

#let grafico_riduzione_poligono2 = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (-1, -1, 6.5, 5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))

  ctz-def-points(E: (0, 0), D: (4, 0), C: (5, 2.1), B:(2.6, 4), A: (-0.5, 2.5))
  
  ctz-def-para("P1", "P2", ("A", "C"), "B")
  ctz-def-ll("P", ("C", "D",), ("P1", "P2",))
  ctz-draw(line: ("A", "P", "D", "E", "A"), stroke: accent.mat)

  ctz-draw(points: ("A", "D", "E", "P"), labels: (
  A: "above left",
  D: "below right",
  E: "below left",
  P: "above right",
  ))
}),
caption: []
) <grafico_riduzione_poligono2>
]

#let grafici_riduzione_poligono = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_riduzione_poligono1][#grafico_riduzione_poligono2]
]]

#let grafico_pitagora = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (4, 0))
  
  ctz-def-rotation("B_rot", "B", "A", 90)
  ctz-def-linear("C", "A", "B_rot", 0.75)
  
  ctz-def-rotation("AB1", "B", "A", -90)
  ctz-def-rotation("AB2", "A", "B", 90)  
  ctz-def-rotation("AC1", "C", "A", 90)
  ctz-def-rotation("AC2", "A", "C", -90)  
  ctz-def-rotation("BC1", "C", "B", -90)
  ctz-def-rotation("BC2", "B", "C", 90)
  
  ctz-draw(line: ("A", "AB1", "AB2", "B", "A"), stroke: accent.mat.lighten(50%), fill: accent.mat.lighten(95%))
  ctz-draw(line: ("A", "AC1", "AC2", "C", "A"), stroke: accent.mat.lighten(50%), fill: accent.mat.lighten(95%))
  ctz-draw(line: ("B", "BC1", "BC2", "C", "B"), stroke: accent.mat.lighten(50%), fill: accent.mat.lighten(75%))
  
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)

  ctz-draw-mark-right-angle("B", "A", "C", size: 0.35)
  
  ctz-draw(points: ("A", "B", "C", ), labels: (
    A: "below left",
    B: "below right",
    C: "above",
  ))
}),
caption: []
) <grafico_pitagora>
]

#grafico_pitagora

#let grafico_euclide1 = [
#figure(
  ctz-canvas(length: 0.4cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-show-clip(stroke: gray)
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(B: (0, 0), H: (2, 0))
  
  ctz-def-linear("C", "B", "H", 5.0)
  ctz-def-linear("H_ext", "B", "H", 3.0)

  ctz-def-rotation("A", "H_ext", "H", 90)
  ctz-def-rotation("SQ_B", "A", "B", 90)
  ctz-def-rotation("SQ_A", "B", "A", -90)
  ctz-def-rotation("R_B", "C", "B", -90)

  ctz-def-mediator("M1", "M2", "B", "H")
  ctz-def-reflect("R_H", "R_B", "M1", "M2")
  
  ctz-draw(line: ("B", "A", "SQ_A", "SQ_B", "B"), stroke: accent.mat.lighten(50%), fill: accent.mat.lighten(75%))
  
  ctz-draw(line: ("B", "H", "R_H", "R_B", "B"), stroke: accent.mat.lighten(50%), fill: accent.mat.lighten(95%))
  
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  ctz-draw(line: ("A", "H"), stroke: (paint: accent.mat, dash: "dashed"))

  arc(anchor: "origin", "B", start: 0deg, stop: -90deg, radius: 10, stroke: (paint: accent.mat, dash: "dashed")) // TODO: la funzione di cetz-euclide non funziona; v. 0.1.5
  ctz-draw-mark-right-angle("B", "A", "C", size: 0.5)

  ctz-draw(
    points: ("A", "B", "C", "H",),
    labels: (
      A: "above",
      B: "left",
      C: "right",
      H: "above right",
    )
  )
}),
caption: []
) <grafico_euclide1>
]

#let grafico_euclide2 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-show-clip(stroke: gray)
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(B: (0, 0), H: (2, 0))
  
  ctz-def-linear("C", "B", "H", 5.0)
  ctz-def-linear("H_ext", "B", "H", 3.0)

  ctz-def-rotation("A", "H_ext", "H", 90)
  ctz-def-rotation("SQ1", "A", "H", 90)
  ctz-def-rotation("SQ2", "H", "A", -90)
  ctz-def-rotation("REC1", "B", "H", 90)
  ctz-def-mediator("M1", "M2", "H", "C")

  ctz-def-reflect("REC2", "REC1", "M1", "M2")

  ctz-draw(line: ("H", "A", "SQ2", "SQ1", "H"), stroke: accent.mat.lighten(50%), fill: accent.mat.transparentize(75%))
  ctz-draw(line: ("H", "C", "REC2", "REC1", "H"), stroke: accent.mat.lighten(50%), fill: accent.mat.lighten(95%))
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)
  ctz-draw(line: ("A", "H"), stroke: (paint: accent.mat, dash: "dashed"))

  arc(anchor: "origin", "H", start: -90deg, stop: -180deg, radius: 2, stroke: (paint: accent.mat, dash: "dashed")) // TODO: la funzione di cetz-euclide non funziona; v. 0.1.5
  ctz-draw-mark-right-angle("B", "A", "C", size: 0.5)
  
  ctz-draw(
    points: ("A", "B", "C", "H",),
    labels: (
      A: "above",
      B: "left",
      C: "right",
      H: "above right",
    )
  )
}),
caption: []
) <grafico_euclide2>
]

#let grafico_talete = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-1, -5, 9, 1), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke: gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  // Nel codice usi A_primo
  ctz-def-points(a_A: (0, 0), a_B: (5, 0), b_A: (0, -1.1), c_A: (0, -1.8), d_A: (0, -3.3), e_A: (0, -4.3))
  ctz-def-para("b_P1", "b_P2", ("a_A", "a_B"), "b_A")
  ctz-def-para("c_P1", "c_P2", ("a_A", "a_B"), "c_A")
  ctz-def-para("d_P1", "d_P2", ("a_A", "a_B"), "d_A")
  ctz-def-para("e_P1", "e_P2", ("a_A", "a_B"), "e_A")

  ctz-draw-line-add("a_A", "a_B", add: (2, 2), stroke: accent.mat.lighten(15%))
  ctz-draw-line-add("b_P1", "b_P2", add: (2, 2), stroke: accent.mat.lighten(25%))
  ctz-draw-line-add("c_P1", "c_P2", add: (2, 2), stroke: accent.mat.lighten(45%))
  ctz-draw-line-add("d_P1", "d_P2", add: (2, 2), stroke: accent.mat.lighten(65%))
  ctz-draw-line-add("e_P1", "e_P2", add: (2, 2), stroke: accent.mat.lighten(75%))

  ctz-def-line("L1", (2, 0), (-2, -8))
  ctz-draw-line-add((2, 0), (-2, -8), add: (2, 2), stroke: accent.mat)

  ctz-def-line("L2", (7, 0), (8, -8))
  ctz-draw-line-add((7, 0), (8, -8), add: (2, 2), stroke: accent.mat)

  ctz-def-ll("A", "L1", ("a_A", "a_B"))
  ctz-def-ll("B", "L1", ("b_P1", "b_P2"))
  ctz-def-ll("C", "L1", ("c_P1", "c_P2"))
  ctz-def-ll("D", "L1", ("d_P1", "d_P2"))
  ctz-def-ll("E", "L1", ("e_P1", "e_P2"))

  ctz-def-ll("A2", "L2", ("a_A", "a_B"))
  ctz-def-ll("B2", "L2", ("b_P1", "b_P2"))
  ctz-def-ll("C2", "L2", ("c_P1", "c_P2"))
  ctz-def-ll("D2", "L2", ("d_P1", "d_P2"))
  ctz-def-ll("E2", "L2", ("e_P1", "e_P2"))

  ctz-draw(
    points: ("A", "B", "C", "D", "E", "A2", "B2", "C2", "D2", "E2"),    
    labels: (
      A: "above left",
      B: "above left",
      C: "above left",
      D: "above left",
      E: "above left",
      A2: (text: $A'$, pos: "above right"),
      B2: (text: $B'$, pos: "above right"),
      C2: (text: $C'$, pos: "above right"),
      D2: (text: $D'$, pos: "above right"),
      E2: (text: $E'$, pos: "above right"),
    )
  )
}),
caption: []
) <grafico_talete>
]

#let grafico_bisettrici_triangolo1 = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (-0.5, -1.0,
6.5, 4.5), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (0, 0),
    B: (5, 0),
    C: (6, 3.5)
  )
    
  // Triangolo
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)


  // Punti bisettrici
  ctz-def-bisect("C1", "C2",  "A", "C", "B")
  ctz-draw-segment("C1", "C2", stroke: (paint: accent.mat.lighten(75%), dash: "dashed"))


  ctz-draw-angle("C", "A", "C2", radius: 0.7, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))
  ctz-draw-angle("C", "B", "C2", radius: 0.7, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))

  ctz-def-ll("D", ("C1", "C2"), ("A", "B"))
  
  
  // Punti ed etichette
  ctz-draw(
    points: ("A", "B", "C", "D"), 
    labels: (
      A: "below", 
      B: "below", 
      C: "above", 
      D: "below", 
    )
  )

  }),
caption: []
) <grafico_bisettrici_triangolo1>
]

#let grafico_bisettrici_triangolo2 = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (-0.5, -1.0,
11, 4.5), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (0, 0),
    B: (5, 0),
    C: (6, 3.5)
  )
    
  // Triangolo
  ctz-draw(line: ("A", "B", "C", "A"), stroke: accent.mat)

  // Intersezioni con retta verticale (7, 0), (7, 3)
  ctz-def-ll("BX", ("A", "B"), ((7, 0), (7, 3)))
  ctz-def-ll("CX", ("A", "C"), ((7, 0), (7, 3)))
  ctz-draw-line-add("B", "BX", add:(0, 4), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("C", "CX", add:(0, 4), stroke: (paint: accent.mat, dash: "dashed"))

  // Punti bisettrici
  ctz-def-bisect("C1", "C2", "CX", "C", "B")
  ctz-draw-line-add("C1", "C2", add:(4, 4), stroke: (paint: accent.mat.lighten(75%), dash: "dashed"))

  ctz-draw-angle("C", "CX", "C2", radius: 0.7, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))
  ctz-draw-angle("C", "B", "C2", radius: 0.7, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))

  ctz-def-ll("D", ("C1", "C2"), ("A", "B"))
  
  
  // Punti ed etichette
  ctz-draw(
    points: ("A", "B", "C", "D",), 
    labels: (
      A: "below", 
      B: "below", 
      C: "above", 
      D: "below", 
    )
  )
  

  }),
caption: []
) <grafico_bisettrici_triangolo2>
]

#let grafici_bisettrici_triangolo = [
#align(center)[
  #grid(columns: 2, column-gutter: -0.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_bisettrici_triangolo1][#grafico_bisettrici_triangolo2]
]]

#let grafico_corde_secanti_tangente1 = [
#figure(
  ctz-canvas(length: 0.5cm, clip-canvas: (-4, -4, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), S1: (1, 1), S2: (1.5, 4), T1: (-1, 0), T2: (4, 0.5))
  
  ctz-def-circle("Circ", "O", through: "R")
  ctz-draw("Circ", stroke: accent.mat.lighten(75%))

  ctz-def-line("S", "S1", "S2")
  ctz-def-lc(("E", "D"), "S", "Circ")

  ctz-def-line("T", "T1", "T2")
  ctz-def-lc(("C", "B"), "T", "Circ")

  ctz-def-ll("A", "S", "T")

  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat.lighten(45%)))
  ctz-draw(segment: ("A", "E"), stroke: (paint: accent.mat.lighten(45%)))
  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat))
  ctz-draw(segment: ("A", "D"), stroke: (paint: accent.mat))
  

  ctz-draw(points: ("A", "B", "C", "D", "E"), labels: (
  A: "above left",
  B: "right",
  C: "left",
  D: "above",
  E: "below",
  ))

}),
caption: []
) <grafico_corde_secanti_tangente1>
]


#let grafico_corde_secanti_tangente2 = [
#figure(
  ctz-canvas(length: 0.5cm, clip-canvas: (-4, -4, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), S1: (-2, 1), S2: (1.5, 1.5), T1: (-1, -2), T2: (3.5, 1.5))
  
  ctz-def-circle("Circ", "O", through: "R")
  ctz-draw("Circ", stroke: accent.mat.lighten(75%))

  ctz-def-line("S", "S1", "S2")
  ctz-def-lc(("C", "B"), "S", "Circ")

  ctz-def-line("T", "T1", "T2")
  ctz-def-lc(("E", "D"), "T", "Circ")

  ctz-def-ll("A", "S", "T")

  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat.lighten(45%)))
  ctz-draw(segment: ("A", "E"), stroke: (paint: accent.mat.lighten(45%)))
  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat))
  ctz-draw(segment: ("A", "D"), stroke: (paint: accent.mat))
  

  ctz-draw(points: ("A", "B", "C", "D", "E", ), labels: (
  A: "right",
  B: "above",
  C: "left",
  D: "below",
  E: "left",
  ))

}),
caption: []
) <grafico_corde_secanti_tangente2>
]

#let grafico_corde_secanti_tangente3 = [
#figure(
  ctz-canvas(length: 0.5cm, clip-canvas: (-3.5, -3.5, 8, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R:(3, 0), S1: (-1, 2), S2: (3.5, 1.5))
  ctz-def-rotation("P", "R", "O", -60)

  ctz-def-circle("Circ", "O", through: "P")
  ctz-draw("Circ", stroke: accent.mat.lighten(75%))
  ctz-def-tangent-at("T1", "T2", "P", "O")

  ctz-draw-line-add("S1", "S2", add: (2, 2), stroke:
  accent.mat.lighten(50%))
  ctz-draw-line-add("T1", "T2", add: (2, 2), stroke:
  accent.mat.lighten(50%))

  ctz-def-line("S", "S1", "S2")
  ctz-def-lc(("C", "B"), "S", "Circ")

  ctz-def-line("T", "T1", "T2")
  ctz-def-lc(("D"), "T", "Circ")

  ctz-def-ll("A", "S", "T")

  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat.lighten(45%)))
  ctz-draw(segment: ("A", "D"), stroke: (paint: accent.mat))
  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat))


  /* ctz-show-clip(stroke:gray) */
  ctz-draw(points: ("A", "B", "C", "D",), labels: (
  A: "right",
  B: "above",
  C: "left",
  D: "below",
  ))
}),
caption: []
) <grafico_corde_secanti_tangente3>
]

#let grafici_corde_secanti_tangente = [
#align(center)[
  #grid(columns: 3, column-gutter: -5.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_corde_secanti_tangente1][][#grafico_corde_secanti_tangente2][][#grafico_corde_secanti_tangente3][]
]]

#let grafico_segmento_aureo = [
#figure(
  ctz-canvas(length: 0.85cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-show-clip(stroke:gray)
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B:(5, 0), C: ((5 * calc.sqrt(5)-5)/2, 0))

  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat))
  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat.lighten(75%)))
  ctz-draw-measure-segment("A", "B", label: $1$, offset: 0.45, side: "below", arrows: "|_|")
  ctz-draw-measure-segment("A", "C", label: $(sqrt(5) - 1)/2$, offset: 1, side: "above", arrows: "|_|", stroke: (paint: black.lighten(75%)))


  /* ctz-show-clip(stroke:gray) */
  ctz-draw(points: ("A", "B", "C"), labels: (
  A: "left",
  B: "right",
  C: "above right",
  ))
}),
caption: []
) <grafico_segmento_aureo>
]

#let grafico_sezione_segmento = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (-3.3, -3.3, 8.2, 3.3), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B:(5, 0), /* R1: (3, 0), R2:(2, 0) */)

  ctz-def-circle("Circ1", "A", radius: 3)
  //ctz-draw("Circ1", stroke: (paint: accent.mat.lighten(75%)))
  ctz-def-circle("Circ2", "B", radius: 3)
  ctz-draw("Circ2", stroke: (paint: accent.mat, dash: "dotted")) // TODO: bug cetz-euclide 0.2.0


  ctz-def-cc(("C", "D"), "Circ1", "Circ2")
  ctz-draw-line-add("C", "D", add: (2, 2), stroke: (paint: accent.mat, dash: "dotted"))
  
  ctz-def-midpoint("M", "A", "B")
  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat))

  ctz-draw-arc("A", "D", "C", delta: 10, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("B", "C", "D", delta: 10, stroke: (paint: white, thickness: 1.3pt)) // TODO: bug cetz-euclide 0.2.0

  ctz-draw(points: ("A", "B", "C", "D", "M"), labels: (
  A: "left",
  B: "right",
  C: "above",
  D: "below",
  ))
}),
caption: []
) <grafico_sezione_segmento>
]

#grafico_sezione_segmento

#let grafico_sezione_angolo = [
#figure(
  ctz-canvas(length: 0.85cm, clip-canvas: (-2.8, -3.3, 6.2, 3.3), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(L1: (1, 0), L2:(5, 1.5), T1: (1.5, -1), T2:(6, -2), U1: (5, -1), U2: (5, 5))
  ctz-def-ll("A", ("L1", "L2"), ("U1", "U2"))
  ctz-def-ll("B", ("L1", "L2"), ("T1", "T2"))
  ctz-def-ll("C", ("T1", "T2"), ("U1", "U2"))

  ctz-def-circle("Circ1", "B", radius: 2)
  ctz-def-lc(("", "D"), ("L1", "L2"), "Circ1")
  ctz-def-lc(("", "E"), ("T1", "T2"), "Circ1")
  ctz-def-circle("Circ2", "D", radius: 2)
  ctz-def-circle("Circ3", "E", radius: 2)

  ctz-def-cc(("F", ""), "Circ2", "Circ3")

  ctz-draw-arc("B", "D", "E", delta: 50, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("D", "F", "F", delta: 20, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("E", "F", "F", delta: 20, stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line-add("A", "B", add: (1, 0), stroke: (paint: accent.mat))
  ctz-draw-line-add("C", "B", add: (1, 0), stroke: (paint: accent.mat))
  ctz-draw-line-add("B", "F", add: (0, 2), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))

  ctz-draw(points: ("A", "B", "C", "D", "E", "F",), labels: (
  A: "above",
  B: "left",
  C: "below",
  D: "above left",
  E: "below left",
  F: "right",
  ))
}),
caption: []
) <grafico_sezione_angolo>
]

#let grafico_parallela_punto = [
#figure(
  ctz-canvas(length: 0.7cm, {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), P: (2, 2),)


  ctz-def-circle("Circ1", "A", through: "P")  
  ctz-def-lc(("", "B"), ("A", (5, 0)), "Circ1")
  ctz-def-circle("Circ2", "B", radius: calc.sqrt(8))
  ctz-def-circle("Circ3", "P", radius: calc.sqrt(8))
  ctz-def-cc(("", "C"), "Circ2", "Circ3")

  ctz-draw-arc("A", "P", "B", delta: 60, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("P", "C", "C", delta: 20, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("B", "C", "C", delta: 20, stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line-add("A", (5, 0), add: (0.3, 0.5), stroke: (paint: accent.mat.lighten(35%)))
  ctz-draw-line-add("P", "C", add: (1.25, 1), stroke:  (paint: accent.mat.lighten(35%), dash: "dashed"))

  ctz-draw(points: ("A", "P", "B", "C"), labels: (
  A: "below",
  B: "below right",
  C: "above right",
  P: "above right",
  )) 
}),
caption: []
) <grafico_parallela_punto>
]

#let grafico_perpendicolare_retta_punto = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-3.3, -1, 6.7, 4.3), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(P: (1.5, 2.5), S1: (0, 0), S2:(5, 1), /* R1: (3, 0), R2:(2, 0) */)
  ctz-def-circle("Circ1", "P", radius: 3)
  ctz-def-lc(("A", "B"), ("S1", "S2"), "Circ1")
  ctz-def-perp("P1", "P2", ("A", "B"), "P")
  ctz-def-project("H", "P", "A", "B")

  ctz-draw-arc("A", "P", "P", delta: 20, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("B", "P", "P", delta: 20, stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw("Circ1", stroke: (paint: accent.mat.lighten(75%)))
  ctz-draw-line-add("S1", "S2", add: (0.5, 0.3), stroke: (paint: accent.mat))
  ctz-draw-line-add("P1", "P2", add: (0.5, 0.3), stroke: (paint: accent.mat))
  ctz-draw-mark-right-angle("A", "H", "P", size: 0.2)

  ctz-draw(points: ("A", "B", "P", ), labels: (
  A: "below left",
  B: "below right",
  P: "right",
  ))
}),
caption: []
) <grafico_perpendicolare_retta_punto>
]

#let grafico_mezzo_arco = [
#figure(
  ctz-canvas(length: 0.7cm, clip-canvas: (-3, -3, 3, 3), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(B: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("B"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "B", 120)
  ctz-def-rotation("C", "R", "B", -30)

  arc(anchor: "origin", "B", start: 120deg, stop: -30deg, radius: 3, stroke: accent.mat, mode: "CLOSE") // TODO: la funzione di cetz-euclide non funziona; v. 0.1.5

  ctz-def-perp("P1", "P2", ("A", "C"), "B")
  ctz-def-project("H", "B", "A", "B")
  ctz-draw-line-add("P1", "P2", add: (0.5, 0.3), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-mark-right-angle("A", "H", "B", size: 0.2)


  ctz-draw(segment: ("A", "B"), stroke: accent.mat.lighten(75%))
  ctz-draw(segment: ("C", "B"), stroke: accent.mat.lighten(75%))
  ctz-draw-line-add("B", "A", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  ctz-draw-line-add("B", "C", add: (0, 1), stroke:
  accent.mat.lighten(75%))
  

  ctz-draw(points: ("B", "A", "C"), labels: (
  A: "above left",
  B: "below",
  C: "below",
  ))

}),
caption: []
) <grafico_mezzo_arco>
]

#let grafico_circonferenza_tre_punti = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3, -3, 3, 3), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (-2, -2), B: (-1, 1), C: (3, 2))
  
  ctz-def-midpoint("MAB", "A", "B")
  ctz-def-perp("A1", "A2", ("A", "B"), "MAB")
  ctz-def-project("HAB", "MAB", "A", "B")
  ctz-draw-line-add("A1", "A2", add: (0.5, 0.3), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))

  ctz-def-midpoint("MBC", "B", "C")
  ctz-def-perp("B1", "B2", ("B", "C"), "MBC")
  ctz-def-project("HBC", "MBC", "B", "C")
  ctz-draw-line-add("B1", "B2", add: (0.5, 0.5), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))

  ctz-def-ll("D", ("A1", "A2"), ("B1", "B2",))
  ctz-def-circle("Circ1", "D", through: "A")
  ctz-draw("Circ1", stroke: accent.mat)
  
  ctz-draw-mark-right-angle("A", "MAB", "D", size: 0.2)
  ctz-draw-mark-right-angle("B", "MBC", "D", size: 0.2)
  
  ctz-draw(line: ("A", "B", "C"), stroke: accent.mat.lighten(50%))
  

  ctz-draw(points: ("A", "B", "C", "D"), labels: (
  A: "above left",
  B: "above",
  C: "above",
  D: "above right",
  ))

}),
caption: []
) <grafico_circonferenza_tre_punti>
]

#let grafico_punto_tangenti_circonferenza = [
#figure(
  ctz-canvas(length: 0.65cm, clip-canvas: (-3, -3, 7, 4.5), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R:(2, 0), P: (5.5, 3))

  ctz-def-circle("Circ1", "O", through: "R")
  ctz-def-midpoint("M", "O", "P")
  ctz-def-circle("Circ2", "M", through: "O")
  ctz-def-cc(("A", "B"), "Circ1", "Circ2")

  ctz-draw("Circ1", stroke: accent.mat)
  ctz-draw("Circ2", stroke: accent.mat.lighten(75%))
  ctz-draw-line-add("A", "P", add: (1, 1), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line-add("B", "P", add: (1, 1), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(points: ("O", "P", "M", "A", "B"), labels: (
  O: "above",
  A: "above",
  B: "below",
  P: "above",
  M: "right"
  ))

}),
caption: []
) <grafico_punto_tangenti_circonferenza>
]

#let grafico_luogo_punti_segmento_angolo = [
#figure(
  ctz-canvas(length: 0.65cm, clip-canvas: (-2.3, -5, 4, 4.6), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (-1, 0), B: (3, 0), P: (1.7, 4), C: (2.1225, -3.9)) // TODO: Calcolo approssimativo
  

  //ctz-def-reflect("C", "P", "A", "B") // Errato, C non è il riflesso di P, perchè l'angolo in P e l'angolo in C non possono essere equivalenti
  ctz-draw(segment: ("A", "B"), stroke: accent.mat)
  ctz-draw(segment: ("A", "C"), stroke: accent.mat)
  //ctz-draw(segment: ("P", "C"), stroke: red)
  ctz-draw(line: ("A", "P", "B"), stroke: accent.mat)
  ctz-draw-angle("P", "A", "B", radius: 0.7, label: $alpha$, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))
  ctz-draw-angle("A", "B", "C", radius: 0.7, label: $alpha$, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))
  
  ctz-def-perp("P1", "P2", ("A", "C"), "A")
  ctz-def-mediator("M1", "M2", "A", "B")

  ctz-draw-line-add("P1", "P2", add: (1, 1), stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("M1", "M2", add: (1, 1), stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-ll("O", ("P1", "P2"), ("M1", "M2"))

  ctz-def-circle("Circ1", "O", through: "A")
  ctz-draw("Circ1", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-def-reflect("O2", "O", "A", "B")
  ctz-def-circle("Circ2", "O2", through: "A")
  ctz-draw("Circ2", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-mark-right-angle("C", "A", "O", size: 0.2)

  ctz-draw(points: ("A", "B",  "C",  "O", /* "P1", "P2","M1", "M2", "P" */), labels: (
  A: "left",
  B: "right",
  C: "below",
  D: "above right",
  O: "right"
  ))

}),
caption: []
) <grafico_luogo_punti_segmento_angolo>
]

#grafico_luogo_punti_segmento_angolo

#let grafico_costruzione_poligoni_regolari1 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 0)
  ctz-def-rotation("B", "R", "O", 90)
  ctz-def-rotation("C", "R", "O", 180)
  ctz-def-rotation("D", "R", "O", 270)

  ctz-draw-mark-right-angle("A", "O", "B")

  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-arc("C", "D", "D", delta: 15, stroke: (paint: white, dash: "dotted")) // Invisibile, solo per allineare le tre figure

  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: (paint: accent.mat))

  ctz-draw(points: ("O", "A", "B", "C", "D"))

}),
caption: []
) <grafico_costruzione_poligoni_regolari1>
]

#let grafico_costruzione_poligoni_regolari2 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-def-rotation("A", "R", "O", 90)
  ctz-def-rotation("B", "R", "O", 150)
  ctz-def-rotation("C", "R", "O", 210)
  ctz-def-rotation("D", "R", "O", 270)
  ctz-def-rotation("E", "R", "O", 330)
  ctz-def-rotation("F", "R", "O", 30)

  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-draw-arc("A", "B", "B", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("B", "C", "C", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C", "D", "D", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("D", "E", "E", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("E", "F", "F", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("F", "A", "A", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(line: ("A", "B", "C", "D", "E", "F", "A"), stroke: (paint: accent.mat))

  ctz-draw(points: ("O", "A", "B", "C", "D", "E", "F"))

}),
caption: []
) <grafico_costruzione_poligoni_regolari2>
]

#let grafico_costruzione_poligoni_regolari3 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 90)
  ctz-def-rotation("B", "R", "O", 150)
  ctz-def-rotation("C", "R", "O", 210)
  ctz-def-rotation("D", "R", "O", 270)
  ctz-def-rotation("E", "R", "O", 330)
  ctz-def-rotation("F", "R", "O", 30)

  ctz-draw(line: ("A", "C", "E", "A"), stroke: (paint: accent.mat))

  ctz-draw-arc("A", "B", "B", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("B", "C", "C", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C", "D", "D", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("D", "E", "E", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("E", "F", "F", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("F", "A", "A", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(points: ("O", "A", "B", "C", "D", "E", "F"))

}),
caption: []
) <grafico_costruzione_poligoni_regolari3>
]

#let grafici_costruzione_poligoni_regolari = [
#align(center)[
  #grid(columns: 3, column-gutter: -0.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_costruzione_poligoni_regolari1][#grafico_costruzione_poligoni_regolari2][#grafico_costruzione_poligoni_regolari3]
]]

#let grafico_quadratura_poligono1 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-3, -3.5, 5.5, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B:(5, 0), C: (5, 3), D: (0, 3), E: (-5, 0), F: (3, 3))

  ctz-def-perp("P1", "P2", ("A", "B"), "F")
  ctz-def-ll("H", ("P1", "P2"), ("A", "B"))
  ctz-draw(segment: ("F", "H"), stroke: (paint: accent.mat, dash: "dotted"))

/*   ctz-draw("Circ1", stroke: accent.mat)
  ctz-draw("Circ2", stroke: accent.mat.lighten(75%))
  ctz-draw-line-add("A", "E", add: (1, 1), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line-add("B", "P", add: (1, 1), stroke: (paint: accent.mat, dash: "dotted")) */

  ctz-draw(line: ("E", "B", "F", "E"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: (paint: accent.mat))

  ctz-def-polygon("Ret", "A", "B", "C", "D")
  ctz-def-polygon("Tri", "E", "B", "F") 
  ctz-draw("Ret", stroke: accent.mat, fill: accent.mat.transparentize(85%))
  ctz-draw("Tri", stroke: accent.mat, fill: accent.mat.transparentize(85%))

  ctz-draw(points: ("A", "B", "C", "D", "F", "H"), labels: (
  A: "below",
  B: "below",
  C: "above",
  D: "above",
  ))

}),
caption: []
) <grafico_quadratura_poligono1>
]

#let grafico_quadratura_poligono2 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-1, -4.5, 9, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B:(5, 0), C: (5, 3), D: (0, 3), E: (8, 0),)

  ctz-draw(segment: ("B", "E"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-mark-segment("B", "C", mark: 1)
  ctz-draw-mark-segment("B", "E", mark: 1)

  ctz-def-midpoint("F", "A", "E")
  ctz-def-circle("Circ1", "F", through: "E")
  ctz-draw-line-add("B", "C", add: (3, 0), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-def-lc("G", ("B", "C"), "Circ1")

  ctz-draw(line: ("A", "E", "G", "A"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw-mark-right-angle("A", "G", "E")

  ctz-def-rotation("H", "G", "B", 90deg)
  ctz-def-rotation("I", "B", "H", 90deg)

  ctz-draw-arc("B", "C", "E", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc-r("F", 4, -180deg, 0deg, stroke: (paint: accent.mat, dash: "dotted")) // TODO: uso approssimativo di ctz-draw-arc-r; ctz-euclide 0.2.0

/*   ctz-draw("Circ1", stroke: accent.mat)
  ctz-draw("Circ2", stroke: accent.mat.lighten(75%))
  ctz-draw-line-add("A", "E", add: (1, 1), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line-add("B", "P", add: (1, 1), stroke: (paint: accent.mat, dash: "dotted")) */
  ctz-draw(line: ("A", "B", "C", "D", "A"), stroke: (paint: accent.mat))
  ctz-draw(line: ("B", "H", "I", "G", "B"), stroke: (paint: accent.mat))
  ctz-def-polygon("Ret", "A", "B", "C", "D")
  ctz-def-polygon("Qua", "B", "H", "I", "G") 
  ctz-draw("Ret", stroke: accent.mat, fill: accent.mat.transparentize(85%))
  ctz-draw("Qua", stroke: accent.mat, fill: accent.mat.transparentize(85%))

  ctz-draw(points: ("A", "B", "C", "D", "E", "F", "G", ), labels: (
  A: "left",
  B: "above right",
  C: "above",
  D: "above",
  E: "above right",
  F: "below",
  G: "below"
  ))

}),
caption: []
) <grafico_quadratura_poligono2>
]

#let grafici_quadratura_poligono = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_quadratura_poligono1][#grafico_quadratura_poligono2]
]]

#let grafico_divisione_segmento = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-6, -1, 5.5, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (-5, 0), B:(5, 0), E: (3, 3))

  ctz-def-linear("C", "A", "E", 0.3)
  ctz-def-linear("D", "A", "E", 0.8)
  ctz-def-para("P1", "P2", ("E", "B"), "D")
  ctz-def-ll("D2", ("P1", "P2"), ("A", "B"))
  ctz-def-para("Q1", "Q2", ("E", "B"), "C")
  ctz-def-ll("C2", ("Q1", "Q2"), ("A", "B"))
  
  ctz-draw-line-add("A", "E", add: (0, 3), stroke: (paint: accent.mat.lighten(35%), dash: "dashed"))
  ctz-draw(segment: ("A", "B"), stroke: accent.mat)
  ctz-draw(segment: ("B", "E"), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw(segment: ("D", "D2"), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw(segment: ("C", "C2"), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))

  ctz-draw-measure-segment("A", "C", label: $m$, side: "above", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%))
  ctz-draw-measure-segment("C", "D", label: $n$, side: "above", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%))
  ctz-draw-measure-segment("D", "E", label: $p$, side: "above", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%))

  ctz-draw(points: ("A", "B", "C", "D", "E", "C2", "D2"), labels: (
  A: "below",
  B: "below",
  C: "above",
  D: "above",
  E: "above", 
  C2: (text: $C'$, pos: "below"),
  D2: (text: $D'$, pos: "below"),
  ))

}),
caption: []
) <grafico_divisione_segmento>
]

#let grafico_quarto_proporzionale = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-5, -1, 5.5, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A:(5, 0), B: (-5, 0), C: (3, 3), D: (-2, 0), E: (2.5, 0))

  ctz-def-linear("F", "B", "C", 0.3)
  ctz-def-para("P1", "P2", ("F", "D"), "E")
  ctz-def-ll("G", ("P1", "P2"), ("B", "C"))

  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("D", "E"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("F", "D"), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw(segment: ("G", "E"), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw(segment: ("F", "G"), stroke: (paint: accent.mat))
  ctz-draw(segment: ("B", "F"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw-line-add("G", "C", add: (0, 3), stroke: (paint: accent.mat.lighten(35%), dash: "dashed"))
  ctz-draw-line-add("E", "A", add: (0, 3), stroke: (paint: accent.mat.lighten(35%), dash: "dashed"))

  ctz-draw-measure-segment("B", "D", label: $m$, side: "below", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%))
  ctz-draw-measure-segment("D", "E", label: $n$, side: "below", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%))
  ctz-draw-measure-segment("B", "F", label: $p$, side: "above", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%))
  ctz-draw-measure-segment("F", "G", label: $q$, side: "above", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%))

  

  ctz-draw(points: ("A", "B", "C", "D", "E", "F", "G"), labels: (
  A: "below",
  B: "below",
  C: "above",
  D: "below",
  E: "below",
  
  ))

}),
caption: []
) <grafico_quarto_proporzionale>
]

#let grafico_medio_proporzionale = [
#figure(
  ctz-canvas(length: 0.85cm, clip-canvas: (-1, 0, 7, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A:(0, 0), B: (4, 0), C: (6, 0), D: (-2, 0),)

  ctz-def-circle-diameter("Circ", "A", "C")
  ctz-def-perp("P1", "P2", ("A", "C"), "B")
  
  ctz-def-lc("D", ("P1", "P2"), "Circ")

  ctz-draw-mark-right-angle("A", "D", "C", size: 0.2)
  ctz-draw-line("A", "C", "D", "A", stroke: (paint: accent.mat.lighten(75%)))
  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("B", "C"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat.lighten(5%)))
  
  ctz-draw-semicircle("A", "C", stroke: (paint: accent.mat.lighten(35%), dash: "dotted")) // TODO: uso approssimativo di ctz-draw-arc

  ctz-draw-measure-segment("A", "B", label: $m$, side: "below", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%))
  ctz-draw-measure-segment("B", "C", label: $n$, side: "below", arrows: "|_|", offset: 0.5, stroke: accent.mat.lighten(85%)) 

  ctz-draw(points: ("A", "B", "C", "D", ), labels: (
  A: "below left",
  B: "below",
  C: "below right",
  D: "above",
  ))

}),
caption: []
) <grafico_medio_proporzionale>
]

#let grafico_sezione_aurea = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-1, 0, 7, 4), {
  import cetz.draw: *
  ctz-init()
  
  /* ctz-show-clip(stroke:gray) */
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  /* grid((-8,-8), (8, 8), stroke: gray.lighten(75%)) */
  ctz-def-points(A:(0, 0), B: (6, 0), O: (6, 3),)


  ctz-def-circle("Circ", "O", through: "B")  
  ctz-def-lc("D", ("A", "O"), "Circ")
  ctz-def-circle("Circ2", "A", through: "D")  
  ctz-def-lc("C", ("B", "A"), "Circ2")
  ctz-def-midpoint("M", "A", "B")
  
  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("B", "C"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("A", "O"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat.lighten(20%)))
  ctz-draw(segment: ("B", "O"), stroke: (paint: accent.mat.lighten(50%), dash: "dashed"))
  ctz-draw("Circ", stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))


  /* ctz-draw("Circ2", stroke: (paint: red, dash: "dotted")) */
  /* ctz-draw-arc("A", "D", "C", stroke: (paint: green, dash: "dotted")) // TODO: uso approssimativo di ctz-draw-arc */
  /* arc("C", start: 0deg, stop: 29deg, radius: 3.5, stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  arc("O", start: 90deg, stop: 180deg, radius: 3, stroke: (paint: accent.mat.lighten(35%), dash: "dotted")) */

  ctz-draw-arc("B", "O", "M", delta: 10, stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw-arc("A", "D", "C", delta: 35, stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))

  ctz-draw-mark-right-angle("C", "B", "O", size: 0.2)

  ctz-draw(points: ("A", "B", "C", "D", "O", "M"), labels: (
  A: "below left",
  B: "below",
  C: "below",
  D: "above",
  M: "below"
  ))

}),
caption: []
) <grafico_sezione_aurea>
]

#let grafico_costruzione_decagono = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), P: (0, 1.5))

  ctz-def-circle("Circ", "O", through: "R")
  ctz-draw-circle("Circ", stroke: accent.mat.lighten(75%))
  ctz-draw(segment: ((-3, 0), (3, 0)), stroke: (paint: accent.mat.lighten(75%), dash: "dashed"))
  ctz-draw(segment: ((0, 3), (0, -3)), stroke: (paint: accent.mat.lighten(75%), dash: "dashed"))
  ctz-draw(segment: ((-3, 0), "P"), stroke: (paint: accent.mat.lighten(75%), dash: "dashed"))

  ctz-def-regular-polygon("Deca", ("A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10"), "O", "R")
  ctz-draw("Deca", stroke: accent.mat)

  ctz-def-circle("Circ2", "P", through: "O")
  ctz-draw-circle("Circ2", stroke: accent.mat.lighten(75%))

  ctz-draw-arc("A1", "A10", "A10", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A2", "A1", "A1", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A3", "A2", "A2", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A4", "A3", "A3", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A5", "A4", "A4", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A6", "A5", "A5", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A7", "A6", "A6", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A8", "A7", "A7", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A9", "A8", "A8", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A10", "A9", "A9", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))

  /* arc((-1.33, 0.8), start: 32deg, stop: 65deg, radius: 2.5, stroke: (paint: accent.mat.lighten(75%))) */
  
  ctz-draw(points: ("O", "R", "P", "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10"))

}),
caption: []
) <grafico_costruzione_decagono>
]

#let grafico_costruzione_pentagono = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), P: (0, 1.5))
  ctz-def-circle("Circ", "O", through: "R")
  ctz-def-regular-polygon("Deca", ("A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10"), "O", "R")

  ctz-draw-circle("Circ", stroke: accent.mat.lighten(75%))

  ctz-draw-arc("A1", "A10", "A10", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A2", "A1", "A1", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A3", "A2", "A2", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A4", "A3", "A3", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A5", "A4", "A4", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A6", "A5", "A5", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A7", "A6", "A6", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A8", "A7", "A7", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A9", "A8", "A8", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("A10", "A9", "A9", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A1", "A3", "A5", "A7", "A9", "A1", stroke: accent.mat)
  ctz-draw(points: ("O", "R", "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10"))

}),
caption: []
) <grafico_costruzione_pentagono>
]

#let grafico_costruzione_pentadecagono = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), P: (0, 1.5))
  ctz-def-circle("Circ", "O", through: "R")
  ctz-def-regular-polygon("Deca", ("A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10"), "O", "R")
  ctz-def-regular-polygon("Esa", ("B1", "B2", "B3", "B4", "B5", "B6"), "O", "R")
  ctz-def-regular-polygon("Pndc", ("C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "C12", "C13", "C14", "C15"), "O", "A5")

  ctz-draw-circle("Circ", stroke: accent.mat.lighten(75%))
  ctz-draw-line("A5", "A6", stroke: accent.mat.lighten(50%))
  ctz-draw-line("B4", "B3", stroke: accent.mat.lighten(50%)) 
  ctz-draw-line("A5", "O", stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw-line("O", "B3", stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw-angle("O", "A5", "B3", radius: 0.7, label: $alpha$, fill: accent.mat.lighten(60%), stroke: accent.mat.lighten(60%))

  ctz-draw-arc("C1", "C15", "C15", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C2", "C1", "C1", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C3", "C2", "C2", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C4", "C3", "C3", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C5", "C4", "C4", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C6", "C5", "C5", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C7", "C6", "C6", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C8", "C7", "C7", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C9", "C8", "C8", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C10", "C9", "C9", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C11", "C10", "C10", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C12", "C11", "C11", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C13", "C12", "C12", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C14", "C13", "C13", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-arc("C15", "C14", "C14", delta: 15, stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw("Deca", stroke: accent.mat.lighten(75%))
  ctz-draw("Esa", stroke: accent.mat.lighten(75%))
  ctz-draw("Pndc", stroke: accent.mat)

  ctz-draw(points: ("O", "A5", "A6", "B3"), labels: (
  O: "below",
  A5: (text: $C$, pos: "left"),
  A6: (text: $A$, pos: "left"),
  B3: (text: $B$, pos: "above"),
  ))

}),
caption: []
) <grafico_costruzione_pentadecagono>
]

#let grafici_costruzioni_decapenta = [
#align(center)[
  #grid(columns: 3, column-gutter: 1.2em, row-gutter: 1.5em, align: center + bottom)[#grafico_costruzione_decagono][#grafico_costruzione_pentagono][#grafico_costruzione_pentadecagono]
]]

#let grafico_costruzione_sqrtn = [
#figure(
  ctz-canvas(length: 0.75cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), A: (2, 0), B: (2, 2))
  ctz-draw-line("O", "A", "B", "O", stroke: (paint: accent.mat))

  let nomi = ("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K")
  
  for i in range(1, 10) {
    let prev = nomi.at(i - 1)
    let curr = nomi.at(i)
    let next = nomi.at(i + 1)
    
    let angolo = 270 - calc.atan(calc.sqrt(i)) / 1deg
    
    ctz-def-rotation(next, prev, curr, angolo)
    ctz-draw-line("O", curr, next, "O", stroke: accent.mat.lighten(50%))
    ctz-draw-mark-right-angle("O", curr, next, size: 0.2)
    ctz-draw-measure-segment(curr, next, label: $u$, offset: 0.45, side: "right", arrows: "|_|", stroke: accent.mat.lighten(85%))

  }

  ctz-draw-mark-right-angle("O", "A", "B", size: 0.2)
  ctz-draw-measure-segment("O", "A", label: $u$, offset: 0.45, side: "below", arrows: "|_|", stroke: accent.mat.lighten(85%))
  ctz-draw-measure-segment("B", "A", label: $u$, offset: 0.45, side: "left", arrows: "|_|", stroke: accent.mat.lighten(85%))

/*   ctz-draw(points: ("O", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"), labels: (
    O: "below",
    A: "below",
    B: "above right",
    C: "above right",
    D: "above left",
    E: "left",
    F: "below left",
    G: "below",
  )) */

}),
caption: []
) <grafico_costruzione_sqrtn>
]

