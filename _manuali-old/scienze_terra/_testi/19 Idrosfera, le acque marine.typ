#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[L'insieme delle acque presenti sulla Terra è chiamato idrosfera. Essa è composta principalmente da mari e oceani, che ricoprono circa tre quarti della superficie terrestre. L'oceanografia, la disciplina che studia gli oceani e i mari da un punto di vista geomorfologico, chimico-fisico e biologico, ha permesso di approfondire le conoscenze relative a questi ambienti. 

Le proprietà chimico-fisiche dell'acqua di mare, come la salinità, la densità, la temperatura, la pressione, il colore e la trasparenza, influenzano non solo i fenomeni che si verificano al suo interno, ma anche la vita degli organismi che la abitano. Inoltre, le acque marine e oceaniche sono soggette a diversi tipi di movimento: le correnti, che sono costanti; le onde, irregolari; e le maree, che si ripetono periodicamente. Grazie alle numerose esplorazioni oceanografiche condotte negli anni Sessanta e Settanta, è stato possibile descrivere la complessa e variegata morfologia dei fondali marini.]

== Oceani e mari

Gli oceani e i mari sono parte dell'idrosfera, che comprende l'acqua presente sulla Terra nei suoi tre stati fisici: liquido (nei mari, oceani, laghi e fiumi), solido (nei ghiacciai) e aeriforme (come vapore nell'atmosfera). Questi elementi formano un vero e proprio involucro che avvolge il pianeta: la maggior parte dell'idrosfera è costituita da oceani e mari, che coprono oltre il 70% della superficie terrestre. Gli oceani indicano vaste distese d'acqua che circondano e separano i continenti, mentre i mari sono bacini d'acqua più limitati, circondati o adiacenti alle terre emerse. In alcuni casi, il termine "mare" è utilizzato anche per descrivere bacini chiusi, come il Mar Caspio, che non comunicano direttamente con gli oceani.

L'oceanografia si occupa dello studio degli oceani e dei mari sotto aspetti morfologici, chimici, fisici e biologici. Analizza la conformazione dei fondali marini, la natura dei sedimenti che vi si accumulano, le proprietà chimico-fisiche dell'acqua e il loro movimento, così come le interazioni tra oceani e atmosfera. Le scoperte effettuate mediante le esplorazioni oceanografiche hanno arricchito significativamente la comprensione della struttura degli abissi marini, contribuendo anche alla formulazione della teoria della tettonica delle placche.

#note(bottom)[== *🧩* I sedimenti marini <senza_numero>

Nell'ambito delle masse marine e oceaniche si assiste a un incessante processo di sedimentazione, costituito principalmente da resti di organismi viventi. In particolare, tali detriti comprendono gusci e scheletri di natura calcare o silicea, che tuttavia rischiano di essere completamente dissolti dall'azione chimica dell'acqua marina nelle fasce comprese tra i 3500 e i 5500 metri di profondità. Questi materiali organici si depositano sul fondo oceanico, dove si mescolano con detriti provenienti dalle scarpate continentali trasportati dai corsi d'acqua. Lungo le scarpate prevalgono sedimenti grossolani, come sabbie, mentre nelle aree più profonde si accumulano sedimenti più fini, come argille. In queste zone più remote trovano posto anche materiali di origine vulcanica e cosmica. Di particolare interesse sono i noduli di manganese, aggregati minerali di forma appiattita e dal diametro medio di circa 5 cm, distribuiti su ampie porzioni del fondale oceanico. Tali noduli contengono elevate concentrazioni di manganese e ferro, ma possono racchiudere anche altri metalli, come rame e nichel. Sebbene il loro recupero rimanga economicamente gravoso al momento, si ritiene che essi possano diventare una risorsa cruciale per l'approvvigionamento di minerali metallici nei prossimi decenni.

I sedimenti organici derivati prevalentemente da zone ad alta concentrazione di plancton — un insieme di organismi microscopici trasportati passivamente dalle correnti e dalle onde — formano vaste distese di fanghi calcarei a globigerine (protozoi unicellulari), fanghi silicei a radiolari (protozoi unicellulari) e fanghi derivati da diatomee (alghe unicellulari). Il continuo processo di sedimentazione che caratterizza gli oceani rappresenta un elemento fondamentale nella produzione e trasformazione delle rocce sedimentarie.]

== Le caratteristiche chimico-fisiche dell'acqua di mare

#figure(
  caption: [I principali sali contenuti in 1 kg di acqua di mare],
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
  table.header[Sali][g/kg],
[cloruro di sodio], [27,123],
[cloruro di magnesio], [3,807],
[solfato di magnesio], [1,658],
[solfato di calcio], [1,260],
[solfato di potassio], [0,863],
[carbonato di calcio], [0,123],
[bromuro di magnesio], [0,076],
[Totale], [35,000],
)  
)

Le caratteristiche chimico-fisiche dell'acqua di mare sono numerose e determinano tanto i processi che avvengono in essa quanto la vita degli organismi marini. Tra queste spiccano: salinità, densità, temperatura, pressione, colore e trasparenza.

La salinità rappresenta la quantità di sali disciolti nelle acque marine; questi derivano dall'apporto continuo di sostanze saline da parte dei fiumi e dai vulcani sottomarini. È misurata in grammi di sali contenuti in un chilogrammo di acqua e presenta un valore medio del 35 per mille. Ciò significa che evaporando 1 kg di acqua marina rimangono circa 35 g di sali. La salinità può variare in base a fattori quali l'evaporazione, il contributo di acqua dolce proveniente dai continenti e le precipitazioni. Ad esempio, è maggiore nelle zone tropicali calde caratterizzate da intensa evaporazione (fino al 43 per mille nel Mar Rosso) o dove si formano ghiacci marini; è invece minore nei mari freddi (come nel Mar Baltico, dove si raggiunge il 7 per mille) o nei territori equatoriali soggetti a piogge frequenti e abbondanti che diluiscono i sali presenti. La presenza di sali disciolti abbassa inoltre il punto di congelamento dell'acqua: con una salinità del 35 per mille, l'acqua congela a −1,9 °C anziché a 0 °C. Tra i sali disciolti nell'acqua marina, il più abbondante è il cloruro di sodio (il comune sale da cucina), seguito da quelli di magnesio, calcio e potassio.

Oltre ai sali, nelle acque si trovano disciolti numerosi gas, gli stessi presenti nell'atmosfera. Tra questi, l'ossigeno è di cruciale importanza per la respirazione degli organismi viventi. La sua concentrazione, misurata in mg/l, varia in funzione della profondità e della temperatura. La quantità di ossigeno disciolto aumenta al diminuire della temperatura, poiché la solubilità dei gas in un liquido cresce con la riduzione della temperatura, ma diminuisce con l'incremento della profondità, raggiungendo un minimo intorno ai 1000 metri. Tuttavia, nelle acque profonde l'ossigeno torna ad aumentare grazie alle basse temperature e alla limitata presenza di organismi consumatori.

La densità dell'acqua di mare, pari in media a circa 1,02 g/cm#super[3] a 4°C, cresce con l'aumento della salinità e della pressione (quindi della profondità) e diminuisce con il calare della temperatura. Lo strato in cui si verifica un rapido incremento della densità, situato tra i 200 e i 1000 metri di profondità, è chiamato picnoclino. Va inoltre notato che le acque del Mar Mediterraneo presentano una significativa densità nonostante le alte temperature, a causa dell'intensa evaporazione e del limitato contributo salino delle acque continentali.

La temperatura dell'acqua marina varia in base alla latitudine, alla stagione e alla profondità. Le temperature massime si registrano in superficie nelle zone equatoriali e si riducono di circa 1°C per ogni grado di aumento della latitudine. Con l'aumento della profondità la temperatura diminuisce ulteriormente, poiché le radiazioni infrarosse, responsabili del riscaldamento delle acque, penetrano solo negli strati superficiali, fino a una profondità massima di circa 10 metri. Tra i 200 e i 1000 metri si osserva una brusca riduzione della temperatura in uno strato noto come termoclino; oltre questa fascia la temperatura si stabilizza intorno ai valori prossimi agli 0°C. Differenze di temperatura e densità tra i vari strati possono dar luogo a moti convettivi alle diverse latitudini, favorendo il rimescolamento delle acque e influenzando così la distribuzione degli organismi marini.

La pressione esercitata dall'acqua, detta pressione idrostatica, aumenta con la profondità, incrementandosi di circa 1 atmosfera ogni 10 metri. Nei fondali oceanici si registrano pressioni estremamente elevate; tuttavia gli organismi abissali non ne risentono negativamente poiché compensano la pressione esterna con quella esercitata dai propri liquidi interni. Sulla base della loro capacità di tollerare variazioni nella pressione idrostatica, gli organismi si distinguono in stenobati (poco tolleranti) ed euribati (più tolleranti).

Il colore dell'acqua di mare, prevalentemente azzurro-blu con sfumature verso il verde o il viola, è determinato dalla diffusione della luce da parte delle molecole d'acqua. Queste particelle microscopiche assorbono le radiazioni con lunghezza d'onda maggiore (come il rosso) e lasciano passare quelle con lunghezza d'onda più corta (come il blu). Il colore dell'acqua può variare anche in presenza di particelle organiche e inorganiche sospese.

La trasparenza delle acque, ovvero la capacità di lasciarsi attraversare dalla luce, è quasi completa nei primi 50 metri di profondità (zona fotica), ma diminuisce progressivamente fino ai 200 metri (zona afotica), oltre i quali tutte le radiazioni luminose vengono completamente assorbite.

#note(bottom)[== *🧩* La morfologia dei fondali oceanici <senza_numero> 

L'esplorazione dei fondali oceanici ha conosciuto un significativo sviluppo grazie alle numerose spedizioni scientifiche condotte negli anni Sessanta e Settanta, che hanno portato alla scoperta di "paesaggi" sottomarini straordinariamente diversificati e complessi, precedentemente ignoti, soprattutto nelle zone di maggior profondità.

Muovendosi dalla linea di costa verso il cuore dell'oceano, si incontra inizialmente la piattaforma continentale, un'estensione relativamente modesta che solitamente si spinge fino a un'isobata di 200 metri. Essa è seguita da una scarpata continentale, caratterizzata da una pendenza variabile tra i 3° e i 5°, la quale discende progressivamente fino a raggiungere le piane abissali, situate oltre i 3000-5000 metri di profondità. Queste aree abissali, lungi dall'essere uniformi, possono presentare una sorprendente varietà di strutture geologiche, tra cui imponenti catene montuose sottomarine (note come dorsali oceaniche), che rappresentano punti di risalita del magma. Vi si trovano inoltre rilievi isolati che talvolta emergono formando isole o arcipelaghi. Le piane abissali sono sovente interrotte da fosse profondissime, che raggiungono profondità comprese tra i 6000 e gli 11000 metri; queste strutture, note anche come abissi oceanici, corrispondono a grandi fratture della litosfera o a zone di subduzione poste lungo i margini tra placche tettoniche contrapposte. I fondali oceanici sono altresì caratterizzati da un processo costante di sedimentazione.]

== Le variazioni di livello dei mari

Come avviene per ogni fluido, la superficie libera dei mari, a diretto contatto con l'atmosfera, tende naturalmente a disporsi perpendicolarmente alla forza di gravità in ogni suo punto. Tale configurazione coincide praticamente con quella del geoide, termine utilizzato per descrivere la forma reale della Terra. Il livello di questa superficie, noto come livello medio marino, viene assunto come riferimento fondamentale per gli studi di altimetria delle terre emerse e per la misurazione delle profondità marine. Questo livello medio rappresenta una risultante delle misurazioni condotte, in genere su un periodo ventennale, mediante strumenti permanenti chiamati idrometri, posizionati in punti strategici lungo determinate linee costiere.

Nel corso del tempo, il livello medio del mare ha subito variazioni significative, in particolare durante l'era quaternaria. Tali fluttuazioni sono state strettamente correlate ai mutamenti climatici e all'alternarsi delle glaciazioni. Durante l'ultima glaciazione, ad esempio, si registrò un abbassamento (regressione) di oltre 100 metri rispetto al livello attuale, mentre nei periodi interglaciali si verificavano risalite (trasgressioni) di alcune decine di metri. In epoca storica, ossia negli ultimi due millenni, è stato evidenziato un generale innalzamento del livello medio marino di circa 1-2 metri lungo le coste italiane.

== Le correnti marine

Le correnti marine costituiscono movimenti continui delle masse d'acqua negli oceani, paragonabili a giganteschi fiumi che scorrono a velocità comprese tra 2 e 10 km/h. Questi flussi si distinguono dalle acque circostanti per caratteristiche specifiche come temperatura e salinità. Le correnti possono originarsi da diversi fenomeni: dall'azione combinata dei venti e delle disuguaglianze di pressione atmosferica, dall'influsso delle maree o dalle differenze di densità dell'acqua marina dovute a vari fattori, come il disomogeneo riscaldamento di regioni oceaniche o le variazioni di salinità.

Le correnti si classificano generalmente in superficiali e profonde, a seconda della loro collocazione all'interno della colonna d'acqua. Inoltre, si distinguono in correnti calde, caratterizzate da temperature superiori rispetto alle acque circostanti (tendono a interessare i margini occidentali dei continenti), e correnti fredde (associate ai margini orientali), nel caso contrario. Nel loro complesso, queste correnti creano un circuito oceanico, un moto ciclico delle masse d'acqua che percorrono lunghi tragitti chiusi all'interno di un bacino oceanico. Nelle latitudini polari, le acque tendono a raffreddarsi significativamente e ad acquisire maggiore densità, affondando verso i fondali marini e propagandosi verso latitudini più calde. Questo movimento richiede il richiamo di altra acqua superficiale dalle regioni più basse. Parallelamente, le acque calde delle aree tropicali sono trasportate superficialmente verso regioni polari, dove subiscono raffreddamento e affondano nuovamente, generando un ciclo continuo.

Il ruolo delle correnti marine è cruciale nel trasferimento di energia termica tra regioni tropicali e polari. Esse contribuiscono a mitigare il clima attraverso lo spostamento di acqua calda verso latitudini più elevate. Per esempio, grazie alla calda Corrente del Golfo che lambisce le coste norvegesi con le tiepide acque dell'Atlantico centrale, i porti della Norvegia rimangono privi di ghiaccio durante l'inverno. Al contrario, la penisola canadese del Labrador, situata a latitudini appena inferiori rispetto alla Norvegia, presenta porti ghiacciati per gran parte dell'anno a causa della fredda Corrente del Labrador che trasporta acque artiche verso sud, senza ricevere l'influenza di correnti calde.

L'individuazione delle correnti marine è facilitata dall'impiego di satelliti dotati di sensori capaci di rilevare radiazioni infrarosse emesse dalla superficie degli oceani. Questi strumenti permettono di registrare la temperatura delle acque e dunque il percorso delle correnti, distinguendo le zone oceaniche caratterizzate da differenze termiche.

=== Correnti superficiali

Le cause principali della circolazione superficiale delle acque oceaniche sono legate all'azione dei venti e all'energia solare. I venti trascinano le masse d'acqua sulla superficie degli oceani, mentre il Sole riscalda maggiormente le regioni comprese tra i tropici, generando variazioni di temperatura. L'energia trasferita dal vento, attraverso l'attrito, mette in movimento lo strato superficiale delle acque. Queste correnti, denominate correnti superficiali, si estendono fino a una profondità di circa 200 metri.

L'andamento delle correnti oceaniche superficiali è influenzato dalla forza di Coriolis. Nell'emisfero settentrionale le correnti vengono deviate verso destra rispetto alla loro direzione ideale di movimento, mentre nell'emisfero meridionale si spostano verso sinistra. Anche la presenza di ostacoli naturali, come dorsali oceaniche e continenti, può alterare il loro percorso.

Tra le correnti superficiali più conosciute figura la Corrente del Golfo. Questa corrente ha origine dalla corrente nord-equatoriale, il cui motore principale è rappresentato dagli alisei tropicali. Si forma nel Golfo del Messico, dove confluiscono la corrente delle Antille e quella di Florida. La Corrente del Golfo segue inizialmente la costa sud-orientale degli Stati Uniti, attraversa l'Atlantico settentrionale e lambisce le coste delle isole britanniche, della penisola scandinava, per poi dirigersi verso l'Islanda. Una sua diramazione devia a sud verso le Canarie, prosegue a ovest e infine ritorna nel Golfo del Messico, chiudendo il suo anello.

Lungo le coste orientali dei continenti, come quelle della California e del Perù, il vento che soffia parallelamente alla costa in direzione dell'Equatore provoca un movimento dell'acqua superficiale verso il largo. Questo fenomeno magnetico è correlato all'effetto di Coriolis. L'acqua spostata viene sostituita da quella proveniente dagli strati profondi, dando luogo al fenomeno della risalita (detto upwelling). L'upwelling è di fondamentale importanza biologica, poiché le acque profonde trasportano nutrienti accumulati sul fondo e li reintegrano nel ciclo vitale della fauna marina.

=== Correnti profonde

La circolazione profonda degli oceani è regolata principalmente dalla forza di gravità e dalle differenze di densità tra le masse d'acqua. Le acque fredde e salate risultano essere più dense, quindi più pesanti, rispetto a quelle calde e meno salate, e tendono a sprofondare scorrendo sotto le acque più leggere. Questo tipo di movimento dà origine alle cosiddette correnti di densità o correnti di gradiente. Per questo motivo si parla di circolazione termoalina (dal greco thermós, caldo, e alós, sale), che si basa sulle differenze di temperatura e salinità. Il tempo necessario affinché le acque superficiali si spostino in profondità e successivamente risalgano varia mediamente dai 500 ai 2000 anni.

Le masse d'acqua profonde si classificano in base alla loro regione di origine e alla profondità a cui scorrono. Le correnti di densità sono particolarmente rilevanti nel Mediterraneo e nelle regioni polari, dove acque superficiali fredde e salate si inabissano fino al fondo oceanico. Dai poli artico e antartico nasce un flusso che si muove lungo il fondo oceanico verso latitudini inferiori.

== Le onde

Le onde rappresentano movimenti irregolari della superficie marina che non si percepiscono oltre i 200 metri di profondità. Esse non comportano spostamenti orizzontali dell'acqua, ma solo oscillazioni delle particelle lungo orbite circolari o ellittiche. Le onde possono formarsi per effetto del vento che agisce sulla superficie dell'acqua, ma anche a seguito di maree, movimenti sismici, frane sottomarine o perturbazioni atmosferiche violente. Inoltre, alcune onde denominate "senza vento" possono propagarsi per migliaia di chilometri dal loro punto di origine.

Quando il vento soffia sul mare, esercita una pressione sulla superficie proporzionale alla sua intensità. Poiché il liquido è incomprimibile, si verifica un abbassamento, dando origine a un cavo (o ventre) d'onda. Le particelle inizialmente contenute nel cavo si spostano sopravento, formando una cresta sollevata. Con il persistere del vento, cavi e creste si susseguono in modo parallelo, generando un treno d'onda chiamato onde forzate.

In una onda si possono identificare i seguenti parametri: lunghezza d'onda (L), ovvero la distanza tra due creste o due cavi consecutivi; altezza dell'onda (H), ossia la differenza di livello tra la sommità della cresta e il fondo del cavo; periodo dell'onda (T), cioè il tempo necessario affinché due creste o due cavi successivi attraversino lo stesso punto; profondità dell'onda, ovvero il punto più basso sotto la superficie dove viene percepito il movimento delle acqua (pari a L/2).

In mare aperto, lontano dall'influenza dei fondali, il moto si propaga verso il basso a causa dell'attrito tra le particelle, che descrivono orbite circolari "impilate" lungo una verticale. Il diametro di queste orbite si riduce progressivamente con la profondità fino a scomparire del tutto. In queste condizioni, le onde non determinano lo spostamento delle masse d'acqua: le particelle tornano ciclicamente al punto di partenza nel loro movimento circolare, formando le cosiddette onde di oscillazione.

Nelle zone costiere dove i fondali sono bassi e la profondità dell'onda supera quella del fondale, le orbite circolari delle particelle si deformano diventando ellittiche. La base dell'onda, rallentata dall'attrito con il fondale, si muove più lentamente rispetto alla cresta. Questo fenomeno accentua ulteriormente il ritardo fino a far rovesciare la cresta su se stessa, generando i frangenti di spiaggia (onde di traslazione). In questa fase si manifesta la risacca, ovvero lo spostamento effettivo di masse d'acqua con movimento di avanzata e ritiro delle onde sulla battigia. L'energia cinetica dell'onda, correlata alla sua velocità e massa, può compiere un lavoro crescente con l'aumento della massa dell'onda stessa, provocando erosione sulle coste o accumulo di materiali trasportati dal mare in altri punti litoranei.

=== Tipi d'onda

Non esiste una classificazione rigida delle onde, ma in base alla loro genesi e caratteristiche fisiche è possibile distinguere alcune tipologie:  
- Onde morte o lunghe: si propagano in assenza di vento e possono avere origini molto lontane. Un esempio noto sono quelle provenienti dai mari antartici che, grazie alla rotazione terrestre, raggiungono le coste occidentali dei continenti nell'emisfero australe fino alle zone di calma equatoriali.  
- Onde di tempesta: generate da uragani o cicloni. Dotate di alta energia e direzioni variabili a seconda dell'irregolarità del vento, queste onde possono causare danni significativi sia alle coste che alle imbarcazioni in mare aperto.  
- Tsunami: onde estremamente potenti e atipiche, provocate da un maremoto che scuote il fondale marino trasferendo l'energia all'acqua sovrastante. Queste onde colpiscono la costa con violenza dovuta alla grande massa d'acqua coinvolta e alla rapidità del movimento. La loro imprevedibilità e straordinaria forza distruttiva rendono gli tsunami particolarmente temuti, soprattutto lungo litorali esposti al rischio sismico.   

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Circuito oceanico: Movimento ciclico delle masse d'acqua marine, il cui spostamento, determinato da una sequenza di correnti, forma percorsi chiusi e ricorrenti all'interno di uno stesso bacino oceanico.

/ Corrente oceanica o marina: Flusso di acqua che si muove all'interno di un oceano o di un mare seguendo una specifica direzione.

/ Corrente termoalina: Corrente marina caratterizzata da uno spostamento estremamente lento sul fondale oceanico, concepito per bilanciare le variazioni di temperatura e salinità presenti alle diverse latitudini di un unico oceano.

/ Frangente: Onda marina la cui cresta si rompe creando un movimento spumeggiante sulla superficie dell'acqua.

/ Marea: Movimento periodico di risalita e abbassamento del livello delle acque marine causato dall'attrazione gravitazionale esercitata dalla Luna e dal Sole sulla Terra.

/ Moto ondoso: Oscillazione che coinvolge le particelle d'acqua superficiali in una determinata massa liquida.

/ Onda: Movimento irregolare delle acque marine o lacustri generato dall'azione del vento.

/ Regressione: Fenomeno di ritiro delle acque marine dalla terraferma, derivante da un abbassamento del livello degli oceani o da un innalzamento delle terre emerse.

/ Termoclino: Zona compresa tra i 200 e i 1000 metri di profondità caratterizzata da una graduale diminuzione della temperatura. Questo strato separa le acque superficiali da quelle profonde.

/ Trasgressione: Fenomeno con cui il mare invade territori precedentemente emersi.


