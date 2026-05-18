#import "../../../template_normal.typ": *
#import "@preview/cetz:0.4.2" // Necessaria questa versione per cetz-plot 
#import "@preview/cetz-plot:0.1.3": plot, chart

#set math.equation(numbering: "1.")

#evidenzia[// TODO
]

== Introduzione ai limiti di successioni

Una successione è una funzione definita sull'insieme $NN$ dei numeri naturali, con valori in $RR$. Utilizzando le notazioni relative alle funzioni introdotte nei paragrafi precedenti, una successione $f$ si può rappresentare come$ f: NN arrow.r RR$. Se $n in NN$ è la variabile indipendente, i valori della successione possono essere indicati con il simbolo $f(n)$ o anche, in modo più esplicito, con l'uso della @tabella_successioni1:

#grid(columns: (1fr), gutter: 1em)[
#show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),    
    fill: (x, y) => {
      if x == 0 {
        return main_scienze 
      } else if calc.even(x) {
        return main_scienze.lighten(90%)
      } else {
        return white
      }
    },
    align: center + horizon,    
    columns: (auto,) * 9, 
    [$n$], [$1$], [$2$], [$3$], [$4$], [$5$], [$dots$], [$n$], [$dots$], 
    [$f(n)$], [$f(1)$], [$f(2)$], [$f(3)$], [$f(4)$], [$f(5)$], [$dots$], [$f(n)$], [$dots$], 
  )
)<tabella_successioni1>
][
#show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),    
    fill: (x, y) => {
      if x == 0 {
        return main_scienze 
      } else if calc.even(x) {
        return main_scienze.lighten(90%)
      } else {
        return white
      }
    },
    align: center + horizon,    
    columns: (auto,) * 9, 
    [$n$], [$1$], [$2$], [$3$], [$4$], [$5$], [$dots$], [$n$], [$dots$],    
    [$a_n$], [$a_1$], [$a_2$], [$a_3$], [$a_4$], [$a_5$], [$dots$], [$a_n$], [$dots$], 
  )
)<tabella_successioni2>
]
Tuttavia, è consuetudine rappresentare il valore generico $f(n)$ di una successione corrispondente al numero naturale $n$, utilizzando un'espressione con un indice. Ad esempio, si può utilizzare $a_n$, $b_n$, $c_n$, e così via. Pertanto, la tabella precedente @tabella_successioni1 può essere riscritta come la @tabella_successioni2.

#esempio(title: "Esempio 1")[
Ora consideriamo i seguenti esempi:

$ 
  a_n = (n + 2)/(2n)
$<successione1>

$ 
  b_n = (n - 3)/n
$<successione2>

$ 
  c_n = (-1)^n/n
$<successione3>

Calcoliamo alcuni termini della successione @successione1 con $n ∈ NN$. 

$ 
  n = 1 &: a_1 = (1 + 2) / 2 = 3/2 \ n = 2 &: a_2 = (2 + 2) / (2 dot 2) = 1 \ n = 100 &: a_(100) = (100 + 2) / (2 dot 100) = 51 / 100 = 0.51 \ n = 1000 &: a_(1000) = (1000 + 2) / (2 dot 1000) = 501 / 2000 = 0.501
$

Si può quindi sintetizzare la situazione nella tabella seguente:
#v(2em)
#show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),    
    fill: (x, y) => {
      if x == 0 {
        return main_scienze 
      } else if calc.even(x) {
        return main_scienze.lighten(90%)
      } else {
        return white
      }
    },
    align: center + horizon,    
    columns: (auto,) * 9, 
    [$n ∈ NN$], [$1$], [$2$], [$3$], [$dots$], [$100$], [$dots$], [$1000$], [$dots$], 
    [$a_n = (n + 2)/(2n)$], [$3/2$], [$1$], [$5/6$], [$dots$], [$0.51$], [$dots$], [$0.501$], [$dots$], 
  )
)

I valori trovati possono essere rappresentati graficamente lungo un asse, come mostrato in @grafico_successione1:
#v(1em)
#figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 6 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10, 0), mark: (end: ">"))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
  // Mappiamo 0 a x=0 e 1.5 a x=9 (1.5 * 6)
  let to_x(val) = val * scale

  // definizione dei punti da segnare: (valore, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "0", ""),
    (0.5, "1/2", ""),
    (0.833, "5/6", "a_3"),
    (1.0, "1", "a_2"),
    (1.5, "3/2", "a_1"),
  )

  // disegno dei segni principali e delle etichette
  for (val, top, bot) in points {
    let x = to_x(val)
    line((x, -0.1), (x, 0.1))
    content((x, 0.4), eval("$" + top + "$"))
    if bot != "" {
      content((x, -0.4), eval("$" + bot + "$"))
    }
  }

  // disegno dei punti intermedi (a4, a1000 e l'accumulo)
  // a4 = 6/8 = 0.75
  line((to_x(0.75), -0.1), (to_x(0.75), 0.1))
  content((to_x(0.75), -0.4), $a_4$)

  // a1000 = 0.501
  line((to_x(0.501), -0.1), (to_x(0.501), 0.1))
  content((to_x(0.6), -0.4), $a_1000$)
  
  // effetto di accumulo vicino a 1/2
  for i in range(10, 50) {
    let v = 0.49 + (1 / i)
    line((to_x(v), -0.05), (to_x(v), 0.05), stroke: 0.5pt)
  }
  
  // cerchietto vuoto su 1/2 per indicare il limite (opzionale come nell'immagine)
  circle((to_x(0.5), 0), radius: 0.07, fill: white)
}),
caption: []
)<grafico_successione1>

Continuando a incrementare il valore dell'indice $n$, si ottiene ad esempio $a_(10000) = 0.6001$ e $a_(100000) = 0.60001$. Dalla @grafico_successione1 e dai calcoli numerici emerge chiaramente che il valore di $a_n$ si avvicina al numero $1/2 = 0.6$ quanto più grande è il valore di $n$.

Il limite per $n$ che tende all'infinito (espresso con $n arrow.r oo$) della successione $a_n$ definita in @successione1 risulta essere uguale a $1/2$; in simboli:

$
  lim_(n arrow.r +oo) a_n = lim_(n arrow.r +oo) (n + 2)/(2n) = 1/2
$

Questo implica che, per qualsiasi intervallo del tipo ($1/2 - epsilon, 1/2 + epsilon$), tutti i valori di $a_n$ appartengono a tale intervallo, purché l'indice $n$ sia sufficientemente grande. In @grafico_successione2 vengono schematizzati tre intervalli di questo tipo per tre diversi valori di $epsilon$.
#v(1em)
#figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 6 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10, 0), mark: (end: ">"))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
  // Mappiamo 0 a x=0 e 1.5 a x=9 (1.5 * 6)
  let to_x(val) = val * scale

  // definizione dei punti da segnare: (valore, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "0", ""),
    (0.5, "1/2", ""),
    (0.833, "", "a_3"),
    (1.0, "1", "a_2"),
    (1.5, "3/2", "a_1"),
  )

  // disegno dei segni principali e delle etichette
  for (val, top, bot) in points {
    let x = to_x(val)
    line((x, -0.1), (x, 0.1))
    content((x, 0.4), eval("$" + top + "$"))
    if bot != "" {
      content((x, -0.4), eval("$" + bot + "$"))
    }
  }

  // disegno dei punti intermedi (a4, a1000 e l'accumulo)
  // a4 = 6/8 = 0.75
  line((to_x(0.75), -0.1), (to_x(0.75), 0.1))
  content((to_x(0.75), -0.4), $a_4$)

  // a1000 = 0.501
  line((to_x(0.501), -0.1), (to_x(0.501), 0.1))
  content((to_x(0.6), -0.4), $a_1000$)
  
  // effetto di accumulo vicino a 1/2
  for i in range(10, 50) {
    let v = 0.49 + (1 / i)
    line((to_x(v), -0.05), (to_x(v), 0.05), stroke: 0.5pt)
  }

  // 1/2 + epsilon
  line((to_x(0.86), -0.1), (to_x(0.86), 0.1), stroke: main_scienze)
  content((to_x(0.86), 0.4), text(fill: main_scienze)[$1/2 + epsilon$])
  
  // cerchietto vuoto su 1/2 per indicare il limite (opzionale come nell'immagine)
  circle((to_x(0.5), 0), radius: 0.07, fill: white)

  // valore di n e v
  content((to_x(1.85), 0.1), $n > nu = 2$)
}),
caption: []
)<grafico_successione2>

#figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 6 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10, 0), mark: (end: ">"))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
  // Mappiamo 0 a x=0 e 1.5 a x=9 (1.5 * 6)
  let to_x(val) = val * scale

  // definizione dei punti da segnare: (valore, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "0", ""),
    (0.5, "1/2", ""),
    (0.833, "", "a_3"),
    (1.0, "1", "a_2"),
    (1.5, "3/2", "a_1"),
  )

  // disegno dei segni principali e delle etichette
  for (val, top, bot) in points {
    let x = to_x(val)
    line((x, -0.1), (x, 0.1))
    content((x, 0.4), eval("$" + top + "$"))
    if bot != "" {
      content((x, -0.4), eval("$" + bot + "$"))
    }
  }

  // disegno dei punti intermedi (a4, a1000 e l'accumulo)
  // a4 = 6/8 = 0.75
  line((to_x(0.75), -0.1), (to_x(0.75), 0.1))
  content((to_x(0.75), -0.4), $a_4$)

  // a1000 = 0.501
  line((to_x(0.501), -0.1), (to_x(0.501), 0.1))
  content((to_x(0.6), -0.4), $a_1000$)
  
  // effetto di accumulo vicino a 1/2
  for i in range(10, 50) {
    let v = 0.49 + (1 / i)
    line((to_x(v), -0.05), (to_x(v), 0.05), stroke: 0.5pt)
  }

  // 1/2 + epsilon; 1/2 - epsilon
  line((to_x(0.5 + 0.3), -0.1), (to_x(0.5 + 0.3), 0.1), stroke: main_scienze)
  content((to_x(0.5 + 0.3), 0.4), text(fill: main_scienze)[$1/2 + epsilon$])
  line((to_x(0.5 - 0.3), -0.1), (to_x(0.5 - 0.3), 0.1), stroke: main_scienze)
  content((to_x(0.5 - 0.3), 0.4), text(fill: main_scienze)[$1/2 - epsilon$])
  
  // cerchietto vuoto su 1/2 per indicare il limite (opzionale come nell'immagine)
  circle((to_x(0.5), 0), radius: 0.07, fill: white)

  // valore di n e v
  content((to_x(1.85), 0.1), $n > nu = 5$)
}),
caption: []
)<grafico_successione3>

#figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 6 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10, 0), mark: (end: ">"))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
  // Mappiamo 0 a x=0 e 1.5 a x=9 (1.5 * 6)
  let to_x(val) = val * scale

  // definizione dei punti da segnare: (valore, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "0", ""),
    (0.5, "1/2", ""),
    (0.833, "", "a_3"),
    (1.0, "1", "a_2"),
    (1.5, "3/2", "a_1"),
  )

  // disegno dei segni principali e delle etichette
  for (val, top, bot) in points {
    let x = to_x(val)
    line((x, -0.1), (x, 0.1))
    content((x, 0.4), eval("$" + top + "$"))
    if bot != "" {
      content((x, -0.4), eval("$" + bot + "$"))
    }
  }

  // disegno dei punti intermedi (a4, a1000 e l'accumulo)
  // a4 = 6/8 = 0.75
  line((to_x(0.75), -0.1), (to_x(0.75), 0.1))
  content((to_x(0.75), -0.4), $a_4$)

  // a1000 = 0.501
  line((to_x(0.501), -0.1), (to_x(0.501), 0.1))
  content((to_x(0.6), -0.4), $a_1000$)
  
  // effetto di accumulo vicino a 1/2
  for i in range(10, 50) {
    let v = 0.49 + (1 / i)
    line((to_x(v), -0.05), (to_x(v), 0.05), stroke: 0.5pt)
  }

  // 1/2 + epsilon; 1/2 - epsilon
  line((to_x(0.5 + 0.05), -0.1), (to_x(0.5 + 0.05), 0.1), stroke: main_scienze)
  content((to_x(0.5 + 0.11), 0.4), text(fill: main_scienze)[$1/2 + epsilon$])
  line((to_x(0.5 - 0.05), -0.1), (to_x(0.5 - 0.05), 0.1), stroke: main_scienze)
  content((to_x(0.5 - 0.12), 0.4), text(fill: main_scienze)[$1/2 - epsilon$])
  
  // cerchietto vuoto su 1/2 per indicare il limite (opzionale come nell'immagine)
  circle((to_x(0.5), 0), radius: 0.07, fill: white)

  // valore di n e v
  content((to_x(1.85), 0.1), $n > nu = 5$)
}),
caption: []
)<grafico_successione4>

Considerando il caso generale di limite $a in RR$, la condizione geometrica di appartenenza della successione $a_n$ all'intervallo ($a - epsilon$, $a + epsilon$) si può esprimere analiticamente grazie alle disuguaglianze $a - epsilon < a_n < a + epsilon$. Inoltre, la condizione secondo cui l'indice $n$ deve essere sufficientemente grande può essere espressa mediante una disuguaglianza del tipo $n > nu$, dove $nu$ è un numero strettamente legato al valore positivo fissato di epsilon; $nu$ aumenta al diminuire di $epsilon$.

La definizione formale di limite finito per una successione è la seguente: una successione $a_n$ converge a un numero reale $a$ (equivalentemente, $a_n$ tende ad $a$, oppure la successione ha come limite $a$), e si indica con:

$
  lim_{n arrow.r +oo} a_n = a quad ("oppure" a_n arrow.r a)
$

se, per ogni numero positivo fissato $epsilon$, esiste un numero naturale $nu$ tale che:

$
  a - epsilon < a_n < a + epsilon, quad forall n > v
$
#v(2em)
Prendiamo in considerazione la successione @successione2. Sostituendo i valori di $n$, otteniamo:

$ 
  n = 1&: b_1 = (1 - 3)/1 = -2 \ n = 2&: b_2 = (2 - 3)/2 = -1/2\ n = 100&: b_(100) = (100 - 3)/100 = 0.97 \ n = 1000&: b_(1000) = (1000 - 3)/1000 = 0.997
$

I valori sono stati riportati nella @tabella_successioni3 e rappresentati nel grafico @grafico_successione5 ed è facile intuire che $n$ è vicino al numero $l$, tanto più quanto più $n$ è grande.

#show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),    
    fill: (x, y) => {
      if x == 0 {
        return main_scienze 
      } else if calc.even(x) {
        return main_scienze.lighten(90%)
      } else {
        return white
      }
    },
    align: center + horizon,    
    columns: (auto,) * 9, 
    [$n ∈ NN$], [$1$], [$2$], [$3$], [$dots$], [$100$], [$dots$], [$1000$], [$dots$], 
    [$b_n = (n - 3)/n$], [$-2$], [$-1/2$], [$0$], [$dots$], [$0.97$], [$dots$], [$0.997$], [$dots$], 
  )
)<tabella_successioni3>
#v(1em)
#figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 6 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10, 0), mark: (end: ">"))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
  // Mappiamo 0 a x=0 e 1.5 a x=9 (1.5 * 6)
  let to_x(val) = val * scale

  // definizione dei punti da segnare: (valore, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "-2", "b_1"),
    (0.5, "-1", ""),
    (0.75, "", "b_2"),
    (1.0, "0", "b_3"),
    (1.5, "1", ""),
  )

  // disegno dei segni principali e delle etichette
  for (val, top, bot) in points {
    let x = to_x(val)
    line((x, -0.1), (x, 0.1))
    content((x, 0.4), eval("$" + top + "$"))
    if bot != "" {
      content((x, -0.4), eval("$" + bot + "$"))
    }
  }

  // disegno dei punti intermedi
  // a4 = 6/8 = 0.75
  line((to_x(1.125), -0.1), (to_x(1.125), 0.1))
  content((to_x(1.125), -0.4), $b_4$)

  // a1000 = 0.501
  line((to_x(1.5), -0.1), (to_x(1.5), 0.1))
  content((to_x(1.5), -0.4), $b_1000$)
  
  // effetto di accumulo vicino a 1/2
  for i in range(10, 50) {
    let v = 1.52 - (1 / i)
    line((to_x(v), -0.05), (to_x(v), 0.05), stroke: 0.5pt)
  }
  
  // cerchietto vuoto su 1/2 per indicare il limite (opzionale come nell'immagine)
  circle((to_x(0.5), 0), radius: 0.07, fill: white)
}),
caption: []
)<grafico_successione5>

Con la definizione fornita in precedenza, si può dimostrare che il limite, per $n$ che tende a $+oo$, della successione $b_n$ definita in @successione2 è uguale a $1$; in simboli:

$ 
  lim_(n arrow.r +oo) b_n = lim_(n arrow.r +oo) (n - 3)/n =1
$

Infine, consideriamo la successione $c_n = ((-1)^n)/n$  riportata in @successione3:

$ 
  n = 1 &: c_1 = (-1)^1/1 = -1 \ n = 2 &: c_2 = (-1)^2/2 = 1/2\ n = 100 &: c_100 = (-1)^100/100 = 1/100 = 0.01 \ n = 1000 &: c_1000 = (-1)^1000/1000 = 1/1000 = 0.001
$

Costruiamo quindi la seguente tabella riassuntiva:  

#show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),    
    fill: (x, y) => {
      if x == 0 {
        return main_scienze 
      } else if calc.even(x) {
        return main_scienze.lighten(90%)
      } else {
        return white
      }
    },
    align: center + horizon,    
    columns: (auto,) * 9, 
    [$n ∈ NN$], [$1$], [$2$], [$3$], [$dots$], [$100$], [$dots$], [$1000$], [$dots$], 
    [$c_n = ((-1)^n)/n$], [$-1$], [$1/2$], [$-1/3$], [$dots$], [$0.01$], [$dots$], [$0.001$], [$dots$], 
  )
) 

Rappresentiamo graficamente i valori trovati lungo un asse cartesiano, come mostrato in @grafico_successione6.  

#figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 6 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10, 0), mark: (end: ">"))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
  // Mappiamo 0 a x=0 e 1.5 a x=9 (1.5 * 6)
  let to_x(val) = val * scale

  // definizione dei punti da segnare: (valore, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "-1", "c_1"),
    (1.2, "", "c_2"),
    (0.5, "", "c_3"),
    (0.88, "", "c_4"),
    (0.65, "", "c_5"),
    
    (0.75, "0", ""),
    (1.5, "1", ""),
  )

  // disegno dei segni principali e delle etichette
  for (val, top, bot) in points {
    let x = to_x(val)
    line((x, -0.1), (x, 0.1))
    content((x, 0.4), eval("$" + top + "$"))
    if bot != "" {
      content((x, -0.4), eval("$" + bot + "$"))
    }
  }

  // disegno dei punti intermedi
  /* line((to_x(1.125), -0.1), (to_x(1.125), 0.1))
  content((to_x(1.125), -0.4), $c_2$) */

  /* line((to_x(1.5), -0.1), (to_x(1.5), 0.1))
  content((to_x(1.5), -0.4), $b_1000$) */
  
  // effetto di accumulo vicino a 0
  for i in range(10, 50) {
    let v = 0.76 - (1 / i)
    line((to_x(v), -0.05), (to_x(v), 0.05), stroke: 0.5pt)
  }
  for i in range(10, 50) {
    let v = 0.74 + (1 / i)
    line((to_x(v), -0.05), (to_x(v), 0.05), stroke: 0.5pt)
  }
  
  // cerchietto vuoto
  circle((to_x(0.75), 0), radius: 0.07, fill: white)
}),
caption: []
)<grafico_successione6>

Tutti i termini con indice pari ($c_n$ per $n$ pari) sono positivi; pertanto si trovano a destra dello zero sull'asse, ma tendono progressivamente verso il valore $0$ man mano che $n$ cresce.  
I termini con indice dispari ($c_n$ per $n$ dispari) sono invece negativi; questi si posizionano a sinistra dello zero lungo l'asse, avvicinandosi anch'essi al valore $0$ al crescere di $n$ .  

Possiamo osservare quindi che la successione oscilla intorno allo zero: i termini pari si avvicinano a $0$ positivamente, mentre quelli dispari lo fanno negativamente al crescere di $n$.

Con la definizione di limite fornita in , si può verificare che il limite per  $n arrow.r +oo$  della successione  $c_n$, definita in @successione3, è uguale a 0. In termini simbolici:

$
  lim_(n arrow.r +oo) c_n = lim_(n arrow.r +oo) (-1)^n/n = 0
$<successione3_limite>

]

È il caso utilizzare una proprietà della funzione valore assoluto, introdotta nella sezione precedente, che può essere espressa attraverso l'equivalenza:

$ 
  |x| < r arrow.l.r.double.long -r < x < r, quad forall r >= 0
$<successione_valore_assoluto>

Per dimostrare la relazione @successione_valore_assoluto, facciamo ricorso alla definizione \@valore_assoluto del valore assoluto. Questo richiede di distinguere i due casi, $x >= 0$ e $x < 0$ 

Di conseguenza, otteniamo:

$
  "se" x >= 0 quad &cases(
    |x| = x < r,
    x >= 0
  ) quad &arrow.l.r.double.long quad &0 <= x < r \ 
  "se" x < 0 quad &cases(
    |x| = -x < r,
    x < 0
  ) quad &arrow.l.r.double.long quad &-r <= x < 0 
$<successione_valore_assoluto2>

Unendo le disuguaglianze nei membri destri delle relazioni @successione_valore_assoluto2 in un'unica catena di diseguaglianze $-r < x < r$, si ottiene l'equivalenza formulata in @successione_valore_assoluto.

Grazie alla proprietà @successione_valore_assoluto del valore assoluto, possiamo riformulare la definizione di limite in una forma equivalente: una successione $a_n$ converge a un numero reale $a$ se, per ogni numero positivo fissato $epsilon$, esiste un numero $nu$ tale che:

$ 
  | a_n - a | < epsilon, quad forall n > nu
$

Occorre dimostrare che vale l'equivalenza:

$ 
  a - epsilon < a_n < a + epsilon quad arrow.l.r.double.long quad |a_n - a| < epsilon  
$
e ciò deriva direttamente dalla proprietà @successione_valore_assoluto, sostituendo $x = a_n - a$ e $r = epsilon$. Infatti, risulta valida la catena di equivalenze:

$ 
  a - epsilon < a_n < a + epsilon, \ -epsilon < a_n - a < epsilon, \ |a_n - a| < epsilon
$

Con la nuova formulazione della definizione di limite di successione, è possibile verificare direttamente la relazione @successione3_limite. In particolare:

$ 
  lim_(n arrow.r +oo) c_n = lim_(n arrow.r +oo) (-1)^n/n = 0
$

che segue da una stima come la seguente:

$ 
  |c_n - 0| = abs((-1)^n/n) = 1/n < epsilon
$

per ogni scelta di $n$ che soddisfi $n > 1/epsilon$, poiché il valore assoluto ha "rimosso" il segno meno, $|(-1)^n|$ è sempre uguale a $1$ e che $n$ è un numero naturale positivo; dunque $|n| = n$. La definizione di limite è quindi rispettata, assumendo $nu = 1/epsilon$ e la distanza tra la successione e lo zero è sicuramente minore di $epsilon$

Consideriamo ora alcuni esempi ulteriori di successioni:

#esempio(title: "Esempio 2")[
$ 
  a_n (-1)^n
$<successione4>
$ 
  b_n = (n^2 +1)/n
$<successione5>
$ 
  c_n = - n^2
$<successione6>
]


