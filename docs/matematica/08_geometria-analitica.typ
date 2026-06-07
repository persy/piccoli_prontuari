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

//
Il seguente è uno dei principali teoremi per determinare la distanza di un punto da una retta e per ricavare l'equazione di una retta in base a diverse condizioni.

#definizione(title: "Teorema della distanza di un punto da una retta", label: <teorema_distanza_punto-retta>)[Consideriamo un punto $P_0 (x_0, y_0)$ e una retta $r$ con equazione implicita $a x + b y + c = 0$. La distanza del punto $P_0$ dalla retta $r$ è espressa dalla formula:
$ d(P_0, r) = lr(|a x_0 + b y_0 + c|) / sqrt(a^2 + b^2) $

Da notare che, se il punto $P_0 in r$, la distanza calcolata con la formula sarà zero.]

=== Determinazione dell'equazione di una retta

I casi più comuni per determinare l'equazione di una retta sono:
+ retta passante per un punto con direzione nota
+ retta passante per due punti

==== Retta passante per un punto e di direzione nota

Se $P(x_0, y_0)$ è il punto per cui deve passare la retta e se la direzione è nota (ovvero è noto il coefficiente angolare $m$), l'equazione diventa:
$ y - y_0 = m(x - x_0) $

Nel caso in cui la retta sia verticale, l'equazione sarà invece:
$ x = x_0 $

Se è noto che la retta cercata è parallela a una retta con equazione implicita $a x + b y + c = 0$, la sua equazione può essere scritta direttamente come:
$ a(x - x_0) + b(y - y_0) = 0 $

Se invece la retta desiderata deve essere perpendicolare alla stessa retta ($a x + b y + c = 0$), allora l'equazione sarà data da:
$ b(x - x_0) - a(y - y_0) = 0 $

In ogni caso, si può sempre utilizzare la forma $y - y_0 = m(x - x_0)$, calcolando il coefficiente angolare appropriato quando necessario.

==== Retta passante per due punti

Siano $P(x_1, y_1)$ e $Q(x_2, y_2)$ i due punti sui quali deve passare la retta. L'equazione può essere formulata nel modo seguente:
$ (y - y_1)(x_2 - x_1) = (x - x_1)(y_2 - y_1) $

Questa forma è preferibile rispetto alla tradizionale forma fratta poiché include anche i casi in cui la retta è parallela a uno degli assi cartesiani. La forma classica, equivalente ma meno adatta a certi casi particolari, è:
$ (x - x_1) / (x_2 - x_1) = (y - y_1) / (y_2 - y_1) $

//
#esempio[Determinare alcune proprietà del triangolo con vertici: 

$ A(0, 0), \ B(0, 8), \ C(8, 6) $

Calcolare il baricentro, il circocentro, l'ortocentro, l'incentro e i tre ex-centri. Inoltre, verificare che il baricentro, il circocentro e l'ortocentro risultano allineati e analizzare le principali caratteristiche di questi punti notevoli.

+ Baricentro (punto d'intersezione delle mediane): 

  Bisogna innanzitutto determinare i punti medi di due lati del triangolo. Scegliamo $M$ come punto medio di $overline(A B)$ e $N$ come punto medio di $overline(A C)$. Calcolando otteniamo:
  $ x_M = (0 + 0) / 2 = 0, quad y_M = (0 + 8) / 2 = 4 $
  $ x_N = (0 + 8) / 2 = 4, quad y_N = (0 + 6) / 2 = 3 $

  Per i calcoli successivi determiniamo anche il punto medio $S$, relativo al lato $overline(B C)$:
  $ x_S = (0 + 8) / 2 = 4, quad y_S = (8 + 6) / 2 = 7 $

  Le equazioni delle mediane $overline(B N)$ e $overline(C M)$ risultano:
  $ (y - 8)(4 - 0) = (x - 0)(3 - 8) => \ => 5x + 4y - 32 = 0 \ x - 4y + 16 = 0 $

  L'intersezione delle mediane determina la posizione del baricentro $G$:
  $ cases(5x + 4y - 32 = 0, x - 4y + 16 = 0) $
  da cui:
  $ G lr((8/3, 14/3)) $

  Si può arrivare a questo stesso risultato utilizzando la formula diretta per il baricentro in un triangolo.

+ Circocentro (punto d'intersezione degli assi): 
  
  Qui troviamo le equazioni di due assi del triangolo. Un asse passa per il punto medio $M$ ed è perpendicolare al lato $overline(A B)$. Poiché $overline(A B)$ è verticale, l'asse sarà orizzontale con equazione:
  $ y = 4 $

  L'altro asse passa per il punto medio $N$, è perpendicolare al lato $overline(A C)$ e ha pendenza negativa reciproca rispetto a $overline(A C)$. Calcoliamo il coefficiente angolare di $overline(A C)$:
  $ m_(A C) = (6 - 0) / (8 - 0) = 3/4 $ <coefficiente-AC>

  Il coefficiente angolare dell'asse sarà quindi $-4/3$. Scriviamo la sua equazione:
  $ y - 3 = -4/3(x - 4) \ 4x + 3y - 25 = 0 $

  L'intersezione tra le due rette dà il circocentro $Q$:
  $ cases(y = 4, 4x + 3y - 25 = 0) $
  da cui:
  $ Q lr((13/4, 4)) $

  Per determinare gli assi dei lati, si può anche utilizzare la proprietà secondo cui l'asse di un segmento rappresenta il luogo geometrico dei punti equidistanti dai suoi estremi. Come esercizio, riepiloghiamo il procedimento per trovare l'equazione dell'asse del segmento $overline(A C)$ seguendo questa definizione.

  Consideriamo un punto generico $P(s, t)$ sull'asse. Per definizione, deve valere la condizione $|P A| = |P C|$, ovvero:
  $ sqrt((s - 0)^2 + (t - 0)^2) = sqrt((s - 8)^2 + (t - 6)^2) $

  Elevando al quadrato entrambi i membri e semplificando, si ottiene l'equazione:
  $ 4s + 3t - 25 = 0 $

  Questa è la stessa equazione calcolata precedentemente; si ottiene lo stesso risultato sostituendo semplicemente le coordinate $(s, t)$#footnote[In numerosi contesti, quando si cerca un luogo, risulta utile iniziare indicando la coppia di coordinate del generico punto del luogo come $(s, t)$, sostituendole successivamente con $(x, y$).] con $(x, y)$ per uniformità.

+ Ortocentro (punto d'intersezione delle altezze): 

  Per calcolare l'ortocentro di un triangolo, è sufficiente determinare l'intersezione di due delle tre altezze. 

  La retta passante per il vertice $C$, essendo ortogonale ad $A B$, è parallela all'asse $x$ e avrà equazione:
  $ y = 6 $

  #par(leading: 1em)[Per trovare l'equazione della retta passante per il punto $B$ e ortogonale al lato $A C$, basta riutilizzare il coefficiente angolare di $A C$, già precedentemente determinato in @coefficiente-AC, $3/4$. Quindi, il coefficiente angolare della retta perpendicolare sarà $-4/3$, e la sua equazione risulterà:]
  $ y - 8 = -4/3(x - 0) $
  da cui segue:
  $ 4x + 3y - 24 = 0 $

  L'ortocentro $H$ si trova dunque nel punto di intersezione delle due rette. Risolvendo il sistema:
  $ cases(y = 6, 4x + 3y - 24 = 0) $
  otteniamo: $ H = (3/2, 6) $

+ Verificare che baricentro, circocentro e orocentro siano allineati:
  Per verificare se tre punti siano allineati, calcoliamo l'equazione della retta passante per due di essi e vediamo se il terzo appartiene alla stessa retta. Per esempio, consideriamo la retta $H Q$. La sua equazione sarà:
  $ (y - 6) / (4 - 6) = (x - 3/2) / (13/4 - 3/2) $

  che si semplifica in:
  $ 8x + 7y - 54 = 0 $
  o anche:
  $ y = -8/7 x + 54/7 $

  Verificare la posizione del punto $G$ su questa retta risulta immediato. La @grafico_triangolo_esempio1 illustra questa situazione.

  #grafico_triangolo_esempio1

+ Incentro (punto di intersezione delle bisettrici degli angoli interni):

  Sebbene siano sufficienti due bisettrici, le calcoleremo tutte per poter determinare anche successivamente gli ex-centri. Le bisettrici, come noto, sono luoghi geometrici dei punti equidistanti dai lati dell'angolo. Le equazioni dei tre lati del triangolo, calcolate con metodi già noti, sono:
  $ A B&: x = 0 \ A C&: 3x - 4y = 0 \ B C&: x + 4y - 32 = 0 $

  Per le bisettrici degli angoli formati dalle rette $A B$ e $A C$, considerando un generico punto della bisettrice $P(s, t)$, si deve avere:
  $ lr(|s|) / sqrt(1^2 + 0^2) = lr(|3s - 4t|) / sqrt(3^2 + (-4)^2) \ 5lr(|s|) = lr(|3s - 4t|) \ 5s = plus.minus (3s - 4t) $

  Risolvendo, otteniamo due rette:
  $ 2x - y = 0, \ x + 2y = 0 $

  che risultano mutuamente ortogonali, come deve essere. La prima retta rappresenta la bisettrice dell'angolo interno in $A$ (perché ha coefficiente angolare positivo), mentre la seconda rappresenta la bisettrice dell'angolo esterno in $A$ (perché ha coefficiente angolare negativo).

  In modo analogo, per calcolare le bisettrici degli angoli formati dalle rette $A B$ e $B C$, bisogna soddisfare la seguente relazione:
  $ lr(|s|) / sqrt(1^2 + 0^2) = lr(|s + 4t - 32|) / sqrt(1^2 + 4^2) $

  da cui si ottiene:
  $ sqrt(17) lr(|s|) = lr(|s + 4t - 32|) \ sqrt(17) s = plus.minus (s + 4t - 32) $

  Risolvendo questa equazione, si determinano le due rette:
  $ (sqrt(17) - 1)x - 4y + 32 = 0, \ (sqrt(17) + 1)x + 4y - 32 = 0 $

  Queste due rette risultano perpendicolari tra loro. La seconda rappresenta la bisettrice dell'angolo interno in $B$ (poiché ha coefficiente angolare negativo), mentre la prima rappresenta la bisettrice dell'angolo esterno in $B$ (poiché ha coefficiente angolare positivo).

  Successivamente, per le bisettrici degli angoli individuati dalle rette $A C$ e $B C$, si deve verificare:
  $ lr(|3s - 4t|) / sqrt(3^2 + 4^2) = lr(|s + 4t - 32|) / sqrt(1^2 + 4^2) $

  da cui si ricava:
  $ sqrt(17)(3s - 4t) = plus.minus 5(s + 4t - 32) $

  Risolvendo questa equazione, emergono le seguenti due rette:
  $ (3sqrt(17) - 5)x - (4sqrt(17) + 20)y + 160 = 0 $
  $ (3sqrt(17) + 5)x - (4sqrt(17) - 20)y - 160 = 0 $

  Anche queste due rette sono perpendicolari tra loro. La prima è la bisettrice dell'angolo interno in $C$ (poiché ha coefficiente angolare positivo), mentre la seconda è la bisettrice dell'angolo esterno in $C$ (poiché il coefficiente angolare è negativo).
  L'incentro $I$ si trova nell'intersezione di due delle tre bisettrici interne. Risolvendo il sistema:
  $ cases(2x - y = 0, (sqrt(17) + 1)x + 4y - 32 = 0) $

  si ottiene:
  $ I = lr((32 / (sqrt(17) + 9), 64 / (sqrt(17) + 9))) $

+ Ex-centri (centri delle circonferenze ex-scritte al triangolo):

  Per calcolare i tre ex-centri, è sufficiente intersecare due bisettrici degli angoli esterni, oppure una bisettrice di un angolo esterno con quella di un angolo interno, opportunamente scelti. Calcoliamo il primo ex-centro $E_1$, che si trova "dalla parte del lato $overline(A C)$":
  $ cases(x + 2y = 0, (sqrt(17) + 1)x + 4y - 32 = 0) $

  Risolvendo il sistema, si ottiene:
  $ E_1 = lr((32 / (sqrt(17) - 1), -16 / (sqrt(17) - 1))) $

  Procediamo quindi con il calcolo di $E_2$, l'ex-centro "dalla parte del lato $overline(A B)$":
  $ cases(x + 2y = 0, (3sqrt(17) - 5)x - (4sqrt(17) + 20)y + 160 = 0) $

  Risolvendo, risulta:
  $ E_2 = lr((-32 / (sqrt(17) + 1), 16 / (sqrt(17) + 1))) $

  Questi punti rappresentano i centri associati agli ex-cerchi del triangolo considerato.

  //
  Infine, analizziamo il punto $E_3$, che rappresenta l'excentro situato sul prolungamento del lato $B C$.

  L'equazione della relativa retta risultante è ottenuta dal sistema:
  $ cases(2x - y = 0, (3sqrt(17) + 5)x - (4sqrt(17) - 20)y - 160 = 0) $

  da cui si ricava:
  $ E_3 = lr((32 / (9 - sqrt(17)), 64 / (9 - sqrt(17)))) $

+ Verifica delle proprietà dei punti notevoli; a questo punto, si tratta di verificare che i vari punti individuati soddisfino le proprietà geometriche note. 

  + verifica del baricentro $G$, che divide le mediane in modo tale che la parte contenente il vertice sia doppia rispetto all'altra: i calcoli pertinenti mostrano:

    $ |overline(A G)| = sqrt((0 - 8/3)^2 + (0 - 14/3)^2) = 2/3 sqrt(65) \ |overline(B G)| = sqrt((0 - 8/3)^2 + (8 - 14/3)^2) = 2/3 sqrt(41) \ |overline(C G)| = sqrt((8 - 8/3)^2 + (6 - 14/3)^2) = 4/3 sqrt(17) \ |overline(S G)| = sqrt((4 - 8/3)^2 + (7 - 14/3)^2) = 1/3 sqrt(65) \ |overline(N G)| = sqrt((4 - 8/3)^2 + (3 - 14/3)^2) = 1/3 sqrt(41) \ |overline(S M)| = sqrt((0 - 8/3)^2 + (4 - 14/3)^2) = 2/3 sqrt(17) $

  + verifica del circocentro $Q$, ovvero il punto di intersezione degli assi e centro della circonferenza circoscritta al triangolo: pr dimostrare questa proprietà basta verificare che $Q$ sia equidistante dai vertici del triangolo, ovvero:
    $ |overline(Q A)| = sqrt((13/4 - 0)^2 + (4 - 0)^2) = 5/4 sqrt(17) \ |overline(Q B)| = sqrt((13/4 - 0)^2 + (4 - 8)^2) = 5/4 sqrt(17) \ |overline(Q C)| = sqrt((13/4 - 8)^2 + (4 - 6)^2) = 5/4 sqrt(17) $

  + verifica dell'ortocentro: a livello elementare non vengono generalmente approfondite le sue proprietà. Tuttavia, una delle tante peculiarità di questo punto è che esso rappresenta l'incentro del triangolo ortico, ossia il triangolo formato dai piedi delle tre altezze. Gli interessati possono verificarlo autonomamente.

  + verifica dell'incentro, il centro della circonferenza inscritta nel triangolo: per dimostrarlo, è sufficiente mostrare che $I$ è equidistante dai lati del triangolo. Si ottiene:
    $ d(I, A B) = lr(|x_I|) = 32 / (sqrt(17) + 9) $

    similmente:
    $ d(I, A C) = frac(lr(|3 dot 32 / (sqrt(17) + 9) - 4 dot 64 / (sqrt(17) + 9)|), sqrt(3^2 + 4^2)) = 32 / (sqrt(17) + 9) \ d(I, B C) = frac(lr(|32 / (sqrt(17) + 9) + 4 dot 64 / (sqrt(17) + 9) - 32|), sqrt(1^2 + 4^2)) = 32 / (sqrt(17) + 9) $

    Un'importante proprietà degli ex-centri è che ciascuno di essi è il centro di una circonferenza ex-scritta, tangente ad un lato del triangolo e ai prolungamenti degli altri due. Per verificarlo, basta controllare che gli ex-centri siano equidistanti dalle tre rette di interesse.

    Consideriamo, ad esempio, $E_2$. Si ottengono le seguenti distanze:
    $ d(E_2, A B) &= |x_(E_2)| = 32 / (sqrt(17) + 1) \ d(E_2, A C) &= frac(lr(|3 dot (-32) / (sqrt(17) + 1) - 4 dot 16 / (sqrt(17) + 1)|), sqrt(3^2 + 4^2)) = 32 / (sqrt(17) + 1) \ d(E_2, B C) &= frac(lr(|(-32) / (sqrt(17) + 1) + 4 dot 16 / (sqrt(17) + 1) - 32|), sqrt(1^2 + 4^2)) = 32 / (sqrt(17) + 1) $

Possiamo concludere che tutte le verifiche richieste sono soddisfatte per i relativi punti caratteristici del triangolo.

#grafico_triangolo_esempio2


]

=== Famiglie di curve  

Se $f(x, y) = 0$ e $g(x, y) = 0$ rappresentano le equazioni di due curve, rispettivamente $Phi$ e $Gamma$, nel piano, allora, variando $lambda$ e $mu$ in $RR$, le equazioni  
$ lambda f(x, y) + mu g(x, y) = 0, quad (lambda, mu) != (0, 0) $ <eq_combinazione_lineare>

descrivono una famiglia $cal(F)$ di curve che comprende sia $Phi$ che $Gamma$: la prima corrisponde a $lambda = 1$ e $mu = 0$, mentre la seconda si ha per $lambda = 0$ e $mu = 1$. Inoltre, se un punto $P$ appartiene contemporaneamente sia a $Phi$ che a $Gamma$, allora esso appartiene a tutte le curve della famiglia. Le curve $Phi$ e $Gamma$ sono chiamate curve base della famiglia. Un'equazione della forma @eq_combinazione_lineare si definisce quindi una combinazione lineare delle equazioni delle curve $Phi$ e $Gamma$.  

Supponendo che nella @eq_combinazione_lineare si abbia $lambda != 0$, e introducendo $k = mu / lambda$, otteniamo:  
$ f(x, y) + k g(x, y) = 0, quad k in RR $ <eq_combinazione_monoparametrica>

Variando $k$, le equazioni @eq_combinazione_monoparametrica definiscono un insieme $cal(G)$ di curve che appartengono tutte all'insieme più ampio $cal(F)$. Tuttavia, è evidente che le due famiglie $cal(F)$ e $cal(G)$ non coincidono del tutto, a meno che le curve base $Phi$ e $Gamma$ non siano la stessa curva. La differenza tra le due famiglie sta nel fatto che la curva $Gamma$ non appartiene a $cal(G)$, poiché l'equazione $g(x, y) = 0$ non può essere ottenuta dalle equazioni @eq_combinazione_monoparametrica per alcun valore finito di $k$. Tuttavia, questa è l'unica distinzione significativa tra i due insiemi. Considerando che nella rappresentazione @eq_combinazione_lineare la curva $Gamma$ si ottiene per $lambda = 0$ (e quindi necessariamente con un valore non nullo di $mu$, ad esempio $mu = 1$), è possibile immaginare che $k$ nella @eq_combinazione_monoparametrica, al tendere di $lambda$ a zero, cresca indefinitamente verso l'infinito. Per questo motivo si usa dire che nella rappresentazione @eq_combinazione_monoparametrica la curva $Gamma$ corrisponde al valore $k = oo$.  

Nelle applicazioni pratiche, è generalmente preferibile rappresentare una famiglia di curve tramite un'equazione “a un solo parametro”, come la @eq_combinazione_monoparametrica, anziché mediante un'equazione “a due parametri” come la @eq_combinazione_lineare. Tuttavia, va tenuto presente che in una rappresentazione monodimensionale come @eq_combinazione_monoparametrica, quasi sempre una delle due curve base rimane esclusa dalla famiglia.  

Data la natura complessa dell'argomento, ci concentreremo in seguito su insiemi particolari di curve, come rette e circonferenze, che rivestono un'importanza fondamentale anche nell'ambito della geometria sintetica.

=== Fasci di rette  

#definizione(title: "Fascio di rette", label: <fascio_rette>)[Un fascio proprio di rette è definito come l'insieme di tutte le rette di un piano che condividono un punto comune, denominato centro del fascio. Al contrario, un fascio improprio comprende l'insieme di tutte le rette di un piano che sono tra loro parallele, ossia aventi la stessa direzione.]

Per affrontare l'analisi dei fasci di rette in termini analitici, utilizzeremo sia un'equazione a due parametri, come nella forma @eq_combinazione_lineare, sia un'equazione a un solo parametro, come esemplificato nella forma @eq_combinazione_monoparametrica. Va comunque osservato che l'approccio con un solo parametro è generalmente utilizzato nel contesto della scuola secondaria di secondo grado.

==== Equazione a due parametri

Consideriamo due rette espresse in forma cartesiana:  
$ r_1: a_1 x + b_1 y + c_1 = 0, \ r_2: a_2 x + b_2 y + c_2 = 0 $ <eq_fascio_due_parametri_forma1>

Un'equazione della forma  
$ lambda(a_1 x + b_1 y + c_1) + mu(a_2 x + b_2 y + c_2) = 0, \ quad (lambda, mu) in RR^2, quad (lambda, mu) != (0, 0) $ <eq_fascio_due_parametri_forma2>

è un'equazione di grado $<= 1$. Pertanto, può rappresentare:  
- una retta, se si tratta di un'equazione di primo grado;
- l'insieme vuoto, se è di grado $0$ ma non costituisce un'identità;
- l'intero piano, se assume la forma di un'identità.

Gli esempi sottostanti illustrano ciascuna di queste possibilità.

#esempio[Consideriamo l'equazione:  
$ lambda(x + 2y - 1) + mu(x - y + 2) = 0 $

Sviluppando l'espressione si ottiene:  
$ (lambda + mu)x + (2lambda - mu)y - lambda + 2mu = 0 $

Osserviamo che si tratta sempre di un'equazione di primo grado, indipendentemente dai valori di $lambda$ e $mu$, a condizione che non siano entrambi nulli. Infatti, non esiste alcuna configurazione in cui i coefficienti di $x$ e $y$ siano simultaneamente nulli. Conseguentemente, la relazione rappresenta sempre una retta.][Consideriamo l'equazione: 
$ lambda(x + y + 1) + mu(x + y + 2) = 0 $ 

Sviluppando l'espressione si ottiene:
$ (lambda + mu)x + (lambda + mu)y + lambda + 2mu = 0 $

Si tratta di un'equazione di primo grado se $lambda + mu != 0$; in tal caso, rappresenta una retta. Tuttavia, nel caso in cui $lambda + mu = 0$, l'equazione si riduce a $-1 = 0$, ovvero un'equazione di grado $0$ che non ammette soluzioni e rappresenta dunque l'insieme vuoto.][Consideriamo l'equazione: 
$ lambda(x + y + 1) + mu(x + y + 1) = 0 $

Sviluppando l'espressione si ottiene:
$ (lambda + mu)x + (lambda + mu)y + lambda + mu = 0 $

Anche questa è un'equazione di primo grado se $lambda + mu != 0$; in tal caso rappresenta una singola retta che corrisponde a $x + y + 1 = 0$. Se invece $lambda + mu = 0$, l'equazione diventa un'identità, cioè $0 = 0$, rappresentando l'intero piano.]

Si osservi che nel primo esempio le due rette di base non sono parallele e si incontrano nel punto $P(-1, 1)$. Le altre rette della famiglia passeranno tutte per questo stesso punto. Nel secondo esempio, invece, le rette di base sono parallele e distinte. Le altre rette della famiglia rimangono parallele alle due rette di base a meno che non si considerino le coppie $(lambda, mu)$ per cui $lambda + mu = 0$, equivalenti a $mu/lambda = -1$. Queste coppie verranno definite come "non ammesse" per la combinazione lineare. Infine, nel terzo esempio, le due rette coincidono; la combinazione lineare produce nuovamente la stessa retta, sempre escludendo le coppie $(lambda, mu)$ per cui $lambda + mu = 0$ o $mu/lambda = -1$.

Queste situazioni presentate nei tre esempi possono essere generalizzate. Date due rette: 

$ r_1: a_1 x + b_1 y + c_1 = 0, quad r_2: a_2 x + b_2 y + c_2 = 0 $

si possono distinguere i seguenti casi:
- se le rette non sono parallele, la @eq_fascio_due_parametri_forma1 descrive l'intero fascio proprio, il cui centro è il punto di incontro $P$ di $r_1$ e $r_2$.
- se le rette sono parallele e distinte, la @eq_fascio_due_parametri_forma1 rappresenta un fascio improprio di rette caratterizzato dalla stessa direzione delle rette di base. Si devono escludere le combinazioni di parametri che annullano simultaneamente i coefficienti di $x$ e $y$.
- se le rette coincidono, la @eq_fascio_due_parametri_forma1  corrisponde ancora alla stessa retta; anche in questo caso, è necessario escludere le coppie di parametri che provocano la cancellazione dei coefficienti di $x$ e $y$.

Riprendendo l'espressione della combinazione lineare a due parametri @eq_fascio_due_parametri_forma2 e assumendo $lambda != 0$, si può dividere per $lambda$ ottenendo:
$ (a_1 x + b_1 y + c_1) + (mu/lambda)(a_2 x + b_2 y + c_2) = 0 $

Se definiamo $k = mu/lambda$, possiamo riscrivere l'equazione come:
$ (a_1 x + b_1 y + c_1) + k(a_2 x + b_2 y + c_2) = 0 $ <eq_fascio_due_parametri_forma3>

oppure:
$ (a_1 + k a_2)x + (b_1 + k b_2)y + (c_1 + k c_2) = 0 $ <eq_fascio_due_parametri_forma4>

Come precedentemente osservato, l'equazione @eq_fascio_due_parametri_forma4 differisce dalla @eq_fascio_due_parametri_forma1 solo per il fatto che, se $r_1 != r_2$, la retta $r_2$ stessa non può essere generata da alcun valore di $k$ poiché corrisponde al caso limite $k -> oo$. In questo scenario, viene chiamata retta esclusa quella associata al valore $k = oo$. Con questa limitazione, l'equazione a parametro singolo @eq_fascio_due_parametri_forma4 mantiene le stesse caratteristiche geometriche.

==== Equazione con un solo parametro

Consideriamo un'equazione del tipo @eq_fascio_due_parametri_forma4, ossia un'equazione di primo grado nelle incognite $x$ e $y$, i cui coefficienti sono funzioni lineari di grado $<= 1$ di un parametro reale $k$:  
$ (a_1 + a_2 k)x + (b_1 + b_2 k)y + (c_1 + c_2 k) = 0, quad k in RR $ <eq_fascio_un_parametro_forma1>

Riscrivendo questa equazione nella forma:  
$ (a_1 x + b_1 y + c_1) + k(a_2 x + b_2 y + c_2) = 0, quad k in RR $ <eq_fascio_un_parametro_forma2>

è facile dimostrare, rifacendoci anche alle osservazioni fatte sull'equazione a due parametri, che al variare di $k$ in $RR$, gli insiemi descritti da tale equazione possono essere i seguenti:  
- un fascio proprio di rette, sempre con l'esclusione di una retta specifica 
- un fascio improprio, eventualmente escludendo una retta.  
- una singola retta 
- l'intero piano
- un insieme vuoto  

I dettagli per ciascuna situazione sono presentati nei seguenti casi:
+ fascio proprio: se le equazioni $a_1 x + b_1 y + c_1 = 0$ e $a_2 x + b_2 y + c_2 = 0$ rappresentano due rette non parallele, denominate $r_1$ e $r_2$, e $P$ ne è il punto di intersezione, allora l'equazione @eq_fascio_un_parametro_forma1 descrive un fascio proprio di rette avente come centro il punto $P$, ma privo della retta $r_2$. Questa retta è detta *retta esclusa*, poiché appartiene al fascio ma non può essere generata dalla @eq_fascio_un_parametro_forma1 per alcun valore di $k$. Si parla comunque di fascio proprio anche se, formalmente, si tratta di un abuso terminologico.  
  - la retta $r_1$ corrisponde al valore $k = 0$.  
  - le altre rette del fascio sono ottenute ruotando attorno a $P$: quando ci si avvicina alla retta esclusa durante la rotazione in senso orario o antiorario, i valori di $k$ tendono rispettivamente a $-oo$ o $+oo$.  
+ fascio improprio: se le equazioni $a_1 x + b_1 y + c_1 = 0$ e $a_2 x + b_2 y + c_2 = 0$ rappresentano due rette parallele, denominate $r_1$ e $r_2$, allora l'equazione @eq_fascio_un_parametro_forma1 rappresenta un fascio improprio di rette parallele a $r_2$, ma con l'esclusione della stessa $r_2$, che non può essere generata dalla @eq_fascio_un_parametro_forma1 per alcun valore di $k$. Anche in questo caso, si parla di fascio improprio per consuetudine, pur con un certo abuso di linguaggio.  
  - la retta $r_1$ corrisponde al valore del parametro $k = 0$.  
  - esiste un valore specifico di $k$, che annulla sia il coefficiente di $x$ sia quello di $y$, ma per tale valore l'equazione non ha soluzioni: questo valore è detto non ammesso.  
  - le altre rette del fascio si ottengono traslando parallelamente la retta esclusa:  
    - avvicinandosi alla retta esclusa per traslazione in direzione opposta, i valori di $k$ tendono rispettivamente a $-oo$ o $+oo$.  
    - allontanandosi dalla retta esclusa, invece, i valori di $k$ si avvicinano al valore non ammesso da un lato (per difetto) o dall'altro (per eccesso).  
+ casi degeneri: se una delle due equazioni $a_1 x + b_1 y + c_1 = 0$ e $a_2 x + b_2 y + c_2 = 0$ non rappresenta l'equazione di una retta (ovvero non è un'equazione di primo grado), si possono distinguere i seguenti casi:
  - se $a_1 = b_1 = 0$ e $c_1 != 0$, l'equazione @eq_fascio_un_parametro_forma1 descrive un fascio improprio di rette parallele alla retta $r_2$, escludendo però $r_2$ stessa. In questo caso, il valore $k = 0$ non è ammesso e l'equazione risulta senza soluzioni
  - se $a_1 = b_1 = c_1 = 0$, l'equazione @eq_fascio_un_parametro_forma1 corrisponde per $k != 0$ esclusivamente alla retta $r_2$, mentre per $k = 0$ diventa un'identità
  - se $a_2 = b_2 = 0$ e $c_2 != 0$, l'equazione @eq_fascio_un_parametro_forma1 rappresenta l'intero fascio improprio di rette parallele alla retta $r_1$, senza alcuna esclusione, e ogni valore di $k$ è ammesso. Questo caso è particolarmente rilevante perché permette di descrivere un intero fascio con una sola equazione parametrica. In generale, dato il fascio di rette parallele a una retta $r$, la cui equazione è $a x + b y + c = 0$, tale fascio si può descrivere con l'espressione:  
  $ a x + b y + k = 0, quad k in RR $
  - se $a_2 = b_2 = c_2 = 0$, l'equazione @eq_fascio_un_parametro_forma1 rappresenta esclusivamente la retta $r_1$. Questo caso è però banale, poiché l'equazione non contiene alcun parametro.

//
#esempio[Rappresentare graficamente l'insieme di rette descritto dall'equazione $(1 + k)x + (1 - 2k)y - 3 = 0$, che può essere riscritta come:
$ (x + y - 3) + k(x - 2y) = 0 $

Le rette fondamentali associate a questa espressione sono $r_1: x + y - 3 = 0$ e $r_2: x - 2y = 0$, le quali si intersecano nel punto $P(2, 1)$. Pertanto, l'equazione rappresenta un fascio proprio di rette con centro in $P$. La retta $r_2$ è esclusa dal fascio.

Ruotando in senso orario, i valori del parametro $k$ aumentano. Per verificare questa affermazione, è sufficiente tracciare due rette corrispondenti a differenti valori di $k$ e osservare la rotazione rispetto al semipiano delimitato dalla retta esclusa. Nella @esempio_grafico_fascio1 sono stati riportati due esempi: per $k = 0$ si ottiene la retta base $r_1$, mentre per $k = 1/2$ si ottiene una retta verticale passante per il punto $P$.

#esempio_grafico_fascio1
][Rappresentare graficamente  l'insieme di rette definito dall'equazione $(x - 2y) + k(x - 2y + 4) = 0$, che può essere riscritta nella forma equivalente:
$ (1 + k)x - 2(1 + k)y + 4k = 0 $

In questo caso, le rette base sono $r_1: x - 2y = 0$ e $r_2: x - 2y + 4 = 0$, che risultano parallele. Ne consegue che l'equazione rappresenta un fascio improprio, ossia un insieme di rette parallele con la stessa direzione di $r_1$ e $r_2$. La retta $r_2$ è esclusa dal fascio.

Inoltre, per $k = -1$, sia il coefficiente di $x$ che quello di $y$ si annullano, rendendo non definito tale valore per il parametro (valore non ammesso). Come illustrato nella @esempio_grafico_fascio2, il parametro $k$ cresce in una direzione ben precisa: è possibile osservare questa dinamica tracciando due rette corrispondenti a valori distinti di $k$ e analizzando il comportamento nei semipiani definiti dalla retta esclusa.

#esempio_grafico_fascio2
][Individuare le caratteristiche dell'insieme delle rette rappresentato dall'equazione $x - 2y + 1 + 3k = 0$, che può essere riscritta come:
$ (x - 2y + 1) + k(3) = 0 $

L'equazione $x - 2y + 1 = 0$ rappresenta una retta, chiamata $r_1$, mentre l'equazione $3 = 0$ non ammette soluzioni. Di conseguenza, l'intero insieme rappresenta un fascio di rette parallele alla retta $r_1$, che include tutte le rette parallele senza escluderne alcuna e senza limitazioni sui valori del parametro $k$.]

Un caso di particolare interesse riguarda il fascio proprio di rette descritto dalla seguente equazione, richiamata qui sotto per completezza:
$ y - y_0 = m(x - x_0) $ <eq_fascio_proprio_m>

Questa equazione rappresenta la retta non verticale che passa per un punto fissato $P(x_0, y_0)$ con coefficiente angolare $m$. Se vista come equazione di primo grado in due incognite ($x$ e $y$), con parametro $m$, essa descrive altresì un fascio di rette avente come centro il punto $P(x_0, y_0)$. Tuttavia, la retta verticale $x = x_0$, che passa anch'essa per $P$, è esclusa da tale fascio. Per questa ragione, tale insieme viene definito come il fascio di rette non verticali con centro $P$.

È importante sottolineare che un'equazione di primo grado in due incognite, i cui coefficienti dipendono da un parametro, rappresenta un fascio di rette (salvo eccezioni) solo se la dipendenza dai coefficienti rispetto al parametro è lineare.

Per esempio, si consideri la famiglia di rette definita dall'equazione:
$ x - 2y + k^2 = 0 $

In questo caso, tale equazione non rappresenta un fascio di rette propriamente detto. Sebbene le rette della famiglia siano tutte parallele alla retta di riferimento $x - 2y = 0$, la loro ordinata all'origine assume valori $>= 0$, mostrando una dipendenza non lineare rispetto a $k$.

//

#grafico-sezioni-coniche