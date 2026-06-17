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

=== Famiglie di curve <cap_famiglie_curve> 

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
+ fascio proprio: se le equazioni $a_1 x + b_1 y + c_1 = 0$ e $a_2 x + b_2 y + c_2 = 0$ rappresentano due rette non parallele, denominate $r_1$ e $r_2$, e $P$ ne è il punto di intersezione, allora l'equazione @eq_fascio_un_parametro_forma1 descrive un fascio proprio di rette avente come centro il punto $P$, ma privo della retta $r_2$. Questa retta è detta retta esclusa, poiché appartiene al fascio ma non può essere generata dalla @eq_fascio_un_parametro_forma1 per alcun valore di $k$. Si parla comunque di fascio proprio anche se, formalmente, si tratta di un abuso terminologico.  
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

== Coniche

Nello studio della geometria euclidea, dopo il concetto di retta, ci si imbatte generalmente in una singola curva distintiva: la circonferenza, che si distingue per le sue proprietà significative. Le coniche rappresentano le curve piane più semplici immediatamente successive alla circonferenza e sono tra le prime ad essere state esplorate storicamente. La loro teoria come sezioni ha raggiunto quasi una forma definitiva grazie al lavoro di Apollonio di Perga (o Perge) nel celebre trattato risalente alla fine del III secolo a.C., di cui parleremo brevemente nella @coniche_sezioni.

Dal punto di vista della geometria analitica, tuttavia, è particolarmente interessante trattare le coniche come luoghi geometrici specifici. Esiste un noto teorema che dimostra come le sezioni coniche possano essere definite anche come luoghi geometrici. Questo teorema, pubblicato nel 1822 dal matematico belga G.P. Dandelin, è conosciuto anche come "Teorema del cono gelato". Nel seguito, analizzeremo esplicitamente le situazioni più comuni.

La ragione per cui, nell'ambito della geometria analitica, le coniche vengono introdotte subito dopo la trattazione della retta è legata al fatto che ogni equazione di secondo grado in due incognite rappresenta, nel piano cartesiano, una conica (anche nella sua forma "degenere"). Viceversa, ogni conica può essere descritta nel piano in cui è definita mediante un sistema cartesiano $O x y$ attraverso un'equazione di secondo grado in due variabili. In termini analitici, il passaggio dalla retta alle coniche equivale alla transizione dalle equazioni di primo grado a quelle di secondo grado in due incognite. Per dimostrare questa relazione, si può affermare che ogni conica, anche se degenere, è descritta dall'equazione#footnote[$A$, $B$ e $C$ non contemporaneamente nulli.]:
$ A x^2 + B x y + C y^2 + D x + E y + F = 0, quad not (A and B and C = 0) $ <eq_conica_generale>

D'altro canto, ogni equazione di secondo grado del tipo sopra riportato rappresenta una conica, eventualmente degenere. L'equazione contiene sei parametri; tuttavia, poiché almeno uno tra i primi tre deve essere diverso da zero, essa può essere ridotta a una forma contenente cinque parametri. Di conseguenza, per determinare una conica saranno necessarie cinque condizioni indipendenti e compatibili, ad esempio il passaggio per cinque punti distinti. Verranno affrontati ulteriormente casi tipici nei paragrafi successivi.

Un problema di rilevante importanza pratica nella teoria delle coniche è la determinazione delle tangenti condotte da un punto assegnato o aventi una direzione precisa. Va considerato che tale problema non sempre ammette soluzioni: un esempio comune è quello delle tangenti condotte da un punto interno a una circonferenza. Nei vari contesti che esamineremo più avanti, verranno individuate strategie specifiche per calcolare tali tangenti.

È comunque utile introdurre sin da ora una tecnica generale applicabile a tutte le tipologie di coniche. Questa si basa su una proprietà ben nota delle tangenti alla circonferenza, che può essere estesa ad altre coniche: una retta risulta tangente a una conica se e solo se ha con essa punti di intersezione coincidenti. Tradotto in termini analitici, il sistema costituito dall'equazione della conica e dell'equazione della retta:
$ cases(
  A x^2 + B x y + C y^2 + D x + E y + F = 0,
  a x + b y + c = 0
) $

ha due soluzioni coincidenti se la retta è tangente alla conica. Risolvendo il sistema, si esprime $x$ o $y$ dalla seconda equazione e si sostituisce nell'equazione della conica, ottenendo un'equazione di grado $<= 2$ denominata equazione risolvente. La condizione di tangenza tra la retta e la conica si verifica se e solo se questa equazione risolvente è di secondo grado e ha discriminante nullo ($Delta = 0$). Tuttavia, è cruciale verificare che l'equazione risolvente sia effettivamente di secondo grado e prima di analizzarne il discriminante.

Se consideriamo, ad esempio, la conica $x^2 + 3x - 2y - 2 = 0$ (che, come vedremo, rappresenta una parabola) e la retta $x - 1 = 0$, il sistema:
$ cases(
  x^2 + 3x - 2y - 2 = 0,
  x - 1 = 0
) $

ha come unica soluzione il punto $(1, 1)$. Tuttavia, l'equazione risolvente risulta essere $y - 1 = 0$, che non è di secondo grado. Ciò significa che la retta e la conica non sono tangenti, pur condividendo un solo punto in comune.

In generale, per determinare le tangenti a una conica da un punto $P(x_0, y_0)$, si considera il fascio proprio di rette con centro in $P$, e si richiede che il discriminante dell'equazione risolvente del sistema tra il fascio di rette e la conica sia nullo. Se invece si vogliono trovare le tangenti di una determinata direzione, basta considerare un fascio improprio di rette anziché uno proprio. 

#esempio[Determinare eventuali tangenti alla conica di equazione $x^2 + 2y^2 + 2x = 0$ passanti per il punto $P(0, 1)$.

Costruiamo il fascio di rette per $P$, rappresentabile nella forma $y - 1 = m x$. Da esso risulta esclusa la retta $x = 0$, che tratteremo separatamente. Il sistema risultante tra la conica e il fascio di rette è:
$ cases(
  x^2 + 2y^2 + 2x = 0,
  y - 1 = m x
) $

Sostituendo la seconda equazione nella prima, otteniamo l'equazione risolvente:
$ (1 + 2m^2)x^2 + 2(2m + 1)x + 2 = 0 $

Questa è un'equazione di secondo grado rispetto a $x$. Affinché il fascio generi una tangente alla conica, il discriminante $Delta$ (o il discriminante ridotto $Delta / 4$) deve essere nullo. Calcolando il discriminante, si trova che ciò accade per $m = 1/4$. Di conseguenza, la retta:
$ y = 1/4 x + 1 $

è tangente alla conica.

Esaminiamo ora la retta esclusa $x = 0$. Il sistema con la conica può essere risolto immediatamente, e l'equazione risolvente diventa $y^2 = 0$. Trattandosi di un'equazione di secondo grado con discriminante pari a zero, deduciamo che anche la retta $x = 0$ è tangente alla conica.

Va sottolineato che per affrontare questo problema non è stato necessario classificare il tipo di conica considerata, dato che la strategia adottata è indipendente dalla natura della curva. Tuttavia, per completezza, segnaliamo che la conica in questione è un'ellisse. Nella @grafico_conica1 è riportata la sua rappresentazione insieme alle tangenti trovate.

#grafico_conica1
]

Per determinare l'unica tangente a una conica in un punto specifico $P(x_0, y_0)$, si possono utilizzare le formule di sdoppiamento. Dato che la conica ha un'equazione del tipo $A x^2 + B x y + C y^2 + D x + E y + F = 0$ e il punto $P$ appartiene alla conica, l'equazione della tangente in $P$ può essere trovata direttamente attraverso opportune sostituzioni nell'equazione della conica.

Queste sostituzioni sono così definite:
$ x^2 -> x_0 x, quad y^2 -> y_0y, \ x -> (x + x_0) / 2, quad y -> (y + y_0) / 2, \ x y -> (x y_0 + x_0 y) / 2 $

Applicando queste trasformazioni si ottiene l'equazione esplicita della tangente nel punto $P(x_0, y_0)$.

#esempio[Data la conica:
$ 4x^2 + y^2 + 5x y + x - y = 0 $

l'equazione della tangente nel punto $P_0(0, 1)$ si ottiene applicando le formule di sdoppiamento:
$ y + (5x + x - y - 1)/2 = 0 $

da cui si ricava la forma semplificata:
$ 6x + y - 1 = 0 $

In questo caso, non è necessario determinare il tipo di conica per scrivere l'equazione della tangente. Per completezza, viene considerato il grafico della curva in @grafico_conica2, che si identifica come un'iperbole, insieme alla tangente relativa al punto $P_0$.

#grafico_conica2

]

=== Le coniche come sezioni <coniche_sezioni>

In un piano $pi$ consideriamo due rette distinte $a$ e $g$, non perpendicolari, e immaginiamo di far compiere, nello spazio, una rotazione completa di $g$ attorno ad $a$. Se $a$ e $g$ si intersecano in un punto $V$, individuando un angolo acuto $alpha$ ($0 < alpha < pi/2$), otterremo una superficie detta cono circolare a due falde indefinito di semiapertura $alpha$. Se $a$ e $g$ sono parallele otterremo un cilindro circolare indefinito (cono degenere). 

In entrambi i casi, illustrati nelle  #ref(<grafico_rotazione_retta_cono>, supplement: "Figure") e #ref(<grafico_rotazione_retta_cilindro>, supplement: none), la retta $a$ si chiama asse, mentre la retta $g$ e quelle ottenute dalla rotazione si chiamano generatrici. Il punto $V$ è il vertice del cono.

#align(center)[#grid(columns: 2, column-gutter: 5em, align: bottom + center)[#grafico_rotazione_retta_cono][#grafico_rotazione_retta_cilindro]]

==== Coniche non degeneri

Consideriamo ora un piano sezionante $delta$ nello spazio. Se $delta$ non passa per $V$ (nel caso del cono) o non è parallelo ad $a$ (nel caso del cilindro), l'intersezione genera una conica non degenere.
- cilindro: si ottiene sempre un'ellisse (@cilindro_sezionato_ellisse) o una circonferenza se $delta$ è perpendicolare all'asse $a$ (@cilindro_sezionato_circonferenza)
- cono: detto $beta$ l'angolo non ottuso tra $delta$ e $a$ ($0 <= beta <= pi/2$), si ottiene:
  - un'ellisse se $beta > alpha$ (@conica_asserita_ellisse o una circonferenza se $beta = pi/2$ (@conica_asserita_circonferenza)
  - una parabola se $beta = alpha$ (@conica_asserita_parabola)
  - un'iperbole se $beta < alpha$, il piano interseca entrambe le falde, generando due rami (@conica_asserita_iperbole)

==== Coniche degeneri

Se il piano $delta$ passa per il vertice $V$ o è parallelo all'asse del cilindro, si ottengono coniche degeneri. Nel caso del cono:
- un punto (il vertice $v$) se $beta > alpha$ (@conica_asserita_punto_deg)
- coppia di rette incidenti se $beta < alpha$ (@conica_asserita_rette_deg)
- coppia di rette coincidenti se $beta = alpha$, con il piano tangente al cono (@conica_asserita_retta_deg)

#grid(
  columns: (1fr, 1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 5pt,
  align: bottom + center,
  [ #conica-asserita(a: 0.0, z0: 1.3) <conica_asserita_circonferenza>],
  [ #conica-asserita(a: 0.3, z0: 0.8) <conica_asserita_ellisse> ],
  [ #conica-asserita(a: 1.0, z0: 0.6) <conica_asserita_parabola> ],
  [ #conica-asserita(a: 2.0, z0: 0.5) <conica_asserita_iperbole> ],
  [ #conica-asserita(a: 0.0, z0: 0.0) <conica_asserita_punto_deg> ],
  [ #conica-asserita(a: 1.4, z0: 0.0) <conica_asserita_rette_deg> ], 
  [],[ #conica-asserita(a: 1.0, z0: 0.0) <conica_asserita_retta_deg>  ],[]

)

#v(2em)

Nel caso del cilindro:
- insieme vuoto se il piano è esterno al cilindro
- coppia di rette parallele negli altri casi (@cilindro_sezionato_parallele)
- coppia di rette coincidenti se il piano è tangente al cilindro (@cilindro_sezionato_degenere)

#grid(
  columns: (1fr, 1fr),
  row-gutter: 25pt,
  column-gutter: -5pt,
  align: bottom + center,
  [ #cilindro-sezionato(modo: "circonferenza")<cilindro_sezionato_circonferenza>  ],
  [ #cilindro-sezionato(modo: "ellisse") <cilindro_sezionato_ellisse> ],
  [ #cilindro-sezionato(modo: "parallele") <cilindro_sezionato_parallele> ],
  [ #cilindro-sezionato(modo: "degenere") <cilindro_sezionato_degenere> ]
) 
//
=== Le coniche come luoghi geometrici

Le coniche, in accordo con il teorema di Dandelin, possono essere descritte come precisi luoghi geometrici del piano. Ci concentreremo esclusivamente sulle configurazioni non degeneri.

#definizione(title: "Teorema", label: <teorema_ellisse>)[In un piano $pi$, dati due punti $F_1$ e $F_2$ detti fuochi, l'ellisse è il luogo geometrico dei punti per cui la somma delle distanze da $F_1$ e $F_2$ è costante e superiore alla distanza tra i fuochi stessi. Se i due fuochi coincidono, l'ellisse si riduce a una circonferenza.]

#definizione(title: "Teorema", label: <teorema_iperbole>)[In un piano $pi$, dati due punti $F_1$ e $F_2$ detti fuochi, l'iperbole è il luogo geometrico dei punti per cui il valore assoluto della differenza delle distanze da $F_1$ e $F_2$ è costante e diversa da zero.]

#definizione(title: "Teorema", label: <teorema_parabola>)[In un piano $pi$, dato un punto $F$ detto fuoco e una retta $d$ detta direttrice ($F in/ d$), la parabola è il luogo geometrico dei punti equidistanti da $F$ e da $d$.]

La parabola si distingue per proprietà strutturali diverse rispetto a ellisse e iperbole, che condividono invece un'impostazione concettuale analoga. Sebbene sia possibile formulare una definizione geometrica univoca per tutte e tre le curve basata su una proprietà comune (la complementarità rispetto all'eccentricità), tale approccio esula dagli obiettivi di questo manuale.

I teoremi @teorema_ellisse, @teorema_iperbole e @teorema_parabola pongono le basi per ricavare le rispettive equazioni cartesiane. Procedendo, ci limiteremo ad analizzare le forme canoniche derivanti da scelte specifiche degli assi coordinati.

//
== Circonferenza nel piano cartesiano

Secondo la definizione della geometria euclidea, la circonferenza è il luogo geometrico dei punti del piano equidisatanti da un punto fisso detto centro $C(x_C, y_C)$. La distanza costante è detta raggio $r$. 

In un sistema cartesiano ortogonale $O x y$, un punto generico $P(x, y)$ appartiene alla circonferenza se soddisfa la relazione di distanza:
$ sqrt((x - x_C)^2 + (y - y_C)^2) = r $

Elevando al quadrato entrambi i membri (lecito essendo entrambi i termini positivi):
$ (x - x_C)^2 + (y - y_C)^2 = r^2 $ <eq_circonferenza_base>

Sviluppando i quadrati si ottiene:
$ x^2 + y^2 - 2x_C x - 2y_C y + x_C^2 + y_C^2 - r^2 = 0 $

Ponendo le definizioni delle costanti:
$ a = -2x_C, quad b = -2y_C, quad c = x_C^2 + y_C^2 - r^2 $

L'equazione assume la forma canonica:
$ x^2 + y^2 + a x + b y + c = 0 $ <eq_circonferenza_canonica>

Inversamente, un'equazione in forma canonica, come la @eq_circonferenza_canonica, rappresenta una circonferenza reale se e solo se è verificata la condizione di esistenza:
$ a^2/4 + b^2/4 - c >= 0 $ <eq_esistenza_circonferenza>

Sotto tale condizione, le coordinate del centro e la misura del raggio sono determinate dalle formule:
$ x_C = -a/2, quad y_C = -b/2, quad r = sqrt(a^2/4 + b^2/4 - c) $ <eq_centro_raggio>

L'equazione della circonferenza si ricava dall'equazione generale delle coniche $A x^2 + B x y + C y^2 + D x + E y + F = 0$ imponendo le condizioni:
$ A = C != 0, quad B = 0 $

L'equazione assume quindi la forma:
$ A x^2 + A y^2 + D x + E y + F = 0, quad A != 0 $
Dividendo per $A$ si riconduce il sistema alla forma canonica#footnote[Da notare che la @eq_esistenza_circonferenza e la @eq_centro_raggio valgono solo per la forma canonica dell'equazione.] @eq_circonferenza_canonica per la verifica del raggio e del centro. Invece di memorizzare altre formule, è possibile determinare centro e raggio tramite il completamento del quadrato dei termini in $x$ e $y$:
$ &x^2 + y^2 + a x + b y + c = (x^2 + a x) + (y^2 + b y) + c \
&= (x^2 + a x + a^2/4) + (y^2 + b y + b^2/4) + c - a^2/4 - b^2/4 \
&= (x + a/2)^2 + (y + b/2)^2 + c - a^2/4 - b^2/4 $

Riscrivendo l'equazione canonica si ottiene:
$ (x + a/2)^2 + (y + b/2)^2 = a^2/4 + b^2/4 - c $

Il confronto diretto con la relazione geometrica @eq_circonferenza_base permette di fornire la condizione @eq_esistenza_circonferenza e identificare immediatamente il centro e il raggio (@eq_centro_raggio).

#esempio[
Determinare il centro e il raggio della circonferenza data dall'equazione:
$ 4x^2 + 4y^2 - 4x - 16y + 13 = 0 $

Dividendo per $4$, l'equazione si riscontra in forma canonica:
$ x^2 + y^2 - x - 4y + 13/4 = 0 $

Utilizzando il metodo del completamento dei quadrati:
$ &x^2 + y^2 - x - 4y + 13/4 = (x^2 - x) + (y^2 - 4y) + 13/4 \
&= [x^2 - x + (1/2)^2] + [y^2 - 4y + 4] - 1/4 - 4 + 13/4 \
&= (x - 1/2)^2 + (y - 2)^2 - 1 $

L'equazione può quindi essere riscritta come:
$ (x - 1/2)^2 + (y - 2)^2 = 1 $

Da questa forma si deduce immediatamente che l'equazione rappresenta una circonferenza con centro $C(1/2, 2)$ e raggio $r = 1$.]

=== Tangenti a una circonferenza

Per determinare le tangenti a una circonferenza, si possono applicare i metodi generali utilizzati per le coniche. Tuttavia, grazie alle proprietà geometriche di questa curva, sono disponibili procedure più rapide ed efficienti.

Se il punto $P(x_0, y_0)$ appartiene alla curva, la tangente si può ricavare imponendo la perpendicolarità al raggio passante per $P$ o tramite le formule di sdoppiamento. Se invece $P$ è esterno, si può imporre che la distanza del centro dal fascio di rette sia uguale al raggio.

#esempio[Determinare, applicando i diversi metodi proposti, le eventuali tangenti alla circonferenza $x^2 + y^2 + 2x - 2y - 3 = 0$ condotte dal punto $P(1, 2)$.

Tramite completamento dei quadrati l'equazione diventa $(x + 1)^2 + (y - 1)^2 = 5$, da cui ricaviamo il centro $C(-1, 1)$ e il raggio $r = sqrt(5)$. Il punto $P(1, 2)$ appartiene alla circonferenza poiché ne soddisfa l'equazione.

+ Metodo del discriminante (fascio di rette): \
  Consideriamo il fascio di rette per $P$: $y - 2 = m(x - 1)$. Impostiamo il sistema:
  $ cases(
    x^2 + y^2 + 2x - 2y - 3 = 0,
    y - 2 = m(x - 1)
  ) $
  L'equazione risolvente è:
  $ (1 + m^2)x^2 + 2(1 + m - m^2)x + (m^2 - 2m - 3) = 0 $
  Imponendo $Delta = 0$ si ottiene $m = -2$#footnote[Esiste una sola tangente condotta a una circonferenza da un suo punto]. La tangente è $y = -2x + 4$.

+ Metodo delle formule di sdoppiamento: \
  Applichiamo le sostituzioni per $P(1,2)$: 
  $ x^2 -> x, quad y^2 -> 2y, quad x -> (x+1)/2, quad y -> (y+2)/2 $
  Ottenendo:
  $ x + 2y + 2((x + 1)/2) - 2((y + 2)/2) - 3 = 0 $
  Semplificando si ottiene $2x + y - 4 = 0$, ovvero $y = -2x + 4$.

+ Metodo della perpendicolarità al raggio: \
  Il coefficiente angolare della retta $C P$ è:
  $ m_(C P) = (2 - 1)/(1 - (-1)) = 1/2 $
  La retta tangente è perpendicolare al raggio, quindi $m = -1/m_(C P) = -2$.
  L'equazione risulta $y - 2 = -2(x - 1) => y = -2x + 4$.

+ Metodo della distanza dal centro: \
  Scriviamo il fascio in forma implicita: $m x - y - m + 2 = 0$. Imponiamo che la distanza da $C(-1,1)$ sia pari a $r = sqrt(5)$:
  $ (|m(-1) - 1 - m + 2|)/sqrt(m^2 + 1) = sqrt(5) => (|1 - 2m|)/sqrt(m^2 + 1) = sqrt(5) $
  Elevando al quadrato e semplificando:
  $ (1 - 4m + 4m^2)/(m^2 + 1) = 5 => m^2 + 4m + 4 = 0 $
  La soluzione è $m = -2$, che conferma la retta $y = -2x + 4$.][Determinare le tangenti alla circonferenza $x^2 + y^2 + x + y - 2 = 0$ condotte dal punto $P(3/4, 3/4)$.

Riscriviamo l'equazione in forma canonica:
$ (x + 1/2)^2 + (y + 1/2)^2 = 5/2 $

Il centro è $C(-1/2, -1/2)$ e il raggio è $r = sqrt(5/2)$. 

Calcoliamo la distanza tra $P$ e $C$:
$ d(P, C) = sqrt((-1/2 - 3/4)^2 + (-1/2 - 3/4)^2) = (5sqrt(2))/4 $

Essendo $d(P, C) > r$, il punto $P$ è esterno alla circonferenza; esistono dunque due rette tangenti.

+ Fascio di rette: \
  Consideriamo il fascio di rette non verticali passanti per $P$: $y - 3/4 = m(x - 3/4)$. Impostiamo il sistema:
  $ cases(
    x^2 + y^2 + x + y - 2 = 0,
    y - 3/4 = m(x - 3/4)
  ) $

  Sostituendo la seconda equazione nella prima si ottiene l'equazione risolvente:
  $ (16 hs0+hs0 16m^2)x^2 hs0-hs0 (24m^2 hs0+hs0 40m hs0+hs0 16)x hs0+hs0 9m^2 hs0-hs0 30m hs0-hs0 11 hs0=hs0 0 $

  Imponendo $Delta = 0$, si ricava l'equazione:
  $ 3m^2 + 10m + 3 = 0 $

  Le cui soluzioni sono $m_1 = -3$ e $m_2 = -1/3$. Le due rette tangenti sono:
  $ 3x + y - 3 = 0, quad x + 3y - 3 = 0 $

+ Distanza dal centro: \
  Riscriviamo il fascio in forma implicita: $4m x - 4y - 3m + 3 = 0$. Imponiamo che la distanza dal centro $C(-1/2, -1/2)$ sia pari al raggio $r = sqrt(5/2)$:
  $ (lr(|4m(-1/2) - 4(-1/2) - 3m + 3|))/sqrt((4m)^2 + (-4)^2) = sqrt(5/2) \ (| -2m + 2 - 3m + 3|)/sqrt(16m^2 + 16) = sqrt(5/2) $

  Elevando al quadrato e semplificando si riottiene:
  $ 3m^2 + 10m + 3 = 0 $
  che conferma i coefficienti angolari $m_1 = -3$ e $m_2 = -1/3$.

+ Soluzione geometrica: \
  I punti di tangenza si trovano sull'intersezione tra la circonferenza data e una seconda circonferenza $gamma$, avente come diametro il segmento $overline(C P)$. Il centro di $gamma$ è il punto medio $M$:
  $ x_M = 1/8, quad y_M = 1/8 $

  Il raggio di $gamma$ è:
  $ r_gamma = (|overline(P C)|)/ 2 = 5/8 sqrt(2) $

  L'equazione di $gamma$ è quindi:
  $ (x - 1/8)^2 hs0+ (y - 1/8)^2 = 25/32 \ x^2 + y^2 - 1/4 x - 1/4 y - 3/4 = 0 $

  Impostiamo il sistema tra le due circonferenze per trovare i punti di tangenza:
  $ cases(
    x^2 + y^2 + x + y - 2 = 0,
    x^2 + y^2 - 1/4 x - 1/4 y - 3/4 = 0
  ) $

  Sottraendo membro a membro si ottiene la retta passante per i punti di tangenza (asse radicale). Risolvendo il sistema si ricavano i punti $A(1, 0)$ e $B(0, 1)$. Le rette $P A$ e $P B$ sono le tangenti cercate.

#grafico_tangente_circonferenza

]

=== Determinare l'equazione di una circonferenza

Per esprimere l'equazione di una circonferenza nella sua forma canonica, è necessario determinare i tre parametri incogniti $a$, $b$ e $c$. Risulta quindi indispensabile disporre di tre condizioni indipendenti e compatibili.

==== Il passaggio per tre punti

La condizione più frequente consiste nell'imporre il passaggio per un punto specifico, sostituendone le coordinate nell'equazione canonica per ottenere un'equazione di primo grado nei parametri $a, b, c$#footnote[La strategia applicata a tutte le equazioni con due incognite prevede che una curva descritta dall'equazione $f(x, y) = 0$ passi per un punto $P(x_0_, y_0)$ se, e solo se, le coordinate del punto soddisfano tale equazione. In altre parole, ciò avviene esclusivamente quando, sostituendo $(x_0, y_0)$ al posto di $(x, y)$ nell'espressione $f(x, y) = 0$, si ottiene un'identità.]. 

Se si richiede il passaggio per tre punti distinti e non allineati, si ottiene un sistema lineare di tre equazioni in tre incognite che determina un'unica circonferenza.

#esempio[Trovare l'equazione della circonferenza passante per i punti $A(0,0)$, $B(1,1)$ e $C(4,0)$.

Si considera l'equazione canonica:
$ x^2 + y^2 + a x + b y + c = 0 $

Imponendo il passaggio per i tre punti si costruisce il sistema:
$ cases(
  c = 0,
  1 + 1 + a + b + c = 0,
  16 + 4a + c = 0
) $

Risolvendo il sistema si determinano i valori dei parametri:
$ a = -4, quad b = 2, quad c = 0 $

L'equazione della circonferenza cercata è:
$ x^2 + y^2 - 4x + 2y = 0 $]

==== La tangenza a una retta

Un'altra condizione comune è la tangenza a una retta data. In termini analitici, si imposta il sistema tra l'equazione della retta e quella della circonferenza generica, ricavando l'equazione risolvente di secondo grado. Imponendo che il discriminante sia nullo ($Delta = 0$), si ottiene un'equazione di secondo grado nei parametri $a$, $b$ e $c$.

//
#esempio[Per calcolare la condizione sui coefficienti $a$, $b$, $c$ affinché la circonferenza $x^2 + y^2 + a x + b y + c = 0$ sia tangente alla retta $x - 2y - 1 = 0$, si imposta il sistema:
$ cases(
  x^2 + y^2 + a x + b y + c = 0,
  x - 2y - 1 = 0
) $

Sostituendo la retta nella conica si ricava l'equazione risolvente:
$ 5y^2 + (4 + 2a + b)y + 1 + a + c = 0 $

Annullando il discriminante ($Delta = 0$), si ottiene la relazione cercata:
$ 4a^2 + b^2 + 4a b - 4a + 8b - 20c - 4 = 0 $]

Sebbene l'approccio algebrico sia standard, spesso non è il più efficiente. Ad esempio, la determinazione delle circonferenze tangenti a tre rette comporterebbe un sistema di ottavo grado con tre equazioni di secondo grado, a fronte di un massimo di quattro soluzioni reali geometricamente possibili. È dunque preferibile sfruttare le proprietà geometriche della curva.

#esempio[Riconsideriamo la ricerca della circonferenza passante per $A(0, 0)$, $B(1, 1)$ e $C(4, 0)$, già vista in precedenza. I segmenti $overline(A B)$, $overline(B C)$ e $overline(A C)$ sono corde della curva; il centro $O$ corrisponde quindi al circocentro del triangolo $A B C$, individuato dall'intersezione degli assi delle corde.

Per via geometrica, determiniamo l'intersezione di due assi:
- l'asse di $overline(A C)$ (segmento orizzontale) è la retta verticale: $x = 2$
- l'asse di $overline(A B)$ passa per il punto medio $M(1/2, 1/2)$ con coefficiente angolare $m = -1$ (antireciproco di $m_(A B) = 1$): $x + y - 1 = 0$

Il sistema tra i due assi fornisce il centro $O(2, -1)$. Il raggio al quadrato è $r^2 = |O A|^2 = 2^2 + (-1)^2 = 5$. L'equazione è:
$ (x - 2)^2 + (y + 1)^2 = 5 $
Dal punto di vista tecnico, non vi sono differenze significative rispetto alla strategia adottata in precedenza, tuttavia questo approccio risulta indubbiamente più raffinato. La @grafico_equazione_circonferenza1 illustra chiaramente la strategia adottata.

#grafico_equazione_circonferenza1

][Nel problema delle circonferenze tangenti a tre rette assegnate, se queste individuano un triangolo, i centri delle quattro soluzioni possibili corrispondono all'incentro (circonferenza inscritta) e ai tre ex-centri (circonferenze ex-inscritte), determinabili analiticamente come intersezione delle bisettrici, come mostrano nella figura  @grafico_equazione_circonferenza2.

Se due delle tre rette sono parallele, la configurazione si riduce a due sole soluzioni (i cui centri giacciono sulla retta parallela mediana). Se infine le tre rette appartengono a un medesimo fascio (proprio o improprio), il problema non ammette alcuna soluzione.

#grafico_equazione_circonferenza2

][Determinare le circonferenze tangenti a una retta $r$ e a una retta $s$ nel punto $P in s$, sapendo che $r$ ed $s$ si intersecano in un punto $A != P$.

I centri delle circonferenze cercate devono soddisfare simultaneamente due condizioni geometriche:
+ giacere sulla retta perpendicolare a $s$ condotta passante per il punto di tangenza $P$.
+ giacere sulle bisettrici degli angoli formati dalle due rette $r$ ed $s$.

Come si nota nella @grafico_equazione_circonferenza3, i centri sono quindi individuati dalle intersezioni tra la perpendicolare in $P$ e le due bisettrici. I rispettivi raggi si ottengono calcolando la distanza tra i centri trovati e il punto $P$.

Nel caso particolare in cui le rette $r$ ed $s$ siano parallele, il procedimento si semplifica: la retta perpendicolare a $s$ in $P$ viene intersecata con la retta parallela mediana (bisettrice della striscia delimitata da $r$ e $s$), riducendo il problema a un'unica soluzione reale.

#grafico_equazione_circonferenza3
][Determinare la circonferenza passante per un punto $A$ e tangente a una retta $r$ in un punto $P$.

Il centro della circonferenza deve soddisfare contemporaneamente due vincoli geometrici:
+ giacere sulla retta perpendicolare a $r$ condotta passante per il punto di tangenza $P$.
+ giacere sull'asse del segmento $A P$ (luogo dei punti equidistanti dagli estremi $A$ e $P$).

Il centro si ottiene come punto di intersezione tra la perpendicolare e l'asse del segmento. Il raggio coincide con la distanza del centro da $P$ (o da $A$), come è possibile notare nella @grafico_circonferenza_tangente_punto.

#grafico_circonferenza_tangente_punto
][Determinare le circonferenze passanti per due punti distinti $A$ e $B$ e tangenti a una retta $r$. Si assume che $A$ e $B$ non appartengano a $r$ e si trovino nel medesimo semipiano da essa delimitato.

In alternativa alla risoluzione algebrica (sistema di secondo grado generato dalle condizioni di passaggio e dal discriminante nullo), si applica il teorema della secante e della tangente. La retta $A B$ rappresenta una secante comune per le circonferenze cercate. Sia $S$ il punto di intersezione tra la retta $A B$ e la retta $r$, e sia $T$ il punto di tangenza incognito su $r$. Per il teorema, il segmento $overline(S T)$ è medio proporzionale tra le distanze dei punti di intersezione:
$ |overline(S T)|^2 = |overline(S A)| dot |overline(S B)| $

Per capire meglio, basta fare un esempio numerico, con $A(2,1)$, $B(4,2)$ e la retta $r: 2x - y = 0$.
La retta $A B$ ha equazione $x - 2y = 0$ e interseca la retta $r$ nell'origine $O(0,0)$, che assume il ruolo di punto $S$. Le distanze dall'origine sono:
$ |overline(O A)| = sqrt(2^2 + 1^2) = sqrt(5) \ |overline(O B)| = sqrt(4^2 + 2^2) = sqrt(20) = 2sqrt(5) $

Il segmento di tangenza deve soddisfare la relazione geometrica:
$ |overline(O T)|^2 = |overline(O A)| dot |overline(O B)| = sqrt(5) dot 2sqrt(5) = 10 \ |overline(O T)| = sqrt(10) $

I punti di tangenza $T$ corrispondono alle intersezioni tra la retta $r$ e la circonferenza ausiliaria con centro nell'origine e raggio $|overline(O T)| = sqrt(10)$:
$ cases(
  x^2 + y^2 = 10,
  2x - y = 0
) $

Il sistema ammette due soluzioni reali e distinte, che individuano due punti di tangenza simmetrici:
$ T_1(-sqrt(2), -2sqrt(2)), quad T_2(sqrt(2), 2sqrt(2)) $

I centri $O_1$ e $O_2$ si ottengono intersecando l'asse del segmento $A B$ ($4x + 2y - 15 = 0$) con le rette perpendicolari a $r$ condotte rispettivamente per $T_1$ e $T_2$:
- Perpendicolare in $T_1$: $x + 2y + 5sqrt(2) = 0$
- Perpendicolare in $T_2$: $x + 2y - 5sqrt(2) = 0$

Risolvendo i rispettivi sistemi lineari si ricavano le coordinate dei centri:
$ O_1 = ( (15 + 5sqrt(2))/3 , -(15 + 20sqrt(2))/6 ), quad O_2 = ( (15 - 5sqrt(2))/3 , -(15 - 20sqrt(2))/6 ) $

I raggi corrispondono alle distanze $|overline(O_1 T_1)|$ e $|overline(O_2 T_2)|$

#grafico_circonferenze_due_punti_tangente
]

=== Fasci di circonferenze

Considerando quanto discusso nella @cap_famiglie_curve, si prendono in esame ora due circonferenze, le cui equazioni sono rispettivamente:  
$ gamma_1: x^2 + y^2 + a_1 x + b_1 y + c_1 = 0 $  
$ gamma_2: x^2 + y^2 + a_2 x + b_2 y + c_2 = 0 $  

Una loro combinazione lineare si può scrivere come:  
$ lambda(x^2 + y^2 + a_1 x + b_1 y + c_1) + mu(x^2 + y^2 + a_2 x + b_2 y + c_2) = 0 $  

che si sviluppa nella forma:  
$  (lambda + mu)(x^2 + y^2) hs0+hs0 (a_1 lambda + a_2 mu)x hs0+hs0 (b_1 lambda + b_2 mu)y hs0+hs0 (c_1 lambda + c_2 mu) = 0 $  

Tale espressione rappresenta una circonferenza, a meno che non risulti nell'insieme vuoto, purché sia soddisfatta la condizione $lambda + mu != 0$. In caso contrario, se $lambda + mu = 0$, essa rappresenterà una retta. Assumendo $lambda != 0$, l'equazione precedente può essere riscritta ponendo $k = mu/lambda$:  
$ (1 + k)(x^2 + y^2) + (a_1 + a_2 k)x + (b_1 + b_2 k)y + (c_1 + c_2 k) = 0 $ <eq_fascio_circonferenze_parametro>

Questa espressione descrive una stessa famiglia di circonferenze per $k != -1$, con l'esclusione della circonferenza $gamma_1$, che viene comunque inclusa nel fascio considerandola come il caso limite per $k -> oo$.  

Tale insieme di circonferenze è noto come un fascio di circonferenze. Tuttavia, nel caso in cui $lambda + mu = 0$ (ovvero $k = -1$), le equazioni sopra riportate non rappresentano più una circonferenza, ma una retta. Questa retta particolare viene chiamata asse radicale del fascio. Può essere interpretata come una "circonferenza degenere" del fascio avente raggio infinito, da cui deriva la denominazione specifica. 

In linea generale, ogni equazione della forma sopra indicata rappresenta una circonferenza (se l'insieme non è vuoto e $k != -1$) o, altrimenti, una retta (per $k = -1$), che coincide con l'asse radicale del fascio. Inoltre, i due cerchi ottenuti dalla suddetta equazione per i valori particolari $k = 0$ e $k -> oo$ vengono definiti i circoli base del fascio, se non risultano insiemi vuoti.  

I fasci di circonferenze sono caratterizzati dalle proprietà seguenti:
+ Sostituendo nella relazione le due circonferenze base con altre due qualsiasi appartenenti allo stesso fascio, si ottiene nuovamente lo stesso fascio. Inoltre, combinando una circonferenza del fascio con l'asse radicale, se esistente, si può dedurre un'equazione della forma:
  $ x^2 + y^2 + (a_1 + a_2 k)x + (b_1 + b_2 k)y + (c_1 + c_2 k) = 0 $
  Tale equazione rappresenta ancora lo stesso fascio di circonferenze.
+ I centri delle circonferenze del fascio, se queste non sono concentriche, giacciono su una retta perpendicolare all'asse radicale, chiamata asse centrale del fascio.
+ Se le due circonferenze base del fascio si intersecano in due punti distinti $A$ e $B$, tutte le altre circonferenze del fascio passeranno attraverso gli stessi punti. Viceversa, qualsiasi circonferenza che passa per $A$ e $B$ appartiene al fascio. In questo caso, la retta che congiunge $A$ e $B$ costituisce l'asse radicale del fascio e il fascio viene definito ellittico.
+ Nel caso in cui le due circonferenze base del fascio siano tangenti in un punto $A$, tutte le circonferenze del fascio risulteranno tangenti reciprocamente in $A$. L'asse radicale in questo caso sarà la tangente comune nel punto di tangenza. Viceversa, ogni circonferenza tangente in $A$ all'asse radicale appartiene al fascio. Questo tipo di fascio è noto come fascio parabolico. Inoltre, la circonferenza degenere con raggio nullo che coincide con l'intersezione tra l'asse radicale e l'asse centrale fa parte del fascio; tale circonferenza è nota come punto limite o punto di Poncelet.
+ Se le due circonferenze base non hanno punti in comune, tutte le altre circonferenze del fascio saranno anch'esse prive di punti comuni. Nel caso in cui le due circonferenze base siano concentriche, allora tutte le circonferenze del fascio saranno a loro volta concentriche e non esisteranno né asse radicale né asse centrale. Invece, se le due circonferenze base non sono concentriche e non si intersecano, il fascio avrà due circonferenze degeneri di raggio nullo che appartengono al fascio, situate ai lati opposti rispetto all'asse radicale. Questi punti sono detti punti limite o punti di Poncelet e il fascio viene denominato fascio iperbolico.

Per individuare gli eventuali punti limite, è sufficiente ricavare il raggio imponendo che sia nullo nell'equazione del fascio. Questo richiede la risoluzione dell'equazione del secondo grado in $k$:
$ r_k = sqrt((a_1 + a_2 k)^2 + (b_1 + b_2 k)^2 - 4(c_1 + c_2 k)(1 + k)) / (2 |1 + k|) = 0 $

L'equazione così ottenuta fornisce, al massimo, due soluzioni per $k$.

#v(5em)
#esempio[Determinare le caratteristiche del fascio di circonferenze definito dall'equazione:
$ (1 + k)x^2 + (1 + k)y^2 - 6k x - 1 + 8k = 0 $

che può essere riformulata così:
$ (x^2 + y^2 - 1) + k(x^2 + y^2 - 6x + 8) = 0 $

Le due circonferenze base del fascio sono rispettivamente:
$ x^2 + y^2 - 1 = 0 \ x^2 + y^2 - 6x + 8 = 0 $

Queste non hanno punti in comune e non sono concentriche; pertanto, il fascio è di tipo iperbolico. L'asse radicale è caratterizzato dall'equazione $ x = 3/2 $

Per ogni valore di $k != -1$, il centro $C_k$ e il raggio $r_k$ della generica circonferenza del fascio sono dati da:
$ C_k = ( (3k)/(1+k) , 0 ), quad r_k = sqrt((9k^2 - (8k - 1)(1 + k))/(1 + k)^2) $

Per individuare i punti limite, si uguaglia il raggio a zero ($r_k = 0$) ed emergono due valori particolari di $k$:
$ k = (7 plus.minus 3sqrt(5))/2 $

Sostituendo questi valori nelle coordinate del centro $C_k$, si ottengono i punti limite:
$ L_1 = ( (7 + 3sqrt(5))/(3 + sqrt(5)) , 0 ), quad L_2 = ( (7 - 3sqrt(5))/(3 - sqrt(5)) , 0 ) $

Come si nota nella @grafico_fascio_circonferenze1, a seconda dei valori di $k$, il fascio si comporta in questa maniera:
- per $k -> -oo$, le circonferenze del fascio si avvicinano alla circonferenza base destra partendo dall'esterno
- per $-oo < k < -1$, le circonferenze si trovano tra l'asse radicale e la circonferenza base destra
- quando $k = -1$, l'equazione rappresenta solo l'asse radicale.
- per $-1 < k < 0$, le circonferenze sono comprese tra la circonferenza base sinistra e l'asse radicale
- per $k = 0$, si ottiene la circonferenza base sinistra
- per $0 < k < (7 - 3sqrt(5))/2$, le circonferenze sono interne alla circonferenza base sinistra
- per $k = (7 - 3sqrt(5))/2$, si raggiunge il punto limite $L_2$
- per $(7 - 3sqrt(5))/2 < k < (7 + 3sqrt(5))/2$, non esiste alcuna circonferenza reale
- per $k = (7 + 3sqrt(5))/2$, si raggiunge il punto limite $L_1$
- per $(7 + 3sqrt(5))/2 < k < +oo$, le circonferenze del fascio diventano interne alla circonferenza base destra.
- per $k -> +oo$, le circonferenze si contraggono verso la circonferenza base destra, provenendo dall'interno

Nel grafico del fascio si possono tracciare alcune delle circonferenze significative per i seguenti valori di $k$, procedendo dal punto limite $L_2$ fino al punto limite $L_1$: $(7 - 3sqrt(5))/2$, $0.1$, $0$ (circonferenza base sinistra), $-0.2$, $-0.4$, $-0.6$, $-1$ (asse radicale), $-2$, $-4$.

#grafico_fascio_circonferenze1

// TODO: problema con lista contenente formule matematiche frazionarie

][Determinare le caratteristiche del fascio di circonferenze descritto dall'equazione:
$ (1 + k)x^2 + (1 + k)y^2 - 4x - 1 - k = 0 $

che può essere riformulata così:
$ (x^2 + y^2 - 4x - 1) + k(x^2 + y^2 - 1) = 0 $

Le due circonferenze base che definiscono il fascio sono:
$ x^2 + y^2 - 4x - 1 = 0 \ x^2 + y^2 - 1 = 0 $

con centri rispettivamente in $C_2$ e $C_1$. Queste due circonferenze condividono i punti di intersezione $(0, plus.minus 1)$, e tutte le altre circonferenze appartenenti al fascio passeranno necessariamente attraverso questi due punti. L'asse radicale corrisponde al caso $k = -1$ ed è rappresentato dall'equazione $x = 0$, cioè l'asse delle ordinate. 

Osservazioni sui diversi valori di $k$:
- per $k -> -oo$, i centri delle circonferenze del fascio tendono a spostarsi verso $C_1$ da sinistra
- per $-oo < k < -1$, i centri si trovano a sinistra di $C_1$
- per $k = -1$, si ottiene l'asse radicale, rappresentato da una "circonferenza" con centro all'infinito
- per $-1 < k < 0$, i centri delle circonferenze si trovano oltre $C_2$
- per $k = 0$, si genera la circonferenza base destra
- per $0 < k < +oo$, i centri sono situati tra $C_1$ e $C_2$
- per $k -> +oo$, i centri delle circonferenze tendono a spostarsi verso $C_1$ da destra

Le circonferenze del fascio possono essere tracciate per specifici valori di $k$, in ordine dai centri più a sinistra a quelli più a destra: $k = -2$, $k = -4$, $k = -20$, $k -> -oo$ (circonferenza base sinistra), $k = 10$, $k = 2$, $k = 0.5$, $k = 0$ (circonferenza base destra), $k = -0.4$, $k = -0.8$.

#grafico_fascio_circonferenze2

][Determinare le caratteristiche del fascio di circonferenze descritto dall'equazione:  
$ (1 + k)x^2 + (1 + k)y^2 - 6x + 5(1 - k) = 0 $

che può essere riformulata così:  
$ (x^2 + y^2 - 6x + 5) + k(x^2 + y^2 - 1) = 0 $  

Le due circonferenze base del fascio sono:  
$ x^2 + y^2 - 6x + 5 = 0 \ x^2 + y^2 - 1 = 0 $

con centri rispettivamente in $C_2$ e $C_1$. Queste due circonferenze sono tangenti nel punto $T(1, 0)$, il che implica che tutte le altre circonferenze del fascio saranno anch'esse tangenti in quel punto.  

L'asse radicale, associato al valore $k = -1$, è la retta di equazione $x = 1$. Il raggio delle circonferenze del fascio si esprime come:  
$ r_k = sqrt((3/(1 + k))^2 - (5 - k)/(1 + k)) = lr(|(k - 2)/(1 + k)|) $

Osservando questa relazione:  
- per $k = 2$, il raggio si annulla, ottenendo una circonferenza degenere che coincide con il punto di tangenza comune $T$ 
- per ogni altro valore di $k != -1$, si ottiene una vera e propria circonferenza non degenere

La situazione può essere descritta nei seguenti casi:  
- per $k -> -oo$, i centri delle circonferenze tendono al centro $C_1$ da sinistra  
- per $-oo < k < -1$, le circonferenze hanno il centro a sinistra di $C_1$ 
- per $k = -1$, si ottiene l'asse radicale (il centro è idealmente all'infinito)  
- per $-1 < k < 0$, i centri si trovano a destra di $C_2$  
- per $k = 0$, si ottiene la circonferenza base con centro in $C_2$  
- per $0 < k < 2$, i centri delle circonferenze si trovano tra i punti $T$ e $C_2$  
- per $k = 2$, si ottiene la circonferenza degenere che coincide con il punto limite $T$ (noto anche come punto di Poncelet)  
- per $k > 2$, i centri delle circonferenze giacciono fra $C_1$ e $T$
- per $k -> +oo$, i centri delle circonferenze si avvicinano a $C_1$ da destra

Come negli esempi precendenti, nel grafico del fascio si possono tracciare alcune delle circonferenze significative per i seguenti valori di $k$, ordinati da quella con centro più a sinistra fino a quella più a destra: $k = -2$, $k = -4$, $k = -10$, $k -> -oo$ (circonferenza base sinistra), $k = 10$, $k = 2$ (punto limite in $T$), $k = 1$, $k = 0.2$, $k = 0$ (circonferenza base destra), $k = -0.2$, $k = -0.5$. Infine, viene incluso l'asse radicale corrispondente al valore $k = -1$.

#grafico_fascio_circonferenze3

]

== Parabola in forma conica

Sulla base del teorema in @teorema_parabola, la parabola è il luogo geometrico dei punti di un piano equidistanti da un punto fisso $F$ (detto fuoco) e da una retta fissa $d$ (detta direttrice), a patto che il fuoco $F$ non appartenga alla direttrice $d$#footnote[Nel caso $F$ appartenesse a $d$, il luogo degenererebbe nella retta passante per $F$, perpendicolare a $d$.].

#grafico_parabola_ruotata

La retta passante per $F$ e perpendicolare alla direttrice rappresenta l'asse di simmetria della parabola ed è chiamata asse della parabola. Denotiamo con $S$ il punto di intersezione tra l'asse della parabola e la direttrice: il punto medio $V$ del segmento $F S$ appartiene alla parabola e prende il nome di vertice.

In questa sede ci limiteremo a determinare l'equazione della parabola nei casi in cui la direttrice sia parallela a uno degli assi coordinati. Quando si fa riferimento a tali situazioni, si parla di equazione canonica della parabola.

Iniziamo considerando il caso in cui la direttrice è parallela all'asse $x$. Supponiamo che le coordinate del fuoco siano $F(p, q)$ e che l'equazione della direttrice sia $d: y = k$, con la condizione $q - k != 0$ per garantire che il fuoco non si trovi sulla direttrice. Il vertice $V$ avrà coordinate $(p, (q + k)/2)$. Indichiamo con $P(s, t)$ un generico punto del luogo cercato, e con $H(s, k)$ la proiezione di $P$ sulla direttrice. Affinché $P$ appartenga alla parabola, deve soddisfare la condizione:

$ |overline(P F)| = |overline(P H)| $

Questa uguaglianza può essere espressa come:
$ sqrt((s - p)^2 + (t - q)^2) = |t - k| $

Elevando entrambi i membri al quadrato e semplificando, otteniamo:
$ 2y(q - k) = x^2 - 2p x + p^2 + q^2 - k^2 $

Ora dividiamo entrambi i membri per $2(q - k)$, che sappiamo essere diverso da zero:
$ y = 1/(2(q-k))x^2 - p/(q-k)x + (p^2 + q^2 - k^2)/(2(q-k)) $

Introduciamo le seguenti notazioni:
$ a = 1/(2(q-k)) \ b = -p/(q-k) \ c = (p^2 + q^2 - k^2)/(2(q-k)) = p^2/(2(q-k)) + (q+k)/2 $

In questo modo, l'equazione può essere riscritta come:
$ y = a x^2 + b x + c, quad a != 0 $ <eq_parabola>

Il valore del coefficiente $a$ determina la concavità della parabola. Se $q > k$, allora $a > 0$, e la parabola ha concavità rivolta verso l'alto. Se invece $q < k$, allora $a < 0$, e la parabola ha concavità rivolta verso il basso. Pertanto, ogni parabola con direttrice orizzontale (e quindi con asse verticale) ha un'equazione della forma sopra indicata, con i coefficienti definiti come nelle espressioni precedenti.

Valgono anche le implicazioni inverse: ogni equazione del tipo 
$ y = a x^2 + b x + c $

rappresenta una parabola, il cui fuoco e la cui direttrice possono essere determinati risolvendo il seguente sistema nelle incognite $p, q, k$:
$ cases(
  a = 1/(2(q-k)),
  b = -p/(q-k),
  c = a p^2 + (q+k)/2
) $

//
Si può procedere nel seguente modo. Si considerino le equazioni seguenti:
$ cases(
  q - k = 1 / (2a),
  b = -2 a p => p = - b / (2a),
  c = a p^2 + (q + k) / 2 => c = b^2/(4a) + (q + k)/2
) $

Sviluppando il sistema derivante dalla prima e dalla terza equazione:
$ cases(
  q - k = 1 / (2a),
  q + k = (4a c - b^2) / (2a)
) $

Sarà possibile determinare con facilità i valori di $q$ e $k$. Il parametro $Delta$, definito come $Delta = b^2 - 4a c$, conduce ai seguenti calcoli, per il fuoco $F$ e la direttrice $d$:
$ F((-b) / (2a), (1 - Delta) / (4a)), quad d: y = (-1 - Delta) / (4a) $

Riguardo al vertice, considerando che $V$ è un punto della parabola, la sua ordinata può essere determinata sostituendo l'ascissa nella formula dell'equazione generale della parabola con asse verticale. In particolare:
$ V((-b) / (2a), -Delta / (4a)) $

Dall'espressione emerge che la parabola con asse verticale rappresenta il grafico di una funzione polinomiale di secondo grado. Maggiori approfondimenti sono disponibili nella @funzione_polinomiale_secondo_grado. Nel caso in cui la direttrice sia verticale e quindi l'asse orizzontale, i risultati saranno analoghi con uno scambio tra $x$ e $y$.

Per una parabola con asse orizzontale, l'equazione generale è:
$ x = a y^2 + b y + c $ <eq_parabola_asse_orizz>

In questo caso, la concavità sarà rivolta verso destra se $a > 0$, o verso sinistra se $a < 0$. Le coordinate del fuoco e l'equazione della direttrice vengono riportate come segue:
$ F((1 - Delta) / (4a), -b / (2a)), quad d: x = (-1 - Delta) / (4a) $

Per quando riguarda il vertice $V$:
$ V(-Delta / (4a), -b / (2a)) $

Qui, essendo $V$ un punto della curva, è possibile calcolare l'ascissa sostituendo l'ordinata nell'equazione @eq_parabola_asse_orizz.

Va evidenziato che una parabola con asse orizzontale non può essere rappresentata graficamente come una funzione se si mantengono le convenzioni secondo cui il dominio è rappresentato sull'asse delle $x$ e il codominio sull'asse delle $y$; in tal caso, infatti, a un valore del dominio possono corrispondere due valori di codominio, cosa che contraddirebbe la definizione di funzione.

D'altra parte, è utile trattare con maggiore dettaglio la parabola con asse verticale, poiché è più comune nelle applicazioni e può essere descritta graficamente nei termini convenzionali di una funzione. Quando nell'equazione generale @eq_parabola $c = 0$, la parabola passerà per l'origine; nel caso in cui anche $b = 0$, il vertice si troverà nell'origine. Qui, il coefficiente $a$ determinerà l'ampiezza della curva: un valore assoluto maggiore del parametro $a$ comporterà una parabola più stretta, mentre uno minore produrrà una curva più aperta, come si nota nella @grafico_famiglia_parabole.

#grafico_famiglia_parabole

Per i casi in cui $b$, $c$, o entrambi siano diversi da zero, è possibile applicare in modo efficace la tecnica del completamento del quadrato. Questo metodo permette di rappresentare la parabola come una traslazione di una parabola con il vertice nell'origine, senza dover ricorrere a formule particolari. 

Considerando l'equazione, un'equazione generale di una parabola con asse verticale può essere scritta nella forma:
$ y = a(x + b/(2a))^2 - (b^2 - 4a c)/(4a) $

oppure:
$ y + (b^2 - 4a c)/(4a) = a(x + b/(2a))^2 $

Da questa espressione si comprende immediatamente che una parabola generica del tipo $y = a x^2 + b x + c$ può essere vista come una traslazione della parabola $y = a x^2$. In particolare, il suo vertice non si trova più nell'origine, ma viene traslato nel punto:
$ V (-b/(2a), -Delta/(4a)) $

dove $Delta = b^2 - 4a c$. Questa formula fornisce infatti le coordinate del vertice.

#esempio[Consideriamo la parabola $y = 2x^2 - 12x + 17$. Possiamo riscriverla nella forma:
$ y + 1 = 2(x - 3)^2 $

che evidenzia chiaramente come questa parabola derivi dalla traslazione della parabola $y = 2x^2$, spostandone il vertice nel punto $(3, -1)$, come si vede dalla @grafico_parabola_traslata.

#grafico_parabola_traslata]

=== Tangenti a una parabola  

Per determinare le tangenti a una parabola, è possibile seguire i metodi generali applicabili a tutte le coniche. Tuttavia, se si deve trovare la tangente a una parabola con asse verticale in un punto specifico $P(x_0, y_0)$, risulta conveniente adottare un approccio più diretto.

Supponiamo di avere una parabola con asse verticale descritta dall'equazione $y = a x^2 + b x + c$, e consideriamo $P(x_0, y_0)$ come un suo punto. Ricorriamo quindi alle formule di sdoppiamento per calcolare l'equazione della tangente.

A partire dall'equazione della parabola $y = a x^2 + b x + c$, possiamo scrivere:  
$ (y + y_0)/2 = a x_0 + b (x + x_0)/2 + c $

Da questa equazione si ricava la formula della tangente:  
$ y = (2a x_0 + b)x + b x_0 + 2c - y_0 $

L'aspetto cruciale di questa formula è il coefficiente angolare della tangente. Possiamo dedurre che, se $P(x_0, y_0)$ appartiene alla parabola con asse verticale data da $y = a x^2 + b x + c$, il coefficiente angolare della tangente in $P$ è dato dalla relazione:  
$ m = 2a x_0 + b $  

#esempio[Determinare la tangente alla parabola $y = 2x^2 + 3x - 1$ nel punto di ascissa $x = 1$.  

Verifichiamo che il punto appartenga alla parabola: per $x = 1$, calcoliamo l'ordinata $y_0 = 2(1)^2 + 3(1) - 1 = 4$. Pertanto, il punto considerato è $P(1,4)$.

Applicando la formula del coefficiente angolare, otteniamo:  
$ m = 2 dot 2 dot 1 + 3 = 7 $

L'equazione della tangente è dunque:  
$ y - 4 = 7(x - 1) \ 7x - y - 3 = 0 $

Utilizzando le formule di sdoppiamento, arriviamo allo stesso risultato. Partendo da $y = 2x^2 + 3x - 1$, abbiamo:  
$ (y + 4)/2 = 2x + 3 thin (x + 1)/2 - 1 $  

che, semplificata, diventa:  
$ 7x - y - 3 = 0 $

Infine, approcciando il problema con il metodo $Delta = 0$, si risolve il sistema formato da:  
$ cases(
  y = 2x^2 + 3x - 1,
  y - 4 = m(x - 1)
) $  

ottenendo l'equazione risolvente:  
$ 2x^2 + (3 - m)x + (m - 5) = 0 $

Annullando il discriminante:  
$ (3 - m)^2 - 4 dot 2 dot (m - 5) = m^2 - 14m + 49 = 0 $  

da cui ricaviamo $m = 7$, in pieno accordo con i risultati precedenti.][Determinare le tangenti alla parabola $y = x^2 - 4x + 3$ passanti per il punto esterno $P(2, -5)$.  

Poiché una retta verticale non può essere tangente a una parabola con asse verticale, consideriamo solo il fascio di rette non verticali passanti per $P$. Poniamo a sistema:  
$ cases(
  y = x^2 - 4x + 3,
  y + 5 = m(x - 2)
) $

L'equazione che risolve il sistema è  
$ x^2 - (4 + m)x + 3 + 2m + 5 = 0 $  

il cui discriminante si annulla quando $m^2 - 16 = 0$, cioè per $m = plus.minus 4$. In questo caso, si individuano le due tangenti:  
$ 4x - y - 13 = 0 \ 4x + y - 3 = 0 $   

#grafico_parabola_tangenti
]

=== Determinare l'equazione di una parabola

L'equazione di una parabola con asse verticale o orizzontale si basa su tre parametri: $a$, $b$, $c$. Per definirla, servono quindi tre condizioni indipendenti e compatibili. Di seguito sono riepilogate le situazioni principali che possono presentarsi, con alcuni esempi pratici. È fondamentale specificare se la parabola cercata ha il suo asse verticale o orizzontale.
- Fuoco e direttrice: quando si conoscono sia il fuoco sia la direttrice, l'equazione può essere scritta direttamente utilizzando la definizione
- Passaggio per un punto: il passaggio della parabola per un punto genera una condizione di primo grado per i parametri $a$, $b$, $c$
- Vertice: conoscendo il vertice si ottengono due condizioni. La prima presuppone che la parabola passi per quel punto specifico. La seconda deriva dalla relazione $x_V = -b / (2a)$ Non è conveniente usare l'ordinata del vertice, in quanto essa introduce una condizione di secondo grado
- Fuoco: se sono definite le coordinate del fuoco, si ottengono due condizioni confrontando questi valori con le formule generali che descrivono il fuoco
- Direttrice nota: conoscendo l'equazione della direttrice si ottiene una condizione, tramite la sua forma analitica
- Tangente e punto di tangenza: in questo caso si ottengono due condizioni; la prima stabilisce che la parabola passa per il punto di tangenza, la seconda deriva dalla formula della tangente $m = 2a x_0 + b$
- Tangente senza il punto di tangenza: se si conosce solo la tangente, si ricorre al metodo del discriminante nullo ($Delta = 0$) per ricavare una condizione

#esempio[Determinare l'equazione della parabola avente fuoco $F(5/4, 0)$ e vertice $V(5/4, -1/8)$.

La parabola ha asse verticale poiché l'ascissa del fuoco e del vertice coincidono. Il sistema delle condizioni (ascissa del vertice e del fuoco, ordinata del fuoco e passaggio per il vertice) è il seguente:
$ cases(
  -b / (2a) = 5/4,
  (1 - Delta) / (4a) = 0,
  -1/8 = a(5/4)^2 + b(5/4) + c
) $

Risolvendo il sistema, si ottiene l'equazione della parabola:
$ y = 2x^2 - 5x + 3 $][Determinare l'equazione della parabola con asse orizzontale che passa per i punti $(-3, 0)$, $(7, -2)$ e $(-2, 1)$.

Utilizzando il passaggio per i tre punti si ricava il sistema:
$ cases(
  c = -3,
  7 = 4a - 2b + c,
  -2 = a + b + c
) $

Dopo aver risolto, si ottiene:  
$ x = 2y^2 - y - 3 $
][Trovare l'equazione della parabola con asse verticale che passa per i punti $(-1, 1)$ e $(2, 1)$, e che sia tangente alla retta $x - y + 3 = 0$.

Si parte dal sistema:
$ cases(
  y = a x^2 + b x + c,
  x - y + 3 = 0
) $

L'equazione risolvente del sistema è:
$ a x^2 + (b - 1)x + c - 3 = 0 $

Annullando il discriminante, si ricava un'equazione in $a$, $b$ e $c$. Unendo questa relazione con le condizioni di passaggio per i due punti dati, si ottiene il seguente sistema:
$ cases(
  (b - 1)^2 - 4a(c - 3) = 0,
  1 = a - b + c,
  1 = 4a + 2b + c
) $

Risolvendo il sistema, si ottengono due soluzioni:
$ y = -x^2 + x + 3 $  
$ y = -1/9 x^2 + 1/9 x + 11/9 $
][Determinare l'equazione della parabola con asse verticale che passa per il punto $A(-1, 2)$, il punto $B$ di ascissa $x = 1$, e che sia tangente in $B$ alla retta $3x - y - 3 = 0$.

Se il punto $B$ appartiene alla retta, la sua ordinata deve essere zero. Impostando le condizioni del passaggio per $A$, $B$ e la condizione di tangenza $m = 2a x_0 + b$ con $m = 3$ e $x_0 = 1$, si ottiene il sistema:
$ cases(
  2 = a - b + c,
  0 = a + b + c,
  3 = 2a + b
) $

Risolvendo il sistema, si trova:
$ y = 2x^2 - x - 1 $]

// TODO: trovare titolo sezione

Analizziamo analiticamente una caratteristica interessante delle parabole: se il profilo della parabola è una superficie perfettamente riflettente, allora ogni raggio emesso dal fuoco viene riflesso parallelamente all'asse della parabola. Al contrario, ogni raggio incidente parallelamente all'asse della parabola viene riflesso passando attraverso il fuoco. Questa proprietà è notevole#footnote[Per l'ellisse si osserva una proprietà analoga: i raggi che provengono da uno dei fuochi vengono riflessi sulla superficie dell'ellisse attraversando l'altro fuoco. Questa caratteristica, valida per la parabola, può essere interpretata come il caso limite di un'ellisse in cui uno dei due fuochi si allontana all'infinito.] e rappresenta anche un valido esercizio conclusivo sull'interazione tra rette e parabole.

Consideriamo una parabola di equazione $y = a x^2 + b x + c$ con asse verticale e un punto generico $P(p, q)$ appartenente alla parabola. Definiamo:
- $t$: la retta tangente alla parabola nel punto $P$;
- $n$: la retta normale (perpendicolare alla tangente) nel punto $P$;
- $f$: la retta passante per $F$ (fuoco) e $P$;
- $r$: la retta passante per $P$ e parallela all'asse della parabola.

Per dimostrare che gli angoli $alpha$ e $beta$ sono uguali, occorre verificare che le rette $n$ e $t$ siano rispettivamente le bisettrici degli angoli formati da $f$ e $r$.

Indichiamo con $F(s, u)$ le coordinate del fuoco, definite come:
$ s = -b / (2a), quad u = (1 - b^2 + 4a c) / (4a) $

Poiché il punto $P(p, q)$ appartiene alla parabola, si ha $q = a p^2 + b p + c$. Inoltre, i coefficienti angolari della retta tangente ($t$) e della normale ($n$) sono dati rispettivamente da:
$ m_t = 2a p + b, quad m_n = -1 / (2a p + b) $

L'equazione della retta parallela all'asse $r$ è $x - p = 0$, mentre la retta $f$, passante per il fuoco e il punto $P$, ha l'equazione:
$ (x - p)(u - q) = (y - q)(s - p) $

che si può scrivere come:
$ x(u - q) - y(s - p) - p u + q s = 0 $

Per individuare le bisettrici degli angoli determinati dalle due rette, utilizziamo la proprietà secondo cui i punti appartenenti alle bisettrici sono equidistanti dalle due rette. Dato un punto generico di coordinate $(x, y)$, la condizione di equidistanza si esprime così:
$ |x - p| = lr(|x(u - q) - y(s - p) - p u + q s|) / sqrt((u - q)^2 + (s - p)^2) $

Espandendo, otteniamo:
$ x - p = plus.minus (x(u - q) - y(s - p) - p u + q s) / sqrt((u - q)^2 + (s - p)^2) $

Consideriamo la bisettrice associata al segno "+" nel secondo membro della precedente relazione. Il suo coefficiente angolare ($m_1$) sarà:
$ m_1 = u - q - sqrt((u - q)^2 + (s - p)^2) / (s - p) $

Dobbiamo ora verificare che questo coefficiente angolare corrisponda a quello di una delle due rette tangenti o normali. Procederemo dimostrando che:
$ m_1 = m_n $

ovvero:
$ -1 / (2a p + b) = u - q - sqrt((u - q)^2 + (s - p)^2) / (s - p) $

Attribuendo al denominatore del secondo termine ($s - p$) il valore derivato dall'espressione di $s$, si ottiene:

$ sqrt((u - q)^2 + (s - p)^2) = (u - q) - 1/(2a) $

Semplificando ed effettuando le opportune sostituzioni dei valori di $s, u, q$ in funzione di $a, b, c$, arriviamo alla dimostrazione finale. Questa interessante caratteristica delle parabole viene utilizzata, ad esempio, nei fari delle automobili: quando la lampada è posizionata nel fuoco, i raggi vengono riflessi e si propagano parallelamente all'asse della parabola (configurazione relativa ai "fari abbaglianti"). Un'altra applicazione si trova nelle parabole impiegate come antenne riceventi, dove i raggi provenienti da una sorgente distante, considerati paralleli tra loro, vengono concentrati nel fuoco dell'antenna parabolica. //TODO: da aggiungere nelle note a margine?

#grafico_proprieta_riflessiva

== Ellisse e iperbole in forma canonica

=== Ellisse
Secondo il teorema (@teorema_ellisse), l'ellisse si definisce come il luogo geometrico dei punti nel piano la cui somma delle distanze da due punti fissi, detti fuochi, è costante e maggiore della distanza tra i fuochi stessi.

La retta che unisce i due fuochi $F_1$ e $F_2$ e funge da asse di simmetria viene chiamata asse focale o asse maggiore. Il punto medio $C$ del segmento $F_1 F_2$ è detto centro. La retta passante per il centro e perpendicolare all'asse focale, anch'essa di simmetria, è detta asse minore.

I punti in cui l'ellisse interseca l'asse focale e l'asse minore prendono il nome di vertici. I segmenti $C V_2$ o $C V_1$ sono detti semiassi maggiori, mentre i segmenti $C V_3$ o $C V_4$ sono detti semiassi minori.

È importante notare che la circonferenza rappresenta un caso particolare di ellisse in cui i due fuochi coincidono.

#grafico_ellisse_ruotata

Per determinare l'equazione dell'ellisse, si assume un sistema di coordinate cartesiane $O x y$ in cui l'asse delle ascisse coincide con l'asse focale e il centro dell'ellisse corrisponde all'origine $(0, 0)$.

Indichiamo con $-c$ e $c$ le ascisse dei due fuochi ($c > 0$, con $c$ che rappresenta quindi la semidistanza focale). Inoltre, sia $2a$ la somma costante delle distanze di un generico punto dell'ellisse dai due fuochi. Sulla base della figura 8.41, è evidente che:
$ 2a = |V_1 V_2| $

Se indichiamo con $P(x, y)$ un generico punto appartenente all'ellisse, si ha:
$ sqrt((x-c)^2 + y^2) + sqrt((x+c)^2 + y^2) = 2a $

Risolviamo questa equazione per dedurre la forma canonica dell'ellisse:
+ Separiamo una delle due radici e trasponiamo sull'altro lato:
  $ sqrt((x+c)^2 + y^2) = 2a - sqrt((x-c)^2 + y^2) $
+ Eleviamo entrambi i membri al quadrato e semplifichiamo:
  $ (x-c)^2 + y^2 = a^2 - c x $
+ Elevando nuovamente entrambi i lati al quadrato ed eseguendo ulteriori semplificazioni otteniamo:
  $ (a^2-c^2)x^2 + a^2 y^2 = a^2(a^2-c^2) $

Poiché si verifica che $a > c > 0$, risulta anche $a^2 > c^2$. Si può dunque introdurre un nuovo parametro $b > 0$, minore di $a$, tale che:
$ b^2 = a^2 - c^2 $

Riscrivendo l'equazione precedente, otteniamo infine la forma canonica dell'equazione dell'ellisse:
$ x^2 / a^2 + y^2 / b^2 = 1 $

Dove i punti $(plus.minus a, 0)$ e $(0, plus.minus b)$ rappresentano rispettivamente i vertici sull'asse maggiore e quelli sull'asse minore. Da questa forma risulta evidente che $a$ è il semiasse maggiore e $b$ è il semiasse minore.

La determinazione del parametro $c$ per un'ellisse può variare in base alla disposizione dei fuochi rispetto agli assi. Quando l'asse focale è parallelo all'asse orizzontale e il centro dell'ellisse è nell'origine, il valore del semiasse $c$ è calcolato come segue:
$ c = sqrt(a^2 - b^2) wide text("con ") a > b. $

Nel caso in cui il centro dell'ellisse venga spostato nel punto $C(x_C, y_C)$, l'equazione generale diventa:
$ ((x - x_C)^2) / a^2 + ((y - y_C)^2) / b^2 = 1. $

Se invece l'asse focale dell'ellisse è verticale, con i fuochi nei punti $(0, plus.minus c)$, e la costante della somma delle distanze dai fuochi è indicata con $2b$, si ottiene un'equazione analoga. In questo caso, però, valgono le seguenti relazioni:
$ a^2 = b^2 - c^2 wide text("con ") a < b, $
e il calcolo del parametro $c$ sarà:
$ c = sqrt(b^2 - a^2). $

Le equazioni generali per l'ellisse (sia con asse focale orizzontale che verticale) vengono denominate "equazioni dell'ellisse riferita agli assi", poiché gli assi dell'ellisse coincidono con quelli del sistema di coordinate.

Riassumendo, l'equazione di un'ellisse con centro nel punto $C(x_C, y_C)$ e fuochi situati su una retta parallela a uno degli assi coordinati è:
$ ((x - x_C)^2) / a^2 + ((y - y_C)^2) / b^2 = 1, $

dove:
- $a$ e $b$ sono i semiassi,
- $a > b$ se l'asse focale è orizzontale,
- $a < b$ se l'asse focale è verticale.

In entrambi i casi, la semidistanza focale è data dalla formula:
$ c = sqrt(|a^2 - b^2|). $

Si possono quindi interpretare $a$ come la lunghezza del semiasse orizzontale e $b$ come quella del semiasse verticale. A seconda della relazione tra $a$ e $b$, i fuochi si trovano rispettivamente sull'asse orizzontale o verticale.

=== L'iperbole
Come stabilito dal teorema in @teorema_iperbole, l'iperbole è il luogo geometrico dei punti appartenenti al piano per i quali il valore assoluto della differenza delle distanze da due punti fissi, detti fuochi, risulta costante e diverso da zero.

#grafico_iperbole_ruotata

Nell'analisi dell'iperbole, si mantengono le stesse denominazioni già utilizzate per l'ellisse, laddove applicabili. In particolare, la retta che attraversa i due fuochi $F_1$ ed $F_2$, e che è un asse di simmetria, si chiama asse focale, asse principale o asse trasverso; il punto medio del segmento $F_1 F_2$ si chiama centro (indicato con $C$); la retta passante per il centro e perpendicolare all'asse focale si chiama asse secondario o asse non trasverso; i punti in cui l'iperbole interseca l'asse focale sono detti vertici e il segmento $C V_1$ (o $C V_2$) viene denominato semiasse trasverso.

// grafico

Per ottenere un'equazione cartesiana dell'iperbole, si adotta un sistema di riferimento tale che l'asse focale risulti orientato orizzontalmente o verticalmente. Le convenzioni usate sono analoghe a quelle viste per l'ellisse:
- se l'asse focale è orizzontale, la costante rappresentata dal valore assoluto della differenza delle distanze di un punto sull'iperbole dai due fuochi è indicata con $2a$.
- se, invece, l'asse focale è verticale, tale costante si indica con $2b$.

In entrambi i casi, la distanza focale è rappresentata dal valore $2c$.

Ripetendo calcoli e ragionamenti simili a quelli effettuati per l'ellisse, si ottiene la seguente forma canonica dell'equazione dell'iperbole:
- se l'asse focale è l'asse $x$:
  $ x^2 / a^2 - y^2 / b^2 = 1 $
- se l'asse focale è l'asse $y$:
  $ -x^2 / a^2 + y^2 / b^2 = 1 $
In entrambi i casi, vale la relazione:
$ c = sqrt(a^2 + b^2) $

Le rette di equazione
$ x : a = plus.minus y : b, wide text("ovvero ") y = plus.minus b / a x $
sono dette asintoti dell'iperbole. Queste rette rappresentano le direzioni alle quali i rami dell'iperbole si avvicinano indefinitamente man mano che ci si allontana dall'origine. Sebbene in maniera non del tutto rigorosa, gli asintoti si possono descrivere come "tangenti all'infinito" dell'iperbole.

Le #ref(<grafico_iperbole_tangente1>, supplement: "Figure") e #ref(<grafico_iperbole_tangente2>, supplement: none) aiutano a visualizzare meglio tali concetti, evidenziando il significato geometrico dei parametri $a$ e $b$ nell'equazione. In particolare: quando l'asse focale è orizzontale, i vertici $V_1$ e $V_2$ hanno le ascisse indicate rispettivamente da $plus.minus a$; mentre, quando l'asse focale è verticale, i vertici si trovano alle ordinate $plus.minus b$.

#grafico_iperbole1-2

Le equazioni dell'iperbole il cui asse focale coincide con l'asse $x$ o l'asse $y$ vengono chiamate, analogamente al caso dell'ellisse, equazioni dell'iperbole riferita agli assi. Questo perché gli assi dell'iperbole corrispondono agli assi del sistema di coordinate cartesiane.

Se il centro dell'iperbole non coincide con l'origine del sistema di riferimento, è sufficiente effettuare una traslazione, analogamente a quanto fatto per l'ellisse. In questo caso, si ottengono le seguenti equazioni:

$ ((x - x_C)^2) / a^2 - ((y - y_C)^2) / b^2 = 1, \ -((x - x_C)^2) / a^2 + ((y - y_C)^2) / b^2 = 1 $

rispettivamente per l'asse focale orizzontale e quello verticale.

Similmente a quanto avviene per l'ellisse, il parametro $a$ può essere interpretato come la lunghezza del semiasse orizzontale, mentre il parametro $b$ rappresenta la lunghezza del semiasse verticale. A seconda dei segni presenti nel primo membro dell'equazione, i fuochi dell'iperbole si troveranno lungo l'asse orizzontale oppure lungo l'asse verticale.

=== Confronto fra ellisse e iperbole <confronto-ellisse-iperbole>

Come evidenziato nei paragrafi precedenti, le equazioni canoniche dell'ellisse e dell'iperbole presentano una struttura molto simile. Questa similitudine rende utile riassumere le formule fondamentali come segue.

Le equazioni canoniche di un'ellisse o di un'iperbole con assi paralleli agli assi coordinati, caratterizzate da semidistanza focale $c$, semiassi orizzontale $a$ e verticale $b$, e centro con coordinate $(x_C, y_C)$, possono essere espresse in questa forma:
$ plus.minus ((x - x_C)^2) / a^2 plus.minus ((y - y_C)^2) / b^2 = 1. $ <eq-canonica-ellisse-iperbole>

Si possono distinguere quattro diversi casi a seconda della combinazione dei segni nel primo membro dell'equazione:
+ "-,-": l'equazione non ammette soluzioni, poiché il primo membro sarà minore o uguale a zero, mentre il secondo sarà sempre strettamente positivo.
+ "+,+": è un'ellisse con centro in $C(x_C, y_C)$, asse orizzontale lungo $2a$, asse verticale lungo $2b$, e i fuochi disposti lungo l'asse maggiore.
+ "+,-": è un'iperbole con centro in $C(x_C, y_C)$, asse orizzontale lungo $2a$, asse verticale lungo $2b$, e i fuochi situati sull'asse orizzontale.
+ "-,+": è un'iperbole con centro in $C(x_C, y_C)$, asse orizzontale lungo $2a$, asse verticale lungo $2b$, e i fuochi situati sull'asse verticale.

Per quanto riguarda la semidistanza focale, le formule da applicare sono le seguenti:
- Per l'ellisse:
  $ c = sqrt(|a^2 - b^2|) $
- Per l'iperbole:
  $ c = sqrt(a^2 + b^2) $

Nel caso particolare dell'iperbole, le sue rette asintotiche sono descritte dall'equazione:
$ (x - x_C) / a = plus.minus (y - y_C) / b. $

Questa relazione può essere ricavata uguagliando a zero il primo membro dell'equazione generale dell'iperbole riportata sopra.

Per tracciare le curve si procede nel seguente modo:
+ Identificare il centro $C(x_C, y_C)$ e localizzare i quattro vertici con coordinate $(x_C plus.minus a, y_C)$ e $(x_C, y_C plus.minus b)$.
+ Disegnare un rettangolo con lati paralleli agli assi coordinati che passi per i quattro vertici individuati.
+ Se è un'ellisse, la curva sarà internamente tangente al rettangolo.
+ Se è un'iperbole:
  - Tracciare le rette che passano attraverso le diagonali del rettangolo; queste rappresentano gli asintoti dell'iperbole.
  - Disegnare la curva come tangente esterna al rettangolo in due dei suoi vertici e asintoticamente tangente alle rette asintotiche. L'asse focale sarà orizzontale o verticale in base ai segni del primo membro dell'equazione.

Le #ref(<grafico_ellisse_rettangolo>, supplement: "Figure"), #ref(<grafico_iperbole_rettangolo>, supplement: none) e #ref(<grafico_iperbole_verticale_rettangolo>, supplement: none) mostrano un esempio specifico di questa costruzione, considerando il caso in cui il centro si trova nell'origine degli assi cartesiani.

#grafico_ellissi_iperbole

Procedendo con i calcoli e le opportune semplificazioni, l'equazione @eq-canonica-ellisse-iperbole può essere espressa nella seguente forma#footnote[Si precisa che nella notazione adottata abbiamo utilizzato le lettere $A$, $C$, $D$, $E$, $F$ come coefficienti, evitando appositamente la lettera $B$, che viene riservata per indicare il coefficiente del termine misto $x y$, qualora presente.]:

$ A x^2 + C y^2 + D x + E y + F = 0 $

dove $A$, $C$, $D$, $E$ e $F$ rappresentano specifici coefficienti. Si tratta di un'equazione di secondo grado in due incognite, caratterizzata dall'assenza del termine misto e dalla non nullità dei coefficienti di $x^2$ e $y^2$. Nel paragrafo /* TODO */analizzeremo il problema inverso, ovvero come determinare le caratteristiche e rappresentare graficamente le soluzioni di un'equazione generale di secondo grado in due incognite, sempre priva del termine misto e con i coefficienti di $x^2$ e $y^2$ diversi da zero.

=== Eccentricità

Tanto per l'ellisse quanto per l'iperbole, il rapporto tra la semidistanza focale $c$ e il semiasse focale (che, nel caso dell'ellisse, corrisponde sempre al semiasse maggiore) prende il nome di eccentricità ed è indicato con la lettera $e$. 

Per quanto riguarda l'ellisse, questa relazione soddisfa sempre la condizione $e < 1$, mentre per l'iperbole vale $e > 1$. Sebbene si possa definire anche per la parabola, tale argomento esula dagli scopi del manuale. Tuttavia, si segnala che per una parabola l'eccentricità è pari a $1$.

L'eccentricità rappresenta una misura della "schiacciatura" dell'ellisse o dell'iperbole. Ad esempio, per un'ellisse con i fuochi posizionati sull'asse orizzontale, l'eccentricità è data da $c/a$, dove risulta tanto più vicina a $1$ quanto maggiormente i fuochi sono vicini ai vertici del semiasse maggiore. Questo concetto è evidente se consideriamo che:
$ e = c / a = sqrt(a^2 - b^2) / a = sqrt(1 - b^2 / a^2) $

#grafico_tre_ellissi

Nella @grafico_tre_ellissi sono illustrate tre configurazioni diverse per rendere più chiaro tale concetto. Va osservato che una circonferenza presenta eccentricità nulla, dal momento che $c = 0$ e $a = b$.

Nel caso di un'iperbole, qualora $a = b$, l'eccentricità assume il valore $sqrt(2)$. Infatti, per un'iperbole con asse focale orizzontale si verifica che:
$ e = c / a = sqrt(a^2 + b^2) / a = sqrt(1 + b^2 / a^2), $
da cui deriva che $e = sqrt(2)$ quando $a = b$. Questa particolare situazione verrà analizzata nel dettaglio nel paragrafo /* TODO */ dedicato all'iperbole equilatera.

//
== Equazione di secondo grado in due incognite senza termine misto <cap-secondo-grado-due-incognite>

Esaminiamo un'equazione di secondo grado in due incognite priva del termine misto, che assume la forma seguente:
$ A x^2 + C y^2 + D x + E y + F = 0 $ <eq-secondo-grado-due-incognite>
dove si suppone che i coefficienti $A$ e $C$ non possano essere contemporaneamente nulli. Per comprendere quale curva sia rappresentata e per tracciarla graficamente, è necessario analizzare i vari casi possibili:
+ Quando $A = 0$ e $D = 0$, l'equazione si riduce a:
  $ C y^2 + E y + F = 0 $
  In questo caso, si ottiene un'equazione di secondo grado nella sola variabile $y$:
  - se l'equazione ha due soluzioni reali ($y_1$ e $y_2$), queste rappresentano due rette parallele all'asse delle $x$, quindi $y = y_1$ e $y = y_2$.
  - se l'equazione ha un'unica soluzione, si tratta di una retta parallela all'asse delle $x$, oppure di una coppia di rette coincidenti ($y = y_1$).
  - se non vi sono soluzioni, l'insieme è vuoto.

  In tutti i casi, la conica è degenere.
+ Quando $A = 0$ e $D != 0$:
  L'equazione si può riscrivere nella forma:
  $ x = -C / D y^2 - E / D y - F / D. $
  Questa rappresenta una parabola avente l'asse parallelo all'asse delle $x$.
+ Quando $C = 0$ e $E = 0$:
  L'equazione diventa:
  $ A x^2 + D x + F = 0. $
  Questo corrisponde a un'equazione di secondo grado nella sola variabile $x$:
  - se vi sono due soluzioni reali ($x_1$ e $x_2$), queste rappresentano due rette parallele all'asse delle $y$, quindi $x = x_1$ e $x = x_2$.
  - se vi è un'unica soluzione, si ha una retta parallela all'asse delle $y$, oppure una coppia di rette coincidenti ($x = x_1$).
  - se non vi sono soluzioni, l'insieme è vuoto.

  Anche in questo caso, la conica è degenere.
+ Quando $C = 0$ e $E != 0$:
  L'equazione può essere riscritta come segue:
  $ y = -A / E x^2 - D / E x - F / E. $
  In questo caso, si ottiene una parabola con l'asse parallelo all'asse delle $y$.
+ Quando $A != 0$ e $C != 0$:
  Per analizzare questo caso, si utilizza la tecnica del completamento dei quadrati. Riscrivendo l'equazione di partenza:
  $ A x^2 + C y^2 + D x + E y + F = A (x^2 + D / A x) + C (y^2 + E / C y) + F $
  Procedendo con il completamento dei quadrati, si ottiene:
  $ A (x + D / (2A))^2 + C (y + E / (2C))^2 + F - D^2 / (4A) - E^2 / (4C) $
  Definendo:
  $ x_C = -D / (2A), wide y_C = -E / (2C), wide H = -F + D^2 / (4A) + E^2 / (4C) $
  l'equazione può essere espressa in forma centrata:
  $ A (x - x_C)^2 + C (y - y_C)^2 = H $
  A questo punto, si distinguono due casi principali.
    + con $H$ uguale a zero:
      - se i coefficienti $A$ e $C$ sono concordi (ovvero hanno lo stesso segno), l'equazione diventa:
        $ A (x - x_C)^2 + C (y - y_C)^2 = 0 $ il cui unico punto soluzione è $(x_C, y_C)$. Si tratta, in questo caso, di una conica degenere.
      - se invece i coefficienti $A$ e $C$ sono discordi, è necessario riscrivere l'equazione portando uno dei due termini al secondo membro ed estraendo le radici quadrate:
        $ sqrt(|A|) (x - x_C) = plus.minus sqrt(|C|) (y - y_C) $
        che equivale a un sistema di due rette incidenti nel punto $(x_C, y_C)$. Anche in questo caso si tratta di una conica degenere.
    + con $H$ diverso da zero, dividendo entrambi i membri per $H$ e portando i coefficienti $A$ e $C$ al denominatore, si ottiene:
      $ ((x - x_C)^2) / (H / A) + ((y - y_C)^2) / (H / C) = 1 $ Definendo:
      $ sqrt(lr(|H / A|)) = a^2, quad sqrt(lr(|H / C|)) = b^2 $
      l'equazione diventa:
      $ plus.minus ((x - x_C)^2) / a^2 plus.minus ((y - y_C)^2) / b^2 = 1 $
      L'equazione @eq-secondo-grado-due-incognite rappresenta quindi un'ellisse, un'iperbole o un insieme vuoto, in base ai segni relativi di $A$, $C$ e $H$. Questo aspetto è già stato analizzato nel dettaglio nella @confronto-ellisse-iperbole.

//
#esempio[Disegnare il grafico della conica seguente:
$ x^2 + 2y^2 - 2x - 8y + 7 = 0 $

Per semplificare, riscriviamo l'equazione:
$ (x^2 - 2x) + 2(y^2 - 4y) + 7 = \
= (x^2 - 2x + 1) + 2(y^2 - 4y + 4) + 7 - 1 - 8 = \
= (x - 1)^2 + 2(y - 2)^2 - 2 $

Ora possiamo riscrivere l'equazione nella forma:
$ ((x - 1)^2) / 2 + ((y - 2)^2) / 1 = 1. $

Da ciò si deduce che si tratta di un'ellisse centrata nel punto $(1, 2)$, con semiassi $sqrt(2)$ e $1$. Poiché il semiasse maggiore corrisponde a quello orizzontale, l'asse focale sarà orizzontale.

Ricaviamo ora la distanza focale $c$:
$ c = sqrt(2 - 1) = 1 $

I fuochi risultano quindi essere nei punti $F_1(0, 2)$ e $F_2(2, 2)$. 

#grafico_ellisse_traslata
][Disegnare il grafico della conica seguente:
$ 4x^2 - y^2 - 16x + 2y + 15 = 0 $

Procediamo con la risoluzione:
$ 4(x^2 - 4x) - (y^2 - 2y) + 15 = \
= 4(x^2 - 4x + 4) - (y^2 - 2y + 1) + 15 - 16 + 1 = \
= 4(x - 2)^2 - (y - 1)^2. $

Possiamo quindi riscrivere l'equazione nella forma:
$ (x - 2)^2 = ((y - 1)^2) / 4, $
che rappresenta una coppia di rette intersecanti nel punto $C(2, 1)$, che è il centro della conica degenere.][Tracciare il grafico della seguente conica:
$ x^2 - 2y^2 - 2x + 4y - 3 = 0 $

L'equazione può essere riscritta come segue:
$ (x^2 - 2x) - 2(y^2 - 2y) - 3 = \
= (x^2 - 2x + 1) - 2(y^2 - 2y + 1) - 3 - 1 + 2 = \
= (x - 1)^2 - 2(y - 1)^2 - 2. $

Riorganizzando, l'equazione assume la forma:
$ ((x - 1)^2) / 2 - ((y - 1)^2) / 1 = 1, $

che rappresenta un'iperbole con asse focale orizzontale, centro in $C(1, 1)$, semiassi rispettivamente di $sqrt(2)$, lungo l'asse maggiore (orizzontale), e $1$, lungo l'asse minore (verticale), e distanza focale di $c = sqrt(a^2 + b^2) = sqrt(2 + 1) = sqrt(3). $

Pertanto, le coordinate dei fuochi risultano essere:
$ F_1(1 - sqrt(3), 1) wide text("e ") F_2(1 + sqrt(3), 1) $

Le equazioni degli asintoti dell'iperbole sono:
$ (x - 1) / sqrt(2) = plus.minus (y - 1) $

che si può anche esprimere nella forma equivalente:
$ y - 1 = plus.minus (x - 1) / sqrt(2) $

Questo consente di rappresentare il grafico dell'iperbole, il quale avrà i suoi rami che tendono asintoticamente alle rette sopra indicate e un orientamento con asse focale orizzontale.

#grafico_iperbole_traslata
]

== Iperbole equilatera

Un'iperbole viene definita equilatera quando $a = b$. Come già accennato, un'iperbole di questo tipo possiede un'eccentricità $e = sqrt(2)$. In tal caso, la sua equazione si semplifica nella forma:
$ (x - x_C)^2 - (y - y_C)^2 = plus.minus a^2 $

Se il centro dell'iperbole è posto nell'origine, l'equazione diventa:
$ x^2 - y^2 = plus.minus a^2 $

Poiché gli asintoti dell'iperbole equilatera sono perpendicolari tra loro e, nel caso in cui il centro sia sull'origine, coincidono con le bisettrici dei quadranti, si può effettuare una rotazione degli assi di $plus.minus pi/4$, facendo in modo che coincidano con gli stessi asintoti.

Considerando una rotazione di $pi/4$, le equazioni della trasformazione degli assi diventano:
$ cases(
  x = sqrt(2)/2 (x' - y'),
  y = sqrt(2)/2 (x' + y')
) $ <eq-iperbole-trasformazione-assi>

Sostituendo queste espressioni nell'equazione $x^2 - y^2 = plus.minus a^2$ e svolgendo semplici calcoli, si giunge alla forma:
$ x' y' = plus.minus a^2 / 2 $

Utilizzando nuovamente $x$ e $y$ per sovrascrivere gli assi con gli asintoti, possiamo concludere che un'iperbole equilatera riferita agli asintoti ha un'equazione del tipo:
$ x y = k, wide k != 0, wide |k| = a^2 / 2 = b^2 / 2 $

I due rami dell'iperbole si posizionano nel primo e nel terzo quadrante se $k > 0$, e nel secondo e quarto quadrante se $k < 0$. I vertici dell'iperbole si trovano nei punti di intersezione con una delle bisettrici dei quadranti, dove ascissa e ordinata risultano uguali oppure hanno segno opposto. Il loro modulo è dato da $sqrt(|k|)$, e le coordinate dei vertici sono espresse come:
$ (sqrt(k), sqrt(k)), wide (-sqrt(k), -sqrt(k)), \ (-sqrt(-k), sqrt(-k)), wide (sqrt(-k), -sqrt(-k)) $

Per quanto riguarda i fuochi, ricordiamo che
$ c = sqrt(a^2 + b^2) = sqrt(2a^2) = a sqrt(2) $
quindi le coordinate dei fuochi si ottengono moltiplicando quelle dei vertici per $sqrt(2)$.

Infine, considerando che nell'equazione $x y = k$, $x != 0$, possiamo riscriverla come:
$ y = k / x $

La formula risultante rivela che l'iperbole, in questo caso, rappresenta il grafico di una legge di proporzionalità inversa, un tema già trattato in precedenza (@funzioni). Anche per questo motivo, la rappresentazione dell'iperbole equilatera ha ampie applicazioni pratiche.

=== Funzione omografica

Analizziamo ora un'iperbole equilatera con il centro posizionato al di fuori dell'origine. La sua equazione sarà della forma:

$ (x - x_C)^2 - (y - y_C)^2 = plus.minus a^2 $ <eq-funzione-omografica1>

oppure:

$ x^2 - y^2 - 2x_C x + 2y_C y + x_C^2 - y_C^2 = plus.minus a^2 $ <eq-funzione-omografica2>

Proponiamo una rotazione degli assi di $pi/4$ e sostituiamo la relazione @eq-iperbole-trasformazione-assi nella @eq-funzione-omografica2. Dopo alcune semplificazioni si ottiene:

$ x' y' + sqrt(2)/2 (x' (x_C - y_C) - y' (x_C + y_C)) = -x_C^2 + y_C^2 plus.minus a^2 $

Tenendo conto che, grazie alla relazione (8.9):
$ x'_C = sqrt(2)/2 x_C + sqrt(2)/2 y_C, \
y'_C = -sqrt(2)/2 x_C + sqrt(2)/2 y_C $

l'equazione si può riscrivere nella forma:

$ x' y' - y'_C x' - x'_C y' = h $

Pertanto, possiamo concludere, riportando le variabili principali $x$ e $y$ per gli assi, che un'iperbole equilatera con centro nel punto $(x_C, y_C)$ e assi paralleli agli asintoti ha l'equazione:

$ x y - y_C x - x_C y = h $

#esempio[Considerare l'iperbole equilatera di equazione:
$ (x - 1)^2 - (y - 2)^2 = 1 $
il cui centro è $C(1, 2)$ e i semiassi hanno lunghezza pari a $1$. Supponendo una rotazione degli assi di $pi/4$ e utilizzando la procedura descritta in precedenza, l'equazione diventa:
$ x' y' - sqrt(2)/2 x' - 3sqrt(2)/2 y' = -2 $

Il centro $C$ assume allora le nuove coordinate:
$ C'(3sqrt(2)/2, sqrt(2)/2). $

Considerando che $x != x_0$, questa può essere trasformata nella forma seguente:
$ y = (y_0 x + h) / (x - x_0) $
la quale viene comunemente espressa come:

$ y = (a x + b) / (c x + d) $

L'equazione dimostra quindi che l'iperbole equilatera può essere interpretata come il grafico di una funzione reale di variabile reale:

$ f(x) = (a x + b) / (c x + d) $
con dominio naturale $x != -d/c$, denominata funzione omografica.

#grafico_iperbole_asintoti_ruotati

Va però sottolineato che non tutte le funzioni di questo tipo rappresentano il grafico di un'iperbole equilatera. Infatti:

+ Se $c = 0$, la funzione si riduce alla forma $f(x) = (a/d)x + (b/d)$, il cui grafico rappresenta una retta;
+ Se $a d - b c = 0$, si ha $b = (a d)/c$ e quindi:
  $ f(x) = (a x + b) / (c x + d) = (a x + (a d)/c) / (c x + d) = a/c, wide text("quando ") c x + d != 0, $
  il che corrisponde a una retta parallela all'asse delle ascisse, ad eccezione del punto con ascissa $-d/c$.]

== Equazione di secondo grado in due incognite con termine misto

Durante lo studio dell'iperbole equilatera, abbiamo incontrato equazioni di secondo grado in due incognite contenenti il termine misto $x y$. Ora vogliamo proporre una strategia generale per affrontarle. Prendiamo in considerazione una generica equazione del secondo grado in due incognite, che includa il termine misto:
$ A x^2 + B x y + C y^2 + D x + E y + F = 0, wide B != 0 $
e cerchiamo, se possibile, di individuare una rotazione degli assi tale da eliminare il termine $x y$; così facendo, l'equazione risultante potrà essere trattata tramite la tecnica descritta nella @cap-secondo-grado-due-incognite. Una generica rotazione degli assi è data dall'equazione @rotazione_assi1. Sostituendo le nuove espressioni di $x$ e $y$ nell'equazione precedente e semplificando, si ottiene una nuova equazione nella quale il coefficiente del termine misto $x' y'$ risulta:
$ -2A sin alpha cos alpha + B cos^2 alpha - B sin^2 alpha + 2C sin alpha cos alpha = \ = (-A + C) sin 2alpha + B cos 2alpha $

Affinché il termine misto scompaia, tale coefficiente deve essere nullo. Questo condiziona l'angolo $alpha$ a soddisfare la relazione:
$ cot 2alpha = (A - C) / B $

Tra le infinite soluzioni di questa equazione, sarà sufficiente scegliere un angolo acuto.

#esempio[Rappresentare graficamente la conica definita dall'equazione:
$ x^2 + x y + y^2 - x - 1 = 0 $

Utilizzando la relazione (8.103), si ottiene $cot 2alpha = 0$, da cui $alpha = pi/4$. Le equazioni di rotazione degli assi diventano:
$ cases(
  x = sqrt(2)/2 x' - sqrt(2)/2 y', 
  y = sqrt(2)/2 x' + sqrt(2)/2 y'
) $

Sostituendo queste espressioni nell'equazione originale e semplificando, otteniamo:
$ 3(x')^2 + (y')^2 - sqrt(2)x' + sqrt(2)y' - 2 = 0 $

Applicando la tecnica del completamento del quadrato, l'equazione si può riscrivere come:
$ (x' - sqrt(2)/6)^2 / (8/9) + (y' + sqrt(2)/2)^2 / (8/3) = 1. $

Il grafico (@grafico_ellisse_ruotata_assi) risultante nel sistema ruotato è un'ellisse con centro in:
$ C(sqrt(2)/6, -sqrt(2)/2) $
e semiassi:
$ a = sqrt(8/9), wide b = sqrt(8/3) $

#grafico_ellisse_ruotata_assi
]

== Altri luoghi geometrici
Utilizzando la geometria analitica, risulta semplice esaminare le caratteristiche di numerosi luoghi geometrici notevoli, la cui descrizione sintetica può risultare complessa. Di seguito presentiamo due esempi, utili sia a scopo illustrativo che come esercizio.

=== Circonferenza di Apollonio

Si considerino due punti $A$ e $B$ del piano. Il luogo dei punti $P$ di questo stesso piano per cui vale la relazione $ (|A P|)/(|P B|) = k, quad k > 0 and k != 1 $, è una circonferenza nota come circonferenza di Apollonio.

Il caso $k = 1$ è escluso perché banale: si ottiene in questo caso semplicemente l'asse del segmento $A B$.

Per analizzare questo problema in termini analitici, è utile considerare un sistema di coordinate opportuno che semplifichi i calcoli il più possibile. Scegliamo dunque un sistema cartesiano $O x y$ nel quale i punti dati abbiano coordinate $A(0, 0)$ e $B(a, 0)$, con $a > 0$. Indichiamo con $P(x, y)$ un punto generico del piano. Questo punto soddisfa la condizione del luogo geometrico se e solo se:
$ sqrt(x^2 + y^2) = k sqrt((x - a)^2 + y^2) $

Elevando entrambi i membri al quadrato, semplificando e dividendo per $k^2 - 1$ (operazione legittima poiché $k > 0$ e $k != 1$), si ottiene:
$ x^2 + y^2 - (2a k^2) / (k^2 - 1) x + (a^2 k^2) / (k^2 - 1) = 0 $

L'equazione risultante rappresenta una circonferenza, il cui centro e raggio sono dati rispettivamente da:
$ C((a k^2) / (k^2 - 1), 0), wide r = a k / (|k^2 - 1|) $

Dalla condizione: $ k^2 / (k^2 - 1) < 0 or k^2 / (k^2 - 1) > 1 $ deduciamo che il centro della circonferenza si trova sempre all'esterno del segmento $A B$. In particolare:
- se $0 < k < 1$, il centro è situato dalla parte di $A$.
- se $k > 1$, il centro è situato dalla parte di $B$.

Nel caso in cui $0 < k < 1$, la distanza del centro dal punto $A$ si calcola come:
$ (a k^2) / (1 - k^2) $
ed è inferiore al raggio della circonferenza; ciò implica che il punto $A$ è contenuto all'interno del cerchio. Analogamente, nel caso in cui $k > 1$, il punto $B$ sarà incluso nel cerchio. Queste proprietà sono intuitive, poiché un punto appartenente al segmento $A B$ deve necessariamente appartenere al luogo geometrico.

La @grafico_circonferenza_apollonio illustra questa situazione con i valori $a = 2$ e $k = 2$.

#grafico_circonferenza_apollonio

=== Eccentricità di una conica generica

Consideriamo un piano in cui sono date una retta $d$ e un punto $F$, che non appartiene alla retta ($F in.not d$). Il luogo geometrico costituito dai punti del piano, le cui distanze soddisfano la relazione
$ (|P F|) / d(P, d) = k, quad k > 0 and k != 1 $ rappresenta un'ellisse quando $0 < k < 1$ e un'iperbole quando $k > 1$. Nel caso particolare $k = 1$, si ottiene invece una parabola, caratterizzata da un fuoco $F$ e da una direttrice $d$. I termini di fuoco e direttrice rimangono validi anche nel caso generale trattato.

Per comprendere meglio, scegliamo un sistema di coordinate in cui la retta $d$ coincide con l'asse $y$, e il punto $F$ è posizionato in $(p, 0)$, con $p > 0$. Considerando un punto generico $P(x, y)$ appartenente al luogo geometrico descritto, la sua appartenenza è verificata dalla relazione
$ sqrt((x - p)^2 + y^2) = k |x| $

Elevando al quadrato entrambi i membri e semplificando, otteniamo:
$ (1 - k^2)x^2 + y^2 - 2p x + p^2 = 0 $

L'equazione risultante mostra chiaramente che si tratta di una conica. Applicando il metodo del completamento del quadrato, possiamo riscriverla nella forma:
$ (x - p / (1 - k^2))^2 / ((p^2 k^2) / (1 - k^2)^2) + y^2 / ((p^2 k^2) / (1 - k^2)) = 1 $

Questa è l'equazione di una conica con asse focale lungo l'asse $x$; i valori del centro, dei semiassi e della semidistanza focale sono dunque:
$ C = (p / (1 - k^2), 0), quad a = (p k) / (|1 - k^2|), quad b = (p k sqrt(|1 - k^2|)) / (|1 - k^2|), quad c = (p k^2) / (|1 - k^2|) $

La natura della conica dipende dal valore di $k$:
1. Se $0 < k < 1$, la conica è un'ellisse.
2. Se $k > 1$, la conica è un'iperbole.

In entrambi i casi, se si considera il simmetrico $F'$ di $F$ rispetto al centro della conica e la retta $d'$ simmetrica di $d$ rispetto al centro, si ha ancora:
$ (|P F'|) / d(P, d') = k $

Questo implica che anche $F'$ e $d'$ agiscono, rispettivamente, come fuoco e direttrice. Inoltre, sono valide le proprietà focali ben note delle ellissi e delle iperboli:
- per le ellissi: $|P F'| + |P F| = 2a$
- per le iperboli: $|P F'| - |P F| = 2a$

Si può osservare facilmente che il valore del rapporto
$ k = c / a $
corrisponde esattamente all'eccentricità dell'ellisse o dell'iperbole.

Questa definizione "unificata" di ellisse e iperbole attraverso fuoco e direttrice consente di integrare in maniera coerente le tre sezioni coniche (ellisse, parabola e iperbole). Tutte possono essere intese come luoghi geometrici dei punti del piano che mantengono costante il rapporto tra la distanza da un punto fisso (fuoco) e una retta fissa (direttrice), a condizione che il fuoco sia esterno alla direttrice:

Se $0 < k < 1$ il luogo geometrico rappresenta un'ellisse, quando $k = 1$ diventa una parabola, mentre per $k > 1$ si ottiene un'iperbole. Come evidenziato dall'equazione:
$ (1 - k^2)x^2 + y^2 - 2p x + p^2 = 0 $
il luogo può essere una circonferenza solo nel caso in cui $k = 0$. Tuttavia, questo valore non può essere ottenuto direttamente dal rapporto $(|P F|) / d(P, d)$. Si può comunque immaginare di raggiungere $k = 0$ allontanando la direttrice verso l'infinito. In tale scenario, il centro $C$ coincide con $F$ e anche l'altro fuoco finisce per sovrapporsi a $F$. La circonferenza può dunque essere interpretata, sotto questa prospettiva, come una conica caratterizzata da "eccentricità limite" nulla, con i due fuochi e il centro coincidenti, mentre le direttrici si trovano a distanza infinita.

Le #ref(<grafico_luogo_geometrico1>, supplement: "Figure") e #ref(<grafico_luogo_geometrico2>, supplement: none) mostrano due casi specifici: nella prima, con $p = 3$ e $k = 2$, è rappresentata un'iperbole; nella seconda, con $p = 3$ e $k = 1/2$, è illustrata un'ellisse.

#grafico_luogo_geometrico1

#grafico_luogo_geometrico2

== Altri tipi di equazioni
Le curve algebriche descritte da equazioni di grado superiore al secondo richiedono tecniche avanzate per essere studiate in dettaglio, argomenti che esulano dallo scopo di questo testo. Tuttavia, ci sono alcune situazioni che si possono affrontare con strumenti elementari, e su queste faremo qualche considerazione.

Un caso particolarmente semplice si presenta quando l'equazione della curva, nella forma $f(x, y) = 0$, può essere riscritta scomponendo il primo membro in un prodotto di fattori di grado pari o inferiore a 2. In tal caso, si può applicare la legge del prodotto nullo per analizzare la curva. Esaminiamo un esempio per chiarire il concetto.

#esempio[Rappresentare graficamente la curva data dall'equazione $(x - y^2)(x^2 + y^2 - 1) = 0$.

Questa equazione rappresenta l'unione dei grafici di due curve: $x - y^2 = 0$, che corrisponde a una parabola, e $x^2 + y^2 - 1 = 0$, che rappresenta una circonferenza. La loro intersezione determina il grafico complessivo della curva, illustrato nella @grafico_luogo_geometrico3.

#grafico_luogo_geometrico3]

Proponiamo ora ulteriori tecniche per analizzare curve più complesse, che includono sia curve di grado superiore al secondo sia curve non razionali.

#esempio[Tracciare il grafico della curva definita dall'equazione cartesiana $x^3 - y^2 = 0$.

Riorganizzando l'equazione nella forma $y^2 = x^3$, si osserva subito che $x$ deve essere maggiore o uguale a zero ($x >= 0$). Da questa condizione segue che $y = plus.minus sqrt(x^3) = plus.minus x^(3/2)$. Pertanto, la curva cercata è l'unione di due funzioni potenza con segno opposto, come illustrato nella @grafico_luogo_geometrico4.

#grafico_luogo_geometrico4


Tracciare il grafico della curva descritta dall'equazione $y = sqrt(x^2 - 2x)$.

Per iniziare, occorre considerare le condizioni di esistenza: $x < 0$ oppure $x > 2$. Successivamente, l'equazione iniziale può essere riscritta come il sistema:
$ cases(
  y >= 0, 
  y^2 = x^2 - 2x
) $

Il grafico dell'equazione $y^2 = x^2 - 2x$ rappresenta un'iperbole con centro in $(1, 0)$ e semiassi $a = b = 1$. Tuttavia, la condizione $y >= 0$ richiede di considerare unicamente la porzione superiore dell'iperbole, situata sopra l'asse delle $x$, come si vede nella @grafico_luogo_geometrico5.

#grafico_luogo_geometrico5

][Tracciare il grafico della curva definita dall'equazione $y = sqrt(1 - x^2) + 1$.

Per iniziare, l'argomento della radice quadrata impone che $-1 <= x <= 1$. Questo vincolo deriva dal fatto che $1 - x^2$ deve essere maggiore o uguale a zero. Riscrivendo l'equazione nella forma $y - 1 = sqrt(1 - x^2)$, ci accorgiamo che essa equivale al sistema:
$ cases(
  y >= 1, 
  (y - 1)^2 = 1 - x^2
) $

Il secondo punto rappresenta un'equazione di una circonferenza con centro in $(0, 1)$ e raggio $1$. Tuttavia, il vincolo della disequazione $y >= 1$ ci dice che dobbiamo considerare solo la semicirconferenza superiore, situata al di sopra della retta orizzontale $y = 1$. Si veda la @grafico_luogo_geometrico6 per visualizzare la soluzione.

#grafico_luogo_geometrico6

]

== Equazioni parametriche
Fino a questo punto, abbiamo analizzato rette e curve nel piano utilizzando un'equazione a due incognite, denominata rappresentazione cartesiana. Tuttavia, esistono altri metodi per descrivere gli stessi luoghi geometrici. Tra questi, accenneremo alla rappresentazione parametrica. Si tratta di semplici considerazioni introduttive, poiché una trattazione più approfondita sarà oggetto di corsi universitari futuri.

Se consideriamo due funzioni reali $f$ e $g$ di una variabile reale definite su un intervallo comune $I$, utilizziamo $t$ per indicare la variabile indipendente e $x$ e $y$ come variabili dipendenti. Al variare di $t$ in $I$, il punto con coordinate $(x, y) = (f(t), g(t))$ descrive un insieme nel piano che, sotto determinate condizioni, può essere interpretato come una curva nel senso intuitivo del termine. Le equazioni della curva vengono espresse così:
$ cases(
  x = f(t),
  y = g(t)
) $

Queste sono chiamate equazioni parametriche della curva.

#esempio[Tracciare per punti la curva definita dalle equazioni parametriche:
$ cases(
  x = t^3 - 2t^2,
  y = t^3 - t
) $

Per rappresentare questa curva è possibile costruire una tabella attraverso alcuni valori di $t$:

#tabella_curva_parametrica1

Per ottenere un grafico preciso sarebbe necessario calcolare molti più punti. La figura 8.57 illustra la risultante curva parametrica, tracciata con l'ausilio di un software specifico, evidenziando alcuni dei punti riportati nella tabella.

In alcuni casi, può essere possibile eliminare il parametro $t$, ad esempio esprimendolo in funzione di una delle variabili (se possibile), e sostituendo quindi il suo valore nell'altra equazione. In questo modo si ricava un'equazione che lega direttamente $x$ ed $y$: questa corrisponde alla forma cartesiana della curva.

#grafico_curva_parametrica1

][Determinare l'equazione cartesiana di una curva definita dalle equazioni parametriche:
$ cases(
  x = t - 1, 
  y = t^2
) $

Dalla prima equazione si ricava $t = x + 1$. Sostituendo questo valore di $t$ nella seconda equazione, si ottiene $y = (x + 1)^2$, ovvero $y = x^2 + 2x + 1$. Questa è l'equazione di una parabola.][Determinare l'equazione cartesiana di una curva definita dalle equazioni parametriche:
$ cases(
  x = 1 + 2 cos(t), 
  y = sin(t)
) wide t in [0, 2pi] $

Riscrivendo la prima equazione nella forma $(x - 1)/2 = cos(t)$ e sommando il quadrato di questa espressione con il quadrato della seconda equazione $y = sin(t)$, si ottiene:
$ ((x - 1)^2) / 4 + y^2 = 1. $

Questa è l'equazione di un'ellisse con centro nel punto $(1, 0)$ e semiassi di lunghezza pari a $2$ e $1$.]

Le equazioni parametriche sono particolarmente importanti poiché possono essere interpretate come leggi orarie del movimento di un punto nel piano: il parametro $t$ rappresenta il tempo, e la curva grafico descrive la traiettoria percorsa dal punto al variare del tempo.

Un aspetto da sottolineare è che una curva può avere diverse rappresentazioni parametriche. Se si considera solo la geometria della curva come insieme di punti, tutte le rappresentazioni sono equivalenti. Tuttavia, nel caso in cui ci interessino le leggi orarie del moto, le diverse rappresentazioni parametriche possono riferirsi a situazioni fisiche molto differenti, come sarà evidente con l'esempio seguente.

#esempio[Tracciare il grafico delle curve delle curve parametriche:

$ gamma_1: cases(x = t, y = 1), quad  gamma_2: cases(x = t^3, y = 1), quad gamma_3: cases(x = t sin(t), y = 1) $

Come si può osservare, in tutti e tre i casi il valore di $y$ rimane costante e uguale a $1$, quindi le curve risultano stendersi lungo la retta orizzontale $y = 1$. Variando il parametro $t$, si ottengono tutti i punti di questa retta, ma il comportamento delle tre curve differisce notevolmente in base alla definizione del parametro $x$:
+ $gamma_1$: rappresenta un moto rettilineo uniforme poiché $x = t$. Il punto si sposta lungo la retta con velocità costante
+ $gamma_2$: descrive un moto accelerato, con un'accelerazione che cresce al crescere di $t$, dato che $x = t^3$
+ $gamma_3$: corrisponde a un moto oscillante lungo la retta, con oscillazioni di ampiezza sempre maggiore, essendo $x = t sin(t)$

Determinare esattamente queste proprietà richiederebbe l'uso del calcolo differenziale per analizzare le velocità e le accelerazioni coinvolte. Tuttavia, anche calcolando i valori di $x$ corrispondenti a intervalli di tempo costanti ($t$) possiamo cogliere intuitivamente questa distinzione. La tabella sottostante riporta i valori di $x$ calcolati per ciascuna curva parametrica con valori specifici di $t$:

#tabella_curva_parametrica2

Dai valori ottenuti si può osservare quanto segue:
- per $gamma_1$, $x$ cresce in modo lineare rispetto a $t$
- per $gamma_2$, $x$ aumenta rapidamente con il cubo del tempo, traducendosi in una crescita molto più rapida rispetto a $gamma_1$
- per $gamma_3$, il valore di $x$ oscilla tra valori positivi e negativi, con un'ampiezza delle oscillazioni che tende a crescere con il valore di $t$

Questa analisi mostra che, pur restando nella stessa retta, i tre moti riflettono dinamiche completamente diverse.
]

=== Equazioni parametriche della retta

Consideriamo una retta definita dall'equazione cartesiana $a x + b y + c = 0$:
- se $a != 0$, ponendo $y = t$, si ottiene il sistema:
  $ cases(
    x = -b/a t - c/a, 
    y = t
  ) $ <eq-parametrica-retta1>
- se $b != 0$, ponendo $x = t$, si ottiene il sistema:
  $ cases(
    x = t, 
    y = -a/b t - c/b
  ) $ <eq-parametrica-retta2>

Le due espressioni sopra possono essere riscritte nella forma generale:
$ cases(
  x = x_0 + l t, 
  y = y_0 + m t
) $ <eq-parametrica-retta3>
dove queste sono le cosiddette equazioni parametriche canoniche della retta.

Invertendo il processo, ovvero ricavando il parametro $t$ da una delle due equazioni e sostituendolo nell'altra, possiamo tornare a un'equazione di primo grado nelle variabili $x$ e $y$, che corrisponde all'equazione cartesiana della retta.

Nel sistema @eq-parametrica-retta3, il punto di coordinate $(x_0, y_0)$ appartiene alla retta ed è ottenuto imponendo $t = 0$. Questo punto può essere definito punto iniziale o punto in evidenza della retta.

== Cenno sulle disequazioni in due incognite
Per le disequazioni in una sola incognita reale, l'uso della rappresentazione grafica era spesso opzionale. Tuttavia, nel caso delle disequazioni in due incognite, essa diventa pressoché inevitabile, poiché non esistono metodi analitici semplici per descrivere in modo esaustivo l'insieme delle soluzioni. Generalmente, la rappresentazione grafica avviene sul piano cartesiano. In questa breve introduzione ci concentreremo esclusivamente sulle disequazioni di primo e secondo grado, includendo casi di sistemi semplici.

Consideriamo il luogo geometrico dei punti nel piano che soddisfano un'equazione del tipo $f(x, y) = 0$. Nei casi di nostro interesse, tale luogo è una retta, se $f(x, y)$ è un polinomio di primo grado in due variabili, ad esempio $f(x, y) = a x + b y + c$, o una conica, se $f(x, y)$ è un polinomio di secondo grado in due variabili, come $f(x, y) = a x^2 + b x y + c y^2 + d x + e y + f$. Le disequazioni che affronteremo saranno espresse nella forma $f(x, y) > 0$, oppure $f(x, y) < 0$, $f(x, y) >= 0$, o $f(x, y) <= 0$.

Poiché la retta o la conica divide il piano in regioni distinte (tipicamente due, anche se l'iperbole ne genera tre, ma considereremo le due principali per semplificazione), la disequazione sarà verificata solo in una di queste regioni e non nell'altra. Sarà sufficiente scegliere un punto appartenente a una delle regioni per determinare in quale sia verificata la disequazione. Gli esempi successivi chiariranno meglio questo concetto.

Per la risoluzione di sistemi di disequazioni, sarà sufficiente individuare l'intersezione degli insiemi di soluzione relativi a ciascuna disequazione. Per le disequazioni che coinvolgono frazioni o prodotti, si utilizzeranno le regole relative ai segni, analogamente a quanto fatto per le disequazioni in un'incognita.

=== Disequazioni di primo grado

#esempio[Risolvere la disequazione $2x + 3y - 6 > 0$.

Iniziamo col rappresentare sul piano cartesiano la retta corrispondente all'equazione $2x + 3y - 6 = 0$. Successivamente, scegliamo un punto qualsiasi che non appartiene alla retta per verificarne l'inserimento nella disequazione. Usando le coordinate dell'origine degli assi $(0, 0)$, sostituendole nella disequazione si ottiene:
$ 2(0) + 3(0) - 6 = -6, $
e poiché $-6 > 0$ è falso, concludiamo che l'origine non appartiene all'insieme delle soluzioni.

Pertanto, l'insieme delle soluzioni è costituito dall'altro semipiano delimitato dalla retta e viene rappresentato graficamente con tratteggio nell'illustrazione della @grafico_disequazione_lineare1. La retta stessa non è inclusa nelle soluzioni poiché la disuguaglianza è strettamente maggiore.

#grafico_disequazione_lineare1

][Considerare la disequazione $x - 2y + 1 <= 0$. Per risolverla, si inizia rappresentando sul piano cartesiano la retta corrispondente all'equazione $x - 2y + 1 = 0$. Successivamente, si verifica il segno della disequazione sostituendo le coordinate di un punto, ad esempio l'origine $(0, 0)$. Sostituendo, si ottiene:
$ 1 <= 0 $
che risulta falso. Ciò implica che l'insieme delle soluzioni non comprende il semipiano in cui si trova l'origine, ma l'altro semipiano individuato dalla retta.

#grafico_disequazione_lineare2

Questo semipiano è evidenziato attraverso un tratteggio nella @grafico_disequazione_lineare2. In questo caso, la retta stessa appartiene all'insieme delle soluzioni, essendo soddisfatta l'uguaglianza nella disequazione.]

=== Disequazioni di secondo grado
#esempio[Risolvere la disequazione $x^2 - 3y^2 + 4x - 6y - 4 < 0$.

Rappresentando l'iperbole $x^2 - 3y^2 + 4x - 6y - 4 = 0$, possiamo verificare se l'origine soddisfa la disequazione sostituendo le coordinate $(0, 0)$. Si ottiene:
$ -4 < 0, $
ua disequazione vera. Questo indica che la disequazione è verificata nella parte del piano individuata dall'iperbole e comprendente l'origine (la regione tratteggiata nella @grafico_disequazione_iperbole). 

#grafico_disequazione_iperbole

L'iperbole, infatti, suddivide il piano in tre regioni distinte; tuttavia, considerando come si origina questa curva, le due regioni "interne" (quelle non tratteggiate in figura) possono essere viste come un'unica regione continua che si estende all'infinito. L'iperbole stessa, confine della regione tratteggiata, è esclusa dall'insieme delle soluzioni della disequazione.][Risolvere la disequazione $8x^2 - 4x y + 5y^2 - 100 <= 0$.

Rappresentando l'ellisse $8x^2 - 4x y + 5y^2 - 100 = 0$, verifichiamo nuovamente includendo le coordinate dell'origine $(0, 0)$ nella disequazione. Si ottiene:
$ -100 <= 0, $
un risultato valido. Pertanto, la disequazione è soddisfatta in tutta la parte interna all'ellisse, includendola completamente. Questa situazione è illustrata nella @grafico_disequazione_ellisse.

#grafico_disequazione_ellisse

]
==== Sistemi di disequazioni ed equazioni

Analogamente al caso con una sola incognita, è possibile considerare sistemi di disequazioni. In tal caso, si determina l'intersezione tra gli insiemi soluzione di ciascuna disequazione. Ad esempio, il sistema che combina le due disequazioni appena trattate avrà come insieme soluzione la regione tratteggiata rappresentata in @grafico_sistema_disequazioni.

#grafico_sistema_disequazioni

Particolarmente rilevanti nelle applicazioni sono anche i sistemi formati sia da equazioni sia da disequazioni a due incognite. La risoluzione di tali sistemi consiste nell'intersecare l'insieme delle soluzioni dell'equazione (una curva nei casi di interesse) con quello delle soluzioni della disequazione (un sottoinsieme appropriato del piano).

#esempio[Risolvere il sistema seguente:
$ cases(
  x^2 + y^2 - 1 = 0, 
  4x + 2y - 1 > 0
) $

L'insieme soluzione corrisponde all'arco di circonferenza evidenziato nella @grafico_sistema_misto. Questo risultato si ottiene intersecando la circonferenza (che rappresenta l'insieme delle soluzioni dell'equazione di secondo grado) con il semipiano tratteggiato (che rappresenta l'insieme delle soluzioni della disequazione di primo grado).

#grafico_sistema_misto

Nel caso in cui si debba risolvere una disequazione fratta o una disequazione che coinvolge prodotti, sarà sufficiente applicare la regola dei segni, come spiegato in precedenza.][Risolvere la disequazione:
$ (x^2 + y^2 - 1) / (4x + 2y - 1) >= 0 $

La risoluzione si basa sull'analisi dei segni del numeratore e del denominatore. Nella figura 8.64 vengono rappresentati graficamente:
- l'insieme di positività del numeratore (sulla sinistra)
- l'insieme di positività del denominatore (al centro)
- l'insieme in cui la disequazione è soddisfatta (sulla destra)

Il risultato finale include due archi di circonferenza, dai quali sono esclusi i punti estremi, e non include la retta identificata dal denominatore nullo. La @grafico_disequazione_fratta visualizza chiaramente tali insiemi e la loro combinazione per verificare la disequazione.

#grafico_disequazione_fratta

]
