#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

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
      circle((3 + dx, dy), radius: 1.5pt, fill: accent.mat, stroke: none)
    }

    // Retta orizzontale passante per s = 1 (fermata a 5.8)
    line((-1.5, 1 * dy), (5.8, 1 * dy), stroke: (paint: accent.mat))

    // Retta inclinata passante per x = 3 (estesa fino a -2)
    line((3 - 2 * dx, -2 * dy), (3 + 3.5 * dx, 3.5 * dy), stroke: (paint: accent.mat))

    // Etichette dei punti
    content((1 * dx + 0.4, 1 * dy - 0.3), $P_s$)
    content((3 - 0.2, 0.4), $P_r$)
    content((3.1 + 1 * dx - 0.3, 1 * dy + 0.4), $P$)

    
    
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
      // Importiamo il modulo angle per accedere a right-angle
      import cetz.angle 
      
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
          let A = (1, 1)
          let B = (0, 3)
          let C = (3, 2)

          plot.add(
            (A, B, C, A),
            style: (stroke: 1pt + accent.mat)
          )

          plot.annotate({
            content(A, [A], anchor: "north-east", padding: 1pt)
            content(B, [B], anchor: "south-west", padding: 3pt)
            content(C, [C], anchor: "north-west", padding: 1pt)
            
            // TODO: angolo retto; non è possibile ridurre la dimensione del punto
            angle.right-angle(
              A, B, C, 
              radius: 0.25,
              stroke: 0.5pt + accent.mat 
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
        size: (9, 4.5),
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
            line((-1.5, 1.25), (-2.5, 2.5), mark: (end: ">>", fill: black), stroke: (thickness: 0.5pt, dash: "dashed"))
            content((-2.2, 2.65), [$k = -1$], anchor: "south")
            
            
            
            // Freccia di transizione continua che attraversa le rette
            line((0.1, -0.75), (-1.5, 1.25), mark: (end: ">>", fill: black), stroke: (thickness: 0.5pt, dash: "dashed"))
            content((0.3, -0.7), [$k = -1$], anchor: "west")
          })
        }
      )
    }),
    caption: [],
  ) <esempio_grafico_fascio2>
]

#let grafico_conica1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -4.2, x-max: 1,
        y-min: -1, y-max: 1.2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Ramo superiore della curva: x^2 + 2y^2 + 2x = 0
          plot.add(
            domain: (-2.0, 0.0),
            x => calc.sqrt((-calc.pow(x, 2) - 2 * x) / 2),
            style: (stroke: 1pt + accent.mat)
          )
          
          // Ramo inferiore della curva
          plot.add(
            domain: (-2.0, 0.0),
            x => -calc.sqrt((-calc.pow(x, 2) - 2 * x) / 2),
            style: (stroke: 1pt + accent.mat)
          )
          
          // Retta tangente: y = 1/4 x + 1
          plot.add(
            domain: (-5, 2),
            x => 0.25 * x + 1,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted"))
          )
                    
          // Annotazioni, frecce di spostamento e testi
          plot.annotate({
            // Punto P(0,1) e sua etichetta
            circle((0, 1), radius: 0.03, fill: accent.mat, stroke: none)
            content((0.1, 1.1), [P], anchor: "south-west")
          })
        }
      )
    }),
    caption: [],
  ) <grafico_conica1>
]

#let grafico_conica2 = [
  #figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
        size: (9, 6),
        axis-style: "school-book",
        x-tick-step: 5,      
        y-tick-step: 5, 
        x-min: -15, x-max: 15,
        y-min: -15, y-max: 15,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
      {
        // Ramo sinistro (contiene P0): y = (1 - 5x + sqrt(9x^2 - 14x + 1)) / 2
        // Definito per x <= (7 - 2*sqrt(10))/9 ≈ 0.075
        plot.add(
          domain: (-8, 0.07),
          x => (1 - 5*x + calc.sqrt(calc.max(0, 9*calc.pow(x, 2) - 14*x + 1))) / 2,
          style: (stroke: 1pt + accent.mat),
          samples: 200
        )
        
        // Ramo inferiore del lato sinistro: y = (1 - 5x - sqrt(9x^2 - 14x + 1)) / 2
        plot.add(
          domain: (-18, 0.07),
          x => (1 - 5*x - calc.sqrt(calc.max(0, 9*calc.pow(x, 2) - 14*x + 1))) / 2,
          style: (stroke: 1pt + accent.mat),
          samples: 200
        )

        // Ramo destro (superiore): y = (1 - 5x + sqrt(9x^2 - 14x + 1)) / 2
        // Definito per x >= (7 + 2*sqrt(10))/9 ≈ 1.47
        plot.add(
          domain: (1.48, 16),
          x => (1 - 5*x + calc.sqrt(calc.max(0, 9*calc.pow(x, 2) - 14*x + 1))) / 2,
          style: (stroke: 1pt + accent.mat),
          samples: 200
        )
        
        // Ramo destro (inferiore)
        plot.add(
          domain: (1.48, 16),
          x => (1 - 5*x - calc.sqrt(calc.max(0, 9*calc.pow(x, 2) - 14*x + 1))) / 2,
          style: (stroke: 1pt + accent.mat),
          samples: 200
        )

        // Retta tangente: 6x + y - 1 = 0 => y = 1 - 6x
        plot.add(
          domain: (-10, 10.5),
          x => 1 - 6*x,
          style: (stroke: 1pt + accent.mat)
        )

        // Punto di tangenza P0(0, 1)
        plot.annotate({
            circle((0, 1), radius: 3pt, fill: accent.mat, stroke: none)
            content((0, 1), [$P_0$], anchor: "south-west", padding: 18pt)
          })
      }
    )
  }),
  caption: []
) <grafico_conica2>
]


/* #let retta_cono = [#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 6),
    x-min: -1, x-max: 5,
    y-min: -5, y-max: 5,
    axis-style: "school-book",
    x-tick-step: none,
    y-tick-step: none,
    {
      // 1. Retta generatrice f(x) = x nel dominio [0, 4]
      plot.add(
        domain: (0, 4),
        style: (stroke: (paint: blue, thickness: 2.5pt)),
        label: $f(x) = x$,
        x => x
      )

      // 2. Profilo inferiore f(x) = -x nel dominio [0, 4]
      plot.add(
        domain: (0, 4),
        style: (stroke: (paint: gray, thickness: 1pt)),
        x => -x
      )

      // 3. Ellissi per la tridimensionalità inserite tramite plot.annotate
      plot.annotate(
        circle((2, 0), radius: (0.2, 2), stroke: (paint: gray.lighten(30%), dash: "dashed"))
      )
      
      plot.annotate(
        circle((4, 0), radius: (0.4, 4), stroke: (paint: gray, dash: "dashed"))
      )
    }
  )
}),
    caption: [],
) <retta_cono>

] */

#let grafico_rotazione_retta_cono = [#figure(
cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (5, 5),
    x-min: -4, x-max: 4,
    y-min: -4, y-max: 4,
    x-tick-step: none, y-tick-step: none,
    axis-style: none,
    {
      let base-color = accent.mat
      
      // Generazione di rette con calcolo parametrico basato sull'ellisse
      for i in range(6) {
        let factor = i / 5
        let angle = factor * 90deg
        
        let x = 2.0 * calc.cos(angle)
        let dy = 0.4 * calc.sin(angle)
        
        let y-max = 3.0 + dy
        let y-min = -3.0 - dy
        
        let light-pct = factor * 80%
        let c = base-color.lighten(light-pct)
        let th = 1.5pt - factor * 1pt
        
        // Rette accorciate prospetticamente passanti per V(0,0)
        plot.add(((-x, y-min), (x, y-max)), style: (stroke: (thickness: th, paint: c)))
        if x != 0 {
          plot.add(((x, y-min), (-x, y-max)), style: (stroke: (thickness: th, paint: c)))
        }
      }
      
      // Base Superiore
      plot.add-contour(
        x-domain: (-2.2, 2.2),
        y-domain: (2.5, 3.5),
        z: (1.0,),
        (x, y) => calc.pow(x, 2) / 4 + calc.pow(y - 3, 2) / 0.16,
        style: (stroke: 1.2pt + accent.mat.lighten(50%), dash: "dotted")
      )
      
      // Base Inferiore
      plot.add-contour(
        x-domain: (-2.2, 2.2),
        y-domain: (-3.5, -2.5),
        z: (1.0,),
        (x, y) => calc.pow(x, 2) / 4 + calc.pow(y + 3, 2) / 0.16,
        style: (stroke: 1.2pt + accent.mat.lighten(50%), dash: "dotted")
      )

      // Annotazioni
      plot.annotate({
        import cetz.draw: *
        
        // Asse di rotazione
        line((0, -4), (0, 4), stroke: (dash: "dotted", thickness: 0.8pt, paint: accent.mat.darken(50%)))
        
        // Vertice V
        circle((0, 0), radius: 0.08, fill: accent.mat, stroke: none)
        content((0.3, 0.1), anchor: "west", $V$)
        
        // Angolo al vertice
        arc((.33, .5), start: 58deg, stop: 90deg, radius: 0.6, stroke: 1pt + accent.mat)
        content((.3, 1), $alpha$)

        content((.17, -3), $a$)
        content((2.3, -3), $g$)
      })
    }
  )
}),
  caption: [],
) <grafico_rotazione_retta_cono>]

#let grafico_rotazione_retta_cilindro = [#figure(
cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (5, 5),
    x-min: -4, x-max: 4,
    y-min: -4, y-max: 4,
    x-tick-step: none, y-tick-step: none,
    axis-style: none,
    {
      let base-color = accent.mat
      
      for i in range(6) {
        let factor = i / 5
        let x = 2.0 * (1 - factor * 0.8)
        
        // Calcolo geometrico dell'offset Y per seguire la curvatura dell'ellisse (semiasse maggiore 2, minore 0.4)
        let dy = 0.4 * calc.sqrt(1 - calc.pow(x / 2.0, 2))
        let y-min = -3.5 - dy
        let y-max = 3.5 - dy
        
        let light-pct = factor * 80%
        let c = base-color.lighten(light-pct)
        let th = 1.5pt - factor * 1pt
        
        // Disegna le generatrici sulla superficie visibile del cilindro
        plot.add(((x, y-min), (x, y-max)), style: (stroke: (thickness: th, paint: c)))
        if x != 0 {
          plot.add(((-x, y-min), (-x, y-max)), style: (stroke: (thickness: th, paint: c)))
        }
      }
      
      // Base Superiore (centrata in y = 3.5)
      plot.add-contour(
        x-domain: (-2.2, 2.2),
        y-domain: (3.0, 4.0),
        z: (1.0,),
        (x, y) => calc.pow(x, 2) / 4 + calc.pow(y - 3.5, 2) / 0.16,
        style: (stroke: 1.2pt + accent.mat.lighten(50%), dash: "dotted")
      )
      
      // Base Inferiore (centrata in y = -3.5)
      plot.add-contour(
        x-domain: (-2.2, 2.2),
        y-domain: (-4.0, -3.0),
        z: (1.0,),
        (x, y) => calc.pow(x, 2) / 4 + calc.pow(y + 3.5, 2) / 0.16,
        style: (stroke: 1.2pt + accent.mat.lighten(50%), dash: "dotted")
      )

      // Annotazioni
      plot.annotate({
        import cetz.draw: *
        
        // Asse di rotazione 'a'
        line((0, -4.2), (0, 4.2), stroke: (dash: "dotted", thickness: 0.8pt, paint: accent.mat.darken(50%)))
        content((0.3, 3.6), $a$)
        
        // Retrice esterna 'g'
        content((2.3, 0), $g$)
      })
    }
  )
}),
  caption: [],
) <grafico_rotazione_retta_cilindro>]














// ============================

#let calcola-distanza(punto-a, punto-b) = {
  calc.sqrt(calc.pow(punto-a.at(0) - punto-b.at(0), 2) + calc.pow(punto-a.at(1) - punto-b.at(1), 2))
}

#let proietta-3d(x, y, z) = {
  let inclinazione-x = -0.4
  let inclinazione-y = 0.25
  (x + y * inclinazione-x, z + y * inclinazione-y)
}

#let disegna-sezione-conica(
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

#let conica-asserita(a: 0.5, z0: 1.5, titolo: "") = [#figure(
  cetz.canvas({
    import cetz.draw: *

    // Proiezione isometrica ortonormale
    let cos30 = calc.cos(30deg)
    let sin30 = calc.sin(30deg)
    let proj(x, y, z) = ( (x - y) * cos30, z - (x + y) * sin30 )

    let H = 1.3
    let L = 1.1
    let accent = accent.mat
    let curva-stile = (thickness: 1pt, paint: accent, dash: "dashed")

    // Asse Z del cono
    line(proj(0, 0, -H*1.2), proj(0, 0, H*1.2), stroke: (paint: rgb("#94a3b8"), thickness: 0.5pt, dash: "dashed"))

    // Struttura solida del cono a due falde
    let stp = 8
    let sup-circle = range(0, 361, step: stp).map(d => proj(H * calc.cos(d * 1deg), H * calc.sin(d * 1deg), H))
    let inf-circle = range(0, 361, step: stp).map(d => proj(H * calc.cos(d * 1deg), H * calc.sin(d * 1deg), -H))

    line(proj(0,0,0), ..sup-circle, close: true, fill: rgb("#64748b33"), stroke: 0.4pt + rgb("#475569"))
    line(proj(0,0,0), ..inf-circle, close: true, fill: rgb("#64748b11"), stroke: 0.4pt + rgb("#475569"))

    // Generatrici tridimensionali
    for d in range(0, 360, step: 30) {
      let rad = d * 1deg
      line(proj(H * calc.cos(rad), H * calc.sin(rad), H), proj(0,0,0), stroke: 0.2pt + rgb("#94a3b855"))
      line(proj(H * calc.cos(rad), H * calc.sin(rad), -H), proj(0,0,0), stroke: 0.2pt + rgb("#94a3b855"))
    }

    // Piano di sezione con dimensioni separate
    let Lx = 0.9  // Ridotto per contenere l'ingombro verticale
    let Ly = 1.3  // Mantiene la larghezza per coprire il cono

    let p1 = proj(-Lx, -Ly, z0 + a * Lx)
    let p2 = proj(Lx, -Ly, z0 - a * Lx)
    let p3 = proj(Lx, Ly, z0 - a * Lx)
    let p4 = proj(-Lx, Ly, z0 + a * Lx)
    
    line(p1, p2, p3, p4, close: true, fill: rgb("#2563eb13"), stroke: (thickness: 0.5pt, paint: rgb("#2563eb")))

    // Intersezioni geometriche reali
    if z0 == 0 {
      if a < 1.0 {
        circle(proj(0,0,0), radius: 0.04, fill: accent, stroke: none)
      } else {
        let m = calc.sqrt(calc.max(0.0, a * a - 1.0))
        let x_h = H / a
        let y_h = x_h * m
        line(proj(-x_h, -y_h, H), proj(x_h, y_h, -H), stroke: curva-stile)
        line(proj(-x_h, y_h, H), proj(x_h, -y_h, -H), stroke: curva-stile)
      }
    } else {
      // Calcolo Falda Superiore (Primo ramo)
      let segments-sup = ()
      let curr-sup = ()
      for d in range(0, 361, step: 2) {
        let phi = d * 1deg
        let den = 1 + a * calc.cos(phi)
        if den > 0.001 {
          let r = z0 / den
          if r <= H {
            curr-sup.push(proj(r * calc.cos(phi), r * calc.sin(phi), r))
          } else {
            if curr-sup.len() > 1 { segments-sup.push(curr-sup) }
            curr-sup = ()
          }
        } else {
          if curr-sup.len() > 1 { segments-sup.push(curr-sup) }
          curr-sup = ()
        }
      }
      if curr-sup.len() > 1 { segments-sup.push(curr-sup) }
      for seg in segments-sup { line(..seg, stroke: curva-stile) }

      // Calcolo Falda Inferiore (Secondo ramo dell'iperbole)
      let segments-inf = ()
      let curr-inf = ()
      for d in range(0, 361, step: 2) {
        let phi = d * 1deg
        let den = a * calc.cos(phi) - 1
        if den > 0.001 {
          let r = z0 / den
          if r <= H {
            curr-inf.push(proj(r * calc.cos(phi), r * calc.sin(phi), -r))
          } else {
            if curr-inf.len() > 1 { segments-inf.push(curr-inf) }
            curr-inf = ()
          }
        } else {
          if curr-inf.len() > 1 { segments-inf.push(curr-inf) }
          curr-inf = ()
        }
      }
      if curr-inf.len() > 1 { segments-inf.push(curr-inf) }
      for seg in segments-inf { line(..seg, stroke: curva-stile) }
    }

    // Posizionato a -3.7 per non sovrapporsi al ramo inferiore
    content((0, -3.7), text(9pt, weight: "bold", fill: rgb("#1e293b"), titolo))
  }), 
  gap: -35pt,
caption: []
)]

#let cilindro-sezionato(modo: "circonferenza", titolo: "") = [#figure(
  cetz.canvas({
    import cetz.draw: *

    // Proiezione isometrica ortonormale
    let cos30 = calc.cos(30deg)
    let sin30 = calc.sin(30deg)
    let proj(x, y, z) = ( (x - y) * cos30, z - (x + y) * sin30 )

    let R = 0.9
    let H = 1.25
    let L = 1.4
    let accent = accent.mat
    let curva-stile = (thickness: 1pt, paint: accent, dash: "dashed")

    // Asse centrale Z
    line(proj(0, 0, -H * 1.3), proj(0, 0, H * 1.3), stroke: (paint: rgb("#94a3b8"), thickness: 0.5pt, dash: "dashed"))

    // Calcolo coordinate delle basi del cilindro
    let stp = 5
    let inf-circle = range(0, 361, step: stp).map(d => proj(R * calc.cos(d * 1deg), R * calc.sin(d * 1deg), -H))
    let sup-circle = range(0, 361, step: stp).map(d => proj(R * calc.cos(d * 1deg), R * calc.sin(d * 1deg), H))

    // Volume solido del cilindro (Superficie laterale visibile)
    let side-pts = ()
    for d in range(135, 316, step: stp) {
      side-pts.push(proj(R * calc.cos(d * 1deg), R * calc.sin(d * 1deg), -H))
    }
    for d in range(315, 134, step: -stp) {
      side-pts.push(proj(R * calc.cos(d * 1deg), R * calc.sin(d * 1deg), H))
    }
    
    if side-pts.len() > 0 {
      line(..side-pts, close: true, fill: rgb("#64748b1a"), stroke: none)
    }
    
    line(..inf-circle, stroke: 0.4pt + rgb("#cbd5e1"))
    line(..sup-circle, fill: rgb("#64748b22"), stroke: 0.5pt + rgb("#475569"))

    // Generatrici verticali per la profondità
    for d in range(0, 360, step: 45) {
      let rad = d * 1deg
      line(proj(R * calc.cos(rad), R * calc.sin(rad), -H), proj(R * calc.cos(rad), R * calc.sin(rad), H), stroke: 0.25pt + rgb("#94a3b866"))
    }

    // Definizione geometrica dei piani e calcolo delle intersezioni
    if modo == "circonferenza" {
      let z0 = 0.6
      let p1 = proj(-L, -L, z0)
      let p2 = proj(L, -L, z0)
      let p3 = proj(L, L, z0)
      let p4 = proj(-L, L, z0)
      line(p1, p2, p3, p4, close: true, fill: rgb("#2563eb13"), stroke: 0.5pt + rgb("#2563eb"))

      let pts = range(0, 361, step: 2).map(d => proj(R * calc.cos(d * 1deg), R * calc.sin(d * 1deg), z0))
      line(..pts, stroke: curva-stile)
    }
    else if modo == "ellisse" {
      let z0 = 0.0
      let a = 0.5
      let p1 = proj(-L, -L, z0 - a * (-L))
      let p2 = proj(L, -L, z0 - a * L)
      let p3 = proj(L, L, z0 - a * L)
      let p4 = proj(-L, L, z0 - a * (-L))
      line(p1, p2, p3, p4, close: true, fill: rgb("#2563eb13"), stroke: 0.5pt + rgb("#2563eb"))

      let pts = range(0, 361, step: 2).map(d => {
        let x = R * calc.cos(d * 1deg)
        let y = R * calc.sin(d * 1deg)
        return proj(x, y, z0 - a * x)
      })
      line(..pts, stroke: curva-stile)
    }
    else if modo == "parallele" {
      let x0 = 0.7
      let p1 = proj(x0, -L, -H * 1.2)
      let p2 = proj(x0, L, -H * 1.2)
      let p3 = proj(x0, L, H * 1.2)
      let p4 = proj(x0, -L, H * 1.2)
      line(p1, p2, p3, p4, close: true, fill: rgb("#2563eb13"), stroke: 0.5pt + rgb("#2563eb"))

      let y0 = calc.sqrt(R * R - x0 * x0)
      line(proj(x0, y0, -H), proj(x0, y0, H), stroke: curva-stile)
      line(proj(x0, -y0, -H), proj(x0, -y0, H), stroke: curva-stile)
    }
    else if modo == "degenere" {
      let x0 = R
      let p1 = proj(x0, -L, -H * 1.2)
      let p2 = proj(x0, L, -H * 1.2)
      let p3 = proj(x0, L, H * 1.2)
      let p4 = proj(x0, -L, H * 1.2)
      line(p1, p2, p3, p4, close: true, fill: rgb("#2563eb13"), stroke: 0.5pt + rgb("#2563eb"))

      line(proj(x0, 0, -H), proj(x0, 0, H), stroke: curva-stile)
    }

    content((0, -4.2), text(10pt, weight: "bold", fill: rgb("#1e293b"), titolo))
  }), 
  gap: -45pt,
caption: []
)]

#let grafico_tangente_circonferenza = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Circonferenza 1
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (-0.5 + calc.sqrt(2.5) * calc.cos(t), -0.5 + calc.sqrt(2.5) * calc.sin(t))
          )
          // Circonferenza 2
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            t => (
              0.125 + (5 * calc.sqrt(2) / 8) * calc.cos(t), 
              0.125 + (5 * calc.sqrt(2) / 8) * calc.sin(t)
            )
          )

          // Tangente 1
          plot.add(
            domain: (.3, 2), 
            x => -3 * x + 3,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed"))
          )

          // Tangente 2
          plot.add(
            domain: (-2, 3), 
            x => -1/3 * x + 1,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed"))
          )
                    
          plot.annotate({
            // Punto P
            circle((3/4, 3/4), radius: 0.03, fill: accent.mat, stroke: none)
            content((3/4, 3/4), [$P$], anchor: "south-west", padding: 2pt)

            // Punto M
            circle((1/8, 1/8), radius: 0.03, fill: accent.mat, stroke: none)
            content((1/8, 1/8), [$M$], anchor: "south-west", padding: 2pt)

            // Punto C
            circle((-1/2, -1/2), radius: 0.03, fill: accent.mat, stroke: none)
            content((-1/2, -1/2), [$C$], anchor: "north-east", padding: 2pt)

            // Punto A
            circle((1, 0), radius: 0.03, fill: accent.mat, stroke: none)
            content((1, 0), [$A$], anchor: "south-west", padding: 2pt)

            // Punto B
            circle((0, 1), radius: 0.03, fill: accent.mat, stroke: none)
            content((0, 1), [$B$], anchor: "south-west", padding: 2pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_tangente_circonferenza>
]

#let grafico_equazione_circonferenza1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Circonferenza 
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (
              2 + calc.sqrt(5) * calc.cos(t), 
              -1 + calc.sqrt(5) * calc.sin(t)
            )
          )


          // Asse 1
          plot.add(
            domain: (-1, 4.5), 
            x => -x +1,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed"))
          )

          // Asse 2
          plot.add-vline(2,
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed"))
          )
                    
          plot.annotate({
            // Punto O
            circle((2, -1), radius: 0.05, fill: accent.mat, stroke: none)
            content((2, -1), [$O$], anchor: "south-west", padding: 2pt)

            // Punto A
            circle((0, 0), radius: 0.03, fill: accent.mat, stroke: none)
            content((0, 0), [$A$], anchor: "south-east", padding: 2pt)

            // Punto B
            circle((1, 1), radius: 0.03, fill: accent.mat, stroke: none)
            content((1, 1), [$B$], anchor: "south-east", padding: 1pt)

            // Punto C
            circle((4, 0), radius: 0.03, fill: accent.mat, stroke: none)
            content((4, 0), [$C$], anchor: "south-west", padding: 2pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_equazione_circonferenza1>
] 

#let grafico_equazione_circonferenza2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -1, x-max: 7,
        y-min: -1, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Circonferenza 1 - Centro O1 (1, 0.5)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (
              1 + 1.5 * calc.cos(t),
              0.5 + 1.5 * calc.sin(t)
            )
          )

          // Circonferenza 2 - Centro O2 (4.6, 2.3)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (
              4.6 + 1.5 * calc.cos(t),
              2.3 + 1.5 * calc.sin(t)
            )
          )

          // Retta 1
          plot.add(
            domain: (-1, 7), 
            x => 1/2 * x,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Retta 2
          plot.add(
            domain: (-1, 7), 
            x => 1/2 * x + 1.66,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "solid"))
          )

          // Retta 2
          plot.add(
            domain: (-1, 7), 
            x => 1/2 * x - 1.66,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "solid"))
          )
          
          // Retta 4
          plot.add(
            domain: (-1, 6.5), 
            x => -1/2.5 * x + 2.5,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "solid"))
          )

          // Bisettrice 1a
          plot.add(
            domain: (-1, 7), 
            x => 1/25 * x + 0.47,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Bisettrice 1b
          plot.add(
            domain: (-1, 7), 
            x => -22 * x + 22.5,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Bisettrice 2a
          plot.add(
            domain: (-1, 7), 
            x => 1/22 * x + 2.1,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Bisettrice 2b
          plot.add(
            domain: (-1, 7), 
            x => -45 * x + 208.9,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )
                    
          plot.annotate({
            // Punto O_1
            circle((1, 1/2), radius: 0.05, fill: accent.mat, stroke: none)
            content((1, 1/2), [$O_1$], anchor: "south-east", padding: 2pt)

            // Punto O_2
            circle((4.6, 2.3), radius: 0.05, fill: accent.mat, stroke: none)
            content((4.6, 2.3), [$O_2$], anchor: "south-east", padding: 2pt)

            // Punto P_1
            circle((0.925, 2.13), radius: 0.05, fill: accent.mat, stroke: none)
            content((0.925, 2.13), [$P_1$], anchor: "south-east", padding: 3pt)

            // Punto P_2
            circle((4.63, 0.65), radius: 0.05, fill: accent.mat, stroke: none)
            content((4.63, 0.65), [$P_2$], anchor: "south-east", padding: 2pt)

            // Retta r, s e t
            content((4.5, 3.85), [$r$], anchor: "south-east", padding: 2pt)
            content((6.8, 1.7), [$s$], anchor: "south-east", padding: 2pt)
            content((-0.6, 2.85), [$t$], anchor: "south-east", padding: 2pt)

          })
        }
      )
    }),
    caption: [],
  ) <grafico_equazione_circonferenza2>
] //TODO: Valori approssimativi, esempio con dati insufficienti

#let grafico_equazione_circonferenza3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -1, x-max: 7,
        y-min: -1, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Retta r
          plot.add(
            domain: (-2, 6),
            x => -0.33 * x + 2.85,
            style: (stroke: 1pt + accent.mat.lighten(50%))
          )
          
          // Retta s
          plot.add(
            domain: (0, 2),
            x => 3 * x - 1.5,
            style: (stroke: 1pt + accent.mat.lighten(50%))
          )
          
          // Bisettrice / Retta dei centri (tratteggiata)
          plot.add(
            domain: (-1.5, 6),
            x => -0.333 * x + 1.833,
            style: (stroke: (thickness: 0.8pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Bisettrice / Retta dei centri (tratteggiata)
          plot.add(
            domain: (-1.5, 6),
            x => -2.068 * x + 5.13,
            style: (stroke: (thickness: 0.8pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Bisettrice / Retta dei centri (tratteggiata)
          plot.add(
            domain: (-1.5, 6),
            x => 0.512 * x + 1.75,
            style: (stroke: (thickness: 0.8pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Circonferenza 1 (Sinistra)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (
              0.1 + 0.95 * calc.cos(t),
              1.8 + 0.95 * calc.sin(t)
            )
          )

          // Circonferenza 2 (Destra)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (
              1.9 + 0.95 * calc.cos(t),
              1.2 + 0.95 * calc.sin(t)
            )
          )
                    
          plot.annotate({
            // Punto O_1
            circle((0.1, 1.8), radius: 0.05, fill: accent.mat, stroke: none)
            content((0.1, 1.8), [$O_1$], anchor: "south-west", padding: 2pt)

            // Punto O_2
            circle((1.9, 1.2), radius: 0.05, fill: accent.mat, stroke: none)
            content((1.9, 1.2), [$O_2$], anchor: "south-west", padding: 2pt)

            // Punto A
            circle((1.31, 2.42), radius: 0.05, fill: accent.mat, stroke: none)
            content((1.31, 2.42), [$A$], anchor: "south-west", padding: 2pt)

            // Punto P
            circle((1, 1.5), radius: 0.05, fill: accent.mat, stroke: none)
            content((1, 1.5), [$P$], anchor: "north-west", padding: 2pt)

            // r e s
            content((5.6, 0.5), [$r$], anchor: "south-west", padding: 2pt)
            content((1.8, 3.5), [$s$], anchor: "south-west", padding: 2pt)

          })
        }
      )
    }),
    caption: [],
  ) <grafico_equazione_circonferenza3>
] //TODO: Valori approssimativi, esempio con dati insufficienti

#let grafico_circonferenza_tangente_punto = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-tick-step: 5,      
        y-tick-step: 5, 
        x-min: -5, x-max: 5,
        y-min: 0, y-max: 10,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Circonferenza cercata - Centro O(0, 5), Raggio ~4.47
          plot.add(
            domain: (-5, 2), // Porzione visibile nel quadrante
            style: (stroke: 1.2pt + accent.mat),
            t => (
              0 + 4.472 * calc.cos(t),
              5 + 4.472 * calc.sin(t)
            )
          )

          // Retta r (Tangente in P)
          plot.add(
            domain: (-1, 6), 
            x => 0.5 * x,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(30%), dash: "solid"))
          )

          // Retta normale a r in P (Perpendicolare)
          plot.add(
            domain: (-5, 3), 
            x => -2 * x + 5,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Segmento AP
          plot.add(
            domain: (2, 4),
            x => x - 1,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(30%), dash: "solid"))
          )

          // Asse del segmento AP
          plot.add(
            domain: (-4, 4), 
            x => -1 * x + 5,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )
                    
          plot.annotate({
            // Centro O
            circle((0, 5), radius: 0.1, fill: accent.mat, stroke: none)
            content((0.3, 5), [$O$], anchor: "south-west", padding: 3pt)

            // Punto P (Tangenza)
            circle((2, 1), radius: 0.1, fill: accent.mat, stroke: none)
            content((2, 1), [$P$], anchor: "south-east", padding: 10pt)

            // Punto A
            circle((4, 3), radius: 0.1, fill: accent.mat, stroke: none)
            content((4, 3), [$A$], anchor: "south-east", padding: 10pt)

            // Etichetta della retta r
            content((4.7, 1.8), [$r$], anchor: "south-west", padding: 2pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_circonferenza_tangente_punto>
]

#let grafico_circonferenze_due_punti_tangente = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (7.5, 6.5),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -5, x-max: 9,
        y-min: -8, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Circonferenza centrata in O2 passante per A e B
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1.2pt + accent.mat),
            t => (
              ((15 - 5 * calc.sqrt(2)) / 3) + calc.sqrt(calc.pow(2 - (15 - 5 * calc.sqrt(2)) / 3, 2) + calc.pow(1 - (-(15 - 20 * calc.sqrt(2)) / 6), 2)) * calc.cos(t),
              (-(15 - 20 * calc.sqrt(2)) / 6) + calc.sqrt(calc.pow(2 - (15 - 5 * calc.sqrt(2)) / 3, 2) + calc.pow(1 - (-(15 - 20 * calc.sqrt(2)) / 6), 2)) * calc.sin(t)
            )
          )

          // Circonferenza centrata in O1 passante per A e B
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1.2pt + accent.mat),
            t => (
              ((15 + 5 * calc.sqrt(2)) / 3) + calc.sqrt(calc.pow(2 - (15 + 5 * calc.sqrt(2)) / 3, 2) + calc.pow(1 - (-(15 + 20 * calc.sqrt(2)) / 6), 2)) * calc.cos(t),
              (-(15 + 20 * calc.sqrt(2)) / 6) + calc.sqrt(calc.pow(2 - (15 + 5 * calc.sqrt(2)) / 3, 2) + calc.pow(1 - (-(15 + 20 * calc.sqrt(2)) / 6), 2)) * calc.sin(t)
            ),
            samples: 200
          )

          // Retta r: y = 2x (Tangente)
          plot.add(
            domain: (-4, 4), 
            x => 2 * x,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "solid"))
          )

          // Retta AB: y = 0.5x (Secante)
          plot.add(
            domain: (-5, 9), 
            x => 0.5 * x,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "solid"))
          )

          // Perpendicolare alla retta r passante per T1 e per il centro O1
          plot.add(
            domain: (-2, 8), 
            x => -1/2 * x - (5 * calc.sqrt(2))/2,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Perpendicolare alla retta r passante per T2 e per il centro O2
          plot.add(
            domain: (-2, 8), 
            x => -1/2 * x + (5 * calc.sqrt(2))/2,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )

          // Asse del segmento AB (passante per O2)
          plot.add(
            domain: (1.5, 8), 
            x => -2 * x + 7.5,
            style: (stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
          )
                    
          plot.annotate({

            // Punto A
            circle((2, 1), radius: 0.1, fill: accent.mat, stroke: none)
            content((2, 1), [$A$], anchor: "north-west", padding: 3pt)

            // Punto B
            circle((4, 2), radius: 0.1, fill: accent.mat, stroke: none)
            content((4, 2), [$B$], anchor: "north-west", padding: 3pt)

            // Punto di tangenza inferiore T1
            circle((-calc.sqrt(2), -2 * calc.sqrt(2)), radius: 0.1, fill: accent.mat, stroke: none)
            content((-calc.sqrt(2), -2 * calc.sqrt(2)), [$T_1$], anchor: "south-east", padding: 3pt)

            // Punto di tangenza superiore T2
            circle((calc.sqrt(2), 2 * calc.sqrt(2)), radius: 0.1, fill: accent.mat, stroke: none)
            content((calc.sqrt(2), 2 * calc.sqrt(2)), [$T_2$], anchor: "south-east", padding: 4pt)

            // Origine O_1
            circle(((15+5 * calc.sqrt(2))/3, - (15 + 20 * calc.sqrt(2))/6), radius: 0.05, fill: accent.mat, stroke: none)
            content(((15+5 * calc.sqrt(2))/3, - (15 + 20 * calc.sqrt(2))/6), [$O_1$], anchor: "south-west", padding: 5pt)

            // Centro della circonferenza O2
            circle(((15-5 * calc.sqrt(2))/3, - (15 - 20 * calc.sqrt(2))/6), radius: 0.05, fill: accent.mat, stroke: none)
            content(((15-5 * calc.sqrt(2))/3, - (15 - 20 * calc.sqrt(2))/6), [$O_2$], anchor: "south-west", padding: 5pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_circonferenze_due_punti_tangente>
]

#let grafico_fascio_circonferenze1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (10, 6),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -10, x-max: 10,
        y-min: -6, y-max: 6,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // k = 0.1
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat),
            t => (30/11 + (calc.sqrt(21) / 11) * calc.cos(t), (calc.sqrt(21) / 11) * calc.sin(t))
          )

          // k = 0 (Circonferenza base sinistra)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (0 + 1 * calc.cos(t), 1 * calc.sin(t))
          )

          // k = -0.2
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(20%)),
            t => ((-3/4) + (calc.sqrt(61) / 4) * calc.cos(t), (calc.sqrt(61) / 4) * calc.sin(t))
          )

          // k = -0.4
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => (-2 + calc.sqrt(11) * calc.cos(t), calc.sqrt(11) * calc.sin(t))
          )

          // k = -0.6
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(60%)),
            t => ((-9/2) + (calc.sqrt(139) / 2) * calc.cos(t), (calc.sqrt(139) / 2) * calc.sin(t))
          )

          // k = -1 (Asse radicale: x = 3/2)
          plot.add(
            domain: (-6, 6),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            y => (3/2, y)
          )

          // k = -2 (Centro: 6, Raggio: calc.sqrt(19))
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => (6 + calc.sqrt(19) * calc.cos(t), calc.sqrt(19) * calc.sin(t))
          )

// k = -4 (Centro: 4, Raggio: calc.sqrt(5))
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(30%)),
            t => (4 + calc.sqrt(5) * calc.cos(t), calc.sqrt(5) * calc.sin(t))
          )

// k = -10 (Centro: 10/3, Raggio: calc.sqrt(19)/3)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(20%)),
            t => ((10/3) + (calc.sqrt(19) / 3) * calc.cos(t), (calc.sqrt(19) / 3) * calc.sin(t))
          )
          
          plot.annotate({

          // Punto limite L1 (valore esatto)
          circle((((7 + 3 * calc.sqrt(5)) / (3 + calc.sqrt(5))), 0), radius: 0.07, fill: accent.mat, stroke: none)
          content((((7 + 3 * calc.sqrt(5)) / (3 + calc.sqrt(5))), 0), [$L_1$], anchor: "south-west", padding: 3pt)

          // Punto limite L2 (valore esatto)
          circle((((7 - 3 * calc.sqrt(5)) / (3 - calc.sqrt(5))), 0), radius: 0.057, fill: accent.mat, stroke: none)
          content((((7 - 3 * calc.sqrt(5)) / (3 - calc.sqrt(5))), 0), [$L_2$], anchor: "south-east", padding: 3pt)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_fascio_circonferenze1>
]

#let grafico_fascio_circonferenze2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 7.5),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -6, x-max: 6,
        y-min: -5, y-max: 5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // k = -2 (Centro: -2, Raggio: calc.sqrt(5))
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => (-2 + calc.sqrt(5) * calc.cos(t), calc.sqrt(5) * calc.sin(t))
          )

          // k = -4 (Centro: -2/3, Raggio: calc.sqrt(13)/3)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => ((-2/3) + (calc.sqrt(13) / 3) * calc.cos(t), (calc.sqrt(13) / 3) * calc.sin(t))
          )

          // k = -20 (Centro: -2/19, Raggio: calc.sqrt(365)/19)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => ((-2/19) + (calc.sqrt(365) / 19) * calc.cos(t), (calc.sqrt(365) / 19) * calc.sin(t))
          )

          // k -> +-oo (Circonferenza base C1: Centro 0, Raggio 1)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (0 + 1 * calc.cos(t), 1 * calc.sin(t))
          )

          // k = 10 (Centro: 2/11, Raggio: calc.sqrt(125)/11)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => ((2/11) + (calc.sqrt(125) / 11) * calc.cos(t), (calc.sqrt(125) / 11) * calc.sin(t))
          )

          // k = 2 (Centro: 2/3, Raggio: calc.sqrt(13)/3)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => ((2/3) + (calc.sqrt(13) / 3) * calc.cos(t), (calc.sqrt(13) / 3) * calc.sin(t))
          )

          // k = 0.5 (Centro: 4/3, Raggio: calc.sqrt(25)/3 ovvero 5/3)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(60%)),
            t => ((4/3) + (5/3) * calc.cos(t), (5/3) * calc.sin(t))
          )

          // k = 0 (Circonferenza base C2: Centro 2, Raggio calc.sqrt(5))
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat),
            t => (2 + calc.sqrt(5) * calc.cos(t), calc.sqrt(5) * calc.sin(t))
          )

          // k = -0.4 (Centro: 10/3, Raggio: calc.sqrt(41)/3)
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => ((10/3) + (calc.sqrt(41) / 3) * calc.cos(t), (calc.sqrt(41) / 3) * calc.sin(t))
          )

          // k = -0.8 (Centro: 10, Raggio: calc.sqrt(101))
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 0.8pt + accent.mat.lighten(40%)),
            t => (10 + calc.sqrt(101) * calc.cos(t), calc.sqrt(101) * calc.sin(t)),
            samples: 200
          )

          // Asse radicale k = -1 (x = 0, coincide con l'asse y del grafico)
          
          plot.annotate({
            /* content((0, 1.2), [$k -> oo$], anchor: "south", padding: 2pt)
            content((2, 2.5), [$k = 0$], anchor: "south", padding: 2pt) */
            // Punti base del fascio su asse y (0, 1) e (0, -1)
            circle((0, 1), radius: 0.07, fill: accent.mat, stroke: none)
            content((0, 1), [$P_1$], anchor: "south-west", padding: 2pt)
            circle((0, -1), radius: 0.07, fill: accent.mat, stroke: none)
            content((0, -1), [$P_2$], anchor: "north-west", padding: 2pt)
            circle((0, 0), radius: 0.07, fill: accent.mat, stroke: none)
            content((0, 0), [$C_1$], anchor: "south-west", padding: 3pt)
            circle((2, 0), radius: 0.07, fill: accent.mat, stroke: none)
            content((2, 0), [$C_2$], anchor: "south-west", padding: 3pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_fascio_circonferenze2>
]

#let grafico_fascio_circonferenze3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 6),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -6, x-max: 12,
        y-min: -6, y-max: 6,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // k = -2
          plot.add(domain: (0, 2*calc.pi), t => (-3 + 4*calc.cos(t), 4*calc.sin(t)), style: (stroke: 0.8pt + accent.mat.lighten(40%)))
          
          // k = -4
          plot.add(domain: (0, 2*calc.pi), t => (-1 + 2*calc.cos(t), 2*calc.sin(t)), style: (stroke: 0.8pt + accent.mat.lighten(40%)))

          // k = -10
          plot.add(domain: (0, 2*calc.pi), t => (-1/3 + 4/3*calc.cos(t), 4/3*calc.sin(t)), style: (stroke: 0.8pt + accent.mat.lighten(40%)))

          // k -> -inf
          plot.add(domain: (0, 2*calc.pi), t => (0 + 1*calc.cos(t), 1*calc.sin(t)), style: (stroke: 1pt + accent.mat))

          // k = 10
          plot.add(domain: (0, 2*calc.pi), t => (3/11 + 8/11*calc.cos(t), 8/11*calc.sin(t)), style: (stroke: 0.8pt + accent.mat.lighten(40%)))

          // k = 1
          plot.add(domain: (0, 2*calc.pi), t => (1.5 + 0.5*calc.cos(t), 0.5*calc.sin(t)), style: (stroke: 0.8pt + accent.mat.lighten(40%)))

          // k = 0.2
          plot.add(domain: (0, 2*calc.pi), t => (2.5 + 1.5*calc.cos(t), 1.5*calc.sin(t)), style: (stroke: 0.8pt + accent.mat.lighten(40%)))

          // k = 0
          plot.add(domain: (0, 2*calc.pi), t => (3 + 2*calc.cos(t), 2*calc.sin(t)), style: (stroke: 1pt + accent.mat))

          // k = -0.2
          plot.add(domain: (0, 2*calc.pi), t => (3.75 + 2.75*calc.cos(t), 2.75*calc.sin(t)), style: (stroke: 0.8pt + accent.mat.lighten(40%)))

          // k = -0.5
          plot.add(domain: (0, 2*calc.pi), t => (6 + 5*calc.cos(t), 5*calc.sin(t)), style: (stroke: 0.8pt + accent.mat.lighten(40%)))

          plot.annotate({
            
            line((1, -6), (1, 6), stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted"))
            
            
            circle((1, 0), radius: 0.07, fill: accent.mat, stroke: none)
            content((1, 0), [$T$], anchor: "south-west", padding: 7pt)

            circle((0, 0), radius: 0.07, fill: accent.mat, stroke: none)
            content((0, 0), [$C_1$], anchor: "south-east", padding: 7pt)

            circle((3, 0), radius: 0.07, fill: accent.mat, stroke: none)
            content((3, 0), [$C_2$], anchor: "south-west", padding: 7pt)


          })
        }
      )
    }),
    caption: [],
  ) <grafico_fascio_circonferenze3>
]

#let grafico_parabola_ruotata = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6, 6),
        axis-style: none,
        x-min: -10, x-max: 2,
        y-min: -2, y-max: 10,
        x-tick-step: none,      
        y-tick-step: none, 
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Parabola base y = 1/16 * x^2 ruotata di 45° e traslata nel secondo quadrante V(-4,4)
          plot.add(
            domain: (-6, 6),
            style: (stroke: 1pt + accent.mat),
            t => (
              (t * calc.cos(45deg) - (0.0625 * calc.pow(t, 2)) * calc.sin(45deg)) - 4,
              (t * calc.sin(45deg) + (0.0625 * calc.pow(t, 2)) * calc.cos(45deg)) + 4
            )
          )

          plot.annotate({
            let cos45 = calc.cos(45deg)
            let sin45 = calc.sin(45deg)
            
            // Vertice V(-4,4)
            let V = (-4.0, 4.0)
            circle(V, radius: 0.1, fill: accent.mat, stroke: none)
            content(V, [$V$], anchor: "south-east", padding: 3pt)

            // Fuoco F ruotato e traslato
            let F = (-4 * sin45 - 4, 4 * cos45 + 4)
            circle(F, radius: 0.1, fill: accent.mat, stroke: none)
            content(F, [$F$], anchor: "south", padding: 7pt)

            // Asse di simmetria traslato
            line((6 * sin45 - 4, -6 * cos45 + 4), (-8 * sin45 - 4, 8 * cos45 + 4), stroke: (thickness: 0.8pt, paint: gray, dash: "dashed"))
            
            // Direttrice D traslata
            line((-6 * cos45 - (-4) * sin45 - 4, -6 * sin45 + (-4) * cos45 + 4), (6 * cos45 - (-4) * sin45 - 4, 6 * sin45 + (-4) * cos45 + 4), stroke: 1pt + accent.mat)
            content((5 * cos45 - (-4) * sin45 - 4, 5 * sin45 + (-4) * cos45 + 4), [$d$], anchor: "south-east", padding: 4pt)

            // Intersezione Asse-Direttrice S traslata
            let S = (4 * sin45 - 4, -4 * cos45 + 4)
            circle(S, radius: 0.1, fill: accent.mat, stroke: none)
            content(S, [$S$], anchor: "north-west", padding: 3pt)

            // Punto P(4,1) ruotato e traslato
            let P = (4 * cos45 - 1 * sin45 - 4, 4 * sin45 + 1 * cos45 + 4)
            let H = (4 * cos45 - (-4) * sin45 - 4, 4 * sin45 + (-4) * cos45 + 4) 
            circle(P, radius: 0.1, fill: accent.mat, stroke: none)
            circle(H, radius: 0.1, fill: accent.mat, stroke: none)
            line(P, H, stroke: (thickness: 0.6pt, paint: black, dash: "dotted"))
            line(P, F, stroke: (thickness: 0.6pt, paint: black, dash: "dotted"))
            content(P, [$P$], anchor: "south-east", padding: 3pt)
            content(H, [$H$], anchor: "north-west", padding: 3pt)

            // Punto P'(-4,1) ruotato e traslato
            let Pp = (-4 * cos45 - 1 * sin45 - 4, -4 * sin45 + 1 * cos45 + 4)
            let Hp = (-4 * cos45 - (-4) * sin45 - 4, -4 * sin45 + (-4) * cos45 + 4)
            circle(Pp, radius: 0.1, fill: accent.mat, stroke: none)
            circle(Hp, radius: 0.1, fill: accent.mat, stroke: none)
            line(Pp, Hp, stroke: (thickness: 0.6pt, paint: black, dash: "dotted"))
            line(Pp, F, stroke: (thickness: 0.6pt, paint: black, dash: "dotted"))
            content(Pp, [$P'$], anchor: "south-east", padding: 3pt)
            content(Hp, [$H'$], anchor: "north-west", padding: 3pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_parabola_ruotata>
]

#let grafico_famiglia_parabole = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (10, 4),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -4, x-max: 4,
        y-min: -1, y-max: 3,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // a = 1/10 (Molto aperta)
          plot.add(domain: (-7, 7), x => 0.1 * calc.pow(x, 2), 
            style: (stroke: 1pt + accent.mat.lighten(60%)), samples: 200)
          
          // a = 1/2
          plot.add(domain: (-6, 6), x => 0.5 * calc.pow(x, 2), 
            style: (stroke: 1pt + accent.mat.lighten(30%)), samples: 200)

          // a = 1
          plot.add(domain: (-6, 6), x => calc.pow(x, 2), 
            style: (stroke: 1pt + accent.mat), samples: 200)

          // a = 2
          plot.add(domain: (-6, 6), x => 2 * calc.pow(x, 2), 
            style: (stroke: 1pt + accent.mat.darken(30%)), samples: 200)

          // a = 10 (Molto stretta)
          plot.add(domain: (-6, 6), x => 10 * calc.pow(x, 2), 
            style: (stroke: 1pt + accent.mat.darken(60%)), samples: 200)

          plot.annotate({            
            // Etichette indicative per distinguere le curve
            content((-3.6, .1), [$a = 1/10$], anchor: "south", padding: 2pt)
            content((-2.3, .8), [$a = 1/2$], anchor: "south", padding: 2pt)
            content((-2, 2.2), [$a = 1$], anchor: "south", padding: 2pt)
            content((1.6, 2.2), [$a = 2$], anchor: "south", padding: 2pt)
            content((.25, 1.2), [$a = 10$], anchor: "west", padding: 2pt)
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_famiglia_parabole>
]

#let grafico_parabola_traslata = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 3.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 2, 
        x-min: -1, x-max: 5,
        y-min: -1, y-max: 1,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Parabola 1: y = 2x^2
          plot.add(domain: (-2.2, 2.2), x => 2 * calc.pow(x, 2), 
            style: (stroke: 1pt + accent.mat))
          
          // Parabola 2: y = 2x^2 - 12x + 17
          plot.add(domain: (0.8, 5.2), x => 2 * calc.pow(x, 2) - 12 * x + 17, 
            style: (stroke: 1pt + accent.mat.lighten(30%)))

          plot.annotate({
            let V = (0.0, 0.0)
            let Vp = (3.0, -1.0)

            // Linea tratteggiata di collegamento tra i vertici
            line(V, Vp, stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed"))

            // Vertice V(0,0)
            circle(V, radius: 0.05, fill: accent.mat, stroke: none)
            content(V, [$V$], anchor: "north-west", padding: 1pt)
            
            // Vertice V'(3,-1)
            circle(Vp, radius: 0.05, fill: accent.mat.darken(20%), stroke: none)
            content(Vp, [$V'$], anchor: "north", padding: 2pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_parabola_traslata>
]

#let grafico_parabola_tangenti = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 2, 
        x-min: -2, x-max: 6,
        y-min: -6, y-max: 8,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Parabola: y = x^2 - 4x + 3
          plot.add(domain: (-1, 5), x => calc.pow(x, 2) - 4 * x + 3, 
            style: (stroke: 1.5pt + accent.mat))
          
          // Tangente 1 (m = 4): y = 4x - 13
          plot.add(domain: (1.5, 5.5), x => 4 * x - 13, 
            style: (stroke: 1pt + gray, dash: "dashed"))

          // Tangente 2 (m = -4): y = -4x + 3
          plot.add(domain: (-1.5, 2.5), x => -4 * x + 3, 
            style: (stroke: 1pt + gray, dash: "dashed"))

          plot.annotate({
            let P = (2.0, -5.0)
            let V = (2.0, -1.0)
            let T1 = (4.0, 3.0)  // Punto di tangenza per m = 4
            let T2 = (0.0, 3.0)  // Punto di tangenza per m = -4

            // Punto esterno P
            circle(P, radius: 0.06, fill: accent.mat, stroke: none)
            content(P, [$P$], anchor: "west", padding: 4pt)

            // Vertice V
            

            // Punti di tangenza T1 e T2
            circle(T1, radius: 0.05, fill: black, stroke: none)
            content(T1, [$T_1$], anchor: "west", padding: 3pt)
            
            circle(T2, radius: 0.05, fill: black, stroke: none)
            content(T2, [$T_2$], anchor: "west", padding: 3pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_parabola_tangenti>
]

#let grafico_proprieta_riflessiva = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      import cetz.angle
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -1.5, x-max: 6.5,
        y-min: -0.5, y-max: 5.5,
        x-label: [],        
        y-label: [],    
        x-grid: false,   
        y-grid: false, 
        {
          // Parabola generica
          plot.add(domain: (-2.5, 5.5), x => 0.3 * calc.pow(x - 1.5, 2) + 0.65, 
            style: (stroke: 1pt + accent.mat))

          plot.annotate({
            // Punti chiave del grafico
            let F = (1.5, 1.48)
            let P = (3.5, 1.85)
            let N_top = (-0.5, 4.25)  
            let N_bot = (5.5, 0.25)   
            let R_top = (3.5, 5.2)    
            let Asse_top = (1.5, 5.2) 
            let Asse_bot = (1.5, 0.0)
            
            // Estremi per la retta tangente t
            let T_left = (1.8, -0.19)
            let T_right = (6.2, 5.09)

            // Asse di simmetria (tratto-punto)
            line(Asse_bot, Asse_top, stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dash-dotted"))

            // Retta tangente t (tratteggiata)
            line(T_left, T_right, stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dashed"))
            content(T_right, [$t$], anchor: "south-east", padding: 2pt)

            // Retta normale n (tratteggiata)
            line(N_top, N_bot, stroke: (thickness: 1pt, paint: accent.mat.lighten(50%), dash: "dotted"))
            content(N_top, [$n$], anchor: "south-east", padding: 2pt)

            // Raggio incidente / riflesso verticale r
            line(P, R_top, stroke: 1pt + accent.mat)
            content((3.5, 4.5), [$r$], anchor: "west", padding: 4pt)

            // Segmento focale f (da F a P)
            line(F, P, stroke: 1pt + accent.mat)
            content((2.5, 1.55), [$f$], anchor: "north")

            // Fuoco F
            circle(F, radius: 0.05, fill: accent.mat, stroke: none)
            content(F, [$F$], anchor: "east", padding: 4pt)

            // Punto P(p, q)
            circle(P, radius: 0.05, fill: accent.mat, stroke: none)
            content(P, [$P(p, q)$], anchor: "west", padding: 5pt)

            // Angolo alpha: racchiuso tra la normale e il segmento FP
            angle.angle((3.15, 1.8), (-0.5, 4.25), (1.5, 1.48), radius: 0.6, stroke: 0.8pt + accent.mat.lighten(50%))
            content((2.3, 2.0), [$alpha$])

            // Angolo beta: racchiuso tra il raggio r e la normale
            angle.angle((3.5, 1.6), (3.5, 5.2), (-0.5, 4.25), radius: 0.8, stroke: 0.8pt + accent.mat.lighten(50%))
            content((3.1, 2.5), [$beta$])
          })
        }
      )
    }),
    caption: [],
  ) <grafico_proprieta_riflessiva>
]

#let grafico_ellisse_ruotata = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 9),
        axis-style: none,
        x-tick-step: none,      
        y-tick-step: none, 
        x-min: -3, x-max: 3,
        y-min: -3, y-max: 3,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Ellisse ruotata di 30° con a=3 e b=1.5
          plot.add(
            domain: (0, 360),
            style: (stroke: 1pt + accent.mat),
            t => {
              let rad = t * 1deg
              let x_base = 3 * calc.cos(rad)
              let y_base = 1.5 * calc.sin(rad)
              let angle = 30deg
              (
                x_base * calc.cos(angle) - y_base * calc.sin(angle),
                x_base * calc.sin(angle) + y_base * calc.cos(angle)
              )
            }
          )

          plot.annotate({
            let cos30 = calc.cos(30deg)
            let sin30 = calc.sin(30deg)
            let c = calc.sqrt(9 - 2.25) // Distanza focale ~2.598

            // Centro C
            let C = (0.0, 0.0)
            circle(C, radius: 0.05, fill: accent.mat, stroke: none)
            content(C, [$C$], anchor: "south-west", padding: 1pt)

            // Fuochi F1 e F2 ruotati
            let F1 = (-c * cos30, -c * sin30)
            let F2 = (c * cos30, c * sin30)
            circle(F1, radius: 0.05, fill: accent.mat, stroke: none)
            circle(F2, radius: 0.05, fill: accent.mat, stroke: none)
            content(F1, [$F_1$], anchor: "south-west", padding: 1pt)
            content(F2, [$F_2$], anchor: "north-east", padding: 1pt)

            // Vertici sull'asse maggiore (V1, V2)
            let V1 = (-3 * cos30, -3 * sin30)
            let V2 = (3 * cos30, 3 * sin30)
            circle(V1, radius: 0.05, fill: accent.mat, stroke: none)
            circle(V2, radius: 0.05, fill: accent.mat, stroke: none)
            content(V1, [$V_1$], anchor: "east", padding: 1pt)
            content(V2, [$V_2$], anchor: "west", padding: 1pt)

            // Vertici sull'asse minore (V3, V4)
            let V3 = (1.5 * sin30, -1.5 * cos30)
            let V4 = (-1.5 * sin30, 1.5 * cos30)
            circle(V3, radius: 0.05, fill: accent.mat, stroke: none)
            circle(V4, radius: 0.05, fill: accent.mat, stroke: none)
            content(V3, [$V_3$], anchor: "north-west", padding: 1pt)
            content(V4, [$V_4$], anchor: "south-east", padding: 1pt)

            // Asse maggiore (da V1 a V2)
            line(V1, V2, stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dashed"))

            // Asse minore (da V3 a V4)
            line(V3, V4, stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dashed"))

            // Punto P sull'ellisse (corrispondente a t = 120° prima della rotazione)
            let px = 3 * calc.cos(120deg)
            let py = 1.5 * calc.sin(120deg)
            let P = (px * cos30 - py * sin30, px * sin30 + py * cos30)
            circle(P, radius: 0.05, fill: accent.mat, stroke: none)
            content(P, [$P$], anchor: "south", padding: 4pt)

            // Segmenti focali PF1 e PF2
            line(P, F1, stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dotted"))
            line(P, F2, stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dotted"))
          })
        }
      )
    }),
    caption: [],
  ) <grafico_ellisse_ruotata>
]

#let grafico_iperbole_ruotata = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 8),
        axis-style: none,
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -6, x-max: 6,
        y-min: -6, y-max: 6,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Angolo di rotazione (45 gradi)
          let angle = 30deg
          let cos45 = calc.cos(angle)
          let sin45 = calc.sin(angle)
          
          // Parametri iperbole base: a = sqrt(2), b = sqrt(2)
          let a = calc.sqrt(2)
          let b = calc.sqrt(2)

          // Ramo destro (t da -2 a 2)
          plot.add(
            domain: (-3, 3),
            style: (stroke: 1pt + accent.mat),
            t => {
              let x_base = a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos45 - y_base * sin45,
                x_base * sin45 + y_base * cos45
              )
            }
          )

          // Ramo sinistro (t da -2 a 2)
          plot.add(
            domain: (-3, 3),
            style: (stroke: 1pt + accent.mat),
            t => {
              let x_base = -a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos45 - y_base * sin45,
                x_base * sin45 + y_base * cos45
              )
            }
          )

          plot.annotate({
            // Distanza focale c = sqrt(a^2 + b^2) = sqrt(2 + 2) = 2
            let c = 2.0

            // Centro C
            let C = (0.0, 0.0)
            circle(C, radius: 0.1, fill: accent.mat, stroke: none)
            content(C, [$C$], anchor: "north", padding: 7pt)

            // Fuochi F1 e F2 ruotati lungo l'asse principale
            let F1 = (-c * cos45, -c * sin45)
            let F2 = (c * cos45, c * sin45)
            circle(F1, radius: 0.1, fill: accent.mat, stroke: none)
            circle(F2, radius: 0.1, fill: accent.mat, stroke: none)
            content(F1, [$F_1$], anchor: "east", padding: 5pt)
            content(F2, [$F_2$], anchor: "west", padding: 7pt)

            // Vertici reali V1 e V2 ruotati (distanza a = sqrt(2) ~ 1.414)
            let V1 = (-a * cos45, -a * sin45)
            let V2 = (a * cos45, a * sin45)
            circle(V1, radius: 0.1, fill: accent.mat, stroke: none)
            circle(V2, radius: 0.1, fill: accent.mat, stroke: none)
            content(V1, [$V_1$], anchor: "south-west", padding: 3pt)
            content(V2, [$V_2$], anchor: "north-east", padding: 3pt)

            // Asse focale / principale (tratteggiato passante per i fuochi)
            line((-5 * cos45, -5 * sin45), (5 * cos45, 5 * sin45), 
              stroke: (thickness: 0.8pt, paint: accent.mat.lighten(50%), dash: "dashed"))

            // Asse secondario / non traverso (tratteggiato perpendicolare in C)
            line((-5 * sin45, 5 * cos45), (5 * sin45, -5 * cos45), 
              stroke: (thickness: 0.8pt, paint: accent.mat.lighten(50%), dash: "dashed"))
            
            // Asintoto 1
            let as1_cos = calc.cos(45deg + angle)
            let as1_sin = calc.sin(45deg + angle)
            line((-5.5 * as1_cos, -5.5 * as1_sin), (5.5 * as1_cos, 5.5 * as1_sin), 
              stroke: (thickness: 0.8pt, paint: accent.mat.lighten(50%), dash: "dotted"))
            content((5.5 * as1_cos, 5.5 * as1_sin), [$a_1$], anchor: "east", padding: 3pt)

            // Asintoto 2
            let as2_cos = calc.cos(-45deg + angle)
            let as2_sin = calc.sin(-45deg + angle)
            line((-5.5 * as2_cos, -5.5 * as2_sin), (5.5 * as2_cos, 5.5 * as2_sin), 
              stroke: (thickness: 0.8pt, paint: accent.mat.lighten(50%), dash: "dotted"))
            content((5.5 * as2_cos, 5.5 * as2_sin), [$a_2$], anchor: "north", padding: 3pt)

            // Punto P sul ramo destro dell'iperbole (scelto a t = 1.0)
            let px = a * calc.cosh(1.0)
            let py = b * calc.sinh(1.0)
            let P = (px * cos45 - py * sin45, px * sin45 + py * cos45)
            circle(P, radius: 0.1, fill: accent.mat, stroke: none)
            content(P, [$P$], anchor: "south-east", padding: 4pt)

            // Segmenti focali PF1 e PF2 che collegano il punto ai fuochi
            line(P, F1, stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dotted"))
            line(P, F2, stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dotted"))
          })
        }
      )
    }),
    caption: [],
  ) <grafico_iperbole_ruotata>
]

#let grafico_iperbole_tangente1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none, 
        x-min: -6, x-max: 6,
        y-min: -6, y-max: 6,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Parametro di rotazione (0 gradi)
          let angle = 0deg
          let cos_a = calc.cos(angle)
          let sin_a = calc.sin(angle)
          
          let a = calc.sqrt(2)
          let b = calc.sqrt(2)

          // Ramo destro
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat),
            t => {
              let x_base = a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos_a - y_base * sin_a,
                x_base * sin_a + y_base * cos_a
              )
            }
          )

          // Ramo sinistro
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat),
            t => {
              let x_base = -a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos_a - y_base * sin_a,
                x_base * sin_a + y_base * cos_a
              )
            }
          )

          plot.annotate({
            let c = 2.0 

            // Centro C
            /* let C = (0.0, 0.0)
            circle(C, radius: 0.1, fill: black, stroke: none)
            content(C, [$C$], anchor: "north-east", padding: 4pt) */

            // Fuochi F1 e F2
            let F1 = (-c * cos_a, -c * sin_a)
            let F2 = (c * cos_a, c * sin_a)
            circle(F1, radius: 0.1, fill: accent.mat, stroke: none)
            circle(F2, radius: 0.1, fill: accent.mat, stroke: none)
            /* content(F1, [$F_1$], anchor: "south-east", padding: 3pt)
            content(F2, [$F_2$], anchor: "north-west", padding: 3pt) */

            // Vertici reali V1 e V2
            let V1 = (-a * cos_a, -a * sin_a)
            let V2 = (a * cos_a, a * sin_a)
            circle(V1, radius: 0.1, fill: black, stroke: none)
            circle(V2, radius: 0.1, fill: black, stroke: none)
            content(V2, [$V_2$], anchor: "south-west", padding: 15pt)

            // Asintoti
            let as1_cos = calc.cos(45deg + angle)
            let as1_sin = calc.sin(45deg + angle)
            line((-5.5 * as1_cos, -5.5 * as1_sin), (5.5 * as1_cos, 5.5 * as1_sin), stroke: (paint: gray, dash: "dotted"))
            
            let as2_cos = calc.cos(-45deg + angle)
            let as2_sin = calc.sin(-45deg + angle)
            line((-5.5 * as2_cos, -5.5 * as2_sin), (5.5 * as2_cos, 5.5 * as2_sin), stroke: (paint: gray, dash: "dotted"))

            // RETTA TANGENTE al vertice V2            
            let T_top = (a * cos_a - 5 * sin_a, a * sin_a + 5 * cos_a)
            let T_bottom = (a * cos_a - (-5) * sin_a, a * sin_a + (-5) * cos_a)
            line(T_top, T_bottom, stroke: (thickness: .7pt, paint: accent.mat, dash: "dashed"))

            // PUNTO B (Intersezione tangente e asintoto a1)            
            let B = (a * cos_a - a * sin_a, a * sin_a + a * cos_a)
            circle(B, radius: 0.1, fill: black, stroke: none)
            content(B, [$B$], anchor: "south-east", padding: 6pt)

            // Punto P e segmenti focali
            /* let px = a * calc.cosh(1.2)
            let py = b * calc.sinh(1.2)
            let P = (px * cos_a - py * sin_a, px * sin_a + py * cos_a)
            circle(P, radius: 0.1, fill: accent.mat, stroke: none)
            line(P, F1, stroke: (thickness: 0.8pt, paint: black, dash: "dotted"))
            line(P, F2, stroke: (thickness: 0.8pt, paint: black, dash: "dotted"))
            content(P, [$P$], anchor: "west", padding: 4pt) */

            // Assi principale e secondario
            line((-5.5 * cos_a, -5.5 * sin_a), (5.5 * cos_a, 5.5 * sin_a), stroke: (paint: gray, dash: "dashed"))
            line((-5.5 * sin_a, 5.5 * cos_a), (5.5 * sin_a, -5.5 * cos_a), stroke: (paint: gray, dash: "dashed"))
          })
        }
      )
    }),
    caption: [],
  ) <grafico_iperbole_tangente1>
]

#let grafico_iperbole_tangente2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none, 
        x-min: -6, x-max: 6,
        y-min: -6, y-max: 6,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Parametro di rotazione (0 gradi)
          let angle = 90deg
          let cos_a = calc.cos(angle)
          let sin_a = calc.sin(angle)
          
          let a = calc.sqrt(2)
          let b = calc.sqrt(2)

          // Ramo destro
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat),
            t => {
              let x_base = a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos_a - y_base * sin_a,
                x_base * sin_a + y_base * cos_a
              )
            }
          )

          // Ramo sinistro
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat),
            t => {
              let x_base = -a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos_a - y_base * sin_a,
                x_base * sin_a + y_base * cos_a
              )
            }
          )

          plot.annotate({
            let c = 2.0 

            // Centro C
            /* let C = (0.0, 0.0)
            circle(C, radius: 0.1, fill: black, stroke: none)
            content(C, [$C$], anchor: "north-east", padding: 4pt) */

            // Fuochi F1 e F2
            let F1 = (-c * cos_a, -c * sin_a)
            let F2 = (c * cos_a, c * sin_a)
            circle(F1, radius: 0.1, fill: accent.mat, stroke: none)
            circle(F2, radius: 0.1, fill: accent.mat, stroke: none)
            /* content(F1, [$F_1$], anchor: "south-east", padding: 3pt)
            content(F2, [$F_2$], anchor: "north-west", padding: 3pt) */

            // Vertici reali V1 e V2
            let V1 = (-a * cos_a, -a * sin_a)
            let V2 = (a * cos_a, a * sin_a)
            circle(V1, radius: 0.1, fill: black, stroke: none)
            circle(V2, radius: 0.1, fill: black, stroke: none)
            content(V2, [$V_2$], anchor: "south-west", padding: 15pt)

            // Asintoti
            let as1_cos = calc.cos(45deg + angle)
            let as1_sin = calc.sin(45deg + angle)
            line((-5.5 * as1_cos, -5.5 * as1_sin), (5.5 * as1_cos, 5.5 * as1_sin), stroke: (paint: gray, dash: "dotted"))
            
            let as2_cos = calc.cos(-45deg + angle)
            let as2_sin = calc.sin(-45deg + angle)
            line((-5.5 * as2_cos, -5.5 * as2_sin), (5.5 * as2_cos, 5.5 * as2_sin), stroke: (paint: gray, dash: "dotted"))

            // RETTA TANGENTE al vertice V2            
            let T_top = (a * cos_a - 5 * sin_a, a * sin_a + 5 * cos_a)
            let T_bottom = (a * cos_a - (-5) * sin_a, a * sin_a + (-5) * cos_a)
            line(T_top, T_bottom, stroke: (thickness: .7pt, paint: accent.mat, dash: "dashed"))

            // PUNTO B (Intersezione tangente e asintoto a1)            
            let B = (a * cos_a - a * sin_a, a * sin_a + a * cos_a)
            circle(B, radius: 0.1, fill: black, stroke: none)
            content(B, [$B$], anchor: "north-east", padding: 6pt)

            // Punto P e segmenti focali
            /* let px = a * calc.cosh(1.2)
            let py = b * calc.sinh(1.2)
            let P = (px * cos_a - py * sin_a, px * sin_a + py * cos_a)
            circle(P, radius: 0.1, fill: accent.mat, stroke: none)
            line(P, F1, stroke: (thickness: 0.8pt, paint: black, dash: "dotted"))
            line(P, F2, stroke: (thickness: 0.8pt, paint: black, dash: "dotted"))
            content(P, [$P$], anchor: "west", padding: 4pt) */

            // Assi principale e secondario
            line((-5.5 * cos_a, -5.5 * sin_a), (5.5 * cos_a, 5.5 * sin_a), stroke: (paint: gray, dash: "dashed"))
            line((-5.5 * sin_a, 5.5 * cos_a), (5.5 * sin_a, -5.5 * cos_a), stroke: (paint: gray, dash: "dashed"))
          })
        }
      )
    }),
    caption: [],
  ) <grafico_iperbole_tangente2>
]

#let grafico_iperbole1-2 = [
  #align(center)[#grid(columns: 2, column-gutter: 2em)[#grafico_iperbole_tangente1][#grafico_iperbole_tangente2]]
]

#let grafico_ellisse_rettangolo = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none, 
        x-min: -4, x-max: 4,
        y-min: -4, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let a = 4.0
          let b = 2.5

          // Rettangolo circoscritto (tangente all'ellisse)
          plot.annotate({
            rect((-a, -b), (a, b), 
              stroke: (thickness: 0.8pt, paint: gray, dash: "dashed"),
              fill: none)
          })

          // Ellisse: x = a*cos(t), y = b*sin(t)
          plot.add(
            domain: (0, 360),
            style: (stroke: 1pt + accent.mat),
            t => {
              let rad = t * 1deg
              (a * calc.cos(rad), b * calc.sin(rad))
            }
          )
          
        }
      )
    }),
    caption: [],
  ) <grafico_ellisse_rettangolo>
]

#let grafico_iperbole_rettangolo = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none, 
        x-min: -4, x-max: 4,
        y-min: -4, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let a = 2.5
          let b = 2.0

          // Rettangolo di riferimento (tangente solo nei vertici verticali)
          plot.annotate({
            rect((-a, -b), (a, b), 
              stroke: (thickness: 0.8pt, paint: gray, dash: "dashed"), fill: none)
          })

          // Ramo destro
          plot.add(
            domain: (-1.4, 1.4),
            style: (stroke: 1pt + accent.mat),
            t => (a * calc.cosh(t), b * calc.sinh(t))
          )

          // Ramo sinistro
          plot.add(
            domain: (-1.4, 1.4),
            style: (stroke: 1pt + accent.mat),
            t => (-a * calc.cosh(t), b * calc.sinh(t))
          )
        }
      )
    }),
    caption: [],
  ) <grafico_iperbole_rettangolo>
]

#let grafico_iperbole_verticale_rettangolo = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (3, 3),
        axis-style: "school-book",
        x-tick-step: none,      
        y-tick-step: none, 
        x-min: -4, x-max: 4,
        y-min: -4, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let a = 2.5
          let b = 2.0

          // Rettangolo di riferimento (tangente solo nei vertici orizzontali)
          plot.annotate({
            rect((-a, -b), (a, b), 
              stroke: (thickness: 0.8pt, paint: gray, dash: "dashed"),
              fill: none)
          })

          // Ramo superiore
          plot.add(
            domain: (-1.4, 1.4),
            style: (stroke: 1pt + accent.mat),
            t => (a * calc.sinh(t), b * calc.cosh(t))
          )

          // Ramo inferiore
          plot.add(
            domain: (-1.4, 1.4),
            style: (stroke: 1pt + accent.mat),
            t => (a * calc.sinh(t), -b * calc.cosh(t))
          )
          
        }
      )
    }),
    caption: [],
  ) <grafico_iperbole_verticale_rettangolo>
]

#let grafico_ellissi_iperbole = [
  #align(center)[
    #grid(columns: 3, column-gutter: 1em,  [#grafico_ellisse_rettangolo],[#grafico_iperbole_rettangolo],[#grafico_iperbole_verticale_rettangolo])
  ]
]

#let grafico_ellisse_parametrica = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -6, x-max: 6,
        y-min: -4, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // PARAMETRI MODIFICABILI
          let a = 4.0          // Semiasse maggiore fisso
          let e = 0.75         // Eccentricità (modificabile tra 0 e 1)
          
          // Calcolo automatico del semiasse minore b
          let b = a * calc.sqrt(1 - calc.pow(e, 2))

          // Rettangolo circoscritto dinamico
          plot.annotate({
            rect((-a, -b), (a, b), 
              stroke: (thickness: 0.8pt, paint: gray, dash: "dashed"),
              fill: none)
          })

          // Ellisse parametrica
          plot.add(
            domain: (0, 360),
            style: (stroke: 1.5pt + accent.mat),
            t => {
              let rad = t * 1deg
              (a * calc.cos(rad), b * calc.sin(rad))
            }
          )
          
          // Origine degli assi
          plot.annotate({
            circle((0,0), radius: 0.05, fill: black, stroke: none)
            content((0,0), [$O$], anchor: "north-east", padding: 3pt)
          })
        }
      )
    }),
    caption: [Ellisse parametrica definita tramite l'eccentricità.],
  ) <grafico_ellisse_parametrica>
]

#let grafico_tre_ellissi = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -5, x-max: 5,
        y-min: -5, y-max: 5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        legend: (6, 6.2),        
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        {
          let a = 4.0 
          let eccentricita = (0.5, 0.75, 0.95)
          let stili = ("solid", "dashed", "dotted")
          
          for (i, e) in eccentricita.enumerate() {
            let b = a * calc.sqrt(1 - calc.pow(e, 2))
            let stile_linea = stili.at(i)

            plot.add(
              domain: (0, 360),
              label: [e = #e],
              style: (stroke: (thickness: 1pt, paint: accent.mat, dash: stile_linea)),
              t => {
                let rad = t * 1deg
                (a * calc.cos(rad), b * calc.sin(rad))
              }
            )
          }
          
        }
      )
    }),
    caption: [],
  ) <grafico_tre_ellissi>
]

#let grafico_ellisse_traslata = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -1.5, x-max: 4.5,
        y-min: -0.5, y-max: 4.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: true,   
        y-grid: true, 
        {
          let cx = 1.0
          let cy = 2.0
          let a = calc.sqrt(2)
          let b = 1.0

          // Disegno dell'ellisse traslata
          plot.add(
            domain: (0, 360),
            style: (stroke: 1.5pt + accent.mat),
            t => {
              let rad = t * 1deg
              (cx + a * calc.cos(rad), cy + b * calc.sin(rad))
            }
          )

          plot.annotate({
            // Centro C
            let C = (cx, cy)
            circle(C, radius: 0.05, fill: black, stroke: none)
            content(C, [$C$], anchor: "south-west", padding: 1pt)

            // Fuoco F1 (0, 2)
            let F1 = (0.0, 2.0)
            circle(F1, radius: 0.05, fill: accent.mat, stroke: none)
            content(F1, [$F_1$], anchor: "south-west", padding: 1pt)

            // Fuoco F2 (2, 2)
            let F2 = (2.0, 2.0)
            circle(F2, radius: 0.05, fill: accent.mat, stroke: none)
            content(F2, [$F_2$], anchor: "south-east", padding: 1pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_ellisse_traslata>
]

#let grafico_iperbole_traslata = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -2.5, x-max: 4.5,
        y-min: -1.5, y-max: 3.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: true,   
        y-grid: true, 
        {
          let cx = 1.0
          let cy = 1.0
          let a = calc.sqrt(2)
          let b = 1.0

          // Ramo destro definito analiticamente
          plot.add(
            domain: (-1.4, 1.4),
            style: (stroke: 1pt + accent.mat),
            t => (cx + a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          // Ramo sinistro definito analiticamente
          plot.add(
            domain: (-1.4, 1.4),
            style: (stroke: 1pt + accent.mat),
            t => (cx - a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          plot.annotate({
            // Distanza focale esatta c = sqrt(a^2 + b^2) = sqrt(2 + 1) = sqrt(3)
            let c = calc.sqrt(3)

            // Centro C
            let C = (cx, cy)
            circle(C, radius: 0.05, fill: accent.mat, stroke: none)
            content(C, [$C$], anchor: "south-east", padding: 1pt)

            // Fuoco F1 posizionato senza approssimazioni
            let F1 = (cx - c, cy)
            circle(F1, radius: 0.05, fill: accent.mat, stroke: none)
            content(F1, [$F_1$], anchor: "south-east", padding: 1pt)

            // Fuoco F2 posizionato senza approssimazioni
            let F2 = (cx + c, cy)
            circle(F2, radius: 0.05, fill: accent.mat, stroke: none)
            content(F2, [$F_2$], anchor: "south-west", padding: 1pt)
          })
        }
      )
    }),
    caption: [],
  ) <grafico_iperbole_traslata>
]

#let grafico_iperbole_asintoti_ruotati = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -2.5, x-max: 4.5,
        y-min: -0.5, y-max: 4.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let cx = 1.0
          let cy = 2.0
          let a = 1.0
          let b = 1.0

          // Ramo destro
          plot.add(
            domain: (-2.4, 2.4),
            style: (stroke: 1pt + accent.mat),
            t => (cx + a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          // Ramo sinistro
          plot.add(
            domain: (-2.4, 2.4),
            style: (stroke: 1pt + accent.mat),
            t => (cx - a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          plot.annotate({
            let c = calc.sqrt(2)

            // Centro C
            let C = (cx, cy)
            circle(C, radius: 0.05, fill: black, stroke: none)
            content(C, [$C$], anchor: "south", padding: 4pt)

            // Fuochi
            let F1 = (cx - c, cy)
            let F2 = (cx + c, cy)
            circle(F1, radius: 0.05, fill: accent.mat, stroke: none)
            circle(F2, radius: 0.05, fill: accent.mat, stroke: none)
            content(F1, [$F_1$], anchor: "east", padding: 2pt)
            content(F2, [$F_2$], anchor: "west", padding: 2pt)

            // Asintoti tratteggiati corretti (passanti per C(1,2) con m = 1 e m = -1)
            line((-1.5, (-1.5 - cx) + cy), (3.5, (3.5 - cx) + cy), stroke: (paint: accent.mat, dash: "dashed"))
            line((-1.5, -(-1.5 - cx) + cy), (3.5, -(3.5 - cx) + cy), stroke: (paint: accent.mat, dash: "dashed"))

            // Assi x' e y' paralleli agli asintoti passanti per l'origine O(0,0)
            let angle = 45deg
            let cos_a = calc.cos(angle)
            let sin_a = calc.sin(angle)

            // Asse x' (inclinato di 45°)
            line((-0.5 * cos_a, -0.5 * sin_a), (5.0 * cos_a, 5.0 * sin_a), 
              stroke: (thickness: 0.8pt, paint: black.lighten(30%)), mark: (end: ")>", size: 0.15))
            content((4.5 * cos_a, 4.1 * sin_a), [$x'$], anchor: "south-west")

            // Asse y' (inclinato di 135°)
            let cos_b = calc.cos(135deg)
            let sin_b = calc.sin(135deg)
            line((-0.5 * cos_b, -0.5 * sin_b), (4.0 * cos_b, 4.0 * sin_b), 
              stroke: (thickness: 0.8pt, paint: black.lighten(30%)), mark: (end: ")>", size: 0.15))
            content((3.0 * cos_b, 3.5 * sin_b), [$y'$], anchor: "south-east")

            // Angolo alfa evidenziato nell'origine
            arc((0.0 + 0.6, 0.0), radius: 0.6, start: 0deg, delta: 45deg, stroke: 0.5pt + accent.mat)
            content((0.7 * calc.cos(22.5deg) + 0.2, 0.7 * calc.sin(22.5deg)), [$alpha$])

            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_iperbole_asintoti_ruotati>
]

#let grafico_ellisse_ruotata_assi = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -2.5, x-max: 2.5,
        y-min: -2.5, y-max: 2.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Centro esatto nel sistema Oxy
          let cx = 2.0 / 3.0
          let cy = -1.0 / 3.0
          
          // Angolo di rotazione degli assi x' e y'
          let angle = 45deg
          let cos_a = calc.cos(angle)
          let sin_a = calc.sin(angle)
          
          // Semiassi basati sul grafico del libro
          let a = calc.sqrt(2.0 / 3.0) // Lungo x'
          let b = calc.sqrt(2.0)       // Lungo y'

          // Ellisse orientata
          plot.add(
            domain: (0, 360),
            style: (stroke: 1pt + accent.mat),
            t => {
              let rad = t * 1deg
              let x_local = a * calc.cos(rad)
              let y_local = b * calc.sin(rad)
              (
                cx + (x_local * cos_a - y_local * sin_a),
                cy + (x_local * sin_a + y_local * cos_a)
              )
            }
          )

          plot.annotate({
            // Centro C
            let C = (cx, cy)
            circle(C, radius: 0.03, fill: accent.mat, stroke: none)
            content(C, [$C$], anchor: "north-west", padding: 1pt)

            // Asse x' (inclinato di 45° passante per l'origine)
            line((-2.5 * cos_a, -2.5 * sin_a), (3.0 * cos_a, 3.0 * sin_a), 
              stroke: (thickness: 0.6pt, paint: black), mark: (end: ")>", size: 0.12))
            content((2.5 * cos_a, 2.1 * sin_a), [$x'$], anchor: "south-west")

            // Asse y' (inclinato di 135° passante per l'origine)
            let cos_b = calc.cos(135deg)
            let sin_b = calc.sin(135deg)
            line((-2.5 * cos_b, -2.5 * sin_b), (2.8 * cos_b, 2.8 * sin_b), 
              stroke: (thickness: 0.6pt, paint: black), mark: (end: ")>", size: 0.12))
            content((1.5 * cos_b, 2.1 * sin_b), [$y'$], anchor: "south-east")

            // Angolo alfa nell'origine
            arc((0.5, 0.0), radius: 0.5, start: 0deg, delta: 45deg, stroke: 0.5pt + accent.mat)
            content((0.7 * calc.cos(22.5deg), 0.65 * calc.sin(22.5deg)), [$alpha$])

          })
        }
      )
    }),
    caption: [],
  ) <grafico_ellisse_ruotata_assi>
]

#let grafico_circonferenza_apollonio = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (7.5, 4.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -0.5, x-max: 4.5,
        y-min: -1.5, y-max: 1.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let xa = 0.0
          let xb = 2.0
          let k = 2.0
          
          // Calcolo analitico di Centro e Raggio
          let cx = (xb * calc.pow(k, 2)) / (calc.pow(k, 2) - 1)
          let cy = 0.0
          let r = xb * calc.abs(k / (calc.pow(k, 2) - 1))

          // Circonferenza di Apollonio
          plot.add(
            domain: (0, 360),
            style: (stroke: 1pt + accent.mat),
            t => {
              let rad = t * 1deg
              (cx + r * calc.cos(rad), cy + r * calc.sin(rad))
            }
          )

          plot.annotate({
            // Punto A(0,0)
            circle((xa, 0), radius: 0.04, fill: black, stroke: none)
            content((xa, 0), [$A$], anchor: "south-east", padding: 1pt)

            // Punto B(2,0)
            circle((xb, 0), radius: 0.04, fill: black, stroke: none)
            content((xb, 0), [$B$], anchor: "south-east", padding: 1pt)

            // Centro C(8/3, 0)
            let C = (cx, cy)
            circle(C, radius: 0.04, fill: accent.mat, stroke: none)
            content(C, [$C$], anchor: "south", padding: 1.5pt)
            
            // Punto generico P sulla circonferenza per mostrare il vincolo AP = k * BP
            let p_angle = 60deg
            let P = (cx + r * calc.cos(p_angle), cy + r * calc.sin(p_angle))
            circle(P, radius: 0.04, fill: black, stroke: none)
            content(P, [$P$], anchor: "south-west", padding: 2pt)
            
            // Segmenti AP e BP
            line((xa, 0), P, stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted"))
            line((xb, 0), P, stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted"))



          })
        }
      )
    }),
    caption: [],
  ) <grafico_circonferenza_apollonio>
]

#let grafico_luogo_geometrico1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6.5, 4.5),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -7.5, x-max: 5.5,
        y-min: -4.5, y-max: 4.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let cx = -1.0
          let cy = 0.0
          let a = 2.0
          let b = calc.sqrt(12.0)

          // Ramo destro
          plot.add(
            domain: (-1.3, 1.3),
            style: (stroke: 1pt + accent.mat),
            t => (cx + a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          // Ramo sinistro
          plot.add(
            domain: (-1.3, 1.3),
            style: (stroke: 1pt + accent.mat),
            t => (cx - a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          plot.annotate({
            let c = 4.0

            // Centro C(-1, 0)
            let C = (cx, cy)
            circle(C, radius: 0.05, fill: black, stroke: none)
            content(C, [$C$], anchor: "north-east", padding: 4pt)

            // Fuoco F1(-5, 0)
            let F1 = (cx - c, cy)
            circle(F1, radius: 0.1, fill: accent.mat, stroke: none)
            content(F1, [$F_1$], anchor: "south-east", padding: 4pt)

            // Fuoco F2(3, 0)
            let F2 = (cx + c, cy)
            circle(F2, radius: 0.1, fill: accent.mat, stroke: none)
            content(F2, [$F_2$], anchor: "south-west", padding: 4pt)

            // Direttrice d (x = 0, coincide con l'asse y)
            line((0.0, -4.5), (0.0, 4.5), stroke: (thickness: 0.8pt, paint: accent.mat.darken(10%), dash: "dashed"))
            content((0.3, 4.0), [$d$], anchor: "south-west", padding: 5pt)

            // Direttrice d' (x = -2)
            line((-2.0, -4.5), (-2.0, 4.5), stroke: (thickness: 0.8pt, paint: accent.mat.darken(10%), dash: "dashed"))
            content((-2.0, 4.0), [$d'$], anchor: "south-east", padding: 5pt)

            // Punto P sul ramo destro (calcolato per t = 0.8)
            let t_p = 0.8
            let px = cx + a * calc.cosh(t_p)
            let py = cy + b * calc.sinh(t_p)
            let P = (px, py)
            
            circle(P, radius: 0.1, fill: accent.mat, stroke: none)
            content(P, [$P$], anchor: "west", padding: 5pt)

            // Segmenti PF1 e PF2 (collegamenti con i fuochi)
            line(P, F1, stroke: (thickness: 1pt, paint: accent.mat.darken(20%), dash: "dotted"))
            line(P, F2, stroke: (thickness: 1pt, paint: accent.mat.darken(20%), dash: "dotted"))

            // Segmento perpendicolare alla direttrice d' (proiezione H su x = -2)
            let H = (-2.0, py)
            line(P, H, stroke: (thickness: 1pt, paint: accent.mat.darken(20%), dash: "dotted"))
            circle(H, radius: 0.03, fill: gray, stroke: none)
            content(H, [$H$], anchor: "east", padding: 5pt)




          })
        }
      )
    }),
    caption: [],    
  ) <grafico_luogo_geometrico1>
]

#let grafico_luogo_geometrico2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 5),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -0.5, x-max: 8.5,
        y-min: -2.5, y-max: 2.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let cx = 4.0
          let cy = 0.0
          let a = 2.0
          let b = calc.sqrt(3.0)

          // Ellisse
          plot.add(
            domain: (0, 360),
            style: (stroke: 1pt + accent.mat),
            t => {
              let rad = t * 1deg
              (cx + a * calc.cos(rad), cy + b * calc.sin(rad))
            }
          )

          plot.annotate({
            let c = 1.0
            let F1 = (cx - c, cy)
            let F2 = (cx + c, cy)

            // Centro C(4, 0)
            circle((cx, cy), radius: 0.05, fill: accent.mat, stroke: none)
            content((cx, cy), [$C$], anchor: "south", padding: 5pt)

            // Fuoco F1(3, 0)
            circle(F1, radius: 0.05, fill: accent.mat, stroke: none)
            content(F1, [$F_1$], anchor: "south", padding: 4pt)

            // Fuoco F2(5, 0)
            circle(F2, radius: 0.05, fill: accent.mat, stroke: none)
            content(F2, [$F_2$], anchor: "south", padding: 4pt)

            // Direttrice d (x = 0, asse y)
            line((0.0, -3.5), (0.0, 3.5), stroke: (thickness: 0.8pt, paint: accent.mat.darken(10%), dash: "dashed"))
            content((0.0, 2.0), [$d$], anchor: "south-west", padding: 2pt)

            // Direttrice d' (x = 8)
            line((8.0, -3.5), (8.0, 3.5), stroke: (thickness: 0.8pt, paint: accent.mat.darken(10%), dash: "dashed"))
            content((8.0, 2.0), [$d'$], anchor: "south-east", padding: 2pt)

            // Punto P sull'ellisse (calcolato per un angolo di 60 gradi)
            let p_angle = 60deg
            let px = cx + a * calc.cos(p_angle)
            let py = cy + b * calc.sin(p_angle)
            let P = (px, py)
            
            circle(P, radius: 0.05, fill: accent.mat, stroke: none)
            content(P, [$P$], anchor: "south-west", padding: 3pt)

            // Segmenti PF1 e PF2 (collegamenti con i fuochi)
            line(P, F1, stroke: (thickness: 1pt, paint: accent.mat.darken(20%), dash: "dotted"))
            line(P, F2, stroke: (thickness: 1pt, paint: accent.mat.darken(20%), dash: "dotted"))

            // Segmento orizzontale perpendicolare alla direttrice d' (proiezione H su x = 8)
            let H = (8.0, py)
            line(P, H, stroke: (thickness: 1pt, paint: accent.mat.darken(20%), dash: "dotted"))
            circle(H, radius: 0.03, fill: accent.mat, stroke: none)
            content(H, [$H$], anchor: "west", padding: 2pt)
          })
        }
      )
    }),
    caption: [],    
  ) <grafico_luogo_geometrico2>
]

#let grafico_luogo_geometrico3 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -1.5, x-max: 2.5,
        y-min: -1.5, y-max: 1.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // 1. Circonferenza unitaria: x^2 + y^2 = 1
          plot.add(
            domain: (0, 360),
            style: (stroke: 1.2pt + accent.mat),
            t => {
              let rad = t * 1deg
              (calc.cos(rad), calc.sin(rad))
            }
          )

          // 2. Parabola: x = y^2 (disegnata parametrizzando rispetto a y)
          plot.add(
            domain: (-1.3, 1.3),
            style: (stroke: 1.2pt + accent.mat),
            t => (calc.pow(t, 2), t)
          )

          plot.annotate({
            // Origine degli assi
            
          })
        }
      )
    }),
    caption: [],
  ) <grafico_luogo_geometrico3>
]

#let grafico_luogo_geometrico4 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -1.5, x-max: 2.5,
        y-min: -2.5, y-max: 2.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Ramo superiore (y = x^(3/2)) ed inferiore (y = -x^(3/2)) 
          // uniti in un unico tracciato parametrizzato rispetto a t (ordinata y)
          plot.add(
            domain: (-2.6, 2.6),
            style: (stroke: 1.2pt + accent.mat),
            t => (calc.pow(calc.abs(t), 2.0 / 3.0), t),
            samples: 200
          )

          plot.annotate({
            // Cuspide nell'origine

          })
        }
      )
    }),
    caption: [],
  ) <grafico_luogo_geometrico4>
]

#let grafico_luogo_geometrico5 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (7, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -2.5, x-max: 4.5,
        y-min: -0.5, y-max: 3.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let cx = 1.0
          let cy = 0.0
          let a = 1.0
          let b = 1.0

          // Ramo destro superiore (t >= 0 per garantire y >= 0)
          plot.add(
            domain: (0.0, 2.8),
            style: (stroke: 1.0pt + accent.mat),
            t => (cx + a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          // Ramo sinistro superiore (t >= 0 per garantire y >= 0)
          plot.add(
            domain: (0.0, 2.8),
            style: (stroke: 1pt + accent.mat),
            t => (cx - a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          plot.annotate({
            // Centro C(1,0) dell'iperbole completa
            circle((cx, cy), radius: 0.05, fill: accent.mat, stroke: none)
            content((cx, cy), [$C$], anchor: "south", padding: 5pt)

            // Vertici reali dell'iperbole da cui partono i rami
            circle((0, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((2, 0), radius: 0.05, fill: accent.mat, stroke: none)
            
            // Asintoti tratteggiati (solo nella regione y >= 0)
            line((cx, cy), (4.5, 3.5), stroke: (thickness: 0.7pt, paint: accent.mat, dash: "dashed"))
            line((cx, cy), (-2.5, 3.5), stroke: (thickness: 0.7pt, paint: accent.mat, dash: "dashed"))


          })
        }
      )
    }),
    caption: [],
  ) <grafico_luogo_geometrico5>
]

#let grafico_luogo_geometrico6 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (7.5, 4.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -2.5, x-max: 2.5,
        y-min: -0.5, y-max: 2.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let cx = 0.0
          let cy = 1.0
          let r = 1.0

          // Semicirconferenza superiore (angolo da 0 a 180 gradi)
          plot.add(
            domain: (0, 180),
            style: (stroke: 1.2pt + accent.mat),
            t => {
              let rad = t * 1deg
              (cx + r * calc.cos(rad), cy + r * calc.sin(rad))
            }
          )

          plot.annotate({
            // Centro C(0,1)
            circle((cx, cy), radius: 0.04, fill: accent.mat, stroke: none)
            content((cx, cy), [$C$], anchor: "south-west", padding: 2pt)

            // Estremi del diametro base della semicirconferenza
            circle((-1.0, 1.0), radius: 0.04, fill: accent.mat, stroke: none)
            circle((1.0, 1.0), radius: 0.04, fill: accent.mat, stroke: none)
            
            // Linea tratteggiata di supporto y = 1
            line((-2.5, 1.0), (2.5, 1.0), stroke: (thickness: 0.7pt, paint: accent.mat, dash: "dashed"))

          })
        }
      )
    }),
    caption: [],
  ) <grafico_luogo_geometrico6>
]

#let tabella_curva_parametrica1 = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
  stroke: 0.5pt + accent.mat.lighten(90%),	
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
  columns: (auto,) * 9, 
  [$t$], [$-2$], [$-3/2$], [$-1$], [$-1/2$], [$0$], [$1$], [$3/2$], [$2$],
  [$x$], [$-16$], [$-63/8$], [$-3$], [$-5/8$], [$0$], [$-1$], [$-9/8$], [$0$],
  [$y$], [$-6$], [$-15/8$], [$0$], [$3/8$], [$0$], [$-3$], [$15/8$], [$6$]
  )
)
]

#let grafico_curva_parametrica1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (9, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -8.5, x-max: 0.5,
        y-min: -2.5, y-max: 2.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Disegno della curva definita dalle equazioni parametriche
          plot.add(
            domain: (-8.2, 2.2),
            style: (stroke: 1.2pt + accent.mat),
            t => (
              calc.pow(t, 3) - 2 * calc.pow(t, 2), // x(t)
              calc.pow(t, 3) - t                   // y(t)
            ),
            samples: 200
          )

          plot.annotate({
            // Nodo di autointersezione (per t = 0 e t = 1)
            // In questi punti x(0) = 0, y(0) = 0 e x(1) = -1, y(1) = 0 non coincidono.
            // Il punto di autointersezione esatto si ha risolvendo il sistema per t1 != t2:
            // x(t1) = x(t2) e y(t1) = y(t2), che fornisce il punto (-8/27, -2/27)
            let nx = -8.0 / 27.0
            let ny = -2.0 / 27.0
            circle((nx, ny), radius: 0.04, fill: black, stroke: none)

          })
        }
      )
    }),
    caption: [],
  ) <grafico_curva_parametrica1>
]

#let tabella_curva_parametrica2 = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
  stroke: 0.5pt + accent.mat.lighten(90%),	
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
  columns: (auto,) * 10, 
  [$t$], [$0$], [$pi/2$], [$pi$], [$3pi/2$], [$2pi$], [$5pi/2$], [$3pi$], [$7pi/2$], [$4pi$], 
  [$x(gamma_1)$], [$0$], [$1.57$], [$3.14$], [$4.71$], [$6.28$], [$7.85$], [$9.42$], [$11$], [$12.57$], 
  [$x(gamma_2)$], [$0$], [$3.88$], [$31.01$], [$104.65$], [$248.05$], [$484.47$], [$837.17$], [$1329.39$], [$1984.4$], 
  [$x(gamma_3)$], [$0$], [$1.57$], [$0$],  [$-4.71$], [$0$], [$7.85$], [$0$], [$-11$], [$0$]
  )
)
]

#let grafico_disequazione_lineare1 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *


      plot.plot(
        size: (6, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -1.5, x-max: 6.5,
        y-min: -1.5, y-max: 4.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let f(x) = -2.0/3.0 * x + 2.0
          let soffitto(x) = 5.5

          // Riempimento nativo usando add-fill-between dal manuale
          plot.add-fill-between(
            domain: (-3.5, 6.5),
            style: (fill: accent.mat.lighten(80%), stroke: none),
            f,
            soffitto
          )

          // Retta di confine tratteggiata (esclusa dal semipiano)
          plot.add(
            domain: (-3.5, 5.5),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed")),
            f
          )

          // Annotazioni interne per i punti notevoli e il testo
          plot.annotate({
            // Intercetta asse y (0, 2)
            circle((0, 2), radius: 0.05, fill: accent.mat, stroke: none)
            // Intercetta asse x (3, 0)
            circle((3, 0), radius: 0.05, fill: accent.mat, stroke: none)
     

          })
        }
      )
    }),
    caption: [],
  ) <grafico_disequazione_lineare1>
]

#let grafico_disequazione_lineare2 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (6, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -4.5, x-max: 4.5,
        y-min: -1.5, y-max: 5.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let f(x) = 0.5 * x + 0.5
          let soffitto(x) = 5.5

          // Riempimento nativo dell'area superiore dal manuale
          plot.add-fill-between(
            domain: (-4.5, 4.5),
            style: (fill: accent.mat.lighten(80%), stroke: none),
            f,
            soffitto
          )

          // Retta di confine continua (inclusa nella soluzione)
          plot.add(
            domain: (-4.5, 4.5),
            style: (stroke: 1pt + accent.mat),
            f
          )

          plot.annotate({
            // Intercetta asse y (0, 0.5)
            circle((0, 0.5), radius: 0.05, fill: accent.mat, stroke: none)


            // Intercetta asse x (-1, 0)
            circle((-1, 0), radius: 0.05, fill: accent.mat, stroke: none)

            

          })
        }
      )
    }),
    caption: [],
  ) <grafico_disequazione_lineare2>
]

#let grafico_disequazione_iperbole = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -7.5, x-max: 3.5,
        y-min: -4.5, y-max: 2.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Funzioni dei due rami (superiore e inferiore)
          // Definite all'esterno della zona tra i vertici (x < -4.23 e x > 0.23)
          let ramo_sup(x) = {
            let arg = (calc.pow(x + 2, 2) - 5) / 3
            if arg >= 0 { -1 + calc.sqrt(arg) } else { 0 }
          }
          let ramo_inf(x) = {
            let arg = (calc.pow(x + 2, 2) - 5) / 3
            if arg >= 0 { -1 - calc.sqrt(arg) } else { 0 }
          }
          
          let pavimento(x) = -5.5
          let soffitto(x) = 3.5

          // Riempimento invertito: area esterna ai rami (regione richiesta dal < 0)
          plot.add-fill-between(
            domain: (-7.5, 3.5),
            style: (fill: accent.mat.lighten(80%), stroke: none),
            pavimento,
            ramo_inf,
            samples: 200
          )
          plot.add-fill-between(
            domain: (-7.5, 3.5),
            style: (fill: accent.mat.lighten(80%), stroke: none),
            ramo_sup,
            soffitto,
            samples: 200
          )

          // Disegno dei rami dell'iperbole con tratto tratteggiato
          let cx = -2.0
          let cy = -1.0
          let a = calc.sqrt(5.0)
          let b = calc.sqrt(5.0 / 3.0)

          // Ramo destro
          plot.add(
            domain: (-1.5, 1.5),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed")),
            t => (cx + a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          // Ramo sinistro
          plot.add(
            domain: (-1.5, 1.5),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed")),
            t => (cx - a * calc.cosh(t), cy + b * calc.sinh(t))
          )

          plot.annotate({
            // Centro C(-2, -1)
            circle((cx, cy), radius: 0.04, fill: accent.mat, stroke: none)
            content((cx, cy), [$C$], anchor: "north-east", padding: 3pt)

          })
        }
      )
    }),
    caption: [],
  ) <grafico_disequazione_iperbole>
]

#let grafico_disequazione_ellisse = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -4.5, x-max: 4.5,
        y-min: -5.5, y-max: 5.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Il dominio reale dell'ellisse è stretto tra ±sqrt(500)/6 (circa ±3.72678)
          let x_lim = (5 * calc.sqrt(5)) / 3

          // Funzione limite superiore dell'ellisse ruotata
          let ellisse_sup(x) = {
            let arg = 500.0 - 36.0 * calc.pow(x, 2)
            if arg >= 0 { (2.0 * x + calc.sqrt(arg)) / 5.0 } else { 0.0 }
          }

          // Funzione limite inferiore dell'ellisse ruotata
          let ellisse_inf(x) = {
            let arg = 500.0 - 36.0 * calc.pow(x, 2)
            if arg >= 0 { (2.0 * x - calc.sqrt(arg)) / 5.0 } else { 0.0 }
          }

          // Riempimento corretto ed evidenziato della parte interna (segno <= 0)
          plot.add-fill-between(
            domain: (-3.726, 3.726),
            samples: 200,
            style: (fill: accent.mat.lighten(80%), stroke: none),
            ellisse_inf,
            ellisse_sup
          )

          // Disegno del bordo continuo
          plot.add(
            domain: (-3.7267, 3.7267),
            samples: 300,
            style: (stroke: 1pt + accent.mat),
            ellisse_sup
          )
          plot.add(
            domain: (-3.7267, 3.7267),
            samples: 200,
            style: (stroke: 1pt + accent.mat),
            ellisse_inf
          )

        }
      )
    }),
    caption: [],
  ) <grafico_disequazione_ellisse>
]

#let grafico_sistema_disequazioni = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-tick-step: 2,      
        y-tick-step: 2, 
        x-min: -5.5, x-max: 4.5,
        y-min: -5.5, y-max: 5.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Estremi del dominio dell'ellisse
          let x_ell_max = 3.7267 
          let x_ell_min = -x_ell_max

          // Funzioni dell'ellisse
          let ellisse_sup(x) = {
            let arg = 500.0 - 36.0 * calc.pow(x, 2)
            if arg >= 0 { (2.0 * x + calc.sqrt(arg)) / 5.0 } else { 0.0 }
          }
          let ellisse_inf(x) = {
            let arg = 500.0 - 36.0 * calc.pow(x, 2)
            if arg >= 0 { (2.0 * x - calc.sqrt(arg)) / 5.0 } else { 0.0 }
          }

          // Funzioni dell'iperbole (utilizzate per sottrarre l'area non voluta)
          let ramo_sup(x) = {
            let arg = (calc.pow(x + 2, 2) - 5) / 3
            if arg >= 0 { -1 + calc.sqrt(arg) } else { 0.0 }
          }
          let ramo_inf(x) = {
            let arg = (calc.pow(x + 2, 2) - 5) / 3
            if arg >= 0 { -1 - calc.sqrt(arg) } else { 0.0 }
          }

          // 1. Coloriamo prima l'INTERA area dell'ellisse
          plot.add-fill-between(
            domain: (x_ell_min, x_ell_max),
            samples: 200,
            style: (fill: accent.mat.lighten(80%), stroke: none),
            ellisse_inf,
            ellisse_sup
          )

          // 2. SOTTRAIAMO l'area interna dell'iperbole colorandola di bianco
          // Questa operazione cancella il colore dell'ellisse solo dove l'iperbole NON è soddisfatta
          plot.add-fill-between(
            domain: (x_ell_min, x_ell_max),
            samples: 200,
            style: (fill: white, stroke: none),
            ramo_inf,
            ramo_sup
          )

          // 3. Ripristiniamo gli assi cartesiani sopra il riempimento bianco per non coprirli
          plot.add-hline(0, style: (stroke: 0.5pt + black))
          plot.add-vline(0, style: (stroke: 0.5pt + black))

          // 4. TRACCIAMENTO DEI BORDI
          // Ellisse (Bordo continuo)
          plot.add(domain: (x_ell_min, x_ell_max), samples: 200, style: (stroke: 1pt + accent.mat), ellisse_sup)
          plot.add(domain: (x_ell_min, x_ell_max), samples: 200, style: (stroke: 1pt + accent.mat), ellisse_inf)

          // Iperbole (Bordo tratteggiato)
          let cx = -2.0
          let cy = -1.0
          let a_ip = calc.sqrt(5.0)
          let b_ip = calc.sqrt(5.0 / 3.0)

          plot.add(
            domain: (-1.5, 1.6),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed")),
            t => (cx + a_ip * calc.cosh(t), cy + b_ip * calc.sinh(t))
          )
          plot.add(
            domain: (-1.5, 1.5),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dashed")),
            t => (cx - a_ip * calc.cosh(t), cy + b_ip * calc.sinh(t))
          )

        }
      )
    }),
    caption: [],
  ) <grafico_sistema_disequazioni>
]

#let grafico_sistema_misto = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -2.5, x-max: 2.5,
        y-min: -2.5, y-max: 2.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // 1. Retta di confine tratteggiata (y = -2x + 0.5)
          let retta(x) = -2.0 * x + 0.5
          plot.add(
            domain: (-1.0, 1.5),
            style: (stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dashed")),
            retta
          )

          // Pre-calcolo e filtraggio dei punti della circonferenza
          let punti_soluzione = ()
          let punti_esclusi = ()
          
          let t = 0
          while t <= 360 {
            let rad = t * 1deg
            let x = calc.cos(rad)
            let y = calc.sin(rad)
            
            if (4.0 * x + 2.0 * y - 1.0 > 0) {
              punti_soluzione.push((x, y))
            } else {
              punti_esclusi.push((x, y))
            }
            t += 1.5 // Passo di campionamento
          }

          // 2. Arco di circonferenza SOLUZIONE (in evidenza)
          if punti_soluzione.len() > 0 {
            plot.add(
              style: (stroke: 1pt + accent.mat),
              punti_soluzione
            )
          }

          // 3. Parte di circonferenza ESCLUSA (leggera)
          if punti_esclusi.len() > 0 {
            plot.add(
              style: (stroke: (thickness: 0.8pt, paint: accent.mat, dash: "dotted")),
              punti_esclusi
            )
          }

        }
      )
    }),
    caption: [],
  ) <grafico_sistema_misto>
]

#let grafico_disequazione_fratta = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (8, 8),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1, 
        x-min: -2.5, x-max: 2.5,
        y-min: -2.5, y-max: 2.5,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          let retta(x) = -2.0 * x + 0.5
          let circ_sup(x) = {
            let arg = 1.0 - calc.pow(x, 2)
            if arg >= 0 { calc.sqrt(arg) } else { 0.0 }
          }
          let circ_inf(x) = {
            let arg = 1.0 - calc.pow(x, 2)
            if arg >= 0 { -calc.sqrt(arg) } else { 0.0 }
          }

          let pavimento(x) = -2.5
          let soffitto(x) = 2.5

          // Tutta la zona sopra la retta (N > 0 e D > 0 provvisorio)
          plot.add-fill-between(
            domain: (-1.0, 1.5),
            samples: 100,
            style: (fill: accent.mat.lighten(80%), stroke: none),
            retta,
            soffitto
          )

          // Bianco  all'interno della circonferenza nella zona sopra la retta
          plot.add-fill-between(
            domain: (-1.0, 1.0),
            samples: 200,
            style: (fill: white, stroke: none),
            x => {
              let y_r = retta(x)
              let y_c = circ_inf(x)
              calc.max(y_r, y_c)
            },
            circ_sup
          )

          // Colore dentro la circonferenza nella zona SOTTO la retta (N < 0 e D < 0)
          plot.add-fill-between(
            domain: (-1.0, 1.0),
            samples: 200,
            style: (fill: accent.mat.lighten(80%), stroke: none),
            circ_inf,
            x => {
              let y_r = retta(x)
              let y_c = circ_sup(x)
              calc.min(y_r, y_c)
            }
          )

          // Ripristino degli assi cartesiani coperti dal riempimento bianco
          plot.add-hline(0, style: (stroke: 0.5pt + black))
          plot.add-vline(0, style: (stroke: 0.5pt + black))

          // Tracciamento della retta di confine (aperto -> tratteggiata)
          plot.add(
            domain: (-1.0, 1.5),
            style: (stroke: (thickness: 1.2pt, paint: gray, dash: "dashed")),
            retta
          )

          // Tracciamento della circonferenza (chiuso -> continua)
          plot.add(domain: (-1.0, 1.0), samples: 200, style: (stroke: 1.2pt + accent.mat), circ_sup)
          plot.add(domain: (-1.0, 1.0), samples: 200, style: (stroke: 1.2pt + accent.mat), circ_inf)

          // Origine e cerchietti vuoti nei punti di intersezione esclusi
          plot.annotate({
            
            // Coordinate esatte delle intersezioni
            let x1 = (2.0 - calc.sqrt(19.0)) / 10.0
            let y1 = -2.0 * x1 + 0.5
            let x2 = (2.0 + calc.sqrt(19.0)) / 10.0
            let y2 = -2.0 * x2 + 0.5

            // Cerchietto vuoto punto 1
            circle((x1, y1), radius: 0.06, fill: white, stroke: 1pt + accent.mat)
            // Cerchietto vuoto punto 2
            circle((x2, y2), radius: 0.06, fill: white, stroke: 1pt + accent.mat)

          })

        }
      )
    }),
    caption: [],
  ) <grafico_disequazione_fratta>
]



