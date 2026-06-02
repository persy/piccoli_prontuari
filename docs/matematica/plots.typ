#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart
#import "@preview/cetz-venn:0.2.0" // diagrammi di Venn

// ==========================================
// NOTA BENE: QUESTO FILE NON DEVE CONTENERE NESSUN CODICE DI CONFIGURAZIONE O DEFINIZIONE DI STILI, CHE DEVONO ESSERE INSERITI SOLO NEL TEMPLATE
// ==========================================
// Questo file serve esclusivamente a raccogliere i grafici e diagrammi che verranno poi inseriti nei capitoli, in modo da mantenere il codice più organizzato e modulare.
// ==========================================   
// cetz-plot nella versione 0.1.3 non è compatibile con la versione 0.5.2 di cetz, quindi è necessario importare entrambe le versioni per poter utilizzare le funzionalità di plotting senza dover riscrivere tutto il codice dei grafici. In futuro, quando cetz-plot sarà aggiornato, sarà possibile rimuovere l'import della vecchia versione e semplificare il codice dei grafici.

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  }) */

// Indice dei grafici
#outline(
  title: "Indice dei grafici",
  target: figure.where(kind: "grafico"),
)
//

== Logica

#let diagrammi_eulero_venn = [#grid(columns: 2, gutter: 1.5em, align: horizon+ center)[
#figure(
cetz.canvas({
  import cetz.draw: *
  
  circle((-1.2, 0), radius: (1.8), fill: accent.mat.lighten(80%), name: "A")
  circle((-2, 0), radius: 0.02, fill: black); content((-2, 0+0.3), [$a$])
  circle((-0.5, 0.4), radius: 0.02, fill: black); content((-0.5, 0.4+0.3), [$b$])
  circle((-0.9, -0.4), radius: 0.02, fill: black); content((-0.9, -0.4+0.3), [$c$])
  circle((0.7, 0.8), radius: 0.02, fill: black); content((0.7, 0.8+0.3), [$e$])
  circle((1.1, -0.2), radius: 0.02, fill: black); content((1.1, -0.2+0.3), [$f$])

  content((-3, 1.4), [$A$])
}),
caption: []
)<grafico_insiemi1>
][
#figure(
  gap: 0pt,
  cetz.canvas({
    import cetz.draw: *
    scale(1.7)
    cetz-venn.venn2(      
      name: "venn",
      padding: 0.5em,
      not-ab-stroke: none, 
      a-fill: accent.mat.lighten(80%),
      b-fill: accent.mat.lighten(80%), 
      ab-fill: accent.mat.lighten(80%),         
    )
    import cetz.draw: *    
    content((-1.5, 1), [$A$])
    content((1.5, 1), [$B$])
    content((0, 1.2), [$A union B$])
    }),
caption: []
)<grafico_insiemi2>
][
#figure(
  gap: 0pt,
  cetz.canvas({
    
    import cetz.draw: *
    scale(1.7)
    cetz-venn.venn2(      
      name: "venn",
      padding: 0.5em,
      not-ab-stroke: none, 
      a-fill: white,
      b-fill: white,
      ab-fill: accent.mat.lighten(80%)    
    )
    import cetz.draw: *

    content((-1.5, 1), [$A$])
    content((1.5, 1), [$B$])
    content("venn.ab", [$A inter B $])
    }),
caption: []
)<grafico_insiemi3>
][
#figure(
  gap: 0pt,
  cetz.canvas({
    import cetz.draw: *
    scale(1.7)
    cetz-venn.venn2(      
      name: "venn",
      padding: 0.5em,
      not-ab-stroke: none, 
      a-fill: accent.mat.lighten(80%),
      b-fill: white          
    )
    import cetz.draw: *
    
    content((-1.5, 1), [$A$])
    content((1.5, 1), [$B$])
    content("venn.a", [$A without B$])
    }),
caption: []
)<grafico_insiemi4>
][
#figure(
  gap: 0pt,
  cetz.canvas({
    import cetz.draw: *
    scale(1.7)
    cetz-venn.venn2(      
      name: "venn",
      padding: 0.5em,      
      not-ab-stroke: none, 
      a-fill: accent.mat.lighten(80%),
      b-fill: accent.mat.lighten(80%),          
    )
    import cetz.draw: *
    content((-1.5, 1), [$A$])
    content((1.5, 1), [$B$])
    content((0, 1.2), [$A Delta B$])
    }),
caption: []
)<grafico_insiemi5>
][
#figure(
  gap: 1em,
  cetz.canvas({
    import cetz.draw: *

    rect((3,-2),(-3,2), fill: accent.mat.lighten(80%),)
    circle((0, 0), radius: (1.8), fill: white, name: "A")

    content((0, 0), [$A$])
    content((-2.5, -1), [$complement A$])
    content((3.5, 2.2), [$U$])
}),
caption: []
)<grafico_insiemi6>
]
]

#let grafico_insiemi7 = [
  #figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 6 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10.5, 0), mark: (end: ">", fill: black))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
    let to_x(val) = val * scale

  // punti principali (coordinata, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "", "-1"),
    (0.2, "", "0"),
    (0.4, "", "1"),
    (0.6, "", "2"),
    (0.8, "", "3"),
    (1.0, "", "4"),
    (1.2, "", "5"),
    (1.4, "", "6"),
    (1.6, "", "7"),    
  )

  // segni punti
  for (val, top, bot) in points {
    let x = to_x(val)
    line((x, -0.1), (x, 0.1))
    content((x, 0.4), eval("$" + top + "$"))
    if bot != "" {
      content((x, -0.4), eval("$" + bot + "$"))
    }
  }

    // linea A (2-5); +1 per traslare l'origine di un punto; il passo 1.2 è perché scale * 0.2   
    let x_start_a = (2 + 1) * 1.2
    let x_end_a = (5 + 1) * 1.2
    line((x_start_a, -1.0), (x_end_a, -1.0), stroke: accent.mat + 1pt)
    content((x_start_a - 0.4, -1.0), [A:])
    
    circle((x_start_a, -1.0), radius: 0.05, fill: white, stroke: black)
    circle((x_end_a, -1.0), radius: 0.05, fill: black, stroke: none)

    // 3. Linea B: Punti evidenziati 2, 3, 4, 6
    let points_b = (2, 3, 4, 6)
    content(( (2 + 1) * 1.2 - 0.4, -1.8), [B:])
    
    for p in points_b {
      let x = (p + 1) * 1.2      
      circle((x, -1.8), radius: 0.05, fill: black, stroke: none)
    }
    
    // Linea tratteggiata di supporto per la Linea B (opzionale, per dare l'idea di "linea immaginaria")
    line(((2+1)*1.2, -1.8), ((6+1)*1.2, -1.8), stroke: (paint: gray, dash: "dotted", thickness: .2pt))

}),
caption: []
)<grafico_insiemi7>
]

#let grafico_relazioni1 = [
  #figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -5, x-max: 5,
    y-min: -4, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",
    legend: (7, 4),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5)
  )),
    {
      // Area sopra retta e retta
      plot.add-fill-between(
        domain: (-5, 5),
        style: (
            stroke: accent.mat, 
            fill: accent.mat.lighten(80%),
          ), 
        x => calc.pow(x, 1), // First function/data
        x => 5) // Second function/data
    }
  )
}),
caption: []
)<grafico_relazioni1>
]

#let grafico_relazioni2 = [
  #figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -.5, x-max: 5.5,
    y-min: 0, y-max: 4.5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",
    legend: (7, 4),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5)
  )),
    {
      // fascio di rette parallele
      for q in range(-5, 6) {
          plot.add(
            domain: (0, 6), // Usiamo lo stesso dominio per tutte
            style: (
              stroke: (
                paint: accent.mat.lighten(25%), 
                dash: "solid", // Lasciamo le rette solide
                thickness: 1pt // Spessore normale
              ), 
              
            ), 
            x => x - q, // Pendenza m=1 (parallela), intercetta q
          )
        }
    }
  )
}),
caption: []
)<grafico_relazioni2>
]

#let proprieta_insiemi = [#align(center)[#grid(columns: 3, column-gutter: -4em, row-gutter: 1em, align: center + horizon)[
#figure(
cetz.canvas({
  import cetz.draw: *

  // insiemi
  circle((0, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(80%), name: "insieme_A")
  content((-1, 1.4), [])
  circle((3, 0), radius: (1, 1.5), stroke: .5pt, fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])
  circle((3, 0), radius: (0.6, 0.8), stroke:(paint: accent.mat, dash: "dashed"), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])

  // coordinate punti e etichette (y + 0.03)
  let (x_a, y_a) = (-0.2, 1)
  let (x_b, y_b) = (0.1, 0.5)
  let (x_c, y_c) = (-0.1, -0.1)
  let (x_d, y_d) = (0.1, -0.75)
  //let (x_e, y_e) = (-0.2, -1.2)
  let (x_f, y_f) = (3, 0.6)
  let (x_g, y_g) = (2.7, 0)
  let (x_h, y_h) = (3.1, -0.5)
  let (x_i, y_i) = (2.7, -1)
  let (x_j, y_j) = (3.3, 0.1)
  let (x_k, y_k) = (3.3, -0.9)
  let (x_m, y_m) = (3.1, -1.2)
  let (x_n, y_n) = (3.1, 1.1)

  // punti primo insieme
  circle((x_a, y_a), radius: 0.02, fill: black); content((x_a, y_a), [], name: "a")
  circle((x_b, y_b), radius: 0.02, fill: black); content((x_b, y_b), [], name: "b")
  circle((x_c, y_c), radius: 0.02, fill: black); content((x_c, y_c), [], name: "c")
  circle((x_d, y_d), radius: 0.02, fill: black); content((x_d, y_d), [], name: "d")
  //circle((x_e, y_e), radius: 0.02, fill: black); content((x_e, y_e), [], name: "e")

  // punti secondo insieme
  circle((x_f, y_f), radius: 0.02, fill: black); content((x_f, y_f), [], name: "f")
  circle((x_g, y_g), radius: 0.02, fill: black); content((x_g, y_g), [], name: "g")
  circle((x_h, y_h), radius: 0.02, fill: black); content((x_h, y_h), [], name: "h")
  circle((x_i, y_i), radius: 0.02, fill: black); content((x_i, y_i), [], name: "i")
  circle((x_j, y_j), radius: 0.02, fill: black); content((x_j, y_j), [], name: "j")
  circle((x_k, y_k), radius: 0.02, fill: black); content((x_k, y_k), [], name: "k")
  circle((x_m, y_m), radius: 0.02, fill: black); content((x_m, y_m), [], name: "m")
  circle((x_n, y_n), radius: 0.02, fill: black); content((x_n, y_n), [], name: "m")

  // relazioni
  bezier(
    "a.south", 
    "g.south",  
    (1, 1),        
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "b.south", 
    "f.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "c.south", 
    "h.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "d.south", 
    "j.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
}),
caption: []
)<insiemi_iniettività>
][][
#figure(
cetz.canvas({
  import cetz.draw: *

  // insiemi
  circle((0, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(80%), name: "insieme_A")
  content((-1, 1.4), [])
  circle((3, 0), radius: (1, 1.5), stroke: .5pt, fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])
  //circle((3, 0), radius: (0.6, 0.8), stroke:(paint: accent.mat, dash: "dashed"), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])

  // coordinate punti e etichette (y + 0.03)
  let (x_a, y_a) = (-0.2, 1)
  let (x_b, y_b) = (0.1, 0.5)
  let (x_c, y_c) = (-0.1, -0.1)
  let (x_d, y_d) = (0.1, -0.75)
  let (x_e, y_e) = (0.2, -1.1)
  let (x_f, y_f) = (3, 0.8)
  let (x_g, y_g) = (2.7, 0)
  let (x_h, y_h) = (3.1, -0.8)
  let (x_i, y_i) = (2.7, -1)
  let (x_j, y_j) = (3.4, 0.1)
  let (x_k, y_k) = (3.3, -0.9)
  let (x_m, y_m) = (3.1, -1.2)
  let (x_n, y_n) = (3.1, 1.1)

  // punti primo insieme
  circle((x_a, y_a), radius: 0.02, fill: black); content((x_a, y_a), [], name: "a")
  circle((x_b, y_b), radius: 0.02, fill: black); content((x_b, y_b), [], name: "b")
  circle((x_c, y_c), radius: 0.02, fill: black); content((x_c, y_c), [], name: "c")
  circle((x_d, y_d), radius: 0.02, fill: black); content((x_d, y_d), [], name: "d")
  circle((x_e, y_e), radius: 0.02, fill: black); content((x_e, y_e), [], name: "e")

  // punti secondo insieme
  circle((x_f, y_f), radius: 0.02, fill: black); content((x_f, y_f), [], name: "f")
  circle((x_g, y_g), radius: 0.02, fill: black); content((x_g, y_g), [], name: "g")
  circle((x_h, y_h), radius: 0.02, fill: black); content((x_h, y_h), [], name: "h")
  //circle((x_i, y_i), radius: 0.02, fill: black); content((x_i, y_i), [], name: "i")
  circle((x_j, y_j), radius: 0.02, fill: black); content((x_j, y_j), [], name: "j")
  //circle((x_k, y_k), radius: 0.02, fill: black); content((x_k, y_k), [], name: "k")
  //circle((x_m, y_m), radius: 0.02, fill: black); content((x_m, y_m), [], name: "m")
  //circle((x_n, y_n), radius: 0.02, fill: black); content((x_n, y_n), [], name: "m")

  // relazioni
  bezier(
    "a.south", 
    "f.south",  
    (1, 1),        
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "b.south", 
    "g.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "c.south", 
    "h.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "d.south", 
    "j.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "e.south", 
    "j.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
}),
caption: []
)<insiemi_suriettività>
][][
#figure(
cetz.canvas({
  import cetz.draw: *
  
  // insiemi
  circle((0, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(80%), name: "insieme_A")
  content((-1, 1.4), [])
  circle((3, 0), radius: (1, 1.5), stroke: .5pt, fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])
  //circle((3, 0), radius: (0.6, 0.8), stroke:(paint: accent.mat, dash: "dashed"), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])

  // coordinate punti e etichette (y + 0.03)
  let (x_a, y_a) = (-0.2, 1)
  let (x_b, y_b) = (0.1, 0.5)
  let (x_c, y_c) = (-0.1, -0.1)
  let (x_d, y_d) = (0.1, -0.75)
  //let (x_e, y_e) = (-0.2, -1.2)
  let (x_f, y_f) = (3, 0.8)
  let (x_g, y_g) = (2.7, 0)
  let (x_h, y_h) = (3.1, -0.8)
  let (x_i, y_i) = (2.7, -1)
  let (x_j, y_j) = (3.4, 0.1)
  let (x_k, y_k) = (3.3, -0.9)
  let (x_m, y_m) = (3.1, -1.2)
  let (x_n, y_n) = (3.1, 1.1)

  // punti primo insieme
  circle((x_a, y_a), radius: 0.02, fill: black); content((x_a, y_a), [], name: "a")
  circle((x_b, y_b), radius: 0.02, fill: black); content((x_b, y_b), [], name: "b")
  circle((x_c, y_c), radius: 0.02, fill: black); content((x_c, y_c), [], name: "c")
  circle((x_d, y_d), radius: 0.02, fill: black); content((x_d, y_d), [], name: "d")
  //circle((x_e, y_e), radius: 0.02, fill: black); content((x_e, y_e), [], name: "e")

  // punti secondo insieme
  circle((x_f, y_f), radius: 0.02, fill: black); content((x_f, y_f), [], name: "f")
  circle((x_g, y_g), radius: 0.02, fill: black); content((x_g, y_g), [], name: "g")
  circle((x_h, y_h), radius: 0.02, fill: black); content((x_h, y_h), [], name: "h")
  circle((x_j, y_j), radius: 0.02, fill: black); content((x_j, y_j), [], name: "j")
  //circle((x_i, y_i), radius: 0.02, fill: black); content((x_i, y_i), [], name: "i")
  //circle((x_k, y_k), radius: 0.02, fill: black); content((x_k, y_k), [], name: "k")
  //circle((x_m, y_m), radius: 0.02, fill: black); content((x_m, y_m), [], name: "m")
  //circle((x_n, y_n), radius: 0.02, fill: black); content((x_n, y_n), [], name: "m")

  // relazioni
  bezier(
    "a.south", 
    "g.south",  
    (1, 1),        
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "b.south", 
    "f.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "c.south", 
    "h.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "d.south", 
    "j.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
}),
caption: []
)<insiemi_biettività>
][]
]
]

== Dai numeri naturali ai numeri reali

// Numerabilità dei razionali
#let numerabilità_razionali = [
  #figure(
  
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (6, 4),
      axis-style: none,
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -0.5, x-max: 5.5,
      y-min: 0,    y-max: 4.5,
      x-label: [$x$],        
      y-label: [$y$],    
      x-grid: true,   
      y-grid: true,
      {
        let col = blue.lighten(25%) 
        
        for q in range(-3, 1) {
          let y0 = -float(q) // Intercetta all'asse y
          
          // Retta
          plot.add(
            domain: (0.2, 5),
            style: (stroke: (paint: col, thickness: 1pt)),
            x => x - float(q)
          )
          
          // 2. punta della freccia 
          if y0 >= 0 and y0 <= 4.5 {
            plot.annotate({
              mark(
                (0.1, y0 + 0.1), 
                (0, y0),  // Punto esatto sull'asse y (x=0, y=-q)
                symbol: ">",
                fill: col,
                stroke: (paint: col, thickness: 1pt),
                size: 0.15
              )
            })
          }
        }
      }
    )
    content((1.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 1)])
    content((2.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 2)])
    content((3.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 3)])
    content((4.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 4)])
    content((1.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 1)])
    content((2.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 2)])
    content((3.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 3)])
    content((1.5, 1.7), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(-1, 1)])
    content((2.5, 1.7), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(-1, 2)])
    content((1.5, 0.8), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(2, 1)])
  }),
  caption: []
)<numerabilità_razionali>
]

#let intersezione_retta_circonferenza = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      // Configurazione degli assi nello stile school-book
      set-style(axes: (
        y: (mark: (end: ")>", fill: black, stroke: black)),
        x: (mark: (end: ")>", fill: black, stroke: black))
      ))

      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-min: -4.1,
        x-max: 4.1,
        y-min: -1.5,
        y-max: 1.5,
        x-tick-step: 1,
        y-tick-step: 1, 
        x-equal: "y",      
        {
          // Soluzione pulita per il bug #157: stile passato dentro il dizionario 'style'
          plot.add(((0, 0),), style: (stroke: none))

          // Geometria del disegno
          
          plot.annotate({
            // Quadrato di costruzione
            rect((0, 0), (1, 1), stroke: 0.5pt + black)
            
            // Diagonale tratteggiata
            line((0, 0), (1, 1), stroke: (paint: accent.mat, dash: "dashed"))
            
            // Circonferenza centrata nell'origine O
            circle((0, 0), radius: calc.sqrt(2), stroke: accent.mat)

            // Funzione interna per piazzare i punti con le loro ancore
            let draw-point(coord, label, anchor) = {
              circle(coord, radius: 0.05, fill: accent.mat, stroke: none)
              content(coord, label, anchor: anchor, padding: 0)
            }

            // Disegno dei punti e delle etichette
            draw-point((0, 0), [$O$], "north-east")
            draw-point((1, 0), [$U$], "north-west")
            draw-point((0, 1), [$B$], "north-west")
            draw-point((1, 1), [$A$], "north-west")
            draw-point((calc.sqrt(2), 0), [$P$], "north-west")
          })
        }
      )
    }),
    caption: []
  )<intersezione_retta_circonferenza>
]








== Algebra elementare


== Funzioni

#let diagramma_frecce = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  

  // insiemi
  circle((0, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(80%), name: "insieme_A")
  content((-1, 1.4), [$A$])
  circle((3, 0), radius: (1, 1.5), stroke: .5pt, fill: silver.lighten(50%), name: "insieme_B")
  content((4, 1.4), [$B$])  
  

  // coordinate punti e etichette (y + 0.03)
  let (x_a, y_a) = (-0.2, 1)
  let (x_b, y_b) = (0.1, 0.5)
  let (x_c, y_c) = (-0.1, -0.1)
  let (x_d, y_d) = (0.1, -0.75)
  //let (x_e, y_e) = (-0.2, -1.2)
  let (x_f, y_f) = (3, 0.6)
  let (x_g, y_g) = (3.2, 1)
  let (x_h, y_h) = (3.3, -0.5)
  let (x_i, y_i) = (2.8, -0.8)
  let (x_j, y_j) = (2.5, 0.1)
  

  // punti primo insieme
  circle((x_a, y_a), radius: 0.02, fill: black); content((x_a, y_a), [], name: "a")
  content("a", $x_1$, anchor: "north-east")
  circle((x_b, y_b), radius: 0.02, fill: black); content((x_b, y_b), [], name: "b")
  content("b", $x_2$, anchor: "north-east")
  circle((x_c, y_c), radius: 0.02, fill: black); content((x_c, y_c), [], name: "c")
  content("c", $x_3$, anchor: "north-east")
  circle((x_d, y_d), radius: 0.02, fill: black); content((x_d, y_d), [], name: "d")  
  content("d", $x_4$, anchor: "north-east")

  // punti secondo insieme
  circle((x_f, y_f), radius: 0.02, fill: black); content((x_f, y_f), [], name: "f")
  content("f", $y_1$, anchor: "north-west")
  circle((x_g, y_g), radius: 0.02, fill: black); content((x_g, y_g), [], name: "g")
  content("g", $y_2$, anchor: "north-west")
  circle((x_h, y_h), radius: 0.02, fill: black); content((x_h, y_h), [], name: "h")
  content("h", $y_3$, anchor: "north-west")
  circle((x_i, y_i), radius: 0.02, fill: black); content((x_i, y_i), [], name: "i")
  content("i", $y_4$, anchor: "north-west")
  circle((x_j, y_j), radius: 0.02, fill: black); content((x_j, y_j), [], name: "j")
  content("j", $y_5$, anchor: "north-west")

  // relazioni
  bezier(
    "a.south", 
    "f.south",  
    (1, 1),        
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "b.south", 
    "f.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "c.south", 
    "j.south",  
    (1, .1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "d.south", 
    "i.south",  
    (1, -1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
}),
caption: [],
kind: "grafico",
supplement: none,
) <diagramma_frecce>
]

#diagramma_frecce

/* #let diagramma_torta = [
  #align(center)[
  #figure(  
  cetz.canvas({
    let data = (
      ([Pordenone], 70),
      ([Udine], 20),
      ([Treviso], 15),
      ([Trieste], 10),
      ([Gorizia], 5)
    )
    
    let formatted-data = data.map(item => (
      [#item.at(0) (#item.at(1))], 
      item.at(1)
    ))
    
    let colors = range(data.len()).map(i => {
      accent.mat.transparentize(75% - i * 20%)
    })
    
    chart.piechart(
      formatted-data, 
      gap: .5deg,
      clockwise: true,
      radius: 2.5,       
      label-radius: 0.5,
      value-key: 1, 
      label-key: 0, 
      slice-style: colors,
      stroke: 0pt,
       // Sposta la legenda sotto il grafico
      legend-style: (
        padding: 0.4,
        stroke: 0.5pt + luma(150),
        radius: 0.2,
        orientation: "vertical" // Disposizione orizzontale dei componenti
      )        
    )
  }), caption: [])<diagramma_torta> 
] 
] */

#let diagramma_torta = [
  #align(center)[
    // Ripristinate qui le tue definizioni originali dei colori e dei dati
    #let data = (
      ([Pordenone], 70),
      ([Udine], 20),
      ([Treviso], 15),
      ([Trieste], 10),
      ([Gorizia], 5)
    )
    
    #let colors = range(data.len()).map(i => {
      accent.mat.transparentize(75% - i * 20%)
    })

    #figure(  
      stack(
        spacing: 1em,
        // 1. Il grafico a torta pulito con i TUOI colori
        cetz.canvas({
          let formatted-data = data.map(item => (
            [#item.at(0) (#item.at(1))], 
            item.at(1)
          ))
          
          chart.piechart(
            formatted-data, 
            clockwise: true,
            stroke: 0pt,
            radius: 2.3,       
            value-key: 1, 
            label-key: none, // Rimuove le etichette sulle fette
            slice-style: colors, // Applica i tuoi colori originali
          )
        }),
        
        // 2. La legenda in basso stilizzata che usa dinamicamente i tuoi colori
        block(
          //stroke: 0.5pt + luma(200),
          inset: 12pt,
          //radius: 6pt,
          //fill: luma(252),
          grid(
            columns: data.len(), // Una colonna per ogni elemento
            gutter: 15pt,
            align: horizon,
            ..range(data.len()).map(i => {
              let item = data.at(i)
              let color = colors.at(i)
              stack(
                dir: ltr,
                spacing: 6pt,
                box(fill: color, width: 9pt, height: 9pt, stroke: 0.5pt + luma(150)),
                text(size: 9pt, weight: "medium", [#item.at(0) (#item.at(1))])
              )
            })
          )
        )
      ),
      caption: []
    )<diagramma_torta> 
  ]
]

#let diagramma_colonne = [
#align(center)[
  #figure(
    cetz.canvas({
      let data = (
        ([Pordenone], 70),
        ([Udine], 20),
        ([Treviso], 15),
        ([Trieste], 10),
        ([Gorizia], 5)
      )
      
      let get-color(i) = accent.mat.transparentize(85% - i * 15%)
      
      // Rimuove le etichette dall'asse X mappandole come blocco vuoto []
      let data-senza-etichette = data.map(item => ([], item.at(1)))
      
      chart.columnchart(
        data-senza-etichette,
        size: (10, 6),        
        y-max: 80,        
        y-format: plot.formats.decimal.with(suffix: "%"),
        y-tick-step: 25,  
              
        x-grid: false, // Disattiva la griglia verticale
        //y-grid: false, // Disattiva la griglia orizzontale (il tratteggio di sfondo)
        bar-style: i => (fill: get-color(i), stroke: 0pt),
      )
    }), 
    caption: []
  ) <diagramma_colonne> 
]
]

#let grafico_cartesiano_punti = [
  #figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (8, 6),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1/2,      
    minor-tick-step: 1/4,
    x-min: -.3, x-max: 5,
    y-min: -.3, y-max: 3,  
    
    {
      let points = ((1, 0.5), (2, 1), (3, 1.5), (4, 2), (5, 2.5))

      plot.add(points, style: (stroke: none), mark: "o", mark-size: .2em, mark-style: (fill: accent.mat, stroke: accent.mat))

      plot.annotate({        
        content((1, 0.5), [$A$], anchor: "north", padding: 0)
        content((2, 1), [$B$], anchor: "north", padding: 0)
        content((3, 1.5), [$C$], anchor: "north", padding: 0)
        content((4, 2), [$D$], anchor: "north", padding: 0)
        content((5, 2.5), [$E$], anchor: "north", padding: 0)     
      })
    }
  )
}),
caption: []
) <grafico_cartesiano_punti>
]

#let grafico_cartesiano_frecce = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    

    plot.plot(
      size: (8, 6),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 0.5,      
      x-min: 0, x-max: 5.5, 
      y-min: 0, y-max: 3,      
      {
        let points = ((1, 0.5), (2, 1), (3, 1.5), (4, 2), (5, 2.5))
        
        // Linee di proiezione
        plot.annotate({
          for (x, y) in points {
            // Linea verticale
            line((x, 0), (x, y), stroke: (paint: accent.mat.lighten(20%), thickness: 0.2pt), mark: (end: ")>", scale: .5), fill: accent.mat.lighten(20%), thickness: 0.1pt)
            // Linea orizzontale
            line((x, y), (0, y), stroke: (paint: accent.mat.lighten(20%), thickness: 0.2pt), mark: (end: ")>", scale: .5), fill: accent.mat.lighten(20%), thickness: 0.1pt)
          }
        })
        
        // Punti
        plot.add(points, style: (stroke: none), mark: "o", mark-size: .2em, mark-style: (fill: accent.mat, stroke: accent.mat))

        // Etichette
        plot.annotate({        
        content((1, 0.5), [$A$], anchor: "north", padding: 0)
        content((2, 1), [$B$], anchor: "north", padding: 0)
        content((3, 1.5), [$C$], anchor: "north", padding: 0)
        content((4, 2), [$D$], anchor: "north", padding: 0)
        content((5, 2.5), [$E$], anchor: "north", padding: 0)     
        })
      }
    )
  }),
  caption: []
) <grafico_cartesiano_frecce>
]

#let grafico_cartesiano_retta = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    

    plot.plot(
      size: (8, 6),
      axis-style: "left",
      x-tick-step: 1,      
      y-tick-step: 0.5,      
      x-min: 0, x-max: 5.5, 
      y-min: 0, y-max: 3,      
      {
        
        // Retta
        plot.add(
        domain: (-3, 5),        
        style: (stroke: accent.mat, thickness: 0.5pt),        
        x => x/2
      )

      }
    )
  }),
  caption: []
) <grafico_cartesiano_retta>
]

#let grafico_cartesiano_retta_punti = context [
  #figure(
  cetz.canvas({
    import cetz.draw: *
      set-style(tick: (
      stroke: 0.5pt + black, // Stile dei trattini dei tick
      length: 0.1,        // Lunghezza dei trattini (number)
      label: (
        offset: 0.2,      // Distanza dei numeri dall'asse (number)
        angle: 0deg       // Rotazione dei numeri dell'asse (angle)
      )
    ),)
    

    plot.plot(
      
      size: (8, 6),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 0.5,      
      x-min: 0, x-max: 5.5,        
      y-min: 0, y-max: 3, 
      {
        let points = ((1, 0.5), (2, 1), (3, 1.5), (4, 2), (5, 2.5))
        
        // Retta
        plot.add(
        domain: (-3, 5),        
        style: (stroke: accent.mat, thickness: 0.5pt),        
        x => x/2
      )

        // Punti
        plot.add(points, style: (stroke: none), mark: "o", mark-size: .2em, mark-style: (fill: accent.mat, stroke: accent.mat))

        // Etichette
        plot.annotate({        
        content((1, 0.5), [$A$], anchor: "north", padding: 0)
        content((2, 1), [$B$], anchor: "north", padding: 0)
        content((3, 1.5), [$C$], anchor: "north", padding: 0)
        content((4, 2), [$D$], anchor: "north", padding: 0)
        content((5, 2.5), [$E$], anchor: "north", padding: 0)     
      })
      }
    )
  }),
  caption: []
) <grafico_cartesiano_retta_punti>
]

#let griglia_grafici_deformazioni = [
  #grid(columns: 2, column-gutter: 2em, row-gutter: 2em)[#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (5, 2.5),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -2, x-max: 2, 
      y-min: -1, y-max: 1,      
      {
        
      // Circonferenza
      plot.add(
      domain: (-6, 6),        
      style: (stroke: accent.mat, thickness: 0.5pt),        
      x => (calc.cos(x), calc.sin(x))
      )

      }
    )
  }),
  caption: []
) <grafico_cartesiano_circonferenza1>][
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (5, 2.5),
      axis-style: "school-book",
      x-tick-step: .5,      
      y-tick-step: 1,      
      x-min: -1, x-max: 1, 
      y-min: -1, y-max: 1,      
      {
        
      // Circonferenza
      plot.add(
      domain: (-3, 5),        
      style: (stroke: accent.mat, thickness: 0.5pt),        
      x => (calc.cos(x), calc.sin(x))
      )

      }
    )
  }),
  caption: []
) <grafico_cartesiano_circonferenza2>][
#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (5, 2.5),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -2, x-max: 2, 
      y-min: -1, y-max: 1,      
      {
        
      // Retta
      plot.add(
      domain: (-3, 5),        
      style: (stroke: accent.mat, thickness: 0.5pt),        
      x => x/2
      )

      }
    )
  }),
  caption: []
) <grafico_cartesiano_bisettrice1>][#figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (5, 2.5),
      axis-style: "school-book",
      x-tick-step: .5,      
      y-tick-step: 1,      
      x-min: -1, x-max: 1, 
      y-min: -1, y-max: 1,      
      {
        
      // Retta
      plot.add(
      domain: (-3, 5),        
      style: (stroke: accent.mat, thickness: 0.5pt),        
      x => x/2
      )

      }
    )
  }),
  caption: []
) <grafico_cartesiano_bisettrice2>]
]

#let grafico_cartesiano_non_funzione = [
  #figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (10, 5),
      axis-style: "school-book",
      x-tick-step: none,      
      y-tick-step: none,      
      x-min: -.5, x-max: 4, 
      y-min: -1, y-max: 4,      
      {
        // Retta verticale
        plot.add(
          style: (stroke: accent.mat.lighten(50%), thickness: 0.5pt),
          ((1, -2), (1, 4)) 
        )

        // Proiezioni
        plot.add(
          style: (stroke: (dash: "dashed", paint: accent.mat.lighten(10%), thickness: 0.5pt)),
          ((1, .69), (0, .69)) 
        )

        plot.add(
          style: (stroke: (dash: "dashed", paint: accent.mat.lighten(20%), thickness: 0.5pt)),
          ((1, 3.07), (0, 3.07)) 
        )

        // Curva quadratica calcolata per punti
        let p0 = (4, 2)  // Inizio
        let p1 = (-3.0, -2.0)  // Controllo
        let p2 = (3, 6) // Fine
        
        let punti-bezier = ()
        for i in range(0, 21) {
          let t = i / 20
          let x = (1 - t)*(1 - t)*p0.at(0) + 2*(1 - t)*t*p1.at(0) + t*t*p2.at(0)
          let y = (1 - t)*(1 - t)*p0.at(1) + 2*(1 - t)*t*p1.at(1) + t*t*p2.at(1)
          punti-bezier.push((x, y))
        }

        plot.add(
          style: (stroke: (paint: accent.mat.lighten(5%), thickness: 1pt)),
          punti-bezier
        )

        plot.annotate({        
        content((0, 0.5), [$y_1$], anchor: "north-east")
        content((0, 3), [$y_2$], anchor: "north-east")
        content((1, 0), [$x$], anchor: "south-west")
    
        })

      }
    )
  }),
  caption: []
) <grafico_cartesiano_non_funzione>
]

#let grafico_dominio_immagine = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    

    plot.plot(
      size: (8, 5),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -2.2, x-max: 4.2, 
      y-min: -4.2, y-max: 2.2,      
      {
        
      // Retta
      plot.add(
      domain: (-3, 5),        
      style: (stroke: (accent.mat.lighten(50%)), thickness: 0.5pt),        
      x => 3 / 13 * calc.pow(x, 3) - 27 / 26 * calc.pow(x, 2) + 2
      )

      // Dominio e codominio
      plot.add(
          style: (stroke: (accent.mat.lighten(10%)), thickness: 1pt),
          ((0, 2), (0, -4)) 
      )

      plot.add(
          style: (stroke: accent.mat.lighten(10%), thickness: 1pt),
          ((-2, 0), (4, 0)) 
      )

      // Proiezioni
      plot.add(
          style: (stroke: (dash: "dashed", paint: accent.mat.lighten(20%), thickness: 0.5pt)),
          ((-2, 2), (4, 2)) 
      )
      plot.add(
          style: (stroke: (dash: "dashed", paint: accent.mat.lighten(20%), thickness: 0.5pt)),
          ((-2, -4), (4, -4)) 
      )
      plot.add(
          style: (stroke: (dash: "dotted", paint: accent.mat.lighten(20%), thickness: 0.5pt)),
          ((-2, 2), (-2, -4)) 
      )
      plot.add(
          style: (stroke: (dash: "dotted", paint: accent.mat.lighten(20%), thickness: 0.5pt)),
          ((4, 2), (4, -4)) 
      )

      }
    )
  }),
  caption: []
) <grafico_dominio_immagine>
]

#let input_output1 = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    
smartart.process.chevron(
    ([Input], [#text(fill: white.darken(10%))[$x^3 - x$]], [Output]),
    spacing: 0.3,
    start-cap: "",
    middle-cap: ">", 
    end-cap: "", 
    step-style: (accent.mat.lighten(90%), black.lighten(20%), accent.mat.lighten(50%))
  )
    
  }),
  caption: []
) <input_output1>
]

#let input_output2 = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    
smartart.process.chevron(
    ([$5$], [#text(fill: white.darken(10%))[$x^3 - x$]], [$120$]),
    spacing: 0.3,
    start-cap: "",
    middle-cap: ">", 
    end-cap: "", 
    step-style: (accent.mat.lighten(90%), black.lighten(20%), accent.mat.lighten(50%))
  )
    
  }),
  caption: []
) <input_output2>
]

#let funzione_iniettiva = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -4.5, x-max: 4.5, 
        y-min: -2, y-max: 2,      
        {
        // Curva
        plot.add(
          domain: (-4.5, 4.5),        
          style: (stroke: (paint: accent.mat)),        
          x => calc.atan(x).rad()
        )

        // Retta r_1
        plot.add(
          style: (stroke: (dash: "dashed", paint: accent.mat.lighten(40%), thickness: 0.5pt)),
          ((-4.5, calc.pi / 2), (4.5, calc.pi / 2)) 
        )
        
        // Retta r_2
        plot.add(
          style: (stroke: (dash: "dashed", paint: accent.mat.lighten(40%), thickness: 0.5pt)),
          ((-4.5, .5), (4.5, .5)), 
        )

        // Etichette
        plot.annotate({ 
        content((-4, (calc.pi / 2 + .1)), $r_1$, anchor: "north")
        content((-4, .6), $r_2$, anchor: "north")
        })
        }
      )
      
      
    }),
    caption: []
  ) <funzione_iniettiva>
]

#let funzione_suriettiva = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    

    plot.plot(
      size: (8, 5),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -2.2, x-max: 2.2, 
      y-min: -1, y-max: 2.2,      
      {
        
      // Curva
      plot.add(
      domain: (-3, 5),        
      style: (stroke: (accent.mat)),        
      x => calc.pow(x, 3) - 2 * calc.pow(x, 2) + 2
      )


      // Retta r_1
      plot.add(
        style: (stroke: (dash: "dashed", paint: accent.mat.lighten(40%), thickness: 0.5pt)),
        ((-4.5, calc.pi / 2), (4.5, calc.pi / 2)) 
      )
      
      // Retta r_2
      plot.add(
        style: (stroke: (dash: "dashed", paint: accent.mat.lighten(40%), thickness: 0.5pt)),
        ((-4.5, .5), (4.5, .5)), 
      )

      // Etichette
      plot.annotate({ 
      content((-2 + .1, 1.6), $r_1$, anchor: "north")
      content((-2 + .1, .6), $r_2$, anchor: "north")
      })

      }
    )
  }),
  caption: []
) <funzione_suriettiva>
]

#let funzione_biiettiva = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    

    plot.plot(
      size: (8, 5),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -2.2, x-max: 2.2, 
      y-min: -.5, y-max: 2.2,      
      {
        
      // Curva
      plot.add(
      domain: (-3, 5),        
      style: (stroke: (accent.mat)),        
      x => 1 * calc.pow(x, 3)  + 1
      )


      // Retta r_1
      plot.add(
        style: (stroke: (dash: "dashed", paint: accent.mat.lighten(40%), thickness: 0.5pt)),
        ((-4.5, calc.pi / 2), (4.5, calc.pi / 2)) 
      )
      
      // Retta r_2
      plot.add(
        style: (stroke: (dash: "dashed", paint: accent.mat.lighten(40%), thickness: 0.5pt)),
        ((-4.5, .5), (4.5, .5)), 
      )

      // Etichette
      plot.annotate({ 
      content((-2 + .1, 1.6), $r_1$, anchor: "north")
      content((-2 + .1, .6), $r_2$, anchor: "north")
      })

      }
    )
  }),
  caption: []
) <funzione_biiettiva>
]

#let grafici_restrizione_dominio = [#align(center)[#grid(columns: 2, gutter: 1.5em, align: horizon + center)[
  #figure(
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (5, 5),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -1.5, x-max: 1.5, 
      y-min: -.3, y-max: 2.2,      
      {
        
      // Curva
      plot.add(
      domain: (-2, 2),        
      style: (stroke: (accent.mat)),        
      x => calc.pow(x, 2)
      )
      }
    )
  }),
  caption: []
) <grafico_restrizione_dominio1>
  ][
    #figure(
  cetz.canvas({
    import cetz.draw: *
    
    plot.plot(
      size: (5, 5),
      axis-style: "school-book",
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -1.5, x-max: 1.5, 
      y-min: -.3, y-max: 2.2,      
      {
        
      // Curva
      plot.add(
      domain: (0, 2),        
      style: (stroke: (accent.mat)),        
      x => calc.pow(x, 2)
      )
      }
    )
  }),
  caption: []
) <grafico_restrizione_dominio2>
  ]]
]

#let composizione_funzione = [
  #figure(
cetz.canvas({
  import cetz.draw: *

  // insiemi
  circle((0, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(60%), name: "insieme_A")
  content((-1, 1.4), [$A$])
  circle((3, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(75%), name: "insieme_B")
  content((2.1, 1.4), [$C$])
  circle((3, 0), radius: (0.6, 0.8), stroke:(paint: accent.mat, dash: "dashed", thickness: .5pt), fill: accent.mat.lighten(75%), name: "insieme_B")
  content((3.8, .8), [$g(A)$])
  circle((6, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(85%), name: "insieme_B")
  content((6.9, 1.4), [$D$])

  // coordinate punti e etichette (y + 0.03)
  let (x_a, y_a) = (-0.2, 1)
  let (x_b, y_b) = (0.1, 0.5)
  let (x_c, y_c) = (-0.1, -0.1)
  let (x_d, y_d) = (0.1, -0.75)
  let (x_e, y_e) = (-0.2, -1.2)

  let (x_f, y_f) = (3, 0.6)
  let (x_g, y_g) = (2.7, 0)
  let (x_h, y_h) = (3.1, -0.5)
  let (x_i, y_i) = (2.7, -1)
  let (x_j, y_j) = (3.3, 0.1)
  let (x_k, y_k) = (3.3, -0.9)
  let (x_m, y_m) = (3.1, -1.2)
  let (x_n, y_n) = (3.1, 1.1)

  let (x_o, y_o) = (5.8, 1)
  let (x_p, y_p) = (6.0, .5)
  let (x_q, y_q) = (6.1, -.3)
  let (x_r, y_r) = (5.7, -.7)
  let (x_s, y_s) = (6.2, -1.1)
  // punti primo insieme
  circle((x_a, y_a), radius: 0.02, fill: black); content((x_a, y_a), [$x_1$], name: "a", anchor: "south")
  circle((x_b, y_b), radius: 0.02, fill: black); content((x_b, y_b), [$x_2$], name: "b", anchor: "south")
  circle((x_c, y_c), radius: 0.02, fill: black); content((x_c, y_c), [$x_3$], name: "c", anchor: "south")
  circle((x_d, y_d), radius: 0.02, fill: black); content((x_d, y_d), [$x_4$], name: "d", anchor: "south")
  circle((x_e, y_e), radius: 0.02, fill: black); content((x_e, y_e), [$x_5$], name: "e", anchor: "south")

  // punti secondo insieme
  circle((x_f, y_f), radius: 0.02, fill: black); content((x_f, y_f), [], name: "f")
  circle((x_g, y_g), radius: 0.02, fill: black); content((x_g, y_g), [], name: "g")
  circle((x_h, y_h), radius: 0.02, fill: black); content((x_h, y_h), [$g(x_3)$], name: "h", anchor: "south")
  circle((x_i, y_i), radius: 0.02, fill: black); content((x_i, y_i), [], name: "i")
  circle((x_j, y_j), radius: 0.02, fill: black); content((x_j, y_j), [], name: "j")
  circle((x_k, y_k), radius: 0.02, fill: black); content((x_k, y_k), [], name: "k")
  circle((x_m, y_m), radius: 0.02, fill: black); content((x_m, y_m), [], name: "m")
  circle((x_n, y_n), radius: 0.02, fill: black); content((x_n, y_n), [], name: "m")

  // punti terzo insieme
  circle((x_o, y_o), radius: 0.02, fill: black); content((x_o, y_o), [], name: "o")
  circle((x_p, y_p), radius: 0.02, fill: black); content((x_p, y_p), [], name: "p")
  circle((x_q, y_q), radius: 0.02, fill: black); content((x_q, y_q), [$f(g(x_3))$], name: "q", anchor: "south")
  circle((x_r, y_r), radius: 0.02, fill: black); content((x_r, y_r), [], name: "r")
  circle((x_s, y_s), radius: 0.02, fill: black); content((x_s, y_s), [], name: "s")
    

  // relazioni
  bezier(
    "c.south", 
    "h.south",  
    (1, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "h.south", 
    "q.south",  
    (5, 1),         
    mark: (end: ">", fill: accent.mat),
    stroke: (paint: accent.mat, thickness:0.5pt), padding: 0pt,
  )
  
}),
caption: []
) <composizione_funzione>
]

#let input_output3 = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    
  smartart.process.chevron(
    ([4], [#text(fill: white.darken(10%))[$x^2 + 20$]], [36], [#text(fill: white.darken(10%))[$sqrt(x)$]], [6]),
    spacing: 0.3,
    start-cap: "",
    middle-cap: ">", 
    end-cap: "", 
    step-style: (accent.mat.lighten(80%), black.lighten(20%), accent.mat.lighten(65%), black.lighten(20%), accent.mat.lighten(40%))
  ) 
  }),
  caption: []
) <input_output3>
]

#let input_output4 = [
  #figure(
  cetz.canvas({
    import cetz.draw: *
    
smartart.process.chevron(
    ([4], [#text(fill: white.darken(10%))[$sqrt(x)$]], [2], [#text(fill: white.darken(10%))[$x^2 + 20$]], [24]),
    spacing: 0.3,
    start-cap: "",
    middle-cap: ">", 
    end-cap: "", 
    step-style: (accent.mat.lighten(80%), black.lighten(20%), accent.mat.lighten(70%), black.lighten(20%), accent.mat.lighten(40%))
  ) 
  }),
  caption: []
) <input_output4>
]

#let funzione_biunivoca = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      // insiemi
      circle((0, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(80%), name: "insieme_A")
      content((-1, 1.4), [])
      circle((3, 0), radius: (1, 1.5), stroke: .5pt, fill: silver.lighten(50%), name: "insieme_B")
      content((2.1, 1.4), [])  

      // coordinate punti
      let (x_a, y_a) = (-0.1, 0.9)
      let (x_b, y_b) = (0.1, 0.4)
      let (x_c, y_c) = (0.1, -0.1)
      let (x_d, y_d) = (0.1, -0.75)

      let (x_f, y_f) = (3, 0.8)
      let (x_g, y_g) = (2.8, 0.2)
      let (x_h, y_h) = (3, -0.4)
      let (x_i, y_i) = (2.8, -0.9)

      // punti primo insieme (etichette a sinistra del punto)
      circle((x_a, y_a), radius: 0.02, fill: black, name: "a")
      content("a", [$x_1$], anchor: "east", padding: 0.1)
      
      circle((x_b, y_b), radius: 0.02, fill: black, name: "b")
      content("b", [$x_2$], anchor: "east", padding: 0.1)
      
      circle((x_c, y_c), radius: 0.02, fill: black, name: "c")
      content("c", [$x_3$], anchor: "east", padding: 0.1)
      
      circle((x_d, y_d), radius: 0.02, fill: black, name: "d")
      content("d", [$x_4$], anchor: "east", padding: 0.1)  

      // punti secondo insieme (etichette a destra del punto)
      circle((x_f, y_f), radius: 0.02, fill: black, name: "f")
      content("f", [$y_1$], anchor: "west", padding: 0.1)
      
      circle((x_g, y_g), radius: 0.02, fill: black, name: "g")
      content("g", [$y_2$], anchor: "west", padding: 0.1)
      
      circle((x_h, y_h), radius: 0.02, fill: black, name: "h")
      content("h", [$y_3$], anchor: "west", padding: 0.1)
      
      circle((x_i, y_i), radius: 0.02, fill: black, name: "i")
      content("i", [$y_4$], anchor: "west", padding: 0.1)  

      // relazioni (aggiunto padding per non sovrapporsi ai punti)
      bezier(
        "a", 
        "f",  
        (1, 1),        
        mark: (end: ">", fill: accent.mat),
        stroke: (paint: accent.mat, thickness: 0.5pt), 
        padding: 0.05,
      )
      bezier(
        "b", 
        "g",  
        (1, 0.5),         
        mark: (end: ">", fill: accent.mat),
        stroke: (paint: accent.mat, thickness: 0.5pt), 
        padding: 0.05,
      )
      bezier(
        "c", 
        "h",  
        (1, -0.1),         
        mark: (end: ">", fill: accent.mat),
        stroke: (paint: accent.mat, thickness: 0.5pt), 
        padding: 0.05,
      )
      bezier(
        "d", 
        "i",  
        (1, -1),         
        mark: (end: ">", fill: accent.mat),
        stroke: (paint: accent.mat, thickness: 0.5pt), 
        padding: 0.05,
      )
    }),
    caption: []
  ) <funzione_biunivoca>
]

#let funzione_inversa = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      // insiemi
      circle((0, 0), radius: (1, 1.5), stroke: .5pt, fill: accent.mat.lighten(80%), name: "insieme_A")
      content((-1, 1.4), [])
      circle((3, 0), radius: (1, 1.5), stroke: .5pt, fill: silver.lighten(50%), name: "insieme_B")
      content((2.1, 1.4), [])  

      // coordinate punti
      let (x_a, y_a) = (-0.1, 0.9)
      let (x_b, y_b) = (0.1, 0.4)
      let (x_c, y_c) = (0.1, -0.1)
      let (x_d, y_d) = (0.1, -0.75)

      let (x_f, y_f) = (3, 0.8)
      let (x_g, y_g) = (2.8, 0.2)
      let (x_h, y_h) = (3, -0.4)
      let (x_i, y_i) = (2.8, -0.9)

      // punti primo insieme (etichette a sinistra del punto)
      circle((x_a, y_a), radius: 0.02, fill: black, name: "a")
      content("a", [$x_1$], anchor: "east", padding: 0.1)
      
      circle((x_b, y_b), radius: 0.02, fill: black, name: "b")
      content("b", [$x_2$], anchor: "east", padding: 0.1)
      
      circle((x_c, y_c), radius: 0.02, fill: black, name: "c")
      content("c", [$x_3$], anchor: "east", padding: 0.1)
      
      circle((x_d, y_d), radius: 0.02, fill: black, name: "d")
      content("d", [$x_4$], anchor: "east", padding: 0.1)  

      // punti secondo insieme (etichette a destra del punto)
      circle((x_f, y_f), radius: 0.02, fill: black, name: "f")
      content("f", [$y_1$], anchor: "west", padding: 0.1)
      
      circle((x_g, y_g), radius: 0.02, fill: black, name: "g")
      content("g", [$y_2$], anchor: "west", padding: 0.1)
      
      circle((x_h, y_h), radius: 0.02, fill: black, name: "h")
      content("h", [$y_3$], anchor: "west", padding: 0.1)
      
      circle((x_i, y_i), radius: 0.02, fill: black, name: "i")
      content("i", [$y_4$], anchor: "west", padding: 0.1)  

      // relazioni (aggiunto padding per non sovrapporsi ai punti)
      bezier(
        "f", 
        "a",  
        (1, 1),        
        mark: (end: ">", fill: accent.mat),
        stroke: (paint: accent.mat, thickness: 0.5pt), 
        padding: 0.05,
      )
      bezier(
        "g", 
        "b",  
        (1, 0.5),         
        mark: (end: ">", fill: accent.mat),
        stroke: (paint: accent.mat, thickness: 0.5pt), 
        padding: 0.05,
      )
      bezier(
        "h", 
        "c",  
        (1, -0.1),         
        mark: (end: ">", fill: accent.mat),
        stroke: (paint: accent.mat, thickness: 0.5pt), 
        padding: 0.05,
      )
      bezier(
        "i", 
        "d",  
        (1, -1),         
        mark: (end: ">", fill: accent.mat),
        stroke: (paint: accent.mat, thickness: 0.5pt), 
        padding: 0.05,
      )
    }),
    caption: []
  ) <funzione_inversa>
]

#let esempio_grafico_funzione_inversa = [
#figure(
cetz.canvas({
  // y = x
  let data-line = range(-35, 46).map(i => {
    let x = i / 10
    (x, x)
  })
  
  // f^-1
  let data-cube = range(-20, 37).map(i => {
    let x = i / 10
    let y = 1 + calc.pow(x - 1, 3) / 5
    (x, y)
  })
  
  // radice cubica f 
  let data-root = range(-35, 76).map(i => {
    let x = i / 10
    let dx = 5 * (x - 1)
    let y = 1 + if dx < 0 { -calc.pow(-dx, 1/3) } else { calc.pow(dx, 1/3) }
    (x, y)
    
  })

  // 
  plot.plot(
    size: (6, 4),
    axis-style: "left",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -1, x-max: 5,
    y-min: -1, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",
    legend: (4.3, 1.2),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),

    {
      plot.add(data-line, style: (stroke: (paint: accent.mat, thickness: .5pt, dash: "dotted")))
      plot.add(data-root, style: (stroke: (paint: accent.mat.lighten(10%), thickness: 1pt)), label: $f(x)$)
      plot.add(data-cube, style: (stroke: (paint: accent.mat.lighten(20%), thickness: 1pt, dash: "dashed")), label: $f^(-1)(x)$)
    }

  
  

  )

}),
caption: []
) <esempio_grafico_funzione_inversa>
]

#let coefficiente_angolare = [#grid(columns: 2, gutter: 1.5em, align: horizon+ center)[#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (5, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1, x-max: 2,
    y-min: -.2, y-max: 3.5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 

    {

    plot.add(
    domain: (-1.5, 3),        
    style: (stroke: (accent.mat)),        
    x => 2 * x + 1
    )

    plot.add(
      ((0, 1), (1, 1)),
      domain: (0, 1),        
      style: (stroke: (paint: accent.mat.lighten(20%), thickness: 1pt, dash: "dashed")),        
    )    
    plot.add(
      ((1, 1), (1, 3)),
      domain: (0, 1),        
      style: (stroke: (paint: accent.mat.lighten(20%), thickness: 1pt, dash: "dashed")),        
    )

    plot.annotate({
      cetz.decorations.brace((0, 1), (1, 1),  name: "g1", outer-inset: .1, thickness: .008, amplitude: .2, flip: true, fill: accent.mat)        
      cetz.decorations.brace((1, 1), (1, 3), name: "g2", outer-inset: .1, thickness: .005, amplitude: .2, flip: true, fill: accent.mat)
      content("g1", [#text(fill: accent.mat)[$Delta x$]], anchor: "south", padding: .2)        
      content("g2", [#text(fill: accent.mat)[$Delta y$]], anchor: "west", padding: .1)
      content((0, 1), [$A$], anchor: "north-east", padding: .03)
      content((1, 3), [$B$], anchor: "west", padding: .1)
      
      circle((0, 1), radius: 0.03, fill: accent.mat, stroke: none) // Vertice A
      circle((1, 1), radius: 0.03, fill: accent.mat, stroke: none) // Angolo retto
      circle((1, 3), radius: 0.03, fill: accent.mat, stroke: none) // Vertice B

      })
    }
  )
}),
caption: []
)

][#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (5, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1, x-max: 1.5,
    y-min: -2, y-max: 1.2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 

    {

    plot.add(
    domain: (-1.5, 3),        
    style: (stroke: (accent.mat)),        
    x => -2 * x + 1
    )

    plot.add(
      ((0, 1), (1, 1)),
      domain: (0, 1),        
      style: (stroke: (paint: accent.mat.lighten(20%), thickness: 1pt, dash: "dashed")),        
    ) 
  
    plot.add(
      ((1, 1), (1, -1)),
      domain: (0, 1),        
      style: (stroke: (paint: accent.mat.lighten(20%), thickness: 1pt, dash: "dashed")),        
    )

    plot.annotate({
      cetz.decorations.brace((0, 1), (1, 1),  name: "g1", outer-inset: .1, thickness: .008, amplitude: .2, fill: accent.mat)        
      cetz.decorations.brace((1, 1), (1, -1), name: "g2", outer-inset: .1, thickness: .005, amplitude: .2, fill: accent.mat)
      content("g1", [#text(fill: accent.mat)[$Delta x$]], anchor: "north", padding: .25)        
      content((1.2, -.15), [#text(fill: accent.mat)[$Delta y$]], anchor: "north-west", padding: -1pt, frame: "rect", fill: white, stroke: none, inset: -2pt)
      content((0, 1), [$A$], anchor: "north-east", padding: .03)
      content((1, -1), [$B$], anchor: "west", padding: .1)
      
      circle((0, 1), radius: 0.03, fill: accent.mat, stroke: none) // Vertice A
      circle((1, 1), radius: 0.03, fill: accent.mat, stroke: none) // Angolo retto
      circle((1, -1), radius: 0.03, fill: accent.mat, stroke: none) // Vertice B

      })
    }
  )
}),
caption: []
)

]<coefficiente_angolare>
]

#let funzione_valore_m = [#align(center)[#grid(columns: 3, gutter: 1em, align: horizon+ center)[#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (3, 3),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1, x-max: 1,
    y-min: -1, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 

    {

    plot.add(
    domain: (-1.5, 3),        
    style: (stroke: (accent.mat)),        
    x => x 
    )

    }
  )
}),
caption: []
)<funzione_valore_m>
][#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (3, 3),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1, x-max: 1,
    y-min: -1, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 

    {

    plot.add(
    domain: (-1.5, 3),        
    style: (stroke: (accent.mat)),        
    x => -x 
    )
    
    }
  )
}),
caption: []
)

][#figure(
cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (3, 3),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1, x-max: 1,
    y-min: -1, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 

    {

    plot.add(
    domain: (-1.5, 3),        
    style: (stroke: (accent.mat)),        
    y => .5 
    )
    
    }
  )
}),
caption: []
)
]
]]

#let funzione_polinomiale_II_grado = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (6, 3),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1, x-max: 1,
    y-min: -.7, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 

    {

    plot.add(
      domain: (-1.5, 3),        
      style: (stroke: (accent.mat)),        
      x => 2 * calc.pow(x, 2) - 1/2 * x - 1/2 
    )

    plot.add(
      ((0.125, -2), (0.125, 2)),
      domain: (-1, 1),        
      style: (stroke: (paint: accent.mat.lighten(20%), thickness: 1pt, dash: "dashed")),        
    )
    
    }
  )
}),
caption: []
) <funzione_polinomiale_II_grado>
]

#let funzione_valore_assoluto = [
  #figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 3),
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
      // 
      plot.add(
        domain: (0, 6),        
        style: (stroke: accent.mat.lighten(5%), ),
        x => x
      )
      //
      plot.add(
        domain: (-6, 0),        
        style: (stroke: accent.mat.lighten(5%)),        
        x => -x
      )
    }
  )
}),
caption: []
) <funzione_valore_assoluto_grafico>
] 

#let funzioni_pari_dispari = [
  #align(center)[
    #grid(columns: 2, column-gutter: 1em)[#figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 3,
    y-min: -1.5, y-max: 2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    
    {
      // 
      plot.add(
        domain: (-5, 5),        
        style: (stroke: accent.mat.lighten(5%), ),
        x => 1/5 * calc.pow(x, 4) - calc.pow(x, 2) - 1/5
      )
      
    }
  )
}),
caption: []
) <funzione_pari>

    ][#figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 3,
    y-min: -1.5, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    
    {
      // 
      plot.add(
        domain: (-5, 5),        
        style: (stroke: accent.mat.lighten(5%), ),
        x => 1/5 * calc.pow(x, 3) - x
      )
      //

    }
  )
}),
caption: []
) <funzione_dispari>

    ]
  ] 
]

#let funzione_potenza_zero = [
  #figure(
  cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 3),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 3,
    y-min: 0, y-max: 2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    
    {
      // 
      plot.add(
        domain: (-5, 5),        
        style: (stroke: accent.mat.lighten(5%), ),
        x => calc.pow(x, 0)
      )
      //

    }
  )
}),
caption: []
) <funzione_potenza_zero>
]

#let funzione_esponente_2 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (6, 3),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -2, x-max: 2,
    y-min: 0, y-max: 2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 

    {

    plot.add(
      domain: (-1.5, 3),        
      style: (stroke: (accent.mat)),        
      x => 2 * calc.pow(x, 2) 
    )
    
    }
  )
}),
caption: []
) <funzione_esponente_2>
]

#let funzione_esponente_-1 = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (8, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 3,
    y-min: -3, y-max: 3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 

    {

    plot.add(
      domain: (-3, 3),        
      style: (stroke: (accent.mat)),        
      x => 1 / x 
    )
    
    }
  )
}),
caption: []
) <funzione_esponente_-1>
]

#let funzione_esponente_-1k = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (10, 5),
    axis-style: "school-book",
    x-tick-step: 2,      
    y-tick-step: 2,      
    x-min: -5, x-max: 5,
    y-min: -5, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (8, 4.5),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),

    {

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (accent.mat)),        
      label: [k = 2],
      x => 2 / x 
    )

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat, dash: "dotted")),        
      label: [k = -2],
      x => -2 / x 
    )

    plot.add(
      ((1, 0), (1, 2)),
      style: (stroke: (paint: accent.mat.lighten(50%))),
    )
    plot.add(
      ((0, 2), (1, 2)),
      style: (stroke: (paint: accent.mat.lighten(50%))),
    )

    plot.add(
      ((1, 0), (1, -2)),
      style: (stroke: (paint: accent.mat.lighten(50%), dash: "dotted")),
    )
    plot.add(
      ((0, -2), (1, -2)),
      style: (stroke: (paint: accent.mat.lighten(50%), dash: "dotted")),
    )
    
    }
  )
}),
caption: []
) <funzione_esponente_-1k>
]

#let funzione_esponente_positivo = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (7, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: 0, x-max: 3,
    y-min: 0, y-max: 3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (5, 3),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat, dash: "dotted")),        
      label: [$x$],
      x => x 
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(10%))),        
      label: [$x^2$],
      x => calc.pow(x, 2) 
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(45%))),        
      label: [$x^3$],
      x => calc.pow(x, 3) 
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(60%))),        
      label: [$x^7$],
      x => calc.pow(x, 7) 
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(85%))),        
      label: [$x^(15)$],
      x => calc.pow(x, 15) 
    )
    
    }
  )
}),
caption: []
) <funzione_esponente_positivo>
]

#let funzione_esponente_negativo = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (7, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: 0, x-max: 3,
    y-min: 0, y-max: 3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (5, 5),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    plot.add(
      domain: (.1, 5),        
      style: (stroke: (paint: accent.mat)),        
      label: [$x^(-1)$],
      x => calc.pow(x, -1)  
    )

    plot.add(
      domain: (.1, 5),        
      style: (stroke: (paint: accent.mat.lighten(10%))),        
      label: [$x^(-2)$],
      x => calc.pow(x, -2) 
    )

    plot.add(
      domain: (.1, 5),        
      style: (stroke: (paint: accent.mat.lighten(45%))),        
      label: [$x^(-3)$],
      x => calc.pow(x, -3) 
    )

    plot.add(
      domain: (.1, 5),        
      style: (stroke: (paint: accent.mat.lighten(60%))),        
      label: [$x^(-7)$],
      x => calc.pow(x, -7) 
    )

    plot.add(
      domain: (.1, 5),        
      style: (stroke: (paint: accent.mat.lighten(85%))),        
      label: [$x^(-15)$],
      x => calc.pow(x, -15) 
    )
    
    }
  )
}),
caption: []
) <funzione_esponente_negativo>
]

#let funzione_radice = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (7, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 5,
    y-min: -1.5, y-max: 2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (.3, 5),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat)),        
      label: [$root(2, x)$],
      x => calc.root(x, 2)  
    )

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat.lighten(10%))),        
      label: [$root(3, x)$],
      x => calc.root(x, 3)  
    )

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat.lighten(45%))),        
      label: [$root(5, x)$],
      x => calc.root(x, 5)  
    )

    plot.add(
      domain: (-5, 5),        
      style: (stroke: (paint: accent.mat.lighten(60%))),        
      label: [$root(7, x)$],
      x => calc.root(x, 7)  
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(85%))),        
      label: [$root(10, x)$],
      x => calc.root(x, 10)  
    )
    
    }
  )
}),
caption: []
) <funzione_radice>
]

#let funzione_esponente_reale = [
  #figure(
  cetz.canvas({
  import cetz.draw: *
  
  plot.plot(
    size: (8, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -2, x-max: 5,
    y-min: 0, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: none,   
    y-grid: none, 
    legend: (0.2, 5),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
    legend-anchor: auto,

    {

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat)),        
      label: [$x^2$],
      x => calc.pow(x, 2)  
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(10%))),        
      label: [$x^sqrt(2)$],
      x => calc.pow(x, calc.root(2, 2))  
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(35%))),        
      label: [$x$],
      x => x  
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(45%))),        
      label: [$x^(#std.text(size: 0.6em)[$1/sqrt(2)$])$],
      x => calc.pow(x, 1 / calc.root(2, 2))  
    )

    plot.add(
      domain: (0, 5),        
      style: (stroke: (paint: accent.mat.lighten(55%))),        
      label: [$x^(#std.text(size: 0.6em)[$1/2$])$],
      x => calc.pow(x, 1/2)  
    )

    plot.add(
      domain: (.1, 5),        
      style: (stroke: (paint: accent.mat.lighten(65%))),        
      label: [$x^(#std.text(size: 0.6em)[$-8/3$])$],
      x => calc.pow(x, -8/3)  
    )

        plot.add(
      domain: (.1, 5),        
      style: (stroke: (paint: accent.mat.lighten(75%))),        
      label: [$x^(-1)$],
      x => calc.pow(x, -1)  
    )

    plot.add(
      domain: (.01, 5),        
      style: (stroke: (paint: accent.mat.lighten(85%))),        
      label: [$x^(#std.text(size: 0.6em)[$-1/2$])$],
      x => calc.pow(x, -1/2)  
    )
    
    }
  )
}),
caption: []
) <funzione_esponente_reale>
]

#let funzione_segno = [
  #figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (6, 3),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2, x-max: 2,
        y-min: -1.2, y-max: 1.2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            domain: (-3, 0),        
            style: (stroke: (accent.mat)),        
            y => -1
          )

          plot.add(
            domain: (0, 3),        
            style: (stroke: (accent.mat)),        
            y => 1
          )

          plot.annotate({            
            circle((0, 0), radius: 0.03, fill: accent.mat, stroke: none)
          })
        }
      )
    }),
    caption: []
  ) <funzione_segno_grafico>
]

#let funzioni_floor_ceil = [#align(center)[#grid(columns: 2, column-gutter: .5em)[#figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (5, 3.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -3, x-max: 3,
        y-min: -2, y-max: 2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            ((0, 0), (1, 0)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((1, 1), (2, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((2, 2), (3, 2)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-1, -1), (0, -1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-2, -2), (-1, -2)),        
            style: (stroke: (accent.mat)),        
          )

          plot.annotate({            
            circle((0, 0), radius: 0.05, fill: accent.mat, stroke: none) 
            circle((1, 1), radius: 0.05, fill: accent.mat, stroke: none)
            circle((2, 2), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-1, -1), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-2, -2), radius: 0.05, fill: accent.mat, stroke: none)
          })
        }
      )
    }),
    caption: []
  ) <funzione_floor>

][#figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (5, 3.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -3, x-max: 3,
        y-min: -2, y-max: 2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            ((-1, 0), (0, 0)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((1, 1), (0, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((2, 2), (1, 2)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-1, -1), (-2, -1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-2, -2), (-3, -2)),        
            style: (stroke: (accent.mat)),        
          )

          plot.annotate({            
            circle((0, 0), radius: 0.05, fill: accent.mat, stroke: none) 
            circle((1, 1), radius: 0.05, fill: accent.mat, stroke: none)
            circle((2, 2), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-1, -1), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-2, -2), radius: 0.05, fill: accent.mat, stroke: none)
          })
        }
      )
    }),
    caption: []
  ) <funzione_ceil>

]]
]

#let funzione_parte_frazionaria = [#figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8.5, 1),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -4.4, x-max: 4.4,
        y-min: 0, y-max: 1,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            ((0, 0), (1, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((1, 0), (2, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((2, 0), (3, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((3, 0), (4, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((4, 0), (5, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-1, 0), (0, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-2, 0), (-1, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-3, 0), (-2, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-4, 0), (-3, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-5, 0), (-4, 1)),        
            style: (stroke: (accent.mat)),        
          )
          
          plot.annotate({            
            circle((0, 0), radius: 0.05, fill: accent.mat, stroke: none) 
            circle((1, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((2, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((3, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((4, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-1, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-2, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-3, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-4, 0), radius: 0.05, fill: accent.mat, stroke: none)
          })

        }
      )
    }),
    caption: []
  ) <funzione_parte_frazionaria>

]

#let funzione_intero = [#figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (5, 3.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -3, x-max: 3,
        y-min: -2, y-max: 2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            ((-1, 0), (1, 0)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((1, 1), (2, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((2, 2), (3, 2)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-1, -1), (-2, -1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-2, -2), (-3, -2)),        
            style: (stroke: (accent.mat)),        
          )

          plot.annotate({            
            circle((0, 0), radius: 0.05, fill: accent.mat, stroke: none) 
            circle((1, 1), radius: 0.05, fill: accent.mat, stroke: none)
            circle((2, 2), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-1, -1), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-2, -2), radius: 0.05, fill: accent.mat, stroke: none)
          })
        }
      )
    }),
    caption: []
  ) <funzione_intero>

]

#let funzione_parte = [#figure(
    cetz.canvas({
      import cetz.draw: *
      
      plot.plot(
        size: (8.5, 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -4.4, x-max: 4.4,
        y-min: -1, y-max: 1,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: none,   
        y-grid: none, 

        {
          plot.add(
            ((-1, -1), (1, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((1, 0), (2, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((2, 0), (3, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((3, 0), (4, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((4, 0), (5, 1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-1, 0), (-2, -1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-2, 0), (-3, -1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-3, 0), (-4, -1)),        
            style: (stroke: (accent.mat)),        
          )
          plot.add(
            ((-4, 0), (-5, -1)),        
            style: (stroke: (accent.mat)),        
          )
          
          plot.annotate({             
            circle((1, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((2, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((3, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((4, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-1, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-2, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-3, 0), radius: 0.05, fill: accent.mat, stroke: none)
            circle((-4, 0), radius: 0.05, fill: accent.mat, stroke: none)
          })

        }
      )
    }),
    caption: []
  ) <funzione_parte>

]

== Equazioni e sistemi

//

== Disequazioni

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

// =================================




// ==============================





//

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

== Funzioni esponenziali

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
  y-min: -.5, y-max: 3.5,
  x-label: [],        
  y-label: [],    
  x-grid: none,   
  y-grid: none, 
  legend: (3.4, 4.9),        
  legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5))),
  legend-anchor: auto,
  {

    let x_p = 1.5
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
      content((x_p2 + 0.1, 0 - 0.1), $2^x$, anchor: "north")
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




