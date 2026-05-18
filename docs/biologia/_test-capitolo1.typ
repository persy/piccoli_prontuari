#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *

== Analisi dei Limiti di Funzione
In questo modulo analizzeremo il comportamento asintotico delle funzioni reali.

#intro()[Nota: i limiti destri e sinistri devono coincidere per l'esistenza del limite globale.]

#definizione(title: "Limite Finito")[
  Sia $f: A -> RR$ una funzione. Si dice che il limite di $f(x)$ per $x$ che tende a $x_0$ è $l$...
]

#dimostrazione()
Applichiamo direttamente il teorema del confronto (o dei carabinieri) per dedurre il comportamento finale della funzione...

#esempio(title: "Verifica di Limite")[
  Verificare tramite definizione che:
  $ lim_(x -> 3) (2x + 1) = 7 $
]

#TODO[Inserire grafico ad imbuto dell'intorno epsilon-delta]

== Capitolo

=== Capitolo

#figure(
  caption: [aaa],
  // gap: 0pt, // Allinea la didascalia alla tabella
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return main_scienze // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return main_scienze.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: left + horizon,
  columns: (3),
  table.header[aaa][bbb][ccc],
  [1], [2], [3],
  [4], [5], [6],
  [7], [8], [9],
)  
)

=== Capitolo

== Capitolo

== Capitolo

== Capitolo

== Capitolo

