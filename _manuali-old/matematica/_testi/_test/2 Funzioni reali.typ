#import "../../../template_normal.typ": *
#import "@preview/cetz:0.4.2" // Necessaria questa versione per cetz-plot 
#import "@preview/cetz-plot:0.1.3": plot, chart
#set math.equation(numbering: "1.")

#evidenzia[// TODO
]

== Funzioni e loro proprietà

Consideriamo un insieme $A$ di numeri reali. Come già indicato nel capitolo precedente, utilizziamo $RR$ per rappresentare l'insieme dei numeri reali. Ad esempio, possiamo prendere in considerazione il sottoinsieme dei numeri positivi:

$ 
  A = {x in RR : x > 0}
$
In alternativa, possiamo definire un intervallo con estremi $a$ e $b$, dove $a$ e $b$ sono due numeri reali fissati con $a < b$. L'insieme include tutti i numeri reali compresi tra $A$ e $b$. Per una maggiore precisione, possiamo indicare $A = (a, b)$ oppure $A = [a, b]$, dove:

$
  (a, b) = {x in RR : a < x < b} \ [a, b] = {x in RR : a <= x < b}
$ 
Questi intervalli sono definiti in base agli estremi $a$ e $b$: nel caso di $(a, b)$, gli estremi sono esclusi dall'insieme; mentre in $[a, b]$, l'estremo $a$ è incluso, ma $b$ ne resta escluso.

Una notazione utile è quella che consente di definire intervalli illimitati. Ad esempio, l'intervallo $[a, +oo)$ rappresenta l'insieme di numeri reali con primo estremo incluso ($a$) e illimitato superiormente. La sua definizione formale è:

$
  [a, +oo) = {x in RR : x >= a}
$

L'intervallo $(a, +oo)$ indica invece l'insieme di numeri reali $x$ tali che $x > a$ escludendo il valore $a$. Analogamente, si definiscono gli intervalli illimitati a sinistra, come $(-oo, b]$ e $(-oo, b)$, i quali racchiudono rispettivamente tutti i numeri reali $x$ minori o uguali a $b$ e tutti i numeri $x$ strettamente minori di b.

Siano $A$ e $B$ due insiemi di numeri reali. Una funzione definita su $A$ con valori in $B$ è una legge che, a ciascun elemento $x in A$, associa un unico elemento $y in B$. Se indichiamo tale funzione con la lettera $f$, possiamo utilizzare la notazione 

$
  y = f(x)
$

implicando che la funzione $f$ associa a ogni elemento della variabile indipendente $x in A$ un corrispondente valore della variabile dipendente $y in B$.

Nella terminologia matematica, si definisce $x$ come variabile indipendente e $y$ come variabile dipendente. Inoltre, l'insieme $A$ è detto dominio (o insieme di definizione) della funzione $f$. Per indicare una funzione $f$, si utilizzano espressioni equivalenti quali 

$ 
  f(x) \ f: A arrow.r.long B
$

La prima notazione $f(x)$ è comunemente impiegata per rappresentare la funzione senza esplicitare chiaramente il dominio e il codominio. La seconda notazione $f: A arrow.r.long B$ è particolarmente utile quando si desidera sottolineare in modo esplicito il dominio della funzione, specificando le corrispondenze tra gli insiemi coinvolti.

#esempio(title: "Esempio 1")[
$ 
  f(x) = (x - 1)/2
$<esempio_funz1>

La funzione $f(x)$ è definita e calcolabile per ogni valore reale  $x in RR$, pertanto il suo dominio coincide con l'insieme dei numeri reali ($RR$). Il lettore sa come rappresentare il grafico di una funzione su un sistema di assi cartesiani. In particolare, per la funzione $f(x)$, definita nell'equazione @esempio_funz1, possiamo utilizzare l'espressione equivalente  $y = (x - 1)/2$. 

Il grafico della funzione si traccia facilmente, poiché si tratta di una retta. È sufficiente calcolare due punti del grafico. Per farlo, basta scegliere due valori distinti della variabile indipendente $x$ e determinare i corrispondenti valori di $y$. Ad esempio:

$ 
  x &= 0  space arrow.double.r.long space y = f(0) = (0 - 1)/2 = - 1/2 \ x &= 2 space arrow.double.r.long space y = f(2) = (2 - 1)/2 = 1/2
$

Questi calcoli permettono di identificare i punti $(0, -1)$ e $(2, 0)$, che sono sufficienti per tracciare il grafico della funzione. Nella @grafico_funz1, il grafico viene mostrato in un sistema di riferimento con assi $x$ e $y$. Inoltre, il lettore può osservare che scegliendo la variabile indipendente  $x = 1$, si ottiene il valore  $f(1) = 0$. Questo corrisponde al punto in cui il grafico della funzione  $y = f(x)$  interseca l'asse delle  $x$ .

#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (8, 6),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1/2,      
    minor-tick-step: 1/4,
    x-min: -1, x-max: 5,
    y-min: -1.5, y-max: 2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",       
    
    {
      //
      plot.add(
        domain: (-3, 5),        
        style: (stroke: main_scienze),        
        x => (x - 1)/2
      )
      //
      plot.add(
        ((0, -0.5), (1, 0)), 
        style: (stroke: none), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((0, 0.5), (2, 0.5)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((2, 0), (2, 0.5)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
    }
  )
}),
caption: []
)<grafico_funz1>
]
#pagebreak(weak:true)
#esempio(title: "Esempio 2")[
$ 
  f(x) = x^2
$<esempio_funz2>


#import "@preview/cetz:0.4.2" // Necessaria questa versione per cetz-plot 
#import "@preview/cetz-plot:0.1.3": plot, chart
#align(center)[
#grid(columns: 2, gutter: 2em)[
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 3,
    y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    
    {
      //
      plot.add(
        domain: (-3, 3),        
        style: (stroke: main_scienze),
        //label: $f(x) = x^2$,
        x => calc.pow(x, 2)
      )
      //
      plot.add(
        ((-2, 4), (2, 4)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
    }
  )
}),
caption: []
)<grafico_funz2>
][
#figure(
  caption: [],
  //gap: 0pt, // Allinea la didascalia alla tabella
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
  align: right + horizon,
  columns: (2),
  table.header[$x$][$f(x)$],
  [0], [0], 
  [1], [1], 
  [-1], [1], 
  [2], [4],
  [-2], [4],
  [3], [9],
  [-3], [9],
  [4], [16],
  [-4], [16],
)  
)
]
]
Anche questa funzione $f(x)$ è definita per ogni $x in RR$; di conseguenza, il suo dominio è l'insieme di tutti i numeri reali. Procediamo ora calcolando alcuni valori della funzione, riportandoli nella seguente tabella.

Successivamente, rappresentiamo i valori su un sistema di riferimento cartesiano, come mostrato in figura @grafico_funz2. Il grafico ottenuto corrisponde alla ben nota parabola con concavità rivolta verso l'alto, avente il vertice nell'origine degli assi.

]

#esempio(title: "Esempio 3")[
$ 
  f(x) = 1/x
$<esempio_funz3>

#import "@preview/cetz:0.4.2" // Necessaria questa versione per cetz-plot 
#import "@preview/cetz-plot:0.1.3": plot, chart
#import "@preview/cetz:0.4.2" // Necessaria questa versione per cetz-plot 
#import "@preview/cetz-plot:0.1.3": plot, chart
#align(center)[
#grid(columns: 2, gutter: 2em)[
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (7, 7),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -3, x-max: 3,
    y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    {
      // Ramo della funzione per x < 0
      plot.add(
        domain: (-4, -0.2),
        style: (stroke: main_scienze),
        //label: $f(x) = 1/x$,
        x => 1/x
      )
      
      // Ramo della funzione per x > 0
      plot.add(
        domain: (0.2, 4),
        style: (stroke: main_scienze),
        x => 1/x
      )

      // Punti di riferimento
      plot.add(
        ((1, 1), (-1, -1)), 
        style: (stroke: none), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
    }
    
  )
  
}),
caption: []
)<grafico_funz3>
][
#v(3em)
#figure(
  caption: [],
  //gap: 0pt, // Allinea la didascalia alla tabella
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
  align: right + horizon,
  columns: (2),
  table.header[$x$][$f(x)$],
  [0], [0], 
  [1], [1], 
  [-1], [1], 
  [2], [4],
  [-2], [4],
  [3], [9],
  [-3], [9],
  [4], [16],
  [-4], [16],
)  
)
]
]

A differenza delle funzioni analizzate negli esempi precedenti, la funzione $f(x)$ qui considerata non è definita per ogni $x in RR$ ; infatti, il suo dominio è costituito dall'insieme ${x in RR : x eq.not 0}$. Per analizzare il comportamento di $f(x)$, calcoliamo alcuni valori della funzione, che vengono riportati nella seguente tabella.

Successivamente, rappresentiamo tali valori in un sistema di riferimento cartesiano, come mostrato in @grafico_funz3. Il grafico ottenuto rappresenta un'iperbole equilatera, caratterizzata dagli assi cartesiani $x$ e $y$ come asintoti.

]

=== Funzioni biunivoche

La corrispondenza definita dalla funzione $f$ tra due insiemi $A$ e $B$ si dice biunivoca quando, non solo ad ogni elemento $x in A$ corrisponde un unico elemento $y in B$, ma anche per ogni $y in B$ esiste un unico elemento $x in A$ tale che $f(x) = y$. In questo caso, diciamo che la funzione $f: A arrow.r B$ è invertibile.

Inoltre, se la corrispondenza stabilita da $f$ tra $A$ e $B$ è biunivoca, e quindi $f: A arrow.r B$ è invertibile, è possibile definire la funzione inversa di $f$, indicata con il simbolo $f^(-1)$. 

Questa funzione associa a ogni elemento $y in B$ l'unico elemento $x in A$ per cui $f(x) = y$. In termini simbolici, è possibile esprimere questa relazione come segue:

$ 
  x = f^(-1)(y) arrow.r y = f(x)
$

Osserviamo che $f^(-1)$ rappresenta una corrispondenza tra gli insiemi $B$ e $A$, esprimibile simbolicamente come $f^(-1): B arrow.r A$. 

#esempio(title:"Esempio 4")[Ad esempio, la funzione $f(x) = (x - 1)/2$, definita in @esempio_funz1, stabilisce una corrispondenza biunivoca tra $A = RR$ e $B = RR$. Infatti, dato un valore fissato $y in RR$, è possibile determinare un unico valore corrispondente $x in RR$. In particolare, si ha:

$ 
  y = (x - 1)/2 quad arrow.l.r.double.long quad x = 2y + 1
$

Pertanto, la funzione $f(x) = (x - 1)/2$ è invertibile su $RR$, e la sua funzione inversa è data da $f^(1)(y) = 2y + 1$.

Diversamente, la funzione $f(x) = x^2$, definita in @esempio_funz2, non stabilisce una corrispondenza biunivoca tra l'insieme $A = RR$ e l'insieme $B = {y in RR : y >= 0} = [0, +oo)$. Infatti, fissato un valore $y in B$, si ottengono due valori distinti di $x in RR$ con:

$ 
  y = x^2 quad arrow.l.r.double.long quad x = \u{00B1} sqrt(y)
$

Si osserva quindi che, per ogni $y > 0$, esistono due valori di $x$, mentre per $y = 0$ esiste un solo valore $x = 0$. Pertanto, la corrispondenza tra gli insiemi $A$ e $B$, indotta dalla funzione $f(x) = x^2$, non è biunivoca e la funzione $f(x)$ non è invertibile su tutto l'insieme $A = RR$.

Tuttavia, se si restringe il dominio di definizione limitandosi all'insieme $A_1 = {x in RR : x >= 0} = [0, +oo)$, allora la corrispondenza tra l'insieme $A_1$ e l'insieme $B$, tramite la legge $f(x) = x^2$, diventa biunivoca. In questo caso, ogni elemento $y in B$ corrisponde a un unico valore di $x in A_1$, determinato dalla relazione:

$ 
  y = x^2, x in A_1 = {x in RR: x >=0} arrow.l.r.double.long x = \u{00B1} sqrt(y)
$

In @grafico_inv1 sono rappresentati graficamente i nuovi rapporti tra $x$ e $y$, usando la funzione diretta $y = f(x) = x^2$, con $x in A_1$, e la funzione inversa $x = f^(-1)(y) = sqrt(y)$. È interessante notare che i grafici delle due funzioni, $f(x)$ e $f^(-1)(y)$, corrispondono a segmenti di parabola ("metà parabola") ottenuti limitando la variabilità di $x$ all'insieme $A_1 = [0, +oo)$.

#import "@preview/cetz:0.4.2" // Necessaria questa versione per cetz-plot 
#import "@preview/cetz-plot:0.1.3": plot, chart
#align(center)[
#grid(columns: 2, gutter: 2em)[
#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -1.5, x-max: 3,
    y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    
    {
      // 
      plot.add(
        domain: (0, 3),        
        style: (stroke: main_scienze),
        //label: $f(x) = x^2$,
        x => calc.pow(x, 2)
      )
      plot.add(
        domain: (0, -3),        
        style: (stroke: (dash: "dashed", paint: main_scienze)),
        //label: $f(x) = x^2$,
        x => calc.pow(x, 2)
      )
      
    }
  )
}),
caption: []
)<grafico_inv1>

][

#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -0.5, x-max: 3,
    y-min: -1.2, y-max: 3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    
    {
      // 
      plot.add(
        domain: (0, 3),        
        style: (stroke: main_scienze),
        //label: $f(x) = x^2$,
        x => calc.sqrt(x)
      )
      //
      plot.add(
        domain: (0, 3),        
        style: (stroke: (dash: "dashed", paint: main_scienze)),
        //label: $f(x) = x^2$,
        x => -calc.sqrt(x)
      )
    }
  )
}),
caption: []
)<grafico_inv2>
]
]
]

=== Funzioni monotone

I grafici @grafico_mono1 e @grafico_mono2 rappresentano due situazioni relative alla funzione $f:A arrow.r B$. Nel primo grafico, la funzione $f$ è crescente, mentre nel secondo si osserva che $f$ è decrescente.

#import "@preview/cetz:0.4.2" // Necessaria questa versione per cetz-plot 
#import "@preview/cetz-plot:0.1.3": plot, chart
#align(center)[
#grid(columns: 2, gutter: 2em)[
#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    //x-min: -1, x-max: 4,
    //y-min: -1, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    //x-grid: "both",   
    //y-grid: "both",        
    
    {
      // 
      plot.add(
        domain: (.6, 3.22),        
        style: (stroke: main_scienze),
        //label: $f(x) = x^2$,
        x => calc.pow(x - 2, 3) + 3
      )
      plot.add(
        ((1.5, 2.87), (1.5, 0)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((1.5, 2.87), (0, 2.87)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,        
      )
      plot.add(
        ((2.8, 3.53), (2.8, 0)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,        
      )
      plot.add(
        ((0, 3.53), (2.8, 3.53)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,        
      )
      plot.annotate({
        cetz.decorations.brace((.6,-1.2),(3.22,-1.2), flip: true, name: "g1")
        cetz.decorations.brace((-1.3,4.82),(-1.3,0.3), flip: true, name: "g2")
        content("g1", [A], padding: .5, anchor: "south")
        content("g2", [B], padding: .3, anchor: "east")
        content((1.5, 0), [$x_1$], anchor: "south", padding: .2)      
        content((3, 0), [$x_2$], anchor: "south", padding: .2)
        content((0, 2.87), [$f(x_1)$], anchor: "east", padding: .2)
        content((0, 3.53), [$f(x_2)$], anchor: "east", padding: .2)
      })

    }
  )
}),
caption: []
)<grafico_mono1>

][

#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    //x-min: -1, x-max: 4,
    //y-min: -1, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    //x-grid: "both",   
    //y-grid: "both",        
    
    {
      // 
      plot.add(
        domain: (.6, 3.22),        
        style: (stroke: main_scienze),
        //label: $f(x) = x^2$,
        x => 4/x
      )
      plot.add(
        ((1, 4), (1, 0)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((1, 4), (0, 4)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,        
      )
      plot.add(
        ((2.8, 1.44), (2.8, 0)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,        
      )
      plot.add(
        ((0, 1), (1, 1)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,        
      )
      plot.annotate({
        cetz.decorations.brace((.6,-1.2),(3.22,-1.2), flip: true, name: "g1")
        cetz.decorations.brace((-1.3,6.6),(-1.3,0.98), flip: true, name: "g2")
        content((1, 0), [$x_1$], anchor: "south", padding: .2)      
        content((3, 0), [$x_2$], anchor: "south", padding: .2)
        content((0, 1.44), [$f(x_2)$], anchor: "east", padding: .2)
        content((0, 4), [$f(x_1)$], anchor: "east", padding: .2)
        content("g1", [A], padding: .5, anchor: "south")
        content("g2", [B], padding: .3, anchor: "east")
      })
    }
  )
}),
caption: []
)<grafico_mono2>
]
]

In particolare, una funzione $f:A arrow.r B$ si definisce monotona crescente sull'insieme $A$ quando:

$ 
  f(x_1) <= f(x_2), quad forall x_1, x_2 in A, space "con" x_1 < x_2
$

Allo stesso modo, una funzione $f:A arrow.r B$ si definisce monotona decrescente sull'insieme A quando:

$ 
  f(x_1) >= f(x_2), quad forall x_1, x_2 in A, space "con" x_1 < x_2
$

Se una funzione $f:A arrow.r B$ soddisfa una delle due condizioni sopra indicate per ogni coppia di punti $x_1, x_2 in A$, allora si dice monotona sull'insieme $A$. Inoltre, se la disuguaglianza stretta $f(x_1) < f(x_2)$ è valida per ogni coppia di punti $x_1, x_2 in A$, con $x_1 < x_2$, la funzione è detta strettamente crescente su $A$. Analogamente, nel caso in cui valga la disuguaglianza stretta $f(x_1) > f(x_2)$ per ogni $x_1, x_2 in A$, con $x_1 < x_2$, la funzione è detta strettamente decrescente su $A$.

Da notare che l'unica funzione che risulta sia crescente che decrescente su un insieme $A$ è quella costante, cioè una funzione del tipo $f(x) = c$, dove $c in RR$ è un valore invariato per ogni $x in A$.

#esempio(title:"Esempio 1")[
Ad esempio, la funzione $f(x) = (x - 1)/2$, considerata nell'esempio @grafico_funz1, è strettamente monotona crescente sull'insieme $A = RR$. Infatti, per ogni coppia di punti $x_1, x_2 in RR$, con $x_1 < x_2$, si verifica:

$ 
  x_1 - 1 < x_2 - 1 quad arrow.r.double.long quad (x_1 - 1)/2 < (x_2 - 1)/2
$

ovvero:

$ 
  f(x_1) = (x_1 - 1)/2 < (x_2 - 1)/2 = f(x_2)
$

All'opposto, la funzione analoga $g(x) = 3 - 2x$, anch'essa rappresentabile come una retta, è strettamente monotona decrescente sull'insieme $RR$, come si deduce dalle relazioni inverse.

$ 
  x_1 < x_2 quad arrow.r.double.long quad 2x_1 < 2 x_2 arrow.r.double.long -2x_1 > -2x_2 arrow.r.double.long \ arrow.r.double.long g(x_1) = 3 - 2x_1 > 3 - 2x_2 = g(x_2)
$

#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -1.5, x-max: 6,
    y-min: -2.2, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.5, preview: (width: 0.5)
  )),
    {
      // 
      plot.add(
        domain: (-3, 6),        
        style: (stroke: main_scienze.lighten(5%)),
        label: $f(x) = (x - 1)/2$,
        x => (x - 1)/2
      )
      //
      plot.add(
        domain: (-2, 6),        
        style: (stroke: (dash: "dotted", paint: main_scienze.lighten(5%))),
        label: $g(x) = 3 - 2x$,
        x => 3 - 2 * x
      )
    }
  )
}),
caption: []
)<grafico_mono3>

Infine, considerando la funzione $f(x) = x^2$ presente in @grafico_funz2, si osserva che non è monotona su tutto l'insieme $A = RR$. Tuttavia, il lettore può verificare che la funzione $y = x^2$ risulta separatamente crescente nell'insieme $A_1 = { x in RR : x >= 0 } = [0, +oo)$ e decrescente nell'insieme $A_2 = \x in RR : x < 0 } = (-oo, 0)$.
]
#pagebreak(weak:true)
Esiste un collegamento tra la stretta monotonia di una funzione su un insieme e la sua invertibilità. A tal proposito, il seguente risultato è valido.

=== Funzioni invertibili

Sia $f: A arrow.r B$ una funzione definita su un insieme $A$, tale che per ogni $y in B$ esista sempre almeno un numero $x in A$ con $f(x) = y$. Se $f$ è strettamente monotona su $A$, allora $f$ è anche invertibile su $A$, e la sua funzione inversa $f^(-1): B arrow.r A$ è definita e strettamente monotona su $B$.

È sufficiente osservare che la funzione $f$ stabilisce una corrispondenza biunivoca tra i due insiemi $A$ e $B$. Per dimostrarlo, ragioniamo per assurdo e supponiamo che esista un numero $y_0 in B$ che violi la corrispondenza biunivoca. In tal caso, esisterebbero almeno due numeri distinti $x_1, x_2 in A$ tali che $f(x_1) = f(x_2) = y_0$. Poiché $x_1$ e $x_2$ sono distinti, uno dei due sarà minore dell'altro; supponiamo senza perdita di generalità che $x_1 < x_2$. Tuttavia, per l'ipotesi di stretta monotonia, avremmo che:

- se $f(x)$ è strettamente crescente, allora $f(x_1) < f(x_2)$;
- se $f(x)$ è strettamente decrescente, allora $f(x_1) > f(x_2)$.

In entrambi i casi otteniamo una contraddizione con l'assunzione precedente, cioè che $f(x_1) eq.not f(x_2)$. Pertanto, la funzione soddisfa la condizione di biunivocità.

Tuttavia, il viceversa della proposizione non vale. Esistono infatti funzioni che sono invertibili su un certo insieme ma non sono monotone su di esso. Un esempio è dato dalla funzione $f: (0, +oo) arrow.r (0, +oo)$, definita come segue:


$
  f(x) = cases(
  1 - x quad & "se" x in (0, 1], 
  x quad & "se" x in (1, +oo)
  )
$<funz_discontinua>

Il grafico di questa funzione, rappresentato in @grafico_mono4, mostra chiaramente questa particolare caratteristica: pur essendo invertibile nell'intervallo dato, essa non risulta monotona.

#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (5, 3),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -.5, x-max: 2,
    y-min: -.5, y-max: 2,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.5, preview: (width: 0.5)
  )),
    {
      // 
      plot.add(
        domain: (0, 1),        
        style: (stroke: main_scienze),        
        x => 1 - x
      )
      // 
      plot.add(
        domain: (1, 6),        
        style: (stroke: main_scienze),        
        x => x
      )
      plot.add(
      ((1, 0), (1, 1)), 
        style: (stroke: (dash: "dashed", paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,
      )
      plot.annotate({        
        content((1, 0), [$1$], anchor: "south", padding: .3)      
        content((0, 1), [$1$], anchor: "east", padding: 0)      
        
      })  
    }
  )
}),
caption: []
)<grafico_mono4>

La funzione mostra una chiara singolarità nel punto $x = 1$. Pertanto, secondo quanto stabilito nei paragrafi precedenti, la funzione $f(x)$ definita nell'equazione @funz_discontinua risulta discontinua nel punto $x_0 = 1$.

#pagebreak(weak: true)

Nei successivi paragrafi, viene proposto un elenco di funzioni elementari, accompagnate dalle loro principali proprietà e dai relativi grafici, utili per affrontare esercizi introduttivi e per illustrare i primi risultati relativi ai limiti e alle derivate. 

== Funzioni lineari

Si inizia con la descrizione delle funzioni lineari, che assumono la formula generale 

$ 
  f(x) = m x + q
$

dove $m$ e $q$ sono numeri reali fissati. Tale funzione è definita per ogni $x in RR$. Il parametro $m$ rappresenta il coefficiente angolare della retta, mentre $q$ indica il valore assunto dalla funzione in corrispondenza di $x = 0$, ossia $f(0) = q$. 

Se il coefficiente angolare $m > 0$, la funzione risulta strettamente crescente; viceversa, se $m < 0$, essa è strettamente decrescente. Questa proprietà deriva dal fatto che, per $m > 0$, si ha $f(x_1) < f(x_2)$ per $x_1 < x_2$, pertanto la funzione è strettamente crescente. Analogamente, nel caso $m < 0$, il coefficiente negativo provoca un'inversione nella relazione di disuguaglianza, determinando $f(x_1) > f(x_2)$ per $x_1 < x_2$; dunque, la funzione è strettamente decrescente. Se invece $m = 0$, la funzione assume la forma costante $f(x) = q$, il cui grafico corrisponde a una retta orizzontale. Tali proprietà di monotonia sono sintetizzate in @funz_elementare1.

#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -1.5, x-max: 6,
    y-min: -2.2, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.5, preview: (width: 0.5)
  )),
    {
      // 
      plot.add(
        domain: (-3, 6),        
        style: (stroke: main_scienze.lighten(5%), ),
        label: $m > 0$,
        x => 1/2*x + 1
      )      
      plot.add(
        domain: (-2, 6),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(60%))),
        label: $m < 0$,
        x => -1/3*x + 3
      )
      plot.add(
        domain: (-2, 6),        
        style: (stroke: (dash: "dotted", paint: main_scienze)),
        label: $m < 0$,
        x => 4.4
      )
    }
  )
}),
caption: []
)<funz_elementare1>

== Funzione valore assoluto

La funzione valore assoluto è identificata dal simbolo $f(x) = |x|$ e definita per ogni $x in RR$ tramite la seguente formula:

$ 
  |x| = cases(
    &x quad &"se" x >=0,
    &-x quad &"se" x<0
  )
$<valore_assoluto>

Pertanto, la funzione valore assoluto corrisponde alla retta $y = x$ per $x >= 0$; in questo intervallo il grafico è descritto come una semiretta con equazione $y = x$ (vedi @funz_elementare2). Per $x < 0$, invece, il valore assoluto diventa equivalente a $y = -x$, il cui grafico è una semiretta con equazione y = -x (vedi @funz_elementare3). Unendo questi due casi, si ottiene il grafico completo della funzione valore assoluto, illustrato nella figura @funz_elementare4.

#grid(columns: (1fr, 1fr, 1fr), gutter: -1em)[
#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -1.5, x-max: 6,
    y-min: -2.2, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.2, 4),       
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.5, preview: (width: 0)
  )),
    {
      // 
      plot.add(
        domain: (0, 6),        
        style: (stroke: main_scienze),
        label: $y = x$,
        x => x
      )
      //
      plot.add(
        domain: (-2, 0),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))),        
        x => x
      )
    }
  )
}),
caption: []
)<funz_elementare2>
][][
#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -6, x-max: 1.5,
    y-min: -2.2, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",
    legend: (1.7, 4),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.5, preview: (width: 0)
  )),
    {
      // 
      plot.add(
        domain: (-6, 0),        
        style: (stroke: main_scienze.lighten(5%)),
        label: $y = -x$,
        x => -x
      )
      //
      plot.add(
        domain: (0, 2),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))),        
        x => -x
      )
    }
  )
}),
caption: []
)<funz_elementare3>
][][
#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -6, x-max: 6,
    y-min: -2.2, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",
    legend: (5, 3.3),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.5, preview: (width: 0)
  )),
    {
      // 
      plot.add(
        domain: (0, 6),        
        style: (stroke: main_scienze.lighten(5%), ),
        label: $y = |x|$,
        x => x
      )
      //
      plot.add(
        domain: (-6, 0),        
        style: (stroke: main_scienze.lighten(5%)),        
        x => -x
      )
    }
  )
}),
caption: []
)<funz_elementare4>
][]

== Funzione potenza

Si considera infine la funzione potenza con esponente intero positivo $n in NN$, espressa come 

$
  f(x) = x^n
$ 

Questa funzione rappresenta la moltiplicazione del numero reale $x$ per se stesso $n$-volte ed è definita per ogni valore di $x in RR$. Il segno di $f(x) = x^n$ dipende sia dal valore di $x$ che dalla parità di $n$: se $x > 0$, il risultato è sempre positivo; se invece $x < 0$, il valore di $f(x) = x^n$ sarà positivo quando l'esponente $n$ è pari (ad esempio nel caso di $f(x) = x^2$), mentre risulterà negativo se $n$ è dispari (ad esempio per $f(x) = x^3$). 

I grafici delle funzioni potenza nei casi specifici di $n = 1, 2, 3$ sono rappresentati rispettivamente dalle funzioni $f_1(x) = x^1 = x, f_2(x) = x^2$, e $f_3(x) = x^3$, come riportato in @funz_elementare5.

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
      plot.add(
        domain: (-6, 6),        
        style: (stroke: main_scienze),
        label: $n = 1$,
        x => calc.pow(x, 1)
      )      
      plot.add(
        domain: (-6, 6),        
        style: (stroke: (dash: "dash-dotted", paint: main_arte)),
        label: $n = 2$,        
        x => calc.pow(x, 2)
      )
      plot.add(
        domain: (-6, 6),        
        style: (stroke: (dash: "dashed", paint: main_storia)),
        label: $n = 3$,        
        x => calc.pow(x, 3)
      )      
      plot.add(
        domain: (-6, 6),        
        style: (stroke: (dash: "dotted", paint: main_tecnologia)), 
        label: $n = -1$,       
        x => calc.pow(x, -1)
      )
    }
  )
}),
caption: []
)<funz_elementare5>

Infine, si osserva che, come già menzionato nel paragrafo precedente, la funzione quadratica $f(x) = x^2$ non è invertibile sull'intero asse reale. Allo stesso modo, anche le funzioni potenza con esponente pari non risultano invertibili su tutto l'intervallo reale. 

Pertanto, quando si analizza la funzione potenza con esponente $n in NN$ generico (sia pari che dispari), per studiare la sua invertibilità si decide di restringere il dominio all'intervallo $[0, +oo)$, ovvero ${x in RR : x >= 0}$. In questo intervallo, la funzione potenza definita come $f(x) = x^n$ risulta strettamente monotona e quindi invertibile. La relazione inversa tra le variabili $x$ e $y$ può essere espressa dalla formula:

$ 
  y = x^n quad (x >= 0) arrow.double.l.r.long quad x = + root(n, y) = y^(1/n) 
$

Si osservi che è stato scelto il segno positivo, $x = + root(n, y)$, piuttosto che $x = \u{00B1} root(n, y)$, anche nel caso in cui $n$ sia pari, a causa della limitazione imposta dal dominio $x >= 0$.

Pertanto, si afferma che la funzione potenza $f(x) = x^n$ è invertibile per $x >= 0$, e che la sua funzione inversa è la radice $n$-sima, indicata con:

$ 
  f^(-1)(y) = y^(1/n)
$

In @funz_elementare6 e @funz_elementare7 sono riportati i grafici della funzione potenza e della sua inversa, ossia la radice $n$-sima.

#grid(columns: (1fr, 1fr), gutter: 1em)[
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -.5, x-max: 3,
    y-min: -.5, y-max: 3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.3),       
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.4)
  )),
    {
      // 
      plot.add(
        domain: (0, 6),        
        style: (stroke: main_scienze),
        label: $n = 1$,
        x => x
      )      
      plot.add(
        domain: (0, 6),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))),
        label: $n = 2$,       
        x => calc.pow(x, 2)
      )
      plot.add(
        domain: (0, 6),        
        style: (stroke: (dash: "dotted", paint: main_scienze.lighten(50%))),
        label: $n = 3$,       
        x => calc.pow(x, 3)
      )
    }
  )
}),
caption: []
)<funz_elementare6>
][
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -.5, x-max: 3,
    y-min: -.5, y-max: 3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (1.3, 4),       
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.4)
  )),
    {
      // 
      plot.add(
        domain: (0, 6),        
        style: (stroke: main_scienze),
        label: $n = 1$,
        x => x
      )      
      plot.add(
        domain: (0, 6),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))),
        label: $n = 2$,       
        x => calc.root(x, 2)
      )
      plot.add(
        domain: (0, 6),        
        style: (stroke: (dash: "dotted", paint: main_scienze.lighten(50%))),
        label: $n = 3$,       
        x => calc.root(x, 3)
      )
    }
  )
}),
caption: []
)<funz_elementare7>
]

Osserviamo nello specifico che, per un numero intero $n$ dispari, la funzione radice $n$-esima può essere definita per ogni $x in RR$, assumendo che $f^(-1)(-y) = -f(y)$. Se $f^(-1)(y) = y^(1/n)$, per $n$ dispari il valore di $f(y)$ è positivo quando $y > 0$, mentre risulta negativo se $y < 0$. In questo modo, se $n$ è dispari, la funzione potenza $f(x) = x^n$ è invertibile su tutto l'insieme dei numeri reali e la sua inversa è data da $f^(-1)(y) = y^(1/n)$ per ogni $y in RR$.

Tali definizioni di funzione potenza e radice $n$-esima possono essere generalizzate in un contesto più ampio, considerando la funzione potenza $x^b$ con esponente $b$ reale, descritta dall'equazione:

$ 
  f(x) = x^b
$

Con questa notazione, i casi precedenti sono ottenuti con $b = n$ (funzione potenza con esponente intero positivo) e con $b = 1/n$ (funzione radice $n$-esima). 

Tuttavia, in questo contesto si includono anche altri casi, come le potenze con esponenti negativi. Ad esempio, se $b = -1$, si ottiene la funzione $f(x) = x^(-1) = 1/x$, il cui grafico è un'iperbole, come rappresentato nella @funz_elementare8. Seguendo la convenzione di considerare solamente i numeri reali positivi per $x$, si afferma che il grafico della funzione $f(x) = x^(-1)$ corrisponde a un solo ramo di iperbole, con la restrizione $x > 0$.

Poiché $b$ è un numero reale generico (includendo i valori negativi), il dominio della funzione potenza con esponente reale $f(x) = x^b$, invece che essere l'intervallo $[0, +oo) = = {x in RR: x >= 0}$ (cioè l'insieme dei reali non negativi), per convenzione si assume pari all'intervallo aperto $(0, +oo) = {x in RR: x > 0}$, ovvero l'insieme dei reali strettamente positivi.

In @funz_elementare8 sono riportati i grafici di tre tipici esempi di funzioni potenza con esponente reale $f(x) = x^b$, corrispondenti ai casi: $b > 1$, $0 < b < 1$, e $b < 0$. Si possono considerare, a titolo illustrativo, i seguenti valori: $b = 2$, $b = 1/2$, e $b = -1$.

#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -.5, x-max: 3,
    y-min: -.5, y-max: 3,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (4.5, 4.5),       
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.4)
  )),
    {
      // 
      plot.add(
        domain: (0, 2),        
        style: (stroke: main_scienze),
        label: $b = 2$,
        x => calc.pow(x, 2)
      )      
      plot.add(
        domain: (0, 3),        
        style: (stroke: (dash: "dashed", paint: main_storia.lighten(10%))),
        label: $b = 1/2$,       
        x => calc.pow(x, 1/2)
      )
      plot.add(
        domain: (0.001, 3),        
        style: (stroke: (dash: "dotted", paint: main_arte.lighten(10%))),
        label: $b = -1$,       
        x => calc.pow(x, -1)
      )
      plot.add(
      ((1, 0), (1, 1)), 
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,
      )
      plot.add(
      ((0, 1), (1, 1)), 
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em,
      )
      plot.annotate({        
        content((1, 0), [$1$], anchor: "south", padding: .12)      
        content((0, 1), [$1$], anchor: "east", padding: .05)      
        
      })  
    }
  )
}),
caption: []
)<funz_elementare8>

== Funzione esponenziale

La funzione esponenziale, definita da una base $a$, dove $a$ è un numero reale positivo, viene indicata con:

$ 
  f(x) = a^x
$

Per analizzare il comportamento grafico della funzione esponenziale in relazione a determinati valori della base $a > 0$, prendiamo in considerazione, a titolo esemplificativo, il caso in cui $a = 2$. Si ottiene così la seguente tabella di valori corrispondenti alla funzione:

#align(center)[
#grid(columns: 2, gutter: 2em)[
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (7, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -4, x-max: 4,
    y-min: -.5, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    
    {
      //
      plot.add(
        domain: (-4, 4),        
        style: (stroke: main_scienze),
        //label: $f(x) = x^2$,
        x => calc.pow(2, x)
      )
      //
      plot.add(
        ((0, 1), (0, 1)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((1, 2), (1, 2)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((2, 4), (2, 4)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-1, 0.5), (-1, 0.5)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-2, 0.25), (-2, 0.25)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-3, 0.125), (-3, 0.125)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-4, 0.0625), (-4, 0.0625)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
    }
  )
}),
caption: []
)<funz_elementare9>
][
#v(1.3em)
#figure(
  caption: [],
  //gap: 0pt, // Allinea la didascalia alla tabella
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
  align: right + horizon,
  columns: (2),
  table.header[$x$][$f(x)$],
  [1], [2], 
  [2], [4], 
  [3], [8], 
  [0], [1],
  [-1], [1/2],
  [-2], [1/4],
  [-3], [1/8],
  [-4], [1/16],
)  
)
]
]

Osserviamo che, indipendentemente dal segno della variabile $x$ (positiva, negativa o nulla), tutti i valori assunti dalla funzione risultano positivi. Rappresentando tali valori in un sistema di riferimento cartesiano come mostrato in @funz_elementare9, si può tracciare il grafico della funzione $f(x) = 2^x$ attraverso il metodo per punti. La caratteristica di "positività" della funzione si riflette in un grafico che si colloca interamente al di sopra dell'asse $x$.

La funzione $2^x$ risulta essere strettamente crescente sull'insieme dei numeri reali ($RR$). Analogamente, una funzione esponenziale $a^x$, con $a > 1$ (essendo a un numero reale maggiore di uno), mantiene anch'essa un andamento strettamente crescente su $RR$. 

Diversamente, nel caso in cui la base a sia un numero reale positivo compreso tra 0 e 1 ($0 < a < 1$), la funzione esponenziale assume un andamento strettamente decrescente su $RR$. Per esempio, considerando $a = 1/2$, otteniamo la funzione, illustrata in @funz_elementare10:

$ 
  f(x) = (1/2)^x = 1/2^x = 2^(-x)
$

#align(center)[
#grid(columns: 2, gutter: 2em)[
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (7, 5),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -4, x-max: 4,
    y-min: -.5, y-max: 5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",        
    
    {
      //
      plot.add(
        domain: (-4, 4),        
        style: (stroke: main_scienze),
        //label: $f(x) = x^2$,
        x => calc.pow(1/2, x)
      )
      //
      plot.add(
        ((0, 1), (0, 1)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-1, 2), (-1, 2)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-2, 4), (-2, 4)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((1, 0.5), (1, 0.5)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((2, 0.25), (2, 0.25)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((3, 0.125), (3, 0.125)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((4, 0.0625), (4, 0.0625)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
    }
  )
}),
caption: []
)<funz_elementare10>
][
#v(1.3em)
#figure(
  caption: [],
  //gap: 0pt, // Allinea la didascalia alla tabella
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
  align: right + horizon,
  columns: (2),
  table.header[$x$][$f(x)$],
  [1], [1/2], 
  [2], [1/4], 
  [3], [1/8], 
  [0], [1],
  [-1], [2],
  [-2], [4],
  [-3], [8],
  [-4], [16],
)  
)
]
]

Riassumendo le proprietà di monotonia della funzione esponenziale $f(x) = a^x$, essa risulta strettamente crescente su $RR$ se $a > 1$, mentre è strettamente decrescente su $RR$ se $0 < a < 1$. Si osservi che, nel caso in cui $a = 1$, la funzione $f(x) = 1^x$ diventa costante e assume il valore identico pari a 1 per ogni $x$.

Quando $a eq.not 1$, la funzione esponenziale $y = a^x$, considerata come applicazione tra l'insieme $A = {x in RR}$ e l'insieme $B = {y > 0}$, è invertibile. La funzione inversa è definita sull'insieme dei numeri reali positivi $B$, e assume valori in $A = RR$. 
#pagebreak(weak:true)
== Funzione logaritmo

La funzione inversa della funzione $f(x) = a^x$ prende il nome di logaritmo in base $a$ e si indica con:

$
  f^(-1)y = log_a y
$

Ciò equivale a scrivere l'equazione:

$ 
  x = log_a y quad arrow.l.r.double.long quad y = a^x
$

Per sottolineare il ruolo giocato dalla variabile indipendente, è comune scambiare i simboli $x$ e $y$, adottando la notazione $y = log_a x$. Con tale cambio di simboli, abbiamo la relazione equivalente:

$ 
  y = log_a x quad arrow.l.r.double.long quad x = a^y
$<funz_logaritmo>

La funzione logaritmica $y = log_a x$ (con base $a > 0$ e $a eq.not 1$) risulta definita per tutti gli $x > 0$. Sfruttando le proprietà corrispondenti della funzione esponenziale, si dimostra che la funzione logaritmica è strettamente crescente qualora $a > 1$, mentre è strettamente decrescente se $0 < a < 1$. 

I grafici relativi a questi due casi sono illustrati schematicamente in @funz_elementare11 e @funz_elementare12. Essi possono essere ottenuti dai grafici della funzione esponenziale (rappresentati in alcuni casi specifici in @funz_elementare9 e @funz_elementare10) semplicemente scambiando tra loro gli assi cartesiani orizzontale e verticale.

#grid(columns: (1fr, 1fr), gutter: 1em)[
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -.5, x-max: 15,
    y-min: -4, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (4, 2.8),       
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      // 
      plot.add(
        domain: (.0001, 15),        
        style: (stroke: main_scienze),
        label: $a>1$,
        x => calc.log(x, base: 2)
      )   
      plot.add(
        ((1, 0), (1, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.annotate({
        content((1, 0), [$1$], anchor: "north", padding: .7)
      })
    }
  )
}),
caption: []
)<funz_elementare11>
][
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (5, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -.5, x-max: 15,
    y-min: -4, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      plot.add(
        domain: (.0001, 15),        
        style: (stroke: main_scienze),
        label: $0<a<1$,
        x => calc.log(x, base: .5)
      )    
      plot.add(
        ((1, 0), (1, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.annotate({
        content((1, 0), [$1$], anchor: "north", padding: .7)
      })
    }
  )
}),
caption: []
)<funz_elementare12>
]

Un caso particolare della funzione logaritmica si presenta quando la base $a$ è uguale al numero di Nepero $e$, un numero irrazionale situato tra 2 e 3, con una rappresentazione decimale approssimata pari a $e approx 2,71 dots$. Tale numero viene definito nel paragrafo successivo. In questa circostanza, si omette generalmente l'indicazione esplicita della base e si utilizzano notazioni equivalenti come $ln(x) = log_e x$ o, più semplicemente, $log x$#footnote[Va notato che in alcuni contesti, come quello scolastico e nello studio della matematica, #text(size: 8pt)[$log x$] viene usato spesso al posto di $log_10 x$]. 

Essendo il valore di $e > 1$, sia la funzione logaritmica naturale $ln x$ sia la corrispondente funzione esponenziale con base $e$, $e^x$, risultano funzioni strettamente crescenti. 
#v(3em)
#esempio(title: "Esempio 1")[
Per agevolare la comprensione del concetto di logaritmo, specialmente per i lettori che vi si approcciano per la prima volta, si propongono di seguito alcuni esempi di valori logaritmici significativi utili per familiarizzare con questa importante funzione matematica.

$ 
  log_2 8, quad log_4 2, quad log_3 1/3, quad log_e 1, quad log_10 0
$

Utilizzando la relazione @funz_logaritmo, abbiamo:

$ 
  y = log_2 8 quad arrow.l.r.double.long quad 8 = 2^y
$

Da cui, essendo $2^3 = 8$, si ottiene $y = 3$. Quindi, $log_2 8 = 3$. Analogamente, risulta $log_2 4 = 1/2$, $log_2(1/3) = -1$, e $log_2(1) = 0$. 

Al contrario, $log_2 0$ non esiste (o, in altre parole, non è definito) perché, se esistesse un numero reale $y = log_2 0$, allora l'equazione $2^y = 0$ dovrebbe essere soddisfatta. Tuttavia, tale valore $y in RR$ non può esistere, poiché $a^y$ (e quindi anche $2^y$) è una funzione positiva, cioè $a^y > 0$ (in particolare, $a^y eq.not 0$) per ogni $y in RR$.
]
Bisogna anche ricordare, come già affermato in precedenza, che la funzione $log_a x$ è definita solo per $x > 0$. In particolare, non è definita per $x = 0$ né per $x < 0$.

== Funzioni trigonometriche

Le funzioni trigonometriche seno ($sin x$ o $"sen" x$), coseno ($cos x$) e tangente ($tan x$ o $tg x$) dovrebbero essere già familiari al lettore. Infatti, molti studenti le affrontano durante i corsi di trigonometria nella scuola secondaria; tuttavia, per chi non abbia avuto modo di studiarle in precedenza, si riportano di seguito alcune nozioni di base.

In trigonometria, la misura di un angolo viene generalmente espressa in radianti. Prendendo come riferimento la figura @funz_trigonometria1, la misura in radianti di un angolo può essere determinata considerando una circonferenza avente raggio unitario (1) e centro nel vertice dell'angolo stesso, misurando la lunghezza dell'arco compreso tra l'asse delle ordinate e il punto corrispondente lungo la circonferenza in senso antiorario. Questo orientamento viene convenzionalmente considerato positivo; per questo motivo si parla talvolta di "angoli orientati".

#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (4, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -1, x-max: 1,
    y-min: -1, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      plot.add(
        domain: (0, 2 * calc.pi),        
        style: (stroke: black),
        x => (calc.cos(x), calc.sin(x)),
      )
      plot.add(
        domain: (0, calc.pi/4),        
        style: (stroke: main_scienze),
        x => (calc.cos(x), calc.sin(x)),
      )
      plot.add(
        domain: (0, 2 * calc.pi),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(5%))),
        x => x,
      )         
      plot.add(
        ((1, 0), (1, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.annotate({
        content((1.1, -0.15), [$1$], padding: .2)
        content((1.05, .5), [$x$], padding: .2)
        content((.1, .8), [$pi/2$], padding: .2)
        content((-0.86, -0.15), [$pi$], padding: .2)
        content((.15, -.8), [$(3 pi)/2$], padding: .2)
      })
    }
  )
}),
caption: []
)<funz_trigonometria1>

Ad esempio, l'angolo giro, che in gradi equivale a 360°, ha una misura in radianti pari alla lunghezza dell'intera circonferenza. Dato che in una circonferenza il rapporto tra la lunghezza e il raggio è costante e vale $2 pi$, si ottiene quindi che la misura in radianti di un angolo giro è $2 pi$. Suddividendo ulteriormente l'angolo giro in parti uguali, si ricava che un angolo piatto (180°) ha una misura in radianti pari a $pi$, mentre un angolo retto (90°) ha una misura pari a $pi/2$.

La funzione seno, indicata con il simbolo $"sen" x$ (o $sin x$), è definita per tutti i valori di un angolo orientato $x$, espresso in radianti. Con riferimento a @funz_trigonometria2, dato un angolo orientato $x$, il valore di $"sen" x$ corrisponde all'ordinata del punto $P$ che si trova sulla circonferenza avente come centro il vertice dell'angolo e come raggio unitario.

#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (4, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -1, x-max: 1,
    y-min: -1, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      // Circonferenza goniometrica
      plot.add(
        domain: (0, 2 * calc.pi),        
        style: (stroke: black),
        x => (calc.cos(x), calc.sin(x)),
      )
      // x
      plot.add(
        domain: (0, calc.pi/4),        
        style: (stroke: main_scienze),
        x => (calc.cos(x), calc.sin(x)),
      )
      // Semiretta per P
      plot.add(
        domain: (0, 2 * calc.pi),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(5%))),
        x => x,
      ) 
      // 1        
      plot.add(
        ((1, 0), (1, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      // P
      plot.add(
        ((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), (calc.sin(calc.pi/4), 0)), 
        style: (stroke: (paint: main_scienze.lighten(5%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.annotate({
        cetz.decorations.brace((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), (calc.sin(calc.pi/4), 0), flip: true, name: "g1", outer-inset: .1, thickness: .01, amplitude: .1)        
        content((.35, calc.cos(calc.pi/4)), "g1", [$"sen" x$], anchor: "east")
        content((1.1, -0.15), [$1$], padding: .2)
        content((1.05, .5), [$x$], padding: .2)
        content((.5, .85), [$P$], anchor: "west", padding: .1)
      })
    }
  )
}),
caption: []
)<funz_trigonometria2>

Un esempio pratico è riportato nella tabella e nel relativo grafico rappresentato in @funz_trigonometria3.

#grid(columns: 2, gutter: 1em)[
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (10, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -5, x-max: 5,
    y-min: -1, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      // Seno
      plot.add(
        domain: (-5, 5),        
        style: (stroke: main_scienze),
        x => calc.sin(x)
      )
      // x
      
      // Rette
      plot.add(
        domain: (-2 * calc.pi, 2 * calc.pi),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(5%))),
        x => 1,
      )
      plot.add(
        domain: (-2 * calc.pi, 2 * calc.pi),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(5%))),
        x => -1,
      )
      // 1        
      plot.add(
        ((0, 1), (0, 1)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )  
      // Punti ascisse        
      plot.add(
        ((calc.pi, 0), (calc.pi, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((calc.pi/2, 0), (calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((3 * calc.pi/2, 0), (3 * calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-calc.pi/2, 0), (-calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-calc.pi, 0), (-calc.pi, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-3 * calc.pi/2, 0), (-3 * calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.annotate({
        content((.2, .85), [$1$], padding: .2)         
        content((calc.pi/2, -.2), [$pi/2$], padding: .2)
        content((calc.pi, -.15), [$pi$], padding: .2)
        content((3* calc.pi/2, -.2), [$(3)/2 pi$], padding: .2)
        content((-calc.pi/2, -.2), [$-pi/2$], padding: .2)
        content((-calc.pi, -.15), [$-pi$], padding: .2)
        content((-3* calc.pi/2, -.2), [$-(3)/2 pi$], padding: .2)
      })
    }
  )
}),
caption: []
)<funz_trigonometria3>
][
#figure(
  caption: [],
  gap: .5em, // Allinea la didascalia alla tabella
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
  align: right + horizon,
  columns: (2),
  table.header[$x$][$f(x)$],
  [0], [0], 
  [$pi/2$], [1], 
  [$pi$], [0],
  [$3/2 pi$], [-1], 
  [$2 pi$], [0],
  [$5/2 pi$], [1],
  [$3 pi$], [0],
  [$7/2 pi$], [-1]
)  
)
]
Una proprietà immediata, evidente anche dal grafico riportato in @funz_trigonometria3 (osservando i valori sull'asse $y$), è che tutti i valori assunti dalla funzione seno sono compresi tra $-1$ e $+1$. In formula:

$ 
  -1 <= "sen" x <= 1, quad forall x in RR
$

Analogamente, la funzione coseno, indicata con il simbolo $cos x$, è definita per tutti i valori di un angolo orientato $x$, espresso in radianti. Come mostrato in @funz_trigonometria4, dato un angolo orientato $x$, il valore di $cos x$ corrisponde all'ascissa del punto $P$ situato sulla medesima circonferenza unitaria che sottende l'angolo $x$.

#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (4, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -1, x-max: 1,
    y-min: -1, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      // Circonferenza goniometrica
      plot.add(
        domain: (0, 2 * calc.pi),        
        style: (stroke: black),
        x => (calc.cos(x), calc.sin(x)),
      )
      // x
      plot.add(
        domain: (0, calc.pi/4),        
        style: (stroke: main_scienze),
        x => (calc.cos(x), calc.sin(x)),
      )
      // Semiretta per P
      plot.add(
        domain: (0, 2 * calc.pi),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(5%))),
        x => x,
      ) 
      // 1        
      plot.add(
        ((1, 0), (1, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      // P e proiezione
      plot.add(
        ((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), (calc.sin(calc.pi/4), 0)), 
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(5%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((calc.cos(calc.pi/4), 0), (0, 0)), 
        style: (stroke: (paint: main_scienze.lighten(5%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.annotate({
        cetz.decorations.brace((calc.cos(calc.pi/4), 0), (0, 0),  name: "g1", outer-inset: .1, thickness: .01, amplitude: .1)        
        content((calc.cos(calc.pi/4), -.45), "g1", [$"cos" x$], anchor: "north")
        content((1.1, -0.15), [$1$], padding: .2)
        content((1.05, .5), [$x$], padding: .2)
        content((.5, .85), [$P$], anchor: "west", padding: .1)
      })
    }
  )
}),
caption: []
)<funz_trigonometria4>

Tabelle e grafici relativi (@funz_trigonometria5) completano la trattazione, fornendo una rappresentazione chiara ed esemplificativa del comportamento di queste funzioni. Come per il seno, anche per la funzione $cos x$ i valori sono compresi -1 e +1, ovvero:

$ 
  -1 <= "cos" x <= 1, quad forall x in RR
$

#grid(columns: 2, gutter: 1em)[
#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (10, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -5, x-max: 5,
    y-min: -1, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      // Coseno
      plot.add(
        domain: (-5, 5),        
        style: (stroke: main_scienze),
        x => calc.cos(x)
      )
      // Rette
      plot.add(
        domain: (-2 * calc.pi, 2 * calc.pi),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(5%))),
        x => 1,
      )
      plot.add(
        domain: (-2 * calc.pi, 2 * calc.pi),        
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(5%))),
        x => -1,
      ) 
      // 1
      plot.add(
        ((0, 1), (0, 1)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      ) 
      // Punti ascisse        
      plot.add(
        ((calc.pi, 0), (calc.pi, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((calc.pi/2, 0), (calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((3 * calc.pi/2, 0), (3 * calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-calc.pi/2, 0), (-calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-calc.pi, 0), (-calc.pi, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-3 * calc.pi/2, 0), (-3 * calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.annotate({
        content((.2, .85), [$1$], padding: .2)        
        content((calc.pi/2, -.2), [$pi/2$], padding: .2)
        content((calc.pi, -.15), [$pi$], padding: .2)
        content((3* calc.pi/2, -.2), [$(3)/2 pi$], padding: .2)
        content((-calc.pi/2, -.2), [$-pi/2$], padding: .2)
        content((-calc.pi, -.15), [$-pi$], padding: .2)
        content((-3* calc.pi/2, -.2), [$-(3)/2 pi$], padding: .2)
      })
    }
  )
}),
caption: []
)<funz_trigonometria5>
][
#figure(
  caption: [],
  gap: .5em, // Allinea la didascalia alla tabella
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
  align: right + horizon,
  columns: (2),
  table.header[$x$][$f(x)$],
  [0], [1], 
  [$pi/2$], [0], 
  [$pi$], [-1],
  [$3/2 pi$], [0], 
  [$2 pi$], [1],
  [$5/2 pi$], [0],
  [$3 pi$], [-1],
  [$7/2 pi$], [0]
)  
)
]

Una relazione fondamentale che collega le funzioni seno e coseno deriva direttamente dal teorema di Pitagora, applicato a un triangolo rettangolo con uno degli angoli acuti di misura $x$. Consideriamo, in questa sede, il caso in cui l'angolo $x$ sia compreso tra 0 e $pi/2$, pur essendo il risultato valido anche in generale. Supponendo che l'ipotenusa del triangolo abbia lunghezza 1, si possono utilizzare le definizioni di $"sen" x$ e $cos x$, fornite in precedenza. In questo modo, i due cateti risulteranno misurare rispettivamente $"sen" x$ e $cos x$, come illustrato in @funz_trigonometria6.

#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (4, 3),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: 0, x-max: 1,
    y-min: 0, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0., preview: (width: 0)
  )),
    {
      plot.add(
        ((0, 0), (calc.cos(calc.pi/4), calc.sin(calc.pi/4))),
        domain: (0, 1),        
        style: (stroke: main_scienze),        
      )    
      plot.add(
        ((calc.cos(calc.pi/4), 0), (calc.cos(calc.pi/4), calc.sin(calc.pi/4))),
        domain: (0, 1),        
        style: (stroke: main_scienze),        
      )
      plot.annotate({
        cetz.decorations.brace((calc.cos(calc.pi/4), 0), (0, 0),  name: "g1", outer-inset: .1, thickness: .008, amplitude: .1)        
        cetz.decorations.brace((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), (calc.sin(calc.pi/4), 0), name: "g2", outer-inset: .1, thickness: .005, amplitude: .1)
        cetz.decorations.brace((0, 0), (calc.cos(calc.pi/4), calc.sin(calc.pi/4)), name: "g3", outer-inset: .1, thickness: .005, amplitude: .1)        
        content((calc.cos(calc.pi/4), -.45), "g1", [$"cos" x$], anchor: "north")        
        content((1.1, calc.cos(calc.pi/4)), "g2", [$"sen" x$], anchor: "west")
        content((.1, calc.cos(calc.pi/4)), "g3", [1], anchor: "north-west")
        content((.5, .85), [$P$], anchor: "west", padding: .1)
        
        
        
      })
    }
  )
}),
caption: []
)<funz_trigonometria6>

Applica quindi il teorema di Pitagora, dall'insieme delle definizioni precedenti, si ottiene la relazione fondamentale:

$ 
  "sen"^2 x + cos^2 x = 1, quad forall x in RR.
$

Altre relazioni significative includono le cosiddette formule di addizione, che rappresentano strumenti utili in molteplici sviluppi matematici.

$ 
  "sen"(x_1 + x_2) = "sin" x_1 dot cos x_2 + cos x_1 dot "sen" x_2 \ cos(x_1 + x_2) = cos x_1 dot cos x_2 - "sen"x_1 dot "sen" x_2
$

In merito alla funzione tangente, definita da

$ 
  tg x = ("sen" x)/(cos x)
$

è necessario ricordare che il denominatore della frazione che definisce tale funzione deve essere differente da zero. Pertanto, la funzione tangente è definita per ogni valore reale di $x$ che  non annulli la funzione coseno. Ciò avviene per i valori $x = pi/2, 3/2 pi, dots$ oppure per i corrispondenti valori negativi $x = -pi/2, -3/2 pi, dots$. In forma compatta, possiamo esprimere questa condizione affermando che la funzione tangente è definita per ogni numero reale $x$, purché soddisfi la relazione:

$ 
  x eq.not pi/2 + k pi, quad forall k in Z
$

Il grafico della funzione tangente è mostrato in @funz_trigonometria7. Si osservi che nei punti in corrispondenza di $x = ±pi/2, ±3pi/2, dots$ e così via, la funzione tangente non risulta definita.

#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (10, 5),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -5.5, x-max: 5.5,
    y-min: -4, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      // Tangente, senza asintoti
      plot.add(
        domain: (-calc.pi/2 + 0.1, calc.pi/2 - 0.1),        
        style: (stroke: main_scienze),
        x => calc.tan(x)
      )
      plot.add(
        domain: (calc.pi/2 + 0.1, 3 * calc.pi/2 - 0.1),        
        style: (stroke: main_scienze),
        x => calc.tan(x)
      )
      plot.add(
        domain: (-3 * calc.pi/2 + 0.1, -calc.pi/2 - 0.1),        
        style: (stroke: main_scienze),
        x => calc.tan(x)
      )
      plot.add(
        domain: (3 * calc.pi/2 + 0.1, 5.5),        
        style: (stroke: main_scienze),
        x => calc.tan(x)
      )
      plot.add(
        domain: (-5.5, -3 * calc.pi/2 - 0.1),        
        style: (stroke: main_scienze),
        x => calc.tan(x)
      )
      // 1
      plot.add(
        ((0, 1), (calc.pi/4, 1)), 
        style: (stroke: (dash: "dotted", paint: main_scienze.lighten(50%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((calc.pi/4, 1), (calc.pi/4, 0)), 
        style: (stroke: (dash: "dotted", paint: main_scienze.lighten(50%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      ) 
      // Punti ascisse        
      plot.add(
        ((calc.pi, 0), (calc.pi, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((calc.pi/2, 0), (calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((3 * calc.pi/2, 0), (3 * calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-calc.pi/2, 0), (-calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-calc.pi, 0), (-calc.pi, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((-3 * calc.pi/2, 0), (-3 * calc.pi/2, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      // Asintoti
      plot.add(
        ((calc.pi/2, -4), (calc.pi/2, 4)), 
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))),        
      )
      plot.add(
        ((-calc.pi/2, -4), (-calc.pi/2, 4)), 
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))),        
      )
      plot.add(
        ((3 * calc.pi/2, -4), (3 * calc.pi/2, 4)), 
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))),        
      )
      plot.add(
        ((-3 * calc.pi/2, -4), (-3 * calc.pi/2, 4)), 
        style: (stroke: (dash: "dashed", paint: main_scienze.lighten(50%))),        
      )
      // Annotazioni
      plot.annotate({
        content((-.2, 1), [$1$], padding: .2)
        content((calc.pi/4, -1), [$pi/4$], padding: .2)        
        content((calc.pi/2, -1), [$pi/2$], padding: .2)
        content((calc.pi, -.85), [$pi$], padding: .2)
        content((3* calc.pi/2, -1), [$(3)/2 pi$], padding: .2)
        content((-calc.pi/2, -1), [$-pi/2$], padding: .2)
        content((-calc.pi, -.85), [$-pi$], padding: .2)
        content((-3* calc.pi/2, -1), [$-(3)/2 pi$], padding: .2)
      })

    }
  )
}),
caption: []
)<funz_trigonometria7>

Un'importante relazione che coinvolge la funzione tangente può essere ricavata dal grafico in @funz_trigonometria8. Consideriamo un angolo compreso tra 0 e $pi/2$, che rappresenta la lunghezza dell'arco della circonferenza tracciata in @funz_trigonometria8, avente il centro nell'origine e raggio pari a 1. Il segmento $#overline[AP]$ ha una lunghezza corrispondente a $"sen" x$. Inoltre, il segmento $#overline[BT]$ ha una lunghezza pari a $tg x$; infatti, applicando le proporzioni valide nei triangoli simili, si ottiene 

$
  #overline[BT]/#overline[0B] = #overline[AP]/#overline[0A] = ("sen" x)/(cos(x)) = tg(x)
$

#figure(
cetz.canvas({
  import cetz.draw: *
  plot.plot(
    size: (4, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: 0, x-max: 1,
    y-min: 0, y-max: 1,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both", 
    legend: (3.3, 2.8),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0)
  )),
    {
      // Circonferenza goniometrica
      plot.add(
        domain: (0, calc.pi/3),        
        style: (stroke: black),
        x => (calc.cos(x), calc.sin(x)),
      )
      // x
      plot.add(
        domain: (0, calc.pi/4),        
        style: (stroke: main_scienze),
        x => (calc.cos(x), calc.sin(x)),
      )
      // Semiretta per P
      plot.add(
        domain: (0, 2 * calc.pi),        
        style: (stroke: (paint: black)),
        x => x,
      ) 
      // 1        
      plot.add(
        ((1, 0), (1, 0)), 
        style: (stroke: (paint: main_scienze)), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      // P e proiezione
      plot.add(
        ((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), (calc.sin(calc.pi/4), 0)), 
        style: (stroke: (paint: main_scienze.lighten(5%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      // T e proiezione
      plot.add(
        ((1, calc.tan(calc.pi/4)), (1, 0)), 
        style: (stroke: (paint: main_scienze.lighten(5%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.add(
        ((calc.cos(calc.pi/4), 0), (0, 0)), 
        style: (stroke: (paint: main_scienze.lighten(5%))), 
        mark: "o", 
        mark-style: (fill: main_scienze, stroke: main_scienze),
        mark-size: .2em
      )
      plot.annotate({
        // Graffe
        cetz.decorations.brace((calc.cos(calc.pi/4), 0), (0, 0),  name: "cos", outer-inset: .1, thickness: .005, amplitude: .05)        
        cetz.decorations.brace((calc.cos(calc.pi/4), calc.sin(calc.pi/4)), (calc.sin(calc.pi/4), 0), flip: true, name: "sen", outer-inset: .1, thickness: .005, amplitude: .05)
        cetz.decorations.brace((1, calc.tan(calc.pi/4)), (calc.tan(calc.pi/4), 0), name: "tg", outer-inset: .1, thickness: .005, amplitude: .05) 

        // Etichette       
        content((calc.cos(calc.pi/4), -.2), "cos", [$"cos" x$], anchor: "north")
        content((.52, calc.cos(calc.pi/4)), "sen", [$"sen" x$], anchor: "east")
        content((1.3, calc.cos(calc.pi/4)), "tg", [$"tg" x$], anchor: "west")
        content((1, -.08), [$1$], padding: 0)
        content((.87, .4), [$x$], padding: 0)
        content((.58, .8), [$P$], anchor: "west", padding: 0)
        content((1.3, 1.3), [$T$], anchor: "south-east", padding: .1)
      })
    }
  )
}),
caption: []
)<funz_trigonometria8>

Da questa costruzione emerge la seguente catena di disuguaglianze, che mette in evidenza come l'arco $x$ abbia una lunghezza compresa tra quelle del segmento $#overline[AP]$ e del segmento $#overline[BT]$:

$ 
  0 < "sen" x < x < tg x, quad forall x in (0, pi/2)
$