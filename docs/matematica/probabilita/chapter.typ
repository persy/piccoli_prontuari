#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Calcolo delle probabilità <calcolo_probabilita>

#intro[Il calcolo delle probabilità offre gli strumenti per quantificare numericamente l'incertezza legata al verificarsi di un evento. In questo capitolo si presentano le principali definizioni di probabilità (classica, frequentista e soggettiva) insieme alla grammatica di base che ne regola il calcolo, per poi introdurre i concetti di probabilità subordinata e di correlazione tra eventi. Si passa quindi dallo studio degli eventi a quello delle variabili casuali, di cui si esaminano la funzione di ripartizione, la media e la varianza, fino alla distribuzione binomiale come esempio notevole di variabile discreta. Il capitolo si chiude con un breve cenno alle variabili casuali continue. La trattazione, volutamente introduttiva, si concentra sui concetti fondamentali senza ambire a una sistemazione completa della materia.]

== Definizioni di Probabilità

Non è semplice fornire una definizione esatta di cosa si intenda per probabilità, anche se a livello intuitivo il concetto appare piuttosto chiaro. Si tratta di quantificare numericamente la fiducia che si ha nel verificarsi di un particolare evento: eventi in cui si ripone maggiore fiducia avranno una probabilità più elevata, mentre quelli considerati rari avranno una probabilità più bassa. Storicamente, sono stati proposti vari modi per definire formalmente questo concetto. Ne presenteremo alcuni.

#definizione(title: "Definizione classica (o di Laplace)", label: <def-probabilita-laplace>)[La probabilità di un evento $A$ è il rapporto tra il numero di casi favorevoli all'occorrenza di $A$ e il numero totale di casi possibili, che devono essere giudicati tutti egualmente probabili.]

#esempio[La probabilità di vincere giocando una sestina al Superenalotto si calcola considerando che c'è un unico caso favorevole (la sestina giocata), mentre i casi possibili sono rappresentati da tutte le combinazioni di 90 numeri raggruppati in sestine. Tale numero è dato da:

$ binom(90, 6) = (90!) / (84! dot 6!) = 622614630 $

Pertanto, la probabilità cercata è:

$ 1 / 622614630 approx 0.0000000016 $

che equivale "praticamente" a zero!]

Questa definizione può essere oggetto di critica: cosa significa che i casi considerati sono tutti egualmente possibili? La prima risposta che ci viene in mente è che essi hanno la stessa probabilità di verificarsi, ma in tal modo si utilizzerebbe il concetto di probabilità per definirla, creando un circolo vizioso. Inoltre, esistono situazioni concrete in cui i casi possibili non si possono ridurre a un numero finito di eventi egualmente probabili.

Nonostante queste difficoltà, la definizione di Laplace rimane la più utilizzata e noi ci riferiremo ad essa nei nostri esempi ed esercizi.

Un altro approccio definitorio utilizza il concetto di frequenza o, più precisamente, la frequenza relativa di un evento. Ad esempio, se lanciamo un dado 10 volte (senza sapere se è truccato) e il numero 6 esce 2 volte, possiamo dire che la frequenza di uscita del 6 è del $2/10 = 0.2$. L'idea è di assegnare all'evento "esce il 6" la probabilità di $0.2$. Naturalmente, si potrebbe obiettare che 10 lanci sono pochi; infatti, nella definizione proposta si richiede che il numero di ripetizioni dell'esperimento sia elevato, considerando il limite verso cui tende la frequenza con l'aumentare indefinito del numero delle ripetizioni.

#definizione(title: "Definizione frequentista (o di von Mises)", label: <def-probabilita-von-mises>)[La probabilità di un esito $A$ in un esperimento che può essere replicato nelle medesime condizioni è il limite verso cui tende la frequenza relativa di $A$ man mano che il numero di prove effettuate cresce indefinitamente.]

Questa definizione presenta alcune criticità. Prima di tutto, si assume che tale limite esista; inoltre, ci si deve interrogare sulla possibilità di ripetere un esperimento infinite volte o almeno un numero considerevole di volte nelle stesse condizioni, considerando più corretto vedere una serie di $n$ esperimenti come una sequenza di esperimenti simili effettuati uno dopo l'altro.

Passando a un'altra definizione, menzioniamo la proposta da uno dei più noti esperti di probabilità, Bruno de Finetti.

#definizione(title: "Definizione soggettiva (o di De Finetti)", label: <def-probabilita-de-finetti>)[La probabilità di un evento $A$, secondo la valutazione di un individuo coerente, è il prezzo che ritiene equo scommettere per vincere un importo unitario se l'evento $A$ si verifica.]

#esempio[Un individuo coerente troverà ragionevole scommettere $1/6$ di euro sull'uscita del numero 1 lanciando un dado, se tale esito verrà ricompensato con 1 euro. Quindi, la probabilità dell'evento è $1/6$. Benchè tale definizione appaia soggettiva, e in contrasto con il carattere oggettivo delle definizioni matematiche, è d'obbligo notare come si richieda coerenza allo scommettitore: così la sua valutazione non sarà arbitraria e convergerà, teoricamente, con quella di altri osservatori coerenti.]

== Grammatica del calcolo delle probabilità

Come per tutte le teorie matematiche, la costruzione del calcolo delle probabilità richiede alcune nozioni di base e assiomi, noti come assiomi di Kolmogorov. Consideriamo un esperimento come il lancio di un dado o una moneta e definiamo $Omega$ come l'insieme di tutti i possibili esiti dell'esperimento (per il dado, $Omega = {1, 2, 3, 4, 5, 6}$; per la moneta, $Omega = {"testa", "croce"}$). $Omega$ è chiamato spazio probabilistico.

#definizione(title: "Algebra degli eventi su \u{03A9}", label: <def-algebra-eventi>)[Dato l'insieme $Omega$, $P(Omega)$ indica l'insieme delle sue parti. Un sottoinsieme $E$ di $P(Omega)$, vale a dire un insieme di sottoinsiemi di $Omega$, viene definito algebra degli eventi su $Omega$ se soddisfa le seguenti proprietà:
+ $Omega in E$
+ se $A in E$ e $B in E$, allora anche $A union B$ e $A inter B$ appartengono a $E$
Gli elementi di $E$ sono chiamati eventi.] 

L'algebra degli eventi più comune su $Omega$ è l'insieme $P(Omega)$, come accadrà in tutti i nostri esempi. Una conseguenza immediata della definizione è che l'insieme vuoto appartiene sempre ad $E$, poiché $Omega in E$ implica che $emptyset in E$. Questa introduzione si concentrerà sui casi in cui $Omega$ è finito; l'estensione ai casi infiniti richiede concetti più avanzati non trattati in questo corso (come le serie).

#definizione(title: "Definizione assiomatica", label: <def-assiomatica>)[Consideriamo $Omega$ come l'insieme finito degli esiti di un esperimento, ed $E subset.eq P(Omega)$ come un'algebra di eventi su $Omega$. Una funzione $P: E arrow [0, 1]$, ovvero una funzione che associa ad ogni insieme in $E$ un numero reale, si definisce una funzione di probabilità se soddisfa i seguenti assiomi:
+ per ogni $A$ in $E$, $P(A) >= 0$
+ la probabilità di $Omega$ è 1, quindi $P(Omega) = 1$
+ se $A$ e $B$ sono due insiemi disgiunti in $E$, allora $P(A union B) = P(A) + P(B)$]

Il valore $P(A)$ si chiama probabilità di $A$, ossia la probabilità dell'evento $A$, dato che gli elementi di $E$ sono chiamati eventi. Gli assiomi dichiarano che la probabilità di qualsiasi evento è sempre positiva e non supera 1, che la probabilità dell'intero spazio è esattamente 1 (da cui $Omega$ è chiamato evento certo), e che la probabilità di due eventi disgiunti è la somma delle loro probabilità.

#definizione(title: "Spazio probabilizzato", label: <def-spazio-probabilizzato>)[Quando $Omega$ è uno spazio probabilistico, $E$ è un'algebra di eventi su $Omega$ e $P$ è una funzione di probabilità, allora la tripla $(Omega, E, P)$ è detta spazio probabilizzato.]

#esempio[Consideriamo $Omega = {1, 2, 3, 4, 5, 6}$ come l'insieme degli esiti del lancio di un dado, con $E = P(Omega)$ e $P$ definita in questo modo:
- $P({1}) = P({2}) = P({3}) = P({4}) = 1/12$
- $P({5}) = P({6}) = 1/3$
- se $A$ è un altro sottoinsieme di $Omega$, esso può essere ottenuto come un'unione disgiunta di due o più degli insiemi già considerati; in tal caso, $P(A)$ si calcola sommando le probabilità degli insiemi componenti

È evidente che $P$ è una funzione di probabilità e quindi $(Omega, E, P)$ costituisce uno spazio probabilizzato.] 

In questa definizione assiomatica non è rilevante come viene costruita la funzione $P$; ciò che importa è che soddisfi le proprietà dichiarate. Nell'esempio proposto è probabile che la funzione $P$ sia stata creata utilizzando la definizione frequentista e soggettiva.

Sulla base della definizione assiomatica si possono dimostrare alcune proprietà delle probabilità, che enunciamo qui:

+ $P(A') = 1 - P(A)$, dove $A'$ è il complemento di $A$.
+ $P(emptyset) = 0$.
+ Se $A subset.eq B$, allora $P(A) <= P(B)$.
+ Per ogni $A$ in $E$, $0 <= P(A) <= 1$ (ossia le probabilità sono sempre comprese tra 0 e 1).
+ Se $A$ e $B$ sono due insiemi in $E$, allora $P(A union B) = P(A) + P(B) - P(A inter B)$.

== Probabilità subordinata e correlazione

Consideriamo l'esperimento del lancio di un dado non truccato e la funzione di probabilità definita dalla probabilità classica con $E$ corrispondente a tutti i sottoinsiemi dello spazio degli esiti. La probabilità che esca il 2 in un lancio è dunque $1/6$. Ma se sappiamo che risulterà un numero pari, la probabilità dell'evento 2 diventa chiaramente $1/3$. È come se lo spazio dei risultati fosse $B = {2, 4, 6}$. In questo caso, parliamo di probabilità dell'evento $A = 2$ subordinata all'evento $B = {2, 4, 6}$ e si rappresenta con $P(A|B)$. Questa nozione è significativa solo se $B$ non coincide interamente con $Omega$ e non è vuoto.

#definizione(title: "Probabilità condizionata o subordinata", label: <def-probabilita-condizionata>)[Dato uno spazio di probabilità $(Omega, E, P)$ e due eventi $A$ e $B$ appartenenti a $E$, la probabilità di $A$ condizionata a $B$, indicata come $P(A|B)$, rappresenta la probabilità che si verifichi $A$, sapendo che $B$ è avvenuto o avverrà. Utilizzando la definizione di probabilità di Laplace, si arriva alla formula delle probabilità composte:

$ P(A|B) = (P(A inter B)) / (P(B)) $]

Generalmente, nella definizione assiomatica, questa equazione viene adottata come definizione della probabilità condizionata.

È evidente che la probabilità $P(A)$ di un evento e la probabilità $P(A|B)$ si riferiscono entrambe all'evento $A$, ma in contesti diversi. Pertanto, inizialmente, possono risultare diversi. Tuttavia, ci si può chiedere se $P(A)$ e $P(A|B)$ siano sempre diversi. La risposta è no e per questo introduciamo una nuova definizione.

#definizione(title: "Indipendeza stocastica", label: <def-indipendenza-stocastica>)[Se $A$ e $B$ sono due eventi in uno spazio di probabilità tali che:

$ P(A) = P(A|B) $

allora $A$ e $B$ sono chiamati stocasticamente indipendenti. Ciò implica che il verificarsi di $B$ non altera la probabilità di $A$.]

#esempio[Consideriamo il lancio di una moneta due volte consecutivamente. Con i simboli definiti abbiamo:

$ Omega = { ("T", "T"), ("T", "C"), ("C", "T"), ("C", "C") } $

Sia $E = P(Omega)$ e $P$ la probabilità definita classicamente, cioè:

$ P({("T", "T")}) = P({("T", "C")}) = P({("C", "T")}) = P({("C", "C")}) = 1/4 $

mentre la probabilità degli altri sottoinsiemi è data dalla somma. Consideriamo gli eventi:
- $A = { ("T", "T"), ("C", "T") }$ (il risultato del secondo lancio è testa)
- $B = { ("T", "T"), ("T", "C") }$ (il risultato del primo lancio è testa)

Dal momento che $A inter B = { ("T", "T") }$, applicando la formula precedente, otteniamo:

$ P(A) = 1/2, quad P(B) = 1/2, quad P(A inter B) = 1/4, quad P(A|B) = 1/2 $

Quindi, $A$ e $B$ sono stocasticamente indipendenti: il lancio di testa al primo tiro non cambia la probabilità di ottenere testa al secondo tiro.]

#definizione(title: "Correlazione positiva o negativa", label: <def-correlazione>)[Si consideri un evento $A$ in uno spazio di probabilità non stocasticamente indipendente dall'evento $B$. Se

$ P(A) < P(A|B), $

$A$ è positivamente correlato a $B$ (il verificarsi di $B$ favorisce $A$). Invece se

$ P(A) > P(A|B), $

$A$ è negativamente correlato a $B$ (il verificarsi di $B$ ostacola $A$).]

Infine, citiamo un risultato classico della teoria delle probabilità.

#definizione(title: "Teorema di Bayes (forma elementare)", label: <def-teorema-bayes-elementare>)[Dati $(Omega, E, P)$ e due eventi $A$ e $B$ di $E$:

$ P(A|B) = (P(B|A) dot P(A)) / (P(B)). $]

Questo teorema implica facilmente che se $A$ è stocasticamente indipendente da $B$, allora anche $B$ è stocasticamente indipendente da $A$. Inoltre, se $A$ è positivamente (o negativamente) correlato a $B$, allora anche $B$ lo è rispetto ad $A$. Pertanto, possiamo semplicemente affermare che $A$ e $B$ sono stocasticamente indipendenti o correlati positivamente o negativamente.

//
== Variabili casuali

Introduciamo questo concetto fondamentale attraverso un esempio. Consideriamo l'esperimento del lancio di due dadi non truccati. Lo spazio dei risultati, indicato con $Omega$, è costituito dalle seguenti 36 combinazioni di coppie di interi:

$
Omega = {
  &(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), \
  &(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), \
  &(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), \
  &(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), \
  &(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), \
  &(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6)
}
$

Consideriamo una funzione#footnote[Per ragioni che diventeranno evidenti in seguito, oltre a considerazioni storiche, queste funzioni vengono tradizionalmente rappresentate con lettere come $X$, $Y$ e altre simili, invece di usare $f$, $g$ e così via, come accade solitamente.
] $X: Omega arrow RR$ che associa a ogni risultato $omega in Omega$ un numero reale. Un esempio è la somma delle due facce dei dadi. I valori possibili di questa funzione sono:

$ "Im"(X) = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12} $

È possibile determinare la probabilità associata a ciascuno dei valori di $"Im"(X)$. Se utilizziamo la definizione classica di probabilità (appropriata per i dadi non truccati), possiamo creare la seguente @tabella_probabilita1. Nella prima riga sono riportati i valori di $"Im"(X)$, nella seconda le probabilità corrispondenti.

#tabella_probabilita1

La somma di tutte le probabilità è chiaramente pari a 1.

La funzione $X$ è chiamata variabile aleatoria o casuale. La connessione tra ogni valore della funzione $X$ e la rispettiva probabilità è definita come distribuzione di probabilità. È normale che la "funzione" $X$ venga chiamata "variabile", poiché i suoi valori diventano i parametri della distribuzione di probabilità.

#definizione(title: "Variabile casuale", label: <def-variabile-casuale>)[Sia $(Omega, E, P)$ uno spazio di probabilità; una funzione $X: Omega arrow RR$ si chiama variabile casuale o aleatoria se è possibile associare a ogni valore $x$ in $"Im"(X)$ la probabilità che la variabile assuma tale valore $x$. La probabilità che la variabile casuale prenda il valore $x$ è indicata con $P(X = x)$. Se i valori di $"Im"(X)$ sono finiti o numerabili, la variabile è detta discreta; se i valori di $"Im"(X)$ comprendono l'insieme $RR$ o un suo intervallo, la variabile è definita continua.]

#definizione(title: "Distribuzione di probabilità", label: <def-distribuzione-probabilita>)[Dato uno spazio di probabilità $(Omega, E, P)$, e definita la variabile casuale $X: Omega arrow RR$; la relazione che collega ogni valore di $"Im"(X)$ alla sua probabilità è denominata distribuzione di probabilità.]

#esempio[Supponiamo di lanciare una moneta due volte e considerare una variabile casuale $X$ che associa a ogni esito il numero di teste ottenute, moltiplicato per 100. 

Utilizziamo la definizione classica di probabilità per determinare la probabilità di ciascun valore possibile di questa variabile. Lo spazio degli esiti è:

$ Omega = { ("C", "C"), ("C", "T"), ("T", "C"), ("T", "T") } $

Per la variabile $X$, i valori possibili e le loro probabilità sono:

#tabella_probabilita2
][
Consideriamo sullo stesso spazio $Omega$ una funzione $Y$ che associa a ogni esito il quadrato del numero di teste meno il quadrato del numero di croci, moltiplicato per 10. I valori risultanti sono quindi:

#tabella_probabilita3
][
Consideriamo un'urna con 4 palline bianche e 6 nere. Estraiamo 4 palline una dopo l'altra. Lo spazio degli esiti è:

$ Omega = { ("B", "B", "B", "B"), ("B", "B", "B", "N"), ("B", "B", "N", "B"), dots, ("N", "N", "N", "N") } $

Ci sono precisamente $ binom(10, 4) = 210 $ 

possibili quaterne. Definiamo una variabile casuale che associa a ogni esito il numero di palline bianche estratte:

$ "Im"(X) = {0, 1, 2, 3, 4} $

Calcoliamo ora la probabilità di ciascun valore:
$ P(X=0) = "numero di quaterne senza bianche" / "numero totale di quaterne" = binom(6, 4) / binom(10, 4) = 15/210 $

Succesivamente si calcola:
$ P(X=1) = (binom(4, 1) dot binom(6, 3)) / binom(10, 4) = 80/210 \ P(X=2) = 90/210. quad P(X=3) = 24/210, quad P(X=4) = 1/210 $

Questi valori definiscono la seguente distribuzione di probabilità:

#tabella_probabilita4
]

Le distribuzioni di probabilità possono essere rappresentate su un piano cartesiano, solitamente con un grafico a barre (o a canne).

#grafico_probabilita1

== Funzione di ripartizione

Questa funzione è utile per molte applicazioni ed è definita come segue:

#definizione(title: "Funzione di ripartizione (o probabilità accumulata)", label: <def-funzione-ripartizione>)[Data una variabile casuale $X$ definita su uno spazio di probabilità $(Omega, E, P)$, la funzione di ripartizione $F$ assocerà a ogni numero reale $x$ la probabilità che $X$ assuma un valore minore o uguale a $x$:

$ F(x) = P({X <= x}) $]

Questa funzione accumula le probabilità e il grafico risulta in una funzione a gradino. Si noti che $F$ è crescente e i limiti tendono a essere rispettivamente a 0 e a 1 man mano che $x$ si avvicina a $-oo$ o $+oo$.

#grafico_probabilita2

È facile passare dalla funzione distribuzione di probabilità a quella di ripartizione. Infatti, l'alzata dei gradini nella funzione di ripartizione corrisponde ai valori assunti dalla funzione di distribuzione.

== Media e varianza

Focalizziamoci sulle variabili casuali discrete che prendono un numero finito di valori e introduciamo i concetti di media, varianza e scarto quadratico medio. 

*Definizione 9.14* _(Media o speranza matematica)._ 
#definizione(title: "Media o speranza matematica", label: <def-sparanza-matematica>)[Consideriamo $(Omega, E, P)$ uno spazio di probabilità, $X : Omega arrow RR$ una variabile casuale con valori finiti $x_1, x_2, x_3, dots$, associati alle probabilità rispettive $p_1, p_2, p_3, dots$. La media o speranza matematica della variabile è la media aritmetica pesata dei suoi valori, dove i pesi sono le probabilità associate:

$ M(X) = (x_1 p_1 + x_2 p_2 + x_3 p_3 + dots)/(p_1 + p_2 + p_3 + dots) = x_1 p_1 + x_2 p_2 + x_3 p_3 + dots $

poiché la somma delle probabilità $p_1 + p_2 + p_3 + dots$ è pari a 1.]

Per ogni valore $x_i$ (ovvero $x_1, x_2, x_3, dots$) assunto dalla variabile, si può calcolare lo scostamento dalla media, noto anche come scarto: $x_i - M(X)$. Questi scarti sono negativi per valori $x_i$ inferiori alla media e positivi per quelli superiori alla media. La media ponderata degli scarti è 0, il che è facilmente dimostrabile:

$ (x_1 - M(X))p_1 + (x_2 - M(X))p_2 + (x_3 - M(X))p_3 + dots = \ = x_1 p_1 + x_2 p_2 + x_3 p_3 + dots -M(X)(p_1 + p_2 + p_3 + dots) = \ = M(X) - M(X) = 0 $

Pertanto, lo scarto medio non fornisce informazioni utili. Tuttavia, considerando la media ponderata dei quadrati degli scarti si ottiene un valore non nullo, poiché i quadrati degli scarti sono sempre numeri positivi. Questa media è chiamata varianza, e viene definita come segue.

#definizione(title: "Varianza", label: <def-varianza>)[Consideriamo $(Omega, E, P)$ uno spazio di probabilità, $X : Omega arrow RR$ una variabile casuale con valori finiti $x_1, x_2, x_3, dots$ con rispettive probabilità $p_1, p_2, p_3, dots$ e media $M(X)$. La varianza di $X$ è la media ponderata dei quadrati degli scarti tra i valori di $X$ e la media $M(X)$:

$ sigma^2(X) = (x_1 - M(X))^2 p_1 + (x_2 - M(X))^2 p_2 + (x_3 - M(X))^2 p_3 + dots $]

Infine, lo scarto quadratico medio è dato dalla radice quadrata della varianza. Questo valore quantifica la dispersione dei valori della variabile rispetto alla media.

== Distribuzione binomiale

In molti ambiti applicativi ricorrono spesso situazioni che richiedono uno studio particolare. Tra queste, si segnala la distribuzione binomiale o di Bernoulli. Immaginiamo di ripetere un esperimento un certo numero $n$ di volte (solitamente un numero molto grande), dove l'esito può essere solo successo o insuccesso. Un esempio potrebbe essere il lancio di un dado dove il successo si ottiene quando esce un 6, mentre l'insuccesso avviene con l'uscita di un altro numero. Un altro esempio è il lancio di una moneta in cui il successo è rappresentato da testa e l'insuccesso da croce. La probabilità di successo è indicata con $p$, mentre quella di insuccesso è $q = 1 - p$. 

Questo tipo di esperimento permette di costruire una variabile casuale che indica il numero di successi su un totale di $n$ ripetizioni. Il teorema sottostante determina la distribuzione di probabilità di questa variabile.

#definizione(title: "Formula di Bernoulli", label: <def-formula-bernoulli>)[Per $n$ prove indipendenti, la probabilità che un evento con probabilità di successo $p$ si verifichi $x$ volte (dove $x <= n$) è data dalla seguente equazione:

$ f(x) = P(X = x) = binom(n, x) p^x q^(n-x) $

dove $q = 1 - p$ rappresenta la probabilità di insuccesso. La somma delle probabilità per tutti i valori di $x$ da 0 a $n$ deve essere 1, dimostrata come segue:

$ binom(n, 0) p^0 q^(n-0) + binom(n, 1) p^1 q^(n-1) + dots + binom(n, n) p^n q^(n-n) = (p + q)^n = 1 $]

#esempio[Prendendo l'esempio del lancio di una moneta equa, dove il successo è rappresentato dall'uscita di testa, abbiamo $p = 1/2$, quindi anche $q = 1/2$. Se ripetiamo il lancio 6 volte, la distribuzione delle probabilità sarà la seguente:

#tabella_probabilita5

Da questa tabella possiamo dedurre che la probabilità di ottenere almeno 4 successi è pari a $P(X=4) + P(X=5) + P(X=6) = 11/32$.]

Nel caso della distribuzione bernoulliana, si possono calcolare i seguenti valori: $ M(X) = n p, quad sigma^2(X) = n p q, quad sigma(X) = sqrt(n p q) $

Per il lancio di un dado equo in cui il successo corrisponde all'uscita del numero 6, si ha $p = 1/6$. Ad esempio, la media dei successi (uscite del numero 6) su 1200 lanci è pari a 200, essendo data da $1200 dot 1/6$.

== Cenno alle variabili continue

n diversi contesti, i valori assunti da una variabile casuale non formano un insieme discreto, ma variano in un intervallo continuo di numeri reali. In questo caso la variabile è detta continua e non è possibile associare una probabilità definita a ogni singolo valore puntuale $x$. Si utilizza quindi una funzione $f(x)$, nota come densità di probabilità. La proprietà fondamentale è che l'area sottesa alla curva della funzione nell'intervallo compreso tra due punti $x = a$ e $x = b$ rappresenta la probabilità che la variabile assuma un valore all'interno di tale intervallo.La probabilità che il valore della variabile casuale sia compreso tra $a$ e $b$ si calcola come:

$ integral_a^b f(x) d x $

con la condizione che:

$ integral_(-oo)^(+oo) f(x) d x = 1 $

Le formule per la media, la varianza e lo scarto quadratico medio sono quindi definite, in ordine:

$ M(X) &= integral_(-oo)^(+oo) x f(x) d x \ sigma^2(X) &= integral_(-oo)^(+oo) (x - M(X))^2 f(x) d x \ sigma(X) &= sqrt(sigma^2(X)) $

La distribuzione di probabilità continua più importante è la distribuzione normale o gaussiana, descritta dalla funzione:

$ f(x) = 1/(sigma sqrt(2 pi)) e^(- ((x - m)^2) / (2 sigma^2)) $

dove $m$ è la media e $sigma$ rappresenta lo scarto quadratico medio.

#esempio[Considerando $sigma = 1$ e $m = 2$, disegnare la curva gaussiana specifica.

#grafico_probabilita3]