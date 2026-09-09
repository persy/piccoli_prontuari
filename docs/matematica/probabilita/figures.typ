#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

#let tabella_probabilita1 = [
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
  columns: (auto,) * 12, 
  [*$X$*], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12],
    [*$P$*], [$1/36$], [$2/36$], [$3/36$], [$4/36$], [$5/36$], [$6/36$], [$5/36$], [$4/36$], [$3/36$], [$2/36$], [$1/36$]
  )
) <tabella_probabilita1>
]

#let tabella_probabilita2 = [
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
    columns: (auto,) * 4, 
    [*$X$*], [0], [100], [200],
    [*$P$*], [$1/4$], [$2/4$], [$1/4$]
    )
  )
]

#let tabella_probabilita3 = [
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
    columns: (auto,) * 4, 
    [*$Y$*], [-40], [0], [40],
    [*$P$*], [$1/4$], [$2/4$], [$1/4$]
    )
  ) <tabella_probabilita3>
]

#let tabella_probabilita4 = [
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
    [*$X$*], [0], [1], [2], [3], [4],
    [*$P$*], [$15/210$], [$80/210$], [$90/210$], [$24/210$], [$1/210$]
    )
  ) <tabella_probabilita4>
]

#let grafico_probabilita1 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
    size: (8, 5),
    x-min: 0.5, x-max: 4.5,
    y-min: 0, y-max: 1,
    x-tick-step: 1, y-tick-step: 1,
    y-minor-tick-step: 0.5,
    x-label: [$X$], y-label: [$P(X)$],
    axis-style: "school-book",
    
    {
      plot.add-bar(
        ((0, 15/210), (1, 80/210), (2, 90/210), (3, 24/210), (4, 1/210)),
        bar-width: 0.5,
        bar-position: "center",
        mode: "basic",
        style: (fill: accent.mat.lighten(75%), stroke: (paint: accent.mat, thickness: 0.75pt))
      )
    }
  )
  }),
  caption: [],
) <grafico_probabilita1>
]

#let grafico_probabilita2 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
    size: (8, 5),
    x-min: 0, x-max: 7,
    y-min: 0, y-max: 1,
    x-tick-step: 1, y-tick-step: 1,
    y-minor-tick-step: 0.5,
    x-label: [$X$], y-label: [$P(X)$],
    axis-style: "school-book",
    
    {

      let f0 = 15 / 210
      let f1 = 95 / 210
      let f2 = 185 / 210
      let f3 = 209 / 210
      let f4 = 1

      //! Non rimuovere
      plot.add(
        domain: (0, 0),
        x => 0
      )

      plot.add-fill-between(
        domain: (0, 1),
        style: (fill: accent.mat.lighten(80%), stroke: none),
        x => 0, 
        x => f0 
      )
      plot.add-fill-between(
        domain: (1, 2),
        style: (fill: accent.mat.lighten(85%), stroke: none),
        x => 0, 
        x => f1 
      )
      plot.add-fill-between(
        domain: (0, 1),
        style: (fill: accent.mat.lighten(85%), stroke: none),
        x => 0, 
        x => f0 
      )
      plot.add-fill-between(
        domain: (2, 3),
        style: (fill: accent.mat.lighten(85%), stroke: none),
        x => 0, 
        x => f2 
      )
      plot.add-fill-between(
        domain: (3, 4),
        style: (fill: accent.mat.lighten(85%), stroke: none),
        x => 0, 
        x => f3 
      )
      plot.add-fill-between(
        domain: (4, 7),
        style: (fill: accent.mat.lighten(85%), stroke: none),
        x => 0, 
        x => f4 
      )

      plot.annotate({
        line((0, 0), (0, f0), stroke: (paint: accent.mat, dash: "dotted"))
        line((1, 0), (1, f1), stroke: (paint: accent.mat, dash: "dotted"))
        line((2, 0), (2, f2), stroke: (paint: accent.mat, dash: "dotted"))
        line((3, 0), (3, f3), stroke: (paint: accent.mat, dash: "dotted"))
        line((4, 0), (4, f4), stroke: (paint: accent.mat, dash: "dotted"))

        line((0, f0), (1, f0), stroke: (paint: accent.mat))
        line((1, f1), (2, f1), stroke: (paint: accent.mat))
        line((2, f2), (3, f2), stroke: (paint: accent.mat))
        line((3, f3), (4, f3), stroke: (paint: accent.mat))
        line((4, f4), (7, f4), stroke: (paint: accent.mat))


      })
    }
  )
  }),
  caption: [],
) <grafico_probabilita2>
]

#let tabella_probabilita5 = [
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
    [*$X$*], [0], [1], [2], [3], [4], [5], [6],
    [*$P$*], [$1/64$], [$6/64$], [$15/64$], [$20/64$], [$15/64$], [$6/64$], [$1/64$]
    )
  ) <tabella_probabilita5>
]

#let grafico_probabilita3 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
    size: (8, 3),
    x-min: -1.5, x-max: 5.5,
    y-min: 0, y-max: 1,
    x-tick-step: 1, y-tick-step: 1,
    y-minor-tick-step: 0.5,
    x-label: none, y-label: none,
    axis-style: "school-book",
    
    {

      let gauss(x, m, sigma) = 1 / (sigma * calc.sqrt(2 * calc.pi)) * calc.exp(-0.5 * calc.pow((x - m) / sigma, 2))
      let m = 2
      let sigma = 1

      plot.add(
        domain: (-5, 5),
        x => gauss(x, m, sigma),
        style: (stroke: accent.mat),
        samples: 200,
      )
      plot.add-fill-between(
        domain: (-1, 7),
        style: (fill: accent.mat.lighten(85%), stroke: none),
        x => 0, 
        x => gauss(x, m, sigma) 
      )
    }
  )
  }),
  caption: [],
) <grafico_probabilita3>
]