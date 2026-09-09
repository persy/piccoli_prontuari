#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Grafici costruibili per via elementare <grafici_elementari>

#intro[In questo capitolo presentiamo una panoramica di tecniche per disegnare grafici di funzioni reali a variabile reale su un sistema cartesiano ortogonale, senza ricorrere al calcolo infinitesimale. Sebbene, in alcuni casi, potremo dover impiegare termini come "asintoto" o "limite", ci limiteremo a visioni intuitive.

Queste tecniche sono particolarmente rilevanti nelle applicazioni pratiche e permettono di verificare rapidamente la correttezza dei risultati ottenuti con i metodi tradizionali dell'analisi, che saranno oggetto di studio nei corsi universitari. Alcune delle idee riportate qui sono già state trattate in altre parti del testo, ma sono riesposte per completezza.

Negli esempi considerati, supporremo di avere già disegnato, con varie tecniche, il grafico di una o più funzioni, proponendoci poi di dedurre da questi il grafico di altre funzioni mediante semplici operazioni "grafiche".]

== Simmetrie

Per una funzione $f(x)$ di cui conosciamo il grafico, possiamo ottenere il grafico di $f(-x)$ riflettendo la funzione originale rispetto all'asse $y$. Allo stesso modo, per ottenere il grafico di $-f(x)$, si riflette rispetto all'asse $x$. In altre parole, con la funzione espressa come $y = f(x)$, sostituire $x$ con $-x$ genera la funzione simmetrica rispetto all'asse $y$, mentre sostituire $y$ con $-y$ genera la funzione simmetrica rispetto all'asse $x$.

Un caso interessante si verifica quando i grafici di $f(x)$ e $f(-x)$ coincidono; in tal caso, la funzione è detta pari. Se invece coincidono i grafici di $f(x)$ e $-f(-x)$, la funzione è detta dispari. È importante notare che una funzione non può essere classificata come pari o dispari se il suo dominio non è simmetrico rispetto all'origine; ad esempio, la funzione $f(x)$ nella @grafico_costruibile_elementare1 non può essere né pari né dispari poiché il suo dominio naturale è $RR^+$. Esempi classici di funzioni pari e dispari sono rispettivamente la funzione coseno e la funzione seno.

#esempio[Le funzioni $f(x) = sqrt(x)$, $g(x) = sqrt(-x)$, $h(x) = -sqrt(x)$ hanno i grafici illustrati in @grafico_costruibile_elementare1.

Per qualunque funzione $f(x)$ di cui sappiamo disegnare il grafico, è semplice ottenerne il simmetrico rispetto a una retta verticale con equazione $x = k$ o a una retta orizzontale con equazione $y = k$. Chiamiamo $g(x)$ e $h(x)$ le funzioni con questi grafici e osserviamo che, se un punto $P_1(x_1, y_1)$ è sul grafico di $f(x)$, allora il suo simmetrico $P_2(x_2, y_2)$ rispetto a $x = k$ sarà sul grafico di $g(x)$, mentre il suo simmetrico $P_3(x_3, y_3)$ rispetto a $y = k$ sarà sul grafico di $h(x)$, secondo le relazioni:

$ (x_1 + x_2) / 2 = k => x_2 = -x_1 + 2k, quad quad y_2 = y_1 $

$ x_3 = x_1, quad quad  (y_1 + y_3) / 2 = k => y_3 = -y_1 + 2k $

#grafico_costruibile_elementare1

Dunque, per ottenere l'espressione analitica di $y = g(x)$, è sufficiente sostituire $x$ con $-x + 2k$ nell'espressione $y = f(x)$. Analogamente, per ottenere l'espressione analitica di $y = h(x)$, basta sostituire $y$ con $-y + 2k$ nell'equazione $y = f(x)$, ovvero sostituire $f(x)$ con $-f(x) + 2k$.

#grafico_costruibile_elementare2

#grafico_costruibile_elementare3

]

== Traslazioni

Quando si ha una funzione $f(x)$ di cui possiamo tracciare il grafico, per ottenere il grafico di $g(x) = f(x) + k$, basta spostare il grafico di $f(x)$ verticalmente di $k$ unità. Se $k > 0$, la traslazione avviene verso l'alto; se $k < 0$, avviene verso il basso. 

#grafici_costruibili1

Allo stesso modo, dato il grafico di $f(x)$, per ottenere il grafico di $g(x) = f(x + k)$, si esegue una traslazione orizzontale del grafico. Se $k > 0$, si sposta verso sinistra, mentre se $k < 0$, lo spostamento è verso destra.

#grafici_costruibili2

== Cambiamenti di scala

Considerando una funzione $f(x)$, quando vogliamo tracciare il grafico di $k f(x)$, con $k$ un numero reale, se $k > 0$, si moltiplicano tutte le ordinate della funzione per $k$. Se $k < 0$, c'è anche un riflesso rispetto all'asse $x$. Un valore assoluto $|k| < 1$ causa uno "schiacciamento", mentre maggiore di 1 porta a una "dilatazione". Se $k = 1$, il grafico rimane invariato; se $k = -1$, si ottiene una simmetria rispetto all'asse $x$.

#grafici_costruibili3

Per la funzione $f(k x)$, se, ad esempio, a $x = 1$ corrispondeva un certo valore $y$ nella funzione originale, ora lo stesso valore si ottiene a $x = 1/k$. Se $k > 1$, c'è uno schiacciamento orizzontale; se $0 < k < 1$ si ha un allargamento orizzontale. Con un $k = 1$, non ci sono variazioni. Se $k < 0$, vi è una simmetria rispetto all'asse $y$; con $k = -1$ , si ha una semplice simmetria rispetto all'asse $y$.

#grafici_costruibili4

#esempio[Trovare il grafico della curva $y = 2 x^2 + 4x - 1$ partendo da quello di $y = x^2$

Innanzitutto, riscrivere la la curva come $y = 2(x^2 + 2x) - 1$. Completando il quadrato come $x^2 + 2x = (x^2 + 2x + 1) - 1$ l'equazione della funzione diventa $ y = 2 (x^2 + 2x + 1 - 1) -1$. Semplificando, si arriva a $y = 2(x + 1)^2 - 3$. I grafici da considerare sono, in ordine: $y = x^2$, $y = (x + 1)^2$, $y = 2(x + 1)^2$ e infine $y = 2(x + 1)^2 - 3$.

#grafici_costruibili5

]

Nell'esempio illustrato in precedenza si poteva tracciare direttamente il grafico della parabola, ma è stato necessario applicare le tecniche studiate, per facilitarne la comprensione e il controllo.

È importante considerare attentamente le combinazioni delle operazioni. Per tracciare il grafico di $f(2x + 1)$ partendo da $f(x)$, si possono adottare due metodi: 
+ tracciare prima $f(x + 1)$ (traslazione verso sinistra di 1 unità), seguito da $f(2x + 1)$ (schiacciamento orizzontale con un fattore di 2)
+ tracciare prima $f(2x)$ (schiacciamento orizzontale con un fattore di 2), seguito dalla rappresentazione di $f(2x + 1) = f(2(x + 1/2))$ (traslazione verso sinistra di $1/2$ unità).


#grafici_costruibili6

== Valori assoluti

L'introduzione di valori assoluti nel disegno dei grafici delle funzioni attraverso metodi elementari può comportare diverse situazioni. Vediamo due casi principali:
+ data una funzione $f(x)$, bisogna tracciare il grafico di $|f(x)|$.
+ data una funzione $f(x)$, bisogna tracciare il grafico di $f(|x|)$.

Questi sono problemi abbastanza semplici; basta ricordare la definizione di valore assoluto per arrivare alle seguenti conclusioni:
+ il grafico di $|f(x)|$ si ottiene semplicemente ribaltando, rispetto all'asse $x$, la parte del grafico di $f(x)$ che si trova sotto l'asse stesso.
+ il grafico di $f(|x|)$ viene realizzato prendendo in considerazione solo la porzione del grafico di $f(x)$ dove $x >= 0$, estendendola poi per simmetria rispetto all'asse $y$, dove $x <= 0$.

#grafici_costruibili7

Altri casi che coinvolgono valori assoluti possono essere trattati semplicemente considerando la definizione di valore assoluto. Ecco alcuni esempi per chiarire il metodo.

#esempio[Per disegnare il grafico di $f(x) = x + |x - 1| - |2x + 1|$, iniziamo osservando che:

$ |x - 1| = cases( -(x - 1)\, quad &x < 1, x - 1\, quad &x >=1), quad |2x + 1| = cases(-(2x + 1)\, quad &x < display(-1/2), 2x + 1\, &x >= display(-1/2)) $

Questo permette di riscrivere la funzione come:

$ f(x) = cases(
  2x + 2\, quad &x < display(-1/2),
  -2x\, quad &display(-1/2) <= x < 1,
  -2\, quad &x >= 1
) $

Il grafico sarà quindi costituito da segmenti delle rette, tutte facili da tracciare, come illustrato nella @grafico_costruibile_elementare24.

#grafico_costruibile_elementare24

][
Per tracciare il grafico di $f(x) = x^2 + x - |3x + 1|$, si nota che:

$ |3x + 1| = cases(-(3x + 1)\, quad &x < display(-1/3), 3x + 1\, quad &x >= display(-1/3)) $

Questo consente di riscrivere la funzione $f(x)$ come:

$ f(x) = cases(
  x^2 - 2x - 1\, quad &x >= display(-1/3),
  x^2 + 4x + 1\, quad & x < display(-1/3)
) $

#grafico_costruibile_elementare25
]


== Operazioni tra funzioni

Una tecnica comune per creare nuovi grafici partendo da grafici esistenti è quella di utilizzare somme, prodotti, quozienti, composizioni e potenze di funzioni note. Questo approccio può essere complesso e richiede attenzione e accuratezza. Ci concentreremo su alcune situazioni piuttosto semplici legate a funzioni "abbastanza regolari".

=== Passaggio al reciproco

Data una funzione $f(x)$, è possibile derivare il grafico della funzione $1 / f(x)$. Si osserva che, in intervalli dove $f(x)$ cresce con segno costante, il suo reciproco decresce, e viceversa. È utile considerare anche alcuni "comportamenti asintotici" a livello intuitivo. In particolare, sono rilevanti queste osservazioni:
- nei punti in cui $f(x)$ è zero, il reciproco non è definito e tende all'infinito, generando asintoti verticali
- in prossimità dei punti dove $f(x)$ tende all'infinito, il reciproco si avvicina a zero

Le #ref(<grafico_costruibile_elementare26>, supplement: "Figure") e #ref(<grafico_costruibile_elementare27>, supplement: none) illustrano il passaggio dal grafico della funzione $f(x) = x^2 - x - 2$ a quello del suo reciproco.

#grafici_costruibili8

=== Logaritmo naturale di una funzione

La funzione del logaritmo naturale è strettamente crescente nel suo dominio. Pertanto, data una funzione $f(x)$, la funzione $ln(f(x))$ sarà crescente o decrescente esattamente come $f(x)$. È fondamentale ricordare che $ln(f(x))$ è definita solo dove $f(x)$ è positiva. È utile riflettere anche su alcuni "comportamenti asintotici" a livello intuitivo. Ecco le osservazioni principali:
- nei punti dove $f(x)$ è zero, $ln(f(x))$ non è definito e tende a meno infinito dal lato dove $f(x)$ è positiva, comportando un asintoto verticale
- in prossimità dei punti dove $f(x)$ tende a più infinito, anche $ln(f(x))$ tende a più infinito

Per logaritmi in altre basi, basta ricordare che se la base è maggiore di uno, il logaritmo è crescente (simile al logaritmo naturale), mentre se la base è tra zero e uno, il logaritmo è decrescente, quindi $ln(f(x))$ si comporta in modo opposto rispetto a $f(x)$.

Le #ref(<grafico_costruibile_elementare28>, supplement: "Figure") e #ref(<grafico_costruibile_elementare29>, supplement: none) mostrano il passaggio dal grafico della funzione $f(x) = x^2 - x - 2$ a quello della funzione $ln(x^2 - x - 2)$.

#grafici_costruibili9

=== Esponenziale di una funzione

Dato che la funzione esponenziale (in base $e$) è strettamente crescente, per una funzione $f(x)$, la funzione $e^(f(x))$ seguirà l'andamento crescente o decrescente di $f(x)$. È importante ricordare che $e^(f(x))$ è sempre positiva. Anche qui, considerare "comportamenti asintotici" in modo intuitivo può risultare utile. Le osservazioni principali sono:
- in prossimità dei punti dove $f(x)$ tende a meno infinito, $e^(f(x))$ si avvicina a zero
- in prossimità dei punti dove $f(x)$ tende a più infinito, anche $e^(f(x))$ tende a più infinito

#grafici_costruibili10

== Funzioni lineari in seno e coseno

Questo tipo di funzione è rappresentato dalla formula: $ f(x) = a sin x + b cos x + c $

Come spiegato nella @goniometria_trigonometria, è possibile trasformare questa espressione. Considerando che $a^2 + b^2 != 0$, è possibile raccogliere $a^2 + b^2$, ottenendo:

$ f(x) = sqrt(a^2 + b^2) (a / sqrt(a^2 + b^2) sin x + b / sqrt(a^2 + b^2) cos x) + c $

Dal momento che $ (a / sqrt(a^2 + b^2))^2 + (b / sqrt(a^2 + b^2))^2 = 1 $

esiste un angolo $alpha$ per cui:

$ cos alpha = a / sqrt(a^2 + b^2) quad "e" quad sin alpha = b / sqrt(a^2 + b^2) $

La funzione originale può quindi essere riscritta come:

$ f(x) = sqrt(a^2 + b^2) (cos alpha sin x + sin alpha cos x) + c $

oppure:

$ f(x) = sqrt(a^2 + b^2) sin(x + alpha) + c $

una forma che può essere utilizzata per dedurre il grafico da quello della funzione seno.

#esempio[Per tracciare il grafico di $f(x) = sin x + sqrt(3) cos x + 1$, la funzione si riscrive nella forma:

$ f(x) = 2 sin(x + pi/3) + 1 $

Il grafico si ottiene dal quello del seno attraverso una traslazione verso sinistra di $pi/3$, un ampliamento verticale di un fattore 2 e una traslazione verso l'alto di una unità.

#grafico_costruibile_elementare32

]

== Coniche

=== Funzioni razionali fratte e iperboli

Consideriamo funzioni del tipo: $ f(x) = (a x + b)/(d x + e), quad g(x) = (a x^2 + b x + c)/(d x + e), quad d != 0 $

assumendo che il numeratore non sia multiplo del denominatore#footnote[Quando il numeratore è un multiplo del denominatore, le equazioni si semplificano in una funzione costante o in una funzione lineare di primo grado, ad eccezione del punto $x = -e/d$: queste sono rette private di un punto.]. La prima di queste funzioni, conosciuta come funzione omografica, è stata già discussa nella @geometria_analitica.

Riscrivendo le equazioni come: $ y = (b x + c)/(d x + e), quad y = (a x^2 + b x + c)/(d x + e) $

e portando tutto allo stesso denominatore, si vede che si tratta di coniche (equazioni di secondo grado in due variabili). In entrambi i casi, le rette verticali:

$ x = -e/d $

sono asintoti verticali, poiché in prossimità di questi valori di $x$ le funzioni tendono all'infinito, indicando che le coniche sono iperboli (le uniche coniche con asintoti).

Eseguendo la divisione tra numeratore e denominatore delle funzioni date, si ottiene:

$ f(x) = beta + gamma / (d x + e), quad g(x) = alpha x + beta + gamma / (d x + e) $

con opportuni valori di $alpha$, $beta$ e $gamma$. Quando $x$ tende all'infinito, l'ultimo termine di entrambe le funzioni tende a 0, quindi $f(x)$ si avvicina alla retta orizzontale $y = beta$, mentre $g(x)$ si avvicina alla retta obliqua $y = alpha x + beta$: in entrambi i casi, questo rappresenta il secondo asintoto dell'iperbole.

Le bisettrici degli angoli formati dagli asintoti costituiscono gli assi dell'iperbole, mentre le intersezioni tra uno degli assi e l'iperbole forniscono le coordinate dei vertici. A questo punto, il tracciamento del grafico risulta intuitivo.

#esempio[Per rappresentare graficamente la funzione $ f(x) = (x - 1)/(2x + 1) $

la divisione tra numeratore e denominatore dà: $f(x) = 1/2 - (3/2) / (2x + 1)$

Gli asintoti sono quindi:

$ x = -1/2, quad y = 1/2 $

Le bisettrici degli angoli dati dagli asintoti sono facilmente determinabili come $y = -x$ e $y = x + 1$. Le intersezioni della prima bisettrice con l'iperbole forniscono i due vertici dell'iperbole stessa:

$ V_1 = ((-1 - sqrt(3))/2, (1 + sqrt(3))/2), quad V_2 = ((-1 + sqrt(3))/2, (1 - sqrt(3))/2) $

#grafico_costruibile_elementare33

][
Si rappresenti graficamente la funzione $ f(x) = (x^2 - x - 1)/(x - 2) $ <eq-grafici-elementari1>

Dividendo il numeratore per il denominatore, otteniamo la forma semplificata $ f(x) = x + 1 + 1/(x - 2) $

Pertanto, la funzione presenta due asintoti: uno verticale $x = 2$ e uno obliquo $y = x + 1$, rappresentati rispettivamente da $ r: x - 2 = 0, quad s: x - y + 1 = 0 $

Per determinare le bisettrici degli angoli formati dagli asintoti, imponiamo la condizione che un punto $P(alpha, beta)$ sia equidistante da $r$ e $s$: $ |alpha - 2| = (|alpha - beta + 1|)/sqrt(2) => alpha - 2 = plus.minus (alpha - beta + 1)/sqrt(2) $

Risolvendo i due casi e sostituendo $alpha$ e $beta$ con $x$ e $y$, otteniamo le due rette perpendicolari:
$ (1 - sqrt(2))x - y + 1 + 2sqrt(2) = 0, quad (1 + sqrt(2))x - y + 1 - 2sqrt(2) = 0 $

Le intersezioni della seconda bisettrice con l'iperbole risultano nei due vertici dell'iperbole stessa: $ V_1 = (2 + 1/sqrt(4), 3 + 1/sqrt(4) + sqrt(4)), quad V_2 = (2 + 1/sqrt(4), 3 - 1/sqrt(4) - sqrt(4)) $

#grafico_costruibile_elementare34

] 

È utile notare che anche in funzioni come quella dell'esempio @eq-grafici-elementari1 è possibile identificare i massimi e minimi relativi in modo elementare. Riconosciamo che le rette con equazioni $y = m$ e $y = M$ sono tangenti all'iperbole, dove $m$ e $M$ rappresentano il minimo e massimo relativo, rispettivamente. Per determinarle, studiamo l'intersezione tra l'iperbole e una retta orizzontale generica $y = k$, imponendo che l'equazione risultante abbia una sola soluzione, cioè discriminante uguale a zero:

$ cases(
  y = k,
  y = display((x^2 - x - 1)/(x - 2))
) quad => quad cases(
  y = k,
  x^2 - x(k + 1) + 2k - 1 = 0
) $

Uguagliando a zero il discriminante, si trova $k_1 = 1$, che corrisponde al massimo relativo, e $k_2 = 5$, al minimo relativo.

=== Funzioni irrazionali e coniche

Esaminiamo funzioni del tipo $ f(x) = a x + b + c sqrt(d x^2 + e x + f) $

con i coefficienti $d$ ed $e$ non entrambi nulli, e il trinomio sotto radice non sempre negativo. Riscrivendo l'equazione come:

$ y = a x + b + c sqrt(d x^2 + e x + f), quad y - a x - b = c sqrt(d x^2 + e x + f) $

si verifica immediatamente che deve valere:

$ y - a x - b >= 0 quad or quad y - a x - b <= 0 $

a seconda che $c$ sia positivo o negativo.

Una volta stabilita la condizione sopra, elevando al quadrato entrambi i membri si passa a un'equazione di secondo grado in due variabili, rappresentante una conica. È fondamentale considerare solo la parte della conica che soddisfa la condizione originale. Gli sviluppi possono diventare complessi, specialmente se $a != 0$ in quanto l'elevazione al quadrato introduce un termine misto, risultando in una conica con assi di simmetria non paralleli agli assi coordinati. Tuttavia, per studiare le proprietà geometriche del grafico risultante, è sempre utile ricordare che una tale funzione può essere vista come parte di una conica.

#esempio[Vogliamo tracciare il grafico della funzione $ f(x) = sqrt(x^2 - 1) $

Si osserva che:

$ cases(y >= 0, y^2 = x^2 - 1 => x^2 - y^2 = 1) $

Questa è una semiiperbole equilatera, con il centro nell'origine e semiassi uguali a 1, situata sopra l'asse $x$.

#grafico_costruibile_elementare35

][
Tracciare il grafico della funzione $ f(x) = sqrt(|x^2 - 8x + 7|) $

Seguendo il procedimento indicato, si ottiene:

$ cases(y >= 0, y^2 = |x^2 - 8x + 7|) $

Considerando i due casi, a seconda se il valore assoluto dell'argomento è positivo o negativo, scriviamo:

$ cases(y >= 0, x <= 1 or x >= 7, (x - 4)^2 - y^2 = 9), quad quad cases(y >= 0, 1 < x < 7, (x - 4)^2 + y^2 = 9) $

Questa rappresenta l'unione tra una semiiperbole equilatera con il centro in $(4, 0)$ e semiassi uguali a 3, e una semicirconferenza con lo stesso centro e raggio uguale a 3, entrambe situate sopra l'asse delle ascisse.

#grafico_costruibile_elementare36 
]