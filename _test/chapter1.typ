#import "template.typ": *
#import "config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart
#import "@preview/cetz-venn:0.2.0"

= Capitolo

#intro[#lorem(100)]

#box(inset: 10pt,height: 2cm, width: 100%, fill: accent.sto.lighten(50%))[testo]


#table(
    columns: (1fr, 1fr),
    stroke: 0.5pt + accent.fil,
    fill: (col, row) => if row == 0 { accent.chi.lighten(20%) },
    [Intestazione A], [Intestazione B],
    [Dato 1], [Dato 2]
  )

== Capitolo

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

#diagrammi_eulero_venn

#let schema_segni(
  punti: (), 
  righe: (), 
  evidenzia: (), 
  intestazione: [$frac(+, -, style: "horizontal")$],
  linea_doppia: true // Parametro booleano attivo di default
) = context layout(size => {
  // Larghezza del testo più largo a sinistra in pt
  let max_w = 0pt
  for r in righe {
    let t = r.at("testo", default: [])
    let w = measure(t).width
    if w > max_w { max_w = w }
  }
  
  // Valori numerici puri
  let w_testo = max_w.pt()
  let w_totale = size.width.pt()
  
  cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let n_p = punti.len()
    let n_r = righe.len()
    
    // Spaziature e margini
    let x_min = -w_testo - 25.0
    let x_label = x_min / 2 - 5.0
    let x_asse_v = -14.0
    
    // Distribuzione dello spazio rimanente per i segni
    let w_disponibile = w_totale - w_testo - 60.0
    let dx = w_disponibile / ((n_p - 1) * 2)
    let dy = 30.0 
    
    let x_max = (n_p - 1) * 2 * dx + 15.0
    let y_doppio = -20.0 - ((n_r - 1) * dy)

    // Griglia principale e intestazione dinamica
    line((x_min, 0), (x_max, 0), stroke: 0.5pt + accent.mat) 
    line((x_asse_v, 20.0), (x_asse_v, y_doppio - (dy * 0.2)), stroke: 0.5pt + accent.mat) 
    
    content((x_label, 12.0), intestazione)

    // Capisaldi e tratteggi verticali
    for (i, p) in punti.enumerate() {
      let x = i * 2 * dx
      content((x, 12.0), p)
      if i > 0 and i < n_p - 1 {
        line((x, 0), (x, y_doppio - (dy * 0.2)), stroke: (paint: accent.mat.lighten(50%), thickness: 0.5pt, dash: "dashed"))
      }
    }

    // Righe dei segni
    for (r_idx, r) in righe.enumerate() {
      let y = -15.0 - (r_idx * dy)
      let testo = r.at("testo", default: none)
      let segni = r.at("segni", default: ())

      if testo != none { content((x_label, y), testo) }

      // Linee di divisione orizzontale condizionate
      let y_l = y - (dy * 0.5)
      if r_idx == n_r - 2 {
        line((x_min, y_l), (x_max, y_l), stroke: 0.5pt + accent.mat)
        if linea_doppia {
          // Disegna la seconda linea solo se linea_doppia è true
          line((x_min, y_l - 2.0), (x_max, y_l - 2.0), stroke: 0.5pt + accent.mat)
        }
      } else if r_idx < n_r - 1 {
        line((x_min, y_l), (x_max, y_l), stroke: 0.5pt + accent.mat)
      }

      // Evidenziazione azzurra semitrasparente
      if r_idx == n_r - 1 {
        for idx in evidenzia {
          circle((idx * dx, y), radius: 8pt, fill: accent.mat.lighten(80%), stroke: 0.5pt + accent.mat.lighten(70%))
        }
      }

      // Posizionamento segni
      for (s_idx, s) in segni.enumerate() {
        content((s_idx * dx, y), s)
      }
    }
  })
})

// Esempio
#schema_segni(
  punti: ([$-oo$], [$-1$], [$0$], [$2$], [$+oo$]),
  righe: (
    (
      testo: [ $x$ ],
      segni: ([$-$], [$-$], [$-$], [$0$], [$+$], [$+$], [$+$])
    ),
    (
      testo: [ $x + 1$ ],
      segni: ([$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$])
    ),
    (
      testo: [ $x - 2$ ],
      segni: ([$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$])
    ),
    (
      testo: [ Complessivo ],
      segni: ([$-$], [$0$], [$+$], [$0$], [$-$], [$0$], [$+$])
    ),
  ), 
  evidenzia: (2, 4), // evidenzia i punti 2 e 4
  intestazione: [ SGN ], // cambia simbolo in alto a sinistra (default +/-),
  linea_doppia: false // disattiva la linea doppia di fine riga (default: true)
)

// Grafico verificabilità disequazione più righe (V/F)
#let tabella_ver_diseq(punti: (), elementi: ()) = cetz.canvas({
  import cetz.draw: *

  let n_p = punti.len()

  // Determina il numero di righe totali in sicurezza
  let max-riga = 0
  for el in elementi {
    let r = el.at("riga", default: 0)
    if r > max-riga { max-riga = r }
  }
  let altezza-asse-v = -0.4 - (max-riga * 0.5)

  // Assi correnti
  line((-1.7, 0), (n_p + 1, 0), stroke: 0.5pt + accent.mat)
  line((-0.8, 0.5), (-0.8, altezza-asse-v - 0.35), stroke: 0.5pt + accent.mat)
  content((-1.3, 0.25), [V/F])

  // Capisaldi e linee verticali tratteggiate
  for (i, p) in punti.enumerate() {
    content((i, 0.35), p)
    if i > 0 and i < n_p - 1 {
      line((i, 0), (i, altezza-asse-v - 0.35), stroke: (paint: accent.mat, thickness: 0.5pt, dash: "dashed"))
    }
  }

  // Elementi e testi a sinistra
  for el in elementi {
    let riga = el.at("riga", default: 0)
    let y = -0.5 - (riga * 0.5)
    let testo = el.at("testo", default: none)

    // Testo a sinistra se presente
    if testo != none { content((-1.3, y), testo) }

    if el.at("tipo", default: "linea") == "linea" {
      let da = el.at("da")
      let a = el.at("a")
      // Nuovi parametri di inclusione indipendenti per i due estremi
      let incl_da = el.at("incl_da", default: false)
      let incl_a = el.at("incl_a", default: false)
      
      // Disegna la linea continua del grafico
      line((da, y), (a, y), stroke: (thickness: .75pt, paint: accent.mat))
      
      // Pallino a sinistra (solo se non è l'estremo -oo)
      if da > 0 and incl_da { 
        circle((da, y), radius: 1.5pt, fill: accent.mat, stroke: none) 
      }
      
      // Pallino a destra (solo se non è l'estremo +oo)
      if a < n_p - 1 and incl_a { 
        circle((a, y), radius: 1.5pt, fill: accent.mat, stroke: none) 
      }
      
    } else {
      // Punto isolato
      let pos = el.at("pos")
      circle((pos, y), radius: 1.5pt, fill: accent.mat, stroke: none)
    }
  }
})

// Esempio
#tabella_ver_diseq(
  punti: ([$-oo$], [$-1$], [$1$], [$2$], [$3$], [$5$], [$6$], [$+oo$]),
  elementi: (
    (tipo: "linea", da: 0, a: 1, incl_da: false, riga: 0, testo: [$N_1$]),
    (tipo: "linea", da: 2, a: 3, incl_da: true, incl_a: true,  riga: 1, testo: [$N_2$]),
    (tipo: "punto", pos: 4,                   riga: 1), // Condivide riga 1, non serve ripetere testo
    (tipo: "linea", da: 5, a: 6, incl_a: false, riga: 2, testo: [$D$]),
  )
)




