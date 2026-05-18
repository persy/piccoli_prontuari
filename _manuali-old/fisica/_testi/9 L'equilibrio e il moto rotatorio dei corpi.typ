
#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Un corpo si trova in equilibrio quando le forze a cui è sottoposto non modificano il suo stato di quiete. La branca della meccanica che si occupa di studiare e determinare le condizioni di equilibrio dei corpi prende il nome di statica.

Per un corpo che può essere considerato puntiforme (punto materiale), le condizioni di equilibrio si riducono al fatto che le forze agenti devono avere risultante nulla. Tuttavia, se il corpo presenta dimensioni non trascurabili, viene definito corpo esteso. In particolare, se tale corpo non subisce deformazioni sotto l'azione delle forze applicate, si parla di corpo rigido.

Nel caso del corpo rigido, occorre anche stabilire le condizioni per cui esso non sia soggetto a rotazioni indesiderate. Per questo motivo viene introdotta una nuova grandezza, il momento delle forze agenti sul corpo. In tale contesto, la condizione di equilibrio richiede sia la nullità della risultante delle forze, sia quella del momento delle forze.

Inoltre, per descrivere il moto rotatorio di un corpo rigido, si applicano le leggi della dinamica. Questo però richiede la definizione di alcune grandezze specifiche per tali moti, come il momento d'inerzia, che esprime la resistenza alla rotazione in modo simile a come la massa esprime la resistenza al moto rettilineo, e il momento angolare, analogo alla quantità di moto nei moti traslatori.]

== Punto materiale e corpo rigido

Le leggi della dinamica sono formulate assumendo che le dimensioni dei corpi in movimento siano trascurabili rispetto ai loro spostamenti. In altre parole, velocità, accelerazione e massa vengono considerate come riferite a un unico punto ideale, detto punto materiale.

Ad esempio, la Terra può essere considerata un punto materiale rispetto al suo moto di rivoluzione attorno al Sole. Lo stesso principio può essere applicato a un corpo in caduta libera, purché si analizzi il moto globale del corpo anziché quello delle sue varie parti.

Quando un corpo viene studiato con questo approccio, si parla di punto materiale. Tuttavia, nella maggior parte dei casi, è necessario tener conto anche delle dimensioni dei corpi in movimento. Prendiamo ad esempio una ruota che ruota intorno al proprio asse: i punti più lontani dal centro della ruota si muovono più velocemente rispetto a quelli vicini, mentre il centro stesso rimane fermo.

Quando non si possono ignorare le dimensioni del corpo in esame, si parla di corpo esteso. Tra i corpi estesi, una categoria particolare è rappresentata dai corpi rigidi, in cui le deformazioni dovute alle forze applicate sono trascurabili o del tutto assenti. In un corpo rigido, la distanza tra due punti qualsiasi resta costante nel tempo.

Nello studio del moto dei corpi rigidi, risulta fondamentale individuare un punto particolare in cui supporre concentrata tutta la massa del corpo: si tratta del centro di massa. Inoltre, è importante distinguere tra due tipi principali di movimento: il moto traslatorio e il moto rotatorio. Nel moto traslatorio, tutti i punti del corpo condividono la stessa velocità e le leggi della dinamica possono essere applicate come se l'intera massa fosse concentrata nel centro di massa.

Nel moto rotatorio, i punti di un corpo si muovono a velocità diverse a seconda della distanza dall'asse di rotazione. 

Un esempio di moto traslatorio può essere quello di un corpo che si sposta lungo una linea retta o una curva, oppure quello di un sasso che cade sotto l'effetto della forza di gravità. Il moto rotatorio, invece, è ben rappresentato dal movimento di una ruota che gira attorno al proprio asse.

Esiste inoltre un tipo di moto chiamato rototraslatorio, che combina il moto traslatorio con quello rotatorio. Un esempio tipico è il movimento della ruota di un'automobile: la ruota ruota attorno al proprio asse mentre si muove lungo la strada.

== L'equilibrio

La statica, parte della meccanica, si occupa dello studio delle condizioni di equilibrio statico, ovvero quelle in cui i corpi rimangono fermi nonostante siano soggetti a forze. Questa disciplina è particolarmente rilevante per la scienza delle costruzioni, fornendo strumenti utili alla progettazione di strutture come edifici, ponti e dighe, le cui condizioni di equilibrio sono essenziali.

Il caso più semplice di equilibrio riguarda un punto materiale. Perché un punto materiale soggetto a forze sia in equilibrio, è necessario che la somma delle forze applicate, detta risultante *R*, sia pari a zero: *R* = 0. Per esempio, un punto materiale posato su un piano è in equilibrio rispetto alla forza di gravità perché la reazione del piano controbilancia il peso del punto, rendendo la risultante delle forze nulla.

Quando si considera un corpo esteso e rigido, come un libro, la sola condizione *R* = 0 non è più sufficiente. Un libro appoggiato su un tavolo è in equilibrio perché il peso viene controbilanciato dalla forza esercitata dal piano d'appoggio. Tuttavia, se applichiamo due forze uguali ma opposte lungo i bordi del libro per farlo ruotare, la risultante delle forze sarà ancora nulla, ma il corpo non sarà più in equilibrio. Per ristabilire l'equilibrio è necessario applicare un'altra coppia di forze che produca una rotazione uguale e contraria.

Una coppia di forze è costituita da due forze parallele con direzioni non allineate e opposte, che agiscono su un corpo producendo una rotazione. L'intensità della coppia è determinata dal momento della coppia, indicato con *M*, calcolato come _M = Fb_, dove _F_ rappresenta l'intensità della forza e _b_ la distanza fra le direzioni delle due forze, detta braccio della coppia.

L'effetto della rotazione dipende dal momento della coppia. Il momento è un vettore diretto lungo l'asse di rotazione del corpo su cui viene applicata la coppia. La direzione del vettore punta verso un osservatore che percepisce la rotazione nel senso antiorario.

In generale, affinché un corpo non ruoti, è necessario che i momenti delle forze che tendono a farlo ruotare in un senso siano bilanciati dai momenti delle forze che tendono a farlo ruotare nel senso opposto. In questo modo, il momento totale risulta nullo. 

$ 
  bold(M) = 0
$

Per soddisfare questa condizione, devono essere rispettate le seguenti due regole affinché un corpo rigido sia in equilibrio: la somma delle forze applicate deve essere uguale a zero e la somma dei momenti delle coppie applicate deve anch'essa risultare pari a zero.

$ 
  bold(R) = 0 quad quad quad bold(M) = 0
$

La prima condizione impedisce al corpo di traslare, mentre la seconda impedisce che esso ruoti.

Il momento *M* di una forza *F*, applicata in un punto _P_ rispetto a un punto generico _O_, si calcola come il prodotto dell'intensità della forza *F* e della distanza tra il punto di applicazione della forza e il punto _O_, attraverso cui passa l'asse di rotazione. Tale distanza è rappresentata dal segmento _OP_, chiamato anche braccio della forza.

La direzione del vettore *M* è perpendicolare alla forza e al segmento _OP_; il suo verso, invece, si determina mediante la regola della mano destra. Il momento di una forza quantifica la capacità di quella forza di determinare la rotazione di un oggetto rispetto al punto _O_. Per aumentare il momento di una forza, è sufficiente incrementare il suo braccio.

Il concetto di momento si applica anche alle leve, che sono macchine semplici progettate per bilanciare una forza intensa applicandone un'altra meno intensa, ma con un braccio maggiore. In questo modo si ottiene l'equilibrio tra i momenti delle forze.

#note(bottom)[== *🧩* Le leve <senza_numero>

Le leve costituiscono il primo esempio di macchina semplice ideato dall'uomo. Una macchina semplice si definisce come un dispositivo capace di compiere lavoro mediante un singolo movimento. Le leve operano ruotando attorno a un punto fisso, denominato fulcro, trasmettendo una forza che ha il compito di vincere una resistenza esterna mediante l'applicazione di una forza meno intensa, detta potenza.

Il principio fondamentale delle leve si basa sull'equilibrio rotatorio. Questo equilibrio si raggiunge eguagliando i momenti delle forze applicate; pertanto, è sufficiente aumentare il braccio d'azione di una forza meno intensa (modificando la distanza tra le forze agenti e il fulcro) per aumentare il suo momento e contrastare una forza più intensa. Le leve possono essere classificate in tre categorie principali: leve di primo, secondo e terzo genere. Tale classificazione dipende dalla posizione reciproca del fulcro, della potenza e della resistenza.

Le leve di primo genere sono caratterizzate dal fatto che il fulcro è posto tra la potenza e la resistenza. Esempi noti includono il piede di porco e le forbici. La struttura generale di una leva di primo genere si basa su una sbarra vincolata a un punto fisso per sollevare un oggetto: in questa configurazione, il vincolo funge da fulcro, il peso dell'oggetto rappresenta la resistenza e la forza esercitata dall'uomo costituisce la potenza. Grazie a questa tipologia di leva, è possibile sollevare oggetti significativamente più pesanti rispetto alla capacità offerta dalla sola forza muscolare.

Le leve di secondo genere sono caratterizzate dalla posizione della resistenza tra il fulcro e la potenza. Tipici esempi di leve di secondo genere sono la carriola e lo schiaccianoci.

Infine, le leve di terzo genere sono definite dalla posizione della potenza tra il fulcro e la resistenza. Tra i principali esempi si annoverano le pinzette e il movimento del braccio nel sollevare un oggetto.]

=== Il baricentro di un corpo

Quando si ricercano le posizioni di equilibrio di un oggetto di forma qualsiasi, appoggiato o vincolato in un campo gravitazionale, è necessario individuare il suo baricentro, ovvero il punto in cui si considera concentrata tutta la sua forza peso.  

Il baricentro è distinto dal centro di massa, che rappresenta un concetto più generale valido anche in assenza di gravità. Il baricentro, invece, presuppone l'esistenza della forza gravitazionale e viene chiamato anche centro di gravità.

Per gli oggetti comuni sulla superficie terrestre, il centro di massa e il baricentro generalmente coincidono, poiché il centro di massa corrisponde al punto in cui è applicata la forza peso. La posizione del baricentro dipende dalla forma geometrica e dalla distribuzione della massa del corpo.

Ad esempio, in una sfera omogenea il baricentro coincide con il centro della sfera; in una lamina rettangolare omogenea sottile coincide con l'intersezione delle diagonali; esistono tuttavia casi in cui il baricentro può essere esterno al corpo stesso.

La determinazione del baricentro può avvenire attraverso metodi geometrici nel caso in cui il corpo presenti elementi di simmetria, oppure sperimentalmente, trovando le sue posizioni di equilibrio quando è vincolato a un punto fisso (ad esempio sospeso) o a una superficie (appoggiato).

=== Equilibrio dei corpi sospesi

Un vincolo si definisce come qualsiasi fattore che limita la libertà di movimento di un corpo, esercitando su di esso una forza, chiamata forza vincolare.

Un corpo sospeso è considerato vincolato a un punto fisso, come avviene nel caso di un quadro appeso a una parete. L'azione della forza peso o di un'altra forza esterna applicata al corpo può generare esclusivamente un movimento rotatorio.

Per individuare le posizioni di equilibrio di un corpo vincolato, è necessario stabilire il punto in cui la forza peso viene bilanciata dalla forza vincolare, rendendo impossibile una rotazione del corpo. In particolare, si ottiene l'equilibrio di un corpo sospeso quando il suo baricentro si trova lungo la verticale che passa per il punto di sospensione. In altre parole, ciò avviene quando la linea che rappresenta la forza peso attraversa il punto di sospensione.

Per esempio, se si appende un quadro in un punto diverso dal centro di uno dei suoi quattro lati, il quadro tenderà a ruotare. Questo accade perché il suo baricentro coincide con il punto in cui si intersecano le diagonali, collocandosi lungo l'asse che attraversa il centro dei lati. 

L'equilibrio può verificarsi quando il baricentro si trova al di sotto, al di sopra o coincide con il punto di sospensione. Questi casi corrispondono a tre diverse condizioni di equilibrio.

Se il baricentro è situato al di sotto del punto di sospensione, come succede comunemente quando un quadro è appeso per il lato superiore, allontanando leggermente il quadro dalla sua posizione iniziale, il momento della forza peso tende a riportarlo nella posizione originale. Tale condizione è definita equilibrio stabile.

Quando invece il baricentro si trova al di sopra del punto di sospensione, spostando il quadro dalla sua posizione iniziale, il momento della forza peso lo induce ad allontanarsi ulteriormente dalla posizione originaria. Questa situazione prende il nome di equilibrio instabile.

Infine, nel caso in cui il baricentro coincida con il punto di sospensione, si verifica l'equilibrio indifferente. In questa condizione, il momento della forza peso è nullo poiché il punto di applicazione della forza corrisponde al punto di rotazione. Di conseguenza, se il quadro viene leggermente spostato dalla sua posizione iniziale, rimane fermo nella nuova posizione raggiunta.

=== Equilibrio riguarda i corpi appoggiati

Un corpo pesante appoggiato è vincolato a una superficie e soggetto alla forza di gravità e alla forza vincolare, che agisce verso l'alto grazie alla base d'appoggio.

Quando l'appoggio avviene in un punto specifico, l'equilibrio si realizza quando il baricentro del corpo si trova sulla verticale del punto d'appoggio. Anche in questo caso si possono verificare condizioni di equilibrio stabile, instabile o indifferente.

Se, spostando l'oggetto dalla posizione iniziale, il baricentro si muove verso l'alto, l'equilibrio risulta stabile: il corpo tende a ritornare nella posizione originale.

Se invece, spostando l'oggetto, il baricentro si abbassa, l'equilibrio diventa instabile: il corpo si allontana progressivamente dalla posizione iniziale.

Il terzo caso, in cui il punto di sospensione coincide con il baricentro, è definito come equilibrio indifferente. In questa situazione, il momento della forza peso è nullo, poiché il punto di applicazione della forza coincide con quello di rotazione. Pertanto, un leggero spostamento del corpo dalla sua posizione iniziale lo porta semplicemente a stabilizzarsi nella nuova posizione senza tornare a quella precedente.

Nel caso più complesso, in cui l'appoggio avviene su più punti, l'equilibrio persiste finché la verticale del baricentro rimane all'interno della base di appoggio, delimitata dalla linea che collega i punti di appoggio più esterni.

Per questa ragione, un quadrupede risulta più stabile rispetto a un uomo, mentre quest'ultimo raggiunge una maggiore stabilità se tiene i piedi ben distanziati. Analogamente, le auto da corsa sono progettate per avere un baricentro particolarmente basso, così da affrontare curve ad alta velocità con un rischio minimo di instabilità. 

Al contrario, un camion con un baricentro molto alto sarà più incline a una condizione di equilibrio instabile, poiché un'inclinazione laterale potrebbe facilmente portare il baricentro al di fuori della superficie di appoggio.

== Equilibrio stabile, instabile, indifferente ed energia potenziale

Le condizioni di equilibrio stabile, instabile e indifferente possono essere analizzate anche dal punto di vista dell'energia potenziale. Un corpo: 
- è in equilibrio stabile quando, se leggermente spostato dalla sua posizione iniziale, tende naturalmente a ritornarvi.  
- è in equilibrio instabile se, dopo un piccolo spostamento dalla sua posizione di equilibrio, si allontana ulteriormente.  
- è in equilibrio indifferente quando un lieve spostamento lo porta semplicemente a stabilizzarsi nella nuova posizione senza variazioni sostanziali.  

La distinzione tra queste tre situazioni può essere osservata attraverso l'energia potenziale gravitazionale del corpo. In questo contesto, non importa se si tratta di un punto materiale o di un corpo rigido: il principio rimane valido per entrambe le configurazioni.

Se un corpo si trova su un tratto orizzontale, _A_, di energia potenziale, ciò significa che, quando viene spostato leggermente dalla sua posizione di equilibrio lungo l'orizzontale, mantiene costante la sua energia potenziale gravitazionale. In tale situazione, il corpo tenderà a rimanere nella nuova posizione: l'equilibrio risulta quindi indifferente.

Se invece il corpo si trova in una depressione di energia potenziale gravitazionale, _B_, e, venendo spostato di poco dalla posizione di equilibrio, comporta un aumento della sua energia potenziale, esso tenderà a ritornare nella posizione iniziale. Questo caso corrisponde a una condizione di equilibrio stabile.

Al contrario, se il corpo si trova in equilibrio su una cuspide o cima (_C_) di energia potenziale e viene spostato leggermente dalla sua posizione iniziale, tenderà ad allontanarsi ulteriormente da tale configurazione. Si parla quindi di equilibrio instabile.

Riassumendo dal punto di vista dell'energia potenziale gravitazionale:
- l'equilibrio è stabile quando l'energia potenziale è minima.  
- l'equilibrio è instabile quando l'energia potenziale è massima.  
- l'equilibrio è indifferente quando l'energia potenziale rimane costante.

Queste considerazioni si verificano sempre in natura, dove i sistemi stabili tendono a collocarsi nello stato di energia minima possibile. 
L'esempio dell'energia potenziale gravitazionale rappresenta un caso specifico di un principio generale: un corpo che cade tende a raggiungere lo stato di minima energia potenziale gravitazionale, che diventa nulla una volta raggiunto il suolo.

Anche nei sistemi atomici e nucleari si osserva lo stesso comportamento: essi risultano stabili nello stato di minima energia mentre perdono stabilità quando acquisiscono energia dall'esterno. Tale energia in eccesso viene rilasciata sotto forma di luce o particelle finché il sistema non ritorna al suo stato di equilibrio.

== Il moto rotatorio

Un corpo rigido, sottoposto all'azione di una forza con un momento netto diverso da zero, inizia a ruotare attorno a un punto o asse fisso. Analogamente al moto traslatorio, descritto dalla velocità *v* del centro di massa del corpo, il moto rotatorio è descritto dalla velocità angolare *ɷ*, che rappresenta la rapidità con cui il corpo ruota. Nei corpi rigidi questa velocità angolare è uniforme in tutti i punti del corpo.

La resistenza che un corpo rigido oppone a variazioni della sua velocità angolare è misurata dal momento d'inerzia _I_, che si comporta analogamente alla massa _m_ nella seconda legge della dinamica. Il momento d'inerzia varia da corpo a corpo; tuttavia, per una massa puntiforme in rotazione, può essere espresso come:

$ 
  I = m R^2
$

dove _m_ rappresenta la massa del corpo e _R_ la distanza dall'asse di rotazione.

Il momento d'inerzia è una quantità scalare che può essere calcolata geometricamente per corpi omogenei. La seconda legge della dinamica applicata al moto rotatorio assume la forma seguente:

$ 
  bold(M) = I bold(alpha)
$

dove *M* è il momento delle forze esterne che agiscono sul corpo e *α* rappresenta l'accelerazione angolare, ossia la variazione della velocità angolare nel tempo.

Analogamente alla quantità di moto per il moto traslatorio, nel moto rotatorio si definisce il momento angolare _P_ (o momento della quantità di moto), una grandezza vettoriale che descrive il moto di rotazione del corpo.

Per un corpo rigido, il momento angolare risulta orientato lungo l'asse di rotazione e la sua intensità è determinata dal prodotto tra la velocità angolare del corpo e il momento di inerzia. 

$ 
  P = I bold(omega)
$

Analogamente alla quantità di moto (il cui modulo è dato dalla relazione _p = mv_), è valida una legge di conservazione del momento angolare. Essa afferma che, in assenza di un momento risultante derivante da forze esterne su un corpo o su un sistema isolato di corpi, il momento angolare del corpo o del sistema rimane costante.

Un'applicazione pratica della legge di conservazione del momento angolare si osserva, ad esempio, nei movimenti delle ballerine. Per incrementare la propria velocità di rotazione, queste adottano una postura in cui le braccia sono allineate al corpo, riducendo così il proprio momento di inerzia. Poiché non intervengono forze esterne a modificarne il momento angolare, tale grandezza rimane invariata. Di conseguenza, una diminuzione del momento di inerzia comporta un aumento della velocità di rotazione, ottenuto avvicinando le braccia all'asse di rotazione.

Nel contesto del moto rotatorio è inoltre utile definire l'energia cinetica rotazionale, la quale, simile a quella traslazionale, è espressa dalla formula:

$ 
  E_c = 1/2 I bold(omega)^2
$


Dove _I_ rappresenta il momento di inerzia del corpo e *ɷ* la sua velocità angolare.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Centro di massa: Punto di un corpo rigido in cui si considera concentrata tutta la sua massa. Analogamente, il centro di gravità, o baricentro, indica il punto in un campo gravitazionale dove si ritiene concentrata tutta la forza peso del corpo.

/ Corpo rigido: Tipo particolare di corpo esteso, caratterizzato da dimensioni non trascurabili rispetto al movimento, e che rimane indeformabile sotto l'azione delle forze applicate. In questo stato, la distanza tra due punti qualsiasi del corpo resta costante.

/ nEquilibrio: Condizione di un corpo soggetto a forze che non ne alterano lo stato di quiete. Lo studio delle condizioni necessarie per l'equilibrio di un corpo è affidato alla disciplina della statica.

/ Momento angolare: Vettore che descrive il movimento di rotazione di un corpo rigido, orientato lungo l'asse di rotazione. La sua intensità è pari al prodotto tra la velocità angolare del corpo e il momento di inerzia. In assenza di momenti di forze esterne, il momento angolare rimane invariato.

/ Momento di inerzia: Proprietà che definisce la resistenza offerta da un corpo rigido alla rotazione.

/ Momento di una forza: Capacità di una forza di generare la rotazione di un corpo attorno a un asse.

/ Moto rotatorio: Movimento in cui tutti i punti del corpo descrivono traiettorie circolari intorno a un asse noto come asse di rotazione.

/ Moto traslatorio: Movimento caratterizzato dal fatto che tutti i punti del corpo si muovono alla stessa velocità. Le leggi della dinamica possono essere applicate a questo caso considerando l'intero corpo concentrato nel suo centro di massa.

/ Punto materiale: Si usa per descrivere un corpo in movimento le cui dimensioni risultano trascurabili rispetto allo spostamento compiuto.

/ Vincolo: Qualsiasi condizione o elemento che limita la libertà di movimento di un corpo.