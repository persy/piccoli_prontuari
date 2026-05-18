#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Il regno animale include organismi pluricellulari eterotrofi che si riproducono prevalentemente sessualmente e le cui cellule, a differenza di quelle vegetali, sono prive di parete cellulare. Si ritiene che gli animali abbiano avuto origine da protisti marini che formavano colonie, simili alle odierne spugne. Nel corso dell'evoluzione, hanno dato vita a una straordinaria varietà di forme caratterizzate da livelli di complessità sempre più elevati, legati a una progressiva organizzazione e specializzazione cellulare nei tessuti. La crescente complessità è evidente nei vari _phyla_ animali, che riflettono questa tendenza evolutiva.]

== Tendenze evolutive degli animali
#figure(
  caption: [Schema di classificazione degli animali. Sono inclusi solo i _phylum_ più noti],
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
    columns: (auto, 1fr),
    table.header[_phylum_][Classi principali],
    [Poriferi],[Calcispogne, ialosponge, demosponge],
    [Cnidari], [Idrozoi, scifozoi, antozoi],
    [Ctenofori], [Tentacolati, atentacolati],
    [Platelminti], [Turbellari, trematodi, cestodi],
    [Anellidi], [Policheti, oligocheti, irudinei],
    [Tardigradi], [Eutardigradi, eterotardigradi], 
    [Artropodi], [Aracnidi, crostacei, miriapodi, insetti],
    [Molluschi], [Gasteropodi, scafoidi, lamellibranchi, cefalopodi],
    [Echinodermi], [Crinoidei, asteroidei, ofiuroidei, echinoidei, oloturoidei],
    [Cordati], [Cefalocordati, urocordati, vertebrati (ciclostomi, pesci, anfibi, rettili, uccelli, mammiferi)]
)  
)

Gli animali condividono, nonostante la loro grande diversità, alcune caratteristiche fondamentali: sono pluricellulari, eterotrofi, con cellule prive di parete cellulare; si riproducono sessualmente, anche se molte specie adottano forme di riproduzione agamica; sono mobili almeno in un periodo della loro vita e capaci di reagire agli stimoli esterni.

Analogamente alle piante, gli animali hanno attraversato un processo evolutivo che ha portato a una maggiore complessità e organizzazione cellulare. Questo progresso è osservabile in diversi aspetti, tra cui: l'organizzazione cellulare, la disposizione simmetrica degli organi e la segmentazione, la cefalizzazione, lo sviluppo di una cavità interna, la formazione di strutture di sostegno e l'evoluzione del canale digerente.

La crescente complessità delle strutture anatomiche e delle funzioni degli animali rappresenta un elemento centrale per la loro classificazione scientifica. Nei paragrafi successivi verranno approfondite le principali tendenze evolutive degli animali e fornita una descrizione dei principali _phyla_ in cui questi organismi sono suddivisi. 

=== Organizzazione cellulare

Con l'evoluzione, le cellule degli animali si sono specializzate, organizzandosi in tessuti che, a loro volta, si combinano per formare organi. Gli organi si integrano ulteriormente in apparati o sistemi. Questo processo di crescente complessità riguarda anche i foglietti embrionari, ovvero gli strati di tessuto presenti durante lo sviluppo dell'embrione: oltre ai due strati iniziali (ectoderma ed endoderma), si genera successivamente un terzo strato intermedio, il mesoderma.

=== Simmetria e segmentazione

Gli animali più primitivi, come le spugne, non presentano alcuna forma di simmetria. Nei primi animali con una disposizione simmetrica compare la simmetria raggiata, caratterizzata da organi disposti attorno a un asse centrale. Il corpo può essere idealmente suddiviso in due parti uguali tramite un numero illimitato di piani che attraversano l'asse. Questa forma di simmetria è tipica degli animali acquatici meno evoluti, che vivono fissati a un substrato (sessili) o sono poco mobili.

Negli animali più avanzati, capaci di movimento, si osserva invece la simmetria bilaterale. In questo caso, il corpo presenta un unico piano che lo divide in due metà simmetriche. Questi animali mostrano una suddivisione tra superficie dorsale e ventrale, oltre a estremità ben definite: cefalica e caudale. In alcuni di essi il corpo è segmentato in metameri, unità strutturali ripetitive in cui gli organi mantengono una disposizione identica. Nei sistemi più complessi, la segmentazione spesso non è visibile esternamente e riguarda principalmente muscoli, scheletro e nervi.

=== Cefalizzazione

La cefalizzazione è il processo per cui gli organi sensoriali, le cellule nervose e le strutture deputate all'ingestione del cibo si concentrano progressivamente all'estremità cefalica del corpo, formando quella che comunemente chiamiamo testa.

=== Cavità corporea

La cavità interna del corpo, chiamata celoma, è una struttura che ospita gli organi ed è posizionata tra il canale digerente e la parete interna del corpo. Questo spazio consente a organi come cuore, polmoni, stomaco e intestino di crescere, muoversi e funzionare senza interferenze reciproche.

Gli animali più semplici sono acelomati, privi di tale cavità. Esistono anche organismi con uno spazio simile al celoma, chiamato pseudoceloma, che si sviluppa in modo differente durante la fase embrionale rispetto agli animali dotati di celoma.

=== Canale alimentare

Nei primi stadi evolutivi, il canale alimentare degli animali era costituito da un sacco con una singola apertura, attraverso la quale il cibo veniva introdotto ed eliminate le sostanze di scarto. Una maggiore complessità evolutiva si manifesta con un canale alimentare dotato di due aperture distinte: la bocca per l'assunzione del cibo e l'ano per l'espulsione dei rifiuti.

=== Strutture di sostegno

Gli animali vengono distinti in due grandi gruppi: vertebrati e invertebrati. I vertebrati possiedono un endoscheletro, ovvero uno scheletro interno, comunemente associato alla colonna vertebrale. Gli invertebrati, pur non avendo una struttura scheletrica interna, si avvalgono di altre soluzioni per il sostegno, tra cui aghi di sostanze minerali, idroscheletri o esoscheletri di varia natura. È importante notare che i vertebrati rappresentano solo una parte del _phylum_ dei cordati, che include pesci, anfibi, rettili, uccelli e mammiferi.

== Poriferi
#figure(
  caption: [Classificazione dei poriferi],
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
    columns: (2),
    table.header[Classe][Caratteristiche],
    [Calcisponge],[Spugne calcaree; vivono nel mare fino a circa 800 m di profondità],
    [Ialosponge], [Spugne silicee; vivono nel mare tra 25 e 8500 m],
    [Demosponge], [Spugne cornee; vivono anche in acque dolci, ma sono più diffuse nel mare. Il loro scheletro di spongina viene utilizzato come spugna da bagno]
)  
)

I poriferi, comunemente noti come spugne (_phylum_ Porifera), rappresentano gli animali più semplici nella scala evolutiva, caratterizzati dall'assenza di simmetria corporea e di veri tessuti organizzati. Essi possono essere descritti come aggregati multicellulari in cui ogni cellula mantiene una certa autonomia funzionale.

Le spugne abitano ambienti acquatici e presentano un corpo strutturato a forma di sacco cavo, saldamente ancorato al substrato e perforato da numerosi pori. Attraverso questi pori, l'acqua trasporta particelle nutritive nella cavità interna, la quale è rivestita da cellule specializzate, i coanociti. Queste cellule sono dotate di flagelli, il cui movimento genera un flusso continuo di acqua all'interno dell'organismo. Una struttura simile a un collare circonda il flagello, agendo da filtro per trattenere i microrganismi introdotti dai pori. I residui metabolici vengono espulsi attraverso un'apertura maggiore, definita osculo. Interposta tra le cellule epiteliali esterne e i coanociti risiede la mesoglea, uno strato gelatinoso che ingloba cellule ameboidi capaci di secernere spicole di natura calcarea, silicea o cornea, fornendo sostegno strutturale alla spugna.

La riproduzione dei poriferi avviene mediante gemmazione o per via sessuata. Nel primo caso, l'organismo genera una protuberanza denominata gemma che, a seconda dello sviluppo, può rimanere attaccata al corpo parentale o separarsi per formare un nuovo individuo. La riproduzione sessuata, invece, comporta la fecondazione della cellula uovo, da cui origina una larva ciliata e libera. La larva viene trasportata dalla corrente marina fino a stabilirsi sul substrato, dove si sviluppa in un nuovo organismo adulto.


== Cnidari, o celenterati

#figure(
  caption: [Classificazione degli cnidari],
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
    columns: (2),
    table.header[Classe][Caratteristiche],
    [Idrozoi],[La generazione di polipo e di medusa si alternano],
    [Scifozoi], [Prevale la generazione di medusa],
    [Antozoi], [Hanno solo la forma di polipo; comprendono le attinie e i coralli. Secernono uno scheletro calcareo che nel corso di milioni di anni ha formato grandi barriere coralline]
)  
)

Gli cnidari, o celenterati (_phylum_ Cnidaria), sono invertebrati marini il cui corpo può assumere due principali configurazioni morfologiche: quella del polipo e quella della medusa. Il polipo è tipicamente sessile, ancorato al substrato, e può vivere isolato o organizzato in colonie; la medusa, al contrario, è mobile e si lascia trasportare dalle correnti marine.

Queste due forme rappresentano i distinti stadi del ciclo vitale degli cnidari. La fecondazione della cellula uovo avviene tramite una medusa matura, generando una larva ciliata e libera capace di nuotare. Dopo un certo periodo, la larva si fissa al substrato trasformandosi in polipo. Quest'ultimo si sviluppa allungandosi e segmentandosi trasversalmente in diverse unità tentacolate impilate l'una sull'altra. Le singole unità si staccano per formare piccole meduse dette efire, che maturano gradualmente fino a diventare meduse sessualmente attive. Una volta raggiunta la maturità, il ciclo vitale riprende.

Il corpo degli cnidari è caratterizzato da simmetria raggiata e una significativa componente acquosa che conferisce un aspetto gelatinoso generale. Strutturalmente, esso è costituito da due strati cellulari principali: l'ectoderma e l'endoderma. Questi circondano la cavità gastrovascolare, deputata alla digestione e rivestita da cellule ghiandolari con specifiche funzioni digestive. La cavità comunica con l'esterno tramite un'apertura centrale circoscritta da tentacoli. I tentacoli sono provvisti di cnidoblasti, cellule specializzate che si attivano in risposta al contatto con organismi estranei. Tali cellule estroflettono un filamento cavo che rilascia una sostanza urticante e paralizzante per immobilizzare prede o difendersi da aggressori.

Un sistema nervoso rudimentale è costituito da cellule neuroepiteliali dotate di lunghi prolungamenti, le quali permettono all'animale di reagire prontamente agli stimoli ambientali. Tra gli cnidari più conosciuti si annoverano gli anemoni di mare, le madrepore e i coralli.


== Ctenofori

Gli ctenofori, appartenenti al _phylum_ Ctenophora, sono organismi marini caratterizzati dalla comparsa del mesoderma, il terzo foglietto embrionario, nello stadio larvale. Simili ai celenterati, presentano un corpo gelatinoso e trasparente, composto per il 95% da acqua. Il loro organismo include una bocca e un organo sensoriale chiamato organo apicale situato nella posizione opposta, da cui si diramano otto strisce ciliate, note come palette vibratili, che servono alla locomozione. Alcune specie possiedono due lunghi tentacoli dotati di capacità adesiva. Gli ctenofori sono ermafroditi e quindi in grado di produrre sia gameti maschili che femminili.

== Tentacolati

I tentacolati, appartenenti al _phylum_ Tentaculata, sono piccoli animali marini che vivono sia isolati sia in colonie. Il nome del _phylum_ deriva dalla presenza di un lofoforo, una corona di tentacoli che circonda la bocca e crea un vortice d'acqua che indirizza gli alimenti verso di essa. Tra i tentacolati si trovano specie protette da conchiglie bivalvi, altre che vivono in tubi o di forma vermiforme. Questi organismi sono ermafroditi e si riproducono sia sessualmente sia in modo agamico. Il _phylum_ include i foronoidei, i briozoi e i brachiopodi. Tra questi, i briozoi sono particolarmente distintivi: sessili e colonizzatori, iniziano con una simmetria bilaterale ma durante lo sviluppo il corpo si ripiega a U, posizionando ano e bocca uno accanto all'altro e rivolti verso l'alto.

== Platelminti

I platelminti, parte del _phylum_ Plathelmynthes, presentano una simmetria bilaterale e il caratteristico corpo piatto, da cui deriva il nome "vermi piatti". La lunghezza degli individui può variare da pochi millimetri a svariati metri. Rappresentano gli animali più semplici in cui i tessuti si organizzano in organi funzionali. La testa è dotata di macchie oculari sensibili alla luce, benché incapaci di formare immagini, accompagnate da gangli nervosi che fungono da rudimentale cervello. Il sistema nervoso percorre l'intero corpo tramite due cordoni longitudinali connessi da fibre trasversali.

L'apparato digerente dei platelminti è composto da una bocca e da una cavità gastrovascolare ramificata e priva di un'apertura terminale. L'apparato escretore include tubuli anch'essi privi di sbocco, chiamati protonefridi, che terminano con le cellule a fiamma. Queste, grazie alle ciglia vibratili che si muovono come una fiammella, espellono i prodotti di scarto verso l'esterno.

La riproduzione è sia sessuale sia agamica, con alcune specie che si distinguono per la capacità di rigenerare porzioni del corpo. I platelminti comprendono organismi a vita libera (sia marini sia terrestri) e specie parassite. Questi ultimi, tra cui la tenia o verme solitario, hanno sviluppato adattamenti specifici come una cuticola protettiva dagli enzimi digestivi dell'ospite, strutture specializzate come ventose e uncini per attaccarsi alla parete intestinale dell'ospite, e l'ermafroditismo per permettere l'autofecondazione.

#figure(
  caption: [Classificazione dei platelminti],
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
    columns: (2),
    table.header[Classe][Caratteristiche],
    [Turbellari],[Conducono vita libera; comprendono la planaria, largamente utilizzata nei laboratori
per studiarne le capacità rigenerative],
    [Trematodi], [Forme parassite. Comprendono lo Schistosoma (comune in Africa, Asia e Sudamerica, provoca una forma di anemia, nota come schistosomiasi) e la Fasciola hepatica],
    [Cestodi], [Tutti parassiti; tra questi, la tenia, dal corpo nastriforme, che vive nell’intestino dell’uomo e di altri animali
]
)  
)

== Nemertini

I nemertini, appartenenti al _phylum_ Nemertini, sono organismi vermiformi che possono raggiungere una lunghezza di 30 metri e vivono prevalentemente sui fondali marini fangosi. Sono considerati tra gli animali più semplici dotati di un canale alimentare con apertura posteriore, l'ano. Dispongono inoltre di un rudimentale pseudoceloma, una cavità interna, e di una particolare proboscide estroflessibile. Quest'ultima può essere associata a ghiandole velenifere e utilizzata per catturare le prede; quando non è in uso, viene riposta in una struttura allungata chiamata rincocele, che si sviluppa dorsalmente al canale alimentare.

== Aschelminti

Il _phylum_ Aschelmintes raggruppa animali con caratteristiche molto varie, tanto che la parentela tra le diverse classi è oggetto di discussione tra gli studiosi. Tuttavia, gli aschelminti condividono alcuni elementi comuni, come la simmetria bilaterale, la presenza di un pseudoceloma e la separazione dei sessi.

#figure(
  caption: [Classificazione degli aschelminti],
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
    columns: (2),
    table.header[Classe][Caratteristiche],
    [Rotiferi],[Devono il loro nome alla presenza di un particolare apparato rotatorio, costituito da un disco ciliato posizionato intorno alla bocca. Questo meccanismo, grazie al movimento delle ciglia, genera un vortice nell'acqua che convoglia batteri e protozoi verso l'apertura orale. La faringe dei rotiferi, caratterizzata da uno spesso strato muscolare, utilizza elementi scheletrici per triturare il cibo. La loro modalità riproduttiva può essere sessuata o agamica; in alcuni casi si osserva la partenogenesi],
    [Acantocefali], [Sono organismi parassiti privi di intestino e di bocca. All'estremità anteriore possiedono una proboscide munita di uncini, adattamento utile per l'ancoraggio all'ospite],
    [Gastrotrichi], [Derivano il loro nome dalla presenza, in alcune specie, di ciglia situate sulla superficie ventrale. Questi organismi raggiungono una lunghezza massima di circa 1,5 millimetri],
    [Nematodi], [Chiamati anche vermi cilindrici, presentano un corpo lungo, sottile e cilindrico, rivestito da una resistente cuticola. Lo pseudoceloma, pieno di liquido, avvolge gli organi interni e funge da scheletro idrostatico. Contro questa struttura i quattro gruppi muscolari longitudinali esercitano la forza necessaria per il movimento. La riproduzione è sessuata con sessi generalmente separati; il dimorfismo sessuale consente di distinguere i maschi dalle femmine in base a forma e dimensioni. I nematodi includono sia specie a vita libera, diffuse in svariati ambienti, sia numerosi parassiti dell’uomo, degli animali domestici e delle piante],
    [Nematomorfi], [Presentano somiglianze morfologiche con i nematodi, tuttavia vivono come parassiti durante lo stadio larvale],
    [Chinorinchi], [Possiedono una cuticola dotata di setole o aculei e abitano esclusivamente ambienti marini],
    [Priapulidi], [Caratterizzati dalla presenza di una proboscide armata di uncini, popolano prevalentemente i mari freddi],
)  
)

== Anellidi

Negli anellidi, appartenenti al _phylum_ Anellida, compare per la prima volta il celoma, una cavità piena di liquido che svolge la funzione di scheletro idrostatico. Questi animali sono noti anche come vermi segmentati, poiché il loro corpo è suddiviso in segmenti chiamati metameri. Ogni metamero ospita due gangli nervosi, una coppia di organi escretori e due vasi sanguigni. I gangli nervosi di un singolo segmento sono collegati trasversalmente tra loro, mentre i gangli dei metameri vicini sono uniti da un cordone longitudinale.

Il sistema digerente inizia dalla bocca, localizzata nel secondo metamero, e termina con l'ano situato nell'ultimo segmento. Per la prima volta compare un apparato circolatorio costituito da cinque paia di cuori che si contraggono ritmicamente, convogliando il sangue in due vasi principali: uno dorsale e uno ventrale. Questi vasi sono interconnessi nei singoli metameri tramite vasi trasversali.

La respirazione avviene principalmente attraverso la cute, sebbene alcune specie possiedano un rudimentale apparato respiratorio costituito da estensioni ramificate simili a branchie. L'epidermide delle regioni locomotorie può presentare espansioni chiamate parapodi, spesso provviste di setole.

La riproduzione è sessuata e prevede uno sviluppo caratterizzato dalla presenza della larva trocofora. Questa forma larvale è particolarmente interessante dal punto di vista filogenetico in quanto ricorda quella dei molluschi.

#figure(
  caption: [Classificazione degli anellidi],
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
    columns: (2),
    table.header[Classe][Caratteristiche],
    [Policheti],[Corpo ricoperto da numerose setole, diffusi principalmente in ambiente marino. Possono essere liberamente natanti oppure sessili; in quest'ultimo caso vivono all'interno di un tubo secreto dalla loro epidermide],
    [Oligocheti], [Presentano poche setole. Si trovano sia nelle acque marine che dolci, oltre che sulla terraferma. Tra questi è incluso il lombrico], 
    [Irudinei], [Privati di setole, possono essere carnivori o parassiti, come ad esempio la sanguisuga. Vivono in acque dolci stagnanti oppure nella terraferma]
)  
)

== Artropodi

Gli artropodi, classificati nel _phylum_ Arthropoda, rappresentano il gruppo più numeroso del regno animale. Uno dei loro tratti distintivi è la presenza di appendici articolate utilizzate per la locomozione, da cui deriva il nome del _phylum_. Sono dotati di un esoscheletro protettivo composto da chitina e sali di calcio, che funge anche da punto d'inserzione per i muscoli. Poiché l'esoscheletro non si espande con l'accrescimento dell'animale, deve essere periodicamente sostituito attraverso un processo chiamato muta.

Gli artropodi hanno un sistema circolatorio aperto, dove il sangue non scorre esclusivamente nei vasi ma bagna direttamente gli organi interni. La respirazione avviene tramite branchie negli individui acquatici oppure tramite trachee o polmoni a libro nei terrestri. L'eliminazione dei rifiuti metabolici avviene grazie a nefridi o tubuli malpighiani che si aprono verso l'esterno.

Il corpo degli artropodi è composto da metameri raggruppati in tre regioni principali: il capo, che ospita le antenne e gli occhi composti; il torace, dotato di arti; e l'addome. Lo sviluppo embrionale è indiretto e include diversi stadi larvali attraverso un processo di metamorfosi.

#figure(
  caption: [Classificazione degli artropodi],
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
    columns: (2),
    table.header[Classe][Caratteristiche],
    [Aracnidi],[Corpo suddiviso in cefalotorace e addome. Presentano cheliceri e pedipalpi per catturare il cibo, quattro paia di zampe e respirano tramite trachee o polmoni particolari. Sono sia marini che terrestri],
    [Crostacei], [Corpo composto da cefalotorace, ricoperto da un carapace, e addome. Dotati di mandibole potenti e respirazione attraverso branchie; la maggior parte delle specie vive in ambienti acquatici],
    [Miriapodi], [Corpo segmentato in numerosi metameri e dotato di una testa specifica. L’apparato escretore è costituito da tubuli malpighiani e la respirazione avviene tramite trachee. Sono specie esclusivamente terrestri],
    [Insetti], [Corpo costituito da 20 segmenti, raggruppati in capo, torace e addome. Presentano tre paia di zampe e 2 o 4 ali. Le specie sono prevalentemente terrestri]
)  
)

== Molluschi

I molluschi (_phylum_ Mollusca) si distinguono per una caratteristica particolare: la larva presenta somiglianze con la trocofora degli anellidi, suggerendo l'ipotesi di un antenato comune. Sebbene vi siano alcune affinità tra i due _phyla_, permangono anche molte differenze.

Il corpo dei molluschi non è suddiviso in metameri, bensì si articola in un capo e un tronco. Il capo ospita la bocca, i gangli cerebrali e gli organi di senso principali. Il tronco si compone di un muscolo ventrale chiamato piede, utilizzato per la locomozione, e di un sacco dei visceri, che contiene gli organi interni. Quest'ultimo è rivestito da una piega cutanea nota come mantello, il quale si occupa della secrezione della conchiglia calcarea.

Nella cavità orale è situata la radula, una struttura nastriforme dotata di dentelli che triturano il cibo. Il sistema digerente include la faringe, l'esofago, lo stomaco e l'intestino, supportati dall'epatopancreas, una ghiandola che svolge funzioni digestive.

L'apparato circolatorio dei molluschi è aperto; il sangue non scorre esclusivamente nei vasi, ma irrora direttamente i tessuti. Gli esemplari acquatici respirano grazie a branchie simili a pettini (ctenidi), mentre le specie terrestri utilizzano un "polmone" derivato dalla cavità del mantello.

La riproduzione avviene sempre in modalità sessuata e, in alcune specie, gli individui sono ermafroditi. Lo sviluppo può essere diretto, con la nascita di un individuo morfologicamente simile all'adulto, oppure indiretto, caratterizzato dalla formazione di una larva e da una complessa metamorfosi.

#figure(
  caption: [Classificazione dei molluschi],
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
    columns: (2),
    table.header[Classi][Caratteristiche],
    [Bivalvi (o lamellibranchi o pelecipodi)],[Conchiglia composta da due valve, assenza di un capo ben definito. Vivono nell’acqua filtrando il cibo, ad esempio ostriche e mitili],
    [Cefalopodi], [Simmetria bilaterale con un capo ben differenziato provvisto di tentacoli muniti di ventose. Il corpo possiede un mantello saldato, con conchiglia interna quando presente, e un sistema nervoso molto sviluppato. Sono marini e utilizzano un imbuto muscoloso per spingersi indietro rapidamente, mentre le pinne permettono movimenti in avanti più lenti. Comprendono polpi, seppie e calamari],
    [Gasteropodi], [Conchiglia unica a spirale, capo ben sviluppato con due occhi che spesso si trovano alla sommità di tentacoli. Molti sono ermafroditi e si trovano in ogni tipo di habitat. Tra gli esempi si annoverano lumache e chiocciole],
    [Scafopodi], [Conchiglia simile a una zanna d’elefante, vivono nei fondali marini. Un esempio è rappresentato dal genere Dentalium]
)  
)

== Echinodermi

Negli echinodermi, appartenenti al _phylum_ Echinodermata, si osserva un cambiamento significativo nella simmetria durante il loro ciclo di vita: la larva presenta una simmetria bilaterale, mentre l'individuo adulto è caratterizzato da una simmetria pentaraggiata. La struttura corporea è supportata da un dermascheletro costituito da piastre calcaree localizzate sotto l'epidermide. Non è presente una testa ben definita, bensì due regioni principali: il polo orale, dove si trova l'apertura boccale, e il polo aborale, che ospita l'apertura anale.

Una caratteristica distintiva degli echinodermi è l'apparato acquifero, una struttura complessa composta da un canale circolare situato attorno alla bocca, da cui si diramano cinque canali radiali pieni di liquido. Lungo questi ultimi emergono appendici dotate di ventose, i pedicelli ambulacrali, utilizzati sia per la locomozione sia per la respirazione.

La funzione respiratoria può inoltre essere integrata, a seconda della specie, mediante organi specializzati quali polmoni o branchie. L'apparato circolatorio è composto da lacune che corrono parallele ai canali del sistema acquifero. Il sistema nervoso è strutturato in un anello posto intorno alla bocca e cinque tronchi radiali. Gli organi riproduttori, le gonadi, seguono generalmente il modello pentaraggiato: ne sono presenti cinque. La riproduzione è di tipo sessuato e i sessi sono separati. Lo sviluppo avviene in maniera indiretta attraverso la formazione di larve.

#figure(
  caption: [Classificazione degli echinodermi],
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
    columns: (2),
    table.header[Classe][Caratteristiche],
    [Crinoidi], [Fissati al substrato marino anche nella fase larvale, presentano l'aspetto di stelle dai colori vivaci e un lungo stelo sottile (da cui il nome "gigli di mare"); in alcune specie lo stelo si spezza una volta raggiunta la maturità, permettendo una vita libera],
    [Asteroidi], [Riconosciuti come stelle marine, hanno la tipica forma a 5 raggi; sono animali voraci che possono arrivare a danneggiare gravemente le coltivazioni di molluschi], 
    [Ofiuroidi], [Chiamati stelle serpentine per le braccia sottili e cilindriche e per i movimenti caratteristici che li fanno strisciare sul fondo marino],
    [Echinoidi], [Comunemente noti come ricci di mare, hanno un corpo globulare rivestito da un esoscheletro rigido con aculei mobili usati per la locomozione e la difesa],
    [Oloturoidi], [Detti cetrioli di mare, sono considerati gli echinodermi più primitivi per la loro forma a sacco che nasconde la simmetria radiale] 
)  
)

== Cordati

Nel _phylum_ dei Cordati, nonostante l'ampia diversità morfologica, sono condivise alcune caratteristiche essenziali: una corda dorsale (notocorda) costituita da tessuto cartilagineo o osseo, flessibile ed elastica, che funge da punto di ancoraggio per i muscoli; un tubo neurale che si espande nella regione cefalica formando il cervello e da cui si originano i nervi; delle fessure branchiali faringee, che possono rimanere aperte o chiudersi nei primi stadi dello sviluppo; e una coda che si estende oltre l'estremità posteriore dello scheletro.

I Cordati, insieme agli Artropodi e ai Molluschi, costituiscono uno dei gruppi evolutivi di maggior successo. Questo successo è attribuibile in particolare alla presenza della notocorda, a cui si inseriscono i muscoli. Tale struttura consente movimenti complessi e rapidi, come il nuoto, la corsa e il volo.

La classificazione dei Cordati si basa sulla localizzazione della notocorda. Gli Urocordati, considerati i più primitivi, presentano la notocorda solo nella parte caudale della larva. Al contrario, nei Vertebrati, più evoluti, la notocorda viene circondata o sostituita da uno scheletro cartilagineo o osseo.

#figure(
  caption: [Classificazione dei cordati],
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
    columns: (2),
    table.header[Sottitipo][Descrizione],
    [Urocordati], [La corda dorsale è limitata alla regione caudale nella fase larvale; noti anche come tunicati per la presenza di una cuticola simile alla cellulosa. Il sistema circolatorio è costituito da un cuore tubulare e un reticolo di lacune, mentre un sistema escretore differenziato è assente. Il sistema nervoso è ridotto a un ganglio cerebrale. Sono prevalentemente ermafroditi e si sviluppano in modo indiretto. Comprendono organismi marini come ascidie e appendicolarie],  
    [Cefalocordati], [La corda dorsale si estende dalla testa alla coda e persiste per tutta la vita; non presentano un vero cervello né organi di senso sviluppati. Il cuore corrisponde a un grosso vaso contrattile. L'esempio più noto è l’anfiosso, un animale marino che presenta caratteristiche primitive dei cordati, ma con muscoli, nervi e un sistema circolatorio chiuso tipici dei vertebrati], [Vertebrati], [La corda dorsale è presente solo nello stadio embrionale e si estende fino al cervello; nell’adulto è sostituita dalla colonna vertebrale cartilaginea (come nelle lamprede o in alcuni pesci) o ossea. Il corpo è suddiviso in capo e tronco: il primo ospita il cervello e gli organi di senso, mentre gli arti sono ancorati al secondo. Le classi comprendono ciclostomi (come la lampreda), pesci, anfibi, rettili, uccelli e mammiferi]
)  
)
#pagebreak()
#figure(
  caption: [Principali caratteristiche dei vertebrati],
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
    columns: (5),
    table.header[Classe][Rivestimento \ interno][Temperatura \ corporea][Art][Respirazione],
    [Agnati o ciclostomi], [Pelle viscida], [Eterotermi], [Assenza di arti pari], [Branchie],
    [Pesci cartilaginei], [Scaglie], [Eterotermi], [Due paia di pinne], [Branchie],
    [Pesci ossei], [Scaglie e muco], [Eterotermi], [Due paia di pinne], [Branchie],
    [Anfibi], [Pelle umida, spesso \ coperta di muco], [Eterotermi], [Due paia di arti, \ assenza di unghie], [Branchie e \ polmoni],
    [Rettili], [Pelle secca, \ squame], [Eterotermi], [Due paia di arti, \ unghie], [Polmoni],
    [Uccelli], [Penne, squame \ sulle zampe], [Omeotermi], [Un paio di ali, \ un paio di zampe, \ unghie], [Polmoni],
    [Mammiferi], [Peli], [Omeotermi], [Due paia di zampe, \ spesso unghie], [Polmoni],
)  
)

#note(bottom)[== *🧩* Altri _phyla_ di animali <senza_numero>

Gli Gnatostomulidi (_phylum_ Gnathostomulida) sono animali di piccole dimensioni (0,5-3 mm), con corpo cilindrico e vermiforme rivestito di ciglia. La loro bocca è situata sulla parte ventrale. Questi organismi ermafroditi vivono principalmente nei fondali sabbiosi e fangosi.

I Sipunculidi (_phylum_ Sipunculida) possiedono un corpo allungato che si restringe anteriormente formando una proboscide. Il loro habitat è nei fondali, dove vivono sepolti.

I Camptozoi o Endoprotti (_phylum_ Kamptozoa) sono organismi acquatici che vivono in colonie. Ogni individuo è sostenuto da un peduncolo che termina con una struttura allargata contenente gli organi interni. La bocca è circondata da una corona di tentacoli.

I Pentastomidi (_phylum_ Pentastomida) sono esclusivamente parassiti di vertebrati terrestri. Nel loro stadio larvale sviluppano quattro paia di arti dotati di uncini, ma nel corso dello sviluppo due paia scompaiono e le altre due vengono collocate in tasche attorno alla bocca, caratteristica da cui deriva il nome del _phylum_ ("cinque bocche").

I Tardigradi (_phylum_ Tardigrada) sono microrganismi dotati di quattro paia di arti terminanti con unghie. Presentano una bocca munita di stiletti retrattili utili per perforare. La loro capacità di sopravvivere in condizioni estreme (criptobiosi) è particolarmente sviluppata: resistono per anni in mancanza totale d'acqua, di ossigeno, a temperature estreme (da -272 a 150 °C), ad alti livelli di radiazioni ionizzanti (6000 Gy) e al vuoto dello spazio.

Gli Onicofori (_phylum_ Onychophora) hanno un corpo segmentato simile a quello degli Anellidi ma rivestito da una cuticola sottile. La testa è ben distinta e dotata di due antenne. Sul ventre sono presenti numerose appendici locomotorie provviste di unghie (da cui il termine greco "ónicos"). I sessi sono separati e vi è un marcato dimorfismo sessuale.]
#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Cefalizzazione: Processo che concentra gli organi di senso, il cervello e la bocca all'estremità anteriore del corpo.  

/ Celoma: Cavità corporea in cui sono contenuti gli organi interni.  

/ Ermafroditismo: Condizione in cui un individuo possiede sia organi riproduttori maschili che femminili.  

/ Gemmazione: Modalità di riproduzione agamica attraverso la formazione di un nuovo individuo da una gemma che si sviluppa dal corpo del genitore.  

/ Invertebrati: Animali privi di scheletro interno.  

/ Metameri: Segmenti ripetitivi, ciascuno contenente gli stessi organi, che suddividono il corpo degli anellidi.  

/ Metamorfosi: Trasformazione radicale della larva nella forma adulta.  

/ Muta: Procedura periodica di perdita dell'esoscheletro, tipica degli artropodi, per consentire l'accrescimento dell'animale.  

/ Pseudoceloma: Cavità corporea simile al celoma, ma con origini embrionali differenti.  

/ Vertebrati: Animali dotati di scheletro interno.
