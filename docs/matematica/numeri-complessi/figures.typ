#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot


#let grafico_somma_complessi = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -4, x-max: 4,
        y-min: -1, y-max: 4,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          
          let A = (2, 1)
          let B = (-1, 3)
          let C = (-3, 2)

          plot.add(
            domain: (-2, 4),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => -2/3 * x + 7/3,
            samples: 2
          ) 

          plot.add(
            domain: (-4, 1),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => 0.5 * x + 3.5,
            samples: 2
          )

          plot.annotate({
            
                       
            circle(A, radius: 0.5pt, fill: accent.mat, stroke: accent.mat)
            circle(B, radius: 0.5pt, fill: accent.mat, stroke: accent.mat)
            circle(C, radius: 0.5pt, fill: accent.mat, stroke: accent.mat)

            content(A, [$(2, 1)$], anchor: "west", padding: 2pt)
            content(B, [$(-1, 3)$], anchor: "east", padding: 2pt)
            content(C, [$(-3, 2)$], anchor: "east", padding: 2pt)
            

            line((0, 0), (A), stroke: accent.mat.lighten(50%), mark: (end: ">>", fill: accent.mat, scale: 0.75))
            line((0, 0), (B), stroke: accent.mat, mark: (end: ">>", fill: accent.mat, scale: 0.75))
            line((0, 0), (C), stroke: accent.mat.lighten(50%), mark: (end: ">>", fill: accent.mat, scale: 0.75))

            

            

          })        

          
        }
      )
    }),
    caption: [],
  ) <grafico_somma_complessi>
]

#let grafico_prodotto_complessi = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (10, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -6.5, x-max: 3.5,
        y-min: -1, y-max: 3,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          
          let A = (2, 1)
          let B = (-2, 2)
          let C = (-6, 2)

          //! funzione vuota ma necessaria, altrimenti plot non funziona
          plot.add(
            domain: (0, 0),            
            x => 0,
           
          ) 

          

          plot.annotate({
            
                       
            circle(A, radius: 0.5pt, fill: accent.mat, stroke: accent.mat)
            circle(B, radius: 0.5pt, fill: accent.mat, stroke: accent.mat)
            circle(C, radius: 0.5pt, fill: accent.mat, stroke: accent.mat)

            content(A, [$z$], anchor: "south-west", padding: 2pt)
            content(B, [$w$], anchor: "south-east", padding: 2pt)
            content(C, [$z w$], anchor: "south-east", padding: 2pt)
            

            line((0, 0), (A), stroke: accent.mat.lighten(50%), mark: (end: ">>", fill: accent.mat, scale: 0.75))
            line((0, 0), (B), stroke: accent.mat.lighten(50%), mark: (end: ">>", fill: accent.mat.lighten(50%), scale: 0.75))
            line((0, 0), (C), stroke: accent.mat, mark: (end: ">>", fill: accent.mat, scale: 0.75))

            arc(
            (0, 0),
            start: 0deg,
            stop: 27deg,
            radius: 0.9,
            anchor: "origin",
            mode: "PIE",
            stroke: 0pt + accent.mat.transparentize(90%),
            fill: accent.mat.transparentize(90%)
            )
            arc(
            (0, 0),
            start: 0deg,
            stop: 135deg,
            radius: 1.4,
            anchor: "origin",
            mode: "PIE",
            stroke: 0pt + accent.mat.transparentize(90%),
            fill: accent.mat.transparentize(90%)
            )
            arc(
            (0, 0),
            start: 0deg,
            stop: 161deg,
            radius: 1.9,
            anchor: "origin",
            mode: "PIE",
            stroke: 0pt + accent.mat.transparentize(90%),
            fill: accent.mat.transparentize(90%)
            )

            content((0.9, 0.25), [$theta.alt$], anchor: "west", padding: 2pt)
            content((0.65, 1.35), [$phi$], anchor: "west", padding: 2pt)
            content((0.35, 2), [$theta.alt + phi$], anchor: "west", padding: 2pt)

            

          })        

          
        }
      )
    }),
    caption: [],
  ) <grafico_prodotto_complessi>
]

#let grafico_radici_nesime1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: (thickness: 0.8pt)))
      
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

          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          let points = range(4).map(k => (
            calc.cos(k * 2 * calc.pi / 3),
            calc.sin(k * 2 * calc.pi / 3)
          ))

          plot.add(
            points,
            style: (stroke: 1pt + accent.mat)
          )

          plot.annotate({
            content((1, 0), [$1$], anchor: "south-west", padding: 2pt)
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_radici_nesime1>
]

#let grafico_radici_nesime2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: (thickness: 0.8pt)))
      
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

          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          let points = range(5).map(k => (
            calc.cos(k * 2 * calc.pi / 4),
            calc.sin(k * 2 * calc.pi / 4)
          ))

          plot.add(
            points,
            style: (stroke: 1pt + accent.mat)
          )

          plot.annotate({
            content((1, 0), [$1$], anchor: "south-west", padding: 2pt)
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_radici_nesime2>
]

#let grafico_radici_nesime3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: (thickness: 0.8pt)))
      
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

          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          let points = range(8).map(k => (
            calc.cos(k * 2 * calc.pi / 7),
            calc.sin(k * 2 * calc.pi / 7)
          ))

          plot.add(
            points,
            style: (stroke: 1pt + accent.mat)
          )

          plot.annotate({
            content((1, 0), [$1$], anchor: "south-west", padding: 2pt)
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_radici_nesime3>
]

#let grafico_radici_nesime4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: (thickness: 0.8pt)))
      
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

          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => (calc.cos(x), calc.sin(x))
          )

          let points = range(10).map(k => (
            calc.cos(k * 2 * calc.pi / 9),
            calc.sin(k * 2 * calc.pi / 9)
          ))

          plot.add(
            points,
            style: (stroke: 1pt + accent.mat)
          )

          plot.annotate({
            content((1, 0), [$1$], anchor: "south-west", padding: 2pt)
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_radici_nesime4>
]

#let grafici_radici_nesime = [#align(center)[#grid(columns: 2, align: bottom + center, column-gutter: 3em, row-gutter: 2em)[#grafico_radici_nesime1][#grafico_radici_nesime2][#grafico_radici_nesime3][#grafico_radici_nesime4]]]