#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "../shared.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

#let formule_n_oggetti = { set math.equation(numbering: none)
  $ underbrace(a_1 quad a_2 quad a_3 quad dots quad a_n, n "simboli") $ }

#let tabella_k_caselle = [
  #show table.cell.where(y: 0): set text(weight: "regular", fill: black)  
  #figure(
    caption: none,
    table(
      stroke: (x, y) => if y == 1 { 0.5pt + accent.mat.lighten(90%) },  
      inset: (x, y) => if y == 1 { 1em } else { .1em },    
      align: center + horizon,  
      columns: (auto,) * 6, 
      [$script(1)$], [$script(2)$], [$script(3)$], [$script(4)$], [$script(dots)$], [$script(k)$],
      [ #hide[1] ], [ #hide[1] ], [ #hide[1] ], [ #hide[1] ], [ #hide[1] ], [ #hide[1] ], 
      table.cell(colspan: 6)[$script(k "caselle")$]
    ) 
  ) <tabella_n_oggetti_k_caselle>
]

#let n_oggetti_k_caselle = [
#align(center)[
  #grid(columns: 2, column-gutter: 3em, row-gutter: 1.5em, align: center + bottom)[#formule_n_oggetti][#tabella_k_caselle]
]]

// In shared.typ
#let tabella_disposizioni1 = tabella_disposizioni(
  [ $C$ ], [ $A$ ],
  [ $1$ ], [ $c$ ],
  [ $2$ ], [ $c$ ],
  [ $3$ ], [ $a$ ],
) 

#let tabella_disposizioni2 = tabella_disposizioni(
    [ $C$ ], [ $A$ ],
    [ $1$ ], [ $b$ ],
    [ $2$ ], [ $b$ ],
    [ $3$ ], [ $b$ ],
  ) 


#let tabella_disposizioni3 = tabella_disposizioni(
    [ $C$ ], [ $A$ ],
    [ $1$ ], [ $a$ ],
    [ $2$ ], [ $d$ ],
    [ $3$ ], [ $b$ ],
  ) 

#let tabella_disposizioni4 = tabella_disposizioni(
    [ $C$ ], [ $A$ ],
    [ $1$ ], [ $c$ ],
    [ $2$ ], [ $d$ ],
    [ $3$ ], [ $b$ ],
) 

/* #let tabelle_disposizioni = [
#align(center)[
  #grid(columns: 4, column-gutter: 3em, row-gutter: 1.5em, align: center + bottom)[#tabella_disposizioni1][#tabella_disposizioni2][#tabella_disposizioni3][#tabella_disposizioni4]
]] */

#let tabelle_disposizioni = figure(
  grid(
    columns: 4, 
    column-gutter: 3em, 
    row-gutter: 1.5em, 
    align: center + bottom,
    tabella_disposizioni1,
    tabella_disposizioni2,
    tabella_disposizioni3,
    tabella_disposizioni4,
  ),
  caption: [],
  supplement: "Figura", //così non viene considerato tabella, ma figura
  kind: figure
)

#let tabella_equazione_diofantea = [
#show table.cell.where(y: 0): set text(weight: "bold", fill: accent.mat.lighten(95%), font: sans-fonts)

#figure(
  caption: [],
  table(
    stroke: (x, y) => if y == 1 { 0.5pt + accent.mat.lighten(90%) },
    fill: (x, y) => if y == 0 { accent.mat } else { white },
    align: center + horizon,
    inset: 0.6em,
    columns: (auto,) * 10,    

    [${a\,b}$], [${a\,c}$], [${a\,d}$], [${b\,c}$], [${b\,d}$], [${c\,d}$], [${a\,a}$], [${b\,b}$], [${c\,c}$], [${d\,d}$],
    [${1,1,\ 0,0}$], [${1,0,\ 1,0}$], [${1,0,\ 0,1}$], [${0,1,\ 1,0}$], [${0,1,\ 0,1}$], [${0,0,\ 1,1}$], [${2,0,\ 0,0}$], [${0,2,\ 0,0}$], [${0,0,\ 2,0}$], [${0,0,\ 0,2}$],
  )
) <tabella_equazione_diofantea>
]

#let tabella_combinazioni_2_4 = [
#show table.cell.where(y: 0): set text(weight: "bold", fill: accent.mat.lighten(95%), font: sans-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: accent.mat.lighten(95%), font: sans-fonts)

#figure(
  caption: [],
  table(
    stroke: (x, y) => if x > 0 and y > 0 { 0.5pt + accent.mat.lighten(90%) } else { none },
    fill: (x, y) => {
      if x == 0 or y == 0 {
        accent.mat
      } else if calc.even(y) {
        accent.mat.lighten(90%)
      } else {
        white
      }
    },
    align: center + horizon,
    columns: (auto,) + (auto,) * 10,

    [], [$a b$], [$a c$], [$a d$], [$b c$], [$b d$], [$c d$], [$a a$], [$b b$], [$c c$], [$d d$],
    [$a$], [$times$], [$times$], [$times$], [], [], [], [$times times$], [], [], [],
    [$b$], [$times$], [], [], [$times$], [$times$], [], [], [$times times$], [], [],
    [$c$], [], [$times$], [], [$times$], [], [$times$], [], [], [$times times$], [],
    [$d$], [], [], [$times$], [], [$times$], [$times$], [], [], [], [$times times$],
  )
) <tabella_combinazioni_2_4>
]

#let tabella_disposizioni5 = [
#show table.cell.where(y: 0): set text(weight: "bold", fill: accent.mat.lighten(95%), font: sans-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: accent.mat.lighten(95%), font: sans-fonts)

#figure(
  caption: [],
  table(
    stroke: (x, y) => if x > 0 and y > 0 { 0.5pt + accent.mat.lighten(90%) } else { none }, 
    fill: (x, y) => {
      if x == 0 or y == 0 {
        accent.mat
      } else if calc.even(y) {
        accent.mat.lighten(90%)
      } else {
        white
      }
    },
    align: center + horizon,
    columns: (auto,) + (auto,) * 16,

    [], [$a b$], [$a c$], [$a d$], [$b a$], [$b c$], [$b d$], [$c a$], [$c b$], [$c d$], [$d a$], [$d b$], [$d c$], [$a a$], [$b b$], [$c c$], [$d d$],
    [$a$], [1], [1], [1], [2], [], [], [2], [], [], [2], [], [], [1,2], [], [], [],
    [$b$], [2], [], [], [1], [1], [1], [], [2], [], [], [2], [], [], [1,2], [], [],
    [$c$], [], [2], [], [], [2], [], [1], [1], [1], [], [], [2], [], [], [1,2], [],
    [$d$], [], [], [2], [], [], [2], [], [], [2], [1], [1], [1], [], [], [], [1,2],
  )
) <tabella_disposizioni5>
]