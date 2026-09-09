#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/ctz-euclide:0.2.0": *
#import "@preview/cetz-plot:0.1.4": plot

#let grafico_orientazione1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      // asse x
      line((-0.5, 0), (3, 0), mark: (end: ")>", fill: black), stroke: (thickness: 0.7pt))
      content((3.3, 0), [$x$])

      // asse y
      line((0, -0.5), (0, 2.0), mark: (end: ")>", fill: black), stroke: (thickness: 0.7pt))
      content((0, 2.5), [$y$])

      // arco di orientazione con freccia
      arc((1.0, 0), start: 0deg, stop: 90deg, radius: 1.0, mark: (end: ")>", fill: accent.mat), stroke: (thickness: 0.7pt, paint: accent.mat))
    }),
    caption: []
  ) <grafico_orientazione1>
]

#let grafico_orientazione2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      // asse x
      line((-0.5, 0), (3, 0), mark: (end: ")>", fill: black), stroke: (thickness: 0.7pt))
      content((3.3, 0), [$x$])

      // asse y
      line((0, -0.5), (0, 2.0), mark: (end: ")>", fill: black), stroke: (thickness: 0.7pt))
      content((0, 2.5), [$y$])

      // arco di orientazione con freccia
      arc((1.0, 0), start: 0deg, stop: 90deg, radius: 1.0, mark: (start: ")>", fill: accent.mat), stroke: (thickness: 0.7pt, paint: accent.mat))
    }),
    caption: []
  ) <grafico_orientazione2>
]

#let grafici_orientazione = [#align(center)[#grid(columns: 2, align: bottom + center, column-gutter: 3em)[#grafico_orientazione1][#grafico_orientazione2]]]

#let grafico_rotazione_angolo1 = [
#figure(
  ctz-canvas(length: 0.8cm, clip-canvas: (0, -2, 4.5, 2), {
  import cetz.draw: *
  ctz-init()
  ctz-style(point: (shape: "dot", size: 0.06, fill: accent.mat))
  
  ctz-def-points(
  A: (3, -1), B: (3, 1), V: (0, 0),
  )

  ctz-draw-line-add("V", "A", add:(0, 0.5), stroke: accent.mat + 0.7pt)
  ctz-draw-line-add("V", "B", add:(0, 0.5), stroke: accent.mat + 0.7pt)
  ctz-draw-angle("V", "A", "B", label: $alpha$, stroke: accent.mat.lighten(80%), fill: accent.mat.lighten(80%))
  
  ctz-draw(points: ("V",), labels: (V: "left"))

  content((rel: (0, -0.3), to: "A"), text(black)[$A$])
  content((rel: (0, 0.3), to: "B"), text(black)[$B$])

  }),
caption: []
) <grafico_rotazione_angolo1>
]

#let grafico_rotazione_angolo2 = [
#figure(
  ctz-canvas(length: 0.8cm, clip-canvas: (0, -2, 4.5, 2), {
  import cetz.draw: *
  ctz-init()
  ctz-style(point: (shape: "dot", size: 0.06, fill: accent.mat))

  /* ctz-show-clip(stroke:gray) */
  ctz-def-points(
  A: (3, -1), B: (3, 1), V: (0, 0),
  )

  let V = (0, 0)
  let A = (3, -1)
  let B = (3, 1)

  ctz-def-points(A: A, B: B, V: V)

  let ang-a = calc.atan2(A.at(0) - V.at(0), A.at(1) - V.at(1))
  let ang-b = calc.atan2(B.at(0) - V.at(0), B.at(1) - V.at(1))

  arc(V, start: ang-a, stop: ang-b, radius: 2.5, anchor: "origin", mark: (end: ")>", fill: accent.mat), stroke: (thickness: 0.7pt, paint: accent.mat))

  ctz-def-bisect("P1", "P2", "A", "V", "B")
  ctz-def-bisect("P3", "P4", "P2", "V", "B")
  ctz-def-bisect("P5", "P6", "P2", "V", "A")

  ctz-draw-line-add("V", "B", add:(0, 0.5), stroke: accent.mat.lighten(80%) + 0.7pt)
  ctz-draw-line-add("V", "P4", add:(0, 0.5), stroke: accent.mat.lighten(60%) + 0.7pt)
  ctz-draw-line-add("V", "P2", add:(0, 0.5), stroke: accent.mat.lighten(40%) + 0.7pt)
  ctz-draw-line-add("V", "P6", add:(0, 0.5), stroke: accent.mat.lighten(20%) + 0.7pt)
  ctz-draw-line-add("V", "A", add:(0, 0.5), stroke: accent.mat + 0.7pt)
  
  ctz-draw(points: ("V",), labels: (V: "left"))

  content((rel: (0, -0.3), to: "A"), text(black)[$A$])
  content((rel: (0, 0.3), to: "B"), text(black)[$B$])

  }),
caption: []
) <grafico_rotazione_angolo2>
]

#let grafici_rotazione_angolo = [#align(center)[#grid(columns: 2, align: bottom + center, column-gutter: 3em)[#grafico_rotazione_angolo1][#grafico_rotazione_angolo2]]]

#let grafico_angolo_positivo1 = [
#figure(
  ctz-canvas(length: 0.8cm, {
    import cetz.draw: *
    ctz-init()
    ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))

    let V = (0, 0)
    let A = (3, -1)
    let B = (3, 1)

    ctz-def-points(A: A, B: B, V: V)

    // --- rette di riferimento VA e VB ---
    ctz-draw-line-add("V", "B", add: (0, 0.5), stroke: accent.mat + 0.7pt)
    ctz-draw-line-add("V", "A", add: (0, 0.5), stroke: accent.mat + 0.7pt)

    // --- angoli in gradi dei raggi VA e VB ---
    let ang-a = calc.atan2(A.at(0) - V.at(0), A.at(1) - V.at(1))
    let ang-b = calc.atan2(B.at(0) - V.at(0), B.at(1) - V.at(1))

    // differenza angolare da A a B, normalizzata in [0, 360deg)
    let diff = calc.rem((ang-b - ang-a + 360deg + 4deg) / 1deg, 360) * 1deg

    // angolo totale: un giro completo + l'arco fino a B
    let total-angle = 360deg + diff
    let span = total-angle / 2

    let r1 = 1.0
    let r2 = 1.37

    // --- arco 1: centro V ---
    let theta-end1 = ang-a + span
    arc(V, start: ang-a, stop: theta-end1, radius: r1, anchor: "origin",
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(30%)))

    // --- punto di giunzione: nuovo centro C2 sulla stessa retta radiale ---
    let C2 = (
      V.at(0) + (r1 - r2) * calc.cos(theta-end1),
      V.at(1) + (r1 - r2) * calc.sin(theta-end1),
    )

    // --- arco 2: centro C2, termina esattamente su VB ---
    arc(C2, start: theta-end1, stop: theta-end1 + span, radius: r2, anchor: "origin",
      mark: (end: ")>", fill: accent.mat.lighten(30%)),
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(30%)))

    // --- punto V con label, senza pallini per A/B ---
    ctz-draw(points: ("V",), labels: (V: "left"))

    content((rel: (0, -0.3), to: "A"), text(black)[$A$])
    content((rel: (0, 0.3), to: "B"), text(black)[$B$])
  }),
  caption: []
) <grafico_angolo_positivo1>
]

#let grafico_angolo_positivo2 = [
#figure(
  ctz-canvas(length: 0.8cm, {
    import cetz.draw: *
    ctz-init()
    ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))

    let V = (0, 0)
    let A = (3, -1)
    let B = (3, 1)

    ctz-def-points(A: A, B: B, V: V)

    // --- rette di riferimento VA e VB ---
    ctz-draw-line-add("V", "B", add: (0, 0.5), stroke: accent.mat + 0.7pt)
    ctz-draw-line-add("V", "A", add: (0, 0.5), stroke: accent.mat + 0.7pt)

    // --- angoli in gradi dei raggi VA e VB ---
    let ang-a = calc.atan2(A.at(0) - V.at(0), A.at(1) - V.at(1))
    let ang-b = calc.atan2(B.at(0) - V.at(0), B.at(1) - V.at(1))

    // differenza angolare da A a B, normalizzata in [0, 360deg)
    let diff = calc.rem((ang-b - ang-a + 360deg + 4deg) / 1deg, 360) * 1deg

    // angolo totale: un giro completo + l'arco fino a B
    let total-angle = 360deg + diff
    let span = total-angle / 2

    let r1 = 1.0
    let r2 = 1.37

    // --- arco 1: centro V ---
    let theta-end1 = ang-a + span
    arc(V, start: ang-a, stop: theta-end1, radius: r1, anchor: "origin",
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(30%)))

    // --- punto di giunzione: nuovo centro C2 sulla stessa retta radiale ---
    let C2 = (
      V.at(0) + (r1 - r2) * calc.cos(theta-end1),
      V.at(1) + (r1 - r2) * calc.sin(theta-end1),
    )

let n-turns = 2
let n-arcs = n-turns * 2   // stesso rapporto usato per 1 giro (2 archi)

let total-angle = n-turns * 360deg + diff - 2deg
let span = total-angle / n-arcs

let r-start = 1.0
let r-step = 0.2   // incremento di raggio per ogni arco

let center = V
let theta = ang-a

for i in range(n-arcs) {
  let r = r-start + r-step * i
  let theta-next = theta + span
  let is-last = i == n-arcs - 1

  arc(center, start: theta, stop: theta-next, radius: r, anchor: "origin",
    mark: if is-last { (end: ")>", fill: accent.mat.lighten(30%)) } else { none },
    stroke: (thickness: 0.7pt, paint: accent.mat.lighten(30%)))

  // nuovo centro per il prossimo arco, sulla stessa retta radiale del punto di giunzione
  let r-next = r-start + r-step * (i + 1)
  center = (
    center.at(0) + (r - r-next) * calc.cos(theta-next),
    center.at(1) + (r - r-next) * calc.sin(theta-next),
  )
  theta = theta-next
}

    

    // --- punto V con label, senza pallini per A/B ---
    ctz-draw(points: ("V",), labels: (V: "left"))

    content((rel: (0, -0.3), to: "A"), text(black)[$A$])
    content((rel: (0, 0.3), to: "B"), text(black)[$B$])
  }),
  caption: []
) <grafico_angolo_positivo2>
]

#let grafico_angolo_positivo3 = [
#figure(
  ctz-canvas(length: 0.8cm, {
    import cetz.draw: *
    ctz-init()
    ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))

    ctz-show-clip(stroke: gray)

    let V = (0, 0)
    let A = (3, -1)
    let B = (3, 1)

    ctz-def-points(A: A, B: B, V: V)

    // --- rette di riferimento VA e VB ---
    ctz-draw-line-add("V", "B", add: (0, 0.5), stroke: accent.mat + 0.7pt)
    ctz-draw-line-add("V", "A", add: (0, 0.5), stroke: accent.mat + 0.7pt)

    // --- angoli in gradi dei raggi VA e VB ---
    let ang-a = calc.atan2(A.at(0) - V.at(0), A.at(1) - V.at(1))
    let ang-b = calc.atan2(B.at(0) - V.at(0), B.at(1) - V.at(1))

    let ang-start = ang-b   // parte da B
    let ang-end = ang-a     // arriva ad A

    // differenza angolare da B ad A, andando in senso orario, normalizzata in [0, 360deg)
    let diff = calc.rem((ang-start - ang-end + 360deg) / 1deg, 360) * 1deg

    let total-angle = 360deg + diff + 4deg
    let span = -(total-angle / 2)   // negativo = senso orario

    let r1 = 1.0
    let r2 = 1.37

    // --- arco 1: centro V, parte da B ---
    let theta-end1 = ang-start + span
    arc(V, start: ang-start, stop: theta-end1, radius: r1, anchor: "origin",
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(30%)))

    // --- centro C2 (uguale a prima) ---
    let C2 = (
      V.at(0) + (r1 - r2) * calc.cos(theta-end1),
      V.at(1) + (r1 - r2) * calc.sin(theta-end1),
    )

    // --- arco 2: centro C2, termina esattamente su VB ---
    arc(C2, start: theta-end1, stop: theta-end1 + span, radius: r2, anchor: "origin",
      mark: (end: ")>", fill: accent.mat.lighten(30%)),
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(30%)))

    // --- punto V con label, senza pallini per A/B ---
    ctz-draw(points: ("V",), labels: (V: "left"))

    content((rel: (0, -0.3), to: "A"), text(black)[$A$])
    content((rel: (0, 0.3), to: "B"), text(black)[$B$])
  }),
  caption: []
) <grafico_angolo_positivo3>
]

#let grafici_angolo_positivo = [#align(center)[#grid(columns: 3, align: bottom + center, column-gutter: -1em)[#grafico_angolo_positivo1][][#grafico_angolo_positivo2][][#grafico_angolo_positivo3][]]]

#let grafico_angolo_positivo4 = [
#figure(
  ctz-canvas(length: 0.8cm, clip-canvas: (0, -2, 3.5, 2.5), {
    import cetz.draw: *
    ctz-init()
    ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))

   /*  ctz-show-clip(stroke: gray) */

    let V = (0, 0)
    let A = (3, 0)
    let B = (3, 2)

    ctz-def-points(A: A, B: B, V: V)

    // --- rette di riferimento VA e VB ---
    ctz-draw-line-add("V", "B", add: (0, 0.5), stroke: accent.mat.lighten(60%) + 0.7pt)
    ctz-draw-line-add("V", "A", add: (0, 0.5), stroke: accent.mat + 0.7pt)

    // --- angoli in gradi dei raggi VA e VB ---
    let ang-a = calc.atan2(A.at(0) - V.at(0), A.at(1) - V.at(1))
    let ang-b = calc.atan2(B.at(0) - V.at(0), B.at(1) - V.at(1))

    // ================= SPIRALE 1: oraria, VA -> VA (un giro) =================
    let r1 = 1.0
    let r2 = 1.2

    let span-cw = -(360deg / 2)   // negativo = orario

    let theta-end1-cw = ang-a + span-cw
    arc(V, start: ang-a, stop: theta-end1-cw, radius: r1, anchor: "origin",
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(30%)))

    let C2-cw = (
      V.at(0) + (r1 - r2) * calc.cos(theta-end1-cw),
      V.at(1) + (r1 - r2) * calc.sin(theta-end1-cw),
    )

    arc(C2-cw, start: theta-end1-cw, stop: theta-end1-cw + span-cw, radius: r2, anchor: "origin",
      mark: (end: ")>", fill: accent.mat.lighten(30%)),
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(30%)))

    // ================= SPIRALE 2: antioraria, VA -> VB (un giro + diff) =================
    let r3 = 1.8
    let r4 = 2.0

    let diff = calc.rem((ang-b - ang-a + 360deg) / 1deg, 360) * 1deg
    let total-angle-ccw = 360deg + diff
    let span-ccw = total-angle-ccw / 2   // positivo = antiorario

    let theta-end1-ccw = ang-a + span-ccw
    arc(V, start: ang-a, stop: theta-end1-ccw, radius: r3, anchor: "origin",
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(60%)))

    let C2-ccw = (
      V.at(0) + (r3 - r4) * calc.cos(theta-end1-ccw),
      V.at(1) + (r3 - r4) * calc.sin(theta-end1-ccw),
    )

    arc(C2-ccw, start: theta-end1-ccw, stop: theta-end1-ccw + span-ccw, radius: r4, anchor: "origin",
      mark: (end: ")>", fill: accent.mat.lighten(60%)),
      stroke: (thickness: 0.7pt, paint: accent.mat.lighten(60%)))

    // ================= ARCO SEMPLICE: VA -> VB (nessun giro) =================
    let r0 = 2.6

    arc(V, start: ang-a, stop: ang-b, radius: r0, anchor: "origin",
      mark: (end: ")>", fill: accent.mat),
      stroke: (thickness: 0.7pt, paint: accent.mat))

        // --- punto V con label, senza pallini per A/B ---
        ctz-draw(points: ("V",), labels: (V: "left"))

        content((rel: (0, -0.3), to: "A"), text(black)[$A$])
        content((rel: (0, 0.3), to: "B"), text(black)[$B$])
  }),
  caption: []
) <grafico_angolo_positivo4>
]

#let tabella_radianti = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
  #show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
  #figure(
    caption: [],
    table(
    stroke: 0.5pt + accent.mat.lighten(90%),	
    inset: 1em,
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
    columns: (auto,) * 8, 
      [Gradi], [$0°$], [$30°$], [$45°$], [$60°$], [$90°$], [$180°$], [$360°$],
      [Radianti], [$0$], [$display(pi / 6)$], [$display(pi / 4)$], [$display(pi / 3)$], [$display(pi / 2)$], [$pi$], [$2pi$]
    ) 
  ) <tabella_radianti>
]

#let grafico_circonferenza_goniometrica = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: (thickness: 0.8pt)))
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -2, x-max: 2,
        y-min: -1.5, y-max: 1.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {

          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          // 0
          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => 0
          )
          // pi/2
          plot.add-vline(
            min: -1,
            max: 1,
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            0,
          )
          // pi/4
          plot.add(
            domain: (-calc.cos(calc.pi/4), calc.cos(calc.pi/4)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => x
          )
          // 3/4 pi
          plot.add(
            domain: (-calc.cos(calc.pi/4), calc.cos(calc.pi/4)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => -x
          )
          // 1/6 pi
          plot.add(
            domain: (-calc.cos(calc.pi/6), calc.cos(calc.pi/6)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => calc.sqrt(3) * x / 3
          )
          // 5/6 pi
          plot.add(
            domain: (-calc.cos(calc.pi/6), calc.cos(calc.pi/6)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => -calc.sqrt(3) * x / 3
          )
          // 1/3 pi
          plot.add(
            domain: (-calc.cos(calc.pi/3), calc.cos(calc.pi/3)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => calc.sqrt(3) * x
          )
          // 4/3 pi
          plot.add(
            domain: (-calc.cos(calc.pi/3), calc.cos(calc.pi/3)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => -calc.sqrt(3) * x
          )

          // Punti
          plot.annotate({
            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((1, 0-0.05), [$mat(0; 2 pi, delim: #none)$], anchor: ("west"), padding: 0pt)

            circle((-1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((-1, 0), [$script(pi)$], anchor: "south-east", padding: 0pt)

            circle((0, 1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0+0.1, 1), [$(pi)/2$], anchor: "south", padding: 0pt)

            circle((0, -1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0+0.15, -1), [$(3 pi)/2$], anchor: "north", padding: 0pt)
            //
            circle((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), [$pi/4$], anchor: "south-west", padding: -2pt)

            circle((-calc.cos(calc.pi/4), calc.sin(calc.pi/4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/4), calc.sin(calc.pi/4)), [$(3 pi)/4$], anchor: "south-east", padding: -2pt)

            circle((calc.cos(calc.pi/4), -calc.sin(calc.pi/4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/4), -calc.sin(calc.pi/4)), [$(7 pi)/4$], anchor: "north-west", padding: 0pt)

            circle((-calc.cos(calc.pi/4), -calc.sin(calc.pi/4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/4), -calc.sin(calc.pi/4)), [$(5 pi)/4$], anchor: "north-east", padding: 0pt)

            circle((calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/6), calc.sin(calc.pi/6)), [$pi/6$], anchor: "west", padding: 0pt)

            circle((-calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/6), calc.sin(calc.pi/6)), [$(5 pi)/6$], anchor: "east", padding: 0pt)

            circle((calc.cos(calc.pi/6), -calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/6)-0.05, -calc.sin(calc.pi/6)-0.05), [$(11 pi)/6$], anchor: "west", padding: 0pt)

            circle((-calc.cos(calc.pi/6), -calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/6), -calc.sin(calc.pi/6)-0.05), [$(7 pi)/6$], anchor: "east", padding: 0pt)

            //
            circle((calc.cos(calc.pi/3), calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/3), calc.sin(calc.pi/3)), [$pi/3$], anchor: "south", padding: 0pt)

            circle((-calc.cos(calc.pi/3), calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/3), calc.sin(calc.pi/3)), [$(2 pi)/3$], anchor: "south", padding: 0pt)

            circle((calc.cos(calc.pi/3), -calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/3)+0.05, -calc.sin(calc.pi/3)), [$(5 pi)/3$], anchor: "north", padding: 1pt)

            circle((-calc.cos(calc.pi/3), -calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/3)-0.05, -calc.sin(calc.pi/3)), [$(4 pi)/3$], anchor: "north", padding: 1pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_circonferenza_goniometrica>
]

#let grafico_angoli_radianti1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: black.lighten(90%)))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {

          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          // 0
          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => 0
          )
          // pi/2
          plot.add-vline(
            min: -1,
            max: 1,
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            0,
          )
          

          // Punti
          plot.annotate({
            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((1-0.2, 0-0.2), [$script(4 dot pi/2 = 2 pi)$], anchor: ("west"), padding: 0pt)
            content((1+0.05, 0+0.15), [$script(0)$], anchor: ("west"), padding: 0pt)

            circle((-1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((-1+0.2, 0), [$script(2 dot (pi)/2 = pi)$], anchor: "south-east", padding: 0pt)

            circle((0, 1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, 1), [$script(1 dot (pi)/2 = (pi)/2)$], anchor: "south", padding: 0pt)

            circle((0, -1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, -1), [$script(3 dot (pi)/2 = (3 pi)/2)$], anchor: "north", padding: 0pt)
            //
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_angoli_radianti1>
]

#let grafico_angoli_radianti2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: black.lighten(90%)))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {

          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          // 0
          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => 0
          )
          // pi/2
          plot.add-vline(
            min: -1,
            max: 1,
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            0,
          )
          // pi/4
          plot.add(
            domain: (-calc.cos(calc.pi/4), calc.cos(calc.pi/4)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => x
          )
          // 3/4 pi
          plot.add(
            domain: (-calc.cos(calc.pi/4), calc.cos(calc.pi/4)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => -x
          )
          

          // Punti
          plot.annotate({
            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((1-0.2, 0-0.2), [$script(8 dot pi/4 = 2 pi)$], anchor: ("west"), padding: 0pt)
            content((1+0.05, 0+0.15), [$script(0)$], anchor: ("west"), padding: 0pt)

            circle((-1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((-1+0.15, 0-0.1), [$script(4 dot (pi)/4 = pi)$], anchor: "south-east", padding: 0pt)

            circle((0, 1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, 1), [$script(2 dot (pi)/4 = (pi)/2)$], anchor: "south", padding: 0pt)

            circle((0, -1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, -1), [$script(6 dot (pi)/4 = (3 pi)/2)$], anchor: "north", padding: 0pt)
            //
            circle((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/4)-0.05, calc.sin(calc.pi/4)-0.05), [$script(1 dot pi/4 = pi/4)$], anchor: "south-west", padding: -2pt)

            circle((-calc.cos(calc.pi/4), calc.sin(calc.pi/4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/4)+0.1, calc.sin(calc.pi/4)-0.05), [$script(3 dot pi/4 = (3 pi)/4)$], anchor: "south-east", padding: -2pt)

            circle((calc.cos(calc.pi/4), -calc.sin(calc.pi/4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/4)-0.15, -calc.sin(calc.pi/4)+0.1), [$script(7 dot pi/4 = (7 pi)/4)$], anchor: "north-west", padding: 0pt)

            circle((-calc.cos(calc.pi/4), -calc.sin(calc.pi/4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/4)+0.15, -calc.sin(calc.pi/4)+0.1), [$script(5 dot pi/4 = (5 pi)/4)$], anchor: "north-east", padding: 0pt)

            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_angoli_radianti2>
]

#let grafico_angoli_radianti3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: black.lighten(90%)))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {

          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          // 0
          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => 0
          )
          // 1/3 pi
          plot.add(
            domain: (-calc.cos(calc.pi/3), calc.cos(calc.pi/3)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => calc.sqrt(3) * x
          )
          // 4/3 pi
          plot.add(
            domain: (-calc.cos(calc.pi/3), calc.cos(calc.pi/3)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => -calc.sqrt(3) * x
          )
          

          // Punti
          plot.annotate({
            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((1-0.2, 0-0.2), [$script(6 dot pi/3 = 2 pi)$], anchor: ("west"), padding: 0pt)
            content((1+0.05, 0+0.15), [$script(0)$], anchor: ("west"), padding: 0pt)

            circle((-1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((-1+0.2, 0), [$script(3 dot (pi)/3 = pi)$], anchor: "south-east", padding: 0pt)

            //
            circle((calc.cos(calc.pi/3), calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/3)+0.25, calc.sin(calc.pi/3)), [$script(1 dot pi/3 = pi/3)$], anchor: "south", padding: 0pt)

            circle((-calc.cos(calc.pi/3), calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/3)-0.25, calc.sin(calc.pi/3)), [$script(2 dot pi/3 = (2 pi)/3)$], anchor: "south", padding: 0pt)

            circle((calc.cos(calc.pi/3), -calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/3)+0.25, -calc.sin(calc.pi/3)), [$script(5 dot pi/3 = (5 pi)/3)$], anchor: "north", padding: 1pt)

            circle((-calc.cos(calc.pi/3), -calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/3)-0.2, -calc.sin(calc.pi/3)), [$script(4 dot pi/3 = (4 pi)/3)$], anchor: "north", padding: 1pt)

            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_angoli_radianti3>
]

#let grafico_angoli_radianti4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: black.lighten(90%)))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {

          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          // 0
          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => 0
          )
          // pi/2
          plot.add-vline(
            min: -1,
            max: 1,
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            0,
          )
          // 1/6 pi
          plot.add(
            domain: (-calc.cos(calc.pi/6), calc.cos(calc.pi/6)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => calc.sqrt(3) * x / 3
          )
          // 5/6 pi
          plot.add(
            domain: (-calc.cos(calc.pi/6), calc.cos(calc.pi/6)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => -calc.sqrt(3) * x / 3
          )
          // 1/3 pi
          plot.add(
            domain: (-calc.cos(calc.pi/3), calc.cos(calc.pi/3)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => calc.sqrt(3) * x
          )
          // 4/3 pi
          plot.add(
            domain: (-calc.cos(calc.pi/3), calc.cos(calc.pi/3)),
            style: (stroke: 1pt + accent.mat.lighten(75%)),
            x => -calc.sqrt(3) * x
          )
          

          // Punti
          plot.annotate({
            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((1-0.22, 0-0.2), [$script(12 dot pi/6 = 2 pi)$], anchor: ("west"), padding: 0pt)
            content((1+0.05, 0+0.15), [$script(0)$], anchor: ("west"), padding: 0pt)

            circle((-1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((-1+0.15, 0-0.15), [$script(6 dot (pi)/6 = pi)$], anchor: "south-east", padding: 0pt)

            circle((0, 1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, 1), [$script(3 dot (pi)/6 = (pi)/2)$], anchor: "south", padding: 0pt)

            circle((0, -1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, -1), [$script(9 dot (pi)/6 = (3 pi)/2)$], anchor: "north", padding: 0pt)

            circle((calc.cos(calc.pi/3), calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/3)+0.35, calc.sin(calc.pi/3)-0.15), [$script(2 dot pi/6 = pi/3)$], anchor: "south", padding: 0pt)

            circle((-calc.cos(calc.pi/3), calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/3)-0.35, calc.sin(calc.pi/3)-0.15), [$script(4 dot pi/6 = (2 pi)/3)$], anchor: "south", padding: 0pt)

            //
            circle((calc.cos(calc.pi/3), -calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/3)+0.35, -calc.sin(calc.pi/3)+0.15), [$script(10 dot pi/6 = (5 pi)/3)$], anchor: "north", padding: 1pt)

            circle((-calc.cos(calc.pi/3), -calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/3)-0.35, -calc.sin(calc.pi/3)+0.15), [$script(8 dot pi/6 = (4 pi)/3)$], anchor: "north", padding: 1pt)

            //
            circle((calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/6)-0.15, calc.sin(calc.pi/6)+0.05), [$script(1 dot pi/6 = pi/6)$], anchor: "west", padding: 0pt)

            circle((-calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/6)+0.15, calc.sin(calc.pi/6)), [$script(5 dot pi/6 = (5 pi)/6)$], anchor: "east", padding: 0pt)

            circle((calc.cos(calc.pi/6), -calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/6)-0.25, -calc.sin(calc.pi/6)-0.05), [$script(11 dot pi/6 = (11 pi)/6)$], anchor: "west", padding: 0pt)

            circle((-calc.cos(calc.pi/6), -calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/6)+0.15, -calc.sin(calc.pi/6)-0.05), [$script(7 dot pi/6 = (7 pi)/6)$], anchor: "east", padding: 0pt)

            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_angoli_radianti4>
]

#let grafici_angoli_radianti = [
#align(center)[
  #grid(columns: 2, column-gutter: 1em, row-gutter: 1.5em, align: center + bottom)[#grafico_angoli_radianti1][#grafico_angoli_radianti2][#grafico_angoli_radianti3][#grafico_angoli_radianti4]
]]

#let grafico_multipli_radianti1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      /* set-style(axes: (shared-zero: false, stroke: black.lighten(90%))) */
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {

          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )
         

          // Punti
          plot.annotate({
            line((0, 0), (calc.cos(1), calc.sin(1)),
              stroke: (paint: accent.mat.lighten(10%)
            ))
            line((0, 0), (calc.cos(2), calc.sin(2)),
              stroke: (paint: accent.mat.lighten(30%)
            ))
            line((0, 0), (calc.cos(3), calc.sin(3)),
              stroke: (paint: accent.mat.lighten(50%)
            ))
            line((0, 0), (calc.cos(4), calc.sin(4)),
              stroke: (paint: accent.mat.lighten(70%)
            ))
            line((0, 0), (calc.cos(5), calc.sin(5)),
              stroke: (paint: accent.mat.lighten(80%)
            ))
            line((0, 0), (calc.cos(6), calc.sin(6)),
              stroke: (paint: accent.mat.lighten(90%)
            ))
            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)            
            content((1+0.05, 0+0.15), [$script(0)$], anchor: ("west"), padding: 0pt)

            circle((calc.cos(1), calc.sin(1)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(1), calc.sin(1)), [$script(1)$], anchor: "south-west", padding: 1pt)

            circle((calc.cos(2), calc.sin(2)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(2), calc.sin(2)), [$script(2)$], anchor: "south-east", padding: 1pt)

            circle((calc.cos(3), calc.sin(3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(3), calc.sin(3)+0.05), [$script(3)$], anchor: "east", padding: 1pt)

            circle((calc.cos(4), calc.sin(4)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(4), calc.sin(4)), [$script(4)$], anchor: "north-east", padding: 1pt)

            circle((calc.cos(5), calc.sin(5)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(5), calc.sin(5)), [$script(5)$], anchor: "north", padding: 1pt)

            circle((calc.cos(6), calc.sin(6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(6), calc.sin(6)), [$script(6)$], anchor: "west", padding: 1pt)


            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_multipli_radianti1>
]

#let grafico_multipli_radianti2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (
        /* stroke: (paint: black.lighten(90%)),
        tick: (stroke: black.lighten(80%) + .5pt), */
        overshoot: 0.75
      ))
      
      plot.plot(
        size: (6 * 1.2, 2 * 1.2),
        axis-style: "school-book",
        x-tick-step: 0.5,      
        y-tick-step: none,      
        x-min: 0, x-max: 6.0,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.fraction, //TODO frazioni troppo a ridosso dell'asse x
        {

          // Funzione fantasma, non rimuovere
          plot.add(
            domain: (0, 0),            
            x => 0
          )
          

          // Punti
          plot.annotate({           

            circle((calc.pi/2, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.pi/2, 0), [$display(pi/2)$], anchor: "south", padding: 0.25em)

            circle((calc.pi, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.pi, 0), [$display(pi)$], anchor: "south", padding: 0.25em)

            circle((3 * calc.pi/2, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((3 * calc.pi/2, 0), [$display((3 pi)/2)$], anchor: "south", padding: 0.25em)

            circle((2 * calc.pi, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((2 * calc.pi, 0), [$display(2 pi)$], anchor: "south", padding: 0.25em)
            
          })
        }
      )
    }),
    caption: [],
    gap: 1.4em //* per allineare i due grafici
  ) <grafico_multipli_radianti2>  
]

#let grafici_multipli_radianti = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_multipli_radianti1][#grafico_multipli_radianti2]
]]

#let grafico_funzione_periodica1 = [#figure(
  cetz.canvas({
    import cetz.draw: *

    let p = 1

    plot.plot(
      size: (10, 2),
      axis-style: "school-book",
      x-tick-step: p,
      y-tick-step: none,
      x-min: -2.4 * p, x-max: 3.4 * p,
      y-min: 0, y-max: 1,
      x-label: [$x$],
      y-label: [$y$],
      x-grid: none,
      y-grid: none,
      x-format: n => {
        let k = calc.round(n / p)
        if k == 0 { [$0$] } else if k == 1 { [$p$] } else if k == -1 { [$-p$] } else { [$#k p$] }
      },
      {
        for k in range(-3, 4) {
          plot.add(
            domain: (k * p, (k + 1) * p),
            samples: 50,
            style: (stroke: 1pt + accent.mat),
            x => {
              let t = x - k * p
              calc.sqrt(t) * (1.5 - t / (p + 0.2))
            }
          )
        }
      }
    )
  }),
  caption: []
) <grafico_funzione_periodica1>
]

#let grafico_funzione_periodica2 = [#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (10, 2),
      axis-style: "school-book",
      x-tick-step: 1,
      y-tick-step: 1,
      x-min: -3.4, x-max: 6.4,
      y-min: 0, y-max: 1.2,
      x-label: [$x$],
      y-label: none,
      x-grid: none,
      y-grid: none,
      {
        plot.add(
          domain: (-3.4, 6.4),
          samples: 250,
          style: (stroke: 1pt + accent.mat),
          x => {
            // riporta x in [-1, 1) tramite il resto modulo 2
            let t = calc.rem(x + 1, 2)
            if t < 0 { t += 2 }
            t = t - 1
            calc.pow(t, 2)
          }
        )
      }
    )
  }),
  caption: []
) <grafico_funzione_periodica2>
]

#let grafico_seno_coseno1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [O], stroke: black.lighten(90%)))
      
      plot.plot(
        size: (3.5, 3.5),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {

          let radP = calc.pi/6
          let cosP = calc.cos(radP)
          let sinP = calc.sin(radP)
          
          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(70%)),
            x => (calc.cos(x), calc.sin(x))
          )
      

          // Punti e linee
          plot.annotate({
            circle((cosP, sinP), radius: 1pt, fill: accent.mat, stroke: none)
            content(((cosP)-0.1, sinP), [$P (pi/6)$], anchor: "west", padding: 1pt)

            circle((cosP, -sinP), radius: 1pt, fill: accent.mat, stroke: none)
            content((cosP, -sinP), [$P'$], anchor: "west", padding: 1pt)

            line(
              (cosP, sinP),
              (0, 0),
              stroke: (paint: accent.mat.lighten(10%)), thickness: 1pt,
            )
            line(
              (cosP, sinP),
              (cosP, -sinP),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (cosP, -sinP),
              (0, 0),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )             
          })
        }
      )
    }),
    caption: [],
  ) <grafico_seno_coseno1>
]

#let grafico_seno_coseno2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [O], stroke: black.lighten(90%)))
      
      plot.plot(
        size: (3.5, 3.5),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {

          let radP = calc.pi/4
          let cosP = calc.cos(radP)
          let sinP = calc.sin(radP)

          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(70%)),
            x => (calc.cos(x), calc.sin(x))
          )

       

          // Punti e linee
          plot.annotate({
            circle((cosP, sinP), radius: 1pt, fill: accent.mat, stroke: none)
            content(((cosP)-0.1, sinP), [$P (pi/4)$], anchor: "west", padding: 1pt)

            circle((cosP, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((cosP, 0), [$P'$], anchor: "north", padding: 1pt)

            line(
              (cosP, sinP),
              (0, 0),
              stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )
            line(
              (cosP, sinP),
              (cosP, 0),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
          })
        }
      )
    }),
    caption: [],
  ) <grafico_seno_coseno2>
]

#let grafico_seno_coseno3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [O], stroke: black.lighten(90%)))
      
      plot.plot(
        size: (3.5, 3.5),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let radP = calc.pi/3
          let cosP = calc.cos(radP)
          let sinP = calc.sin(radP)


          // Circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(70%)),
            x => (calc.cos(x), calc.sin(x))
          )     

          // Punti e linee
          plot.annotate({
            circle((cosP, sinP), radius: 1pt, fill: accent.mat, stroke: none)
            content(((cosP)-0.05, sinP), [$P (pi/3)$], anchor: "west", padding: 1pt)

            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)            
            content((1, 0), [$P'$], anchor: "west", padding: 1pt)

            circle((1/2, 0), radius: 0.5pt, fill: accent.mat, stroke: none)

            line(
              (cosP, sinP),
              (0, 0),
              stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )
            line(
              (cosP, sinP),
              (1, 0),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (cosP, sinP),
              (cosP, 0),
              stroke: (paint: accent.mat.lighten(30%), dash: "dashed"), thickness: 1pt,
            )
          })
        }
      )
    }),
    caption: [],
  ) <grafico_seno_coseno3>
]

#let grafici_seno_coseno = [
#align(center)[
  #grid(columns: 3, column-gutter: 0.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_seno_coseno1][#grafico_seno_coseno2][#grafico_seno_coseno3]
]]

#let tabella_seno_coseno = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
  #show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
  #figure(
    caption: [],
    table(
    stroke: 0.5pt + accent.mat.lighten(90%),	
    inset: 1em,	
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
    columns: (auto,) * 6, 
    [$x$], [$0$], [$display(pi/6)$], [$display(pi/4)$], [$display(pi/3)$], [$display(pi/2)$], 
    [$sin x$], [$0$], [$display(1/2)$], [$display(sqrt(2)/2)$], [$display(sqrt(3)/2)$], [$1$],
    [$cos x$], [$1$], [$display(sqrt(3)/2)$], [$display(sqrt(2)/2)$], [$display(1/2)$], [$0$],
    )
  ) <tabella_seno_coseno>
]

#let grafico_costruzione_seno = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(
        axes: (shared-zero: [], stroke: black.lighten(90%), overshoot: 0.5)
      )

      let radP = calc.pi/6
      let cosP = calc.cos(radP)
      let sinP = calc.sin(radP)

      let radQ = calc.pi/4
      let cosQ = calc.cos(radQ)
      let sinQ = calc.sin(radQ)

      let radR = calc.pi/3
      let cosR = calc.cos(radR)
      let sinR = calc.sin(radR)

      let radS = calc.pi/2
      let cosS = calc.cos(radS)
      let sinS = calc.sin(radS)

      // --- Circonferenza goniometrica (a sinistra) ---
      plot.plot(
        name: "circ",
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: none, y-tick-step: none,
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [], y-label: [],
        x-grid: none, y-grid: none,
        {
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(70%)),
            x => (calc.cos(x), calc.sin(x))
          )
          plot.add-anchor("P", (cosP, sinP))
          plot.annotate({
            circle((cosP, sinP), radius: 1pt, fill: accent.mat, stroke: none)
            line((cosP, sinP), (cosP, 0),
              stroke: (paint: accent.mat.lighten(10%), dash: "dotted"))
          })
          plot.add-anchor("Q", (cosQ, sinQ))
          plot.annotate({
            circle((cosQ, sinQ), radius: 1pt, fill: accent.mat, stroke: none)
            line((cosQ, sinQ), (cosQ, 0),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))
          })
          plot.add-anchor("R", (cosR, sinR))
          plot.annotate({
            circle((cosR, sinR), radius: 1pt, fill: accent.mat, stroke: none)
            line((cosR, sinR), (cosR, 0),
              stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))
          })
          plot.add-anchor("S", (cosS, sinS))
          plot.annotate({
            circle((cosS, sinS), radius: 1pt, fill: accent.mat, stroke: none)
            line((cosS, sinS), (cosS, 0),
              stroke: (paint: accent.mat.lighten(70%), dash: "dotted"))
          })
          plot.annotate({            
            content((cosP, 0), [$script(pi/6)$], anchor: "north", padding: 1pt)
            content((cosQ, 0), [$script(pi/4)$], anchor: "north", padding: 1pt)
            content((cosR, 0), [$script(pi/3)$], anchor: "north", padding: 1pt)
            content((cosS, 0), [$script(pi/2)$], anchor: "north", padding: 1pt)
          })
        }
      )

      // --- Funzione seno (a destra, traslata) ---
      translate((5, 0))
      plot.plot(
        name: "sin",
        size: (3.5, 4),
        axis-style: "school-book",
        x-tick-step: none, y-tick-step: none,
        x-min: -0.3, x-max: calc.pi/2 + 0.3,
        y-min: -1.2, y-max: 1.2,
        x-label: [], y-label: [],
        x-grid: none, y-grid: none,
        {
          plot.add(
            domain: (0, calc.pi/2),
            style: (stroke: 1pt + accent.mat),
            x => calc.sin(x)
          )
          plot.add-anchor("P", (radP, sinP))
          plot.annotate({
            circle((radP, sinP), radius: 1pt, fill: accent.mat, stroke: none)
            line((radP, sinP), (radP, 0),
              stroke: (paint: accent.mat.lighten(10%), dash: "dotted"))
            
          })
          plot.add-anchor("Q", (radQ, sinQ))
          plot.annotate({
            circle((radQ, sinQ), radius: 1pt, fill: accent.mat, stroke: none)
            line((radQ, sinQ), (radQ, 0),
              stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))            
          })
          plot.add-anchor("R", (radR, sinR))
          plot.annotate({
            circle((radR, sinR), radius: 1pt, fill: accent.mat, stroke: none)
            line((radR, sinR), (radR, 0),
              stroke: (paint: accent.mat.lighten(50%), dash: "dotted"))            
          })
          plot.add-anchor("S", (radS, sinS))
          plot.annotate({
            circle((radS, sinS), radius: 1pt, fill: accent.mat, stroke: none)
            line((radS, sinS), (radS, 0),
              stroke: (paint: accent.mat.lighten(70%), dash: "dotted"))            
          })
          plot.annotate({            
            content((radP, 0), [$script(pi/6)$], anchor: "north", padding: 1pt)
            content((radQ, 0), [$script(pi/4)$], anchor: "north", padding: 1pt)
            content((radR, 0), [$script(pi/3)$], anchor: "north", padding: 1pt)
            content((radS, 0), [$script(pi/2)$], anchor: "north", padding: 1pt)
          })
        }
      )
      translate((-5, 0)) // reset, non necessario se è l'ultimo elemento

      // --- Segmento che collega i due punti ---
      line("circ.P", "sin.P",
        stroke: (paint: accent.mat.lighten(10%), dash: "dotted"
      ))
      line("circ.Q", "sin.Q",
        stroke: (paint: accent.mat.lighten(30%), dash: "dotted"
      ))
      line("circ.R", "sin.R",
        stroke: (paint: accent.mat.lighten(50%), dash: "dotted"
      ))
      line("circ.S", "sin.S",
        stroke: (paint: accent.mat.lighten(70%), dash: "dotted"
      ))
    }),
    caption: [],
  ) <grafico_costruzione_seno>
]

// Già trattati in geometria analitica
#let grafico_seno_coseno_radianti = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
     
      plot.plot(
        size: (9, 4),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: 1,      
        x-min: -1, x-max: 3 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-format: plot.formats.multiple-of,
        x-grid: none,   
        y-grid: none, 
        legend: (7.5, 1),
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: "north-east",

        {
          plot.add(
            domain: (0, 3 * calc.pi + 0.5),        
            style: (stroke: (paint: accent.mat)),             
            x => calc.sin(x),
            samples: 100,
            label: [$sin x$]
          )
          plot.add(
            domain: (0, 3 * calc.pi + 0.5),        
            style: (stroke: (paint: accent.mat.lighten(50%))),             
            x => calc.cos(x),
            samples: 100,
            label: [$cos x$]
          )
        }
      )
    }),
    caption: []
  ) <grafico_seno_coseno_radianti>
]

#let grafico_seno_coseno_gradi = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1, x-max: 10.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-format: x => str(x) + "°",
        x-grid: none,   
        y-grid: none, 
        legend: (7.5, 4),
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: "north-east",
        

        {
          plot.add(
            domain: (-2, 12),        
            style: (stroke: (paint: accent.mat)),             
            x => calc.sin(x * 1deg), 
            label: [$sin x$]           
          )
        }
      )
    }),
    caption: []
  ) <grafico_seno_coseno_gradi>
]

#let grafici_seno_coseno_radianti_gradi = [
#align(center)[
  #grid(columns: 1, column-gutter: 0.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_seno_coseno_radianti][#grafico_seno_coseno_gradi]
]]

#let grafico_tangente_cotangente1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1, x-max: 1,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let xT = 1
          let yT = 1.3
          
          let norma = calc.sqrt(xT * xT + yT * yT)
          let xP = xT / norma
          let yP = yT / norma
          
          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 0.3

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          // Annotazioni, punti e settore dell'angolo
          plot.annotate({
            // Settore circolare pieno
            arc(
              (0, 0),
              start: 0deg,
              stop: ang_deg,
              radius: r_arco,
              mode: "PIE",
              anchor: "origin", //TODO necessario per centrare l'arco nell'origine
              fill: accent.mat.transparentize(90%),
              stroke: 0pt + accent.mat.transparentize(90%)
            )

            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((1, 0), [$A$], anchor: ("south-west"), padding: 0pt)

            line((xT, yT + 0.2), (xT, -(yT - 0.3)), stroke: (paint: accent.mat))
            line((xT, yT), (0, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))

            circle((xT, yT), radius: 1pt, fill: accent.mat, stroke: none)
            content((xT, yT), [$T$], anchor: ("south-west"), padding: 0pt)

            circle((xP, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((xP, yP), [$P$], anchor: ("south"), padding: 2pt)

            // Etichetta alpha
            let ang_mezzo = ang_rad / 2
            content(
              ((r_arco + 0.15) * calc.cos(ang_mezzo), (r_arco + 0.15) * calc.sin(ang_mezzo)),
              [$x$]
            )
          })
        }
      )
    }),
    caption: [],
  ) <grafico_tangente_cotangente1>
]

#let grafico_tangente_cotangente2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1, x-max: 1,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let xC = 1.3
          let yC = 1
          
          let norma = calc.sqrt(xC * xC + yC * yC)
          let xP = xC / norma
          let yP = yC / norma
          
          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 0.3

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          // Annotazioni e settore dell'angolo centrato in O(0,0)
          plot.annotate({
            // Settore circolare centrato nell'origine O
            arc(
              (0, 0),
              start: 0deg,
              stop: ang_deg,
              radius: r_arco,
              mode: "PIE",
              anchor: "origin",
              fill: accent.mat.transparentize(90%),
              stroke: 0pt + accent.mat.transparentize(90%)
            )


            // Punto B (0, 1)
            circle((0, 1), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, 1), [$B$], anchor: ("south-west"), padding: 2pt)

            // Retta tangente orizzontale y = 1
            line((-(xC + 0.2), yC), (xC + 0.2, yC), stroke: (paint: accent.mat))
            
            // Retta per l'origine e C
            line((xC, yC), (0, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))

            // Punto C
            circle((xC, yC), radius: 1pt, fill: accent.mat, stroke: none)
            content((xC, yC), [$C$], anchor: ("south-west"), padding: 2pt)

            // Punto P
            circle((xP, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((xP, yP), [$P$], anchor: ("south"), padding: 2pt)

            // Etichetta alpha
            let ang_mezzo = ang_rad / 2
            content(
              ((r_arco + 0.15) * calc.cos(ang_mezzo), (r_arco + 0.15) * calc.sin(ang_mezzo)),
              [$x$]
            )
          })
        }
      )
    }),
    caption: [],
  ) <grafico_tangente_cotangente2>
]

#let grafici_tangente_cotangente = [
#align(center)[
  #grid(columns: 2, column-gutter: 3.5em, row-gutter: 1.5em, align: center + bottom)[#grafico_tangente_cotangente1][#grafico_tangente_cotangente2]
]]

#let grafico_tangente_cotangente3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (1.2 * 1.6 * calc.pi, 1.2 * 2.6),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: none,      
        x-min: -1.6 * calc.pi, x-max: 1.6 * calc.pi,
        y-min: -2.6, y-max: 2.6,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          // Funzione tangente
          plot.add(
            domain: (-1/2 * calc.pi, 1/2 * calc.pi),
            style: (stroke: 0.75pt + accent.mat.lighten(10%)),
            x => calc.tan(x),
            samples: 200
          )

          plot.add(
            domain: (-1/2 * calc.pi, -3/2 * calc.pi),
            style: (stroke: 0.75pt + accent.mat.lighten(10%)),
            x => calc.tan(x),
            samples: 200
          )  

          plot.add(
            domain: (1/2 * calc.pi, 3/2 * calc.pi),
            style: (stroke: 0.75pt + accent.mat.lighten(10%)),
            x => calc.tan(x),
            samples: 200
          ) 

          // Annotazioni
          plot.annotate({

          line((calc.pi/2, -2.6), (calc.pi/2, 2.6), stroke: (paint: accent.mat.lighten(10%), thickness: 0.75pt, dash: "dotted"))

          line((-calc.pi/2, -2.6), (-calc.pi/2, 2.6), stroke: (paint: accent.mat.lighten(10%), thickness: 0.75pt, dash: "dotted"))

          })        
          
        }
      )
    }),
    caption: [],
  ) <grafico_tangente_cotangente3>
]

#let grafico_tangente_cotangente4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      let formatter(v) = if v != 0 {$ #{v/calc.pi} pi $} else {$ 0 $}

      plot.plot(
        size: (1.2 * 1.6 * calc.pi, 1.2 * 2.6),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: none,      
        x-min: -1.6 * calc.pi, x-max: 1.6 * calc.pi,
        y-min: -2.6, y-max: 2.6,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          // Funzione tangente
          plot.add(
            domain: (-2 * calc.pi, 2 * calc.pi),
            style: (stroke: 0.75pt + accent.mat.lighten(10%)),
            x => 1/calc.tan(x),
            samples: 200
          )

          // Annotazioni
          plot.annotate({

          line((calc.pi, -2.6), (calc.pi, 2.6), stroke: (paint: accent.mat.lighten(10%), thickness: 0.75pt, dash: "dotted"))

          line((-calc.pi, -2.6), (-calc.pi, 2.6), stroke: (paint: accent.mat.lighten(10%), thickness: 0.75pt, dash: "dotted"))

          })

        }
      )
    }),
    caption: [],
  ) <grafico_tangente_cotangente4>
]

#let grafici_tangente_cotangente2 = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_tangente_cotangente3][#grafico_tangente_cotangente4]
]]

#let grafico_secante_cosecante1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (1.2 * 1.6 * calc.pi, 1.2 * 2.6),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: none,      
        x-min: -1.6 * calc.pi, x-max: 1.6 * calc.pi,
        y-min: -2.6, y-max: 2.6,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          // Funzione secante
          plot.add(
            domain: (-1/2 * calc.pi, 1/2 * calc.pi),
            style: (stroke: 0.75pt + accent.mat.lighten(10%)),
            x => 1/calc.cos(x),
            samples: 200
          )
          // Funzione secante
          plot.add(
            domain: (-1/2 * calc.pi, -3/2 * calc.pi),
            style: (stroke: 0.75pt + accent.mat.lighten(10%)),
            x => 1/calc.cos(x),
            samples: 200
          )
          plot.add(
            domain: (1/2 * calc.pi, 3/2 * calc.pi),
            style: (stroke: 0.75pt + accent.mat.lighten(10%)),
            x => 1/calc.cos(x),
            samples: 200
          )

          // Annotazioni
          plot.annotate({

          line((calc.pi/2, -2.6), (calc.pi/2, 2.6), stroke: (paint: accent.mat.lighten(10%), thickness: 0.75pt, dash: "dotted"))

          line((-calc.pi/2, -2.6), (-calc.pi/2, 2.6), stroke: (paint: accent.mat.lighten(10%), thickness: 0.75pt, dash: "dotted"))

          })        
          
        }
      )
    }),
    caption: [],
  ) <grafico_secante_cosecante1>
]

#let grafico_secante_cosecante2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      let formatter(v) = if v != 0 {$ #{v/calc.pi} pi $} else {$ 0 $}

      plot.plot(
        size: (1.2 * 1.6 * calc.pi, 1.2 * 2.6),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: none,      
        x-min: -1.6 * calc.pi, x-max: 1.6 * calc.pi,
        y-min: -2.6, y-max: 2.6,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          // Funzione cosecante
          plot.add(
            domain: (-2 * calc.pi, 2 * calc.pi),
            style: (stroke: 0.75pt + accent.mat.lighten(10%)),
            x => 1/calc.sin(x),
            samples: 200
          )

          // Annotazioni
          plot.annotate({

          line((calc.pi, -2.6), (calc.pi, 2.6), stroke: (paint: accent.mat.lighten(10%), thickness: 0.75pt, dash: "dotted"))

          line((-calc.pi, -2.6), (-calc.pi, 2.6), stroke: (paint: accent.mat.lighten(10%), thickness: 0.75pt, dash: "dotted"))

          })

        }
      )
    }),
    caption: [],
  ) <grafico_secante_cosecante2>
]

#let grafici_secante_cosecante = [
#align(center)[
  #grid(columns: 2, column-gutter: 0.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_secante_cosecante1][#grafico_secante_cosecante2]
]]

#let grafico_secante_cosecante3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.75))
      
      plot.plot(
        size: (1.8 * 3.4, 1.8 * 2.4),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 2.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let ang_deg = 60deg
          let ang_rad = ang_deg / 1rad
          let r_arco = 0.3

          let xP = calc.cos(ang_rad)
          let yP = calc.sin(ang_rad)

          // Secante (S) sull'asse x e Cosecante (C) sull'asse y
          let xS = 1 / xP
          let yC = 1 / yP

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )

          plot.add(
            domain: (-2.5, 2.5),
            style: (stroke: 1pt + accent.mat),
            x => (1 - x * xP) / yP
          )

          // Annotazioni, punti e settore dell'angolo
          plot.annotate({
            // Settore circolare pieno
            arc(
              (0, 0),
              start: 0deg,
              stop: ang_deg,
              radius: r_arco,
              mode: "PIE",
              anchor: "origin",
              fill: accent.mat.transparentize(90%),
              stroke: 0pt + accent.mat.transparentize(90%)
            )

            // Raggio OP
            line((0, 0), (xP, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))

       

            // Punto P
            circle((xP, yP), radius: 1pt, fill: accent.mat, stroke: none)
            content((xP, yP), [$P$], anchor: ("south-west"), padding: 0.2pt)

            // Punto Secante S
            circle((xS, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((xS, 0), [$M$], anchor: ("south"), padding: 2pt)

            // Punto Cosecante C
            circle((0, yC), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, yC), [$N$], anchor: ("east"), padding: 0.5pt)

            // Etichetta angolo
            let ang_mezzo = ang_rad / 2
            content(
              ((r_arco + 0.15) * calc.cos(ang_mezzo), (r_arco + 0.15) * calc.sin(ang_mezzo)),
              [$x$]
            )
          })
        }
      )
    }),
    caption: [],
  ) <grafico_secante_cosecante3>
]

#let tabella_formule_parametriche = [
#show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
  stroke: 0.5pt + accent.mat.lighten(90%),	
  inset: 1em,	
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
  columns: (auto,) * 10, 
  [$t$], [-10], [-5], [-2], [-1], [0], [1], [2], [5], [10],
  [$x$], [-0.980], [-0.923], [0.600], [0], [1], [0], [-0.600], [0.923], [-0.980],
  [$y$], [-0.918], [-0.385], [-0.800], [-1], [0], [1], [0.800], [0.385], [0.198]
  )
) <tabella_formule_parametriche>
]

#let grafico_circonferenza_parametrica = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.75))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          
          
          plot.annotate({ 
            for t in (-10, -5, -2, -1, 0, 1, 2, 5, 10) {
              let xT = (1 - calc.pow(t, 2)) / (1 + calc.pow(t, 2))
              let yT = (2 * t) / (1 + calc.pow(t, 2))
              
              let anc = if t == 0 { "south" } else { "east" }
              let pad = if t == 0 { 0pt } else { -3pt }

              circle((xT, yT), radius: 1pt, fill: accent.mat, stroke: none)
              content((xT, yT), [$t = #t$], anchor: anc, padding: pad)
            }
          })
        }
      )
    }),
    caption: [],
  ) <grafico_circonferenza_parametrica>
]

#let grafico_sin_pi_10 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let xP = calc.cos(calc.pi/10)
          let yP = calc.sin(calc.pi/10)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 0.3
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
              circle((xP, yP), radius: 1pt, fill: accent.mat, stroke: none)
              content((xP, yP), [$P$], anchor: "south-west", padding: 0.1pt)
              circle((xP, -yP), radius: 1pt, fill: accent.mat, stroke: none)
              content((xP, -yP), [$Q$], anchor: "north-west", padding: 0.1pt)
          
          arc(
              (0, 0),
              start: 0deg,
              stop: ang_deg,
              radius: r_arco,
              mode: "PIE",
              anchor: "origin",
              fill: accent.mat.transparentize(90%),
              stroke: 0pt + accent.mat.transparentize(90%)
            )

              line((0, 0), (xP, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))
              line((xP, -yP), (xP, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))

              let ang_mezzo = ang_rad / 2
            content(
              ((r_arco + 0.25) * calc.cos(ang_mezzo), (r_arco + 0.25) * calc.sin(ang_mezzo)),
              [$alpha$]
            )
            })          
        }
      )
    }),
    caption: [],
  ) <grafico_sin_pi_10>
]

#let tabella_notevoli_trigonometria = [
  #show table.cell.where(x: 0): set text(weight: "regular", fill: black, font: serif-fonts)
  #show table.cell.where(y: 0): set text(weight: "bold", fill: white, font: sans-fonts)
  #figure(
  caption: [],  
  table(
      columns: 6,
      stroke: 0.5pt + accent.mat.lighten(90%),
      align: center + horizon,
      fill: (x, y) => {
        if y == 0 { accent.mat }
        else if calc.even(y) { accent.mat.lighten(90%) }
        else { white }
      },
      // Testo bianco solo per la prima riga, nero per il resto
      table.header(
        ..([Gradi], [Radianti], [Seno], [Coseno], [Tangente], [Cotangente])
          .map(it => text(fill: white, weight: "bold", it))
      ),
      [$script(0°)$], [$script(0)$], [$script(0)$], [$script(1)$], [$script(0)$], [#text(size: 7pt)[non definita]],
      [$script(15°)$], [$pi/12$], [$(sqrt(6) - sqrt(2))/4$], [$(sqrt(6) + sqrt(2))/4$], [$script(2 - sqrt(3))$], [$script(2 + sqrt(3))$],
      [$script(18°)$], [$pi/10$], [$(sqrt(5) - 1)/4$], [$sqrt(10 + 2 sqrt(5))/4$], [$sqrt(5 - 2 sqrt(5))/5$], [$script(sqrt(5 + 2 sqrt(5)))$],
      [$script(22° 30')$], [$pi/8$], [$sqrt(2 - sqrt(2))/2$], [$sqrt(2 + sqrt(2))/2$], [$script(sqrt(2) - 1)$], [$script(sqrt(2) + 1)$],
      [$script(30°)$], [$pi/6$], [$1/2$], [$sqrt(3)/2$], [$sqrt(3)/3$], [$script(sqrt(3))$],
      [$script(36°)$], [$pi/5$], [$sqrt(10 - 2 sqrt(5))/4$], [$(sqrt(5) + 1)/4$], [$script(sqrt(5 - 2 sqrt(5)))$], [$sqrt(5 + 2 sqrt(5))/5$],
      [$script(45°)$], [$pi/4$], [$sqrt(2)/2$], [$sqrt(2)/2$], [$script(1)$], [$script(1)$],
      [$script(54°)$], [$(3pi)/10$], [$(sqrt(5) + 1)/4$], [$sqrt(10 - 2 sqrt(5))/4$], [$sqrt(5 + 2 sqrt(5))/5$], [$script(sqrt(5 - 2 sqrt(5)))$],
      [$script(60)$], [$pi/3$], [$sqrt(3)/2$], [$1/2$], [$script(sqrt(3))$], [$sqrt(3)/3$],
      [$script(67° 30')$], [$(3pi)/8$], [$sqrt(2 + sqrt(2))/2$], [$sqrt(2 - sqrt(2))/2$], [$script(sqrt(2) + 1)$], [$script(sqrt(2) - 1)$],
      [$script(72°)$], [$(2pi)/5$], [$sqrt(10 + 2 sqrt(5))/4$], [$(sqrt(5) - 1)/4$], [$script(sqrt(5 + 2 sqrt(5)))$], [$sqrt(5 - 2 sqrt(5))/5$],
      [$script(75°)$], [$(5pi)/12$], [$(sqrt(6) + sqrt(2))/4$], [$(sqrt(6) - sqrt(2))/4$], [$script(2 + sqrt(3))$], [$script(2 - sqrt(3))$],
      [$script(90°)$], [$pi/2$], [$script(1)$], [$script(0)$], [#text(size: 7pt)[#text(size: 7pt)[non definita]]], [$script(0)$],
      [$script(180°)$], [$script(pi)$], [$script(0)$], [$script(-1)$], [$script(0)$], [#text(size: 7pt)[non definita]],
      [$script(270°)$], [$(3pi)/2$], [$script(-1)$], [$script(0)$], [#text(size: 7pt)[non definita]], [$script(0)$],
      [$script(360°)$], [$script(2pi)$], [$script(0)$], [$script(1)$], [$script(0)$], [#text(size: 7pt)[non definita]]
)  
) <tabella_notevoli_trigonometria>
]

#let grafico_restrizione1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: -calc.pi/2, x-max: calc.pi/2,
        y-min: -1.2 - 0.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {
          
          plot.add(
            domain: (-2, 2),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: 1pt + accent.mat),
            x => calc.sin(x)
          )       
          
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione1>
]

#let grafico_restrizione2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: calc.pi/2,      
        x-min: -1, x-max: 1,
        y-min: -calc.pi/2, y-max: calc.pi/2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        y-format: plot.formats.multiple-of,        
        { 

          plot.add(
            domain: (-2, 2),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat),
            x => calc.asin(x) / 1rad
          )      
          
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione2>
]

#let grafico_restrizione3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-ticks: (
          (-calc.pi/2, [$-pi/2$]),
          (-1, [$-1$]),
          (1, [$1$]),
          (calc.pi/2, [$pi/2$]),
        ), 
        y-ticks: (
          (-calc.pi/2, [$-pi/2$]),
          (-1, [$-1$]),
          (1, [$1$]),
          (calc.pi/2, [$pi/2$]),
        ), 
        x-tick-step: none,
        y-tick-step: none,
        x-min: -calc.pi/2 - 0.2, x-max: calc.pi/2 + 0.2,
        y-min: -calc.pi/2 - 0.2, y-max: calc.pi/2 + 0.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: (5.5, 1.25),
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: "north-east",
        { 
          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: 1pt + accent.mat),
            x => calc.sin(x),
            label: [$sin x$] 
          )

          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => calc.asin(x) / 1rad,
            label: [$arcsin x$] 
          )      
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione3>
]

#let grafici_restrizione = [
#align(center)[
  #grid(columns: 2, column-gutter: 5em, row-gutter: 0.5em, align: center + bottom)[#grafico_restrizione1][#grafico_restrizione2]
]]

#let grafico_seno_arcseno1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let x = calc.pi/6
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
              circle((xP, yP), radius: 0.5pt, fill: accent.mat, stroke: none)              
              circle((0, yP), radius:  0.5pt, fill: accent.mat, stroke: none)              
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((0, 0), (0, yP), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((xP, yP), (0, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))

            let ang_mezzo = ang_rad / 2
            content(
              ((r_arco + 0.15) * calc.cos(ang_mezzo), 0.25), [$x$]
            )
            content(
              (-0.25, 0.25), [$sin x$]
            )
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_seno_arcseno1>
]

#let grafico_seno_arcseno2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let x = calc.pi/6
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
              circle((xP, yP), radius: 0.5pt, fill: accent.mat, stroke: none)              
              circle((0, yP), radius:  0.5pt, fill: accent.mat, stroke: none)              
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((0, 0), (0, yP), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((xP, yP), (0, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (start: ">>", scale: 0.25, fill: accent.mat))

            let ang_mezzo = ang_rad / 2
            content(
              (1.4, 0.25), [$arcsin x$]
            )
            content(
              (-0.15, 0.25), [$x$]
            )
            
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_seno_arcseno2>
]

#let grafici_seno_arcseno1 = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_seno_arcseno1][#grafico_seno_arcseno2]
]]

#let grafico_seno_arcseno3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,        
        {
          let x = calc.pi/6
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
              circle((xP, yP), radius: 0.5pt, fill: accent.mat, stroke: none)              
              circle((0, yP), radius:  0.5pt, fill: accent.mat, stroke: none)              
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((0, 0), (0, yP), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((xP, yP), (0, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (start: ">>", end: ">>", scale: 0.25, fill: accent.mat))

            let ang_mezzo = ang_rad / 2
            content(
              (1.0, 0.25),/*  angle: 30deg, */ [$script(x = arcsin(sin x))$]
            )
            content(
              (-0.25, 0.25), [$sin x$]
            )
            content(
              (xP, yP), [$P$], anchor: "south-west", padding: -0.25pt, label-angle: 45deg,
            )

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_seno_arcseno3>
]

#let grafico_seno_arcseno4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let x = calc.pi/6
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let ang_deg2 = calc.atan2(-xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (-calc.pi, calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
              circle((xP, yP), radius: 0.5pt, fill: accent.mat, stroke: none)              
              circle((0, yP), radius:  0.5pt, fill: accent.mat, stroke: none)              
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            arc(
                (0, 0),
                start: ang_deg,
                stop: ang_deg2,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),                 
                stroke: 0.75pt + accent.mat
            )

            line((0, 0), (0, yP), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((xP, yP), (0, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (start: ">>", scale: 0.25, fill: accent.mat.lighten(30%)))
            line((-xP, yP), (0, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat.lighten(30%)))

            let ang_mezzo = ang_rad / 2
            content(
              (1, 0.25), /* angle: 30deg, */ [$script(arcsin(sin x) = x - pi)$]
            )
            content(
              (-0.25, 0.25), [$sin x$]
            )
            
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_seno_arcseno4>
]

#let grafici_seno_arcseno2 = [
#align(center)[
  #grid(columns: 2, column-gutter: -0em, row-gutter: 0.5em, align: center + bottom)[#grafico_seno_arcseno3][#grafico_seno_arcseno4]
]]

#let grafico_arcseno = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (3 * calc.pi, 1 * calc.pi),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: calc.pi/2,      
        x-min: -2 * calc.pi, x-max: 2 * calc.pi,
        y-min: -calc.pi/2, y-max: calc.pi/2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        y-format: plot.formats.multiple-of,
        {
          
          // Circonferenza
          plot.add(
            domain: (-2 * calc.pi, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => calc.asin(calc.sin(t)) / 1rad,
            samples: 250
          )          

          
        }
      )
    }),
    caption: [],
  ) <grafico_arcseno>
]

//
#let grafico_restrizione4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (3, 4),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: 0, x-max: calc.pi,
        y-min: -1.2 - 0.2, y-max: 3.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {
          
          plot.add(
            domain: (0, 3),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (0, calc.pi),
            style: (stroke: 1pt + accent.mat),
            x => calc.cos(x)
          )       
          
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione4>
]

#let grafico_restrizione5 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: calc.pi/2,      
        x-min: -1, x-max: 1,
        y-min: 0, y-max: calc.pi,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        y-format: plot.formats.multiple-of,        
        { 

          plot.add(
            domain: (-2, 2),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat),
            x => calc.acos(x) / 1rad
          )      
          
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione5>
]

#let grafico_restrizione6 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-ticks: (          
          (-1, [$-1$]),
          (1, [$1$]),
          (calc.pi/2, [$pi/2$]),
          (calc.pi, [$pi$]),
        ), 
        y-ticks: (
          (-1, [$-1$]),
          (1, [$1$]),
          (calc.pi/2, [$pi/2$]),
          (calc.pi, [$pi$]),
        ), 
        x-tick-step: none,
        y-tick-step: none,
        x-min: -1, x-max: calc.pi,
        y-min: -1, y-max: calc.pi,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: (5, 3),
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: "north-east",
        { 
          plot.add(
            domain: (-1, 1),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (0, calc.pi),
            style: (stroke: 1pt + accent.mat),
            x => calc.cos(x),
            label: [$cos x$] 
          )

          plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => calc.acos(x) / 1rad,
            label: [$arccos x$] 
          )      
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione6>
]

#let grafici_restrizione2 = [
#align(center)[
  #grid(columns: 2, column-gutter: 5em, row-gutter: 0.5em, align: center + bottom)[#grafico_restrizione4][#grafico_restrizione5]
]]

//
#let grafico_coseno_arccoseno1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let x = calc.pi/4
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
                         
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((0, 0), (xP, 0), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((xP, yP), (xP, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))

            let ang_mezzo = ang_rad / 2
            content(
              ((r_arco + 0.2) * calc.cos(ang_mezzo), 0.4), [$x$]
            )
            content(
              (0.3, -0.15), [$cos x$]
            )
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_coseno_arccoseno1>
]

#let grafico_coseno_arccoseno2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let x = calc.pi/4
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (0, calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
                          
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((0, 0), (xP, 0), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((xP, 0), (xP, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))

            let ang_mezzo = ang_rad / 2
            content(
              ((r_arco + 0.5) * calc.cos(ang_mezzo), 0.4), [$arcsin x$]
            )
            content(
              (0.3, -0.15), [$x$]
            )
            
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_coseno_arccoseno2>
]

#let grafici_coseno_arccoseno1 = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_coseno_arccoseno1][#grafico_coseno_arccoseno2]
]]

//
#let grafico_coseno_arccoseno3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,        
        {
          let x = calc.pi/4
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
                           
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((0, 0), (xP, 0), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((xP, yP), (xP, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (start: ">>", end: ">>", scale: 0.25, fill: accent.mat))

            content(
              (1.0, 0.3),/*  angle: 30deg, */ [$script(x = arccos(cos x))$]
            )
            content(
              (0.3, -0.15), [$cos x$]
            )
            content(
              (xP, yP), [$P$], anchor: "south-west", padding: -0.25pt, label-angle: 45deg,
            )

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_coseno_arccoseno3>
]

#let grafico_coseno_arccoseno4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let x = 3 * calc.pi/4
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let ang_deg2 = calc.atan2(xP, -yP) + 360deg //altrimenti fail il giro in senso orario
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (-calc.pi, calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
              circle((xP, yP), radius: 0.5pt, fill: accent.mat, stroke: none)              
              circle((-xP, 0), radius:  0.5pt, fill: accent.mat, stroke: none)              
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),                
                stroke: 0.75pt + accent.mat
            )

            arc(
                (0, 0),
                start: ang_deg,
                stop: ang_deg2,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),                 
                stroke: 0.75pt + accent.mat,                
            )
            
            line((0, 0), (xP, 0), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((xP, yP), (xP, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (start: ">>", scale: 0.25, fill: accent.mat.lighten(30%)))
            line((xP, -yP), (xP, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat.lighten(30%)))
            
            content(
              (-1.45, 0.45), /* angle: 30deg, */ [$script(arccos(cos x))$]
            )
            content(
              (-0.3, 0.15), [$cos x$]
            )
            content(
              (xP, yP), [$P$], anchor: "south-east", padding: -0.25pt
            )
            
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_coseno_arccoseno4>
]

#let grafici_coseno_arccoseno2 = [
#align(center)[
  #grid(columns: 2, column-gutter: -3.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_coseno_arccoseno3][#grafico_coseno_arccoseno4]
]]

#let grafico_arccoseno = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (3 * calc.pi, 1 * calc.pi),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: calc.pi/2,      
        x-min: -3 * calc.pi/2, x-max: 3 * calc.pi/2,
        y-min: 0, y-max: calc.pi,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        y-format: plot.formats.multiple-of,
        {
          
          // Circonferenza
          plot.add(
            domain: (-3 * calc.pi, 3 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => calc.acos(calc.cos(t)) / 1rad,
            samples: 250
          )          

          
        }
      )
    }),
    caption: [],
  ) <grafico_arccoseno>
]

//
#let grafico_restrizione7 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: -calc.pi/2 - 0.5, x-max: calc.pi/2 + 0.5,
        y-min: -2.5, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {
          
          plot.add(
            domain: (-2, 2),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: 1pt + accent.mat),
            x => calc.tan(x)
          ) 

          plot.annotate({         
            line((-calc.pi/2, -2.5), (-calc.pi/2, 2.5), stroke: (paint: accent.mat, dash: "dotted"))
            line((calc.pi/2, -2.5), (calc.pi/2, 2.5), stroke: (paint: accent.mat, dash: "dotted"))

            })        
          
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione7>
]

#let grafico_restrizione8 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6, calc.pi + 0.5),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: calc.pi/2,      
        x-min: -3, x-max: 3,
        y-min: -calc.pi/2, y-max: calc.pi/2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        y-format: plot.formats.multiple-of,        
        { 

          plot.add(
            domain: (-2, 2),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-3, 3),
            style: (stroke: 1pt + accent.mat),
            x => calc.atan(x) / 1rad
          )  

          plot.annotate({         
            line((-3.5, -calc.pi/2), (3.5, -calc.pi/2), stroke: (paint: accent.mat, dash: "dotted"))
            line((-3.5, calc.pi/2), (3.5, calc.pi/2), stroke: (paint: accent.mat, dash: "dotted"))

            })     
          
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione8>
]

#let grafico_restrizione9 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4 * calc.pi, calc.pi),
        axis-style: "school-book",        
        x-tick-step: calc.pi/2,
        y-tick-step: calc.pi/2,
        x-min: -3 * calc.pi, x-max: 3 * calc.pi,
        y-min: -calc.pi/2, y-max: calc.pi/2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        y-format: plot.formats.multiple-of,
        legend: (2.5, 3.3),
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.0, preview: (width: 0.5))),
        legend-anchor: "north-east",
        { 
          /* plot.add(
            domain: (-3, 3),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          )  */

          plot.add(
            domain: (-3 * calc.pi, 3 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            x => calc.tan(x),
            label: [$script(tan x)$],
            samples: 200
          )

          plot.add(
            domain: (-3 * calc.pi, 3 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => calc.atan(x) / 1rad,
            label: [$script(arctan x)$], 
            samples: 250
          )  

          plot.annotate({ 
            line((4.1, 1.3), (4.1, 0), stroke: (paint: accent.mat, dash: "dotted")) //? valori fittizi
            line((-4.1, -1.3), (-4.1, 0), stroke: (paint: accent.mat, dash: "dotted")) //? valori fittizi

            line((7.25, 1.4), (7.25, 0), stroke: (paint: accent.mat, dash: "dotted")) //? valori fittizi
            line((-7.25, -1.4), (-7.25, 0), stroke: (paint: accent.mat, dash: "dotted")) //? valori fittizi
            

            })      
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione9>
]

#let grafici_restrizione3 = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_restrizione7][#grafico_restrizione8]
]]

//
#let grafico_tangente_arctangente1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,        
        {
          let x = calc.pi/4
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )                    

          plot.annotate({          
                           
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((1, -1.2), (1, 1.2), stroke: (paint: accent.mat, dash: "dotted"))
            line((1, 0), (1, calc.tan(x)), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((0, 0), (1, calc.tan(x)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))

            content(
              (0.8, 0.35),/*  angle: 30deg, */ [$x$]
            )
            content(
              (1.3, 0.5), [$tan x$]
            )
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_tangente_arctangente1>
]

#let grafico_tangente_arctangente2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,        
        {
          let x = calc.pi/4
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )                    

          plot.annotate({          
                           
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((1, -1.2), (1, 1.2), stroke: (paint: accent.mat, dash: "dotted"))
            line((1, 0), (1, calc.tan(x)), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((1, calc.tan(x)), (xP, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))
            line((xP, yP), (0, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))

            content(
              (0.55, 0.35),/*  angle: 30deg, */ [$arctan x$]
            )
            content(
              (1.15, 0.5), [$x$]
            )
            

            })          
        }
      )
    }),
    caption: []
  ) <grafico_tangente_arctangente2>
]

#let grafici_tangente_arctangente = [
#align(center)[
  #grid(columns: 2, column-gutter: 2.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_tangente_arctangente1][#grafico_tangente_arctangente2]
]]

#let grafico_arctangente = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (3 * calc.pi, 1 * calc.pi),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: calc.pi/2,      
        x-min: -3 * calc.pi/2, x-max: 3 * calc.pi/2,
        y-min: -calc.pi/2, y-max: calc.pi/2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        y-format: plot.formats.multiple-of,
        {
          let domains = (
            (-3 * calc.pi/2 + 0.01, -calc.pi/2 - 0.01),
            (-calc.pi/2 + 0.01, calc.pi/2 - 0.01),
            (calc.pi/2 + 0.01, 3 * calc.pi/2 - 0.01)
          )

          for d in domains {
            plot.add(
              domain: d,
              style: (stroke: 1pt + accent.mat),
              t => calc.atan(calc.tan(t * 1rad)) / 1rad,
              samples: 200
            )
          }
        }
      )
    }),
    caption: []
  ) <grafico_arctangente>
]

#let grafico_restrizione10 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: 0, x-max: calc.pi,
        y-min: -3, y-max: 3,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {
          
          plot.add(
            domain: (-2, 3),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (0.01, calc.pi),
            style: (stroke: 1pt + accent.mat),
            x => 1 / calc.tan(x)
          ) 

          plot.annotate({       
            line((calc.pi, -3), (calc.pi, 3), stroke: (paint: accent.mat, dash: "dotted"))

            })        
          
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione10>
]

#let grafico_restrizione11 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6, calc.pi + 0.5),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: calc.pi/2,      
        x-min: -3, x-max: 3,
        y-min: -calc.pi/2, y-max: calc.pi,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        y-format: plot.formats.multiple-of,        
        { 

          plot.add(
            domain: (-3, 3.5),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-3, 3),
            style: (stroke: 1pt + accent.mat),
            x => calc.pi/2 - (calc.atan(x) / 1rad)
          )  

          plot.annotate({         
            line((-3.5, calc.pi), (3.5, calc.pi), stroke: (paint: accent.mat, dash: "dotted"))

            })     
          
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione11>
]

#let grafico_restrizione12 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4 * calc.pi, calc.pi),
        axis-style: "school-book",        
        x-tick-step: calc.pi/2,
        y-tick-step: calc.pi/2,
        x-min: -3 * calc.pi, x-max: 3 * calc.pi,
        y-min: -calc.pi/2, y-max: calc.pi,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        y-format: plot.formats.multiple-of,
        legend: (2.3, 3.0),
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.0, preview: (width: 0.5))),
        legend-anchor: "north-east",
        { 
          /* plot.add(
            domain: (-3, 3),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          )  */

          plot.add(
            domain: (-3 * calc.pi, 3 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            x => 1/calc.tan(x),
            label: [$script("cot" x)$],
            samples: 200
          )

          plot.add(
            domain: (-3 * calc.pi, 3 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => calc.pi/2 - (calc.atan(x) / 1rad),
            label: [$script("arccot" x)$], 
            samples: 250
          )  

          plot.annotate({ 
  line((-9.1, 2.9), (-9.1, 0), stroke: (paint: accent.mat, dash: "dotted"))
  line((-5.95, 2.8), (-5.95, 0), stroke: (paint: accent.mat, dash: "dotted"))

  line((-2.8, 2.9), (-2.8, 0), stroke: (paint: accent.mat, dash: "dotted"))
  line((0.860, 0.860), (0.860, 0), stroke: (paint: accent.mat, dash: "dotted"))
  
  line((4.5, 0.2), (4.5, 0), stroke: (paint: accent.mat, dash: "dotted"))
  line((7.7, 0.155), (7.7, 0), stroke: (paint: accent.mat, dash: "dotted"))
})     
        }
      )
    }),
    caption: [],
  ) <grafico_restrizione12>
]

#let grafici_restrizione4 = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_restrizione10][#grafico_restrizione11]
]]

//
#let grafico_cotangente_arccotangente1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,        
        {
          let x = calc.pi/4
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )                    

          plot.annotate({          
                           
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((-1.2, 1), (1.2, 1), stroke: (paint: accent.mat, dash: "dotted"))
            line((0, 1), (1, calc.tan(x)), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((0, 0), (1, calc.tan(x)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))

            content(
              (1.1, 0.35),/*  angle: 30deg, */ [$x$]
            )
            content(
              (0.5, 1.2), [$cot x$]
            )
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_cotangente_arccotangente1>
]

#let grafico_cotangente_arccotangente2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,        
        {
          let x = calc.pi/4
          
          let xP = calc.cos(x)
          let yP = calc.sin(x)

          let ang_rad = calc.atan2(xP, yP) / 1rad
          let ang_deg = calc.atan2(xP, yP)
          let r_arco = 1
          
          // Circonferenza
          plot.add(
            domain: (0, calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )                    

          plot.annotate({          
                           
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_deg,
                radius: r_arco,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            line((-1.2, 1), (1.2, 1), stroke: (paint: accent.mat, dash: "dotted"))
            line((0, 1), (1, calc.tan(x)), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((1, calc.tan(x)), (xP, yP), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))
            line((xP, yP), (0, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))

            content(
              (0.5, 1.2),/*  angle: 30deg, */ [$x$]
            )
            content(
              (1.1, 0.35), [$"arccot" x$]
            )
            

            })          
        }
      )
    }),
    caption: []
  ) <grafico_cotangente_arccotangente2>
]

#let grafici_cotangente_arccotangente = [
#align(center)[
  #grid(columns: 2, column-gutter: 2.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_cotangente_arccotangente1][#grafico_cotangente_arccotangente2]
]]

#let grafico_arccotangente = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (3 * calc.pi, 1 * calc.pi),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: calc.pi/2,      
        x-min: -3 * calc.pi/2, x-max: 3 * calc.pi/2,
        y-min: 0, y-max: calc.pi,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        y-format: plot.formats.multiple-of,
        {
          
        let domains = (
          (-3 * calc.pi + 0.01, -2 * calc.pi - 0.01),
          (-2 * calc.pi + 0.01, -1 * calc.pi - 0.01),
          (-1 * calc.pi + 0.01, -0.01),
          (0.01, 1 * calc.pi - 0.01),
          (1 * calc.pi + 0.01, 2 * calc.pi - 0.01),
          (2 * calc.pi + 0.01, 3 * calc.pi - 0.01),
        )

        for d in domains {
          plot.add(
            domain: d,
            samples: 200,
            style: (stroke: 1pt + accent.mat),
            x => (calc.pi/2 * 1rad - calc.atan(1 / calc.tan(x * 1rad))) / 1rad
          )
        }       

          
        }
      )
    }),
    caption: []
  ) <grafico_arccotangente>
]

//
#let grafico_arccotangente_alt1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: -calc.pi/2, x-max: calc.pi/2,
        y-min: -2, y-max: 2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {
          
          plot.add(
            domain: (-2, 3),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: 1pt + accent.mat),
            x => 1 / calc.tan(x)
          ) 

                 
          
        }
      )
    }),
    caption: [],
  ) <grafico_arccotangente_alt1>
]

#let grafico_arccotangente_alt2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6, calc.pi + 0.5),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: calc.pi/2,      
        x-min: -3, x-max: 3,
        y-min: -calc.pi/2, y-max: calc.pi/2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        y-format: plot.formats.multiple-of,        
        { 

          plot.add(
            domain: (-3, 3.5),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => x
          ) 

          plot.add(
            domain: (-3, 3),
            style: (stroke: 1pt + accent.mat),
            x => (calc.pi/2 * 1rad - calc.atan(x)) / 1rad
          ) 

          plot.add(
            domain: (-3, 3),
            style: (stroke: 1pt + accent.mat),
            x => (-calc.pi/2 * 1rad - calc.atan(x)) / 1rad
          )  

               
          
        }
      )
    }),
    caption: [],
  ) <grafico_arccotangente_alt2>
]

#let grafici_arccotangente_alt = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_arccotangente_alt1][#grafico_arccotangente_alt2]
]]

#let grafico_arcseno_arccoseno1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let x = calc.pi/5
          let y = calc.pi/2.8
          
          let xD = calc.cos(x)
          let yD = calc.sin(x)
          let xE = calc.cos(y)
          let yE = calc.sin(y)


          let ang_radD = calc.atan2(xD, yD) / 1rad
          let ang_degD = calc.atan2(xD, yD)
          let r_arcoD = 1

          let ang_radE = calc.atan2(xE, yE) / 1rad
          let ang_degE = calc.atan2(xE, yE)
          let r_arcoE = 1.01
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
                         
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_degD,
                radius: r_arcoD,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            arc(
                (0, 0),
                start: 0deg,
                stop: ang_degE,
                radius: r_arcoE,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat.lighten(50%)),
                stroke: 0.75pt + accent.mat.lighten(50%)
            )

            line((0, 0), (xE, 0), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((0, 0), (0, yD), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))

            line((xD, 0), (xD, yD), stroke: (paint: accent.mat, dash: "dotted"))

            line((xE, 0), (xE, yE), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat)) 
            line((0, yD), (xD, yD), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))

            line((0, 0), (xD, yD), stroke: (paint: accent.mat, thickness: 0.5pt, dash: "dotted"))
            line((0, 0), (xE, yE), stroke: (paint: accent.mat, thickness: 0.5pt, dash: "dotted"))

            content(
              (-0.1, yD/2), [$x$]
            )
            content(
              (xE/2, -0.1), [$x$]
            )
            content(
              (1, 0), anchor: "south-west", [$A$]
            )
            content(
              (xE, 0), anchor: "north", [$B$]
            )
            content(
              (xD, 0), anchor: "north", [$F$]
            )
            content(
              (xE, yE), anchor: "south-west", [$E$]
            )
            content(
              (xD, yD), anchor: "south-west", [$D$]
            )
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_arcseno_arccoseno1>
]

#let grafico_arcseno_arccoseno2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
plot.plot(
        size: (2 * 2.4, 2 * 2.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          let x = -calc.pi/3
          let y = calc.pi/1.3
          
          let xD = calc.cos(x)
          let yD = calc.sin(x)
          let xE = calc.cos(y)
          let yE = calc.sin(y)


          let ang_radD = calc.atan2(xD, yD) / 1rad
          let ang_degD = calc.atan2(xD, yD)
          let r_arcoD = 1

          let ang_radE = calc.atan2(xE, yE) / 1rad
          let ang_degE = calc.atan2(xE, yE)
          let r_arcoE = 1.01
          
          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )          

          plot.annotate({          
                         
          
            arc(
                (0, 0),
                start: 0deg,
                stop: ang_degD,
                radius: r_arcoD,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat),
                stroke: 0.75pt + accent.mat
            )

            arc(
                (0, 0),
                start: 0deg,
                stop: ang_degE,
                radius: r_arcoE,              
                anchor: "origin",
                mark: (end: ">>", scale: 0.5, fill: accent.mat.lighten(50%)),
                stroke: 0.75pt + accent.mat.lighten(50%)
            )

            line((0, 0), (xE, 0), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))
            line((0, 0), (0, yD), stroke: (paint: accent.mat), mark: (end: ">>", scale: 0.5, fill: accent.mat))

            line((xD, 0), (xD, yD), stroke: (paint: accent.mat, dash: "dotted"))

            line((xE, 0), (xE, yE), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat)) 
            line((0, yD), (xD, yD), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), mark: (end: ">>", scale: 0.25, fill: accent.mat))

            line((0, 0), (xD, yD), stroke: (paint: accent.mat, thickness: 0.5pt, dash: "dotted"))
            line((0, 0), (xE, yE), stroke: (paint: accent.mat, thickness: 0.5pt, dash: "dotted"))

            content(
              (0.1, yD/2), [$x$]
            )
            content(
              (xE/2, 0.1), [$x$]
            )
            content(
              (1, 0), anchor: "south-west", [$A$]
            )
            content(
              (xE, 0), anchor: "north", [$B$]
            )
            content(
              (xD, 0), anchor: "south", [$F$]
            )
            content(
              (xE, yE), anchor: "south-east", [$E$]
            )
            content(
              (xD, yD), anchor: "north-west", [$D$]
            )
            

            })          
        }
      )
    }),
    caption: [],
  ) <grafico_arcseno_arccoseno2>
]

#let grafici_arcseno_arccoseno = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_arcseno_arccoseno1][#grafico_arcseno_arccoseno2]
]]

//=============

#let grafico_triangolo_nomenclatura1 = [
#figure(
  ctz-canvas(length: 0.8cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (0, 0),
    B: (5.5, 1),
    C: (1.5, 3.5)
  )
  
  
  ctz-draw-angle("A", "B", "C", stroke: (paint: accent.mat.lighten(90%)), fill: accent.mat.lighten(90%), label: $alpha$)
  ctz-draw-angle("B", "A", "C", stroke: (paint: accent.mat.lighten(90%)), fill: accent.mat.lighten(90%), label: $beta$)
  ctz-draw-angle("C", "B", "A", stroke: (paint: accent.mat.lighten(90%)), fill: accent.mat.lighten(90%), label: $gamma$)

  ctz-draw-segment("A", "B", stroke: accent.mat, dim: $c$, dim-pos: "below")
  ctz-draw-segment("B", "C", stroke: accent.mat, dim: $a$, dim-pos: "below")
  ctz-draw-segment("A", "C", stroke: accent.mat, dim: $b$, dim-pos: "above")

  
  
  ctz-draw(
    points: ("A", "B", "C",), 
    labels: (
      A: "below left", 
      B: "below right", 
      C: "above", 
    )
  )

  }),
caption: []
) <grafico_triangolo_nomenclatura1>
]

#let grafico_triangolo_nomenclatura2 = [
#figure(
  ctz-canvas(length: 1cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (3.2, 2.4),
    B: (0, 0),
    C: (5, 0),
  )
  
  
  ctz-draw-angle("A", "B", "C", stroke: (paint: white), label: $alpha$) //* nascondi angolo, mostra etichetta
  ctz-draw-mark-right-angle("B", "A", "C", size: 0.4, color: accent.mat.lighten(50%))
  ctz-draw-angle("B", "A", "C", stroke: (paint: accent.mat.lighten(50%)), label: $beta$)
  ctz-draw-angle("C", "B", "A", stroke: (paint: accent.mat.lighten(50%)), label: $gamma$)
  ctz-draw-angle("C", "B", "A", radius: 0.5, stroke: (paint: accent.mat.lighten(50%)))

  ctz-draw-segment("A", "B", stroke: accent.mat, dim: $c$, dim-pos: "below")
  ctz-draw-segment("B", "C", stroke: accent.mat, dim: $a$, dim-pos: "below")
  ctz-draw-segment("A", "C", stroke: accent.mat, dim: $b$, dim-pos: "above")  
  
  ctz-draw(
    points: ("A", "B", "C",), 
    labels: (
      A: "above", 
      B: "below left", 
      C: "below right", 
    )
  )

  }),
caption: []
) <grafico_triangolo_nomenclatura2>
]

#let grafici_triangolo_nomenclatura = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_triangolo_nomenclatura1][#grafico_triangolo_nomenclatura2]
]]

//
#let grafico_corda_angoli_circonferenza1 = [
#figure(
  ctz-canvas(length: 0.65cm, clip-canvas: (-4, -4, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 250)
  ctz-def-rotation("B", "R", "O", -20)
  ctz-def-rotation("C", "R", "O", 140)
  ctz-def-rotation("D", "R", "O", 50)

  ctz-draw-angle("O", "A", "B", radius: 1.0, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%), label: $2 alpha$)
  ctz-draw-angle("C", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%), label: $alpha$)
  ctz-draw-angle("D", "A", "B", radius: 1.2, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%), label: $alpha$)

  ctz-draw(segment: ("A", "B"), stroke: accent.mat)
  ctz-draw(segment: ("A", "O"), stroke: accent.mat.lighten(30%))
  ctz-draw(segment: ("B", "O"), stroke: accent.mat.lighten(30%))
  ctz-draw(segment: ("A", "C"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "C"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("A", "D"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "D"), stroke: accent.mat.lighten(60%))

  
  ctz-draw(points: ("O", "A", "B", "C", "D"), labels: (
  O: "above",
  A: "below left",
  B: "right",
  C: (text: $P$, pos: "above left"),
  D: (text: $P'$, pos: "above right")
  ))

}),
caption: []
) <grafico_corda_angoli_circonferenza1>
]

#let grafico_corda_angoli_circonferenza2 = [
#figure(
  ctz-canvas(length: 0.65cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), V:(1, 1), W:(2, 2))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 185)
  ctz-def-rotation("B", "R", "O", -25)
  ctz-def-rotation("C", "R", "O", 250)




  ctz-draw-angle("O", "A", "B", radius: 1.0, fill: accent.mat.lighten(50%), stroke: accent.mat.lighten(50%), direction: "cw")
  ctz-draw-angle("C", "A", "B", radius: 1.0, fill: accent.mat.lighten(75%), stroke: accent.mat.lighten(75%), label: $beta$)


  ctz-draw(segment: ("A", "O"), stroke: accent.mat.lighten(30%))
  ctz-draw(segment: ("B", "O"), stroke: accent.mat.lighten(30%))


  ctz-draw(segment: ("A", "C"), stroke: accent.mat.lighten(60%))
  ctz-draw(segment: ("B", "C"), stroke: accent.mat.lighten(60%))



  ctz-draw(segment: ("A", "B"), stroke: accent.mat)


  ctz-draw(points: ("O", "A", "B", "C",), labels: (
  O: "below",
  C: (text: $Q$, pos: "below")
  ))
  content(
    (0.6, 1.4), anchor: "north-west", [$2 beta$]
  ) //* impossibile in altri modi, funzione ctz-draw-angle buggata per gli angoli concavi

}),
caption: []
) <grafico_corda_angoli_circonferenza2>
]

#let grafici_corda_angoli_circonferenza = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_corda_angoli_circonferenza1][#grafico_corda_angoli_circonferenza2]
]]

//!
#let grafico_risoluzione_triangoli1 = [
#figure(
  ctz-canvas(length: 1cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (0, 0),
    B: (4.5, 2.4),
    C: (4.5, 0),
  )
  
  
  ctz-draw-mark-right-angle("A", "C", "B", size: 0.4, color: accent.mat.lighten(50%))
  ctz-draw-angle("A", "B", "C", stroke: (paint: accent.mat.lighten(50%)), label: $alpha$)
  ctz-draw-angle("A", "B", "C", radius: 0.5, stroke: (paint: accent.mat.lighten(50%)))

  ctz-draw-segment("A", "B", stroke: accent.mat, dim: $c$, dim-pos: "above")
  ctz-draw-segment("B", "C", stroke: accent.mat, dim: $quad a equiv h$, dim-pos: "above")
  ctz-draw-segment("A", "C", stroke: accent.mat, dim: $b$, dim-pos: "below")  
  
  ctz-draw(
    points: ("A", "B", "C",), 
    labels: (
      A: "below left", 
      B: "above", 
      C: (text: $C equiv H$, pos: "below")
    )
  )

  }),
caption: []
) <grafico_risoluzione_triangoli1>
]

#let grafico_risoluzione_triangoli2 = [
#figure(
  ctz-canvas(length: 1cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (0, 0),
    B: (1.2, 2.4),
    C: (5.5, 0),
  )

  ctz-def-perp("Hb1", "Hb2", ("A", "C"), "B") 
  ctz-def-ll("H", ("Hb1", "Hb2"), ("A", "C")) 
  
  ctz-draw-angle("A", "B", "C", stroke: (paint: accent.mat.lighten(50%)), label: $alpha$)
  ctz-draw-angle("A", "B", "C", radius: 0.5, stroke: (paint: accent.mat.lighten(50%)))

  ctz-draw-segment("A", "B", stroke: accent.mat, dim: $c$, dim-pos: "above")
  ctz-draw-segment("B", "C", stroke: accent.mat, dim: $a$, dim-pos: "above")
  ctz-draw-segment("A", "C", stroke: accent.mat, dim: $b$, dim-pos: "below")
  ctz-draw-segment("B", "H", stroke: (paint: accent.mat, dash: "dotted"), dim: $h$, dim-pos: "above")   
  
  ctz-draw(
    points: ("A", "B", "C", "H"), 
    labels: (
      A: "below left", 
      B: "above", 
      C: "below",
      H: "below"
    )
  )

  }),
caption: []
) <grafico_risoluzione_triangoli2>
]

#let grafico_risoluzione_triangoli3 = [
#figure(
  ctz-canvas(length: 1cm, {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(
    A: (0, 0),
    B: (3.8, 2.4),
    C: (5.5, 0),
  )

  ctz-def-perp("Hb1", "Hb2", ("A", "C"), "B") 
  ctz-def-ll("H", ("Hb1", "Hb2"), ("A", "C")) 
  ctz-def-reflect("C2", "C", "Hb1", "Hb2")
  
  ctz-draw-angle("A", "B", "C", stroke: (paint: accent.mat.lighten(50%)), label: $alpha$)
  ctz-draw-angle("A", "B", "C", radius: 0.5, stroke: (paint: accent.mat.lighten(50%)))

  ctz-draw-segment("A", "B", stroke: accent.mat, dim: $c$, dim-pos: "above")
  ctz-draw-segment("B", "C", stroke: accent.mat, dim: $a$, dim-pos: "above")
  ctz-draw-segment("A", "C", stroke: accent.mat, dim: $b$, dim-pos: "below")
  ctz-draw-segment("B", "H", stroke: (paint: accent.mat, dash: "dotted"), dim: $h$, dim-pos: "above")
  ctz-draw-segment("B", "C2", stroke: (paint: accent.mat.lighten(50%)), dim: $a$, dim-pos: "above")    
  
  ctz-draw(
    points: ("A", "B", "C", "C2", "H"), 
    labels: (
      A: "below left", 
      B: "above", 
      C: (pos: "below", text: $C'$),
      H: "below",
      C2: (pos: "below", text: $C''$)
    )
  )

  }),
caption: []
) <grafico_risoluzione_triangoli3>
]

#let grafici_risoluzione_triangoli = [
#align(center)[
  #grid(columns: 2, column-gutter: 1.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_risoluzione_triangoli1][#grafico_risoluzione_triangoli2]
]]

#let grafico_teorema_quadrilatero_convesso = [
#figure(
  ctz-canvas(length: 0.75cm, clip-canvas: (-4, -3.5, 4, 4), {
  import cetz.draw: *
  ctz-init()
  
  ctz-style(point: (shape: "dot", size: 0.08, fill: accent.mat))
  
  ctz-def-points(O: (0, 0), R: (3, 0), V:(1, 1), W:(2, 2))
  
  ctz-draw(circle-r: (_pt("O"), 3), stroke: accent.mat.lighten(75%))

  ctz-def-rotation("A", "R", "O", 5)
  ctz-def-rotation("B", "R", "O", 65)
  ctz-def-rotation("C", "R", "O", 150)
  ctz-def-rotation("D", "R", "O", 280)

  ctz-def-polygon("Poly", "A", "B", "C", "D")
  ctz-def-ll("F", ("A", "C"), ("B", "D"))

  ctz-draw("Poly", stroke: accent.mat)
  ctz-draw(segment: ("A", "C"), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), dim: $d_1$)
  ctz-draw(segment: ("B", "D"), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), dim: $d_2$)
  ctz-draw-angle("F", "B", "C", stroke: accent.mat.lighten(75%), fill: accent.mat.lighten(75%), label: $alpha$)


  ctz-draw(points: ("A", "B", "C", "D", "F"), labels: (
    A: "right",
    B: "above",
    C: "left",
    D: "below",
    F: "right"
  ))
  
}),
caption: []
) <grafico_teorema_quadrilatero_convesso>
]

//============

#let grafico_1x_sinx = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (10, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: 0, x-max: 15,
        y-min: -calc.pi/2, y-max: calc.pi/2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {
          plot.add(
            domain: (0.001, 15),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            x => 1/x + calc.sin(x),
            samples: 200
          )
          
        }
      )
    }),
    caption: []
  ) <grafico_1x_sinx>
]

#let grafico_disequazione_goniometrica1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (3.6 * 2, 2 * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.8, x-max: 1.8,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )

          plot.add-fill-between(
            domain: (-2, 2),
            style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
            x => 1/2,
            x => 3           
          )

          plot.annotate({
            circle((calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/6), calc.sin(calc.pi/6)), [$alpha = pi/6$], anchor: ("west"), padding: -2.5pt)
            circle((-calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/6), calc.sin(calc.pi/6)), [$beta = (5 pi)/6$], anchor: ("east"), padding: -3.5pt)
            circle((0, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, 0.5), [$1/2$], anchor: ("north-west"), padding: -1pt)

            arc(
                (0, 0),
                start: 30deg,
                stop: 150deg,
                radius: 1,              
                anchor: "origin",                
                stroke: 0.75pt + accent.mat
            )
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica1>
]

#let grafico_disequazione_goniometrica2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (calc.pi * 3, 2),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: 1,      
        x-min: 0, x-max: 3 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          plot.add(
            domain: (0, 3 * calc.pi),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(35%)),),
            x => calc.sin(x),    
            samples: 200              
          )

          plot.add-fill-between(
            domain: (0, 3 * calc.pi),
            style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
            x => 1/2,
            x => 3           
          )

          plot.annotate({
            circle((calc.pi/6, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            line((calc.pi/6, 0.5), (calc.pi/6, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((calc.pi/6, 0), [$alpha$], anchor: ("north"), padding: 1.5pt)

            circle((5 * calc.pi/6, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            line((5 * calc.pi/6, 0.5), (5 * calc.pi/6, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((5 * calc.pi/6, 0), [$beta$], anchor: ("north"), padding: 1.5pt)

            circle((calc.pi/6 + 2 * calc.pi, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            line((calc.pi/6 + 2 * calc.pi, 0.5), (calc.pi/6 + 2 * calc.pi, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((calc.pi/6 + 2 * calc.pi, 0), [$gamma$], anchor: ("north"), padding: 1.5pt)

            circle((5 * calc.pi/6 + 2 * calc.pi, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            line((5 * calc.pi/6 + 2 * calc.pi, 0.5), (5 * calc.pi/6 + 2 * calc.pi, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((5 * calc.pi/6 + 2 * calc.pi, 0), [$delta$], anchor: ("north"), padding: 1.5pt)
            
            line((calc.pi/6, 0), (5 * calc.pi/6, 0), stroke: (paint: accent.mat))
            line((calc.pi/6 + 2 * calc.pi, 0), (5 * calc.pi/6 + 2 * calc.pi, 0), stroke: (paint: accent.mat))

            
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica2>
]

#let grafico_disequazione_goniometrica3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (3.6 * 2, 2 * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.8, x-max: 1.8,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )

          plot.add-fill-between(
            domain: (-2, 2),
            style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
            x => 1/2,
            x => 3           
          )

          plot.annotate({
            circle((calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/6), calc.sin(calc.pi/6)), [$alpha = pi/6$], anchor: ("west"), padding: -2.5pt)
            circle((-calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            content((-calc.cos(calc.pi/6), calc.sin(calc.pi/6)), [$beta = (5 pi)/6$], anchor: ("east"), padding: -3.5pt)
            circle((0, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, 0.5), [$1/2$], anchor: ("north-west"), padding: -1pt)

            arc(
                (0, 0),
                start: 30deg,
                stop: 150deg,
                radius: 1,              
                anchor: "origin",                
                stroke: 0.75pt + accent.mat
            )
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica3>
]

#let grafico_disequazione_goniometrica4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (calc.pi * 3, 2),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: 1,      
        x-min: 0, x-max: 3 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          plot.add(
            domain: (0, 3 * calc.pi),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(35%)),),
            x => calc.sin(x),    
            samples: 200              
          )

          plot.add-fill-between(
            domain: (0, 3 * calc.pi),
            style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
            x => 1/2,
            x => 3           
          )

          plot.annotate({
            circle((calc.pi/6, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            line((calc.pi/6, 0.5), (calc.pi/6, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((calc.pi/6, 0), [$alpha$], anchor: ("north"), padding: 1.5pt)

            circle((5 * calc.pi/6, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            line((5 * calc.pi/6, 0.5), (5 * calc.pi/6, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((5 * calc.pi/6, 0), [$beta$], anchor: ("north"), padding: 1.5pt)

            circle((calc.pi/6 + 2 * calc.pi, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            line((calc.pi/6 + 2 * calc.pi, 0.5), (calc.pi/6 + 2 * calc.pi, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((calc.pi/6 + 2 * calc.pi, 0), [$gamma$], anchor: ("north"), padding: 1.5pt)

            circle((5 * calc.pi/6 + 2 * calc.pi, 0.5), radius: 1pt, fill: accent.mat, stroke: none)
            line((5 * calc.pi/6 + 2 * calc.pi, 0.5), (5 * calc.pi/6 + 2 * calc.pi, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((5 * calc.pi/6 + 2 * calc.pi, 0), [$delta$], anchor: ("north"), padding: 1.5pt)
            
            line((calc.pi/6, 0), (5 * calc.pi/6, 0), stroke: (paint: accent.mat))
            line((calc.pi/6 + 2 * calc.pi, 0), (5 * calc.pi/6 + 2 * calc.pi, 0), stroke: (paint: accent.mat))

            
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica4>
]

#let grafico_disequazione_goniometrica3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (2.4 * 2, 2.4 * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )

          plot.add-fill-between(
            domain: (1/3, -3),
            style: (stroke: 0pt, fill: accent.mat.transparentize(85%)),
            x => -2, 
            x => 2  
          )

          plot.annotate({
            circle((calc.cos(calc.acos(1/3)), calc.sin(calc.acos(1/3))), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.acos(1/3)), calc.sin(calc.acos(1/3))), [$alpha$], anchor: ("south-west"), padding: -.5pt)
            circle((calc.cos(calc.acos(1/3)), -calc.sin(calc.acos(1/3))), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.acos(1/3)), -calc.sin(calc.acos(1/3))), [$beta$], anchor: ("north-west"), padding: -0.5pt)
            
            arc(
                (0, 0),
                start: calc.acos(1/3),
                stop: 2 * calc.pi * 1rad - calc.acos(1/3), //! arc accetto solo gradi sessagesimali
                radius: 1,              
                anchor: "origin",                
                stroke: 0.75pt + accent.mat
            )
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica3>
]

#let grafico_disequazione_goniometrica4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (calc.pi * 4, 2.5),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: 1,      
        x-min: 0, x-max: 4 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          plot.add(
            domain: (0, 4 * calc.pi),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(35%)),),
            x => calc.cos(x),    
            samples: 200              
          )

          plot.add-fill-between(
            domain: (0, 4 * calc.pi),
            style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
            x => 1/3,
            x => 3           
          )

          plot.annotate({
            circle((calc.acos(1/3).rad(), 1/3), radius: 1pt, fill: accent.mat, stroke: none)
            line((calc.acos(1/3).rad(), 1/3), (calc.acos(1/3).rad(), 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((calc.acos(1/3).rad(), 0), [$alpha$], anchor: ("north"), padding: 1.5pt)

            circle((2 * calc.pi - calc.acos(1/3).rad(), 1/3), radius: 1pt, fill: accent.mat, stroke: none)
            line((2 * calc.pi - calc.acos(1/3).rad(), 1/3), (2 * calc.pi - calc.acos(1/3).rad(), 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((2 * calc.pi - calc.acos(1/3).rad(), 0), [$beta$], anchor: ("north"), padding: 1.5pt)

            circle((2 * calc.pi + calc.acos(1/3).rad(), 1/3), radius: 1pt, fill: accent.mat, stroke: none)
            line((2 * calc.pi + calc.acos(1/3).rad(), 1/3), (2 * calc.pi + calc.acos(1/3).rad(), 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((2 * calc.pi + calc.acos(1/3).rad(), 0), [$gamma$], anchor: ("north"), padding: 1.5pt)

            circle((2 * calc.pi + 2 * calc.pi - calc.acos(1/3).rad(), 1/3), radius: 1pt, fill: accent.mat, stroke: none)
            line((2 * calc.pi + 2 * calc.pi - calc.acos(1/3).rad(), 1/3), (2 * calc.pi + 2 * calc.pi - calc.acos(1/3).rad(), 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((2 * calc.pi + 2 * calc.pi - calc.acos(1/3).rad(), 0), [$delta$], anchor: ("north"), padding: 1.5pt)
            
            line((calc.acos(1/3).rad(), 0), (2 * calc.pi - calc.acos(1/3).rad(), 0), stroke: (paint: accent.mat))
            line((2 * calc.pi + calc.acos(1/3).rad(), 0), (2 * calc.pi + 2 * calc.pi - calc.acos(1/3).rad(), 0), stroke: (paint: accent.mat))

            
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica4>
]

#let grafico_disequazione_goniometrica5 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (2.4 * 2, 3.4 * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -1.2, y-max: 2.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {

          // Circonferenza
          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )

          plot.add(
            domain: (-calc.pi/2, calc.pi/2),
            style: (stroke: 1pt + accent.mat),
            x => calc.sqrt(3) * x
          )

          plot.add-fill-between(
            domain: (0, calc.sqrt(3)),
            style: (stroke: 0pt, fill: accent.mat.transparentize(85%)),
            x => 200 * x, 
            x => x * calc.sqrt(3), 
          )

          plot.annotate({
            content((0.2, 1), [$alpha$], anchor: "south-west", padding: -.5pt)

            circle((1, calc.tan(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((1, calc.tan(calc.pi/3)), [$T$], anchor: "west", padding: -.5pt)

            line((0, 0), (1, calc.tan(calc.pi/3)), stroke: (paint: accent.mat))

            
            arc(
                (0, 0),
                start: calc.pi/3 * 1rad,
                stop: calc.pi/2 * 1rad, //! arc accetto solo gradi sessagesimali
                radius: 1,              
                anchor: "origin",                
                stroke: 0.75pt + accent.mat
            )
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica5>
]

#let grafico_disequazione_goniometrica6 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (calc.pi * 3 + 0.5, 3.5),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: 1,      
        x-min: -0.5, x-max: 3 * calc.pi,
        y-min: -1, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          let eps = 0.02
          for (a, b) in (
            (-1, calc.pi/2 - eps),
            (calc.pi/2 + eps, 3 * calc.pi/2 - eps),
            (3 * calc.pi/2 + eps, 5 * calc.pi/2 - eps),
            (5 * calc.pi/2 + eps, 3 * calc.pi)
          ) {
            plot.add(
              domain: (a, b),
              style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(35%))),
              x => calc.tan(x),
              samples: 100,
            )
          }

          plot.add-vline(calc.pi/2, style: (stroke: (dash: "dashed", thickness: 0.8pt, paint: accent.mat)))
          plot.add-vline(3*calc.pi/2, style: (stroke: (dash: "dashed", thickness: 0.8pt, paint: accent.mat)))
          plot.add-vline(5*calc.pi/2, style: (stroke: (dash: "dashed", thickness: 0.8pt, paint: accent.mat)))

          plot.add-fill-between(
            domain: (0, 3 * calc.pi),
            style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
            x => calc.sqrt(3),
            x => 2.5           
          )

          plot.annotate({
            circle((calc.pi/3, calc.sqrt(3)), radius: 1pt, fill: accent.mat, stroke: none)
            line((calc.pi/3, calc.sqrt(3)), (calc.pi/3, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((calc.pi/3, 0), [$alpha$], anchor: ("north"), padding: 1.5pt)

            circle((calc.pi + calc.pi/3, calc.sqrt(3)), radius: 1pt, fill: accent.mat, stroke: none)
            line((calc.pi + calc.pi/3, calc.sqrt(3)), (calc.pi + calc.pi/3, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((calc.pi + calc.pi/3, 0), [$beta$], anchor: ("north"), padding: 1.5pt)

            circle((2 * calc.pi + calc.pi/3, calc.sqrt(3)), radius: 1pt, fill: accent.mat, stroke: none)
            line((2 * calc.pi + calc.pi/3, calc.sqrt(3)), (2 * calc.pi + calc.pi/3, 0), stroke: (paint: accent.mat, dash: "dotted"))
            content((2 * calc.pi + calc.pi/3, 0), [$gamma$], anchor: ("north"), padding: 1.5pt)
            
            line((calc.pi/3, 0), (calc.pi/2, 0), stroke: (paint: accent.mat))
            line((calc.pi/3 + calc.pi, 0), (calc.pi/2 + calc.pi, 0), stroke: (paint: accent.mat))
            line((calc.pi/3 + 2 * calc.pi, 0), (calc.pi/2 + 2 * calc.pi, 0), stroke: (paint: accent.mat))

            
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica6>
]

#let grafico_disequazione_goniometrica7 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (7 * 1.8, 2.4 * 2.3),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -3, x-max: 4,
        y-min: -1.2, y-max: 1.9,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {

          // Circonferenza
          plot.add(
            domain: (0, calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )

          plot.add(
            domain: (-3, 4),
            style: (stroke: 1pt + accent.mat),
            x => -1/2 * x
          )
          plot.add(
            domain: (-3, 4),
            style: (stroke: 1pt + accent.mat),
            x => 1
          )

          plot.add-fill-between(
            domain: (-3, 0),            
            style: (stroke: 0pt, fill: accent.mat.transparentize(85%)),
            x => -1/2 * x, 
            x => 3,
          )

          plot.add-fill-between(
            domain: (0, 4),            
            style: (stroke: 0pt, fill: accent.mat.transparentize(85%)),
            x => 0, 
            x => 3,
          )

          plot.annotate({
            content((0.8, 0.6), [$alpha$], anchor: "south-west", padding: -.5pt)

            circle((-2, 1), radius: 1pt, fill: accent.mat, stroke: none)
            content((-2, 1), [$C$], anchor: "south", padding: 1pt)
            
            arc(
              (0, 0),
              start: 0deg,
              stop: (calc.pi / 2 * 1rad - calc.atan(-2)),
              radius: 1,
              anchor: "origin",
              stroke: 0.75pt + accent.mat,
            )
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica7>
]

#let grafico_disequazione_goniometrica8 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (calc.pi * 3.1 + 0.5, 5.5),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: 1,      
        x-min: -0.5, x-max: 3.1 * calc.pi,
        y-min: -3, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          
            // cot(x) = cos(x)/sin(x)
      for k in range(0, 3) {
        plot.add(
          domain: (
            k * calc.pi + 0.02,
            (k + 1) * calc.pi - 0.02
          ),
          style: (stroke: 1pt + accent.mat),
          x => calc.cos(x * 1rad) / calc.sin(x * 1rad),
        )
      }

      plot.add(
        domain: (0, 3.1 * calc.pi),
        style: (stroke: 1pt + accent.mat),
        x => -2,
      )


      plot.add-fill-between(
        domain: (0, 3.1 * calc.pi),
        style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
        x => -2,
        x => 2.5           
      )

      plot.add-vline(calc.pi, style: (stroke: (dash: "dashed", thickness: 0.8pt, paint: accent.mat)))
      plot.add-vline(2 * calc.pi, style: (stroke: (dash: "dashed", thickness: 0.8pt, paint: accent.mat)))
      plot.add-vline(3*calc.pi, style: (stroke: (dash: "dashed", thickness: 0.8pt, paint: accent.mat)))

      plot.annotate({
        circle((calc.pi - calc.atan(1/2) / 1rad, -2), radius: 1pt, fill: accent.mat, stroke: none)
        line((calc.pi - calc.atan(1/2) / 1rad, -2), (calc.pi - calc.atan(1/2) / 1rad, 0), stroke: (paint: accent.mat, dash: "dotted"))
        content((calc.pi - calc.atan(1/2) / 1rad, 0), [$alpha$], anchor: ("south"), padding: 1.5pt)

        circle((calc.pi + calc.pi - calc.atan(1/2) / 1rad, -2), radius: 1pt, fill: accent.mat, stroke: none)
        line((calc.pi + calc.pi - calc.atan(1/2) / 1rad, -2), (calc.pi + calc.pi - calc.atan(1/2) / 1rad, 0), stroke: (paint: accent.mat, dash: "dotted"))
        content((calc.pi + calc.pi - calc.atan(1/2) / 1rad, 0), [$beta$], anchor: ("south"), padding: 1.5pt)

        circle((2 * calc.pi + calc.pi - calc.atan(1/2) / 1rad, -2), radius: 1pt, fill: accent.mat, stroke: none)
        line((2 * calc.pi + calc.pi - calc.atan(1/2) / 1rad, -2), (2 * calc.pi + calc.pi - calc.atan(1/2) / 1rad, 0), stroke: (paint: accent.mat, dash: "dotted"))
        content((2 * calc.pi + calc.pi - calc.atan(1/2) / 1rad, 0), [$gamma$], anchor: ("south"), padding: 1.5pt)
        
        line((0, 0), (calc.pi - calc.atan(1/2) / 1rad, 0), stroke: (paint: accent.mat))
        line((calc.pi, 0), (calc.pi + calc.pi - calc.atan(1/2) / 1rad, 0), stroke: (paint: accent.mat))
        line((2 * calc.pi, 0), (calc.pi - calc.atan(1/2) / 1rad + 2 * calc.pi, 0), stroke: (paint: accent.mat))

        
      })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica8>
]

#let grafico_disequazione_goniometrica9 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4 * 2, 2.4 * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2, x-max: 2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )

          plot.add(
            domain: (-3, 4),
            style: (stroke: 1pt + accent.mat),
            x => -calc.sqrt(3) * x + calc.sqrt(3)
          )          

          plot.add-fill-between(
            domain: (1.7, -3),            
            style: (stroke: 0pt, fill: accent.mat.transparentize(85%)),
            x => -calc.sqrt(3) * x + calc.sqrt(3), 
            x => -1.2,
          )

          

          plot.annotate({
            circle((1, 0), radius: 1pt, fill: accent.mat, stroke: none)
            content((1, 0), [$A$], anchor: "south-west", padding: -.5pt)
            circle((calc.cos(calc.pi/3), calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((calc.cos(calc.pi/3), calc.sin(calc.pi/3)), [$B$], anchor: "south-west", padding: -.5pt)
            
            arc(
              (0, 0),
              start: calc.pi/3 * 1rad,
              stop: 360deg,
              radius: 1,
              anchor: "origin",
              stroke: 0.75pt + accent.mat,
            )
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica9>
]

#let grafico_disequazione_goniometrica10 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4 * 2, 2.4 * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2, x-max: 2,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )       

          plot.add-fill-between(
            domain: (-2, 2),            
            style: (stroke: (paint: accent.mat, thickness: 1pt), fill: accent.mat.transparentize(85%)),
            x => 1/2, 
            x => -1,
          )

          

          plot.annotate({
            circle((calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            circle((-calc.cos(calc.pi/6), calc.sin(calc.pi/6)), radius: 1pt, fill: accent.mat, stroke: none)
            circle((0, -1), radius: 1pt, fill: accent.mat, stroke: none)
            
          arc(
            (0, 0),
            start: 5 * calc.pi / 6 * 1rad,
            stop: (2 * calc.pi + calc.pi / 6) * 1rad,
            radius: 1,
            anchor: "origin",
            stroke: 0.75pt + accent.mat,
          )
          })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica10>
]

#let grafico_disequazione_goniometrica11 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (calc.pi * 3 * 1.2, 2.4 * 1.2),
        axis-style: "school-book",
        x-tick-step: calc.pi/2,      
        y-tick-step: 1,      
        x-min: -calc.pi, x-max: 2 * calc.pi,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        {

          
      plot.add(
            domain: (-calc.pi, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            x => calc.sin(x)
          )     


      plot.add-fill-between(
        domain: (-calc.pi, 2 * calc.pi),
        style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
        x => 1/2,
        x => -1           
      )



      plot.annotate({
        circle((calc.pi/6, 1/2), radius: 1pt, fill: accent.mat, stroke: none)
        line((calc.pi/6, 1/2), (calc.pi/6, 0), stroke: (paint: accent.mat, dash: "dotted"))

        circle((calc.pi - calc.pi/6, 1/2), radius: 1pt, fill: accent.mat, stroke: none)
        line((calc.pi - calc.pi/6, 1/2), (calc.pi - calc.pi/6, 0), stroke: (paint: accent.mat, dash: "dotted"))

        circle((-calc.pi/2, -1), radius: 1pt, fill: accent.mat, stroke: none)
        line((-calc.pi/2, -1), (-calc.pi/2, 0), stroke: (paint: accent.mat, dash: "dotted"))

        circle((2 * calc.pi - calc.pi/2, -1), radius: 1pt, fill: accent.mat, stroke: none)
        line((2 * calc.pi - calc.pi/2, -1), (2 * calc.pi - calc.pi/2, 0), stroke: (paint: accent.mat, dash: "dotted"))
                
        line((0, 0), (calc.pi/6, 0), stroke: (paint: accent.mat))
        line((calc.pi, 0), (calc.pi + calc.pi/6, 0), stroke: (paint: accent.mat))
        line((2 * calc.pi, 0), (calc.pi/6 + 2 * calc.pi, 0), stroke: (paint: accent.mat))

        
      })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica11>
]

#let grafico_disequazione_goniometrica12 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4 * 2, calc.pi * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: none,      
        x-min: -2, x-max: 2,
        y-min: -calc.pi/2, y-max: calc.pi/2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.fraction,
        {

          
      plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(70%)),
            x => calc.asin(x)/1rad,
            samples: 200
      )   

      plot.add(
            domain: (-1, calc.sqrt(3)/2),
            style: (stroke: 1pt + accent.mat),
            x => calc.asin(x)/1rad,
            samples: 200
      )  




      plot.annotate({
        line((0, calc.pi/2), (1, calc.pi/2), (1, 0), stroke: (paint: accent.mat, dash: "dotted"))
        line((0, -calc.pi/2), (-1, -calc.pi/2), (-1, 0), stroke: (paint: accent.mat, dash: "dotted"))

        circle((calc.sqrt(3)/2, calc.pi/3), radius: 1pt, fill: white, stroke: accent.mat)
        line((0, calc.pi/3), (calc.sqrt(3)/2, calc.pi/3), (calc.sqrt(3)/2, 0), mark: (end: ")>", scale: 0.3, fill: accent.mat), stroke: (paint: accent.mat, dash: "dotted"))

        content((0, calc.pi/2), [$pi/2$], anchor: "east", padding: -.5pt)
        content((0, -calc.pi/2), [$-pi/2$], anchor: "west", padding: -.5pt)

        content((0, calc.pi/3), [$pi/3$], anchor: "east", padding: -.5pt)
        content((calc.sqrt(3)/2-0.05, 0), [$sqrt(3)/2$], anchor: "north", padding: 1.0pt)

        circle((-1, -calc.pi/2), radius: 1pt, fill: accent.mat, stroke: none)
        line((-1, 0), (calc.sqrt(3)/2, 0), stroke: (paint: accent.mat))

        
      })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica12>
]

#let grafico_disequazione_goniometrica13 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4 * 2, calc.pi * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: calc.pi/2,      
        x-min: -2, x-max: 2,
        y-min: 0, y-max: calc.pi,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        y-format: plot.formats.multiple-of,
        {

          
      plot.add(
            domain: (-1, 1),
            style: (stroke: 1pt + accent.mat.lighten(70%)),
            x => calc.acos(x)/1rad,
            samples: 200
      )   

      plot.add(
            domain: (-1, calc.cos(3/4)),
            style: (stroke: 1pt + accent.mat),
            x => calc.acos(x)/1rad,
            samples: 200
      )  




      plot.annotate({
        line((0, calc.pi), (-1, calc.pi), (-1, 0), stroke: (paint: accent.mat, dash: "dotted"))

        circle((calc.cos(3/4), 3/4), radius: 1pt, fill: white, stroke: accent.mat)
        line((0, 3/4), (calc.cos(3/4), 3/4), (calc.cos(3/4), 0), mark: (end: ")>", scale: 0.3, fill: accent.mat), stroke: (paint: accent.mat, dash: "dotted"))


        content((0, 3/4), [$3/4$], anchor: "east", padding: -.5pt)
        content((calc.cos(3/4)-0.15, 0), [$cos(3/4)$], anchor: "north", padding: 1.0pt)

        circle((-1, calc.pi), radius: 1pt, fill: accent.mat, stroke: none)
        line((-1, 0), (calc.cos(3/4), 0), stroke: (paint: accent.mat))

        
      })
          
        }
      )
    }),
    caption: []
  ) <grafico_disequazione_goniometrica13>
]