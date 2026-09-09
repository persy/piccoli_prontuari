#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/ctz-euclide:0.2.0": *
#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

//==========

#let grafico_affinita = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      scale(0.9)

      // assi
      line((-3, 0), (5.5, 0), mark: (end: "stealth", fill: black), stroke: (thickness: 0.75pt))
      line((0, -1.8), (0, 5.2), mark: (end: "stealth", fill: black), stroke: (thickness: 0.75pt))

      // tacche x
      for x in range(-2, 6) {
        line((x, -0.06), (x, 0.06))
      }

      // tacche y
      for y in range(-1, 6) {
        line((-0.06, y), (0.06, y))
      }

      // etichette assi
      content((-2, -0.3), [$-2$])
      content((-1, -0.3), [$-1$])
      content((0.12, -0.35), [$0$])
      content((1, -0.3), [$1$])
      content((2, -0.3), [$2$])
      content((3, -0.3), [$3$])
      content((4, -0.3), [$4$])
      content((5, -0.3), [$5$])

      content((-0.35, -1), [$-1$])
      content((-0.35, 1), [$1$])
      content((-0.35, 2), [$2$])
      content((-0.35, 3), [$3$])
      content((-0.35, 4), [$4$])
      content((-0.35, 5), [$5$])

      // punti
      let P1  = (0, 0)
      let P1p = (2, 1)

      let P2  = (1, -1)
      let P2p = (4, 3.8)

      let P3  = (-1, 2)
      let P3p = (1, 4.4)

      // curve P1 -> P1'
      bezier(
        P1,
        P1p,
        (0.6, 0.7),
        (1.4, 1.15),
        stroke: (paint: accent.mat, dash: "dotted")
      )

      // curve P2 -> P2'
      bezier(
        P2,
        P2p,
        (2.1, -1.05),
        (3.8, 0.2),
        stroke: (paint: accent.mat, dash: "dotted")
      )

      // curve P3 -> P3'
      bezier(
        P3,
        P3p,
        (-0.95, 3.5),
        (-0.1, 4.35),
        stroke: (paint: accent.mat, dash: "dotted")
      )

      // punti
      circle(P1, radius: 0.05, fill: accent.mat, stroke: none)
      circle(P1p, radius: 0.05, fill: accent.mat, stroke: none)

      circle(P2, radius: 0.05, fill: accent.mat, stroke: none)
      circle(P2p, radius: 0.05, fill: accent.mat, stroke: none)

      circle(P3, radius: 0.05, fill: accent.mat, stroke: none)
      circle(P3p, radius: 0.05, fill: accent.mat, stroke: none)

      // etichette
      content((-0.25, 0.25), [$P_1$])
      content((2.3, 1.05), [$P'_1$])

      content((0.85, -1.35), [$P_2$])
      content((4.08, 4.1), [$P'_2$])

      content((-1.29, 2.05), [$P_3$])
      content((1.05, 4.75), [$P'_3$])
    }),
    caption: [],
  ) <grafico_affinita>
]

#let grafico_affinita_ellisse = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (7.2, 4.2),

        x-min: -2.4,
        x-max: 4.5,
        y-min: -2.0,
        y-max: 2.4,
        x-tick-step: 1,
        y-tick-step: 1,
        x-label: [$x$],
        y-label: [$y$],
        axis-style: "school-book",

        {

          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(70%)),
            x => (calc.cos(x), calc.sin(x))
          )

          plot.add(
            domain: (0, 2 * calc.pi),
            style: (
              stroke: (
                paint: accent.mat,
                dash: "solid",
                thickness: 0.8pt,
              ),
            ),
            t => (
              1 + calc.sqrt(5) * calc.cos(t),
              calc.sqrt(5) / 5 * calc.cos(t)
                + 3 * calc.sqrt(5) / 5 * calc.sin(t),
            ),
            samples: 150,
          )
        },
      )
    }),
    caption: [],
  ) <grafico_affinita_ellisse>
]

#let grafico_affinita_diretta = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6.4, 4.4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -1.2, x-max: 5.2,
        y-min: -2.2, y-max: 2.2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          
          let A = (-1, 0)
          let B = (2, 0)
          let C = (0, -2)
          let Ai = (-1, -1)
          let Bi = (5, 2)
          let Ci = (3, -2)

          
          //! Necessario per far funzionare cetz-plot
          plot.add(
            domain: (0, 0 ),
            x => 0,
            
          )       
          
                    
          plot.annotate({            
            circle(A, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, 0.3), to: A), $A$)

            circle(B, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, 0.3), to: B), $B$)

            circle(C, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0.3, 0), to: C), $C$)

            circle(Ai, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, -0.3), to: Ai), $A'$)

            circle(Bi, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, 0.3), to: Bi), $B'$)

            circle(Ci, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, -0.3), to: Ci), $C'$)

            line(A, B, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt))
            line(B, C, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt))
            line(C, A, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt))

            line(Ai, Bi, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
            line(Bi, Ci, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
            line(Ci, Ai, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))



        



            

          })
        }
      )
    }),
    caption: [],
  ) <grafico_affinita_diretta>
]

#let grafico_affinita_inversa = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (3.4 * 1.5, 2.4 * 1.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -0.2, x-max: 3.2,
        y-min: -1.2, y-max: 1.2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          
          let A = (0, 0)
          let B = (1, 0)
          let C = (0, 1)
          let Ai = (1, 0)
          let Bi = (3, 1)
          let Ci = (0, -1)

          
          //! Necessario per far funzionare cetz-plot
          plot.add(
            domain: (0, 0 ),
            x => 0,
            
          )       
          
                    
          plot.annotate({            
            circle(A, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, 0.3), to: A), $A$)

            circle(B, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, 0.3), to: B), $B$)

            circle(C, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0.3, 0), to: C), $C$)

            circle(Ai, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, -0.3), to: Ai), $A'$)

            circle(Bi, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, 0.3), to: Bi), $B'$)

            circle(Ci, radius: 1pt, fill: accent.mat, stroke: none)
            content((rel: (0, -0.3), to: Ci), $C'$)

            line(A, B, mark: (end: "stealth", fill: accent.mat, scale: 0.75), stroke: (paint: accent.mat, thickness: 0.75pt))
            line(B, C, mark: (end: "stealth", fill: accent.mat, scale: 0.75), stroke: (paint: accent.mat, thickness: 0.75pt))
            line(C, A, mark: (end: "stealth", fill: accent.mat, scale: 0.75), stroke: (paint: accent.mat, thickness: 0.75pt))

            line(Ai, Bi, mark: (end: "stealth", fill: accent.mat, scale: 0.75), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
            line(Bi, Ci, mark: (end: "stealth", fill: accent.mat, scale: 0.75), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
            line(Ci, Ai, mark: (end: "stealth", fill: accent.mat, scale: 0.75), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))

          })
        }
      )
    }),
    caption: [],
  ) <grafico_affinita_inversa>
]

#let grafico_punto_fisso = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (4.4, 4.4),
        x-min: -0.2, x-max: 1.2,
        y-min: -0.2, y-max: 1.2,
        x-tick-step: 1, y-tick-step: 1,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let x0 = (0.5, 0)
        let y0 = (0, 0.5)
        let x0y0 = (0.5, 0.5)

        plot.add(
          domain: (0, 1),
          style: (stroke: (paint: accent.mat, dash: "solid", thickness: 0.8pt)),
          x => (1 - x) - 3 * ((1 - x) - 0.5) * ((1 - x) - 0.2) * ((1 - x) - 0.8)
        )

        plot.add(
          domain: (-0.5, 1.5),
          style: (stroke: (paint: accent.mat.lighten(50%), dash: "solid", thickness: 0.8pt)),
          x => x
        )

        plot.annotate({   
          circle(x0y0, radius: 0.3pt, fill: accent.mat, stroke: none)         
          circle(x0, radius: 0.3pt, fill: accent.mat, stroke: none)
          content((rel: (0, -0.1), to: x0), $x_0$)
          circle(y0, radius: 0.3pt, fill: accent.mat, stroke: none)
          content((rel: (-0.33, 0), to: y0), $f(x_0) = x_0$)
          
          line((1, 0), (2.33, 0), stroke: (paint: white, thickness: 0.00pt)) //* Linea invisibile, per centrare l'immagine

          line(x0, x0y0, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
          line(y0, x0y0, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
          line((0, 1), (1, 1), stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt, dash: "dotted"))
          line((1, 0), (1, 1), stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt, dash: "dotted"))
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_punto_fisso>
]

#let grafico_rette_unite = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (6.4, 6.4),
        x-min: -4.2, x-max: 4.2,
        y-min: -4.2, y-max: 4.2,
        x-tick-step: 2, y-tick-step: 2,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let P = (-2/3, -1)

        let A = (-2, 3)
        let Ai = (0.2, -3 * 0.2 - 3)

        let B = (2, 2 - 1/3)
        let Bi = (-2, -2 - 1/3)

        plot.add(
          domain: (-4, 4),
          style: (stroke: (paint: accent.mat, dash: "solid", thickness: 0.8pt)),
          x => -3 * x - 3
        )

        plot.add(
          domain: (-4, 4),
          style: (stroke: (paint: accent.mat.lighten(50%), dash: "solid", thickness: 0.8pt)),
          x => x - 1/3
        )

        

        plot.annotate({   
          circle(P, radius: 1.25pt, fill: accent.mat, stroke: none)
          content((rel: (-0.4, 0), to: P), $P$)

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          content((rel: (-0.3, 0), to: A), $A$)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          content((rel: (0.4, 0), to: Ai), $A'$)

          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          content((rel: (0.3, 0), to: B), $B$)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          content((rel: (-0.3, 0), to: Bi), $B'$)

          
         
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_rette_unite>
]

#let grafico_similitudine_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (6.4 * 0.75, 10.4 * 0.75),
        x-min: -2.2, x-max: 4.2,
        y-min: -6.2, y-max: 4.2,
        x-tick-step: 2, y-tick-step: 2,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        //x' = x - 2 * y + 1
        //y' = 2 * x + y

        let A = (-2, -1)
        let B = (-1, -2)
        let C = (1, 0)

        let Ai = (1, -5)
        let Bi = (4, -4)
        let Ci = (2, 2)

        //! Non rimuovere, grafico vuoto per plot
        plot.add(
          domain: (0, 0),          
          x => 0
        )       

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ci, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (-0.3, 0), to: A), $A$)
          content((rel: (0, -0.3), to: B), $B$)
          content((rel: (0, 0.3), to: C), $C$)
          content((rel: (0, -0.3), to: Ai), $A'$)
          content((rel: (0.3, 0), to: Bi), $B'$)
          content((rel: (0, 0.3), to: Ci), $C'$)

          line(A, B, C, A, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Ai, Bi, Ci, Ai, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))

          
         
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_similitudine_triangoli>
]

#let grafico_omotetia_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (7.4 , 6.4 ),
        x-min: -2.2, x-max: 5.2,
        y-min: -2.2, y-max: 4.2,
        x-tick-step: 1, y-tick-step: 1,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {


        let P = (1, 0)
        let M = (2, 2)
        let N = (0, 3)

        let Pi = (3, -2)
        let Mi = (5, 2)
        let Ni = (1, 4)

        let C = (-1, 2)
        
        plot.add(
          domain: (-3, 6), 
          style: (stroke: (paint: accent.mat, dash: "dotted")),           
          x => 2
        ) 
        plot.add(
          domain: (-3, 6), 
          style: (stroke: (paint: accent.mat, dash: "dotted")),           
          x => -x +1
        )
        plot.add(
          domain: (-3, 6), 
          style: (stroke: (paint: accent.mat, dash: "dotted")),           
          x => x + 3
        )       

        plot.annotate({   

          circle(P, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(M, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(N, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Pi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Mi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ni, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (0, -0.3), to: P), $P$)
          content((rel: (0.3, 0.3), to: M), $M$)
          content((rel: (-0.3, 0.3), to: N), $N$)
          content((rel: (0, -0.3), to: Pi), $P'$)
          content((rel: (0.3, 0.3), to: Mi), $M'$)
          content((rel: (0, 0.3), to: Ni), $N'$)
          content((rel: (0, 0.4), to: C), $C$)


          line(P, M, N, P, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Pi, Mi, Ni, Pi, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))

          
         
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_omotetia_triangoli>
]

#let grafico_isometria_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (7.4 , 4.4 ),
        x-min: -3.2, x-max: 4.2,
        y-min: -0.2, y-max: 4.2,
        x-tick-step: 1, y-tick-step: 1,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let A = (-1, 2)
        let B = (-3, 3)
        let C = (0, 4)

        let Ai = (0, 1)
        let Bi = (-3, 0)
        let Ci = (4, 4)

        //! Non rimuovere, grafico vuoto per plot
        plot.add(
          domain: (0, 0),          
          x => 0
        )       

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ci, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (0, -0.3), to: A), $A$)
          content((rel: (-0.3, 0), to: B), $B$)
          content((rel: (0.4, 0), to: C), $C$)
          content((rel: (0.4, 0), to: Ai), $A'$)
          content((rel: (0, 0.4), to: Bi), $B'$)
          content((rel: (0.4, 0), to: Ci), $C'$)

          line(A, B, C, A, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Ai, Bi, Ci, Ai, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))

          
         
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_isometria_triangoli>
]

#let grafico_trasformazione_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (5.4 * 1.2, 3.4 * 1.2),
        x-min: -1.2, x-max: 4.2,
        y-min: -0.2, y-max: 3.2,
        x-tick-step: 1, y-tick-step: 1,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let A = (-1, 1)
        let B = (1, 3)
        let C = (2, 2)

        let Ai = (1, 0)
        let Bi = (3, 2)
        let Ci = (4, 1)

        //! Non rimuovere, grafico vuoto per plot
        plot.add(
          domain: (0, 0),          
          x => 0
        )       

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ci, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (-0.3, 0), to: A), $A$)
          content((rel: (0, 0.3), to: B), $B$)
          content((rel: (0.3, 0), to: C), $C$)
          content((rel: (0, 0.3), to: Ai), $A'$)
          content((rel: (0, 0.3), to: Bi), $B'$)
          content((rel: (0.3, 0), to: Ci), $C'$)

          line(A, B, C, A, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Ai, Bi, Ci, Ai, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))

          line(A, Ai, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
          line(B, Bi, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
          line(C, Ci, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))

          
         
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_trasformazione_triangoli>
]

#let grafico_rotazione_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (5.4, 5.4),
        x-min: -1.2, x-max: 4.2,
        y-min: -0.2, y-max: 5.2,
        x-tick-step: 1, y-tick-step: 1,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let A = (1, 2)
        let B = (2, 4)
        let C = (3, 1)

        let C1 = (1/2, 1)

        let Ai = (0, 2)
        let Bi = (-1, 4)
        let Ci = (2, 3)

        //! Non rimuovere, grafico vuoto per plot
        plot.add(
          domain: (0, 0),          
          x => 0
        )       

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ci, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (-0.3, 0), to: A), $A$)
          content((rel: (0, 0.3), to: B), $B$)
          content((rel: (0.3, 0), to: C), $C$)
          content((rel: (-0.3, -0.3), to: Ai), $A'$)
          content((rel: (-0.3, 0), to: Bi), $B'$)
          content((rel: (0, -0.3), to: Ci), $C'$)

          line(A, B, C, A, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Ai, Bi, Ci, Ai, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))

          circle(C1, radius: 1.25pt, fill: accent.mat, stroke: none)
          content((rel: (0, -0.3), to: C1), $C_1$)

 

          
         
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_rotazione_triangoli>
]


#let grafico_simmetria_assiale_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (6.4, 6.4),
        x-min: -1.2, x-max: 5.2,
        y-min: -0.2, y-max: 6.2,
        x-tick-step: 1, y-tick-step: 1,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let A = (3/2, 1/2)
        let B = (9/2, 1/2)
        let C = (4, 3)

        let Ai = (-1/2, 5/2)
        let Bi = (-1/2, 11/2)
        let Ci = (2, 5)

        plot.add(
          domain: (-2, 4),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),         
          x => x + 1
        )       

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ci, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (-0.3, 0), to: A), $A$)
          content((rel: (0.3, 0), to: B), $B$)
          content((rel: (0, 0.3), to: C), $C$)
          content((rel: (-0.3, -0.3), to: Ai), $A'$)
          content((rel: (-0.15, 0.15), to: Bi), $B'$)
          content((rel: (0.3, 0), to: Ci), $C'$)

          line(A, B, C, A, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Ai, Bi, Ci, Ai, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))

       
         
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_simmetria_assiale_triangoli>
]

#let grafico_glissoriflessione_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (6.4, 6.4),
        x-min: -1.2, x-max: 5.2,
        y-min: -0.2, y-max: 6.2,
        x-tick-step: 1, y-tick-step: 1,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let A = (1, 1/2)
        let B = (9/2, 1/2)
        let C = (3, 5/2)

        let Ai = (1/2, 2)
        let Bi = (1/2, 11/2)
        let Ci = (5/2, 4)

        plot.add(
          domain: (-2, 4),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),         
          x => x + 1
        )       

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ci, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (-0.3, 0), to: A), $A$)
          content((rel: (0.3, 0), to: B), $B$)
          content((rel: (0, 0.3), to: C), $C$)
          content((rel: (-0.3, -0.3), to: Ai), $A'$)
          content((rel: (-0.15, 0.15), to: Bi), $B'$)
          content((rel: (0.3, 0), to: Ci), $C'$)

          line(A, B, C, A, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Ai, Bi, Ci, Ai, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))

       
         
        

          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_glissoriflessione_triangoli>
]

#let grafico_omotetia_rotazione_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (7.4, 6.4),
        x-min: -5.2, x-max: 4.2,
        y-min: -6.2, y-max: 3.2,
        x-tick-step: 2, y-tick-step: 2,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let A = (-2, -1)
        let B = (-1, -2)
        let C = (1, 0)

        let M = (0, 1/2)

        let Ai = (-2 * calc.sqrt(5), (1 - 3 * calc.sqrt(5))/2)
        let Bi = (-calc.sqrt(5) , (1 - 5 * calc.sqrt(5))/2)
        let Ci = (calc.sqrt(5), (1 - calc.sqrt(5))/2)

        let Aii = (1, -5)
        let Bii = (4, -4)
        let Cii = (2, 2)

        plot.add(
          domain: (-6, 6),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),        
          x => 3/4 * x + 1/2
        ) 

        plot.add(
          domain: (-6, 0),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),        
          x => 5/2 * x + 1/2
        )

        plot.add(
          domain: (0, 6),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),        
          x => -1/2 * x + 1/2
        )      

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ci, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Aii, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bii, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Cii, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (-0.3, 0), to: A), $A$)
          content((rel: (0, -0.3), to: B), $B$)
          content((rel: (0.3, 0.3), to: C), $C$)
          content((rel: (-0.3, 0), to: Ai), $A'$)
          content((rel: (0, -0.3), to: Bi), $B'$)
          content((rel: (0.4, 0.1), to: Ci), $C'$)
          content((rel: (0, -0.3), to: Aii), $A''$)
          content((rel: (0, -0.3), to: Bii), $B''$)
          content((rel: (0, 0.3), to: Cii), $C''$)

          line(A, B, C, A, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Ai, Bi, Ci, Ai, stroke: (paint: accent.mat.lighten(40%), thickness: 0.75pt))
          line(Aii, Bii, Cii, Aii, stroke: (paint: accent.mat.lighten(70%), thickness: 0.75pt))

          circle(M, radius: 1.25pt, fill: accent.mat, stroke: none)
          content((rel: (-0.3, 0.2), to: M), $M$)

          arc(M, anchor: "origin", start: -25deg, stop: 36.5deg, radius: 3.6, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt, dash: "dotted"), mark: (end: "stealth", fill: accent.mat.lighten(50%), stroke: none, size: 0.15))
          content((3.9, 1), $alpha$)


          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_omotetia_rotazione_triangoli>
]

#let grafico_rotazione_omotetia_triangoli = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (7.4 * 1.2, 6.4 * 1.2),
        x-min: -5.2, x-max: 4.2,
        y-min: -6.2, y-max: 3.2,
        x-tick-step: 2, y-tick-step: 2,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let A = (-2, -1)
        let B = (-1, -2)
        let C = (1, 0)

        let M = (0, 0.5)

        let s5 = calc.sqrt(5)

        let Aii = (1, -5)
        let Bii = (4, -4)
        let Cii = (2, 2)

        let Ai = (s5 / 5, 0.5 - 11 * s5 / 10)
        let Bi = (4 * s5 / 5, 0.5 - 9 * s5 / 10)
        let Ci = (2 * s5 / 5, 0.5 + 3 * s5 / 10)

        plot.add(
          domain: (-6, 6),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),        
          x => 3/4 * x + 1/2
        ) 

        plot.add(
          domain: (-6, 0),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),        
          x => 5/2 * x + 1/2
        )

        plot.add(
          domain: (0, 6),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),        
          x => -1/2 * x + 1/2
        ) 

        plot.add(
          domain: (0, 6),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),        
          x => -11/2 * x + 1/2
        ) 

        plot.add(
          domain: (0, 6),  
          style: (stroke: (paint: accent.mat, dash: "dotted")),        
          x => -9/8 * x + 1/2
        )      

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ai, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Ci, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Aii, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Bii, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Cii, radius: 1.25pt, fill: accent.mat, stroke: none)

          content((rel: (-0.3, 0), to: A), $A$)
          content((rel: (0, -0.4), to: B), $B$)
          content((rel: (0.3, 0.3), to: C), $C$)
          content((rel: (-0.3, -0.3), to: Ai), $A'$)
          content((rel: (0.3, -0.3), to: Bi), $B'$)
          content((rel: (0, 0.4), to: Ci), $C'$)
          content((rel: (0, -0.3), to: Aii), $A''$)
          content((rel: (0.3, -0.3), to: Bii), $B''$)
          content((rel: (0, 0.3), to: Cii), $C''$)

          line(A, B, C, A, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(Ai, Bi, Ci, Ai, stroke: (paint: accent.mat.lighten(40%), thickness: 0.75pt))
          line(Aii, Bii, Cii, Aii, stroke: (paint: accent.mat.lighten(70%), thickness: 0.75pt))

          circle(M, radius: 1.25pt, fill: accent.mat, stroke: none)
          content((rel: (-0.3, 0.2), to: M), $M$)

          arc(M, anchor: "origin", start: -25deg, stop: 36.5deg, radius: 3.6, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt, dash: "dotted"), mark: (end: "stealth", fill: accent.mat.lighten(50%), stroke: none, size: 0.15))
          content((3.9, 1), $alpha$)


          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_rotazione_omotetia_triangoli>
]



#let grafico_formule_traslazione = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (5.4 * 1.2, 4.4 * 1.2),
        x-min: -0.2, x-max: 5.2,
        y-min: -0.2, y-max: 4.2,
        x-tick-step: none, y-tick-step: none,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let A = (0, 0)
        let B = (2, 2)

        let P = (3, 1)
        let Pi = (5, 3)

        let p = (2, 0)
        let q = (0, 2)

        let x = (3, 0)
        let y = (0, 1)

        let xi = (5, 0)
        let yi = (0, 3)


        plot.add(
          domain: (0, 0),                    
          x => 0
        ) 

             

        plot.annotate({   

          circle(A, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(B, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(P, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Pi, radius: 1.25pt, fill: accent.mat, stroke: none)
          

          line(A, B, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt))
          line(P, Pi, mark: (end: "stealth", fill: accent.mat), stroke: (paint: accent.mat, thickness: 0.75pt))
          line(p, B, q, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
          line(x, P, y, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
          line(xi, Pi, yi, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))

          content((rel: (0, -0.3), to: p), $p$)
          content((rel: (0, -0.3), to: x), $x$)
          content((rel: (0, -0.3), to: xi), $x'$)
          content((rel: (-0.3, 0), to: q), $q$)
          content((rel: (-0.3, 0), to: y), $y$)
          content((rel: (-0.3, 0), to: yi), $y'$)
          content((rel: (-0.3, -0.3), to: P), $P$)
          content((rel: (0.3, 0.3), to: Pi), $P'$)
          

          


          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_formule_traslazione>
]

#let grafico_formule_rotazione = [
    #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(

        size: (6.4 * 1.2, 4.4 * 1.2),
        x-min: -0.2, x-max: 6.2,
        y-min: -0.2, y-max: 4.2,
        x-tick-step: none, y-tick-step: none,
        x-label: [$x$], y-label: [$y$],
        axis-style: "school-book",

        {

        let C = (2, 1)
        let x0 = (2, 0)
        let y0 = (0, 1)
        let y00 = (7, 1)

        let P = (5, 2)
        let x = (5, 0)
        let y = (0, 2)

        let Pi = (2 + calc.sqrt(2), 1 + 2 * calc.sqrt(2))
        let xi = (2 + calc.sqrt(2), 0)
        let yi = (0, 1 + 2 * calc.sqrt(2))



        plot.add(
          domain: (0, 0),                    
          x => 0
        ) 

             

        plot.annotate({   

          circle(C, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(P, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(Pi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(xi, radius: 1.25pt, fill: accent.mat, stroke: none)
          circle(yi, radius: 1.25pt, fill: accent.mat, stroke: none)

          

          line(x0, C, y0, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
          line(x, P, y, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))
          line(xi, Pi, yi, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted"))

          line(C, y00, stroke: (paint: accent.mat, thickness: 0.75pt, dash: "dotted")) // prolungamento



          line(C, P, stroke: (paint: accent.mat, thickness: 0.75pt))
          line(C, Pi, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt))


          content((rel: (-0.3, -0.3), to: C), $C$)
          content((rel: (0.3,0), to: P), $P$)
          content((rel: (0, 0.3), to: Pi), $P'$)
          content((rel: (0, -0.3), to: x0), $x_0$)
          content((rel: (-0.3, 0), to: y0), $y_0$)
          content((rel: (0, -0.3), to: x), $x$)
          content((rel: (-0.3, 0), to: y), $y$)
          content((rel: (0, -0.3), to: xi), $x'$)
          content((rel: (-0.3, 0), to: yi), $y'$)

          arc(C, anchor: "origin", start: 18.5deg, delta: 45deg, radius: 3.16, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt, dash: "dotted"), mark: (end: "stealth", fill: accent.mat.lighten(50%), stroke: none, size: 0.15))
          content((4.2, 2.9), $alpha$)

          arc(C, anchor: "origin", start: 0deg, delta: 18.5deg, radius: 1.8, stroke: (paint: accent.mat.lighten(50%), thickness: 0.75pt, dash: "dotted"), mark: (end: "stealth", fill: accent.mat.lighten(50%), stroke: none, size: 0.15))
          content((4, 1.25), $beta$)

          


          })
          
        }, 
      )
    }),
    caption: [],
  ) <grafico_formule_rotazione>
]