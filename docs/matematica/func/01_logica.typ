#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "shared.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart
#import "@preview/cetz-venn:0.2.0" // diagrammi di Venn

//===================

// Tabelle

// Tabella logica 1
#let tabella_logica1 = [#figure(
  caption: [],
  //gap: 0pt, // Allinea la didascalia alla tabella
  table(
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
  columns: (7),
  table.header[ $sans(P)$ ][ $sans(Q)$ ][ $sans(not P)$ ][ $sans(P and Q)$ ][ $sans(P or Q)$ ][ $sans(P arrow.r.double Q)$ ][ $sans(P arrow.l.r.double Q)$ ], 
  [ V ], [ V ], [ F ], [ V ], [ V ], [ V ], [ V ],  
  [ V ], [ F ], [ F ], [ F ], [ V ], [ F ], [ F ],  
  [ F ], [ V ], [ V ], [ F ], [ V ], [ V ], [ F ],  
  [ F ], [ F ], [ V ], [ F ], [ F ], [ V ], [ V ], 
)  
)<tabella_logica1>
]

// Tabella logica 2
#let tabella_logica2 = [
  #figure(
  caption: [],
  //gap: 0pt, // Allinea la didascalia alla tabella
  table(
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
  columns: (7),
  table.header[$sans(P)$][$sans(Q)$][$sans(P and Q)$][$sans(not Q)$][$sans(P and not Q)$][$sans((P and Q) or (P and not Q))$][$sans(not ((P and Q) or (P and not Q)))$],
  [V], [V], [V], [F], [F], [V], [F],
  [V], [F], [F], [V], [V], [V], [F],
  [F], [V], [F], [F], [F], [F], [V],
  [F], [F], [V], [V], [F], [F], [V],
)  
)<tabella_logica2>
]

// Tabella relazioni 1
#let tabella_relazioni1 = [
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
  columns: (2em,) * 4, 
  [$-$], [], [], [], 
  [$ast$], [], [], [],
  [$+$], [], [], [],
  table.cell(stroke: accent.mat.lighten(90%))[$hash$], [], [], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)<tabella_relazioni1>
]

// Tabella relazioni 2
#let tabella_relazioni2 = [
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
  columns: (2em,) * 4, 
  [$-$], [$checkmark$], [], [], 
  [$ast$], [], [$checkmark$], [],
  [$+$], [$checkmark$], [], [],
  table.cell(stroke: accent.mat.lighten(90%))[$hash$], [], [], [$checkmark$],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)<tabella_relazioni2>
]

#let griglia_tabelle_relazioni = [
  #align(center)[
#grid(columns: 2, align: center, gutter: 2em)[
#tabella_relazioni(
  color: accent.mat,
  data: (
  [$c$], [], [], [], 
  [$b$], [$checkmark$], [$checkmark$], [],  
  table.cell(stroke: accent.mat.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: accent.mat,
  data: (
  [$c$], [], [$checkmark$], [$checkmark$], 
  [$b$], [], [$checkmark$], [$checkmark$],  
  table.cell(stroke: accent.mat.lighten(90%))[$a$], [$checkmark$], [], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: accent.mat,
  data: ( 
  [$c$], [], [], [$checkmark$], 
  [$b$], [], [$checkmark$], [$checkmark$],  
  table.cell(stroke: accent.mat.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [$checkmark$],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: accent.mat,
  data: (    
    [$c$], [], [$checkmark$], [], 
    [$b$], [], [], [],  
    table.cell(stroke: accent.mat.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [$checkmark$],    
    table.cell(stroke: white, fill: white)[], table.cell(stroke: accent.mat.lighten(90%))[$a$], [$b$], [$c$],
  )
)
]
]
]

// Grafici

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