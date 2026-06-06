#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "shared.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart

//===================

// Tabelle

// Schema segni



#let schema_segni1 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-5$], [$1$], [$3$], [8], [12], [$+oo$]),
  righe: (
    (
      testo: [#hide[testo]],
      segni: ([], [$+$], [$times$], [$-$], [$+$], [$+$], [$0$], [$0$], [$-$], [$-$], [$-$], [$times$],)
    ),

  )
)
]
]

#let schema_segni2 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$1/(sqrt(2) - sqrt(3))$], [$+oo$]),
  righe: (
    (
      testo: [$(sqrt(2) - sqrt(3))x - 1$],
      segni: ([], [$+$], [$0$], [$-$])
    ),
  )
)
]
]

#let schema_segni3 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$5/2$], [$+oo$]),
  righe: (
    (
      testo: [$-2x^2 + 3x + 5$],
      segni: ([], [$-$], [$0$], [$+$], [$0$], [$-$])
    ),
  ),
  evidenzia: (3, )
)
]
]

#let schema_segni4 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$#hide[dd]$], [$+oo$]),
  righe: (
    (
      testo: [$x^2 + x + 2$],
      segni: ([], [], [$+$], [], [])
    ),
  )
)
]
]

#let schema_segni5 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$1$], [$+oo$]),
  righe: (
    (
      testo: [$-x^2 + 2x - 1$],
      segni: ([], [$-$], [$0$], [$-$], [])
    ),
  ),
  evidenzia: (1, 3)
)
]
]

#let schema_segni6 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$0$], [$2$], [$+oo$]),
  righe: (
    (
      testo: [$x$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x + 1$],
      segni: ([], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x - 2$],
      segni: ([], [$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$-$], [$0$], [$+$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
  evidenzia: (3, 7)
)
]
]

#let schema_segni7 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$0$], [$1$], [$frac(3, 2, style: "skewed")$], [$2$], [$+oo$]),
  righe: (
    (
      testo: [$4x^2 - 12x + 9$],
      segni: ([], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x^2 - 3x + 2$],
      segni: ([], [$+$], [$+$], [$+$], [$+$], [$+$], [$0$],[$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [$x^4 + 1$],
      segni: ([], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x^2 + x$],
      segni: ([], [$+$], [$0$], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [#hl[$-$]], [$times$], [$+$], [$times$], [$+$], [$0$], [$-$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
  evidenzia: (1, 6, 7, 8, 9, 10),   
)
]
]

#let schema_segni8 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$1$], [$+oo$]),
  righe: (
    (
      testo: [$f(x)$],
      segni: ([], [$+$], [$0$], [$0$], [$0$], [$+$], [])
    ),
  ),
  
)
]
]

#let schema_segni9 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-2$], [$2$], [$+oo$]),
  righe: (
    (
      testo: [$x^2 - 4$],
      segni: ([], [$+$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
  
)
]
]

#let schema_segni10 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-3$], [$+oo$]),
  righe: (
    (
      testo: [$x + 3$],
      segni: ([], [$-$], [$0$], [$+$], [])
    ),
  ),
  
)
]
]

#let schema_segni11 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$1 - sqrt(3)$], [$1$], [$1 + sqrt(3)$], [$+oo$]),
  righe: (
    (
      testo: [$x - 1$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x^2 - 2x - 2$],
      segni: ([], [$+$], [$0$], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$-$], [$0$], [$+$], [$0$], [$-$], [$0$], [$+$], [])
    ),
  ),
  
)
]
]

#let schema_segni12 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-3$], [$-2$], [#rotate(-45deg)[$quad 1 - sqrt(3)$]], [$1$], [$2$], [#rotate(-45deg)[$quad 1 + sqrt(3)$]], [$+oo$]),
  righe: (
    (
      testo: [$x^2 - 4$],
      segni: ([], [$+$], [$+$], [$+$], [$0$], [$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x + 3$],
      segni: ([], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x^3 - 3x^2 + 2$],
      segni: ([], [$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$], [$0$], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
  ),
  intestazione: [abs],
  linea_doppia: false,
)
]
]

#let schema_segni13 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1$], [$0$], [$+oo$]),
  righe: (
    (
      testo: [$f(x)$],
      segni: ([], [$-$], [$0$], [$0$], [$0$], [$+$], [])
    ),
  ),
  linea_doppia: false,
)
]
]

#let schema_segni14 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1/2$], [$0$], [$+oo$]),
  righe: (
    (
      testo: [$2x + 1$],
      segni: ([], [$-$], [$0$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [$x$],
      segni: ([], [$-$], [$-$], [$-$], [$0$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$+$], [$0$], [$-$], [$times$], [$+$], [])
    ),
  ),
)
]
]

#let schema_segni15 = [#align(center)[
  #schema_segni(
  punti: ([$-oo$], [$-1/5$], [$0$], [$1$], [$+oo$]),
  righe: (
    (
      testo: [Num.],
      segni: ([], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [])
    ),
    (
      testo: [Den.],
      segni: ([], [$+$], [$times$], [$-$], [$times$], [$-$], [$times$], [$+$], [])
    ),
    (
      testo: [Tot.],
      segni: ([], [$+$], [$times$], [$-$], [$times$], [$-$], [$times$], [$+$], [])
    ),
  ),
)
]
]

#let tabella_ver_diseq1 = [#align(center)[
  #tabella_ver_diseq_s(
  punti: ([$-oo$], [$-1$], [$1$], [$2$], [$3$], [$5$], [$6$], [$+oo$]),
  elementi: (
    (0, 1, false),
    (2, 3, true),
    (4,),
    (5, 6, false),
  )
) 
]
]

#let tabella_ver_diseq2 = [#align(center)[#tabella_ver_diseq(
  punti: ([$-oo$], [$-4$], [$-2$], [$-frac(3, 2, style: "skewed")$], [$-1$], [$+oo$]),
  elementi: (
    (tipo: "linea", da: 1, a: 5, incl: false, riga: 0, testo: [1]),
    (tipo: "linea", da: 2, a: 4, incl_da: true, incl_a: true,  riga: 1, testo: [2]),
    (tipo: "linea", da: 0, a: 3, riga: 2, testo: [3]),
    (tipo: "linea", da: 2, a: 3, incl_da: true, riga: 3, testo: [Sist.]),
  )
)
]
]

// Grafici

#let funzione_segno_disequazioni = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 3),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -3, x-max: 3,
        y-min: 0, y-max: 3,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            domain: (0, 5),        
            style: (stroke: (accent.mat)),        
            x => 2 * x
          )

          plot.add(
            domain: (-5, 0),        
            style: (stroke: (accent.mat)),        
            x => 0
          )

          plot.annotate({            
            circle((0, 0), radius: 0.03, fill: accent.mat, stroke: none)
          })
        }
      )
    }),
    caption: []
  ) <funzione_segno_disequazioni>
]

#let grafico_disequazione2 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (5, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: 0, x-max: 4,
    y-min: -2, y-max: 2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    
    { 
      plot.add(
        domain: (-5, 5),        
        style: (stroke: accent.mat.lighten(5%), ),
        x => -2 * x + 5,
        samples: 250
      )
      plot.annotate({
      circle((5/2, 0), radius: 0.03, fill: accent.mat, stroke: accent.mat, name: "a")
      content((5/2, 0.9), "a", [$(5/2, 0)$],  padding: 0.1)
})
    }
  )
}),
caption: []
) <grafico_disequazione2>
]



//

#let grafico_disequazione3 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (8, 4),
    axis-style: "school-book",
    x-tick-step: 2,      
    y-tick-step: 2,      
    x-min: -2, x-max: 4,
    y-min: -1, y-max: 6.3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    
    { 
      plot.add(
        domain: (-5, 5),        
        style: (stroke: accent.mat.lighten(5%), ),
        x => -2 * calc.pow(x, 2) + 3*x + 5,
        samples: 250
      )
      plot.annotate({
      circle((5/2, 0), radius: 0.03, fill: accent.mat, stroke: accent.mat, name: "a"); content((5/2, 1.3), "a", [$5/2$],  padding: 0.1)
      circle((-1, 0), radius: 0.03, fill: accent.mat, stroke: accent.mat, name: "b"); content((-1.5, .6), "b", [$-1$],  padding: 0.1)
      })
    }
  )
}),
caption: []
) <grafico_disequazione3>
]



//

#let grafico_disequazione4 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (8, 4),
    axis-style: "school-book",
    x-tick-step: 2,      
    y-tick-step: 2,      
    x-min: -3, x-max: 3,
    y-min: -1, y-max: 6.3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    
    { 
      plot.add(
        domain: (-5, 5),        
        style: (stroke: accent.mat.lighten(5%), ),
        x => calc.pow(x, 2) + x + 2,
        samples: 250
      )

    }
  )
}),
caption: []
) <grafico_disequazione4>
]



//
#let grafico_disequazione5 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (8, 4),
    axis-style: "school-book",
    x-tick-step: 2,      
    y-tick-step: 2,      
    x-min: -3, x-max: 3,
    y-min: -3, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    
    { 
      plot.add(
        domain: (-5, 5),        
        style: (stroke: accent.mat.lighten(5%), ),
        x => - calc.pow(x, 2) + 2 * x - 1,
        samples: 250
      )
      plot.annotate({
      circle((1, 0), radius: 0.03, fill: accent.mat, stroke: accent.mat, name: "a"); content((1, .5), "a", [$1$],  padding: 0.1)
      
      })
    }
  )
}),
caption: []
) <grafico_disequazione5>
]

#let grafico_disequazione6 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (7, 3),
        axis-style: "school-book",
        x-tick-step: 5,      
        y-tick-step: 5,      
        x-min: -2, x-max: 15,
        y-min: -.5, y-max: 15,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            domain: (-5, 2),        
            style: (stroke: (paint: accent.mat)), 
            x => calc.sqrt(x * x - 9 * x + 14) - x + 8,
            samples: 250 
          )

          plot.add(
            domain: (7, 15),        
            style: (stroke: (paint: accent.mat)), 
            x => calc.sqrt(x * x - 9 * x + 14) - x + 8,
            samples: 250
          )
          plot.add(
            ((2, 0),(2, 6)),
            style: (stroke: (paint: accent.mat, thickness: .5pt, dash: "dashed")), 
          )
          plot.add(
            ((7, 0),(7, 1)),
            style: (stroke: (paint: accent.mat, thickness: .5pt, dash: "dashed")), 
          )
          plot.annotate({            
            circle((2, 0), radius: 0.05, fill: accent.mat, stroke: accent.mat)
            content((2, -2), anchor: "center", [$2$])

            circle((7, 0), radius: 0.05, fill: accent.mat, stroke: accent.mat)
            content((7, -2), anchor: "center", [$7$])
          })

        }
      )
    }),
    caption: []
  ) <grafico_disequazione6>
]

#let grafico_disequazione7 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: 5,      
        y-tick-step: 5,      
        x-min: -1, x-max: 12,
        y-min: -10, y-max: 7,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 
        legend: (5, 1.5),        
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        {
          plot.add(
            domain: (-5, 2),        
            style: (stroke: (paint: accent.mat)), 
            label: [$x^2 - 9x + 14$], 
            x => calc.sqrt(x * x - 9 * x + 14),
            samples: 250
          )

          plot.add(
            domain: (7, 15),        
            style: (stroke: (paint: accent.mat)), 
            x => calc.sqrt(x * x - 9 * x + 14),
            samples: 250 
          )
          plot.add(
            domain: (-2, 12),        
            style: (stroke: (paint: accent.mat.lighten(50%))),
            label: [$x - 8$], 
            x => x - 8 
          )

          plot.add(
            ((2, 0),(2, -6)),
            style: (stroke: (paint: accent.mat, thickness: .5pt, dash: "dashed")), 
          )

          plot.add(
            ((7, 0),(7, -1)),
            style: (stroke: (paint: accent.mat, thickness: .5pt, dash: "dashed")), 
          )

          plot.annotate({            
            circle((2, 0), radius: 0.05, fill: accent.mat, stroke: accent.mat)
            content((2, -2), anchor: "center", [$2$])

            circle((7, 0), radius: 0.05, fill: accent.mat, stroke: accent.mat)
            content((7, -2), anchor: "center", [$7$])
          })

        }
      )
    }),
    caption: []
  ) <grafico_disequazione7>
]



#let grafico_disequazione9 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -3, x-max: 3,
        y-min: 0, y-max: 3,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 
        legend: (5, 1.5),        
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        {
          plot.add(
            domain: (-3, 3),        
            style: (stroke: (paint: accent.mat)), 
            x => x * x + calc.sqrt(x * x * x * x - 2 * x * x + 1) - 1,
            samples: 250
          )

          plot.add(
            ((-1, 0),(1, 0)),
            style: (stroke: (paint: accent.mat)), 
          )

          plot.add(
            ((7, 0),(7, -1)),
            style: (stroke: (paint: accent.mat, thickness: .5pt, dash: "dashed")), 
          )

          plot.annotate({            
            circle((1, 0), radius: 0.05, fill: accent.mat, stroke: accent.mat)
            circle((-1, 0), radius: 0.05, fill: accent.mat, stroke: accent.mat)
          })

        }
      )
    }),
    caption: []
  ) <grafico_disequazione9>
]



#let grafico_disequazione10 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2.5, x-max: 2,
        y-min: -1.2, y-max: 3,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 
        legend: (5, 1.5),        
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        {
          plot.add(
            domain: (-3, 3),        
            style: (stroke: (paint: accent.mat)), 
            x => x + calc.abs(x * x - 1),
            samples: 250
          )

plot.annotate({            
            circle(((1 - calc.sqrt(5))/2, 0), radius: 0.03, fill: accent.mat, stroke: accent.mat)
            circle(((-1 - calc.sqrt(5))/2, 0), radius: 0.03, fill: accent.mat, stroke: accent.mat)
            content((-1.5, .3), anchor: "center", text(size: 8pt, [$(-1 - sqrt(5)) / 2$]))
            content((-.7, .3), anchor: "center", text(size: 8pt, [$(1 - sqrt(5)) / 2$]))
          })

        }
      )
    }),
    caption: []
  ) <grafico_disequazione10>
]

#let grafico_disequazione11 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -5, x-max: 2,
        y-min: -4.5, y-max: 2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 
        legend: (5, 1.5),        
        legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
        {
          plot.add(
            domain: (-6, 6),        
            style: (stroke: (paint: accent.mat)), 
            x => calc.abs(1- calc.abs(x + 2)) + x - 1,
            samples: 200
          )
        }
      )
    }),
    caption: []
  ) <grafico_disequazione11>
]



#let grafico_disequazione12 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (7, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2.5, x-max: 1.5,
        y-min: -2, y-max: 2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 
        {
          plot.add(
            domain: (-6, 6),        
            style: (stroke: (paint: accent.mat)), 
            x => x * calc.abs(x) - 2 * x - 1 + (x + 1) * calc.abs(x + 1),
            samples: 200
          )
        }
      )
    }),
    caption: []
  ) <grafico_disequazione12>
]



#let grafico_disequazione13 = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (10, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2, x-max: 4,
        y-min: -2, y-max: 4,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 
        
        {
          plot.add(
            domain: (-6, 6),        
            style: (stroke: (paint: accent.mat)), 
            x => (1 - x + calc.sqrt(x * x + x + 2))/(3 - calc.abs((2 * x + 1)/x)),
            samples: 200
          )
        }
      )
    }),
    caption: []
  ) <grafico_disequazione13>
]
