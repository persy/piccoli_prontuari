#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

#let grafico_derivate1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8.5, 5),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -0.5, x-max: 8,
        y-min: -0.5, y-max: 4.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          let xA = 1.697
          let yA = 2.424
          let xB = 5.303
          let yB = 3.326
          
          plot.add(
            domain: (-0.5, 8),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
            /* label: [$f(x) = 1/x$], */
            x => 1/4 * x + 2,
          )
          plot.add(
            domain: (1, 6.5),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => - 1/4 * x * x + 2 * x - 1/4,
          )

          plot.annotate({
            circle((xA, yA), radius: 0.75pt, stroke: accent.mat)
            circle((xB, yB), radius: 0.75pt, stroke: accent.mat)

            line((xA, 0), (xA, yA), (0, yA), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)
            line((xB, 0), (xB, yB), (0, yB), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)
            line((xB, 0), (xB, yA), (0, yA), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)

            content((xA, yA), [$A$], anchor: "south-east", padding: 3pt)
            content((xB, yB), [$B$], anchor: "south-west", padding: 3pt)
            content((xB, yA), [$K$], anchor: "west", padding: 3pt)
            content((xB, 0), [$x$], anchor: "north", padding: 3pt)
            content((xA, 0), [$x_0$], anchor: "north", padding: 3pt)
            content((0, yA), [$f(x_0)$], anchor: "east", padding: 3pt)
            content((0, yB), [$f(x)$], anchor: "east", padding: 3pt)


          })



              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate1>
]

#let grafico_derivate2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 3.5),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -1, x-max: 4,
        y-min: -1, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          let xA = 0.8
          let yA = calc.root(xA, 3)
          let xB = 3
          let yB = calc.root(xB, 3)
          
          let dx = 0.65

          plot.add(
            domain: (-4, 4),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => calc.root(x, 3),
            samples: 150
          )
          /* plot.add(
            domain: (xA - dx, xB + dx),
            x => yA + (yB - yA) / (xB - xA) * (x - xA),
          ) */
         plot.add(
            domain: (xA + dx, 0 - dx),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
            x => yA + (0 - yA) / (0 - xA) * (x - xA),
          )
          plot.add(
            domain: (0 - dx, xB + dx),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
            x => 0 + (yB - 0) / (xB - 0) * (x - 0),
          )

          plot.annotate({
            circle((xA, yA), radius: 0.75pt, stroke: accent.mat)
            circle((xB, yB), radius: 0.75pt, stroke: accent.mat)

            line((xA, 0), (xA, yA), (0, yA), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)
            line((xB, 0), (xB, yB), (0, yB), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)
            line((xB, 0), (xB, yA), (0, yA), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)


            content((xB, 0), [$x$], anchor: "north", padding: 3pt)
            content((xA, 0), [$x$], anchor: "north", padding: 3pt)



          })



              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate2>
]

#let grafico_derivate3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 2.4),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -1, x-max: 4,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          let xA = 0.8
          let yA = float.signum(xA)
          let xB = 3
          let yB = float.signum(xB)
          
          let dx = 0.65

          plot.add(
            domain: (-4, 4),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => float.signum(x),
            samples: 250
          )
          /* plot.add(
            domain: (xA - dx, xB + dx),
            x => yA + (yB - yA) / (xB - xA) * (x - xA),
          ) */
         plot.add(
            domain: (xA + dx, 0 - dx),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
            x => yA + (0 - yA) / (0 - xA) * (x - xA),
          )
          plot.add(
            domain: (0 - dx, xB + dx),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
            x => 0 + (yB - 0) / (xB - 0) * (x - 0),
          )

          plot.annotate({
            circle((xA, yA), radius: 0.75pt, stroke: accent.mat)
            circle((xB, yB), radius: 0.75pt, stroke: accent.mat)

            line((xA, 0), (xA, yA), (0, yA), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)
            line((xB, 0), (xB, yB), (0, yB), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)
            line((xB, 0), (xB, yA), (0, yA), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)


            content((xB, 0), [$x$], anchor: "north", padding: 3pt)
            content((xA, 0), [$x$], anchor: "north", padding: 3pt)



          })



              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate3>
]

#let grafico_derivate4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 8),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -1, x-max: 6,
        y-min: -1, y-max: 6,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
        let e = calc.e
        let xD = e + 2.0
        let yD = 2.0
        let xF = 2.0
        let yF = e + 2.0

       

          // Bisettrice y = x
      plot.add(domain: (-1, 7), style: (stroke: (dash: "dashed", paint: accent.mat, thickness: 0.75pt)), x => x)

      // Funzione f(x)
      plot.add(domain: (2.05, 7), style: (stroke: 0.75pt + accent.mat), label: [$f(x)$], x => calc.ln(x - 2.0) + 1.0, samples: 200)

      // Inversa g(x)
      plot.add(domain: (-1, 2.5), style: (stroke: 0.75pt + accent.mat.lighten(50%)), label: [$f^(-1)(x) = g(x)$], x => calc.exp(x - 1.0) + 2.0, samples: 200)

      // Tangente in D
      plot.add(domain: (-1, 7), style: (stroke: 0.75pt + accent.mat), x => 1/e * x + (e - 2)/e)

      // Tangente in F
      plot.add(domain: (-0.5, 3), style: (stroke: 1pt + accent.mat.lighten(50%)), x => e * x + (2 - e))

      // Proiezioni tratteggiate sui punti D ed F
      plot.add(((xD, 0), (xD, yD), (0, yD)), style: (stroke: (dash: "dotted", paint: accent.mat)))
      plot.add(((xF, 0), (xF, yF), (0, yF)), style: (stroke: (dash: "dotted", paint: accent.mat)))

      // Estensione proiezioni
      plot.add(((xD , yD), (xD + 1.5, yD)), style: (stroke: (dash: "dashed", paint: accent.mat, thickness: 0.75pt)))
      plot.add(((xF , yF), (xF + 1.5, yF)), style: (stroke: (dash: "dashed", paint: accent.mat, thickness: 0.75pt)))      

      // Marcatori punti D ed F
      plot.add(((xD, yD),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
      plot.add(((xF, yF),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat.lighten(50%), stroke: none))

      plot.annotate({
        anchor("x0", (xD, 0))
        anchor("y0", (yD, 0))
        anchor("fx0", (0, yD))
        anchor("gy0", (0, yF))
        anchor("D", (xD, yD))
        anchor("F", (xF, yF))
        content((to: "D", rel: (0.0, 0.1)), [ $D$ ], anchor: "south")
        content((to: "F", rel: (0.0, 0.1)), [ $F$ ], anchor: "south-east")
        content((to: "x0", rel: (0.0, -0.1)), [ $x_0$ ], anchor: "north")
        content((to: "y0", rel: (0.0, -0.1)), [ $y_0$ ], anchor: "north")
        content((to: "fx0", rel: (-0.0, 0.0)), [ $y_0 = f(x_0)$ ], anchor: "east")
        content((to: "gy0", rel: (-0.0, 0.0)), [ $x_0 = g(y_0)$ ], anchor: "east")

        arc((xD, yD), anchor: "origin", start: 0.9deg, stop: 19.4deg, radius: 0.75, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))
        content((to: "D", rel: (1, 0.05)), [ $alpha$ ], anchor: "south")
        arc((xF, yF), anchor: "origin", start: 0.9deg, stop: 70deg, radius: 0.75, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))
        content((to: "F", rel: (0.85, 0.35)), [ $beta$ ], anchor: "south")

      })

              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate4>
]

#let grafico_derivate5 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4.5, 7),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -0.5, x-max: 4,
        y-min: -3.5, y-max: 3.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          let P = 1
          let xP = calc.cosh(P)
          let yP = calc.sinh(P) 
          
          plot.add(
            domain: (-6, 6),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),            
            x => (calc.cosh(x), calc.sinh(x)),
            samples: 150
          )
          

          plot.annotate({
            circle((xP, yP), radius: 0.75pt, stroke: accent.mat)

            line((xP, 0), (xP, yP), (0, yP), stroke: (paint: accent.mat, dash: "dotted"), thickness: 1pt)

            content((xP, yP), [$P(cosh t, sinh t)$], anchor: "west", padding: 4pt)


          })



              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate5>
]

#let grafico_derivate6 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4.5, 7),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -2.5, x-max: 2.5,
        y-min: -3.5, y-max: 3.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-south-east",        
        legend-style: (stroke: none, fill: none, padding: 0.1, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-6, 6),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),            
            x => calc.sinh(x),
            label: [$sinh x$],
            samples: 150
          )
          plot.add(
            domain: (-6, 6),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),            
            x => calc.cosh(x),
            label: [$cosh x$],
            samples: 150
          )



              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate6>
]

#let grafici_derivate1 = [
  #align(center)[#grid(columns: 2, column-gutter: 2.5em, row-gutter: 1em)[#grafico_derivate5][#grafico_derivate6]]
]

#let grafico_derivate7 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 3),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -2.5, x-max: 2.5,
        y-min: -1.5, y-max: 1.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-south-east",        
        legend-style: (stroke: none, fill: none, padding: 0.1, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

          
          plot.add(
            domain: (-6, 6),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),            
            x => float.signum(x) - x,
            samples: 250
          )




              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate7>
]

#let grafico_derivate8 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 3),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -2.5, x-max: 2.5,
        y-min: -1.5, y-max: 1.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-south-east",        
        legend-style: (stroke: none, fill: none, padding: 0.1, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

          
          plot.add(
            domain: (-6, 6),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),            
            x => calc.abs(float.signum(x)) * (x + 1),
            samples: 250
          )




              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate8>
]

#let grafico_derivate9 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6, 4),
        axis-style: "school-book",
        x-tick-step: 0.02, 
        y-tick-step: 0.02,      
        x-min: -0.025, x-max: 0.025,
        y-min: -0.05, y-max: 0.05,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-south-east",        
        legend-style: (stroke: none, fill: none, padding: 0.1, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

          
          plot.add(
            domain: (-.1, .1),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),            
            x => 2 * x + x * calc.sin(1/x),
            samples: 450
          )




              
          
        }
      )
    }),
    caption: [],
  ) <grafico_derivate9>
]

#let grafico_derivate10 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -1, x-max: 6,
        y-min: -1, y-max: 4,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          let xA = 2.0
          let xB = 4.5
          let xC = calc.e + 0.25
          
          let f(x) = calc.ln(x - 1.5) + 1.5
          let df(x) = 1.0 / (x - 1.5)

          let yC = f(xC)
          let yA = f(xA)
          let yB = f(xB)

          let m = df(xC)
          let tgn(x) = m * (x - xC) + yC

          plot.add(domain: (xA, xB), style: (stroke: 0.75pt + accent.mat), f, samples: 200)

          plot.add(domain: (-1, 7), style: (stroke: 0.75pt + accent.mat.lighten(50%)), tgn)

          plot.add(((xA, 0), (xA, yA)), style: (stroke: (dash: "dotted", paint: accent.mat)))
          plot.add(((xB, 0), (xB, yB)), style: (stroke: (dash: "dotted", paint: accent.mat)))
          plot.add(((xC, 0), (xC, yC)), style: (stroke: (dash: "dotted", paint: accent.mat)))
          plot.add(((xA, yA), (xB, yB)), style: (stroke: (dash: "dotted", paint: accent.mat)))

          plot.add(((xA, yA),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
          plot.add(((xB, yB),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
          plot.add(((xC, yC),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))

          plot.annotate({

            anchor("A", (xA, yA))
            anchor("B", (xB, yB))
            anchor("C", (xC, yC))

            anchor("a", (xA, 0))
            anchor("b", (xB, 0))
            anchor("c", (xC, 0))

            content((to: "a", rel: (0.0, -0.1)), [ $a$ ], anchor: "north")
            content((to: "b", rel: (0.0, -0.1)), [ $b$ ], anchor: "north")
            content((to: "c", rel: (0.0, -0.1)), [ $c$ ], anchor: "north")

   





          })
        }
      )
    }),
    caption: [],
  ) <grafico_derivate10>
]

#let grafico_derivate11 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -1, x-max: 6,
        y-min: -1, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          let xA = 2.0
          let xB = 4.5
          let xC = calc.e + 0.25
          
          let f(x) = 1.5 * calc.ln(x - 1.5) + 1.5
          let df(x) = 1.5 / (x - 1.5)

          let yC = f(xC)
          let yA = f(xA)
          let yB = f(xB)

          let m = df(xC)
          let tgn(x) = m * (x - xC) + yC

          plot.add(domain: (1.6, 7), style: (stroke: 0.75pt + accent.mat), f, samples: 200)

          plot.add(domain: (-1, 7), style: (stroke: 0.75pt + accent.mat.lighten(50%)), tgn)



          
          plot.add(((xB, yB),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
          plot.add(((xB, tgn(xB)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
          plot.add(((xC, yC),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))

          plot.annotate({

            anchor("fb", (0, yB))
            anchor("fb2", (0, tgn(xB)))
            anchor("fc", (0, yC))

            anchor("a", (xA, 0))
            anchor("b", (xB, 0))
            anchor("c", (xC, 0))

            content((to: "a", rel: (0.0, -0.1)), [  ], anchor: "north")
            content((to: "b", rel: (0.0, -0.1)), [ $x$ ], anchor: "north")
            content((to: "c", rel: (0.0, -0.1)), [ $x_0$ ], anchor: "north")

            content((to: "fb", rel: (-0.15, 0.0)), [ $script(f(x))$ ], anchor: "east")
            content((to: "fb2", rel: (0.0, 0.0)), [ $script(f(x_0) + f'(x_0)(x-x_0))$ ], anchor: "east")
            content((to: "fc", rel: (-0.15, 0.0)), [ $script(f(x_0))$ ], anchor: "east")

            line(
              (xC, 0), (xC, yC), (0, yC), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, mark: (end: "stealth", fill: accent.mat, size: 0.05, stroke: none)
            )
            line(
              (xB, 0), (xB, yB), (xB, tgn(xB)), (0, tgn(xB)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, mark: (end: "stealth", fill: accent.mat, size: 0.05, stroke: none)
            )
            line(
              (xB, 0), (xB, yB), (0, yB), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, mark: (end: "stealth", fill: accent.mat, size: 0.05, stroke: none)
            )






          })
        }
      )
    }),
    caption: [],
  ) <grafico_derivate11>
]

#let grafico_derivate12 = [
  #figure(
    stack(
      spacing: 0.8em,
      cetz.canvas({
        import cetz.draw: *

        set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
        
        plot.plot(
          size: (6 * 1.5, 3 * 1.5),
          axis-style: "school-book",
          x-tick-step: 2, 
          y-tick-step: 2,      
          x-min: -3, x-max: 9,
          y-min: -3, y-max: 3,
          x-label: [],        
          y-label: [],    
          x-grid: none,   
          y-grid: none,
          legend: none,
          
          {
            let taylor3(x) = {
              range(0, 2).map(n => calc.pow(-1, n) * calc.pow(x, 2 * n + 1) / calc.fact(2 * n + 1)).sum()
            }
            let taylor17(x) = {
              range(0, 9).map(n => calc.pow(-1, n) * calc.pow(x, 2 * n + 1) / calc.fact(2 * n + 1)).sum()
            }
        
            plot.add(
              domain: (-4, 9),
              style: (stroke: (paint: accent.mat.lighten(50%))),
              x => calc.sin(x),
            )
            
            plot.add(
              domain: (-4, 9),
              style: (stroke: (paint: accent.mat)),
              x => ((x - calc.sin(x))/(calc.pow(x, 3))),
              samples: 200
            )
            plot.add(domain: (-7, 7), taylor3, samples: 200, style: (stroke: (paint: accent.mat, dash: "dashed")))
            plot.add(domain: (-3, 10), taylor17, samples: 200, style: (stroke: (paint: accent.mat, dash: "dotted")))
          }
        )
      }),
      align(center, grid(
        columns: (auto, auto, auto, auto),
        column-gutter: (0.5em, 2em, 0.5em),
        row-gutter: 0.6em,
        align: horizon + left,
        line(length: 1.5em, stroke: accent.mat.lighten(50%)), [$script(sin x)$],
        line(length: 1.5em, stroke: (paint: accent.mat)), [$(x - sin x)/x^3$],
        line(length: 1.5em, stroke: (paint: accent.mat, dash: "dashed")), [$T_(3, 0)(x)$],
        line(length: 1.5em, stroke: (paint: accent.mat, dash: "dotted")), [$T_(17, 0)(x)$],
      ))
    ),
    caption: [],
  ) <grafico_derivate12>
]

#let grafico_derivate13 = [
  #figure(
    stack(
      spacing: 0.8em,
      cetz.canvas({
        import cetz.draw: *

        set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
        
        plot.plot(
          size: (4 * 2, 1 * 2),
          axis-style: "school-book",
          x-tick-step: 2, 
          y-tick-step: 1,      
          x-min: -2, x-max: 2,
          y-min: 0, y-max: 1,
          x-label: [],        
          y-label: [],    
          x-grid: none,   
          y-grid: none,
          legend: none,
          
          {
            let taylor22(x) = range(0, 12).map(k => calc.pow(-1, k) * calc.pow(x, 2 * k)).sum()
        
            plot.add(
              domain: (-2, 2),
              style: (stroke: (paint: accent.mat)),
              x => if x == 0 { 0 } else { calc.exp(-1 / (x * x)) },
              samples: 200,
            )            
            
          }
        )
      }),
      
    ),
    caption: [],
  ) <grafico_derivate13>
]

#let grafico_derivate14 = [
  #figure(
    stack(
      spacing: 0.8em,
      cetz.canvas({
        import cetz.draw: *

        set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
        
        plot.plot(
          size: (4 * 2, 1 * 2),
          axis-style: "school-book",
          x-tick-step: 2, 
          y-tick-step: 1,      
          x-min: -2, x-max: 2,
          y-min: 0, y-max: 1,
          x-label: [],        
          y-label: [],    
          x-grid: none,   
          y-grid: none,
          legend: "south",        
            legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.25, preview: (width: 0.5))),
            legend-anchor: auto,
          
          {
            let taylor22(x) = range(0, 12).map(k => calc.pow(-1, k) * calc.pow(x, 2 * k)).sum()
        
                       
            plot.add(
              domain: (-2, 2),
              x => 1/(1 + x * x),
              style: (stroke: (paint: accent.mat)),
              label: [$f(x) = 1/(1 + x^2)$],
              samples: 200
            )            

            plot.add(
              domain: (-3, 10), 
              taylor22, 
              style: (stroke: (paint: accent.mat, dash: "dotted")),
              label: [$T_(22, 0) (x)$],
              samples: 200, 
            )
          }
        )
      }),
      
    ),
    caption: [],
  ) <grafico_derivate14>
]

#let tabella_derivate1 = [
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
  columns: (auto,) * 3, 
  [$sin x$], [$display(x - x^3 / 3! + x^5 / 5! + ... + (-1)^(n-1) x^(2n-1) / ((2n - 1)!))$], [$display((|x|^(2n+1)) / ((2n + 1)!) |cos c|)$],
  [$cos x$], [$display(1 - x^2 / 2! + x^4 / 4! + ... + (-1)^n x^(2n) / ((2n)!))$], [$display((|x|^(2n+2)) / ((2n + 2)!)) |cos c|$],
  [$e^x$], [$display(1 + x + x^2 / 2! + x^3 / 3! + ... + x^n / n!)$], [$display((|x|^(n+1)) / ((n + 1)!)) e^c$],
  [$ln(1+x)$], [$display(x - x^2 / 2 + x^3 / 3 + ... + (-1)^(n-1) x^n / n)$], [$display((|x|^(n+1)) / (n + 1) 1 / (1 + c)^(n+1))$],
  [$"tg" x$], [$display(x + x^3 / 3 + (2 x^5) / 15 + (7 x^7) / 315)$], [],
  [$"arctg" x$], [$display(x - x^3 / 3 + x^5 / 5 + ... + (-1)^n x^(2n-1) / (2n - 1))$], []
  )
) <tabella_derivate1>
]

