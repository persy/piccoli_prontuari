#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Integrali <integrali>

#intro[
  Il calcolo integrale unisce due problemi fondamentali dell'analisi: il calcolo delle aree di regioni piane delimitate da curve e la ricerca delle antiderivate. Attraverso il Teorema fondamentale del calcolo integrale, l'aspetto geometrico della misurazione di un'area e l'operazione algebrica inversa della derivazione si rivelano strettamente connessi per le funzioni continue.
]

Nelle applicazioni che seguono, l'analisi sarà ristretta a funzioni reali di una variabile reale, almeno continue, e alle regioni piane delimitate dai loro grafici. Alcuni semplici esempi permettono di intuire visivamente e algebricamente questa profonda relazione prima di procedere alla formalizzazione teorica.

#esempio[Consideriamo la funzione $f(x) = 2x$, limitata all'intervallo $[1, 3]$. 

In base al grafico in @grafico_integrali1, proponiamoci di calcolare l'area della regione in evidenza (compresa tra il grafico della funzione $f$, l'asse $x$, e le rette verticali $x = 1$ e $x = 3$). Questa area evidenziata forma un trapezio rettangolo con base minore di lunghezza $2$, base maggiore di lunghezza $6$, e altezza di lunghezza $2$, risultando in un'area pari a $8$. È semplice individuare una funzione con $f$ come derivata: un esempio è la funzione $g(x) = x^2$. La peculiarità qui, che sarà illustrata dal Teorema fondamentale, è che l'area della regione può essere calcolata utilizzando la funzione $g$ semplicemente attraverso $g(3) - g(1)$:

$ A = 8 = 3^2 - 1^2 = g(3) - g(1) $

][
Osserviamo la funzione $f(x) = x^2$ nell'intervallo $[1, 2]$. 

Il grafico in @grafico_integrali2 ci invita a calcolare l'area della regione delineata (tra il grafico della funzione $f$, l'asse $x$, e le rette verticali $x = 1$ e $x = 2$). Qui, la regione non è un trapezio rettangolo come nel caso precedente ma somiglia piuttosto a un trapezio rettangolo con un arco di parabola come lato obliquo. Definiremo questa area un trapezoide. Il calcolo dell'area è meno elementare; già Archimede aveva determinato nel III secolo a.C. che il valore fosse $7/3$. Anche in questo caso, possiamo trovare facilmente una funzione con $f$ come derivata: $g(x) = x^3 / 3$ ne è un esempio. Ancora una volta, l'area può essere efficacemente calcolata utilizzando $g$ per ottenere $g(2) - g(1)$:

$ "Area" = 7/3 = 2^3 / 3 - 1^3 / 3 = g(2) - g(1) $

#grafici_integrali1

]

Purtroppo, le cose non sono sempre così semplici, nemmeno per i software di calcolo simbolico. In genere, questi strumenti sono abili nel trovare valori approssimati, con il grado di precisione desiderato, per aree del tipo che stiamo considerando. Tuttavia, il problema di trovare una funzione con una derivata assegnata risulta estremamente complesso, anche se teoricamente è noto che esiste sempre una soluzione quando la funzione assegnata è continua. È interessante eseguire una prova pratica con due software molto diffusi (Geogebra e Mathematica) su una funzione di grande importanza applicativa come la funzione di Gauss $f(x) = e^(-x^2)$, illustrata in @grafico_integrali3, ad esempio calcolando l'area in un intervallo specifico ($0.2 < x < 1$) e cercando una funzione che abbia $f$ come derivata.

#grafico_integrali3

Calcolare approssimativamente l'area (fino a 10 cifre decimali) è quasi immediato con entrambi i software: $0.5494591019$. Invece, trovare una funzione $g$ che abbia $f$ come derivata è estremamente più complesso. Infatti, il primo dei due software citati (Geogebra) non fornisce alcuna risposta ($g$ è "non definito"), mentre il secondo (Mathematica) offre una risposta che, a questo livello del corso, richiede una conoscenza più avanzata: $ 1/2 sqrt(pi) "Erf"(x) $

Anche se non possiamo verificare direttamente quest'ultimo risultato, esiste sempre un legame tra l'area cercata e la funzione $g$ (supponendo che si riesca a calcolarla).

== Primitive per una funzione reale di una variabile reale

Iniziamo ad affrontare con maggiore dettaglio il problema del calcolo di una funzione con derivata assegnata. Sappiamo già dal teorema di Lagrange che se due funzioni definite su un intervallo $I$ hanno la stessa derivata, allora differiscono per una costante. Ad esempio, se cerchiamo una funzione che abbia $x^2$ come derivata, oltre a $x^3 / 3$ andranno bene anche tutte le funzioni del tipo $ x^3 / 3 + c $ 

dove $c$ è una costante arbitraria. Viceversa, se ci viene chiesto di trovare tutte le funzioni che hanno $x^2$ come derivata, secondo lo stesso corollario concluderemo che sono tutte e sole le funzioni $x^3 / 3 + c$.

In generale, se è data una funzione $f(x)$ definita su un intervallo $I$ (che supporremo sempre continua sull'intero intervallo) e se $g(x)$ è tale che $ g'(x) = f(x), quad forall x in I $

allora tutte e sole le funzioni che hanno $f(x)$ come derivata sono date dalla formula $g(x) + c$, dove $c$ è una costante arbitraria. Ci sono complicazioni per le funzioni non definite su un intervallo, ma l'esame di questi casi va oltre gli scopi di questo corso. Supporremo sempre che il dominio delle funzioni sia un intervallo; nel caso contrario, il dominio verrà "ristretto" a un intervallo.

#definizione(title: "Primitiva", label: <def-primitiva>)[Consideriamo una funzione $f$ definita su un intervallo $I$. Definiamo primitiva di $f$ una funzione $F$ che sia definita e derivabile sullo stesso intervallo e tale che la derivata di $F$ sia 

$ F'(x) = f(x), quad forall x in I $

L'insieme di tutte le primitive di una funzione $f$ sull'intervallo $I$ è indicato con il simbolo $ integral f(x) d x $

noto come integrale indefinito di $f(x)$.]

Questa definizione implica che se $F(x)$ è una qualunque primitiva di $f(x)$ sull'intervallo $I$, allora l'integrale indefinito può essere espresso come:

$ integral f(x) d x = { space F(x) + c | c in RR space } $

Per trovare tutte le primitive di una funzione $f$, è sufficiente individuarne una, assumendo sempre che il dominio sia un intervallo. È dimostrabile che tutte le funzioni continue in $I$ possiedono primitive; tuttavia, determinare queste primitive può risultare complesso, come evidenzia l'esempio della funzione di Gauss. Solitamente, non è possibile risolvere questo problema con metodi elementari, motivo per cui ci limiteremo ad affrontare casi semplici. Va notato che molti software di calcolo simbolico possono calcolare primitive anche per funzioni complesse, sebbene non per tutte.

Un'osservazione pratica riguarda le note proprietà delle derivate:

$ (k f(x))' = k f'(x) \ (f(x) + g(x))' = f'(x) + g'(x) $

Da ciò si deduce subito che:

$ integral k f(x) d x = k integral f(x) d x $
$ integral (f(x) + g(x)) d x = integral f(x) d x + integral g(x) d x $

Queste formule si interpretano nel seguente modo: le costanti possono essere fattorizzate dall'integrale, e l'integrale di una somma corrisponde alla somma degli integrali. Queste sono denominate proprietà di linearità dell'integrale.

Tuttavia, l'analogia con le derivate si ferma qui: #hl[non esiste infatti alcuna formula generale per calcolare gli integrali di prodotti o quozienti di due funzioni integrabili, né per l'integrale della composizione di due funzioni integrabili].

Per il caso dell'integrale di un prodotto è valida la formula di integrazione per parti, utile in molte situazioni ma non risolutiva.

Supponiamo di dover calcolare l'integrale del prodotto:

$ integral f(x) g(x) d x $

Se conosciamo una primitiva di uno dei moltiplicandi, ad esempio di $f(x)$, chiamata $F(x)$, allora:

$ integral f(x) g(x) d x = F(x) g(x) - integral F(x) g'(x) d x $

Questa formula stabilisce che l'integrale del prodotto di due funzioni equivale a una primitiva della prima funzione moltiplicata per la seconda, meno l'integrale del prodotto tra la primitiva della prima e la derivata della seconda. In questo modo, risolvere il problema comporta cercare un nuovo integrale, quello del residuo prodotto tra la primitiva di una funzione e la derivata dell'altra. Se questo nuovo integrale è più semplice da risolvere rispetto all'originale, il metodo funziona.

Un'altra strategia consiste nell'analizzare la tabella delle derivate "al contrario". Così facendo si costruisce una nuova tabella nota come Tabella delle primitive fondamentali (@tabella_integrali1), che include situazioni comuni e alcuni casi di interesse applicativo.

//
#tabella_integrali1

Si nota che le potenze si comportano in maniera diversa a seconda dell'esponente. Anche applicando proprietà come la linearità e la regola di integrazione per parti, le situazioni di interesse possono essere risolte tramite queste regole. Di seguito, alcuni semplici esempi:

#esempio[
$ integral (x^2 + sin x) d x = x^3 / 3 - cos x + c $
][
$ integral (x + 1) / x^2 d x = integral (1/x + 1/x^2) d x = integral (1/x + x^(-2)) d x = ln|x| + x^(-1) / (-1) + c = \ = ln|x| - 1/x + c $
][
$ integral 2 sin(2x) d x = integral (2x)' sin(2x) d x = -cos(2x) + c $
][
$ integral 2x e^(x^2) d x = integral (x^2)' e^(x^2) d x = e^(x^2) + c $
][
$ integral (3x^4 - 2x^3 + x - 1) d x = 3 x^5 / 5 - 2 x^4 / 4 + x^2 / 2 - x + c = \ = (3x^5) / 5 - x^4 / 2 + x^2 / 2 - x + c $
][
$ integral (2x) / (x^2 + 1) d x = integral (x^2 + 1)' / (x^2 + 1) d x = ln|x^2 + 1| + c = ln(x^2 + 1) + c $
][
$ integral root(7, x^5) d x = integral x^(5/7) d x = x^(5/7 + 1) / (5/7 + 1) + c = 7/12 x^(12/7) + c = \ = 7/12 root(7, x^12) + c $
][
$ integral x dot e^x d x = integral e^x dot x d x = e^x dot x - integral e^x dot 1 d x = e^x dot x - e^x + c $

  Qui abbiamo applicato la formula di integrazione per parti. Si noti che eravamo in grado sia di calcolare la primitiva di $e^x$ che quella di $x$. Se avessimo scelto questa seconda strategia avremmo ottenuto:
$ integral x dot e^x d x = x^2 / 2 e^x - integral x^2 / 2 e^x d x $

Quest'ultimo integrale sarebbe stato più complesso del primo, per cui il metodo non avrebbe portato ad alcun risultato.]


=== Area di un trapezoide

Consideriamo una funzione $f$ definita e continua sull'intervallo $[a, b]$, sempre positiva. L'area della regione racchiusa tra il grafico della funzione, l'asse delle $x$ e le rette verticali $x = a$ e $x = b$ è chiamata trapezoide, illustrano nella @grafico_integrali4.

#grafico_integrali4

Per determinare quest'area, si procede mediante l'approssimazione con plurirettangoli inscritti (@grafico_integrali5) e circoscritti (@grafico_integrali6), suddivide l'intervallo in parti uguali. 

#grafici_integrali2

Con il limite delle suddivisioni che tende all'infinito, le aree dei due plurirettangoli tendono a un valore comune, corrispondente all'integrale definito della funzione $f$ tra $a$ e $b$, espresso come $ integral_a^b f(x) d x $

che si legge: "integrale (definito) della funzione f tra a e b".

L'origine di questo simbolo si basa su alcune considerazioni intuitive. L'area del trapezoide considerato si calcola sommando le aree di rettangoli, le cui basi corrispondono alla lunghezza dell'intervallo $[a, b]$ divisa per il numero di suddivisioni, e le cui altezze sono date dal valore della funzione in un punto specifico all'interno di ciascun intervallo. Questa base è indicata come $Delta x$ (la differenza tra l'ascissa dell'estremo destro e sinistro di ogni intervallo), mentre l'altezza è $f(x)$. Nell'esempio precedente, il punto per calcolare $f(x)$ era sempre uno degli estremi, sinistro o destro, di ogni intervallo, ma potrebbe anche essere un punto interno, come mostra la @grafico_integrali7, relativa a un plurirettangolo inscritto con una suddivisione di $[a, b]$ in 4 parti.

#grafico_integrali7

L'area di un plurirettangolo inscritto o circoscritto si esprime quindi con la formula:

$ sum f(x) Delta x $

dove la somma si estende a tutti gli intervallini. Man mano che il numero di suddivisioni aumenta all'infinito, l'ampiezza di ciascuna si avvicina a zero, indicata con $d x$; il simbolo di sommatoria assume la forma allungata $integral$, che rappresenta il simbolo già proposto.

=== Integrale definito

Se la funzione $f$ fosse negativa nell'intervallo $[a, b]$, la somma

$ sum f(x) Delta x $ 

avrebbe ancora senso e risulterebbe negativa, corrispondendo all'opposto dell'area del plurirettangolo costruito con la stessa tecnica usata per le funzioni positive, come si evidenzia nelle #ref(<grafico_integrali8>, supplement: "Figure") e #ref(<grafico_integrali9>, supplement: none). 

#grafici_integrali3

È evidente che si potrà ancora parlare di trapezoide e che il limite di una somma del tipo descritto, all'incremento delle suddivisioni all'infinito, sarà questa volta l'opposto dell'area del trapezoide: questo limite si indica con lo stesso simbolo:

$ integral_a^b f(x) d x $

utilizzando la stessa terminologia. Se una funzione è in parte positiva e in parte negativa, la somma avrà alcuni termini positivi e altri negativi e il limite sarà chiaramente la differenza tra le aree sopra l'asse $x$ e quelle sotto. In questi casi, l'integrale potrebbe risultare nullo, come dimostra la funzione seno nell'intervallo $[0, 2 pi]$, in cui le aree sopra e sotto l'asse $x$ sono simmetricamente uguali.

// grafici
#grafico_integrali10

#grafici_integrali4

È importante notare che il processo di costruzione dei plurirettangoli è valido perché le funzioni sono limitate. Questo è evidente perché ci siamo concentrati su funzioni continue. Per estendere il concetto a funzioni non continue, bisogna considerare attentamente questo aspetto.

Siamo ora pronti per fornire una definizione formalmente corretta del concetto di integrale definito.

//
#definizione(title: "Somma integrale inferiore o superiore", label: <def-somma-integrale>)[Consideriamo una funzione $f$ continua e definita su un intervallo chiuso e limitato $[a, b]$. Suddividiamo l'intervallo $[a, b]$ in $n$ parti uguali, ognuna con misura $delta_i = (b - a)/n$. In ogni sottointervallo, prendiamo il massimo $M_i$ e il minimo $m_i$ della funzione. Le somme 

$ sum_(i=1)^n m_i delta_i, quad sum_(i=1)^n M_i delta_i $

si chiamano rispettivamente Somma integrale inferiore e Somma integrale superiore relative alla funzione $f$, all'intervallo $[a, b]$ e alla sua suddivisione in $n$ parti.]

Si dimostra che per funzioni continue su un intervallo chiuso e limitato, al tendere di $n$ all'infinito, le somme inferiori e superiori convergono a un valore comune, noto come Integrale definito di $f(x)$ tra $a$ e $b$, indicato con

$ integral_a^b f(x) d x $

Per funzioni positive, l'integrale rappresenta l'area del trapezoide individuato dalla funzione $f$ sull'intervallo $[a, b]$, mentre per funzioni negative rappresenta l'opposto dell'area del trapezoide. I numeri $a$ e $b$ sono detti estremi di integrazione, e la funzione $f$ è detta funzione integranda.

Nel simbolo di integrale, il nome della variabile è irrilevante; alcuni lo omettono completamente. Anche il $d x$ serve solo a ricordare il processo di limite utilizzato nella definizione, ed è spesso omesso. I seguenti simboli sono considerati equivalenti:

$ integral_a^b f(x) d x , quad integral_a^b f(t) d t , quad integral_a^b f d x , quad integral_a^b f $

È importante notare che il numero $a$ deve essere strettamente minore di $b$. Tuttavia, nelle applicazioni si considerano anche integrali tra $c$ e $d$, con $c >= d$. Per questo si definisce:

$ integral_c^c f(x) d x = 0 $

e se $c > d$:

$ integral_c^d f(x) d x = -integral_d^c f(x) d x $

Con queste definizioni, il simbolo $integral_a^b f(x) d x$ ha senso indipendentemente dall'ordine di $a$ e $b$, purché la funzione sia definita e continua su uno degli intervalli chiusi corrispondenti.

Una proprietà utile nelle applicazioni è l'additività rispetto all'intervallo di integrazione.

#definizione(title: "Teorema", label: <def->)[Per tre numeri reali qualsiasi $a, b, c$, abbiamo:

$ integral_a^b f(x) d x = integral_a^c f(x) d x + integral_c^b f(x) d x $]

La verifica grafica di questo teorema è evidente per funzioni positive quando $a < c < b$: il primo integrale è l'area totale del trapezoide, mentre gli altri due sono le aree dei trapezoidi singoli (@grafico_integrali15). È chiaro che l'area totale è la somma delle due aree parziali. Utilizzando grafici appropriati, si comprende facilmente perché la proprietà valga anche per casi più generali.

// grafici
#grafico_integrali15

Un importante risultato derivante da queste definizioni è il calcolo dell'area di una regione piana delimitata dai grafici di due funzioni ed eventualmente due rette verticali.

La seguente area è data dall'integrale della differenza tra la funzione "più alta" e quella "più bassa" nell'intervallo tra $a$ e $b$:

$ integral_a^b (f(x) - g(x)) d x $

#grafico_integrali16

Se i due grafici si intersecano, occorre spezzare il calcolo in due parti:

$ "Area" = integral_a^c (g(x) - f(x)) d x + integral_c^b (f(x) - g(x)) d x $

#grafico_integrali17

== Calcolo degli integrali definiti

Il calcolo degli integrali definiti utilizzando la definizione diretta è fattibile solo in casi molto semplici, e spesso richiede calcoli piuttosto complessi. Fortunatamente, il teorema fondamentale del calcolo integrale ci viene in aiuto, generalizzando una proprietà già discussa nei primi esempi di questo capitolo.

#definizione(title: "Teorema fondamentale del calcolo integrale", label: <def-teorema-fondamentale-calcolo-integrale>)[Supponiamo di avere una funzione $f$ definita e continua su un intervallo $I$. Se $F$ è una primitiva di $f$ su $I$, e se $a$ e $b$ sono due punti qualsiasi di questo intervallo, allora si può affermare:

$ integral_a^b f(x) d x = F(b) - F(a) $]

Questo teorema è chiamato fondamentale perché consente di ridurre il problema del calcolo dell'area di una regione piana abbastanza arbitraria a quello della ricerca di una primitiva, un processo che, sebbene non sempre facile, può essere portato a termine manualmente anche in casi complessi. Tradizionalmente, la formula si scrive come:

$ integral_a^b f(x) d x = [F(x)]_a^b $

#esempio[Calcolare l'area tra il grafico della funzione $sin x$, l'asse delle $x$ e le rette $x = 0$ e $x = pi/2$.

L'area in questione è quella di un trapezoide normale, quindi si deve calcolare:

$ integral_0^(pi/2) sin x d x $

Poiché una primitiva di $sin x$ è $-cos x$, applicando il teorema fondamentale otteniamo immediatamente:

$ integral_0^(pi/2) sin x d x = [-cos x]_0^(pi/2) = -cos(pi/2) - (-cos 0) = 1 $

Possiamo fare un controllo visivo della bontà di questo risultato. La derivata di $sin x$ è $cos x$, quindi all'origine, la tangente ha coefficiente angolare pari a $1$, con equazione $y = x$. L'area del trapezoide dovrebbe quindi essere leggermente inferiore a quella del triangolo $O A B$ mostrato a lato. L'area del triangolo è:

$ 1/2 dot pi/2 dot pi/2 = pi^2 / 8 approx 1.2337 $

conferma del risultato ottenuto. Per una stima più precisa dell'area, illustrata in @grafico_integrali18, si potrebbe anche determinare l'intersezione $D$ della tangente al grafico nel punto $C = (pi/2, 0)$ con la bisettrice, calcolando l'area del triangolo $B C D$ da sottrarre a quella di $O A B$. Questa operazione restituisce

$ "Area"(B C D) = 1/2 (pi/2 - 1)^2 approx 0.1629 $

Una migliore approssimazione dell'area totale del trapezoide sarebbe dunque $1.2337 - 0.1629 = 1.0708$, vicina al valore $1$ ottenuto con l'integrale.

#grafico_integrali18

][
Calcolare l'area della regione limitata tra i grafici di $x^2$ e $x^3$ nel primo quadrante.

Nella regione mostrata a lato, si ha $0 <= x <= 1$, dove la funzione superiore è $x^2$ e quella inferiore è $x^3$. L'area richiesta sarà quindi:

$ integral_0^1 (x^2 - x^3) d x $

Calcolando l'integrale otteniamo:

$ integral (x^2 - x^3) d x = x^3 / 3 - x^4 / 4 + c $

quindi:

$ integral_0^1 (x^2 - x^3) d x = [x^3 / 3 - x^4 / 4]_0^1 = (1/3 - 1/4) - (0/3 - 0/4) = 1/12 $

#grafico_integrali19

]

Di seguito sono alcuni esempi di calcolo delle aree nel piano cartesiano utilizzando integrali impropri.

#esempio[Calcolare l'area della regione delimitata dalle condizioni $ cases(0 <= y <= display((2x)/(x^2 + 1)), -1 <= x <= 0) $

Poiché la funzione è sempre negativa nel tratto considerato, l'area sotto l'asse delle ascisse è data da:

$ -integral_(-1)^0 (2x) / (x^2 + 1) d x = integral_0^(-1) (2x) / (x^2 + 1) d x = \ = [ln(x^2 + 1)]_0^(-1) = ln 2 - ln 1 = ln 2 approx 0.69315 $

#grafico_integrali20

][
Calcolare l'area tra il grafico della funzione $f(x) = 1/x^2$, l'asse delle $x$, la retta $x = 1$ e la retta $x = t$, dove $t$ è un numero reale strettamente maggiore di $1$. Il calcolo dell'area è:

$ integral_1^t 1/x^2 d x = integral_1^t x^(-2) d x = [-x^(-1)]_1^t = -1/t + 1 $

Il limite di quest'area quando $t -> +oo$ è evidente e fornisce come risultato il numero $1$. Quindi, l'area della regione illimitata è finita, il che ci mostra che il grafico di $f(x) = 1/x^2$ si avvicina talmente all'asse $x$ da non coprire ulteriore spazio rilevante. 

#grafico_integrali21

Al contrario, ripetendo il calcolo con $g(x) = 1/x$, si ottiene:

$ integral_1^t 1/x d x = [thin ln|x| thin]_1^t = ln|t| - 0 = ln t $

In questo caso, il limite per $t -> +oo$ risulta in $+oo$ dimostrando che $g(x) = 1/x$ è molto più "distante" dall'asse $x$.

#grafico_integrali22

]

== Integrali impropri

Negli integrali impropri, si considerano i problemi di calcolare aree di regioni illimitate nel piano cartesiano. Ad esempio, possiamo esaminare aree tra l'asse delle ascisse e il grafico di una funzione con un asintoto verticale sul bordo del suo intervallo di definizione. Se l'asintoto è alla sinistra dell'intervallo, definiamo l'integrale improprio come:

$ integral_a^b f(x) d x = lim_(t -> a^+) integral_t^b f(x) d x $

se l'asintoto è invece a destra:

$ integral_a^b f(x) d x = lim_(t -> b^-) integral_a^t f(x) d x $

Per aree illimitate in un intervallo tipo $[a, +oo[$ oppure $]-oo, a]$:

$ integral_a^(+oo) f(x) d x = lim_(t -> +oo) integral_a^t f(x) d x, quad  integral_(-oo)^b f(x) d x = lim_(t -> -oo) integral_t^b f(x) d x $

Queste aree possono essere finite o infinite come illustrato negli esempi sopra.