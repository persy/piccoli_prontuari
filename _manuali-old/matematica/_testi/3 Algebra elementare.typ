#import "../../template_normal.typ": *
#import "@preview/cetz:0.4.2" // grafici, cetz-plot richiede cetz ≥ 0.4.2 
#import "@preview/cetz-plot:0.1.3": plot, chart

// spesso ree colore divisioni, ...
#let col_linea = .5pt + main_scienze

== Monomi  

In algebra, così come in molte altre discipline matematiche, è comune utilizzare lettere per rappresentare numeri. Questo avviene, ad esempio, quando si vogliono formulare uguaglianze di carattere generale o risolvere problemi matematici.  

Prendiamo alcuni esempi: l'area di un quadrato può essere espressa con la formula $A = l^2$, in cui $l$ rappresenta la misura del lato del quadrato. Analogamente, il volume di una piramide a base rettangolare è descritto dalla formula $V = 1/3 a b h$, dove $a$ e $b$ indicano le dimensioni dei lati del rettangolo alla base e $h$ rappresenta l'altezza della piramide. Espressioni come $l^2$ e $1/3 a b h$ prendono il nome di monomi. Più precisamente, possiamo definire un monomio come segue:  

#definizione(title: "Monomio", label: <monomio>)[Un monomio è il prodotto tra fattori numerici e fattori letterali, i quali ultimi possono essere elevati a potenze con esponenti naturali. Il prodotto dei fattori numerici è riducibile a un unico termine numerico, chiamato coefficiente, mentre il prodotto dei fattori letterali viene definito parte letterale. Le lettere presenti in un monomio vengono anche dette indeterminate. ] 

#esempio[$ 3 a^2 b c^3; quad sqrt(3) m^4 n^2 z; quad (sqrt(2) + 1) p q^2 r $]  

Alcuni autori considerano monomi anche le espressioni che rientrano nella @monomio sopra riportata, ma in cui le lettere possono avere anche esponenti negativi. In tal caso, i monomi vengono chiamati frazionari. Nel nostro caso, ci limiteremo invece ai monomi con esponenti delle lettere solo positivi, che per questo motivo vengono detti interi. Questo approccio è coerente con la maggior parte dei testi di algebra e, soprattutto, con il termine polinomio, che si riferisce generalmente alla somma esclusivamente di monomi interi.  

Se in un monomio non è esplicitamente presente alcun fattore numerico, si può supporre che il coefficiente sia pari a 1. Allo stesso modo, se una lettera non appare nel monomio, si può ritenere che essa sia presente con esponente 0; questa convenzione risulta molto utile in vari contesti. Inoltre, se una lettera compare più volte nel monomio, è possibile riscrivere quest'ultimo facendo apparire la lettera una sola volta grazie alle proprietà delle potenze. Ad esempio, $a^2 b a c$ può essere riscritto come $a^3 b c$.  

I monomi costituiti da un unico fattore numerico (che di solito viene scritto per primo) e con le singole lettere presenti una sola volta sono detti in forma canonica o ridotta. D'ora in avanti, assumeremo sempre che i monomi siano presentati in questa forma canonica per semplicità di trattazione e chiarezza.

Normalmente, le lettere che formano un monomio vengono ordinate secondo la sequenza alfabetica. Due monomi che hanno la stessa parte letterale vengono definiti simili.
#v(3em)
#definizione(title: "Grado di un monomio")[L'esponente di una lettera in un monomio si definisce grado del monomio rispetto a quella specifica lettera. La somma degli esponenti di tutte le lettere presenti nel monomio determina invece il grado complessivo del monomio. I numeri reali possono essere considerati monomi di grado 0. Per quanto riguarda il polinomio nullo, ossia costituito esclusivamente dal numero reale 0, non viene assegnato alcun grado.]

È importante notare che, a differenza del monomio formato da un numero reale diverso da zero, a cui si attribuisce grado 0, al monomio nullo non viene assegnato alcun grado. Questa distinzione è strettamente legata alle proprietà del prodotto tra monomi, argomento che sarà trattato di seguito.

=== Operazioni tra monomi

Considerando che un monomio rappresenta un prodotto, è possibile eseguire operazioni tra monomi applicando le proprietà delle operazioni e delle potenze senza dover fornire nuove definizioni. Va però sottolineato che le abituali operazioni tra due monomi non sempre conducono a un nuovo monomio. Più precisamente:

#definizione(title: "Prodotto e potenza di monomi")[Il prodotto tra monomi e l'elevazione a potenza (con esponente naturale) di un monomio generano sempre un monomio. ]

Per eseguire tali operazioni, basta ricorrere alle regole della moltiplicazione e delle potenze.

#esempio[$ 3a^2 b c dot (-2a b^4x) &= -6a^3b^5c x; \ (2a b^2d^5)^3 &= 8a^3b^6d^15; \ ((-2a)^3) a^2b x^1 dot 1/9 a x^3 &= -8/9 a^6 b x^4 $]

Si osservi che il grado del prodotto di due monomi non nulli corrisponde alla somma dei gradi dei singoli monomi. Tuttavia, se uno dei fattori è il monomio nullo, il risultato sarà anch'esso un monomio nullo, poiché questo permette di mantenere valida la regola sul grado del prodotto: al monomio nullo non viene assegnato alcun grado.
#v(2em)
#definizione(title: "Quoziente di monomi")[
Il quoziente tra due monomi potrebbe non generare un nuovo monomio, poiché l'applicazione delle proprietà delle potenze e della moltiplicazione potrebbe portare a ottenere lettere con esponenti negativi.]

#esempio[$ (5a^2 b c^3) / (3a b c^2) = 5/3 a c $<monomio1>
$ (4a^2 b c^3)/(2a b^2 c) = 2 a b^(-1) c^2 $<monomio2>

Il risultato di @monomio1 rimane un monomio, mentre @monomio2, pur essendo un'espressione legittima e assumendo un preciso valore numerico nel momento in cui si sostituiscono dei numeri ad $a$, $b$ e $c$ (con $b$ diverso da 0, ovviamente), non può tuttavia essere considerato un monomio.]


#definizione(title: "Somma di monomi")[La somma di monomi, in generale, non porta a ottenere un monomio. Tuttavia, se i monomi sono simili, il risultato sarà ancora un monomio dello stesso tipo dei monomi addendi, applicando semplicemente la proprietà distributiva. Nel caso in cui i monomi non siano simili, la somma non può essere semplificata ulteriormente e rimane solo indicata. ]

#esempio()[$ 3a^2b c^3 + 2a^2b c^3 - sqrt(5)a^2b c^3 + sqrt(3)a^2b c^3 = (5 - sqrt(5) + sqrt(3))a^2b c^3 $<monomio3>
$ 3a b x^3 + 2a b x + a^2b = 3a b x^3 + 2a b x + a^2b $ <monomio4>

In @monomio3 la somma dei quattro monomi simili risulta in un unico monomio, mentre in @monomio4, siccome i monomi non sono simili, l'espressione non può essere semplificata ulteriormente.
]

#definizione(title: "MCD e mcm di monomi")[I monomi, essendo esprimibili come prodotti di fattori elevati a determinati esponenti, permettono di calcolare il Massimo Comune Divisore (MCD) e il minimo comune multiplo (mcm) seguendo principi analoghi a quelli usati per i numeri naturali scomposti in fattori primi. Per convenzione, sia nel calcolo del MCD che del mcm, il coefficiente si considera sempre uguale a 1. ]

Le regole fondamentali sono:

- MCD: si prendono le lettere comuni con il minimo esponente.
- mcm: si considerano le lettere comuni e non comuni con il massimo esponente.

#esempio[$ M C D(3a b x^3, -2a b x, 3/4a^2b) = a b $ $ m c m(3a b x^3, -2a b x, 3/4a^2b) = a^2b x^3 $]

== Polinomi

Come osservato in precedenza, la somma di monomi non simili non produce un monomio ma dà origine a un'altra categoria fondamentale in algebra: il polinomio. 

#definizione(title: "Polinomio", label: <polinomio>)[Un polinomio è una somma algebrica di monomi non simili. Anche un singolo monomio può essere considerato un polinomio. Si definisce grado del polinomio il grado massimo tra i gradi dei suoi monomi. Se tutti i monomi che lo compongono hanno lo stesso grado, il polinomio si dice omogeneo. Se un polinomio contiene un monomio di grado zero (un numero reale), esso è chiamato termine noto del polinomio. Al polinomio nullo, costituito esclusivamente dal numero reale zero, non si attribuisce alcun grado.]

=== Somma e prodotto fra polinomi

La somma e il prodotto tra polinomi si eseguono applicando le regole dell'aritmetica dei numeri reali, con particolare attenzione alla proprietà distributiva della moltiplicazione rispetto all'addizione. Il risultato è sempre un nuovo polinomio con il grado determinato come segue:
- la somma di due polinomi di grado diverso ha come risultato un polinomio il cui grado è pari al maggiore dei gradi dei due polinomi originari.
- la somma di due polinomi dello stesso grado genera un polinomio di grado pari o inferiore rispetto ai polinomi addendi.
- il grado del prodotto tra due polinomi si ottiene sommando i gradi dei due fattori.
- come per i monomi, al polinomio nullo non si assegna alcun grado.

La somma e il prodotto di polinomi non richiedono regole particolari, pertanto viene proposta una selezione di esempi esplicativi per una migliore comprensione.

#esempio[
$ (a + b)(c + d)(e + 1) = (a c + a d + b c + b d)(e + 1) = \ a c e + a c + a d e + a d + b c e + b c + b d e + b d $ 

Questo prodotto tra tre polinomi di primo grado genera un polinomio di terzo grado.
][
$ (a^2 b + b^3)(a - b) = a^3 b - a^2 b^2 + a b^3 - b^4 $

In questo caso, un polinomio omogeneo di terzo grado è moltiplicato per un polinomio omogeneo di primo grado, generando così un polinomio omogeneo di quarto grado.
][
$ (a^2 b c + a b - 2 a^2 b) + (3 a^2 c^2 + 2 a b^2 + 3 a^2 b) = \ a^2 b c + a b - 2 a^2 b + 3 a^2 c^2 + 2 a b^2 + 3 a^2 b = \  a^2 b c + a b + a^2 b + 3 a^2 c^2 + 2 a b^2 $

La somma di due polinomi di quarto grado produce anch'essa un polinomio di quarto grado.
][
$ (a b^3 - 2 a^2 b + a b) + (-a b^3 + 2 a^2 b + 3 a b^2) = \ a b^3 - a b^3 - 2 a^2 b + 2 a^2 b + a b + 3 a b^2 = a b + 3 a b^2 $

La somma tra due polinomi di quarto grado porta a un risultato di terzo grado.
]

=== Divisione tra polinomi

Quando i polinomi contengono più indeterminate, talvolta si presta attenzione solo ad alcune, trattando le altre come costanti o coefficienti. Le indeterminate "vere e proprie" sono generalmente indicate con le lettere $x, y, z$, mentre le "costanti" o i "coefficienti" vengono rappresentate con le lettere $a, b, c$.

Il polinomio più generale in una sola indeterminata, $x$, è $a x^2 + b x + c$. Il polinomio più generale in due indeterminate, $x$ e $y$, risulta essere $a x^2 + b x y + c y^2 + d x + e y + f$. I polinomi sono spesso designati da lettere maiuscole, come $A$ e $B$. 

Per mostrare esplicitamente la dipendenza dalle indeterminate, si utilizza una notazione simile a quella delle funzioni. Ad esempio, si può scrivere 

$ A(x) = a x^2 + b x + c \ B(x, y) = a x^2 + b x y + c y^2 + d x + e y + f $

Il grado di un polinomio viene indicato con la scrittura $deg(P)$. Ad esempio, $deg(a x^2 + b x + c) = 2$

Per i polinomi in una sola indeterminata è comune utilizzare la forma:

$ P(x) = a_0 + a_1 x + a_2 x^2 + dots + a_(n-1) x^(n-1) + a_n x^n $

dove ogni coefficiente si riferisce chiaramente al rispettivo monomio in $x$. In questa rappresentazione, $a_0$ è chiamato termine noto, mentre $a_n$ è detto primo coefficiente.

Per i polinomi in una indeterminata sussiste il seguente teorema, analogo a quello riportato in @divisibilità_numeri_primi valido per la divisione tra naturali.
#v(3em)
#definizione(title: "Teorema sulla divisione dei polinomi", label: <teorema_divisione_polinomi>)[
Dati due polinomi $N$ e $D$ con $deg(N) >= deg(D)$, e $D$ diverso dal polinomio nullo, esiste una e una sola coppia di polinomi $Q$ (quoziente) e $R$ (resto) tali che:
$ N = Q D + R \ deg(R) < deg(D) $
Analogamente alla divisione tra numeri naturali, $N$ è chiamato dividendo e $D$ divisore.

Inoltre, il grado del quoziente è dato da $ deg(Q) = deg(N) - deg(D) $

Se il resto $R$ è nullo, si dice che $N$ è divisibile per $D$ o che $D$ divide $N$. In questo caso, si scrive: $ D | N quad "oppure" quad D(x) | N(x) $]

Se $deg(N) < deg(D)$, il quoziente $Q$ sarebbe nullo e il resto $R$ coinciderebbe con $N$. Questo caso risulta poco significativo. L'algoritmo per determinare $Q$ e $R$ è simile a quello della divisione con resto tra numeri naturali.

#esempio[Iniziamo considerando come eseguire la divisione tra i polinomi $ N(x) = x^5 + x^2, \ D(x) = x^3 - x^2 $

Il primo passo consiste nell'ordinare i monomi di entrambi i polinomi in ordine decrescente rispetto ai gradi. Inoltre, è importante lasciare spazi vuoti nel polinomio dividendo $N(x)$, nei punti in cui non ci sono monomi presenti tra il grado più alto e quello più basso.

#align(center)[
  #grid(
  columns: 5,
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  [$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
  [#hide[0]],[],[],[],grid.cell(stroke: (left: col_linea))[],
  [],[],[],[],[],
  
  )
]

1. Dividiamo il primo monomio del dividendo $N(x)$, $x^5$, per il primo monomio del divisore $D(x)$, $x^3$, ottenendo come risultato il primo quoziente parziale, $x^2$:

  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    [#hide[0]],[],[],[],grid.cell(stroke: (left: col_linea))[$x^2#hide[- x]$],
    [],[],[],[],[],
    
    )
  ]
2. Moltiplichiamo il divisore $D(x)$ per il quoziente parziale ottenuto, $x^2$, ricavando $x^2 dot (x^3 - x^2) = x^5 - x^4$ e calcoliamo il primo resto parziale, sottraendo dal dividendo $N(x)$ il prodotto appena trovato, ovvero $(x^5 + x^2) - (x^5 - x^4) = x^4 + x^2$
  #v(3em)
  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2#hide[- x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],    
    )
  ]

  Da notare che sotto al dividendo è stato scritto il prodotto tra il divisore e il primo quoziente parziale, cambiando i segni: questo permette di eseguire un'addizione anziché una sottrazione, e ciò di solito aiuta ad evitare di commettere errori.

4. Ripetiamo il procedimento con il nuovo dividendo, $x^4 + x^2$. Dividiamo il primo monomio ($x^4$) per il primo monomio del divisore ($x^3$), ottenendo un secondo quoziente parziale, $x$:

  #align(center)[
    #grid(
    columns: 5,
    inset: (x: 12pt, y: 4pt), 
    column-gutter: 0pt,
    [#hide[x.]$x^5$],[],[],[$+x^2$],grid.cell(stroke: (left: col_linea, bottom: col_linea))[$x^3 - x^2$],
    grid.cell(stroke: (bottom: col_linea))[$-x^5$],grid.cell(stroke: (bottom: col_linea))[$+x^4$],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (bottom: col_linea))[],grid.cell(stroke: (left: col_linea))[$x^2 + x#hide[x]$],
    [],[$+x^4$],[],[$+x^2$],grid.cell(stroke: (left: col_linea))[],    
    )
  ]

5. Moltiplichiamo ancora il divisore per questo nuovo quoziente parziale ($x$), ottenendo $x dot (x^3 - x^2) = x^4 - x^3$:

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
  ]

6. Procediamo con la sottrazione per ottenere il nuovo resto parziale, $(x^4 + x^2) - (x^4 - x^3) = x^3 + x^2$

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
  ]

La divisione prosegue applicando lo stesso procedimento fino a ottenere un resto di grado inferiore a quello del divisore $D(x)$. Nel caso specifico, fermandosi quando otteniamo un grado minore di 3.

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
  ]

Il quoziente è Q(x) = $x^2 + x + 1$, il resto $R(x) = 2x^2$. Dunque
si ha ottenuto che:

$ x^5 + x^2 = (x^2 + x + 1)(x^3 - x^2) + 2x^2 $

][

Come ulteriore esempio, analizziamo la divisione tra i polinomi: $ N(x) &= 2x^4 + x^3 + x + 2 \ D(x) &= x^2 + 3 $

La procedura consiste nel dividere il primo polinomio per il secondo utilizzando la divisione polinomiale. Svolgendo i calcoli, otteniamo:

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
]

Pertanto, si può scrivere:

$ 2x^4 + x^3 + x + 2 = (2x^2 + x - 6)(x^2 + 3) - 2x + 20 $
]
È importante notare che il teorema (@teorema_divisione_polinomi) si applica ai polinomi in una sola indeterminata. Nel caso di polinomi con più variabili, è necessario selezionare una variabile da considerare come l'indeterminata principale, trattando le altre come se fossero dei coefficienti. 

La scelta della variabile principale può portare a risultati differenti. Ad esempio, consideriamo#footnote[Si osservi che in _N(a)_ abbiamo indicato prima _b_ e poi _a_, poiché _b_ funge da coefficiente, mentre in _N(b)_ abbiamo riportato prima _a_ e poi _b_, dato che in questo caso è _a_ a ricoprire il ruolo di coefficiente.] i polinomi $ a^3 + a b - b^2 \ a - b $

Si possono ottenere risultati diversi a seconda che si scelga $a$ o $b$ come indeterminate principali:
+ se consideriamo $a$ come indeterminata principale:
  $ N(a) &= a^3 + a b - b^2 \ D(a) &= a - b \ Q(a) &= a^2 + a b + b^2 + b \ R(a) &= b^3 $
  Da cui segue:
  $ a^3 + a b - b^2 = (a^2 + a b + b^2 + b)(a - b) + b^3 $
+ se invece consideriamo $b$ come indeterminata principale:
  $ N(b) &= -b^2 + a b + a^3 \ D(b) &= -b + a \ Q(b) &= b \ R(b) &= a^3 $
  Da cui segue:
  $ -b^2 + a b + a^3 = b(-b + a) + a^3 $

Questi esempi illustrano chiaramente come la scelta della variabile principale influisca sul risultato della divisione.

== Prodotti notevoli e scomposizione di polinomi
In molti casi, il calcolo del prodotto tra polinomi può essere reso più efficiente con l'ausilio di specifici accorgimenti noti come prodotti notevoli. Tali strumenti consentono di abbreviare i tempi di esecuzione nei calcoli.

Un altro aspetto tecnico di grande rilevanza nelle applicazioni riguarda la scomposizione di un polinomio nel prodotto di due o più polinomi, operazione nota come scomposizione in fattori. Anche i prodotti notevoli possono essere utilizzati a questo scopo, come avremo modo di approfondire. 

La scomposizione di un numero naturale in fattori primi ha due scopi principali:
- determinare i divisori comuni a due o più numeri, incluso il massimo comune divisore (M.C.D.).
- individuare multipli comuni a due o più numeri, più piccoli rispetto al loro prodotto diretto, incluso il minimo comune multiplo (m.c.m.).

Analogamente, per i polinomi si presentano problemi simili e si definiscono i concetti di divisore comune (compreso il massimo comune divisore) e multiplo comune (incluso il minimo comune multiplo). Le definizioni coincidono con quelle dei numeri interi, ma la complessità tecnica della scomposizione di un polinomio è decisamente maggiore rispetto a quella dei numeri interi, e non esistono regole generali applicabili a tutti i casi.

Di seguito analizzeremo alcune situazioni comuni, ricordando che il tema verrà ripreso in modo più approfondito successivamente.

#definizione(title: "Prodotto di una somma per una differenza")[ 
Se $A$ e $B$ sono due polinomi (anche costituiti da un solo monomio), si ha:
$ (A - B)(A + B) = A^2 - B^2 $
Questa formula, letta al contrario, consente di scomporre una differenza di quadrati in un prodotto.]

#v(2em)
#esempio()[$ (1/3 a - 2b) (1/3 a + 2b) = 1/9 a^2 - 4b^2 $ $ (3x + y - 3)(3x + y + 3) &= ((3x + y) - 3)((3x + y) + 3) \ &= (3x + y)^2 - 9 \ &= dots \ &= 9x^2 + 6x y + y^2 - 9 $ $ 2a^4 - b^2 = (sqrt(2)a^2 - b)(sqrt(2)a^2 + b) $ $ a^4 - 9 &= (a^2 - 3)(a^2 + 3) \ &= (a - sqrt(3))(a + sqrt(3))(a^2 + 3) $ $ (a - b)^2 - 4 &= (a - b - 2)(a - b + 2) $]

#definizione(title: "Quadrato di un binomio")[Se $A$ e $B$ sono due polinomi (anche costituiti da un solo monomio), si ha:
$ (A #math.plus.minus B)^2 = A^2 #math.plus.minus 2A B + B^2 $
Questa formula, letta al contrario, permette di trasformare alcune somme composte da tre termini in un quadrato complesso, individuando due termini che sono quadrati e uno che rappresenta il doppio prodotto tra essi.]

#esempio[$ (#h(-.3em)-1/4 x y z^2 + #sh0  2/5 x^2  y^2#h(-.3em))^2 #h(-.5em) &= #sh0  (#h(-.3em)-1/4 x y z^2#h(-.3em))^2 #h(-.5em) + 2(#h(-.3em)-1/4 x y z^2#h(-.3em))(#h(-.2em)2/5 x^2 y^2#h(-.3em)) #sh0  + #sh0  (#h(-.2em)2/5 x^2 y^2#h(-.3em))^2 \ &= 1/16 x^2 y^2 z^4 - 1/5 x^3 y^3 z^2 + 4/25 x^4 y^4 $][$ (3a - 2b - c)^2 &= [(3a - 2b) - c]^2 \ &= (3a - 2b)^2 - 2(3a - 2b)c + c^2 \ &= 9a^2 - 12a b + 4b^2 - 6a c + 4b c + c^2 $][$ (a - 2b)^4 &= [(a - 2b)^2]^2 \ &= (a^2 - 4a b + 4b^2)^2 \ &= (a^2 - 4a b)^2 + 2(a^2 - 4a b)(4b^2) + 16b^4 \ &= a^4 - 8a^3 b + 24a^2 b^2 - 32a b^3 + 16b^4 $][$ 4x^2 + 25y^2 - 20x y &= (2x)^2 + (5y)^2 - 2(2x)(5y) \ &= (2x - 5y)^2 $][  
$ -1/4 a^2 + a - 1 &= -(1/4 a^2 - a + 1) \ &= dots \ &= -(1/2 a - 1)^2. $]

#definizione(title: "Cubo di un binomio")[Se $A$ e $B$ sono due polinomi (anche costituiti da un solo monomio), si ha:  
$ (A #math.plus.minus B)^3 = A^3 #math.plus.minus 3A^2 B + 3A B^2 #math.plus.minus B^3 $
Questa formula, letta al contrario, consente di trasformare certe somme di quattro termini in un cubo, individuando opportunamente due cubi e due tripli prodotti.]

#esempio()[$ (1/4 a - 2b)^3 &= \ &= (1/4 a)^3 - 3(1/4 a)^2 (2b) + 3(1/4 a)(2b)^2 - (2b)^3 \ &= 1/64 a^3 - 3/8 a^2 b + 3a b^2 - 8b^3 $][$ (a - b + c)^3 &= \ &= [(a - b) + c]^3 \ &= (a - b)^3 + 3(a - b)^2 c + 3(a - b) c^2 + c^3 \ &= a^3 #sh0 - 3a^2 b #sh0 + 3a b^2 #sh0 - b^3 #sh0 + 3(a^2 #sh0 - 2a b #sh0 + b^2) c #sh0 + 3(a #sh0 - b) c^2 #sh0 + c^3 \ &= a^3 #sh0 - 3a^2 b #sh0 + 3a b^2 #sh0 - b^3 #sh0 + 3a^2 c #sh0 - 6a b c #sh0 + 3b^2 c #sh0 + 3a c^2 #sh0 - 3b c^2 #sh0 + c^3 $]

#definizione(title: "Potenza n-esima di un binomio")[Le formule per il quadrato e il cubo di un binomio possono essere generalizzate alla potenza $n$-esima tramite il triangolo aritmetico, noto anche come triangolo di Tartaglia o di Pascal. Le righe di questo triangolo forniscono i coefficienti dei monomi nel polinomio derivante dal calcolo di $(a + b)^n$, con $n = 0$ (prima riga), $n = 1$ (seconda riga), ecc. 

La parte letterale dei monomi si ottiene combinando i prodotti tra le potenze di $a$ e di $b$, considerando le potenze di $a$ in ordine decrescente da $n$ a 0 e quelle di $b$ in ordine crescente da 0 a $n$.]
#pagebreak(weak: true)
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

Le righe del triangolo, illustrate in @triangolo_tartaglia, si costruiscono iniziando e terminando con il numero 1. Per ogni posizione intermedia, si calcola la somma dei due numeri della riga precedente che si trovano rispettivamente a destra e a sinistra della posizione in esame. Ad esempio, nella riga con $n = 5$, si ottiene: $5 = 1 + 4$, $10 = 4 + 6$, $10 = 6 + 4$, $5 = 4 + 1$. 

È evidente che la costruzione di una riga richiede come punto di partenza quella di tutte le righe precedenti. Tuttavia, è possibile adottare un approccio alternativo utilizzando la formula del binomio di Newton, che verrà trattata nella @calcolo_combinatorio dedicata al calcolo combinatorio, e che risulta più immediata da applicare.

#esempio[Per calcolare $(a + b)^5$, i termini dell'espansione binomiale saranno sei, con le seguenti parti letterali: $a^5 b^0 = a^5$, $a^4 b$, $a^3 b^2$, $a^2 b^3$, $a b^4$, $a^0 b^5 = b^5$. I coefficienti associati saranno quelli riportati nella riga $n = 5$ del triangolo aritmetico. Pertanto, l'espansione risulterà:

$ (a + b)^5 = a^5 + 5 a^4 b + 10 a^3 b^2 + 10 a^2 b^3 + 5 a b^4 + b^5 $]

Vale la pena notare che le formule per il quadrato e il cubo rappresentano casi particolari di questa regola generale: la loro ampia diffusione e frequenza di utilizzo motivano la loro memorizzazione separata.

Nel caso di $(a - b)^n$, si può procedere scrivendo $(a + (-b))^n$ oppure, in modo equivalente, associando un segno alternato ai coefficienti (partendo dal segno "+").

#esempio()[Consideriamo il calcolo di $(a - 2b)^4$, già sviluppato in precedenza, utilizzando il triangolo aritmetico. Procedendo con l'espansione si ottiene:

$ (a - 2b)^4 = a^4 - 4(a^3)(2b) + 6(a^2)(2b)^2 - 4a(2b)^3 + (2b)^4 $

Effettuando i calcoli:
$ = a^4 - 8 a^3 b + 24 a^2 b^2 - 32 a b^3 + 16 b^4 $]

#v(4em)

#definizione(title: "Quadrato di un polinomio")[Il calcolo del quadrato di un polinomio può essere semplificato riducendo il polinomio a una somma di soli due termini, come mostrato in alcuni esempi già affrontati. Tuttavia, è molto utile tenere a mente una formula specifica che permette di velocizzare ulteriormente questo calcolo:
$ (A + B + C + D + dots)^2 = \ A^2 #sh0 + B^2 #sh0 + C^2 #sh0 + D^2 #sh0 + dots #sh0 + 2A B #sh0 + 2A C #sh0 + 2A D #sh0 + dots #sh0 + 2B C #sh0 + 2B D #sh0 + dots #sh0 + 2C D #sh0 + dots $]

In parole semplici, la formula afferma che il quadrato di un polinomio si ottiene sommando il quadrato di ciascun termine e il doppio prodotto di ogni termine per tutti quelli che seguono. In caso di termini negativi, è preferibile riscriverli come addizioni:

$ (a - b - c)^2 &= [a + (-b) + (-c)]^2 \ &= a^2 #sh0 + (-b)^2 #sh0 + (-c)^2 #sh0 + 2a(-b) #sh0 + 2a(-c) #sh0 + 2(-b)(-c) \ &= a^2 + b^2 + c^2 - 2a b - 2a c + 2b c. $
In alcune situazioni, può essere utile applicare la formula al contrario, ossia partire da una somma per giungere a una potenza. Tuttavia, questo procedimento non è sempre immediato.

#definizione(title: "Raccoglimento a fattor comune")[Il raccoglimento a fattor comune è una tecnica fondamentale per scomporre un polinomio in un prodotto, generalmente tra un monomio e un polinomio. Si basa sull'applicazione della proprietà distributiva della moltiplicazione rispetto all'addizione, letta al contrario.]

#esempio[  
$ a^2 + 3a b + a^2 x + 3a y = a(a + 3b + a x + 3y) $ $  (a + b)^2 - a - b = (a + b)^2 - (a + b) = (a + b)(a + b - 1) $
][
In alcuni casi, questa tecnica si applica anche quando non c'è un fattore comune evidente. Ad esempio:
$ x^2 + 3x + 5 = x^2 dot [1 + 3/x + 5/x^2] $
È necessario supporre che $x != 0$. Anche se in questo caso non otteniamo la scomposizione completa in fattori polinomiali, questa tecnica si rivela spesso utile, ad esempio nello studio dei limiti trattati nei corsi di analisi.]
#v(4em)
#definizione(title: "Raccoglimenti Successivi")[Questa tecnica consiste nell'applicare il raccoglimento a fattor comune a gruppi di termini del polinomio, anziché su tutto il polinomio, al fine di effettuare successivamente un ulteriore raccoglimento.]

#esempio[ 
$ a x + a y + b x + b y = a(x + y) + b(x + y) = (x + y)(a + b) $
][
 
$ a^2 x - a^2 - x + 1 &= a^2(x - 1) - (x - 1) \ &= (x - 1)(a^2 - 1) \ &= (x - 1)(a - 1)(a + 1) $
][
 
$ (x + 2y)^2 - 3x^2 - 6x y + (2x + 4y)(a + 4y) = \ = (x + 2y)(x + 2y - 3x + 2a + 8y) $]

#definizione(title: "Differenza di Potenze n-esime", label: <differenza_potenze_nesime>)[Oltre alla classica regola per la differenza di due quadrati, esiste una formula generale per la differenza delle potenze $n$-esime:

$ A^n #sh0 - B^n = (A #sh0 - B)(A^(n-1) #sh0 + A^(n-2)B #sh0 + A^(n-3)B^2 #sh0 + dots #sh0 + A B^(n-2) #sh0 + B^(n-1)) $]

Un caso speciale, molto usato, si presenta quando $n = 3$:  
$ a^3 - b^3 = (a - b)(a^2 + a b + b^2) $
Il secondo fattore qui viene spesso chiamato "falso quadrato", poiché differisce dal quadrato del binomio: contiene infatti il prodotto dei due fattori, ma non il doppio prodotto.

#definizione(title: "Differenza di potenze n-esime pari", label: <differenza_potenze_nesime_pari>)[Oltre alla formula in @differenza_potenze_nesime per la differenza di due potenze $n$-esime, nel caso in cui $n$ sia pari, risultano valide anche altre espressioni derivate dalla formula stessa (3.6) e dalla regola della differenza di quadrati: Se $n$ è pari:  
$ A^n #sh0 - B^n #sh0 = #sh0 (A #sh0 + B)(A^(n-1) #sh0 - A^(n-2)B #sh0 + A^(n-3)B^2 #sh0 - dots #sh0 + A B^(n-2) #sh0 - B^(n-1)) $ 
Sempre per $n$ pari:  
$ A^n #sh0 - B^n #sh0 = #sh0 (A #sh0 - B)(A #sh0 + B)(A^(n-2) #sh0 + A^(n-4)B^2 #sh0 + dots + A^2 B^(n-4) #sh0 + B^(n-2)) $ ]

#definizione(title: "Somma di potenze n-esime dispari", label: <differenza_potenze_nesime_dispari>)[ 
Una relazione analoga alla formula (3.6), ma per la somma di potenze $n$-esime, esiste solo quando $n$ è dispari. Si sottolinea l'importanza di ricordarsi di questo fatto:  
Se $n$ è dispari:  
$ A^n #sh0 + B^n #sh0 = #sh0 (A + B)(A^(n-1) #sh0 - A^(n-2)B #sh0 + A^(n-3)B^2 #sh0 - dots #sh0 + A B^(n-2) #sh0 + B^(n-1)) $ ]

#v(2em)
Un esempio molto frequente ed utile da memorizzare è il caso di $n = 3$:  
$ a^3 + b^3 = (a + b)(a^2 - a b + b^2) $  

In questa decomposizione, il secondo fattore è definito un "falso quadrato", poiché non corrisponde al quadrato classico di un binomio, essendo presente un prodotto semplice dei due termini invece che il doppio prodotto.  
Va detto che, pur essendo la formula in @differenza_potenze_nesime_dispari valida esclusivamente per $n$ dispari, non è sempre impossibile scomporre la somma di due potenze pari. 

#esempio()[
$ a^6 + b^6 = (a^2)^3 + (b^2)^3 = (a^2 + b^2)(a^4 - a^2 b^2 + b^4) $]  

In alcuni casi bisogna adottare particolari accorgimenti per ottenere ulteriori scomposizioni.

#esempio()[
$ a^4 + b^4 &= a^4 + 2a^2 b^2 + b^4 - 2a^2 b^2 \ &= (a^2 + b^2)^2 - (sqrt(2)a b)^2 \ &= [(a^2 + b^2) + sqrt(2)a b][(a^2 + b^2) - sqrt(2)a b] $  ]

== Divisibilità e scomposizione

Un'importante conseguenza del teorema in @teorema_divisione_polinomi afferma che, se un polinomio $N$ è divisibile per un altro polinomio $D$, si può scrivere:  

$ N = Q D $  
  
dove il polinomio $N$ risulta scomposto nel prodotto dei fattori $Q$ e $D$.

#esempio()[ 
$ (x^7 + 3x^4 - 3x^3 + 6x^2 - 2x + 3) #sh0 : #sh0 (x^3 - 2x + 3) = x^4 + 2x^2 + 1 $  

quindi:  
$ x^7 + 3x^4 - 3x^3 + 6x^2 - 2x + 3 = (x^4 + 2x^2 + 1)(x^3 - 2x + 3) $ ] 

Lo studio della divisibilità e scomposizione dei polinomi in una sola indeterminata è fondamentale e sarà approfondito ulteriormente nei prossimi paragrafi sezioni.  

#definizione(title: "Zero del polinomio")[Un numero reale $a$ si dice uno zero del polinomio $P(x)$ in una sola indeterminata $x$ se resulta che $P(a) = 0$.  ]

Il teorema fondamentale che riguarda i polinomi in una sola variabile è il seguente:
#v(1em)
#definizione(title: "Teorema del resto o di Ruffini", label: <teorema_ruffini>)[Dato un polinomio $P(x)$ di grado $n$ e un numero reale $a$, esiste un polinomio $Q(x)$ di grado $n-1$ tale che:  
$ P(x) = (x - a)Q(x) + P(a). $ ] 
Questo significa che, in base al teorema in @teorema_divisione_polinomi, il valore $P(a)$ rappresenta il resto della divisione di $P(x)$ per $x - a$. Di conseguenza, il polinomio $P(x)$ è divisibile per $x - a$ se e solo se $P(a) = 0$. In tal caso, $P(x)$ si può scrivere come:  
$ P(x) = (x - a)Q(x). $  
Vale la pena notare che $Q(x)$ potrebbe essere ancora divisibile per $x - a$. Se ciò accade, si ottiene successivamente:  
$ P(x) = (x - a)^2 Q_1(x), $  
e così via, in un processo che può continuare ulteriormente. A questo proposito si introduce la seguente definizione.

#definizione(title: "Molteplicità")[Se $P(x)$ è un polinomio di grado $n$, e $a$ è uno zero del polinomio tale che  
$ P(x) = (x - a)^m Q(x), quad m <= n, $  
dove $Q(x)$ è un polinomio tale che $a$ non è uno zero di $Q(x)$, allora $a$ si definisce uno zero con molteplicità $m$. Se $m = 1$, lo zero è detto semplice.]

#esempio()[Il polinomio $x^3 - 3x^2 + 3x + 1$ può essere espresso come $ (x - 1)^3 $
Pertanto, $1$ è uno zero con molteplicità 3, chiamato anche zero triplo.][Il polinomio $x^4 - 4x^3 + 5x^2 - 4x + 4$ può essere scritto come $ (x - 2)^2 (x^2 + 1) $
Questo implica che $2$ è uno zero con molteplicità doppia o molteplicità 2, mentre gli altri zeri reali non esistono (poiché $x^2 + 1 = 0$ non ha soluzioni reali). ][Il polinomio $x^3 - x^2 - 8x + 12$ può essere scomposto in $ (x - 2)^2 (x + 3) $
Qui, $2$ è uno zero doppio, mentre $-3$ è uno zero semplice.]

Il seguente teorema è una diretta conseguenza del teorema in @teorema_ruffini.
#v(3em)
#definizione(title: "Teorema della divisibilità simultanea")[Se un polinomio $P(x)$ è divisibile per $x - a$ e per $x - b$, con $b != a$, allora esso è anche divisibile per il prodotto $(x - a)(x - b)$.

#dimostrazione()
Sapendo che $P(x)$ è divisibile sia per $x - a$ che per $x - b$, si può scrivere:
$ P(x) = (x - a)Q_1(x) quad "e" quad P(x) = (x - b)Q_2(x), $
da cui segue che:
$ (x - a)Q_1(x) = (x - b)Q_2(x). $

Sostituendo $x = a$, si ottiene:
$ 0 = (a - b)Q_2(a), $
ovvero $Q_2(a) = 0$. Quindi, il polinomio $Q_2(x)$ deve essere divisibile per $x - a$, e possiamo scrivere:
$ Q_2(x) = (x - a)Q_3(x). $

In conclusione, riscrivendo $P(x)$, si ottiene:
$ P(x) = (x - b)(x - a)Q_3(x). $

Pertanto, $P(x)$ è divisibile per il prodotto $(x - a)(x - b)$.]

Passiamo ora ai seguenti teoremi di grande rilevanza.

#definizione(title: "Teorema del numero delle radici")[Un polinomio di grado $n$ non può avere più di $n$ zeri. Quindi, se un polinomio di grado minore o uguale a $n$ ha $n+1$ zeri, allora esso è identicamente nullo.]

#definizione(title: "Principio di identità dei polinomi")[Se due polinomi, entrambi di grado minore o uguale a $n$, assumono gli stessi valori in $n+1$ punti distinti della variabile indipendente $x$, allora i due polinomi sono identicamente uguali.]

Dai teoremi precedenti derivano due importanti proprietà:
+ un polinomio è identicamente nullo se, e solo se, tutti i suoi coefficienti sono nulli.
+ due polinomi sono identici se, e solo se, hanno tutti gli stessi coefficienti.

Per la determinazione degli zeri di un polinomio, un altro risultato importante è il seguente:

#definizione(title: "Zeri razionali di un polinomio", label: <zeri_razionali_polinomio>)[Un polinomio a coefficienti interi, nella forma:
$ P(x) = a_0 + a_1 x + a_2 x^2 + dots + a_(n-1) x^(n-1) + a_n x^n, quad a_n != 0 $
ammette uno zero razionale nella forma $alpha = p/q$, dove $p$ e $q$ sono numeri interi primi tra di loro, se e solo se:
+ $p$ è un divisore del termine noto $a_0$,
+ $q$ è un divisore del coefficiente principale $a_n$.]

Si osservi che, se un polinomio ha $a_n = 1$, diventando quindi monico, eventuali zeri razionali saranno numeri interi. In altre parole, per determinare i possibili zeri razionali di un polinomio, è necessario elencare tutti i divisori del termine noto e del primo coefficiente. Successivamente, si considerano tutte le frazioni che hanno come numeratore un divisore del termine noto e come denominatore un divisore del primo coefficiente. Poiché il numero di tali frazioni è finito, è possibile effettuare, anche manualmente, una ricerca degli eventuali zeri razionali.

#esempio[Consideriamo il polinomio $ P(x) = 15x^5 + 5x^4 + 3x^2 - 95x - 32 $

I divisori del termine noto ($-32$) e del primo coefficiente ($15$) sono: $ {#math.plus.minus 1, #math.plus.minus 2, #math.plus.minus 4, #math.plus.minus 8, #math.plus.minus 16, #math.plus.minus 32}, quad {#math.plus.minus 1, #math.plus.minus 3, #math.plus.minus 5, #math.plus.minus 15} $

Di conseguenza, i possibili zeri razionali saranno:

$ #math.plus.minus 1, #math.plus.minus 1/3, #math.plus.minus 1/5, #math.plus.minus 1/15, #math.plus.minus 2, #math.plus.minus 2/3, #math.plus.minus 2/5, #math.plus.minus 2/15, #math.plus.minus 4, #math.plus.minus 4/3, #math.plus.minus 4/5, #math.plus.minus 4/15,  #math.plus.minus 8, #math.plus.minus 8/3,\ #math.plus.minus 8/5, #math.plus.minus 8/15, #math.plus.minus 16, #math.plus.minus 16/3, #math.plus.minus 16/5, #math.plus.minus 16/15, #math.plus.minus 32, #math.plus.minus 32/3, #math.plus.minus 32/5, #math.plus.minus 32/15. $

Con un po' di pazienza si può verificare che l'unico zero razionale di questo polinomio è $-1/3$. Tuttavia, il polinomio potrebbe avere altri zeri (fino a un massimo di altri quattro), ma questi, qualora esistano, saranno necessariamente irrazionali.]

Per quanto riguarda la scomposizione di un polinomio in una variabile in fattori, individuare gli eventuali zeri svolge un ruolo cruciale. Per la ricerca degli zeri razionali è applicabile il teorema in @zeri_razionali_polinomio. Tuttavia, non esistono strumenti analoghi per identificare con certezza gli zeri irrazionali. Esistono formule esplicite per risolvere polinomi di grado minore o uguale a quattro, ma soltanto quelle relative ai polinomi di primo e secondo grado sono generalmente accessibili. Le formule per il terzo e il quarto grado richiedono l'utilizzo dei numeri complessi e non rientrano negli obiettivi di questo testo. Infine, per i polinomi di grado superiore al quarto non esiste alcuna formula generale risolutiva#footnote[All'inizio del 1800, Già Paolo Ruffini presentò una dimostrazione parziale sull'impossibilità di elaborare una formula generale che permettesse, attraverso operazioni di addizione, sottrazione, moltiplicazione, divisione e estrazioni di radici sui coefficienti, di trovare le radici di un polinomio di grado superiore al quarto. Successivamente, nel 1824, Niels Henrik Abel completò questa dimostrazione con un teorema che oggi conosciamo come il Teorema di Ruffini-Abel.].

==  Zeri di polinomi di primo e secondo grado

Per i polinomi di primo grado, individuare il singolo zero è un'operazione semplice e immediata: se il polinomio è del tipo: $ P(x) = a x + b, quad a != 0 $ lo zero è dato da $ -b/a $ ed è unico possibile. Passiamo ora a considerare i polinomi di secondo grado, per i quali è possibile utilizzare una metodologia nota come "tecnica del completamento del quadrato". È consigliabile memorizzare i passaggi della tecnica, poiché sono essenziali tanto quanto il risultato che ne deriva.

Supponiamo di avere un polinomio di secondo grado nella forma $ P(x) = a x^2 + b x + c, quad a != 0 $

Possiamo manipolare questa espressione nel seguente modo:

$ P(x) = a x^2 + b x + c &= a(x^2 + b/a x + c/a) \
&= a(x^2 + b/a x + b^2/(4a^2) - b^2/(4a^2) + c/a) \
&= a((x + b/(2a))^2 - (b^2 - 4a c)/(4a^2)) $

Da questa forma si deduce immediatamente che il segno della quantità discriminante $b^2 - 4a c$ determina il numero di zeri reali del polinomio. Analizziamo i casi:
+ Se $b^2 - 4a c < 0$, il polinomio non ha zeri reali.
+ Se $b^2 - 4a c = 0$, il polinomio si semplifica a $ a((x + b/(2a))^2) $ e l'unico zero reale è dato da $frac(-b, 2a, style: "skewed")$, che rappresenta una radice doppia.
+ Se $b^2 - 4a c > 0$, si può interpretare la quantità tra parentesi come differenza di due quadrati, da cui derivano due zeri reali distinti:  
   $ x_1 = (-b - sqrt(b^2 - 4a c)) / (2a), quad x_2 = (-b + sqrt(b^2 - 4a c)) / (2a) $

Cumulativamente, possiamo esprimere gli zeri reali nella forma standard:  
$ x_(1,2) = (-b #math.plus.minus sqrt(b^2 - 4a c)) / (2a). $

La quantità $b^2 - 4a c$ viene chiamata discriminante e indicata con il simbolo $Delta$ (delta). Il discriminante "discrimina", in base al suo segno, il numero di zeri reali del trinomio $P(x) = a x^2 + b x + c$.

Quando $Delta = 0$, si afferma che il trinomio ha "due zeri reali coincidenti". In ogni caso, indicando gli zeri reali del polinomio come $x_1$ e $x_2$ (eventualmente coincidenti) quando $Delta >= 0$, si può esprimere il trinomio nella forma scomposta seguente:  
$ P(x) = a(x - x_1)(x - x_2). $

Nel caso in cui $Delta < 0$, invece, il trinomio non può essere scomposto nei numeri reali. Questi risultati rappresentano un caso particolare derivato dal teorema fondamentale dell'algebra (vedi @teorema_fondamentale_algebra).

== Regola di Ruffini

La divisione tra un polinomio $P(x)$ e un binomio monico della forma $x - a$, dove $a$ è un numero reale, può essere effettuata non solo tramite la tradizionale tecnica di divisione tra polinomi, ma anche utilizzando un metodo alternativo, noto come regola di Ruffini. Questo metodo è particolarmente apprezzato per la sua capacità di ridurre i tempi di calcolo. Sebbene memorizzare questa tecnica non sia strettamente necessario, in quanto i metodi tradizionali sono sempre validi, è utile conoscerla per la sua praticità e diffusione.

Vale la pena notare che il nome di Paolo Ruffini è principalmente associato al teorema del resto piuttosto che a questa tecnica per le divisioni.

#esempio[Dividere il polinomio: $ 3x^5 - 5x^2 + 6 $ per il binomio: $ x - 1/3 $
Si utilizza uno schema specifico, costituito da tre righe e delimitato da barre verticali e orizzontali, come mostrato nel seguito. Nella prima riga scriviamo i coefficienti del dividendo in ordine decrescente rispetto alle potenze di $x$, sostituendo con zero i coefficienti mancanti:

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

Nella seconda riga, in corrispondenza dell'estrema sinistra, inseriamo il termine noto del divisore, cambiato di segno (in questo caso, $+1/3$). Nella terza riga "abbassiamo" direttamente il primo coefficiente del dividendo.

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

Proseguiamo poi con il calcolo: il primo coefficiente abbassato viene moltiplicato per $+1/3$...

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

...e il risultato si somma al coefficiente successivo presente nella prima riga, riportandolo nell'ultima riga.
Al completamento dello schema, i numeri della terza riga, compresi tra le barre verticali, rappresentano i coefficienti del quoziente del polinomio ottenuto.

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

Il quoziente avrà grado inferiore di uno rispetto a quello del dividendo. Il numero situato dopo l'ultima barra verticale in basso rappresenta invece il resto della divisione (che avrà grado zero, essendo il divisore equivalente a un polinomio di primo grado). Si ottiene dunque: 
$ 3x^5 - 5x^2 + 6 = (3x^4 + x^3 + 1/3 x^2 - 44/9 x - 44/27)(x - 1/3) + 442/81 $
]

== Teorema fondamentale dell'algebra  

Il teorema fondamentale dell'algebra rappresenta uno dei risultati più rilevanti riguardanti i polinomi. La sua formulazione è particolarmente chiara ed elegante nell'ambito dei numeri complessi, indicati con $CC$. Tuttavia, poiché in questo contesto ci si limita ai numeri reali, il teorema viene qui espresso in una forma adeguata.  

#definizione(title: "Teorema fondamentale dell'algebra", label: <teorema_fondamentale_algebra>)[ 
Se $P(x)$ è un polinomio di grado $n$ e $alpha_1, alpha_2, dots, alpha_r$ sono i suoi eventuali zeri reali, aventi molteplicità rispettivamente $m_1, m_2, dots, m_r$, allora è sempre possibile decomporre il polinomio nella forma seguente: 

$ P(x) #sh0  = #sh0   a_n (x #sh0 - alpha_1)^(m_1)(x #sh0 - alpha_2)^(m_2) dots (x #sh0 - alpha_r)^(m_r)(x^2 #sh0 + p_1 x #sh0 + q_1)^(s_1) dots \ dots (x^2 #sh0 + p_t x #sh0 + q_t)^(s_t) $<t_f_a1>

dove $p_1, q_1, dots, p_t, q_t$ sono numeri reali opportuni e $s_1, dots, s_t$ sono numeri interi positivi. Inoltre, tutti i trinomi di secondo grado che figurano nella decomposizione @t_f_a1 presentano un discriminante negativo, il che implica che non sono ulteriormente scindibili nei numeri reali. Vale infine la seguente relazione:  

$ n = m_1 + m_2 + dots + m_r + 2s_1 + dots + 2s_t. $ ] 

Si ricordi che, sebbene ogni polinomio a coefficienti reali possa essere effettivamente fattorizzato secondo quanto stabilito, non è garantito che tale fattorizzazione sia sempre concretamente determinabile. Questo è evidente alla luce del teorema di Ruffini-Abel in @teorema_ruffini#footnote[#show math.equation: set text(size: 10pt)
Un polinomio $P(x)$ è considerato riducibile se può essere scritto come il prodotto di due polinomi entrambi di grado pari o superiore a 1; altrimenti, è definito irriducibile. La riducibilità di un polinomio dipende dall'insieme numerico utilizzato. Ad esempio, il polinomio $x^2 - 2$ è irriducibile nel campo dei numeri razionali, ma può essere scomposto come $(x + sqrt(2))(x - sqrt(2))$ nel campo dei numeri reali. Secondo il teorema fondamentale dell'algebra, nei numeri reali i polinomi irriducibili sono solo quelli di grado 1 e quelli di grado 2 con discriminante negativo. Esplorando i numeri complessi, si scopre che gli unici polinomi irriducibili sono quelli di grado 1. Nella teoria dei polinomi, i polinomi irriducibili rivestono un ruolo fondamentale, simile a quello dei numeri primi nei numeri naturali.].  

#esempio[Si richiede di scomporre il polinomio $ P(x) = x^7 - 2x^5 + 2x^4 - 2x^3 + 2x^2 - 3x + 2 $
Per individuare eventuali zeri razionali (e nello specifico interi, dato che il polinomio è monico), si considerano i divisori del termine noto, ossia $#math.plus.minus 1$ e $#math.plus.minus 2$. Si verifica facilmente che 1 e -2 sono zeri del polinomio. Procediamo quindi con la divisione di $P(x)$, prima per $x - 1$ e successivamente per $x + 2$.

È possibile costruire uno schema unico di Ruffini come illustrato di seguito, dove la terza riga del primo schema diventa prima riga del secondo, senza dover riscrivere i coefficienti.

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


#v(2em)
Quindi:

$ x^7 - 2x^5 + 2x^4 - 2x^3 + 2x^2 - 3x + 2 = \ = (x - 1)(x + 2)(x^5 - x^4 + x^3 - x^2 + x - 1) $

Il quoziente risultante dalla prima divisione ammette ancora 1 come radice. Eseguendo una seconda divisione con il metodo di Ruffini, otteniamo:

$ x^7 - 2x^5 + 2x^4 - 2x^3 + 2x^2 - 3x + 2 = \ = (x - 1)^2 (x + 2)(x^4 + x^2 + 1) $

Un'alternativa per scomporre il polinomio $x^5 - x^4 + x^3 - x^2 + x - 1$ è quella di usare i raccoglimenti successivi:
$ &x^5 - x^4 + x^3 - x^2 + x - 1 = \ &= x^4(x - 1) + x^2(x - 1) + (x - 1) \ &= (x - 1)(x^4 + x^2 + 1) $

Con questa procedura si arriva ovviamente allo stesso risultato. Dalla forma del quoziente ottenuto, si può subito osservare che il polinomio residuo di quarto grado, $x^4 + x^2 + 1$, non possiede zeri reali. Ciò è evidente dal fatto che è la somma di due termini non negativi ($x^4$ e $x^2$, essendo potenze pari di un numero reale) più il termine costante 1, che garantisce che il risultato sarà sempre maggiore o uguale a 1.  

Notiamo tuttavia che la scomposizione effettuata non coincide con quella che utilizza solo polinomi di secondo grado o termini lineari, poiché include il termine di quarto grado. Procedendo oltre, abbiamo:
$ x^4 + x^2 + 1 &= x^4 + x^2 + 1 + x^2 - x^2 \ &= (x^4 + 2x^2 + 1) - x^2 \ &= (x^2 + 1)^2 - x^2 $

Da qui possiamo applicare la differenza di quadrati:  

$ x^4 + x^2 + 1 = (x^2 + 1 - x)(x^2 + 1 + x) $

I due trinomi di secondo grado risultanti hanno un discriminante negativo, confermando così che il polinomio non ha radici reali. Di conseguenza, possiamo riscrivere la scomposizione come segue:

$ x^7 - 2x^5 + 2x^4 - 2x^3 + 2x^2 - 3x + 2 = \ = (x - 1)^2 (x + 2)(x^2 - x + 1)(x^2 + x + 1) $
]
Un aspetto cruciale del teorema fondamentale dell'algebra consiste nel fatto che un polinomio di grado dispari deve avere almeno una radice reale. Questo succede perché, nella sua scomposizione completa in polinomi e trinomi di grado inferiore, non possono esserci esclusivamente trinomi di secondo grado con discriminante negativo.

//

== Frazioni algebriche  

Le frazioni algebriche sono espressioni che si presentano come rapporti tra polinomi, o talvolta tra monomi. Poiché si tratta comunque di frazioni, è fondamentale verificare che i denominatori non assumano mai il valore zero, dato che ciò renderebbe l'espressione priva di senso. Ad esempio, considerando l'espressione $a - b$, le lettere $a$ e $b$ possono rappresentare qualsiasi numero reale. Tuttavia, per un'espressione come $frac(1, (a - b), style: "skewed")$, diventa necessario escludere la possibilità che $a$ sia uguale a $b$, poiché in tal caso si avrebbe un denominatore zero. Questo punto va tenuto bene a mente per evitare errori grossolani.  

Per chiarire meglio il concetto, osserviamo subito un esempio.  

#esempio[Data la frazione algebrica:  
$ (a^2 - 1) / (a + 1) $  
è possibile trasformarla nel modo seguente:  
$ (a^2 - 1) / (a + 1) = ((a - 1)(a + 1)) / (a + 1) $  

Se provassimo ora a semplificare il termine $a + 1$, comune a numeratore e denominatore, otterremmo:  
$ a - 1. $  
Tuttavia, occorre considerare che nella frazione iniziale il valore $a = -1$ non era ammesso, poiché in questo caso il denominatore diventerebbe uguale a zero ($frac(0, 0, style: "skewed")$), situazione senza significato matematico. Al contrario, nel polinomio finale $a - 1$, il valore $a = -1$ risulta perfettamente valido, portando ad un risultato pari a zero.  

Pertanto, la forma corretta e completa dell'espressione è:  
$ (a^2 - 1) / (a + 1) = ((a - 1)cancel((a + 1), stroke: #(paint: main_scienze))) / cancel((a + 1), stroke: #(paint: main_scienze)) = a - 1, quad "se" quad a != -1. $ ] 

In generale, il calcolo con le frazioni algebriche segue le stesse regole delle frazioni numeriche: possiamo eseguire somme, sottrazioni, moltiplicazioni e divisioni senza dover introdurre nuove tecniche. Tuttavia, è necessario conoscere come effettuare operazioni sui polinomi, come sommare o moltiplicare polinomi, trovare un multiplo comune (o eventualmente il minimo comune multiplo) fra due o più polinomi e così via. Le difficoltà che potrebbero emergere sono esclusivamente di natura tecnica. Infatti, se ridurre più frazioni numeriche al minimo comune denominatore o semplificarle ai minimi termini è solitamente piuttosto semplice, svolgere tali operazioni con i polinomi risulta molto più complesso.  

Un aspetto importante da considerare prima di lavorare con le frazioni algebriche è la determinazione delle condizioni iniziali. Queste indicano le restrizioni di valore che garantiscono il significato matematico dell'espressione.  

Alla luce di quanto osservato, non è necessario introdurre nuove regole per operare con le frazioni algebriche. Ci limiteremo quindi a proporre alcuni esempi pratici di semplificazione di espressioni algebriche per acquisire familiarità con questi concetti.
// cancel(x^2, stroke: #(paint: main_scienze), angle: #115deg))
#esempio[ 
$ &(a^2 - 2 a + 1) / b^3 dot (a b^2 + b^2) / (a - 1) dot ((-b) / (1 - a)) = \ &= cancel((a - 1)^2, stroke: #(paint: main_scienze)) / cancel(b^3, stroke: #(paint: main_scienze), angle: #135deg) dot ((a + 1)cancel((b^2), stroke: #(paint: main_scienze), angle: #135deg) / cancel((a - 1), stroke: #(paint: main_scienze)) dot cancel(b, stroke: #(paint: main_scienze), angle: #135deg) / cancel((a - 1), stroke: #(paint: main_scienze)) \ &= a + 1 $  
I calcoli sono validi se $a != 1 and b != 0$][
$ &((x + b) / (2x - 2b) - (x - b) / (2x + 2b) - (2b^2) / (b^2 - x^2)) dot (x - b) / (2b) = \ &= ((x + b) / (2(x - b)) - (x - b) / (2(x + b)) + (2b^2) / ((x - b)(x + b))) dot (x - b) / (2b) \ &= ((x + b)^2 - (x - b)^2 + 4b^2) / (2 cancel((x - b), stroke: #(paint: main_scienze))(x + b)) dot cancel((x - b), stroke: #(paint: main_scienze)) / (2b)  \ &= (cancel(x^2, stroke: #(paint: main_scienze)) + 2b x cancel(+ b^2, stroke: #(paint: main_scienze), angle: #115deg) cancel(- x^2, stroke: #(paint: main_scienze)) + 2b x cancel(- b^2, stroke: #(paint: main_scienze), angle: #115deg) + 4b^2) / (4b(x + b)) \ &= (4b x + b^2) / (4b(x + b)) = (cancel(4b, stroke: #(paint: main_scienze))(cancel(x + b, stroke: #(paint: main_scienze), angle: #115deg))) / (cancel(4b, stroke: #(paint: main_scienze))(cancel(x + b, stroke: #(paint: main_scienze), angle: #115deg))) = 1 $  
I calcoli sono validi se $x != #math.plus.minus b and b != 0$.

][ $ (frac(1, 1 + a) + frac(a, 1 - a)) / (frac(1, 1 - a) - frac(a, 1 + a)) : (1 - frac(1 - 1/a, 1 + 1/a)) = 
frac(frac(1 - a + a + a^2, cancel(1 - a^2, stroke: #(paint: main_scienze))), frac(1 + a - a + a^2, cancel(1 - a^2, stroke: #(paint: main_scienze)))) : (1 - frac(frac(a - 1, cancel(a, stroke: #(paint: main_scienze), angle: #115deg)), frac(a + 1, cancel(a, stroke: #(paint: main_scienze), angle: #115deg)))) = $

$ = frac(cancel(1 + a^2, stroke: #(paint: main_scienze)), cancel(1 + a^2, stroke: #(paint: main_scienze))) : (1 - frac(a - 1, a + 1)) = 1 : frac(a + 1 - a + 1, a + 1) = 1 : frac(2, a + 1) = frac(a + 1, 2) . $
  
I calcoli sono validi se $a != 1 and a != -1 and a != 0$.]

== Progressioni

=== Progressioni aritmetiche

#definizione(title: "Progressione aritmetica")[Una sequenza di $n + 1$ numeri reali $a_0, a_1, a_2, dots, a_n$ è definita in progressione aritmetica se la differenza tra $a_k$ e $a_(k-1)$, per $1 <= k <= n$, è costante. Tale differenza è indicata con $d$ e viene chiamata ragione della progressione. I numeri della sequenza sono detti i termini della progressione.]  

#v(1em)
Risulta evidente che:  
$ a_1 = a_0 + d, a_2 = a_1 + d = a_0 + 2d, a_3 = a_2 + d = a_0 + 3d, dots a_k = \ = a_0 + k d, dots, a_n = a_0 + n d $  

Un'osservazione utile è che i termini $a_k$ e $a_(n-k)$, per $1 <= k <= n$, sono equidistanti dagli estremi della progressione e soddisfano la relazione: 

$ a_k + a_(n-k) = (a_0 + k d) + (a_0 + (n-k)d) = \ = a_0 + k d + a_0 + n d - k d = a_0 + a_0 + n d = a_0 + a_n $ 

da cui segue che la somma di due termini equidistanti dagli estremi è costante.  

Indicando con $S_n$ la somma dei termini della progressione ($a_0 + a_1 + dots + a_n$), si ha:  

$ 2S_n &= (a_0 + a_1 + dots + a_n) + (a_n + dots + a_1 + a_0) \ &= underbrace((a_0 + a_n) + (a_1 + a_(n-1)) + dots + (a_n + a_0), n + 1 "addendi uguali") \  &= (n+1)((a_0 + a_n)) / 2 $  

In conclusione, la somma dei termini di una progressione aritmetica è data dal prodotto del numero dei termini per la semisomma tra il primo e l'ultimo termine.

=== Progressioni Geometriche

#definizione(title: "Progressione geometrica")[ 
Una sequenza di $n + 1$ numeri reali non nulli $a_0, a_1, a_2, dots, a_n$ si dice in progressione geometrica se il rapporto tra ogni termine $a_k$ e il precedente $a_(k-1)$, per $1 <= k <= n$, è costante. Questo rapporto, indicato con $q$, viene chiamato ragione della progressione. In questo caso, i numeri considerati vengono definiti anche termini della progressione.] 

Dalla definizione segue automaticamente che:  
$ a_1 = a_0 dot q, quad a_2 = a_1 dot q = a_0 dot q^2, quad a_3 = a_2 dot q = a_0 dot q^3, dots, \ a_k = a_0 dot q^k, dots, quad a_n = a_0 dot q^n. $

Osserviamo inoltre che i termini $a_k$ e $a_(n-k)$, per $1 <= k <= n$, sono equidistanti dagli estremi e il loro prodotto resulta costante:
$ a_k dot a_(n-k) = (a_0 dot q^k) dot (a_0 dot q^(n-k)) = a_0^2 dot q^k dot q^(n-k) = a_0^2 dot q^n = a_0 dot a_n $

In altre parole, il prodotto di due termini equidistanti dagli estremi è invariabile.

Se definiamo il prodotto totale dei termini come $P_n = a_0 dot a_1 dot dots dot a_n$, allora possiamo calcolare:
$ P_n^2 = (a_0 dot a_1 dot dots dot a_n) dot (a_n dot a_(n-1) dot dots dot a_0) = (a_0 dot a_n)^(n+1) $

Di conseguenza:
$ P_n = sqrt((a_0 dot a_n)^(n+1)) = (a_0 dot a_n)^((n+1)/2) $

Quindi il prodotto complessivo dei termini di una progressione geometrica è dato dal prodotto tra il primo e l'ultimo termine elevato alla semisomma del numero dei termini.

Se inoltre definiamo la somma dei termini $S_n = a_0 + a_1 + dots + a_n$, possiamo scrivere:
$ S_n = a_0 + a_0 q + a_0 q^2 + dots + a_0 q^n = a_0 (1 + q + q^2 + dots + q^n). $
Applicando la formula della somma di una progressione geometrica finita (@differenza_potenze_nesime):
$ q^(n+1) - 1 = (q - 1)(q^n + q^(n-1) + dots + 1), $
si deduce che, per $q != 1$:
$ q^n + q^(n-1) + dots + 1 = (q^(n+1) - 1) / (q - 1). $
Da ciò deriva:
$ S_n = a_0 dot (q^(n+1) - 1) / (q - 1), quad q != 1. $
Quando invece $q = 1$, tutti i termini della progressione coincidono con $a_0$, e la loro somma si riduce semplicemente a:
$ S_n = (n + 1)a_0 $

// Esercizi #TODO