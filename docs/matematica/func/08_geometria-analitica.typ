#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart

//===================

#let grafico_non_ortogonale = [
  #figure(
  cetz.canvas({
    import cetz.draw: *

    // Angolo di inclinazione dell'asse delle ordinate
    let ang = 55deg
    let dx = calc.cos(ang)
    let dy = calc.sin(ang)

    // Asse delle ascisse (X)
    line((-2.5, 0), (6.5, 0), mark: (end: ")>", fill: black))
    for i in (-2, -1, 0, 1, 2, 3, 4, 5, 6) {
      line((i, 0.1), (i, -0.1))
      if i != 0 {
        content((i, -0.4), str(i))
      } else {
        content((i + 0.3, -0.3), "0")
      }
    }

    // Asse delle ordinate inclinato (S)
    line((-2.5 * dx, -2.5 * dy), (4.5 * dx, 4.5 * dy), mark: (end: ")>", fill: black))
    for i in (-2, -1, 1, 2, 3, 4) {
      let px = i * dx
      let py = i * dy
      line((px - 0.1 * dy, py + 0.1 * dx), (px + 0.1 * dy, py - 0.1 * dx))
      content((px - 0.4, py + 0.2), str(i))
    }

    // Retta orizzontale passante per s = 1 (fermata a 5.8)
    line((-1.5, 1 * dy), (5.8, 1 * dy), stroke: (paint: accent.mat))

    // Retta inclinata passante per x = 3 (estesa fino a -2)
    line((3 - 2 * dx, -2 * dy), (3 + 3.5 * dx, 3.5 * dy), stroke: (paint: accent.mat))

    // Etichette dei punti
    content((1 * dx + 0.4, 1 * dy - 0.3), $P_s$)
    content((3 - 0.5, 0.4), $P_r$)
    content((3 + 1 * dx - 0.3, 1 * dy + 0.4), $P$)
  }),
caption: []
) <grafico_non_ortogonale>
]

#let grafico_non_monometrico1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 4),
        axis-style: "school-book",
        x-tick-step: 90,      
        y-tick-step: 1,      
        x-min: -45, x-max: 400,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-format: x => str(x) + "°",
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            domain: (-45, 400),        
            style: (stroke: (paint: accent.mat)),             
            x => calc.sin(x * 1deg),
            samples: 200
          )
        }
      )
    }),
    caption: []
  ) <grafico_non_monometrico1>
]

#let grafico_non_monometrico2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 4),
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

        {
          plot.add(
            domain: (-45, 400),        
            style: (stroke: (paint: accent.mat)),             
            x => calc.sin(x * 1deg),
            samples: 200
          )
        }
      )
    }),
    caption: []
  ) <grafico_non_monometrico2>
]

#let grafico_non_monometrico3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 4),
        axis-style: "school-book",
        x-tick-step: calc.pi / 2,      
        y-tick-step: 1,      
        x-min: 0, x-max: 2 * calc.pi + 0.5,
        y-min: -1.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-format: plot.formats.multiple-of,
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            domain: (0, 2 * calc.pi + 0.5),        
            style: (stroke: (paint: accent.mat)),             
            x => calc.sin(x),
            samples: 200
          )
        }
      )
    }),
    caption: []
  ) <grafico_non_monometrico3>
]

#let grafico_baricentro = [#figure(
  cetz.canvas({
      import cetz.draw: *

  let a = (0, 0)
  let b = (6, 0)
  let c = (5, 4)
  
  let m-ab = ((a.at(0) + b.at(0)) / 2, (a.at(1) + b.at(1)) / 2)
  let m-bc = ((b.at(0) + c.at(0)) / 2, (b.at(1) + c.at(1)) / 2)
  let m-ca = ((c.at(0) + a.at(0)) / 2, (c.at(1) + a.at(1)) / 2)

  let g = (
    (a.at(0) + b.at(0) + c.at(0)) / 3,
    (a.at(1) + b.at(1) + c.at(1)) / 3
  )

  
  

      line(a, b, c, close: true, stroke: 1pt + black)

      line(c, m-ab, stroke: 0.5pt + accent.mat)
      line(a, m-bc, stroke: 0.5pt + accent.mat)
      line(b, m-ca, stroke: 0.5pt + accent.mat)

      content(a, [A], anchor: "north-east", padding: 5pt)
      content(b, [B], anchor: "north-west", padding: 5pt)
      content(c, [C], anchor: "south", padding: 5pt)

      content(m-ab, [$M_(A B)$], anchor: "north", padding: 5pt)
      content(m-bc, [$M_(B C)$], anchor: "south-west", padding: 5pt)
      content(m-ca, [$M_(C A)$], anchor: "south-east", padding: 5pt)

      circle(g, radius: 2pt, fill: accent.mat, stroke: none)
      content(g, [G], anchor: "south-west", padding: 5pt)
    }),
    caption: [],
  )
]

#let grafico_triangolo_isoscele_rettangolo = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (4.5, 4.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: 0, x-max: 3.2,
        y-min: 0, y-max: 3.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          // Definizione diretta dei punti come vettori (x, y)
          let a = (1, 1)
          let b = (0, 3)
          let c = (3, 2)

          plot.add(
            (a, b, c, a),
            style: (stroke: 1pt + accent.mat)
          )

          plot.annotate({
            content(a, [A], anchor: "north-east", padding: 1pt)
            content(b, [B], anchor: "south-west", padding: 3pt)
            content(c, [C], anchor: "north-west", padding: 1pt)
            
            // Disegno dell'angolo retto usando l'indice .at()
            line(
              (a.at(0) - 0.1, a.at(1) + 0.2),
              (a.at(0) + 0.1, a.at(1) + 0.3),
              (a.at(0) + 0.2, a.at(1) + 0.1),
              stroke: 0.7pt + accent.mat
            )
          })
        }
      )
    }),
    caption: [],
  ) <grafico_triangolo_isoscele_rettangolo>
]

#let grafico_cerchio_parabola = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2, x-max: 2,
        y-min: -2.5, y-max: 1.5,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          // Determinazione automatica dei punti di intersezione (sistema cerchio-parabola)
          let y_int = (1 - calc.sqrt(5)) / 2
          let p = (-calc.sqrt(-y_int), y_int)
          let p_prime = (calc.sqrt(-y_int), y_int)

          // Disegno della circonferenza (funzione parametrica)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (calc.cos(t), calc.sin(t))
          )

          // Disegno della parabola
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            x => -calc.pow(x, 2)
          )

          // Evidenziazione dei punti calcolati
          plot.annotate({
            circle(p, radius: 1pt, fill: accent.mat, stroke: none)
            circle(p_prime, radius: 1pt, fill: accent.mat, stroke: none)

            content(p, [$P$], anchor: "east", padding: 2pt)
            content(p_prime, [$P'$], anchor: "west", padding: 2pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_cerchio_parabola>
]

#let grafico_traslato1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      set-style(axes: (
        stroke: (paint: gray),
        x: (mark: (end: ")>"), padding: 1),
        y: (mark: (end: ")>"), padding: 1),
        tick: (stroke: gray + .5pt),
        ))


      plot.plot(
        size: (6, 6),
        axis-style: "left",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1, x-max: 3,
        y-min: -1, y-max: 3,
        x-label: [#text(fill: gray)[$x$]],        
        y-label: [#text(fill: gray)[$y$]],    
        x-grid: none,   
        y-grid: none,
        {


          let a = (2, 3)
          let b = (-1, 3)
          let c = (2, -1)

          plot.add(
            (a, b),
            style: (stroke: (dash: "dashed", paint: accent.mat.lighten(20%), thickness: 0.5pt)),
          )
          plot.add(
            (a, c),
            style: (stroke: (dash: "dashed", paint: accent.mat.lighten(20%), thickness: 0.5pt)),
          )

          plot.annotate({
            // Asse x' traslato passante per y = 1
            line((-1.5, .1), (4.2, .1), mark: (end: ")>", fill: black, scale: .6), stroke: 1pt)
            content((4, .1), $x'$, anchor: "north-west", padding: 1pt)

            // Origine O
            circle((-1, -1), radius: 1pt, fill: gray, stroke: gray)
            content((-1, -1), [#text(fill: gray)[$O$]], anchor: "north-east", padding: 1pt)

            // Punto P e proiezioni
            content(a, [$P$], anchor: "south-west", padding: 1pt)
            content(b, [#text(fill: gray)[$y_P$]], anchor: "north-east", padding: 1pt)
            content(c, [#text(fill: gray)[$x_P$]], anchor: "north-east", padding: 1pt)
            circle(a, radius: 1pt, fill: accent.mat, stroke: accent.mat)
            circle(b, radius: 1pt, fill: gray, stroke: gray)
            circle(c, radius: 1pt, fill: gray, stroke: gray)

            // Asse y' traslato passante per x = 1
            line((.1, -1.5), (.1, 4.2), mark: (end: ")>", fill: black, scale: .6), stroke: 1pt)
            content((.1, 4), $y'$, anchor: "south-east", padding: 1pt)

            // Origine traslata O'
            circle((.1, .1), radius: 1pt, fill: black)
            content((.1, .1), $O'$, anchor: "north-east", padding: 1pt)

            // Punti di intersezione
            circle((2, .1), radius: 1pt, fill: black)
            content((2, .1), $x'_P$, anchor: "north-east", padding: 1pt)
            circle((.1, 3), radius: 1pt, fill: black)
            content((.1, 3), $y'_P$, anchor: "north-east", padding: 1pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_traslato1>
]

#let grafico_traslato2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      set-style(axes: (
        stroke: (paint: gray),
        x: (mark: (end: ")>"), padding: 1),
        y: (mark: (end: ")>"), padding: 1),
        tick: (stroke: gray + .5pt),
      ))

          plot.plot(
            size: (6, 5),
            axis-style: none,
            x-tick-step: none,      
            y-tick-step: none,      
            x-min: -2, x-max: 4,
            y-min: -1, y-max: 4,
            x-label: [#text(fill: gray)[$x$]],        
            y-label: [#text(fill: gray)[$y$]],    
            x-grid: none,   
            y-grid: none,


            {
              let p = (3, 2)

              // Proiezioni sul sistema principale O(x,y)
              plot.add(
                (p, (0, 2)),
                style: (stroke: (dash: "dashed", paint: gray.lighten(20%), thickness: 0.5pt)),
              )
              plot.add(
                (p, (3, 0)),
                style: (stroke: (dash: "dashed", paint: gray.lighten(20%), thickness: 0.5pt)),
              )
              // Ramo destro dell'iperbole (ricavato come x = 1 + sqrt(2 + 2(y-1)^2))
              plot.add(
                domain: (-2, 4),
                style: (stroke: 1pt + accent.mat),
                t => (1 + calc.sqrt(2 + 2 * calc.pow(t - 1, 2)), t)
              )

              // Ramo sinistro dell'iperbole (ricavato come x = 1 - sqrt(2 + 2(y-1)^2))
              plot.add(
                domain: (-2, 4),
                style: (stroke: 1pt + accent.mat),
                t => (1 - calc.sqrt(2 + 2 * calc.pow(t - 1, 2)), t)
              )

              plot.annotate({

                // Origine principale O
                circle((0, 0), radius: 1.5pt, fill: gray, stroke: gray)
                content((0, 0), [#text(fill: gray)[$O$]], anchor: "north-east", padding: 3pt)

                // Asse x originale
                line((-1.5, 0), (4.5, 0), mark: (end: ")>", fill: gray, scale: .6), stroke: 0.7pt + gray)
                content((4.5, 0), [#text(fill: gray)[$x$]], anchor: "north-west", padding: 1pt)

                // Asse y originale
                line((0, -1), (0, 4.5), mark: (end: ")>", fill: gray, scale: .6), stroke: 0.7pt + gray)
                content((0, 4.5), [#text(fill: gray)[$y$]], anchor: "south-east", padding: 1pt)

                // Punto P e sue etichette assolute
                content(p, [$P$], anchor: "south-east", padding: 2pt)
                circle(p, radius: 1pt, fill: accent.mat, stroke: accent.mat)
                
                circle((3, 0), radius: 1pt, fill: gray, stroke: gray)
                content((3, 0), [#text(fill: gray)[$x_P$]], anchor: "south-west", padding: 2pt)
                
                circle((0, 2), radius: 1pt, fill: gray, stroke: gray)
                content((0, 2), [#text(fill: gray)[$y_P$]], anchor: "south-west", padding: 2pt)

                // --- SISTEMA TRASLATO IN (1,1) ---
                // Asse x' traslato
                line((-1.5, 1), (4.8, 1), mark: (end: ")>", fill: black, scale: .6), stroke: 1pt)
                content((4.8, 1), $x'$, anchor: "north-west", padding: 1pt)

                // Asse y' traslato
                line((1, -0.5), (1, 4.8), mark: (end: ")>", fill: black, scale: .6), stroke: 1pt)
                content((1, 4.8), $y'$, anchor: "south-east", padding: 1pt)

                // Origine traslata O'
                circle((1, 1), radius: 1.5pt, fill: black)
                content((1, 1), $O'$, anchor: "north-east", padding: 3pt)

                // Proiezioni e coordinate sul sistema traslato
                circle((3, 1), radius: 1pt, fill: black)
                content((3, 1), $x'_P$, anchor: "south-west", padding: 2pt)

                circle((1, 2), radius: 1pt, fill: black)
                content((1, 2), $y'_P$, anchor: "south-west", padding: 2pt)

                // Tratteggi interni al sistema traslato
                line((3, 2), (3, 1), stroke: (dash: "dashed", paint: black, thickness: 0.5pt))
                line((3, 2), (1, 2), stroke: (dash: "dashed", paint: black, thickness: 0.5pt))

                // --- TICKS ASSI ORIGINALI (Grigi) ---
                for i in range(-1, 4) {
                  if i != 0 {
                    // Ticks asse x
                    line((i, -0.05), (i, 0.05), stroke: 0.5pt + gray)
                    content((i, -0.05), [#text(size: 12pt, fill: gray)[#i]], anchor: "north")
                    
                    // Ticks asse y
                    line((-0.05, i), (0.05, i), stroke: 0.5pt + gray)
                    content((-0.05, i), [#text(size: 12pt, fill: gray)[#i]], anchor: "east")
                  }
                }

                // --- TICKS ASSI TRASLATI (Neri, centro in 1,1) ---
                for i in range(-1, 3) {
                  if i != 0 {
                    // Ticks asse x' (traslati in y=1)
                    line((1 + i, 1 - 0.05), (1 + i, 1 + 0.05), stroke: 0.5pt + black)
                    content((1 + i, 1 - 0.05), [#i], anchor: "north")
                    
                    // Ticks asse y' (traslati in x=1)
                    line((1 - 0.05, 1 + i), (1 + 0.05, 1 + i), stroke: 0.5pt + black)
                    content((1 - 0.05, 1 + i), [#i], anchor: "east")
                  }
                }


                

              })
            }
          )
        }),
    caption: [],
  ) <grafico_traslato2>
]


#let grafico_rotato3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      set-style(axes: (
        stroke: (paint: gray),
        x: (mark: (end: ")>"), padding: 1),
        y: (mark: (end: ")>"), padding: 1),
        tick: (stroke: gray + .5pt),
      ))

      plot.plot(
        size: (6, 6),
        axis-style: "school-book", // Gli assi principali ora si incrociano in (0,0)
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1, x-max: 3.5,
        y-min: -1, y-max: 3.5,
        x-label: [#text(fill: gray)[$x$]],        
        y-label: [#text(fill: gray)[$y$]],    
        x-grid: none,   
        y-grid: none,
        {
          let a = (2, 3)   // Punto P
          let b = (0, 3)   // Proiezione su asse y
          let c = (2, 0)   // Proiezione su asse x

          // Proiezioni ortogonali rispetto al sistema principale
          plot.add(
            (a, b),
            style: (stroke: (dash: "dashed", paint: gray.lighten(20%), thickness: 0.5pt)),
          )
          plot.add(
            (a, c),
            style: (stroke: (dash: "dashed", paint: gray.lighten(20%), thickness: 0.5pt)),
          )

          plot.annotate({
            // Origine comune O e O' in (0,0)
            circle((0, 0), radius: 1.5pt, fill: black)
            /* content((0, 0), [$O = O'$], anchor: "north-east", padding: 4pt) */

            // Etichette e punti del sistema principale
            content(a, [$P$], anchor: "south-west", padding: 1pt)
            content(b, [#text(fill: gray)[$y_P$]], anchor: "east", padding: 2pt)
            content(c, [#text(fill: gray)[$x_P$]], anchor: "north", padding: 2pt)
            circle(a, radius: 1pt, fill: accent.mat, stroke: accent.mat)
            circle(b, radius: 1pt, fill: gray, stroke: gray)
            circle(c, radius: 1pt, fill: gray, stroke: gray)

            // Arco dell'angolo alfa (30 gradi)
            arc((0.7, 0), start: 0deg, stop: 30deg, radius: 0.7, stroke: 0.6pt + black)
            content((0.9 * calc.cos(15deg), 0.9 * calc.sin(15deg)), $alpha$)

            // Sistema ruotato di 30 gradi applicato direttamente in (0,0)
            group({
              rotate(30deg)

              // Asse x' ruotato
              line((-1, 0), (4.2, 0), mark: (end: ")>", fill: black, scale: .6), stroke: 1pt)
              content((4, 0), $x'$, anchor: "north-west", padding: 1pt)

              // Asse y' ruotato
              line((0, -1), (0, 4.2), mark: (end: ")>", fill: black, scale: .6), stroke: 1pt)
              content((0, 4), $y'$, anchor: "south-east", padding: 1pt)

              // Calcolo coordinate di P nel sistema ruotato
              let xp_rot = 2 * calc.cos(30deg) + 3 * calc.sin(30deg)
              let yp_rot = -2 * calc.sin(30deg) + 3 * calc.cos(30deg)

              // Proiezioni e punti sul sistema ruotato
              circle((xp_rot, 0), radius: 1pt, fill: black)
              content((xp_rot, 0), $x'_P$, anchor: "north", padding: 2pt)

              circle((0, yp_rot), radius: 1pt, fill: black)
              content((0, yp_rot), $y'_P$, anchor: "east", padding: 2pt)

              line((xp_rot, yp_rot), (xp_rot, 0), stroke: (dash: "dashed", paint: gray, thickness: 0.5pt))
              line((xp_rot, yp_rot), (0, yp_rot), stroke: (dash: "dashed", paint: gray, thickness: 0.5pt))
            })
          })
        }
      )
    }),
    caption: [],
  ) <grafico_rotato3>
]

#let grafico_coefficiente_angolare = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      

      plot.plot(
        size: (6, 4),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1, x-max: 3,
        y-min: -1, y-max: 2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none,
        {
          
          plot.add(
            domain: (-3, 5),        
            style: (stroke: accent.mat, thickness: 0.5pt),        
            x =>  x - 1
          )

          plot.annotate({

            // Arco dell'angolo alfa (30 gradi)
            arc((1.45, 0), start: 0deg, stop: 30deg, radius: 0.7, stroke: 0.6pt + black)
            content((1.7 * calc.cos(15deg), 1.2 * calc.sin(15deg)), $alpha$)
            circle((1, 0), radius: .75pt, fill: black)
              content((1, 0), $A$, anchor: "north", padding: 5pt)
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_coefficiente_angolare>
]

#let grafico_rette_perpendicolari = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none,      
        x-min: -1.5, x-max: 3.5,
        y-min: -2, y-max: 3,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none,
        {
          // --- PARAMETRI CONFIGURABILI ---
          let m = 1.2       // Pendenza retta r
          let q = 0       // Intercetta retta r
          let xi = 0      // Coordinata x di intersezione tra r e s
          let x0 = 2.0      // Coordinata x della retta verticale

          
          let yi = m * xi + q
          let intersec = (xi, yi)
          
          let m_s = -1 / m                  // Antireciproco della pendenza
          let q_s = yi - m_s * xi           // Condizione di passaggio per 'intersec'
          let angolo = calc.atan(m)         // Angolo di inclinazione di r per l'angolo retto

          // Retta r
          plot.add(
            domain: (-1, 3.5),        
            style: (stroke: accent.mat + 1pt),        
            x => m * x + q
          )

          // Retta r' 
          plot.add(
            domain: (xi - 3, xi + 3),        
            style: (stroke: accent.mat.lighten(50%) + 1pt),        
            x => m_s * x + q_s
          )

          plot.annotate({
            // Segnale di angolo retto orientato dinamicamente
            group({
              translate(intersec)
              rotate(angolo)
              line((0.2, 0), (0.2, 0.2), (0, 0.2), stroke: 0.5pt + accent.mat)
            })

            // Retta verticale x = x0
            line((x0, -2), (x0, 3), stroke: (dash: "dashed", paint: gray, thickness: 0.8pt))
            //content((x0, 3.3), $x = x_0$, anchor: "south")

            // Intersezioni dinamiche con la retta verticale
            let y_r_x0 = m * x0 + q
            let y_s_x0 = m_s * x0 + q_s

            circle((x0, y_r_x0), radius: 1pt, fill: black)
            circle((x0, y_s_x0), radius: 1pt, fill: black)
            circle((x0, 0), radius: 1pt, fill: black)
            circle(intersec, radius: 1pt, fill: black)
            
            // Posizionamento automatico delle etichette delle rette e punti
            content((2.4, m * 2 + q + 0.1), $r$, anchor: "south")
            content((xi - 0.9, m_s * (xi - 0.8) + q_s + 0.3), $r'$, anchor: "south")
            content((x0, y_r_x0), $P$, anchor: "south-east")
            content((x0, y_s_x0), $Q$, anchor: "south-west")
            content((x0, 0), $H$, anchor: "south-west")
          })
        }
      )
    }),
    caption: [],
  ) <grafico_rette_perpendicolari>
]

#let grafico_triangolo_esempio1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 8),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: 0, x-max: 10,
        y-min: 0, y-max: 10,
        x-label: [],        
        y-label: [],    
        x-grid: true,   
        y-grid: true, 
        /* legend: (5.3, 2.6),        
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto, */
        {
          // Definizione diretta dei punti come vettori (x, y)
          let A = (0, 0)
          let B = (0, 8)
          let C = (8, 6)
          let G = (8/3, 14/3)
          let Q = (13/4, 4)
          let H = (3/2, 6)

          plot.add(
            (A, B, C, A),
            style: (stroke: 1pt + accent.mat)
          )
          plot.add(
            domain: (-1, +10),
            x => -8/7 * x + 54/7,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),            
          )

          plot.annotate({
            content(A, [$A$], anchor: "south-west", padding: 5pt)
            content(B, [$B$], anchor: "south-west", padding: 5pt)
            content(C, [$C$], anchor: "west", padding: 5pt)
            
            circle(G, radius: 1pt, fill: black)
            content(G, [$G$], anchor: "west", padding: 5pt)
            circle(Q, radius: 1pt, fill: black)
            content(Q, [$Q$], anchor: "west", padding: 5pt)
            circle(H, radius: 1pt, fill: black)
            content(H, [$H$], anchor: "west", padding: 5pt)

            
            content((7.2, 2), [$y = -8/7 x + 54/7$])
          })
        }
      )
    }),
    caption: [],
  ) <grafico_triangolo_esempio1>
]

#let grafico_triangolo_esempio2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 8),
        axis-style: "school-book",
        x-tick-step: 5,      
        y-tick-step: 5,      
        x-min: -16, x-max: 22,
        y-equal: "x",
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: "both",   
        y-grid: "both",
        {
          let A = (0, 0)
          let B = (0, 8)
          let C = (8, 6)
          let I = (32/(calc.sqrt(17) + 9), 64/(calc.sqrt(17) + 9))
          let E_1 = (32/(calc.sqrt(17) - 1), -16/(calc.sqrt(17) - 1))
          let E_2 = (-32/(calc.sqrt(17) + 1), 16/(calc.sqrt(17) + 1))
          let E_3 = (32/(9 - calc.sqrt(17)), 64/(9 - calc.sqrt(17)))

          plot.add(
            (A, B, C, A),
            style: (stroke: 1pt + accent.mat)
          )
          plot.add(
            domain: (-16, +22),
            x => 3/4 * x,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),            
          )
          plot.add(
            domain: (-16, +23),
            x => -1/4 * x + 8,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),            
          )

          plot.annotate({
            content(A, [#text(fill: accent.mat)[$A$]], anchor: "south-east", padding: 25pt)
            content(B, [#text(fill: accent.mat)[$B$]], anchor: "south-east", padding: 25pt)
            content(C, [#text(fill: accent.mat)[$C$]], anchor: "south-west", padding: 25pt)
            
            circle(I, radius: 3pt, fill: black)
            content(I, [$I$], anchor: "south-west", padding: 15pt)
            circle(E_1, radius: 3pt, fill: black)
            content(E_1, [$E_1$], anchor: "south-west", padding: 25pt)
            circle(E_2, radius: 3pt, fill: black)
            content(E_2, [$E_2$], anchor: "south-west", padding: 25pt)
            circle(E_3, radius: 3pt, fill: black)
            content(E_3, [$E_3$], anchor: "south-west", padding: 25pt)

            circle(E_1, radius: (32 / (calc.sqrt(17) - 1)), fill: accent.mat.transparentize(85%), stroke: (thickness: .5pt))
            circle(E_2, radius: (32 / (calc.sqrt(17) + 1)), fill: accent.mat.transparentize(85%), stroke: (thickness: .5pt))
            circle(E_3, radius: (32 / (9 - calc.sqrt(17))), fill: accent.mat.transparentize(85%), stroke: (thickness: .5pt))
            circle(I, radius: (32 / (9 + calc.sqrt(17))), fill: accent.mat.transparentize(85%), stroke: (thickness: .5pt))

            // Proiezioni
            line(E_1, (E_1.at(0), 0), stroke: (thickness: 0.5pt, dash: "dashed", paint: gray))
            line(E_1, (0, E_1.at(1)), stroke: (thickness: 0.5pt, dash: "dashed", paint: gray))
            line(E_2, (E_2.at(0), 0), stroke: (thickness: 0.5pt, dash: "dashed", paint: gray))
            line(E_2, (0, E_2.at(1)), stroke: (thickness: 0.5pt, dash: "dashed", paint: gray))
            line(E_3, (E_3.at(0), 0), stroke: (thickness: 0.5pt, dash: "dashed", paint: gray))
            line(E_3, (0, E_3.at(1)), stroke: (thickness: 0.5pt, dash: "dashed", paint: gray))
          })
        }
      )
    }),
    caption: [],
  ) <grafico_triangolo_esempio2>
]

#let esempio_grafico_fascio1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -3, x-max: 6,
        y-equal: "x",
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Linea r1: k = 0 -> y = -x + 3
          plot.add(
            domain: (-1.5, 5.5),
            x => -x + 3,
            style: (stroke: 1pt + accent.mat)
          )
          
          // Linea k = 1/2 -> x = 2
          plot.add(
            ((2, -2), (2, 4)),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dash-dotted"))
          )
          
          // Linea k = ±inf -> y = 0.5 * x
          plot.add(
            domain: (-3, 6),
            x => 0.5 * x,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed"))
          )
          
          // Annotazioni, punti e frecce di rotazione
          plot.annotate({
            let P = (2, 1)
            
            // Centro del fascio P
            circle(P, radius: 1.5pt, fill: accent.mat)
            content(P, [$P$], anchor: "east", padding: 5pt)
            
            // Etichette delle linee e dei valori di k
            content((.1, 3), [$r_1 : k = 0$], anchor: "south-west")
            content((2.1, 3.6), [$k = 1/2$], anchor: "west")
            
            content((4.9, 2.9), [$k = +oo$], anchor: "south")
            content((4.8, 2.2), [$k = -oo$], anchor: "north-west")
            
            content((-1.6, -0.85), [$k = -oo$], anchor: "south-east")
            content((-2.2, -1.2), [$k = +oo$], anchor: "north-west")
            
            // Frecce curve per indicare la rotazione del parametro k
            arc((1.2, 1.6), start: 140deg, delta: -120deg, radius: 1, mark: (end: ")>", fill: accent.mat.lighten(50%)), stroke: (thickness: .5pt, paint: accent.mat.lighten(50%)))
            arc((2.8, .5), start: 320deg, delta: -120deg, radius: 1, mark: (end: ")>", fill: accent.mat.lighten(50%)), stroke: (thickness: .5pt, paint: accent.mat.lighten(50%)))
          })
        }
      )
    }),
    caption: [],
  ) <esempio_grafico_fascio1>
]

#let esempio_grafico_fascio2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 7),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -3, x-max: 6,
        y-min: -1, y-max: 3.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Retta k = 0 -> y = 0.5 * x
          plot.add(
            domain: (-4.5, 5.5),
            x => 0.5 * x,
            style: (stroke: 1pt + accent.mat)
          )
          
          // Retta k = 1 -> y = 0.5 * x + 1
          plot.add(
            domain: (-4.5, 5),
            x => 0.5 * x + 1,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dash-dotted"))
          )
          
          // Retta r2: k = ±inf -> y = 0.5 * x + 2
          plot.add(
            domain: (-4.5, 6),
            x => 0.5 * x + 2,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed"))
          )
          
          // Annotazioni, frecce di spostamento e testi
          plot.annotate({
            // Etichette delle rette principali
            content((4.5, 2.2), [$k = 0$], anchor: "north-west")
            content((4, 2.9), [$k = 1$], anchor: "north-west")
            content((3.5, 3.3), [$r_2$], anchor: "south")
            
            // Etichette dei limiti all'infinito sulla retta r2
            content((1.7, 2.9), [$k = -oo$], anchor: "south-east")
            content((1.1, 2.2), [$k = +oo$], anchor: "south-west")
            
            // Frecce vettoriali con tratti tratteggiati/continui
            // Freccia verso l'alto a sinistra (k = -1)
            line((-1.5, 1.25), (-2.5, 2.5), mark: (end: ")>", fill: black), stroke: (thickness: 0.5pt, dash: "dashed"))
            content((-2.2, 2.65), [$k = -1$], anchor: "south")
            
            
            
            // Freccia di transizione continua che attraversa le rette
            line((0.1, -0.75), (-1.5, 1.25), mark: (end: ">", fill: black), stroke: (thickness: 0.5pt, dash: "dashed"))
            content((0.3, -0.7), [$k = -1$], anchor: "west")
          })
        }
      )
    }),
    caption: [],
  ) <esempio_grafico_fascio2>
]






















#let calcola-distanza(punto-a, punto-b) = {
  calc.sqrt(calc.pow(punto-a.at(0) - punto-b.at(0), 2) + calc.pow(punto-a.at(1) - punto-b.at(1), 2))
}

#let proietta-3d(x, y, z) = {
  let inclinazione-x = -0.4
  let inclinazione-y = 0.25
  (x + y * inclinazione-x, z + y * inclinazione-y)
}

#let disegna-scena-conica(
  pendenza-piano: 0.0,
  intercetta-z: 0.0,
  altezza-massima: 2.5,
  colore-curva: black
) = {
  import cetz.draw: *
  
  let pendenza-cono = 0.6 
  
  // --- 1. SUPERFICIE DEL CONO ---
  for i in range(0, 5) {
    let altezza-z = -2.0 + (i * 1.0)
    if altezza-z != 0 {
      let raggio-z = pendenza-cono * calc.abs(altezza-z)
      let punti-cerchio = ()
      for j in range(0, 25) {
        let radianti = (j * 15) * calc.pi / 180
        punti-cerchio.push(proietta-3d(raggio-z * calc.cos(radianti), raggio-z * calc.sin(radianti), altezza-z))
      }
      line(..punti-cerchio, stroke: 0.25pt + gray.lighten(50%))
    }
  }
  
  for i in range(0, 8) {
    let radianti = (i * 45) * calc.pi / 180
    let raggio-max = pendenza-cono * altezza-massima
    line(
      proietta-3d(raggio-max * calc.cos(radianti), raggio-max * calc.sin(radianti), -altezza-massima),
      (0,0),
      proietta-3d(raggio-max * calc.cos(radianti), raggio-max * calc.sin(radianti), altezza-massima),
      stroke: 0.3pt + gray.lighten(30%)
    )
  }
  
  let raggio-sagoma = pendenza-cono * altezza-massima
  line(proietta-3d(-raggio-sagoma, 0, -altezza-massima), (0,0), proietta-3d(raggio-sagoma, 0, altezza-massima), stroke: 0.6pt + black)
  line(proietta-3d(raggio-sagoma, 0, -altezza-massima), (0,0), proietta-3d(-raggio-sagoma, 0, altezza-massima), stroke: 0.6pt + black)
  line(proietta-3d(0, 0, -altezza-massima), proietta-3d(0, 0, altezza-massima), stroke: (thickness: 0.5pt, paint: black, dash: "dashed"))

  // --- 2. PIANO SEZIONANTE PROPORZIONALE ---
  let estensione-x = if pendenza-piano > 1.5 { 1.0 } else { 1.8 }
  let estensione-y = 1.5
  let angoli-piano = (
    proietta-3d(-estensione-x, -estensione-y, -pendenza-piano * estensione-x + intercetta-z),
    proietta-3d(estensione-x, -estensione-y, pendenza-piano * estensione-x + intercetta-z),
    proietta-3d(estensione-x, estensione-y, pendenza-piano * estensione-x + intercetta-z),
    proietta-3d(-estensione-x, estensione-y, -pendenza-piano * estensione-x + intercetta-z)
  )
  line(..angoli-piano, close: true, stroke: 0.5pt + rgb("#007aff"), fill: rgb(0, 122, 255, 30))

  // --- 3. INTERSEZIONE ANALITICA ---
  let precedente-superiore = none
  let precedente-inferiore = none
  
  for i in range(0, 181) {
    let radianti = (i * 2) * calc.pi / 180
    let cos-theta = calc.cos(radianti)
    let sin-theta = calc.sin(radianti)
    let componente-pendenza = pendenza-piano * cos-theta
    
    // Falda Superiore
    let den-superiore = 1 - pendenza-cono * componente-pendenza
    if calc.abs(den-superiore) > 0.001 {
      let raggio = (pendenza-cono * intercetta-z) / den-superiore
      if raggio >= 0 {
        let quota-z = raggio / pendenza-cono
        if calc.abs(quota-z) <= altezza-massima {
          let punto = proietta-3d(raggio * cos-theta, raggio * sin-theta, quota-z)
          if precedente-superiore != none and calcola-distanza(precedente-superiore, punto) < 0.8 {
            line(precedente-superiore, punto, stroke: 1.6pt + colore-curva)
          }
          precedente-superiore = punto
        } else { precedente-superiore = none }
      } else { precedente-superiore = none }
    }
    
    // Falda Inferiore
    let den-inferiore = 1 + pendenza-cono * componente-pendenza
    if calc.abs(den-inferiore) > 0.001 {
      let raggio = -(pendenza-cono * intercetta-z) / den-inferiore
      if raggio >= 0 {
        let quota-z = -raggio / pendenza-cono
        if calc.abs(quota-z) <= altezza-massima {
          let punto = proietta-3d(raggio * cos-theta, raggio * sin-theta, quota-z)
          if precedente-inferiore != none and calcola-distanza(precedente-inferiore, punto) < 0.8 {
            line(precedente-inferiore, punto, stroke: 1.6pt + colore-curva)
          }
          precedente-inferiore = punto
        } else { precedente-inferiore = none }
      } else { precedente-inferiore = none }
    }
  }
}

#let grafico-sezioni-coniche = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      // 1. ELLISSE (Pendenza piano < 1.667)
      group({
        disegna-scena-conica(pendenza-piano: 0.6, intercetta-z: 1.0, colore-curva: rgb("#ff3b30"))
      })
      
      // 2. PARABOLA (Pendenza piano == 1.667)
      group({
        translate(x: 4.8, y: 0)
        disegna-scena-conica(pendenza-piano: 1.6667, intercetta-z: 0.7, colore-curva: rgb("#4cd964"))
      })
      
      // 3. IPERBOLE (Pendenza piano > 1.667)
      group({
        translate(x: 9.6, y: 0)
        disegna-scena-conica(pendenza-piano: 2.6, intercetta-z: 0.6, colore-curva: rgb("#007aff"))
      })
    }),
    caption: [Sezioni coniche reali: Ellisse (rosso), Parabola (verde) ed Iperbole a due rami (blu).],
  )
]