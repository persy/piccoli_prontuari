#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

#let grafico_costruibile_elementare1 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (8.4 * 1.2, 4.4 * 1.2),
      x-min: -4.2, x-max: 4.2,
      y-min: -2.2, y-max: 2.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "inner-south-west",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = sqrt(x)$],                  
        x => calc.sqrt(x),
        samples: 100
      ) 

      plot.add(
        domain: (-5, 0),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = sqrt(-x)$],                  
        x => calc.sqrt(-x),
        samples: 100
      ) 

      plot.add(
        domain: (0, 5),  
        style: (stroke: (paint: accent.mat.lighten(75%))), 
        label: [$h(x) = -sqrt(x)$],                  
        x => -calc.sqrt(x),
        samples: 100
      ) 

        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare1>
]

#let grafico_costruibile_elementare2 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (7.4 * 1.2, 4.4 * 1.2),
      x-min: -3.2, x-max: 4.2,
      y-min: -2.2, y-max: 2.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = sqrt(x)$],                  
        x => calc.sqrt(x),
        samples: 100
      ) 

      plot.add(
        domain: (-5, 2),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = sqrt(-x + 2)$],                  
        x => calc.sqrt(-x + 2),
        samples: 100
      ) 

      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -2.2, 
        max: 2.2, 
        1
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare2>
]

#let grafico_costruibile_elementare2 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (7.4 * 1.2, 4.4 * 1.2),
      x-min: -3.2, x-max: 4.2,
      y-min: -2.2, y-max: 2.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = sqrt(x)$],                  
        x => calc.sqrt(x),
        samples: 100
      ) 

      plot.add(
        domain: (-5, 2),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = sqrt(-x + 2)$],                  
        x => calc.sqrt(-x + 2),
        samples: 100
      ) 

      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -2.2, 
        max: 2.2, 
        1
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare2>
]

#let grafico_costruibile_elementare3 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 1.2, 3.4 * 1.2),
      x-min: -0.2, x-max: 6.2,
      y-min: -0.2, y-max: 3.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0, 6),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = sqrt(x)$],                  
        x => calc.sqrt(x),
        samples: 100
      ) 

      plot.add(
        domain: (0, 6),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$h(x) = -sqrt(x) + 3$],                  
        x => -calc.sqrt(x) + 3,
        samples: 100
      ) 

      plot.add(
        domain: (-5, 6),
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        x => 3/2
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare3>
]

#let grafico_costruibile_elementare4 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -2.2, y-max: 2.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = 2 x$],                  
        x => 2 * x,        
      ) 

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(x) + 2$],                  
        x => 2 * x + 2,        
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare4>
]

#let grafico_costruibile_elementare5 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = e^x$],                  
        x => calc.pow(calc.e, x)      
      ) 

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(x) + 1$],                  
        x => calc.pow(calc.e, x) + 1      
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare5>
]

#let grafico_costruibile_elementare6 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5, 5),
      x-min: -4.2, x-max: 4.2,
      y-min: -4.2, y-max: 4.2,
      x-tick-step: 2, y-tick-step: 2,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "west",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = display(1/x)$],                  
        x => 1/x,
        samples: 100     
      ) 

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(x) - 1$],                  
        x => 1/x - 1,
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare6>
]

#let grafici_costruibili1 = [
  #align(center)[#grid(columns: 2, column-gutter: 1em)[#grafico_costruibile_elementare4][#grafico_costruibile_elementare5]]
  #grafico_costruibile_elementare6
]

#let grafico_costruibile_elementare7 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4 * 1.15),
      x-min: -3.2, x-max: 1.2,
      y-min: -0.2, y-max: 5.2,
      x-tick-step: 2, y-tick-step: 2,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4.5, 4.5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x^2$],                  
        x => calc.pow(x, 2),
        samples: 100     
      ) 

      plot.add(
        domain: (-4.5, 4.5),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(x + 2)$],                  
        x => calc.pow(x +2, 2),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare7>
]

#let grafico_costruibile_elementare8 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4 * 1.2, 4.4 * 1.2),
      x-min: -4.2, x-max: 4.2,
      y-min: -4.2, y-max: 4.2,
      x-tick-step: 2, y-tick-step: 2,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4.5, -0.01),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = display(1/x)$],                  
        x => 1/x,
        samples: 100     
      )
      plot.add(
        domain: (0.01, 4.5),  
        style: (stroke: (paint: accent.mat)),                           
        x => 1/x,
        samples: 100     
      )  

      plot.add(
        domain: (-4.5, 0.99),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(x - 1)$],                  
        x => 1/(x - 1),
        samples: 100     
      )
      plot.add(
        domain: (1.01, 4.5),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(x - 1)$],                  
        x => 1/(x - 1),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare8>
]

#let grafico_costruibile_elementare9 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 4.4),
      x-min: -2.2, x-max: 5.2,
      y-min: -4.2, y-max: 2.2,
      x-tick-step: 2, y-tick-step: 2,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "west",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0.01, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = ln(x)$],                  
        x => calc.ln(x),
        samples: 100     
      ) 

      plot.add(
        domain: (-1.99, 5),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = ln(x + 2)$],                  
        x => calc.ln(x + 2),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare9>
]

#let grafici_costruibili2 = [
  #align(center)[#grid(columns: 2, column-gutter: 2em)[#grafico_costruibile_elementare7][#grafico_costruibile_elementare8]]
  #grafico_costruibile_elementare9
]

#let grafico_costruibile_elementare10 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -0.2, x-max: 4.2,
      y-min: -1.2, y-max: 3.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0.01, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = ln(x)$],                  
        x => calc.ln(x),
        samples: 100     
      ) 

      plot.add(
        domain: (0.01, 4),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = 3 f(x)$],                  
        x => 3 * calc.ln(x),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare10>
]

#let grafico_costruibile_elementare11 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -2.2, y-max: 2.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = display(1/x)$],                  
        x => 1/x,
        samples: 100     
      ) 

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = -2 f(x)$],                  
        x => -2 * 1/x,
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare11>
]

#let grafico_costruibile_elementare12 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "west",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x^2$],                  
        x => calc.pow(x, 2),
        samples: 100     
      ) 

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = display(1/3) f(x)$],                  
        x => 1/3 * calc.pow(x, 2),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare12>
]

#let grafici_costruibili3 = [
  #align(center)[#grid(columns: 2, column-gutter: 1.5em)[#grafico_costruibile_elementare10][#grafico_costruibile_elementare11]]
  #grafico_costruibile_elementare12
]

#let grafico_costruibile_elementare13 = [#v(1em)
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 3.4),
      x-min: -0.2, x-max: 5.2,
      y-min: -1.2, y-max: 1.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-1, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = sin x$],                  
        x => calc.sin(x),
        samples: 100     
      ) 

      plot.add(
        domain: (-1, 5),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(2 x)$],                  
        x => calc.sin(2 * x),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare13>
]

#let grafico_costruibile_elementare14 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -2.2, y-max: 2.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0.01, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = ln x$],                  
        x => calc.ln(x),
        samples: 100     
      ) 

      plot.add(
        domain: (-3, -0.01),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(-3 x)$],                  
        x => calc.ln(-3 * x),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare14>
]

#let grafico_costruibile_elementare15 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4 * 1.2, 4.4 * 1.2),
      x-min: -3.2, x-max: 1.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "inner-west",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = e^x$],                  
        x => calc.pow(calc.e, x),
        samples: 100     
      ) 

      plot.add(
        domain: (-3, 1),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g(x) = f(3 x)$],                  
        x => calc.pow(calc.e, 3 * x),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare15>
]

#let grafici_costruibili4 = [
  #align(center)[#grid(columns: 2, column-gutter: 1em)[#grafico_costruibile_elementare13][#grafico_costruibile_elementare14]]
  #grafico_costruibile_elementare15
]

#let grafico_costruibile_elementare16 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -3.2, x-max: 1.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$y = x^2$],                  
        x => calc.pow(x, 2),
        samples: 100     
      ) 

      plot.add(
        domain: (-4, 1),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$y = (x + 1)^2$],                  
        x => calc.pow(x + 1, 2),
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare16>
]

#let grafico_costruibile_elementare17 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -3.2, x-max: 1.2,
      y-min: -3.2, y-max: 1.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 5),  
        style: (stroke: (paint: accent.mat)), 
        label: [$y = x^2$],                  
        x => 2 * calc.pow(x + 1, 2),
        samples: 100     
      ) 

      plot.add(
        domain: (-3, 1),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$y = (x + 1)^2$],                  
        x => 2 * calc.pow(x + 1, 2) - 3,
        samples: 100     
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare17>
]

#let grafici_costruibili5 = [
  #align(center)[#grid(columns: 2, column-gutter: 1em)[#grafico_costruibile_elementare16][#grafico_costruibile_elementare17]]
]

#let grafico_costruibile_elementare18 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = e^x$],                  
        x => calc.pow(calc.e, x)      
      ) 


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare18>
]

#let grafico_costruibile_elementare19 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat)), 
        label: [$g_1(x) = f(x + 1)$],                  
        x => calc.pow(calc.e, x+1)      
      ) 

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g_1(2x) = f(2x + 1)$],                  
        x => calc.pow(calc.e, 2 * x +1)      
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare19>
]

#let grafico_costruibile_elementare20 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat)), 
        label: [$g_2(x) = f(2x)$],                  
        x => calc.pow(calc.e, 2 * x)      
      ) 

      plot.add(
        domain: (-2, 2),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        label: [$g_2(x + 1/2) = f(2x + 1)$],                  
        x => calc.pow(calc.e, 2 * x +1)      
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare20>
]

#let grafici_costruibili6 = [
  #align(center)[#grid(columns: 2, column-gutter: 0.5em)[#grafico_costruibile_elementare18][#grafico_costruibile_elementare19]
  #grafico_costruibile_elementare20]
]

#let grafico_costruibile_elementare21 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 3.2,
      y-min: -3.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-2, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x^2 - x- 2$],                  
        x => x * x - x - 2      
      ) 


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare21>
]

#let grafico_costruibile_elementare22 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -2.2, x-max: 3.2,
      y-min: -3.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-2, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$g(x) = |f(x)|$],                  
        x => calc.abs(x * x - x - 2),
        samples: 100    
      ) 


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare22>
]

#let grafico_costruibile_elementare23 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4, 4.4),
      x-min: -3.2, x-max: 3.2,
      y-min: -3.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$g(x) = |f(x)|$],                  
        x => calc.abs(x * x) - calc.abs(x) - 2,
        samples: 100    
      ) 


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare23>
]

#let grafici_costruibili7 = [
  #align(center)[
    #grid(columns: 3, column-gutter: 0.5em)[#grafico_costruibile_elementare21][#grafico_costruibile_elementare22]
    #grafico_costruibile_elementare23
  ]
]

#let grafico_costruibile_elementare24 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4, 4.4),
      x-min: -3.2, x-max: 3.2,
      y-min: -3.2, y-max: 1.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x + |x - 1| - |2 x + 1|$],                  
        x => x + calc.abs(x -1) - calc.abs(2 * x + 1),
        samples: 200    
      ) 


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare24>
]

#let grafico_costruibile_elementare25 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (7.4, 4.4),
      x-min: -4.2, x-max: 3.2,
      y-min: -3.2, y-max: 1.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x^2 + x - |3x + 1|$],                  
        x => x * x + x - calc.abs(3 * x + 1),
        samples: 200    
      ) 


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare25>
]

#let grafico_costruibile_elementare26 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 4.4),
      x-min: -2.2, x-max: 3.2,
      y-min: -3.2, y-max: 1.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x^2 - x - 2$],                  
        x => x * x - x - 2,
        samples: 200    
      ) 


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare26>
]

#let grafico_costruibile_elementare27 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 4.4),
      x-min: -2.2, x-max: 3.2,
      y-min: -3.2, y-max: 3.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, -1.001),  
        style: (stroke: (paint: accent.mat)),                           
        x => 1/(x * x - x - 2),
        samples: 200    
      ) 
      plot.add(
        domain: (-0.999, 1.99),  
        style: (stroke: (paint: accent.mat)), 
        label: [$h(x) = display(1/f(x))$],                  
        x => 1/(x * x - x - 2),
        samples: 200    
      )
      plot.add(
        domain: (2.001, 4),  
        style: (stroke: (paint: accent.mat)),                           
        x => 1/(x * x - x - 2),
        samples: 200    
      )

      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -3.2, 
        max: 3.2, 
        2
      )
      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -3.2, 
        max: 3.2, 
        -1
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare27>
]

#let grafici_costruibili8 = [
  #align(center)[
    #grid(columns: 3, column-gutter: -0.5em)[#grafico_costruibile_elementare26][#grafico_costruibile_elementare27]
    
  ]
]

#let grafico_costruibile_elementare28 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 4.4),
      x-min: -2.2, x-max: 3.2,
      y-min: -3.2, y-max: 1.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x^2 - x - 2$],                  
        x => x * x - x - 2,
        samples: 200    
      ) 


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare28>
]

#let grafico_costruibile_elementare29 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 4.4),
      x-min: -3.2, x-max: 4.2,
      y-min: -3.2, y-max: 3.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, -1.001),  
        style: (stroke: (paint: accent.mat)),                           
        x => calc.ln(x * x - x - 2),
        samples: 200    
      ) 
      plot.add(
        domain: (2.001, 4),  
        style: (stroke: (paint: accent.mat)),                           
        x => calc.ln(x * x - x - 2),
        label: [$h(x) = ln(f(x))$],
        samples: 200    
      )

      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -3.2, 
        max: 3.2, 
        2
      )
      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -3.2, 
        max: 3.2, 
        -1
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare29>
]

#let grafici_costruibili9 = [
  #align(center)[
    #grid(columns: 3, column-gutter: -0.5em)[#grafico_costruibile_elementare28][#grafico_costruibile_elementare29]
    
  ]
]

#let grafico_costruibile_elementare30 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 4.4),
      x-min: -2.2, x-max: 3.2,
      y-min: -3.2, y-max: 3.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, -1.001),  
        style: (stroke: (paint: accent.mat)),                           
        x => 1/(x * x - x - 2),
        samples: 200    
      ) 
      plot.add(
        domain: (-0.999, 1.99),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = display(1/(x^2 - x -2))$],                  
        x => 1/(x * x - x - 2),
        samples: 200    
      )
      plot.add(
        domain: (2.001, 4),  
        style: (stroke: (paint: accent.mat)),                           
        x => 1/(x * x - x - 2),
        samples: 200    
      )

      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -3.2, 
        max: 3.2, 
        2
      )
      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -3.2, 
        max: 3.2, 
        -1
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare30>
]

#let grafico_costruibile_elementare31 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 4.4),
      x-min: -2.2, x-max: 3.2,
      y-min: -0.2, y-max: 3.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, -1.001),  
        style: (stroke: (paint: accent.mat)),                           
        x => calc.pow(calc.e, 1/(x * x - x - 2)),
        samples: 200    
      ) 
      plot.add(
        domain: (-0.999, 1.99),  
        style: (stroke: (paint: accent.mat)), 
        label: [$h(x) = e^(f(x))$],                  
        x => calc.pow(calc.e, 1/(x * x - x - 2)),
        samples: 200    
      )
      plot.add(
        domain: (2.001, 4),  
        style: (stroke: (paint: accent.mat)),                           
        x => calc.pow(calc.e, 1/(x * x - x - 2)),
        samples: 200    
      )

      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -0.2, 
        max: 3.2, 
        2
      )
      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -0.2, 
        max: 3.2, 
        -1
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare31>
]

#let grafici_costruibili10 = [
  #align(center)[
    #grid(columns: 3, column-gutter: 0.5em)[#grafico_costruibile_elementare30][#grafico_costruibile_elementare31]
    
  ]
]

#let grafico_costruibile_elementare32 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (3.2 * calc.pi, 5.2),
      axis-style: "school-book",
      x-tick-step: calc.pi/2,      
        y-tick-step: 1,      
        x-min: -1.6 * calc.pi, x-max: 1.6 * calc.pi,
        y-min: -1.6, y-max: 3.6,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        x-format: plot.formats.multiple-of,
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (- 2 * calc.pi, 2 * calc.pi),  
        style: (stroke: (paint: accent.mat)),
        label: [$g(x) = sin(x)$],                            
        x => calc.sin(x),
        samples: 200    
      ) 
      plot.add(
        domain: (-2 * calc.pi, 2 * calc.pi),  
        style: (stroke: (paint: accent.mat.lighten(50%))),
        label: [$f(x) = sin x + sqrt(3) cos x + 1$],                            
        x => calc.sin(x) + calc.sqrt(3) * calc.cos(x) + 1,
        samples: 200    
      ) 
        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare32>
]

#let grafico_costruibile_elementare33 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4, 4.4),
      x-min: -4.2, x-max: 3.2,
      y-min: -2.2, y-max: 2.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, -0.499),  
        style: (stroke: (paint: accent.mat)),
        label: [$f(x) = display((x - 1)/(2x + 1))$],                            
        x => (x - 1)/(2 * x + 1),
        samples: 200    
      ) 
      plot.add(
        domain: (-0.501, 3),  
        style: (stroke: (paint: accent.mat)),                          
        x => (x - 1)/(2 * x + 1),
        samples: 200    
      ) 
      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => -x,
        samples: 200    
      ) 
      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => x + 1,
        samples: 200    
      )
      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => 1/2,
        samples: 200    
      )
      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -2.2, 
        max: 2.2, 
        -1/2
      )

        
        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare33>
]

#let grafico_costruibile_elementare34 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (10.4 * 0.7, 7.4 * 0.7),
      x-min: -3.2, x-max: 7.2,
      y-min: -1.2, y-max: 6.2,
      x-tick-step: 2, y-tick-step: 2,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 1.99),  
        style: (stroke: (paint: accent.mat)),
        label: [$f(x) = display((x^2 - x - 1)/(x - 2))$],                            
        x => (x * x - x - 1)/(x - 2),
        samples: 200    
      ) 
      plot.add(
        domain: (2.001, 6),  
        style: (stroke: (paint: accent.mat)),                          
        x => (x * x - x - 1)/(x - 2),
        samples: 200    
      ) 
      plot.add(
        domain: (-3, 7),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => ((1 - calc.sqrt(2)) * x + 1 + 2 * calc.sqrt(2)),
        samples: 200    
      ) 
      plot.add(
        domain: (-3, 7),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => ((1 + calc.sqrt(2)) * x + 1 - 2 * calc.sqrt(2)),
        samples: 200    
      ) 
      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -1.2, 
        max: 6.2, 
        2
      )

        
        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare34>
]

#let grafico_costruibile_elementare35 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (8.4, 4.4),
      x-min: -4.2, x-max: 4.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, -1.001),  
        style: (stroke: (paint: accent.mat)),
        label: [$f(x) = sqrt(x^2 - 1)$],                            
        x => calc.sqrt(x * x - 1),
        samples: 200    
      ) 
      plot.add(
        domain: (1.001, 4),  
        style: (stroke: (paint: accent.mat)),
        x => calc.sqrt(x * x - 1),
        samples: 200    
      ) 
      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => x,   
      ) 
      plot.add(
        domain: (-4, 4),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => -x,   
      ) 


        
        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare35>
]

#let grafico_costruibile_elementare36 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (12.4 * 0.7, 5.4 * 0.7),
      x-min: -2.2, x-max: 10.2,
      y-min: -0.2, y-max: 5.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-4, 10),  
        style: (stroke: (paint: accent.mat)),
        label: [$f(x) = sqrt(|x^2 - 8x + 7|)$],                            
        x => calc.sqrt(calc.abs(x * x - 8 * x + 7)),
        samples: 300    
      ) 
      plot.add(
        domain: (-4, 10),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => x - 4,   
      ) 
      plot.add(
        domain: (-4, 4.2),  
        style: (stroke: (paint: accent.mat, dash: "dotted")),                          
        x => -x + 4,   
      ) 


        
        
      }, 
    )
  }),
  caption: [],
) <grafico_costruibile_elementare36>
]