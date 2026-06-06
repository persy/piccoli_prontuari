#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "shared.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart

//===================

// Tabelle

#let tabella_funzioni_potenza_esponenziali = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: sans-fonts)
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
    columns: (auto,) * 14, 
    [$x$], [0], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [10#super[2]], [10#super[3]],
    
    [$x^2$], [0], [1], [4], [9], [16], [25], [36], [49], [64], [81], [100], [10#super[4]], [10#super[6]],
    
    [$2^x$], [1], [2], [4], [8], [16], [32], [64], [128], [256], [512], [1024],[ #math.approx 10#super[30]], [#math.approx 10#super[301]]
    )
  ) <tabella_funzioni_potenza_esponenziali>
]

#let tabella_ver_diseq_log = [#tabella_ver_diseq(
  punti: ([$-oo$], [$3$], [$5$], [$+oo$]),
  elementi: (
    (tipo: "linea", da: 0, a: 3, incl_da: false, riga: 0, testo: [$1$]),
    (tipo: "linea", da: 2, a: 3, incl_da: false, incl_a: false,  riga: 1, testo: [$2$]),    
    (tipo: "linea", da: 2, a: 3, incl_a: false, riga: 2, testo: [Sist.]),
  ),
  doppia_linea: true
)]

#let schema_diseq_log = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$3$], [$5$], [$+oo$]),
  righe: (
    (
      testo: [$x - 3$],
      segni: ([], [$+$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x - 5$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$+$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
)
]
]

#let schema_segni16 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-2$], [$-1$], [$1$], [$3$], [$+oo$]),
  righe: (
    (
      testo: [$x - 1$],
      segni: ([], [$times$], [$times$], [$-$], [$times$], [$-$], [$times$], [$+$], [$+$], [$times$], [])
    ),
    (
      testo: [$ln(x + 2)$],
      segni: ([], [$times$], [$times$], [$-$], [$times$], [$+$], [$times$], [$+$], [$+$], [$times$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$times$], [$times$], [$+$], [$times$], [$-$], [$times$], [$+$], [$+$], [$times$], [])
    ),
  ),
)
]
]

// Grafici

#let funzione_esponenziale = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (7, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 3,
    y-min: 0, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (5.3, 2.6),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat)),        
      label: [$a > 1$],
      x => calc.pow(2, x)  
    )

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat.lighten(60%))),        
      label: [$a < 1$],
      x => calc.pow(0.5, x)  
    )

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat, dash: "dotted")),        
      label: [$a = 1$],
      x => calc.pow(1, x)  
    )
    
    }
  )
}),
caption: []
) <funzione_esponenziale>
]

#let funzione_esponenziale_e = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (7, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 3,
    y-min: 0, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (.3, 2),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = 1.2
    let y_p = calc.exp(x_p)

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat)),        
      label: [$e^x$],
      x => calc.exp(x),
      samples: 200
    )

    plot.add(
        x => y_p + y_p * (x - x_p),
        domain: (-1, 2.4),
        label: [$m = y_P$],
        style: (stroke: (paint: accent.mat, dash: "dotted")), 
      )

    // 3. Annotazioni specifiche (punto P, linee tratteggiate e testi)
      plot.annotate({
        // Punto P
        circle((x_p, y_p), radius: 0.05, fill: black)
        content((x_p + 0.2, y_p - 0.1), $P$, anchor: "west")
        
        // Linee tratteggiate verso gli assi
        line(
          (x_p, 0), (x_p, y_p), 
          stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt)
        )
        line(
          (0, y_p), (x_p, y_p), 
          stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt)
        )
        })
    
    }
  )
}),
caption: []
) <funzione_esponenziale_e>
]

#let funzioni_esponenziali = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (8, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -5, x-max: 3,
    y-min: 0, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (.4, 3.5),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.2, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    plot.add(
      domain: (-5, 3),        
      style: (stroke: (paint: accent.mat)),        
      label: [$(3/2)^x$],
      x => calc.pow(1.5, x)  
    )

    plot.add(
      domain: (-5, 3),        
      style: (stroke: (paint: accent.mat.lighten(30%))),        
      label: [$2^x$],
      x => calc.pow(2, x)  
    )

    plot.add(
      domain: (-5, 3),        
      style: (stroke: (paint: accent.mat.lighten(55%))),        
      label: [$4^x$],
      x => calc.pow(4, x)  
    )

    plot.add(
      domain: (-5, 3),        
      style: (stroke: (paint: accent.mat.lighten(80%))),        
      label: [$10^x$],
      x => calc.pow(10, x)  
    )

    
    }
  )
}),
caption: []
) <funzioni_esponenziali>
]

#let funzione_logaritmo = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (7, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1, x-max: 5,
    y-min: -2, y-max: 2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (2.3, 4.1),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    plot.add(
      domain: (.01, 5),        
      style: (stroke: (paint: accent.mat)),        
      label: [$a > 1$],
      x => 2 * calc.log(x)  
    )

    plot.add(
      domain: (.01, 5),        
      style: (stroke: (paint: accent.mat.lighten(60%))),        
      label: [$a < 1$],
      x => -2 * calc.log(x)  
    )

    
    }
  )
}),
caption: []
) <funzione_logaritmo>
]

#let funzione_logaritmo_ln = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (7, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1, x-max: 5,
        y-min: -3, y-max: 3,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 
        legend: (3.5, 1.5),        
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        legend-anchor: auto,
        {
          // Punto x_p > 0 
          let x_p = 2.3
          let y_p = calc.ln(x_p)
          let m = 1 / x_p

          // y = ln(x)
          plot.add(
            domain: (0.05, 5),        
            style: (stroke: (paint: accent.mat)),        
            label: [$ln(x)$],
            x => calc.ln(x),
            samples: 200
          )

          // Retta tangente: y = y_p + m * (x - x_p)
          plot.add(
            x => y_p + m * (x - x_p),
            domain: (0, 5),
            label: [$m = 1 / x_P$],
            style: (stroke: (paint: accent.mat, dash: "dotted")), 
          )

          plot.annotate({
            // Punto P
            circle((x_p, y_p), radius: 0.05, fill: black)
            content((x_p + 0.1, y_p + 0.2), $P$, anchor: "south-west")
            
            // Linea tratteggiata verso l'asse x
            line(
              (x_p, 0), (x_p, y_p), 
              stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt)
            )
            // Linea tratteggiata verso l'asse y
            line(
              (0, y_p), (x_p, y_p), 
              stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt)
            )
          })
        }
      )
    }),
    caption: []
  ) <funzione_logaritmo_ln>
]

#let funzione_esp_e_ln = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  let x_1 = 1.2
    let y_1 = calc.exp(x_1)
    let x_2 = 2.3
    let y_2 = calc.ln(x_2)
    let m = 1 / x_2
  plot.plot(
    size: (9, 6), // Proporzione 1:1 con i range degli assi (X=9 unità, Y=6 unità)
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 6,
    y-min: -1, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (.3, 5),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {
    

    // Esponenziale e
    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat, thickness: 1.5pt)),        
      label: [$e^x$],
      x => calc.exp(x),
      samples: 200
    )

    // Tangente esponenziale e
    plot.add(
        x => y_1 + y_1 * (x - x_1),
        domain: (-1, 2.4),
        style: (stroke: (paint: accent.mat, dash: "dotted", thickness: 1pt)), 
      )

    // ln(x)
    plot.add(
      domain: (0.05, 6),        
      style: (stroke: (paint: accent.mat.lighten(50%), thickness: 1.5pt)),        
      label: [$ln(x)$],
      x => calc.ln(x),
      samples: 200
    )

    // Tangente ln(x)
    plot.add(
      x => y_2 + m * (x - x_2),
      domain: (0, 6),
      style: (stroke: (paint: accent.mat.lighten(50%), dash: "dotted", thickness: 1pt)), 
    )

    // Linea orizzontale passante per P
    plot.add(
      x => y_1,
      domain: (0, 5),
      style: (stroke: (paint: accent.mat, dash: "dashed", thickness: 0.5pt)), 
    )
    // Linea orizzontale passante per P'
    plot.add(
      x => y_2,
      domain: (0, 5),
      style: (stroke: (paint: accent.mat.lighten(50%), dash: "dashed", thickness: 0.5pt)),
      
    )

    plot.annotate({
      // Punto P
      circle((x_1, y_1), radius: 0.05, fill: black)
      content((x_1 - 0.2, y_1 + 0.2), $P$, anchor: "south-east")

      // Linee tratteggiate verso gli assi per P
      line((x_1, 0), (x_1, y_1), stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt))
      line((0, y_1), (x_1, y_1), stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt))

      // Angolo alfa (esponenziale)
      let ang_alfa = calc.atan(y_1)
      arc((x_1+ .5, y_1), start: 0deg, delta: ang_alfa, radius: 0.5, stroke: (paint: accent.mat, thickness: 0.75pt))
      // Posizionamento etichetta dentro il settore circolare
      content((x_1 + 0.7, y_1 + 0.5), $alpha$, anchor: "center")

      // Punto P'
      circle((x_2, y_2), radius: 0.05, fill: black)
      content((x_2 - 0.2, y_2 + 0.2), $P'$, anchor: "south-east")

      // Linee tratteggiate verso gli assi per P'
      line((x_2, 0), (x_2, y_2), stroke: (dash: "dashed", paint: accent.mat.lighten(50%), thickness: 0.5pt))
      line((0, y_2), (x_2, y_2), stroke: (dash: "dashed", paint: accent.mat.lighten(50%), thickness: 0.5pt))

      // Angolo beta (logaritmo)
      let ang_beta = calc.atan(m)
      arc((x_2 + .7, y_2), start: 0deg, delta: ang_beta, radius: 0.6, stroke: (paint: accent.mat.lighten(50%), cap: "butt", thickness: 0.75pt))
      // Posizionamento etichetta dentro il settore circolare
      content((x_2 + 1, y_2 + 0.15), $beta$, anchor: "center")
    })

      

    }
  )

  
}),
caption: []
) <funzione_esp_e_ln>
]

#let funzioni_log2_2x = [#align(center)[#grid(columns: 2, column-gutter: 1em)[#figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (5, 5),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -1.5, x-max: 3,
    y-min: -.6, y-max: 4,
    x-label: [],        
    y-label: [],    
    x-grid: none,   
    y-grid: none, 
    legend: (4.1, 4.9),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = .6
    let y_p = calc.pow(2, x_p)
    let x_p2 = 1.9
    let y_p2 = calc.pow(2, x_p2)

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat)), 
      label: [$2^x$],     
      x => calc.pow(2, x),
      samples: 200
    )


    plot.annotate({
      // Punto P
      circle((x_p, y_p), radius: 0.02, fill: black)
      content((x_p + 0.2, y_p - 0.1), [], anchor: "west")

      circle((x_p, 0), radius: 0.02, fill: black)
      content((x_p + 0.1, 0 - 0.1), $x$, anchor: "north")
      circle((x_p2, 0), radius: 0.02, fill: black)
      content((x_p2 + 0.1, 0 - 0.1), $log_2 y$, anchor: "north")
      circle((0, y_p), radius: 0.02, fill: black)
      content((0 - 0.1, y_p), $2^x$, anchor: "east")
      circle((0, y_p2), radius: 0.02, fill: black)
      content((0 - 0.2, y_p2), $y$, anchor: "east")

      // Linee tratteggiate verso gli assi
      line(
        (x_p, 0), (x_p, y_p), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p, y_p), (0, y_p),  
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )

      circle((x_p2, y_p2), radius: 0.02, fill: black)
      content((x_p2 + 0.2, y_p2 - 0.1), [], anchor: "west")
      
      // Linee tratteggiate verso gli assi
      line(
        (x_p2, y_p2), (x_p2, 0),  
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (0, y_p2), (x_p2, y_p2), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )


    })
    
    }
  )
}),
caption: []
) <grafico_esp_2>

][#figure(
  cetz.canvas({
  import cetz.draw: *
    
  plot.plot(
  size: (5, 5),
  axis-style: "school-book",
  x-tick-step: none,      
  y-tick-step: none,      
  x-min: -.5, x-max: 4.5,
  y-min: -.5, y-max: 2.5,
  x-label: [],        
  y-label: [],    
  x-grid: none,   
  y-grid: none, 
  legend: (3.4, 4.9),        
  legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
  legend-anchor: auto,
  {

    let x_p = 1.7
    let y_p = calc.log(base: 2, x_p)
    let x_p2 = 3.6
    let y_p2 = calc.log(base: 2, x_p2)

    plot.add(
      domain: (0.05, 7),        
      style: (stroke: (paint: accent.mat.lighten(30%))), 
      label: [$log_2 x$],       
      x => calc.log(base: 2, x),
      samples: 200
    )


    plot.annotate({

      circle((x_p, y_p), radius: 0.02, fill: black)
      content((x_p + 0.1, y_p + 0.1), [], anchor: "south-west")

      circle((x_p, 0), radius: 0.02, fill: black)
      content((x_p + 0.1, 0 - 0.1), $x$, anchor: "north")
      circle((x_p2, 0), radius: 0.02, fill: black)
      content((x_p2 + 0.1, 0 - 0.1), $2^y$, anchor: "north")
      circle((0, y_p), radius: 0.02, fill: black)
      content((0 - 0.25, y_p), $log_2 x$, anchor: "east")
      circle((0, y_p2), radius: 0.02, fill: black)
      content((0 - 0.2, y_p2), $y$, anchor: "east")
      
      // Linea tratteggiata verso l'asse x
      line(
        (x_p, 0), (x_p, y_p), 
        stroke: (dash: "dashed", paint: accent.mat.lighten(30%), thickness: 0.5pt), mark: (end: ")>", fill: accent.mat.lighten(30%), scale: .75)
      )
      // Linea tratteggiata verso l'asse y
      line(
        (x_p, y_p), (0, y_p), 
        stroke: (dash: "dashed", paint: accent.mat.lighten(30%), thickness: 0.5pt), mark: (end: ")>", fill: accent.mat.lighten(30%), scale: .75)
      )

      circle((x_p2, y_p2), radius: 0.02, fill: black)
      content((x_p2 + 0.2, y_p2 - 0.1), [], anchor: "west")
      // Linee tratteggiate verso gli assi
      line(
        (x_p2, y_p2), (x_p2, 0), 
        stroke: (dash: "dashed", paint: accent.mat.lighten(30%), thickness: 0.5pt), mark: (end: ")>", fill: accent.mat.lighten(30%), scale: .75)
      )
      line(
        (0, y_p2), (x_p2, y_p2), 
        stroke: (dash: "dashed", paint: accent.mat.lighten(30%), thickness: 0.5pt), mark: (end: ")>", fill: accent.mat.lighten(30%), scale: .75)
      )
    })
        }
      )
    }),
    caption: []
  ) <grafico_log_2>

]]
]

#let grafici_proprieta_logaritmi = [#align(center)[#grid(columns: 1, row-gutter: 1em)[#figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (8, 6),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -2.5, x-max: 3.5,
    y-min: -.6, y-max: 4,
    x-label: [],        
    y-label: [],    
    x-grid: none,   
    y-grid: none, 
    legend: (4.1, 4.9),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = 1
    let y_p = calc.pow(1.5, x_p)
    let x_p2 = 2
    let y_p2 = calc.pow(1.5, x_p2)
    let x_p3 = 3
    let y_p3 = calc.pow(1.5, x_p3)

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat)),       
      x => calc.pow(1.5, x),
      samples: 200
    )


    plot.annotate({
      // Punto P e P_1
      circle((x_p, y_p), radius: 0.02, fill: black)
      content((x_p + 0.2, y_p - 0.1), [], anchor: "west")
      circle((x_p, 0), radius: 0.02, fill: black)
      content((x_p + 0.1, 0 - 0.1), $x_1$, anchor: "north")
      circle((0, y_p), radius: 0.02, fill: black)
      content((0 - 0.1, y_p), $alpha = a^(x_1)$, anchor: "east")

      circle((x_p2, 0), radius: 0.02, fill: black)
      content((x_p2 + 0.1, 0 - 0.1), $x_2$, anchor: "north")
      circle((x_p2, y_p2), radius: 0.02, fill: black)
      content((x_p2 + 0.2, y_p2 - 0.1), [], anchor: "west")
      circle((0, y_p2), radius: 0.02, fill: black)
      content((0 - 0.1, y_p2), $beta = a^(x_2)$, anchor: "east")

      circle((x_p3, 0), radius: 0.02, fill: black)
      content((x_p3 + 0.1, 0 - 0.1), $x_1 + x_2$, anchor: "north")
      circle((x_p3, y_p3), radius: 0.02, fill: black)
      content((x_p3 + 0.2, y_p2 - 0.1), [], anchor: "west")
      circle((0, y_p3), radius: 0.02, fill: black)
      content((0 + 0.1, y_p3), $alpha dot beta = a^(x_1 + x_2)$, anchor: "east")

      // Linee tratteggiate verso gli assi
      line(
        (x_p, 0), (x_p, y_p), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p, y_p), (0, y_p),  
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p2, 0),  (x_p2, y_p2), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p2, y_p2), (0, y_p2), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p3, 0),  (x_p3, y_p3), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p3, y_p3), (0, y_p3), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )


    })
    
    }
  )
}),
caption: []
) <grafico_proprieta_logaritmi1>

][#figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (8, 6),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -2.5, x-max: 3.5,
    y-min: -.6, y-max: 4,
    x-label: [],        
    y-label: [],    
    x-grid: none,   
    y-grid: none, 
    legend: (4.1, 4.9),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = 1
    let y_p = calc.pow(1.5, x_p)
    let x_p2 = 3
    let y_p2 = calc.pow(1.5, x_p2)

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat)),       
      x => calc.pow(1.5, x),
      samples: 200
    )


    plot.annotate({
      // Punto P e P_1
      circle((x_p, y_p), radius: 0.02, fill: black)
      content((x_p + 0.2, y_p - 0.1), [], anchor: "west")
      circle((x_p, 0), radius: 0.02, fill: black)
      content((x_p + 0.1, 0 - 0.1), $x_1$, anchor: "north")
      circle((0, y_p), radius: 0.02, fill: black)
      content((0 - 0.1, y_p), $alpha = a^(x_1)$, anchor: "east")

      circle((x_p2, 0), radius: 0.02, fill: black)
      content((x_p2 + 0.1, 0 - 0.1), $beta x_1$, anchor: "north")
      circle((x_p2, y_p2), radius: 0.02, fill: black)
      content((x_p2 + 0.2, y_p2 - 0.1), [], anchor: "west")
      circle((0, y_p2), radius: 0.02, fill: black)
      content((0 - 0.1, y_p2), $a^(beta x_1) = (a^(x_1))^beta= alpha^beta$, anchor: "east")

      // Linee tratteggiate verso gli assi
      line(
        (x_p, 0), (x_p, y_p), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p, y_p), (0, y_p),  
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p2, 0),  (x_p2, y_p2), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )
      line(
        (x_p2, y_p2), (0, y_p2), 
        stroke: (dash: "dashed", paint: accent.mat, thickness: 0.5pt), mark: (end: ")>", fill: accent.mat, scale: .75)
      )


    })
    
    }
  )
}),
caption: []
) <grafico_proprieta_logaritmi2>

]]
]

#let grafico_x_2_x = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (7, 4.5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -2.5, x-max: 2.5,
    y-min: -.6, y-max: 4,
    x-label: [],        
    y-label: [],    
    x-grid: none,   
    y-grid: none, 
    legend: (4.1, 4.9),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = -.64
    let y_p = x_p + calc.pow(2, x_p)

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat)),       
      x => x + calc.pow(2, x),
      samples: 200
    )


    plot.annotate({
      // Punto P e P_1
      circle((x_p, y_p), radius: 0.02, fill: black)
      content((x_p + 0.1, y_p + 0.1), [$P$], anchor: "south-east")

    })
    
    }
  )
}),
caption: []
) <grafico_x_2_x>
]

#let grafico_log3_2x = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (10, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 10,
    y-min: -1, y-max: 4.5,
    x-label: [],        
    y-label: [],    
    x-grid: none,   
    y-grid: none, 
    legend: (7, 2.3),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = 9
    let y_p = calc.log(x_p * x_p, base: 3)

    plot.add(
      domain: (.01, 10),        
      style: (stroke: (paint: accent.mat)),
      label: [$log_3^2 x$],        
      x => calc.pow(calc.log(x, base: 3), 2),
      samples: 200
    )

    plot.add(
      domain: (-3.5, 10),        
      style: (stroke: (paint: accent.mat.lighten(50%))),
      label: [$log_3 x^2$],       
      x => calc.log(x * x, base: 3),
      samples: 200
    )


    plot.annotate({
      // Punto P e P_1
      circle((x_p, y_p), radius: 0.02, fill: black)
      content((x_p + 0.1, y_p + 0.1), [$P$], anchor: "south-east")
      
    line(
      (x_p, 0), (x_p, y_p), 
      stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
    )
    line(
      (x_p, y_p), (0, y_p),  
      stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
    )



    })
    
    }
  )
}),
caption: []
) <grafico_log3_2x>
]

#let grafico_log2_3 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (8, 6),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: 0, x-max: 4,
    y-min: -3, y-max: 4,
    x-label: [],        
    y-label: [],    
    x-grid: none,   
    y-grid: none, 
    legend: (7, 2.3),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = 9/4
    let y_p = calc.log(x_p, base: 2/3)

    plot.add(
      domain: (.01, 10),        
      style: (stroke: (paint: accent.mat)),             
      x => calc.log(x, base: 2/3),
      samples: 200
    )


    plot.annotate({
      // Punto P e P_1
      circle((x_p, y_p), radius: 0.02, fill: black)
      content((x_p , y_p + 0.1), [$P$], anchor: "south-west")
      circle((x_p, 0), radius: 0.02, fill: black)
      content((x_p, 0 + 0.3), [$9/4$], anchor: "south")
      
      
    line(
      (x_p, 0), (x_p, y_p), 
      stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
    )
    line(
      (x_p, y_p), (0, y_p),  
      stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
    )



    })
    
    }
  )
}),
caption: []
) <grafico_log2_3>
]

#let grafico_log3_2 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (8, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: 0, x-max: 10.5,
    y-min: -1, y-max: 2.1,
    x-label: [],        
    y-label: [],    
    x-grid: none,   
    y-grid: none, 
    legend: (7, 2.3),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = 9
    let y_p = calc.log(x_p, base: 3)

    plot.add(
      domain: (.01, 11),        
      style: (stroke: (paint: accent.mat)),             
      x => calc.log(x, base: 3),
      samples: 200
    )


    plot.annotate({
      // Punto P e P_1
      circle((x_p, y_p), radius: 0.02, fill: black)
      content((x_p , y_p + 0.1), [$P$], anchor: "south-west")
      circle((x_p, 0), radius: 0.02, fill: black)
      content((x_p + 0.3, 0 + 0.1), [], anchor: "south")
      
      
    line(
      (x_p, 0), (x_p, y_p), 
      stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
    )
    line(
      (x_p, y_p), (0, y_p),  
      stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
    )



    })
    
    }
  )
}),
caption: []
) <grafico_log3_2>
]

#let grafico_2_3x_4 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (8, 6),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1, x-max: 1.5,
    y-min: 0, y-max: 4.2,
    x-label: [],        
    y-label: [],    
    x-grid: none,   
    y-grid: none, 
    legend: (7, 2.3),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    let x_p = 0.63
    let y_p = calc.pow(3, x_p)

    let x_p1 = 1.261
    let y_p1 = calc.pow(3, x_p1)

    plot.add(
      domain: (-2, 3),        
      style: (stroke: (paint: accent.mat)),             
      x => calc.pow(3, x),
      samples: 200
    )


    plot.annotate({
      // Punto P e P_1
      circle((x_p, y_p), radius: 0.01, fill: black)
      content((x_p , y_p + 0.1), [$P$], anchor: "south-west")
      circle((x_p, 0), radius: 0.01, fill: black)
      content((x_p - 0.1, 0 + 0.1), [$log_3 2$], anchor: "south")

      circle((x_p1, y_p1), radius: 0.01, fill: black)
      content((x_p1 , y_p1 + 0.1), [$P$], anchor: "south-west")
      circle((x_p1, 0), radius: 0.01, fill: black)
      content((x_p1 - 0.1, 0 + 0.1), [$log_3 4$], anchor: "south")
      
      
      line(
        (x_p, 0), (x_p, y_p), 
        stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
      )
      line(
        (x_p, y_p), (0, y_p),  
        stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
      )
      line(
      (x_p1, 0), (x_p1, y_p1), 
      stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
    )
    line(
      (x_p1, y_p1), (0, y_p1),  
      stroke: (dash: "dotted", paint: accent.mat, thickness: 0.5pt), 
    )



    })
    
    }
  )
}),
caption: []
) <grafico_2_3x_4>
]