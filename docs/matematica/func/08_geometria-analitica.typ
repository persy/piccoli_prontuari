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