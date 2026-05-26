#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *
#import "plots.typ": *
#import "tables.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

#intro[Abbiamo già introdotto, nella @logica, il concetto di funzione. In questa sezione, desideriamo approfondire questo argomento, concentrandoci in particolare sulle funzioni reali di variabile reale. Queste ultime, note anche semplicemente come funzioni reali, sono funzioni in cui sia il dominio che il codominio sono insiemi di numeri reali o loro sottoinsiemi.]

Per cominciare, riprendiamo gli elementi essenziali dalla definizione @funzione.

#definizione(title: "Funzione", label: <funzione2>)[Si definisce funzione da un insieme A a un insieme B ogni regola che associa a ogni elemento di A uno e un solo elemento di B.  

L'insieme $A$ è detto dominio della funzione, mentre l'insieme $B$ è chiamato codominio. Se $x$ è un elemento di $A$, e $y$ è l'unico elemento di $B$ corrispondente, si dice che $y$ è la funzione di $x$, e si scrive $ y = f(x) $. L'elemento $y$, inoltre, è definito immagine di $x$ attraverso $f$. La notazione più formale per le funzioni è:  
$ f : A -> B, quad x |-> f(x) $  
ma spesso viene semplificata in $ x |-> f(x) $ qualora gli insiemi $A$ e $B$ siano già stati specificati o risultino chiari dal contesto.] 

Talvolta ci si riferisce a una funzione con la forma abbreviata $y = f(x)$, anche se questa modalità può generare ambiguità. I puristi della matematica, infatti, possono considerarla un'imprecisione; tuttavia, bisogna ricordare che il livello di rigore richiesto dipende dal contesto: se da un lato tale formalismo è essenziale in alcuni casi, dall'altro potrebbe appesantire inutilmente l'esposizione.

Nella definizione di funzione, è importante sottolineare due proprietà fondamentali:  
+ per descrivere una funzione sono necessari tre elementi: il dominio, il codominio e la regola che associa ad ogni elemento del dominio uno e un solo elemento del codominio.  
+ ogni elemento dell'insieme $A$ deve corrispondere esattamente a un elemento dell'insieme $B$. Viceversa, non è necessario che ogni elemento di $B$ abbia una corrispondenza con un elemento di $A$.  

L'insieme dei punti di $B$ che sono immagine di almeno un elemento di $A$ (ovvero, i valori dello spazio codominio ai quali corrisponde almeno un valore nel dominio) è un concetto cruciale, ed è definito come segue.  
#v(3em)
#definizione(title: "Insieme immagine", label: <insieme_immagine>)[Se $f : A -> B$ è una funzione, l'insieme degli elementi $y in B$ che sono immagine di almeno un elemento $x in A$ si chiama insieme immagine (o semplicemente immagine) di $A$ tramite $f$. Si indica con Im(f) o con f(A). Formalmente:  
$ "Im"(f) = f(A) = {y in B | exists x in A, quad y = f(x)} $]  

== Rappresentazioni grafiche

Per definire formalmente una funzione $f : A -> B$, si può più precisamente pensare a un sottoinsieme del prodotto cartesiano $A times B$, formato da coppie ordinate $(x, y)$, con la proprietà fondamentale che ogni elemento di A compare esattamente una volta come primo elemento della coppia.
A tal proposito, introduciamo la seguente definizione:  

#definizione(title: "Grafico di una funzione", label: <grafico_funzione>)[Il grafico di una funzione $f : A -> B$ è l'insieme:  
$ Gamma(f) = {(x, y) subset.eq A times B | y = f(x), quad x in A} $
]

È possibile, in certi casi, identificare una funzione con il suo grafico, e c'è chi adotta questa prospettiva. Tuttavia, seguendo la tradizione matematica, preferiamo mantenere distinti i due concetti. È importante comunque sottolineare che il termine "grafico di una funzione" non va confuso con la "rappresentazione grafica" della stessa, che consiste in un insieme di strumenti e tecniche visive progettate per evidenziare alcune caratteristiche fondamentali delle funzioni. Su questo punto torneremo più avanti.

Una delle prime tecniche grafiche utilizzate per rappresentare le funzioni è il diagramma a frecce, illustrato nella @diagramma_frecce.

#diagramma_frecce

Un aspetto essenziale dei diagrammi a frecce è che da ogni elemento dell'insieme di partenza ($A$) deve sempre partire una sola freccia. Invece, per quanto riguarda l'insieme di arrivo ($B$), le regole sono meno restrittive: un punto può ricevere più frecce o nessuna. Per spiegare questa relazione in modo metaforico, si potrebbe dire che $A$ rappresenta un insieme di arcieri e $B$ un insieme di bersagli. Ogni arciere ha a disposizione una sola freccia che deve necessariamente scoccare; i bersagli, invece, possono essere colpiti da più frecce oppure restare completamente illesi.

Come mostrato nella @diagramma_frecce, l'immagine della funzione risulta essere il sottoinsieme ${y_1, y_3, y_5}$, che appartiene all'insieme $B$. È evidente che rappresentazioni come questa sono utili solo quando gli insiemi coinvolti sono finiti: se tali insiemi fossero infiniti, bisognerebbe rappresentare infinite frecce, un'operazione chiaramente impraticabile.

Oltre ai diagrammi a frecce, esistono ulteriori modi per rappresentare le funzioni. Consideriamo, ad esempio, una funzione che associa a ogni numero naturale compreso tra 1 e 5 la metà corrispondente (il dominio è costituito dai numeri naturali indicati, e il codominio dai numeri razionali). In questo caso, si può utilizzare una tabella a doppia entrata: nella prima colonna vengono elencati i numeri naturali $1, 2, dots 5$; nella seconda colonna, invece, vengono riportate le loro rispettive metà. Questo tipo di rappresentazione è illustrato nella @tabella_funzione.

#tabella_funzione

Un altro esempio utile è il diagramma a torta, particolarmente efficace in situazioni specifiche. Si prenda come caso un corso universitario con 120 studenti provenienti da diverse province. I dati ottenuti possono essere organizzati come segue: 
- Gorizia: 5 studenti (4,17%)
- Pordenone: 70 studenti (58,33%)
- Treviso: 15 studenti (12,5%)
- Trieste: 10 studenti (8,33%)
- Udine: 20 studenti (16,67%)

Per costruire un diagramma a torta, si calcolano le ampiezze delle sezioni circolari proporzionalmente alla percentuale dei dati rilevati rispetto al totale di 360°. Un esempio di tali calcoli è riportato qui:
- Gorizia: 15° 
- Pordenone: 210°
- Treviso: 45°
- Trieste: 30°
- Udine: 60°

Il risultato finale di tale rappresentazione visiva è mostrato in @diagramma_torta. Un'alternativa simile è il diagramma a semitorta: invece di un cerchio completo si utilizza un semicerchio suddiviso con lo stesso criterio. Questa variante è molto comune, ad esempio, nella rappresentazione della composizione dei seggi parlamentari, dato che le aule dell'emiciclo hanno spesso forma semicircolare.

Un'ulteriore opzione è fornita dal diagramma a barre, come mostrato in @diagramma_colonne. In questa forma di rappresentazione si utilizzano rettangoli con basi di lunghezza fissa e altezze proporzionali alle percentuali riferite ai vari elementi del dominio. Vale infine la pena notare che sia nei diagrammi a torta sia in quelli a barre l'ordinamento degli elementi nel dominio non riveste alcuna importanza ai fini dell'interpretazione del grafico.

#diagramma_torta

#v(1em)

#diagramma_colonne

La rappresentazione più efficace e pratica per le funzioni tra insiemi di numeri reali è quella mediante diagrammi o grafici cartesiani, soprattutto quando gli insiemi in questione sono infiniti e le altre modalità di rappresentazione non risultano utilizzabili. In questo approccio, si prende in considerazione un piano cartesiano $O x y$ con un sistema di coordinate ortogonali, per semplicità. Su questo piano vengono rappresentate tutte le coppie $(x, y)$, dove $x$ appartiene al dominio della funzione e $y = f(x)$ il corrispondente valore nel codominio.

Riprendendo l'esempio illustrato nella @tabella_funzione, si devono rappresentare i punti $ A = (1, 1/2), B = (2, 1), C = (3, 3/2), D = (4, 2), E = (5, 5/2) $

Il risultato sarà il grafico riportato nella @grafico_cartesiano_punti.

#grafico_cartesiano_punti

Il grafico nella @grafico_cartesiano_punti può essere considerato una versione semplificata e "compattata" di un grafico a frecce: dato che i valori del dominio corrispondono ai punti sull'asse $x$ e quelli del codominio ai punti sull'asse $y$, si può immaginare di tracciare delle frecce che collegano ogni punto del dominio con il valore associato nel codominio. Tuttavia, queste frecce attraversano necessariamente i punti $A, B$, ecc., come mostrato nella @grafico_cartesiano_frecce.

#grafico_cartesiano_frecce

La @grafico_cartesiano_punti riassume il contenuto della @grafico_cartesiano_frecce, includendone solo gli elementi essenziali: i "nodi" o estremi delle frecce. È chiaro che, conoscendo soltanto i nodi, si possono tranquillamente ricostruire le frecce.

Confrontando la @grafico_cartesiano_punti con la @tabella_funzione, si colgono immediatamente i vantaggi di questa rappresentazione grafica. Per esempio, si nota a colpo d'occhio che all'aumentare di $x$ nel dominio corrisponde un aumento proporzionale di $y$ nel codominio; tale crescita risulta costante. Questi vantaggi diventano ancora più evidenti se consideriamo una funzione che associa a ogni numero reale $x$ la sua metà. In questo caso, essendo infinito il dominio della funzione, una rappresentazione a tabella (come quella vista nella @tabella_funzione) diventa impraticabile. Un diagramma cartesiano risulta quindi decisamente più utile e informativo.

#grafico_cartesiano_retta

Nel grafico della @grafico_cartesiano_retta sono compresi anche i punti precedentemente mostrati nella @grafico_cartesiano_punti, poiché il dominio della funzione in questione è un sottoinsieme di quello della nuova funzione.

#grafico_cartesiano_retta_punti 

In tutti i grafici cartesiani fin qui presentati è stata utilizzata la stessa unità di misura su entrambi gli assi: tali sistemi cartesiani sono detti monometrici. Tuttavia, nelle applicazioni pratiche questa condizione non è sempre soddisfatta, e come vedremo più avanti, l'uso di unità di misura differenti sui due assi può comportare deformazioni delle figure rappresentate. Ad esempio, nelle @grafico_cartesiano_circonferenza1 e @grafico_cartesiano_circonferenza2 sono mostrati due grafici che rappresentano una circonferenza di centro nell'origine e raggio pari a 1 in due sistemi di coordinate diversi; solo uno dei due è monometrico.

Analogamente, nelle @grafico_cartesiano_bisettrice1 e @grafico_cartesiano_bisettrice2 sono rappresentate la bisettrice del primo e terzo quadrante nei medesimi due sistemi cartesiani delle figure precedenti per evidenziare le differenze.

#griglia_grafici_deformazioni

Infine, nelle funzioni che verranno prese in considerazione durante questo corso, i grafici cartesiani saranno generalmente costituiti da "curve", nell'accezione comune del termine. Tuttavia, è fondamentale sottolineare un aspetto cruciale: secondo la definizione matematica di funzione, a ogni elemento del dominio deve essere associato uno e un solo elemento del codominio. Questa proprietà ha un'immediata interpretazione geometrica nei grafici cartesiani: una retta verticale tracciata a partire da un qualsiasi punto $x$ del dominio deve intersecare il grafico della funzione in un unico punto; altrimenti, significherebbe che a uno stesso valore di $x$ corrispondono più valori di $y$, contraddicendo la definizione stessa di funzione, come in @grafico_cartesiano_non_funzione.

#grafico_cartesiano_non_funzione

I grafici cartesiani delle funzioni reali permettono di visualizzare chiaramente sia il dominio che l'insieme immagine di una funzione. Nello specifico, il dominio corrisponde alla proiezione del grafico sull'asse $x$, mentre l'insieme immagine corrisponde alla proiezione del grafico sull'asse $y$. Per una migliore comprensione, si può fare riferimento alla @grafico_dominio_immagine.

#grafico_dominio_immagine

Un modo intuitivo di rappresentare le funzioni è immaginarle come una sorta di "scatola nera" piena di ingranaggi e meccanismi, che dispone di un ingresso (input) e un'uscita (output). Inserendo un elemento del dominio, ovvero un dato (nei nostri esempi sarà un numero reale, indicato con $x$), attraverso la porta di ingresso, la funzione lo elabora e restituisce un risultato tramite l'uscita. Questo risultato, indicato con $y$, viene chiamato l'"immagine" di $x$ attraverso la funzione. La  @input_output1 rappresenta questa situazione applicata alla funzione $f(x) = x^3 - x$. 

#input_output1

Se, come in @input_output2, il valore di ingresso fosse il numero 5, il meccanismo interno della "scatola nera" calcolerebbe il cubo di 5 e, successivamente, sottrarrebbe il numero 5 stesso, producendo come risultato 120.

#input_output2

== Funzioni reali e dominio naturale

Il caso delle funzioni reali, ovvero quelle in cui sia il dominio che il codominio sono sottoinsiemi dell'insieme dei numeri reali, riveste un'importanza fondamentale ed è il tema principale trattato in questo testo. Nel contesto di nostro interesse, la legge che definisce i valori della funzione $f(x)$ viene stabilita attraverso una serie di operazioni matematiche da compiere sulla variabile $x$, come addizioni, moltiplicazioni, estrazioni di radice, e così via. Per queste funzioni si introduce la seguente definizione.

#definizione(title: "Dominio naturale", label: <dominio_naturale>)[Data una funzione reale esprimibile attraverso operazioni matematiche applicabili alla variabile $x$, si definisce dominio naturale della funzione il massimo sottoinsieme di $RR$ in cui le operazioni assegnate rimangono significative. Qualora non venga specificato un codominio, per convenzione si assume che esso coincida con tutto $RR$.]

In base a questa definizione, è possibile definire una funzione reale semplicemente specificando le operazioni da applicare alla variabile $x$.

#esempio[Affermando "la funzione $f(x) = x^2$", si intende la funzione $f : RR -> RR$ tale che $x |-> x^2$.][Affermando "la funzione $f(x) = sqrt(x)$", si intende la funzione $f : RR^+ -> RR$ tale che $x |-> sqrt(x)$.][Affermando "la funzione $f(x) = 1/x$", si intende la funzione $f : RR without {0} -> RR$ tale che $x |-> frac(1, x, style: "skewed")$.]

Con queste premesse, ha senso formulare quesiti del tipo "calcolare il dominio della funzione...", dove per dominio si deve intendere il dominio naturale.

Abbiamo inoltre introdotto l'idea che ci occuperemo esclusivamente di funzioni in cui la legge che lega $x$ a $f(x)$ si basi su operazioni matematiche. Questo non implica però che tale legge debba necessariamente mantenere un'unica forma su tutto il dominio: possiamo considerare anche funzioni definite a tratti o in maniera composita, come mostrato nel seguente esempio:

$ f(x) = cases(
   x^2 & "se " x < -2, 
   2x + 1 & "se " -2 <= x < 5, 
   x + x^2 & "se " x >= 5.
) $

== Funzioni iniettive, suriettive, biiettive

Tra le varie tipologie di funzioni, assumono particolare rilievo quelle che soddisfano alle proprietà descritte nella seguente definizione.

#definizione(title: "", label: <tipi_funzione>)[Si definiscono:  
+ iniettive le funzioni per cui a elementi distinti del dominio corrispondono immagini distinte, ovvero tali che ogni punto del codominio è immagine di al più un punto del dominio;  
+ suriettive le funzioni per cui ogni punto del codominio è immagine di almeno un punto del dominio;  
+ biiettive o biunivoche le funzioni che sono sia iniettive sia suriettive, ossia tali che ogni punto del codominio corrisponda esattamente a un solo punto del dominio.

Più formalmente, una funzione f: A -> B:  
1. è iniettiva se  
   $ x_1, x_2 in A, quad x_1 != x_2 => f(x_1) != f(x_2) $  
2. è suriettiva se  
   $ forall y in B, quad exists x in A : f(x) = y $  
3. è biiettiva se  
   $ forall y in B, quad exists! x in A : f(x) = y $]  

Sul piano cartesiano, analizzando il grafico di una funzione reale, possiamo osservare:  
+ una funzione è iniettiva se qualsiasi retta orizzontale (parallela all'asse x) interseca il grafico della funzione al massimo una volta;  
+ una funzione è suriettiva se qualsiasi retta orizzontale interseca il grafico della funzione almeno una volta;  
+ una funzione è biunivoca se qualsiasi retta orizzontale interseca il grafico della funzione esattamente una volta.

#funzione_iniettiva

Nel grafico della @funzione_iniettiva, che illustra un esempio di funzione iniettiva, la retta $r_1$ non interseca mai il grafico della funzione, mentre la retta $r_2$ lo interseca una sola volta. In generale, nessuna retta orizzontale può intersecare il grafico più di una volta.

#funzione_suriettiva

Nel grafico della @funzione_suriettiva, che presenta un esempio di funzione suriettiva, la retta $r_1$ interseca il grafico in tre punti, mentre la retta $r_2$ lo interseca una sola volta. In ogni caso, ciascuna retta orizzontale deve necessariamente intersecare il grafico almeno una volta.

#funzione_biiettiva

Infine, nel grafico della @funzione_biiettiva, che rappresenta un esempio di funzione biiettiva, sia la retta $r_1$ sia la retta $r_2$ intersecano il grafico esattamente una sola volta, e lo stesso accadrebbe per qualsiasi altra retta orizzontale.

== Restrizioni di una funzione

#set text(lang: "it", size: 11pt)

Come già osservato, per definire una funzione è necessario specificare il dominio, il codominio e la legge che permette di associare gli elementi del dominio a quelli del codominio. Tuttavia, nel caso particolare delle funzioni reali, in assenza di indicazioni specifiche, si assume quanto stabilito nella @dominio_naturale.

Può capitare spesso, partendo da una funzione data, di voler ottenere altre funzioni attraverso modifiche mirate a uno dei tre elementi che la definiscono, con particolare attenzione al dominio e/o al codominio. In questi casi si parla di restrizioni di una funzione.  

#definizione(title: "Restrizione sul dominio", label: <restrizione_dominio>)[Data una funzione $f: A -> B, x |-> f(x)$, se $C subset A$ è un sottoinsieme del dominio $A$, si può definire una nuova funzione $g: C -> B$ assegnando $g(x) = f(x)$ per ogni $x$ in $C$. In altre parole, in questa nuova funzione il codominio e la legge restano invariati rispetto a quelli della funzione originaria $f$, ma il dominio viene "ristretto". Questa operazione viene chiamata restrizione sul dominio, e si indica con la notazione
$ g = f_(|C), $  

che si legge: "la funzione $g$ è la funzione $f$ ristretta a $C$".]

#esempio[Consideriamo la funzione $f: RR -> RR$, definita come $x |-> x^2$. La funzione $g: RR^+ -> RR$, definita come $x |-> x^2$, rappresenta una restrizione della funzione $f$ ai numeri reali non negativi $(RR^+ = [0, +oo))$. Il grafico cartesiano di $g$ si ottiene selezionando una parte del grafico di $f$, come mostrato in @grafico_restrizione_dominio1 e @grafico_restrizione_dominio2.] 

#grafici_restrizione_dominio

È importante sottolineare che, per la funzione f, utilizzando le convenzioni adottate per le funzioni reali, è sufficiente scrivere semplicemente $f(x) = x^2$. Tuttavia, nel caso di $g$, è necessario specificare esplicitamente il dominio della funzione, laddove il codominio si assuma pari a $RR$.

Consideriamo ora una funzione $f: A -> B$ che non sia suriettiva. Se dal codominio si eliminano alcuni (o tutti) i punti che non corrispondono all'immagine di nessun elemento del dominio, le caratteristiche essenziali della funzione rimangono invariate. Tuttavia, non è possibile eliminare alcun punto che sia immagine di un elemento del dominio senza alterare la definizione della funzione. È prassi comune, in questi casi, rimuovere dal codominio tutti i punti che non appartengono all'insieme immagine. A tale proposito, si introduce la seguente definizione.  

Una funzione ottenuta restringendo il codominio all'insieme immagine diventa automaticamente suriettiva. Nonostante quest'operazione tenda a "semplificare" la funzione, può essere talvolta poco conveniente; pertanto, quando si sceglie di utilizzarla, è indispensabile indicarlo esplicitamente.  

#definizione(title: "Restrizione all'immagine", label: <restrizione_immagine>)[  
Data una funzione $f: A -> B, x |-> f(x)$, la funzione definita da $A in f(A)$, secondo la stessa legge che caratterizza $f$, si chiama restrizione della funzione f all'immagine. Questa operazione prende lo stesso simbolo della funzione originaria, ovvero si indica ancora con $f$.]

== Operazioni tra funzioni

Nell'insieme delle funzioni reali è possibile eseguire operazioni quali addizione, sottrazione, moltiplicazione e divisione. Queste operazioni generano a loro volta funzioni reali. Supponiamo che f e g siano due funzioni reali, e che A rappresenti l'intersezione dei rispettivi domini. Si possono definire le seguenti operazioni:  
+ somma: la somma di $f$ e $g$ è una nuova funzione reale $f + g$, definita in $A$ come: $ (f + g)(x) = f(x) + g(x) $ 
+ differenza: la differenza tra $f$ e $g$ è la funzione reale $f - g$, definita in $A$ come: $ (f - g)(x) = f(x) - g(x) $  
+ prodotto: il prodotto di $f$ e $g$ è la funzione reale $f g$, definita in $A$ come: $ (f g)(x) = f(x) dot g(x) $ 
+ quoziente: consideriamo l'insieme $A_1$, che include tutti i valori $x in A$ per cui $g(x) != 0$, il quoziente di $f$ e $g$ è una funzione reale definita su $A_1$ come: $ (f / g)(x) = f(x) / g(x) $ 

In definitiva, possiamo affermare che le operazioni algebriche tra funzioni si fondano sulle corrispondenti operazioni tra le immagini delle funzioni. Poiché tali immagini sono numeri reali, tutte le proprietà aritmetiche standard rimangono valide.  

Un'operazione particolarmente significativa tra funzioni è la composizione di funzioni. La definizione formale è la seguente:  

#definizione(title: "Funzione composta", label: <funzione_composta>)[Siano $g : A -> B e f : C -> D$ due funzioni reali. Se $g(A) subset.eq C$, si definisce la funzione composta di $g$ ed $f$, nell'ordine, come la funzione $f compose g$ (si legge "$f$ composto $g$") che va da $A$ a $D$, con:  

$ (f compose g)(x) = f(g(x)) $]

#composizione_funzione

Graficamente, questa relazione può essere rappresentata con un diagramma a frecce, come illustrato in @composizione_funzione. Un'altra rappresentazione suggestiva è quella basata sulle "scatole nere", dove è possibile immaginare due scatole collegate in serie. L'output della prima scatola non viene utilizzato immediatamente; invece, diventa l'input per la seconda scatola, che fornisce il risultato finale.  

Ad esempio, se le funzioni sono definite da $g(x) = x^2 + 20$ e $f(x) = sqrt(x)$, fornendo in input a $g$ il valore 4, otteniamo un output pari a $36$. Questo valore diventa l'input per $f$, che a sua volta restituisce il risultato finale, ossia 6.

#input_output3

Possiamo considerare, e sarebbe decisamente utile, di semplificare la presenza di due scatole nere che operano in sequenza immaginando, invece, di combinarne i meccanismi in un'unica scatola. Questa scatola unica, opportunamente progettata, ricevendo in ingresso il numero 4, restituirebbe direttamente il numero 6 in uscita. Tale scatola rappresenta esattamente la funzione composta, che in questo specifico caso risulta essere:  
$ f compose g : RR -> RR, quad x |-> sqrt(x^2 + 20) $  
È cruciale sottolineare che l'ordine di applicazione delle funzioni è fondamentale: invertire le funzioni (applicando prima $f$ e poi $g$) altererebbe completamente il risultato. Ad esempio, inserendo il numero 4 come ingresso, si otterrebbe il valore 24, non 6. 

#input_output4

Nel caso specifico illustrato, la funzione composta diventa:  
$ f compose g : RR^+ -> RR, quad x |-> sqrt(x^2 + 20) = x + sqrt(20) $  

Tuttavia, come indicato anche nella formula @errore_radicali, occorre considerare che l'equazione $sqrt(x^2) = x$ è valida soltanto se $x >= 0$. Ciò dimostra che la composizione di funzioni non gode della proprietà commutativa.  

Un ulteriore aspetto da tenere presente è la compatibilità tra le due funzioni in gioco. L'output della prima scatola (ossia della prima funzione) deve poter essere accettato come input dalla seconda funzione. Ad esempio, se la prima funzione fosse $g(x) = x - 5$ e la seconda $f(x) = sqrt(x)$, un dato in ingresso pari a 4 risulterebbe compatibile con $g$ singolarmente; tuttavia, l'output di $g$ (nel nostro caso -1) non sarebbe compatibile come input per la funzione $f$, poiché quest'ultima può elaborare solo numeri non negativi.  

Va notato infine che nella notazione $f compose g$ è $g$ la funzione applicata per prima, mentre $f$ è quella applicata successivamente. Questa convenzione è coerente con le notazioni delle funzioni: quando indichiamo genericamente $h(x)$, assumiamo che $x$ sia il numero da inserire come input nella funzione per ottenere il corrispondente output. Pertanto, dal punto di vista pratico, nel costruire una funzione composta è utile indicare con $x$ la variabile della funzione iniziale (quella "interna"), con $t$ il suo output, e utilizzare nuovamente $t$ come input della funzione esterna.

//
#set text(lang: "it", size: 11pt)

#esempio[Consideriamo le funzioni: $ f(x) = x / (x + 2), quad g(x) = (x^2 + 1) / (x - 1) $

Per determinare esplicitamente la funzione composta $f compose g$, poniamo:  
$ t = g(x) = (x^2 + 1) / (x - 1), quad f(t) = t / (t + 2) $  

A questo punto, nella definizione di $f$, sostituiamo $t$ con il valore di $g(x)$:  
$ (f compose g)(x) = f(g(x)) = ((x^2 + 1) / (x - 1)) / ((x^2 + 1) / (x - 1) + 2) $  

Semplificando l'espressione:  
$ (f compose g)(x) = (x^2 + 1) / (x^2 + 2x - 1) $

Il dominio della funzione così ottenuta esclude:  
- il punto $x = 1$, perché non appartiene al dominio di $g(x)$, la prima funzione componente;  
- i valori di $x$ per cui $g(x) = -2$, ovvero le soluzioni dell'equazione $(x^2 + 1)/(x - 1) = -2$. Risolvendo quest'equazione, si trova che i valori di $x$ da escludere sono $x = -1 plus.minus sqrt(2)$.  

Si noti che, anche se il punto $x = 1$ potrebbe far parte del dominio naturale della funzione risultante, esso deve essere escluso perché la funzione è pensata come composizione delle due funzioni originali.  

Se invece vogliamo determinare esplicitamente la funzione composta $g compose f$, procediamo come segue. Poniamo:  
$ t = f(x) = x / (x + 2), quad g(t) = (t^2 + 1)/(t - 1) $.

Sostituendo nella definizione di $g$, otteniamo:  
$ (g compose f)(x) = g(f(x)) = ((x / (x + 2))^2 + 1) / (x / (x + 2) - 1). $

Semplificando otteniamo:  
$ (g compose f)(x) = -(x^2 + 2x + 2) / (x + 2). $

Per quanto riguarda il dominio della funzione composta, dobbiamo escludere:  
- il punto $x = -2$, poiché non appartiene al dominio di $f(x)$;  
- non è necessario escludere altri valori, in quanto si verifica facilmente che $f(x)$ non assume mai il valore proibito $t = 1$, che è al di fuori del dominio di $g(t)$.]

//
#set text(lang: "it", size: 11pt)

== Funzione inversa
Una funzione $f: A -> B$ è detta biunivoca quando non solo ad ogni elemento $x in A$ corrisponde un unico elemento $y in B$, come avviene per tutte le funzioni, ma anche il contrario è vero: ogni $y in B$ deriva da un unico $x in A$. Graficamente, in un diagramma a frecce, tale situazione è rappresentata in maniera simile alla @funzione_biunivoca.

#funzione_biunivoca

Se immaginiamo di invertire il verso di tutte le frecce della @funzione_biunivoca, otteniamo la configurazione della @funzione_inversa. Anche questa può essere interpretata come una funzione, che questa volta ha dominio in B e codominio in A. Questa nuova funzione "restituisce" ogni freccia al proprio punto di origine e si rivela anch'essa biunivoca. È detta funzione inversa di f. Grazie a questa proprietà, una funzione biunivoca è detta anche invertibile.

#funzione_inversa

Segue quindi la definizione formale.
#v(2em)
#definizione(title: "Funzione inversa")[ Se $f: A -> B$ è una funzione biunivoca, allora possiamo definire una funzione $g: B -> A$ che associa ad ogni $y in B$ quell'unico $x in A$ tale che $y = f(x)$. Tale funzione $g$ prende il nome di funzione inversa di $f$ e si denota con $ f^(-1) $]

È importante sottolineare che la notazione standard $f^(-1)$, pur essendo universalmente accettata e adottata dalle norme ISO, può risultare ambigua, in quanto suggerisce un'associazione con il concetto di reciproco (operazione completamente distinta dalla funzione inversa). Per evitare confusioni, alcuni testi preferiscono alternative come $f^(<-)$, ma qui ci atteniamo alla notazione tradizionale $f^(-1)$.

In base alla definizione di funzione inversa, valgono le seguenti relazioni identitarie:
$ f compose f^(-1)(y) = f(f^(-1)(y)) = y quad forall y in B $
$ f^(-1) compose f(x) = f^(-1)(f(x)) = x quad forall x in A $

Se consideriamo il grafico cartesiano di una funzione reale invertibile, è interessante osservare che esso coincide con il grafico della sua inversa, se consideriamo il dominio sull'asse $y$ e il codominio sull'asse $x$. Tuttavia, per consuetudine e per evitare confusione, si rappresenta sempre il dominio sull'asse $x$. Dunque, per ottenere graficamente la rappresentazione dell'inversa di una funzione $f$, è sufficiente riflettere il grafico di $f$ rispetto alla bisettrice del primo e del terzo quadrante. Questo equivale a scambiare l'asse delle ascisse ($x$) con quello delle ordinate ($y$).

In effetti, nei calcoli basterebbe usare la variabile $x$ anche per la funzione inversa, anziché introdurne una aggiuntiva, seguendo la consuetudine di indicare sempre la variabile indipendente come $x$. In tal caso, le identità precedenti diventano:

$ f compose f^(-1)(x) = f(f^(-1)(x)) = x quad forall x in B $
$ f^(-1) compose f(x) = f^(-1)(f(x)) = x quad forall x in A $

Dalla @esempio_grafico_funzione_inversa, possiamo notare che, senza opportune indicazioni didascaliche, non sarebbe possibile distinguere quale sia il grafico della funzione f e quale quello della sua inversa f^(-1), poiché l'una è simmetrica rispetto all'altra. Questo si riflette anche nella seguente relazione:

$ (f^(-1))^(-1) = f $

#esempio_grafico_funzione_inversa

Infine, ci sono casi in cui è necessario costruire funzioni inverse anche per funzioni che non sono biunivoche. In tali situazioni si ricorre a restrizioni specifiche sul dominio e sul codominio.

// Arrivato qui 
#set text(lang: "it", size: 11pt)

Esempio 4.6. La funzione $f: RR -> RR, quad x |-> x^2$ (o, in forma compatta, la funzione $f(x) = x^2$) non è né iniettiva né suriettiva. Tuttavia, se si considera la funzione $g: RR^+ -> RR^+, quad x |-> x^2$, ottenuta restringendo sia il dominio che il codominio, si ottiene una funzione biunivoca e quindi invertibile. L'inversa di $g$ è proprio quella che viene chiamata funzione radice quadrata (e non quella di $f$, che non è invertibile!). In particolare:

$ g^(-1)(x) = sqrt(x). $
Di conseguenza, in accordo con quanto già visto nella formula (2.29), dalla relazione
$ g(g^(-1)(x)) = x $
si deduce che:

$ sqrt(x)^2 = x, quad "solo se " x >= 0. $
D'altra parte, vale anche la relazione:
$ sqrt(x^2) != x, $
poiché $sqrt(x^2)$ corrisponde a $g^(-1)(f(x))$. In realtà, come già spiegato nella formula (2.28),
$ sqrt(x^2) = |x|, quad forall x in RR. $

Dal punto di vista pratico, per trovare l'inversa di una funzione reale, occorre prima verificare se essa è biunivoca. Dopo tale verifica, si può scrivere l'equazione $y = f(x)$, e successivamente isolare la variabile $x$ in funzione di $y$. La nuova funzione così ottenuta sarà l'inversa cercata; infine, seguendo la convenzione comune, si può sostituire la variabile $y$ con $x$ per rispettare le consuete notazioni.

#esempio[Consideriamo la funzione: $ f(x) = (x - 1) / (x + 1) $
il cui dominio naturale è $RR without {-1}$. Si dimostra, attraverso i calcoli riportati di seguito, che restringendo il codominio a $RR without {1}$, si ottiene una funzione biunivoca e dunque invertibile, che indichiamo con $g$. In tal caso abbiamo:
$ y = (x - 1) / (x + 1) => x y + y = x - 1 => x - x y = y + 1 => x = (y + 1) / (1 - y). $

Da questo si ricava l'inversa della funzione:

$ g^(-1)(x) = (x + 1) / (1 - x). $
È semplice verificare che, per $x != 1$, valga $g(g^(-1)(x)) = x$ e che, per $x != -1$, valga $g^(-1)(g(x)) = x$:

$ g(g^(-1)(x)) = ((x + 1) / (1 - x) - 1) / ((x + 1) / (1 - x) + 1) = ((x + 1 - (1 - x)) / (1 - x)) / ((x + 1 + (1 - x)) / (1 - x)) = x / 1 = x, $

e analogamente:

$ g^(-1)(g(x)) = ((x - 1) / (x + 1) + 1) / (1 - (x - 1) / (x + 1)) = (((x-1) + (x+1)) / (x+1)) / (((x+1) - (x-1)) / (x+1)) = (2x) / 2 = x. $

Tuttavia, è importante notare che i calcoli possono diventare più complessi in situazioni diverse e che le restrizioni da imporre per rendere le funzioni biunivoche potrebbero non essere immediatamente evidenti.]

== Funzioni fondamentali

Esistono determinate funzioni "fondamentali" che rivestono un ruolo essenziale nelle applicazioni matematiche e rappresentano i fondamenti su cui poggia un'ampia gamma di funzioni di uso comune. La loro importanza emerge chiaramente se si considera che ciascuna di esse ha un tasto specifico nelle calcolatrici scientifiche più diffuse: da queste funzioni elementari, infatti, si possono sviluppare espressioni più complesse attraverso operazioni come la composizione di funzioni o l'uso delle operazioni aritmetiche di somma, sottrazione, moltiplicazione e divisione. Nelle sezioni seguenti analizzeremo alcune tra le funzioni principali. Molti dei risultati che presenteremo dovranno essere accettati "senza approfondimenti preliminari"; tuttavia, nei corsi universitari successivi ne verrà fornita una rigorosa giustificazione teorica.

=== La funzione polinomiale di primo grado

Il primo tipo di funzione che consideriamo è la funzione polinomiale di primo grado. Essa è definita come:
$ f(x) = m x + q, quad "oppure" quad y = m x + q $
Il grafico cartesiano di questa funzione è una retta (non parallela all'asse $y$). Il coefficiente $m$, moltiplicatore della variabile $x$, prende il nome di "coefficiente angolare" o "pendenza", mentre $q$ rappresenta l'"ordinata all'origine". Il significato geometrico di $q$ è evidente: quando $x = 0$, il valore corrispondente di $y$ è proprio $q$. 

Per comprendere meglio il significato del coefficiente angolare $m$, analizziamo due esempi: la funzione $y = 2x + 1$ e la funzione $y = -2x + 1$. 

#coefficiente_angolare

Consideriamo due punti qualsiasi $A$ e $B$ appartenenti alla retta e definiamo $Delta x$ e $Delta y$ come, rispettivamente, lo spostamento orizzontale (positivo se il movimento è verso destra, negativo se verso sinistra) e quello verticale (positivo se verso l'alto, negativo se verso il basso) nel passaggio dal punto $A$ al punto $B$. Possiamo scrivere:
$ Delta y = y_B - y_A, quad Delta x = x_B - x_A $

Di conseguenza:  
$ Delta y = (m x_B + q) - (m x_A + q) = m(x_B - x_A) = m dot Delta x. $
Da qui deriva la relazione:  
$ m = (Delta y) / (Delta x) $

Se scegliamo i punti $A$ e $B$ in modo che $Delta x = 1$, allora $m = Delta y$; mentre, selezionando $Delta x = 100$, si ottiene che $Delta y = 100 m$. In tal caso, il valore di $100 m$ viene definito "pendenza percentuale". Per fare un esempio concreto, le due rette precedenti hanno rispettivamente una pendenza percentuale pari al 200% e al -200%.

È evidente che una pendenza positiva descrive una "retta in salita", mentre una pendenza negativa indica una "retta in discesa" (considerando il movimento da sinistra verso destra).

Come diretto corollario, due rette della forma $y = m_1 x + q_1$ e $y = m_2 x + q_2$ risultano parallele se e solo se i loro coefficienti angolari sono uguali ($m_1 = m_2$).

Un'ulteriore osservazione riguarda l'inclinazione della retta: più grande è il valore assoluto del coefficiente angolare ($|m|$), più la retta si avvicina alla verticalità. Se una retta fosse propriamente verticale, il valore di $m$ diverrebbe infinito (positivamente o negativamente). Tuttavia, è importante sottolineare che le rette verticali non possono rappresentare funzioni in quanto ad una singola ascissa assocerebbero più valori ordinati. In ambito geometrico, si può comunque affermare che tali rette hanno un "coefficiente angolare infinito".

I casi in cui $m = +-1$ e $q = 0$ sono particolarmente rilevanti. 
+ $m = 1$: la funzione assume la forma $f(x) = x$, nota anche come funzione identica in $RR$. Essa associa ad ogni $x in RR$ lo stesso valore $x$ ed è indicata con $I_(RR)$ o $1_(RR)$. Il grafico di questa funzione, rappresentato in un sistema monometrico, corrisponde alla bisettrice del primo e del terzo quadrante, che talvolta viene chiamata anche diagonale di $RR^2 = RR times RR$.
+ $m = -1$: la funzione diventa $f(x) = -x$, chiamata anche funzione opposta in $RR$. Qui, ogni $x in RR$ viene associato al proprio opposto. Il grafico, sempre in un sistema monometrico, è la bisettrice del secondo e quarto quadrante.

Da notare che se $m = 0$, la funzione non è più di primo grado, bensì di grado zero: parliamo delle cosiddette funzioni costanti, il cui grafico risulta una retta parallela all'asse delle ascisse con pendenza nulla. Questo rappresenta un caso particolare di retta; per tale motivo, a volte queste funzioni vengono comunque incluse nella categoria delle "funzioni polinomiali di primo grado".

#funzione_valore_m

Il caso in cui $q = 0$, cioè la retta passante per l'origine, riveste grande importanza applicativa. In questa condizione vale:
$ y/x = m = "costante, se " x != 0 $

Ciò implica che $y$ e $x$ siano direttamente proporzionali; se $x$ aumenta o diminuisce, lo stesso accade a $y$, e nella stessa misura.

Le funzioni del tipo $f(x) = m x + q$ con $q = 0$ sono dette funzioni lineari, mentre quelle con $q != 0$ vengono definite funzioni affini. Approfondiremo ulteriormente queste tematiche e altre proprietà delle funzioni polinomiali di primo grado nell'ambito dello studio della retta in geometria analitica.

=== La funzione polinomiale di secondo grado  
La seconda funzione che vogliamo analizzare è quella definita come:  
$ f(x) = a x^2 + b x + c $ ,oppure, più semplicemente: $ y = a x^2 + b x + c, quad a != 0. $  

#funzione_polinomiale_II_grado

Questa funzione è denominata polinomiale di secondo grado e il suo grafico è una parabola con asse di simmetria verticale (@funzione_polinomiale_II_grado). Le sue principali caratteristiche si possono riassumere nel modo seguente:  

+ La forma della parabola dipende dal valore di a:
   - Se $a > 0$, la concavità della parabola è rivolta verso l'alto (la parabola "sorride").
   - Se $a < 0$, la concavità è rivolta verso il basso (la parabola "piange").  
+ Il vertice della parabola si trova all'ascissa:  
   $ x_V = -b / (2a) $  
   L'ordinata corrispondente si calcola facilmente sostituendo l'ascissa del vertice nell'espressione della funzione, senza la necessità di memorizzare ulteriori formule.  
+ La parabola è simmetrica rispetto al suo asse, che corrisponde alla retta verticale passante per il vertice.  

Questo argomento verrà trattato più approfonditamente nel capitolo dedicato alla geometria analitica.  

=== La funzione valore assoluto  
Abbiamo già introdotto il concetto di valore assoluto di un numero reale nella definizione 2.18. Passiamo ora a esaminare la funzione reale che si basa su questo concetto:  

$ f(x) = |x| = cases(
   x & "se " x >= 0, 
   -x & "se " x < 0.
) $  

Il grafico cartesiano della funzione valore assoluto può essere facilmente costruito partendo dalla definizione sopra riportata. Una rappresentazione visiva del grafico è mostrata nella @funzione_valore_assoluto.

#funzione_valore_assoluto

=== Le funzioni potenza con esponente intero
La definizione di potenza con esponente intero permette di introdurre il concetto di funzioni potenza ad esponente intero. Si tratta di funzioni reali che seguono la legge:
$ x |-> x^m, quad m in ZZ. $

Il dominio naturale di queste funzioni dipende dal valore dell'esponente $m$. Se $m > 0$, il dominio naturale è l'insieme dei numeri reali $RR$; al contrario, se $m <= 0$, il dominio naturale è $RR without {0}$, ovvero tutti i numeri reali eccetto lo zero. Quando necessario, ci riferiremo a queste funzioni con il simbolo $p_m$, dove $p_m (x) = x^m$.

Un aspetto interessante di queste funzioni è il comportamento rispetto alla parità dell'esponente:
- se $m$ è pari, allora risulta $x^m = (-x)^m$, quindi $p_m (x) = p_m (-x)$; le funzioni con questa proprietà sono dette funzioni pari
- se $m$ è dispari, allora $x^m = -(-x)^m$, il che implica $p_m (x) = -p_m (-x)$; le funzioni che godono di questa proprietà sono dette funzioni dispari

Questa categorizzazione ha implicazioni sul grafico delle funzioni: 
- le funzioni pari hanno un grafico simmetrico rispetto all'asse delle ordinate.
- le funzioni dispari mostrano un grafico simmetrico rispetto all'origine del piano cartesiano

Affinché queste simmetrie abbiano senso, è necessario che il dominio della funzione sia simmetrico rispetto all'origine, caratteristica che si verifica per le funzioni potenza qui descritte. Nelle @funzione_pari e @funzione_dispari vengono mostrati esempi di grafici di una funzione pari e di una funzione dispari. Un altro esempio di funzione pari già trattata è la funzione valore assoluto.

#funzioni_pari_dispari

Per quanto riguarda la rappresentazione grafica delle funzioni potenza, è sufficiente disegnare la parte relativa ai valori $x >= 0$ (o $x > 0$ quando l'esponente è minore o uguale a zero).

==== Potenza con esponente 0

Consideriamo la funzione $p_0 (x)$ definita come segue:  
$ p_0 (x) = x^0 = 1, quad "per " x != 0 $  

Il grafico di questa funzione è una linea orizzontale in corrispondenza del valore 1, a eccezione dell'origine, dove la funzione non è definita. Tuttavia, convenzionalmente si estende il dominio della funzione includendo anche l'origine, assegnando il valore $p_0 (0) = 1$. Questo viene chiamato prolungamento della funzione all'origine.

È importante sottolineare che questa convenzione non implica definire il valore indeterminato $0^0$ (che non ha significato matematico), ma semplicemente stabilire che $p_0$ ha dominio sull'intero insieme dei numeri reali $RR$, con il valore $p_0 (0)$ uguale a 1.

#funzione_potenza_zero