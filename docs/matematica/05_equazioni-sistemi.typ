#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *
#import "func/05_equazioni-sistemi.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

#intro[// TODO
]

== Equazioni in un'incognita

Risolvere un'equazione con incognita reale $x$ significa affrontare il seguente problema: date due funzioni reali definite su un dominio comune $D$, $f$ e $g : D -> RR$, identificare il sottoinsieme $S$ di $D$ tale che $f(x) = g(x)$. 
Dal punto di vista grafico, questa ricerca si traduce nel determinare i punti sull'asse $x$ corrispondenti alle intersezioni tra i grafici delle due funzioni. Quando $g(x) = 0$, l'equazione si dice ridotta in forma normale. Graficamente, questo corrisponde a trovare i punti di intersezione tra il grafico della funzione $f$ e l'asse delle ascisse.

La variabile $x$ è detta incognita dell'equazione, mentre $S$ rappresenta l'insieme delle soluzioni. Ognuno degli elementi di $S$ è chiamato soluzione o radice dell'equazione. Nell'espressione $f(x) = g(x)$, il termine $f(x)$ è noto come primo membro e $g(x)$ come secondo membro.

In pratica, l'insieme $D$, ovvero il dominio comune delle due funzioni $f$ e $g$, non è sempre specificato; si assume quindi che sia il loro dominio naturale comune, chiamato anche dominio dell'equazione. È fondamentale determinare il dominio dell'equazione prima di effettuare qualunque operazione per semplificarla. Vediamo un esempio per chiarire questo concetto.

#esempio[Consideriamo l'equazione:  
$ 1 / (frac(1, x, style: "vertical") - 1) = 0 $  
Questa equazione può essere riscritta nella forma semplificata $x - 1 = 0$. Tuttavia, sebbene l'equazione semplificata abbia come soluzione $x = 1$, in realtà tale valore non può essere una soluzione dell'equazione originale, poiché annulla il denominatore, rendendo la frazione priva di significato.]

Tra le equazioni più rilevanti troviamo quelle che, una volta ridotte in forma normale, presentano come primo membro un polinomio o un quoziente di polinomi (ossia una funzione razionale). Ecco alcune definizioni utili al riguardo:

#definizione(title: "Equazione razionale", label: <equazione_razionale>)[Un'equazione che, una volta ridotta in forma normale, ha come primo membro una funzione razionale si chiama equazione razionale. Se tale funzione razionale è in particolare un polinomio, si parla di equazione razionale intera e il grado del polinomio è detto grado dell'equazione.]

#definizione(title: "Identità", label: <identita>)[Un'equazione nell'incognita reale $x$ si definisce identità se l'insieme delle sue soluzioni corrisponde a $RR$, ovvero se è valida per qualsiasi valore reale di $x$.]

D'altra parte, un'equazione priva di soluzioni viene spesso indicata come impossibile. Ad esempio, l'equazione $x^2 + 1 = 0$ non ha soluzioni nel dominio dei numeri reali. In tali casi, è più appropriato affermare che l'insieme delle soluzioni è vuoto, sebbene la scelta dei termini sia principalmente una questione di convenzione terminologica.

//
=== Principi di equivalenza

#definizione(title: "Equazioni equivalenti", label: <equazioni_equivalenti>)[Due equazioni si dicono equivalenti se possiedono lo stesso insieme di soluzioni. ]

La risoluzione di un'equazione prevede, generalmente, una serie di passaggi mirati a trasformare l'equazione data in un'altra equivalente, appartenente a una delle forme canoniche che verranno approfondite in seguito. Tali passaggi si basano su note proprietà delle uguaglianze fra numeri, trattate in precedenza nello studio delle proprietà delle operazioni (vedi @operazione_interna e successive nella @numeri_naturali_reali): 
+ aggiungendo o sottraendo lo stesso numero ai due membri di un'uguaglianza, si ottiene sempre un'altra uguaglianza valida  
+ moltiplicando o dividendo entrambi i membri di un'uguaglianza per uno stesso numero diverso da zero, si ottiene ancora un'uguaglianza valida

Da queste proprietà derivano due teoremi fondamentali, noti come i principi di equivalenza.

#definizione(title: "Primo principio di equivalenza delle equazioni", label: <primo_principio_equivalenza>)[Aggiungendo o sottraendo uno stesso numero o una stessa funzione nell'incognita $x$, con dominio $D$, a entrambi i membri di un'equazione definita sul dominio $D$, si ottiene un'equazione equivalente a quella data, sempre all'interno dello stesso dominio.]

#esempio[ 
Le seguenti equazioni:  
$ x + 3 = 2x - 5 quad "e" quad x + 3 - 2x + 5 = 0 $  
ovvero:  
$ -2x + 8 = 0, $  
sono equivalenti. La seconda è stata ottenuta partendo dalla prima e sommando a entrambi i membri la funzione -2x + 5.][

Consideriamo le equazioni:  
$ x + 1 / (x - 1) = 1 + 1 / (x - 1), quad "e" quad x + 1 / (x - 1) - 1 / (x - 1) = 1 + 1 / (x - 1) - 1 / (x - 1), $  
che diventano:  
$ x = 1. $  

In questo caso le due equazioni non sono equivalenti: la prima non ammette soluzioni, mentre la seconda, ottenuta sottraendo la funzione $-frac(1, x - 1, style: "skewed")$ e semplificando successivamente, ha come unica soluzione $x = 1$. Tuttavia, interpretando entrambe nel loro dominio naturale $R without {1}$, esse possono essere considerate equivalenti, poiché la funzione aggiunta ha proprio lo stesso dominio.]

Questo principio viene spesso enunciato in modo più semplice: è possibile spostare qualsiasi quantità da un membro all'altro di un'equazione, invertendone il segno.

#definizione(title: "Secondo principio di equivalenza delle equazioni", label:<secondo_principio_equivalenza>)[Moltiplicando o dividendo entrambi i membri di un'equazione definita su un dominio $D$ per uno stesso numero diverso da zero, o per una funzione definita sullo stesso dominio $D$ che risulti ovunque diversa da zero, si ottiene un'equazione equivalente a quella originale.]

#esempio[Consideriamo le equazioni:  
$ x^3 + x = x^2 + 1 quad "e" quad x = 1. $  

Queste due equazioni sono equivalenti: la seconda è ottenuta dividendo entrambi i membri della prima per la funzione $x^2 + 1$, che è definita per tutti i numeri reali ($RR$) e non si annulla mai.][Le equazioni:  
$ x^3 + x = x^2 + 2x quad "e" quad x^2 + 1 = x + 2, $  
non sono equivalenti. Nella prima l'unica soluzione è $x = 0$, mentre la seconda non ammette $x = 0$ cose soluzione.]

//

=== Equazioni di primo grado
Un'equazione di primo grado in un'incognita può sempre essere espressa nella forma:
$ a x + b = 0, quad a, b in RR, quad a != 0 $ <eq_I_grado> 

Questa equazione ha sempre una e una sola soluzione, a condizione che $a != 0$. La soluzione si ottiene semplicemente "trasferendo" $b$ nel secondo membro dell'uguaglianza e dividendo per $a$:
$ x = -b / a $ 

Nel caso in cui $a$ e $b$ siano numeri reali, la risoluzione è diretta. Tuttavia, se $a$ o $b$ contengono espressioni letterali, sarà spesso necessaria un'analisi preliminare, come mostrano i seguenti esempi.

#esempio[Risolvere l'equazione $(a^2 - 1)x = 1$:
- se $a^2 - 1 != 0$, l'equazione è di primo grado e ha un'unica soluzione:  
  $ x = 1 / (a^2 - 1) $

- se invece $a^2 - 1 = 0$, cioè $a = #math.plus.minus 1$, l'equazione non è di primo grado e non ha soluzione.

][Risolvere l'equazione $a x - a + b = 0$:
- se $a != 0$, l'equazione è di primo grado e ha un'unica soluzione:  
  $ x = (a - b) / a. $

- se $a = 0 and b != 0$, l'equazione non è di primo grado e non ha soluzione.

- se $a = 0$ e $b = 0$, la relazione è un'identità.

][Risolvere l'equazione $a x = b^2 - 1$:
- se $a != 0$, l'equazione è di primo grado e ha un'unica soluzione:  
  $ x = (b^2 - 1) / a $

- se $a = 0 and b != #math.plus.minus 1$, l'equazione non è di primo grado e non ha soluzione.

- se $a = 0 and b = #math.plus.minus 1$, la relazione è un'identità.]


È evidente che risolvere l'equazione $a x + b = 0$ in @eq_I_grado equivale a determinare l'unica radice del polinomio di primo grado definito da $P(x) = a x + b$. Come noto, questa corrisponde a $frac(-b, a, style: "skewed")$.

Dal punto di vista grafico, risolvere l'equazione $a x + b = 0$ significa determinare l'intersezione della retta $y = a x + b$ con l'asse delle ascisse. Poiché si assume che $a != 0$, tale intersezione esiste ed è unica. L'ascissa del punto di intersezione è data da $frac(-b, a, style: "skewed")$.

//
=== Equazioni di secondo grado

Un'equazione di secondo grado in un'unica incognita può sempre essere espressa nella forma generale:

$ a x^2 + b x + c = 0 quad a, b, c in RR, quad a != 0 $ <equazione_II_grado>

La risoluzione di questa equazione equivale a trovare gli eventuali zeri del polinomio di secondo grado $P(x) = a x^2 + b x + c$. Si possono distinguere tre possibili casi, in base al valore del discriminante $Delta$ (delta), già descritto in @discriminante nella @algebra:
- se $Delta = b^2 - 4a c < 0$, l'equazione non ha soluzioni nel campo reale
- se $Delta = b^2 - 4a c = 0$, l'equazione ammette una sola soluzione reale $x = frac(-b, 2a, style: "skewed")$, detta anche soluzione doppia
- se $Delta = b^2 - 4a c > 0$, l'equazione ha due soluzioni reali distinte, calcolate con la seguente formula:  
  $ x_(1,2) = (-b #math.plus.minus sqrt(b^2 - 4a c)) / (2a) $

Dal punto di vista grafico, risolvere l'equazione equivale a individuare le intersezioni con l'asse delle ascisse della parabola rappresentata da $y = a x^2 + b x + c$. In particolare:  
- se $Delta < 0$ la parabola si trova interamente sopra (quando $a > 0$) o sotto (quando $a < 0$) l'asse delle ascisse, quindi non ci sono intersezioni
- se $Delta = 0$ il vertice della parabola è situato sull'asse delle ascisse e corrisponde alla singola soluzione dell'equazione
- se $Delta > 0$ la parabola interseca l'asse delle ascisse in due punti distinti, i cui valori di ascissa corrispondono alle soluzioni dell'equazione

Questo argomento sarà ripreso in maggiore dettaglio nel capitolo dedicato alla geometria analitica (@geometria_analitica). Se i coefficienti $a$, $b$ e $c$ sono numeri reali, la trattazione si limita ai casi sopra indicati. Nel caso in cui tali coefficienti contengano lettere o parametri, sarà necessaria un'analisi più specifica delle diverse possibilità, come illustrato negli esempi che seguono.

#esempio[Risolvere l'equazione $a x^2 + 2x - 1 = 0$
- se $a = 0$, l'equazione si riduce a un'equazione di primo grado con unica soluzione $x = 1/2$
- se $a != 0$, calcoliamo il discriminante:  
  $ Delta = 4 - 4a $ Di conseguenza:  
  - se $a = 1$, allora $Delta = 0$ e l'equazione ha una sola soluzione: $x = frac(-2, 2 dot 1, style: "skewed") = -1$
  - se $a < 1$, allora $Delta > 0$ e l'equazione avrà due soluzioni reali e distinte (calcolate con la formula generale)
  - se $a > 1$, allora $Delta < 0$, dunque l'equazione non avrà soluzioni reali][Risolvere l'equazione $(a - 1)x^2 - a x + 1 = 0$
- se $a = 1$, l'equazione diventa di primo grado con l'unica soluzione $x = 1$
- se invece $a != 1$, il discriminante sarà:  
  $ Delta = a^2 - 4a + 4 = (a - 2)^2 $ Di conseguenza:  
  - se $a = 2$, allora $Delta = 0$ e l'unica soluzione sarà $x = 1$
  - se $a != 2$, poiché $(a - 2)^2 > 0$, l'equazione avrà due soluzioni reali date dalla formula generalizzata:
    $ x_(1,2) = (a #math.plus.minus (a - 2)) / (2(a - 1)) = cases(1, 1 / (a-1)) $]


Nel caso specifico in cui il coefficiente $b$ sia pari, è consuetudine adottare una "formula ridotta" per la risoluzione dell'equazione di secondo grado @equazione_II_grado: $ x_(1,2) = (-(b)/2 #math.plus.minus sqrt((b/2)^2) - a c)/a $ 

Tuttavia è giusto specificare che questa pratica spesso può portare a errori. Per semplificare i calcoli, se $b$ è pari, si consiglia di dividere entrambi i membri dell'equazione @equazione_II_grado per 2 e applicare successivamente la formula completa. Si consideri l'esempio seguente.

#esempio[Risolvere l'equazione $3x^2 - 4x - 5 = 0$. 
Dividendo entrambi i membri per 2, si ottiene:  
$ 3/2 x^2 - 2x - 5/2 = 0 $  
Applicando la formula risolutiva, si calcola:  
$ Delta = 4 + 15 = 19 $  
quindi:  
$ x_(1,2) = (2 #math.plus.minus sqrt(19)) / 3 $]

Esiste anche una tradizione che prevede l'uso di denominazioni specifiche per le equazioni di secondo grado nei casi particolari in cui $b$, oppure $c$, o entrambi siano pari a zero. Resta preferibile utilizzare direttamente la formula generale, valida in ogni situazione, oppure ricorrere a ragionamenti semplici come indicato di seguito:  
- se $b = 0 and c != 0$, l'equazione assume la forma $a x^2 + c = 0$, che implica $a x^2 = -c$, ovvero $x^2 = -frac( c, a, style: "skewed")$: 
  - se $-frac( c, a, style: "skewed") < 0$, non ci sono soluzioni; 
  - se invece $-frac( c, a, style: "skewed") > 0$, le soluzioni sono distinte:  
  $ x_(1,2) = #math.plus.minus sqrt(- c / a) $  
- se $b != 0 and c = 0$, l'equazione diventa $a x^2 + b x = 0$, ovvero $x(a x + b) = 0$. Da ciò derivano le soluzioni:  
  $ x_1 = 0, quad x_2 = -b / a $
- se $b = 0 and c = 0$, l'equazione si riduce a $a x^2 = 0$, con unica soluzione:  
  $ x = 0 $

==== Relazioni tra coefficienti e soluzioni in un'equazione di secondo grado
Se l'equazione @equazione_II_grado ha discriminante $Delta >= 0$, si possono facilmente dedurre le seguenti relazioni:  
$ x_1 + x_2 = (-b - sqrt(Delta))/a + (-b + sqrt(Delta))/a  = -b / a $ <relazione_coefficienti1>
$ x_1 dot x_2 = (-b - sqrt(Delta))/a dot (-b + sqrt(Delta))/a = c / a $ <relazione_coefficienti2> 

Queste formule valgono anche quando $Delta < 0$; tuttavia, in tal caso le radici saranno complesse, argomento che esula dagli intenti di questo testo. Tenendo conto delle relazioni sopra riportate, l'equazione generale può essere riscritta come:  
$ a x^2 + b x + c = 0 quad => quad x^2 + b/a x + c/a = 0 quad => quad x^2 - s x + p = 0 $  <relazione_coefficienti3>
dove $s = x_1 + x_2$ e $p = x_1 dot x_2$. Questa forma è utile in molte situazioni pratiche; tuttavia, operando su numeri reali, è necessario che $Delta >= 0$.  
#v(5em)
#esempio[Si desidera scrivere un'equazione di secondo grado le cui soluzioni siano ${-1/2, 2/3}$. Considerando che la somma delle radici $s$ è pari a $1/6$ e il prodotto delle radici $p$ è uguale a $-1/3$, l'equazione richiesta sarà:

$ x^2 - 1/6 x - 1/3 = 0 $

Moltiplicando entrambi i membri per 6 per eliminare i denominatori, si ottiene:

$ 6x^2 - x - 2 = 0 $

Un approccio alternativo sarebbe quello di osservare che, secondo il teorema fondamentale dell'algebra, l'equazione deve essere della forma:
$ (x + 1/2)(x - 2/3) = 0 $

Da questa forma si ricava lo stesso risultato finale.]

Utilizzando le formule @relazione_coefficienti1 e @relazione_coefficienti2, possiamo derivare ulteriori relazioni tra i coefficienti dell'equazione @equazione_II_grado e le soluzioni, supponendo che il discriminante $Delta >= 0$, condizione necessaria per lavorare con numeri reali. Ecco alcune delle relazioni più comuni:
$ x_1^2 + x_2^2 = (x_1 + x_2)^2 - 2x_1 x_2 \ x_1^3 + x_2^3 = (x_1 + x_2)^3 - 3x_1 x_2 (x_1 + x_2) \ 1/x_1 + 1/x_2 = (x_1 + x_2) / (x_1 x_2) $

==== Regola dei segni di Cartesio

#definizione(title: "Permanenza e variazione")[Per un'equazione di secondo grado della forma $a x^2 + b x + c = 0$, si definisce permanenza quando due coefficienti consecutivi (ad esempio $a$ e $b$ oppure $b$ e $c$) hanno lo stesso segno, mentre si parla di "variazione" quando due coefficienti consecutivi hanno segni opposti.] 

La regola dei segni di Cartesio afferma che in un'equazione di secondo grado scritta in forma normale, con discriminante positivo, ogni variazione corrisponde a una soluzione positiva e ogni permanenza a una soluzione negativa. Se l'equazione presenta una permanenza e una variazione, le due soluzioni di segno opposto avranno valori assoluti diversi. Inoltre:
- se la permanenza precede la variazione, il valore assoluto della soluzione negativa è maggiore.
- se la variazione precede la permanenza, il valore assoluto della soluzione positiva è maggiore.

#esempio[Consideriamo l'equazione $-x^2 - 5x + 6 = 0$. Calcoliamo il $Delta$: $ (-5)^2 - [4 dot (-1) dot 6] = 49 > 0 $

Essendo positivo, si può applicare la regola di Cartesio:
- $a = -1$ è negativo
- $b = -5$ è negativo
- $c = 6$ è positivo

Sulla prima coppia si passa dal segno (--) al segno (--) e dunque abbiamo una permanenza; sulla seconda coppia di passa dal segno (--) al segno (+), per cui abbiamo una variazione.

Essendo di fronte a una permanenza e a una variazione ci dobbiamo aspettare una soluzione negativa e una positiva; inoltre, poiché la permanenza precede la variazione, la soluzione maggiore, in valore assoluto, sarà quella negativa. La verifica è semplice:
$ x_1 = (- b - sqrt(Delta))/(2 a) = (5 - 7)/(-2) = 1 \ x_2 = (- b + sqrt(Delta))/(2 a) = (5 + 7)/(-2) = -6 $

Si è così ottenuta una soluzione negativa ed una positiva, col valore assoluto della soluzione negativa maggiore del valore assoluto della soluzione positiva ($|-6| = 6 > 1$).

]

=== Equazioni di grado superiore al secondo

Un'equazione di grado $n$ scritta in forma normale assume la seguente espressione:
$ a_n x^n + a_(n-1) x^(n-1) + dots + a_1 x + a_0 = 0 $

Risolvere un'equazione di questo tipo significa individuare gli zeri del polinomio presente al primo membro. Come già accennato nella @algebra in @polinomio_grado_V, esistono formule per determinare le radici di polinomi di terzo e quarto grado, applicabili anche alle rispettive equazioni scritte in forma normale. Tuttavia, queste formule coinvolgono l'uso dei numeri complessi, motivo per cui esulano dagli obiettivi di questo testo. 

Per quanto riguarda equazioni di grado superiore al quarto, non esiste una formula generale per risolverle, e tali equazioni possono essere affrontate esclusivamente in casi particolari. Su alcuni di questi casi faremo un breve accenno, senza alcuna pretesa di esaustività, data la varietà delle situazioni che possono verificarsi.

==== Scomposizione in fattori 

La tecnica principale e più rilevante per affrontare equazioni di grado superiore al secondo è quella della scomposizione del polinomio del primo membro in fattori, seguita dall'applicazione della regola di annullamento del prodotto. Si possono utilizzare le metodologie illustrate nella @prodotti_notevoli_scomposizione_polinomi e il teorema alla @zeri_razionali_polinomio relativo agli zeri razionali di un polinomio. Non approfondiremo ulteriormente questo argomento, già trattato in modo esaustivo.

==== Equazioni binomie

Le equazioni binomie sono del tipo:
$ a x^n + b = 0, quad a != 0, quad n in NN, quad n > 2 $

La loro risoluzione è diretta:
$ a x^n + b = 0 quad => quad x^n = -b / a $

A questo punto, basta applicare la definizione della radice $n$-esima:
- se $n$ è dispari, si ottiene un'unica soluzione: $ x = root(n, -b / a) $
- se invece $n$ è pari, si distinguono tre casi:  
  - se $frac(-b, a, style: "skewed") < 0$, non esistono soluzioni reali
  - se $frac(-b, a, style: "skewed") = 0$, l'unica soluzione è $x = 0$
  - se $frac(-b, a, style: "skewed") > 0$, ci sono due soluzioni distinte:  
    $ x_(1,2) = #math.plus.minus root(n, -b / a) $

==== Equazioni trinomie

Le equazioni di tipo trinomiale si presentano nella forma:  
$ a x^(2n) + b x^n + c = 0, quad a != 0, quad n in NN, quad n > 2 $  
Per risolverle, basta effettuare la sostituzione $x^n = t$ e risolvere l'equazione quadratica associata:  
$ a t^2 + b t + c = 0 $ 
Una volta trovate le soluzioni di tale equazione, $t_1$ e $t_2$, si risolveranno successivamente le equazioni $x^n = t_1$ e $x^n = t_2$. È necessario considerare anche le osservazioni fatte in precedenza sulle equazioni binomie. Un caso particolarmente comune è quello in cui $n = 2$; in tal caso, l'equazione prende il nome di biquadratica.  

==== Equazioni reciproche

Le equazioni reciproche sono caratterizzate da una struttura particolare del polinomio al primo membro quando, ridotte a forma normale, i loro coefficienti estremi e quelli equidistanti da essi:
- sono uguali (equazioni reciproche di prima specie)
- sono opposti (equazioni reciproche di seconda specie) 

Nel caso di equazioni reciproche di seconda specie con grado pari, il coefficiente del termine centrale deve essere nullo, perché deve coincidere con il proprio opposto. Invece, le equazioni di prima specie con grado dispari hanno come radice $-1$, mentre tutte le equazioni di seconda specie possiedono sempre il numero $1$ come radice. Questo aspetto consente l'applicazione della scomposizione in fattori. 

#esempio[Consideriamo l'equazione: $ 6x^4 + 5x^3 - 38x^2 + 5x + 6 = 0 $
Questa è un'equazione reciproca di prima specie, poiché: 
- i termini estremi ($x^4$ e il termine noto) hanno entrambi lo stesso coefficiente (6)
- i termini equidistanti dagli estremi ($x^3$ e $x$) hanno lo stesso coefficiente (5)][Consideriamo l'equazione: $ 2x^4 - 3x^3 + 3x - 2 = 0 $
Questa è un'equazione reciproca di seconda specie di grado pari, poiché: 
- i termini estremi ($x^4$ e il termine noto) hanno i coefficienti opposti (2 e -2)
- i termini equidistanti dagli estremi ($x^3$ e $x$) hanno i coefficienti opposti (-3 e 3)
- il coefficiente del termine di grado pari centrale ($x^2$) è nullo][Consideriamo l'equazione: $ 2x^3 + 5x^2 + 5x + 2 = 0. $
Questa è un'equazione reciproca di prima specie, poiché:
- i termini estremi ($x^3$ e il termine noto) hanno lo stesso coefficiente (2)
- i termini equidistanti dagli estremi ($x^2$ e $x$) hanno lo stesso coefficiente (5)
Essendo dunque di prima specie e grado dispari, una delle due radici è -1: $ 2 (-1)^3 + 5 (-1)^2 + 5(-1 + 2 = 0) $ 
][Consideriamo l'equazione: $ 4x^3 - 7x^2 + 7x - 4 = 0 $
Questa è un'equazione reciproca di seconda specie, poiché:
- i termini estremi ($x^3$ e il termine noto) hanno i coefficienti opposti (4 e -4)
- i termini equidistanti dagli estremi ($x^2$ e $x$) hanno i coefficienti opposti (-7 e 7)
Essendo dunque di seconda specie, una delle due radici è 1: $ 4(1)^3 - 7(1)^2 + 7(1) - 4 = 0 $]

Le equazioni reciproche di prima specie con grado pari possono essere ridotte a un'equazione di grado $frac(n, 2, style: "skewed")$ mediante la sostituzione $ x + 1/x = t $ 

Se l'equazione ottenuta è risolvibile, si riesce a determinare anche la soluzione dell'equazione iniziale. Tale metodo è applicabile soprattutto nel caso $n = 4$, poiché l'equazione risultante per $t$ sarà di secondo grado.  

#esempio[Consideriamo l'equazione $12x^4 + 4x^3 - 41x^2 + 4x + 12 = 0$. 

Si procede dividendo entrambi i membri per $x^2$, ottenendo:  
$ 12x^2 + 4x - 41 + 4/x + 12/x^2 &= 0 \ 12(x^2 + 1/x^2) + 4(x + 1/x) - 41 &= 0 $  

Introduciamo ora la sostituzione $x + 1/x = t$, da cui otteniamo:  
$ x^2 + 1/x^2 = t^2 - 2 $  

L'equazione diventa quindi:  
$ 12(t^2 - 2) + 4t - 41 = 0 \ t_(1,2) = cases( -5/2, 13/6) $  

A questo punto si risolvono le equazioni derivanti dalla sostituzione:  
$ x + 1/x = -5/2 quad "e" quad x + 1/x = 13/6 $  

Le soluzioni dell'equazione originale saranno quindi: ${-2, -1/2, 2/3, 3/2}$.] 

Tenendo conto delle eventuali radici $#math.plus.minus 1$ e applicando adeguatamente la sostituzione indicata per le equazioni di prima specie con grado pari, è possibile risolvere queste tipologie di equazioni fino al quinto grado. Le equazioni reciproche sono chiamate così poiché, come è facilmente dimostrabile, se possiedono una radice $alpha$, hanno anche la radice reciproca $frac(1, alpha, style: "skewed")$.

=== Equazioni razionali fratte  

Per risolvere un'equazione razionale fratta trasformata in forma normale, è sufficiente determinare le radici del numeratore e verificare che esse non annullino il denominatore.  

#esempio[Si consideri l'equazione:  
$ (x^4 - 3x^2 + 2) / (x^2 - 3x + 2) = 0 $  

Le radici del numeratore sono: $-sqrt(2), -1, 1, sqrt(2)$ Poiché il valore $1$ annulla il denominatore, si conclude che l'insieme delle soluzioni è: $ {-sqrt(2), -1, sqrt(2)} $ ] 

=== Equazioni irrazionali 

Le equazioni irrazionali sono caratterizzate dalla presenza di uno o più radicali, con l'incognita inclusa sotto il segno di radice. Per questi tipi di equazioni non esistono tecniche standard di risoluzione. Il metodo generalmente impiegato consiste nel trasformare l'equazione irrazionale in una razionale attraverso elevamenti a potenza appropriati. L'equazione irrazionale sarà risolvibile solo se lo è quella razionale ottenuta. 

Tuttavia, bisogna prestare particolare attenzione durante il procedimento. È fondamentale sapere che l'elevamento a potenza di entrambi i membri di un'equazione non garantisce che l'equazione risultante sia equivalente all'originale. Di conseguenza, è necessario verificare che le soluzioni ottenute siano valide anche per l'equazione di partenza. Alcuni esempi aiutano a comprendere meglio questo aspetto.

#esempio[L'equazione $x = 1$ è un'equazione di primo grado e la sua unica soluzione è $x = 1$. Elevando entrambi i membri al quadrato, si ottiene l'equazione $x^2 = 1$ che ha come soluzioni $#math.plus.minus 1$ In questo caso, l'elevazione al quadrato ha introdotto una soluzione estranea.][L'equazione $sqrt(x^2 + 1) = -2$ non ammette soluzioni, poiché il membro a sinistra è sempre positivo mentre quello a destra è negativo (e non possono quindi eguagliarsi). Tuttavia, elevando al quadrato entrambi i membri e semplificando, si ottiene l'equazione $x^2 = 3$ che possiede due soluzioni: $#math.plus.minus sqrt(3)$ Entrambe queste soluzioni sono estranee all'equazione originale.][Se si eleva al quadrato entrambi i membri dell'equazione $sqrt(x^2) = x$, si ottiene l'identità $x^2 = x^2$ valida per tutti i numeri reali. Tuttavia, nell'equazione iniziale solo i numeri reali non negativi sono accettabili come soluzioni. In questo caso, l'operazione di elevamento al quadrato ha introdotto infinite soluzioni estranee.

Un'altra difficoltà legata all'elevazione a potenza è che, invece di semplificare il problema, esso potrebbe diventare più complesso. Questo è evidente nell'esempio seguente.][Consideriamo l'equazione: $ sqrt(x) + 2 = x $ Se la si eleva direttamente al quadrato, si ottiene l'equazione $x + 4sqrt(x) + 2 = x^2$ che risulta essere irrazionale e più complicata rispetto all'equazione originale. In alternativa, riscrivendo l'equazione come $sqrt(x) = x - 2$ e poi elevando al quadrato, si ottiene $x = x^2 - 4x + 4$ un'equazione risolvibile che ha le radici $x = 1$ e $x = 4$. Tuttavia, la radice $x = 1$ non soddisfa l'equazione iniziale, portandoci a concludere che la soluzione corretta è solo $x = 4$. Questo esempio dimostra l'importanza di agire con cautela ed esaminare attentamente tutte le possibilità.]

In generale, quando un'equazione presenta un solo radicale, è consigliabile isolarlo in uno dei membri dell'equazione per poi elevarlo all'indice della radice, rendendo così razionale l'equazione. Se invece sono presenti due radicali, può essere utile riscrivere l'equazione distribuendo un radicale su ciascun membro e quindi elevare entrambi a una potenza appropriata, ripetendo eventualmente questo processo se necessario. In altre situazioni, meno comuni, è necessario valutare caso per caso.

#esempio[Per risolvere l'equazione: $ x - 1 - root(3, x^3 - 1) = 0 $ la si riscrive come: $ x - 1 = root(3, x - 1) $ Elevando al cubo entrambi i membri, si ottiene l'equazione: $ 3x^2 - 3x = 0 $ che possiede le radici $x = 0$ e $x = 1$, entrambe anche soluzioni accettabili dell'equazione originale.][Per risolvere l'equazione: $ sqrt(x + 2) = root(3, 3x + 2) $ si elevano entrambi i membri alla sesta potenza per ottenere un'equazione razionale e si ottiene così: $ x^3 - 3x^2 + 4 = 0 $ le cui radici sono $x = -1$ e $x = 2$. Tra queste, solo $x = 2$ soddisfa anche l'equazione originaria.][Per risolvere l'equazione: $ sqrt(7 - x) + sqrt(4 - x) = 3 $ si inizia elevando al quadrato entrambi i membri dell'equazione. Dopo la semplificazione, si ottiene l'espressione: $ sqrt((7 - 4x)(4 - x)) = x - 1 $ Procedendo con un ulteriore elevamento al quadrato, si giunge alla soluzione $x = 3$ che risulta essere anche una soluzione valida rispetto all'equazione iniziale.][Per risolvere l'equazione: $ sqrt(2x - 1) + sqrt(2x + 1) = 1 + sqrt(4x - 1) $ si elevano al quadrato entrambi i lati, ottenendo l'equazione semplificata $ sqrt(4x^2 - 1) = sqrt(4x - 1) $ Proseguendo con un altro elevamento al quadrato, si determinano due soluzioni: $x = 0$ e $x = 1$ Tra queste, solo $x = 1$ soddisfa l'equazione di partenza, risultando quindi la soluzione corretta.]

=== Equazioni con valori assoluti  

La risoluzione di equazioni che coinvolgono valori assoluti non richiede alcuna strategia nuova rispetto a quelle viste finora. È sufficiente ricordare la definizione di valore assoluto riportata nella @funzione_valore_assoluto, distinguendo i vari casi possibili. Per farlo, occorre valutare il segno dell'argomento del valore assoluto. Questo argomento verrà trattato più approfonditamente nella @disequazioni. Per il momento ci limitiamo ad alcuni esempi semplici per chiarire la metodologia.

#esempio[Risolvere l'equazione $x^2 - 3|x| + 2 = 0$. Poiché il valore assoluto si definisce come:  
$ |x| = cases(
  -x & "se " x < 0, 
  x & "se " x >= 0
) $  

bisogna considerare due casi distinti:  
+ $x < 0$: in questo caso, l'equazione diventa $x^2 + 3x + 2 = 0$ e si ottengono le soluzioni $x_1 = -2$ e $x_2 = -1$ entrambe valide in quanto soddisfano la condizione iniziale  
+ $x >= 0$: in questo caso, l'equazione diventa $x^2 - 3x + 2 = 0$ dalla quale si ottengono le soluzioni $x_3 = 1$ e $x_4 = 2$ entrambe accettabili  

Pertanto, l'equazione data presenta quattro soluzioni: $S = {-2, -1, 1, 2}$  

È interessante notare che l'equazione rimane invariata se si sostituisce $-x$ al posto di $x$: di conseguenza, per ogni soluzione trovata, esiste anche la sua opposta. Questa osservazione avrebbe permesso di considerare direttamente uno solo dei due casi (anche se in questo particolare esempio la valutazione di entrambe le opzioni non è stata troppo complessa).  

Va evidenziato inoltre che l'equazione $x^2 + 3|x| + 2 = 0$ non possiede soluzioni, poiché il primo membro dell'equazione non può mai assumere valori inferiori a $2$  

Una buona regola generale per qualsiasi tipo di problema consiste nel cercare possibili scorciatoie prima di adottare le tecniche standard di risoluzione.][Risolvere l'equazione $|x| - |x - 1| + 1 = 0$, analizzando i casi distinti in base alla definizione del valore assoluto:

$ |x| = cases(
  -x & "se " x < 0,
  x & "se " x >= 0
) $

$ |x - 1| = cases(
  -x + 1 & "se " x < 1,
  x - 1 & "se " x >= 1
) $

Consideriamo dunque i seguenti tre casi:
+ $x < 0$: l'equazione diventa $(-x) - (-x + 1) + 1 = 0$ che si semplifica in una identità. Pertanto, tutti gli $x < 0$ sono soluzioni dell'equazione.
+ $0 <= x < 1$: l'equazione diventa $x - (-x + 1) + 1 = 0$ risolvendo si ottiene $x = 0$ Quindi, la soluzione in questo intervallo è $x = 0$
+ $x >= 1$: l'equazione diventa $x - (x - 1) + 1 = 0$ ma questa non ammette soluzioni.

L'insieme delle soluzioni è dunque $S = ]-oo, 0]$]

Per un'equazione del tipo $|f(x)| = a$ possiamo procedere nel seguente modo, tenendo conto della definizione e delle proprietà del valore assoluto:  
+ se $a < 0$, l'equazione $|f(x)| = a$ non ha nessuna soluzione (poiché il valore assoluto non può essere negativo).  
+ se $a = 0$, l'equazione $|f(x)| = a$ equivale a $f(x) = 0$  
+ se $a > 0$, l'equazione $|f(x)| = a$ equivale a due equazioni separate: $f(x) = a$ oppure $f(x) = -a$

#esempio[Risolviamo l'equazione $|x^2 - 2x| = 1$. Questo richiede la risoluzione delle due equazioni:  
- $x^2 - 2x = 1$  
- $x^2 - 2x = -1$  

Risolvendo entrambe, si ottiene l'insieme delle soluzioni:  
$ S = {1 - sqrt(2), 1, 1 + sqrt(2)} $]

Analizzeremo ulteriormente questo tipo di equazioni nel prossimo capitolo per approfondirne le caratteristiche e le tecniche di risoluzione.


== Equazioni e sistemi con più incognite  
Risolvere un'equazione con $n$ incognite reali $x_1, x_2, dots, x_n$ implica affrontare questo problema: date due funzioni $f$ e $g : D subset.eq RR^n -> RR$, si cerca il sottoinsieme $S$ di $D$ in cui $f(x_1, x_2, dots, x_n) = g(x_1, x_2, dots, x_n)$ Pertanto, una soluzione di tale equazione è una $n$-upla di numeri reali.  

#esempio[Le soluzioni dell'equazione a due incognite $x + y - 1 = 0$ includono le coppie $(0, 1), (1, 0), (-1, 2), (3, -2), dots$ È evidente che esistono infinite coppie che soddisfano l'equazione: basta assegnare arbitrariamente un valore a $x$ e calcolare il corrispondente valore di $y$.][Per l'equazione con due incognite $x^2 + y^2 = 0$, l'unica coppia che rappresenta una soluzione è $(0, 0)$.][L'equazione $x^2 + y^2 + 1 = 0$ non ammette alcuna coppia come soluzione, poiché se spostiamo il termine noto a destra, si intuisce come sia impossibile che la somma di due quadrati, sempre positiva, non possa essere -1.]

Come nel caso delle equazioni ad una sola incognita, si definisce un'equazione in forma normale se la funzione $g$ è uguale a zero. Inoltre, se $f$ è una funzione razionale, si parla di equazione razionale, mentre se $f$ è un polinomio, si tratta di un'equazione razionale intera, il cui grado corrisponde al grado massimo del polinomio coinvolto. Generalmente, le equazioni con più incognite presentano un numero infinito di soluzioni; di particolare rilevanza è, dunque, il problema di identificare le soluzioni comuni a un insieme di equazioni. 

Risolvere un sistema di equazioni significa trovare le soluzioni comuni a due o più equazioni, ovvero determinare l'intersezione degli insiemi delle loro soluzioni. Questo tipo di problema presenta scarso interesse nel caso di equazioni ad una sola incognita, poiché spesso gli insiemi di soluzioni sono finiti e la loro intersezione risulta vuota.  

#esempio[Consideriamo il sistema:  
$ cases(
  x^2 - 1 = 0, 
  x^2 - 3x + 2 = 0
) $  

La prima equazione ammette soluzioni $x = #math.plus.minus 1$, la seconda presenta soluzioni $x = 1$ e $x = 2$. L'unica soluzione comune a entrambe le equazioni è dunque $x = 1$.]  

Da ora in avanti ci occuperemo esclusivamente di sistemi con più incognite, concentrandoci in particolare sui sistemi di equazioni razionali intere. In questo contesto, il grado del sistema è definito come il prodotto dei gradi delle singole equazioni presenti nel sistema. Un sistema si dice di primo grado se formato solo da equazioni di primo grado, e viene chiamato anche sistema lineare; analogamente, un sistema di secondo grado può includere sia equazioni di secondo grado che una o più di primo grado.  
Per i sistemi, si utilizza la nomenclatura seguente:
- un sistema si dice risolubile o compatibile se possiede almeno una soluzione; è invece definito irrisolubile o incompatibile se non ha alcuna soluzione. Talvolta si utilizzano i termini possibile e impossibile al posto di risolubile e irrisolubile 
- un sistema risolubile è detto determinato se ha un numero finito di soluzioni; è considerato indeterminato se possiede un numero infinito di soluzioni 
- due o più sistemi si dicono equivalenti quando condividono lo stesso insieme di soluzioni 
- si chiama combinazione lineare tra un insieme di equazioni di un sistema un'altra equazione che risulta sommando l'equazioni di detto insieme, ciascuna moltiplicata membro a membro per un numero reale, chiamato coefficiente di combinazione 

Un sistema di grado $n$, se risolubile e determinato, non può avere più di $n$ soluzioni. È importante sottolineare che, anche se un sistema è costituito da $n$ incognite, non è garantito che tutte le incognite compaiano in ciascuna equazione. Nel caso in cui un'equazione non contenga una o più incognite, queste possono sempre essere considerate con coefficiente pari a zero. Per tale motivo, è fondamentale specificare chiaramente il numero totale di incognite di un sistema.

#esempio[Consideriamo il seguente sistema di tre incognite:
$ cases(
  x + y = 0, 
  2x - y + z = 0, 
  y + 3z = 1
) $

Nella prima equazione, possiamo pensare che appaia anche la variabile $z$ con coefficiente nullo; allo stesso modo, nella terza equazione, possiamo immaginare la presenza della variabile $x$ con coefficiente pari a zero. Riscrivendo il sistema in modo esplicito, otteniamo:

$ cases(
  x + y + 0z = 0, 
  2x - y + z = 0, 
  0x + y + 3z = 1
) $

Una delle tecniche fondamentali per risolvere un sistema consiste nell'utilizzo delle combinazioni lineari. Sostituendo ciascuna equazione del sistema con una combinazione lineare delle stesse (in cui almeno un coefficiente sia diverso da zero), si ottiene un sistema equivalente a quello originario.]

=== Sistemi lineari

Un sistema lineare è formato esclusivamente da equazioni di primo grado. Si definisce in forma normale quando, in ciascuna equazione, le incognite compaiono al primo membro e i termini noti al secondo membro. Ad esempio, il sistema analizzato in precedenza era in forma normale. Esistono diversi metodi standard per risolvere i sistemi lineari, approfonditi nei corsi universitari; qui vengono introdotti solo i più importanti.

==== Il metodo di sostituzione

Questa procedura, applicabile anche a sistemi di grado superiore, consiste nel "isolare" una delle incognite da una delle equazioni e sostituirla nelle altre. In questo modo si ottiene un sistema con un numero ridotto di incognite. Il metodo verrà illustrato attraverso un esempio.

#esempio[Risolvere il sistema in tre incognite:
$ cases(
  2x + y - 3z = -12, 
  x - 2y + z = -1, 
  x + 3y + z = 9
) $
Isoliamo $y$ dalla prima equazione:
$ y = -2x + 3z - 12 $
Sostituiamo $y$ nelle altre due equazioni:
$ 
  &x - 2(-2x + 3z - 12) + z = -1,
  &x + 3(-2x + 3z - 12) + z = 9
 $
Risolvendo le espressioni, otteniamo:
$ cases(
  y = -2x + 3z - 12, 
  x - z = -5, 
  x - 2z = -9
) $
Dalla terza equazione ricaviamo $z = 4$, che sostituiamo nella seconda:
  $ x = z - 5 = -1 $
Infine, inserendo i valori di $x$ e $z$ nella prima equazione, otteniamo:
  $ y = -2(-1) + 3(4) - 12 = 2 $
Quindi, l'unica soluzione di questo sistema è la terna $(-1, 2, 4)$. Può accadere che il sistema risulti essere indeterminato, come nell'esempio successivo.][

Consideriamo ora un sistema in tre incognite:
$ cases(
  x + 2y - 3z = -4, 
  2x - 3y + z = -1, 
  3x - y - 2z = -5
) $
Isoliamo $x$ dalla prima equazione:
$ x = -2y + 3z - 4 $
Sostituendo $x$ nelle altre due equazioni otteniamo:
$ 
  &2(-2y + 3z - 4) - 3y + z = -1,
  &3(-2y + 3z - 4) - y - 2z = -5
$
Dopo aver semplificato entrambe le equazioni, risultano identiche:
$ cases(
x = -2y + 3z - 4, 
-y + z = 1, 
-y + z = 1
) $
Poiché la seconda e la terza equazione sono uguali, possiamo eliminare una di esse. Il sistema si riduce quindi a due equazioni. Dalla seconda ricaviamo $y = z - 1$, che, sostituito nella prima, dà $x = z - 2$. Il valore di $z$, tuttavia, rimane libero: ciò significa che qualunque sia $z$, la terna $(z - 2, z - 1, z)$ rappresenta una soluzione del sistema.

Può capitare inoltre che un sistema sia irrisolvibile, come vedremo nell'esempio successivo.][Risolviamo il seguente sistema con tre incognite:
$ cases(
  x + z = 1, 
  x - 2y + z = 0, 
  x + y + z = 1
) $
Procediamo con il metodo di sostituzione:
$ x = 1 - z $
Sostituendo nella seconda e nella terza equazione:
$ &1 - z - 2y + z = 0 \ &1 - z + y + z = 1 $
Otteniamo un nuovo sistema:
$ cases(
  x = 1 - z, 
  y = 1/2, 
  y = 0
) $

Questo nuovo sistema non ammette soluzioni, poiché le ultime due equazioni sono incompatibili. È importante ricordare che, applicando il metodo di sostituzione, è opportuno scegliere attentamente da quale equazione partire e quale variabile ricavare, al fine di evitare calcoli superflui.][Risolviamo un altro sistema con tre incognite:  
$ cases(
  2x - 4y + 4z = 1, 
  x + y - 2z = 1, 
  3x + 2y - 4z = 3
) $

Conviene ricavare $x$ dalla seconda equazione:  
$ x = 1 - y + 2z $  

Sostituendo nelle altre due equazioni si ottiene:  
$ &-6y + 8z = -1 \ &-y + 2z = 0 $  

#par(leading: 1em)[Dopo aver ricavato $y$ dalla terza equazione ($y = 2z$) e sostituito questo risultato nella seconda, si procede fino ad ottenere la soluzione completa. Il sistema ammette una sola terna: $(1, 1/2, 1/4)$ ] 

Va osservato che il numero di incognite non deve necessariamente coincidere con il numero di equazioni nel sistema, sebbene ciò sia frequente nei problemi elementari.
][Risolviamo un sistema in tre incognite:  
$ cases(
  3x - y + 6z = 1, 
  6x + 3y + 10z = 3
) $

Dalla prima equazione si ricava $y$:  
  $ y = 3x + 6z - 1 $
Sostituendo nella seconda equazione, si ottiene:  
  $ 15x + 28z = 6 $
Da questa equazione si ricava $x$ in funzione di $z$:  
  $ x = (6 - 28z) / 15 $
Sostituendo nella prima equazione, troviamo le soluzioni per $y$:
  $ y = (3 + 6z) / 15 $
Il valore di $z$ rimane arbitrario. Pertanto, il sistema ammette infinite soluzioni della forma:  
  $ ((6 - 28z)/15 , (3 + 6z)/15 , z ), quad forall z in RR $
Alternativamente, possiamo ricavare $z$ in funzione di $x$:  
  $ z = (6 - 15x) / 28 $  
Inserendo questo valore nelle altre due equazioni, troviamo le soluzioni sotto forma di infinite terne:  
  $ (x, (4 - 3x)/14, (6 - 15x)/28 ), quad forall x in RR $  

#par(leading: 1em)[Nonostante le due forme siano diverse, gli insiemi delle soluzioni coincidono. Ad esempio, la terna $(2/5, 1/5, 0)$ si ottiene ponendo $z = 0$ nella prima forma e $x = 2/5$ nella seconda.]][Risolviamo ora un sistema con due incognite:  
$ cases(
  7x + 3y = 2, 
  x - 2y = -3, 
  4x + 9y = 11
) $

Dalla seconda equazione si ricava $x$:  
$ x = -3 + 2y $  
Sostituendo questa relazione nelle altre due equazioni, otteniamo il seguente sistema:  
$ 17y = 23 $
$ 17y = 23 $  

Risolvendo, deduciamo l'unica coppia soluzione: $(-5/17, 23/17)$.]

==== Il metodo di Cramer

Il metodo di sostituzione è particolarmente efficiente e rapido, specialmente per sistemi con un numero limitato di equazioni. Pertanto, riteniamo che sia quasi sempre preferibile utilizzarlo. Tuttavia, vogliamo accennare al metodo di Cramer, limitandoci al caso di due equazioni in due incognite. Questo metodo acquisisce maggiore rilevanza nei sistemi di dimensioni più grandi, come verrà approfondito nella @sistemi_lineari_geometria_spaziale.

#definizione(title: "Matrice quadrata di ordine 2 e determinante", label: <matrice_quadrata_ordine_2_det>)[ 
Data una matrice quadrata di ordine 2 rappresentata dalla seguente tabella formata da quattro numeri reali $a$, $b$, $c$ e $d$:  
$ mat(a, b; c, d) $  
il suo determinante è definito dal valore $a d - b c$ e si indica come  
$ "det" = mat(delim: "|", a, b; c, d) $]

#definizione(title: "Regola di Cramer", label: <regola_cramer>)[
Consideriamo un sistema lineare costituito da due equazioni in due incognite:  
$ cases(
  a x + b y = alpha, 
  c x + d y = beta
) $  

Definiamo i seguenti determinanti:  
$ D = |a, b; c, d|, quad D_x = |alpha, b; beta, d|, quad D_y = |a, alpha; c, beta| $  

In base alla regola di Cramer:  
- se $D != 0$, il sistema ammette un'unica soluzione data da: $ x = D_x / D, quad y = D_y / D $

- se $D = 0$, con $D_x = D_y = 0$, il sistema è indeterminato  
- se $D = 0$ ma $D_x != 0$ o $D_y != 0$, il sistema non ammette soluzioni]

==== Metodo delle combinazioni lineari
Questo metodo diventa particolarmente utile per risolvere sistemi con molte equazioni e incognite. Esso costituisce la base della tecnica della riduzione a scala di Gauss. In sintesi, si tratta di trasformare il sistema originale in uno equivalente in cui ogni equazione successiva contiene un numero progressivamente ridotto di incognite.  

Di seguito presentiamo un esempio applicativo, consapevoli che tale argomento verrà trattato, in modo sommario, nella @sistemi_lineari_geometria_spaziale.

#esempio[Consideriamo il sistema lineare con tre incognite:  
$ cases(
  2x + y - z = 1, 
  x + y + z = 0, 
  2x + y + 2z = 2
) $  

Applichiamo il metodo delle combinazioni lineari:  
+ sostituiamo la seconda equazione con la somma tra la prima equazione e la seconda moltiplicata per $-2$  
+ sostituiamo la terza equazione con la differenza tra la prima equazione e la terza.  

Questa sequenza porta al sistema equivalente:  
$ cases(
  2x + y - z = 1, 
  -y - 3z = 1, 
  -3z = -1
) $  

#par(leading: 1em)[A partire dall'ultima equazione ($-3z = -1$), possiamo ricavare immediatamente $z = 1/3$ Procedendo con le sostituzioni, troviamo le altre soluzioni: $y = -2$ e $x = 5/3$ Quindi, la soluzione del sistema è la terna $(5/3, -2, 1/3)$]]

//
Esistono diverse tecniche per risolvere i sistemi lineari, ma riteniamo non necessario approfondirle ulteriormente in questa sede. Per quanto riguarda i sistemi con poche equazioni, il metodo di sostituzione si dimostra sempre efficace ed è, a nostro avviso, preferibile. 
Tuttavia, maggiore attenzione va posta nel caso di sistemi in cui i coefficienti siano espressi in forma letterale. Per illustrare la procedura, consideriamo il seguente esempio.

#esempio[Risolviamo il sistema nelle incognite $x, y, z$:
$ cases(
  a x + b y - 2z = 0,
  a x + z = 2,
  2a x - b y = 1
) $

- $a = 0$ e $b = 0$: dalla terza equazione si ottiene $0 = 1$, un risultato impossibile. Il sistema dunque non ammette soluzioni.
- $a = 0$ e $b != 0$: dalla seconda equazione si ricava $z = 2$, mentre dalla prima risulta $y = 4/b$ Tuttavia, tale valore non è compatibile con la terza equazione, quindi il sistema è impossibile.
- $a != 0$ e $b = 0$: dalla terza equazione si ottiene $x = 1 / (2a)$, e dalla seconda si deduce $z = 3/4$ Tali valori però non soddisfano la prima equazione, quindi anche in questo caso il sistema non ammette soluzioni.
- $a != 0$ e $b != 0$: partendo dalla seconda equazione $a x = 2 - z$, si sostituiscono i risultati nelle altre due equazioni. Procedendo, si ottiene:
$ cases(
  a x = 2 - z,
  b y = 2a x - 1 = 3 - 2z,
  (2 - z) + (3 - 2z) - 2z = 0
) $

Risolvendo, troviamo $z = 1$, $x = 1/a$, $y = 1/b$
]

=== Sistemi di grado superiore al primo

Per quanto riguarda i sistemi di secondo grado, questi comprendono generalmente una sola equazione di secondo grado e una o più equazioni lineari. La tecnica più adeguata consiste nel ricavare una o più incognite dalle equazioni lineari e sostituirle nell'equazione di secondo grado. Quest'ultima diventa così un'equazione con una sola incognita, risolvibile tramite la ben nota formula dell'equazione di secondo grado.

#esempio[Risolviamo il sistema in due incognite:
$ cases(
  x - 2y = 1, 
  x^2 + y^2 = 2
) $

Dalla prima equazione si ricava $x = 2y + 1$. Sostituendo nella seconda si ottiene:
$ (2y + 1)^2 + y^2 = 2 $

Sviluppando e semplificando si arriva a:
$ 5y^2 + 4y - 1 = 0 $

#par(leading: 1em)[Risolvendo questa equazione quadratica si determinano due valori per $y$ Inserendoli nella relazione per $x = 2y + 1$, si ottengono due coppie di soluzioni: $(-1, -1)$ e $(7/5, 1/5)$
]]

Per i sistemi di grado superiore al secondo non esistono metodi generali risolutivi. È necessario analizzare ogni caso specifico, spesso con approcci complessi. Faremo alcuni esempi al riguardo, senza la pretesa di essere esaustivi, anche perché ciò risulterebbe impossibile.
#v(5em)
#esempio[Risolviamo il sistema in due incognite:
$ cases(
  x + y = 1,
  x^3 + y^3 = 7
) $

Poiché $x^3 + y^3 = (x + y)(x^2 - x y + y^2)$, il sistema può essere riscritto come:
$ cases(
  x + y = 1,
  x^2 - x y + y^2 = 7
) $

Otteniamo così un sistema di secondo grado che possiamo risolvere per sostituzione. Un'altra possibilità è osservare che $x^2 + y^2 = (x + y)^2 - 2x y$. Sostituendo questa relazione nella seconda equazione, otteniamo:  
$ (x + y)^2 - 3x y = 7 $

Sapendo che $x + y = 1$, troviamo $x y = -2$. Ora possiamo cercare due numeri reali che abbiano somma pari a $1$ e prodotto pari a $-2$. Utilizzando la formula risolutiva dei polinomi quadratici (vedi la @relazione_coefficienti3), otteniamo immediatamente le seguenti coppie di soluzioni:  
$(-1, 2), (2, -1)$][Risolviamo il sistema in due incognite:
$ cases(
  x^2 + 3x y = -2,
  y^2 - x y = 3
) $

Sommando le due equazioni, otteniamo:  
$ x^2 + y^2 + 2x y = 1 $
$ y^2 - x y = 3 $  

Riscriviamo il sistema come:  
$ cases(
  (x + y)^2 = 1,
  y^2 - x y = 3
) $

Da qui, si ottiene $x + y = +-1$. Il sistema si scinde quindi in due sistemi di secondo grado risolvibili per sostituzione. Procedendo, troviamo le quattro coppie di soluzioni:  
$(-2, 1)$, $(2, -1)$, $(1/2, -3/2)$, e $(-1/2, 3/2)$][Risolviamo il sistema in tre incognite:
$ cases(
  x^2 + y^2 + z^2 = 14,
  z^2 + 2x y = -11,
  x + y = 1
) $

Sottraendo la seconda equazione dalla prima, si ottiene:  
$x^2 + y^2 - 2x y = 25$, cioè $(x - y)^2 = 25$. Pertanto, $x - y = +-5$. Il sistema si divide in due sottosistemi:  

$ cases(
  x - y = 5,
  x + y = 1,
  z^2 + 2x y = -11
) \ cases(
  x - y = -5,
  x + y = 1,
  z^2 + 2x y = -11
) $  

Risolvendo questi sistemi, troviamo quattro terne di soluzioni:  
$(3, -2, 1)$, $(3, -2, -1)$, $(-2, 3, 1)$, e $(-2, 3, -1)$]

// Esercizi #TODO