#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *
#import "../shared.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Algebra lineare e geometria spaziale <algebra_lineare_geometria_spaziale>

#intro[In questo capitolo si introducono gli strumenti fondamentali dell'algebra lineare (matrici, sistemi di equazioni lineari e calcolo vettoriale) e se ne mostra l'applicazione allo studio della geometria analitica, estesa in questa sede dal piano allo spazio tridimensionale. Le matrici e le loro operazioni forniscono il linguaggio per rappresentare in forma compatta i sistemi lineari, la cui risolubilità è governata dal teorema di Rouché-Capelli e la cui soluzione può essere ottenuta con la regola di Cramer o con il metodo di eliminazione di Gauss. Il calcolo vettoriale, con i prodotti scalare, vettoriale e misto, permette poi di esprimere in modo naturale le condizioni di parallelismo, perpendicolarità e complanarità, e di ricavare le equazioni di rette e piani nello spazio a partire da quelle già note per la retta nel piano. La trattazione è volutamente semplificata e non include le dimostrazioni dei risultati presentati.]

== Matrici e operazioni tra matrici

Abbiamo fatto una breve introduzione al concetto di matrice già nella @equazioni_sistemi. Espandiamo questo concetto anche al caso di matrici non quadrate e con qualunque numero di righe e di colonne.

#definizione(title: "Matrice m × n", label: <def-matrice>)[Viene definita matrice $A$ di dimensione $m times n$, indicata con $A_(m times n)$ o $A_(m, n)$, una tabella di numeri reali disposti su $m$ righe e $n$ colonne:

$ A = mat(
  a_(11), a_(12), ..., a_(1n);
  a_(21), a_(22), ..., a_(2n);
  dots.v, dots.v, dots.down, dots.v;
  a_(m_1), a_(m_2), ..., a_(m_n)
) $]

Gli elementi della matrice, definiti $a_(i j)$, sono identificati da due indici posti a pedice. Il primo indice $i$ indica la riga in cui si trova il numero e varia da $1$ fino al numero totale di righe $m$, mentre il secondo indice $j$ individua la colonna e varia da $1$ fino al numero totale di colonne $n$. Di conseguenza, una notazione come $a_(23)$ indica semplicemente l'elemento posizionato al secondo livello verticale e alla terza colonna da sinistra.

Per rappresentare in modo sintetico una matrice senza dover tracciare per intero la tabella, si racchiude il generico elemento tra parentesi, scrivendo $ A = (a_(i j)), quad quad i = 1, 2, dots, m, quad j = 1,2, dots, n $ e specificando l'intervallo dei due indici. Qualora i valori di righe e colonne superino le singole cifre e possano generare dubbi di lettura, si separa i due indici con una virgola scriverndo $a_(i,j)$. Inoltre, se si vuole precisare subito la dimensione complessiva della matrice, si aggiunge a pedice del nome la sua dimensione $m times n$.

Quando $m != n$, la matrice si definisce rettangolare. Se invece $m = n$, la matrice viene detta quadrata e il numero comune di righe e colonne è chiamato ordine della matrice. Nelle matrici quadrate, gli elementi $a_(i i)$ formano la diagonale principale. Talvolta, può essere utile considerare anche l'altra diagonale, nota come diagonale secondaria, sempre nelle matrici quadrate. Quando $m = 1$, ossia c'è una sola riga, la matrice è chiamata vettore riga; mentre se $n = 1$, ovvero c'è una sola colonna, si parla di vettore colonna.

#definizione(title: "Uguaglianza tra matrici", label: <def-uguaglianza-matrici>)[Due matrici $A, B$ di pari dimensioni $m times n$ sono uguali ($A = B$) se e solo se gli elementi corrispondenti coincido:
$ a_(i j) = b_(i j) quad forall i, j $]

#definizione(title: "Matrice trasposta", label: <def-matrice-trasposta>)[Data una matrice $A$ di dimensione $m times n$, la trasposta $A^T$ è la matrice di dimensione $n times m$ ottenuta scambiando ordinatamente le righe con le colonne di $A$:

$ A = mat(
  a_(11), a_(12), ..., a_(1n);
  a_(21), a_(22), ..., a_(2n);
  dots.v, dots.v, dots.down, dots.v;
  a_(m 1), a_(m 2), ..., a_(m n)
), quad
A^T = mat(
  a_(11), a_(21), ..., a_(m 1);
  a_(12), a_(22), ..., a_(m 2);
  dots.v, dots.v, dots.down, dots.v;
  a_(1n), a_(2n), ..., a_(m n)
) $]

#esempio[Data la matrice $A$ di dimensione $2 times 4$:
$ A = mat(1, 2, 3, 4; 5, 6, 7, 8) $

la sua trasposta $A^T$ di dimensione $4 times 2$ è:
$ A^T = mat(1, 5; 2, 6; 3, 7; 4, 8) $]

Per prevenire eventuali confusioni che possono sorgere nella rappresentazione dei vettori colonna, si adotta spesso la convenzione di esprimere questi vettori come trasposizioni di vettori riga. In tal modo, si utilizzano comunemente delle virgole per separare i singoli elementi del vettore, similmente a come si fa nelle n-uple. I vettori colonna vengono tradizionalmente indicati con lettere minuscole in grassetto oppure sormontate da una freccia, per distinguere chiaramente il loro stato e funzione nel contesto matematico o scientifico in cui vengono utilizzati. Un vettore colonna $v$ di dimensione $n times 1$ può essere espresso in forma trasposta per risparmiare spazio:
$ arrow(v) = arrow(v) = vec(v_1, v_2, dots.v, v_n) = (v_1, v_2, ..., v_n)^T $

=== Tipi particolari di matrici quadrate

Alcune tipologie di matrici quadrate compaiono frequentemente nelle applicazioni e per descriverle si adotta la seguente terminologia e i simboli  specifici:
- matrice simmetrica: $ a_(i j) = a_(j i) $ ossia: $ A = A^T $
- matrice diagonale: $ a_(i j) = 0 quad forall i != j $ gli elementi fuori dalla diagonale principale sono nulli

- matrice triangolare superiore: $ a_(i j) = 0 quad forall i > j $ gli elementi sotto la diagonale principale sono nulli
- matrice triangolare inferiore: $ a_(i j) = 0 quad forall i < j $ gli elementi sopra la diagonale principale sono nulli
- matrice identità (o unità): è matrice diagonale con tutti $1$ sulla diagonale principale ($a_(i i) = 1$, $a_(i j) = 0$ per $i != j$). Si indica con $I$ o $I_n$
- matrice nulla: è una matrice, anche rettangolare, formata da soli zeri e si indica con $0$
- matrice opposta: è una matrice che ha come elementi gli opposti $-a_(i j)$ di $A$ e si indica con $-A$

=== Operazioni fondamentali

#definizione(title: "Somma di matrici", label: <def-somma-matrici>)[Date due matrici $A, B$ delle stesse dimensioni $m times n$, la loro somma $A + B$ è la matrice $C$ di dimensioni $m times n$ il cui generico elemento è $c_(i j) = a_(i j) + b_(i j)$:

$ A + B = mat(
  a_(11) + b_(11), a_(12) + b_(12), ..., a_(1n) + b_(1n);
  a_(21) + b_(21), a_(22) + b_(22), ..., a_(2n) + b_(2n);
  dots.v, dots.v, dots.down, dots.v;
  a_(m 1) + b_(m 1), a_(m 2) + b_(m 2), ..., a_(m n) + b_(m n)
) $]

#definizione(title: "Prodotto di una matrice per uno scalare", label: <def-prodotto-matrice-scalare>)[Data una matrice $A$ e un numero reale $c in RR$, il prodotto $c A$ è la matrice ottenuta moltiplicando ciascun elemento di $A$ per $c$:

$ c A = mat(
  c a_(11), c a_(12), ..., c a_(1n);
  c a_(21), c a_(22), ..., c a_(2n);
  dots.v, dots.v, dots.down, dots.v;
  c a_(m 1), c a_(m 2), ..., c a_(m n)
) $]

Per queste operazioni valgono le seguenti proprietà:
- associativa della somma: $ (A + B) + C = A + (B + C) $
- commutativa della somma: $ A + B = B + A $
- elemento neutro: $ A + 0 = A $
- esistenza dell'opposto: $ A + (-A) = 0 $
- distributività rispetto alla somma di matrici: $ c(A + B) = c A + c B $
- distributività rispetto alla somma di scalari: $ (c + d)A = c A + d A $
- prodotto per zero: $ 0 A = 0 $
- prodotto per $-1$: $ (-1)A = -A $

=== Prodotto righe per colonne

#definizione(title: "Prodotto righe per colonne di due matrici", label: <def-prodotto-matrici>)[Date due matrici $A_(m, p)$ e $B_(p, n)$, il loro prodotto righe per colonne è la matrice $C_(m , n)$, il cui generico elemento $c_(i j)$ (con $i = 1, ..., m$ e $j = 1, ..., n$) è la somma dei prodotti degli elementi della $i$-esima riga di $A$ per i corrispondenti elementi della $j$-esima colonna di $B$, ovvero:

$ c_(i j) = a_(i 1) b_(1 j) + a_(i 2) b_(2 j) + ... + a_(i p) b_(p j) = sum_(k=1)^p a_(i k) b_(k j) $
]
Gli elementi $c_(i j)$ si ricavano moltiplicando ordinatamente gli elementi della $i$-esima riga di $A$ per la $j$-esima colonna di B e sommando i prodotti così ottenuti. Va notato che il prodotto $A B$ è definito se e solo se il numero di colonne di $A$ è uguale al numero di righe di $B$.

#esempio[Moltiplicare una matrice $A_(2 times 3)$ per una matrice $B_(3 times 4)$. Si ottiene una matrice $C_(2 times 4)$:

$ mat(
    1, -2, 4;
    hlc(-3), hlc(-1), hlc(5)
  )
  dot
  mat(
    2, 1, hlc(-2), 3;
    1, -1, hlc(3), 4;
    5, 2, hlc(1), 3
  )
  =
  mat(
    20, 11, -4, 7;
    18, 8, hlc(8), 2
  ) $

L'elemento $c_(2 3) = 8$ nella seconda riga e terza colonna della matrice prodotto si calcola moltiplicando la $2^a$ riga di $A$ per la $3^a$ colonna di $B$:
$ c_(2 3) = (-3) dot (-2) + (-1) dot 3 + 5 dot 1 = 6 - 3 + 5 = 8 $]

//!arrivato qui
Nel caso speciale del prodotto tra matrici quadrate, queste devono avere lo stesso ordine; in tal caso, sia $A B$ che $B A$ sono sempre definiti. Tuttavia, è possibile che AB sia diverso da $B A$. Se $A B$ è uguale a $B A$, si dice che le matrici $A$ e $B$ commutano; altrimenti, si dice che non commutano.

#esempio[Calcolare il prodotto $C = A B$ tra la matrice $A_(2 times 4)$ e la matrice $B_(4 times 3)$:

$ A = mat(2, 3, -1, 4; 1, 0, -1, 2), quad B = mat(1, 0, 2; 2, 1, -3; 0, 0, 1; 1, 0, 2) $

Gli elementi di $C_(2 times 3)$ sono:
- $c_(11) = 2 dot 1 + 3 dot 2 + (-1) dot 0 + 4 dot 1 = 10$
- $c_(12) = 2 dot 0 + 3 dot 1 + (-1) dot 0 + 4 dot 0 = 3$
- $c_(13) = 2 dot 2 + 3 dot (-3) + (-1) dot 1 + 4 dot 2 = 2$
- $c_(21) = 1 dot 1 + 0 dot 2 + (-1) dot 0 + 2 dot 1 = 3$
- $c_(22) = 1 dot 0 + 0 dot 1 + (-1) dot 0 + 2 dot 0 = 0$
- $c_(23) = 1 dot 2 + 0 dot (-3) + (-1) dot 1 + 2 dot 2 = 7$

La matrice risultante è:
$ C = mat(10, 3, 2; 3, 0, 7) $
][
Considerare le matrici:
$ A = mat(0, 1; 0, 0), quad B = mat(1, 0; 0, 0) $

Calcolando i due prodotti:
$ A B = mat(0, 0; 0, 0), quad B A = mat(0, 1; 0, 0) $

Poiché $A B != B A$, le due matrici non commutano.]

=== Proprietà del prodotto tra matrici

Dando per verificata la compatibilità delle dimensioni, il prodotto tra matrici gode delle seguenti proprietà:
- associativa: $ A(B C) = (A B)C $
- distributiva a sinistra e a destra: $ A(B + C) = A B + A C$ e $(A + B)C = A C + B C $
- compatibilità con lo scalare: $ c(A B) = (c A)B = A(c B) $

Per le matrici quadrate di ordine $n$, la matrice identità $I$ funge da elemento neutro:
$ A I = I A = A $

=== Inversa di una matrice

Nel contesto delle matrici quadrate di ordine $n$, un aspetto fondamentale è che, per una matrice $A$, generalmente non esiste una matrice inversa, cioè una matrice $B$ che soddisfi la condizione $ A B = B A = I $

Le matrici che possiedono questa proprietà sono chiamate invertibili. È dimostrabile che le matrici invertibili possiedono un'unica inversa. Se tale matrice $B$ esiste, essa è unica e viene indicata con $A^(-1)$.

#esempio[Data la matrice:
$ A = mat(1, 2; 2, -1) $

Determinare se è invertibile cercandone l'inversa $ B = mat(x, y; z, t) $ tale che $A B = I$:
$ A B = mat(1, 2; 2, -1) mat(x, y; z, t) = mat(x + 2z, y + 2t; 2x - z, 2y - t) = mat(1, 0; 0, 1) $

Uguagliando gli elementi corrispondenti si ottengono due sistemi lineari indipendenti:
+ per la prima colonna:
   $ cases(x + 2z = 1, 2x - z = 0) ==> x = 1/5, quad z = 2/5 $
+ per la seconda colonna:
   $ cases(y + 2t = 0, 2y - t = 1) ==> y = 2/5, quad t = -1/5 $

La matrice $A$ è dunque invertibile e la sua inversa è:
$ A^(-1) = mat(1/5, 2/5; 2/5, -1/5) $

La risoluzione dei due sistemi può essere fatta anche utilizzando la regola di Cramer (@def-regola-cramer), già studiata nella @equazioni_sistemi, e si ottiene:

$ x = (mat(delim: "|", 1, 2; 0, -1)) / (mat(delim: "|", 1, 2; 2, -1)) = 1/5, quad
  z = (mat(delim: "|", 1, 1; 2, 0)) / (mat(delim: "|", 1, 2; 2, -1)) = 2/5, quad
  y = (mat(delim: "|", 0, 2; 1, -1)) / (mat(delim: "|", 1, 2; 2, -1)) = 2/5, quad
  t = (mat(delim: "|", 1, 0; 2, 1)) / (mat(delim: "|", 1, 2; 2, -1)) = -1/5. $
]

==== Proprietà dell'inversa e potenze di matrici

Se $A B = I$, si ha anche $B A = I$. L'inversa di una matrice $A$, indicata con $A^(-1)$, soddisfa la relazione: $ A A^(-1) = A^(-1)A = I $

Per due matrici invertibili $A$ e $B$, l'inversa del prodotto è invertita nell'ordine:$ (A B)^(-1) = B^(-1)A^(-1) $

Infine, per una matrice quadrata $A$ si definiscono le potenze intere:

$ A^0 = I, quad A^1 = A, quad A^2 = A A, quad A^3 = A A A, quad dots $

=== Determinante di una matrice quadrata

Il determinante di una matrice quadrata di ordine $n$ si definisce in modo ricorsivo tramite lo sviluppo di Laplace, riconducendo il calcolo di ordine $n$ a casi di ordine inferiore fino al caso base $n = 1$. Per $n = 2$, la definizione ricorsiva coincide con la regola già nota.

Il determinante di una matrice $A$ di ordine $n$ si indica con $|A|$ oppure $det A$:

$ |A| = det A = mat(
  delim: "|",
  a_(11), a_(12), dots, a_(1n);
  a_(21), a_(22), dots, a_(2n);
  dots.v, dots.v, dots.down, dots.v;
  a_(n_1), a_(n_2), dots, a_(n_n)
) $


#definizione(title: "Minori di una matrice", label: <def-minori-matrice>)[Data una matrice $A$, si definisce sottomatrice di $A$ qualsiasi matrice ottenuta sopprimendo un certo numero di righe e di colonne, anche non consecutive. Qualora tale sottomatrice sia quadrata, essa viene chiamata minore di $A$. Per estensione, con il termine minore si indica comunemente anche il determinante della sottomatrice stessa.]

#definizione(title: "Completamento algebrico o cofattore", label: <def-cofattore>)[Considerato un generico elemento $a_(i,j)$ all'interno di una matrice quadrata $A$, si definisce minore complementare di $a_(i,j)$ il determinante della sottomatrice che si ottiene eliminando la $i$-esima riga e la $j$-esima colonna che si intersecano in $a_(i,j)$. Il complemento algebrico (o cofattore) dell'elemento $a_(i,j)$, indicato con $A_(i,j)$, è pari al valore di tale minore complementare moltiplicato per il fattore di segno $(-1)^(i+j)$.]

In rappresentazione esplicita, data la matrice $A$:

$ A = mat(
  a_(1,1), dots, a_(1,j-1), a_(1,j), a_(1,j+1), dots, a_(1,n);
  dots.v, dots.down, dots.v, dots.v, dots.v, dots.down, dots.v;
  a_(i-1,1), dots, a_(i-1,j-1), a_(i-1,j), a_(i-1,j+1), dots, a_(i-1,n);
  a_(i,1), dots, a_(i,j-1), a_(i,j), a_(i,j+1), dots, a_(i,n);
  a_(i+1,1), dots, a_(i+1,j-1), a_(i+1,j), a_(i+1,j+1), dots, a_(i+1,n);
  dots.v, dots.down, dots.v, dots.v, dots.v, dots.down, dots.v;
  a_(m,1), dots, a_(m,j-1), a_(m,j), a_(m,j+1), dots, a_(m,n)
) $

il corrispondente complemento algebrico $A_(i,j)$ assume la forma:

$ A_(i,j) = (-1)^(i+j) mat(
  delim: "|",
  a_(1,1), dots, a_(1,j-1), a_(1,j+1), dots, a_(1,n);
  dots.v, dots.down, dots.v, dots.v, dots.down, dots.v;
  a_(i-1,1), dots, a_(i-1,j-1), a_(i-1,j+1), dots, a_(i-1,n);
  a_(i+1,1), dots, a_(i+1,j-1), a_(i+1,j+1), dots, a_(i+1,n);
  dots.v, dots.down, dots.v, dots.v, dots.down, dots.v;
  a_(m,1), dots, a_(m,j-1), a_(m,j+1), dots, a_(m,n)
) $

#definizione(title: "Determinante", label: <def-determinante>)[Posto come caso base che per una matrice di ordine 1 il determinante coincide con il suo unico elemento, consideriamo una generica matrice quadrata $A$ di ordine $n$. Scelta una qualunque riga oppure una qualunque colonna di $A$, il determinante della matrice è definito come la somma dei prodotti tra ciascun elemento della riga o colonna selezionata e il corrispondente complemento algebrico.

Sviluppando la matrice lungo la generica riga $r$-esima, il calcolo si esprime come:

$ |A| = a_(r 1) A_(r 1) + a_(r 2) A_(r 2) + dots + a_(r n) A_(r n) $

Se invece si effettua lo sviluppo lungo la generica colonna $p$-esima di $A$, si ottiene l'espressione equivalente:

$ |A| = a_(1 p) A_(1 p) + a_(2 p) A_(2 p) + dots + a_(n p) A_(n p) $]

In termini pratici, la determinazione del determinante di una matrice di ordine $n$ richiede il calcolo di $n$ determinanti di sottomatrici di ordine $n - 1$; ciascuno di essi comporta a sua volta la risoluzione di $n - 1$ determinanti di ordine $n - 2$, e così via fino a ridursi al caso base. Si dimostra che la scelta della riga o della colonna su cui applicare lo sviluppo non altera in alcun modo il risultato finale. Applicando questa definizione generale al caso particolare delle matrici di ordine 2, si ritrova direttamente la formula nota:

$ mat(delim: "|", a_11, a_12; a_21, a_22) = a_11 a_22 - a_12 a_21 $


#esempio[Calcolare il determinante della matrice $A$ sviluppando rispetto alla prima colonna:
$ A = mat(1, 2, -1; 3, 1, 2; -2, 1, 1) $

$ |A| &= 1 dot (-1)^(1+1) mat(delim: "|", 1, 2; 1, 1) + 3 dot (-1)^(2+1) mat(delim: "|", 2, -1; 1, 1) + (-2) dot (-1)^(3+1) mat(delim: "|", 2, -1; 1, 2) \
&= 1 dot (1 - 2) - 3 dot (2 + 1) - 2 dot (4 + 1) \
&= -1 - 9 - 10 = -20 $]

==== Proprietà del determinante

Per il determinante, valgono le seguenti proprietà:
- regola di Binet: $ det(A B) = det(A) det(B) $
- scambiando due righe (o colonne) parallele, il determinante cambia segno: $ det(A') = -det(A) $
- Se una matrice ha due righe (o colonne) uguali o proporzionali, il suo determinante è nullo, ovvero: $ det(A) = 0 $
- Sommando a una riga (o colonna) un'altra linea moltiplicata per uno scalare, il determinante non varia.
- Moltiplicando tutti gli elementi di una singola riga (o colonna) per un numero $c$, il determinante risulta moltiplicato per $c$.

=== Calcolo dell'inversa di una matrice

#definizione(title: "Condizione e calcolo dell'inversa", label: <def-calcolo-inversa>)[Una matrice quadrata $A$ è invertibile se e solo se $ det(A) != 0 $

Per una matrice invertibile $A$, la matrice inversa $A^(-1)$ è data da:
$ A^(-1) = 1 / (det(A)) (text("cof")(A))^T $ 

Per poter ottenere l'inversa di una matrice quadrata $A$ è necessario seguire questi passaggi:
+ calcolare $det(A)$
+ determinare la trasposta $A^T$
+ calcolare la matrice dei complementi algebrici della trasposta $A^T$
  + in alternativa, calcolare la trasposta della matrice dei complementi algebrici di $A$
+ moltiplicare la matrice ottenuta per lo scalare $1 / det(A)$]

La matrice trasposta dei complementi algebrici viene talvolta chiamata "aggiunta"  e indicata come $text("agg")(A)$, ma poiché la norma ISO riserva tale termine alla trasposta coniugata, è preferibile evitare questa dicitura.

#esempio[Calcolare l'inversa della seguente matrice:
$ A = mat(1/2, 0, 1; 0, 4, 1; 3, 0, 2) $

Sviluppando il determinante (ad esempio rispetto alla seconda colonna):
$ |A| = 4 dot (-1)^(2+2) det(mat(1/2, 1; 3, 2)) = 4 dot (1 - 3) = -8 != 0 $

La matrice dei complementi algebrici della trasposta $A^T$ risulta:
$ C = mat(8, 0, -4; 3, -2, -1/2; -12, 0, 2) $

Moltiplicando per l'inverso del determinate, ovvero $-1/8$, otteniamo l'inversa:
$ A^(-1) = mat(-1, 0, 1/2; -3/8, 1/4, 1/16; 3/2, 0, -1/4) $]

=== Rango di una matrice

Data una matrice rettangolare $A_(m times n)$, possiamo estrarre da essa sottomatrici quadrate di ordine $k$, con $1 <= k <= min(m, n)$.

#definizione(title: "Rango", label: <def-rango>)[Il rango (o caratteristica) di una matrice $A_(m times n)$, indicato con $"rg"(A)$ o $"rk"(A)$, è il massimo ordine dei suoi minori aventi determinante diverso da zero.]

Ciò significa che se $"rg"(A) = p$:
- esiste almeno un minore di ordine $p$ non nullo ($det != 0$)
- tutti gli eventuali minori di ordine $p + 1$ (e superiori) sono nulli

==== Proprietà del rango

- per la matrice nulla $0$, si pone $ "rg"(0) = 0 $
- per una matrice quadrata $A$ di ordine $n$:
  $ "rg"(A) = n <==> det(A) != 0 <==> A text(" è invertibile") $

==== Procedimento per il calcolo del rango

Per determinare il rango di una matrice $A_(m times n)$:
1. si pongono sotto esame i minori dell'ordine massimo $p = min(m, n)$. Se ne esiste almeno uno non nullo, $"rg"(A) = p$
2. sSe tutti i minori di ordine $p$ sono nulli, si scende all'ordine $p - 1$. Se ne esiste almeno uno non nullo, $"rg"(A) = p - 1$
3. il procedimento prosegue iterativamente con $p - 2, p - 3, ...$ finché non si individua un minore non nullo

Da notare che il rango è un intero non negativo ($"rg"(A) in NN$), laddove il determinante è uno scalare reale ($det(A) in RR$).

#esempio[Data la matrice $A$ di dimensione $3 times 4$:
$ A = mat(-1, 3, 2, 5; 6, -2, 4, 3; -2, 6, 4, 10) $

1. Il massimo ordine possibile per un minore è $min(3, 4) = 3$. I quattro minori di ordine $3$ estratti da $A$:
   $ mat(-1, 3, 2; 6, -2, 4; -2, 6, 4), quad mat(-1, 3, 5; 6, -2, 3; -2, 6, 10), quad mat(-1, 2, 5; 6, 4, 3; -2, 4, 10), quad mat(3, 2, 5; -2, 4, 3; 6, 4, 10) $
   hanno tutti determinante pari a zero (la terza riga è proporzionale alla prima o combinazione delle altre).
2. Esaminando i minori di ordine $2$, si trova ad esempio:
   $ det(mat(3, 2; -2, 4)) = 12 - (-4) = 16 != 0 $

Si conclude che $"rg"(A) = 2$.]


== Sistemi lineari

La risoluzione dei sistemi di equazioni lineari con $n$ variabili può essere affrontata estendendo il metodo di Cramer o tramite il metodo di riduzione (o eliminazione) di Gauss.

=== Definizioni

Un sistema di $m$ equazioni lineari in $n$ incognite si presenta nella forma:
$ cases(
  a_(11) x_1 + a_(12) x_2 + ... + a_(1n) x_n = b_1,
  a_(21) x_1 + a_(22) x_2 + ... + a_(2n) x_n = b_2,
  dots.v,
  a_(m 1) x_1 + a_(m 2) x_2 + ... + a_(m n) x_n = b_m
) $

Un sistema si dice compatibile se ammette soluzioni: in questo caso può essere ulteriormente identificato in determinato, se possiede un'unica soluzione, e indeterminato, se possiede infinite soluzioni. Nel caso non ammettesse soluzioni, viene chiamato incompatibile.

Una soluzione del sistema è una $n$-upla di numeri reali che, sostituita ordinatamente alle incognite, rende verificate tutte le equazioni.

//! riscrivi definizione?
#definizione(title: "Matrice dei coefficienti o incompleta", label: <def-matrice-coefficienti>)[
Viene definita matrice dei coefficienti, o matrice incompleta del sistema, una matrice impostata come la seguente:
  $ A = mat(
    a_(11), a_(12), ..., a_(1n);
    a_(21), a_(22), ..., a_(2n);
    dots.v, dots.v, dots.down, dots.v;
    a_(m 1), a_(m 2), ..., a_(m n)
  ) $
]

Considerando i vettori colonna
  $ arrow(x) = (x_1, x_2, ..., x_n)^T, quad arrow(b) = (b_1, b_2, ..., b_m)^T $

il sistema può essere riscritto nella formula compatta:
  $ A arrow(x) = arrow(b) $

Questa è formalmente similie nella scrittura all'equazione di primo grado in un'incognita $a x = b$.

//! riscrivi definizione?
#definizione(title: "Matrice completa", label: <def-matrice-completa>)[Viene definita matrice completa del sistema, una matrice impostata come la seguente:
  $ A|b = mat(
  augment: #4,
  a_(11), a_(12), dots, a_(1n), b_1;
  a_(21), a_(22), dots, a_(2n), b_2;
  dots.v, dots.v, dots.down, dots.v, dots.v;
  a_(m 1), a_(m 2), dots, a_(m n), b_m
), $
]

Nel risolvere un sistema di equazioni, le $x_i$ rappresentano le incognite, ossia variabili che appartengono a un determinato insieme, nel nostro caso l'insieme dei numeri reali, e che soddisfano le condizioni espresse dalle equazioni. La risoluzione consiste nel determinare eventuali valori delle incognite che rendono verificate le equazioni.

Nelle applicazioni, capita spesso che i coefficienti $a_(i j)$ non siano costanti, ossia numeri reali prestabiliti, ma dipendano da una o più variabili. Queste variabili agiscono come parametri, ovvero variabili che non sono soggette ad alcuna condizione, salvo quelle necessarie per l'esistenza. È fondamentale distinguere chiaramente tra le incognite, che potremmo definire come variabili condizionate, e i parametri, che sono invece variabili non condizionate. Illustriamo questa distinzione con un esempio.

#esempio[Nell'equazione "in $x$":  
  $ (t + 1)x = 3t $
$x$ è l'incognita e $t$ è il parametro, che può essere qualunque valore; una volta scelto il valore di $t$, $x$ va determinato affinché l'equazione data venga verificata. Per esempio:
- per $t = -1$: $0x = -3$, l'equazione è impossibile (incompatibile)
- per $t != -1$: $x = (3t) / (t + 1)$, l'equazione è determinata

Risolvere un'equazione o un sistema con parametri implica determinarne le soluzioni per ogni valore permesso del parametro. Naturalmente, non si tratterà di risolvere l'equazione o il sistema esplicitamente per tutti i valori possibili del parametro, dato che in molti casi questi possono essere infiniti. Invece, è necessario esaminare solo alcuni casi rappresentativi. Nell'esempio fornito, è sufficiente considerare due situazioni: 

- per $t = -1$, l'equazione non presenta soluzioni 
- per $t != -1$, la soluzione per $x$ è data da $(3t) / (t + 1)$.


]

=== Teorema di Rouché-Capelli e metodo di Cramer

Il teorema fondamentale per i sistemi lineari è il teorema di Rouché-Capelli, che offre una condizione di risolubilità basata esclusivamente sulle caratteristiche delle matrici $A$ e $A|b$, ampliando il concetto già affrontato nell'equazione $a x = b$, dove la risolubilità è determinata dai valori di $a$ e $b$.

#definizione(title: "Teorema di Rouché-Capelli", label: <def-teorema-rouche-capelli>)[Un sistema lineare di $m$ equazioni in $n$ incognite $A arrow(x) = arrow(b)$ è compatibile se e solo se la matrice incompleta $A$ e la matrice completa $(A | arrow(b))$ hanno lo stesso rango:
$ "rg"(A) = "rg"(A | arrow(b)) = r $]

Dopo aver verificato la compatibilità del sistema, si può procedere alla sua risoluzione seguendo il percorso indicato. 

Si consideri un sistema lineare con $m$ equazioni e $n$ incognite, e ipotizziamo che il rango comune delle due matrici, completa e incompleta, sia $r (≤ min(m, n))$. Si suppone inoltre di aver determinato il rango utilizzando un minore (di ordine $r$) della matrice incompleta, il cui determinante è diverso da zero. A questo punto:
+ si eliminano le equazioni le cui righe dei coefficienti non rientrano nel minore in questione
+ si spostano al secondo membro i termini contenenti le incognite le cui colonne dei coefficienti sono escluse dal minore (queste incognite diventano parametri senza restrizioni; può essere utile identificarle formalmente con lettere come $t$, $u$, ecc.)
+ si ottiene così un sistema quadrato di $r$ equazioni in $r$ incognite, che può essere risolto applicando la regola di Cramer, descritta nella successiva @def-regola-cramer-sistemi, un'estensione di quanto già noto per i sistemi di due equazioni in due incognite

#definizione(title: "Regola di Cramer", label: <def-regola-cramer-sistemi>)[Dato un sistema di $r$ equazioni in $r$ incognite con $det(A) != 0$, l'unica soluzione è data da:
$ x_i = (det(A_i)) / (det(A)), quad i = 1, 2, ..., r $
dove $A_i$ è la matrice ottenuta sostituendo la $i$-esima colonna di $A$ con il vettore dei termini noti.]

#esempio[Risolvere il sistema:
$ cases(
  x_1  & + & x_2  & - &  x_3 & + &  x_4 & = 1,
  x_1  &   &      & + & 2x_3 & - & 2x_4 & = 1,
  4x_1 & + & 3x_2 & - &  x_3 & + &  x_4 & = 4,
  2x_1 & + & x_2  & + &  x_3 & - &  x_4 & = 2
) $

La matrice completa è:
$ A | b = mat(
  augment: #4,
  1, 1, -1, 1, 1;
  1, 0, 2, -1, 1;
  4, 3, -1, 1, 4;
  2, 1, 1, -1, 2
) $]

Si ottiene che il determinante $A$ è nullo, così come tutti quelli dei minori di ordine 4 e 3, sia della matrice completa che quella incompleta. Il minore di ordine 2 estratto dalla 2ª e 3ª riga e 2ª e 3ª colonna è non nullo e vale:
$ det(mat(0, 2; 3, -1)) = -6 != 0 $
quindi, il rango del sistema è $ "rg"(A) = "rg"(A | arrow(b)) = 2 $

Manteniamo la 2ª e 3ª equazione, ponendo $x_1 = t$ e $x_4 = u$ al secondo membro:
$ cases(
         &   & 2x_3 & = 1 - t + 2u,
    3x_2 & - &  x_3 & = 4 - 4t - u
  ) $

Applicando la regola di Cramer si ha ottiene che:

$ x_1 = t, quad x_2 = (mat(delim: "|", 1 - t + 2u, 2; 4 - 4t - u, -1)) / (mat(delim: "|", 0, 2; 3, -1)), quad x_3 = (mat(delim: "|", 0, 1 - t + 2u; 3, 4 - 4t - u)) / (mat(delim: "|", 0, 2; 3, -1)), quad x_4 = u, $

ossia

$ cases(
  x_1 = t,
  x_2 = display((3 - 3t) / 2),
  x_3 = display((1 - t + 2u) / 2),
  x_4 = u
) $

Le soluzioni dipendono da due parametri, $t$ e $u$ e si scrive in questa maniera:

$ oo^2 "soluzioni." $

Generalizzando, se un sistema in $n$ incognite ha rango $r$, si dice che ha

$ oo^(n-r) "soluzioni," $

imponendo che se $n - r = 0$, si intende che il sistema ammette una sola soluzione. Il numero $n - r$ rappresenta la dimensione dello spazio delle soluzioni.

=== Metodo di eliminazione di Gauss

La soluzione di un sistema lineare tramite il metodo di riduzione o eliminazione di Gauss comporta una serie di operazioni da eseguire sulla matrice completa e su quella incompleta. L'obiettivo è trasformare la matrice incompleta del sistema nella cosiddetta forma a scala, che nella sua versione più generale ha l'aspetto indicato nella @eq-metodo-eliminazione-gauss.

Il metodo trasforma la matrice completa $A | b$ del sistema in una matrice equivalente in forma a scala mediante operazioni elementari sulle righe:
+ scambio di due righe
+ moltiplicazione di una riga per uno scalare non nullo
+ sostituzione di una riga con la somma di se stessa e un multiplo di un'altra riga

//! colore nero del testo come workaround, non compatibile con temi; da modificare
#let B(body) = table.cell(stroke: (bottom: 0.8pt + accent.mat), body)
#let LB(body) = table.cell(stroke: (left: 0.8pt + accent.mat, bottom: 0.8pt + accent.mat), body)
#show table.cell.where(y: 0): set text(weight: "bold", fill: black, font: sans-fonts)
$ lr((
  #table(
    columns: 14,
    align: center + horizon,
    stroke: none,
    inset: (x: 4.5pt, y: 3.5pt),

    // Riga 1
    $0$, $dots$, $0$, LB[$p_1$], B[$*$], B[$dots$], B[$*$], $*$, $*$, $dots$, $*$, $*$, $*$, $dots$,

    // Riga 2
    $0$, $dots$, $0$, $0$, $0$, $dots$, $0$, LB[$p_2$], B[$*$], B[$dots$], B[$*$], $*$, $*$, $dots$,

    // Riga 3
    $0$, $dots$, $0$, $0$, $0$, $dots$, $0$, $0$, $0$, $dots$, $0$, LB[$p_3$], $*$, $dots$,

    // Riga 4
    $0$, $dots$, $0$, $0$, $0$, $dots$, $0$, $0$, $0$, $dots$, $0$, $0$, $*$, $dots$,

    // Riga 5
    $dots.v$, $dots.down$, $dots.v$, $dots.v$, $dots.v$, $dots.down$, $dots.v$, $dots.v$, $dots.v$, $dots.down$, $dots.v$, $dots.v$, $dots.v$, $dots.down$,

    // Riga 6
    $0$, $dots$, $0$, $0$, $0$, $dots$, $0$, $0$, $0$, $dots$, $0$, $0$, $*$, $dots$
  )
)) $ <eq-metodo-eliminazione-gauss>

Una matrice è in forma a scala se:
- eventuali colonne nulle#footnote[In sostanza, una colonna completamente nulla indica che la corrispondente variabile non è presente nel sistema. Anche se in situazioni comuni questo non accade mai, abbiamo comunque voluto considerare il caso più generale possibile.
] si trovano a sinistra
- le eventuali righe interamente nulle si trovano in basso
- il primo elemento non nullo di ogni riga, detto pivot, si trova in una colonna strettamente più a destra rispetto al pivot della riga precedente

Una volta che la matrice incompleta viene trasformata in forma a scala, notiamo che il numero dei pivot, indicato con $r$, rappresenta il rango della matrice stessa. Se $n$ è il numero effettivo di incognite (escludendo quelle che sono associate a colonne interamente composte da zeri) e $m$ rappresenta il numero di equazioni, possiamo concludere che affinché il sistema sia compatibile, le $m - r$ righe terminali della matrice incompleta, costituite unicamente da zeri, devono avere i termini noti corrispondenti anch'essi nulli. Le incognite associate alle colonne senza pivot risultano del tutto arbitrarie e questi termini possono essere portati al secondo membro, conferendo al sistema un numero infinito di soluzioni pari a $∞^(n-r)$. Risolvere diventa semplice: dall'ultima delle $r$ equazioni non nulle, si determina l'incognita relativa al pivot $p_r$. Si prosegue con una sostituzione nell'equazione precedente e si trova l'incognita relativa al pivot $p_(r-1)$. Questo processo continua all'indietro fino a quando tutte le incognite legate ai vari pivot sono determinate.

Per ridurre la matrice incompleta a scala, seguiamo questi passaggi, operando anche sui termini noti, quindi direttamente sulla matrice completa:
- si eliminano le colonne interamente composte da valori nulli, che in genere non si trovano nelle situazioni comuni
- se necessario, si scambiano le righe in modo che il primo elemento non nullo della prima colonna si trovi nella prima riga; questo valore è denominato pivot numero $1$ o $p_1$
- attraverso una combinazione lineare adeguata tra le righe, si assicura che, a partire dalla seconda riga, sotto al pivot siano presenti solo zeri. Per ottenere ciò, se la riga $i$ ha un elemento non nullo sotto il pivot $p_1$, la si sostituisce con una combinazione lineare ottenuta sommando la stessa riga $i$ e la riga 1 moltiplicata per $-a/p_1$. Sebbene vi siano altre opzioni, questa tecnica presenta il vantaggio, specialmente nelle matrici quadrate, di non alterare il determinante. Considerando che l'operazione precedente potrebbe al massimo invertire il segno del determinante nelle matrici quadrate, appare evidente come questa tecnica possa essere vantaggiosa anche nel calcolo dei determinanti
- le operazioni descritte vengono ripetute considerando la matrice trasformata e omettendo la prima riga. Si procede poi con le righe successive


/* ==== Algoritmo di riduzione
1. Si eliminano le eventuali colonne nulle a sinistra.
2. Tramite scambi di riga, si posiziona in alto a sinistra un elemento non nullo $p_1$ (primo pivot).
3. Per ogni riga $i > 1$ con primo elemento non nullo $a_(i 1)$, si sostituisce la riga $R_i$ con:
   $ R_i <- R_i - (a_(i 1) / p_1) R_1 $
   azzerando tutti gli elementi al di sotto di $p_1$.
4. Si itera il procedimento sulle sotto-matrici ottenute ignorando le prime $k$ righe già ridotte. 

==== Risoluzione del sistema ridotto
Sia $r$ il numero di pivot (che coincide con $"rg"(A)$):
- *Compatibilità:* Il sistema è compatibile se e solo se l'ultima colonna dei termini noti non contiene un pivot (ossia non compare mai una riga del tipo $[0 \ 0 \ ... \ 0 \ | b_k]$ con $b_k != 0$). In tal caso, $"rg"(A) = "rg"(A | arrow(b)) = r$.
- *Calcolo delle soluzioni:*
  - Le $n - r$ incognite corrispondenti alle colonne *senza pivot* agiscono da parametri liberi (il sistema ammette $oo^{n - r}$ soluzioni).
  - Si determinano le incognite associate ai pivot procedendo *a ritroso* (dall'ultima equazione non nulla risalendo verso la prima).
*/
#esempio[
Risolvere il sistema: $ cases(x^2 + x^3 + 2x^4 = 1, -x_1 - 2x_2 + 2x_3 = 0, x_1 + 3x_2 + x_3 - x_4 = -2) $
+ scrivere la matrice completa del sistema:
   $ A | b = mat(
    augment: #4,
    0, 1, 1, 2, -1;
    -1, -2, 2, 0, 0;
    1, 3, 1, -1, -2
   ) $
+ applicare le operazioni secondo le indicazioni fornite, evidenziando i pivot via via ottenuto:
   $ r_1 <-> r_3:& mat(
      augment: #4,
      hlc(1), 3, 1, -1, -2;
      -1, -2, 2, 0, 0;
      0, 1, 1, 2, -1
     ) \ r_2 -> r_2 + r_1:& mat(
      augment: #4,
      hlc(1), 3, 1, -1, -2;
      0, hlc(1), 3, -1, -2;
      0, 1, 1, 2, -1
     ) \ r_3 -> r_3 + (-1)r_2:& mat(
      augment: #4,
      hlc(1), 3, 1, -1, -2;
      0, hlc(1), 3, -1, -2;
      0, 0, hlc(-2), 3, 1
     ) $
  I pivot sono nelle colonne 1, 2 e 3; la colonna 4 non contiene pivot, quindi si pone l'incognita $x_4 = t$. Il sistema equivalente è:
  $ cases(
    x_1 + 3x_2 + x_3 - t = -2,
    x_2 + 3x_3 - t = -2,
    -2x_3 + 3t = 1
  ) $
+ risolvere a ritroso:
  - $x_3 = -1/2 + 3/2 t$
  - $x_2 = -2 + t - 3(-1/2 + 3/2 t) = -1/2 - 7/2 t$
  - $x_1 = -2 + t - x_3 - 3x_2 = -2 + t - (-1/2 + 3/2 t) - 3(-1/2 - 7/2 t) = 10t$
+ l'insieme delle $oo^(4-3) = oo^1$ soluzioni:
  $ x_1 = 10t, quad x_2 = -1/2 - 7/2 t, quad x_3 = -1/2 + 3/2 t, quad x_4 = t, quad t in RR $
][

Risolvere il sistema con matrice completa:
$ A | b = mat(
  augment: #3,
  1, 2, -1, 0;
  0, -5, 2, 1;
  2, -1, 0, 1;
  -1, -1, 2, 2;
  3, 0, -2, -1
) $

1. applicare le operazioni secondo le indicazioni fornite, evidenziando i pivot via via ottenuto:
 $ mat(
  delim: #none,  
  r_3 &-> r_3 + (-2)r_1;
  r_4 &-> r_4 + r_1;
  r_5 &-> r_5 + (-3)r_1
) : mat(
  augment: #3,
  hlc(1), 2, -1, 0;
  0, -5, 2, 1;
  0, -5, 2, 1;
  0, 1, 1, 2;
  0, -6, 1, -1
) ; \ r_4 <-> r_2 : mat(
    augment: #3,
     hlc(1), 2, -1, 0;
     0, hlc(1), 1, 2;
     0, -5, 2, 1;
     0, -5, 2, 1;
     0, -6, 1, -1
   ) \ mat(
  delim: #none,  
  r_3 &-> r_3 + 5r_2;
  r_4 &-> r_4 + 5r_2;
  r_5 &-> r_5 + 6r_2
) : mat(
    augment: #3,
     hlc(1), 2, -1, 0;
     0, hlc(1), 1, 2;
     0, 0, hlc(7), 11;
     0, 0, 7, 11;
     0, 0, 7, 11
   ) \ mat(
  delim: #none,  
  r_4 &-> r_4 + (-1)r_3;
  r_5 &-> r_5 + (-1)r_3
) : mat(
    augment: #3,
     hlc(1), 2, -1, 0;
     0, hlc(1), 1, 2;
     0, 0, hlc(7), 11;
     0, 0, 0, 0;
     0, 0, 0, 0
   ) $

Il sistema ammette un'unica soluzione:
$ 7x_3 = 11 => x_3 = 11/7 \ x_2 + 11/7 = 2 => x_2 = 3/7 \ x_1 + 2(3/7) - 11/7 = 0 => x_1 = 5/7 $
]

//! arrivato qui
== Vettori nello spazio

=== Definizioni

In uno spazio tridimensionale, consideriamo le coppie ordinate di punti $(A, B)$, dove $A$ è chiamato primo estremo e $B$ secondo estremo. Queste coppie sono conosciute anche come segmenti orientati o vettori applicati, indicati con il simbolo $arrow(A B)$ o come $B - A$#footnote[La rappresentazione di un segmento orientato come $B - A$ è stata introdotta dal matematico irlandese William Rowan Hamilton (1805-1865). Questa notazione si è dimostrata particolarmente efficace e utile, come verrà illustrato in seguito. È importante sottolineare che esprimere un segmento orientato come la differenza tra due punti mette in evidenza il ruolo distinto dei due estremi del segmento, in modo analogo alla sottrazione dei numeri. È fondamentale ricordare che da tale notazione non si può derivare alcun concetto di somma tra due punti: $B - A$ è chiaramente definito, mentre $B + A$ non ha alcun significato attribuito.]. La lunghezza del segmento orientato $arrow(A B)$ rispetto a un'unità di misura prestabilita rappresenta la distanza tra i punti $A$ e $B$, e viene espressa con $|A B|$ o equivalentemente con $|arrow(A B)|$. La direzione della retta determinata dai punti $A$ e $B$ prende il nome di direzione del segmento orientato $arrow(A B)$. Inoltre, questo segmento definisce un senso sulla retta $A B$: quello in cui $A$ precede $B$. All'interno dell'insieme dei segmenti orientati, viene introdotta una relazione di equivalenza nota come equipollenza.

#definizione(title: "Equipollenza", label: <def-equipollenza>)[Due segmenti orientati $arrow(A B)$ e $arrow(C D)$ sono equipollenti se hanno pari modulo, direzioni parallele e medesimo verso.]

Un modo equivalente e più compatto per affermare che due segmenti equipollenti è quando i punti medi dei segmenti $overline(A D)$ e $overline(B C)$ coincidono.

In quanto relazione di equivalenza, essa divide l'insieme di tutti i segmenti orientati dello spazio in classi di equivalenza. La classe di equivalenza identificata dal segmento orientato $arrow(A B)$ viene rappresentata come $[arrow(A B)]$. 

#definizione(title: "Vettore", label: <def-vettore>)[Si definisce vettore, noto anche come vettore libero, una classe di equivalenza di segmenti orientati che sono equipollenti tra loro.]

I vettori si rappresentano utilizzando una lettera minuscola in grassetto o con una lettera sormontata da una freccia. Questa convenzione di notazione è simile a quella usata per le matrici con una sola colonna, ossia i vettori colonna, e nei paragrafi successivi esploreremo il motivo di questa somiglianza nelle notazioni:

$ bold(u) = arrow(u) = [arrow(A B)] $

#grafico_vettori1

È evidente che se i segmenti orientati $arrow(A B)$ e $arrow(C D)$ sono equipollenti, si ottiene che: $ arrow(u) = [arrow(A B)] = [arrow(C D)] $

Come avviene di solito quando si lavora con classi di equivalenza, è possibile scegliere un qualsiasi elemento della classe, chiamato rappresentante, e operare direttamente con esso. Pertanto, sono giustificate espressioni del tipo:

$ arrow(u) = arrow(A B) = arrow(C D) $

dove $arrow(A B)$ e $arrow(A B)$ non sono considerati segmenti orientati singolarmente, ma come rappresentanti di classi di equivalenza.

Utilizzando la notazione $B - A$ per i segmenti orientati, si può esprimere anche $arrow(u) = B - A$, da cui si ricava l'equazione $B = A + arrow(u)$. Questa formula è particolarmente significativa perché chiarisce il significato fondamentale del vettore: il vettore $arrow(u)$ descrive una traslazione spaziale che sposta ogni punto $P$ a un punto $Q$, ottenuto traslando $P$ di una distanza pari alla lunghezza di $arrow(u)$, nella direzione e nel verso di $arrow(u)$#footnote[È proprio questo concetto che dà origine al suo nome, dato che "vehere" significa trasportare.].

I segmenti denotati come $arrow(A A)$, $arrow(B B)$, ecc., definiscono il cosiddetto vettore nullo, indicato con $arrow(0)$ o semplicemente $0$. 

Denotiamo con $V_3$ l'insieme di tutti i vettori liberi nello spazio e con $S_3$ l'insieme di tutti i punti dello spazio. È semplice stabilire una corrispondenza biunivoca tra $V_3$ e $S_3$: scegliendo un punto $O$ nello spazio, si può associare a ogni vettore $arrow(v)$ il punto: $ P = O + arrow(v) $

Se invece consideriamo i punti di un piano $pi$, possiamo applicare le stesse osservazioni senza alcuna modifica. In tal caso, $V_2$ e $S_2$ rappresenteranno rispettivamente i vettori e i punti del piano. Analogamente, per i punti e i vettori su una retta, si utilizzeranno i simboli $V_1$ e $S_1$, con significato evidente.

#grafico_vettori2

=== Operazioni lineari tra vettori

All'interno dell'insieme $V_3$ dei vettori dello spazio, è possibile definire le operazioni di somma e prodotto per un numero. Riguardo alla somma, esistono due definizioni perfettamente equivalenti.

#definizione(title: "Regola del parallelogramma", label: <def-regola-parallelogramma>)[Dati due vettori $arrow(u)$ e $arrow(v)$, e considerando due rappresentanti con la stessa origine $A$, dove $arrow(u) = B - A$ e $arrow(v) = D - A$, si ha che $D + arrow(u) = B + arrow(v)$. Se poniamo $C = D + arrow(u) = B + arrow(v)$, la somma dei vettori $arrow(u)$ e $arrow(v)$ è il vettore $arrow(w)$, dato da:

$ arrow(w) = arrow(u) + arrow(v) = C - A. $]

#definizione(title: "Regola del «testa-coda»", label: <def-regola-testacoda>)[Dati due vettori $arrow(u)$ e $arrow(v)$, e considerando due rappresentanti, con $arrow(u) = B - A$ e $arrow(v) = C - B$, la somma dei vettori $arrow(u)$ e $arrow(v)$ è il vettore $arrow(w)$, dato da:

$ arrow(w) = arrow(u) + arrow(v) = C - A. $]

In entrambi i casi, illustrati nelle #ref(<grafico_regola_parallelogramma>, supplement: "Figure") e #ref(<grafico_regola_testacoda>, supplement: none), è dimostrabile che la scelta dei rappresentanti non influenza il risultato finale.

#grafici_regole_vettori

#definizione(title: "Vettore opposto", label: <def-vettore-opposto>)[Considerando un vettore $arrow(u) = B - A$, il suo opposto è definito come il vettore $ -arrow(u) = A - B $

ovvero un vettore che mantiene lo stesso modulo e direzione, ma con verso opposto.]

#definizione(title: "Differenza fra due vettori", label: <def-differenza-vettori>)[Per due vettori $arrow(u)$ e $arrow(v)$, la loro differenza è il vettore:

$ arrow(w) = arrow(u) + (-arrow(v)) = arrow(u) - arrow(v) $

Se $arrow(u) = B - A$ e $arrow(v) = D - A$, allora $-arrow(v) = A - D$, da cui risulta:

$ arrow(u) - arrow(v) = (B - A) + (A - D) = (B - A) - (D - A) = B - D $] 

#grafico_differenza_vettori

Nonostante nella precedente uguaglianza non sia necessario applicare le tradizionali regole dei segni (evitando così una somma di punti non definita), tutto si comporta come se si "semplificasse il punto A".

#definizione(title: "Prodotto di un vettore per un numero", label: <def-prodotto-vettore-numero>)[Dato un vettore $arrow(u)$ e un numero reale $lambda$, il prodotto del vettore $arrow(u)$ per $lambda$ è il vettore $arrow(w)$ definito come segue:
+ se $lambda = 0$ oppure $arrow(u) = arrow(0)$, allora: $ arrow(w) = lambda arrow(u) = arrow(0) $
+ se $lambda != 0$ e $arrow(u) != arrow(0)$, allora: $ arrow(w) = lambda arrow(u) $
  Questo è il vettore con:
  - modulo uguale al prodotto tra il modulo di $lambda$ e il modulo di $arrow(u)$, ossia: $ |lambda arrow(u)| = |lambda| |arrow(u)| $
  - direzione stessa di $arrow(u)$
  - verso identico o opposto a quello di $arrow(u)$, a seconda che $lambda$ sia positivo o negativo]

Le operazioni di somma e prodotto per un numero, appena definite, rispettano le seguenti proprietà per ogni $arrow(u), arrow(v), arrow(w)$ e per ogni $lambda, mu$:
1. proprietà associativa della somma: $ (arrow(u) + arrow(v)) + arrow(w) = arrow(u) + (arrow(v) + arrow(w)) $
2. esistenza dell'elemento neutro della somma: $ arrow(v) + arrow(0) = arrow(v) $
3. esistenza dell'opposto: $ arrow(v) + (-arrow(v)) = arrow(0) $
4. proprietà commutativa della somma: $ arrow(u) + arrow(v) = arrow(v) + arrow(u) $
5. $lambda(mu arrow(u)) = (lambda mu) arrow(u)$
6. $(lambda + mu) arrow(u) = lambda arrow(u) + mu arrow(u)$
7. $lambda(arrow(u) + arrow(v)) = lambda arrow(u) + lambda arrow(v)$
8. $1 arrow(u) = arrow(u)$
9. $-1 arrow(u) = -arrow(u)$
10. $0 arrow(u) = arrow(0)$
//?lasciare le 5-10 inline?
Va notato che l'operazione di somma tra due vettori è un'operazione interna nell'insieme $V^3$, poiché associa una coppia di vettori a un terzo vettore. Al contrario, il prodotto per un numero è un'operazione esterna, associando a una coppia costituita da un numero e un vettore un altro vettore. L'insieme $V^3$, con le operazioni appena introdotte, costituisce una struttura algebrica di grande rilevanza in molte applicazioni, definita spazio vettoriale.

#definizione(title: "Combinazione lineare di vettori", label: <def-combinazione-vettori>)[Dati $n$ vettori $arrow(v)_1, arrow(v)_2, ..., arrow(v)_n$ e $n$ numeri reali $lambda_1, lambda_2, ..., lambda_n$, un vettore si definisce combinazione lineare dei vettori dati, con coefficienti i numeri reali dati, il vettore:

$ arrow(w) = lambda_1 arrow(v)_1 + lambda_2 arrow(v)_2 + ... + lambda_n arrow(v)_n $]

Nel caso di due vettori, $arrow(u)$ e $arrow(v)$, se consideriamo una combinazione lineare arbitraria $arrow(w)$, e scegliamo un punto $O$ nello spazio, il punto $P$ ottenuto come $O + arrow(w)$ risulterà sempre complanare con i punti $O$, $A = O + arrow(u)$ e $B = O + arrow(v)$. Inoltre, se $arrow(u)$ e $arrow(v)$ sono paralleli, tutti e quattro i punti sono allineati.

#grafico_combinazioni_lineari

=== Prodotto scalare

Dato un punto $O$ e due vettori $arrow(u)$ e $arrow(v)$, consideriamo i punti $A = O + arrow(u)$ e $B = O + arrow(v)$. È definito angolo tra i due vettori l'angolo convesso (o eventualmente piatto) formato dalle semirette $O A$ e $O B$.

#grafico_angolo_vettori

Nel contesto dell'analisi vettoriale, possiamo nuovamente considerarli insieme al punto $O$. I punti $A = O + arrow(u)$ e $B = O + arrow(v)$ permettono di definire le proiezioni ortogonali di $A$ sulla retta $O B$ e di $B$ sulla retta $O A$, indicate rispettivamente come $A'$ e $B'$. È possibile mostrare facilmente che:
- se l'angolo $hat(u v)$ è minore di $pi/2$, allora i punti $A'$ e $B'$ si trovano sulle semirette $O B$ e $O A$ rispettivamente.
- se l'angolo $hat(u v)$ è esattamente $pi/2$, allora i punti $A'$ e $B'$ coincidono con il punto $O$.
- se l'angolo $hat(u v)$ è maggiore di $pi/2$, allora i punti $A'$ e $B'$ si trovano sulle semirette opposte a $O B$ e $O A$.

#definizione(title: "Proiezione vettoriale", label: <def-proiezione-vettoriale>)[Le lunghezze dei segmenti $O A'$ e $O B'$, considerate positive o negative a seconda che l'angolo $hat(u v) < pi/2$ o $pi < hat(u v) <= pi$, sono denominate proiezioni dei vettori. Si indicano con $u_v$ e $v_u$, rappresentando rispettivamente la proiezione di $arrow(u)$ su $arrow(v)$ e quella di $arrow(v)$ su $arrow(u)$.]

#grafici_proiezione_vettore

#definizione(title: "Prodotto scalare di due vettori", label: <def-prodotto-scalare-vettori>)[Dati due vettori $arrow(u)$ e $arrow(v)$, il loro prodotto scalare si indica con $ arrow(u) dot arrow(v) $
 ed è definito come un numero reale secondo uno dei seguenti tre modi equivalenti:
$ arrow(u) dot arrow(v) = |arrow(u)| |arrow(v)| cos(hat(u v)), quad arrow(u) dot arrow(v) = |arrow(u)| v_u, quad arrow(u) dot arrow(v) = |arrow(v)| u_v $]

Il prodotto scalare di due vettori non nulli risulta nullo se e solo se i due vettori sono ortogonali.

Esistono varie notazioni usate per indicare il prodotto scalare, oltre a quella che abbiamo adottato qui. Alcune di queste sono:

$ arrow(u) times arrow(v), quad chevron.l arrow(u), arrow(v) chevron.r, quad chevron.l arrow(u) | arrow(v) chevron.r. $

La prima notazione è sconsigliata, come sottolineato dalle norme ISO, poiché viene usata per il prodotto vettoriale, che verrà definito successivamente. L'ultima notazione è frequentemente utilizzata dai fisici nei testi di meccanica quantistica ed è conosciuta come notazione di Dirac: la parte sinistra del simbolo, $chevron.l arrow(u)|$, è chiamata vettore _bra_, la parte di destra, $|arrow(v) chevron.r$, viene chiamata vettore _ket_, e il simbolo completo è noto come braket.

Il prodotto scalare possiede le seguenti proprietà per ogni $arrow(u), arrow(v), arrow(w)$ e per ogni $lambda$:
- proprietà commutativa: $ arrow(u) dot arrow(v) = arrow(v) dot arrow(u) $
- $ (lambda arrow(u)) dot arrow(v) = arrow(u) dot (lambda arrow(v)) = lambda(arrow(u) dot arrow(v)) $
- proprietà distributiva: $ arrow(u) dot (arrow(v) + arrow(w)) = arrow(u) dot arrow(v) + arrow(u) dot arrow(w) $
- se e solo se i vettori sono ortogonali ($bot$)#footnote[Per convenzione un vettore nullo è considerato perpendicolare a ogni altro vettore]: $ arrow(u) dot arrow(v) = 0 $ Quando si parla di di perpendicolarità tra due vettori, ci si riferisce a due rappresentanti dei vettori aventi la stessa origine.

Si noti che il prodotto scalare è un'operazione esterna nell'insieme $V^3$, poiché associa ad una coppia di vettori un numero reale.

=== Prodotto vettoriale

La definizione del prodotto vettoriale è più complessa rispetto ad altre operazioni introdotte nell'insieme dei vettori spaziali, poiché coinvolge un concetto (il verso orario o antiorario) che, pur essendo intuitivo, non si presta a una spiegazione semplice e formale. Pertanto, forniremo una definizione di base di questa importante operazione.

È fondamentale sottolineare una differenza cruciale rispetto alle operazioni precedenti, in particolare le operazioni lineari. Una combinazione lineare di due vettori paralleli produce ancora un vettore parallelo ai dati originali e una combinazione lineare di due vettori genera un vettore complanare a quelli dati. Ciò implica che si potrebbe operare in $V_1$ o $V_2$ senza alterare nulla, anziché in $V_3$. Tuttavia, il prodotto vettoriale, come verrà qui definito, è un'operazione intrinsecamente tridimensionale e quindi non ha senso in $V_1$ o $V_2$.

#definizione(title: "Prodotto vettoriale o esterno", label: <def-prodotto-vettoriale>)[Dati due vettori $arrow(u)$ e $arrow(v)$, il loro prodotto vettoriale o esterno è il vettore $arrow(w)$, indicato come $arrow(u) times arrow(v)$ e letto come "u vettore v" o "u esterno v", definito nel seguente modo:
- se $arrow(u)$ e $arrow(v)$ sono paralleli, allora $ arrow(u) times arrow(v) = arrow(0) $
- se $arrow(u)$ e $arrow(v)$ non sono paralleli:
  - il modulo di $arrow(w)$ è dato da $ |arrow(w)| = |arrow(u) times arrow(v)| = |arrow(u)| |arrow(v)| sin hat(u v) $
    dove $hat(u v)$ è l'angolo tra i due vettori
  - la direzione di $arrow(w)$ è perpendicolare sia a $arrow(u)$ che a $arrow(v)$.
  - il verso è determinato dalla regola della vite destrorsa (cavatappi), ossia nella direzione in cui $arrow(u)$ ruota per sovrapporsi a $arrow(v)$, compiendo l'angolo minore]

È evidente che il modulo del prodotto vettoriale $arrow(u) times arrow(v)$#footnote[È importante notare che la notazione adottata qui per il prodotto vettoriale, conforme alla normativa ISO, non è l'unica esistente. In molti testi in lingua italiana si preferisce infatti la notazione $arrow(u) and arrow(v)$. Quando si legge un testo, è sempre utile verificare quali notazioni sono utilizzate, sia consultando l'eventuale tabella apposita, sia controllando le convenzioni adottate al momento del primo utilizzo di un simbolo.] corrisponde all'area del parallelogramma formato dai lati consecutivi $overline(A B)$ e $overline(A C)$, con $A$ come punto qualsiasi, $B = A + arrow(u)$ e $C = A + arrow(v)$. Per quanto riguarda la direzione, si può anche affermare, sebbene in modo meno rigoroso, che essa è quella in cui un osservatore posizionato sul piano contenente i punti $A, B, C$ percepisce la rotazione minima di $arrow(u)$ verso $arrow(v)$ in senso antiorario. In alternativa, la direzione è indicata dal pollice della mano destra se il palmo compie la rotazione minima che allinea $arrow(u)$ con $arrow(v)$.

Il prodotto vettoriale di due vettori presenta le seguenti proprietà per ogni $arrow(u), arrow(v), arrow(w)$ e per ogni $lambda$:

- proprietà anticommutativa: $ arrow(u) times arrow(v) = -arrow(v) times arrow(u) $
- proprietà distributiva: $ (arrow(u) + arrow(v)) times arrow(w) = arrow(u) times arrow(w) + arrow(v) times arrow(w) $
- proprietà distributiva: $ arrow(u) times (arrow(v) + arrow(w)) = arrow(u) times arrow(v) + arrow(u) times arrow(w) $
- $(lambda arrow(u)) times arrow(v) = arrow(u) times (lambda arrow(v)) = lambda(arrow(u) times arrow(v))$
- $arrow(u) times arrow(v) = arrow(0) <=> arrow(u)$ è parallelo a $arrow(v)$, con la convenzione che un vettore nullo può essere considerato parallelo a ogni altro vettore.

#grafici_prodotto_vettoriale

L'operazione di prodotto vettoriale è un'operazione interna nell'insieme $V^3$, che associa a una coppia di vettori un terzo vettore. È fondamentale ricordare che il prodotto vettoriale non è associativo. Per esempio, dati tre vettori $arrow(u), arrow(v), arrow(w)$, in generale si ha che $ (arrow(u) times arrow(v)) times arrow(w) != arrow(u) times (arrow(v) times arrow(w)) $

Un'espressione di questo tipo viene definita doppio prodotto vettoriale. La mancanza di associatività del prodotto vettoriale è chiaramente visibile confrontando la @grafico_doppio_prodotto_vettoriale1 con la @grafico_doppio_prodotto_vettoriale2, dove è stato introdotto un sistema cartesiano ortogonale e sono state evidenziate le coordinate di alcuni punti per rendere la differenza più comprensibile.

#grafici_doppio_prodotto_vettoriale

=== Prodotto misto

Dati tre vettori $arrow(u)$, $arrow(v)$, $arrow(w)$, dopo aver calcolato il prodotto vettoriale $z$ di due di essi, è possibile calcolare il prodotto scalare di $arrow(z)$ con il terzo vettore, ad esempio $(arrow(u) times arrow(v)) dot arrow(w)$. Considerando le caratteristiche dei prodotti, le parentesi diventano superflue: in $arrow(u) times arrow(v) dot arrow(w)$, si esegue prima il prodotto vettoriale e poi quello scalare, altrimenti l'espressione non avrebbe senso. Questo prodotto viene chiamato prodotto misto.

Si dimostra facilmente che il modulo del prodotto misto di tre vettori corrisponde al volume del parallelepipedo costruito su di essi, come illustrato nella @grafico_prodotto_misto. Basta considerare che il modulo del prodotto vettoriale rappresenta l'area del parallelogramma “di base”, mentre il successivo prodotto scalare (a parte il segno) è dato dal prodotto tra quest'area e l'altezza. Poiché il prodotto misto equivale al volume del parallelepipedo costruito sui tre vettori, da ciò si possono dedurre le seguenti proprietà:
- il modulo del prodotto misto è indipendente dall'ordine in cui i vettori sono posti né dall'ordine in cui si eseguono i prodotti:
  $ |arrow(u) times arrow(v) dot arrow(w)| = |arrow(u) dot arrow(v) times arrow(w)| = |arrow(w) dot arrow(u) times arrow(v)| = dots $
- il prodotto misto è nullo solo se i tre vettori sono complanari; ciò include la situazione in cui uno o più dei vettori è nullo. Parlare della complanarità di tre vettori significa riferirsi a rappresentanti degli stessi aventi la medesima origine

#grafico_prodotto_misto

Si può anche dimostrare che il prodotto misto di tre vettori rimane invariato sia scambiando il prodotto vettoriale con quello scalare che permutando circolarmente i tre vettori:
$ arrow(u) times arrow(v) dot arrow(w) = arrow(u) dot arrow(v) times arrow(w) $
$ arrow(u) times arrow(v) dot arrow(w) = arrow(v) times arrow(w) dot arrow(u) = arrow(w) times arrow(v) dot arrow(u) $

In pratica, ciò che conta nel prodotto misto, a meno di una permutazione circolare, è l'ordine dei vettori.

=== Parallelismo, perpendicolarità, complanarità

Dati i concetti fondamentali di parallelismo, perpendicolarità e complanarità, rivediamo le relazioni connesse e le operazioni tra vettori:
- due vettori sono paralleli se e solo se il loro prodotto vettoriale è nullo.
- due vettori sono perpendicolari se e solo se il loro prodotto scalare è nullo.
- tre vettori sono complanari se e solo se il loro prodotto misto è nullo.

In tutti questi casi si include la possibilità che uno o più dei vettori sia nullo, con l'accordo che un vettore nullo sia parallelo o perpendicolare a ogni altro e complanare con qualsiasi altra coppia di vettori. Si vedrà come queste proprietà possano essere utili per verificare parallelismo, perpendicolarità o complanarità di rette e piani.

//! arrivato fino a qua
== Coordinate cartesiane, vettori e componenti

Nella @geometria_analitica, abbiamo già introdotto un sistema cartesiano ortogonale e monometrico sia nel piano che nello spazio. La /* figura 15.11 */ sintetizza questa struttura logica. 

#grafici_punto_piano_spazio

Rivediamo, inoltre, le formule per calcolare il punto medio di un segmento, il baricentro di un triangolo e la distanza tra due punti, analoghi alle formule del capitolo sulla geometria analitica, riferite al piano.
- punto medio:
  $ x_M = (x_1 + x_2) / 2, quad
    y_M = (y_1 + y_2) / 2, quad
    z_M = (z_1 + z_2) / 2 $
- baricentro:
  $ x_G = (x_1 + x_2 + x_3) / 3, quad
    y_G = (y_1 + y_2 + y_3) / 3, quad
    z_G = (z_1 + z_2 + z_3) / 3 $
- distanza tra due punti:
  $ d(A,B) = |A B| = sqrt((x_1 - x_2)^2 + (y_1 - y_2)^2 + (z_1 - z_2)^2) $

=== Componenti di vettori nel piano e nello spazio

Al sistema $O x y z$ è associabile una base dello spazio $V_3$ dei vettori, come ora descriveremo. Abbiamo già considerato, nella @def-combinazione-vettori, la combinazione lineare di vettori multipli. Ci poniamo ora il problema inverso: è possibile esprimere un vettore arbitrario $u$ come combinazione lineare di $n$ vettori dati $v_1, v_2, ..., v_n$? E, in caso affermativo, i coefficienti sono unici? La risposta è negativa in entrambi i casi, come mostrano i seguenti esempi.
+ se si hanno due vettori $v_1$ e $v_2$ non paralleli, considerando un punto $A$ e il piano passante per $A$, $B = A + v_1$, $C = A + v_2$, qualsiasi combinazione lineare di $v_1$ e $v_2$ porta il punto $D = A + u$ a essere complanare con $A$, $B$ e $C$. Pertanto, un vettore $w = E - A$, con $E$ non complanare con $A$, $B$ e $C$, non può essere una combinazione lineare di $v_1$ e $v_2$ //? Spiegare meglio? aggiungere grafico
+ con tre vettori $v_1, v_2, v_3$ complanari, ogni altro vettore $u$ complanare può essere espresso in infiniti modi come combinazione lineare di questi tre vettori. In altre parole, $u$ può essere decomposto in infiniti modi nella somma di tre vettori paralleli ai dati

Utilizzando anche la griglia della @grafico_scomposizione_vettore si vede, ad esempio:
$ u = 3/2 v_1 + 2/3 v_2 + 0 v_3 = 0 v_1 + 2/3 v_2 - v_3 = -3 v_1 + 2/3 v_2 - 3 v_3 $

#grafico_scomposizione_vettore

In linea generale, non è difficile dimostrare che se nel piano si considerano due vettori non paralleli o nello spazio tre vettori non complanari, ogni vettore del piano o dello spazio può essere espresso in maniera unica come loro combinazione lineare. Un tale insieme di vettori si chiama base per $V_2$ o $V_3$.

#definizione(title: "Base per V₂ o per V₃", label: <def-base-v2-v2>)[Un insieme di vettori è una base se ogni altro vettore in $V_2$ o $V_3$ può essere espresso come loro combinazione lineare in modo unico.]

Si dimostra che una base di $V_2$ consiste necessariamente in 2 vettori non paralleli, mentre una base di $V_3$ è formata da 3 vettori non complanari. Pertanto:
- in $V_2$, dati 2 vettori $arrow(v_1)$ e $arrow(v_2)$ non paralleli, ogni altro vettore $u$ può essere espresso come $ arrow(u) = lambda_1 arrow(v_1) + lambda_2 arrow(v_2) $
- in $V_3$, dati 3 vettori $arrow(v_1)$, $arrow(v_2)$ e $v_3$ non complanari, ogni altro vettore $u$ può essere scomposto come $ arrow(u) = lambda_1 arrow(v_1) + lambda_2 arrow(v_2) + lambda_3 arrow(v_3) $

I numeri $lambda_1$, $lambda_2$ e $lambda_3$ sono detti coordinate o componenti del vettore $arrow(u)$ rispetto alla base scelta; i vettori $lambda_1 v_1$, $lambda_2 v_2$ e $lambda_3 v_3$ sono i vettori componenti di $u$ rispetto alla stessa base. Si nota anche che $u$ può essere scritto come $arrow(u) = (lambda_1, lambda_2, lambda_3)$.

Nello spazio $S_3$, dato un sistema di coordinate cartesiano ortogonale monometrico, si può naturalmente associare a tale sistema una base di $V_3$ scegliendo tre vettori di modulo unitario paralleli e concordi ai tre assi coordinati. Questi vettori sono indicati come $arrow(e_1)$, $arrow(e_2)$ e $arrow(e_3)$.

Con questa scelta si arriva a un'importante conseguenza di facile verifica.

#definizione(title: "Componenti dei vettori e coordinate dei punti", label: <def-componenti-vettori-coordinate>)[In un sistema cartesiano ortogonale monometrico $O x y z$, considerando la base $arrow(e_1), arrow(e_2), arrow(e_3)$ di $V_3$, naturalmente associata a tale sistema, le componenti di ogni vettore $arrow(u)$ coincidono con le coordinate del punto $P = O + arrow(u)$: se $P = (x_P, y_P, z_P)$ allora $arrow(u) = (x_P, y_P, z_P)$.
Prendendo un punto $A$ arbitrario e un punto $B = A + arrow(u)$, risulta che $ arrow(u) = (x_B - x_A, space y_B - y_A, space z_B - z_A) $]

In $S_2$ e $V_2$ valgono considerazioni simili, ma con una coordinata in meno.

L'uso delle componenti semplifica notevolmente la gestione dei problemi legati ai vettori: le operazioni sui vettori possono essere eseguite direttamente sulle loro componenti. Inoltre, l'uso delle componenti permette facili generalizzazioni dei concetti dallo spazio a dimensione ordinaria a spazi con un numero arbitrario di dimensioni.

#grafici_coordinate_componenti

Infine, i concetti di coordinate di un punto e componenti di un vettore ci permettono di associare ai punti dello spazio e ai vettori liberi terne di numeri reali. Le operazioni ordinarie tra vettori possono essere eseguite tramite operazioni sulle terne, simili a quelle tra matrici. Pur rappresentando queste terne come vettori riga per semplicità tipografica, in realtà quando si utilizza la teoria delle matrici queste terne sono considerate come vettori colonna.

=== Operazioni tra vettori mediante le componenti

Presupponiamo di avere introdotto nello spazio un sistema cartesiano ortogonale monometrico $O x y z$, associandovi la base $e_1, e_2, e_3$ di $V_3$, chiamata base canonica. Se $u$ è un vettore di $V_3$ (da qui in avanti definito brevemente come un vettore dello spazio), utilizzeremo queste notazioni, il cui significato è ovvio:
$ arrow(u) = u_1 arrow(e_1) + u_2 arrow(e_2) + u_3 arrow(e_3) = (u_1, u_2, u_3) = u_x arrow(e_1) + u_y arrow(e_2) + u_z arrow(e_3) = \ = (u_x, u_y, u_z) = arrow(u_x) + arrow(u_y) + arrow(u_z) $

Le seguenti proprietà sono valide:
- somma di vettori: $  arrow(u) + arrow(v) = (u_1, u_2, u_3) + (v_1, v_2, v_3) = (u_1 + v_1, u_2 + v_2, u_3 + v_3) $
- prodotto di un vettore per un numero: $ c arrow(u) = c(u_1, u_2, u_3) = (c u_1, c u_2, c u_3) $
- prodotto scalare di due vettori: $ arrow(u) dot arrow(v) = u_1 v_1 + u_2 v_2 + u_3 v_3 $

Il prodotto scalare si può anche interpretare con il metodo del prodotto tra matrici:
$ arrow(u) dot arrow(v) = mat(u_1, u_2, u_3) dot mat(v_1; v_2; v_3) = mat(u_1; u_2; u_3)^T dot mat(v_1; v_2; v_3) = mat(u_1 v_1 + u_2 v_2 + u_3 v_3) $
dove l'ultima è una matrice con una riga e una colonna, quindi un numero reale.

La situazione è leggermente più complessa con il prodotto vettoriale: dati due vettori $u = (u_1, u_2, u_3)$ e $v = (v_1, v_2, v_3)$, si prende in considerazione la seguente matrice simbolica:
$ mat(
  arrow(e_1), arrow(e_2), arrow(e_3);
  u_1, u_2, u_3;
  v_1, v_2, v_3
) $

Il prodotto vettoriale dei due vettori si ottiene calcolando il determinante simbolico di questa matrice mediante lo sviluppo secondo la prima riga:
$ arrow(u) times arrow(v) &= mat(
  delim: "|",
  arrow(e_1), arrow(e_2), arrow(e_3);
  u_1, u_2, u_3;
  v_1, v_2, v_3
) \
&= (u_2 v_3 - u_3 v_2) arrow(e_1) - (u_1 v_3 - u_3 v_1) arrow(e_2) + (u_1 v_2 - u_2 v_1) arrow(e_3) \
&= (u_2 v_3 - u_3 v_2) arrow(e_1) + (u_3 v_1 - u_1 v_3) arrow(e_2) + (u_1 v_2 - u_2 v_1) arrow(e_3) $

In altre parole, le componenti del prodotto vettoriale di due vettori sono i cofattori degli elementi della prima riga della matrice simbolica sopra menzionata.

Arrivati a questo punto, è facile dimostrare che il prodotto misto di tre vettori è espresso da:
$ u dot v times w = u times v dot w = mat(
  delim: "|",
  u_1, u_2, u_3;
  v_1, v_2, v_3;
  w_1, w_2, w_3
) $


#esempio[Calcolare l'angolo tra i vettori $u = (1, 0, 2)$ e $v = (-1, 1, 1)$. 

Utilizzando il teorema di Pitagora:
$ |u| = sqrt(1^2 + 0^2 + 2^2) = sqrt(5), \
|v| = sqrt((-1)^2 + 1^2 + 1^2) = sqrt(3) $

Quindi:
$ u dot v = |u| |v| cos(hat(u v)) = sqrt(5) sqrt(3) cos(hat(u v)) = 1(-1) + 0(1) + 2(1) = 1 $

pertanto,
$ cos(hat(u v)) = 1 / sqrt(15) ==> hat(u v) = arccos(1 / sqrt(15)) approx 75° $][
  Calcolare i prodotti scalari e vettoriali tra le coppie di vettori della base canonica. 
  
  Tenendo conto delle condizioni di parallelismo e perpendicolarità, insieme alle proprietà dei due prodotti, si può concludere che:
- $arrow(e_1) dot arrow(e_1) = 1, quad arrow(e_2) dot arrow(e_2) = 1, quad arrow(e_3) dot arrow(e_3) = 1$
- $arrow(e_1) dot arrow(e_2) = 0, quad arrow(e_2) dot arrow(e_3) = 0, quad arrow(e_1) dot arrow(e_3) = 0$
- $arrow(e_1) times arrow(e_1) = 0, quad arrow(e_2) times arrow(e_2) = 0, quad arrow(e_3) times arrow(e_3) = 0$
- $arrow(e_1) times arrow(e_2) = arrow(e_3), quad arrow(e_2) times arrow(e_3) = arrow(e_1), quad arrow(e_3) times arrow(e_1) = arrow(e_2)$
- $arrow(e_2) times arrow(e_1) = -arrow(e_3), quad arrow(e_3) times arrow(e_2) = -arrow(e_1), quad arrow(e_1) times arrow(e_3) = -arrow(e_2)$
][
Usando i risultati dell'esempio precedente e le proprietà dei prodotti scalare e vettoriale, ritrovare le formule per il calcolo di questi prodotti tramite le componenti. Dati i vettori $arrow(u)$ e $arrow(v)$, si ha:
$ arrow(u) = u_1 arrow(e_1) + u_2 arrow(e_2) + u_3 arrow(e_3), quad arrow(v) = v_1 arrow(e_1) + v_2 arrow(e_2) + v_3 arrow(e_3) $

Calcolando il prodotto scalare:
$ arrow(u) dot arrow(v) &= (u_1 arrow(e_1) + u_2 arrow(e_2) + u_3 arrow(e_3)) dot (v_1 arrow(e_1) + v_2 arrow(e_2) + v_3 arrow(e_3)) = \
&= u_1 v_1 arrow(e_1) dot arrow(e_1) + u_1 v_2 arrow(e_1) dot arrow(e_2) + u_1 v_3 arrow(e_1) dot arrow(e_3) + u_2 v_1 arrow(e_2) dot arrow(e_1) + u_2 v_2 arrow(e_2) dot arrow(e_2) \
&quad + u_2 v_3 arrow(e_2) dot arrow(e_3) + u_3 v_1 arrow(e_3) dot arrow(e_1) + u_3 v_2 arrow(e_3) dot arrow(e_2) + u_3 v_3 arrow(e_3) dot arrow(e_3) = \
&= u_1 v_1 + u_2 v_2 + u_3 v_3 $

Calcolando il prodotto vettoriale:
$ arrow(u) times arrow(v) &= (u_1 arrow(e_1) + u_2 arrow(e_2) + u_3 arrow(e_3)) times (v_1 arrow(e_1) + v_2 arrow(e_2) + v_3 arrow(e_3)) = \
&= u_1 v_2 arrow(e_3) - u_1 v_3 arrow(e_2) - u_2 v_1 arrow(e_3) + u_2 v_3 arrow(e_1) + u_3 v_1 arrow(e_2) - u_3 v_2 arrow(e_1) \
&= (u_2 v_3 - u_3 v_2) arrow(e_1) - (u_1 v_3 - u_3 v_1) arrow(e_2) + (u_1 v_2 - u_2 v_1) arrow(e_3) $
][
Verificare se i tre vettori $u = (1, 2, 1)$, $v = (-2, 0, 3)$, $w = (-1, 2, 4)$ sono complanari.

 Per poterlo verificare, è sufficiente calcolare il prodotto misto in un ordine qualsiasi: $u dot (v times w)$ tramite il determinante:
$ arrow(u) dot arrow(v) times arrow(w) = mat(
  delim: "|",
  1, 2, 1;
  -2, 0, 3;
  -1, 2, 4
) = (-1)^(1+2) 2 mat(-2, 3; -1, 4) + (-1)^(3+2) 2 mat(1, 1; -2, 3) = \ =(-2)(-5) + (-2)(+5) = 0 $

Il calcolo del determinante mostra che il risultato è zero, quindi i vettori sono complanari.
]

== Rette nel piano, rette e piani nello spazio

Nel capitolo precedente è stata analizzata la rappresentazione analitica dei luoghi geometrici nel piano con un sistema cartesiano ortogonale monometrico $O x y$. In questa sezione, si vedrà come l'algebra lineare possa facilitare lo studio di tali problemi, fornendo una nuova prospettiva sulle rette nel piano. Inoltre, verrà estesa naturalmente l'analisi allo spazio tridimensionale, includendo lo studio dei piani oltre alle rette.

=== Grafici non cartesiani

Prima di esaminare le applicazioni dell'algebra lineare nello studio delle rette e dei piani, è necessaria una breve digressione sui vari sistemi di coordinate. I sistemi di coordinate cartesiane ortogonali monometrici non sono l'unico metodo disponibile e, talvolta, nemmeno il più semplice per associare punti del piano o dello spazio a coppie o terne di numeri reali.

Nel piano, un importante sistema alternativo è quello delle coordinate polari, che sono già state accennate parlando dei numeri complessi, nella @numeri_complessi. Fissato un punto $O$ nel piano, chiamato polo, e una semiretta $r$ per $O$ come origine degli angoli, è possibile associare a ogni punto $P$ del piano una coppia di numeri reali $(rho.alt, theta.alt)$. Qui $rho.alt$ è la distanza di $P$ da $O$, mentre $theta.alt$ è l'angolo misurato in senso antiorario in radianti tra la semiretta $r$ e $O P$. In questo modo, si introduce un sistema di coordinate polari nel piano.

Una volta definiti $O$ e $r$, possiamo considerare anche un sistema di coordinate cartesiane associato, con il semiasse positivo delle ascisse sulla semiretta $r$ e il semiasse positivo delle ordinate sulla semiretta $O P$, dove $P = (1, pi/2)$. Spesso si utilizzano contemporaneamente entrambi i sistemi di coordinate; tuttavia, questa pratica può generare confusione tra le coppie di numeri reali che rappresentano lo stesso punto nei due sistemi. In generale, il contesto aiuta a chiarire la situazione. Se necessario per distinguere le coordinate polari da quelle cartesiane, si possono adottare convenzioni già usate nei software matematici, come impiegare il punto e virgola o i due punti anziché la virgola nelle coordinate polari.

Il sistema polare presenta alcuni inconvenienti significativi:
- al punto $O$ corrisponde $rho.alt = 0$ senza un angolo definito
- l'angolo $theta.alt$ assume valori solo nell'intervallo $[0, 2pi[$, o un altro angolo di ampiezza $2 pi$

Il secondo inconveniente è problematico: ad esempio, se un punto si muove in senso antiorario attorno a una circonferenza di centro $O$ e raggio $1$ partendo da $rho.alt = 1$ e $theta.alt = 0$, quando riattraversa la semiretta origine, la seconda coordinata passa bruscamente da valori vicini a $2pi$ a $0$. Questo problema può essere affrontato introducendo angoli generalizzati maggiori di $2pi$, ma così facendo si perde la corrispondenza biunivoca tra i punti del piano e le coppie di numeri reali. Nonostante queste limitazioni, il sistema di coordinate polari rimane ampiamente utilizzato nelle applicazioni pratiche, come nella descrizione dei moti circolari.

Il punto che vogliamo sottolineare è che, quando si parla del grafico delle soluzioni di un'equazione, è fondamentale specificare il sistema di coordinate utilizzato. Prendiamo ad esempio l'equazione $y = x$ con le condizioni $x >= 0$ e $y >= 0$. La rappresentazione grafica di queste soluzioni, in un sistema cartesiano ortogonale monometrico, con $x$ come ascissa e $y$ come ordinata, risulta essere una semiretta (la bisettrice del primo quadrante). In un sistema polare, invece, dove $x$ è considerata come distanza dall'origine e $y$ come angolo generalizzato, la rappresentazione diventa una spirale, come illustrato nella @grafico_spirale_polare.

//? esempio di grafico polare e corrispondenza con quello cartesiano?
#grafico_spirale_polare

Per questo motivo, quando si chiede di tracciare il grafico delle soluzioni di un'equazione o di un sistema, è essenziale specificare il sistema di coordinate scelto. È importante ricordare che quando si dice che "un'equazione di primo grado in due incognite ha come grafico una retta", si presuppone che ci si stia riferendo a sistemi cartesiani e non polari.

In altri termini, l'insieme delle soluzioni di un'equazione in due incognite costituisce uno specifico sottoinsieme di $RR^2$, ma la sua rappresentazione grafica varia in base al sistema di coordinate scelto. Tuttavia, salvo esplicita indicazione contraria, si intende generalmente che il sistema di riferimento utilizzato sia cartesiano (ortogonale e monometrico).

=== Retta nel piano cartesiano

Considerare l'equazione più generale di primo grado in due incognite: $ a x + b y + c = 0 $ Affinché sia realmente un'equazione di primo grado, i coefficienti $a$ e $b$ non devono essere entrambi nulli. Questa condizione si esprime con $a^2 + b^2 > 0$ oppure $|a| + |b| > 0$.

Se utilizziamo la teoria delle matrici, possiamo considerare la matrice incompleta e quella completa relative all'equazione $a x + b y = -c$, che posiziona il termine noto al secondo membro:
$ bold(A) | b = mat(a, b, -c) $

Dal momento che i coefficienti $a$ e $b$ non possono essere simultaneamente nulli, la condizione fondamentale corrisponde alla risolubilità del sistema dato da quest'unica equazione:
$ mat(a, b) mat(x; y) = mat(-c) $

In questo contesto, la condizione diventa $ "rg"(bold(A)) = "rg"(bold(A) | b) = 1 $

Applicando la teoria dei sistemi lineari, possiamo affermare che, in queste ipotesi, l'equazione ha infinite soluzioni dipendenti da un parametro. In particolare:
- se $a != 0$, otteniamo $a x = -b y - c$; ponendo $y = t$, si ha:
  $ cases(x = -b/a t - c/a, y = t) $
- se $b != 0$, otteniamo $b y = -a x - c$; ponendo $x = t$, si ha:
  $ cases(x = t, y = -a/b t - c/b) $
- se $a != 0 and b != 0$, è possibile scegliere indifferentemente una delle due forme.

Considerando una formulazione generale che comprenda i casi già analizzati, la soluzione può essere espressa nella forma:

$ cases(x = lambda t + alpha, y = mu t + beta) $ <eq-retta-piano-cartesiano-soluzioni>

In un sistema cartesiano ortogonale monometrico $O x y$, l'insieme delle soluzioni di un'equazione di primo grado in due incognite è rappresentato graficamente da una retta $r$. Al contrario, a ogni retta $r$ del piano corrisponde un'equazione di primo grado in due incognite le cui soluzioni sono tutti e soli i punti della retta.

Pertanto:
+ un'equazione come quella indicata viene definita equazione implicita della retta
+ un sistema di equazioni del tipo sopra descritto è chiamato (sistema di) equazioni parametriche della retta o semplicemente equazione parametrica della retta

  Se $b$ è diverso da zero, l'equazione può anche essere scritta come: $ y = - (a/b) x - (c/b) = m x + q $

Questa è nota come equazione esplicita della retta. La condizione $b != 0$ implica che la retta non è verticale, cioè non è parallela all'asse $y$. È evidente che l'equazione esplicita può sempre essere scritta in forma implicita ($m x - y + q = 0$) o parametrica ($x = t$; $y = m t + q$).

Le proprietà sono le seguenti:

- equazione implicita: il vettore $v = (a, b)$ è perpendicolare alla retta.
- equazione parametrica: il vettore $u = (lambda, mu)$ è parallelo alla retta, ed è detto vettore direttore della retta. Il punto $P(alpha, beta)$ è un punto sulla retta.
- equazione esplicita: il numero $m$, chiamato coefficiente angolare, rappresenta la tangente trigonometrica dell'angolo $phi$ formato tra il semipiano delle $y$ positive e la direzione positiva dell'asse delle ascisse; l'angolo è considerato nullo se la retta è parallela all'asse delle ascisse. \ In base a quanto detto, il vettore $v = (m, -1)$ è perpendicolare alla retta, mentre il vettore $u = (1, m)$ le è parallelo. Si verifica infatti che $v dot u = 0$, conforme alla condizione di perpendicolarità tra due vettori. \ Il numero $q$ è detto ordinata all'origine perché rappresenta l'ordinata del punto con ascissa zero.

Il coefficiente angolare di una retta non verticale ha un importante significato geometrico: se $A(x_A, y_A)$ e $B(x_B, y_B)$ sono due punti sulla retta, allora:
$ m = (y_B - y_A) / (x_B - x_A) = (Delta y) / (Delta x) $

In sostanza, il coefficiente angolare indica la variazione verticale in relazione alla variazione orizzontale; per questo viene anche definito pendenza.

Un'altra forma utile dell'equazione di una retta è l'equazione segmentaria, applicabile quando $a$, $b$ e $c$ sono tutti diversi da zero, quindi la retta non è parallela a nessun asse e non passa per l'origine:
$ a x + b y = -c <==> x / (-c/a) + y / (-c/b) = 1 <==> x / p + y / q = 1 $ //? verificare se le frecce sono corrette

I numeri $p$ e $q$ indicano rispettivamente l'ascissa e l'ordinata dei punti di intersezione della retta con gli assi.

Da notare che quando si parla di equazioni parametriche di una retta, è preferibile usare il termine "una equazione parametrica" anziché "l'equazione parametrica". Infatti, la stessa retta può essere rappresentata in forma parametrica in infiniti modi diversi; l'importante è che il vettore $(lambda, mu)$ sia parallelo alla retta e che il punto $(alpha, beta)$ appartenga alla linea stessa. Ad esempio, le seguenti equazioni rappresentano tutte la stessa retta:

$ cases(x = t + 2, y = -2t + 1), quad cases(x = -t + 3, y = 2t - 1), quad cases(x = 1/2 t + 2, y = -t + 1) $

Sorge spontanea la domanda su come verificare se due equazioni parametriche rappresentano la stessa retta. Questa verifica può essere effettuata in due passaggi principali: innanzitutto, controllare se i vettori $(lambda_1, mu_1)$ e $(lambda_2, mu_2)$ sono paralleli; successivamente, verificare che il punto $(alpha_1, beta_1)$ soddisfi la seconda coppia di equazioni, mentre il punto $(alpha_2, beta_2)$ soddisfi la prima coppia. Utilizzare questa metodologia può essere utile come esercizio pratico.

Un'osservazione simile si applica alle equazioni implicite, come nel caso di $x + 2y - 1 = 0$ e $2x + 4y - 2 = 0$. Queste equazioni hanno le stesse soluzioni e rappresentano quindi la stessa retta. Questa considerazione è fondamentale quando si cerca di determinare l'equazione implicita di una retta: nonostante i parametri da trovare siano tre ($a, b, c$), le condizioni necessarie sono solo due.

=== Applicazioni

L'uso della teoria dei vettori insieme alle osservazioni precedenti permette di ricavare le principali formule relative alla geometria analitica della retta nel piano. Tutte queste formule possono essere considerate esercizi di calcolo vettoriale e verranno illustrate in dettaglio.

Nella trattazione seguente, $r$ e $s$ denotano due rette con le rispettive equazioni:
- implicite: $a_1 x + b_1 y + c_1 = 0$ e $a_2 x + b_2 y + c_2 = 0$
- parametriche: $display(cases(x = lambda_1 t + alpha_1, y = mu_1 t + beta_1)), quad display(cases(x = lambda_2 t + alpha_2, y = mu_2 t + beta_2))$
- esplicite: $y = m_1 x + q_1$ e $y = m_2 x + q_2$

==== Condizione di parallelismo

Due rette $r$ ed $s$ sono considerate parallele se e solo se i loro vettori normali o direttori sono paralleli. In termini matematici:

$ r parallel s <==> arrow(n_1) = vec(a_1, b_1) parallel arrow(n_2) = vec(a_2, b_2) $

oppure

$ r parallel s <==> vec(lambda_1, mu_1) parallel vec(lambda_2, mu_2) $

Utilizzando il prodotto vettoriale, la condizione di parallelismo nelle equazioni implicite è espressa come:

$ mat(delim: "|",arrow(i), arrow(j), arrow(k); a_1, b_1, 0; a_2, b_2, 0) = arrow(0) <==> mat(delim: "|",a_1, b_1; a_2, b_2) = 0 <==> a_1 b_2 - a_2 b_1 = 0 $

Analogamente, per le equazioni parametriche si ottiene:

$ mat(delim: "|",arrow(i), arrow(j), arrow(k); lambda_1, mu_1, 0; lambda_2, mu_2, 0) = arrow(0) <==> mat(delim: "|",lambda_1, mu_1; lambda_2, mu_2) = 0 <==> lambda_1 mu_2 - lambda_2 mu_1 = 0 $

Nel caso delle equazioni esplicite, la situazione è ancora più semplice:

$ mat(delim: "|",arrow(i), arrow(j), arrow(k); m_1, -1, 0; m_2, -1, 0) = vec(0) <==> mat(delim: "|",m_1, -1; m_2, -1) = 0 <==> m_1 = m_2 $

==== Condizione di perpendicolarità

Per verificare che due rette siano perpendicolari, si utilizza l'annullamento del prodotto scalare. Perciò:
- equazioni implicite: $a_1 a_2 + b_1 b_2 = 0$
- equazioni parametriche: $lambda_1 lambda_2 + mu_1 mu_2 = 0$
- equazioni esplicite: $m_1 m_2 + 1 = 0$, ovvero $m_1 m_2 = -1$ (supponendo le rette non siano verticali o orizzontali).

==== Retta per due punti
Dati due punti distinti $A(x_A, y_A)$ e $B(x_B, y_B)$, l'equazione della retta passante è individuata da:
Il vettore direttore $arrow(u) = (x_B - x_A, y_B - y_A)$ è parallelo alla retta, permettendo di scrivere le equazioni parametriche come:

$ cases(x = (x_B - x_A)t + x_A, y = (y_B - y_A)t + y_A) $

Per trovare l'equazione implicita, un punto $P(x, y)$ appartiene alla retta se il vettore $arrow(A P)$ è parallelo a $arrow(u)$. Tradotto nel linguaggio vettoriale, abbiamo:

$ mat(delim: "|",e_1, e_2, e_3; x_B - x_A, y_B - y_A, 0; x - x_A, y - y_A, 0) = 0 <==> mat(delim: "|", x_B - x_A, y_B - y_A; x - x_A, y - y_A ) = 0 $

Questa condizione può anche essere scritta come: $ (x - x_A)(y_B - y_A) = (y - y_A)(x_B - x_A) $ che spesso si trova scritta nella forma: $ (x - x_A) / (x_B - x_A) = (y - y_A) / (y_B - y_A) $ Tuttavia, sconsigliamo quest'ultima forma poiché richiede denominatori differenti da zero, implicando che la retta non sia parallela a nessuno dei due assi, una condizione non sempre applicabile.

==== Retta per un punto e parallela o perpendicolare a una retta data

Se la retta è non verticale, può essere scritta in forma esplicita come $y = m x + q$, oppure come $m x - y + q = 0$ con il vettore perpendicolare $arrow(v) = (m, -1)$. 

La forma parametrica è $ cases(x = t, y = m t + q) $

con il vettore parallelo $arrow(u) = (1, m)$. Per trovare la parallela a una retta data e passare per un punto $A(x_A, y_A)$, il punto $P(x, y)$ appartiene alla retta se e solo se il vettore $arrow(A P)$ è parallelo a $arrow(u)$. 
+ utilizzando la condizione di parallelismo, si ottiene: $ mat(delim: "|", arrow(e_2), arrow(e_2), arrow(e_3); 1, m, 0; x-x_A, y-y_A, 0) = <==> mat(delim: "|", 1, m; x-x_A, y-y_A) = 0 <==> y - y_A = m(x - x_A) $
+ per la condizione di perpendicolarità, si ottiene lo stesso risultato: $ mat(m; -1) dot mat(x-x_A; y-y_A) = 0 <==> y - y_A = m(x - x_A) $

Se non è possibile scrivere la retta in forma esplicita e si opta per la forma implicita $a x + b y + c = 0$, un vettore perpendicolare alla retta è $arrow(v) = (a, b)$, mentre per determinare un vettore parallelo si possono scegliere due punti arbitrari $P$ e $Q$ sulla retta e considerare il vettore $arrow(u) = P - Q$. Il processo rimane identico a quanto precedentemente descritto.

==== Distanza di un punto da una retta

Si consideri $A(x_A, y_A)$ un punto e $r$ una retta con equazione implicita $a x + b y + c = 0$. Il punto generico $P(x_P, y_P)$ sulla retta permette di calcolare $d(A, r)$, ovvero il modulo della proiezione di $arrow(A P)$ sulla perpendicolare alla retta stessa. 

Osservando la @grafico_distanza_punto_retta, si nota che la lunghezza $ |overline(A H)| = |arrow(A P)| dot |cos(phi)| $

Notare che il vettore $arrow(v) = (a, b)$ è perpendicolare alla retta, il che significa che è parallelo ad $overline(A H)$. Questo vettore $arrow(v)$ potrebbe avere la stessa direzione di $arrow(A H)$ o di $arrow(H A)$. Pertanto, l'angolo tra $arrow(v)$ e $arrow(A P)$ può essere $phi$ oppure $pi - phi$, ma questi due angoli hanno valori di coseno che differiscono soltanto per il segno. 

#grafico_distanza_punto_retta

Si intuisce che:

$ |arrow(v) dot arrow("AP")| = |a(x_P - x_A) + b(y_P - y_A)| = |arrow(v)| |arrow("AP")| |cos(phi.alt)| $

da cui

$ |cos(phi.alt)| = (|a(x_P - x_A) + b(y_P - y_A)|) / (|arrow(v)| |arrow("AP")|) $

Tenere ora conto che il punto A appartiene alla retta, per cui $a x_A + b y_A = -c$, e che

$ |arrow(v)| = sqrt(a^2 + b^2) $

Allora

$ |cos(phi.alt)| = (|a x_P + b y_P - (a x_A + b y_A)|) / (|arrow(v)| |arrow("AP")|) = (|a x_P + b y_P + c|) / (|arrow(v)| |arrow("AP")|) $

Si conclude che:

$ d(A, r) = |arrow("AH")| = |arrow("AP")| dot |cos(phi.alt)| = |arrow("AP")| (|a x_P + b y_P + c|) / (sqrt(a^2 + b^2) |arrow("AP")|) = (|a x_P + b y_P + c|) / sqrt(a^2 + b^2). $

=== Intersezioni di rette nel piano

Quando si hanno due o più rette in un piano, si può discutere se esse condividano o meno dei punti in comune. Da un punto di vista algebrico, questo problema si traduce nella risoluzione di un sistema di equazioni con due incognite, a cui possono essere applicate tutte le tecniche già note.

Particolarmente importante, per il suo significato geometrico, è il caso di due rette: $a_1 x + b_1 y + c_1 = 0$ e $a_2 x + b_2 y + c_2 = 0$. Il sistema formato da queste due equazioni è:
$ cases(a_1 x + b_1 y = -c_1, a_2 x + b_2 y = -c_2) $

Le matrici incompleta e completa corrispondenti sono:
$ A | b = mat(augment: #2, a_1, b_1, -c_1; a_2, b_2, -c_2) $

Si possono verificare tre situazioni:

- se $"rg"(bold(A)) = 2$ (e quindi necessariamente $"rg"(bold(A) | b) = 2$), allora
  $ mat(delim: "|", a_1, b_1; a_2, b_2) != 0 $
  In questo caso, il sistema ha una sola soluzione, che rappresenta il punto di intersezione delle due rette. La condizione indica che le due rette non sono parallele e fanno parte di un fascio proprio di rette.

- se $"rg"(bold(A)) = 1$ e $"rg"(bold(A) | b) = 2$, allora
  $ mat(delim: "|", a_1, b_1; a_2, b_2) = 0 , quad mat(delim: "|",a_1, -c_1; a_2, -c_2) != 0 quad or quad mat(delim: "|",b_1, -c_1; b_2, -c_2) != 0 $
  In questo scenario, il sistema non ha soluzioni, indicando che le due rette sono parallele ma distinte e fanno parte di un fascio improprio di rette.

- se $"rg"(bold(A)) = 1$ e $"rg"(bold(A) | b) = 1$, allora
  $ mat(delim: "|",a_1, b_1; a_2, b_2) = 0, quad mat(delim: "|",a_1, -c_1; a_2, -c_2) = mat(delim: "|",b_1, -c_1; b_2, -c_2) = 0 $
  In questo caso, il sistema ha infinite soluzioni. Ciò significa che le due rette sono parallele e coincidenti.

=== Piani nello spazio cartesiano

Quando consideriamo l'equazione di un piano nello spazio cartesiano, seguiamo un approccio simile a quello delle rette, con l'aggiunta di una variabile che rende il problema più complesso e interessante. Questo è evidente se si confrontano le spiegazioni seguenti con quelle delle rette nel piano.

Prendiamo in esame la più generale equazione di primo grado con tre incognite:
$ a x + b y + c z + d = 0 $ <eq-generale-primo-grado>

Affinché l'equazione rappresenti effettivamente un primo grado, i coefficienti $a$, $b$ e $c$ non devono essere simultaneamente nulli. In termini matematici, questa condizione si esprime come $a^2 + b^2 + c^2 > 0$ o anche $|a| + |b| + |c| > 0$.

Volendo applicare la teoria delle matrici, consideriamo la matrice incompleta e quella completa, riformulando l'equazione nel formato tipico dei sistemi: $a x + b y + c z = -d$, ovvero con il termine noto al secondo membro:
$ bold(A) | b = mat(a, b, c, -d) $

Si osserva inoltre che la risolubilità del sistema rappresentato (costituito da una sola equazione) richiede che:
$ "rg"(bold(A)) = "rg"(bold(A) | b) = 1 $

Secondo la teoria generale dei sistemi lineari, in queste condizioni l'equazione ha $oo^2$ soluzioni, dipendenti da due parametri. In dettaglio:
- se $a != 0$, scrivere $a x = -b y - c z - d$. Ponendo $y = u$ e $z = v$, si ottiene:
  $ cases(x = - display(b/a) u - display(c/a) v - display(d/a), y = u, z = v) $
- se $b != 0$, scrivere $b y = -a x - c z - d$. Ponendo $x = u$ e $z = v$, si ottiene:
  $ cases(x = u, y = - display(a/b) u - display(c/b) v - display(d/b), z = v) $
- se $c != 0$, scrivere $c z = -a x - b y - d$. Ponendo $x = u$ e $y = v$, si ottiene:
  $ cases(x = u, y = v, z = - display(a/c) u - display(b/c) v - display(d/c)) $
- se $a != 0$, $b != 0$ e $c != 0$, è possibile scegliere indifferentemente fra queste espressioni.

Per una formulazione generale che includa tutti i casi sopra descritti, è possibile esprimere la soluzione nel modo seguente:
$ cases(x = lambda_1 u + lambda_2 v + alpha, y = mu_1 u + mu_2 v + beta, z = nu_1 u + nu_2 v + gamma) $ <eq-soluzioni-sistema>

In un sistema cartesiano ortogonale $O x y z$, l'insieme delle soluzioni di un'equazione di primo grado in tre variabili rappresenta sempre un piano $pi$. Allo stesso modo, ogni piano nello spazio può essere espresso attraverso un'equazione di primo grado in due variabili, le cui soluzioni corrispondono a tutti i punti del piano.
+ un'equazione del tipo la @eq-generale-primo-grado è denominata equazione implicita del piano.
+ un sistema di equazioni come la @eq-soluzioni-sistema è chiamato sistema di equazioni parametriche del piano, o semplicemente equazione parametrica del piano.

Se $c != 0$, l'equazione @eq-generale-primo-grado può essere riscritta come:
$ z = - (a/c) x - (b/c) y - (d/c) = m x + n y + q $

Questa è definita equazione esplicita del piano. La condizione $c != 0$ assicura che il piano non sia "verticale", cioè non parallelo all'asse $z$ o perpendicolare al piano $x y$.

È evidente che un'equazione esplicita può sempre essere espressa in forma implicita ($m x + n y - z + q = 0$) o in forma parametrica ($x = u$; $y = v$; $z = m u + n v + q$).

Le seguenti proprietà sono valide:
- equazione implicita: il vettore $v = (a, b, c)$ è perpendicolare al piano
- equazione parametrica: i vettori $u_1 = (lambda_1, mu_1, nu_1)$ e $u_2 = (lambda_2, mu_2, nu_2)$ sono paralleli al piano e non paralleli tra loro, definiti come vettori di giacitura del piano; il punto $P(alpha, beta, gamma)$ è un punto sul piano
- equazione esplicita: da quanto detto, il vettore $v = (m, n, -1)$ è perpendicolare al piano, mentre i vettori $u_1 = (1, 0, m)$ e $u_2 = (0, 1, n)$ sono paralleli al piano. Si può facilmente verificare che i vettori $v = (m, n, -1)$ e $u = u_1 times u_2$ sono paralleli tra loro

Un'altra forma utile dell'equazione di un piano in alcune circostanze è l'equazione segmentaria, applicabile quando $a$, $b$, $c$ e $d$ sono tutti diversi da zero (il piano non è parallelo a nessuno dei tre assi e non passa per l'origine). In questo caso si ha:
$ a x + b y + c z = -d ==> x / (-d/a) + y / (-d/b) + z / (-d/c) = 1 ==> x / p + y / q + z / r = 1 $

I numeri $p$, $q$ ed $r$ rappresentano le coordinate dei punti di intersezione del piano con gli assi.

#grafico_equazione_segmentaria

=== Applicazioni

Utilizzando concetti simili a quelli già esposti per la retta, la teoria dei vettori permette di ottenere tutte le principali formule della geometria analitica del piano nello spazio. Anche in questo contesto, le formule che dedurremo possono essere considerate esercizi di calcolo vettoriale. Come nel caso della retta, utilizzeremo notazioni il cui significato sarà chiaro in base al contesto.

==== Condizioni di parallelismo e perpendicolarità

Due piani $alpha$ e $beta$ sono paralleli se e solo se i loro vettori normali sono paralleli. Se i piani sono dati in forma implicita, i vettori normali corrispondono a $(a_1, b_1, c_1)$ e $(a_2, b_2, c_2)$. Quando i piani sono definiti in forma parametrica, i vettori normali si ottengono attraverso il prodotto vettoriale di due vettori di giacitura. Nel caso implicito, la condizione di parallelismo si esprime:
$ mat(delim: "|", arrow(e_1), arrow(e_2), arrow(e_3); a_1, b_1, c_1; a_2, b_2, c_2) = arrow(0) <==> "rg" mat(a_1, b_1, c_1; a_2, b_2, c_2) = 1 $

Inoltre, due piani $alpha$ e $beta$ sono perpendicolari se e solo se i loro vettori normali sono ortogonali. La perpendicolarità, per equazioni implicite, è descritta usando il prodotto scalare:
$ a_1 a_2 + b_1 b_2 + c_1 c_2 = 0 $

==== Piano attraverso tre punti non allineati

Considerando tre punti non allineati $A(x_A, y_A, z_A)$, $B(x_B, y_B, z_B)$ e $C(x_C, y_C, z_C)$, vogliamo determinare l'equazione del piano definito da essi. I vettori $arrow(A B)$ e $arrow(A C)$ sono non paralleli e possono fungere da vettori di giacitura del piano. Le equazioni parametriche risultano quindi:
$ cases(
  x = (x_B - x_A) u + (x_C - x_A) v + x_A,
  y = (y_B - y_A) u + (y_C - y_A) v + y_A,
  z = (z_B - z_A) u + (z_C - z_A) v + z_A
) $

Per ottenere un'equazione implicita si possono seguire diversi metodi. Calcolando il prodotto vettoriale $arrow(v) = arrow(A B) times arrow(A C)$ si ottiene un vettore perpendicolare al piano: le sue componenti $(a, b, c)$ possono essere utilizzate come coefficienti nell'equazione $a x + b y + c z + d = 0$. Il coefficiente $d$ si determina imponendo il passaggio attraverso uno dei punti dati.

Alternativamente, si può notare che un punto $P(x, y, z)$ appartiene al piano se e solo se i vettori $arrow(A P)$, $arrow(A B)$ e $arrow(A C)$ sono complanari. Questa condizione di complanarità si esprime tramite il determinante:
$ mat(delim: "|",
  x - x_A, y - y_A, z - z_A;
  x_B - x_A, y_B - y_A, z_B - z_A;
  x_C - x_A, y_C - y_A, z_C - z_A
) = 0 $

==== Piano per un punto e parallelo a un piano dato

Per trovare un piano che passi attraverso un punto specifico e sia parallelo a un piano già dato, si parte dall'equazione del piano assegnato: $a x + b y + c z + d = 0$. Il piano cercato avrà la forma $a x + b y + c z + delta = 0$. La determinazione del valore di $delta$ si ottiene inserendo le coordinate del punto nel piano e risolvendo l'equazione risultante.

==== Distanza di un punto da un piano

Calcolare la distanza di un punto da un piano è simile al processo per una retta. Prendendo $A(x_A, y_A, z_A)$ come il punto e $pi$ il piano con equazione $a x + b y + c z + d = 0$, la distanza è data da:
$ d(A, pi) = (|a x_A + b y_A + c z_A + d|) / sqrt(a^2 + b^2 + c^2) $

#grafico_distanza_piano

=== Intersezione di piani nello spazio

Quando si considerano due o più piani nello spazio, il problema dell'intersezione si riduce alla risoluzione di un sistema di equazioni con tre incognite. I casi di interesse sono quelli con due o tre piani, le cui equazioni sono:
$ a_1 x + b_1 y + c_1 z + d_1 = 0 \ a_2 x + b_2 y + c_2 z + d_2 = 0 \ a_3 x + b_3 y + c_3 z + d_3 = 0 $

Per tre piani, il sistema è:
$ cases(
  a_1 x + b_1 y + c_1 z = -d_1,
  a_2 x + b_2 y + c_2 z = -d_2,
  a_3 x + b_3 y + c_3 z = -d_3
) $

Considerando la matrice incompleta e quella completa:
$ bold(A) | b = mat(
  a_1, b_1, c_1, -d_1;
  a_2, b_2, c_2, -d_2;
  a_3, b_3, c_3, -d_3
) $

Se la matrice $A$ ha rango massimo (3), il sistema è compatibile con una sola soluzione: i tre piani si intersecano in un punto comune, formando una stella di piani.

Se il rango di $bold(A)$ è minore di 3, il sistema può essere compatibile o incompatibile, a seconda che $bold(A) | b$ condivida lo stesso rango di $bold(A)$. Se compatibile e $bold(A)$ ha rango 2, una delle equazioni è superflua; le altre due formano un sistema con infinite soluzioni, una retta comune, definendo un fascio di piani. Con rango 1, due equazioni sono superflue, e tutte le soluzioni coincidono (piani coincidenti).

In caso di incompatibilità, esistono vari scenari: i piani possono essere paralleli o due paralleli con un altro distinto, oppure possono incontrarsi in rette parallele. Studiare i ranghi delle matrici $A$ e $(A | b)$ aiuta a comprendere meglio queste situazioni.

Consideriamo un sistema composto da due equazioni:
$ cases(a_1 x + b_1 y + c_1 z = -d_1, a_2 x + b_2 y + c_2 z = -d_2) $

Osserviamo le seguenti matrici incompleta e completa:
$ bold(A) | b = mat(a_1, b_1, c_1, -d_1; a_2, b_2, c_2, -d_2) $

Se il rango della matrice $A$, e quindi della matrice completa $bold(A) | b$, è 2, significa che il sistema ha infinite soluzioni che dipendono da un parametro $t$. Questo scenario rappresenta i punti della retta risultante dall'intersezione di due piani non paralleli. Nel contesto spaziale, una retta in equazione cartesiana si determina proprio come intersezione tra due piani non paralleli. Se invece il rango di $bold(A)$ è 1 e il sistema è compatibile, il sistema avrà infinite soluzioni ed i piani coincideranno; mentre se il sistema non è compatibile, i due piani risulteranno paralleli. Il rango pari a 1 indica una condizione di parallelismo tra i vettori $(a_1, b_1, c_1)$ e $(a_2, b_2, c_2)$.

=== Rette nello spazio

Le rette nello spazio possono essere rappresentate principalmente in due modi: attraverso equazioni cartesiane, che descrivono l'intersezione di due piani non paralleli (come già menzionato), oppure mediante equazioni parametriche.

Rivediamo quindi il sistema di due equazioni in tre incognite precedentemente considerato:
$ cases(a_1 x + b_1 y + c_1 z + d_1 = 0, a_2 x + b_2 y + c_2 z + d_2 = 0) $ <eq-rette-spazio>

Riformuliamolo con i termini noti al secondo membro:
$ cases(a_1 x + b_1 y + c_1 z = -d_1, a_2 x + b_2 y + c_2 z = -d_2) $

Con le seguenti matrici incompleta e completa:
$ bold(A) | b = mat(a_1, b_1, c_1, -d_1; a_2, b_2, c_2, -d_2) $

Supponendo che il rango di $bold(A)$ sia 2, significa che i due piani non sono paralleli. Almeno uno dei minori della matrice $bold(A)$ avrà un determinante diverso da zero, permettendo l'uso del metodo di risoluzione noto per i sistemi. Ad esempio, se
$ mat(delim: "|",a_1, b_1; a_2, b_2) != 0 , $
il sistema può essere riformulato come:
$ cases(a_1 x + b_1 y = -c_1 z - d_1, a_2 x + b_2 y = -c_2 z - d_2) $

Impostando $z = t$, possiamo risolvere il sistema con il metodo di Cramer e la soluzione apparirà come:
$ cases(x = lambda t + alpha, y = mu t + beta, z = t) $

con valori appropriati dei parametri. In generale, la soluzione può essere espressa come:
$ cases(x = lambda t + alpha, y = mu t + beta, z = nu t + gamma) $ <eq-rette-spazio-soluzioni>

denominati equazioni parametriche di una retta nello spazio. Il sistema di equazioni parametriche @eq-rette-spazio è invece detto equazione cartesiana di una retta nel piano. Come si può notare la @eq-rette-spazio-soluzioni è praticamente identica alla @eq-retta-piano-cartesiano-soluzioni, con la differenza principale dell'inclusione della variabile $z$. Le stesse proprietà sono applicabili. In particolare, il vettore $u = (lambda, mu, nu)$ è parallelo alla retta ed è chiamato vettore direttore della retta; il punto $P(alpha, beta, gamma)$ appartiene alla retta.

La trasformazione tra le diverse forme di un'equazione di retta può avvenire attraverso diversi approcci. Iniziando dall'equazione cartesiana, si può passare a quella parametrica seguendo il metodo basato sulla regola di Cramer. Un'alternativa consiste nel considerare il prodotto vettoriale tra due vettori $arrow(v)_1 = (a_1, b_1, c_1)$ e $arrow(v)_2 = (a_2, b_2, c_2)$, che fornisce un vettore direttore della retta. Successivamente, è sufficiente identificare un punto sulla retta. Per ritrasformare l'equazione parametrica in cartesiana, il procedimento è immediato: si può risolvere per la variabile $t$ in una delle equazioni e sostituirla nelle altre due.

È importante tenere a mente che l'equazione cartesiana fornisce immediatamente uno o più vettori perpendicolari alla retta, mentre l'equazione parametrica offre un vettore parallelo alla retta. Le proprietà vettoriali consentono di risolvere vari problemi relativi a rette e piani nello spazio.

=== Esempi e applicazioni

Presentiamo alcuni problemi tipici relativi a rette e piani nello spazio. Forniremo istruzioni di base per uno dei metodi possibili come esercizio utile per tradurre le indicazioni in procedimenti pratici, esplorando le numerose alternative disponibili.

==== Piano parallelo a due rette non parallele e passante per un punto

Le due rette determinano due vettori che definiscono la giacitura del piano. La posizione del punto specifica univocamente il piano, e le equazioni parametriche sono facilmente ricavabili. Se invece le rette fossero parallele, il problema avrebbe infinite soluzioni rappresentate da un fascio di piani attraverso la retta data e paralleli alle altre rette.
==== Retta per due punti

Dati i punti $A$ e $B$, il vettore $arrow(A B)$ diventa un vettore direttore della retta. Unendo questo al passaggio per uno dei punti, si ottengono immediatamente le equazioni parametriche.

==== Piano per un punto e una retta non facenti parte reciprocamente

Si può scegliere di individuare un punto $A$ sulla retta. Denominandolo $P$ e considerando $vec(u)$ come vettore direttore della retta, si definisce il piano utilizzando i vettori di giacitura $arrow(A P)$ e $vec(u)$, insieme al punto $P$.

==== Piano individuato da due rette incidenti

I vettori direttori delle rette forniscono i vettori di giacitura del piano. Il loro punto di intersezione (o un qualsiasi altro punto su una delle rette) determina un punto del piano.

==== Retta per un punto parallela a due piani non paralleli

È sufficiente trovare la retta intersezione dei piani; un suo vettore direttore diventa anche direttore della retta cercata, individuata dal passaggio per il punto dato.

==== Retta per un punto e perpendicolare a una retta esterna al punto

Considerando $A(x_A, y_A, z_A)$ come il punto e l'equazione parametrica della retta $r$ come
   $ cases(x = lambda t + alpha, y = mu t + beta, z = nu t + gamma) $
   il punto $Q(x, y, z)$, proiezione di $A$ su $r$, si determina imponendo che $arrow(Q A)$ sia perpendicolare a $(lambda, mu, nu)$, espresso tramite il prodotto scalare:
   $ (lambda t + alpha - x_A) lambda + (mu t + beta - y_A) mu + (nu t + gamma - z_A) nu = 0 $
   Da qui si trova il punto $Q$, e l'equazione della retta cercata è quella che passa per i due punti.