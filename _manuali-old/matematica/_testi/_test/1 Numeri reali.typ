#import "../../template_normal.typ": *
#import "@preview/cetz:0.5.0": *

#evidenzia[// TODO
]

== Premessa 
Un approccio comune in matematica consiste nel definire con precisione, evitando qualsiasi ambiguità, i presupposti che rimarranno invariati durante lo sviluppo dei dati o della teoria, deducendo da essi, con logica e coerenza, quante più informazioni possibili. 

In altre parole, i presupposti rappresentano le regole del gioco: avrebbero potuto essere anche differenti, ma una volta stabiliti e avviato il processo, non vengono più modificati. 

In matematica, questi presupposti prendono il nome di postulati o assiomi. Dai postulati derivano, attraverso le dimostrazioni, i risultati noti come teoremi. Il termine lemma è spesso utilizzato come sinonimo di teorema, sebbene indichi principalmente un risultato intermedio, utile per dimostrare un altro teorema; altri termini affini sono corollario e proposizione.

Il nostro punto di partenza è assumere, come postulato, l'esistenza del sistema dei numeri reali. In altre parole, supponiamo che esista un insieme di numeri, che chiamiamo numeri reali e indichiamo con $RR$. In questo insieme è possibile eseguire operazioni fondamentali come l'addizione (+), la sottrazione (-), la moltiplicazione (·) e la divisione (/), oltre a stabilire una relazione d'ordine tra due numeri qualunque.

Il concetto di numeri reali risulterà sicuramente già familiare alla maggior parte degli studenti che si accingono a leggere queste righe. Infatti, partiamo come assioma dalle regole che chiunque utilizza naturalmente nel calcolo fin dai primi anni di studio. Ad esempio, tutti sanno intuitivamente che $2 + 3$ equivale a $3 + 2$ o che $2 dot 3$ produce lo stesso risultato di $3 dot 2$. Queste osservazioni si generalizzano dicendo che, dati due numeri reali $a$ e $b$, valgono le proprietà commutative della somma e del prodotto:  
$
  a + b = b + a \ a dot b = b dot a
$

Il lettore ricorderà sicuramente anche altre proprietà fondamentali, come quella associativa, sia per la somma che per il prodotto, e la proprietà distributiva. Nel prossimo paragrafo troverete un elenco completo delle proprietà che consideriamo valide come assiomi. Tali proprietà sono suddivise in tre categorie principali: quelle relative alle operazioni, quelle riguardanti l'ordinamento e infine l'assioma di completezza.
#pagebreak(weak: true)
== Gli assiomi dei numeri reali

=== Assiomi relativi alle operazioni

Si definiscono le operazioni di addizione (+) e moltiplicazione (·) tra coppie di numeri reali, alle quali si attribuiscono le seguenti proprietà fondamentali, dove a, b e c rappresentano generici numeri reali:

+ Proprietà associativa:  
  $
    (a + b) + c = a + (b + c), \ (a dot b) dot c = a dot (b dot c)
  $
+ Proprietà commutativa  
  $ 
    a + b = b + a \ a dot b = b dot a
  $

+ Proprietà distributiva:
  $ 
    a dot (b + c) = (a dot b) + (a dot c)
  $  

+ Esistenza dell'elemento neutro: esistono in $RR$ due numeri distinti, 0 e 1, tali che per ogni numero reale $a$:
  $ 
    a + 0 = a \ a dot 1 = a
  $

+ Esistenza dell'opposto: per ogni numero reale $a$, esiste un numero reale, indicato con $-a$, tale che: 
  $ 
    a + (-a) = 0
  $

+ Esistenza dell'inverso: per ogni numero reale $a eq.not 0$, esiste un numero reale, indicato con $a^(-1)$, tale che:
  $ 
    a dot a^(-1) = 1
  $


=== Assiomi relativi all'ordinamento

Si definisce la relazione di minore o uguale ($lt.eq$) tra coppie di numeri reali, per la quale valgono le seguenti proprietà:

+ Dicotomia: per ogni coppia di numeri reali $a$ e $b$, si verifica sempre che 

  $ 
    a lt.eq b \ b lt.eq a
  $

+ Proprietà asimmetrica: se contemporaneamente valgono $a lt.eq b$ e $b lt.eq a$, allora $a = b$.

+ Compatibilità con l'addizione: se $a lt.eq b$, vale anche $a + c lt.eq b + c$. 

+ Compatibilità con la moltiplicazione: se $0 lt.eq a$ e $0 lt.eq b$, allora si ha anche che 

  $
    0 lt.eq a + b \ 0 lt.eq a dot b
  $

=== Assioma di completezza

Siano dati due insiemi non vuoti di numeri reali, $A$ e $B$, tali che per ogni elemento $a$ in $A$ ed ogni elemento $b$ in $B$ valga la relazione $a lt.eq b$. Allora esiste almeno un numero reale $c$ tale che: 

$ 
  a lt.eq c lt.eq b
$<assioma_completezza>

per qualunque scelta di $a$ in $A$ e $b$ in $B$. 

Queste appena elencate costituiscono le proprietà fondamentali dei numeri reali, assunte come assiomi iniziali nella costruzione del sistema. Da tali assiomi derivano tutte le altre proprietà e i teoremi presentati nella presente trattazione. Perfino alcune proprietà aritmetiche elementari, che spesso fanno parte del bagaglio di conoscenze matematiche acquisite dagli studenti nelle fasi iniziali del loro percorso scolastico, possono essere dimostrate come conseguenze logiche degli stessi assiomi. 

Ad esempio, il fatto che un prodotto sia nullo se almeno uno dei fattori è nullo, oppure la ben nota regola dei segni per il prodotto, secondo cui il prodotto di due numeri negativi risulta positivo. Talvolta tali proprietà vengono accettate dagli studenti delle scuole elementari come nozioni imposte senza una reale comprensione del loro fondamento logico. Un altro esempio ricorrente è la regola secondo la quale, nel risolvere disequazioni, moltiplicando entrambi i membri per una quantità negativa il senso della disuguaglianza viene invertito.

L'assioma di completezza @assioma_completezza potrebbe inizialmente apparire intuitivo: se tutti i numeri dell'insieme A sono minori o uguali a tutti i numeri dell'insieme B, allora deve necessariamente esistere un numero $c$ intermedio tra $A$ e $B$, ovvero tale che $a lt.eq c lt.eq b$, per ogni elemento $a$ di $A$ e per ogni elemento $b$ di $B$. Si potrebbe pensare, infatti, di scegliere come $c$ il massimo elemento di $A$ o il minimo elemento di $B$.

Tuttavia, questa affermazione è errata. Non tutti gli insiemi numerici possiedono un massimo o un minimo elemento. Consideriamo, ad esempio, un insieme definito come:

$
  B = {1, 1/2, 1/3, 1/4, ..., 1/n, ...}
$

che, se rappresentato sulla retta numerica, produce una struttura simile a quanto mostrato in @retta. Questo insieme ha un elemento massimo, che è 1, ma non ha un elemento minimo. Si potrebbe essere tentati di affermare che lo 0 sia il minimo elemento di $B$, ma in realtà lo 0 non appartiene a $B$. Infatti, 0 è diverso da $1/n$ per qualunque valore di $n$, poiché una frazione è nulla solo quando il suo numeratore è pari a zero.
#v(.5em)
#figure(
cetz.canvas({
  import cetz.draw: *
  
  // Linea principale
  line((-1, 0), (11, 0), mark: (end: ">"))

  // Zero (Punto vuoto) e Uno (Punto pieno)
  circle((0, 0), radius: 0.08, fill: white)
  content((0, -0.5), [$0$])

  circle((10, 0), radius: 0.08, fill: white)
  content((10, -0.4), [$1$])

  // Punti della successione 1/n (Coordinate dirette)
  circle((5, 0), radius: 0.08, fill: black);    content((5, -0.6), [$1/2$])
  circle((3.3, 0), radius: 0.08, fill: black);  content((3.3, -0.6), [$1/3$])
  circle((2.5, 0), radius: 0.08, fill: black);  content((2.5, -0.6), [$1/4$])
  circle((2, 0), radius: 0.08, fill: black);    content((2, -0.6), [$1/5$])
  circle((1.2, 0), radius: 0.08, fill: black);  content((1.2, -0.6), [$1/8$])

  // Addensamento verso lo zero (Punti piccoli manuali)
  circle((0.8, 0), radius: 0.04, fill: black)
  circle((0.6, 0), radius: 0.04, fill: black)
  circle((0.4, 0), radius: 0.04, fill: black)
  circle((0.3, 0), radius: 0.04, fill: black)
  circle((0.2, 0), radius: 0.04, fill: black)

  // Puntini di sospensione (Testo semplice)
  content((1.6, -0.4), [...], size: 7pt)
  content((0.6, -0.4), [...], size: 7pt)
}),
caption: []
)<retta>
#v(.5em)
L'assioma di completezza rappresenta, in realtà, un principio molto più profondo di quanto possa apparire a un'analisi superficiale. È proprio grazie a tale assioma che diviene possibile distinguere l'insieme dei numeri esprimibili sotto forma di frazione, noto come insieme dei numeri razionali, dall'insieme ben più ampio dei numeri reali. All'interno dell'insieme dei numeri razionali, infatti, l'assioma di completezza non si verifica, come sarà illustrato nelle analisi successive.

== Cenni di teoria degli insiemi

Introduciamo alcune notazioni e definizioni tratte dalla teoria degli insiemi. Sia $S$ un insieme di natura qualsiasi. Per indicare che $x$ è un elemento di S scriveremo:

$ 
  x in S quad quad "x appartiene a S"
$

Per indicare, invece, che $y$ non è un elemento d1 $S$, scriveremo:

$
  y in.not S quad quad "y non appartiene a S"
$

Se $A$ è un insieme i cui elementi sono anche elementi di $S$, diremo che $A$ è un sottoinsieme o parte di $S$. Tra i sotto insiemi di $S$ si considera anche l'insieme vuoto, cioè l'insieme privo di elementi, che si indica con $nothing$.

Se $A$ e $B$ sono due sotto insiemi di $S$, l'intersezione $A inter B$ di $A$ e $B$ è l'insieme degli elementi di $S$ che sono comuni ad $A$ e $B$ (vedi @intersezione):

$ 
  A inter B = {x in S : x in A quad e quad x in B}
$

L'unione $A union B$ di $A$ e $B$ è l'insieme costituito dagli elementi di $S$ che appartengono ad almeno uno dei due insiemi A e B (vedi @unione):

$ 
  A union B = {x in S: x in A quad "oppure" quad x in B}
$
Diremo che $A$ è contenuto in $B$ ($A subset B$) se ogni elemento di $A$ è anche elemento di $B$: 

$ 
  (a subset B) arrow.l.r.double.long (a in A arrow.r.double.long a in B)
$

Un sottoinsieme $A$ si definisce proprio se ogni suo elemento appartiene a $B$, ma $A$ non coincide con $B$, ovvero esiste almeno un elemento in $B$ non presente in $A$ (in questo caso si utilizza il simbolo $subset$). Un sottoinsieme si dice invece improprio se coincide con l'insieme $B$ stesso o se è l'insieme vuoto (in questo caso si utilizza il simbolo $subset.eq$).

Il simbolo $arrow.l.r.double.long$ si legge "se e solo se" ed il simbolo $arrow.r.double.long$ si legge "implica".

Se $A$ e $B$ sono due sottoinsiemi dell'insieme $S$, il complemento
$A-B$ di $B$ rispetto ad $A$ è l'insieme degli elementi di $A$ che non appartengono a $B$ (@complemento):

$
  A -B = {x in S : x in A quad e quad x in.not B}
$

In particolare, per $A = S$, l'insieme $S - B$, complemento di $B$
rispetto a $S$, si chiama anche complementare di $B$ e si indica con $B^C$ oppure con $- B$. Evidentemente si ha:

$ 
  A subset.eq B arrow.l.r.double.long B^C subset.eq A^C
$

L'insieme di tutti i sottoinsiemi di $S$ solitamente si indica con $P(S)$ e si chiama insieme delle parti di $S$. 
#v(.5em)
#grid(
  columns: (2),
  rows: (auto),
  gutter: 1em)[
#figure(
  image("/_assets/image-5.png"),
  caption: []
)<intersezione> // TODO
][
#figure(
  image("/_assets/image-6.png"),
  caption: []
)<unione> // TODO
][
#figure(
  image("/_assets/image-8.png"),
  caption: []
)<complemento> // TODO
]

== Numeri naturali, interi e razionali

Tra gli assiomi dei numeri reali troviamo l'esistenza degli elementi neutri 0 e 1. Di conseguenza, anche i risultati delle operazioni effettuate a partire da 0 e 1 apparterranno all'insieme $RR$ (dove $RR$ indica l'insieme dei numeri reali). In particolare, sono numeri reali valori come $1 + 1 = 2, (1 + 1) + 1 = 3$, e così via. Questo insieme particolare di $RR$, composto dai numeri naturali, viene indicato con:

$
  NN = {1, 2, 3, ..., n, ...}
$

Allo stesso modo, indichiamo con $ZZ$ il sottoinsieme di $RR$ costituito dagli elementi di $NN$, dai loro opposti e dallo zero. Ovvero, l'insieme dei numeri interi (o interi relativi) si rappresenta come:

$
  ZZ = {0, \u{00B1} 1, \u{00B1} 2, ...} = {0} union {\u{00B1} n : n in NN}
$

I risultati della divisione $m/n$, che, secondo la terminologia introdotta dagli assiomi, rappresenta $m dot n^(-1)$, con $m, n  in ZZ, n eq.not 0$, vengono definiti numeri razionali e indicati con:

$ 
  QQ = { m/n: m, n in ZZ, n eq.not 0}
$

Dunque, si deduce che che: 

$
  NN subset.eq ZZ subset.eq QQ subset.eq R
$

Essendo $NN$, $ZZ$, $QQ$ sottoinsiemi di $RR$, su di essi si ereditano le operazioni di addizione e moltiplicazione, oltre all'ordinamento definito in $RR$. Tuttavia, questi insiemi non soddisfano tutti gli assiomi dei numeri reali. Per esempio, l'insieme $NN$ non soddisfa l'assioma sull'esistenza degli opposti: tra i numeri naturali non esiste l'opposto di nessun elemento; $ZZ$ non soddisfa l'assioma degli inversi, poiché non esiste un inverso moltiplicativo interno a $ZZ$ per un qualsiasi intero diverso da 1 o -1: per esempio, l'inverso moltiplicativo di un intero appartiene ai numeri razionali ma non agli interi; $QQ$ soddisfa tutte le proprietà algebriche relative alle operazioni di somma e prodotto, nonché all'ordinamento. 

Ciononostante, l'assioma di completezza (@assioma_completezza) non è rispettato da $QQ$. Per comprenderlo, consideriamo i due sottoinsiemi $A$ e $B$ di $QQ$:

$ 
  A = {a in QQ: a^2 lt.eq 2} quad B = {b in QQ: b^2 gt.eq 2, b > 0}
$

Tutti gli elementi di $A$ sono minori di qualsiasi elemento di $B$. In base all'assioma di completezza, esisterebbe un numero reale $c$ tale che $a lt.eq c lt.eq b$ per ogni $a in A$, $b in B$. Questo numero unico avrebbe la proprietà $c^2 = 2$ e viene comunemente indicato con $c = sqrt(2)$. Tuttavia, si può dimostrare che $c = sqrt(2)$ non appartiene all'insieme dei numeri razionali:

=== Irrazionalità di √2

Supponiamo per assurdo che $c = sqrt(2)$ sia un numero razionale. Per definizione, esistono due numeri interi $m, n$, con $n > 0$, tali che $c = m/n$

Possiamo inoltre assumere che la frazione $m/n$ sia ridotta ai minimi termini, ovvero che $m$ e $n$ siano primi tra loro, cioè il massimo comune divisore tra $m$ e $n$ sia 1). Elevando al quadrato entrambi i membri dell'equazione otteniamo:

$ 
  c^2 = (m/n)^2 = 2 quad "cioè" quad 2n^2 = m^2
$

Questo implica che il quadrato di $m$, ovvero $m^2$, è un numero pari (perché è il doppio di un altro numero intero). Di conseguenza, anche $m$ deve essere pari (poiché il quadrato di un numero dispari è sempre dispari). Possiamo dunque scrivere $m = 2k$, dove $k$ è un intero. Sostituendo nella precedente equazione otteniamo:

$ 
  2 n^2 = m^2 = 4k^2 quad "cioè" quad n^2 = 2k^2
$

Ripetendo il ragionamento, si deduce che anche $n$ deve essere un numero pari, il che contraddice l'ipotesi secondo cui $m$ e $n$ sono numeri interi coprimi. 

In termini più semplici, possiamo riassumere dicendo che nell'insieme dei numeri naturali $NN$ è possibile eseguire operazioni come l'addizione e la moltiplicazione, ma le operazioni inverse, come la sottrazione e la divisione, non sono generalmente praticabili. L'insieme $ZZ$ rappresenta un'estensione di $NN$, consentendo anche il calcolo delle differenze, ma non dei quozienti. L'insieme $QQ$ è un'ulteriore estensione che permette di eseguire le quattro operazioni fondamentali (salvo la divisione per zero), pur restando impossibile effettuare certi calcoli utili, come ad esempio l'estrazione della radice. Come vedremo, invece, l'insieme $RR$ è abbastanza ricco da soddisfare la maggior parte delle esigenze applicative.

== Principio di induzione

Il principio di induzione matematica costituisce uno strumento fondamentale per la dimostrazione di proposizioni che coinvolgono i numeri naturali. Esaminiamo la seguente implicazione:

$ 
  0 lt.eq x_1 lt.eq x_2 arrow.r.double.long x^n_1 < x^n_2, quad forall n in NN
$<induzione>

Ci proponiamo di dimostrare questa affermazione applicando il principio di induzione. Supponiamo inizialmente che essa sia valida per un certo indice $n$. Il nostro obiettivo è dimostrare che @induzione risulta vera per ogni $n$, partendo dal presupposto che sia valida per un valore iniziale $n = 1$, il che è immediatamente verificabile (in questo caso, la proposizione è banalmente vera per $n = 1$). Assumiamo quindi di partire da alcune disuguaglianze del tipo $0 lt.eq x_1 < x_2$, $x^n_1 < x^2_n$. Si ottiene:

$ 
  x^(n +1)_1 = x_1 x^n_1 lt.eq x_2 x_1^n < x_2 x^n_2 = x^(n+1)_2
$

In tal modo, abbiamo dimostrato che se @induzione è vera per un dato indice $n$, essa risulta vera anche per l'indice successivo, $n + 1$. Pertanto, per il principio di induzione, sappiamo che @induzione è verificata per ogni naturale $n$. Ciò avviene poiché la proposizione è vera per $n = 1$; per quanto appena dimostrato, risulta valida per tutti gli indici successivi ($n=2$, $n=3$, ...). Di conseguenza, possiamo concludere che il ragionamento si estende a qualsiasi numero naturale $n$.

Formalizziamo ora il principio d'induzione in termini generali:

Supponiamo che una proposizione dipendente da un indice naturale ($n in NN$) sia verificata in due passi:  
+ La proposizione è vera per $n = 1$ (base dell'induzione).  
+ Supponendo che essa sia vera per un generico $n$, risulta essere vera anche per il successivo indice $n + 1$ (ipotesi e tesi induttiva). Allora la proposizione è valida per ogni $n in NN$.

Per meglio comprendere l'applicazione del principio d'induzione, consideriamo alcuni esempi significativi. Dimostriamo per induzione la nota formula di Gauss, che esprime la somma dei primi $n$ numeri naturali. 

=== Formula di Gauss

La somma dei numeri naturali da 1 a $n$ è uguale al semiprodotto tra $n$ e $n+1$. Indichiamo con $S(n)$ la somma dei primi $n$ numeri naturali positivi, risulta che:

$ 
  1 + 2 + 3 + ... + (n - 1) + n = (n(n + 1))/2
$<somma_numeri_naturali>

Per dimostrare la formula di Gauss si può procedere con una dimostrazione diretta oppure applicare il principio di induzione
Per $n = 1$, si ha l'identità: 

$ 
  (1 dot (1 + 2))/2 = 1
$

che è chiaramente vera.

Per $n = 50$ si ha:

$ 
  1 + 2 + ... + 50 = (50 dot (50 + 1))/2 = 1275
$

Supponiamo che la formula @somma_numeri_naturali sia vera per un certo $n + 1$. A tal fine, sommiamo entrambi i membri della formula precedente con il termine $n + 1$:

$ 
  1 + 2 + 3 + ... + n + (n + 1) &= n(n + 1)/2 + (n + 1) \ &= (n (n + 1))/2 + (2(n + 1))/2 \ &= (n(n + 1) + 2(n + 1))/2 = \ &= ((n + 1)(n + 2))/2 \ &= ((n + 1) + ((n + 1) + 1))/2
$

E quest'ultima eguaglianza è la @somma_numeri_naturali ma espressa per $n + 1$. Abbiamo così ottenuto la formula generalizzata al passo successivo. Per il principio di induzione, possiamo concludere che la formula @somma_numeri_naturali è valida per ogni $n in NN$.

Un'altra applicazione del principio di induzione è la disuguaglianza di Bernoulli.

=== Disuguaglianza di Bernoulli

Per ogni numero reale $x gt.eq -1$ e per ogni naturale $n$, risulta 

$ 
  (l + x)^n gt.eq l + n x.
$<bernoulli>

Per $ n = 1$, la proposizione è verificata (considerando il segno =). 

$ 
  (1 + x)^1 &gt.eq 1 + 1 dot x \ 1 + x &gt.eq 1 + x
$

Supponiamo che la @bernoulli sia valida per un numero naturale $n$; moltiplichiamo entrambi i membri per $1 + x$, che è una quantità maggiore o uguale a zero:

Partiamo dal termine a sinistra:
$ (1 + x)^n dot (1 + x) = (1 + x)^(n+1) $

Sviluppiamo ora il prodotto a destra:
$ (1 + n x) (1 + x) = 1 + x + n x + n x^2 $

Dunque, raccogliendo la $x$ risulterà:
$ (1 + x)^(n+1) >= 1 + (n + 1)x + n x^2 $

Poiché $n in NN$ e $x^2 >= 0$, il termine $n x^2$ è sempre non negativo ($n x^2 >= 0$). Rimuovendo un termine non negativo, il membro di destra diventa più piccolo o uguale, dunque:
$ (1 + x)^(n+1) >= 1 + (n + 1)x $

La tesi è verificata per $n + 1$, il che conclude la dimostrazione di @bernoulli.

Passiamo ora a dimostrare, utilizzando il principio di induzione, la formula che esprime la somma di una progressione geometrica di ragione $x eq.not 1$:

=== Somma di una progressione geometrica

$ 
  1 + x + x^2 + ... + x^n = (1 - x^(n + 1))/(1 - x), quad forall x eq.not 1
$<progressione>

Per $n = 1$, il secondo membro diventa:  

$ 
  (1 - x^(n + 1))/(1 - x) = ((1 - x)(1 + x))/(1 - x) = 1 + x
$

Dunque la @progressione è vera per $n = 1$. Supponendo sia verificata, sommiamo ad entrambi i membri il termine $x^(n+1)$, che si riscrive come:  

$ 
  1 + x + x^2 + ... + x^n + x^(n + 1) &= (1 - x^(n +1))/(1 - x) + x^(n + 1) \ &= (1 - x^(x + 1) + x^(n + 1) - x^(n + 2))/(1 - x) \ &= (1 - x^(n + 2))/(1 - x)
$

Si è dunque ottenuta la proposizione con $n + 1$ al posto di $n$. Perciò, in base al principio di induzione, la formula @progressione è dimostrata.

== Massimo, minimo, estremi superiore ed inferiore

Sia $A$ un insieme di numeri reali. Si definisce massimo di $A$, se esiste, un numero $M$ appartenente a $A$ tale che $M$ sia maggiore o uguale a qualunque altro elemento dell'insieme $A$. Formalmente, possiamo esprimere questa proprietà come segue:

$ 
  M "massimo di" A arrow.l.r.double.long 
    cases(
    M gt.eq a"," quad forall a in A";", 
    M in A
    ) 
$ <massimo>

In modo analogo, si definisce minimo di un insieme di numeri reali $A$, se esiste, un numero $m$ appartenente a $A$ che sia minore o uguale a ogni altro elemento di $A$. Formalmente:

$ 
  m "minimo di" A arrow.l.r.double.long 
    cases(
    m lt.eq a"," quad forall a in A";",
    m in A
    )
$ <minimo>

Tuttavia, non tutti gli insiemi di numeri reali ammettono massimo o minimo. Per esempio, l'insieme $A$ dei numeri reali positivi non ha né massimo né minimo. Non esiste, infatti, un più piccolo numero reale positivo (lo zero non è incluso in $A$), e non vi è un limite superiore che comprenda tutti gli elementi dell'insieme.

È importante notare che, se il massimo o il minimo di un insieme esiste, essi sono unici. Per dimostrare l'unicità del massimo, supponiamo per assurdo che un insieme $A$ ne possieda due distinti, chiamiamoli $M_1$ e $M_2$ per cui vale:

$ 
  M_1 gt.eq a, quad M_2 gt.eq a quad forall a in A
$

Per la definizione stessa di massimo, ogni elemento dell'insieme deve essere minore o uguale al massimo scelto. Se consideriamo $M_1$ come massimo, allora deve valere la condizione $M_1 >= M_2$, poiché $M_2$ appartiene ad $A$. Allo stesso modo, se consideriamo $M_2$ come massimo, deve valere $M_2 >= M_1$, essendo $M_1$ un elemento dell'insieme. 

Le due disuguaglianze $M_2 <= M_1$ e $M_1 <= M_2$ possono essere vere contemporaneamente solo se $M_1 = M_2$, il che contraddice l'ipotesi iniziale che i due valori fossero diversi. 

Lo stesso identico ragionamento si applica al minimo, invertendo il verso delle relazioni d'ordine: se esistessero due minimi $m_1$ e $m_2$, dovrebbero risultare l'uno minore o uguale dell'altro ($m_1 >= m_2$ e $m_2 >= m_1$), portando necessariamente alla loro coincidenza. Ne concludiamo che, se un insieme ammette massimo o minimo, questi termini non possono che essere identificati da un unico valore numerico.

Il maggiorante di un insieme è un qualsiasi elemento che è maggiore o uguale a tutti gli elementi dell'insieme. Dato un numero reale $L$, viene definito maggiorante di un insieme $A$ se $L >= a, forall a in A$. 

Allo stesso modo, si chiama minorante un qualsiasi elemento che è minore o uguale a tutti gli elementi dell'insieme. Dunque, un numero reale $ell$ è detto minorante di $A$ se $ell <= a, forall a in A$. 

Per esempio, se consideriamo l'insieme $A$ dei numeri naturali tra 5 e 9, il numero 10 è un maggiorante, così come lo sono 11, 20 o 100, mentre 4, 3 o 2 sono minoranti. Da notare che anche 9 è un maggiorante, il più piccolo di tutti), perché la definizione dice che deve essere "maggiore o uguale" a tutti gli elementi dell'insieme; pure il 5 è un minorante, il più grande della serie, per la stessa regola del "minore o uguale".

Occorre sottolineare che non tutti gli insiemi possiedono maggioranti o minoranti. Ad esempio, l'insieme dei numeri reali positivi non possiede alcun maggiorante, mentre lo zero (così come qualsiasi numero reale negativo) funge da minorante per esso.

Un insieme si dice limitato superiormente se ammette almeno un maggiorante, mentre si dice limitato inferiormente se possiede almeno un minorante. Un insieme è detto limitato (in senso assoluto) se è contemporaneamente limitato superiormente e inferiormente. In simboli ($exists$ si legge esiste/esistono):

$ 
  A "limitato" quad arrow.l.r.double.long quad exists ell, L in RR: ell <= a <= L, quad forall a in A
$

Uno dei risultati fondamentali della teoria dei numeri reali, derivante dall'assioma di completezza (@assioma_completezza), è il teorema di esistenza dell'estremo superiore.

=== Teorema di esistenza dell'estremo superiore

Consideriamo un insieme $A$ non vuoto di numeri reali che sia limitato superiormente. In tal caso, esiste il minimo tra i maggioranti dell'insieme $A$.

Esaminiamo il ragionamento alla base. Indichiamo con $B$ l'insieme dei maggioranti di $A$. Poiché $A$ è limitato superiormente, l'insieme $B$ risulta non vuoto. Applicando l'assioma di completezza @assioma_completezza agli insiemi $A$ e $B$, possiamo affermare che esiste un numero reale $M$ tale che:
$ 
  a <= M <= b, quad forall a in A, forall b in B
$
Poiché $M$ è maggiore o uguale a tutti gli elementi di $A$, esso è un maggiorante di $A$, cioè $M in B$. Inoltre, essendo minore o uguale a tutti gli elementi di $B$, $M$ soddisfa la definizione @minimo di minimo di $B$. Dunque, in base a quanto dimostrato, si può enunciare la seguente definizione: 
Sia $A$ un insieme non vuoto di numeri reali, limitato superiormente. Chiamiamo $M in RR$ l'estremo superiore di $A$ se e solo se $M$ è il minimo tra i maggioranti di $A$.  

Ciò equivale ad affermare che $M$ è un maggiorante, e che ogni numero più piccolo di $M$, ad esempio $M - epsilon$ con $epsilon > 0$, non può essere un maggiorante. In altre parole, $M - epsilon$ risulta essere minore di almeno un elemento dell'insieme $A$. In termini simbolici:

$ 
  M "estremo superiore di" A arrow.l.r.double.long 
    cases(
    M gt.eq a"," quad forall a in A";",
    forall epsilon > 0"," exists a in A: M - epsilon < a
    )
$ <estremo_superiore>

Allo stesso modo, si può dimostrare che, se A è un insieme non vuoto di numeri reali ed è limitato inferiormente, allora l'insieme dei minoranti di A possiede un massimo. In tali circostanze, si afferma che un numero m rappresenta l'estremo inferiore di A se m è il massimo dei minoranti di A. Questo equivale a dire:

$ 
  m "estremo inferiore di" A arrow.l.r.double.long 
    cases(
    m lt.eq a"," quad forall a in A";",
    forall epsilon > 0"," exists a in A: m + epsilon > a
    )
$ <estremo_inferiore>

Di conseguenza, se un insieme è limitato superiormente, esiste l'estremo superiore ed è un numero reale. Analogamente, se un insieme è limitato inferiormente, esiste l'estremo inferiore ed è anch'esso un numero reale.

L'introduzione dei simboli $oo$ e $-oo$ risulta particolarmente utile per caratterizzare gli insiemi non limitati. In termini più espliciti, consideriamo un insieme $A$ non vuoto. L'estremo superiore di $A$ assume il valore $oo$ qualora $A$ non sia limitato superiormente; analogamente, l'estremo inferiore di $A$ sarà $-oo$ se l'insieme non è limitato inferiormente. Formalizzando tutto ciò in termini simbolici, si ottiene:

$ 
  "sup" A = +oo quad &arrow.l.r.double.long quad forall L, exists a in A: a > L \ "inf" A = -oo quad &arrow.l.r.double.long quad forall ell, exists a in A: a < ell
$

Nelle relazioni sopra riportate, è sufficiente considerare valori $L > 0$ e $ell < 0$ per la trattazione.

Grazie all'utilizzo dei simboli $oo$ e $-oo$, è possibile affermare che ogni insieme non vuoto di numeri reali possiede necessariamente un estremo superiore o un estremo inferiore. Se l'insieme risulta limitato superiormente, allora l'estremo superiore sarà un numero finito; analogamente, se l'insieme è limitato inferiormente, anche l'estremo inferiore sarà un numero finito.

Per chiarire questi concetti, consideriamo alcuni esempi specifici. Se prendiamo l'insieme $A = {x in RR: x > 0}$, si verifica che:

$ 
  "sup" A = +oo, quad "inf" A = 0
$

In questo caso, né il massimo né il minimo dell'insieme $A$ esistono. Invece, nell'insieme $B = {(n - 1)/n}: n in NN$, rappresentato schematicamente nella figura @retta_sup_inf1, otteniamo:

$ 
  "sup" B = 1, quad "inf" B = "min" B = 0
$
#v(1.5em)
#figure(
cetz.canvas({
  import cetz.draw: *
  
  // 
  line((-1, 0), (11, 0), mark: (end: ">"))

  // 
  circle((0, 0), radius: 0.08, fill: white)
  content((0, 0.4), [$0$])

  circle((10, 0), radius: 0.08, fill: white)
  content((10, 0.4), [$1$])

  // 
  circle((10-5, 0), radius: 0.08, fill: black);    content((10-5, -0.6), [$1/2$])
  circle((10-3.3, 0), radius: 0.08, fill: black);  content((10-3.3, -0.6), [$1/3$])
  circle((10-2.5, 0), radius: 0.08, fill: black);  content((10-2.5, -0.6), [$1/4$])
  circle((10-2, 0), radius: 0.08, fill: black);    content((10-2, -0.6), [$1/5$])
  circle((10-1.2, 0), radius: 0.08, fill: black);  content((10-1.2, -0.6), [$1/8$])

  // 
  circle((10-0.8, 0), radius: 0.04, fill: black)
  circle((10-0.6, 0), radius: 0.04, fill: black)
  circle((10-0.4, 0), radius: 0.04, fill: black)
  circle((10-0.3, 0), radius: 0.04, fill: black)
  circle((10-0.2, 0), radius: 0.04, fill: black)

  //
  cetz.decorations.brace((10-0.8,0.1),(10-0.2,0.1), outer-inset: 0)
  content((10-0.5, 0.8), [$(n-1)/n$])

  // Puntini di sospensione (Testo semplice)
  content((1.6, -0.4), [...], size: 7pt)
  content((0.6, -0.4), [...], size: 7pt)
}),
caption: []
)<retta_sup_inf1>
#v(1em)

Infine, nel caso dell'insieme $C = {(n + 1)/n : n in NN}$, illustrato nella @retta_sup_inf2, il calcolo fornisce i seguenti risultati:

$ 
  "sup" C = "max" C = 2, quad "inf" C = 1
$

#figure(
cetz.canvas({
  import cetz.draw: *
  
line((-1, 0), (11, 0), mark: (end: ">"))

  // 
  circle((0, 0), radius: 0.08, fill: white)
  content((0, -0.5), [$1$])

  circle((10, 0), radius: 0.08, fill: white)
  content((10, -0.4), [$2$])

  // 
  circle((5, 0), radius: 0.08, fill: black);    content((5, -0.6), [$3/2$])
  circle((3.3, 0), radius: 0.08, fill: black);  content((3.3, -0.6), [$4/3$])
  circle((2.5, 0), radius: 0.08, fill: black);  content((2.5, -0.6), [$5/4$])
  circle((2, 0), radius: 0.08, fill: black);    content((2, -0.6), [$6/5$])
  circle((1.2, 0), radius: 0.08, fill: black);  content((1.2, -0.6), [$7/8$])

  // 
  circle((0.8, 0), radius: 0.04, fill: black)
  circle((0.6, 0), radius: 0.04, fill: black)
  circle((0.4, 0), radius: 0.04, fill: black)
  circle((0.3, 0), radius: 0.04, fill: black)
  circle((0.2, 0), radius: 0.04, fill: black)

  //
  cetz.decorations.brace((1-0.8,0.1),(1-0.2,0.1), outer-inset: 0)
  content((1-0.5, 0.8), [$(n+1)/n$])

  // 
  content((1.6, -0.4), [...], size: 7pt)
  content((0.6, -0.4), [...], size: 7pt)
}),
caption: []
)<retta_sup_inf2>

// TODO approfondimento

// TODO sintesi?