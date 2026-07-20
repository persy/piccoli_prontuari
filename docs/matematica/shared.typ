#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart

//===================

// Tabella relazioni; riceve i dati in formato tupla, numero di colonne e colore (opzionale)
#let tabella_relazioni(
  data: (), 
  num_col: 4, 
  color: silver // predefinito
) = {
  // indice dell'ultima riga in base a quanti dati passiamo
  let num_row = int(data.len() / num_col)
  let last_row = num_row - 1

  // stile
  show table.cell.where(y: 0): set text(weight: "regular", fill: black)
  show table.cell.where(x: 0): set text(weight: "bold", fill: white)
  show table.cell.where(y: last_row): set text(weight: "regular", fill: white)
  table(
    columns: (2em,) * num_col,
    align: center + horizon,
    stroke: 0.5pt + color.lighten(90%),
    fill: (x, y) => {
      if y == last_row { return color }
      if x == 0 { return color }
      if calc.even(x) { return color.lighten(90%) }
      return white
    },
    // dati
    ..data 
  )
}

// Tabella veridicità sistema disequazioni (versione ridotta)
#let tabella_ver_diseq_s(punti: (), elementi: ()) = [

#cetz.canvas({

  import cetz.draw: *
  line((-1.7, 0), (punti.len(), 0), stroke: 0.5pt + accent.mat)
  line((-0.8, 0.5), (-0.8, -1.3), stroke: 0.5pt + accent.mat)
  content((-1.3, 0.25), [$"V/F"$])

  for (i, p) in punti.enumerate() {
    content((i, 0.35), p)
    if i > 0 and i < punti.len() - 1 {
      line((i, 0), (i, -1.3), stroke: (paint: accent.mat.lighten(50%), thickness: 0.5pt, dash: "dashed"))
    }
  }

  for el in elementi {
    if el.len() == 3 {
      let (da, a, incl) = el
      line((da, -0.7), (a, -0.7), stroke: (thickness: .75pt, paint: accent.mat))
      if da > 0 and incl { circle((da, -0.7), radius: 1.5pt, fill: accent.mat, stroke: none) }
    } else if el.len() == 1 {
      circle((el.at(0), -0.7), radius: 1.5pt, fill: accent.mat, stroke: none)
    }
  }
})]

// Esempio
#tabella_ver_diseq_s(
  punti: ([$-oo$], [$-1$], [$1$], [$2$], [$3$], [$5$], [$6$], [$+oo$]),
  elementi: (
    (0, 1, false),
    (2, 3, true),
    (4,),
    (5, 6, false),
  )
) 

// Tabella veridicità sistema disequazioni (versione completa)
#let tabella_ver_diseq(punti: (), elementi: (), doppia_linea: false) = layout(lw => {
  let n_p = punti.len()
  if n_p == 0 { return }

  // Determina il numero di righe totali
  let max-riga = 0
  for el in elementi {
    let r = el.at("riga", default: 0)
    if r > max-riga { max-riga = r }
  }
  let altezza-asse-v = -0.2 - (max-riga * 0.5)
  
  // Calcolo fattore di scala per occupare la larghezza disponibile
  let larghezza_ideale = n_p + 1.5
  let scala = lw.width / (larghezza_ideale * 1cm)

  cetz.canvas({
    import cetz.draw: *
    
    // Applica scalatura automatica
    scale(scala)

    // Assi correnti
    line((-1.7, 0), (n_p - 0.5, 0), stroke: 0.5pt + accent.mat)
    line((-0.8, 0.5), (-0.8, altezza-asse-v - 0.35), stroke: 0.5pt + accent.mat)
    content((-1.3, 0.25), [V/F])

    // Doppia linea prima dell'ultima riga (se richiesta)
    if doppia_linea and max-riga > 0 {
      let y_separatore = -0.3 - ((max-riga - 0.5) * 0.5)
      line((-1.7, y_separatore + 0.01), (n_p - 0.5, y_separatore + 0.01), stroke: 0.5pt + accent.mat)
      line((-1.7, y_separatore - 0.02), (n_p - 0.5, y_separatore - 0.02), stroke: 0.5pt + accent.mat)
    }

    // Capisaldi e linee verticali tratteggiate
    for (i, p) in punti.enumerate() {
      content((i, 0.35), p)
      if i > 0 and i < n_p - 1 {
        line((i, 0), (i, altezza-asse-v - 0.35), stroke: (paint: accent.mat.lighten(50%), thickness: 0.5pt, dash: "dashed"))
      }
    }

    // Elementi e testi a sinistra
    for el in elementi {
      let riga = el.at("riga", default: 0)
      let y = -0.3 - (riga * 0.5)
      let testo = el.at("testo", default: none)

      if testo != none { content((-1.3, y), testo) }

      if el.at("tipo", default: "linea") == "linea" {
        let da = el.at("da")
        let a = el.at("a")
        let incl_da = el.at("incl_da", default: false)
        let incl_a = el.at("incl_a", default: false)
        
        line((da, y), (a, y), stroke: (thickness: .75pt, paint: accent.mat))
        
        if da > 0 and incl_da { 
          circle((da, y), radius: 1.5pt, fill: accent.mat, stroke: none) 
        }
        if a < n_p - 1 and incl_a { 
          circle((a, y), radius: 1.5pt, fill: accent.mat, stroke: none) 
        }
      } else {
        let pos = el.at("pos")
        circle((pos, y), radius: 1.5pt, fill: accent.mat, stroke: none)
      }
    }
  })
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

// Schema segni
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

      // Evidenzia risultati
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