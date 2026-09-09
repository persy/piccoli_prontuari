#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

#let grafico_limiti1 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 0.8, 2.4 * 0.8),
      x-min: -3.2, x-max: 3.2,
      y-min: -1.2, y-max: 1.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-5, -0.001),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x/(|x|)$],                  
        x => x/calc.abs(x),
        samples: 100
      ) 

      plot.add(
        domain: (0.001, 5),  
        style: (stroke: (paint: accent.mat)), 
        x => x/calc.abs(x),
        samples: 100
      )

        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti1>
]

#let grafico_limiti2 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 0.8, 2.4 * 0.8),
      x-min: -3.2, x-max: 3.2,
      y-min: -1.2, y-max: 3.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-5, -0.001),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = (x^2 + x)/(|x|)$],                  
        x => (x * x + x)/calc.abs(x),
        samples: 100
      ) 

      plot.add(
        domain: (0.001, 5),  
        style: (stroke: (paint: accent.mat)), 
        x => (x * x + x)/calc.abs(x),
        samples: 100
      )

        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti2>
]

#let grafico_limiti3 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 0.8, 2.4 * 0.8),
      x-min: -0.6, x-max: 0.6,
      y-min: -1.2, y-max: 1.2,
      x-tick-step: 0.2, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-5, -0.01),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = sin(1/x)$],                  
        x => calc.sin(1/x),
        samples: 350
      ) 

      plot.add(
        domain: (0.01, 5),  
        style: (stroke: (paint: accent.mat)), 
        x => calc.sin(1/x),
        samples: 350
      )

        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti3>
]

#let grafico_limiti4 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 0.8, 2.4 * 0.8),
      x-min: -0.7, x-max: 0.7,
      y-min: -1.2, y-max: 1.2,
      x-tick-step: 0.2, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-5, -0.01),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x sin(1/x)$],                  
        x => x * calc.sin(1/x),
        samples: 350
      ) 

      plot.add(
        domain: (0.01, 5),  
        style: (stroke: (paint: accent.mat)), 
        x => x * calc.sin(1/x),
        samples: 350
      )

        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti4>
]

#let grafico_limiti5 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 0.8, 6.4 * 0.8),
      x-min: -3.2, x-max: 3.2,
      y-min: -3.2, y-max: 3.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-5, -0.01),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = 1/x$],                  
        x => 1/x,
        samples: 350
      ) 

      plot.add(
        domain: (0.01, 5),  
        style: (stroke: (paint: accent.mat)), 
        x => 1/x,
        samples: 350
      )

        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti5>
]

#let grafico_limiti6 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 0.8, 6.4 * 0.8),
      x-min: -1.2, x-max: 1.2,
      y-min: -200.2, y-max: 200.2,
      x-tick-step: 1, y-tick-step: 50,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-2, -0.001),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = 1/(x sin(1/x))$],                  
        x => 1/(x * calc.sin(1/x)),
        samples: 250
      ) 

      plot.add(
        domain: (0.001, 2),  
        style: (stroke: (paint: accent.mat)), 
        x => 1/(x * calc.sin(1/x)),
        samples: 250
      )

        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti6>
]

#let grafici_limiti1 = [
  #align(center)[#grid(columns: 2, column-gutter: 0.5em, row-gutter: 1em)[#grafico_limiti1][#grafico_limiti2][#grafico_limiti3][#grafico_limiti4][#grafico_limiti5][#grafico_limiti6]]
]

#let grafico_limiti7 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 1.2, 2.4 * 1.2),
      x-min: -1.2, x-max: 5.2,
      y-min: -1.2, y-max: 1.2,
      x-tick-step: 2, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      let c = 0.35
      let d = 3.7
      let a = (c - 1)/(c + 1)
      let b = (d - 1)/(d + 1)

      plot.add(
        domain: (-0.99, 10),  
        style: (stroke: (paint: accent.mat)), 
        x => (x - 1)/(x + 1),
        samples: 150
      ) 
      plot.add(
        domain: (-2, 10),  
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        x => 1,
        samples: 150
      ) 

      plot.annotate({
            circle((c, 0), radius: 1pt, fill: accent.mat, stroke: none)
            circle((d, 0), radius: 1pt, fill: accent.mat, stroke: none)
            circle((0, a), radius: 1pt, fill: accent.mat, stroke: none)
            circle((0, b), radius: 1pt, fill: accent.mat, stroke: none)
            content((0, a), [$a$], anchor: "east", padding: 3pt)
            content((0, b), [$b$], anchor: "east", padding: 3pt)
            content((c, 0), [$c$], anchor: "south", padding: 3pt)
            content((d, 0), [$d$], anchor: "north", padding: 3pt)

            

          

            line(
              (c, 0), (c, a), (0, a), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, mark: (start: "stealth", fill: accent.mat, size: 0.05, stroke: none)
            )
            line(
              (d, 0), (d, b), (0, b), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt, mark: (start: "stealth", fill: accent.mat, size: 0.05, stroke: none)
            )
            line(
              (c, 0), (d, 0), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )
            line(
              (0, a), (0, b), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )
                       
          })

  
        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti7>
]

#let grafico_limiti8 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

      let a1 = 1 
      let b1 = 2 
      let c1 = 2.3
      let d1 = 3.9 


      let a2 = 2.3 
      let b2 = 3.3
      let c2 = 1
      let d2 = 3.4

      let m1 = (a1 + b1)/2
      let m2 = (a2 + b2)/2 
      let m3 = (c1 + d1)/2 
      let m4 = (c2 + d2)/2 
      let m5 = (c1 + d2)/2

    plot.plot(

      size: (4.4, 4.4),
      x-min: -0.2, x-max: 4.2,
      y-min: -0.2, y-max: 4.2,
      x-tick-step: none, y-tick-step: none,
      x-ticks: ((m5, $x_0$),), y-ticks: ((m1, $U_1$), (m2, $U_2$)),
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      //! non rimuovere 
      plot.add(
        domain: (0, 0),           
        x => 0,        
      ) 

      plot.annotate({            
            content((0, a1), [], anchor: "east", padding: 3pt)
            content((0, b1), [], anchor: "east", padding: 3pt)
            content((c1, 0), [], anchor: "north", padding: 3pt)
            content((d1, 0), [], anchor: "north", padding: 3pt)

            line((c1, a1), (d1, a1), (d1, b1), (c1, b1), (c1, a1), fill: accent.mat.transparentize(70%), stroke: accent.mat.lighten(20%))        

            line(
              (c1, 0), (c1, a1), (0, a1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt
            )
            line(
              (d1, 0), (d1, b1), (0, b1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (c1, 0 + 0.03), (d1, 0 + 0.03), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )
            line(
              (0, a1), (0, b1), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )

            //
            content((0, a2), [], anchor: "east", padding: 3pt)
            content((0, b2), [], anchor: "east", padding: 3pt)
            content((c2, 0), [], anchor: "north", padding: 3pt)
            content((d2, 0), [], anchor: "north", padding: 3pt)

            line((c2, a2), (d2, a2), (d2, b2), (c2, b2), (c2, a2), fill: accent.mat.transparentize(70%), stroke: accent.mat.lighten(20%))        

            line(
              (c2, 0), (c2, a2), (0, a2), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt
            )
            line(
              (d2, 0), (d2, b2), (0, b2), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (c2, 0 - 0.03), (d2, 0 - 0.03), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )
            line(
              (0, a2), (0, b2), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )

            content((0, m1), [$l_1$], anchor: "west", padding: 5pt)
            content((0, m2), [$l_2$], anchor: "west", padding: 5pt)
            content((m3, 0), [$I_1$], anchor: "south", padding: 3pt)
            content((m4, 0), [$I_2$], anchor: "north", padding: 3pt)

     
                       
          })

  
        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti8>
]

#let grafico_limiti9 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

      let a1 = 0.9 
      let b1 = 2.3 
      let c1 = 1.3
      let d1 = 3.9 


      let a2 = 2.3 
      let b2 = 3.3
      let c2 = 1
      let d2 = 3.4

      let m1 = (a1 + b1)/2
      let m2 = (a2 + b2)/2 
      let m3 = (c1 + d1)/2 

    plot.plot(

      size: (4.4, 2.4),
      x-min: -0.2, x-max: 4.2,
      y-min: -0.2, y-max: 2.2,
      x-tick-step: none, y-tick-step: none,
      x-ticks: ((m3, $x_0$),), y-ticks: ((m1, $l$),),
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      //! non rimuovere 
      plot.add(
        domain: (0, 0),           
        x => 0,        
      ) 

      plot.annotate({            
            content((0, a1), [], anchor: "east", padding: 3pt)
            content((0, b1), [], anchor: "east", padding: 3pt)
            content((c1, 0), [], anchor: "north", padding: 3pt)
            content((d1, 0), [], anchor: "north", padding: 3pt)

            line((c1, a1), (d1, a1), (d1, b1), (c1, b1), (c1, a1), fill: accent.mat.transparentize(70%), stroke: accent.mat.lighten(20%))        

            line(
              (c1, 0), (c1, a1), (0, a1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt
            )
            line(
              (d1, 0), (d1, b1), (0, b1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (c1, 0 + 0.03), (d1, 0 + 0.03), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )
            line(
              (0, a1), (0, b1), stroke: (paint: accent.mat.lighten(30%)), thickness: 1pt,
            )

            content((0, m1), [$U_l$], anchor: "west", padding: 5pt)
            content((m3, 0), [$I$], anchor: "south", padding: 5pt)

     
                       
          })

  
        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti9>
]

#let grafico_limiti10 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (4.4 , 2.4),
      x-min: -2.2, x-max: 2.2,
      y-min: -1.2, y-max: 1.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (-5, 0),  
        style: (stroke: (paint: accent.mat)), 
        x => -1,
        samples: 100
      ) 

      plot.annotate({            
          circle((0, -1), radius: 1.3pt, fill: white, stroke: (paint: accent.mat, thickness: 0.5pt))
          circle((0, 0), radius: 1.3pt, fill: accent.mat, stroke: (paint: accent.mat, thickness: 0.5pt))

     
                       
          })


        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti10>
]

#let grafico_limiti11 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4 * 0.8, 5.4 * 0.8),
      x-min: -0.2, x-max: 5.2,
      y-min: -0.2, y-max: 5.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0, 1),  
        style: (stroke: (paint: accent.mat)), 
        x => 2 * x,
        samples: 100
      ) 
      plot.add(
        domain: (3, 5),  
        style: (stroke: (paint: accent.mat)), 
        x => x/2 + 1/2,
        samples: 100
      )
      plot.add(
        domain: (0, 6),  
        style: (stroke: (paint: accent.mat, dash: "dashed", thickness: 0.5pt)), 
        x => x,
        samples: 100
      )

      plot.annotate({            
          circle((1, 2), radius: 1pt, fill: accent.mat, stroke: (paint: accent.mat, thickness: 0.5pt))
          circle((5, 3), radius: 1pt, fill: accent.mat, stroke: (paint: accent.mat, thickness: 0.5pt))

          line((1, 2), (1, 0), stroke: (paint: accent.mat, dash: "dotted"))
          line((3, 2), (3, 0), stroke: (paint: accent.mat, dash: "dotted"))
          line((5, 3), (5, 0), stroke: (paint: accent.mat, dash: "dotted"))

          line((0, 0), (1, 0), stroke: (paint: accent.mat.lighten(50%), thickness: 1.25pt))
          line((3, 0), (5, 0), stroke: (paint: accent.mat.lighten(50%), thickness: 1.25pt))


     
                       
          })


        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti11>
]

#let grafico_limiti12 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (5.4 * 0.8, 5.4 * 0.8),
      x-min: -0.2, x-max: 5.2,
      y-min: -0.2, y-max: 5.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0, 2),  
        style: (stroke: (paint: accent.mat)), 
        x => 1/2 * x,
        samples: 100
      ) 
      plot.add(
        domain: (2, 3),  
        style: (stroke: (paint: accent.mat)), 
        x => 2 * x - 1,
        samples: 100
      )
      plot.add(
        domain: (0, 6),  
        style: (stroke: (paint: accent.mat, dash: "dashed", thickness: 0.5pt)), 
        x => x,
        samples: 100
      )

      plot.annotate({            
          circle((2, 1), radius: 1pt, fill: accent.mat, stroke: (paint: accent.mat, thickness: 0.5pt))
          circle((3, 5), radius: 1pt, fill: accent.mat, stroke: (paint: accent.mat, thickness: 0.5pt))

          line((2, 3), (2, 0), stroke: (paint: accent.mat, dash: "dotted"))
          line((3, 5), (3, 0), stroke: (paint: accent.mat, dash: "dotted"))

          line((0, 0), (3, 0), stroke: (paint: accent.mat.lighten(50%), thickness: 1.25pt))
     
                       
          })


        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti12>
]

#let grafici_limiti2 = [
  #align(center)[#grid(columns: 2, column-gutter: 0.5em, row-gutter: 1em)[#grafico_limiti11][#grafico_limiti12]]
]

#let grafico_limiti13 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 0.8, 6.4 * 0.8),
      x-min: -2.2, x-max: 4.2,
      y-min: -2.2, y-max: 4.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      plot.add(
        domain: (0, 4),  
        style: (stroke: (paint: accent.mat)), 
        label: [$f(x) = x^2$],
        x => x * x,
        samples: 100
      ) 
      plot.add(
        domain: (-4, 0),  
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        x => x * x,
        samples: 100
      )
      plot.add(
        domain: (0, 6),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        x => calc.sqrt(x),
        label: [$g(x) = sqrt(x)$],
        samples: 100
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti13>
]


#let grafico_limiti14 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (6.4 * 0.8, 6.4 * 0.8),
      x-min: -2.2, x-max: 4.2,
      y-min: -3.2, y-max: 3.2,
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
        label: [$f(x) = x^3$],
        x => x * x * x,
        samples: 100
      ) 
      plot.add(
        domain: (-4, 6),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        x => calc.root(x, 3),
        label: [$g(x) = root(3, x)$],
        samples: 100
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti14>
]

#let grafici_limiti3 = [
  #align(center)[#grid(columns: 2, column-gutter: 0.5em, row-gutter: 1em)[#grafico_limiti13][#grafico_limiti14]]
]

#let grafico_limiti15 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(

      size: (7.4, 7.4 * 0.8),
      x-min: -3.2, x-max: 3.2,
      y-min: -2.2, y-max: 5.2,
      x-tick-step: 1, y-tick-step: 1,
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "inner-north-west",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.25, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      let a1 = 1
      let a2 = 1/2
      let a3 = -1/4
      let a4 = -1/2

      plot.add(
        domain: (-4, 1),  
        style: (stroke: (paint: accent.mat)),         
        x => x + 1,        
      ) 
      plot.add(
        domain: (1, 4),  
        style: (stroke: (paint: accent.mat.lighten(10%))), 
        x => 3 - 2 * a1 * x * x,
        label: [$a = 1$],
        samples: 100
      )
      plot.add(
        domain: (1, 4),  
        style: (stroke: (paint: accent.mat.lighten(30%))), 
        x => 3 - 2 * a2 * x * x,
        label: [$a = 1/2$],
        samples: 100
      )
      plot.add(
        domain: (1, 4),  
        style: (stroke: (paint: accent.mat.lighten(50%))), 
        x => 3 - 2 * a3 * x * x,
        label: [$a = -1/4$],
        samples: 100
      )
      plot.add(
        domain: (1, 4),  
        style: (stroke: (paint: accent.mat.lighten(70%))), 
        x => 3 - 2 * a4 * x * x,
        label: [$a = -1/2$],
        samples: 100
      )
      plot.add-vline(
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
        min: -2.2, 
        max: 5.2, 
        1
      )


        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti15>
]

#let grafico_limiti16 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    set-style(axes: (shared-zero: false, stroke: (thickness: 0.8pt)))

      let a1 = 1 
      let b1 = 2.3 
      let c1 = 1.3
      let d1 = 3.2 

      let a2 = 2.3 
      let b2 = 3.3
      let c2 = 1
      let d2 = 3.4

      let m1 = (a1 + b1)/2
      let m2 = (a2 + b2)/2 
      let m3 = (c1 + d1)/2 
      let m4 = (c2 + d2)/2 
      let m5 = (c1 + d2)/2

    plot.plot(

      size: (4.4, 3.4),
      x-min: -0.2, x-max: 4.2,
      y-min: -0.2, y-max: 3.2,
      x-tick-step: none, y-tick-step: none,
      x-ticks: ((m5, $x_0$),), y-ticks: ((m1, $l$),),
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      //! non rimuovere 
      plot.add(
        domain: (0, 0),           
        x => 0,        
      ) 

      plot.annotate({            
            content((0, a1), [], anchor: "east", padding: 3pt)
            content((0, b1), [], anchor: "east", padding: 3pt)
            content((c1, 0), [], anchor: "north", padding: 3pt)
            content((d1, 0), [], anchor: "north", padding: 3pt)

            line((c1, a1), (d1, a1), (d1, b1), (c1, b1), (c1, a1), fill: accent.mat.transparentize(70%), stroke: accent.mat.lighten(20%))        

            line(
              (c1, 0), (c1, a1), (0, a1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt
            )
            line(
              (d1, 0), (d1, b1), (0, b1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (c1, 0), (d1, 0), stroke: (paint: accent.mat.lighten(30%), thickness: 1.5pt),
            )
            line(
              (0, a1), (0, b1), stroke: (paint: accent.mat.lighten(30%), thickness: 1.5pt,)
            )



            content((0, a1), [$l - epsilon$], anchor: "east", padding: 5pt)
            content((0, b1), [$l + epsilon$], anchor: "east", padding: 5pt)

     
                       
          })

  
        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti16>
]

#let grafico_limiti17 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

    set-style(axes: (shared-zero: false, stroke: (thickness: 0.8pt)))

      let a1 = 1 
      let b1 = 2.3 
      let c1 = 1.3
      let d1 = 3.2 

      let a2 = -1 
      let b2 = -2.3
      let c2 = 1.3
      let d2 = 3.2

      let m1 = (a1 + b1)/2
      let m2 = (a2 + b2)/2 
      let m3 = (c1 + d1)/2 
      let m4 = (c2 + d2)/2 
      let m5 = (c1 + d2)/2

    plot.plot(

      size: (4.4, 6.4),
      x-min: -0.2, x-max: 4.2,
      y-min: -3.2, y-max: 3.2,
      x-tick-step: none, y-tick-step: none,
      x-ticks: ((m5, $x_0$),), y-ticks: ((m1, $-l$), (m2, $l$),),
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      //! non rimuovere 
      plot.add(
        domain: (0, 0),           
        x => 0,        
      ) 

      plot.annotate({            
            content((0, a1), [], anchor: "east", padding: 3pt)
            content((0, b1), [], anchor: "east", padding: 3pt)
            content((c1, 0), [], anchor: "north", padding: 3pt)
            content((d1, 0), [], anchor: "north", padding: 3pt)

            line((c1, a1), (d1, a1), (d1, b1), (c1, b1), (c1, a1), fill: accent.mat.transparentize(70%), stroke: accent.mat.lighten(20%))        

            line(
              (c1, 0), (c1, a1), (0, a1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt
            )
            line(
              (d1, 0), (d1, b1), (0, b1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (c1, 0), (d1, 0), stroke: (paint: accent.mat.lighten(30%), thickness: 1.5pt,)
            )
            line(
              (0, a1), (0, b1), stroke: (paint: accent.mat.lighten(30%), thickness: 1.5pt,)
            )

            content((0, a2), [], anchor: "east", padding: 3pt)
            content((0, b2), [], anchor: "east", padding: 3pt)
            content((c2, 0), [], anchor: "north", padding: 3pt)
            content((d2, 0), [], anchor: "north", padding: 3pt)

            line((c2, a2), (d2, a2), (d2, b2), (c2, b2), (c2, a2), fill: accent.mat.transparentize(70%), stroke: accent.mat.lighten(20%))        

            line(
              (c2, 0), (c2, a2), (0, a2), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt
            )
            line(
              (d2, 0), (d2, b2), (0, b2), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )           
            line(
              (0, a2), (0, b2), stroke: (paint: accent.mat.lighten(30%), thickness: 1.5pt,)
            )



            content((0, a1), [$-l - epsilon$], anchor: "east", padding: 5pt)
            content((0, b1), [$-l + epsilon$], anchor: "east", padding: 5pt)
            content((0, a2), [$l + epsilon$], anchor: "east", padding: 5pt)
            content((0, b2), [$l - epsilon$], anchor: "east", padding: 5pt)

            arc((-0.6, 0), anchor: "origin", start: -60deg, stop: 60deg, radius: 1.75, stroke: (paint: accent.mat, thickness: 0.75pt), mark: (end: "stealth", fill: accent.mat, stroke: none, size: 0.15))

     
                       
          })

  
        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti17>
]

#let grafico_limiti18 = [
#figure(
  cetz.canvas({
    import cetz.draw: *

      let a1 = -0.75 
      let b1 = 0.75 
      let c1 = 1.3
      let d1 = 3.2 

      let a2 = 0 
      let b2 = 0.75
      let c2 = 1.3
      let d2 = 3.2

      let m1 = (a1 + b1)/2
      let m2 = (a2 + b2)/2 
      let m3 = (c1 + d1)/2 
      let m4 = (c2 + d2)/2 
      let m5 = (c1 + d2)/2

    set-style(axes: (shared-zero: false, stroke: (thickness: 0.8pt)))

    plot.plot(

      size: (4.4, 3.6),
      x-min: -0.2, x-max: 4.2,
      y-min: -1.8, y-max: 1.8,
      x-tick-step: none, y-tick-step: none,
      x-ticks: ((m5, $x_0$),), y-ticks: ((m1, $-l = 0 space$),),
      x-label: [$x$], y-label: [$y$],
      axis-style: "school-book",
      legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,

      {

      //! non rimuovere 
      plot.add(
        domain: (0, 0),           
        x => 0,        
      ) 

      plot.annotate({            
            content((0, a1), [], anchor: "east", padding: 3pt)
            content((0, b1), [], anchor: "east", padding: 3pt)
            content((c1, 0), [], anchor: "north", padding: 3pt)
            content((d1, 0), [], anchor: "north", padding: 3pt)

            line((c1, a1), (d1, a1), (d1, b1), (c1, b1), (c1, a1), fill: accent.mat.transparentize(70%), stroke: accent.mat.lighten(20%))        

            line(
              (c1, 0), (c1, a1), (0, a1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt
            )
            line(
              (d1, 0), (d1, b1), (0, b1), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )
            line(
              (c1, 0), (d1, 0), stroke: (paint: accent.mat.lighten(30%), thickness: 1.5pt,)
            )
            line(
              (0, a1), (0, b1), stroke: (paint: accent.mat.lighten(30%), thickness: 1.5pt,)
            )

            content((0, a2), [], anchor: "east", padding: 3pt)
            content((0, b2), [], anchor: "east", padding: 3pt)
            content((c2, 0), [], anchor: "north", padding: 3pt)
            content((d2, 0), [], anchor: "north", padding: 3pt)

            line((c2, a2), (d2, a2), (d2, b2), (c2, b2), (c2, a2), fill: accent.mat.transparentize(70%), stroke: accent.mat.lighten(20%))        

            line(
              (c2, 0), (c2, a2), (0, a2), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt
            )
            line(
              (d2, 0), (d2, b2), (0, b2), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"), thickness: 1pt,
            )           
            line(
              (0, a2), (0, b2), stroke: (paint: accent.mat.lighten(30%), thickness: 1.5pt,)
            )



            content((0, a1), [$l - epsilon$], anchor: "east", padding: 5pt)
            content((0, b2), [$l + epsilon$], anchor: "east", padding: 5pt)


     
                       
          })

  
        
      }, 
    )
  }),
  caption: [],
) <grafico_limiti18>
]

#let grafico_limiti19 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -0, x-max: 1,
        y-min: -0, y-max: 1,
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
              radius: 1,
              
              
              anchor: "origin", 
              
              stroke: 1pt + accent.mat.lighten(25%)
            )

            circle((1, 0), radius: 0.5pt, fill: accent.mat, stroke: none)
            circle((xP, yP), radius: 0.5pt, fill: accent.mat, stroke: none)
            circle((xT, yT), radius: 0.5pt, fill: accent.mat, stroke: none)
            

            line((xT, yT), (xT, 0), stroke: (paint: accent.mat))
            line((xT, yT), (0, 0), stroke: (paint: accent.mat.lighten(30%), dash: "dotted"))
            line((xP, 0), (xP, yP), stroke: (paint: accent.mat.lighten(50%)))

            content((1, 0), [$A$], anchor: ("south-west"), padding: 0pt)
            content((xT, yT), [$T$], anchor: ("south-west"), padding: 0pt)
            content((xP - 0.57, ((yP + 0)/2)), [$sin x$], anchor: ("west"), padding: 0.1pt)
            content((xT - 0.17, ((yT + 0)/2)), [$tg x$], anchor: ("west"), padding: 0.1pt)
            content((0.75, 0.7), [$x$], anchor: ("west"), padding: 0.1pt)
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_limiti19>
]

#let grafico_limiti20 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (10, 2),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -5, x-max: 5,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          plot.add(
            domain: (-5, 5),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            label: [$f(x) = cos x$],
            x => calc.cos(x)
          ) 
          plot.add(
            domain: (-5, 5),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
            label: [$g(x) = (sin x)/x$],
            x => calc.sin(x)/x
          )




          plot.add(
            domain: (-5, 5),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            label: [$h(x) = 1$],
            x => 1
          )

               
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti20>
]

#let grafico_limiti21 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (10, 2),
        axis-style: "school-book",
        x-tick-step: 10, 
        y-tick-step: 1,      
        x-min: -30, x-max: 30,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-30, 30),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            label: [$f(x) = sin x dot 1/x$],
            x => calc.sin(x) * 1/x,
            samples: 200
          )

               
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti21>
]

#let grafico_limiti22 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: 0, x-max: 4,
        y-min: 0, y-max: 4,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (0, 9),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            label: [$g(x) = x^2$],
            x => x * x,
            samples: 200
          )
          plot.add(
            domain: (0, 9),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
            label: [$f(x) = sqrt(x)$],
            x => calc.sqrt(x),
            samples: 200
          )

               
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti22>
]

#let grafico_limiti23 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 100, 
        y-tick-step: 100,      
        x-min: 0, x-max: 400,
        y-min: 0, y-max: 400,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (0, 400),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            label: [$g(x) = x^2$],
            x => x * x,
            samples: 200
          )
          plot.add(
            domain: (0, 400),
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%))),
            label: [$f(x) = sqrt(x)$],
            x => calc.sqrt(x),
            samples: 200
          )

               
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti23>
]

#let grafici_limiti4 = [
  #align(center)[#grid(columns: 2, column-gutter: 2.5em, row-gutter: 1em)[#grafico_limiti22][#grafico_limiti23]]
]

#let grafico_limiti24 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (10, 6),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -5, x-max: 5,
        y-min: -3, y-max: 3,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-5, 5),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => 1/x,
            samples: 200
          )
              
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti24>
]


#let grafico_limiti25 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (10, 2),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -5, x-max: 5,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-5, 5),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => calc.sin(x)/x,
            samples: 200
          )

          plot.annotate({
            circle((0, 1), radius: 1.5pt, fill: white, stroke: accent.mat)


          })
              
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti25>
]

#let grafico_limiti26 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -4, x-max: 4,
        y-min: -3, y-max: 3,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (0.001, 5),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => x + calc.abs(x)/x,
            samples: 200
          )

          plot.add(
            domain: (-5, -0.001),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => x + calc.abs(x)/x,
            samples: 200
          )

          


              
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti26>
]

#let grafico_limiti27 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -4, x-max: 4,
        y-min: -3, y-max: 3,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (0.001, 5),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => x + calc.abs(x)/x,
            samples: 200
          )

          plot.add(
            domain: (-5, -0.001),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => x + calc.abs(x)/x,
            samples: 200
          )

          plot.annotate({
            circle((0, 0), radius: 1.5pt, fill: accent.mat, stroke: none)


          })


              
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti27>
]

#let grafico_limiti28 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 2),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -4, x-max: 4,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-5, 5),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => 1,
            samples: 200
          )


          plot.annotate({
            circle((0, 1), radius: 1.5pt, fill: white, stroke: accent.mat)


          })


              
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti28>
]

#let grafico_limiti29 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 2),
        axis-style: "school-book",
        x-tick-step: 0.2, 
        y-tick-step: 1,      
        x-min: -0.5, x-max: 0.5,
        y-min: -1, y-max: 1,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-1, -0.01),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => calc.sin(1/x),
            samples: 250
          )

          plot.add(
            domain: (0.01, 1),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => calc.sin(1/x),
            samples: 250
          )



              
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti29>
]

#let grafico_limiti30 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 4),
        axis-style: "school-book",
        x-tick-step: 1, 
        y-tick-step: 1,      
        x-min: -4, x-max: 4,
        y-min: 0, y-max: 4,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-4, -0.01),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => calc.exp(1/x),
            samples: 250
          )

          plot.add(
            domain: (0.01, 4),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => calc.exp(1/x),
            samples: 250
          )



              
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti30>
]

#let grafico_limiti31 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (shared-zero: $O$, stroke: (thickness: 0.75pt), overshoot: 0.5))
      
      plot.plot(
        size: (8, 4),
        axis-style: "school-book",
        x-tick-step: 0.2, 
        y-tick-step: 0.2,      
        x-min: -0.5, x-max: 0.5,
        y-min: -0.25, y-max: 0.25,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        legend: "south",        
        legend-style: (stroke: none, fill: none, padding: 0.25, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        
        {
          
          
          plot.add(
            domain: (-0.5, 0.5),
            style: (stroke: (thickness: 1pt, paint: accent.mat)),
            /* label: [$f(x) = 1/x$], */
            x => x * calc.sin(1/x),
            samples: 500
          )



              
          
        }
      )
    }),
    caption: [],
  ) <grafico_limiti31>
]