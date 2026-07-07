#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/ctz-euclide:0.1.5": *
#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart

#let default-point-shape = "dot"

// =======

#let grafico_rette_sghembe = [
#figure(
  ctz-canvas(length: 0.75cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(A: (2.8, 0.8), B: (6, 0.4), C: (8.3, 1.5), D: (6.3, 4))

  ctz-def-polygon("Prpp", (0, 0), (8, 0), (12, 2), (4, 2), (0, 0))
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  
  ctz-draw-line-add("A", "B", add: (1, 1), stroke: (paint: accent.mat.lighten(30%)))
  ctz-draw-line-add("C", "D", add: (0, 0.5), stroke: (paint: accent.mat))
  ctz-def-linear("C2", "D", "C", 1.39)
  ctz-def-linear("C3", "D", "C", 1.9)

  ctz-draw(segment: ("C", "C2"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("C2", "C3"), stroke: (paint: accent.mat))

  ctz-draw(points: ("A", "B", "C", "D", ), labels: (
  A: "below",
  B: "below",
  C: "above",
  D: "above",
  ))

}),
caption: []
) <grafico_rette_sghembe>
]

#let grafico_diedro = [
#figure(
  ctz-canvas(length: 0.80cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.04, fill: accent.mat))
  
  ctz-def-points(A: (0, 0), B: (0, 4), C: (2, 1), D: (2, 5), E: (5, 0.5), F: (5, 4.5))

  ctz-def-polygon("Prpp1", "A", "C", "D", "B")

  ctz-def-polygon("Prpp2", "C", "E", "F", "D")
  
  //arc((1, 0.5), start: 260deg, stop: 290deg, radius: 4.5, stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw(ellipse: ("C", 1.0, 0.5, 0deg), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  
  ctz-draw("Prpp1", fill: accent.mat.lighten(90%), stroke: accent.mat.lighten(50%))
  ctz-draw("Prpp2", fill: accent.mat.lighten(90%), stroke: accent.mat.lighten(50%))

  ctz-draw(points: ("A", "B", "C", "D", "E", "F",), /* labels: (
  A: "below",
  B: "below",
  C: "above",
  D: "above",
  ) */)

}),
caption: []
) <grafico_diedro>
]

#let grafico_piani_perpendicolari = [
#figure(
  ctz-canvas(length: 0.35cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (-4, -4), 
    B: (4, 4), 
    C: (4, 14), 
    D: (-4, 6), 
    E: (-7, 2), 
    F: (7, -2),
    G: (7, 8),
    H: (-7, 12)
    )

  ctz-def-polygon("Prpp1", "A", "B", "C", "D")
  ctz-def-polygon("Prpp2", "E", "F", "G", "H")
  ctz-def-ll("I", ("G", "H"), ("C", "D"))
  ctz-def-ll("J", ("A", "B"), ("E", "F"))
  
  ctz-draw("Prpp1", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  ctz-draw("Prpp2", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))  
  ctz-draw(segment: ("I", "J"), stroke: (paint: accent.mat.lighten(35%), dash: "dotted"))
  ctz-draw-mark-right-angle("A", "J", "F", size: 0.5)
  ctz-draw-mark-right-angle("F", "J", "B", size: 0.5)
  ctz-draw-mark-right-angle("B", "J", "E", size: 0.5)
  ctz-draw-mark-right-angle("E", "J", "A", size: 0.5)

  ctz-draw(points: ("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"), /* labels: (
  A: "below",
  B: "below",
  C: "above",
  D: "above",
  ) */)

}),
caption: []
) <grafico_piani_perpendicolari>
]

#let grafici_diedro_piani_perpendicolari = [
#align(center)[
  #grid(columns: 2, column-gutter: 2.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_diedro][#grafico_piani_perpendicolari]
]]

#let grafico_perpendicolari_retta_piano1 = [
#figure(
  ctz-canvas(length: 0.75cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (6, 1.1), 
    B: (6, 4),
    P1: (0, 0),
    P2: (8, 0),
    P3: (12, 2),
    P4: (4, 2),
    Q1: (2.5, 0),
    Q2: (7, 0),
    Q3: (5, 2),
    Q4: (9, 2)
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  
  ctz-draw-line-add("A", "B", add: (0, 0.25), stroke: (paint: accent.mat))
  ctz-def-linear("C2", "B", "A", 1.39)
  ctz-def-linear("C3", "B", "A", 1.9)
  ctz-def-ll("Q5", ("P2", "P3"), ("A", (1, 0.5)))

  ctz-draw(segment: ("A", "C2"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("C2", "C3"), stroke: (paint: accent.mat))

  ctz-draw(segment: ("A", "Q1"), stroke: (paint: accent.mat.lighten(30%)))
  ctz-draw(segment: ("A", "Q2"), stroke: (paint: accent.mat.lighten(30%)))
  ctz-draw(segment: ("A", "Q3"), stroke: (paint: accent.mat.lighten(30%)))
  /* ctz-draw(segment: ("A", "Q4"), stroke: (paint: accent.mat)) */
  ctz-draw(segment: ("A", "Q5"), stroke: (paint: accent.mat.lighten(30%)))

  ctz-draw-mark-right-angle("Q1", "A", "B", size: 0.2)
  ctz-draw-mark-right-angle("Q2", "A", "B", size: 0.2)
  ctz-draw-mark-right-angle("Q3", "A", "B", size: 0.2)
  /* ctz-draw-mark-right-angle("Q4", "A", "B", size: 0.2) */
  ctz-draw-mark-right-angle("Q5", "A", "B", size: 0.2)

  ctz-draw(points: ("A", "B",), labels: (
  A: (pos: "below left", offset: (-0.1, -0.1)),
  B: (text: $r$, pos: "left")
  ))

}),
caption: []
) <grafico_perpendicolari_retta_piano1>
]

#let grafico_perpendicolari_retta_piano2 = [
#figure(
  ctz-canvas(length: 0.75cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (6, 1.1), 
    B: (5, 4),
    P1: (0, 0),
    P2: (8, 0),
    P3: (12, 2),
    P4: (4, 2),
    Q1: (2.5, 0),
    Q2: (7, 0),
    Q3: (5, 2),
    Q4: (9, 2)
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  
  ctz-draw-line-add("A", "B", add: (0, 0.25), stroke: (paint: accent.mat))
  ctz-def-linear("C2", "B", "A", 1.39)
  ctz-def-linear("C3", "B", "A", 1.9)

  ctz-draw(segment: ("A", "C2"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("C2", "C3"), stroke: (paint: accent.mat))

  ctz-def-perp("Ha1", "Ha2", ("B", "A"), "A")
  ctz-def-ll("I", ("Ha1", "Ha2"), ("P1", "P2"))
  ctz-def-ll("J", ("Ha1", "Ha2"), ("P3", "P4"))
  ctz-draw(segment: ("I", "J"), stroke: (paint: accent.mat.lighten(30%),))
  ctz-draw-mark-right-angle("I", "A", "B", size: 0.2)
  ctz-draw-mark-right-angle("J", "A", "B", size: 0.2)

  ctz-draw(points: ("A", "B", ), labels: (
  A: (pos: "below left", offset: (-0.1, -0.1), point: (size: 0)),
  B: (text: $r$, pos: "left")
  ))

}),
caption: []
) <grafico_perpendicolari_retta_piano2>
]

#let grafici_perpendicolari_retta_piano = [
#align(center)[
  #grid(columns: 1, column-gutter: 2.0em, row-gutter: 1em, align: center + bottom)[#grafico_perpendicolari_retta_piano1][#grafico_perpendicolari_retta_piano2]
]]

#let grafico_teorema_tre_perpendicolari = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-1, -0.8, 11, 4.5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
/*   ctz-show-clip(stroke:gray)
 */  ctz-def-points(
    A: (7, 1.5), 
    B: (7, 4),
    P1: (0, 0),
    P2: (8, 0),
    P3: (12, 2),
    P4: (4, 2),
    Q: (5, 0.5)
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  
  ctz-draw-line-add("A", "B", add: (0, 0.25), stroke: (paint: accent.mat))
  ctz-def-linear("C2", "B", "A", 1.59)
  ctz-def-linear("C3", "B", "A", 1.9)

  ctz-draw(segment: ("A", "C2"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("C2", "C3"), stroke: (paint: accent.mat))

  ctz-def-para("S1", "S2", ("P2", "P3"), "A")
  ctz-def-para("T1", "T2", ("P1", "P2"), "Q")
  ctz-draw(segment: ("S1", "S2"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("T1", "T2"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-def-ll("ST", ("S1", "S2"), ("T1", "T2"))
  ctz-draw(segment: ("A", "ST"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("B", "ST"), stroke: (paint: accent.mat.lighten(50%)))

  ctz-draw-mark-right-angle("B", "A", "ST", size: 0.3)
  ctz-draw-mark-right-angle("A", "ST", "T2", size: 0.3)
  ctz-draw-mark-right-angle("B", "ST", "T1", size: 0.3)

  ctz-draw(points: ("A", "B", /* "S1", "S2",  "T1", "T2", "ST" */), labels: (
  A: (pos: "right", offset: (-0.1, -0.1)),
  B: (text: $r$, pos: "right")
  ))

}),
caption: []
) <grafico_teorema_tre_perpendicolari>
]

#let grafico_proiezioni_piano1 = [
#figure(
  ctz-canvas(length: 0.65cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
/*   ctz-show-clip(stroke:gray)
 */  ctz-def-points(
    A: (3.0, 1.0), 
    B: (3.0, 3.5),
    P1: (0, 0),
    P2: (4, 0),
    P3: (6, 2),
    P4: (2, 2),
    Q: (5, 0.5)
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  
  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat, dash: "dotted"))


  ctz-draw(points: ("A", "B", /* "S1", "S2",  "T1", "T2", "ST" */), labels: (
  A: (text: $P'$, pos: "right"),
  B: (text: $P$, pos: "right")
  ))

}),
caption: []
) <grafico_proiezioni_piano1>
]

#let grafico_proiezioni_piano2 = [
#figure(
  ctz-canvas(length: 0.65cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.01, fill: accent.mat))
  
/*   ctz-show-clip(stroke:gray)
 */  ctz-def-points(
    A: (3.0, 1.0), 
    B: (3.0, 2.5),
    C: (-2, 0.65),
    P1: (0, 0),
    P2: (6, 0),
    P3: (8, 2),
    P4: (2, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-def-ll("R1", ("C", "A"), ("P1", "P4"))
  ctz-def-ll("R2", ("C", "A"), ("P2", "P3"))
  ctz-def-linear("R3", "C", "A", 1.3)

  ctz-def-para("S1", "S2", ("A", "B"), "R1")
  ctz-def-para("S3", "S4", ("A", "B"), "R2")
  ctz-def-para("S5", "S6", ("A", "B"), "R3")

  ctz-def-ll("T1", ("S1", "S2"), ("C", "B"))
  ctz-def-ll("T2", ("S3", "S4"), ("C", "B"))
  ctz-def-ll("T3", ("S5", "S6"), ("C", "B"))

  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-draw(segment: ("R1", "R2"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("T1", "T2"), stroke: (paint: accent.mat))

  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("R1", "T1"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("R2", "T2"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("R3", "T3"), stroke: (paint: accent.mat, dash: "dotted"))
  
  ctz-draw(points: ("A", "B", /* "C", "R1", "R2", "R3", "S1", "S2", "T1", "T2", "T3" */), labels: (
  A: (text: $r'$, pos: "below"),
  B: (text: $r$, pos: "above")
  ))

}),
caption: []
) <grafico_proiezioni_piano2>
]

#let grafico_proiezioni_piano3 = [
#figure(
  ctz-canvas(length: 0.65cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (2.0, 2.9),
    A2: (2.0, 1.0), 
    P1: (0, 0),
    P2: (4, 0),
    P3: (6, 2),
    P4: (2, 2),
    Q: (6.5, 1.5)
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-def-linear("B", "A", "Q", 0.5)
  ctz-def-para("R1", "R2", ("A", "A2"), "B")
  ctz-def-ll("B2", ("R1", "R2"), ("A2", "Q"))
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  
  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat))
  ctz-draw(segment: ("A2", "B2"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("A", "A2"), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(segment: ("B", "B2"), stroke: (paint: accent.mat, dash: "dotted"))


  ctz-draw(points: ("A", "A2", "B", "B2", ), labels: (
  A: (pos: "above"),
  A2: (text: $A'$, pos: "below"),
  B: (pos: "above"),
  B2: (text: $B'$, pos: "below")
  ))

}),
caption: []
) <grafico_proiezioni_piano3>
]

#let grafici_proiezioni_piano = [
#align(center)[
  #grid(columns: 3, column-gutter: -0.5em, row-gutter: 1em, align: center + bottom)[#grafico_proiezioni_piano1][#grafico_proiezioni_piano2][#grafico_proiezioni_piano3]
]]

#let grafico_angolo_retta_piano1 = [
#figure(
  ctz-canvas(length: 0.65cm, clip-canvas: (-1, -1.4, 8, 5), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.01, fill: accent.mat))
  
  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (6.2, 1.0), 
    B: (6.2, 3.5),
    C: (1.5, 0.0),
    P1: (0, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (2, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-def-ll("R1", ("C", "A"), ("P1", "P4"))
  ctz-def-ll("R2", ("C", "A"), ("P2", "P3"))
  ctz-def-linear("R3", "C", "A", 1.3)

  ctz-def-para("S1", "S2", ("A", "B"), "R1")
  ctz-def-para("S3", "S4", ("A", "B"), "R2")
  ctz-def-para("S5", "S6", ("A", "B"), "R3")

  ctz-def-ll("T1", ("S1", "S2"), ("C", "B"))
  ctz-def-ll("T2", ("S3", "S4"), ("C", "B"))
  ctz-def-ll("T3", ("S5", "S6"), ("C", "B"))

  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-draw(segment: ("C", "B"), dim: $r$, stroke: (paint: accent.mat))
  ctz-draw(segment: ("C", "A"), dim: $r'$, dim-pos: "below", stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("A", "B"), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("C", "B", "A", label: $alpha$, radius: 0.75, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%))
  ctz-draw-mark-right-angle("C", "A", "B", size: 0.2)
  
  ctz-draw(points: (/* "A", "B", */ "C", /* "R1", "R2", "R3", "S1", "S2", "T1", "T2", "T3" */), labels: (
  A: (/* text: $r'$, */ pos: "below"),
  B: (/* text: $r$, */ pos: "above"),
  C: (text: $P$, pos: "left")
  ))

}),
caption: []
) <grafico_angolo_retta_piano1>
]

#let grafico_angolo_retta_piano2 = [
#figure(
  ctz-canvas(length: 0.65cm, clip-canvas: (-1, -1, 8, 7), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.01, fill: accent.mat))
  
  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(

    P1: (0, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (2, 2),
    P5: (0, 5),
    P6: (2, 8)
    )

  ctz-def-polygon("Prpp1", "P1", "P2", "P3", "P4")
  ctz-def-polygon("Prpp2", "P1", "P4", "P6", "P5")

  ctz-def-linear("A", "P1", "P4", 0.22)
  ctz-def-para("B1", "B2", ("P1", "P5"), "A")
  ctz-def-ll("B3", ("B1", "B2"), ("P5", "P6"))
  ctz-def-linear("B", "A", "B3", 0.8)
  ctz-def-linear("A1", "P2", "P3", 0.7)
  ctz-def-linear("C", "A", "A1", 0.7)
  ctz-def-para("C1", "C2", ("P2", "P3"), "C")
  ctz-def-ll("C3", ("C1", "C2"), ("P3", "P4"))
  ctz-def-ll("C4", ("C1", "C2"), ("P1", "P2"))
  ctz-def-para("B4", "B5", ("P5", "P6"), "B")
  ctz-def-ll("B6", ("P1", "P5"), ("B4", "B5"))
  ctz-def-ll("B7", ("P4", "P6"), ("B4", "B5"))


  ctz-draw("Prpp1", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  ctz-draw("Prpp2", fill: accent.mat.transparentize(82.5%), stroke: accent.mat.lighten(50%))

  ctz-draw(segment: ("A", "B2"), stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("A", "B"), dim: $p$, stroke: (paint: accent.mat))
  ctz-draw(segment: ("A", "A1"), dim: $r$, dim-pos: "below", stroke: (paint: accent.mat))
  ctz-draw(segment: ("C3", "C4"), dim: $s'$, dim-pos: "above", stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("B6", "B7"), dim: $s$, dim-pos: "below", stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw(segment: ("P1", "P4"), dim: $s''$, dim-pos: "below", stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw-angle("C", "C3", "A1", radius: 0.5, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%))
  ctz-draw-angle("P3", "P4", "P2", label: $alpha$, radius: 0.1, fill: none, stroke: none)
  ctz-draw-angle("P4", "P1", "P6", label: $beta$, radius: 0.1, fill: none, stroke: none)


  
  ctz-draw(points: ("A", "B", "C", /* "P1", "P2", "P3", "P4", "P5", "P6", "A1", "C1", "C2", "C3", "C4", "B1", "B2", "B3", "B4", "B5", "B6", "B7" */ ), labels: (
  A: "below left",
  B: (pos: "above left"),
  C: (pos: "above left"),
  Q: (/* text: $P$, */ pos: "left")
  ))

}),
caption: []
) <grafico_angolo_retta_piano2>
]

#let grafici_angolo_retta_piano = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 2em, align: center + bottom)[#grafico_angolo_retta_piano1][#grafico_angolo_retta_piano2]
]]