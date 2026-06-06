#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot, chart, smartart

//===================

// Tabelle

#let col_linea = .5pt + accent.mat

#let esempio_divisione_polinomi1 = [
  #align(center)[
  #grid(
  columns: 5,
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  [$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
  [#hide[0]],[],[],[],grid.cell(stroke: (left: col_linea))[],
  [],[],[],[],[],
  
  )
]<divisione_polinomi1>
]

#let esempio_divisione_polinomi2 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2#hide[- x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],    
    )
  ]<esempio_divisione_polinomi2>
]

#let esempio_divisione_polinomi3 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x#hide[x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],    
    )
  ]<esempio_divisione_polinomi3>
]

#let esempio_divisione_polinomi4 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x#hide[x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],
    [],[$-x^4$],[$+x^3$],[],[],
        
    )
  ]<esempio_divisione_polinomi4>
]

#let esempio_divisione_polinomi5 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x#hide[x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],
    [],grid.cell(stroke: (bottom: col_linea))[$-x^4$],grid.cell(stroke: (bottom: col_linea))[$+x^3$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[],
    [],[],[$x^3$],[$+x^2$],grid.cell(stroke: (left: col_linea))[],    
    )
  ]<esempio_divisione_polinomi5>
]

#let esempio_divisione_polinomi6 = [
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,    
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2#hide[00]$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x +1$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],
    [],grid.cell(stroke: (bottom: col_linea))[$-x^4$],grid.cell(stroke: (bottom: col_linea))[$+x^3$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[],
    [],[],[$x^3$],[$+x^2$],grid.cell(stroke: (left: col_linea))[],
    [],[],grid.cell(stroke: (bottom: col_linea))[$-x^3$],grid.cell(stroke: (bottom: col_linea))[$+x^2$],grid.cell(stroke: (left: col_linea))[], 
    [],[],[],[$+2x^2$],grid.cell(stroke: (left: col_linea))[],  
    )
  ]<esempio_divisione_polinomi6>
]

#let esempio_divisione_polinomi7 = [
  #align(center)[
  #grid(
  columns: 6,
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,    
  [#hide[x.]$2x^4$],[$+x^3$],[],[$+x$],[+2],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^2 +3#hide[0000]$],
  grid.cell(stroke: (bottom: col_linea))[$-2x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[$-6x^2$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$2x^2 + x - 6$],
  [],[$#hide[0,]x^3$],[$-6x^2$],[$+x$],[$+2$],grid.cell(stroke: (left: col_linea))[],
  [],grid.cell(stroke: (bottom: col_linea))[$-x^3$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[$-3x#hide[0]$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[],
  [],[],[$-6x^2$],[$-2x#hide[0]$],[+2],grid.cell(stroke: (left: col_linea))[],
  [],[],grid.cell(stroke: (bottom: col_linea))[$#hide[00]6x^2$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[+18#hide[0]],grid.cell(stroke: (left: col_linea))[], 
  [],[],[],[$-2x#hide[0]$],[+20#hide[0]],grid.cell(stroke: (left: col_linea))[],  
  )
] <esempio_divisione_polinomi7>
]

#let triangolo_tartaglia = [
  #figure(
align(center)[
  #grid(
  columns: 14,
  inset: (x: 7pt, y: 4pt), 
  column-gutter: 0pt,
  [$n=0$],[],[],[],[],[],[],[1],[],[],[],[],[],[],
  [$n=1$],[],[],[],[],[],[1],[],[1],[],[],[],[],[],
  [$n=2$],[],[],[],[],[1],[],[2],[],[1],[],[],[],[],
  [$n=3$],[],[],[],[1],[],[3],[],[3],[],[1],[],[],[],
  [$n=4$],[],[],[1],[],[4],[],[6],[],[4],[],[1],[],[],
  [$n=5$],[],[1],[],[5],[],[10],[],[10],[],[5],[],[1],[],
  [$n=dots$],[1],[],[$dots$],[],[],[],[],[],[],[],[],[$dots$],[1],
  )
],
caption: []
)<triangolo_tartaglia>
]

#let esempio_ruffini1 = [
  #align(center)[
  #grid(
  columns: 7,
  inset: (x: 12pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [$3$],[$0$],[$0$],[$-5$],[$0$],grid.cell(stroke: (left: col_linea))[$+6$],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[#hide[0]],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea, bottom: col_linea))[],
  grid.cell(stroke: (right: col_linea))[#hide[0]], [],[],[],[],[],grid.cell(stroke: (left: col_linea))[],  
  )
]
]

#let esempio_ruffini2 = [
  #align(center)[
  #grid(
  columns: 7,
  inset: (x: 12pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [$3$],[$0$],[$0$],[$-5$],[$0$],grid.cell(stroke: (left: col_linea))[$+6$],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[$ 1/3$],grid.cell(stroke: (bottom: col_linea))[$arrow.b$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea, bottom: col_linea))[],
  grid.cell(stroke: (right: col_linea))[#hide[0]], [3],[],[],[],[],grid.cell(stroke: (left: col_linea))[],  
  )
]
]

#let esempio_ruffini3 = [
  #align(center)[
  #grid(
  columns: 7,
  inset: (x: 12pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [$3$],[$0$],[$0$],[$-5$],[$0$],grid.cell(stroke: (left: col_linea))[+6],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[$ 1/3$],grid.cell(stroke: (bottom: col_linea))[$arrow.b$],grid.cell(stroke: (bottom: col_linea))[1],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea, bottom: col_linea))[],
  grid.cell(stroke: (right: col_linea))[#hide[0]], [$3$],[$1$],[],[],[],grid.cell(stroke: (left: col_linea))[],  
  )
]
]

#let esempio_ruffini4 = [
  #align(center)[
  #grid(
  columns: 7,
  inset: (x: 12pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [$3$],[$0$],[$0$],[$-5$],[$0$],grid.cell(stroke: (left: col_linea))[+6],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[$ 1/3$],grid.cell(stroke: (bottom: col_linea))[$arrow.b$],grid.cell(stroke: (bottom: col_linea))[1],grid.cell(stroke: (bottom: col_linea))[$1/3$],grid.cell(stroke: (bottom: col_linea))[$1/9$],grid.cell(stroke: (bottom: col_linea))[$-44/27$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$-44/81$],
  grid.cell(stroke: (right: col_linea))[#hide[0]], [$3$],[$1$],[$1/3$],[$-44/9$],[$-44/27$],grid.cell(stroke: (left: col_linea))[$442/81$],  
  )
]
]

#let esempio_ruffini5 = [
  
#align(center)[
  #grid(
  columns: 9,
  inset: (x: 10pt, y: 10pt), 
  column-gutter: 1pt,
  grid.cell(stroke: (right: col_linea))[], [1], [#hide[--]0], [-2],[#hide[--]2],[-2],[#hide[--]2],[-3],grid.cell(stroke: (left: col_linea))[#hide[--]2],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[#hide[--]1],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[#hide[--]1],grid.cell(stroke: (bottom: col_linea))[#hide[--]1],grid.cell(stroke: (bottom: col_linea))[-1],grid.cell(stroke: (bottom: col_linea))[#hide[--]1],grid.cell(stroke: (bottom: col_linea))[-1],grid.cell(stroke: (bottom: col_linea))[#hide[--]1],grid.cell(stroke: (left: col_linea, bottom: col_linea))[-2],
  grid.cell(stroke: (right: col_linea))[#hide[--]],[1],[#hide[--]1], [-1],[#hide[--]1],[-1],[#hide[--]1],grid.cell(stroke: (left: col_linea))[-2],grid.cell(stroke: (left: col_linea))[#hide[--]0],
  grid.cell(stroke: (bottom: col_linea, right: col_linea))[-2],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[-2],grid.cell(stroke: (bottom: col_linea))[#hide[--]2],grid.cell(stroke: (bottom: col_linea))[-2],grid.cell(stroke: (bottom: col_linea))[#hide[--]2],grid.cell(stroke: (bottom: col_linea))[-2],grid.cell(stroke: (bottom: col_linea, left: col_linea))[#hide[--]2],[],
  grid.cell(stroke: (right: col_linea))[#hide[0]],[1],[-1], [#hide[--]1],[-1],[#hide[--]1],[-1],grid.cell(stroke: (left: col_linea))[#hide[--]0],[],  
  )
]
]