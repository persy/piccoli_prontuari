#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/ctz-euclide:0.2.0": *
#import "@preview/cetz-plot:0.1.4": plot

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
  ctz-canvas(length: 0.80cm, clip-canvas: (0, -0.8, 3, 4.5), {
  import cetz.draw: *
  ctz-init()

  /* ctz-show-clip(stroke:gray) */

  ctz-style(point: (shape: "dot", size: 0.04, fill: accent.mat))

  ctz-def-points(A: (0, 0), B: (0, 4), C: (2, 1), D: (2, 5), E: (5, 0.5), F: (5, 4.5))

  ctz-def-polygon("Prpp1", "A", "C", "D", "B")
  ctz-def-polygon("Prpp2", "C", "E", "F", "D")

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

  ctz-def-points(
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

#let grafico_angoloide1 = [
#figure(
  ctz-canvas(length: 0.65cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.01, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0),
    B: (4, 0),
    C: (5, 1),
    D: (2, 1.5),
    V: (3, 5),
    P1: (0, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (2, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat.lighten(50%)))
  ctz-draw-line("C", "D", "A", stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))

  ctz-draw-line-add("V", "A", add: (0, 0.2), stroke: accent.mat)
  ctz-draw-line-add("V", "B", add: (0, 0.2), stroke: accent.mat)
  ctz-draw-line-add("V", "C", add: (0, 0.2), stroke: accent.mat)
  ctz-draw-line-add("V", "D", add: (0, 0.2), stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(points: ("A", "B", "C", "D", "V"), labels: (
  A: "left",
  B: "below left",
  C: "right",
  D: "above left",
  V: "above"
  ))

}),
caption: []
) <grafico_angoloide1>
]

#let grafico_angoloide2 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.01, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0.5),
    B: (2, 0),
    C: (4.5, 0.5),
    D: (4.8, 1.5),
    E: (1.5, 1.5),
    V: (3, 5),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-ll("A1", ("P1", "P2"), ("V", "A"))
  ctz-def-ll("B1", ("P1", "P2"), ("V", "B"))
  ctz-def-ll("C1", ("P1", "P2"), ("V", "C"))
  ctz-def-ll("D1", ("P2", "P3"), ("V", "D"))
  ctz-def-ll("E1", ("P1", "P2"), ("V", "E"))

  ctz-def-linear("A2", "V", "A1", 1.2)
  ctz-def-linear("B2", "V", "B1", 1.2)
  ctz-def-linear("C2", "V", "C1", 1.2)
  ctz-def-linear("D2", "V", "D1", 1.2)
  ctz-def-linear("E2", "V", "E1", 1.2)

  ctz-draw-line("A", "B", "C", "D", stroke: (paint: accent.mat))
  ctz-draw-line("D", "E", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("V", "A", stroke: accent.mat)
  ctz-draw-line("V", "B", stroke: accent.mat)
  ctz-draw-line("V", "C", stroke: accent.mat)
  ctz-draw-line("V", "D", stroke: accent.mat)
  ctz-draw-line("V", "E", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A", "A1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("B", "B1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("C", "C1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("D", "D1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("E", "E1", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A1", "A2", stroke: (paint: accent.mat))
  ctz-draw-line("B1", "B2", stroke: (paint: accent.mat))
  ctz-draw-line("C1", "C2", stroke: (paint: accent.mat))
  ctz-draw-line("D1", "D2", stroke: (paint: accent.mat))
  ctz-draw-line("E1", "E2", stroke: (paint: accent.mat))

/*   ctz-draw(points: ("A", "B", "C", "D", "E", "V", "P1", "P2", "P3", "P4", "A1", "B1", "C1", "D1", "E1", "A2", "B2", "C2", "D2", "E2",), labels: (
  A: "left",
  B: "below left",
  C: "right",
  D: "above left",
  E: "above",
  V: "above"
  )) */

}),
caption: []
) <grafico_angoloide2>
]

#let grafico_angoloide3 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.01, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0.5),
    B: (4, 0),
    C: (2.5, 1.0),
    D: (4.8, 1.5),
    E: (1.2, 1.5),
    V: (1.5, 5),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-ll("A1", ("P1", "P2"), ("V", "A"))
  ctz-def-ll("B1", ("P1", "P2"), ("V", "B"))
  ctz-def-ll("C1", ("P1", "P2"), ("V", "C"))
  ctz-def-ll("D1", ("P2", "P3"), ("V", "D"))
  ctz-def-ll("E1", ("P1", "P2"), ("V", "E"))

  ctz-def-linear("A2", "V", "A1", 1.2)
  ctz-def-linear("B2", "V", "B1", 1.2)
  ctz-def-linear("C2", "V", "C1", 1.2)
  ctz-def-linear("D2", "V", "D1", 1.2)
  ctz-def-linear("E2", "V", "E1", 1.2)

  ctz-def-ll("CD", ("V", "B"), ("C", "D"))

  ctz-draw-line("A", "B", stroke: (paint: accent.mat))
  ctz-draw-line("B", "C", "CD", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("CD", "D", stroke: (paint: accent.mat))
  ctz-draw-line("D", "E", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("V", "A", stroke: accent.mat)
  ctz-draw-line("V", "B", stroke: accent.mat)
  ctz-draw-line("V", "C", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("V", "D", stroke: accent.mat)
  ctz-draw-line("V", "E", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A", "A1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("B", "B1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("C", "C1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("D", "D1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("E", "E1", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A1", "A2", stroke: (paint: accent.mat))
  ctz-draw-line("B1", "B2", stroke: (paint: accent.mat))
  ctz-draw-line("C1", "C2", stroke: (paint: accent.mat))
  ctz-draw-line("D1", "D2", stroke: (paint: accent.mat))
  ctz-draw-line("E1", "E2", stroke: (paint: accent.mat))

/*   ctz-draw(points: ("A", "B", "C", "D", "E", "V", "P1", "P2", "P3", "P4", "A1", "B1", "C1", "D1", "E1", "A2", "B2", "C2", "D2", "E2", "CD"), labels: (
  A: "left",
  B: "below left",
  C: "left",
  D: "above left",
  E: "above",
  V: "above"
  )) */

}),
caption: []
) <grafico_angoloide3>
]

#let grafici_angoloide2-3 = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 2em, align: center + bottom)[#grafico_angoloide2][#grafico_angoloide3]
]]

#let grafico_piramide1 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0.5),
    B: (2, 0),
    C: (4.8, 0.5),
    D: (4.8, 1.5),
    E: (2.0, 1.5),
    V: (6.5, 5.5),
    H: (6.5, 1.0),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat))
  ctz-draw-line("C", "D", "E", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("V", "A", stroke: accent.mat)
  ctz-draw-line("V", "B", stroke: accent.mat)
  ctz-draw-line("V", "C", stroke: accent.mat)
  ctz-draw-line("V", "D", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("V", "E", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("V", "H", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)


ctz-draw(points: ("V", "H"), labels: (
  V: "above",
  H: "left",
  ))

}),
caption: []
) <grafico_piramide1>
]

#let grafico_piramide2 = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (-0.5, 0.5),
    B: (2.5, -0.5),
    C: (5, 0.5),

    D: (2.7, 1.5),
    V: (1.8, 5.5),
    V1: (1.8, 1.0),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-midpoint("K", "A", "B")
  ctz-def-ll("H", ("A", "C"), ("V", "V1"))

  ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat))
  ctz-draw-line("C", "D", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("V", "A", stroke: accent.mat)
  ctz-draw-line("V", "B", stroke: accent.mat)
  ctz-draw-line("V", "C", stroke: accent.mat)
  ctz-draw-line("V", "D", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("V", "H", "K", "V", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)


ctz-draw(points: ("V", "H", "K"), labels: (
  V: "above",
  H: "right",
  K: "below"
  ))

}),
caption: []
) <grafico_piramide2>
]

#let grafici_piramide = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 2em, align: center + bottom)[#grafico_piramide1][#grafico_piramide2]
]]

#let grafico_piramide_sezione = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (-0.5, 0.5),
    B: (2.5, -0.5),
    C: (5, 0.5),

    D: (2.8, 1.5),
    V: (1.5, 6.5),
    V1: (1.5, 1.0),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-midpoint("K", "A", "B")
  ctz-def-ll("H", ("A", "C"), ("V", "V1"))
  ctz-def-linear("A1", "V", "A", 0.6)
  ctz-def-linear("B1", "V", "B", 0.6)
  ctz-def-linear("C1", "V", "C", 0.6)
  ctz-def-linear("D1", "V", "D", 0.6)
  ctz-def-ll("H1", ("A1", "C1"), ("V", "V1"))

  ctz-def-polygon("Szn", "A1", "B1", "C1", "D1")
  ctz-draw("Szn", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat))
  ctz-draw-line("C", "D", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("V", "A", stroke: accent.mat)
  ctz-draw-line("V", "B", stroke: accent.mat)
  ctz-draw-line("V", "C", stroke: accent.mat)
  ctz-draw-line("V", "D", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("V", "H", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)



ctz-draw(points: ("V", "H", "H1"), /* labels: (
  V: "above",
  H: "right",
  K: "below"
  ) */)

}),
caption: []
) <grafico_piramide_sezione>
]

#let grafico_piramide_retta = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (-0.5, 0.5),
    B: (2.2, -0.5),
    C: (5, 0.5),
    D: (2.8, 1.5),
    O: (2.375, 0.5),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-perp("S1", "S2", ("A", "C"), "O")
  ctz-def-linear("V", "S2", "S1", 1.05)


  ctz-def-midpoint("K", "A", "B")
  ctz-def-midpoint("J", "B", "C")

  ctz-def-ll("H", ("A", "C"), ("V", "O"))
  ctz-def-linear("A1", "V", "A", 0.6)
  ctz-def-linear("B1", "V", "B", 0.6)
  ctz-def-linear("C1", "V", "C", 0.6)
  ctz-def-linear("D1", "V", "D", 0.6)


  ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat))
  ctz-draw-line("C", "D", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("V", "A", stroke: accent.mat)
  ctz-draw-line("V", "B", stroke: accent.mat)
  ctz-draw-line("V", "C", stroke: accent.mat)
  ctz-draw-line("V", "D", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("V", "H", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw-line("V", "K", "O", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line("V", "J", "O", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-ellipse("Elps", (2.375, 0.5), 1.956, 0.702, angle: 2.5deg)
  ctz-draw("Elps", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)


ctz-draw(points: ("V", "H", "K", "J"), /* labels: (
  V: "above",
  H: "right",
  K: "below"
  ) */ )

}),
caption: []
) <grafico_piramide_retta>
]

#let grafici_piramide_sezione_retta = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.35em, row-gutter: 2em, align: center + bottom)[#grafico_piramide_sezione][#grafico_piramide_retta]
]]

#let grafico_tetraedro1 = [
#figure(
  ctz-canvas(length: 0.6cm , clip-canvas: (-1, -3, 6, 3), {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (0.5, 1),
    C: (5, 1),
    B: (2, -0.5),
    D: (2.5, 4.33),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-centroid("I", "A", "B", "C")
  ctz-draw-line("A", "D", "B", "A", stroke: (paint: accent.mat))
  ctz-draw-line("B", "D", "C", "B", stroke: (paint: accent.mat))

  ctz-draw-line("A", "C", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("D", "I", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)


  ctz-draw(points: ("A", "B", "C", "D", "I"), labels: (
    V: "above",
    H: "left",
    ))

}),
caption: []
) <grafico_tetraedro1>
]

#let grafico_tetraedro2 = [
#figure(
  ctz-canvas(length: 0.5cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (0, 0),
    C: (5, 0),
    B: (2.5, (-5 * calc.sqrt(3)) / 2),

    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-incenter("I", "A", "B", "C")
  ctz-draw-line("A", "B", "C", "A", stroke: (paint: accent.mat))

  ctz-def-polygon("Trgl", "A", "B", "C",)
  ctz-draw("Trgl", fill: accent.mat.transparentize(90%), stroke: accent.mat)

  ctz-def-rotation("A1", "C", "A", -120deg)
  ctz-def-rotation("B1", "B", "C", 60deg)
  ctz-def-rotation("C1", "A", "C", -60deg)
  ctz-draw-line("A1", "B1", "C1", "A1", stroke: (paint: accent.mat. lighten(50%)))

  ctz-draw-line("A", "C", stroke: (paint: accent.mat, dash: "dotted"))


  ctz-draw(points: ("A", "B", "C", "I", "A1", "B1", "C1",), labels: (
  A: "left",
  B: "below",
  C: "right",
  I: (text: $H$),
  A1: (text: $D$, pos: "below left"),
  B1: (text: $D$, pos: "below right"),
  C1: (text: $D$, pos: "above"),
   ))

}),
caption: []
) <grafico_tetraedro2>
]

#let grafici_tetraedro = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, row-gutter: 2em, align: center + bottom)[#grafico_tetraedro1][#grafico_tetraedro2]
]]

#let grafico_piramide_tronca = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (-0.5, 0.5),
    B: (2.5, -0.5),
    C: (5, 0.5),
    D: (2.8, 1.5),
    V: (1.5, 6.5),
    V1: (1.5, 1.0),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-midpoint("K", "A", "B")
  ctz-def-ll("H", ("A", "C"), ("V", "V1"))
  ctz-def-linear("A1", "V", "A", 0.6)
  ctz-def-linear("B1", "V", "B", 0.6)
  ctz-def-linear("C1", "V", "C", 0.6)
  ctz-def-linear("D1", "V", "D", 0.6)
  ctz-def-ll("H1", ("A1", "C1"), ("V", "V1"))

  ctz-def-polygon("Szn", "A1", "B1", "C1", "D1")
  ctz-draw("Szn", stroke: accent.mat)

  ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat))
  ctz-draw-line("C", "D", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A", "A1", stroke: accent.mat)
  ctz-draw-line("B", "B1", stroke: accent.mat)
  ctz-draw-line("C", "C1", stroke: accent.mat)
  ctz-draw-line("D", "D1", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("H", "H1", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)



ctz-draw(points: ("H", "H1", /* "A", "B", "C", "D" */), /* labels: (
  V: "above",
  H: "right",
  K: "below"
  ) */ )

}),
caption: []
) <grafico_piramide_tronca>
]

#let grafico_piramide_tronca_retta = [
#figure(
  ctz-canvas(length: 0.55cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (-0.5, 0.5),
    B: (2.2, -0.5),
    C: (5, 0.5),
    D: (2.8, 1.5),
    O: (2.375, 0.5),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-perp("S1", "S2", ("A", "C"), "O")
  ctz-def-linear("V", "S2", "S1", 1.05)


  ctz-def-midpoint("K", "A", "B")
  ctz-def-midpoint("J", "B", "C")

  ctz-def-ll("H", ("A", "C"), ("V", "O"))
  ctz-def-linear("A1", "V", "A", 0.6)
  ctz-def-linear("B1", "V", "B", 0.6)
  ctz-def-linear("C1", "V", "C", 0.6)
  ctz-def-linear("D1", "V", "D", 0.6)
  ctz-def-linear("O1", "V", "H", 0.6)

  ctz-def-polygon("Szn", "A1", "B1", "C1", "D1")
  ctz-draw("Szn", stroke: accent.mat)

  ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat))
  ctz-draw-line("C", "D", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A1", "A", stroke: accent.mat)
  ctz-draw-line("B1", "B", stroke: accent.mat)
  ctz-draw-line("C1", "C", stroke: accent.mat)
  ctz-draw-line("D1", "D", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("O1", "H", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-ll("A1B1", ("A1", "B1"), ("V", "K"))
  ctz-def-ll("B1C1", ("B1", "C1"), ("V", "J"))

  ctz-draw-line("O1", "A1B1", "K", "O", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line("O1", "B1C1", "J", "O", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-def-ellipse("Elps", "O", 1.956, 0.702, angle: 2.5deg)
  ctz-draw("Elps", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-def-ellipse("Elps1", "O1", 1.056, 0.402, angle: 2.5deg)
  ctz-draw("Elps1", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)


ctz-draw(points: ("H", "K", "J", /* "A", "B", "C", "D", "A1", "B1", "C1", "D1", */ "O1", "H", "K", "J"), /* labels: (
  V: "above",
  H: "right",
  K: "below"
  ) */ )

}),
caption: []
) <grafico_piramide_tronca_retta>
]

#let grafici_piramide_tronca_retta = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.35em, row-gutter: 2em, align: center + bottom)[#grafico_piramide_tronca][#grafico_piramide_tronca_retta]
]]

#let grafico_prisma1 = [
#figure(
  ctz-canvas(length: 0.45cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (-0.5, 0.5),
    B: (2.5, -0.5),
    C: (5, 0.5),
    D: (3.3, 1.5),
    E: (1.2, 1.5),
    R1: (-0.5, 0.5),
    R2: (1.5, 4),
    V1: (1.5, 1.0),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("C", "D", "E", "A", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")
  ctz-def-para("D1", "D2", ("R1", "R2"), "D")
  ctz-def-para("E1", "E2", ("R1", "R2"), "E")

  ctz-def-linear("A3", "A1", "A", 0.2)
  ctz-def-linear("B3", "B1", "B", 0.2)
  ctz-def-linear("C3", "C1", "C", 0.2)
  ctz-def-linear("D3", "D1", "D", 0.2)
  ctz-def-linear("E3", "E1", "E", 0.2)

  ctz-def-linear("A4", "A2", "A", 0.2)
  ctz-def-linear("B4", "B2", "B", 0.2)
  ctz-def-linear("C4", "C2", "C", 0.2)
  ctz-def-linear("D4", "D2", "D", 0.2)
  ctz-def-linear("E4", "E2", "E", 0.2)


  ctz-draw-line("A1", "A2", stroke: accent.mat)
  ctz-draw-line("B1", "B2", stroke: accent.mat,)
  ctz-draw-line("C1", "C2", stroke: accent.mat)
  ctz-draw-line("D1", "D2", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line("E1", "E2", stroke: (paint: accent.mat, dash: "dashed"))

  /* ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none) */



/* ctz-draw(points: (
  "A", "B", "C", "D", "E",
  "A1", "B1", "C1", "D1", "E1",
  "A2", "B2", "C2", "D2", "E2",
  "A3", "B3", "C3", "D3", "E3",
  "A4", "B4", "C4", "D4", "E4",
  ), labels: (
  V: "above",
  H: "right",
  K: "below"
  ) ) */

}),
caption: []
) <grafico_prisma1>
]

#let grafico_prisma2 = [
#figure(
  ctz-canvas(length: 0.45cm, clip-canvas: (-1, -3, 8, 3), {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (-0.5, 0.5),
    B: (2.5, -0.5),
    C: (5, 0.5),
    D: (3.3, 1.5),
    E: (1.2, 1.5),
    R1: (-0.5, 0.5),
    R2: (1.5, 4),
    V1: (1.5, 1.0),
    P1: (-5, -4),
    P2: (4, -4),
    P3: (6, -1),
    P4: (-3, -1),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")
  ctz-def-para("D1", "D2", ("R1", "R2"), "D")
  ctz-def-para("E1", "E2", ("R1", "R2"), "E")

  ctz-def-linear("A3", "A1", "A", 0.2)
  ctz-def-linear("B3", "B1", "B", 0.2)
  ctz-def-linear("C3", "C1", "C", 0.2)
  ctz-def-linear("D3", "D1", "D", 0.2)
  ctz-def-linear("E3", "E1", "E", 0.2)

  ctz-def-linear("A4", "A2", "A", 0.2)
  ctz-def-linear("B4", "B2", "B", 0.2)
  ctz-def-linear("C4", "C2", "C", 0.2)
  ctz-def-linear("D4", "D2", "D", 0.2)
  ctz-def-linear("E4", "E2", "E", 0.2)

  ctz-draw-line("A3", "B3", "C3", stroke: (paint: accent.mat))
  ctz-draw-line("C3", "D3", "E3", "A3", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A4", "B4", "C4", "D4", "E4", "A4", stroke: accent.mat)

  ctz-draw-line("A3", "A4", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: accent.mat,)
  ctz-draw-line("C3", "C4", stroke: accent.mat)
  ctz-draw-line("D3", "D4", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("E3", "E4", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)



/*   ctz-draw(points: (
    "A", "B", "C", "D", "E",
    "A1", "B1", "C1", "D1", "E1",
    "A2", "B2", "C2", "D2", "E2",
    "A3", "B3", "C3", "D3", "E3",
    "A4", "B4", "C4", "D4", "E4",
    ), labels: (
    V: "above",
    H: "right",
    K: "below"
    ) ) */

}),
caption: []
) <grafico_prisma2>
]

#let grafico_prisma3 = [
#figure(
  ctz-canvas(length: 0.45cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (-0.5, 0.5),
    B: (2.5, -0.5),
    C: (5, 0.5),
    D: (3.3, 1.5),
    E: (1.2, 1.5),
    H: (2.3, 0.7),
    R1: (-0.5, 0.5),
    R2: (-0.5, 4.5),
    V1: (1.5, 1.0),
    P1: (-3, -4),
    P2: (6, -4),
    P3: (8, -1),
    P4: (-1, -1),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")
  ctz-def-para("D1", "D2", ("R1", "R2"), "D")
  ctz-def-para("E1", "E2", ("R1", "R2"), "E")
  ctz-def-para("H1", "H2", ("R1", "R2"), "H")

  ctz-def-linear("A3", "A1", "A", 0.2)
  ctz-def-linear("B3", "B1", "B", 0.2)
  ctz-def-linear("C3", "C1", "C", 0.2)
  ctz-def-linear("D3", "D1", "D", 0.2)
  ctz-def-linear("E3", "E1", "E", 0.2)
  ctz-def-linear("H3", "H1", "H", 0.2)

  ctz-def-linear("A4", "A2", "A", 0.2)
  ctz-def-linear("B4", "B2", "B", 0.2)
  ctz-def-linear("C4", "C2", "C", 0.2)
  ctz-def-linear("D4", "D2", "D", 0.2)
  ctz-def-linear("E4", "E2", "E", 0.2)
  ctz-def-linear("H4", "H2", "H", 0.2)

  ctz-draw-line("A3", "B3", "C3", stroke: (paint: accent.mat))
  ctz-draw-line("C3", "D3", "E3", "A3", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A4", "B4", "C4", "D4", "E4", "A4", stroke: accent.mat)

  ctz-draw-line("A3", "A4", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: accent.mat,)
  ctz-draw-line("C3", "C4", stroke: accent.mat)
  ctz-draw-line("D3", "D4", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("E3", "E4", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("H3", "H4", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)

  ctz-draw(points: (
    /* "A", "B", "C", "D", "E",
    "A1", "B1", "C1", "D1", "E1",
    "A2", "B2", "C2", "D2", "E2",
    "A3", "B3", "C3", "D3", "E3",
    "A4", "B4", "C4", "D4", "E4", */
    "H3", "H4"
    ) )

}),
caption: []
) <grafico_prisma3>
]

#let grafici_prisma = [
#align(center)[
  #grid(columns: 3, column-gutter: -2.5em, row-gutter: 2em, align: center + bottom)[#grafico_prisma1][#grafico_prisma2][#grafico_prisma3]
]]

#let grafico_parallelepipedo1 = [
#figure(
  ctz-canvas(length: 0.5cm, clip-canvas: (-1, -3, 8, 3), {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (0.0, 0.5),
    B: (2.5, -0.5),
    C: (5, 0.5),
    D: (2.5, 1.5),
    R1: (0.5, -0.5),
    R2: (1.5, 2),
    P1: (-3.0, -3),
    P2: (5, -3),
    P3: (7, 0),
    P4: (-1.0, 0),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")
  ctz-def-para("D1", "D2", ("R1", "R2"), "D")

  ctz-def-linear("A3", "A1", "A", 0.2)
  ctz-def-linear("B3", "B1", "B", 0.2)
  ctz-def-linear("C3", "C1", "C", 0.2)
  ctz-def-linear("D3", "D1", "D", 0.2)

  ctz-def-linear("A4", "A2", "A", 0.2)
  ctz-def-linear("B4", "B2", "B", 0.2)
  ctz-def-linear("C4", "C2", "C", 0.2)
  ctz-def-linear("D4", "D2", "D", 0.2)

  ctz-draw-line("A3", "B3", "C3", stroke: (paint: accent.mat))
  ctz-draw-line("C3", "D3", "A3", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A4", "B4", "C4", "D4", "A4", stroke: accent.mat)

  ctz-draw-line("A3", "A4", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: accent.mat,)
  ctz-draw-line("C3", "C4", stroke: accent.mat)
  ctz-draw-line("D3", "D4", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A3", "C4", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("B3", "D4", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("C3", "A4", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("D3", "B4", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)



  /* ctz-draw(points: (
    "A", "B", "C", "D",
    "A1", "B1", "C1", "D1",
    "A2", "B2", "C2", "D2",
    "A3", "B3", "C3", "D3",
    "A4", "B4", "C4", "D4",
    ), labels: (
    V: "above",
    H: "right",
    K: "below"
    ) )  */

}),
caption: []
) <grafico_parallelepipedo1>
]

#let grafico_parallelepipedo2 = [
#figure(
  ctz-canvas(length: 0.5cm, clip-canvas: (-1, -3, 8, 3), {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (-0.5, -0.5),
    B: (4, -0.5),
    C: (5, 1.0),
    D: (0.5, 1.0),
    R1: (0.5, -0.5),
    R2: (0.5, 1.5),
    P1: (-3.0, -3.0),
    P2: (5, -3.0),
    P3: (7, 0),
    P4: (-1.0, 0),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")
  ctz-def-para("D1", "D2", ("R1", "R2"), "D")

  ctz-def-linear("A3", "A1", "A", 0.2)
  ctz-def-linear("B3", "B1", "B", 0.2)
  ctz-def-linear("C3", "C1", "C", 0.2)
  ctz-def-linear("D3", "D1", "D", 0.2)

  ctz-def-linear("A4", "A2", "A", 0.2)
  ctz-def-linear("B4", "B2", "B", 0.2)
  ctz-def-linear("C4", "C2", "C", 0.2)
  ctz-def-linear("D4", "D2", "D", 0.2)

  ctz-draw-line("A3", "B3", "C3", stroke: (paint: accent.mat))
  ctz-draw-line("C3", "D3", "A3", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-line("A4", "B4", "C4", "D4", "A4", stroke: accent.mat)

  ctz-draw-line("A3", "A4", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: accent.mat,)
  ctz-draw-line("C3", "C4", stroke: accent.mat)
  ctz-draw-line("D3", "D4", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-angle("P1", "P4", "P2", label: $alpha$, radius: 0.5, fill: none, stroke: none)



  /* ctz-draw(points: (
    "A", "B", "C", "D",
    "A1", "B1", "C1", "D1",
    "A2", "B2", "C2", "D2",
    "A3", "B3", "C3", "D3",
    "A4", "B4", "C4", "D4",
    ), labels: (
    V: "above",
    H: "right",
    K: "below"
    ) )  */

}),
caption: []
) <grafico_parallelepipedo2>
]

#let grafici_parallelepipedo = [
#align(center)[
  #grid(columns: 3, column-gutter: -0.5em, row-gutter: 2em, align: center + bottom)[#grafico_parallelepipedo1][#grafico_parallelepipedo2]
]]

#let grafico_poliedro_regolare1 = [
  #import "@preview/cetz:0.5.2"
#figure(

cetz.canvas(length: 1.8cm, {
  import cetz.draw: *

  // PARAMETRI DI ROTAZIONE
  let rot-x = 100deg
  let rot-y = -20deg
  let rot-z = -5deg

  // I 6 vertici dell'ottaedro regolare
  let v-orig = (
    (1, 0, 0),  // A
    (-1, 0, 0), // B
    (0, 1, 0),  // C
    (0, -1, 0), // D
    (0, 0, 1),  // E
    (0, 0, -1)  // F
  )


  // Le 8 facce triangolari
  let faces = (
    (0, 2, 4), // ACE
    (0, 4, 3), // AED
    (0, 3, 5), // ADF
    (0, 5, 2), // AFC
    (1, 4, 2), // BCE
    (1, 3, 4), // BDE
    (1, 5, 3), // BFD
    (1, 2, 5)  // BCF
  )

  // I 12 spigoli dell'ottaedro
  let edges = (
    (0, 2), (0, 3), (0, 4), (0, 5),
    (1, 2), (1, 3), (1, 4), (1, 5),
    (2, 4), (4, 3), (3, 5), (5, 2)
  )

  let rotate-3d(p, ax, ay, az) = {
    let (x, y, z) = p
    let cx = calc.cos(ax)
    let sx = calc.sin(ax)
    let (x1, y1, z1) = (x, y * cx - z * sx, y * sx + z * cx)

    let cy = calc.cos(ay)
    let sy = calc.sin(ay)
    let (x2, y2, z2) = (x1 * cy + z1 * sy, y1, -x1 * sy + z1 * cy)

    let cz = calc.cos(az)
    let sz = calc.sin(az)
    return (x2 * cz - y2 * sz, x2 * sz + y2 * cz, z2)
  }

  let v = v-orig.map(p => rotate-3d(p, rot-x, rot-y, rot-z))

  // Calcolo visibilità delle facce basato sul baricentro Z della faccia
  let face-visible = faces.map(f => {
    let z-sum = 0.0
    for idx in f { z-sum += v.at(idx).at(2) }
    return (z-sum / f.len()) > 0
  })

  // Uno spigolo è visibile se appartiene a una faccia visibile
  let is-edge-visible(e) = {
    let e0 = e.at(0)
    let e1 = e.at(1)
    for i in range(faces.len()) {
      if face-visible.at(i) {
        let f = faces.at(i)
        if f.contains(e0) and f.contains(e1) { return true }
      }
    }
    return false
  }

  // Spigoli posteriori (tratteggiati)
  for edge in edges {
    if not is-edge-visible(edge) {
      line(v.at(edge.at(0)), v.at(edge.at(1)), stroke: (paint: accent.mat, dash: "dotted"))
    }
  }

  // Spigoli anteriori (continui)
  for edge in edges {
    if is-edge-visible(edge) {
      line(v.at(edge.at(0)), v.at(edge.at(1)), stroke: (paint: accent.mat))
    }
  }
  // Etichette alfabetiche per i 6 vertici
  /* let labels = ("A", "B", "C", "D", "E", "F") */

  // Vertici e Lettere
  /* for i in range(v.len()) {
    let p = v.at(i)
    circle(p, radius: 0.04, fill: blue.lighten(20%), stroke: none)

    let dist = calc.sqrt(p.at(0) * p.at(0) + p.at(1) * p.at(1))
    // Piccolo controllo per evitare divisioni per zero se il vertice è perfettamente al centro
    let off-x = if dist > 0.01 { (p.at(0) / dist) * 0.18 } else { 0.12 }
    let off-y = if dist > 0.01 { (p.at(1) / dist) * 0.18 } else { 0.12 }

    content(
      (p.at(0) + off-x, p.at(1) + off-y),
      text(size: 8pt, font: "Liberation Sans", style: "italic", labels.at(i))
    )
  } */
}),
caption: []
) <grafico_poliedro_regolare1>
]

#let grafico_poliedro_regolare2 = [
#figure(
  ctz-canvas(length: 0.6cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.09, fill: accent.mat))

  ctz-def-points(
    A: (0.0, 0.0),
    A1: (2.0, 0.0)
  )

  ctz-def-rotation("A2", "A1", "A", 60deg)
  ctz-def-rotation("A3", "A1", "A2", 60deg)
  ctz-def-rotation("A4", "A2", "A3", -60deg)
  ctz-def-rotation("A5", "A3", "A4", -120deg)
  ctz-def-rotation("A6", "A", "A1", -180deg)
  ctz-def-rotation("A7", "A3", "A6", -60deg)
  ctz-def-rotation("A8", "A6", "A7", 60deg)
  ctz-def-rotation("A9", "A6", "A1", -60deg)

  ctz-draw-line("A1", "A", "A2", "A1", "A3", "A6", "A7", "A8", "A6", "A9", "A1", "A6", stroke: accent.mat)
  ctz-draw-line("A4", "A2", "A3", "A2", "A5", "A4", "A3", "A7", stroke: accent.mat)


  /* ctz-draw(points: ("A", "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9"), labels: (
    A: (text: $E$, pos: "left"),
    A1: (text: $C$, pos: "below left"),
    A2: (text: $B$, pos: "left"),
    A3: (text: $F$, pos: "above right"),
    A4: (text: $A$, pos: "above right"),
    A5: (text: $E$, pos: "above left"),
    A6: (text: $D$, pos: "below right"),
    A7: (text: $A$, pos: "above right"),
    A8: (text: $E$, pos: "below right"),
    A9: (text: $E$, pos: "below"),
      )
    )  */

}),
caption: []
) <grafico_poliedro_regolare2>
]

#let grafico_poliedro_regolare3 = [
#import "@preview/cetz:0.5.2" // TODO Necessario fintanto che cetz-euclide non diventerà compatibile con versioni cetz più aggiornate
#figure(cetz.canvas(length: 1.0cm, {
  import cetz.draw: *

  // PARAMETRI DI ROTAZIONE
  let rot-x = 120deg
  let rot-y = 30deg
  let rot-z = 0deg

  let phi = (1 + calc.sqrt(5)) / 2
  let v-orig = (
    (0, 1, phi), (0, 1, -phi), (0, -1, phi), (0, -1, -phi),
    (1, phi, 0), (1, -phi, 0), (-1, phi, 0), (-1, -phi, 0),
    (phi, 0, 1), (phi, 0, -1), (-phi, 0, 1), (-phi, 0, -1)
  )

  // Le 20 facce dell'icosaedro
  let faces = (
    (0, 8, 4), (0, 4, 6), (0, 6, 10), (0, 10, 2), (0, 2, 8),
    (1, 4, 9), (1, 9, 3), (1, 3, 11), (1, 11, 6), (1, 6, 4),
    (2, 5, 8), (2, 7, 5), (2, 10, 7), (3, 9, 5), (3, 5, 7),
    (3, 7, 11), (4, 9, 8), (5, 8, 9), (6, 11, 10), (7, 10, 11)
  )

  let edges = (
    (0,2), (0,4), (0,6), (0,8), (0,10),
    (1,3), (1,4), (1,6), (1,9), (1,11),
    (2,5), (2,7), (2,8), (2,10),
    (3,5), (3,7), (3,9), (3,11),
    (4,6), (4,8), (4,9),
    (5,7), (5,8), (5,9),
    (6,10), (6,11),
    (7,10), (7,11),
    (8,9), (10,11)
  )

  let rotate-3d(p, ax, ay, az) = {
    let (x, y, z) = p
    let cx = calc.cos(ax)
    let sx = calc.sin(ax)
    let (x1, y1, z1) = (x, y * cx - z * sx, y * sx + z * cx)

    let cy = calc.cos(ay)
    let sy = calc.sin(ay)
    let (x2, y2, z2) = (x1 * cy + z1 * sy, y1, -x1 * sy + z1 * cy)

    let cz = calc.cos(az)
    let sz = calc.sin(az)
    return (x2 * cz - y2 * sz, x2 * sz + y2 * cz, z2)
  }

  let v = v-orig.map(p => rotate-3d(p, rot-x, rot-y, rot-z))

  // Una faccia è visibile se la coordinata Z del suo centro geometrico è positiva
  let face-visible = faces.map(f => {
    let z0 = v.at(f.at(0)).at(2)
    let z1 = v.at(f.at(1)).at(2)
    let z2 = v.at(f.at(2)).at(2)
    return (z0 + z1 + z2) / 3 > 0
  })

  // Uno spigolo è visibile se appartiene ad almeno una faccia visibile
  let is-edge-visible(e) = {
    let e0 = e.at(0)
    let e1 = e.at(1)

    for i in range(faces.len()) {
      if face-visible.at(i) {
        let f = faces.at(i)
        if f.contains(e0) and f.contains(e1) {
          return true
        }
      }
    }
    return false
  }

  // Disegna i lati nascosti
  for edge in edges {
    if not is-edge-visible(edge) {
      let p1 = v.at(edge.at(0))
      let p2 = v.at(edge.at(1))
      line(p1, p2, stroke: (paint: accent.mat, dash: "dotted"))
    }
  }

  // Disegna i lati visibili
  for edge in edges {
    if is-edge-visible(edge) {
      let p1 = v.at(edge.at(0))
      let p2 = v.at(edge.at(1))
      line(p1, p2, stroke: (paint: accent.mat,))
    }
  }

  // Array di etichette per i 12 vertici
  /* let labels = ("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L") */

  // Nodi e Lettere dei Vertici
  /*for i in range(v.len()) {
    let p = v.at(i)
    circle(p, radius: 0.01, fill: accent.mat.lighten(20%), stroke: none)

     // Calcolo dell'offset (direzione radiale rispetto al centro 0,0)
    let dist = calc.sqrt(p.at(0) * p.at(0) + p.at(1) * p.at(1))
    let off-x = (p.at(0) / dist) * 0.15
    let off-y = (p.at(1) / dist) * 0.15

    content(
      (p.at(0) + off-x, p.at(1) + off-y),
      text(style: "italic", labels.at(i))
    )
  }*/



}),
caption: []
) <grafico_poliedro_regolare3>
]

#let grafico_poliedro_regolare4 = [
#figure(
ctz-canvas(length: 0.6cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.09, fill: accent.mat))

  ctz-def-points(
    A1: (0.0, 0.0),
    A2: (2.0, 0.0)
  )

  ctz-def-rotation("A3", "A1", "A2", 180deg)
  ctz-def-rotation("A4", "A2", "A3", 180deg)
  ctz-def-rotation("A5", "A3", "A4", 180deg)
  ctz-def-rotation("A6", "A4", "A5", 180deg)
  ctz-def-rotation("B1", "A2", "A1", -60deg)
  ctz-def-rotation("B2", "A2", "B1", -60deg)
  ctz-def-rotation("B3", "B1", "B2", 180deg)
  ctz-def-rotation("B4", "B2", "B3", 180deg)
  ctz-def-rotation("B5", "B3", "B4", 180deg)
  ctz-def-rotation("C1", "A2", "A1", 120deg)
  ctz-def-rotation("C2", "A2", "A1", 60deg)
  ctz-def-rotation("C3", "A2", "C2", 60deg)
  ctz-def-rotation("C4", "C2", "C3", 180deg)
  ctz-def-rotation("C5", "C3", "C4", 180deg)
  ctz-def-rotation("C6", "C4", "C5", 180deg)
  ctz-def-rotation("D1", "C2", "C1", 120deg)
  ctz-def-rotation("D2", "C2", "C1", 60deg)
  ctz-def-rotation("D3", "D1", "D2", 180deg)
  ctz-def-rotation("D4", "D2", "D3", 180deg)
  ctz-def-rotation("D5", "D3", "D4", 180deg)
  ctz-def-rotation("D6", "D4", "D5", 180deg)


  ctz-draw-line("B1", "C1", "C6", "B4", "D4", "B1", stroke: accent.mat)
  ctz-draw-line("C1", "D2", "B2", "D5", "B5", "A6", "A1","D3", "B3", "D6", "A6", stroke: accent.mat)

  /* ctz-draw(points: ("A1", "A2", "A3", "A4", "A5",  "A6", "B1", "B2", "B3", "B4", "B5", "C2", "C1", "C3", "C4", "C5", "C6", "D1", "D2",  "D3", "D4", "D5", "D6" ), labels: (
    A: "above",
      )
    )  */

}),
caption: []
) <grafico_poliedro_regolare4>
]

#let grafico_poliedro_regolare5 = [
#figure(cetz.canvas(length: 1.0cm, {
  import cetz.draw: *

  // PARAMETRI DI ROTAZIONE
  let rot-x = 120deg
  let rot-y = 54deg
  let rot-z = 9deg

  let phi = (1 + calc.sqrt(5)) / 2
  let inv-phi = 1 / phi

  // I 20 vertici del dodecaedro
  let v-orig = (
    // 8 vertici del cubo interno
    (1, 1, 1), (1, 1, -1), (1, -1, 1), (1, -1, -1),
    (-1, 1, 1), (-1, 1, -1), (-1, -1, 1), (-1, -1, -1),
    // 4 vertici su piani (0, 1/phi, phi)
    (0, inv-phi, phi), (0, inv-phi, -phi), (0, -inv-phi, phi), (0, -inv-phi, -phi),
    // 4 vertici su piani (phi, 0, 1/phi)
    (phi, 0, inv-phi), (phi, 0, -inv-phi), (-phi, 0, inv-phi), (-phi, 0, -inv-phi),
    // 4 vertici su piani (1/phi, phi, 0)
    (inv-phi, phi, 0), (inv-phi, -phi, 0), (-inv-phi, phi, 0), (-inv-phi, -phi, 0)
  )

  // Etichette alfabetiche per i 20 vertici
  let labels = ("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T")

  // Le 12 facce pentagonali (indici dei vertici)
  let faces = (
    (0, 8, 10, 2, 12),    // Faccia davanti alta
    (0, 12, 13, 1, 16),   // Faccia destra alta
    (0, 16, 18, 4, 8),    // Faccia sinistra alta
    (8, 4, 14, 6, 10),    // Faccia sinistra bassa
    (10, 6, 19, 17, 2),   // Faccia davanti bassa
    (2, 17, 3, 13, 12),   // Faccia destra bassa
    (1, 13, 3, 11, 9),    // Faccia posteriore destra
    (1, 9, 5, 18, 16),    // Faccia posteriore sinistra alta
    (4, 18, 5, 15, 14),   // Faccia laterale sinistra
    (6, 14, 15, 7, 19),   // Faccia posteriore sinistra bassa
    (3, 17, 19, 7, 11),   // Faccia inferiore destra
    (5, 9, 11, 7, 15)     // Faccia posteriore centrale
  )

  // Per i poliedri complessi, generiamo gli spigoli unici direttamente dalle facce
  let edges = (
    (0,8), (0,12), (0,16), (1,9), (1,13), (1,16), (2,10), (2,12), (2,17), (3,11),
    (3,13), (3,17), (4,8), (4,14), (4,18), (5,9), (5,15), (5,18), (6,10), (6,14),
    (6,19), (7,11), (7,15), (7,19), (8,10), (9,11), (12,13), (14,15), (16,18), (17,19)
  )

  let rotate-3d(p, ax, ay, az) = {
    let (x, y, z) = p
    let cx = calc.cos(ax)
    let sx = calc.sin(ax)
    let (x1, y1, z1) = (x, y * cx - z * sx, y * sx + z * cx)

    let cy = calc.cos(ay)
    let sy = calc.sin(ay)
    let (x2, y2, z2) = (x1 * cy + z1 * sy, y1, -x1 * sy + z1 * cy)

    let cz = calc.cos(az)
    let sz = calc.sin(az)
    return (x2 * cz - y2 * sz, x2 * sz + y2 * cz, z2)
  }

  let v = v-orig.map(p => rotate-3d(p, rot-x, rot-y, rot-z))

  // Calcolo visibilità delle facce basato sul baricentro Z della faccia
  let face-visible = faces.map(f => {
    let z-sum = 0.0
    for idx in f { z-sum += v.at(idx).at(2) }
    return (z-sum / f.len()) > 0
  })

  // Uno spigolo è visibile se unisce due vertici appartenenti a una faccia visibile
  let is-edge-visible(e) = {
    let e0 = e.at(0)
    let e1 = e.at(1)
    for i in range(faces.len()) {
      if face-visible.at(i) {
        let f = faces.at(i)
        if f.contains(e0) and f.contains(e1) { return true }
      }
    }
    return false
  }

  // Lati posteriori (tratteggiati)
  for edge in edges {
    if not is-edge-visible(edge) {
      line(v.at(edge.at(0)), v.at(edge.at(1)), stroke: (paint: accent.mat, thickness: 1pt, dash: "dotted"))
    }
  }

  // Lati anteriori (continui)
  for edge in edges {
    if is-edge-visible(edge) {
      line(v.at(edge.at(0)), v.at(edge.at(1)), stroke: (paint: accent.mat))
    }
  }

  // Vertici e Lettere
  /* for i in range(v.len()) {
    let p = v.at(i)
    circle(p, radius: 0.04, fill: blue.lighten(20%), stroke: none)

    let dist = calc.sqrt(p.at(0) * p.at(0) + p.at(1) * p.at(1))
    let off-x = (p.at(0) / dist) * 0.18
    let off-y = (p.at(1) / dist) * 0.18

    content(
      (p.at(0) + off-x, p.at(1) + off-y),
      text(size: 8pt, font: "Liberation Sans", style: "italic", labels.at(i))
    )
  } */
}),
caption: []
) <grafico_poliedro_regolare5>
]

#let grafico_poliedro_regolare6 = [
#figure(
ctz-canvas(length: 0.6cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.09, fill: accent.mat))

  ctz-def-points(
    A1: (0.0, 0.0),
    A2: (1.5, 0.0)
  )

  ctz-def-rotation("A3", "A1", "A2", -108deg)
  ctz-def-rotation("A4", "A2", "A3", -108deg)
  ctz-def-rotation("A5", "A3", "A4", -108deg)

  ctz-def-rotation("B1", "A5", "A4", -108deg)
  ctz-def-rotation("B2", "A4", "B1", -108deg)
  ctz-def-rotation("B3", "B1", "B2", -108deg)

  ctz-def-rotation("C1", "A1", "A5", -108deg)
  ctz-def-rotation("C2", "A5", "C1", -108deg)
  ctz-def-rotation("C3", "C1", "C2", -108deg)

  ctz-def-rotation("D1", "A2", "A1", -108deg)
  ctz-def-rotation("D2", "A1", "D1", -108deg)
  ctz-def-rotation("D3", "D1", "D2", -108deg)

  ctz-def-rotation("E1", "A2", "A3", 108deg)
  ctz-def-rotation("E2", "A3", "E1", 108deg)
  ctz-def-rotation("E3", "E1", "E2", 108deg)

  ctz-def-rotation("F1", "E2", "E1", 108deg)
  ctz-def-rotation("F2", "E1", "F1", 108deg)
  ctz-def-rotation("F3", "F1", "F2", 108deg)

  ctz-def-rotation("G1", "F2", "F3", -108deg)
  ctz-def-rotation("G2", "F3", "G1", -108deg)
  ctz-def-rotation("G3", "G1", "G2", -108deg)

  ctz-def-rotation("H1", "F2", "G3", -108deg)
  ctz-def-rotation("H2", "G3", "H1", -108deg)
  ctz-def-rotation("H3", "H1", "H2", -108deg)

  ctz-def-rotation("I1", "G2", "G3", 108deg)
  ctz-def-rotation("I2", "G3", "I1", 108deg)
  ctz-def-rotation("I3", "I1", "I2", 108deg)

  ctz-def-rotation("J1", "G1", "G2", 108deg)
  ctz-def-rotation("J2", "G2", "J1", 108deg)
  ctz-def-rotation("J3", "J1", "J2", 108deg)

  ctz-def-rotation("K1", "G1", "F3", -108deg)
  ctz-def-rotation("K2", "F3", "K1", -108deg)
  ctz-def-rotation("K3", "K1", "K2", -108deg)

  ctz-def-rotation("L1", "A3", "A4", 108deg)
  ctz-def-rotation("L2", "A4", "L1", 108deg)
  ctz-def-rotation("L3", "L1", "L2", 108deg)

  ctz-draw-line("A2", "D3", "D2", "D1", "A1", "A2", "A3", "A4", "A5", "A1", "C3", "C2", "C1", "A5", "B3", "B2", "B1", "A4", "L1", "L2", "L3", "A3", "E1", "E2", "E3", "A2", "A3", "E1", "F1", "F2", "H3", "H2", "H1", "G3", "I1", "I2", "I3", "G2", "J1", "J2", "J3", "G1", "K3", "K2", "K1", "F3", "G1", "G2", "G3", "F2", "F3", "E2", stroke: accent.mat)


/*   ctz-draw(
    points: (
    "A1", "A2", "A3", "A4", "A5",
    "B1", "B2", "B3",
    "C1", "C2", "C3",
    "D1", "D2", "D3",
    "E1", "E2", "E3",
    "F1", "F2", "F3",
    "G1", "G2", "G3",
    "H1", "H2", "H3",
    "I1", "I2", "I3",
    "J1", "J2", "J3",
    "K1", "K2", "K3",
    "L1", "L2", "L3"
    ),
    labels: (
    A: "above",
    )
  ) */

}),
caption: []
) <grafico_poliedro_regolare6>
]

#let grafici_poliedro_regolare = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 2em, align: center + bottom)[#grafico_poliedro_regolare1][#grafico_poliedro_regolare2][#grafico_poliedro_regolare3][#grafico_poliedro_regolare4][#grafico_poliedro_regolare5][#grafico_poliedro_regolare6]
]]

#let grafico_curva_piana1 = [
#import "@preview/cetz:0.5.2"
#figure(
cetz.canvas({
  import cetz.draw: *

  rotate(90deg)

  plot.plot(
    size: (4.5, 4.5),
    x-domain: (0, 1),
    y-domain: (0, 0.6),
    axis-style: none,
    x-tick-step: none,
    y-tick-step: none,
    x-grid: false,
    y-grid: false,

    {
      plot.add(
        domain: (0, 1),
        style: (stroke: 1pt + accent.mat),
        z => if z < 0.3 {
          0.1 + z * 0.8
        } else {
          calc.sin((z - 0.3) / 0.7 * calc.pi / 2 + calc.pi / 6) * 0.45 + 0.11
        },
        samples: 250
      )
      plot.add(
        domain: (0, 1),
        style: (stroke: (dash: "dashed", paint: accent.mat.lighten(20%), thickness: 1pt)),
        x => 0.05,
      )
      plot.annotate({
        content((0.81, 0.27), $a$, anchor: "north-west", padding: 1pt)
      })
    }
  )
}),
caption: []
) <grafico_curva_piana1>
]

#let grafico_curva_piana2 = [

  #figure(
cetz.canvas(length: 4cm, {
  import cetz.draw: *

  let rot-x = -110deg
  let rot-z = 33deg

  let profile(z) = {
    if z < 0.3 {
      return 0.1 + z * 0.8
    } else {
      return calc.sin((z - 0.3) / 0.7 * calc.pi / 2 + calc.pi / 6) * 0.45 + 0.11
    }
  }

  let project(x, y, z) = {
    let cx = calc.cos(rot-x)
    let sx = calc.sin(rot-x)
    let cz = calc.cos(rot-z)
    let sz = calc.sin(rot-z)

    let x1 = x * cz - y * sz
    let y1 = x * sz + y * cz
    let y2 = y1 * cx - z * sx
    let z2 = y1 * sx + z * cx
    return (x1, y2, z2)
  }

  let n-meridiani = 16
  let n-paralleli = 16

  let (ax-start, ay-start, az-start) = project(0, 0, -0.1)
  let (ax-end, ay-end, az-end) = project(0, 0, 1.1)
  line((ax-start, ay-start), (ax-end, ay-end), stroke: (paint: accent.mat.lighten(10%), dash: "dashed"))

  let cx = calc.cos(rot-x)
  let sx = calc.sin(rot-x)
  let cz = calc.cos(rot-z)
  let sz = calc.sin(rot-z)

  for i in range(n-paralleli + 1) {
    let z = i / n-paralleli
    let r = profile(z)

    let steps = 40
    for j in range(steps) {
      let ang1 = j / steps * 2 * calc.pi
      let ang2 = (j + 1) / steps * 2 * calc.pi

      let p1 = project(r * calc.cos(ang1), r * calc.sin(ang1), z)
      let p2 = project(r * calc.cos(ang2), r * calc.sin(ang2), z)

      let ang-mid = (ang1 + ang2) / 2
      let nx = calc.cos(ang-mid)
      let ny = calc.sin(ang-mid)

      let nz-rot = (nx * sz + ny * cz) * sx

      let is-visible = (nz-rot < 0) or (i == n-paralleli) or (i == 0)

      if is-visible {
        line((p1.at(0), p1.at(1)), (p2.at(0), p2.at(1)), stroke: accent.mat)
      } else {
        line((p1.at(0), p1.at(1)), (p2.at(0), p2.at(1)), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))
      }
    }
  }

  for i in range(n-meridiani) {
    let ang = i / n-meridiani * 2 * calc.pi

    let steps = 30
    for j in range(steps) {
      let z1 = j / steps
      let z2 = (j + 1) / steps

      let r1 = profile(z1)
      let r2 = profile(z2)

      let p1 = project(r1 * calc.cos(ang), r1 * calc.sin(ang), z1)
      let p2 = project(r2 * calc.cos(ang), r2 * calc.sin(ang), z2)

      let nx = calc.cos(ang)
      let ny = calc.sin(ang)

      let nz-rot = (nx * sz + ny * cz) * sx
      let is-visible = nz-rot < 0

      if is-visible {
        line((p1.at(0), p1.at(1)), (p2.at(0), p2.at(1)), stroke: accent.mat)
      } else {
        line((p1.at(0), p1.at(1)), (p2.at(0), p2.at(1)), stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))
      }
    }
  }

  content((ax-end + 0.05, ay-end - 0.05), text(style: "italic", "a"))
}),
caption: []
  ) <grafico_curva_piana2>
]

#let grafici_curva_piana = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 2em, align: center + bottom)[#grafico_curva_piana1][#grafico_curva_piana2]
]]

#let grafico_cilindro1 = [
#figure(
  ctz-canvas(length: 0.5cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0),
    B: (2.5, 0),
    C: (5, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

/*   ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("C", "D", "E", "A", stroke: (paint: accent.mat, dash: "dotted")) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")
/*   ctz-def-para("D1", "D2", ("R1", "R2"), "D")
  ctz-def-para("E1", "E2", ("R1", "R2"), "E") */

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)
/*   ctz-def-linear("D3", "D1", "D", 0.2)
  ctz-def-linear("E3", "E1", "E", 0.2) */

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)
/*   ctz-def-linear("D4", "D2", "D", 0.2)
  ctz-def-linear("E4", "E2", "E", 0.2) */

  ctz-def-polygon("Rtng", "A1", "B1", "B2", "A2")
  ctz-draw("Rtng", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(90%))
  ctz-draw-segment("A1", "A2", arrows: none, dim: $g$, dim-pos: "left", stroke: accent.mat)
  ctz-draw-line("C1", "C2", stroke: accent.mat)
  ctz-draw-segment("B1", "B2", arrows: none, dim: $a$, dim-pos: "right", stroke: (paint: accent.mat, dash: "dashed"))

  ctz-draw(ellipse: ("B3", 2.5, 1.0, 0deg), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(ellipse: ("B4", 2.5, 1.0, 0deg), stroke: (paint: accent.mat, dash: "dotted"))


/* ctz-draw(points: (
  "A", "B", "C", /* "D", "E", */
  "A1", "B1", "C1", /* "D1", "E1",  */
  "A2", "B2", "C2", /* "D2", "E2", */
  "A3", "B3", "C3", /* "D3", "E3",  */
  "A4", "B4", "C4", /* "D4", "E4", */
  ), labels: (
  V: "above",
  H: "right",
  K: "below"
  ) ) */

}),
caption: []
) <grafico_cilindro1>
]

#let grafico_cilindro2 = [
#figure(
  ctz-canvas(length: 0.5cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0),
    B: (2.0, 0),
    C: (4, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)

  ctz-draw-line("A3", "A4", stroke: accent.mat)
  ctz-draw-line("C3", "C4", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: (paint: accent.mat, dash: "dashed"))

  //ctz-draw(ellipse: ("B3", 2.5, 0.5, 0deg), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw(ellipse: ("B4", 2, 0.5, 0deg), stroke: (paint: accent.mat))

  cetz.draw.arc("C3", start: 0deg, stop: 180deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "dotted")) 
  cetz.draw.arc("A3", start: 180deg, stop: 360deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "solid")) 

  ctz-draw(points: (
    "B4", "B3"
    ), labels: (
    B4: (text: $B$, pos: "right"),
    B3: (text: $A$, pos: "right"),
    ) )

}),
caption: []
) <grafico_cilindro2>
]

#let grafici_cilindro = [
#align(center)[
  #grid(columns: 2, column-gutter: 5em, row-gutter: 2em, align: center + bottom)[#grafico_cilindro1][#grafico_cilindro2]
]]

#let grafico_cilindro3 = [
#figure(
  ctz-canvas(length: 0.5cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0),
    B: (2.0, 0),
    C: (4, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)

  ctz-def-linear("R", "B3", "A1", 0.3)

  ctz-def-polygon("Rctn", "C3", (5 + 2 * calc.pi * 2.0, -2.4), (5 + 2 * calc.pi * 2.0, 2.4), "C4", stroke: accent.mat)

  ctz-draw("Rctn", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))
  ctz-draw-line("A3", "A4", stroke: accent.mat)
  ctz-draw-line("C3", "C4", stroke: accent.mat)
  ctz-draw-segment("B3", "B4", arrows: none, dim: $h$, dim-pos: "left", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-segment("B3", "R", arrows: none, dim: $r$, dim-pos: "above left", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw(ellipse: ("B4", 2, 0.5, 0deg), stroke: (paint: accent.mat))
  cetz.draw.arc("C3", start: 0deg, stop: 180deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "dotted")) 
  cetz.draw.arc("A3", start: 180deg, stop: 360deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "solid"))


}),
caption: []
) <grafico_cilindro3>
]

#let grafico_cilindro4 = [
#figure(
  ctz-canvas(length: 0.5cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0),
    B: (2.0, 0),
    C: (4, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)

  ctz-def-linear("R", "B3", "A1", 0.3)

  ctz-def-polygon("Rctn", "C3", (5 + 2 * calc.pi * 2.0, -2.4), (5 + 2 * calc.pi * 2.0, 2.4), "C4", stroke: accent.mat)

  ctz-draw-segment("A3", (0, 3.5), arrows: none, dim: $h_(max)$, dim-pos: "left", stroke: accent.mat)
  ctz-draw-segment("C3", "C4", arrows: none, dim: $h_(min)$, dim-pos: "right", stroke: accent.mat)

  ctz-draw(ellipse: ((2.0, 3.0), 2.099, 1.0, -20deg), stroke: (paint: accent.mat,))
  cetz.draw.arc("C3", start: 0deg, stop: 180deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "dotted"))
  cetz.draw.arc("A3", start: 180deg, stop: 360deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "solid")) 


/* ctz-draw(points: (
  "A", "B", "C", /* "D", "E", */
  "A1", "B1", "C1", /* "D1", "E1",  */
  "A2", "B2", "C2", /* "D2", "E2", */
  "A3", "B3", "C3", /* "D3", "E3",  */
  "A4", "B4", "C4", /* "D4", "E4", */
  ), labels: (
  V: "above",
  H: "right",
  K: "below"
  ) )  */

/*   ctz-draw(points: (
    "B4", "B3"
    ), labels: (
    B4: (text: $B$, pos: "right"),
    B3: (text: $A$, pos: "right"),
    ) ) */

}),
caption: []
) <grafico_cilindro4>
]

#let grafici_cilindro2 = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 2em, align: center + bottom)[#grafico_cilindro3][#grafico_cilindro4]
]]

#let grafico_cono1 = [
#figure(
  ctz-canvas(length: 0.5cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)
  ctz-def-points(
    A: (0, 0),
    B: (2.5, 0),
    C: (5, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

/*   ctz-draw-line("A", "B", "C", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-line("C", "D", "E", "A", stroke: (paint: accent.mat, dash: "dotted")) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")
/*   ctz-def-para("D1", "D2", ("R1", "R2"), "D")
  ctz-def-para("E1", "E2", ("R1", "R2"), "E") */

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)
/*   ctz-def-linear("D3", "D1", "D", 0.2)
  ctz-def-linear("E3", "E1", "E", 0.2) */

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)
/*   ctz-def-linear("D4", "D2", "D", 0.2)
  ctz-def-linear("E4", "E2", "E", 0.2) */

  ctz-def-polygon("Trng", "C1", "B1", "B2", )
  ctz-draw("Trng", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(90%))
  ctz-draw-segment("A3", "B2", stroke: accent.mat)
  ctz-draw-line("C3", "B2", stroke: accent.mat)
  ctz-draw-segment("B1", "B2", arrows: none, dim: $a$, dim-pos: "left", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-segment("C1", "B2", arrows: none, dim: $g$, dim-pos: "right", stroke: (paint: accent.mat.lighten(50%)))

  ctz-draw(ellipse: ("B3", 2.5, 1.0, 0deg), stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-angle("B2", "B1", "C1", label: $alpha$, radius: 1.5, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%))


/* ctz-draw(points: (
  "A", "B", "C", /* "D", "E", */
  "A1", "B1", "C1", /* "D1", "E1",  */
  "A2", "B2", "C2", /* "D2", "E2", */
  "A3", "B3", "C3", /* "D3", "E3",  */
  "A4", "B4", "C4", /* "D4", "E4", */
  ), labels: (
  V: "above",
  H: "right",
  K: "below"
  ) ) */

}),
caption: []
) <grafico_cono1>
]

#let grafico_cono2 = [
#figure(
  ctz-canvas(length: 0.65cm, clip-canvas: (-0.25, -3.5, 3, 3), {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (0, 0),
    B: (2.0, 0),
    C: (4, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
  )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)

  ctz-draw-line("A3", "B4", stroke: accent.mat)
  ctz-draw-line("C3", "B4", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: (paint: accent.mat, dash: "dashed"))

  cetz.draw.arc("C3", start: 0deg, stop: 180deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "dotted")) 
  cetz.draw.arc("A3", start: 180deg, stop: 360deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "solid"))

ctz-draw(points: (
  "B3", "B4",
  ), labels: (
  B3: (text: $H$, pos: "right"),
  B4: (text: $V$, pos: "above"),
  ) )

}),
caption: []
) <grafico_cono2>
]

#let grafico_cono3 = [
#figure(
  ctz-canvas(length: 0.45cm, clip-canvas: (-2, -4, 5, 3), {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-show-clip(stroke:gray)

  ctz-def-points(
    A: (0, 0),
    B: (2.0, 0),
    C: (4, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
  )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)

  ctz-draw-line("A3", "B4", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: (paint: accent.mat, dash: "dashed"))

  cetz.draw.arc("C3", start: 0deg, stop: 180deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "dotted")) 
  cetz.draw.arc("A3", start: 180deg, stop: 360deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "solid"))

  ctz-def-circle("Crfr", "B4", through: "C3")
  ctz-def-lc("D", ("C2", "B4"), "Crfr")

  /* cetz.draw.arc(("C3"), radius: 5.2, stop: 38.3deg, delta: 105.5deg, mode: "PIE", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */
  
  ctz-draw-sector("B4", "C3", "D", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  /* ctz-draw-line("C3", "B4", "D", stroke: accent.mat.lighten(50%), ) */
  /* ctz-def-polygon("Rctn", "C3", (5 + 2 * calc.pi * 2.0, -2.4), (5 + 2 * calc.pi * 2.0, 2.4), "B4", stroke: accent.mat)
  ctz-draw("Rctn", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-def-linear("R", "B3", "A1", 0.3)
  ctz-draw-segment("B3", "R", arrows: none, dim: $r$, dim-pos: "above left", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-segment("C3", "B4", arrows: none, dim: $a$, dim-pos: "above left", stroke: accent.mat)

  content((6, 1.5), [$2 pi r$])

/*  ctz-draw(points: (
  "A", "B", "C", /* "D", "E", */
  "A1", "B1", "C1", /* "D1", "E1",  */
  "A2", "B2", "C2", /* "D2", "E2", */
  "A3", "B3", "C3", /* "D3", "E3",  */
  "A4", "B4", "C4", /* "D4", "E4", */
  "D"
  ), labels: (
  V: "above",
  H: "right",
  K: "below"
  ) )  */

}),
caption: []
) <grafico_cono3>
]

#let grafici_cono = [
#align(center)[
  #grid(columns: 3, column-gutter: 3em, row-gutter: 2em, align: center + bottom)[#grafico_cono1][#grafico_cono2][#grafico_cono3]
]]

#let grafico_tronco_cono1 = [
#figure(
  ctz-canvas(length: 0.65cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (0, 0),
    B: (2.0, 0),
    C: (4, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
  )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)

  ctz-def-ll("AB", ("A3", "B4"), ("A", "B"))
  ctz-def-ll("BC", ("C3", "B4"), ("B", "C"))

  ctz-draw-line("A3", "AB", stroke: accent.mat)
  ctz-draw-line("C3", "BC", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line("AB", "B4", "BC", stroke: (paint: accent.mat, dash: "dotted"))

  cetz.draw.arc("C3", start: 0deg, stop: 180deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "dotted")) // TODO: bug
  cetz.draw.arc("A3", start: 180deg, stop: 360deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "solid")) // TODO: bug

  cetz.draw.arc("BC", start: 0deg, stop: 360deg, radius: (1, 0.25), stroke: (paint: accent.mat, dash: "solid")) // TODO: bug
  //cetz.draw.arc("AB", start: 180deg, stop: 360deg, radius: (1, 0.25), stroke: (paint: accent.mat, dash: "solid")) // TODO: bug

ctz-draw(points: (
  "B", "B3", "B4",
  ), labels: (
  B: (text: $H'$, pos: "above left"),
  B3: (text: $H$, pos: "right"),
  B4: (text: $V$, pos: "above"),
  ) )

/* ctz-draw(points: (
  "A", "B", "C", /* "D", "E", */
  "A1", "B1", "C1", /* "D1", "E1",  */
  "A2", "B2", "C2", /* "D2", "E2", */
  "A3", "B3", "C3", /* "D3", "E3",  */
  "A4", "B4", "C4", /* "D4", "E4", */
  ), labels: (
  V: "above",
  H: "right",
  K: "below"
  ) )  */

}),
caption: []
) <grafico_tronco_cono1>
]

#let grafico_tronco_cono2 = [
#figure(
  ctz-canvas(length: 0.5cm, {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  ctz-def-points(
    A: (0, 0),
    B: (2.0, 0),
    C: (4, 0),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (8, 2),
    P4: (-1, 2),
  )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  /* ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)

  ctz-def-ll("AB", ("A3", "B4"), ("A", "B"))
  ctz-def-ll("BC", ("C3", "B4"), ("B", "C"))

  ctz-draw-line("A3", "AB", stroke: accent.mat)
  ctz-draw-line("C3", "BC", stroke: accent.mat)
  ctz-draw-line("B3", "B4", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line("AB", "B4", "BC", stroke: (paint: accent.mat, dash: "dotted"))

  cetz.draw.arc("C3", start: 0deg, stop: 180deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "dotted")) // TODO: bug
  cetz.draw.arc("A3", start: 180deg, stop: 360deg, radius: (2, 0.5), stroke: (paint: accent.mat, dash: "solid")) // TODO: bug

  cetz.draw.arc("BC", start: 0deg, stop: 360deg, radius: (1, 0.25), stroke: (paint: accent.mat, dash: "solid")) // TODO: bug
  //cetz.draw.arc("AB", start: 180deg, stop: 360deg, radius: (1, 0.25), stroke: (paint: accent.mat, dash: "solid")) // TODO: bug


  ctz-def-circle("Crfr", "B4", through: "C3")
  ctz-def-circle("Crfr2", "B4", through: "BC")

  ctz-def-lc("D", ("C2", "B4"), "Crfr")
  ctz-def-lc("D2", ("D", "B4"), "Crfr2")

  /* cetz.draw.arc(("C3"), radius: 5.2, stop: 38.6deg, delta: 105.9deg, mode: "PIE", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%)) */
  ctz-draw-sector("B4", "C3", "D", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  /* cetz.draw.arc(("BC"), radius: 2.6, stop: 38.6deg, delta: 105.9deg, mode: "PIE", fill: white, stroke: (paint: white, thickness: 1.2pt)) */
  ctz-draw-sector("B4", "BC", "D2", fill: white, stroke: white)

  /* cetz.draw.arc(("BC"), radius: 2.6, stop: 38.6deg, delta: 105.9deg, mode: "OPEN", stroke: accent.mat.lighten(50%)) */
  ctz-draw-arc("B4", "BC", "D2", stroke: accent.mat.lighten(50%))

  ctz-draw-line("BC", "B4", "D2", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-segment("A3", "B3", arrows: none, dim: $R$, dim-pos: "above", stroke: (paint: accent.mat, dash: "dotted"))
  ctz-draw-segment("AB", "B", arrows: none, dim: $r$, dim-pos: "above", stroke: (paint: accent.mat, dash: "dotted"))

  ctz-draw-segment("BC", "C3", arrows: none, dim: $a$, dim-pos: "left", stroke: accent.mat)

  content((3.7, 2), [$2 pi r$])
  content((8.2, 2), [$2 pi R$])

/*  ctz-draw(points: (
  "A", "B", "C", /* "D", "E", */
  "A1", "B1", "C1", /* "D1", "E1",  */
  "A2", "B2", "C2", /* "D2", "E2", */
  "A3", "B3", "C3", /* "D3", "E3",  */
  "A4", "B4", "C4", /* "D4", "E4", */
  "D", "D2" 
  ), labels: (
  V: "above",
  H: "right",
  K: "below"
  ) ) 

  ctz-draw(points: (
  "B", "B3", "B4",
  ), labels: (
  B: (text: $$, pos: "above left"),
  B3: (text: $$, pos: "right"),
  B4: (text: $V$, pos: "above"),
  ) ) */

}),
caption: []
) <grafico_tronco_cono2>
]

#let grafici_tronco_cono = [
#align(center)[
  #grid(columns: 2, column-gutter: 6em, row-gutter: 2em, align: center + bottom)[#grafico_tronco_cono1][#grafico_tronco_cono2]
]]

// SFERA

#let grafico_sfera1 = [
  #let R = 2.0
  #let alpha = 25deg
  #let beta  = 10deg

  #let rotate-point(p) = {
    let (x, y, z) = p
    let ca = calc.cos(alpha); let sa = calc.sin(alpha)
    let y1 = y*ca - z*sa
    let z1 = y*sa + z*ca
    let cb = calc.cos(beta); let sb = calc.sin(beta)
    let x2 = x*cb + z1*sb
    let z2 = -x*sb + z1*cb
    (x2, y1, z2)
  }

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let n = 60
  #let meridian-points(theta) = range(n+1).map(i => rotate-point(sphere-point(180deg*i/n, theta)))
  #let parallel-points(phi) = range(n+1).map(i => rotate-point(sphere-point(phi, 360deg*i/n)))

  #let draw-curve(pts) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      let front = (z1 + z2) > 0
      cetz.draw.line((x1, y1), (x2, y2),
        stroke: if front { accent.mat + 0.85pt } else { accent.mat.lighten(55%) + 0.55pt })
    }
  }

  #figure(
    cetz.canvas({
      cetz.draw.circle((0,0), radius: R, stroke: accent.mat + 0.8pt)
      for k in range(12) { draw-curve(meridian-points(30deg*k)) }
      for phi in (20deg,45deg,70deg,95deg,120deg,145deg,170deg) {
        draw-curve(parallel-points(phi))
      }
    }),
    caption: []
  )
]

#let grafico_sfera2 = [
#figure(
  ctz-canvas(length: 0.55cm, clip-canvas: (-1, -3.0, 5, 3), {
  import cetz.draw: *
  ctz-init()

  ctz-style(point: (shape: "dot", size: 0.07, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
    A: (0, -2),
    B: (2.0, -2),
    C: (4, -2),
    /* D: (3.3, 1.5),
    E: (1.2, 1.5), */
    R1: (-0.5, 0),
    R2: (-0.5, 4),
    P1: (-3, -1),
    P2: (6, -1),
    P3: (7, 2),
    P4: (-2, 2),
    )

  ctz-def-polygon("Prpp", "P1", "P2", "P3", "P4")
  ctz-draw("Prpp", fill: accent.mat.transparentize(90%), stroke: accent.mat.lighten(50%))

  ctz-def-para("A1", "A2", ("R1", "R2"), "A")
  ctz-def-para("B1", "B2", ("R1", "R2"), "B")
  ctz-def-para("C1", "C2", ("R1", "R2"), "C")

  ctz-def-linear("A3", "A1", "A", 0.4)
  ctz-def-linear("B3", "B1", "B", 0.4)
  ctz-def-linear("C3", "C1", "C", 0.4)

  ctz-def-linear("A4", "A2", "A", 0.4)
  ctz-def-linear("B4", "B2", "B", 0.4)
  ctz-def-linear("C4", "C2", "C", 0.4)

  ctz-def-circle("Crcf", "B4", through: "A4", )
/*   ("B4", "A4", 0deg), stroke: (paint: accent.mat)) */
  ctz-def-ll("A5", ("A3", "A4"), ("B4", "C2"))
  ctz-def-lc(("AB", "BC"), ("C2", "A5"), "Crcf")

  ctz-draw-circle("Crcf", stroke: accent.mat)
  ctz-draw-segment("AB", "BC", stroke: (paint: accent.mat, dash: "dashed"))
  ctz-draw-line-add("BC", "A5", add:(0, 2), stroke: (paint: accent.mat))
  ctz-draw-line-add("AB", "C2", add:(0, 2), stroke: (paint: accent.mat))

  //ctz-draw(ellipse: ("B3", 2.5, 0.5, 0deg), stroke: (paint: accent.mat, dash: "dotted"))
  cetz.draw.arc("C4", start: 0deg, stop: 180deg, radius: (2, 1), mode: "PIE", stroke: (paint: accent.mat.transparentize(100%), dash: "dotted"), fill: accent.mat.transparentize(85%)) // TODO: bug; trasperenza 100% per non disegnare diametro
  cetz.draw.arc("A4", start: 180deg, stop: 360deg, radius: (2, 1), mode: "PIE", stroke: (paint: accent.mat.transparentize(100%), dash: "solid"), fill: accent.mat.transparentize(85%)) // TODO: bug; trasperenza 100% per non disegnare diametro
  cetz.draw.arc("C4", start: 0deg, stop: 180deg, radius: (2, 1), stroke: (paint: accent.mat, dash: "dotted")) // TODO: bug
  cetz.draw.arc("A4", start: 180deg, stop: 360deg, radius: (2, 1), stroke: (paint: accent.mat, dash: "solid")) // TODO: bug

  ctz-draw(points: (
    /* "A1", "A2", "A3", "A4", "A5",
    "B1", "B2", "B3", "B4",
    "C1", "C2", "C3", "C4", */
    "B4", "AB", "BC",
    ), labels: (
    B4: (text: $O$, pos: "right"),
    BC: (text: $A$, pos: "left"),
    AB: (text: $B$, pos: "right"),
    ) )

}),
caption: []
) <grafico_sfera2>
]

#let grafici_sfera = [
#align(center)[
  #grid(columns: 2, column-gutter: 2em, row-gutter: 2em, align: center + bottom)[#grafico_sfera1][#grafico_sfera2]
]]

#let grafico_sfera3 = [
  #let R = 2.0
  #let alpha = 50deg
  #let beta  = 50deg

  #let rotate-point(p) = {
    let (x, y, z) = p
    let ca = calc.cos(alpha); let sa = calc.sin(alpha)
    let y1 = y*ca - z*sa
    let z1 = y*sa + z*ca
    let cb = calc.cos(beta); let sb = calc.sin(beta)
    let x2 = x*cb + z1*sb
    let z2 = -x*sb + z1*cb
    (x2, y1, z2)
  }

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let n = 60
  #let meridian-points(theta) = range(n+1).map(i => rotate-point(sphere-point(180deg*i/n, theta)))
  

  #let draw-curve(pts) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      let front = (z1 + z2) > 0
      cetz.draw.line((x1, y1), (x2, y2),
        stroke: if front { accent.mat + 0.85pt } else { accent.mat.lighten(55%) + 0.55pt })
    }
  }

  #figure(
    cetz.canvas({
      cetz.draw.circle((0,0), radius: R, stroke: accent.mat + 0.8pt)
      for k in range(12) { draw-curve(meridian-points(30deg*k)) }
      
    }),
    caption: []
  ) <grafico_sfera3>
]

#let grafico_sfera4 = [
  #let R = 2.0
  #let alpha = 50deg
  #let beta  = 50deg

  #let rotate-point(p) = {
    let (x, y, z) = p
    let ca = calc.cos(alpha); let sa = calc.sin(alpha)
    let y1 = y*ca - z*sa
    let z1 = y*sa + z*ca
    let cb = calc.cos(beta); let sb = calc.sin(beta)
    let x2 = x*cb + z1*sb
    let z2 = -x*sb + z1*cb
    (x2, y1, z2)
  }

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let n = 60
  
  #let parallel-points(phi) = range(n+1).map(i => rotate-point(sphere-point(phi, 360deg*i/n)))

  #let draw-curve(pts) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      let front = (z1 + z2) > 0
      cetz.draw.line((x1, y1), (x2, y2),
        stroke: if front { accent.mat + 0.85pt } else { accent.mat.lighten(55%) + 0.55pt })
    }
  }

  #figure(
    cetz.canvas({
      cetz.draw.circle((0,0), radius: R, stroke: accent.mat + 0.8pt)
      for phi in (20deg,45deg,70deg,95deg,120deg,145deg,170deg) {
        draw-curve(parallel-points(phi))
      }
    }),
    caption: []
  ) <grafico_sfera4>
]

#let grafici_meridiani_paralleli = [
#align(center)[
  #grid(columns: 2, column-gutter: 4em, row-gutter: 2em, align: center + bottom)[#grafico_sfera3][#grafico_sfera4]
]]

#let grafici_parti_sfera = [
  #let R = 3
  #let elev = 22deg
  #let rot  = 18deg
  #let n-mer = 14
  #let n-seg = 40

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let project(p) = {
    let (x, y, z) = p
    let cr = calc.cos(rot); let sr = calc.sin(rot)
    let xr = x*cr - y*sr
    let yr = x*sr + y*cr
    let ce = calc.cos(elev); let se = calc.sin(elev)
    let sx = xr
    let sy = z*ce - yr*se
    let depth = yr*ce + z*se
    (sx, sy, depth)
  }

  #let draw-curve(pts, w-front: 0.7pt, w-back: 0.55pt) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      let front = (z1 + z2) > 0
      cetz.draw.line((x1, y1), (x2, y2),
        stroke: if front { accent.mat + w-front } else { accent.mat.lighten(55%) + w-back })
    }
  }

  #let meridian-points(theta, phi1, phi2) = {
    range(n-seg + 1).map(i => project(sphere-point(phi1 + (phi2 - phi1) * i / n-seg, theta)))
  }

  #let parallel-points(phi) = {
    range(n-seg + 1).map(i => project(sphere-point(phi, 360deg * i / n-seg)))
  }

  #let draw-base(phi0) = {
    let center3d = (0, 0, R*calc.cos(phi0))
    let center = project(center3d)
    for k in range(n-mer) {
      let theta = 360deg * k / n-mer
      let edge = project(sphere-point(phi0, theta))
      let (cx, cy, cz) = center
      let (ex, ey, ez) = edge
      let front = (cz + ez) > 0
      cetz.draw.line((cx, cy), (ex, ey),
        stroke: if front { accent.mat + 0.35pt } else { accent.mat.lighten(55%) + 0.25pt })
    }
    for s in (0.35, 0.7) {
      let pts = range(n-seg + 1).map(i => {
        let theta = 360deg * i / n-seg
        let (ex, ey, ez) = sphere-point(phi0, theta)
        let (cx, cy, cz) = center3d
        project((cx + s*(ex - cx), cy + s*(ey - cy), cz + s*(ez - cz)))
      })
      draw-curve(pts, w-front: 0.3pt, w-back: 0.25pt)
    }
  }

  #let spherical-shape(phi1, phi2, base1: false, base2: false) = {
    cetz.canvas({
      for k in range(n-mer) {
        draw-curve(meridian-points(30deg * k, phi1, phi2))
      }
      let n-par = 5
      for i in range(n-par + 1) {
        draw-curve(parallel-points(phi1 + (phi2 - phi1) * i / n-par))
      }
      if base1 { draw-base(phi1) }
      if base2 { draw-base(phi2) }
    })
  }

  #let phi-cap = 55deg
  #let phi-a = 20deg
  #let phi-b = 58deg

  #align(center)[
    #grid(columns: 2, column-gutter: 3em, row-gutter: 2em, align: center + bottom)[
      #figure(spherical-shape(0deg, phi-cap), caption: []) <grafico_parte_sfera1>
    ][
      #figure(spherical-shape(0deg, phi-cap, base2: true), caption: []) <grafico_parte_sfera2>
    ][
      #figure(spherical-shape(phi-a, phi-b), caption: []) <grafico_parte_sfera3>
    ][
      #figure(spherical-shape(phi-a, phi-b, base1: true, base2: true), caption: []) <grafico_parte_sfera4>
    ]
  ]
]

#let grafici_parti_sfera2 = [
  #let R = 2.5
  #let elev = 25deg
  #let rot  = -45deg
  #let n-seg = 20

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let project(p) = {
    let (x, y, z) = p
    let cr = calc.cos(rot); let sr = calc.sin(rot)
    let xr = x*cr - y*sr
    let yr = x*sr + y*cr
    let ce = calc.cos(elev); let se = calc.sin(elev)
    let sx = xr
    let sy = z*ce - yr*se
    let depth = yr*ce + z*se
    (sx, sy, depth)
  }

  #let draw-curve(pts, w-front: 0.6pt, w-back: 0.35pt, c-front: accent.mat, c-back: accent.mat.lighten(55%)) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      let front = (z1 + z2) > 0
      cetz.draw.line((x1, y1), (x2, y2),
        stroke: if front { c-front + w-front } else { c-back + w-back })
    }
  }

  #let meridian-points(theta) = {
    range(n-seg + 1).map(i => project(sphere-point(180deg * i / n-seg, theta)))
  }

  #let parallel-full-points(phi) = {
    range(n-seg + 1).map(i => project(sphere-point(phi, 360deg * i / n-seg)))
  }

  #let parallel-arc-points(phi, theta1, theta2) = {
    range(n-seg + 1).map(i => project(sphere-point(phi, theta1 + (theta2 - theta1) * i / n-seg)))
  }

  #let draw-ghost-sphere() = {
    let n-mer-ghost = 18
    let n-par-ghost = 9
    let col = accent.mat.lighten(80%)
    for k in range(n-mer-ghost) {
      draw-curve(meridian-points(360deg * k / n-mer-ghost),
        w-front: 0.25pt, w-back: 0.2pt, c-front: col, c-back: col)
    }
    for i in range(1, n-par-ghost) {
      draw-curve(parallel-full-points(180deg * i / n-par-ghost),
        w-front: 0.25pt, w-back: 0.2pt, c-front: col, c-back: col)
    }
  }

  // faccia piatta: griglia rettangolare, colore unico per l'intera faccia
  // (deciso dalla normale uscente della faccia, non punto per punto)
  #let draw-face-grid(theta0, normal-theta, steps: 6) = {
    let n3d = (calc.cos(normal-theta), calc.sin(normal-theta), 0)
    let front = project(n3d).at(2) > 0
    let col = if front { accent.mat } else { accent.mat.lighten(55%) }
    let w = if front { 0.3pt } else { 0.25pt }
    for k in range(1, steps) {
      let z = R * (-1 + 2*k/steps)
      let rmax = calc.sqrt(calc.max(R*R - z*z, 0))
      let p1 = project((0, 0, z))
      let p2 = project((rmax*calc.cos(theta0), rmax*calc.sin(theta0), z))
      cetz.draw.line((p1.at(0), p1.at(1)), (p2.at(0), p2.at(1)), stroke: col + w)
    }
    for k in range(1, steps) {
      let r = R * k / steps
      let zmax = calc.sqrt(calc.max(R*R - r*r, 0))
      let p1 = project((r*calc.cos(theta0), r*calc.sin(theta0), -zmax))
      let p2 = project((r*calc.cos(theta0), r*calc.sin(theta0), zmax))
      cetz.draw.line((p1.at(0), p1.at(1)), (p2.at(0), p2.at(1)), stroke: col + w)
    }
  }

  #let fuso-highlight(theta1, theta2) = {
    let n-mer = 8
    for k in range(n-mer + 1) {
      let theta = theta1 + (theta2 - theta1) * k / n-mer
      draw-curve(meridian-points(theta))
    }
    let n-par = 8
    for i in range(1, n-par) {
      let phi = 180deg * i / n-par
      draw-curve(parallel-arc-points(phi, theta1, theta2))
    }
  }

  #let draw-diametro() = {
    let p1 = project((0, 0, R))
    let p2 = project((0, 0, -R))
    cetz.draw.line((p1.at(0), p1.at(1)), (p2.at(0), p2.at(1)),
      stroke: (paint: accent.mat, thickness: 0.4pt, dash: "dashed"))
  }

  #let draw-angolo(theta1, theta2) = {
    let c = project((0, 0, 0))
    let e1 = project(sphere-point(90deg, theta1))
    let e2 = project(sphere-point(90deg, theta2))
    cetz.draw.line((c.at(0), c.at(1)), (e1.at(0), e1.at(1)),
      stroke: (paint: accent.mat, thickness: 0.4pt, dash: "dashed"))
    cetz.draw.line((c.at(0), c.at(1)), (e2.at(0), e2.at(1)),
      stroke: (paint: accent.mat, thickness: 0.4pt, dash: "dashed"))
    let a1 = calc.atan2(e1.at(0) - c.at(0), e1.at(1) - c.at(1))
    let a2 = calc.atan2(e2.at(0) - c.at(0), e2.at(1) - c.at(1))
    let r-arc = 0.9
    /* cetz.draw.arc((c.at(0), c.at(1)), start: a1, stop: a2, radius: r-arc,
      stroke: (paint: accent.mat, thickness: 0.4pt, dash: "dashed")) */
    let mid = (a1 + a2) / 2
    let lx = c.at(0) + (r-arc + 0.5) * calc.cos(mid)
    let ly = c.at(1) + (r-arc + 0.5) * calc.sin(mid)
    cetz.draw.content((lx, ly), [$alpha$])
  }

  #let disegno(theta1, theta2, with-faces: false) = {
    cetz.canvas({
      draw-ghost-sphere()
      fuso-highlight(theta1, theta2)
      if with-faces {
        draw-face-grid(theta1, theta1 - 90deg)
        draw-face-grid(theta2, theta2 + 90deg)
      }
      draw-diametro()
      draw-angolo(theta1, theta2)
    })
  }

  #let theta1 = 50deg
  #let theta2 = 110deg

  #align(center)[
    #grid(columns: 2, column-gutter: 3em, row-gutter: 2em, align: center + bottom)[
      #figure(disegno(theta1, theta2), caption: []) <grafico_parte_sfera5>
    ][
      #figure(disegno(theta1, theta2, with-faces: true), caption: []) <grafico_parte_sfera6>
    ]
  ]
]

//=== POLIEDRI ISCRITTI A UNA SFERA

#let grafico_sfera_tetraedro = [
  #let R = 2.0
  #let elev = 20deg
  #let rot  = -25deg

  #let project(p) = {
    let (x, y, z) = p
    let cr = calc.cos(rot); let sr = calc.sin(rot)
    let xr = x*cr - y*sr
    let yr = x*sr + y*cr
    let ce = calc.cos(elev); let se = calc.sin(elev)
    let sx = xr
    let sy = z*ce - yr*se
    let depth = yr*ce + z*se
    (sx, sy, depth)
  }

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let n-seg = 40
  #let draw-curve(pts) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      cetz.draw.line((x1, y1), (x2, y2), stroke: accent.mat.lighten(70%) + 0.25pt)
    }
  }
  #let draw-ghost-sphere() = {
    for k in range(16) {
      let theta = 360deg * k / 16
      draw-curve(range(n-seg+1).map(i => project(sphere-point(180deg*i/n-seg, theta))))
    }
    for i in range(1, 8) {
      let phi = 180deg * i / 8
      draw-curve(range(n-seg+1).map(j => project(sphere-point(phi, 360deg*j/n-seg))))
    }
  }

  // tetraedro regolare con un vertice al polo nord della sfera
  #let phi0 = calc.acos(-1/3)  // colatitudine degli altri 3 vertici (~109.47deg)
  #let verts = (
    sphere-point(0deg, 0deg),
    sphere-point(phi0, 0deg),
    sphere-point(phi0, 120deg),
    sphere-point(phi0, 240deg),
  )
  #let faces = (
    (0, 1, 2), (0, 1, 3), (0, 2, 3), (1, 2, 3),
  )
  #let face-colors = (accent.mat.lighten(90%), accent.mat.lighten(63.33%), accent.mat.lighten(36.67%), accent.mat.lighten(10%))

  #let draw-tetraedro() = {
    let pv = verts.map(project)
    // profondità media di ogni faccia -> ordino da lontana a vicina (painter's algorithm)
    let depths = faces.map(f => (pv.at(f.at(0)).at(2) + pv.at(f.at(1)).at(2) + pv.at(f.at(2)).at(2)) / 3)
    let order = range(faces.len()).sorted(key: i => depths.at(i))
    for idx in order {
      let f = faces.at(idx)
      let (a, b, c) = (pv.at(f.at(0)), pv.at(f.at(1)), pv.at(f.at(2)))
      cetz.draw.line(
        (a.at(0), a.at(1)), (b.at(0), b.at(1)), (c.at(0), c.at(1)),
        close: true,
        fill: face-colors.at(idx).transparentize(50%),
        stroke: accent.mat + 0.5pt,
      )
    }
  }

  #align(center)[
    #figure(
      cetz.canvas({
        draw-ghost-sphere()
        draw-tetraedro()
      }),
      caption: []
    )
  ]
]


#let grafico_sfera_cubo = [
  #let R = 2.0
  #let elev = 20deg
  #let rot  = 25deg

  #let project(p) = {
    let (x, y, z) = p
    let cr = calc.cos(rot); let sr = calc.sin(rot)
    let xr = x*cr - y*sr
    let yr = x*sr + y*cr
    let ce = calc.cos(elev); let se = calc.sin(elev)
    let sx = xr
    let sy = z*ce - yr*se
    let depth = yr*ce + z*se
    (sx, sy, depth)
  }

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let n-seg = 40
  #let draw-curve(pts) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      cetz.draw.line((x1, y1), (x2, y2), stroke: accent.mat.lighten(70%) + 0.25pt)
    }
  }
  #let draw-ghost-sphere() = {
    for k in range(16) {
      let theta = 360deg * k / 16
      draw-curve(range(n-seg+1).map(i => project(sphere-point(180deg*i/n-seg, theta))))
    }
    for i in range(1, 8) {
      let phi = 180deg * i / 8
      draw-curve(range(n-seg+1).map(j => project(sphere-point(phi, 360deg*j/n-seg))))
    }
  }

  // cubo regolare con un vertice al polo nord della sfera
  #let phi-up   = calc.acos(1/3)    // colatitudine dei 3 vertici adiacenti al polo nord (~70.53deg)
  #let phi-down = calc.acos(-1/3)   // colatitudine dei 3 vertici adiacenti al polo sud (~109.47deg)
  #let verts = (
    sphere-point(0deg, 0deg),        // 0: polo nord
    sphere-point(phi-up, 45deg),     // 1
    sphere-point(phi-up, 285deg),    // 2
    sphere-point(phi-up, 165deg),    // 3
    sphere-point(phi-down, 345deg),  // 4
    sphere-point(phi-down, 105deg),  // 5
    sphere-point(phi-down, 225deg),  // 6
    sphere-point(180deg, 0deg),      // 7: polo sud
  )
  #let faces = (
    (0, 1, 4, 2), (3, 5, 7, 6), (0, 1, 5, 3),
    (2, 4, 7, 6), (0, 2, 6, 3), (1, 4, 7, 5),
  )
  #let face-colors = (accent.mat.lighten(90%), accent.mat.lighten(74%), accent.mat.lighten(58%), accent.mat.lighten(42%), accent.mat.lighten(26%), accent.mat.lighten(10%))

  #let draw-cubo() = {
    let pv = verts.map(project)
    let depths = faces.map(f => f.map(i => pv.at(i).at(2)).sum() / f.len())
    let order = range(faces.len()).sorted(key: i => depths.at(i))
    for idx in order {
      let f = faces.at(idx)
      let pts = f.map(i => (pv.at(i).at(0), pv.at(i).at(1)))
      cetz.draw.line(
        ..pts,
        close: true,
        fill: face-colors.at(idx).transparentize(50%),
        stroke: accent.mat + 0.5pt,
      )
    }
  }

  #align(center)[
    #figure(
      cetz.canvas({
        draw-ghost-sphere()
        draw-cubo()
      }),
      caption: []
    )
  ]
]


#let grafico_sfera_ottaedro = [
  #let R = 2.0
  #let elev = 20deg
  #let rot  = 15deg

  #let project(p) = {
    let (x, y, z) = p
    let cr = calc.cos(rot); let sr = calc.sin(rot)
    let xr = x*cr - y*sr
    let yr = x*sr + y*cr
    let ce = calc.cos(elev); let se = calc.sin(elev)
    let sx = xr
    let sy = z*ce - yr*se
    let depth = yr*ce + z*se
    (sx, sy, depth)
  }

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let n-seg = 40
  #let draw-curve(pts) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      cetz.draw.line((x1, y1), (x2, y2), stroke: accent.mat.lighten(70%) + 0.25pt)
    }
  }
  #let draw-ghost-sphere() = {
    for k in range(16) {
      let theta = 360deg * k / 16
      draw-curve(range(n-seg+1).map(i => project(sphere-point(180deg*i/n-seg, theta))))
    }
    for i in range(1, 8) {
      let phi = 180deg * i / 8
      draw-curve(range(n-seg+1).map(j => project(sphere-point(phi, 360deg*j/n-seg))))
    }
  }

  // ottaedro regolare: due vertici già ai poli, quattro sull'equatore
  #let verts = (
    sphere-point(0deg, 0deg),      // 0: polo nord
    sphere-point(90deg, 0deg),     // 1
    sphere-point(90deg, 90deg),    // 2
    sphere-point(90deg, 180deg),   // 3
    sphere-point(90deg, 270deg),   // 4
    sphere-point(180deg, 0deg),    // 5: polo sud
  )
  #let faces = (
    (0, 1, 2), (0, 2, 3), (0, 3, 4), (0, 4, 1),
    (5, 1, 2), (5, 2, 3), (5, 3, 4), (5, 4, 1),
  )
  #let face-colors = (accent.mat.lighten(90%), accent.mat.lighten(78.57%), accent.mat.lighten(67.14%), accent.mat.lighten(55.71%), accent.mat.lighten(44.29%), accent.mat.lighten(32.86%), accent.mat.lighten(21.43%), accent.mat.lighten(10%))

  #let draw-ottaedro() = {
    let pv = verts.map(project)
    let depths = faces.map(f => f.map(i => pv.at(i).at(2)).sum() / f.len())
    let order = range(faces.len()).sorted(key: i => depths.at(i))
    for idx in order {
      let f = faces.at(idx)
      let pts = f.map(i => (pv.at(i).at(0), pv.at(i).at(1)))
      cetz.draw.line(
        ..pts,
        close: true,
        fill: face-colors.at(idx).transparentize(50%),
        stroke: accent.mat + 0.5pt,
      )
    }
  }

  #align(center)[
    #figure(
      cetz.canvas({
        draw-ghost-sphere()
        draw-ottaedro()
      }),
      caption: []
    )
  ]
]


#let grafico_sfera_dodecaedro = [
  #let R = 2.0
  #let elev = 20deg
  #let rot  = 25deg

  #let project(p) = {
    let (x, y, z) = p
    let cr = calc.cos(rot); let sr = calc.sin(rot)
    let xr = x*cr - y*sr
    let yr = x*sr + y*cr
    let ce = calc.cos(elev); let se = calc.sin(elev)
    let sx = xr
    let sy = z*ce - yr*se
    let depth = yr*ce + z*se
    (sx, sy, depth)
  }

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let n-seg = 40
  #let draw-curve(pts) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      cetz.draw.line((x1, y1), (x2, y2), stroke: accent.mat.lighten(70%) + 0.25pt)
    }
  }
  #let draw-ghost-sphere() = {
    for k in range(16) {
      let theta = 360deg * k / 16
      draw-curve(range(n-seg+1).map(i => project(sphere-point(180deg*i/n-seg, theta))))
    }
    for i in range(1, 8) {
      let phi = 180deg * i / 8
      draw-curve(range(n-seg+1).map(j => project(sphere-point(phi, 360deg*j/n-seg))))
    }
  }

  // dodecaedro regolare con un vertice al polo nord
  // colatitudini dei 4 "anelli" di vertici (oltre ai due poli), forma chiusa:
  #let phi-1 = calc.acos(calc.sqrt(5)/3)     // ~41.81deg  (3 vertici)
  #let phi-2 = 70.528779deg                   // ~acos(1/3) (6 vertici)
  #let phi-3 = 180deg - phi-2                 // ~109.47deg (6 vertici)
  #let phi-4 = 180deg - phi-1                 // ~138.19deg (3 vertici)

  #let verts = (
    sphere-point(0deg, 0deg),             // 0  polo nord
    sphere-point(phi-2, 45deg),           // 1
    sphere-point(phi-2, 285deg),          // 2
    sphere-point(phi-3, 345deg),          // 3
    sphere-point(phi-2, 165deg),          // 4
    sphere-point(phi-3, 105deg),          // 5
    sphere-point(phi-3, 225deg),          // 6
    sphere-point(180deg, 0deg),           // 7  polo sud
    sphere-point(phi-1, 202.761244deg),   // 8
    sphere-point(phi-3, 60.522488deg),    // 9
    sphere-point(phi-2, 240.522488deg),   // 10
    sphere-point(phi-4, 22.761244deg),    // 11
    sphere-point(phi-1, 82.761244deg),    // 12
    sphere-point(phi-2, 120.522488deg),   // 13
    sphere-point(phi-3, 300.522488deg),   // 14
    sphere-point(phi-4, 262.761244deg),   // 15
    sphere-point(phi-1, 322.761244deg),   // 16
    sphere-point(phi-2, 0.522488deg),     // 17
    sphere-point(phi-3, 180.522488deg),   // 18
    sphere-point(phi-4, 142.761244deg),   // 19
  )

  #let faces = (
    (9, 11, 7, 19, 5), (12, 1, 9, 5, 13), (4, 13, 5, 19, 18),
    (10, 8, 4, 18, 6), (14, 2, 10, 6, 15), (7, 15, 6, 18, 19),
    (17, 16, 2, 14, 3), (1, 17, 3, 11, 9), (3, 14, 15, 7, 11),
    (16, 17, 1, 12, 0), (2, 16, 0, 8, 10), (0, 12, 13, 4, 8),
  )
  #let face-colors = (
    accent.mat.lighten(90%), accent.mat.lighten(82.73%), accent.mat.lighten(75.45%), accent.mat.lighten(68.18%), accent.mat.lighten(60.91%), accent.mat.lighten(53.64%),
    accent.mat.lighten(46.36%), accent.mat.lighten(39.09%), accent.mat.lighten(31.82%), accent.mat.lighten(24.55%), accent.mat.lighten(17.27%), accent.mat.lighten(10%),
  )

  #let draw-dodecaedro() = {
    let pv = verts.map(project)
    let depths = faces.map(f => f.map(i => pv.at(i).at(2)).sum() / f.len())
    let order = range(faces.len()).sorted(key: i => depths.at(i))
    for idx in order {
      let f = faces.at(idx)
      let pts = f.map(i => (pv.at(i).at(0), pv.at(i).at(1)))
      cetz.draw.line(
        ..pts,
        close: true,
        fill: face-colors.at(idx).transparentize(50%),
        stroke: accent.mat + 0.5pt,
      )
    }
  }

  #align(center)[
    #figure(
      cetz.canvas({
        draw-ghost-sphere()
        draw-dodecaedro()
      }),
      caption: []
    )
  ]
]


#let grafico_sfera_icosaedro = [
  #let R = 2.0
  #let elev = 20deg
  #let rot  = 25deg

  #let project(p) = {
    let (x, y, z) = p
    let cr = calc.cos(rot); let sr = calc.sin(rot)
    let xr = x*cr - y*sr
    let yr = x*sr + y*cr
    let ce = calc.cos(elev); let se = calc.sin(elev)
    let sx = xr
    let sy = z*ce - yr*se
    let depth = yr*ce + z*se
    (sx, sy, depth)
  }

  #let sphere-point(phi, theta) = (
    R*calc.sin(phi)*calc.cos(theta),
    R*calc.sin(phi)*calc.sin(theta),
    R*calc.cos(phi),
  )

  #let n-seg = 40
  #let draw-curve(pts) = {
    for i in range(pts.len() - 1) {
      let (x1, y1, z1) = pts.at(i)
      let (x2, y2, z2) = pts.at(i + 1)
      cetz.draw.line((x1, y1), (x2, y2), stroke: accent.mat.lighten(70%) + 0.25pt)
    }
  }
  #let draw-ghost-sphere() = {
    for k in range(16) {
      let theta = 360deg * k / 16
      draw-curve(range(n-seg+1).map(i => project(sphere-point(180deg*i/n-seg, theta))))
    }
    for i in range(1, 8) {
      let phi = 180deg * i / 8
      draw-curve(range(n-seg+1).map(j => project(sphere-point(phi, 360deg*j/n-seg))))
    }
  }

  // icosaedro regolare con un vertice al polo nord (simmetria di ordine 5)
  #let phi-1 = calc.acos(1/calc.sqrt(5))   // ~63.43deg  (5 vertici)
  #let phi-2 = 180deg - phi-1              // ~116.57deg (5 vertici)

  #let verts = (
    sphere-point(0deg, 0deg),        // 0  polo nord
    sphere-point(phi-2, 90deg),      // 1
    sphere-point(phi-1, 270deg),     // 2
    sphere-point(180deg, 0deg),      // 3  polo sud
    sphere-point(phi-1, 54deg),      // 4
    sphere-point(phi-2, 306deg),     // 5
    sphere-point(phi-1, 126deg),     // 6
    sphere-point(phi-2, 234deg),     // 7
    sphere-point(phi-1, 342deg),     // 8
    sphere-point(phi-2, 18deg),      // 9
    sphere-point(phi-1, 198deg),     // 10
    sphere-point(phi-2, 162deg),     // 11
  )

  #let faces = (
    (2, 5, 8), (6, 4, 1), (9, 4, 8), (9, 5, 8), (9, 4, 1),
    (9, 3, 1), (9, 3, 5), (7, 2, 10), (7, 3, 5), (7, 2, 5),
    (0, 4, 8), (0, 2, 10), (0, 2, 8), (0, 6, 4), (0, 6, 10),
    (11, 3, 1), (11, 6, 1), (11, 6, 10), (11, 7, 3), (11, 7, 10),
  )
  #let face-colors = (
    accent.mat.lighten(90%), accent.mat.lighten(85.79%), accent.mat.lighten(81.58%), accent.mat.lighten(77.37%), accent.mat.lighten(73.16%), accent.mat.lighten(68.95%), accent.mat.lighten(64.74%), accent.mat.lighten(60.53%), accent.mat.lighten(56.32%), accent.mat.lighten(52.11%), accent.mat.lighten(47.89%), accent.mat.lighten(43.68%), accent.mat.lighten(39.47%), accent.mat.lighten(35.26%), accent.mat.lighten(31.05%), accent.mat.lighten(26.84%), accent.mat.lighten(22.63%), accent.mat.lighten(18.42%), accent.mat.lighten(14.21%), accent.mat.lighten(10%),
  )

  #let draw-icosaedro() = {
    let pv = verts.map(project)
    let depths = faces.map(f => f.map(i => pv.at(i).at(2)).sum() / f.len())
    let order = range(faces.len()).sorted(key: i => depths.at(i))
    for idx in order {
      let f = faces.at(idx)
      let pts = f.map(i => (pv.at(i).at(0), pv.at(i).at(1)))
      cetz.draw.line(
        ..pts,
        close: true,
        fill: face-colors.at(idx).transparentize(50%),
        stroke: accent.mat + 0.5pt,
      )
    }
  }

  #align(center)[
    #figure(
      cetz.canvas({
        draw-ghost-sphere()
        draw-icosaedro()
      }),
      caption: []
    )
  ]
]

#let grafici_sfera_poligoni1 = [
#align(center)[
  #grid(columns: 3, column-gutter: 1em, row-gutter: 1em, align: center + bottom)[#grafico_sfera_tetraedro][#grafico_sfera_cubo][#grafico_sfera_ottaedro]
]]
  
#let grafici_sfera_poligoni2 = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 1em, align: center + bottom)[#grafico_sfera_dodecaedro][#grafico_sfera_icosaedro]
]]