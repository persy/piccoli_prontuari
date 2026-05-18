#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Le proprietà attrattive dei magneti sono note all'uomo da migliaia di anni e la loro capacità di indicare il nord geografico è utilizzata nella bussola da almeno sette secoli.

Anche il magnetismo però, come l'elettricità, è divenuto qualcosa di più di una mera curiosità scientifica solo nell'800, quando è stato scoperto il suo stretto legame con i fenomeni elettrici.

Le applicazioni tecnologiche di questa scoperta sono numerosissime e vanno dal telefono alla registrazione magnetica; anche i motori elettrici, di cui le nostre case sono piene, si basano sull'interazione tra elettricità e magnetismo.]

== Proprietà magnetiche della materia

Alcune sostanze, come la magnetite, hanno la proprietà di attrarre la limatura di ferro e di attrarsi a vicenda.

Questa caratteristica era già nota agli antichi Greci che, nei dintorni di Magnesia, nell'Asia Minore, scoprirono un minerale che aveva queste capacità attrattive, e lo chiamarono _Magnes lithos_ (pietra di Magnesia), oggi nota come magnetite, da cui deriva il termine di magnete, che designa tutti i minerali dotati di questa proprietà.

La magnetite è un magnete naturale, ma esistono anche delle sostanze, come il ferro e le sue leghe (acciai), il cobalto e il nichel, che, messe a contatto o nelle vicinanze di un magnete, ne acquistano le proprietà attrattive caratteristiche: si dice che vengono magnetizzati.

Tutte queste sostanze, che sono fortemente attratte da un magnete, sono dette ferromagnetiche.

La magnetizzazione di una sostanza ferromagnetica può essere permanente o temporanea.

La magnetizzazione permanente si verifica per esempio nell'acciaio che, in presenza di un magnete, acquista una magnetizzazione che permane anche quando il magnete che l'ha provocata viene allontanato (il materiale, cioè, diventa a sua volta un magnete).

La magnetizzazione temporanea, riscontrata per esempio nel ferro dolce, permane invece fintanto che è presente il magnete che l'ha provocata.

Accanto alle sostanze ferromagnetiche, ve ne sono altre che sono poco sensibili alle forze esercitate su di esse da un magnete, e che in base al loro comportamento sono distinte in altre due categorie: diamagnetiche e paramagnetiche.

Sono diamagnetiche quelle sostanze che, come l'acqua, il piombo, la grafite e il quarzo, vengono debolmente respinte da un magnete; sono paramagnetiche le sostanze, come l'alluminio e il sodio, che vengono debolmente attratte da un magnete.

Il grado di magnetizzazione di una sostanza viene espresso dalla permeabilità magnetica relativa (μ#sub[r]).

Nelle sostanze ferromagnetiche i valori della permeabilità magnetica possono raggiungere l'ordine di grandezza delle centinaia di migliaia, mentre nelle sostanze diamagnetiche e in quelle paramagnetiche la permeabilità è molto vicina all'unità: leggermente superiore per le sostanze paramagnetiche, più bassa per quelle diamagnetiche.
#figure(
  caption: [Valori di permeabilità magnetica relativa (μ#sub[r]) di alcune sostanze.],
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return main_scienze // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return main_scienze.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: left + horizon,
  columns: (3),
  table.header[Tipologia][Materiali][μ#sub[r]],
table.cell(rowspan: 3)[diamagnetici], [acqua], [0,99999],
[argento], [0,99998],
[germanio], [0,9999232],
table.cell(rowspan: 3)[paramagnetici], [aria], [ 	1,0000004],
[ossigeno gassoso], [1,00133],
[platino], [1,0002019],
table.cell(rowspan: 3)[ferromagnetici], [ferro puro], [5.000],
[lega ferro-silicio], [10.000], 
[leghe speciali], [1.000.000], 
)  
)
=== I poli magnetici

La calamita, termine con il quale si indicano in linguaggio comune i magneti permanenti, è una varietà della magnetite. Le proprietà attrattive della calamita sono concentrate alle sue estremità, mentre nella zona centrale una calamita è neutra. In genere una calamita è sagomata a ferro di cavallo o, più comunemente, a barretta: le sue estremità vengono dette poli magnetici. I poli magnetici di una calamita attirano la limatura di ferro o piccoli pezzetti di ferro posti nelle sue vicinanze.

Lasciata libera di ruotare, una calamita a forma di barretta (o di ago) si dispone naturalmente con una delle sue estremità (e sempre la stessa) in una direzione che individua approssimativamente il polo Nord geografico della Terra (questo fenomeno è alla base dell'invenzione della bussola): perciò il polo magnetico che punta verso il Nord geografico viene chiamato polo nord e l'altro polo sud.

Come avviene per le cariche elettriche, due poli magnetici della stessa natura si respingono, mentre due poli di natura opposta si attraggono: così, avvicinando due calamite libere di ruotare, esse si disporranno in modo che il polo nord dell'una si avvicini al polo sud dell'altra.

Se avviciniamo tra loro i poli nord (o sud) di due calamite, questi tenderanno a respingersi. Allo stesso modo in cui cariche elettriche dello stesso segno si respingono e cariche elettriche di segno opposto si attraggono. Ma l'analogia con le cariche elettriche si ferma qui, poiché nel caso dei magneti, a differenza di quanto accade per le cariche elettriche, non esistono poli isolati. Questo significa che un magnete è sempre composto di un polo nord e di un polo sud.

Se proviamo a tagliare un magnete al centro, sperando di dividere tra loro i due poli, otterremo soltanto un magnete più piccolo, ma alle due estremità vi saranno sempre un polo nord e un polo sud. Anche riducendo il magnete a dimensioni microscopiche si ottengono sempre due poli, o dipolo: è impossibile ottenere un polo magnetico isolato, o un monopolo.

#note(bottom)[== *🧩* La bussola magnetica <senza_numero>

La bussola magnetica è uno strumento che sfrutta il magnetismo terrestre ed è costituita da un ago magnetico, una sottile sbarretta di materiale magnetico montata su un perno in modo che sia libera di ruotare nel piano orizzontale senza attrito: lontano da altri magneti che potrebbero influenzarne il comportamento, l'ago magnetico si orienta spontaneamente in direzione Nord-Sud, lungo i meridiani terrestri.

In genere le bussole sono dotate di un quadrante suddiviso in 360 gradi, sul quale vengono segnati i punti cardinali, così da permettere l'orientamento. Sembra che la bussola fosse già nota in Cina (VIII sec.) e in Arabia (XI sec.) prima di divenire di uso comune in Occidente, ma non ci sono fonti sicure a questo riguardo.

La prima descrizione dettagliata della bussola e del suo funzionamento risale al 1269 ed è dovuta a uno studioso francese, noto come Peter Peregrinus, il quale dette anche il nome di polo sud e di polo nord alle due estremità dell'ago magnetico. La bussola fu perfezionata e diffusa soprattutto dagli amalfitani (Flavio Gioia) nel XIV sec. ]

== Il campo magnetico

Se, avvicinando due magneti, questi si attraggono o si respingono a seconda dell'orientamento dei rispettivi poli, significa che esercitano l'uno sull'altro una forza a distanza. Come per i fenomeni elettrici e per le forze gravitazionali, risulta utile descrivere le interazioni magnetiche utilizzando il concetto di campo.

Si dice che un magnete esercita attorno a sé un campo magnetico, oppure che un campo magnetico è la regione dello spazio in cui sono sensibili le forze di attrazione e repulsione esercitate da un magnete o da un insieme di magneti.

Il campo magnetico è un campo di forze, quindi, analogamente al campo elettrico e al campo gravitazionale, è un campo vettoriale.

Direzione e verso del campo magnetico vengono descritti dalle linee di forza del campo, che rappresentano, in ogni punto dello spazio, la direzione lungo la quale si disporrebbe un magnetino (usato come magnete di prova per studiare il campo) posto in quel punto.

Come per gli altri campi vettoriali, le linee di forza del campo magnetico sono tangenti alla direzione del campo in ogni punto e sono tanto più fitte quanto più elevata è l'intensità del campo. Le linee di forza del campo magnetico prodotto da un magnete sono visualizzabili con un'esperienza molto semplice.

Un cartoncino ricoperto di limatura di ferro viene appoggiato sopra un magnete; dando delle leggere scosse al cartoncino, la limatura di ferro si magnetizza e ogni piccolo aghetto che la compone si dispone lungo il campo magnetico, componendo il disegno della proiezione sul piano delle linee di forza del campo.

Nel caso di una sbarra magnetica le linee di forza sono linee chiuse che escono dal polo nord ed entrano nel polo sud; il verso va quindi dal polo nord al polo sud.

=== Il campo magnetico terrestre

Come abbiamo visto, un ago magnetico libero di ruotare si dispone spontaneamente lungo i meridiani, con il polo nord diretto verso il Nord geografico: questo significa che la Terra è sede di un campo magnetico.

Questo campo viene chiamato campo magnetico terrestre, o campo geomagnetico.

Il campo magnetico terrestre può essere assimilato al campo prodotto da un magnete a sbarretta (un dipolo) le cui linee di forza escono dal polo Sud geografico (che in realtà è un polo nord magnetico), entrano nel polo Nord geografico (che in realtà è un polo sud, e infatti attrae il polo nord dell'ago di una bussola) e sono orientate come i meridiani.

== Legame tra forze elettriche e forze magnetiche

Nel 1820 il fisico danese Hans Christian Oersted (1777-1851) fece una delle scoperte più importanti della storia della fisica, a quanto pare in modo del tutto inatteso: osservò che esisteva un legame tra magnetismo ed elettricità, ponendo le basi di quel ramo della fisica noto con il nome di elettromagnetismo.

Avendo inviato una corrente elettrica lungo un filo di rame collegato ai due poli di una pila, Oersted osservò che l'ago di una bussola posta nelle vicinanze dell'apparecchiatura, inizialmente diretto parallelamente al filo in direzione Nord-Sud, subiva una rotazione di 90° e si disponeva perpendicolare al filo.

Invertendo il verso della corrente, l'ago ruotava di 180°, invertendo la posizione dei suoi poli ma restando perpendicolare al filo percorso da corrente.

La corretta interpretazione di Oersted fu che un filo elettrico percorso da corrente genera attorno a sé un campo magnetico.Più in generale, l'esperienza di Oersted dimostra che una corrente elettrica genera un campo magnetico.

Prima di questo esperimento si era tentato di trovare un legame tra le cariche elettriche e i magneti, ma senza risultato, poiché di fatto un campo magnetico non ha alcun effetto su una carica elettrica in stato di quiete, ma soltanto su una carica in movimento.

Infatti solo le cariche elettriche in moto producono un campo magnetico.

=== Le linee di forza di un campo magnetico prodotto da un filo percorso da corrente

Le linee di forza del campo magnetico generato da un filo percorso da corrente sono perpendicolari alla corrente in ogni punto: ciò significa che sono rappresentate da cerchi concentrici attorno al filo.

Il verso delle linee di forza (la direzione del polo nord del magnetino di prova) è dato dalla regola della mano destra: afferrando il filo con la mano destra e puntando il pollice in direzione della corrente, le dita della mano indicano il verso delle linee di forza del campo magnetico generato dal filo.

Le linee di forza inoltre sono tanto più fitte quanto più è intensa la corrente che passa nel filo e quanto minore è la distanza dal filo stesso.

Nel caso in cui la corrente percorra un filo avvolto a spira anziché un filo rettilineo, le linee di forza del campo sono ancora perpendicolari al filo in ogni punto e il suo verso è quello di una vite destrorsa che percorre il filo nel senso della corrente.

Un filo percorso da corrente avvolto a spirali ravvicinate costituisce un solenoide.

Un solenoide percorso da corrente produce anch'esso, naturalmente, un campo magnetico, prodotto dalla somma dei campi magnetici di ciascuna spira del solenoide.

All'interno del solenoide le linee di forza del campo magnetico sono parallele, ovvero il campo è uniforme.

Il campo magnetico prodotto da un solenoide percorso da corrente può perciò essere assimilato a quello prodotto da una sbarretta magnetica, i cui poli sono posti agli estremi del solenoide e dipendono dal verso della corrente.

L'intensità del campo magnetico prodotto da un solenoide può essere notevolmente aumentata applicando all'interno delle spire del solenoide una sbarra di ferro o di un altro materiale ferromagnetico: il solenoide magnetizza il ferro e il campo magnetico prodotto dal solenoide si somma a quello prodotto dal magnete artificiale.

Un sistema di questo tipo viene chiamato elettromagnete. Gli elettromagneti sono molto usati nelle applicazioni tecnologiche: la forza di attrazione che possono esercitare dipende dal numero di avvolgimenti e dall'intensità della corrente che circola nelle spire e può raggiungere valori estremamente elevati.

Piccoli elettromagneti si trovano per esempio nei campanelli e negli altoparlanti, mentre grossi elettromagneti sospesi a gru permettono di sollevare grandi quantità di materiali ferrosi negli impianti di trattamento dei metalli.

=== Forza tra fili percorsi da corrente

Nel 1831 Michael Faraday scoprì che un filo percorso da corrente, immerso in un campo magnetico (per esempio, posto tra i poli di una calamita), subisce una forza la cui direzione è perpendicolare sia al campo magnetico, sia alla corrente che attraversa il filo.

Non solo quindi un filo percorso da corrente esercita una forza su un magnete, generando un campo magnetico, ma vale anche il viceversa, ovvero un magnete esercita una forza su un filo percorso da corrente.

Un campo magnetico genera dunque una forza che non si risente soltanto su un magnete, ma anche su un conduttore percorso da corrente.

Ma poiché Oersted dimostrò che un conduttore percorso da corrente genera un campo magnetico, Ampère ne dedusse che due fili percorsi da corrente devono esercitare una forza l'uno sull'altro, ovvero attrarsi o respingersi a seconda del verso reciproco delle rispettive correnti.

E infatti due conduttori rettilinei percorsi da corrente tendono ad attrarsi se sono percorsi da correnti che viaggiano nello stesso verso e tendono a respingersi se le due correnti hanno versi opposti.

Sull'attrazione tra due fili percorsi da corrente è basata la definizione dell'unità di misura della corrente elettrica, l'ampere : l'ampere infatti è definito come la corrente che, percorrendo due conduttori rettilinei paralleli, di lunghezza infinita, posti nel vuoto a una distanza di 1 m l'uno dall'altro, produce fra di essi una forza di 2·10#super[-7] newton per ogni metro di lunghezza.

Poiché la materia è costituita di particelle elettricamente cariche in movimento, il legame tra elettricità e magnetismo scoperto da Oersted può venirci in aiuto per spiegare il motivo per cui differenti sostanze hanno un differente comportamento rispetto ai fenomeni magnetici: la spiegazione risiede nel comportamento degli atomi (o delle molecole) quando vengono sottoposti a un campo magnetico.

=== Spiegazione atomica del magnetismo

Per spiegare gli effetti di magnetizzazione sulle differenti sostanze, e di conseguenza la differente permeabilità magnetica relativa delle diverse sostanze, occorre spiegare cosa accade a livello microscopico quando gli atomi (o le molecole) di una sostanza sono sottoposti a un campo magnetico esterno.

I possibili effetti di un campo magnetico esterno su una sostanza sono due: la distorsione del moto degli elettroni e l'orientamento degli atomi (o delle molecole) nella direzione del campo esterno.

Nelle sostanze diamagnetiche, che vengono debolmente respinte da un campo magnetico, prevale l'effetto di distorsione del moto degli elettroni: quando applichiamo un campo magnetico esterno a una sostanza diamagnetica, gli elettroni in moto negli atomi (o nelle molecole) della sostanza subiscono una forza, poiché un campo magnetico esercita una forza su una carica in movimento.

Il risultato di questa forza è una magnetizzazione degli elettroni, che − si può dimostrare − è opposta a quella del campo magnetico applicato.

Il diamagnetismo è una proprietà intrinseca di ogni atomo e molecola; quando in una sostanza ferromagnetica o paramagnetica prevale un comportamento opposto è perché prevale un effetto diverso e più forte, che produce l'attrazione magnetica, ma il diamagnetismo è ancora presente.Nelle sostanze paramagnetiche, debolmente attratte, prevale l'effetto di orientamento degli elettroni: gli atomi (o le molecole) delle sostanze paramagnetiche, in presenza di un campo magnetico esterno, tendono a orientarsi tutti lungo il campo esterno, dando luogo così a una leggera magnetizzazione addizionale.

Il paramagnetismo aumenta al diminuire della temperatura e dà luogo a fenomeni anche abbastanza intensi a temperature prossime allo zero assoluto.

Le sostanze ferromagnetiche, fortemente attratte da un campo magnetico esterno, presentano a livello microscopico una magnetizzazione permanente, ovvero una naturale tendenza a orientare tutti i loro atomi (o le loro molecole) nella stessa direzione.

Inoltre, la magnetizzazione delle sostanze ferromagnetiche dipende fortemente dall'intensità del campo magnetico applicato e dalla temperatura: per temperature superiori a un certo valore il ferromagnetismo scompare e la sostanza diventa paramagnetica.

Un fisico francese, Pierre Weiss (1865-1940), postulò l'esistenza nelle sostanze ferromagnetiche di minuscole zone, dette domini di Weiss, all'interno delle quali gli atomi, che possono essere considerati dei piccoli magneti, si allineano in modo da rafforzare le loro proprietà.

Queste regioni sono magnetizzate anche in assenza di campo esterno. In presenza di un campo magnetico esterno i domini subiscono delle variazioni che dipendono dall'intensità del campo applicato e che portano alla magnetizzazione del materiale: possono deformarsi, e dunque quello allineato con il campo esterno prende il sopravvento sugli altri, o, per campi più intensi, possono orientarsi tutti nella direzione del campo, rafforzando la loro magnetizzazione.

=== I poli magnetici terrestri e le fasce di Van Allen

Dalle misure del campo magnetico terrestre si è trovato che i poli magnetici (che per comodità continueremo a chiamare rispettivamente nord e sud in corrispondenza dei poli geografici) non coincidono esattamente con i poli geografici.

L'asse che li congiunge (asse del dipolo) forma con l'asse di rotazione della Terra un angolo di 11° 05' e incontra la superficie della Terra in due punti situati rispettivamente vicino a Thule, in Groenlandia (polo Nord geomagnetico) e vicino a Vostok, in Antartide (polo Sud geomagnetico).

L'angolo di declinazione magnetica, formato dai piani del meridiano astronomico e del meridiano magnetico (contenente la direzione dell'ago magnetico), varia da punto a punto della Terra e non è costante nel tempo.Le origini del campo magnetico terrestre non sono ancora del tutto certe.

Inizialmente si pensava che il campo geomagnetico potesse essere dovuto alla presenza di sostanze magnetiche poste in prossimità dei poli magnetici, ma oggi si pensa che sia più probabilmente generato da correnti elettriche prodotte nel nucleo fluido della Terra.

Strettamente connesse con il campo magnetico terrestre sono le fasce di Van Allen, veri e propri flussi di particelle cariche (protoni ed elettroni) derivanti dal bombardamento dell'atmosfera prodotto dai raggi cosmici, che rimangono intrappolate nelle vicinanze della Terra a causa del suo campo magnetico.

== Intensità del campo magnetico

Per misurare l'intensità di un campo magnetico, analogamente a quanto fatto per il campo elettrico per il quale si usa una carica di prova, si usa una "corrente di prova", ovvero un filo percorso da corrente.

A questo scopo si considera un tratto di filo di lunghezza _l_, percorso da una corrente _I_, posto tra i poli di una calamita, ovvero immerso in un campo magnetico.

Come dimostrato da Ampère, il filo subisce una forza , la cui direzione e verso sono ricavabili mediante la regola della mano sinistra: con l'indice rivolto nella direzione del campo e il medio perpendicolare all'indice, nella direzione della corrente, la direzione della forza è data dal pollice, perpendicolare a entrambi.

Se si misura la forza F con un dinamometro, questa risulta proporzionale alla lunghezza del filo _l_ e all'intensità della corrente _I_:

$ 
  F = B dot I dot l
$

dove la costante di proporzionalità _B_ rappresenta l'intensità del vettore campo magnetico. Si definisce quindi vettore campo magnetico _B_, detto più propriamente vettore induzione magnetica, quel vettore che ha come direzione e verso quelli delle linee di forza del campo magnetico e intensità data dalla forza esercitata su un conduttore rettilineo per unità di lunghezza e per unità di corrente elettrica.

L'unità di misura dell'intensità del campo magnetico nel Sistema Internazionale è il tesla (simbolo T). Si dice che un campo magnetico ha intensità di 1 tesla quando esercita una forza di 1 newton su un filo conduttore della lunghezza di 1 m percorso da una corrente di 1 ampere:

$ 
  "1 T" = "1 N"/"1 m" "1 A"
$

La forza esercitata da un campo magnetico su un filo percorso da corrente è sfruttata nei motori elettrici per trasformare energia elettrica in energia meccanica.

#note(bottom)[== *🧩* Il motore elettrico <senza_numero>

In un motore elettrico l'energia elettrica fornita a una spira percorsa da corrente viene trasformata in energia meccanica. L'energia meccanica così prodotta può poi venire utilizzata per muovere per esempio le pale di un ventilatore o il cestello di una lavatrice.Un motore elettrico è costituito generalmente da una parte fissa (statore) e da una mobile (rotore).

Una spira rettangolare di filo conduttore rigido, montata su un asse sul quale è libera di ruotare, è immersa in un campo magnetico uniforme perpendicolare all'asse di rotazione, generato per esempio dai poli di un magnete. Quando la spira è percorsa da corrente elettrica l'azione del magnete produce una coppia di forze che la costringono a ruotare.

La spira ruota di 90° prima di fermarsi: quando infatti il piano della spira è perpendicolare al campo magnetico, la forza esercitata sulla spira è nulla e questa si ferma; ma, per effetto dell'inerzia, la spira percorre in realtà un angolo leggermente superiore a 90° e la coppia di forze prodotta dal campo magnetico nella nuova posizione, opposta alla precedente perché si sono invertite le direzioni delle correnti nei due rami verticali della spira, la costringerebbe a tornare indietro.

Se a questo punto, mediante uno speciale dispositivo detto collettore, si inverte il senso della corrente nella spira, viene invertita anche l'azione delle forze e la spira continua la rotazione nello stesso senso. La rotazione della spira viene trasmessa a un albero girevole e può far funzionare un apparecchio elettrico. Un motore elettrico reale in genere è un po' più complesso di quello descritto (può essere costituito per esempio da bobine, anziché da una singola spira nella parte mobile), ma il principio di funzionamento rimane invariato.]

=== Intensità del campo magnetico generato da un filo percorso da corrente

L'intensità del campo magnetico generato da un filo rettilineo percorso da una corrente di intensità _I_ è inversamente proporzionale alla distanza _d_ dal conduttore e direttamente proporzionale alla corrente:

$ 
  B = k space (space I space)/d
$

dove la costante di proporzionalità _k_ si scrive per convenzione $k = (mu_0)/(2 pi)$, con μ#sub[0] che rappresenta la permeabilità magnetica nel vuoto e vale μ#sub[0] = 12,56 · 10#super[-7]Tm/A.

=== Intensità del campo magnetico generato da una spira percorsa da corrente

Nel caso di una spira di raggio _r_ percorsa da una corrente _I_, il campo magnetico ha intensità direttamente proporzionale alla corrente e inversamente proporzionale al raggio della spira _r_:

$ 
  B = k space (space I space)/r
$

e la costante di proporzionalità _k_ è ancora quella del caso precedente.

=== Intensità del campo magnetico generato da un solenoide percorso da corrente

All'interno di un solenoide il campo magnetico è uniforme e si può dimostrare che la sua intensità è direttamente proporzionale al numero di spire _n_ che compongono il solenoide, all'intensità di corrente _I_ che percorre il solenoide e inversamente proporzionale alla lunghezza _l_ del solenoide:

$ 
  B = mu space (space n I space)/l
$

In questo caso la costante di proporzionalità dipende dal mezzo posto all'interno del solenoide; se al suo interno c'è aria (che per comodità supporremo avere una permeabilità magnetica paragonabile a quella del vuoto), la costante di proporzionalità sarà semplicemente μ = μ#sub[0].

Se all'interno del solenoide viene posto un mezzo materiale con permeabilità magnetica relativa pari a μ#sub[r], la costante diventa μ = μ#sub[0]μ#sub[r] e il campo diventa tanto più intenso quanto più alta è la permeabilità magnetica μ#sub[r] del mezzo.

== La forza di Lorentz

Se un campo magnetico esercita una forza su un conduttore percorso da corrente, è lecito pensare che ogni particella carica che si muove in un campo magnetico subisce una forza, poiché la corrente è costituita da cariche in movimento. Questa forza è la forza di Lorentz, così detta dal nome del fisico olandese Hendrik Antoon Lorentz (1853-1928), premio Nobel per la fisica nel 1902.

Per calcolare l'intensità della forza di Lorentz partiamo dalla forza esercitata su un tratto di filo di lunghezza _l_ percorso da una corrente _I_:

$ 
  F = B dot I dot l
$

Una particella con carica _q_ che si muove in quel tratto di filo produce una corrente data dalla sua intensità di carica nell'unità di tempo, quindi:

$ 
  I = q/t
$

Se la particella si muove con velocità uniforme _v_, percorre un tratto _l_ in un tempo _t_ e la corrente si può scrivere:

$ 
  I = (q v)/l
$

così l'intensità della forza di Lorentz diventa:

$ 
  F = q v B
$

La direzione della forza di Lorentz è perpendicolare alla velocità della particella e perpendicolare al campo magnetico; il suo verso è quello del pollice nella regola della mano sinistra (come per la forza esercitata su un filo percorso da corrente), se la carica è positiva (il verso convenzionale della corrente infatti è quello delle cariche positive), ed è quello opposto se la carica è negativa.

Essendo sempre perpendicolare alla direzione della particella carica, la forza di Lorentz funge da forza centripeta per una particella di velocità perpendicolare alla direzione del campo magnetico e costringe la particella a curvare la sua traiettoria lungo un percorso circolare, il cui raggio _r_ si può ricavare uguagliando la forza di Lorentz alla forza centripeta:

$ 
  q v B = (m v^2)/r
$

Questo effetto è sfruttato negli acceleratori di particelle ad anello, che, attraverso l'uso di campi magnetici, costringono le particelle cariche a rimanere confinate su traiettorie circolari.

Conoscendo l'intensità dei campi magnetici applicati, e misurando la velocità e il raggio della traiettoria della particella, la formula data sopra può essere utilizzata per determinare la massa di particelle cariche sconosciute.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Campo magnetico: Campo di forza prodotto da magneti o da cariche elettriche in movimento.

/ Elettromagnete: Strumento costituito da una bobina di filo isolato (solenoide) avvolto intorno a un nucleo di materiale ferromagnetico. Questo nucleo si magnetizza quando passa corrente elettrica attraverso la bobina.

/ Ferromagnetismo: Forma di magnetismo permanente che si osserva in materiali come il ferro e le sue leghe. Questi materiali sono particolarmente reattivi ai campi magnetici esterni.

/ Forza di Lorentz: Fenomeno che descrive la forza esercitata da un campo magnetico su una carica elettrica in movimento. Questo effetto causa una deviazione della traiettoria della carica.

/ Magnetismo: Ramo della fisica che analizza i fenomeni di attrazione caratteristici di determinate sostanze, chiamate magneti, e le caratteristiche della materia legate a questi fenomeni. I magneti, quando liberi di muoversi, si orientano in modo specifico rispetto a un campo magnetico esterno. Un esempio è la bussola, dove l’ago magnetico si dispone lungo un meridiano terrestre.

/ Polo magnetico: Ogni estremità di un magnete naturale, nelle quali si concentrano le sue proprietà magnetiche. Ogni magnete possiede sempre due poli: il polo sud e il polo nord.