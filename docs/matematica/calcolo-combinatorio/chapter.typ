#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

= Calcolo combinatorio <calcolo_combinatorio>

#intro[Il calcolo combinatorio è essenziale per lo studio del calcolo delle probabilità e si occupa di determinare la cardinalità di certi insiemi finiti definiti tramite una proprietà caratteristica. Sebbene il problema possa essere molto complesso e privo di metodi standard per la risoluzione, comprenderlo è fondamentale. Verranno illustrate le tecniche principali e forniti esempi risolti, poiché l'analisi di casi concreti è il modo migliore per acquisire familiarità con questo tipo di problemi.]

In alcune situazioni l'unica strategia possibile è elencare tutti gli elementi di un insieme per poi contarli singolarmente. Un esempio classico riguarda la determinazione del numero di numeri primi minori di un dato numero naturale $n$, che richiede l'enumerazione completa e il conteggio manuale.

Ragionamenti intuitivi possono condurre facilmente a errori; pertanto, è utile ricondurre i problemi a modelli astratti che facilitano l'individuazione della tecnica appropriata. Utilizzeremo principalmente due modelli classici:

- *Modello dell'urna:* comporta l'estrazione di un certo numero di oggetti da un'urna di cui si conosce la composizione. In alcuni casi è possibile reintrodurre nell'urna l'oggetto estratto (modello con reintroduzione), in altri no.
- *Modello a celle:* consiste nel collocare un numero definito di oggetti in un certo numero di celle, con la possibilità che più oggetti possano condividere una stessa cella o no.

A seconda del problema da risolvere, uno schema può risultare più immediato dell'altro.

*Definizione 12.1:* Dato un numero naturale $n > 0$, il *fattoriale* di $n$, indicato con $n!$, è il prodotto di tutti i numeri naturali da $1$ a $n$:
$ n! = 1 dot 2 dot 3 dot dots dot n $
Inoltre, si definisce $0! = 1$.
Vale la relazione: $n! = n(n - 1)! = n(n - 1)(n - 2)!$

*Definizione 12.2:* Dato un numero naturale $n > 0$, il *semifattoriale* di $n$, indicato con $n!!$, è il prodotto di tutti i numeri naturali con la stessa parità di $n$ compresi tra $1$ e $n$:
$ n!! = cases(
  2 dot 4 dot dots dot n &quad text("se ") n text(" è pari"),
  1 dot 3 dot 5 dot dots dot n &quad text("se ") n text(" è dispari")
) $
Si ha che $n! = n!! dot (n - 1)!!$.

Ricordiamo inoltre il risultato sulla cardinalità del prodotto cartesiano di più insiemi finiti: la cardinalità del prodotto degli insiemi $A_1, A_2, dots, A_n$ è uguale al prodotto delle cardinalità dei singoli insiemi:
$ |A_1 times A_2 times dots times A_n| = |A_1| dot |A_2| dot dots dot |A_n| $

*Teorema 12.3 (Principio fondamentale del calcolo combinatorio):* Se un problema $P$ può essere scomposto in $k$ sottoproblemi indipendenti $P_1, P_2, dots, P_k$, ciascuno risolvibile in $n_1, n_2, dots, n_k$ modi rispettivamente, allora il problema $P$ può essere risolto in:
$ n = n_1 dot n_2 dot dots dot n_k $
modi diversi.

== Disposizioni

=== Sequenze ordinate

Il problema fondamentale del calcolo combinatorio può essere formulato in questo modo: dato un insieme $A$ composto da $n$ elementi, in quanti modi è possibile creare sequenze ordinate di $k$ di questi elementi?

*Esempio 12.1:* Con i simboli 1, 2, X, quante sequenze di 13 simboli si possono realizzare? (Riferimento al gioco del Totocalcio).

*Esempio 12.2:* Usando un alfabeto di 26 simboli, quante sono le parole di tre simboli distinti che si possono formare, indipendentemente dal loro significato?

*Esempio 12.3:* In una gara di Formula 1 con 20 piloti, quante combinazioni di terzetti possono essere candidate a occupare il podio?

È importante notare che, nel primo esempio, le sequenze richieste permettono ripetizioni, mentre negli altri due esempi le ripetizioni non sono ammesse.

Considerando uno schema a celle, il problema può essere visualizzato così: dato un numero $n$ di simboli e $k$ celle numerate progressivamente, in quanti modi si possono riempire le $k$ celle con i $n$ simboli? È evidente che, quando non sono consentite ripetizioni dei simboli, $k$ non deve superare $n$ ($k <= n$); altrimenti, non vi sono restrizioni.

Consultare la figura 12.1 per una rappresentazione visiva.

// figura

Se le ripetizioni sono ammesse, è più utile considerare un insieme di $n$ "tipi di oggetti" piuttosto che un insieme di $n$ oggetti singoli. In questo modo, disponendo di molti oggetti dello stesso tipo, non ci saranno difficoltà nel selezionarne più di uno per ottenere l'allineamento desiderato. 

Utilizzando il modello dell'urna, il problema si rappresenta così: data un'urna con $n$ palline numerate da $1$ a $n$, quanti modi ci sono per estrarre a caso $k$ palline rispettando l'ordine di apparizione? L'estrazione senza reintroduzione equivale ad allineamenti senza ripetizioni, mentre quella con reintroduzione consente le ripetizioni.

Se le ripetizioni non sono permesse, il problema può essere riformulato nei seguenti modi:
- Dato un insieme di $n$ elementi, quanti sono i suoi sottoinsiemi ordinati di $k$ ($<= n$) elementi?
- Considerati due insiemi, $C$ di $k$ elementi (contrassegni o caselle) e $A$ di $n$ elementi (oggetti da disporre), quante funzioni iniettive esistono da $C$ in $A$?

Se sono consentite ripetizioni, il problema si riformula così:
- Dati due insiemi, $C$ di $k$ elementi e $A$ di $n$ elementi, quante sono le funzioni da $C$ in $A$?

L'interpretazione tramite funzioni è particolarmente significativa: una funzione tra due insiemi finiti può essere immaginata come una tabella a doppia entrata, dove a ogni elemento di $C$ corrisponde un elemento di $A$. Se gli elementi di $A$ non possono ripetersi, si tratta di funzioni iniettive; altrimenti, di funzioni generiche. La figura 12.2 illustra alcuni esempi: ponendo $C = \{1, 2, 3\}$ e $A = \{a, b, c, d\}$, i primi due esempi rappresentano funzioni generiche e gli ultimi due funzioni iniettive.

*Definizione 12.4 (Disposizioni):* Dati due insiemi, $C = \{1, 2, dots, k\}$ di $k$ elementi e $A$ di $n$ elementi:
- Una funzione iniettiva da $C$ in $A$ si chiama *disposizione semplice* di $n$ oggetti di classe $k$ (con $k <= n$). Si può identificare anche come un sottoinsieme ordinato di $A$ costituito da $k$ elementi.
- Una funzione qualsiasi (anche non iniettiva) da $C$ in $A$ si chiama *disposizione con ripetizione* di $n$ oggetti di classe $k$ (senza limitazioni su $k$).

Il numero delle disposizioni semplici di $n$ oggetti di classe $k$ si indica con $V_k^n$, mentre quello delle disposizioni con ripetizione si indica con $R V_k^n$.

Valgono le seguenti formule:
$ V_k^n = n(n - 1)(n - 2) dots (n - (k - 1)) = n! / ((n - k)!) $

Per le disposizioni con ripetizione:
$ R V_k^n = n^k $

Per dimostrare il concetto, è sufficiente notare che se si devono riempire $k$ caselle con $n$ simboli, nella prima casella si può inserire qualsiasi simbolo (e quindi ci sono $n$ possibilità di scelta), mentre nella seconda si può scegliere uno dei simboli rimanenti, se non sono consentite ripetizioni (con $n - 1$ possibilità di scelta), oppure qualsiasi simbolo se le ripetizioni sono permesse (con ancora $n$ possibilità di scelta).

*Nota 12.5:* La formula genera un simbolo comunemente utilizzato nello studio delle funzioni tra insiemi. L'insieme di tutte le funzioni da un insieme $A$ a un insieme $B$ è indicato come $B^A$. Se $alpha$ e $beta$ sono due numeri cardinali associati rispettivamente a un insieme $A$ e a un insieme $B$, la potenza $beta^alpha$ rappresenta la cardinalità dell'insieme $B^A$. Questa definizione, nel caso di cardinalità finite, corrisponde alla classica definizione di potenza, ma risulta estesa anche ai cardinali transfiniti. 

Un caso interessante si verifica quando $B$ è composto da due soli elementi: se li chiamiamo $"vero"$ e $"falso"$, il numero di queste funzioni corrisponde al numero dei sottoinsiemi dell'insieme $A$. Infatti, se a un elemento di $A$ corrisponde $"vero"$, questo elemento farà parte del sottoinsieme corrispondente, altrimenti no. Ad esempio, il sottoinsieme vuoto corrisponde alla funzione che mappa ogni elemento di $A$ su $"falso"$. Per questo motivo, si utilizza il simbolo $2^A$ per indicare l'insieme delle parti di $A$, che avrà cardinalità $2^alpha$. Questa simbolica trova una giustificazione anche nel calcolo delle combinazioni di $n$ oggetti presi $k$ alla volta.

*Esempio 12.4:* Considerando $A = \{a, b, c, d\}$, le disposizioni semplici di classe $2$ sono in numero $V_2^4 = 12$ e risultano essere:
$ a b, quad a c, quad a d, quad b a, quad b c, quad b d, quad c a, quad c b, quad c d, quad d a, quad d b, quad d c $

Le disposizioni con ripetizione della stessa classe sono invece $R V_2^4 = 16$ e includono le 12 precedenti più:
$ a a, quad b b, quad c c, quad d d $

=== Suddivisioni