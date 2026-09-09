#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot


#let grafico_successioni1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [$O$], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (9, 2.4 * 1.5),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: 0, x-max: 9,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-east",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.5, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
        let pts = range(0, 10).map(n => (n, calc.pow(-1, n)))
        plot.add(
          pts,
          style: (stroke: none),
          mark: "o", 
          mark-size: 0.1, 
          mark-style: (fill: accent.mat, stroke: none)
        )
       
        
        plot.add(
          ((1, -1),), 
          mark: "o", 
          mark-size: 0.1, 
          mark-style: (fill: accent.mat, stroke: none)
        )
  

        }
      )
    }),
    caption: [],
  ) <grafico_successioni1>
]

#let grafico_successioni2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [$O$], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (9, 2.4 ),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: 0, x-max: 9,
        y-min: -0.2, y-max: 2.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-east",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.5, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
        let f(x) = calc.sin(calc.pi * x) + 1
        let pts = range(0, 10).map(x => (x, calc.sin(calc.pi * x) + 1))

        plot.add(
          pts,
          style: (stroke: none),
          mark: "o", 
          mark-size: 0.1, 
          mark-style: (fill: accent.mat, stroke: none)
        )
        
        
        plot.add(
          domain: (-1, 10),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,
          samples: 200,   
        )
       
   
  

        }
      )
    }),
    caption: [],
  ) <grafico_successioni2>
]

#let grafico_successioni3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: [$O$], stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (10, 4),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 0.5,      
        x-min: 0, x-max: 5,
        y-min: 0, y-max: 1.25,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "inner-east",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.5, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          

        let x1 = 1
        let x2 = 2
        let x3 = 3
        let x4 = 4
        let x5 = 5
    
        let f(x) = 1/x
        

        plot.add(
          domain: (0.1, 10),
          style: (stroke: (thickness: 1pt, paint: accent.mat)),
          f,                 
          samples: 200,   
        )        
        
        
        plot.add(((x1, f(x1)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
        plot.add(((x2, f(x2)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
        plot.add(((x3, f(x3)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))
        plot.add(((x4, f(x4)),), mark: "o", mark-size: 0.1, mark-style: (fill: accent.mat, stroke: none))



          plot.annotate({
            
            line((x1, f(x1)), (x2, f(x1)), (x2, f(x2)), (x1, 0.5), (x1, f(x1)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, fill: accent.mat.transparentize(90%))
            line((x2, f(x2)), (x3, f(x2)), (x3, f(x3)), (x2, f(x3)), (x2, f(x2)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, fill: accent.mat.transparentize(90%))
            line((x3, f(x3)), (x4, f(x3)), (x4, f(x4)), (x3, f(x4)), (x3, f(x3)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, fill: accent.mat.transparentize(90%))
            line((x4, f(x4)), (x5, f(x4)), (x5, f(x5)), (x4, f(x5)), (x4, f(x4)), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, fill: accent.mat.transparentize(90%))


          })
        }
      )
    }),
    caption: [],
  ) <grafico_successioni3>
]

#let tabella_successioni1 = [
 #figure(
   caption: [],   
   table(
    inset: 1em,
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
  align: center + horizon,
  columns: (2),
  table.header[Funzione analitica][Intervallo],
  [$display(1 / (1 - x) = sum_(n=0)^oo x^n)$], [$display(-1 < x < 1)$],
  [$display(e^x = sum_(n=0)^oo x^n / (n!))$], [$display(x in RR)$],
  [$display(sin x = sum_(n=0)^oo ((-1)^n x^(2n+1)) / ((2n+1)!))$ ],[ $x in RR$],
  [$display(cos x = sum_(n=0)^oo ((-1)^n x^(2n)) / ((2n)!))$], [$display(x in RR)$],
  [$display(ln(1+x) = sum_(n=1)^oo ((-1)^(n-1) x^n) / n)$], [$display(-1 < x <= 1)$],
  [$display(arctan x = sum_(n=0)^oo ((-1)^n x^(2n+1)) / (2n+1))$], [$display(-1 <= x <= 1)$]
 )  
 )
]
