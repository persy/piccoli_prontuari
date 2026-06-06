#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *
#import "func/08_geometria-analitica.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

#intro[// TODO
]

In precedenza, ci siamo avvalsi principalmente delle coordinate cartesiane per rappresentare i grafici di funzioni reali. In questo capitolo, approfondiremo l'argomento in modo più sistematico.

== Concetti di base

Iniziamo richiamando il concetto di ascisse sulla retta, già discusso nella @ascisse_retta. Sappiamo che è possibile stabilire una corrispondenza biunivoca tra i numeri reali e i punti di una retta, adottando un sistema di ascisse sulla stessa. Per questa ragione, la retta viene identificata con l'asse delle ascisse. Il processo si sviluppa come segue: su una retta $r$, si sceglie un punto $O$, chiamato origine, e un altro punto $U$. Assumendo la lunghezza del segmento $overline(O U)$ come unità di misura, al punto $U$ si associa il numero reale $1$. A ogni altro punto $P$ della semiretta $overline(O U)$ viene associato un numero reale positivo che corrisponde alla lunghezza del segmento $overline(O P)$. Analogamente, a ciascun punto $P$ dell'altra semiretta con origine $O$ si associa l'opposto del numero che rappresenta la lunghezza del segmento $overline(O P)$.

Così facendo, ad ogni numero reale corrisponde un unico punto sulla retta dotata di un sistema di ascisse, e viceversa. Questo consente di identificare i numeri reali con i punti della retta e, in molti contesti, si utilizza il termine "punti" come sinonimo di "numeri reali". L'insieme dei numeri reali viene spesso rappresentato come una retta orientata, denominata retta reale.

Passiamo ora all'analisi del piano. Consideriamo una coppia di rette distinte $r$ ed $s$, incidenti in un punto $O$, e definiamo su ciascuna retta un sistema di ascisse. È essenziale stabilire un ordine tra le due rette, poiché questa sequenza gioca un ruolo fondamentale nella successiva costruzione. Prendiamo un punto qualsiasi $P$ del piano. Da questo punto, tracciamo le parallele alle rette $r$ ed $s$. Così facendo, identifichiamo due punti: uno sulla retta $r$, chiamato $P_r$, e uno sulla retta $s$, chiamato $P_s$. Entrambi i punti avranno una propria ascissa.

Di conseguenza, al punto $P$ viene associata una coppia ordinata di numeri reali: l'ascissa di $P_r$ e quella di $P_s$. Il procedimento funziona anche al contrario: data una coppia di numeri reali, è possibile determinare un punto $P_r in r$ e un punto $P_s in s$ con le rispettive ascisse corrispondenti ai due numeri della coppia. Tracciando le parallele a $r$ ed $s...$ passanti per questi punti, si individua un unico punto $P$, associabile alla coppia data.

Attraverso questo metodo, si stabilisce una corrispondenza biunivoca tra i punti del piano e le coppie di numeri reali. Il primo elemento della coppia viene chiamato ascissa del punto $P$, mentre il secondo elemento è l'ordinata del punto $P$. Tale coppia è nota come le coordinate del punto $P$. Per convenzione, indicheremo l'ascissa con $x$ o $x_P$, e l'ordinata con $y$ o $y_P$, scrivendo quindi il punto come $P(x, y)$ oppure semplicemente come $P = (x, y)$. Il sistema formato dalle due rette perpendicolari, con origine comune in $O$, verrà indicato con la notazione $O x y$ e sarà denominato sistema di coordinate cartesiane.

Se le rette $r$ ed $s$ sono ortogonali, il sistema di coordinate è detto ortogonale, mentre se i segmenti unitari su queste rette sono congruenti (ovvero si sceglie la stessa unità di misura su entrambe), il sistema prende il nome di monometrico. Normalmente faremo uso esclusivo di sistemi ortogonali e, nella maggior parte dei casi, anche monometrici. Tuttavia, la scelta di questi ultimi non risulta sempre la più efficiente. Ad esempio, nel caso in cui si voglia rappresentare su un grafico l'andamento annuale dei profitti di un'azienda, è evidente che si dovranno impiegare unità di misura differenti.

#grafico_non_ortogonale

//
Tuttavia, anche in situazioni molto comuni in matematica, si utilizzano sistemi non monometrici. Spesso, purtroppo, ciò avviene senza una menzione esplicita. Un caso emblematico è rappresentato dalle funzioni trigonometriche con angoli misurati in gradi. Rimandando a un'analisi più approfondita in seguito, si può subito osservare che, in un grafico come quello riportato nella @grafico_non_monometrico1, le unità di misura sui due assi sono chiaramente differenti, e di molto. Questo è l'aspetto che tendiamo a visualizzare quando pensiamo alla funzione seno.

#grafico_non_monometrico1

Se invece la funzione seno venisse rappresentata in un sistema monometrico, apparirebbe come illustrato nella @grafico_non_monometrico2.

#grafico_non_monometrico2

La funzione seno assume il suo "aspetto tradizionale" anche in un sistema monometrico solo se gli angoli vengono misurati in radianti, come evidenziato nella @grafico_non_monometrico3, dove si ricorda che $pi approx 3.14$. È essenziale, quando si analizza un grafico cartesiano, verificare sempre le unità di misura associate ai due assi, così da interpretarlo correttamente. Altri esempi utili sono già stati riportati nella @funzioni (@grafico_cartesiano_circonferenza1, @grafico_cartesiano_circonferenza2, @grafico_cartesiano_bisettrice1 e @grafico_cartesiano_bisettrice2).

#grafico_non_monometrico3

Nonostante questo capitolo non includa un approfondimento sull'argomento, accenniamo brevemente al concetto di coordinate nello spazio. In tal caso, occorre introdurre una terna ordinata di rette non complanari, distinte a due a due e concorrenti in un punto $O$. Su ciascuna retta viene definito un sistema di ascisse con origine in $O$, solitamente indicato, nell'ordine, con $x$, $y$ e $z$. Dato un punto $P$ nello spazio, si consideri il piano passante per $P$ e parallelo al piano $y z$: questo interseca l'asse $x$ in un punto $P_r$; in modo analogo, i piani passanti per $P$ e paralleli agli assi $x z$ e $x y$ incontrano gli altri due assi nei punti $P_s$ e $P_t$. Le ascisse di questi tre punti possono essere associate a P e, viceversa, a ogni terna di numeri reali può essere associato un unico punto nello spazio. Questo processo stabilisce una corrispondenza biunivoca tra i punti dello spazio tridimensionale e le terne di numeri reali, analogamente a quanto avviene nel piano.

Questo passaggio tra coppie e terne di numeri reali risulta del tutto naturale e apre alla possibilità di ulteriori estensioni. Sebbene dal punto di vista geometrico non sia possibile concepire più di tre rette distinte, a due a due non complanari e concorrenti in un punto $O$, l'algebra consente di considerare quaterne o altre tuple di numeri reali per rappresentare spazi con un numero arbitrario di dimensioni. Tuttavia, queste tematiche rientrano nei programmi dei corsi di matematica più avanzati.

//
== Formule fondamentali  

=== Punto medio di un segmento e baricentro di un triangolo  

Consideriamo due punti $P = (x_1, y_1)$ e $Q = (x_2, y_2)$. Il punto medio $M$ del segmento $P Q$, che collega i due punti, ha coordinate determinate da:  
$ x_M = (x_1 + x_2) / 2, quad y_M = (y_1 + y_2) / 2. $ <punto_medio>  

Questa formula si estende naturalmente alla terza coordinata nel caso tridimensionale; in tale contesto, le coordinate del punto medio risultano essere la media aritmetica delle coordinate degli estremi.  

Passando ora a tre punti $A = (x_1, y_1)$, $B = (x_2, y_2)$ e $C = (x_3, y_3)$, le coordinate del baricentro geometrico#footnote[È fondamentale saper distinguere tra il baricentro geometrico e quello fisico di un triangolo. Nel caso in cui si considerino tre punti aventi massa uguale, i due baricentri coincidono. Tuttavia, questa equivalenza non è più valida quando le masse dei tre punti sono diverse. Ancora più sorprendente è il fatto che, se si analizza un profilo triangolare omogeneo (ovvero tre aste omogenee unite a formare un triangolo), il baricentro geometrico e quello fisico non coincidono, salvo nel caso in cui il triangolo sia equilatero.] $G$ del triangolo $A B C$ sono date dalla media aritmetica delle coordinate dei vertici:  
$ x_G = (x_1 + x_2 + x_3) / 3, quad y_G = (y_1 + y_2 + y_3) / 3. $ <baricentro_triangolo> 

Nel caso tridimensionale, ad esempio per un triangolo nello spazio, si applica una formula analoga per la terza coordinata.  

La dimostrazione delle formule per il punto medio e il baricentro, rispettivamente @punto_medio e @baricentro_triangolo, si basa sul teorema di Talete e costituisce un utile esercizio di geometria. // TODO  

#grafico_baricentro

=== Distanza tra due punti  

Siano dati due punti $A = (x_1, y_1)$ e $B = (x_2, y_2)$ collocati su un piano cartesiano ortogonale e monometrico (ossia con unità di misura equivalenti sugli assi), la distanza $d(A, B)$ tra questi due punti viene calcolata tramite la seguente formula:  
$ d(A, B) = |A B| = sqrt((x_1 - x_2)^2 + (y_1 - y_2)^2) $ <distanza_punti>  

Nel caso di uno spazio tridimensionale, occorre aggiungere sotto la radice quadrata il termine corrispondente alla differenza tra le componenti $z_1$ e $z_2$:  
$ d(A, B) = |A B| = sqrt((x_1 - x_2)^2 + (y_1 - y_2)^2 + (z_1 - z_2)^2) $  

È importante sottolineare che, mentre le formule per il punto medio e il baricentro (@punto_medio e @baricentro_triangolo) rimangono valide anche in sistemi di riferimento non ortogonali o non monometrici, la formula della distanza @distanza_punti è applicabile solo nei sistemi ortogonali monometrici.  

In particolare, la @distanza_punti si semplifica notevolmente per segmenti paralleli agli assi cartesiani:  
- se i punti hanno la stessa ordinata ($y_1 = y_2$):  
  $ d(A, B) = |x_1 - x_2| $  
- se i punti hanno la stessa ascissa ($x_1 = x_2$):  
  $ d(A, B) = |y_1 - y_2| $  

#esempio[Si dimostri che il triangolo con vertici $A(1, 1)$, $B(0, 3)$ e $C(3, 2)$ è isoscele e rettangolo con angolo retto in $A$.

Calcoliamo le lunghezze dei tre lati utilizzando la formula @distanza_punti della distanza.

$ |A B| &= sqrt((1 - 0)^2 + (1 - 3)^2) = sqrt(1^2 + (-2)^2) &=& sqrt(5) \ |A C| &= sqrt((1 - 3)^2 + (1 - 2)^2) = sqrt((-2)^2 + (-1)^2) &=& sqrt(5) \ |B C| &= sqrt((0 - 3)^2 + (3 - 2)^2) = sqrt((-3)^2 + 1^2) &=& sqrt(10) $  

Osserviamo quindi che $|A B| = |A C|$, da cui si deduce che il triangolo è isoscele. Passiamo ora a verificare che il triangolo sia anche rettangolo verificando la validità del teorema di Pitagora:  
$ |A B|^2 + |A C|^2 = |B C|^2 $  

Sostituendo i valori calcolati:  
$ 5 + 5 = 10 $  

La relazione è soddisfatta, quindi il triangolo è rettangolo con angolo retto in $A$, come visibile nella @grafico_triangolo_isoscele_rettangolo.

#grafico_triangolo_isoscele_rettangolo

]

//
== Luoghi geometrici e rappresentazione analitica

Per comprendere meglio il concetto di luogo geometrico, si adotta la seguente definizione:

#definizione(title: "Luogo geometrico", label: <luogo_geometrico>)[Un luogo geometrico è un sottoinsieme di punti del piano o dello spazio caratterizzato da una proprietà distintiva.]

La locuzione "luogo geometrico" è ormai di uso comune, sebbene non sia strettamente necessaria. Tuttavia, questa denominazione ha il pregio di comunicare chiaramente che l'oggetto in questione è un insieme di punti (all'interno del piano o dello spazio) e, allo stesso tempo, evidenzia che si tratta di proprietà "geometriche" legate a tale insieme.

Ecco alcuni esempi classici di luoghi geometrici:
- asse di un segmento: insieme dei punti del piano equidistanti dagli estremi del segmento.
- circonferenza: insieme dei punti del piano che hanno una distanza uguale e costante ($r$) da un punto fisso, detto centro.
- cerchio: insieme dei punti del piano che hanno una distanza minore o uguale a un valore dato ($r$) da un punto fisso, il centro.
- bisettrice di un angolo: insieme dei punti del piano equidistanti dai lati di un dato angolo.
- parabola: insieme dei punti del piano equidistanti da un punto fisso $F$ (il fuoco) e da una retta fissa $r$ (la direttrice) che non passa per $F$.
- ellisse: insieme dei punti del piano per i quali la somma delle distanze da due punti fissi, detti fuochi, rimane costante
- iperbole: insieme dei punti del piano per i quali è costante il valore assoluto della differenza delle distanze da due punti fissi, detti fuochi
- superficie sferica: insieme dei punti dello spazio che si trovano a una distanza specifica da un punto fisso, detto centro.

Nel caso in cui nel piano o nello spazio venga adottato un sistema di coordinate cartesiane, i punti possono essere identificati da coppie o terne di numeri reali. Si dice allora che un luogo geometrico è rappresentato analiticamente da un'equazione, una disequazione o da un sistema di equazioni e/o disequazioni se le coordinate dei suoi punti soddisfano tali relazioni e solo esse.

Nel corso di questo capitolo verranno analizzati alcuni tra i luoghi geometrici più rilevanti per le applicazioni. Di seguito si riportano alcuni esempi elementari nel piano:

- il semiasse positivo delle ascisse è descritto dal sistema:
  $ cases(y = 0, x > 0) $
  Questo perché i punti dell'asse delle ascisse hanno ordinata zero e, per trovarsi nel semiasse positivo, devono avere ascissa maggiore di zero.

- i punti del primo quadrante sono descritti dal sistema:
  $ cases(x >= 0, y >= 0) $

- la bisettrice del primo e terzo quadrante, in un sistema ortogonale monometrico, è rappresentata dall'equazione:
  $ x = y $
  Questa equazione si deduce facilmente considerando la proprietà della bisettrice di un angolo, ovvero l'equidistanza dai lati dell'angolo stesso.

Una volta determinati i sistemi di equazioni che descrivono un luogo geometrico, diventa semplice verificare se un punto fa parte del luogo stesso. Basterà controllare se le coordinate del punto soddisfano o meno le equazioni considerate. In generale, i luoghi che analizzeremo consisteranno in curve del piano (intese nel senso intuitivo del termine), rappresentate da un'unica equazione in due incognite, scritta genericamente come:  
$ f(x, y) = 0 $  

In tal caso, quando un punto appartiene al luogo, si dice che la curva passa per tale punto. Alcuni esempi significativi includono rette, parabole, circonferenze e, in generale, le coniche. Inoltre, sarà possibile (e spesso applicabile in diversi contesti) individuare i punti comuni appartenenti simultaneamente a due o più luoghi. A tal proposito, analizziamo alcuni esempi pratici.

#esempio[Considerato il luogo definito dalla equazione $x^2 + y^2 - 1 = 0$:  
- il punto $(3/5, 4/5)$ appartiene al luogo;
- il punto $(1, 1)$, invece, non ne fa parte.
][
Dati i luoghi descritti dalle seguenti equazioni:  
$ x^2 + y^2 - 1 = 0 $  
$ x^2 + y = 0 $  

per calcolare i punti comuni, bisogna risolvere il sistema:  
$ cases(x^2 + y^2 - 1 = 0, x^2 + y = 0) $  

La soluzione è rappresentata dai punti:  
$ P_1 = (sqrt((sqrt(5) - 1)/2), (1 - sqrt(5))/2), quad P_2 = (-sqrt((sqrt(5) - 1)/2), (1 - sqrt(5))/2) $  

La rappresentazione grafica di questi luoghi, delle curve individuate e dei punti di intersezione ottenuti è proposta nella @grafico_cerchio_parabola.

#grafico_cerchio_parabola


]

//
== Cambiamenti di coordinate

In questo capitolo ci concentreremo sui sistemi cartesiani ortogonali monometrici, considerando esclusivamente traslazioni, rotazioni e rototraslazioni, senza alterare l'unità di misura dei rispettivi assi. Prendiamo in esame due sistemi di coordinate cartesiane ortogonali monometriche nel piano, $O x y$ e $O' x' y'$. Chiameremo il primo come "vecchio" sistema di coordinate e il secondo come "nuovo". Indicheremo le coordinate dell'origine del nuovo sistema $O'$ rispetto al vecchio con $O'(a, b)$, mentre le coordinate dell'origine del vecchio sistema rispetto al nuovo con $O(a', b')$, anche se queste ultime non verranno utilizzate nelle formule che seguono.  

Se consideriamo un punto $P$ nel piano, possiamo rappresentarlo con le coordinate $(x, y)$ nel sistema $O x y$ e con $(x', y')$ nel sistema $O' x' y'$. Nel caso sia coinvolta una rotazione degli assi, utilizzeremo $alpha$ per identificare l'angolo formato dai due semiassi positivi $x$ e $x'$. Tale angolo misura la rotazione del nuovo sistema rispetto a quello vecchio e, per convenzione, possiamo considerare che $0 <= alpha < 2 pi$ oppure $-pi <= alpha < pi$ senza che ciò influisca sui calcoli.

=== Traslazione degli assi  

Le formule che descrivono la traslazione degli assi sono le seguenti:  
$ cases(x = x' + a, y = y' + b) $

Queste esprimono le vecchie coordinate in funzione delle nuove. Le formule inverse invece sono:  
$ cases(x' = x - a, y' = y - b) $

Queste permettono di calcolare le nuove coordinate in funzione di quelle vecchie. Non dimostreremo formalmente tali espressioni, poiché il procedimento per derivarle è piuttosto semplice e può essere agevolmente ricavato facendo riferimento alla @grafico_traslato1.  

// #figure(
//   cetz.canvas({
//     // Mostrare la traslazione dell'origine da O a O'(a,b) e un punto P con le doppie coordinate
//   }),
//   caption: [Traslazione degli assi cartesiani]
// ) <fig_traslazione_assi_8_7>
#grafico_traslato1

Con le formule di traslazione diretta è possibile ottenere le vecchie coordinate di un punto $P$ partendo da quelle nuove. Risultano particolarmente utili per trasformare l'equazione di una curva espressa nelle vecchie coordinate in quella corrispondente nel nuovo sistema. Viceversa, con le formule inverse possiamo dedurre le nuove coordinate del punto $P$ conoscendo le vecchie, oppure convertire l'equazione di una curva dal nuovo sistema a quello originale.

#esempio[Data la curva con equazione cartesiana:  
$ x^2 - 2y^2 - 2x + 4y - 3 = 0 $  

cercare l'equazione della stessa curva in un nuovo sistema di coordinate centrato in $O'(1, 1)$.  
Utilizzando le formule di traslazione diretta, otteniamo:  
$ cases(x = x' + 1, y = y' + 1) $  

Sostituendo queste espressioni nell'equazione della curva, si ha:  
$ (x' + 1)^2 - 2(y' + 1)^2 - 2(x' + 1) + 4(y' + 1) - 3 = 0 $  

Risolvendo si ricava:  
$ (x')^2 - 2(y')^2 - 2 = 0 $  

La @grafico_traslato2 illustra quindi la curva insieme ai due sistemi di coordinate. Si osserva che la curva è un'iperbole e la traslazione degli assi ne trasforma l'equazione nella sua forma canonica.

#grafico_traslato2

]

=== Rotazione degli assi  

Le formule per la rotazione degli assi consentono di effettuare il cambio di coordinate tra un sistema originario e uno ruotato di un angolo $alpha$. Queste si presentano come segue:

+ per ottenere le vecchie coordinate $(x, y)$ in funzione delle nuove $(x', y')$:  
  $ cases(x = x' cos alpha - y' sin alpha, y = x' sin alpha + y' cos alpha) $ <rotazione_assi1> 

+ per ottenere le nuove coordinate $(x', y')$ in funzione delle vecchie $(x, y)$:  
  $ cases(x' = x cos alpha + y sin alpha, y' = -x sin alpha + y cos alpha) $ <rotazione_assi2> 

È importante notare che il passaggio da una coppia di formule all'altra può essere effettuato non solo tramite una risoluzione diretta, ma anche considerando una semplice simmetria nel sostituire $(x', y')$ a $(x, y)$ e invertendo il segno dell'angolo $alpha$ con $-alpha$.

Queste formule si ottengono esaminando la @grafico_rotato3 e applicando i teoremi relativi ai triangoli rettangoli, i quali verranno trattati dettagliatamente nella @goniometria_trigonometria sulla trigonometria.

#grafico_rotato3

Analogamente al caso della traslazione, le formule @rotazione_assi1 sono utili per ottenere le vecchie coordinate di un punto $P$, note le nuove o per trasformare l'equazione di una curva espressa nelle nuove coordinate in quella espressa nelle vecchie coordinate. Le formule @rotazione_assi2, invece, servono per determinare le nuove coordinate di un punto $P$, note le vecchie o per passare dall'equazione di una curva scritta nelle nuove coordinate a quella espressa nelle vecchie coordinate.

#esempio[Data la curva con equazione cartesiana $x^2 - y^2 - 1 = 0$, determinare l'equazione della curva in un nuovo sistema di riferimento ruotato di $pi / 4$, mantenendo la stessa origine.

Le formule @rotazione_assi1 in questo caso diventano:  
$ cases(x = x' sqrt(2)/2 - y' sqrt(2)/2, y = x' sqrt(2)/2 + y' sqrt(2)/2) $  

Sostituendo queste espressioni nell'equazione della curva originale si ottiene:  
$ (x' sqrt(2)/2 - y' sqrt(2)/2)^2 - (x' sqrt(2)/2 + y' sqrt(2)/2)^2 - 1 = 0 $

Semplificando, si arriva a:  
$ 2x' y' + 1 = 0 $  

Questa è l'equazione della curva nel nuovo sistema di riferimento ruotato.]

//
== La retta nel piano cartesiano

Il seguente teorema descrive l'equazione di una retta nel piano:

#definizione(title: "Teorema", label: <def_retta_piano_cartesiano>)[Ogni retta del piano può essere rappresentata da un'equazione di primo grado in due variabili, della forma:
$ a x + b y + c = 0, quad (a, b) != (0, 0) $ <eq_implicita>

Viceversa, ogni equazione di questo tipo identifica una retta nel piano cartesiano.] 

È importante osservare che i coefficienti $a$, $b$ e $c$ non sono univoci per una determinata retta. Infatti, se un'equazione è $a x + b y + c = 0$, allora anche $k(a x + b y + c) = 0$, per ogni $k != 0$, descrive la stessa retta.

Di norma, per garantire l'unicità dell'espressione della retta, si può dividere entrambi i membri dell'equazione per $a$ o per $b$ (con $a, b != 0$). Questo processo consente di esprimere la @eq_implicita in una delle seguenti forme:
$ x + (b/a)y + (c/a) = 0, quad (a/b)x + y + (c/b) = 0 $

ovvero:

$ x + b'y + c' = 0, quad a''x + y + c'' = 0 $

In questo modo, i nuovi coefficienti $(a', b')$ o $(a'', b'')$ risultano univocamente determinati per la retta. Tale principio è cruciale: per individuare l'equazione specifica di una retta servono due parametri distinti, e quindi sarà necessario fornire due condizioni indipendenti. Le situazioni più comuni verranno analizzate nelle sezioni successive.
+ se $a = 0$ e $b != 0$, l'equazione @eq_implicita assume la forma $y = h$, con $h = -c/b$, e rappresenta una retta parallela all'asse delle ascisse; se inoltre $c = 0$, si ottiene $y = 0$, ovvero l'equazione dell'asse delle ascisse stesso.
+ se $b = 0$ e $a != 0$, l'equazione @eq_implicita si riduce a $x = k$, con $k = -c/a$, e descrive una retta parallela all'asse delle ordinate; se $c = 0$, si ha invece $x = 0$, che corrisponde all'equazione dell'asse delle ordinate.
+ se $c = 0$, la @eq_implicita rappresenta una retta che passa per l'origine del sistema di riferimento cartesiano.

Il caso in cui $b != 0$ (ovvero quello di una retta non parallela all'asse delle ordinate o, comunemente detto, una retta non verticale), è particolarmente significato. In questo scenario, l'equazione @eq_implicita può essere riscritta nella forma esplicita:
$ y = -(a/b)x - (c/b) $
spesso espressa come:
$ y = m x + q $ <eq_esplicita>

Questa rappresentazione descrive la retta come il grafico di una funzione polinomiale di primo grado e conserva tutte le caratteristiche trattate precedentemente nella @funzione_polinomiale_primo_grado.

È importante sottolineare che l'equazione @eq_implicita è una forma implicita, mentre la forma @eq_esplicita, valida per le rette non verticali, è detta esplicita. Il coefficiente $m$ nella @eq_esplicita è definito come coefficiente angolare o pendenza della retta $r$, mentre $q$ è chiamato ordinata all'origine o intercetta verticale.

Considerando una qualsiasi retta non parallela agli assi cartesiani, se $alpha$ rappresenta l'angolo formato nel punto di intersezione tra la retta e l'asse $x$ positivo (con origine in $A$), allora è verificata la relazione:
$ m = tan alpha $ <eq_tangente>

La proprietà data dalla @eq_tangente è valida anche per le rette orizzontali: in questo caso si deve assumere che $alpha = 0$ oppure $alpha = pi$.

#grafico_coefficiente_angolare

//
Il significato del coefficiente angolare di una retta è fondamentale per comprenderne l'orientamento. Quando due rette $r$ ed $r_0$, descritte rispettivamente dalle equazioni esplicite $y = m x + q$ e $y = m_0 x + q_0$, hanno lo stesso coefficiente angolare ($m = m_0$), sono parallele. 

Se invece le rette sono espresse in forma implicita, $a x + b y + c = 0$ e $a_0 x + b_0 y + c_0 = 0$, allora risultano parallele se e solo se 
$ exists k != 0, a_0 = k a and b_0 = k b $
Inoltre, se $c_0 = k c$, le due rette coincidono. Per esempio, se $a = 0$, la retta $r$ sarà parallela all'asse $x$, il che implica che anche $a_0 = 0$; in questo caso, è sufficiente prendere $k = b_0/b$. Analogamente, il ragionamento segue per il caso in cui $b = 0$. 

Quando tutti i coefficienti $a$, $b$, $a_0$ e $b_0$ sono diversi da zero, le rette possono essere espresse nella forma implicita, e la condizione di parallelismo diventa: 
$ -a/b = -a_0/b_0 => a_0/a = b_0/b = k $  
Per quanto riguarda la condizione di perpendicolarità, si enuncia il seguente teorema:

#definizione(title: "Teorema delle rette perpendicolari", label: <teorema_rette_perpendicolari>)[Due rette $r$ ed $r_0$, descritte in forma esplicita dalle equazioni $y = m x + q$ e $y = m_0 x + q_0$, sono perpendicolari se e solo se il prodotto dei loro coefficienti angolari soddisfa $m m_0 = -1$. 

Analogamente, se le rette sono date in forma implicita, ovvero $a x + b y + c = 0$ e $a_0 x + b_0 y + c_0 = 0$, si verifica la condizione di perpendicolarità quando $a a_0 + b b_0 = 0.$

#dimostrazione()
Consideriamo la prima parte del teorema, utile anche come esercizio pratico. Preliminarmente, osserviamo che nessuna delle due rette deve essere parallela all'asse $x$, perché in tal caso l'altra sarebbe verticale e non potrebbe essere espressa in forma esplicita. È sufficiente concentrarsi sulle rette parallele alle date che passano per l'origine: $y = m x$ e $y = m_0 x$. Quando le due rette sono ortogonali, una giace nei quadranti primo e terzo, mentre l'altra nei quadranti secondo e quarto.

Indichiamo i punti interessati: $P(1, m)$, $Q(1, m_0)$ e $H(1, 0)$. 

#grafico_rette_perpendicolari

Le rette sono ortogonali se l'angolo $angle P O Q$ è retto. Applicando il secondo teorema di Euclide, deve valere la relazione $|O H|^2 = |P H| dot |H Q|$, ovvero $|m m_0| = 1$. Poiché i coefficienti angolari delle rette devono essere discordi, si conclude che $m m_0 = -1$. Viceversa, se $|m m_0| = 1$, soddisfa il criterio del teorema di Euclide e dunque l'angolo $angle P O Q$ è retto.]

Nel caso in cui una retta non sia né parallela agli assi né passi per l'origine, i suoi coefficienti $a$, $b$ e $c$ sono tutti diversi da zero. Le intersezioni di un grafico di questo tipo con gli assi sono: $ (-c/a, 0) = (p, 0), (0, -c/b) = (0, q) $ rispettivamente per l'asse delle $x$ per quello delle $y$. Questi valori si definiscono intercette della retta sugli assi. L'equazione della retta può dunque essere riscritta come: $  x/(-c/a) + y/(-c/b) = 1 $

o anche: $ x/p + y/q = 1 $ <eq-segmentaria>

La @eq-segmentaria viene chiamata equazione segmentaria della retta.
