#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/ctz-euclide:0.2.0": *
#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

//===============

//? trovare il modo per riempire la punta delel frecce

#let grafico_vettori1 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.05, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  A: (0, 0), B: (3, 2), C: (4, 0), D: (7, 2)
  )
  
  ctz-draw-segment("A", "B", dim: $arrow(A B)$, dim-pos: "above", stroke: (paint: accent.mat))
  ctz-draw-segment("B", "C", dim-pos: "below", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-segment("C", "D", dim: $arrow(C D)$, dim-pos: "below", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-segment("A", "D", dim-pos: "below", stroke: (paint: accent.mat, dash: "dotted"))

  line((0, 0), (3, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((4, 0), (7, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))

  ctz-def-midpoint("M", "A", "D")

  ctz-draw(points: ("A", "B", "C", "D", ), labels: (
  A: "below left", 
  B: "above right", 
  C: "below left",
  D: "above right",  
  ))

  circle("M", radius: 0.05, fill: accent.mat, stroke: none)
  content((to: "M", rel: (0.2, 0.35)), $M$)

  }),
caption: []
) <grafico_vettori1>
]

#let grafico_vettori2 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.05, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  A: (0, 0), B: (3, 2), C: (7, 0), D: (10, 2)
  )
  
  ctz-draw-segment("A", "B", stroke: none)  
  ctz-draw-segment("C", "D", stroke: none)

  line((0, 0), (3, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((7, 0), (10, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))

  

  ctz-draw(points: ("A", "B", "C", "D", ), labels: (
  A: "below left", 
  B: (text: $B = A + arrow(u)$, pos: "above"), 
  C: "below left",
  D: (text: $D = C + arrow(u)$, pos: "above"),    
  ))

  content((to: "A", rel: (4.1, 0.8)), $arrow(u) = [arrow(A B)] = B - A$)
  content((to: "A", rel: (11.1, 0.8)), $arrow(u) = [arrow(C D)] = C - D$)

  }),
caption: []
) <grafico_vettori2>
]

#let grafico_regola_parallelogramma = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  A: (0, -0.5), B: (3, 2), D: (3, 0), C: (6, 2.5)
  )
  
  ctz-draw-segment("A", "B", dim: $arrow(u)$, dim-pos: "above", stroke: none)  
  ctz-draw-segment("A", "D", dim: $arrow(v)$, dim-pos: "below", stroke: none)
  ctz-draw-segment("A", "C", dim: $arrow(w)$, dim-pos: "above", stroke: none)
  ctz-draw-segment("B", "C", dim: $arrow(v)$, dim-pos: "above", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-segment("D", "C", dim: $arrow(u)$, dim-pos: "below", stroke: (paint: accent.mat, dash: "dotted"))

  line((0, -0.5), (3, 2), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, -0.5), (3, 0), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, -0.5), (6, 2.5), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))

  

  ctz-draw(points: ("A", "B", "C", "D", ), labels: (
  A: "below left", 
  B: "above ", 
  C: "above right",
  D: "below",  
  ))


  }),
caption: []
) <grafico_regola_parallelogramma>
]

#let grafico_regola_testacoda = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  A: (0, -0.5), B: (3, 2), D: (3, 0), C: (6, 2.5)
  )
  
  ctz-draw-segment("A", "B", dim: $arrow(u)$, dim-pos: "above", stroke: none)  
  ctz-draw-segment("B", "C", dim: $arrow(v)$, dim-pos: "above", stroke: none)
  ctz-draw-segment("A", "C", dim-pos: "below", stroke: none)

  line((0, -0.5), (3, 2), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((3, 2), (6, 2.5), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, -0.5), (6, 2.5), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))

  

  ctz-draw(points: ("A", "B", "C",  ), labels: (
  A: "below left", 
  B: "above ", 
  C: "above right", 
  ))

  ctz-def-midpoint("M", "A", "C")
  
  content((to: "M", rel: (1.3, -0.3)), $arrow(w) = arrow(u) + arrow(v)$)

  }),
caption: []
) <grafico_regola_testacoda>
]

#let grafici_regole_vettori = [
#align(center)[
  #grid(columns: 2, column-gutter: 0em, align: center + bottom)[#grafico_regola_parallelogramma][#grafico_regola_testacoda]
]]

#let grafico_differenza_vettori = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  A: (0, 0), B: (1, 2), D: (4, 0.5), C: (-3, 1.5), D2: (-4, -0.5)
  )
  
  ctz-draw-segment("A", "B", dim: $arrow(u)$, dim-pos: "above", stroke: none) 
  ctz-draw-segment("A", "D", dim: $arrow(v)$, dim-pos: "below", stroke: none) 
  
  line((0, 0), (1, 2), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, 0), (4, 0.5), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))

  
  ctz-draw-segment("D", "B", stroke: none)
  line((4, 0.5), (1, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))


  ctz-draw-segment("A", "C", mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15), dim: $arrow(w)$, dim-pos: "below", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-segment("A", "D2", mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15), dim: $- arrow(v)$, dim-pos: "above", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-segment("D2", "C", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-segment("B", "C", stroke: (paint: accent.mat, dash: "dotted"))
 

  ctz-draw(points: ("A", "B", "C", "D", "D2" ), labels: (
  A: "below ", 
  B: "above ", 
  C: "above ", 
  D: "below",
  D2: (text: $D'$, pos: "below"),
  ))

  ctz-def-midpoint("M", "B", "D")
  
  content((to: "M", rel: (1.3, .2)), $arrow(w) = arrow(u) - arrow(v)$)

  }),
caption: []
) <grafico_differenza_vettori>
]

#let grafico_combinazioni_lineari = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  A: (0, 0), B: (-2, 2), C: (3, 2.5), D: (8, 3), E: (7, -1.5), F: (-5, -0.5), C2: (6, 5), B2: (4, -4)
  )
  
  ctz-draw-segment("A", "B", dim: $arrow(v)$, dim-pos: "below", stroke: 0pt)  
  ctz-draw-segment("A", "C", dim: $arrow(u)$, dim-pos: "above", stroke: 0pt)
  ctz-draw-segment("A", "D", dim: $arrow(w_3) = 2 arrow(u) - arrow(v)$, dim-pos: "below", stroke: 0pt)
  ctz-draw-segment("A", "E", dim: $arrow(w)_1 = arrow(u) - 2 arrow(v)$, dim-pos: "below", stroke: 0pt)
  ctz-draw-segment("A", "F", dim: $arrow(w)_2 = arrow(v) - arrow(u)$, dim-pos: "below", stroke: 0pt) 

  //! line perché ctz-euclide non gestisce bene la colorazione delle frecce
  line((0, 0), (-2, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((0, 0), (3, 2.5), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((0, 0), (8, 3), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, 0), (7, -1.5), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, 0), (-5, -0.5), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))



  ctz-draw(points: ("A", "B", "C", "D", "E", "F",), labels: (
  A: "below", 
  B: "above left", 
  C: "above right",
  D: "below",  
  ))



  }),
caption: []
) <grafico_combinazioni_lineari>
]

#let grafico_angolo_vettori = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  O: (0, 0), A: (5, -.5), B: (4, 2), 
  )
  
  ctz-draw-line-add("O", "A", add: (0, .2), stroke:  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "B", add: (0, .2), stroke:  accent.mat.lighten(75%))
  
  //! line perché ctz-euclide non gestisce bene la colorazione delle frecce
  line((0, 0), (5, -0.5), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((0, 0), (4, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))

  ctz-draw-angle("O", "A", "B", radius: 1.3, label: $hat(u v)$, fill: accent.mat.lighten(90%), stroke: accent.mat.lighten(90%))

  ctz-draw(points: ("O", "A", "B", ), labels: (
  O: "left",
  A: "below", 
  B: "above ", 
  ))


  }),
caption: []
) <grafico_angolo_vettori>
]

#let grafico_proiezione_vettore1 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  O: (0, 0), A: (5, -0.5), B: (4, 2), 
  )

  ctz-def-project("H", "B", "O", "A")
  ctz-draw(segment: ("B", "H"), stroke: (paint: accent.mat, dash: "dotted"))


  
  ctz-draw-line-add("O", "A", add: (0, .2), stroke:  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "B", add: (0, .2), stroke:  accent.mat.lighten(75%))

  //! line perché ctz-euclide non gestisce bene la colorazione delle frecce
  line((0, 0), (5, -0.5), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((0, 0), (4, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))

  ctz-draw-angle("O", "A", "B", radius: 1.3, label: $hat(u v)$, fill: accent.mat.lighten(90%), stroke: accent.mat.lighten(90%))

  ctz-draw(points: ("O", "A", "B", "H"), labels: (
  O: "left",
  A: "below", 
  B: "above ", 
  H: (text: $B'$)
  ))

  }),
caption: []
) <grafico_proiezione_vettore1>
]

#let grafico_proiezione_vettore2 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat),
    label-offset: 1pt
  )

  ctz-def-points(
  O: (0, 0), A: (3, -0.5), B: (-2, 2), 
  )

  ctz-def-project("H", "B", "O", "A")
  ctz-draw(segment: ("B", "H"), stroke: (paint: accent.mat, dash: "dotted"))


  
  ctz-draw-line-add("O", "A", add: (1, .2), stroke:  accent.mat.lighten(75%))
  ctz-draw-line-add("O", "B", add: (0, .2), stroke:  accent.mat.lighten(75%))

  //! line perché ctz-euclide non gestisce bene la colorazione delle frecce
  line((0, 0), (-2, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((0, 0), (3, -0.5), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))

  ctz-draw-angle("O", "A", "B", radius: 1.0, label: $hat(u v)$, fill: accent.mat.lighten(90%), stroke: accent.mat.lighten(90%))

  ctz-draw(points: ("O", "A", "B", "H"), labels: (
  O: "left",
  A: "below", 
  B: "above ", 
  H: (text: $B'$)
  ))
 

  }),
caption: []
) <grafico_proiezione_vettore2>
]

#let grafici_proiezione_vettore = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, align: center + bottom)[#grafico_proiezione_vettore1][#grafico_proiezione_vettore2]
]]

//
#let grafico_prodotto_vettoriale1 = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (0, -2, 4, 3.5), {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat)
  )

  /* ctz-show-clip(stroke:gray) */

  ctz-def-points(
  A: (0, 0), B: (3, 0), C: (2, 2), D: (0, 3), BC: (5, 2)
  )

  ctz-def-polygon("Prlg", "A", "B", "BC", "C", "A")
  ctz-draw-polygon("Prlg", stroke: accent.mat.lighten(50%), fill: accent.mat.transparentize(90%))
  
  //! Usare line e non ctz-draw-segment perché quest'ultimo non accetta frecce con la punta riempita di colore
  /* ctz-draw-segment("A", "B", mark: (end: "stealth", fill: accent.mat.lighten(50%), stroke: none, size: 0.15), dim: $arrow(u)$, dim-pos: "below", stroke: (paint: accent.mat.lighten(50%)))  
  ctz-draw-segment("A", "D", mark: (end: "stealth", fill: accent.mat, stroke: none, size: 0.15), stroke: (paint: accent.mat))
  ctz-draw-segment("A", "C", mark: (end: "stealth", fill: accent.mat.lighten(50%), stroke: none, size: 0.15), dim: $arrow(v)$, dim-pos: "above", stroke: (paint: accent.mat.lighten(50%))) */

  ctz-draw-mark-right-angle("D", "A", "C")
  ctz-draw-mark-right-angle("D", "A", "B")
 
  ctz-def-midpoint("M1", "A", "B") 
  ctz-def-midpoint("M2", "A", "C") 
  ctz-def-midpoint("M3", "A", "D")  
  content((to: "M1", rel: (0, -0.4)), $arrow(u)$)
  content((to: "M2", rel: (-0.25, 0.25)), $arrow(v) $)
  content((to: "M3", rel: (-0.75, 0)), $arrow(u) times arrow(v)$)


  line((0, 0), (3, 0), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, 0), (0, 3), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((0, 0), (2, 2), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))

  arc((0, 0), anchor: "origin", start: 0deg, stop: 45deg, radius: 1.3, stroke: (paint: accent.mat, thickness: 0.75pt), mark: (end: "stealth", fill: accent.mat, stroke: none, size: 0.15))

  ctz-draw(points: ("A", "B", "C", ), labels: (
  A: "below left", 
  B: "below right", 
  C: "above",
  ))

  }),
caption: []
) <grafico_prodotto_vettoriale1>
]

#let grafico_prodotto_vettoriale2 = [
#figure(
  ctz-canvas(length: 0.75cm, {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat),    
    mark: (fill: auto)
  )

  ctz-def-points(
  A: (0, 0), B: (3, 0), C: (2, 2), D: (0, -3), BC: (5, 2)
  )

  ctz-def-polygon("Prlg", "A", "B", "BC", "C", "A")
  ctz-draw-polygon("Prlg", stroke: accent.mat.lighten(50%), fill: accent.mat.transparentize(90%))  

  ctz-draw-mark-right-angle("D", "A", "C")
  ctz-draw-mark-right-angle("D", "A", "B")
 
  ctz-def-midpoint("M1", "A", "B") 
  ctz-def-midpoint("M2", "A", "C") 
  ctz-def-midpoint("M3", "A", "D")  
  content((to: "M1", rel: (0, -0.4)), $arrow(u)$)
  content((to: "M2", rel: (-0.25, 0.25)), $arrow(v) $)
  content((to: "M3", rel: (-0.75, 0)), $arrow(u) times arrow(v)$)


  line((0, 0), (3, 0), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, 0), (0, -3), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((0, 0), (2, 2), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))

  arc((0, 0), anchor: "origin", start: 45deg, stop: 0deg, radius: 1.3, stroke: (paint: accent.mat, thickness: 0.75pt), mark: (end: "stealth", fill: accent.mat, stroke: none, size: 0.15))
  

  ctz-draw(points: ("A", "B", "C", ), labels: (
  A: "below left", 
  B: "below right", 
  C: "above",
  ))


  }),
caption: []
) <grafico_prodotto_vettoriale2>
]

#let grafici_prodotto_vettoriale = [
#align(center)[
  #grid(columns: 2, column-gutter: 4em, align: center + bottom)[#grafico_prodotto_vettoriale1][#grafico_prodotto_vettoriale2]
]]

#let grafico_doppio_prodotto_vettoriale1 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    // Vettori di proiezione assonometrica per i tre assi
    let ox = (1.5, -0.7)  // Asse x (in basso a destra)
    let oy = (2.1, 0.6)   // Asse y (in alto a destra)
    let oz = (0, 2.6)     // Asse z (verticale)

    // Assi cartesiani
    line((-ox.at(0)*0.8, -ox.at(1)*0.8), (ox.at(0)*1.3, ox.at(1)*1.3), stroke: 0.75pt, mark: (end: "stealth", fill: black))
    line((-oy.at(0)*1.1, -oy.at(1)*1.1), (oy.at(0)*1.2, oy.at(1)*1.2), stroke: 0.75pt, mark: (end: "stealth", fill: black))
    line((0, -2.2), (0, 2.8), stroke: 0.75pt, mark: (end: "stealth", fill: black))

    // Coordinate dei vettori
    let u_pt = (ox.at(0)*0.8, ox.at(1)*0.8)
    let v_pt = (-oy.at(0)*0.45, -oy.at(1)*0.45)
    let u_x_v_pt = (0, -1.8)

    // Proiezioni per w (nel primo ottante)
    let w_x = (ox.at(0)*0.5, ox.at(1)*0.5)
    let w_y = (oy.at(0)*0.55, oy.at(1)*0.55)
    let w_xy = (w_x.at(0) + w_y.at(0), w_x.at(1) + w_y.at(1))
    let w_pt = (w_xy.at(0), w_xy.at(1) + oz.at(1)*0.65)

    // Proiezioni per (u x v) x w (nel piano xy)
    let dc_x = (-ox.at(0)*0.4, -ox.at(1)*0.4)
    let double_cross = (dc_x.at(0) + v_pt.at(0), dc_x.at(1) + v_pt.at(1))

    // Tratteggi di proiezione
    line(w_x, w_xy, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))
    line(w_y, w_xy, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))
    line(w_xy, w_pt, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))

    line(v_pt, double_cross, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))
    line(dc_x, double_cross, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))

    // Vettori principali
    line((0,0), u_pt, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: u_pt, rel: (-0.12, -0.25)), $arrow(u)$)

    line((0,0), v_pt, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: v_pt, rel: (0.1, -0.3)), $arrow(v)$)

    line((0,0), w_pt, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: w_pt, rel: (0.2, 0.15)), $arrow(w)$)

    line((0,0), u_x_v_pt, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: u_x_v_pt, rel: (0.6, 0)), $arrow(u) times arrow(v)$)

    line((0,0), double_cross, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: double_cross, rel: (-1.1, -0.05)), $(arrow(u) times arrow(v)) times arrow(w)$)
  }),
caption: []
) <grafico_doppio_prodotto_vettoriale1>
]

#let grafico_doppio_prodotto_vettoriale2 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    // Vettori di proiezione assonometrica coerenti con il grafico precedente
    let ox = (1.5, -0.7)  // Asse x (in basso a destra)
    let oy = (2.1, 0.6)   // Asse y (in alto a destra)
    let oz = (0, 2.6)     // Asse z (verticale)

    // Assi cartesiani
    line((-ox.at(0)*0.8, -ox.at(1)*0.8), (ox.at(0)*1.3, ox.at(1)*1.3), stroke: 0.75pt, mark: (end: "stealth", fill: black))
    line((-oy.at(0)*1.1, -oy.at(1)*1.1), (oy.at(0)*1.2, oy.at(1)*1.2), stroke: 0.75pt, mark: (end: "stealth", fill: black))
    line((0, -2.2), (0, 2.8), stroke: 0.75pt, mark: (end: "stealth", fill: black))

    // Coordinate dei vettori u, v, w (identiche al primo grafico)
    let u_pt = (ox.at(0)*0.8, ox.at(1)*0.8)
    let v_pt = (-oy.at(0)*0.45, -oy.at(1)*0.45)

    let w_x = (ox.at(0)*0.5, ox.at(1)*0.5)
    let w_y = (oy.at(0)*0.55, oy.at(1)*0.55)
    let w_xy = (w_x.at(0) + w_y.at(0), w_x.at(1) + w_y.at(1))
    let w_pt = (w_xy.at(0), w_xy.at(1) + oz.at(1)*0.65)

    // Nuove coordinate per v x w e u x (v x w)
    let v_x_w_proj = (-oy.at(0)*0.55, -oy.at(1)*0.55)
    let v_x_w_pt = (v_x_w_proj.at(0), v_x_w_proj.at(1) + oz.at(1)*0.55)
    let double_cross = (-oy.at(0)*0.85, -oy.at(1)*0.85)

    // Tratteggi di proiezione
    line(w_x, w_xy, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))
    line(w_y, w_xy, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))
    line(w_xy, w_pt, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))

    line(v_x_w_proj, v_x_w_pt, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))

    // Vettori
    line((0,0), u_pt, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: u_pt, rel: (-0.12, -0.25)), $arrow(u)$)

    line((0,0), v_pt, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: v_pt, rel: (0.1, -0.3)), $arrow(v)$)

    line((0,0), w_pt, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: w_pt, rel: (0.2, 0.15)), $arrow(w)$)

    line((0,0), v_x_w_pt, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: v_x_w_pt, rel: (-0.5, 0.15)), $arrow(v) times arrow(w)$)

    line((0,0), double_cross, stroke: 1.0pt + accent.mat, mark: (end: "stealth", fill: accent.mat))
    content((to: double_cross, rel: (-1.1, 0.15)), $arrow(u) times (arrow(v) times arrow(w))$)
  }),
caption: []
) <grafico_doppio_prodotto_vettoriale2>
]

#let grafici_doppio_prodotto_vettoriale = [
#align(center)[
  #grid(columns: 2, column-gutter: 2em, align: center + bottom)[#grafico_doppio_prodotto_vettoriale1][#grafico_doppio_prodotto_vettoriale2]
]]

#let grafico_prodotto_misto = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    // Definizione dei punti (vettori di base e vertici del parallelepipedo)
    let O   = (0, 0)
    let U   = (1.2, -1.0)
    let V   = (2.8, 0.6)
    let W   = (1.4, 2.6)

    let UV  = (4.0, -0.4)
    let UW  = (2.6, 1.6)
    let VW  = (4.2, 3.2)
    let UVW = (5.4, 2.2)

    let UxV = (0, 4.2)

    // Spigoli nascosti (tratteggiati)
    line(O, V, stroke: (dash: "dotted", paint: accent.mat), mark: (end: "stealth", fill: accent.mat, size: 0.15))
    line(V, UV, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))
    line(V, VW, stroke: (dash: "dotted", paint: accent.mat.lighten(50%)))

    // Spigoli visibili del parallelepipedo
    line(U, UV, stroke: 0.8pt + accent.mat.lighten(50%))
    line(U, UW, stroke: 0.8pt + accent.mat.lighten(50%))
    line(W, UW, stroke: 0.8pt + accent.mat.lighten(50%))
    line(W, VW, stroke: 0.8pt + accent.mat.lighten(50%))
    line(UW, UVW, stroke: 0.8pt + accent.mat.lighten(50%))
    line(VW, UVW, stroke: 0.8pt + accent.mat.lighten(50%))
    line(UV, UVW, stroke: 0.8pt + accent.mat.lighten(50%))

    // Vettori principali con frecce piene
    line(O, U, stroke: 1.2pt + accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
    line(O, W, stroke: 1.2pt + accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
    line(O, UxV, stroke: 1.2pt + accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))

    // Etichette dei vettori
    content((0.3, -0.6), $arrow(u)$)
    content((1.3, 0.55), $arrow(v)$)
    content((0.5, 1.5), $arrow(w)$)
    content((0.65, 3.5), $arrow(u) times arrow(v)$)
  }),
  caption: []
) <grafico_prodotto_misto>
]

#let grafico_punto_piano = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(
        axes: (
          shared-zero: [$O$], 
          stroke: (thickness: 0.6pt), 
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black))
          )
        )
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: 0, x-max: 3,
        y-min: 0, y-max: 4,
    
        x-grid: none,   
        y-grid: none,
        {


          let xP = 2
          let yP = 2.7
          
          //! Necessario grafico zero, altrimenti plot non funziona
          plot.add(
            domain: (0, 0),            
            x => 0
          )
      

          // Punti e linee
          plot.annotate({
            circle((xP, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((xP, yP), [$P (x, y)$], anchor: "south-west", padding: 3pt)

            circle(((xP), 0), radius: 1pt, fill: accent.mat, stroke: none)
            content(((xP)-0.15, -0.45), [$x$], anchor: "south-west", padding: 1pt)

            circle((0, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((-0.35, yP - 0.25), [$y$], anchor: "south-west", padding: 1pt)

          

            line(
              (xP, 0),
              (xP, yP),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (0, yP),
              (xP, yP),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )             
          })
        }
      )
    }),
    caption: [],
  ) <grafico_punto_piano>
]

#let grafico_punto_spazio = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    // Vettori di direzione degli assi: x e y sono ortogonali a 90° nel piano 2D
    let vx = (-0.9, -0.9)
    let vy = (2.1, -0.5)
    let vz = (0, 2.8)

    let O = (0, 0)

    // Fini corsa degli assi (frecce)
    let x_axis = (1.25 * vx.at(0), 1.25 * vx.at(1))
    let y_axis = (1.15 * vy.at(0), 1.15 * vy.at(1))
    let z_axis = (1.10 * vz.at(0), 1.10 * vz.at(1))

    // Estensioni negative degli assi oltre l'origine
    let x_neg = (-0.3 * vx.at(0), -0.3 * vx.at(1))
    let y_neg = (-0.3 * vy.at(0), -0.3 * vy.at(1))
    let z_neg = (-0.2 * vz.at(0), -0.2 * vz.at(1))

    // Coordinate del punto P(x, y, z)
    let P_x = (0.55 * vx.at(0), 0.55 * vx.at(1))
    let P_y = (0.60 * vy.at(0), 0.60 * vy.at(1))
    let P_z = (0.80 * vz.at(0), 0.80 * vz.at(1))

    let P_xy = (P_x.at(0) + P_y.at(0), P_x.at(1) + P_y.at(1))
    let P = (P_xy.at(0) + P_z.at(0), P_xy.at(1) + P_z.at(1))

    // Disegno degli assi cartesiani
    line(x_neg, x_axis, stroke: 0.5pt, mark: (end: "stealth", fill: accent.mat, size: 0.15))
    line(y_neg, y_axis, stroke: 0.5pt, mark: (end: "stealth", fill: accent.mat, size: 0.15))
    line(z_neg, z_axis, stroke: 0.5pt, mark: (end: "stealth", fill: accent.mat, size: 0.15))

    // Etichette degli assi alle estremità
    content((x_axis.at(0) - 0.2, x_axis.at(1) - 0.1), $x$)
    content((y_axis.at(0) + 0.25, y_axis.at(1)), $y$)
    content((z_axis.at(0), z_axis.at(1) + 0.25), $z$)

    // Linee di proiezione tratteggiate
    line(O, P_xy, stroke: (dash: "dotted", paint: accent.mat))
    line(P_x, P_xy, stroke: (dash: "dotted", paint: accent.mat))
    line(P_y, P_xy, stroke: (dash: "dotted", paint: accent.mat))
    line(P_xy, P, stroke: (dash: "dotted", paint: accent.mat))
    line(P, P_z, stroke: (dash: "dotted", paint: accent.mat))

    // Punto P ed etichetta Origine
    circle(P, radius: 0.04, fill: accent.mat, stroke: none)
    content((to: O, rel: (-0.2, 0.2)), $O$)
    content((to: P, rel: (0.9, 0.0)), $P(x, y, z)$)

    // Etichette delle coordinate sui singoli assi
    content((to: P_x, rel: (-0.2, 0.2)), $x$)
    content((to: P_y, rel: (0.05, 0.25)), $y$)
    content((to: P_z, rel: (-0.2, 0.2)), $z$)
  }),
  caption: []
) <grafico_punto_spazio>
]

#let grafici_punto_piano_spazio = [
#align(center)[
  #grid(columns: 2, column-gutter: 3.5em, align: center + bottom)[#grafico_punto_piano][#grafico_punto_spazio]
]]

#let grafico_scomposizione_vettore = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (0, -2, 4, 3.5), {
  import cetz.draw: *
  ctz-init()
  ctz-style(
    point: (shape: "dot", size: 0.00, fill: accent.mat)
  )

  /* ctz-show-clip(stroke:gray) */

  ctz-def-points(
  A: (0, 0), B: (2, 0), C: (3, 2), D: (0, 3), E: (-3, 0)
  )


  
  //! Usare line e non ctz-draw-segment perché quest'ultimo non accetta frecce con la punta riempita di colore
  /* ctz-draw-segment("A", "B", mark: (end: "stealth", fill: accent.mat.lighten(50%), stroke: none, size: 0.15), dim: $arrow(u)$, dim-pos: "below", stroke: (paint: accent.mat.lighten(50%)))  
  ctz-draw-segment("A", "D", mark: (end: "stealth", fill: accent.mat, stroke: none, size: 0.15), stroke: (paint: accent.mat))
  ctz-draw-segment("A", "C", mark: (end: "stealth", fill: accent.mat.lighten(50%), stroke: none, size: 0.15), dim: $arrow(v)$, dim-pos: "above", stroke: (paint: accent.mat.lighten(50%))) */


 
  ctz-def-midpoint("M1", "A", "B") 
  ctz-def-midpoint("M2", "A", "C") 
  ctz-def-midpoint("M3", "A", "D") 
  ctz-def-midpoint("M4", "A", "E")

  content((to: "M1", rel: (0, -0.4)), $arrow(v_1)$)
  content((to: "M2", rel: (-0.25, 0.25)), $arrow(u) $)
  content((to: "M3", rel: (-0.5, 0)), $arrow(v_2)$)
  content((to: "M4", rel: (0, -0.4)), $arrow(v_3)$)


  line((0, 0), (2, 0), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, 0), (0, 3), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat, size: 0.15))
  line((0, 0), (-3, 0), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
  line((0, 0), (3, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))


  

  }),
caption: []
) <grafico_scomposizione_vettore>
]

#let grafico_scomposizione_vettore = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (8, 4.1),
        axis-style: none,
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -4, x-max: 4,
        y-min: -0.1, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: true,   
        y-grid: true,         
        {
          // Il dominio reale dell'ellisse è stretto tra ±sqrt(500)/6 (circa ±3.72678)
          
          //! Necessario grafico zero, altrimenti plot non funziona
          plot.add(
            domain: (0, 0),
            
            x => 0
          )

          plot.annotate({
            content((01, 0.4), $arrow(v_1)$)
            content((-0.5, 1.5), $arrow(v_2)$)
            content((-1.5, 0.4), $arrow(v_3)$) 
            content((1.35, 1.35), $arrow(u) $)

            //! non è possibile usare "school-book" e visualizzare la griglia senza gli assi cartesiani
            grid((-4, -1), (4, 4), stroke: 0.4pt + luma(200))


            line((0, 0), (2, 0), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
            line((0, 0), (0, 3), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
            line((0, 0), (-3, 0), stroke: accent.mat.lighten(50%), mark: (end: "stealth", fill: accent.mat.lighten(50%), size: 0.15))
            line((0, 0), (3, 2), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
})
        }
      )
    }),
    caption: [],
  ) <grafico_scomposizione_vettore>
]

#let grafico_coordinate_componenti1 = [
#figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(
        axes: (
          shared-zero: [$O$], 
          stroke: (thickness: 0.6pt), 
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black))
          )
        )
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: 0, x-max: 3,
        y-min: 0, y-max: 4,
    
        x-grid: none,   
        y-grid: none,
        {


          let xP = 2
          let yP = 2.7
          
          //! Necessario grafico zero, altrimenti plot non funziona
          plot.add(
            domain: (0, 0),
            
            x => 0
          )
      

          // Punti e linee
          plot.annotate({
            circle((xP, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((xP, yP), [$P$], anchor: "south-west", padding: 3pt)

            circle(((xP), 0), radius: 1pt, fill: accent.mat, stroke: none)
            content(((xP)-0.15, -0.65), [$x_P$], anchor: "south-west", padding: 1pt)

            circle((0, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((-0.65, yP - 0.25), [$y_P$], anchor: "south-west", padding: 1pt)

          

            line(
              (xP, 0),
              (xP, yP),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (0, yP),
              (xP, yP),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )             
          })
        }
      )
    }),
    caption: [],
  ) <grafico_coordinate_componenti1>
]

#let grafico_coordinate_componenti2 = [
#figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(
        axes: (
          shared-zero: [$O$], 
          stroke: (thickness: 0.6pt), 
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black))
          )
        )
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: 0, x-max: 3,
        y-min: 0, y-max: 4,
    
        x-grid: none,   
        y-grid: none,
        {


          let xP = 2
          let yP = 2.7
          
          //! Necessario grafico zero, altrimenti plot non funziona
          plot.add(
            domain: (0, 0),
            
            x => 0
          )
      

          // Punti e linee
          plot.annotate({
            circle((xP, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((xP, yP), [$arrow(u)$], anchor: "south-west", padding: 3pt)

            circle(((xP), 0), radius: 1pt, fill: accent.mat, stroke: none)
            content(((xP)-0.15, -0.65), [$x_P$], anchor: "south-west", padding: 1pt)

            circle((0, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((-0.65, yP - 0.25), [$y_P$], anchor: "south-west", padding: 1pt)

          

            line(
              (xP, 0),
              (xP, yP),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (0, yP),
              (xP, yP),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )

            line((0, 0), (xP, yP), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
            line((0, 0), (xP, 0), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
            line((0, 0), (0, yP), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))


          })
        }
      )
    }),
    caption: [],
  ) <grafico_coordinate_componenti2>
]

#let grafico_coordinate_componenti3 = [
#figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(
        axes: (
          shared-zero: [$O$], 
          stroke: (thickness: 0.6pt), 
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black))
          )
        )
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: 0, x-max: 3,
        y-min: 0, y-max: 4,
    
        x-grid: none,   
        y-grid: none,
        {

          let xA = 0.8
          let yA = 1
          let xB = 2.7
          let yB = 2.9
          
          //! Necessario grafico zero, altrimenti plot non funziona
          plot.add(
            domain: (0, 0),
            
            x => 0
          )
      

          // Punti e linee
          plot.annotate({
            circle((xA, yA), radius: 1pt, fill: accent.mat, stroke: none)
            content((xA, yA), [$A$], anchor: "north-east", padding: 3pt)
            circle((xB, yB), radius: 1pt, fill: accent.mat, stroke: none)
            content((xB, yB), [$B$], anchor: "south-west", padding: 3pt)

            circle((xA, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((xA - 0.15, -0.65), [$x_A$], anchor: "south-west", padding: 1pt)
            circle((0, yA), radius: 1pt, fill: accent.mat, stroke: none)
            content((-0.65, yA - 0.25), [$y_A$], anchor: "south-west", padding: 1pt)

            circle((xB, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((xB - 0.15, -0.65), [$x_B$], anchor: "south-west", padding: 1pt)
            circle((0, yB), radius: 1pt, fill: accent.mat, stroke: none)
            content((-0.65, yB - 0.25), [$y_B$], anchor: "south-west", padding: 1pt)

          

            line(
              (xB, 0),
              (xB, yB),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (0, yB),
              (xB, yB),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (xA, 0),
              (xA, yA),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (0, yA),
              (xA, yA),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )

            line((xA, yA), (xB, yB), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
            line((xA, 0), (xB, 0), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
            line((0, yA), (0, yB), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))


          })
        }
      )
    }),
    caption: [],
  ) <grafico_coordinate_componenti3>
]

#let grafici_coordinate_componenti = [
#align(center)[
  #grid(columns: 3, column-gutter: 0.5em, align: center + bottom)[#grafico_coordinate_componenti1][#grafico_coordinate_componenti2][#grafico_coordinate_componenti3]
]]

#let grafico_spirale_polare = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    let k = 0.55
    let t_max = 2.25 * calc.pi
    let n_steps = 200

    // Generazione dei punti per la spirale rho = theta
    let points = range(0, n_steps + 1).map(i => {
      let t = (i / n_steps) * t_max
      let r = k * t
      (r * calc.cos(t), r * calc.sin(t))
    })

    // Asse polare orizzontale
    line((0, 0), (4, 0), stroke: 0.8pt, mark: (end: "stealth", fill: black, size: 0.15))
    content((1.4, -0.2), $r$)
    content((-0.2, 0.2), $O$)

    // Disegno della curva
    line(..points, stroke: 1.0pt + accent.mat)

    // Helper per punti e etichette
    let punto_annotato(theta, etichetta, rel_pos) = {
      let r = k * theta
      let p = (r * calc.cos(theta), r * calc.sin(theta))
      circle(p, radius: 0.045, fill: accent.mat, stroke: none)
      content((to: p, rel: rel_pos), etichetta)
    }

    // Punti notevoli identificati nella figura
    punto_annotato(calc.pi / 2, $(pi/2, pi/2)$, (0.35, 0.35))
    punto_annotato(5 * calc.pi / 4, $((5 pi)/4, (5 pi)/4)$, (0.65, 0.35))
    punto_annotato(3 * calc.pi / 2, $((3 pi)/2, (3 pi)/2)$, (0.45, 0.35))
    punto_annotato(7 * calc.pi / 4, $((7 pi)/4, (7 pi)/4)$, (0.75, -0.42))
  }),
  caption: []
) <grafico_spirale_polare>
]

#let grafico_distanza_punto_retta = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    set-style(
      axes: (
        shared-zero: [$O$], 
        stroke: (thickness: 0.6pt), 
        x: (mark: (end: "stealth", fill: black)),
        y: (mark: (end: "stealth", fill: black))
      )
    )
      
    plot.plot(
      size: (5, 6),
      axis-style: "school-book",
      x-tick-step: none,      
      y-tick-step: none,      
      x-min: -1, x-max: 4,
      y-min: -1, y-max: 5,
    
      x-grid: none,   
      y-grid: none,
      {
        let xP = 1
        let yP = 0.5
        let xA = 2
        let yA = 3.5
        let xH = 3
        let yH = 1.5
          
        plot.add(
          domain: (-1, 6),
          style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
          x => 1/2 * x
        )
        plot.add(
          domain: (-1, 6),
          style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
          x => - 2 * x + 7.5
        )

        // Punti e linee
        plot.annotate({
          // Angolo tra AP e AH centrato in A (da 251.57° a 296.57°)
          arc((xA - 0.01, yA - 0.03), anchor: "origin", start: 253deg, stop: 296.4deg, radius: 1, mode: "PIE", stroke: 0.6pt + accent.mat.lighten(80%), fill: accent.mat.lighten(80%))

          circle((xA, yA), radius: 1pt, fill: accent.mat, stroke: none)
          circle((xP, yP), radius: 1pt, fill: accent.mat, stroke: none)
          circle((xH, yH), radius: 1pt, fill: accent.mat, stroke: none)

          content((xA, yA), [$A$], anchor: "south-west", padding: 5pt)
          content((xP, yP), [$P$], anchor: "south-east", padding: 5pt)
          content((xH, yH), [$H$], anchor: "west", padding: 5pt) 

          content((1.75, 1.8), [$phi$], anchor: "south-west", padding: 5pt)     

          line((xA, yA), (xP, yP), stroke: accent.mat, mark: (end: "stealth", fill: accent.mat, size: 0.15))
        })
      }
    )
  }),
  caption: [],
) <grafico_distanza_punto_retta>
]

#let grafico_equazione_segmentaria = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    let vx = (-0.95, -0.70)
    let vy = (2.45, -0.25)
    let vz = (0.15, 2.75)

    let O = (0, 0)

    let x_axis = (1.45 * vx.at(0), 1.45 * vx.at(1))
    let y_axis = (1.40 * vy.at(0), 1.40 * vy.at(1))
    let z_axis = (1.30 * vz.at(0), 1.30 * vz.at(1))

    let x_neg = (-0.35 * vx.at(0), -0.35 * vx.at(1))
    let y_neg = (-0.35 * vy.at(0), -0.35 * vy.at(1))
    let z_neg = (-0.20 * vz.at(0), -0.20 * vz.at(1))

    let P_x = (0.55 * vx.at(0), 0.55 * vx.at(1))
    let P_y = (0.60 * vy.at(0), 0.60 * vy.at(1))
    let P_z = (0.80 * vz.at(0), 0.80 * vz.at(1))

    let G = (
      (P_x.at(0) + P_y.at(0) + P_z.at(0)) / 3,
      (P_x.at(1) + P_y.at(1) + P_z.at(1)) / 3,
    )

    let s = 1.65

    let Q_x = (
      G.at(0) + s * (P_x.at(0) - G.at(0)),
      G.at(1) + s * (P_x.at(1) - G.at(1)),
    )
    let Q_y = (
      G.at(0) + s * (P_y.at(0) - G.at(0)),
      G.at(1) + s * (P_y.at(1) - G.at(1)),
    )
    let Q_z = (
      G.at(0) + s * (P_z.at(0) - G.at(0)),
      G.at(1) + s * (P_z.at(1) - G.at(1)),
    )

    line(
      Q_x, Q_y, Q_z,
      close: true,
      fill: accent.mat.transparentize(80%),
      stroke: (paint: accent.mat.transparentize(80%), thickness: 0pt),
    )

    line(
      x_neg, x_axis,
      stroke: 0.5pt,
      mark: (end: "stealth", fill: black, size: 0.15),
    )
    line(
      y_neg, y_axis,
      stroke: 0.5pt,
      mark: (end: "stealth", fill: black, size: 0.15),
    )
    line(
      z_neg, z_axis,
      stroke: 0.5pt,
      mark: (end: "stealth", fill: black, size: 0.15),
    )

    line(P_x, P_y, stroke: (dash: "dotted", paint: accent.mat))
    line(P_x, P_z, stroke: (dash: "dotted", paint: accent.mat))
    line(P_z, P_y, stroke: (dash: "dotted", paint: accent.mat))

    circle(P_x, radius: 0.04, fill: accent.mat, stroke: none)
    circle(P_y, radius: 0.04, fill: accent.mat, stroke: none)
    circle(P_z, radius: 0.04, fill: accent.mat, stroke: none)

    content((to: O, rel: (-0.2, 0.2)), $O$)
    content((to: P_x, rel: (-0.8, 0.1)), $(p, 0, 0)$)
    content((to: P_y, rel: (0.70, 0.2)), $(0, q, 0)$)
    content((to: P_z, rel: (0.75, 0.1)), $(0, 0, r)$)

    content((x_axis.at(0) - 0.20, x_axis.at(1) - 0.10), $x$)
    content((y_axis.at(0) + 0.20, y_axis.at(1) - 0.02), $y$)
    content((z_axis.at(0) + 0.05, z_axis.at(1) + 0.18), $z$)
  }),
  caption: []
) <grafico_equazione_segmentaria>
]

#let grafico_distanza_piano = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    let vx = (-0.95, -0.70)
    let vy = (2.45, -0.25)
    let vz = (0.00, 2.5)

    let O = (0, 0)

    // Proiezione di un punto 3D sul disegno 2D
    let proj = (X, Y, Z) => (
      X * vx.at(0) + Y * vy.at(0) + Z * vz.at(0),
      X * vx.at(1) + Y * vy.at(1) + Z * vz.at(1),
    )

    // Piano z = a*x + b*y + c
    let a = 0.52
    let b = 0.2
    let c = 0.15

    // Vertici del piano
    let Q1 = proj(-0.95, -0.70, a * (-0.95) + b * (-0.70) + c)
    let Q2 = proj(0.95, -0.70, a * 0.95 + b * (-0.70) + c)
    let Q3 = proj(0.95, 0.95, a * 0.95 + b * 0.95 + c)
    let Q4 = proj(-0.95, 0.95, a * (-0.95) + b * 0.95 + c)

    // Punto H sul piano
    let H3 = (0.15, -0.15, c)

    let dx = 0.0
    let dy = 0.65
    let P3 = (
      H3.at(0) + dx,
      H3.at(1) + dy,
      H3.at(2) + a * dx + b * dy,
    )

    let H = proj(
      H3.at(0),
      H3.at(1),
      H3.at(2),
    )

    let P = proj(
      P3.at(0),
      P3.at(1),
      P3.at(2),
    )

    // Normale al piano
    let nx = -a
    let ny = -b
    let nz = 1

    let normal_scale = 0.70

    // Punto A fuori dal piano
    let A3 = (
      H3.at(0) + normal_scale * nx,
      H3.at(1) + normal_scale * ny,
      H3.at(2) + normal_scale * nz,
    )
    let A = proj(A3.at(0), A3.at(1), A3.at(2))

    // Assi
    let x_axis = (
      1.45 * vx.at(0),
      1.45 * vx.at(1),
    )
    let y_axis = (
      1.40 * vy.at(0),
      1.40 * vy.at(1),
    )
    let z_axis = (
      1.30 * vz.at(0),
      1.30 * vz.at(1),
    )

    let x_neg = (
      -0.30 * vx.at(0),
      -0.30 * vx.at(1),
    )
    let y_neg = (
      -0.30 * vy.at(0),
      -0.30 * vy.at(1),
    )
    let z_neg = (
      -0.15 * vz.at(0),
      -0.15 * vz.at(1),
    )

    // Piano
    line(
      Q1, Q2, Q3, Q4,
      close: true,
      fill: accent.mat.transparentize(80%),
      stroke: (paint: accent.mat, thickness: 0pt),
    )

    // Assi cartesiani
    line(
      x_neg,
      x_axis,
      stroke: 0.5pt,
      mark: (end: "stealth", fill: black, size: 0.15),
    )

    line(
      y_neg,
      y_axis,
      stroke: 0.5pt,
      mark: (end: "stealth", fill: black, size: 0.15),
    )

    line(
      z_neg,
      z_axis,
      stroke: 0.5pt,
      mark: (end: "stealth", fill: black, size: 0.15),
    )

    // Segmento AP
    line(
      A,
      P,
      stroke: (paint: accent.mat, dash: "dotted", thickness: 1pt),
    )

    // Perpendicolare AH
    line(
      A,
      H,
      stroke: (paint: accent.mat, dash: "dotted", thickness: 1pt),
    )

    // Segmento HP sul piano
    line(
      H,
      P,
      stroke: (paint: accent.mat, dash: "dotted"),
    )

    // Punti
    circle(H, radius: 0.045, fill: accent.mat, stroke: none)
    circle(P, radius: 0.045, fill: accent.mat, stroke: none)
    circle(A, radius: 0.045, fill: accent.mat, stroke: none)

    // Simbolo dell'angolo retto in H
    let u = (
      (A.at(0) - H.at(0)) / 12,
      (A.at(1) - H.at(1)) / 12,
    )
    let v = (
      (P.at(0) - H.at(0)) / 12,
      (P.at(1) - H.at(1)) / 12,
    )

    line(
      (H.at(0) + u.at(0), H.at(1) + u.at(1)),
      (
        H.at(0) + u.at(0) + v.at(0),
        H.at(1) + u.at(1) + v.at(1),
      ),
      stroke: 0.5pt,
    )
    line(
      (H.at(0) + v.at(0), H.at(1) + v.at(1)),
      (
        H.at(0) + u.at(0) + v.at(0),
        H.at(1) + u.at(1) + v.at(1),
      ),
      stroke: 0.5pt,
    )

    // Etichette
    content(
      (to: A, rel: (0.95, 0.25)),
      $A(x_A, y_A, z_A)$,
    )
    content(
      (to: H, rel: (-0.25, -0.08)),
      $H$,
    )
    content(
      (to: P, rel: (0.15, -0.15)),
      $P$,
    )
    

// Arco dell'angolo phi
let rphi = 0.46

let ang_h = calc.atan2(
  H.at(0) - A.at(0),
  H.at(1) - A.at(1),
)

let ang_p = calc.atan2(
  P.at(0) - A.at(0),
  P.at(1) - A.at(1),
)

arc(
  A,
  radius: rphi,
  start: ang_p,
  stop: ang_h,
  mode: "PIE",
  stroke: none, 
  fill: accent.mat.transparentize(90%),
  anchor: "origin",
)





    // Angolo phi
content(
  (
    A.at(0) + 0.22,
    A.at(1) - 0.62,
  ),
  $phi$,
)

    // Assi
    content(
      (x_axis.at(0) - 0.18, x_axis.at(1) - 0.08),
      $x$,
    )
    content(
      (y_axis.at(0) + 0.18, y_axis.at(1)),
      $y$,
    )
    content(
      (z_axis.at(0) - 0.05, z_axis.at(1) + 0.18),
      $z$,
    )
  }),
  caption: []
) <grafico_distanza_piano>
]