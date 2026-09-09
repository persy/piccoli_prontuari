#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Calcolo combinatorio <calcolo_combinatorio>

#intro[
  Il calcolo combinatorio si occupa di determinare la cardinalità di insiemi finiti definiti da specifiche proprietà, fornendo il fondamento operativo per la teoria della probabilità. Poiché non esiste un algoritmo universale per la risoluzione di ogni problema, l'obiettivo del capitolo è formalizzare le principali tecniche di conteggio e sviluppare, attraverso l'analisi di casi concreti, l'intuizione necessaria per applicarle correttamente.
]

Per determinare il numero di elementi di un insieme, l'approccio più immediato, e talvolta l'unico applicabile, consiste nell'enumerazione esaustiva dei suoi membri. Un esempio classico è l'individuazione dei numeri primi minori di un dato $n$, che richiede la verifica e il conteggio elemento per elemento. Tuttavia, quando il numero di configurazioni cresce o l'enumerazione diretta risulta inattuabile, l'intuizione può condurre a errori. Diventa quindi necessario formalizzare il problema riconducendolo a modelli astratti di riferimento:
- modello dell'urna: formalizza la selezione di oggetti da un insieme dato, distinguendo i casi in cui gli elementi estratti vengono reinseriti (estrazione con rimpiazzo) da quelli in cui non lo sono.
- modello a celle: formalizza la distribuzione di un numero definito di oggetti in un insieme di contenitori, distinguendo le configurazioni in base alla capienza e alla distinguibilità di oggetti e celle.

La scelta del modello più idoneo dipende dalla natura del problema e costituisce il primo passo per l'individuazione della formula di conteggio corretta.

#definizione(title: "Fattoriale", label: <def-fattoriale>)[Dato un numero naturale $n > 0$, il fattoriale di $n$, indicato con $n!$, è il prodotto di tutti i numeri naturali da $1$ a $n$:
$ n! = 1 dot 2 dot 3 dot dots dot n $
Inoltre, si definisce: $ 0! = 1 $]
Da notare che vale anche la relazione: $ n! = n(n - 1)! = n(n - 1)(n - 2)! dots $

#definizione(title: "Semifattoriale", label: <def-semifattoriale>)[Dato un numero naturale $n > 0$, il semifattoriale di $n$, indicato con $n!!$, è il prodotto di tutti i numeri naturali con la stessa parità di $n$ compresi tra $1$ e $n$:
$ n!! = cases(
  2 dot 4 dot dots dot n\,quad &n text(" è pari"),
  1 dot 3 dot 5 dot dots dot n\, quad &n text(" è dispari")
) $
Si ha che: $ n! = n!! dot (n - 1)!! $]

Ricordiamo inoltre il risultato sulla cardinalità del prodotto cartesiano di più insiemi finiti: la cardinalità del prodotto degli insiemi $A_1, A_2, dots, A_n$ è uguale al prodotto delle cardinalità dei singoli insiemi:
$ |A_1 times A_2 times dots times A_n| = |A_1| dot |A_2| dot dots dot |A_n| $

#definizione(title: "Principio fondamentale del calcolo combinatorio", label: <def-principio-calcolo-combinatorio>)[Se un problema $P$ può essere scomposto in $k$ sottoproblemi indipendenti $P_1, P_2, dots, P_k$, ciascuno risolvibile in $n_1, n_2, dots, n_k$ modi rispettivamente, allora il problema $P$ può essere risolto in:
$ n = n_1 dot n_2 dot dots dot n_k $
modi diversi.]

== Disposizioni

=== Sequenze ordinate

Il problema fondamentale del calcolo combinatorio può essere formulato in questo modo: dato un insieme $A$ composto da $n$ elementi, in quanti modi è possibile creare sequenze ordinate di $k$ di questi elementi?

#esempio[Con i simboli 1, 2, X, quante sequenze di 13 simboli si possono realizzare?#footnote[Questo è un riferimento alla schedina del Totocalcio.]][Usando un alfabeto di 26 simboli, quante sono le parole di tre simboli distinti che si possono formare, indipendentemente dal loro significato?][In una gara di Formula 1 con 20 piloti, quante combinazioni di terzetti possono essere candidate a occupare il podio?]
È importante notare che, nel primo esempio, le sequenze richieste permettono ripetizioni, mentre negli altri due esempi le ripetizioni non sono ammesse.

Considerando uno schema a celle, il problema può essere visualizzato così: dato un numero $n$ di simboli e $k$ celle numerate progressivamente, in quanti modi si possono riempire le $k$ celle con i $n$ simboli? È evidente che, quando non sono consentite ripetizioni dei simboli, $k$ non deve superare $n$ ($k <= n$); altrimenti, non vi sono restrizioni.

#n_oggetti_k_caselle

Se le ripetizioni sono ammesse, è più utile considerare un insieme di $n$ "tipi di oggetti" piuttosto che un insieme di $n$ oggetti singoli. In questo modo, disponendo di molti oggetti dello stesso tipo, non ci saranno difficoltà nel selezionarne più di uno per ottenere l'allineamento desiderato. 

Utilizzando il modello dell'urna, il problema si rappresenta così: data un'urna con $n$ palline numerate da $1$ a $n$, quanti modi ci sono per estrarre a caso $k$ palline rispettando l'ordine di apparizione? L'estrazione senza reintroduzione equivale ad allineamenti senza ripetizioni, mentre quella con reintroduzione consente le ripetizioni.

Se le ripetizioni non sono permesse, il problema può essere riformulato nei seguenti modi:
- dato un insieme di $n$ elementi, quanti sono i suoi sottoinsiemi ordinati di $k$ ($<= n$) elementi?
- considerati due insiemi, $C$ di $k$ elementi (contrassegni o caselle) e $A$ di $n$ elementi (oggetti da disporre), quante funzioni iniettive esistono da $C$ in $A$?
Se sono consentite ripetizioni, il problema si riformula così:
- dati due insiemi, $C$ di $k$ elementi e $A$ di $n$ elementi, quante sono le funzioni da $C$ in $A$?

L'interpretazione tramite funzioni è particolarmente significativa: una funzione tra due insiemi finiti può essere immaginata come una tabella a doppia entrata, dove a ogni elemento di $C$ corrisponde un elemento di $A$. Se gli elementi di $A$ non possono ripetersi, si tratta di funzioni iniettive; altrimenti, di funzioni generiche. La @tabelle_disposizioni illustra alcuni esempi: ponendo $C = \{1, 2, 3\}$ e $A = \{a, b, c, d\}$, i primi due esempi rappresentano funzioni generiche e gli ultimi due funzioni iniettive.

#tabelle_disposizioni <tabelle_disposizioni>

#definizione(title: "Disposizioni", label: <def-disposizioni>)[Siano $C = {1, 2, ..., k}$ e $A$ un insieme di $n$ elementi. Una disposizione semplice di $n$ oggetti di classe $k$ (con $k <= n$) è una funzione iniettiva $f: C -> A$, ovvero una sequenza ordinata di $k$ elementi distinti presi da $A$.
Una disposizione con ripetizione di $n$ oggetti di classe $k$ (senza vincoli su $k$) è una funzione qualsiasi $f: C -> A$, ovvero una sequenza ordinata di $k$ elementi presi da $A$, anche ripetuti.]

Il numero delle disposizioni semplici di $n$ oggetti di classe $k$ si indica con $V_n^k$#footnote[In questo testo, abbiamo scelto di utilizzare la notazione UNI CEI ISO 80000-2:2010. In questo contesto, il simbolo V rappresenta "variazioni".], mentre quello delle disposizioni con ripetizione si indica con $attach(V, tl: R, tr:k, br:n)$.

Valgono le seguenti formule:
$ V_n^k = underbrace(n(n - 1)(n - 2) dots (n - (k - 1)), k "fattori") = underbrace(n(n - 1)(n - 2) dots (n - k + 1), k "fattori") = \ = n! / ((n - k)!) $

Per le disposizioni con ripetizione:
$ attach(V, tl: R, tr:k, br:n) = n^k $ <eq-disposizione>

Per dimostrare il concetto, è sufficiente notare che se si devono riempire $k$ caselle con $n$ simboli, nella prima casella si può inserire qualsiasi simbolo (e quindi ci sono $n$ possibilità di scelta), mentre nella seconda si può scegliere uno dei simboli rimanenti, se non sono consentite ripetizioni (con $n - 1$ possibilità di scelta), oppure qualsiasi simbolo se le ripetizioni sono permesse (con ancora $n$ possibilità di scelta).

La formula @eq-disposizione genera un simbolo comunemente utilizzato nello studio delle funzioni tra insiemi. L'insieme di tutte le funzioni da un insieme $A$ a un insieme $B$ è indicato come $B^A$. Se $alpha$ e $beta$ sono due numeri cardinali associati rispettivamente a un insieme $A$ e a un insieme $B$, la potenza $beta^alpha$ rappresenta la cardinalità dell'insieme $B^A$. Questa definizione, nel caso di cardinalità finite, corrisponde alla classica definizione di potenza, ma risulta estesa anche ai cardinali transfiniti. 

Un caso interessante si verifica quando $B$ è composto da due soli elementi: se li chiamiamo $"vero"$ e $"falso"$, il numero di queste funzioni corrisponde al numero dei sottoinsiemi dell'insieme $A$. Infatti, se a un elemento di $A$ corrisponde $"vero"$, questo elemento farà parte del sottoinsieme corrispondente, altrimenti no. Ad esempio, il sottoinsieme vuoto corrisponde alla funzione che mappa ogni elemento di $A$ su $"falso"$. Per questo motivo, si utilizza il simbolo $2^A$ per indicare l'insieme delle parti di $A$, che avrà cardinalità $2^alpha$. Questa uso dei simboli trova una giustificazione anche nel calcolo delle combinazioni di $n$ oggetti presi $k$ alla volta.

#esempio[Considerando $A = \{a, b, c, d\}$, le disposizioni semplici di classe $2$ sono in numero $attach(V, tr:2, br:4) = 12$ e risultano essere:
$ a b, quad a c, quad a d, quad b a, quad b c, quad b d, quad c a, quad c b, quad c d, quad d a, quad d b, quad d c $

Le disposizioni con ripetizione della stessa classe sono invece $attach(V, tl: R, tr:2, br:4) = 16$ e includono le 12 precedenti più:
$a a, b b, c c, d d$]

=== Suddivisioni

Lo schema a celle può essere interpretato in modo differente e complementare rispetto a quello illustrato in precedenza. Immaginiamo di dover disporre $n$ oggetti di classe $k$: possiamo pensare di avere $n$ cassetti, corrispondenti al numero degli oggetti, e $k$ contrassegni da assegnare a questi cassetti. 
- Se ogni cassetto può contenere al massimo un solo contrassegno, si tratta di disposizioni semplici (senza ripetizione).
- Se è possibile inserire più contrassegni in ciascun cassetto, parliamo di disposizioni con ripetizione. 

I contrassegni definiscono la posizione che ogni oggetto occupa nell'allineamento finale.

Prendiamo come esempio le disposizioni di $4$ oggetti a gruppi di $2$. Invece di collocare $2$ dei $4$ oggetti in $2$ celle numerate, possiamo immaginare di avere $4$ cassetti indicati con $a, b, c, d$, e $2$ contrassegni numerati $1$ e $2$ da collocare in questi cassetti. La disposizione $a b$ corrisponde a posizionare il contrassegno $1$ nel cassetto $a$ e il contrassegno $2$ nel cassetto $b$, lasciando vuoti gli altri. 

L'intera serie delle disposizioni può ora essere rappresentata come mostrato nella @tabella_disposizioni5, dove sono esemplificati sia gli allineamenti ordinati di $4$ oggetti disposti a gruppi di $2$, sia le suddivisioni di $2$ contrassegni tra $4$ cassetti.

#tabella_disposizioni5

Questo schema è particolarmente utile per affrontare problemi di suddivisione del tipo: dato un insieme di $k$ oggetti distinguibili tra loro, determinare in quanti modi questi possono essere distribuiti in $n$ cassetti, considerando quali oggetti finiscono in quali cassetti.

Riassumendo le varie modalità, per una disposizione di $n$ oggetti di classe $k$ si possono adottare i seguenti approcci:

- Estrazione: estrazione ordinata di $k$ palline da un'urna contenente $n$ palline distinguibili (con reintroduzione per le ripetizioni, senza nel caso contrario).
- Sequenza in celle: riempimento di $k$ celle numerate progressivamente con $n$ simboli distinti, con la possibilità di ripetere lo stesso simbolo (con ripetizione) o meno (semplici).
- Distribuzione in cassetti: distribuzione di $k$ oggetti distinguibili in $n$ celle/cassetti diversi, consentendo che ogni cella contenga più oggetti (con ripetizione) oppure al massimo un oggetto (semplici).

#esempio[Una colonna del Totocalcio può essere pensata come:
- Una sequenza di 13 estrazioni con reintroduzione da un'urna contenente i simboli $1, X, 2$;
- Il riempimento di 13 celle numerate progressivamente con i simboli $1, X, 2$;
- La distribuzione dei numeri da 1 a 13 in tre cassetti denominati $1, X, 2$, permettendo che alcuni cassetti possano restare vuoti.]

== Permutazioni

La permutazione riguarda il "cambio d'ordine" degli oggetti. Ciò include situazioni in cui tutti gli oggetti sono distinti, così come quelle che presentano ripetizioni.

=== Permutazioni tra elementi distinti

Il caso delle configurazioni di $n$ oggetti appartenenti alla stessa classe $n$ è estremamente rilevante nello studio del calcolo combinatorio. Qui si considerano funzioni iniettive di un insieme su sé stesso (che, per insiemi finiti, sono biiezioni), oppure i possibili ordinamenti totali di un insieme di $n$ elementi.

#definizione(title: "Permutazioni", label: <def-permutazioni>)[Una permutazione di un insieme $A$ di $n$ elementi è una disposizione semplice di tali elementi di classe $n$. Il numero delle permutazioni si indica con $P_n$ e si calcola come:
$ P_n = n! $]

Gli anagrammi di parole composte da lettere tutte diverse rappresentano un classico esempio di permutazioni. Ad esempio, per la parola "cane", esistono $P_4 = 4! = 24$ anagrammi:
$ c a n e, quad c a e n, quad c e a n, quad c e n a, quad c n a e, quad c n e a, \
  a e c n, quad a e n c, quad a n e c, quad a n c e, quad a c n e, quad a c e n, \
  e a c n, quad e a n c, quad e c a n, quad e c n a, quad e n a c, quad e n c a, \
  n a c e, quad n a e c, quad n e a c, quad n e c a, quad n c a e, quad n c e a $

=== Permutazioni tra elementi non tutti distinti

Quando si considerano parole con lettere ripetute (come "mamma"), il numero di anagrammi è inferiore poiché lo scambio tra lettere identiche non produce una nuova configurazione.

Consideriamo un allineamento di $n$ oggetti, composto da $n_1$ oggetti uguali tra loro del primo tipo ($a_1$), $n_2$ uguali del secondo tipo ($a_2$), ..., e $n_k$ uguali del tipo $k$-esimo ($a_k$), con $n = n_1 + n_2 + dots + n_k$. 

Considerando inizialmente gli oggetti come tutti distinti si avrebbero $n!$ permutazioni; tuttavia, le $n_i!$ permutazioni degli oggetti identici del tipo $i$-esimo non generano nuove configurazioni. Il numero di permutazioni distinte è quindi dato da:
$ P_(n_1, n_2, dots, n_k) = n! / (n_1! n_2! dots n_k!) $

Questa formula generalizza la precedente, riducendosi a $P_n = n!$ quando tutti gli $n_i = 1$. Poiché questi numeri compaiono nello sviluppo della potenza $n$-esima di un polinomio, vengono anche chiamati coefficienti polinomiali o coefficienti multinomiali.

Gli anagrammi della parola "mamma" includono combinazioni come "mmmaa", "mmaam", "mmama", "mamam", "ammma", "amamm", "aammm" e "ammam", tra cui solo l'originale "mamma" ha un significato nel vocabolario italiano.

Analizzando il problema delle urne, immaginiamo un'urna con $n$ palline: $n_1$ di colore 1, $n_2$ di colore 2 e così via fino a $n_k$ di colore $k$. I colori sono distinguibili, ma le palline dello stesso colore non lo sono. Ciò ci porta a considerare il numero totale di estrazioni possibili di tutte le palline senza reinserire le estratte.

Possiamo esaminare gli anagrammi della parola "mamma" sotto un altro punto di vista: consideriamo due cassetti nominati $m$ ed $a$, e cinque contrassegni numerati da 1 a 5. La permutazione "mamma" corrisponde a mettere i contrassegni 1, 3 e 4 nel cassetto $m$, e i contrassegni 2 e 5 nel cassetto $a$, facendo lo stesso per le altre permutazioni. 

Il problema generale è distribuire $n$ oggetti distinti in $k$ cassetti numerati in modo che ce ne vadano $n_1$ nel primo, $n_2$ nel secondo fino a $n_k$ nell'ultimo. Questo è equivalente alle permutazioni di $n$ elementi con $n_1$ uguali a un oggetto $a_1$, $n_2$ uguali a un oggetto $a_2$ e così via fino ad $a_k$, senza escludere che qualcuno degli $n_i$ sia 1.

#esempio[Se dobbiamo suddividere 15 studenti in tre classi con 5 nella prima, 4 nella seconda e 6 nella terza, le combinazioni possibili sono:
$ 15! / (5! dot 4! dot 6!) = 630630 $]

Riassumendo, una permutazione di $n$ oggetti, con $n_1$ di tipo 1, $n_2$ di tipo 2 e così via fino a $n_k$ di tipo $k$ (con $n = n_1 + n_2 + dots + n_k$), può essere vista nei seguenti modi:
- Anagramma: anagramma di una parola di $n$ lettere con ripetizioni di certe lettere.
- Distribuzione in cassetti: distribuzione di $n$ oggetti distinti in $k$ cassetti, con ciascun cassetto contenente un numero prefissato di oggetti.
- Estrazione: estrazione di tutte le palline da un'urna contenente palline di diversi colori (indistinguibili tra loro se dello stesso colore).

== Combinazioni

Combinare implica selezionare un certo numero di oggetti da un insieme, senza considerare l'ordine di selezione. Ci sono due casi di interesse: quando le ripetizioni sono permesse e quando non lo sono.

=== Combinazioni semplici

Il terzo problema fondamentale del calcolo combinatorio è determinare il numero di sottoinsiemi di un insieme finito dato. Un sottoinsieme composto da $k$ elementi scelti da un insieme di $n$ elementi può essere visto come una raccolta di $k$ oggetti da un totale di $n$, in cui l'ordine non è rilevante.

#definizione(title: "Combinazioni semplici", label: <def-combinazioni-semplici>)[Un sottoinsieme di un insieme $A$ con $n$ elementi, contenente $k$ elementi (con $k <= n$), è chiamato combinazione semplice di $n$ elementi di classe $k$.]

Il numero di combinazioni semplici di $n$ elementi di classe $k$ si indica con $C_n^k$ oppure $binom(n, k)$.

Se si prende una qualsiasi combinazione di $n$ elementi di classe $k$ e la si ordina in tutti i modi possibili (cioè in $k!$ modi), si ottengono le disposizioni semplici $V_n^k$. Di conseguenza, vale la formula:
$ C_n^k = binom(n, k) = (n(n - 1)(n - 2) dots (n - k + 1))/k! = n! / (k! (n - k)!) $ <eq-combinazioni-semplici>

I numeri $C_n^k$ o $binom(n, k)$ sono detti coefficienti binomiali perché compaiono nello sviluppo della potenza del binomio. Se $k = 0$, il numero di sottoinsiemi è $1$ (l'insieme vuoto), perciò $ binom(n, 0) = 1 $ in accordo con la formula precedente.

Nel modello dell'urna, questo problema equivale a estrarre $k$ palline da un'urna contenente $n$ palline distinguibili, senza reintroduzione e senza tener conto dell'ordine (ossia estraendo le $k$ palline contemporaneamente).

#esempio[Per l'insieme $A = \{a, b, c, d\}$, le combinazioni semplici di classe $2$ sono $binom(4, 2) = 6$:
$ a b, quad a c, quad a d, quad b c, quad b d, quad c d $]

=== Combinazioni con ripetizione

Riprendiamo il modello dell'urna esaminato in precedenza, immaginando di reinserire ogni pallina dopo l'estrazione e di segnare il suo contrassegno senza considerare l'ordine. 

Se consideriamo l'insieme $A = \{a, b, c, d\}$ dell'esempio precedente come l'insieme delle palline nell'urna, l'estrazione di $2$ palline con reimbussolamento produce le seguenti combinazioni:
$ a b, quad a c, quad a d, quad b c, quad b d, quad c d, quad a a, quad b b, quad c c, quad d d $

Possiamo schematizzare il problema considerando un insieme $A$ composto da $n$ tipi diversi di oggetti (anziché $n$ oggetti singoli) e chiedendoci in quanti modi sia possibile costruire un insieme $B$ di $k$ elementi prendendo $m_1$ elementi del primo tipo, $m_2$ del secondo tipo, ..., e $m_n$ dell'ultimo tipo, con la condizione:
$ m_1 + m_2 + dots + m_n = k $
(dove gli $m_i$ sono interi non negativi).

Ad esempio, con $4$ tipi di oggetti ($a, b, c, d$) e $k = 2$, le possibilità per costruire l'insieme $B$ sono proprio le $10$ elencate sopra. Se ciascun $m_i <= 1$, si ricadrebbe nel caso delle combinazioni semplici.

#definizione(title: "Combinazioni con ripetizione", label: <def-combinazioni-ripetizione>)[Dato un insieme di $n$ tipi distinti di oggetti, una combinazione con ripetizione di classe $k$ di tali oggetti è un qualsiasi gruppo non ordinato di $k$ elementi scelti tra gli $n$ tipi dati, con la possibilità di ripetere lo stesso tipo di oggetto.]

=== Equazione diofantea

Esaminando le combinazioni con ripetizione di $4$ oggetti di classe $2$, possiamo rappresentare ciascuna combinazione indicando quante volte compare ciascun oggetto. Le possibilità corrispondono a quelle mostrate nella @tabella_equazione_diofantea, sia per le combinazioni semplici che per quelle con ripetizione.

#tabella_equazione_diofantea

Dati due numeri naturali $k$ ed $n$, il problema equivale a determinare in quanti modi $k$ possa essere scritto come somma di $n$ numeri naturali $x_1, x_2, dots, x_n$. Risolviamo cioè l'equazione:
$ x_1 + x_2 + dots + x_n = k $

Un'equazione di questo genere, in cui i coefficienti e le incognite sono numeri naturali (o interi non negativi), è detta equazione diofantea in onore del matematico greco Diofanto. 

Se imponiamo la restrizione $x_i in \{0, 1\}$, ci riconduciamo al caso delle combinazioni semplici (con la condizione $k <= n$).

=== Suddivisioni

Così come abbiamo fatto per le disposizioni, possiamo rappresentare le combinazioni come un problema di suddivisione di $k$ oggetti in $n$ cassetti: la differenza è che qui non importa quale oggetto specifico si trova in un cassetto, ma solo il numero totale di oggetti presente in esso. 

Per descrivere una combinazione di $n$ oggetti di classe $k$, possiamo immaginare di avere $n$ cassetti e $k$ contrassegni identici da distribuirvi:
- Se ciascun cassetto può contenere al massimo un contrassegno, parliamo di combinazioni semplici.
- Se un cassetto può contenere più contrassegni, si tratta di combinazioni con ripetizione.

I contrassegni servono a indicare soltanto se (e quante volte) un elemento è selezionato. Nella @tabella_combinazioni_2_4, riferita alle combinazioni di $4$ oggetti a gruppi di $2$, è mostrata la suddivisione di $2$ contrassegni indistinguibili (segnati con una "$times$") in $4$ cassetti (da confrontare con la @tabella_disposizioni5).

#tabella_combinazioni_2_4

==== Il metodo delle barre e delle stelle (Stars and Bars)

Il problema delle suddivisioni può essere riformulato in modo estremamente efficace per calcolare il numero delle combinazioni con ripetizione.

Immaginiamo di rappresentare gli $n$ cassetti tramite separatori (indicati dal simbolo "$1$") e i $k$ oggetti con il simbolo "$0$". Possiamo descrivere la suddivisione scrivendo gli "$1$" per delimitare i contenitori e i "$0$" per indicare gli oggetti presenti nei vari cassetti. 

Ad esempio, nella distribuzione di $2$ oggetti in $4$ cassetti:
- $"101011"$ rappresenta la combinazione $a b$ (un oggetto nel primo cassetto, uno nel secondo, mentre il terzo e il quarto restano vuoti);
- $"111100"$ indica la combinazione $d d$ (nessun oggetto nei primi tre cassetti e due nell'ultimo).

In sostanza, la distribuzione equivale a una sequenza binaria di lunghezza $n + k$. Poiché tali sequenze iniziano sempre con "$1$", restano $n + k - 1$ posizioni da riempire: dobbiamo scegliere $k$ posizioni per le cifre "$0$" e $n - 1$ posizioni per le cifre "$1$". 

Nel caso delle combinazioni semplici due cifre "$0$" non possono mai essere consecutive, mentre per le combinazioni con ripetizione non vi è alcuna limitazione. Di conseguenza, il problema si riduce a contare i sottoinsiemi di $k$ elementi (oppure di $n - 1$ elementi) scelti da un totale di $n + k - 1$ posizioni disponibili.

Il numero delle combinazioni con ripetizione di $n$ tipi di oggetti di classe $k$ si indica con $attach(C, tr:k, br:n, tl: R)$ ed è dato da:
$ attach(C, tr:k, br:n, tl: R) = binom(n + k - 1, k) = binom(n + k - 1, n - 1) $

I due coefficienti binomiali sono uguali per la proprietà di simmetria dei coefficienti binomiali:
$ binom(n + k - 1, k) = binom(n + k - 1, (n + k - 1) - k) = binom(n + k - 1, n - 1) $

== Potenza di un binomio e di un polinomio

=== Potenza di un binomio

Abbiamo precedentemente discusso il metodo basato sul triangolo di Tartaglia per calcolare i coefficienti nello sviluppo della potenza $n$-esima di un binomio. Tuttavia, proponiamo ora una formula di utilizzo più semplice, poiché non richiede di costruire tutte le righe precedenti. 

Consideriamo la potenza $(a + b)^n$, con $a, b in RR$ e $n in NN$. Per calcolare lo sviluppo, occorre eseguire il prodotto:
$ (a + b)^n = underbrace((a + b) dot (a + b) dot dots dot (a + b), n text(" volte")) $

Il risultato è una somma di monomi del tipo $a^(n - k) b^k$, con $k$ compreso tra $0$ e $n$, accompagnati da opportuni coefficienti. Per determinare quante volte ciascun monomio compare, occorre scegliere $n - k$ volte il fattore $a$ e $k$ volte il fattore $b$ tra gli $n$ fattori $(a + b)$. Tale numero è dato dalle combinazioni $binom(n, k) = binom(n, n - k)$. 

Si ottiene così la formula del binomio di Newton:
$ (a + b)^n = sum_(k=0)^n binom(n, k) a^(n - k) b^k = \
 = binom(n, 0) a^n #hs0+ binom(n, 1)a^(n-1)b #hs0+ binom(n, 2)a^(n-2)b^2 #hs0+ dots #hs0 +#hs0 binom(n, n-2)a^2 b^(n-2) #hs0 + binom(n, n-1)a b^(n-1) #hs0+ binom(n, n)b^n #hs0 =  \
 = a^n + n a^(n - 1) b + binom(n, 2) a^(n - 2) b^2 + dots + binom(n, n - 2) a^2 b^(n - 2) + n a b^(n - 1) + b^n $

#esempio[Calcoliamo $(a - b)^5$:
$ (a - b)^5 = \ = binom(5, 0) a^5 - binom(5, 1) a^4 b + binom(5, 2) a^3 b^2 - binom(5, 3) a^2 b^3 + binom(5, 4) a b^4 - binom(5, 5) b^5 = \
= a^5 - 5 a^4 b + 10 a^3 b^2 - 10 a^2 b^3 + 5 a b^4 - b^5 $]

=== La potenza di un polinomio

La formula di Newton può essere estesa al calcolo della potenza $n$-esima di un polinomio generico a $k$ termini:
$ (a_1 + a_2 + dots + a_k)^n = underbrace((a_1 + a_2 + dots + a_k) dot dots dot (a_1 + a_2 + dots + a_k), n text(" fattori")) $

Il risultato sarà una somma di monomi del tipo $ a_1^(n_1) a_2^(n_2) dots a_k^(n_k) $

con la condizione $n_1 + n_2 + dots + n_k = n$

Ciascun monomio si ottiene scegliendo $a_1$ in $n_1$ fattori, $a_2$ in $n_2$ fattori, e così via (alcuni $n_i$ possono anche essere nulli). Il numero di volte in cui tale monomio compare corrisponde al numero di permutazioni di $n$ elementi non tutti distinti.

Ricordando che $0! = 1$, i coefficienti (detti multinomiali) sono dati da:
$ n! / (n_1! n_2! dots n_k!), quad n_1 + n_2 + dots + n_k = n $

Sviluppando il polinomio si ottiene quindi la formula generale:
$ (a_1 + a_2 + dots + a_k)^n = sum_(n_1 + n_2 + dots + n_k = n) n! / (n_1! n_2! dots n_k!) a_1^(n_1) a_2^(n_2) dots a_k^(n_k) $

Questa formula è conosciuta come la formula di Leibniz per l'elevamento a potenza di un polinomio. Quando $k = 2$, essa corrisponde esattamente alla formula del binomio di Newton. Il fatto che $n_1 + n_2 + dots + n_k = n$ dimostra che il numero di termini nello sviluppo è dato dalle combinazioni con ripetizione $attach(C, tr:n, br:k, tl: R)$ (è importante notare che si tratta di $attach(C, tr:n, br:k, tl: R)$ e non $attach(C, tr:k, br:n, tl: R)$, considerando $n$ oggetti distribuiti su $k$ variabili).

#esempio[Nel calcolo dello sviluppo di $(a + b + c + d)^7$, i coefficienti dei monomi $a^2 b^3 c d$ e $a b^5 d$ sono rispettivamente:
$ 7! / (2! dot 3! dot 1! dot 1!) = 420, quad 7! / (1! dot 5! dot 0! dot 1!) = 42 $

Il numero totale di termini distinti nello sviluppo è dato da:
$ attach(C, tr:7, br:4, tl: R) = binom(4 + 7 - 1, 7) = binom(10, 7) = 120 $]

#esempio[Per trovare il coefficiente di $a^2 b c$ nello sviluppo di $(a + b - 2c)^4$, possiamo procedere calcolando prima il coefficiente multinomiale del monomio $a^2 b (-2c)^1$:
$ 4! / (2! dot 1! dot 1!) = 12 $

Moltiplicando per il fattore relativo alla costante del termine in $c$, si ha:
$ 12 a^2 b (-2c) = -24 a^2 b c $

Il coefficiente richiesto è dunque $-24$.]

=== Proprietà dei coefficienti binomiali

I coefficienti binomiali possiedono alcune importanti proprietà che vogliamo dimostrare, servendo anche come esempio dei calcoli tipici che si possono fare con tali coefficienti.

==== Simmetria
$ binom(n, k) = binom(n, n - k) $

È una conseguenza della definizione; selezionando $k$ elementi da un insieme di $n$, si individua in modo univoco anche il sottoinsieme complementare dei rimanenti $n - k$ elementi. È possibile analizzare la formula sul binomio di Newton: il primo termine si riferisce al coefficiente di $a^(n-k) b^k$, mentre il secondo riguarda $a^k b^(n-k)$. È evidente che scegliere $n-k$ fattori uguali ad a implica dover scegliere $k$ fattori uguali a $b$, e viceversa. Si può anche effettuare un calcolo diretto utilizzando la formula @eq-combinazioni-semplici: 
  $ binom(n, n-k) = (n!)/((n-k)!(n-(n-k))!) = (n!)/(k!(n-k)!) = binom(n, k) $

==== Somma dei sottoinsiemi (cardinalità dell'insieme delle parti)

$ sum_(k=0)^n binom(n, k) = binom(n, 0) + binom(n, 1) + dots + binom(n, n) = 2^n $
  
Questa identità si ottiene ponendo $a = 1$ e $b = 1$ nella formula del binomio di Newton. Per un insieme di $n$ elementi, il generico termine $binom(n, k)$ rappresenta il numero di sottoinsiemi con $k$ elementi; la loro somma fornisce la cardinalità totale dell'insieme delle parti. Facendo un esempio, considerando un insieme $E$ composto da $n$ elementi, il primo termine nel secondo membro della formula corrisponde al numero di sottoinsiemi con $0$ elementi (ossia $1$ insieme, l'insieme vuoto); il secondo termine rappresenta il numero di sottoinsiemi con $1$ elemento, e questo schema continua allo stesso modo. La somma finale dei termini riflette dunque il totale dei sottoinsiemi dell'insieme considerato

==== Somma alternata dei coefficienti binomiali

$ sum_(k=0)^n (-1)^k binom(n, k) = binom(n, 0) - binom(n, 1) + binom(n, 2) - dots + (-1)^n binom(n, n) = 0 $

Questa relazione si ricava applicando la formula del binomio di Newton con $a = 1$ e $b = -1$.

==== Formula di Stifel

Consideriamo un insieme $E$ composto da $n$ elementi e fissiamo un suo elemento $a$. L'obiettivo è contare i sottoinsiemi di $k$ elementi distinguendo tra quelli che includono $a$ e quelli che non lo includono:
- i sottoinsiemi che contengono $a$ sono $binom(n - 1, k - 1)$, poiché basta scegliere $k - 1$ elementi tra i rimanenti $n - 1$;
- i sottoinsiemi che non contengono $a$ sono $binom(n - 1, k)$, scegliendo $k$ elementi tra i rimanenti $n - 1$.

Da qui otteniamo la formula di Stifel:
$ binom(n, k) = binom(n - 1, k - 1) + binom(n - 1, k) $

La formula si ricava anche algebricamente:
$ binom(n - 1, k - 1) + binom(n - 1, k) &= ((n - 1)!) / ((k - 1)! (n - k)!) + ((n - 1)!) / (k! (n - k - 1)!) \
&= ((n - 1)!) / ((k - 1)! (n - k - 1)!) (1 / (n - k) + 1 / k) \
&= ((n - 1)!) / ((k - 1)! (n - k - 1)!) dot n / (k (n - k)) = (n!) / (k! (n - k)!) = binom(n, k) $

Questa relazione è alla base della costruzione ricorsiva del triangolo di Tartaglia:

#grid(columns: 13, column-gutter: 0.25em, row-gutter: 1em)[][$display(binom(n - 1, 0))$][][$display(binom(n - 1, 1))$][][$display(binom(n - 1, k - 1))$][][$display(binom(n - 1, k))$][][$display(dots)$][][$display(binom(n - 1, n - 1))$][][$display(binom(n, 0))$][][$display(binom(n, 1))$][][$display(dots)$][][$display(binom(n, k))$][][$display(dots)$][][$display(binom(n, n - 1))$][][$display(binom(n, n))$]

==== Formula di convoluzione di Vandermonde

Consideriamo due insiemi disgiunti, $A$ e $B$, con cardinalità $n$ e $m$ rispettivamente. Se $S = A union B$, allora $binom(n + m, k)$ rappresenta il numero di sottoinsiemi di $S$ di $k$ elementi. 

Tali sottoinsiemi si ottengono selezionando $r$ elementi da $A$ e $k - r$ elementi da $B$, con $r$ che varia da $0$ a $k$. Questi sottoinsiemi vengono creati selezionando r elementi da A e i restanti $k - r$ da $B$, con $r$ variabile tra $1$ e $k$. La selezione di $r$ elementi da $A$ può essere realizzata in $binom(r, n)$ modi, mentre la scelta di $k - r$ elementi da $B$ è possibile in $binom(k-r, m )$ modi. Pertanto, il numero totale di modi per effettuare questa scelta combinata è $binom(r, n) dot binom(k-r, m )$. Per ottenere il numero complessivo di sottoinsiemi, si devono sommare questi valori per ogni valore possibile di $r$, sfruttando la seguente formula, conosciuta come la formula di convoluzione di Vandermonde:
$ binom(n + m, k) &= binom(n, 0) binom(m, k) + binom(n, 1) binom(m, k-1) + dots + binom(n, k) binom(m, 0) = \ &= sum_(r=0)^k binom(n, r) binom(m, k - r), quad k<= min(n, m) $

==== Somma dei quadrati dei coefficienti binomiali

Impostando $m = n$ e $k = n$ nella formula di Vandermonde e applicando la proprietà di simmetria $binom(n, n - r) = binom(n, r)$, si ottiene la somma dei quadrati dei coefficienti binomiali:
$ binom(2n, n) = sum_(r=0)^n binom(n, r)^2 = binom(n, 0)^2 + binom(n, 1)^2 + binom(n, 2)^2 + dots + binom(n, n)^2 $

==== Estensione della definizione di coefficiente binomiale

È utile generalizzare il coefficiente binomiale $binom(n, k)$ al caso in cui l'indice superiore sia un numero reale $r in RR$:
$ binom(r, k) = (r (r - 1) (r - 2) dots (r - k + 1)) / (k!) , quad r in RR, k in NN $

Se $r = n in NN$ con $n < k$, la formula restituisce: 

$ binom(n, k) = 0 $

Un caso particolare notevole si ha per $r = -1$:
$ binom(-1, k) = ((-1)(-2) dots (-k)) / (k!) = ((-1)^k k!)/k! = (-1)^k $