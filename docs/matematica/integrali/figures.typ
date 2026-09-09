#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

#let grafico_integrali1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4.5, 7),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -1, x-max: 3,
        y-min: -0.5, y-max: 6,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-south-east",        
        legend-style: (stroke: none, fill: none, padding: 0.1, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-1, 3),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),            
            x => 2 * x,
          )  
          plot.add-fill-between(
            domain: (1, 3),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => 2 * x, 
            x => 0  
          )  
          plot.add-vline(
            min: 0,
            max: 2,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")), 
            1
          )  
          plot.add-vline(
            min: 0,
            max: 6,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")), 
            3
          ) 

          
        }
      )
    }),
    caption: [],
  ) <grafico_integrali1>
]

#let grafico_integrali2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4.5, 7),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -1, x-max: 3,
        y-min: -0.5, y-max: 6,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-south-east",        
        legend-style: (stroke: none, fill: none, padding: 0.1, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-2, 3),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),            
            x => x * x,
            samples: 150
          )
          plot.add-fill-between(
            domain: (1, 2),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => x * x, 
            x => 0  
          )  
          plot.add-vline(
            min: 0,
            max: 1,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")), 
            1
          )  
          plot.add-vline(
            min: 0,
            max: 4,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")), 
            2
          ) 





              
          
        }
      )
    }),
    caption: [],
  ) <grafico_integrali2>
]

#let grafici_integrali1 = [
  #align(center)[#grid(columns: 2, column-gutter: 2em, row-gutter: 1em)[#grafico_integrali1][#grafico_integrali2]]
]

#let grafico_integrali3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6 * 1.5, 2 * 1.5),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -3, x-max: 3,
        y-min: -0.5, y-max: 1.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-south-east",        
        legend-style: (stroke: none, fill: none, padding: 0.1, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          let gauss(x) = calc.pow(calc.e, -x * x)
          
          plot.add(
            domain: (-2, 3),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),            
            x => gauss(x),
            samples: 150
          )
          plot.add-fill-between(
            domain: (0.2, 1),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => gauss(x),
            x => 0  
          )  
          plot.add-vline(
            min: 0,
            max: gauss(0.2),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")), 
            0.2
          )  
          plot.add-vline(
            min: 0,
            max: gauss(1),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")), 
            1
          ) 





              
          
        }
      )
    }),
    caption: [#lorem(15)],
  ) <grafico_integrali3>
]

#let tabella_integrali1 = [
#figure(
  caption: [],  
  table(
    stroke: 0.5pt + accent.mat.lighten(90%),
    inset: 0.75em,
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
  table.header[Funzione][Primitive],
    [$k$], [$k x + c$],
    [$x^alpha, quad alpha in RR without \{-1\}$], [$display(x^(alpha+1) / (alpha + 1) + c)$],
    [$x^(-1) = display(1/x)$], [$ln |x| + c$],
    [$e^x$], [$e^x + c$],
    [$ln x$], [$x ln x - x + c$],
    [$sin x$], [$-cos x + c$],
    [$cos x$], [$sin x + c$],
    [$(f(x))^alpha f'(x), quad  alpha in RR without \{-1\}$], [$display(((f(x))^(alpha+1)) / (alpha + 1) + c)$],
    [$(f(x))^(-1) f'(x) = display((f'(x)) / (f(x)))$], [$ln |f(x)| + c$],
    [$f'(x) e^(f(x))$], [$e^(f(x)) + c$],
    [$f'(x) sin f(x)$], [$-cos f(x)$],
    [$f'(x) cos f(x)$], [$sin f(x)$],
  ),
) <tabella_integrali1>
]

#let grafico_integrali4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5 * 1.2, 3 * 1.2),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -0.5, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xb = 2.5
        let f(x) = 0.8 * calc.atan(x).rad() + 1.5

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            x => 0  
        ) 



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
          
            content((to: "a", rel: (0.0, -0.1)), [ $a$ ], anchor: "north")
            content((to: "b", rel: (0.0, -0.1)), [ $b$ ], anchor: "north")

            line((Xa, 0), (Xa, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali4>
]

#let grafico_integrali5 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 3),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -0.5, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xa2 = -0.5
        let Xa3 = 0.5
        let Xa4 = 1.5
        let Xb = 2.5

        let f(x) = 0.8 * calc.atan(x).rad() + 1.5

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xa2),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa),
            x => 0  
        ) 
        plot.add-fill-between(
            domain: (Xa2, Xa3),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa2),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa3, Xa4),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa3),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa4, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa4),
            x => 0  
        )



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
          
            content((to: "a", rel: (0.0, -0.1)), [ $a$ ], anchor: "north")
            content((to: "b", rel: (0.0, -0.1)), [ $b$ ], anchor: "north")

            line((Xa, 0), (Xa, f(Xa)), (Xa2, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa2, 0), (Xa2, f(Xa2)), (Xa3, f(Xa2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa3, 0), (Xa3, f(Xa3)), (Xa4, f(Xa3)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa4, 0), (Xa4, f(Xa4)), (Xb, f(Xa4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali5>
]

#let grafico_integrali6 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 3),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -0.5, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xa2 = -0.5
        let Xa3 = 0.5
        let Xa4 = 1.5
        let Xb = 2.5

        let f(x) = 0.8 * calc.atan(x).rad() + 1.5

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xa2),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa2),
            x => 0  
        ) 
        plot.add-fill-between(
            domain: (Xa2, Xa3),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa3),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa3, Xa4),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa4),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa4, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xb),
            x => 0  
        )



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
          
            content((to: "a", rel: (0.0, -0.1)), [ $a$ ], anchor: "north")
            content((to: "b", rel: (0.0, -0.1)), [ $b$ ], anchor: "north")

            line((Xa, 0), (Xa, f(Xa2)), (Xa2, f(Xa2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa2, 0), (Xa2, f(Xa3)), (Xa3, f(Xa3)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa3, 0), (Xa3, f(Xa4)), (Xa4, f(Xa4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa4, 0), (Xa4, f(Xb)), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali6>
]

#let grafici_integrali2 = [
  #align(center)[#grid(columns: 2, column-gutter: 2em, row-gutter: 1em)[#grafico_integrali5][#grafico_integrali6]]
]

#let grafico_integrali7 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5 * 1.2, 3 * 1.2),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -0.5, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xa2 = -0.5
        let Xa3 = 0.5
        let Xa4 = 1.5
        let Xb = 2.5

        let f(x) = 1/3 * x * x - 1/8 * x + 3/4

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xa2),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa2),
            x => 0  
        ) 
        plot.add-fill-between(
            domain: (Xa2, Xa3),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa3),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa3, Xa4),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa3),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa4, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa4),
            x => 0  
        )



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
          
            content((to: "a", rel: (0.0, -0.1)), [ $a$ ], anchor: "north")
            content((to: "b", rel: (0.0, -0.1)), [ $b$ ], anchor: "north")

            line((Xa, 0), (Xa, f(Xa2)), (Xa2, f(Xa2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa2, 0), (Xa2, f(Xa3)), (Xa3, f(Xa3)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa3, 0), (Xa3, f(Xa3)), (Xa4, f(Xa3)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa4, 0), (Xa4, f(Xa4)), (Xb, f(Xa4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xa4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali7>
]

#let grafico_integrali8 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 3),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -2.5, y-max: 0.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xa2 = -0.5
        let Xa3 = 0.5
        let Xa4 = 1.5
        let Xb = 2.5

        let f(x) = -0.8 * calc.atan(x).rad() - 1.5

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xa2),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa),
            x => 0  
        ) 
        plot.add-fill-between(
            domain: (Xa2, Xa3),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa2),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa3, Xa4),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa3),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa4, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa4),
            x => 0  
        )



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
          
            content((to: "a", rel: (0.0, 0.1)), [ $a$ ], anchor: "south")
            content((to: "b", rel: (0.0, 0.1)), [ $b$ ], anchor: "south")

            line((Xa, 0), (Xa, f(Xa)), (Xa2, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa2, 0), (Xa2, f(Xa2)), (Xa3, f(Xa2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa3, 0), (Xa3, f(Xa3)), (Xa4, f(Xa3)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa4, 0), (Xa4, f(Xa4)), (Xb, f(Xa4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali8>
]

#let grafico_integrali9 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5, 3),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -2.5, y-max: 0.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xa2 = -0.5
        let Xa3 = 0.5
        let Xa4 = 1.5
        let Xb = 2.5

        let f(x) = -0.8 * calc.atan(x).rad() - 1.5

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xa2),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa2),
            x => 0  
        ) 
        plot.add-fill-between(
            domain: (Xa2, Xa3),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa3),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa3, Xa4),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa4),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa4, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xb),
            x => 0  
        )



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
          
            content((to: "a", rel: (0.0, 0.1)), [ $a$ ], anchor: "south")
            content((to: "b", rel: (0.0, 0.1)), [ $b$ ], anchor: "south")

            line((Xa, 0), (Xa, f(Xa2)), (Xa2, f(Xa2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa2, 0), (Xa2, f(Xa3)), (Xa3, f(Xa3)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa3, 0), (Xa3, f(Xa4)), (Xa4, f(Xa4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa4, 0), (Xa4, f(Xb)), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali9>
]

#let grafici_integrali3 = [
  #align(center)[#grid(columns: 2, column-gutter: 2em, row-gutter: 1em)[#grafico_integrali8][#grafico_integrali9]]
]

#let grafico_integrali10 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6 * 1.2, 2 * 1.2),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: 0, x-max: 2 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = 0
        let Xb = 2 * calc.pi
        let f(x) = calc.sin(x)

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            x => 0  
        ) 



          plot.annotate({
           

            line((Xa, 0), (Xa, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali10>
]

//!

#let grafico_integrali11 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6 * 0.8, 2 * 0.8),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: 0, x-max: 2 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa1 = 0
        let Xa2 = calc.pi/4
        let Xa3 = calc.pi/2
        let Xa4 = 3 * calc.pi/4
        let Xa5 = calc.pi
        let Xa6 = 5 * calc.pi/4
        let Xa7 = 6 * calc.pi/4
        let Xa8 = 7 * calc.pi/4

        let Xa9 = 2 * calc.pi

        let f(x) = calc.sin(x)

        plot.add(
          domain: (Xa1, Xa9),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa1, Xa2),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa1),
            x => 0  
        ) 
        plot.add-fill-between(
            domain: (Xa2, Xa3),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa2),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa3, Xa4),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa2),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa5, Xa6),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa6),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa6, Xa7),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa7),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa7, Xa8),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa7),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa8, Xa9),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa8),
            x => 0  
        )



          plot.annotate({
            /* anchor("a1", (Xa1, 0))
            anchor("a2", (Xa2, 0))
            anchor("a3", (Xa3, 0))
            anchor("a4", (Xa4, 0))
            anchor("a5", (Xa5, 0))
            anchor("a6", (Xa6, 0))
            anchor("a7", (Xa7, 0))
            anchor("a8", (Xa8, 0))
  
            anchor("a9", (Xa9, 0))
          
            content((to: "a1", rel: (0.0, 0.1)), [ $a_1$ ], anchor: "south")
            content((to: "a2", rel: (0.0, 0.1)), [ $a_2$ ], anchor: "south")
            content((to: "a3", rel: (0.0, 0.1)), [ $a_3$ ], anchor: "south")
            content((to: "a4", rel: (0.0, 0.1)), [ $a_4$ ], anchor: "south")
            content((to: "a5", rel: (0.0, 0.1)), [ $a_5$ ], anchor: "south")
            content((to: "a6", rel: (0.0, 0.1)), [ $a_6$ ], anchor: "south")
            content((to: "a7", rel: (0.0, 0.1)), [ $a_7$ ], anchor: "south")
            content((to: "a8", rel: (0.0, 0.1)), [ $a_8$ ], anchor: "south")
            content((to: "a9", rel: (0.0, 0.1)), [ $a_9$ ], anchor: "south") */

            line((Xa2, 0), (Xa2, f(Xa2)), (Xa3, f(Xa2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa3, 0), (Xa3, f(Xa2)), (Xa4, f(Xa2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            
            line((Xa5, 0), (Xa5, -f(Xa4)), (Xa6, -f(Xa4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa6, 0), (Xa6, f(Xa7)), (Xa7, f(Xa7)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa7, 0), (Xa7, f(Xa7)), (Xa8, f(Xa7)), (Xa8, f(Xa8)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa8, 0), (Xa8, f(Xa8)), (Xa9, f(Xa8)), (Xa9, f(Xa9)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)



            line((Xa9, 0), (Xa9, f(Xa9)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali11>
]

#let grafico_integrali12 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6 * 0.8, 2 * 0.8),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: 0, x-max: 2 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa1 = 0
        let Xa2 = calc.pi/4
        let Xa3 = calc.pi/2
        let Xa4 = 3 * calc.pi/4
        let Xa5 = calc.pi
        let Xa6 = 5 * calc.pi/4
        let Xa7 = 6 * calc.pi/4
        let Xa8 = 7 * calc.pi/4

        let Xa9 = 2 * calc.pi

        let f(x) = calc.sin(x)

        plot.add(
          domain: (Xa1, Xa9),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa1, Xa2),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa2),
            x => 0  
        ) 
        plot.add-fill-between(
            domain: (Xa2, Xa3),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa3),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa3, Xa4),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa3),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa4, Xa5),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa4),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa6, Xa7),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa6),
            x => 0  
        )
        plot.add-fill-between(
            domain: (Xa7, Xa8),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            x => f(Xa6),
            x => 0  
        )
        



          plot.annotate({
           

            line((Xa1, 0), (Xa1, f(Xa2)), (Xa2, f(Xa2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa2, 0), (Xa2, f(Xa3)), (Xa3, f(Xa3)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa3, 0), (Xa3, f(Xa3)), (Xa4, f(Xa3)), (Xa4, f(Xa4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa4, 0), (Xa4, f(Xa4)), (Xa5, f(Xa4)), (Xa5, f(Xa5)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            
            line((Xa6, 0), (Xa6, f(Xa6)), (Xa7, f(Xa6)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xa7, 0), (Xa7, f(Xa6)), (Xa8, f(Xa8)), (Xa8, f(Xa9)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)



            line((Xa9, 0), (Xa9, f(Xa9)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali12>
]

#let grafico_integrali13 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6 * 0.8, 2 * 0.8),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: 0, x-max: 2 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          let n = 15
          let dx = 2 * calc.pi / n
          let f(x) = calc.sin(x)

          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            f,
            samples: 200,          
          )

          for i in range(0, n) {
            let xa = i * dx
            let xb = (i + 1) * dx
            let y_max = if xa <= calc.pi / 2 and xb >= calc.pi / 2 { 1.0 } else { calc.max(f(xa), f(xb)) }

            plot.add-fill-between(
              domain: (xa, xb),
              style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
              x => y_max,
              x => 0  
            )
          }

          plot.annotate({
            for i in range(0, n) {
              let xa = i * dx
              let xb = (i + 1) * dx
              let y_max = if xa <= calc.pi / 2 and xb >= calc.pi / 2 { 1.0 } else { calc.max(f(xa), f(xb)) }

              line((xa, 0), (xa, y_max), (xb, y_max), (xb, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt)
            }
          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali13>
]

#let grafico_integrali14 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (6 * 0.8, 2 * 0.8),
        axis-style: "school-book",
        x-tick-step: calc.pi/2, 
        y-tick-step: 1,      
        x-min: 0, x-max: 2 * calc.pi,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          let n = 30
          let dx = 2 * calc.pi / n
          let f(x) = calc.sin(x)

          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            f,
            samples: 200,          
          )

          for i in range(0, n) {
            let xa = i * dx
            let xb = (i + 1) * dx
            let y_max = if xa <= calc.pi / 2 and xb >= calc.pi / 2 { 1.0 } else { calc.max(f(xa), f(xb)) }

            plot.add-fill-between(
              domain: (xa, xb),
              style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
              x => y_max,
              x => 0  
            )
          }

          plot.annotate({
            for i in range(0, n) {
              let xa = i * dx
              let xb = (i + 1) * dx
              let y_max = if xa <= calc.pi / 2 and xb >= calc.pi / 2 { 1.0 } else { calc.max(f(xa), f(xb)) }

              line((xa, 0), (xa, y_max), (xb, y_max), (xb, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt)
            }
          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali14>
]

#let grafici_integrali4 = [
  #align(center)[#grid(columns: 2, column-gutter: 2em, row-gutter: 1em)[#grafico_integrali11][#grafico_integrali12][#grafico_integrali13][#grafico_integrali14]]
]

#let grafico_integrali15 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5 * 1.2, 3 * 1.2),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -0.5, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xb = 2.5
        let Xc = 0.5
        let f(x) = 0.9 * calc.atan(x).rad() + 1.2

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xc),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            x => 0  
        ) 
        plot.add-fill-between(
            domain: (Xc, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(85%)),
            f,
            x => 0  
        )



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
            anchor("c", (Xc, 0))
          
            content((to: "a", rel: (0.0, -0.1)), [ $a$ ], anchor: "north")
            content((to: "b", rel: (0.0, -0.1)), [ $b$ ], anchor: "north")
            content((to: "c", rel: (0.0, -0.1)), [ $c$ ], anchor: "north")

            line((Xa, 0), (Xa, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xc, 0), (Xc, f(Xc)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali15>
]

#let grafico_integrali16 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5 * 1.2, 3 * 1.2),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -2.5, y-max: 2.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xb = 2.5
        let Xc = 0.5
        let f(x) = 0.9 * calc.sin(x + 2.2) + 1.3
        let g(x) = 0.25 * calc.pow(x, 2) - 0.8 * x - 1

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          g,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            g  
        ) 
        



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
          
            content((to: "a", rel: (0.0, -0.1)), [ $a$ ], anchor: "north")
            content((to: "b", rel: (0.15, 0.15)), [ $b$ ], anchor: "south")

            content((1, f(1)), [ $f$ ], anchor: "south", padding: 0.5)
            content((0.3, g(0.3)), [ $g$ ], anchor: "north", padding: 0.34)

            line((Xa, 0), (Xa, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)

            line((Xa, f(Xa)), (Xa, g(Xa)), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,)
            line((Xb, f(Xb)), (Xb, g(Xb)), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,)

          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali16>
]

#let grafico_integrali17 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (5 * 1.2, 3 * 1.2),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: -2, x-max: 3,
        y-min: -1, y-max: 4.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1.5
        let Xb = 2.5
        let Xc = 0.8
        let f(x) = 0.3 * calc.pow(x, 2) + 0.1 * x + 1.45
        let g(x) = -0.2 * calc.pow(x, 2) - 0.9 * x + 2.77

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          g,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            g  
        ) 
        



          plot.annotate({
            anchor("a", (Xa, 0))
            anchor("b", (Xb, 0))
            anchor("c", (Xc, 0))
          
            content((to: "a", rel: (0.0, -0.1)), [ $a$ ], anchor: "north")
            content((to: "b", rel: (0.15, 0.15)), [ $b$ ], anchor: "south")
            content((to: "c", rel: (0.0, -0.15)), [ $c$ ], anchor: "north")

            content((0.3, g(0.3)), [ $g$ ], anchor: "south", padding: 0.4)
            content((-1, f(1)), [ $f$ ], anchor: "north", padding: .5)

            line((Xa, 0), (Xa, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            line((Xc, 0), (Xc, f(Xc)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)

            line((Xa, f(Xa)), (Xa, g(Xa)), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,)
            line((Xb, f(Xb)), (Xb, g(Xb)), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,)

          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali17>
]

#let grafico_integrali18 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [$O$], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: none, 
        y-tick-step: none,      
        x-min: 0, x-max: 2,
        y-min: 0, y-max: 2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = 0
        let Xb = calc.pi/2
        let Xc = 0.8
        let f(x) = calc.sin(x)
        let g(x) = x

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add(
          domain: (Xa, Xb + 1),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          g,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            x => 0  
        ) 
        
        plot.add(((Xb, 0),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
        plot.add(((Xb, Xb),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))



          plot.annotate({
            anchor("a", (Xb, 0))
            anchor("b", (Xb, Xb))
          
            content((to: "a", rel: (0.0, -0.1)), [ $A$ ], anchor: "north")
            content((to: "b", rel: (0.0, 0.1)), [ $B$ ], anchor: "south")

            line((Xb, Xb), (Xb, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)

          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali18>
]

#let grafico_integrali19 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [$O$], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: 0, x-max: 1.2,
        y-min: 0, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = 0
        let Xb = 1
    
        let f(x) = x * x
        let g(x) = calc.pow(x, 3)

        plot.add(
          domain: (Xa, Xb),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add(
          domain: (Xa, Xb + 1),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          g,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            g  
        ) 
        
        plot.add(((Xa, f(Xa)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
        plot.add(((Xb, f(Xb)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))



        }
      )
    }),
    caption: [],
  ) <grafico_integrali19>
]

#let grafico_integrali20 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [$O$], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4 * 1.2, 3 * 1.2),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -2, x-max: 2,
        y-min: -1.5, y-max: 1.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = -1
        let Xb = 0
    
        let f(x) = (2 * x)/(x * x + 1)
        let g(x) = 0

        plot.add(
          domain: (-2, 2),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add(
          domain: (Xa, Xb + 1),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          g,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            g  
        ) 
        
        plot.add(((Xa, f(Xa)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
        plot.add(((Xb, f(Xb)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))



          plot.annotate({
            

            line((Xa, 0), (Xa, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
          


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali20>
]

#let grafico_integrali21 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [$O$], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4 * 1.2, 2 * 1.2),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: 0, x-max: 4,
        y-min: 0, y-max: 2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = 1
        let Xb = 2.5
    
        let f(x) = 1/(x * x)
        let g(x) = 0

        plot.add(
          domain: (0.1, 4),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,          
        )
        plot.add(
          domain: (Xa, Xb + 1),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          g,
          samples: 200,          
        )
        plot.add-fill-between(
            domain: (Xa, Xb),
            style: (stroke: 0pt, fill: accent.mat.lighten(75%)),
            f,
            g  
        ) 
        
        plot.add(((Xa, f(Xa)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
        plot.add(((Xb, f(Xb)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))



          plot.annotate({
            
            line((Xa, 0), (Xa, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            content((Xb, 0), [ $t$ ], anchor: "north")


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali21>
]

#let grafico_integrali22 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [$O$], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (10, 2 * 1.5),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: 0, x-max: 10,
        y-min: 0, y-max: 2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-east",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.5, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let Xa = 1
        let Xb = 2.5
    
        let f(x) = 1/(x * x)
        let g(x) = 1/x

        plot.add(
          domain: (0.1, 10),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          label: [$f(x) = 1/x^2$],       
          samples: 200,   
        )
        plot.add(
          domain: (0.1, 10),
          style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
          g,
          label: [$g(x) = 1/x$], 
          samples: 200,          
        )
        
        
        plot.add(((Xa, f(Xa)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
        plot.add(((Xb, f(Xb)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))



          plot.annotate({
            
            line((Xa, 0), (Xa, f(Xa)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt)
            line((Xb, 0), (Xb, f(Xb)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,)
            content((Xb, 0), [ $t$ ], anchor: "north")


          })
        }
      )
    }),
    caption: [],
  ) <grafico_integrali22>
]






