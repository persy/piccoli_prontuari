#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *
#import "plots.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

#intro[// TODO
]

== Disequazioni in un'incognita

Risolvere una disequazione in un'incognita reale $x$ equivale a risolvere il seguente problema: date due funzioni reali definite su un dominio comune $D$, $f, g: D -> RR$, trovare il sottoinsieme $S$ di $D$ in cui:  
$ f(x) > g(x) \ f(x) >= g(x) \ f(x) < g(x)\ f(x) <= g(x) $ 

Dal punto di vista grafico, tale problema consiste nel determinare i punti sull'asse delle $x$ in cui il grafico di una funzione si trova sopra o sotto quello dell'altra. Nel caso particolare in cui $g(x) = 0$, la disequazione è detta ridotta in forma normale. In tale situazione, dal punto di vista del piano cartesiano, il problema si riduce allo studio della posizione del grafico di $f(x)$ rispetto all'asse delle ascisse (asse $x$).  

La variabile $x$ è detta incognita della disequazione, mentre l'insieme $S$ è chiamato insieme delle soluzioni e ciascuno dei suoi elementi viene definito una soluzione. Nella notazione $f(x) star g(x)$, dove $star$ rappresenta uno dei simboli $>, >=, <, <=$, $f(x)$ è il primo membro della disequazione e $g(x)$ il secondo membro.  

Nei problemi applicativi, salvo diversa indicazione, si assume che l'insieme $D$ sia il dominio naturale comune delle due funzioni $f$ e $g$: si parla quindi di dominio della disequazione. È fondamentale stabilire il dominio della disequazione prima di effettuare qualsiasi semplificazione sull'equazione.  

#esempio[Consideriamo la disequazione:  
$ (x^2 + 1) / x < 1 + 1/x $

Semplificando ingenuamente il termine $1/x$, otteniamo una nuova disequazione:  
$ x^2 < 1 $
che ha come insieme soluzione l'intervallo aperto $(-1, 1)$. Tuttavia, osservando la disequazione iniziale, notiamo che il valore $0$ non appartiene al dominio della funzione data, pertanto non può essere considerato una soluzione.]  

Le disequazioni più rilevanti sono quelle che, una volta ridotte in forma normale, presentano al primo membro un polinomio o un rapporto fra polinomi (funzione razionale). A riguardo di queste, si introduce la seguente definizione.  

#definizione(title: "Disequazione razionale", label: <disequazione_razionale>)[Una disequazione si dice razionale quando, ridotta in forma normale, ha come primo membro una funzione razionale. Se il primo membro è unicamente un polinomio, la disequazione razionale è detta razionale intera e il grado del polinomio coincide con il grado della disequazione.]  

=== Determinazione del segno di una funzione  
Un problema strettamente legato alla risoluzione delle disequazioni è quello di determinare il segno di una funzione reale di variabile reale. Data una funzione $f(x)$, occorre svolgere le seguenti operazioni:  
+ determinare il dominio naturale $D subset.eq RR$ (salvo sia già assegnato)  
+ trovare i valori di $x in D$ per cui $f(x) = 0$  
+ identificare i valori di $x in D$ per cui $f(x) > 0$  
+ identificare i valori di $x in D$ per cui $f(x) < 0$

//

La determinazione del segno di una funzione richiede, come primo passo, l'individuazione del dominio, seguita dalla risoluzione di un'equazione e di due disequazioni. Da un punto di vista tecnico, come vedremo meglio, in molti casi stabilire il dominio e l'insieme in cui $f(x) > 0$ permette di identificare facilmente anche l'insieme dei punti per cui $f(x) = 0$ e quello in cui $f(x) < 0$. Tuttavia, questa procedura non è sempre immediata, ed è quindi importante prestare grande attenzione. 

#esempio[Consideriamo l'esempio della funzione $f(x) = x + |x|$, il cui dominio naturale è l'insieme dei numeri reali ($RR$). Questa funzione risulta strettamente positiva nell'intervallo $]0, +infinity[$, si annulla nell'intervallo $]-infinity, 0]$ e non assume mai valori negativi. Tale proprietà può essere verificata facilmente ricordando la definizione di valore assoluto, che permette di scrivere:

$ f(x) = x + |x| = cases(
  x + x & quad "se" x >= 0, 
  x - x & quad "se" x < 0
) $

Quindi:
$ f(x) = cases(
  2x & quad "se" x >= 0, 
  0 & quad "se" x < 0
) $

Il grafico della funzione, riportato nella @funzione_segno_disequazioni, illustra chiaramente queste caratteristiche. 

#funzione_segno_disequazioni
]
Proseguendo nell'analisi del problema della determinazione del segno di una funzione, ricorreremo frequentemente a notazioni che coinvolgono la cosiddetta "funzione segno", definita tramite la @funzione_segno della @funzioni. Si tratta di un utilizzo parzialmente improprio della funzione segno, poiché questa assume i valori discreti $0, 1$ e $-1$. Tuttavia, nel nostro contesto ci interessa piuttosto classificare i punti in cui la funzione analizzata è positiva, negativa oppure nulla. Nonostante ciò, tale uso è comune nella pratica e non comporta ambiguità interpretative.

=== Convenzioni grafiche  
La rappresentazione grafica delle soluzioni di una disequazione è spesso necessaria. In molti dei casi che tratteremo, tali insiemi saranno composti dall'unione di intervalli appartenenti a $RR$, eventualmente arricchiti da punti isolati. Per esprimerli graficamente, utilizzeremo una linea continua per gli intervalli e un "pallino" per indicare i punti isolati, oppure per chiarire che gli estremi di un intervallo fanno parte delle soluzioni. Per rendere più comprensibile questo metodo, proponiamo un esempio.  

#esempio[Supponiamo che l'insieme delle soluzioni di una certa disequazione sia dato da:  
$ S = ] -infinity, -1[ union [1, 2[ union {3} union ]5, 6[ $  
Il grafico che segue illustrerà questa rappresentazione.

#grafico_disequazione1

Questo tipo di grafico è estremamente utile per valutare rapidamente l'intersezione tra più insiemi di soluzioni, una funzione essenziale quando si tratta di risolvere sistemi di disequazioni. Inoltre, in alto a sinistra del grafico noteremo l'indicazione "V/F" (Vero/Falso), che segnala l'insieme in cui la disequazione è verificata.  

Oltre alle soluzioni delle disequazioni, potrebbe essere necessario rappresentare graficamente i segni di una funzione e il suo dominio. Esistono diverse convenzioni per queste rappresentazioni, ma noi utilizzeremo i simboli "+", "--", "0" per indicare gli intervalli o punti nei quali la funzione è positiva, negativa o nulla. Per gli intervalli o punti dove la funzione non è definita, useremo il simbolo "$times$". Anche in questo caso, chiariremo il tutto con un esempio.][Si consideri una funzione $f$ con le seguenti proprietà:  
1. è definita per $x < -5$ oppure $-5 < x <= 12$.  
2. è strettamente positiva per $x < -5$ oppure $1 <= x < 3$.  
3. è strettamente negativa per $-5 < x < 1$ oppure $8 <= x <= 12$.  
4. si annulla per $3 <= x < 8$.  
La corrispondente rappresentazione grafica sarà la seguente:  

#schema_segni1

Questo tipo di rappresentazione permette una rapida valutazione del segno di un prodotto o un quoziente che coinvolga due o più funzioni. L'indicazione "+/-" posta in alto a sinistra evidenzia che il grafico rappresenta segni e dominio della funzione.  

È importante sottolineare che, per queste rappresentazioni grafiche, le dimensioni degli intervalli non sono rilevanti. L'aspetto essenziale è disporre i cosiddetti caposaldi, cioè i valori numerici riportati sulla prima riga del grafico, in ordine crescente.
]

=== Principi di equivalenza

#definizione(title: "Equivalenza di disquazioni", label: <equivalenza_disequazioni>)[Due disequazioni sono considerate equivalenti se hanno lo stesso insieme di soluzioni.]

La risoluzione di una disequazione generalmente prevede una serie di passaggi preliminari finalizzati a trasformarla in un'altra disequazione equivalente, ma di forma canonica, che verrà analizzata successivamente. Questi passaggi si basano su alcune proprietà fondamentali delle disuguaglianze numeriche:
+ sommando o sottraendo un medesimo numero da entrambi i membri di una disuguaglianza, si ottiene una nuova disuguaglianza con il medesimo valore di verità  
+ moltiplicando o dividendo entrambi i membri di una disuguaglianza per uno stesso numero (diverso da zero), si preserva il valore di verità della disuguaglianza  
+ due disuguaglianze orientate nello stesso verso possono essere sommate termine a termine
+ due disuguaglianze dello stesso verso non possono essere moltiplicate termine a termine, a meno che tutti i membri non siano strettamente positivi

Queste proprietà conducono al seguente teorema.
#v(2em)
#definizione(title: "Teorema")[Siano $A(x)$ e $B(x)$ due funzioni definite in un sottoinsieme $D subset.eq RR$: 
+ la disequazione $A(x) < B(x)$ è equivalente a $B(x) > A(x)$  
+ per qualsiasi funzione $C(x)$, definita su $D$, la disequazione $A(x) < B(x)$ è equivalente a:
  $ A(x) + C(x) < B(x) + C(x) $

3. per qualsiasi funzione $C(x)$, definita su $D$ e mai nulla in tale insieme, la disequazione $A(x) < B(x)$ è equivalente a:
  - $A(x) C(x) < B(x) C(x)$, se $C(x) > 0$ 
  - $A(x) C(x) > B(x) C(x)$, se $C(x) < 0$ 
4. sia $f$ una funzione strettamente monotona per cui esistano le funzioni composte $f(A(x))$ e $f(B(x))$. Allora la disequazione $A(x) < B(x)$ è equivalente a:  
  - $f(A(x)) < f(B(x))$, se $f$ è crescente  
  - $f(A(x)) > f(B(x))$, se $f$ è decrescente  
]
Questo teorema vale anche invertendo i versi delle disuguaglianze o sostituendoli con disuguaglianze in senso lato (ad esempio, sostituendo $<$ con $<=$ o $>$ con $>=$). Analizzando meglio il teorema, si deduce che:
+ sebbene possa sembrare ovvio, il primo punto risulta utile in molte circostanze per evitare passaggi inutili.
+ il secondo principio afferma che è possibile aggiungere o sottrarre la stessa quantità a entrambi i membri della disequazione. In termini pratici, può essere concepito come "spostare" una quantità da un membro all'altro cambiandole segno (con attenzione al dominio).  
+ è possibile moltiplicare o dividere entrambi i membri di una disequazione per una quantità strettamente positiva senza alterarne il verso della disuguaglianza. Tuttavia, qualora la quantità sia strettamente negativa, diventa necessario invertire il verso della disuguaglianza. 
  È importante notare che questa quantità può essere rappresentata anche da una funzione non costante (ad esempio, contenente $x$), purché il suo segno sia sempre costante. Ad esempio, le disequazioni $x^3 + x > 0$ e $x > 0$ sono equivalenti: si ottiene la prima moltiplicando la seconda per $x^2 + 1$, che è sempre strettamente positivo.
+ l'ultimo punto è particolarmente rilevante, poiché si concentra sulla possibilità di applicare operazioni come elevare entrambi i membri di un'equazione a una potenza o calcolare l'esponenziale, in una specifica base, per entrambi i membri. Dettagli più precisi saranno discussi in seguito. In questa sede, limitiamoci ad analizzare alcuni concetti fondamentali.
  + in generale, non è possibile elevare al quadrato o a una potenza pari entrambi i membri di una disequazione, perché la funzione "elevamento al quadrato" non è monotona. Ad esempio, da $x < -1$, elevando al quadrato, si ottiene $x^2 < 1$. Quest'ultima è valida per $-1 < x < 1$, il che contraddice la disequazione iniziale. In effetti, è risaputo che, se ad esempio $-4 < 1$ è una disequazione vera, elevando al quadrato dei due termini si ottiene $16 < 1$, che invece è falsa. Tale caratteristica rende più complessa la risoluzione di disequazioni che coinvolgono radicali quadratici. Tuttavia, è consentito elevare a una potenza pari entrambi i membri quando sono entrambi positivi: in tal caso, l'operazione su $A(x) < B(x)$, ad esempio elevandoli al quadrato, equivale a moltiplicare entrambi i membri per se stessi, ovvero $A(x) dot A(x) < B(x) dot B(x)$. Questa operazione è valida se entrambi i valori coinvolti sono positivi.
  + per contro, è sempre possibile elevare entrambi i membri di una disequazione al cubo o a una potenza dispari, in quanto la funzione "elevamento al cubo" (e in generale ogni potenza dispari) è monotona.

Questi principi saranno essenziali per gestire correttamente le trasformazioni di equazioni e disequazioni durante il calcolo e la risoluzione di problemi più complessi.

== Il binomio di primo grado $f (x) = a x + b$

Una disequazione di primo grado in un'incognita, ridotta alla forma normale, può sempre essere scritta come segue:  

$ a x + b gt.eq.lt 0, quad a, b in RR, quad a != 0 $  

La risoluzione è immediata: si sposta il termine $b$ al secondo membro e si divide per $a$, prestando attenzione al segno di $a$. Di seguito vediamo alcuni esempi:  

#esempio[$ -2x + 5 > 0 \ -2x > -5 \ x < 5/2 $][$ (sqrt(2) - sqrt(3))x - 1 < 0 \ x > 1 / (sqrt(2) - sqrt(3)) $  

Determinare il segno di un binomio di primo grado è molto semplice, soprattutto dopo aver risolto le disequazioni $a x + b > 0$ o $a x + b < 0$. Riprendendo il secondo esempio sopra riportato, possiamo ottenere facilmente il risultato:

#schema_segni2

Risolvere le disequazioni del tipo $a x + b gt.eq.lt 0$ equivale, graficamente, a determinare l'insieme dei punti in cui la retta $y = a x + b$ si trova sopra o sotto l'asse delle ascisse. Dato che $a != 0$, la retta non sarà mai parallela all'asse delle ascisse.  

Ad esempio, per quanto riguarda la prima delle due disequazioni sopra illustrate, il grafico (@grafico_disequazione2) mostra chiaramente la relazione tra la retta $y = -2x + 5$ e l'asse delle ascisse. Il risultato algebrico si può dunque confermare visivamente attraverso l'osservazione del grafico stesso.

#grafico_disequazione2

]

== Il trinomio di secondo grado $f(x) = a x^2 + b x + c$

Una disequazione di secondo grado in un'incognita, ridotta in forma normale, può sempre essere scritta in una delle seguenti forme:  
$ a x^2 + b x + c gt.eq.lt 0, quad a, b, c in RR, quad a != 0 $  

Per risolvere una disequazione di questo tipo o per determinare il segno di un trinomio di secondo grado, non è necessario memorizzare regole legate al segno di $a$, al discriminante, o ad altri parametri specifici. È piuttosto utile ricordare che la funzione nel primo membro ha sempre come rappresentazione grafica una parabola con asse simmetrico parallelo all'asse delle $y$.  

Con una rappresentazione, anche schematica, di questa parabola e calcolandone le eventuali intersezioni con l'asse $x$ (attraverso l'uso della nota formula risolutiva delle equazioni di secondo grado), si possono dedurre facilmente tutte le conclusioni. Di seguito, procediamo con alcuni esempi.

#esempio[Risolvere la disequazione $ -2x^2 + 3x + 5 > 0 $  

Il grafico del trinomio nel primo membro corrisponde a una parabola riportata in @grafico_disequazione3. 

#grafico_disequazione3

Da questa rappresentazione si deduce immediatamente che la disequazione è verificata nell'intervallo: $ ]-1, 5/2[ $scritto anche: $ -1 < x < 5/2 $

Se ci fosse richiesto di determinare il segno del trinomio nel primo membro, dallo stesso grafico otterremmo immediatamente il risultato:

#schema_segni3

][Risolvere la disequazione $ x^2 + x + 2 < 0 $  

Il grafico della parabola corrispondente al trinomio del primo membro è rappresentato in @grafico_disequazione4. Dal grafico risulta chiaro che la disequazione non è mai soddisfatta. 

#schema_segni4

Pertanto, l'insieme delle soluzioni risulta vuoto.  

#grafico_disequazione4

Riguardo al segno del trinomio nel primo membro, esso è sempre strettamente positivo.
][Risolvere la disequazione $ -x^2 + 2x - 1 < 0 $  

Disegnando il grafico della parabola corrispondente nella @grafico_disequazione5, è possibile concludere che la disequazione è verificata per tutti i valori di: $ x in RR without {1} $

#grafico_disequazione5

Inoltre, il segno del trinomio del primo membro può essere dedotto osservando attentamente l'andamento della parabola riportata nel grafico.

#schema_segni5

]

//
== Sistemi di disequazioni in un'incognita 

"Mettere a sistema" due o più disequazioni significa individuare le soluzioni che soddisfano contemporaneamente tutte le disequazioni del sistema; in altre parole, si tratta di determinare l'intersezione degli insiemi soluzione delle varie disequazioni. La rappresentazione grafica adottata si rivela particolarmente efficace per identificare rapidamente l'insieme delle soluzioni, anche se nei casi più semplici potrebbe risultare superflua. Esplichiamo il metodo attraverso un esempio.  

#esempio[Risolvere il seguente sistema:  
$ cases(
  x + 4 > 0, 
  x^2 + 3x + 2 <= 0, 
  2x + 3 < 0
) $  

Ciascuna disequazione è di facile soluzione, permettendo di costruire il seguente schema: 
#v(4em)
#tabella_ver_diseq1

Il sistema risulta quindi verificato per $ x in [-2, -3/2[ $
scritto anche: $ -2 <= x < -3/2 $]  

== Disequazioni fratte e scomponibili  

Una disequazione ridotta in forma normale, il cui primo membro sia espresso come frazione, con numeratore e denominatore scomponibili in fattori di cui si conosce il segno, può essere risolta in maniera agevole utilizzando la regola dei segni. In questo contesto, la rappresentazione grafica dei segni dei singoli fattori risulta particolarmente utile. Esaminiamo il metodo con l'aiuto di alcuni esempi.  

#esempio[Risolvere la disequazione $x^3 - x^2 - 2x > 0$.  
La disequazione può essere riscritta nel seguente modo: $x(x + 1)(x - 2) > 0$. Individuare i segni dei tre fattori è semplice e consente di riportarli nello schema sottostante, in cui è indicato anche il segno complessivo del prodotto.  

#schema_segni6

Pertanto, la disequazione risulta verificata all'interno dell'intervallo $ ] -1, 0 [ union ] 2, +oo [ $
scritto anche: $ -1 < x < 0 or x > 2 $
][Risolvere la disequazione:  
$ ((4x^2 - 12x + 9) x  (x^2 - 3x + 2)) / ((x^4 + 1) (x^2 + x)) <= 0 $  

Nella risoluzione di una disequazione, è spesso utile partire determinando il dominio della funzione. Finora non ce ne siamo preoccupati, in quanto il dominio coincideva sempre con l'insieme dei numeri reali $RR$. Tuttavia, nel caso di funzioni razionali fratte, il dominio potrebbe essere limitato dai punti in cui il denominatore si annulla: in tali casi, infatti, la funzione non risulta definita.  

Per semplificare il procedimento, invece di individuare preventivamente il dominio completo, si può studiare il segno dei singoli fattori del primo membro e successivamente escludere gli eventuali valori che annullano il denominatore. In questo modo si giunge comunque alla soluzione corretta basandosi sulla rappresentazione grafica e sul calcolo delle intersezioni#footnote[È fondamentale evitare qualsiasi semplificazione che alteri il dominio della disequazione. Ad esempio, nel caso della disequazione $(x^2 + x) / x > 0$, se si procede semplificando il primo membro fino a ottenere $x + 1 > 0$, si arriva alla conclusione che $x > -1$. Tuttavia, questa soluzione risulta errata poiché il valore $0$ non appartiene al dominio e deve essere escluso.].  

Nel problema presentato, il primo membro è già stato scomposto in fattori, semplificando l'individuazione del segno. Lo schema ottenuto a partire dal segno dei singoli fattori è il seguente:  

#schema_segni7

Dallo studio del segno emerge che la soluzione è data da $ S = space ]-oo, -1[ space union space [1, 2] $
che si può anche scrivere come: $ x < -1 or 1 <= x <= 2 $  
]

Un aspetto importante da notare è che, nella determinazione del segno del primo membro, non è necessario considerare il verso della disequazione. Quest'ultimo deve essere tenuto in conto solo alla fine dell'esercizio, una volta individuato il segno completo della funzione.


== Funzioni irrazionali

Le funzioni irrazionali sono quelle dove la variabile compare sotto il segno di radice. Ad esempio, la funzione $f(x) = sqrt(x+2)$ è irrazionale, mentre $f(x) = sqrt(2)x + sqrt(3)$, essendo un binomio di primo grado, non lo è. In questo capitolo, ci concentreremo unicamente sulle funzioni irrazionali il cui radicando sia una funzione razionale, intera o frazionaria. Tuttavia, le tecniche spiegate possono essere estese anche ad altri tipi di funzioni irrazionali. È fondamentale evidenziare sin da subito che non esistono regole generali per risolvere disequazioni irrazionali o per identificare il segno di una funzione irrazionale. Sebbene in alcuni testi si propongano regole applicabili a casi specifici (che riporteremo per completezza), riteniamo che non valga la pena memorizzarle, dato il loro uso limitato e la difficoltà nell'applicarli in molte situazioni. Per affrontare queste equazioni, suggeriremo una strategia che può essere applicata in tutti i casi, anche se non garantisce sempre una soluzione definitiva.

=== Risoluzione algebrica

Il metodo per risolvere le disequazioni irrazionali è quello di trasformarle in disequazioni razionali equivalenti, risolvibili con tecniche algebriche già note. In genere, ciò si ottiene elevando entrambi i membri della disequazione a una potenza adeguata. Tuttavia, l'elevazione a potenza pari non è sempre permessa e va valutata caso per caso, perché potrebbe introdurre complicazioni. Vediamo un esempio per chiarire questo aspetto.

#esempio[Consideriamo la disequazione $sqrt(x) - 2 > x$. Dopo aver individuato il dominio ($x >= 2$), se eleviamo subito al quadrato senza considerare i problemi connessi con l'operazione, otteniamo:  
$ x - 4sqrt(x) + 4 > x^2 $  
che introduce ancora un radicale e complica ulteriormente il problema originale. Al contrario, riscrivendo prima la disequazione come $sqrt(x) > x + 2$ e poi elevandola al quadrato, si ottiene:  
$ x > x^2 + 4x + 4 $  
che si riduce a una semplice disequazione di secondo grado, facilmente risolvibile.]

==== Strategia standard di risoluzione

Proponiamo un approccio strutturato da seguire nei passaggi principali:

1. Determinare il dominio della funzionalità della disequazione (condizioni d'esistenza)
2. Riformulare la disequazione nella forma più conveniente per semplificare l'eventuale elevazione a una potenza
3. Decidere come elevare alla potenza:
  - se si deve elevare a una potenza dispari, procedere direttamente
  - se invece si eleva a una potenza pari, valutare il segno delle due parti della disequazione:     
    - se entrambi i membri sono positivi, è possibile elevare entrambi i lati allo stesso esponente pari
    - se entrambi i membri sono negativi, ribaltare il segno e quindi anche il verso della disequazione prima di elevare
    - se un membro è positivo e l'altro negativo, non è necessario procedere in quanto è sempre possibile determinare il risultato

Vediamo un esempio concreto per comprendere meglio l'applicazione di questi passaggi.

#esempio[Risolvere la disequazione: $ sqrt(x^2 - 9x + 14) - x + 8 > 0 $

1. Dominio: la radice quadrata impone che $x^2 - 9x + 14 >= 0$. Risolviamo l'equazione associata $x^2 - 9x + 14 = 0$, che si fattorizza come $(x - 7)(x - 2) = 0$. Pertanto, il dominio è dato da: $ x <= 2 or x >= 7 $ ossia: $ x in (-infinity, 2] union [7, +infinity) $

2. È utile riscrivere la disequazione nella forma: $ sqrt(x^2 - 9x + 14) > x - 8 $
Si osservi però che una radice quadrata rappresenta sempre un valore non negativo, mentre $x - 8$ può assumere anche valori negativi o positivi a seconda del valore di $x$. Quindi distinguiamo i due casi:
  - caso 1: $x - 8 < 0$, cioè $x < 8$.
    In questo caso, il termine a destra della disequazione è negativo, mentre la radice quadrata è sempre maggiore o uguale a zero. Poiché il primo membro è sempre maggiore del secondo, la disequazione risulta verificata per tutti gli $x$ che soddisfano questa condizione, limitatamente al dominio. 
  - caso 2: $x - 8 >= 0$, cioè $x >= 8$.
    In questa situazione entrambi i membri della disequazione sono non negativi e possiamo elevare entrambi al quadrato senza invertire il segno della disuguaglianza. Otteniamo:
    $ x^2 - 9x + 14 > (x - 8)^2 $

    Sviluppando e semplificando:
    $ x^2 - 9x + 14 > x^2 - 16x + 64 $

    da cui:
    $ -9x + 14 > -16x + 64 $

    Portando tutti i termini che coinvolgono $x$ e i termini noti dalla stessa parte si ottiene:
    $ 7x > 50 $

    Intersecando questa soluzione con le condizioni del caso ($x >= 8$), si ottiene il sistema:
    $ cases(x > 50/7, x >= 8) $

    che ha come soluzione $ x >= 8 $

3. Unendo le soluzioni dei due casi analizzati ($x < 8 union x >= 8$) e tenendo conto del dominio iniziale ($x <= 2 or x >= 7$), si ottiene la soluzione complessiva:
  $ S = (-infinity, 2] union [7, +infinity) $ scritto anche: $ x <= 2 or x >= 7 $

Da notare che si sarebbe potuto svolgere comunque il primo caso, creando un sistema: $ cases(x^2 -9x + 14 > 0, x < 8) $ 
ottenendo $x <= 2 or 7 <= x < 8$. Questo, unito all'altra soluzione e alle condizioni d'esistenza avrebbero dato il medesimo risultato: $(x <= 2 or 7 <= x < 8) union (x >= 8)$, ovvero $ x <= 2 or x >= 7$.][
Risolvere la disequazione:
$ -sqrt(3 - 2x) + 6 + x > 0 $

+ Dominio: la radice quadrata ha senso solo se il radicando è maggiore o uguale a zero. Pertanto, imponiamo:  
  $ x <= 3/2 $  
+ Dato che elevare al quadrato direttamente non è conveniente, possiamo riformularla, spostando i membri e invertendo il segno, come:
  
  $ sqrt(3 - 2x) < 6 + x $

  Preferiamo questa seconda forma perché il primo membro (quando definito) è sempre positivo e ciò semplifica le considerazioni successive.
+ Consideriamo la disequazione:
  $ sqrt(3 - 2x) < 6 + x $
  - Il primo membro è positivo quando è definito (cioè per $3 - 2x >= 0$).  
  - Il secondo membro, invece, può essere sia positivo che negativo. Tuttavia, se $6 + x < 0$, la disequazione non può mai essere soddisfatta, in quanto una quantità positiva (radice quadrata) non può essere inferiore a una quantità negativa.  
    Pertanto, consideriamo solo il caso in cui:  
    $ 6 + x >= 0 \ x >= -6 $
    Adesso possiamo elevare al quadrato entrambi i membri senza introdurre soluzioni spurie:
    $ 3 - 2x < (6 + x)^2 $

    Sviluppiamo e semplifichiamo:
    $ 3 - 2x < 36 + 12x + x^2 \ x^2 + 14x + 33 > 0 $

+ Il sistema da considerare diventa:
  $ cases(
  x >= -6, 
  x^2 + 14x + 33 > 0, 
  x <= 3/2
  ) $
  Per la disequazione $x^2 + 14x + 33 > 0$, risolviamola studiando i segni del trinomio. Calcoliamo le radici dell'equazione associata $x^2 + 14x + 33 = 0$:   
  $ x_(1,2) &= (-14 +- sqrt(14^2 - 4 dot 1 dot 33)) / 2 = (-14 +- sqrt(196 - 132)) / 2 \ &= (-14 +- sqrt(64)) / 2 = (-14 +- 8) / 2 $   

  Le soluzioni sono:   
  $ x_1 = -3, quad x_2 = -11 $   

  Poiché il coefficiente di $x^2$ è positivo, il trinomio è positivo all'esterno delle radici. Quindi:   
  $ x^2 + 14x + 33 > 0 \ x in (-infinity, -11) union (-3, +infinity) $

  Tuttavia, dobbiamo tenere conto del dominio originario ($x <= 3/2$) e della condizione $x >= -6$.  
+ Combinando le condizioni:  
  - Dominio: $x <= 3/2$,  
  - Disequazione trinomiale: $x in (-infinity, -11) union (-3, +infinity)$,  
  - Condizione aggiuntiva: $x >= -6$.  

  L'intersezione delle tre condizioni porta a:
  $ S = lr(] -3, 3/2]) $][
Risolvere la disequazione $ sqrt(x + sqrt(x - 2)) > sqrt(x - 1) $.

+ Dominio: per determinare il dominio della disequazione, dobbiamo considerare le seguenti condizioni di esistenza:  
  $ cases(x - 2 >= 0,   
  x + sqrt(x - 2) >= 0,
  x - 1 >= 0) $  
  Anziché partire subito con i calcoli, è più semplice osservare che dalla prima si ottiene $x >= 2$ e che la seconda disequazione è dunque la somma di un numero $x >= 2$ e un altro $x >= 0$, per cui sicuramente vera; inoltre se $x >= 2$, anche la terza disequazione è vera. Pertanto, il dominio della disequazione è $x >= 2$  

+ Quando i membri della disequazione sono definiti e positivi, è possibile elevare entrambi al quadrato senza alterare il segno della disuguaglianza. La forma attuale della disequazione è già ben scritta e adeguata per l'elevazione al quadrato.  
+ Dato che si tratta di una disequazione tra quantità positive, possiamo elevarla al quadrato. Procedendo con i calcoli:  
  $ sqrt(x + sqrt(x - 2)) > sqrt(x - 1) $

  Elevando entrambi i membri al quadrato, otteniamo:  
  $ x + sqrt(x - 2) > x - 1 $

  Semplifichiamo i termini comuni:  
  $ sqrt(x - 2) > -1 $

  Tuttavia, osservando attentamente la disequazione originaria, notiamo che il termine $sqrt(x - 2)$ è non negativo e il termine a destra, $-1$, è negativo. Pertanto, quando $x >= 2$, la disequazione è sempre verificata e l'insieme soluzione della disequazione è $S = [2, +infinity[$.][
Risolvere la disequazione $ sqrt(x + 2) - sqrt(x - 3) > 1 $
+ Dominio: la radice quadrata impone la condizione $x >= 3$, dato che il termine $sqrt(x - 3)$ deve avere senso. Questo valore sovrappone e limita quello dell'altra radice ($x <= -2$)
+ Elevare al quadrato la disequazione nella forma $sqrt(x + 2) - sqrt(x - 3) > 1$ non permette di eliminare completamente i radicali, poiché ne rimane uno anche dopo questa operazione. Tuttavia, modificando la forma della disequazione in $sqrt(x + 2) > sqrt(x - 3) + 1$, diventa evidente che entrambi i membri sono non negativi quando la condizione di dominio è soddisfatta e l'elevazione al quadrato risulta più semplice da gestire in questa configurazione. Inoltre, in questa forma riscritta, non emergono termini di secondo grado. Per questi motivi, questa modalità di scrittura è preferibile.
+ Procedendo con la nuova forma $sqrt(x + 2) > sqrt(x - 3) + 1$, elevando entrambi i membri al quadrato e semplificando si ottiene $sqrt(x - 3) < 2$. Elevando un'ulteriore volta al quadrato, si ricava $x - 3 < 4$, da cui $x < 7$. Considerando il dominio iniziale ($x >= 3$), la soluzione finale è $S = [3, 7[$.][
Risolvere la disequazione $ root(3, x - 2) <= -x $

In questo caso non emergono problematiche legate al dominio o all'elevazione al cubo, dato che la funzione $x^3$ è strettamente monotona e l'elevazione è sempre lecita. Riscrivendo la disequazione si ottiene:
$ x - 2 <= -x^3 $
ovvero:
$ x^3 + x - 2 <= 0 $

Scomponendo il polinomio al primo membro si ricava:
$ (x - 1)(x^2 + x + 2) <= 0 $

Poiché il trinomio $x^2 + x + 2$ è strettamente positivo per qualsiasi valore di $x$ (il discriminante è negativo), può essere eliminato senza influire sul segno della disequazione. Rimane quindi:
$ x - 1 <= 0 $
che implica $x <= 1$. La soluzione finale, espressa tenendo conto dei vincoli, sarà:
$ S = ]-infinity, 1] $]

//
=== Risoluzione grafica

La risoluzione grafica delle disequazioni irrazionali si rivela particolarmente utile, sia come metodo indipendente, sia come strumento per verificare i risultati ottenuti tramite calcoli algebrici, dove è facile incorrere in errori. Nei casi di interesse, i grafici relativi possono sempre essere derivati utilizzando i metodi dell'analisi (argomento che però esula dal contesto di questo testo), o spesso anche con tecniche più elementari. Tuttavia, ciò richiede generalmente una certa familiarità con la geometria analitica, che verrà approfondita nel capitolo 8. Inoltre, per un ulteriore controllo dei risultati, è possibile avvalersi di uno dei numerosi software di calcolo disponibili, anche gratuitamente.

#esempio[Consideriamo nuovamente la disequazione già introdotta:  
$ sqrt(x^2 - 9x + 14) - x + 8 > 0 $  

Il grafico della funzione rappresentata dal primo membro consente di ottenere immediatamente lo stesso risultato ricavato in precedenza (@grafico_disequazione6). 

#grafico_disequazione6

Utilizzando metodi più semplici, possiamo riformulare la disequazione nella forma:  
$ sqrt(x^2 - 9x + 14) > x - 8 $  

A questo punto, è possibile impostare il seguente sistema:  
$ cases(
  y_1 = sqrt(x^2 - 9x + 14), 
  y_2 = x - 8, 
  y_1 > y_2
) $  

Risolvere la disequazione equivale a determinare i valori di $x$ per i quali il grafico di $y_1$ si trova sopra quello di $y_2$. Il secondo grafico rappresenta una retta, facilmente tracciabile con metodi elementari. Per il primo grafico, osserviamo che l'equazione $y = sqrt(x^2 - 9x + 14)$ può essere riformulata come segue:  
$ &cases(
  y >= 0, 
  y^2 = x^2 - 9x + 14
) \ &cases(
  y >= 0, 
  x^2 - y^2 - 9x + 14 = 0
) $  

La seconda equazione definisce una parte della conica $x^2 - y^2 - 9x + 14 = 0$, limitata alla porzione situata sopra l'asse delle ascisse. Si tratta, senza entrare nei dettagli, di un'iperbole equilatera centrata nel punto $(9/2, 0)$, con semiassi di lunghezza $5/2$. Anche in questo caso, il grafico riportato nella @grafico_disequazione7 conferma il risultato precedentemente trovato.

#grafico_disequazione7

]

=== Regole per alcuni casi standard

In questa sezione vengono presentate le regole relative a due casi comuni e ricorrenti nelle applicazioni. Queste regole derivano dalla strategia generale precedentemente illustrata e, come già evidenziato, non si ritiene necessario memorizzarle separatamente. Si punta piuttosto a comprendere il metodo generale da cui esse derivano.

==== Disequazione: $sqrt(f(x)) > g(x)$  

Applichiamo la regola generale per le disequazioni irrazionali:  
+ è necessario che $f(x) >= 0$ per garantire la validità del dominio  
+ la struttura della disequazione consente di eliminare la radice mediante un'elevazione al quadrato, risultando così nella forma più semplice e gestibile  
+ dal momento che il primo membro ($sqrt(f(x))$) è sempre non negativo quando definito, è sufficiente analizzare due casi distinti:  
  - se il secondo membro ($g(x)$) è negativo ($g(x) < 0$), la disequazione risulta automaticamente vera  
  - se il secondo membro è positivo ($g(x) >= 0$), si può procedere con l'elevazione al quadrato

In sostanza, unendo le condizioni per il dominio e trattando separatamente questi casi, risolvere la disequazione equivale a determinare le soluzioni dei seguenti sistemi:  
$ cases(f(x) >= 0, g(x) < 0) quad union quad cases(f(x) >= 0, g(x) >= 0, f(x) > g^2(x)) $   

È interessante notare che la prima condizione del secondo sistema in @sistema_disequazioni1 risulta ridondante, in quanto inclusa nella terza condizione dello stesso sistema ($f(x) > g^2(x) >= 0$). Questo permette di semplificare il risultato finale:  
$ sqrt(f(x)) > g(x) <=> cases(f(x) >= 0, g(x) < 0) quad union quad cases(g(x) >= 0, f(x) > g^2(x)) $ <sistema_disequazioni1> 

==== Disequazione: $sqrt(f(x)) >= g(x)$  

Per questo caso, è possibile dedurre direttamente che:  
$ sqrt(f(x)) >= g(x) <=> cases(f(x) >= 0, g(x) < 0) quad union quad cases(g(x) >= 0, f(x) >= g^2(x)) $ <sistema_disequazioni2> 

Va sottolineato che il passaggio dalla disuguaglianza stretta ($>$) alla disuguaglianza larga ($>=$) nell'espressione comporta unicamente una variazione nella seconda disequazione del secondo sistema.

Sebbene possa sembrare utile memorizzare direttamente le formule sopra indicate (@sistema_disequazioni1 e @sistema_disequazioni2), riteniamo più importante interiorizzare la strategia generale usata per derivarle. Tale strategia richiama quella comune per la risoluzione delle disequazioni irrazionali e fornisce una comprensione più profonda del processo.

==== Disequazione: $sqrt(f(x)) < g(x)$  

Applichiamo la regola generale per affrontare le disequazioni irrazionali:

+ Per il dominio, è necessario che $f(x) >= 0$, poiché la radice quadrata è definita solo per valori non negativi  
+ Elevando al quadrato entrambe le parti, la radice viene eliminata, semplificando la risoluzione. Questa operazione è ideale, a patto che si rispettino le condizioni del dominio.  
+ Dato che il primo membro ($sqrt(f(x))$) è sempre non negativo (quando definito), possiamo distinguere due situazioni basate sul segno del secondo membro:  
  - se $g(x) < 0$, la disequazione è automaticamente falsa perché una quantità non negativa non può essere minore di una negativa.  
  - se $g(x) >= 0$, è possibile elevare al quadrato entrambe le parti, mantenendo valida la disequazione iniziale. Ricordando anche le condizioni sul dominio, si giunge alla seguente forma:
    $ sqrt(f(x)) < g(x) <=> cases(
      f(x) >= 0, 
      g(x) >= 0, 
      f(x) < g^2(x)
    ) $ <sistema_disequazioni3>

==== Disequazione: $sqrt(f(x)) <= g(x)$ 

Il procedimento è analogo e si arriva direttamente alla conclusione:
$ sqrt(f(x)) <= g(x) <=> cases(
  f(x) >= 0, 
  g(x) >= 0, 
  f(x) <= g^2(x)
) $  <sistema_disequazioni4>

È consigliabile memorizzare le formule ottenute (@sistema_disequazioni3 e @sistema_disequazioni4). Tuttavia, è preferibile apprendere e padroneggiare la strategia generale che consente di derivarle, poiché essa rappresenta un metodo universale per risolvere qualsiasi disequazione irrazionale.

=== Il segno di una funzione irrazionale

Per determinare il segno di una funzione irrazionale, è necessario seguire il procedimento generale utilizzato per stabilire il segno di una funzione. Tuttavia, nelle funzioni irrazionali è importante prestare particolare attenzione: non è sempre sufficiente risolvere la disequazione $f(x) > 0$ per ottenere una conclusione definitiva, diversamente da quanto spesso accade nel caso delle funzioni razionali. Per rendere più chiara questa peculiarità, proponiamo un esempio.

#esempio[Determinare il segno della funzione: $ f(x) = x^2 + sqrt(x^4 - 2x^2 + 1) - 1 $ 

Si può facilmente dimostrare che il dominio della funzione coincide con l'insieme dei numeri reali $RR$: 
$ x^4 - 2x^2 + 1 = (x^2 - 1)^2 >= 0 $

Risolvendo la disequazione $f(x) > 0$, si determina che $x < -1$ oppure $x > 1$. Tuttavia, per giungere a una conclusione completa, è necessario anche analizzare l'equazione $f(x) = 0$, dalla quale si ricava $-1 <= x <= 1$. Di conseguenza, il segno della funzione può essere rappresentato secondo lo schema seguente:

#schema_segni8

Il grafico della funzione $f$ conferma il risultato ottenuto, come mostrato nella @grafico_disequazione9. In realtà, questa funzione può essere riscritta utilizzando il valore assoluto, eliminando così la presenza di radicali (rendendo il tracciamento del grafico più semplice), ma ciò non modifica in alcun modo la sostanza del problema né i risultati ottenuti.

#grafico_disequazione9

]

== La funzione valore assoluto 

La soluzione di disequazioni che coinvolgono valori assoluti e l'analisi del segno delle funzioni che li contengono non richiede l'adozione di nuove strategie rispetto a quelle già considerate. È sufficiente ricordare la definizione di valore assoluto (@funzione_valore_assoluto) illustrata precedentemente e analizzare i diversi casi che possono verificarsi. Per farlo, è necessario determinare il segno dell'argomento dei valori assoluti presenti, utilizzando le tecniche già trattate e quelle che saranno esaminate in seguito. In alcuni casi può essere utile rappresentare graficamente la situazione, proprio come si fa per individuare il segno di un prodotto o di un quoziente, anche se con un obiettivo diverso. Vediamo ora un esempio più complesso per chiarire il procedimento.

#esempio[Data la funzione: $ f(x) = |x^2 - 4| + |x + 3| - |x^3 - 3x^2 + 2| $

si richiede di riscriverla senza utilizzare il valore assoluto, distinguendo attentamente i vari casi possibili.  

Iniziamo con l'analisi dei segni degli argomenti dei tre valori assoluti presenti:  
+ $x^2 - 4$: essendo un polinomio di secondo grado, non ci sono difficoltà nella sua analisi. Si ottiene un grafico che rappresenta il segno della funzione:

  #schema_segni9

+ $x + 3$: anche in questo caso, trattandosi di un binomio di primo grado, il procedimento è semplice e il relativo grafico facilita la comprensione del segno: 

  #schema_segni10

+ $x^3 - 3x^2 + 2$: in questo caso è necessario decomporre il polinomio di terzo grado. Identificando la radice $x = 1$, si può scrivere: $x^3 - 3x^2 + 2 = (x - 1)(x^2 - 2x - 2)$. Il segno può essere allora determinato con la tecnica precedentemente discussa. 

  #schema_segni11

A questo punto, raggruppando i risultati ottenuti, è possibile costruire un unico grafico riassuntivo, nel quale è indicata la dicitura "abs" nell'angolo superiore sinistro per evidenziare che lo scopo è spezzare i valori assoluti.

  #schema_segni12

Grazie allo schema, possiamo dedurre i seguenti casi:  
+ $-oo < x < -3$: $ f(x) = (x^2 - 4) + (-x - 3) - (-x^3 + 3x^2 - 2) $  
+ $-3 <= x < -2$: $ f(x) = (x^2 - 4) + (x + 3) - (-x^3 + 3x^2 - 2) $  
+ $-2 <= x < 1 - sqrt(3)$: $ f(x) = (-x^2 + 4) + (x + 3) - (-x^3 + 3x^2 - 2) $  
+ $1 - sqrt(3) <= x < 1$: $ f(x) = (-x^2 + 4) + (x + 3) - (x^3 - 3x^2 + 2) $  
+ $1 <= x < 2$: $ f(x) = (-x^2 + 4) + (x + 3) - (-x^3 + 3x^2 - 2) $  
+ $2 <= x < 1 + sqrt(3)$: $ f(x) = (x^2 - 4) + (x + 3) - (-x^3 + 3x^2 - 2) $  
+ $1 + sqrt(3) <= x < +oo$: $ f(x) = (x^2 - 4) + (x + 3) - (x^3 - 3x^2 + 2) $

Nel distinguere i vari casi, abbiamo sempre scelto di scrivere la disuguaglianza in forma tale da leggere $x ≥ ...$; il risultato non cambierebbe se avessimo adottato la convenzione opposta. Tuttavia, una volta stabilita una preferenza, è consigliabile mantenerla coerente. 

Va inoltre sottolineato che l'operazione di "eliminazione del valore assoluto" si riduce essenzialmente alla sostituzione del valore assoluto con parentesi tonde, al cui interno si inserisce il suo argomento o il suo opposto, in base al fatto che quest'ultimo sia positivo o negativo. 

Infine, si osserva che i casi 2 e 6 risultano coincidenti, così come lo sono i casi 3 e 5. 

A tal proposito, proponiamo alcuni esempi pratici di risoluzione di disequazioni e analisi del segno.

][Risolviamo la disequazione $ x + |x^2 - 1| < 0 $ Considerando il segno di $x^2 - 1$, occorre distinguere due casi.

+ $x < -1 or x >= 1$: in questo intervallo, la disequazione diventa: $ x + (x^2 - 1) < 0 \ x^2 + x - 1 < 0 $ Risolvendo questa disequazione di secondo grado, si ottengono come soluzioni:  
$ (-1 - sqrt(5)) / 2 < x < (-1 + sqrt(5)) / 2 $  

  Tuttavia, in questo caso consideriamo solo i valori $x < -1$ e quindi l'insieme delle soluzioni si riduce a:  
  $ S_1 = lr(\] , size: #200%) (-1 - sqrt(5)) / 2, -1 lr(\[ , size: #200%) $

+ $-1 <= x < 1$: in questo intervallo, la disequazione diventa $ x + (-x^2 + 1) < 0 $, ovvero $ -x^2 + x + 1 < 0 $. Risolvendo questa disequazione di secondo grado, si trovano come soluzioni:  
$ x < (1 - sqrt(5)) / 2 or x > (1 + sqrt(5)) / 2 $  

Tuttavia, nel dominio di questo caso ($-1 <= x < 1$), consideriamo solo l'intervallo $ x < (1 - sqrt(5)) / 2 $ Pertanto, l'insieme delle soluzioni è:  
$ S_2 = lr(\] , size: #200%) -1, (1 - sqrt(5)) / 2 lr(\[ , size: #200%) $ 

Unendo i due intervalli ottenuti nei due casi, l'insieme delle soluzioni della disequazione è:  
$ S = S_1 union S_2 = lr(\] , size: #200%) (-1 - sqrt(5)) / 2, (1 - sqrt(5)) / 2 lr(\[ , size: #200%) $

Il grafico della funzione $f(x) = x + |x^2 - 1|$, rappresentato in @grafico_disequazione10, può essere tracciato facilmente poiché si tratta di una combinazione di archi di parabola.

#grafico_disequazione10
][Risolvere la disequazione:
$ |1 - |x + 2|| + x - 1 <= 0 $

Analizzando il segno dell'argomento del valore assoluto più interno, si identificano due casi distinti da considerare, a seconda dell'intervallo in cui si trova $x$.

1. $x < -2$: la disequazione diventa $|1 - (-x - 2)| + x - 1 <= 0$, che si riscrive come $|x + 3| + x - 1 <= 0$. A questo punto, si devono analizzare ulteriori sottocasi in base al segno dell'argomento del valore assoluto.
  - $x < -3$: la disequazione si riduce a $-x - 3 + x - 1 <= 0$, ovvero $-4 <= 0$. Questa espressione è sempre vera, quindi tutti i valori di $x < -3$ soddisfano la disequazione.
  - $-3 <= x < -2$: in questo caso, la disequazione diventa $x + 3 + x - 1 <= 0$, ovvero $2x + 2 <= 0$. Da qui si ricava $x <= -1$. Poiché l'intervallo considerato è $[-3, -2[$, questa disuguaglianza è sempre valida per $x in [-3, -2[$.
+ $x >= -2$: la disequazione diventa $|1 - (x + 2)| + x - 1 <= 0$, che si riscrive come $|-x - 1| + x - 1 <= 0$. Di nuovo, distinguiamo due sottocasi.
  - $-2 <= x < -1$: la disequazione si riduce a $(-x - 1) + x - 1 <= 0$, ovvero $-2 <= 0$, che risulta sempre vera per qualunque $x$ in questo intervallo.
  - $x >= -1$: la disequazione diventa $(x + 1) + x - 1 <= 0$, ossia $2x <= 0$, da cui $x <= 0$. Poiché il dominio analizzato è $x >= -1$, questa condizione ci fornisce $-1 <= x <= 0$.

#grafico_disequazione11

Effettuando l'unione dei risultati ottenuti nei quattro casi, otteniamo la soluzione finale della disequazione: $S = ]-infinity, 0]$.

Il grafico della funzione $f(x) = |1 - |x + 2|| + x - 1$ mostra un andamento fatto di segmenti e semirette; esso può essere tracciato facilmente con metodi elementari e conferma i risultati ottenuti. Si veda la @grafico_disequazione11.

][Determinare il segno della funzione:
$ f(x) = x|x| - 2x - 1 + (x + 1)|x + 1| $

Con le osservazioni già fatte in precedenza, è possibile suddividere lo studio in tre casi principali:
+ $x < -1$: la funzione diventa:
  $ f(x) &= x(-x) - 2x - 1 + (x + 1)(-(x + 1)) = \ &= -x^2 - 2x - 1 - (x^2 + 2x + 1) = \ &= -2x^2 - 4x - 2 $
+ $-1 <= x < 0$: la funzione si annulla poiché viene a verificarsi una compensazione completa tra i termini positivi e negativi:
  $ f(x) &= x(-x) - 2x - 1 + (x + 1)(x + 1) = \ &= -x^2 - 2x - 1 + (x^2 + 2x + 1) = \ &= 0 $
+ $x >= 0$: la funzione diventa $ f(x) = x^2 $

Risulta semplice ottenere il segno della funzione attraverso lo schema seguente:

#schema_segni13

Il grafico della funzione $f(x) = x|x| - 2x - 1 + (x + 1)|x + 1|$, tracciabile con metodi elementari, conferma chiaramente il risultato ottenuto, come illustrato nella @grafico_disequazione12.

#grafico_disequazione12

Osserviamo, come già evidenziato in esempi precedenti, che questa funzione si annulla su un intero intervallo di numeri reali. Questo comportamento è nettamente diverso rispetto a quello dei polinomi, i quali possono avere al massimo tanti zeri quanti sono i loro gradi.

]

Le disequazioni che coinvolgono il valore assoluto, come $ |f(x)| < a quad ("oppure" <= a), \ |f(x)| > a  quad ("oppure" >= a) $ <disequazioni_assoluto_fx_minore_a>

possono essere risolte in modo più diretto considerando attentamente la definizione e le proprietà del valore assoluto. Nello specifico:

1. Le disequazioni $|f(x)| < a$ e $|f(x)| <= a$, con $a < 0$, non ammettono soluzioni;
2. La disequazione $|f(x)| < 0$ non ha soluzioni, mentre $|f(x)| <= 0$ equivale a $f(x) = 0$;
3. La disequazione $|f(x)| < a$, con $a > 0$, equivale a $-a < f(x) < a$; analogamente, $|f(x)| <= a$, con $a > 0$, equivale a $-a <= f(x) <= a$;
4. Le disequazioni $|f(x)| > a$ e $|f(x)| >= a$, con $a < 0$, hanno come soluzione l'intero dominio di $f(x)$;
5. La disequazione $|f(x)| > 0$ equivale a $f(x) != 0$, mentre $|f(x)| >= 0$ ha come soluzione l'intero dominio di $f(x)$;
6. Infine, la disequazione $|f(x)| > a$, con $a > 0$, equivale a $f(x) < -a or f(x) > a$; similmente, $|f(x)| >= a$, con $a > 0$, equivale a $f(x) <= -a or f(x) >= a$.

Sebbene possa sembrare arduo ricordare tutti questi casi, basta tenere presente che il valore assoluto di un numero reale è sempre positivo o nullo e che esso rappresenta la distanza del numero stesso dall'origine sulla retta reale.
#v(2em)
#esempio[La risoluzione della disequazione $ |x - 3| < 2 $ si riduce al sistema $-2 < x - 3 < 2$, da cui si ottiene $ 1 < x < 5 $

Questo è coerente con il significato geometrico del valore assoluto: affermare che il modulo di $x - 3$ sia minore di $2$ implica che la distanza del numero $x$ dal punto $3$ sia inferiore a $2$. Di conseguenza, $x$ deve appartenere all'intervallo compreso tra $1$ e $5$.

][In questo esempio di disequazione sono incluse funzioni razionali, irrazionali e termini con valore assoluto. L'intero esercizio è sviluppato in dettaglio con l'obiettivo di fornire un modello utile per affrontare situazioni analoghe. È fondamentale, specialmente nei problemi più complessi, procedere con precisione e chiarezza, integrando se necessario un chiaro schema di risoluzione. Naturalmente, il metodo proposto non è l'unico possibile: l'aspetto cruciale sta nella capacità di sviluppare un approccio sistematico e di seguire un ordine preciso per evitare confusioni.

Risolvere la seguente disequazione:  
$ 1 - x + sqrt(x^2 + x + 2) - (2x + 1) / x >= 0 $

+ Dominio: il primo passo nella risoluzione di una disequazione consiste nella determinazione del dominio naturale, ossia il più ampio sottoinsieme dei numeri reali per cui le operazioni indicate nella disequazione sono definite. Questo si traduce generalmente in un sistema di disequazioni in un'unica incognita. Nel nostro caso, occorre verificare due condizioni fondamentali:
  - il radicando deve essere maggiore o uguale a zero ($x^2 + x + 2 >= 0$)
  - i denominatori devono essere diversi da zero ($x != 0, 2x + 1 != 0$).
  Risolviamo ciascuna di queste condizioni:  
  - la prima disequazione, $x^2 + x + 2 >= 0$, è sempre verificata, poiché il primo membro rappresenta una parabola con concavità rivolta verso l'alto che non tocca mai l'asse delle ascisse.  
  - la seconda condizione, $3 - (2x + 1)/x != 0$, si tratta di una disequazione con valori assoluti. Può essere affrontata analizzando il segno della frazione $(2x + 1)/x$:
  
  #schema_segni14
  
  I due casi da considerare sono dunque:
  $ x < -1/2, quad x > 0 \ -1/2 <= x < 0 $  
  Procedendo con il metodo classico per la risoluzione delle disequazioni con valori assoluti, si ottiene alla fine che il dominio della disequazione è dato da:  
  $ D = RR without {-1/2, 0, 1} $
  - la terza condizione, $x != 0$, è semplice e impone che l'incognita non possa assumere il valore zero. 

Per completezza si segnala che la seconda disequazione avrebbe potuto essere risolta anche con un approccio semplificato; per dettagli è possibile fare riferimento alla @disequazioni_assoluto_fx_minore_a. La costruzione del grafico e i calcoli per ogni caso consentono di visualizzare meglio le soluzioni della disequazione e rappresentano un utile supporto nel processo di risoluzione. Procediamo all'analisi del segno della funzione, utilizzando il dominio già determinato.

+ Ricerca del segno al numeratore: dobbiamo risolvere la disequazione:
$ 1 - x + sqrt(x^2 + x + 2) > 0 $
che è conveniente riscrivere nella forma:
$ sqrt(x^2 + x + 2) > x - 1 $

  Poiché il primo membro, che contiene solo il radicando $x^2 + x + 2$, è sempre positivo, la nostra attenzione si concentra esclusivamente sul secondo membro. Risulta necessario distinguere due casi principali:
  - $x >= 1$: elevando al quadrato e semplificando, si ottiene:  
  $ x^2 + x + 2 > (x - 1)^2 => x^2 + x + 2 > x^2 - 2x + 1 => 3x + 1 > 0 $  
  che implica $x > -1/3$. Considerando però la condizione $x >= 1$, ne consegue che la disequazione è sempre soddisfatta in tale intervallo.
  - $x < 1$: in questo caso, il primo membro (la radice quadrata) risulta positivo quando definito, mentre il secondo membro della disequazione ($x - 1$) è negativo. Pertanto, la disequazione è verificata senza ulteriori calcoli.

  In conclusione, la disequazione risulta verificata in ogni caso analizzato. Di conseguenza, il numeratore è sempre maggiore di $0$ e non si annulla né assume valori negativi.

+ Ricerca del segno al denominatore: dobbiamo risolvere la seguente disequazione:
  $ 3 - lr(|(2x + 1) / x|) > 0 $
  Considerando le osservazioni già fatte riguardo al dominio della funzione, riscriviamo la disequazione sotto forma:
  $ -3 < (2x + 1) / x < 3 $

  Risolvendo il sistema di disequazioni si ottiene:
  $ x < -1/5 or x > 1 $

  Da questi risultati si evince che il denominatore è maggiore di $0$ per tali valori. Inoltre, gli eventuali valori che annullerebbero il denominatore sono stati già esclusi nella determinazione del dominio.

Ora possiamo compilare lo schema dei segni:

#schema_segni15

Infine, possiamo rappresentare dedurre l'intervallo delle soluzioni, rappresentato graficamente nella @grafico_disequazione13:
$ S = (-infinity, -1/5) union (1, +infinity) $

#grafico_disequazione13

Il grafico della funzione associata al primo membro della disequazione può fornire un riscontro visivo dei risultati appena ottenuti. Tale rappresentazione grafica permette di verificare immediatamente il comportamento della funzione all'interno del dominio individuato.

Va osservato che, se il tracciamento a mano richiederebbe troppo tempo ed esistono ormai numerosi software gratuiti che offrono la possibilità di disegnare automaticamente tali grafici. Pertanto, è consigliato avvalersi di questi strumenti per semplificare il lavoro e ottenere una maggiore precisione.

]