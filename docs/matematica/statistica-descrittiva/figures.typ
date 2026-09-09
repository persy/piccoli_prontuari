#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot

#let tabella_statistica1 = [
  #figure(
    caption: [],    
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
    columns: (3),
    table.header[Colore][Freq. ass.][Freq. rel.],
    [azzurro], [3], [0.12],
    [castano], [10], [0.4],
    [verde], [5], [0.2],
    [grigio], [7], [0.28]
  )  
  ) <tabella_statistica1>
]

#let tabella_statistica2 = [
  #figure(
    caption: [],    
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
    columns: (2),
    table.header[Prodotto][Quantità (in kg)],
    [patate], [480],
    [carote], [50],
    [insalata], [30],
    [peperoni], [120]
  )  
  ) <tabella_statistica2>
]