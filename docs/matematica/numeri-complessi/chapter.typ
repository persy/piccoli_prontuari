#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Numeri complessi <numeri_complessi>

#intro[In questo capitolo proponiamo un'introduzione elementare al corpo dei numeri complessi, con l'obiettivo principale di fissare i concetti fondamentali. Abbiamo adottato un approccio semplificato, partendo da una definizione "operativa" per arrivare successivamente a una sistematizzazione formale dei concetti.]

== Perché i numeri complessi?

I numeri reali vengono introdotti per risolvere problemi legati alle misure di grandezze che altrimenti sarebbero impossibili da trattare (un esempio storico rilevante è la misura della diagonale di un quadrato con lato unitario, $sqrt(2)$). La risoluzione dei problemi di misura è connessa a una proprietà cruciale dell'insieme dei numeri reali: la proprietà dell'estremo superiore. Ogni sottoinsieme non vuoto e superiormente limitato di numeri reali possiede un estremo superiore. 

Dal punto di vista della struttura algebrica, $RR$ è un campo commutativo: un insieme in cui le operazioni di somma e prodotto soddisfano tutte le proprietà desiderabili (associatività, commutatività, esistenza dell'elemento neutro e del simmetrico, distributività).

Tuttavia, resta irrisolto un problema notevole anche nell'insieme dei reali: la risolubilità di alcune equazioni algebriche. Prendiamo ad esempio l'equazione:
$ x^2 + 1 = 0 $
che non ha soluzioni in $RR$, a differenza dell'equazione $x^2 - 1 = 0$ che ne ha due ($x = ±1$). 

È un limite evidente che alcune equazioni abbiano un numero di soluzioni pari al loro grado, mentre altre non ne abbiano alcuna o ne abbiano meno. Questa situazione non riguarda solo le equazioni di secondo grado. Consideriamo ad esempio:
- $x^3 + 2x^2 + 3x + 2 = 0$, che ha solo la soluzione reale $x = -1$;
- $x^3 + 2x^2 - x - 2 = 0$, che presenta tre soluzioni reali distinte: $x = -1$, $x = 1$ e $x = -2$.

Questo ci spinge a estendere l'insieme dei numeri reali introducendo il nuovo insieme dei numeri complessi. Questa espansione non solo risolve il problema delle radici delle equazioni algebriche, ma introduce anche proprietà fondamentali per diversi campi della matematica e della fisica.

== Introduzione informale

Il problema che ci spinge a introdurre un nuovo tipo di numeri è legato alla risoluzione di alcune equazioni, a partire dalla più semplice:
$ x^2 + 1 = 0 $

L'impossibilità di risolvere questa equazione è dovuta al fatto che non esiste alcun numero reale il cui quadrato sia $-1$. Proviamo a superare il problema "inventando" un nuovo elemento, che indicheremo con $i$ e chiameremo unità immaginaria, con la proprietà che il suo quadrato sia il numero reale $-1$:
$ i^2 = -1 $

Procediamo trattando questo nuovo elemento come una variabile in un'espressione algebrica, mantenendo tutte le consuete proprietà delle operazioni sui numeri reali e applicando la regola $i^2 = -1$:

#esempio[
- $i^3 = i^2 dot i = (-1) i = -i$
- $i^4 = i^2 dot i^2 = (-1)(-1) = 1$
- $(1 + i)(1 - i) = 1 - i^2 = 1 - (-1) = 2$
- $(1 - 2i)(3 + i) = 3 + i - 6i - 2i^2 = 3 - 5i - 2(-1) = 5 - 5i$
- $(2 + i)^3 = 8 + 12i + 6i^2 + i^3 = 8 + 12i - 6 - i = 2 + 11i$
- $(2 + i) / (3 + 2i) = ((2 + i)(3 - 2i)) / ((3 + 2i)(3 - 2i)) = (6 - 4i + 3i - 2i^2) / (9 - 4(-1)) = (8 - i) / 13 = 8/13 - 1/13 i$
- $1 + 2i + i / (2 - i) = 1 + 2i + (i(2 + i)) / ((2 - i)(2 + i)) = 1 + 2i + (-1 + 2i) / 5 = 4/5 + 12/5 i$
]

Come si vede dagli esempi, semplificando le espressioni algebriche si riesce sempre a scrivere il risultato nella forma $a + b i$, con $a, b in RR$.

Per quanto riguarda le radici quadrate di numeri reali negativi, la nuova regola consente di estendere il calcolo in modo naturale. Ad esempio, per la radice di $-5$:
$ sqrt(-5) = sqrt((-1) dot 5) = sqrt(-1) sqrt(5) = i sqrt(5) $

Pertanto, questa logica si applica anche ad altri numeri negativi. Tuttavia, proprio come per i numeri reali, esiste un secondo numero il cui quadrato è $-5$, ovvero $-i sqrt(5)$.

Ci si potrebbe chiedere se sia possibile calcolare le radici quadrate anche di questi nuovi oggetti scritti nella forma $a + b i$.

#esempio[Considerare il numero $1 + i$ e trovare due numeri reali $x$ e $y$ tali che:
$ (x + i y)^2 = 1 + i $

Sviluppando il quadrato:
$ (x^2 - y^2) + 2x y i = 1 + i $

Uguagliando la parte reale e la parte immaginaria, si ottiene il sistema:
$ cases(
  x^2 - y^2 = 1,
  2x y = 1
) $

Risolvendo il sistema rispetto a $x, y in RR$, si trovano le due soluzioni:
$ z_1 = sqrt((sqrt(2) + 1) / 2) + i sqrt((sqrt(2) - 1) / 2) $
$ z_2 = -sqrt((sqrt(2) + 1) / 2) - i sqrt((sqrt(2) - 1) / 2) $]

#esempio[Considerare l'equazione $x^3 + 1 = 0$ e trovare i numeri il cui cubo è $-1$. 

Scomponendo in fattori:
$ (x + 1)(x^2 - x + 1) = 0 $

Oltre alla soluzione reale $x = -1$, risolvendo l'equazione di secondo grado $x^2 - x + 1 = 0$ si trovano altre due soluzioni distinte:
$ x = 1/2 ± (sqrt(3)) / 2 i $

L'equazione $x^3 + 1 = 0$ ammette quindi tre soluzioni distinte nei complessi, esattamente pari al suo grado.]

In altre parole, per costruire un insieme numerico in cui sia sempre possibile calcolare le radici quadrate, abbiamo introdotto l'unità immaginaria $i$ con la proprietà $i^2 = -1$. Questo permette di operare con espressioni della forma $a + i b$, ovvero con coppie ordinate di numeri reali $(a, b)$.

Bisogna proprio partire dalle coppie di numeri reali per definire formalmente il campo dei numeri complessi, in modo del tutto analogo a come si costruiscono i numeri razionali a partire dalle coppie di interi (frazioni).

== Definizioni e proprietà

#definizione(title: "Campo dei numeri complessi", label: <def-campo-complessi>)[Dato l'insieme $RR^2 = \{(a, b) | a in RR "e" b in RR\}$, le operazioni di addizione e di moltiplicazione sono valide nei seguenti modi:
  $ (a, b) + (c, d) = (a + c, b + d) \ (a, b) dot (c, d) = (a c - b d, a d + b c) $

L'insieme $RR^2$, dotato di queste due operazioni, si indica con $CC$ ed è chiamato campo dei numeri complessi.]

La prima operazione si basa sulla somma componente per componente, mentre la seconda formalizza algebricamente i calcoli presentati nell'approccio informale. È facile verificare che queste operazioni soddisfano le proprietà fondamentali dei campi:
- associatività:
  - per l'addizione: $ [(a,b)+(c,d)]+(e,f)=(a+c,b+d)+(e,f)=(a+c+e,b+d+f) $ $ (a,b)+[(c,d)+(e,f)]=(a,b)+(c+e,d+f)=(a+c+e,b+d+f) $
  - per la moltiplicazione: $ [(a,b)(c,d)](e,f)=(a c - b d, a d + b c)(e,f)= \ = (a c e - b d e - a d f - b c f, a c f - b d f + a d e + b c e) $ $ (a,b)[(c,d)(e,f)]=(a,b)(c e - d f, c f + d e) = \ =(a c e - b d e - a d f - b c f, a c f - b d f + a d e + b c e) $
- esistenza dell'elemento neutro:
  - per l'addizione: $(0,0)$, poiché $(a,b)+(0,0)=(0,0)+(a,b)=(a,b)$
  - per la moltiplicazione: $(1,0)$, poiché $(a,b)(1,0)=(1,0)(a,b)=(a,b)$ 
- esistenza del simmetrico:
  - per l'addizione (opposto): $(-a, -b)$, infatti $(a, b) + (-a, -b) = (0, 0)$
  - per la moltiplicazione (reciproco): se $(a, b) != (0, 0)$, il simmetrico è
    $ (a / (a^2 + b^2), -b / (a^2 + b^2)) $
    infatti $(a, b) dot (a / (a^2 + b^2), -b / (a^2 + b^2)) = (1, 0)$
- commutatività:
  - per l'addizione: $ (a+b)+(c+d)=(a+c,b+d)=(c,d)+(a,b) $
  - per la moltiplicazione: $ (a,b)(c,d)=(a c - b d, a d + b c)=(c,d)(a,b) $
- distributività della moltiplicazione rispetto all'addizione:
  $ (a,b)[(c,d)+(e,f)] = (a,b)(c+e,d+f) = \ =(a c + a e - b d - b f, a d + a f + b d + b f) $ 
    $ (a,b)[(c,d)+(e,f)] = (a,b)(c,d)+(a,b)(e,f) = \ =(a c - b d, a d + b c)+(a e - b f, a f + b e) = \ =(a c + a e - b d - b f, a d + a f + b d + b f) $

=== Immersione di $RR$ in $CC$

In $CC$, i numeri della forma $(a, 0)$ si comportano esattamente come i corrispondenti numeri reali $a$ rispetto alle operazioni di addizione e moltiplicazione:
$ (a, 0) + (b, 0) = (a + b, 0) $
$ (a, 0) dot (b, 0) = (a b, 0) $

È quindi possibile identificare ciascun elemento $(a, 0) in CC$ con il numero reale $a in RR$, tramite l'isomorfismo $(a, 0) |-> a$. In questo senso, il campo dei numeri complessi $CC$ costituisce un'estensione del campo dei numeri reali $RR$.

=== Forma algebrica e unità immaginaria

Si può osservare come la coppia $(a, b)$ possa essere espressa come:
$ (a, b) = (a, 0) + (0, 1)(b, 0) = a + (0, 1)b $

È possibile dunque rappresentare i nuovi numeri come somma di uno dei vecchi numeri più uno dei vecchi numeri moltiplicato sempre per la coppia (0,1). Di conseguenza, si può calcolare il quadrato della coppia $(0, 1)$ in questa maniera:
$ (0, 1)^2 = (0, 1)(0, 1) = (-1, 0) = -1 $

Risulta quindi più facile definire l'unità immaginaria $i = (0, 1)$, introdotta precedentemente come un artifizio e che soddisfa la proprietà $i^2 = -1$. Ogni numero complesso $z = (a, b)$ si può dunque scrivere nella sua forma algebrica (o rettangolare):
$ z = a + i b $
dove $a = "Re "z$ è la parte reale e $b = "Im "z$ è la parte immaginaria. Grazie a questa notazione e alla regola $i^2 = -1$, le operazioni di addizione e moltiplicazione si eseguono con le consuete regole del calcolo letterale.

== Proprietà dei complessi

=== Complessi e ordine

L'insieme dei numeri complessi rappresenta un'estensione di quello dei numeri reali, preservandone alcune caratteristiche essenziali, come la struttura algebrica. Tuttavia, esiste una differenza fondamentale: non è possibile introdurre un ordine compatibile con le operazioni algebriche.

Per essere significativo, un ordinamento su una struttura algebrica $K$ deve integrarsi con le sue operazioni. Nello specifico, $K$ è un campo commutativo ordinato se:
1. è un campo commutativo, ovvero sono definite addizione e moltiplicazione con le note proprietà algebriche
2. è definito un ordine totale e due elementi sono sempre confrontabili con $<=$
3. posto $K^+ = \{x in K | x > 0\}$, valgono le seguenti proprietà:
  - se $x, y in K^+$, allora $x + y in K^+ and x y in K^+$
  - per ogni $x in K without \{0\}$, si ha $x in K^+ or -x in K^+$
  - $0 in.not K^+$
  - $x <= y <==> y - x = 0 or y - x in K^+$

Gli elementi di $K^+$ sono detti positivi, mentre i rimanenti elementi non nulli sono detti negativi.

Si può dedurre che in ogni campo commutativo ordinato valgano le seguenti proprietà:
- se $k > 0$, allora $-k < 0$ (altrimenti $k + (-k) = 0 in K^+$, il che contraddice la definizione);
- per ogni $k != 0$, si ha $k^2 > 0$. Infatti, se $k > 0$, allora $k^2 in K^+$ per chiusura del prodotto; se $k < 0$, allora $-k > 0$ e $(-k)^2 = k^2 > 0$. 

Da quest'ultima proprietà segue che $1 = 1^2 > 0$ e, di conseguenza, $-1 < 0$. Questo risultato mostra chiaramente perché $CC$ non può essere un campo ordinato: se $i != 0$, dovremmo avere $i^2 > 0$. Tuttavia, per definizione $i^2 = -1 < 0$, il che genera una contraddizione.

In $CC$, dunque, non è possibile stabilire relazioni d'ordine del tipo $z_1 < z_2$ o definire un numero complesso come positivo o negativo: due numeri complessi possono unicamente essere confrontati per uguaglianza o diversità.

=== Modulo di un numero complesso

Consideriamo un numero complesso $z = a + i b$. Il suo modulo è un numero reale non negativo definito come:
$ rho.alt = |z| = sqrt(a^2 + b^2) $

Il modulo di un numero complesso gode di proprietà analoghe a quelle del valore assoluto in $RR$:
- disuguaglianza triangolare: $|z + w| <= |z| + |w|$
- modulo del prodotto: $|z w| = |z| |w|$

Di seguito vengono proposte le dimostrazioni delle proprietà appena elencate.
1. Disuguaglianza triangolare:  
  
  Dati $z = a + i b$ e $w = c + i d$, la disuguaglianza equivale a:
  $ sqrt((a + c)^2 + (b + d)^2) <= sqrt(a^2 + b^2) + sqrt(c^2 + d^2) $

  Elevando entrambi i membri al quadrato (poiché non negativi):
  $ (a + c)^2 + (b + d)^2 <= a^2 + b^2 + c^2 + d^2 + 2 sqrt((a^2 + b^2)(c^2 + d^2)) $
  $ a^2 + 2a c + c^2 + b^2 + 2b d + d^2 <= a^2 + b^2 + c^2 + d^2 + 2 sqrt((a^2 + b^2)(c^2 + d^2)) $

  Semplificando e dividendo per $2$:
  $ a c + b d <= sqrt((a^2 + b^2)(c^2 + d^2)) $

  Elevando nuovamente al quadrato:
  $ (a c + b d)^2 <= (a^2 + b^2)(c^2 + d^2) $
  $ a^2 c^2 + 2a b c d + b^2 d^2 <= a^2 c^2 + a^2 d^2 + b^2 c^2 + b^2 d^2 $
  $ 0 <= a^2 d^2 - 2a b c d + b^2 c^2 <==> 0 <= (a d - b c)^2 $

  L'ultima disuguaglianza è sempre verificata in $RR$, il che completa la dimostrazione.

2. Modulo del prodotto:  
  
  Poiché $z w = (a c - b d) + i (a d + b c)$, l'uguaglianza $|z w| = |z| |w|$ equivale a:
  $ sqrt((a c - b d)^2 + (a d + b c)^2) = sqrt(a^2 + b^2) sqrt(c^2 + d^2) $

  Elevando al quadrato ed espandendo i membri:
  $ (a c - b d)^2 + (a d + b c)^2 &= a^2 c^2 - 2a b c d + b^2 d^2 + a^2 d^2 + 2a b c d + b^2 c^2 \
  &= a^2 c^2 + a^2 d^2 + b^2 c^2 + b^2 d^2 \
  &= (a^2 + b^2)(c^2 + d^2) $

  L'uguaglianza è identicamente verificata.

==== Differenze tra modulo complesso e valore assoluto reale

Risulta fondamentale saper riconoscere alcune differenze operative tra il modulo nei numeri reali e quello nei numeri complessi.

- $|z|^2 != z^2$: il modulo al quadrato è sempre un reale non negativo ($|z|^2 = a^2 + b^2$), mentre il quadrato di un complesso è in generale complesso ($z^2 = a^2 - b^2 + 2i a b$).
- relazione con il coniugato: $|z|^2 = |z^2|$; il primo membro vale $a^2 + b^2$, mentre per il secondo  si ricava che: $|z^2| = sqrt((a^2-b^2)^2 + 4a^2b^2) = sqrt((a^2+b^2)^2)$, ovvero $a^2 + b^2$
- $|z| != sqrt(z)$: per capirlo basta considerare $z = i$,; nel primo membro si ottiene $1$, mentre nel secondo membro $plus.minus i$. Va ricordato che per i numeri reali il modulo di un numero $x$ può essere definito anche come $|x| = sqrt(x^2), space x in R$. 

  È importante notare che abbiamo indicato nel secondo membro il valore $plus.minus i$. Questo potrebbe sembrare insolito, dato che, nei numeri reali, con il simbolo $sqrt(a)$ si indica un solo numero se $a > 0$. Tuttavia, la convenzione per i numeri complessi è diversa.

=== Coniugato di un numero complesso

Dato un numero complesso $z = a + i b$, il suo coniugato è definito come $ overline(z) = a - i b $

Questa operazione possiede le seguenti proprietà fondamentali:
- $overline(z + w) = overline(z) + overline(w)$
- $overline(z dot w) = overline(z) dot overline(w)$
- $overline(overline(z)) = z$
- $z dot overline(z) = |z|^2$
- $z = overline(z) <==> z in RR$
- $z + overline(z) in RR, quad forall z in CC$

== Forma trigonometrica

=== Piano di Gauss

Ancora più che per i numeri reali, una rappresentazione grafica adeguata dei numeri complessi è essenziale. La rappresentazione grafica più naturale avviene su un piano cartesiano, detto piano di Gauss (o di Argand-Gauss), in cui l'asse delle ascisse è chiamato asse reale e l'asse delle ordinate asse immaginario.

Poiché la somma dei numeri complessi è definita componente per componente, possiamo identificare ogni complesso $z = a + i b$ con il vettore applicato nell'origine $O$ e di estremo $(a, b)$. La somma tra numeri complessi corrisponde quindi alla somma vettoriale mediante la regola del parallelogramma.

#grafico_somma_complessi

=== Forma trigonometrica o polare

L'interpretazione grafica del prodotto di numeri complessi può risultare complicata in forma algebrica, motivo per cui è utile adottare una diversa modalità di rappresentazione. Considerando il numero complesso $z = x + i y$ sul piano di Gauss, definiamo:
- modulo $r = |z|$, la distanza del punto $(x, y)$ dall'origine $O$
- argomento principale (o anomalia) $theta.alt = "arg"(z)$, l'angolo orientato in senso antiorario formato dalla semiretta uscente dall'origine e passante per $z$ con il semiasse positivo delle ascisse

L'argomento principale appartiene solitamente all'intervallo $[0, 2pi[$ (o $[0°, 360°[$), oppure $]-pi, pi]$ (o $]-180°, 180°]$). La rappresentazione di $z eq.not 0$ mediante la coppia modulo-argomento principale $(r, theta.alt)$ è evidentemente univoca, con l'eccezione per $z = 0$, il cui modulo è nullo ($r = 0$) e l'argomento non è definito.

Quando si ammettono valori angolari superiori a $2 pi$ o negativi, si parla semplicemente di argomento di $z$. In tal caso la rappresentazione non è più univoca, ma facilita i calcoli. Un numero complesso può essere dunque rappresentato attraverso la coppia (modulo, argomento) invece che con la coppia (parte reale, parte immaginaria). Nel primo caso si utilizza la forma trigonometrica, anche conosciuta come forma polare, mentre nel secondo caso si adotta la tradizionale forma algebrica#footnote[Alcuni software distinguono queste due rappresentazioni utilizzando la notazione classica di coppia con parentesi tonde e virgola, $(x, y)$, per la forma algebrica, e notazioni con parentesi tonde ma con punto e virgola o due punti come separatori: $(rho.alt; theta.alt)$ oppure $(rho.alt : theta.alt)$.]. 

==== Uguaglianza tra numeri complessi in forma polare

Si noti che, dati due numeri complessi $z_1 = (x_1, y_1) = (r_1, theta.alt_1)$ e $z_2 = (x_2, y_2) = (r_2, theta.alt_2)$, essi sono uguali ($z_1 = z_2$) se e solo se:

  $ cases(x_1 = x_2, y_1 = y_2) quad "oppure" quad  cases(rho.alt_1 = rho.alt_2, theta.alt_1 = theta.alt_2 + 2k pi\, quad k in ZZ) $

a seconda che i numeri risultino in forma algebrica o polare. 
=== Conversione tra rappresentazioni

La conversione dalla forma polare a quella algebrica sfrutta le definizioni delle funzioni trigonometriche:
$ x = rho.alt cos theta.alt $
$ y = rho.alt sin theta.alt $

da cui la forma trigonometrica del numero complesso:
$ z = x + i y = rho.alt (cos theta.alt + i sin theta.alt) $

Per il passaggio inverso, il modulo è dato da:
$ rho.alt = |z| = sqrt(x^2 + y^2) $

L'argomento $theta.alt$ si determina risolvendo il sistema:
$ cos theta.alt = x / sqrt(x^2 + y^2), quad sin theta.alt = y / sqrt(x^2 + y^2) $

Prima di ogni altra cosa, si individua il quadrante di $theta.alt$ in base ai segni della parte reale $x$ e della parte immaginaria $y$; successivamente, attraverso una delle due formule, sarà possibile calcolare l'argomento.

=== Prodotto e quoziente in forma trigonometrica

Dati due numeri complessi: $ z = x + i y = rho.alt (cos theta.alt + i sin theta.alt), \ w = a + i t =  r (cos phi + i sin phi) $
Il loro prodotto e quoziente si ottiene attraverso queste formule:

$ z dot w &= rho.alt r [(cos theta.alt  cos phi - sin theta.alt  sin phi) + i (cos theta.alt  sin phi + sin theta.alt  cos phi)] = \ &= rho.alt r [cos(theta.alt  + phi) + i sin(theta.alt  + phi)] $

$ z / w &= rho.alt / r (cos theta.alt  + i sin theta.alt ) / (cos phi + i sin phi) = \ &= rho.alt / r ((cos theta.alt  + i sin theta.alt )(cos phi - i sin phi)) / ((cos phi + i sin phi)(cos phi - i sin phi)) = ... \ &= rho.alt / r [cos(theta.alt  - phi) + i sin(theta.alt  - phi)]. $

In notazione sintetica con coppie $(rho, theta.alt)$:
$ (rho.alt_1, theta.alt_1) dot (rho.alt_2, theta.alt_2) = (rho.alt_1 rho.alt_2, theta.alt_1 + theta.alt_2) $ <eq-prodotto-complesso>
$ (rho.alt_1, theta.alt_1) / (rho.alt_2, theta.alt_2) = (rho.alt_1 / rho.alt_2, theta.alt_1 - theta.alt_2) $ <eq-quoziente-complesso>

Il modulo del prodotto e del quoziente di due numeri complessi corrisponde rispettivamente al prodotto e al quoziente dei loro moduli. Per quanto riguarda l'argomento, quello del prodotto si ottiene sommando gli argomenti dei due numeri, mentre quello del quoziente si determina sottraendoli.

==== Potenze e formula di de Moivre
//! arrivato qui
Considerando la formula del binomio di Newton insieme alla @eq-prodotto-complesso, è possibile ora esprimere la potenza $n$-esima di un numero complesso, sia nella sua forma algebrica che in quella trigonometrica.

$ z^n : cases(
  (x + i y)^n = display(binom(n, 0)) x^n + display(binom(n, 1)) x^(n-1) (i y) + ... + display(binom(n, n)) (i y)^n,
  (rho.alt, theta.alt)^n = (rho.alt^n, n theta.alt)\, quad "oppure" quad (rho.alt (cos theta.alt + i sin theta.alt))^n = rho.alt^n (cos n theta.alt + i sin n theta.alt)
) $

La seconda formula, conosciuta come formula di de Moivre, è particolarmente semplice da comprendere. La sua dimostrazione, tuttavia, richiede l'utilizzo del principio di induzione, che supera gli obiettivi di questo testo. Vale la pena notare che questa formula è valida per qualsiasi valore intero di $n in ZZ$.

Per $n = 0$, la soluzione diventa banale:

$ (rho.alt, theta.alt)^0 = (rho.alt^0, 0 dot theta.alt) = (1, 0) $

ovvero si ottiene l'elemento neutro della moltiplicazione, ossia il numero reale $1$.

Per $rho.alt.alt = 1$ si ottiene la formula di de Moivre, valida per ogni $n in ZZ$:
$ (cos theta.alt + i sin theta.alt)^n = cos(n theta.alt) + i sin(n theta.alt) $

Per $n < 0$ risulta che:
$ (cos theta.alt + i sin theta.alt)^n = \ = 1 / (cos theta.alt + i sin theta.alt)^(-n) = 1 / (cos(-n theta.alt) + i sin(-n theta.alt)) = 1 / (cos(n theta.alt) - i sin(n theta.alt)) = \ = 1 / (cos(n theta.alt) - i sin(n theta.alt)) (cos(n theta.alt) + i sin(n theta.alt)) / (cos(n theta.alt) + i sin(n theta.alt)) = (cos(n theta.alt) + i sin(n theta.alt)) / (cos^2 (n theta.alt) + sin^2 (n theta.alt)) = \ = cos(n theta.alt) + i sin(n theta.alt) $

Utilizzando la formula di de Moivre insieme alla formula del binomio di Newton per calcolare la potenza $n$-esima di un numero complesso espresso in forma trigonometrica, è possibile determinare facilmente $cos(n theta.alt) e sin(n theta.alt)$ in termini di $cos theta.alt$ e $sin theta.alt$.

Per $n = 3$:
$ (cos theta.alt + i sin theta.alt)^3 = cos(3 theta.alt) + i sin(3 theta.alt) = \ = binom(3, 0) cos^3 theta.alt + binom(3, 1) cos^2 theta.alt (i sin theta.alt) + binom(3, 2) cos theta.alt i^2 sin^2 theta.alt + binom(3, 3) i^3 sin^3 theta.alt = \ = cos^3 theta.alt - 3 cos theta.alt sin^2 theta.alt + i (3 cos^2 theta.alt sin theta.alt - sin^3 theta.alt) $

da qui, uguagliando parte reale e parte immaginaria, risulta che:

$ cos(3 theta.alt) = cos^3 theta.alt - 3 cos theta.alt sin^2 theta.alt = 4 cos^3 theta.alt - 3 cos theta.alt, \ sin(3 theta.alt) = 3 cos^2 theta.alt sin theta.alt - sin^3 theta.alt = 3 sin theta.alt - 4 sin^3 theta.alt $

in accordo con le formule di triplicazione @eq-triplicazione, già affrontate nella @goniometria_trigonometria. //! verificare rimandi

=== Prodotto e rotazioni nel piano di Gauss

La formula del prodotto di due numeri complessi in forma trigonometrica ammette una semplice interpretazione geometrica: il prodotto tra $z = x + i y = rho(cos theta.alt + i sin theta.alt)$ e $w s + i t = r(cos phi + i sin phi)$ rappresenta una dilatazione del vettore $z$ di un fattore $r = |w|$, seguita da una rotazione di un angolo $phi$ in senso antiorario.

Se $w$ ha modulo unitario ($r = 1$), la trasformazione è una pura rotazione. In particolare, la moltiplicazione per $w = i$ corrisponde a una rotazione di $90°$.

#grafico_prodotto_complessi

Questa proprietà lega i numeri complessi alle trasformazioni geometriche del piano e trova applicazione in fisica e in elettrotecnica, come lo studio dei circuiti in corrente alternata.

== Radici nei complessi

La formula di de Moivre permette di ricavare la formula per il calcolo delle radici $n$-esime in $CC$.

#definizione(title: "Teorema 14.1 — Radici n-esime in CC", label: <teo-radici-complessi>)[Per ogni numero complesso $alpha = a + i b = (rho, theta.alt)$ non nullo, esistono esattamente $n$ radici $n$-esime distinte $z_0, z_1, ..., z_(n-1)$ tali che $(z_k)^n = alpha$ e vale la formula:
$ z_k = (root(n, rho.alt), (theta.alt + 2k pi) / n) = \ = root(n, rho.alt) (cos (theta.alt + 2k pi) / n + i sin (theta.alt + 2k pi) / n), quad k in {0, 1, 2, ..., n - 1} $

#dimostrazione()
Posto $z = (r, phi)$, la condizione $z^n = alpha$ equivale in forma polare a $(r^n, n phi) = (rho, theta.alt)$, ossia:
$ cases(r^n = rho, n phi = theta.alt + 2k pi) => cases(r = root(n, rho), phi = display((theta.alt + 2k pi) / n)) $

Per la periodicità delle funzioni trigonometriche, assegnando a $k$ i valori $0, 1, ..., n - 1$ si ottengono esattamente $n$ numeri complessi distinti.]

==== Confronto con il caso reale

Come è già noto, nel campo dei numeri reali $RR$:
- se $n$ è dispari, ogni $a in RR$ ha un'unica radice reale $root(n, a)$
- se $n$ è pari e $a > 0$, esistono due radici reali opposte ($+root(n, a)$ e $-root(n, a)$)
- se $n$ è pari e $a < 0$, non esiste alcuna radice reale
- se $a = 0$, l'unica radice è $0$

In $CC$, invece, ogni numero complesso $alpha != 0$ ammette sempre esattamente $n$ radici $n$-esime distinte.

==== Notazione per le radici nel campo complesso

Mentre nel campo reale il simbolo $root(n, a)$ indica un unico numero reale, in $CC$ non è possibile distinguere un valore "positivo" o privilegiato. Pertanto, per un numero complesso $alpha != 0$, il simbolo $root(n, alpha)$ rappresenta l'intero insieme delle $n$ radici $n$-esime.

Sia $alpha = a + i b = (rho.alt, theta.alt)$:
$ quad root(n, alpha) = { (root(n, rho.alt), (theta.alt + 2k pi) / n), quad k in {0, 1, 2, ..., n - 1} } $

oppure, in forma trigonometrica:

$ root(n, alpha) = { root(n, rho.alt) (cos (theta.alt + 2k pi) / n + i sin (theta.alt + 2k pi) / n), quad k in {0, 1, 2, ..., n - 1} } $

Poiché in $CC$ il simbolo $sqrt(dot.op)$ indica già l'insieme di entrambe le radici quadrate (l'una opposta dell'altra), la formula risolutiva delle equazioni di secondo grado in $CC$ si esprime in forma compatta senza il doppio segno $±$:
- in $RR$, con $b^2 - 4a c >= 0$:
  $ x_(1,2) = (-b ± sqrt(b^2 - 4a c)) / (2a) $
- in $CC$, per qualsiasi discriminante:
  $ z_(1,2) = (-b + sqrt(b^2 - 4a c)) / (2a) $

Le consuete proprietà dei radicali valide in $RR$ vanno tuttavia applicate con cautela in $CC$, interpretandole nel contesto delle operazioni tra insiemi.

È importante osservare che le tradizionali proprietà dei radicali in R devono essere opportunamente adattate, solitamente interpretandole nell'ambito della teoria degli insiemi:
- l'espressione $(root(n, alpha))^n$ equivale sempre a $alpha$, indipendentemente dall'elemento scelto nell'insieme $root(n, alpha)$.
- è più corretto scrivere $alpha in root(n, alpha^n)$ anziché $alpha = root(n, alpha^n)$, poiché $alpha$ è un numero complesso mentre $root(n, alpha^n)$ è un insieme di numeri complessi. Ad esempio:
  - $root(2, 2^2) = \{-2, 2\}$
  - $root(3, 2^3) = lr(\{2, -1/2 + i sqrt(3)/2, -1/2 - i sqrt(3)/2\})$
- l'identità $root(n, root(m, alpha)) = root(n m, alpha)$ è un'uguaglianza tra insiemi formati ciascuno da $n dot m$ elementi.
- l'espressione $root(n, alpha) dot root(n, beta) = root(n, alpha beta)$ va intesa come l'insieme ottenuto moltiplicando ogni elemento del primo insieme per ogni elemento del secondo. Anche se il prodotto cartesiano produce $n^2$ combinazioni, solo $n$ di esse risultano distinte. Ad esempio:
  $ root(2, 4) dot root(2, 9) = \{-2, 2\} dot \{-3, 3\} = \{-6, 6, 6, -6\} = \{-6, 6\} = root(2, 36) $

Vale la pena ancora ricordare che tutte queste espressioni in $RR$ risultano errate.

=== Radici dell'unità

Il caso $alpha = 1$ è di fondamentale importanza. Infatti, ora tutte le radici $n$-esime dell'unità hanno modulo $rho.alt = 1$ e giacciono sulla circonferenza goniometrica nel piano di Gauss. Il numero $1$, poiché ovviamente $1^n = 1$, appartiene sempre all'insieme delle radici $n$-esime per qualsiasi $n$. Si evidenzia, inoltre, che gli argomenti delle radici risultano essere, in ordine $0, (2pi)/n, (4pi)/n, dots, (2(n-1)pi)/n$. Questi, posti nel piano di Gauss, individuano i vertici di un poligono regolare di $n$ lati inscritto nella circonferenza unitaria con un vertice in $(1, 0)$. Questa osservazione rende chiaro il collegamento fra il calcolo algebrico delle radici e il problema classico della ciclotomia, ossia la divisione della circonferenza in $n$ parti uguali.

#grafici_radici_nesime

Per un generico numero complesso $alpha eq.not 0$, se $z_0$ è una sua radice $n$-esima particolare, tutte le altre si ottengono moltiplicando $z_0$ per le $n$ radici $n$-esime dell'unità:
$ root(n, alpha) = z_0 dot root(n, 1) $

=== Radici quadrate

Il calcolo delle radici quadrate ha un rilievo particolare per la risoluzione delle equazioni di secondo grado. Sebbene la forma trigonometrica fornisca un metodo generale, quando un numero complesso $z = a + i b$ è fornito in forma algebrica la determinazione esatta dell'argomento $theta.alt$ richiede l'uso di $arccos$ o $arcsin$, rendendo difficile l'espressione esplicita delle radici a meno di angoli notevoli.

#esempio[$ root(3, -1) = root(3, (1, pi)) = { (1, (pi + 2k pi) / 3), k in {0, 1, 2} } = $
$ = { cos (pi + 2k pi) / 3 + i sin (pi + 2k pi) / 3, k in {0, 1, 2} } $

I calcoli per ottenere coseno e seno possono essere eseguiti con facilità.][
$ root(7, -1) = root(7, (1, pi)) = { (1, (pi + 2k pi) / 7), k in {0, 1, 2, 3, 4, 5, 6} } = $
$ = { cos (pi + 2k pi) / 7 + i sin (pi + 2k pi) / 7, k in {0, 1, 2, 3, 4, 5, 6} } $

Questa volta, i calcoli del coseno e seno conducono a un vicolo cieco, in quanto non è possibile dividere con riga e compasso in sette parti la circonferenza.][$ root(3, 1/2 + i sqrt(3)/2) = root(3, (1, pi/3)) = { (1, (pi/3 + 2k pi) / 3), k in {0, 1, 2} } = $
$ = { cos (pi/3 + 2k pi) / 3 + i sin (pi/3 + 2k pi) / 3, k in {0, 1, 2} } $

Anche questa volta, i calcoli non possono proseguire, poiché non è possibile trisecare un ancolo di $pi/3$ con riga e compasso]

Per quanto riguarda le radici quadrate/* #footnote[In realtà anche delle radici $n$-esime dove $n$ è una potenza di 2.] */, esistono due approcci diretti che evitano il calcolo esplicito dell'angolo:
+ dato $z = a + i b = rho.alt (cos theta.alt + i sin theta.alt)$, le radici quadrate hanno argomento $theta.alt/2$. Sfruttando le formule di bisezione per seno e coseno e determinando il segno corretto in base al quadrante di $theta.alt/2$, si ottengono le componenti algebriche senza passare dall'angolo
+ per calcolare $sqrt(a + i b)$, si cercano direttamente $x, y in RR$ tali che: $ (x + i y)^2 = a + i b $ 

Sviluppando il quadrato e uguagliando parti reali e immaginarie si ottiene:

$ (x + i y)^2 = x^2 + 2 i x y + i^2 y^2 = (x^2 - y^2) + i(2 x y) $
$ cases(
  x^2 - y^2 = a,
  2x y = b
) $

Si aggiunge la condizione, alla prima equazione, sul modulo $x^2 + y^2 = sqrt(a^2 + b^2)$ e si ricavano le formule esplicite per $x$ e $y$:
$ x = ± sqrt((sqrt(a^2 + b^2) + a) / 2) $
$ y = "sgn"(b) dot (sqrt((sqrt(a^2 + b^2) - a) / 2)) $

Nella seconda funzione viene utilizzata la funzione $"sgn"$ poiché essa pone un vincolo sul segno del prodotto $x y$:
- se $b > 0$, $x$ e $y$ devono avere lo stesso segno, ovvero entrambi positivi o negativi
- se $b < 0$, $x$ e $y$ devono essere di segni opposti

Poiché $x = plus.minus sqrt(dots)$ ha già il doppio segno $ plus.minus$, moltiplicare $y$ per la funzione segno $"sgn"(b)$ garantisce automaticamente che il segno scelto per $y$ segua la concordanza prescritta da $2 x y = b$. //! da verificare

#esempio[Calcolare $sqrt(3 - 4i)$. Utilizzando la risoluzione algebrica, si imposta il sistema:
$ cases(x^2 - y^2 = 3, 2x y = -4) $

Poiché $x^2 + y^2 = sqrt(3^2 + (-4)^2) = 5$, si ha:
$ x^2 = (5 + 3)/2 = 4 => x = ± 2 $
$ y^2 = (5 - 3)/2 = 1 => y = minus.plus 1 quad ("poiché" quad 2x y = -4 < 0) $

Le due radici quadrate di $3 - 4i$ sono quindi $±(2 - i)$.

Utilizzando invece la formula trigonometrica:

$ sqrt(3 - 4 i) = sqrt((5, theta.alt)) = { (sqrt(5), theta.alt / 2), (sqrt(5), theta.alt / 2 + pi) } = \ = ± sqrt(5) (cos theta.alt / 2 + i sin theta.alt / 2), quad cases(cos theta.alt = 3/5, sin theta.alt = 4/5) $

Anche se l'argomento $theta.alt$ non può essere espresso in termini di angoli notevoli, è comunque possibile effettuare i calcoli utilizzando le formule di bisezione menzionate. Considerando che $(3 pi)/2 < theta.alt < 2 pi$ e dunque $(3 pi)/4 < theta.alt/2 < pi$, si trova facilmente:

$ sqrt(3 - 4 i) = plus.minus sqrt(5) (- 2/(sqrt(5)) + 1/(sqrt(5))) = plus.minus(2 + i) $

] //! verificare che i due metodi
#pagebreak()
== Teorema fondamentale dell'algebra

Considerando un polinomio a coefficienti complessi di grado $n >= 1$. Come è ben noto, si definisce radice di un polinomio un numero complesso $w$ che annulla il polinomio stesso. Il teorema fondamentale dell'algebra afferma che ogni polinomio di questo tipo possiede almeno una radice, sia essa reale o complessa. Sebbene la dimostrazione di questo teorema vada oltre gli scopi di queste pagine, è opportuno sottolineare che esso riveste un'importanza fondamentale, tanto che la sua validità nell'ambito dei numeri complessi contribuisce a valorizzare l'importanza di questo insieme numerico. 

Si consideri: $ P(z) = a_n z^n + a_(n-1) z^(n-1) + ... + a_1 z + a_0, quad n>=1, a_n != 0 $ un polinomio di grado $n$ e $z_1$ una sua radice. Per il teorema di Ruffini risulterà che: $ P(z) = (z - z_1)Q_1(z) $

dove $Q_1(z)$ è il polinomio di grado $n - 1$ ottenuto dividendo $P$ per $z - z_1$. Anche $Q_1(z)$ è un polinomio e quindi avrà almeno una radice, per cui è possibile scrivere $ P(z) = (z - z_1)(z - z_2)Q_2(z) $

Ripetendo il procedimento, sarà possibile concludere che il polinomio $P$ può essere sempre scritto come il prodotto di una costante, che deve necessariamente essere uguale ad $a_n$, per $n$ fattori di primo grado:

$ P(z) = a_n (z - z_1)(z - z_2) ... (z - z_n) $

I numeri $z_1, z_2, ..., z_n in CC$ sono le radici di $P(z)$, non necessariamente distinte:
- se alcune radici coincidono, il numero di volte in cui una radice compare nella scomposizione si dice molteplicità.
- contando ogni radice con la relativa molteplicità, ogni polinomio di grado $n$ ammette esattamente $n$ radici in $CC$.

Se i coefficienti di $P(z)$ sono numeri reali ($a_k in RR$) e si considerano una radice $w$ e la sua complessa coniugata $overline(w)$, sfruttando le proprietà del coniugato#footnote[Ricordando che il coniugato di un reale è il numero stesso.] si ottiene che:

$ P(w) #hs0 = #hs0 a_n #hs0 w^n #hs0 + #hs0 a_(n-1) w^(n-1) #hs0 +  ... #hs0 + #hs0 a_1 w #hs0 + #hs0 a_0 = 0 => \ => overline(a_n w^n + a_(n-1) w^(n-1) + ... + a_1 w + a_0) = 0 \
 => overline(a_n w^n) + overline(a_(n-1) w^(n-1)) + ... + overline(a_1 w) + overline(a_0) = 0 \
 => a_n overline(w^n) + a_(n-1) overline(w^(n-1)) + ... + a_1 overline(w) + a_0 = 0 \
 => a_n overline(w)^n + a_(n-1) overline(w)^(n-1) + ... + a_1 overline(w) + a_0 = 0 $

e dunque: 
$ P(w) = 0 ==> P(overline(w)) = 0 $


Moltiplicando i due fattori lineari corrispondenti a una coppia di radici coniugate $w = alpha + i beta$ e $overline(w) = alpha - i beta$ si ottiene:
$ (z - w)(z - overline(w)) = z^2 - (w + overline(w))z + w overline(w) = z^2 - 2 alpha z + (alpha^2 + beta^2) $

Questo è un trinomio di secondo grado a coefficienti reali con discriminante negativo ($Delta < 0$).

Si deduce quindi che ogni polinomio a coefficienti reali si scompone in $RR[z]$ in un prodotto di fattori reali di primo grado e di secondo grado irriducibili, mentre invece ogni polinomio a coefficienti reali di grado dispari possiede almeno una radice reale.