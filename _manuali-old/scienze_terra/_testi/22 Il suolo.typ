#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Il suolo rappresenta la porzione superficiale della crosta terrestre nella quale le piante radicano. Esso trae origine dalla disgregazione fisica e dall'alterazione chimica delle rocce affioranti, processi influenzati dall'azione combinata dell'atmosfera e degli organismi viventi, sia vegetali che animali. La composizione del suolo comprende una componente minerale derivante dalla degradazione delle rocce e una componente organica, definita humus, ottenuta dalla decomposizione dei resti biologici. Inoltre, il suolo contiene acqua e aria essenziali per i processi vitali.

Il suolo è strutturato in diversi strati denominati orizzonti, ognuno dei quali presenta peculiari proprietà fisiche e chimiche che costituiscono nel loro insieme il profilo del suolo. Le caratteristiche del suolo, come la tessitura, la porosità e la struttura, influenzano la sua idoneità al supporto delle attività vegetative e determinano i processi biologici e geochimici che avvengono al suo interno. Tali proprietà risultano quindi fondamentali per comprendere la funzione ecologica del suolo e la sua interazione con gli ecosistemi circostanti.]

== La genesi dei suoli

Un suolo rappresenta la parte più superficiale della crosta terrestre, spesso indicato anche come terreno, con uno spessore variabile che può estendersi da pochi centimetri fino a diversi metri. In questa porzione si sviluppano le radici delle piante, fondamentale per i processi ecologici e biologici.

La formazione del suolo, nota come pedogenesi, ha origine attraverso un prolungato processo di disgregazione fisica e alterazione chimica delle rocce, influenzato sia dai fenomeni atmosferici sia dalle attività degli organismi viventi. Questi processi generano detriti incoerenti, detti prodotti di disfacimento, i quali possono accumularsi localmente o essere trasportati da agenti quali ghiacciai, vento e corsi d'acqua, depositandosi in luoghi distanti. L'accumulo di tali materiali forma una coltre detritica che, a seconda delle condizioni ambientali, può variare in spessore da pochi centimetri a diversi metri.

Sulla coltre di detriti e talvolta sulla roccia ancora inalterata si insediano organismi pionieri. Questi includono licheni, batteri, alghe e muschi, i quali esercitano un'azione biochimica sulla roccia mediante le sostanze prodotte nel corso del loro ciclo vitale. La decomposizione dei loro residui organici favorisce la costituzione di uno strato iniziale di humus, che consente l'insediamento di specie vegetali più esigenti come erbe, arbusti e alberi. Questi ultimi perpetuano la modificazione del substrato tramite un'azione meccanica, penetrando con le loro radici nelle fessure della roccia e contribuendo alla sua disgregazione. Tra gli organismi che partecipano alla formazione del suolo vi sono inoltre protozoi e microrganismi animali, come anellidi, nematodi, larve di insetti e molluschi. I resti organici di questi esseri viventi vengono ulteriormente degradati da altri microrganismi, completando il processo di formazione dell'humus.

La scienza che si occupa dello studio dei suoli nei loro aspetti compositivi, evolutivi e genetici è la pedologia (dal greco _pédon_, terreno). Essa analizza i complessi processi della pedogenesi e valuta l'interazione dei diversi fattori ambientali coinvolti nella formazione e sviluppo dei suoli.

=== Fattori che influenzano la genesi dei suoli

La genesi e le caratteristiche dei suoli sono influenzate da diversi fattori fondamentali: il clima, la natura delle rocce e la giacitura del suolo.
- Clima: è il fattore principale nella definizione delle proprietà del suolo. Parametri come temperatura, umidità atmosferica e precipitazioni influenzano la velocità di degradazione delle rocce. La temperatura contribuisce alla disgregazione fisica delle rocce, mentre l'umidità in associazione con temperature elevate favorisce processi di alterazione chimica. L'analisi delle suole in diverse aree geografiche mostra una correlazione tra tipi climatici e caratteristiche del suolo. Ad esempio, il permafrost della tundra siberiana risulta analogo ai suoli presenti nel Grande Nord canadese o nell'Alaska; similmente, le terre rosse del Carso triestino si ritrovano anche sugli altipiani carbonatici della Penisola Iberica e dei Balcani.
- Natura delle rocce: la composizione chimica del substrato roccioso condiziona le proprietà chimiche del suolo, mentre il grado di compattezza delle rocce determina il ritmo della loro alterazione e formazione.
- Giacitura del suolo: indica la pendenza del terreno e gioca un ruolo chiave nella dinamica dei materiali derivati dalla degradazione delle rocce. Su terreni inclini con elevate pendenze, i materiali derivanti dalla disgregazione sono spesso rimossi dalle azioni gravitazionali o dilavati da acque superficiali. Ciò ostacola il consolidamento di suoli di notevole spessore. Il materiale eroso può accumularsi ai piedi del pendio formando coltri colluviali oppure essere trasportato dai corsi d'acqua, sotto forma di torbida, dando origine alle coltri alluvionali. 

In aree pianeggianti, invece, l'assenza di significative pendenze favorisce l'accumulo locale dei materiali degradati e la loro ulteriore trasformazione ad opera di organismi viventi.
// #TODO da riformulare
#figure(
  caption: [Classificazione dei suoli],
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
  table.header[Tipi][Caratteristiche],
[non evoluti], [a minerali greggi, presenti nelle regioni artiche e desertiche],
[poco evoluti \ o _ranker_], [sono suoli giovani, che giacciono direttamente su una roccia madre silicea, tipici delle regioni di alta montagna],
[calcarei], [si formano su rocce ricche in carbonato di calcio. Tra i suoli calcarei vi sono i cernozem, terre nere di fertilità eccezionale, che si trovano nelle steppe della Russia meridionale. Si formano nella zona temperata continentale a scarsa piovosità (meno di 400 mm all'anno), dove vi è una fitta copertura di graminacee xerofile che forniscono abbondante materiale organico, ricco di calcio. Un altro tipo di suolo calcareo è il rendzina, che si può formare in qualunque tipo di clima. È costituito da un solo orizzonte con copertura erbosa secca, in quanto manca di riserve di acqua],
[evoluti a mull], [un tipo di humus della zona temperata, caratteristico delle foreste di latifoglie],
[evoluti a podsol], [tipici di climi umidi e temperati freddi, caratterizzati dalla presenza di un orizzonte grigio chiaro che contiene solo silice, che è sottostante a un orizzonte organico formato da sostanze vegetali non totalmente decomposte. Costituiscono la metà dei terreni europei e in Italia si trovano ai piedi delle Alpi e in diverse aree della pianura],
[lateritici], [molto ricchi in ossidi di ferro o di alluminio, che si formano in climi caldi con alternanze di periodi secchi e umidi, sono tipici dei territori tropicali deforestati],
[alomorfi], [caratterizzati dalla presenza di un livello di sale],
[idromorfi], [caratterizzati dalla presenza temporanea o permanente dell'acqua. In questo tipo di suoli vi è sempre un orizzonte nel quale l'elevato grado di umidità porta a una forte concentrazione di argilla e di ossidi di ferro, denominato orizzonte glej],
[idromorfi \ organici], [caratterizzati da un intreccio di fibre e frammenti di vegetali più o meno carbonizzati con un'elevata percentuale di acqua. Da questi suoli possono trarre origine le torbe],
)  
)

== La composizione dei suoli

I suoli sono sistemi complessi e eterogenei, costituiti da una parte solida, composta da materia minerale (inorganica) e organica, una parte liquida rappresentata dall'acqua e una parte gassosa, ossia l'aria.

=== La componente minerale

La componente minerale deriva dalla degradazione delle rocce e rappresenta oltre il 95% della parte solida di un suolo. In base alla dimensione dei granuli che la compongono, si possono distinguere diverse frazioni:
- Scheletro: granuli con un diametro superiore a 2 mm.
- Sabbia grossolana: granuli con diametro tra 2 e 0,2 mm.
- Sabbia fine: granuli con diametro tra 0,2 e 0,02 mm.
- Limo: granuli con diametro tra 0,02 mm e 2 μm.
- Argilla: granuli con diametro inferiore a 2 μm.

=== La componente organica

La componente organica include i resti decomposti degli organismi viventi nel suolo o accumulati su di esso. Questi organismi comprendono batteri, funghi, actinomiceti, lombrichi, artropodi, acari, piccoli mammiferi e vegetazione di varia natura. I resti animali e vegetali vengono rapidamente decomposti da organismi terricoli, formando l'humus, un miscuglio di sostanze organiche decomposte. L'humus subisce poi un processo di mineralizzazione a opera principalmente di funghi e batteri, trasformandosi progressivamente in sostanze inorganiche.

La velocità di mineralizzazione dell'humus è influenzata dalle caratteristiche del suolo. È rapida nei terreni freschi, ben aerati e ricchi di vita biologica, come lombrichi e batteri. Al contrario, nei suoli saturi d'acqua e poveri di ossigeno, l'attività biologica diminuisce, causando l'accumulo superficiale di sostanze organiche in spesse coltri.

A seconda del progresso della mineralizzazione dell'humus, si formano diversi tipi:
- Mull: di colore bruno o nero, si sviluppa rapidamente.
- Moder: noto come lettiera, consiste in residui vegetali che si decompongono più lentamente rispetto al mull; presenta una separazione più evidente tra elementi organici e inorganici.
- Mor: chiamato anche humus grezzo; si forma attraverso processi di decomposizione molto lenti ed è caratterizzato da uno spessore consistente e un colore nerastro. Spesso contiene materiali non ancora completamente decomposti e strutture composte da intrecci di ife fungine (micelio).
- Torba: costituita principalmente da muschi e sfagni non decomposti, copre suoli frequentemente saturi d'acqua.

=== L'acqua

'acqua contenuta nei pori tra i componenti solidi del suolo è essenzialmente una soluzione diluita di sali minerali. Viene suddivisa in:
- Acqua igroscopica: assorbita dall'umidità dell'aria, forma una sottile pellicola intorno alle particelle solide del suolo e non può essere utilizzata dalle radici delle piante.
- Acqua capillare: presente negli spazi più piccoli del suolo e parzialmente accessibile alle radici; funge da riserva idrica per le piante durante periodi siccitosi.
- Acqua gravitazionale: occupa i pori più grandi ed è influenzata dalla gravità. Questa forma d'acqua percola rapidamente verso le profondità del terreno e viene sfruttata dalle piante principalmente durante periodi piovosi o nelle giornate successive alle piogge.

L'acqua disponibile nel suolo rappresenta una riserva idrica essenziale per la vegetazione e costituisce un parametro fondamentale per la gestione agricola dei terreni. La misura della riserva idrica può essere effettuata direttamente sul campo attraverso metodi pratici ma sufficientemente accurati per garantire una pianificazione efficace.

=== L'aria

Nei suoli, l'aria riempie gli spazi liberi lasciati dall'acqua negli interstizi. Essa è composta dagli stessi gas presenti nell'atmosfera, ma con proporzioni diverse; in particolare, rispetto all'atmosfera, contiene una quantità maggiore di anidride carbonica e una minore di ossigeno. Queste percentuali variano in base alla profondità (si osserva un aumento dell'anidride carbonica e una diminuzione dell'ossigeno) e alla stagione (durante la stagione asciutta le percentuali di entrambi i gas sono superiori rispetto a quella umida).

L'ossigeno riveste un ruolo fondamentale: esso è indispensabile per il funzionamento degli apparati radicali delle piante e per i numerosi processi biologici che avvengono nel suolo, principalmente grazie all'attività di funghi e batteri.

Anche la presenza di azoto nell'aria del suolo è significativa, poiché tramite la sua fissazione ad opera di batteri azotofissatori si formano composti azotati che possono essere assimilati dalle piante.

#note(bottom)[== *🧩* I paleosuoli <senza_numero>

In determinate circostanze geomorfologiche conservative si sono preservati suoli antichissimi, risalenti a centinaia di milioni di anni fa. Quando suoli, indipendentemente dal loro grado di maturazione, vengono ricoperti da nuovi strati sedimentari, possono formarsi i paleosuoli. Questi ultimi, letteralmente "suoli antichi", rappresentano autentici reperti geostorici capaci di offrire preziose informazioni sull'evoluzione ambientale e climatica del passato. I paleosuoli possono essere definiti come suoli che si sono sviluppati in paesaggi remoti temporalmente e la cui evoluzione si è interrotta o modificata a causa di profondi cambiamenti delle condizioni ambientali, quali alterazioni del clima o della vegetazione.

Mentre il pedologo contemporaneo analizza i suoli attuali partendo dal contesto climatico, vegetazionale e litologico per descriverne le caratteristiche, il paleopedologo procede in modo inverso. Egli indaga i paleosuoli, esaminandone la composizione e le proprietà per ricostruire le condizioni climatiche e biotiche che hanno caratterizzato l'ambiente in cui tali suoli si sono formati. Attraverso una combinazione di studi sul campo e analisi di laboratorio, è possibile ricostruire con buona precisione il contesto ambientale originario. Va comunque sottolineato che i paleosuoli non sono uniformi tra loro: il loro profilo, la stratificazione degli orizzonti e la loro composizione chimica variano in funzione dei climi succedutisi nel tempo, del materiale parentale da cui derivano e degli eventi geodinamici che li hanno interessati.]

== Il profilo dei suoli

Il suolo si struttura in diversi orizzonti, ovvero strati sovrapposti distinguibili a occhio nudo grazie alle loro peculiarità fisiche e chimiche. L'insieme di questi orizzonti costituisce il profilo del suolo.

Esaminando il suolo dalla superficie verso la profondità, gli orizzonti vengono identificati con le lettere O, A, B, C e R. Tuttavia, non tutti gli orizzonti pedologici sono presenti in ogni tipo di suolo.

- Orizzonte O: rappresenta lo strato più superficiale, di spessore limitato, composto da sostanza organica non decomposta o solo parzialmente decomposta. È noto anche col nome di lettiera.
- Orizzonte A: è la parte più ricca di sostanza organica, dove si svolge un'intensa attività di decomposizione. Questo strato è indicato come orizzonte eluviale poiché l'acqua infiltrata nel suolo vi provoca l'asportazione dei componenti solubili, inorganici e organici, trasferendoli nell'orizzonte sottostante. Può essere ulteriormente suddiviso nei sottorizzonti A#sub[1], A#sub[2] e A#sub[3], ciascuno con caratteristiche specifiche.
- Orizzonte B: è più povero di humus rispetto all'orizzonte A ed è chiamato orizzonte illuviale, poiché in esso si accumulano i materiali provenienti dall'orizzonte superiore trasportati dall'acqua. Anche questo orizzonte può essere suddiviso in sottorizzonti B#sub[1], B#sub[2] e B#sub[3].
- Orizzonte C: costituisce lo strato più profondo del suolo ed è composto dalla roccia in via di alterazione. In quest'orizzonte può comparire uno strato sottile di colore grigio, verdastro o rossiccio, formato da minerali di ferro combinati con argilla, denominato _gley_. I sottorizzonti C#sub[1] indicano le aree dove la degradazione della roccia è più avanzata, mentre i sottorizzonti C#sub[2] sono caratterizzati da un minor grado di alterazione.
- Orizzonte R: è il simbolo che identifica la roccia madre sottostante al suolo, rimasta inalterata.

== Alcune caratteristiche dei suoli

Tra le numerose proprietà del suolo, alcune risultano cruciali per la vita degli organismi che vi abitano, per la crescita della vegetazione e per i processi di decomposizione che vi si verificano. Queste caratteristiche includono la tessitura, la porosità, la struttura, il colore e le attività di scambio.

=== Tessitura

La tessitura di un suolo, nota anche come grana, rappresenta la percentuale relativa di scheletro, sabbia, limo e argilla presenti in esso. Questa caratteristica è fondamentale per determinare altre proprietà del terreno. Per esempio, un'elevata quantità di scheletro o sabbia rende il suolo incline all'aridità, perché l'acqua percola rapidamente tra i grandi interstizi presenti. Al contrario, una predominanza della frazione argillosa porta a un ambiente asfittico, poiché questi minerali igroscopici tendono a gonfiarsi, chiudendo pori e fessure e ostacolando la circolazione dell'aria e la respirazione delle radici. Anche una presenza eccessiva di limo può generare problematiche simili.

I terreni più fertili sono quelli a medio impasto, nei quali la tessitura è bilanciata. Qui lo scheletro è assente e la composizione percentuale degli altri elementi è generalmente la seguente: sabbia grossa 30-50%, sabbia fine 15-30%, limo 10-15%, argilla 5-10%, calcare 1-5% e sostanza organica 3-5%.

=== Porosità

La porosità di un suolo rappresenta il grado di permeazione da parte di pori e interstizi ed è misurata come rapporto tra il volume degli spazi vuoti e quello complessivo del terreno. Questo parametro è essenziale per garantire la circolazione di acqua e aria, favorendo così lo sviluppo della vegetazione. La porosità varia in funzione della tessitura del suolo (maggiore in terreni con granuli di dimensioni grandi) e può essere incrementata dall'azione degli organismi del suolo, come larve di insetti, lombrichi o radici che, una volta decomposte, lasciano spazi vuoti nel terreno.

=== La struttura

La struttura di un suolo si riferisce alla disposizione spaziale dei granuli che lo compongono. Si distinguono principalmente due tipi di struttura: granulare e glomerulare. Nella struttura granulare i granuli sono indipendenti e si dispongono nel modo più compatto possibile; quando prevalgono granuli più grandi, gli interstizi sono ampi, mentre in presenza di granuli fini si formano pori piccoli, rendendo il terreno compatto e asfittico. Nella struttura glomerulare, invece, il limo e l'argilla si aggregano in grumi o glomeruli, creando una combinazione di pori grandi e piccoli che assicura una buona circolazione di acqua e aria, ideale per lo sviluppo della vita nel suolo.

=== Il colore

Il colore del suolo è un indicatore diagnostico molto utile per identificare i materiali presenti e i processi in atto. Le possibili sfumature sono numerose e il loro riconoscimento accurato avviene mediante l'utilizzo di tavole colorimetriche. Indicativamente, possiamo affermare che il colore:
- rosso denota la presenza di ferro; in terreni aridi mediterranei o subtropicali il ferro ossidato conferisce tonalità rosso vivo, mentre in condizioni di riduzione appare rosso-bruno-giallastro;
- bruno riflette la presenza di sostanza organica; terreni ricchi di humus hanno spesso una colorazione nera;
- grigio-azzurro suggerisce una scarsa ossigenazione e identifica stratificazioni dove il ferro si trova in forma ridotta.

=== Attività di scambio

La sostanza organica e l'argilla presenti nei suoli costituiscono una sorta di "spugna naturale", nota come complesso di scambio. Questo sistema consente di trattenere gli elementi minerali del suolo, per poi rilasciarli progressivamente alle radici delle piante, rispondendo così alle loro esigenze vitali.

#notebr[== *🧩* La potenzialità dei suoli <senza_numero>

L'analisi dei suoli mira prevalentemente al loro utilizzo sostenibile, alla conservazione delle loro caratteristiche e al miglioramento delle loro potenzialità.

Il termine "potenzialità di un suolo" si riferisce alla sua capacità d'impiego ottimale e scaturisce dalla misurazione e valutazione di specifici parametri chimici, fisici e biologici. Tra gli indicatori pedologici considerati fondamentali per determinare la fertilità - definita come la capacità di generare produzioni agricole - e l'adattabilità del suolo a diverse destinazioni agro-silvo-pastorali, rientrano i seguenti aspetti:
- profondità del profilo pedologico;
- granulometria media, o tessitura;
- caratteristiche strutturali del suolo;
- condizioni interne di drenaggio idrico;
- tipologia di sostanza organica presente;
- entità e composizione delle riserve minerali.

Questi parametri costituiscono un insieme integrato di fattori utili a orientare interventi gestionali finalizzati alla valorizzazione e alla sostenibilità nell'uso dei suoli.

Dal confronto tra i valori assegnati ai diversi parametri esaminati, si giunge alla definizione di un indice percentuale che consente di inserire ogni tipologia pedologica in una specifica classe di potenzialità. La carta delle potenzialità d'uso dei suoli italiani, elaborata a una scala di 1:1.000.000, suddivide il territorio in sette classi principali.

- Suoli con potenzialità elevata: non presentano alcuna limitazione d'uso. Vi rientrano i suoli alluvionali profondi, caratterizzati da una tessitura ben bilanciata, soprattutto quelli della Bassa Padana e di altri ambiti alluvionali delle regioni peninsulari e insulari.
- Suoli con potenzialità buona: mostrano limitazioni moderate, come tessiture squilibrate verso ghiaie o argille oppure spessori ridotti. Comprendono suoli appartenenti sia alle pianure che alle aree collinari.
- Suoli con potenzialità moderata: presentano carenze di spessore, drenaggio, saturazione o struttura, rendendo necessari interventi migliorativi e coltivazioni specifiche. Questa classe raggruppa suoli diffusi su morene, rilievi calcareo-dolomitici e nelle basse montagne dell'Italia settentrionale e centrale. Spesso le coltivazioni lasciano spazio alla vegetazione boschiva o ai pascoli.
- Suoli con potenzialità scarsa: rappresentano circa il 40% del territorio nazionale. Si tratta di suoli vulnerabili a significativi rischi di erosione, ricchi di rocce o pietre e con ulteriori limitazioni relative alla granulometria, al drenaggio e alla saturazione. Pur consentendo coltivazioni tipiche mediterranee in presenza di interventi umani migliorativi, prevalgono il bosco e il pascolo.
- Suoli con potenzialità bassa: le limitazioni presenti sono così severe e diversificate da impedire quasi del tutto l'utilizzo agricolo. Questo tipo di suoli interessa circa il 10% della superficie nazionale ed è principalmente localizzato nelle aree montane con forte pendenza. L'uso è esclusivamente silvo-pastorale.
- Suoli con potenzialità molto bassa: sono principalmente diffusi lungo la catena alpina o sulle colate laviche recenti degli apparati vulcanici.
- Suoli con potenzialità nulla: includono i suoli che costituiscono il substrato della vegetazione pioniera. Si trovano in prossimità dei ghiacciai, delle morene ancora in formazione oppure della roccia affiorante soggetta a fenomeni di crioclastismo.

Nonostante i suoli inseriti nelle ultime tre classi non siano considerati adatti alla coltivazione, la loro importanza non va sottovalutata. Essi svolgono un ruolo cruciale nella protezione idrogeologica del territorio. Per questo motivo, è auspicabile che l'Italia adotti un piano integrato di difesa del suolo unitamente a misure di riforestazione o, preferibilmente, di recupero complessivo delle cosiddette terre marginali, ossia quei suoli privi di una chiara vocazione agricola. Per un simile intervento sarebbe indispensabile una cartografia delle potenzialità dei suoli più dettagliata rispetto a quella attuale.]

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Detrito: Frammento di materiale roccioso derivante dalla disgregazione delle rocce a opera di agenti naturali.  

/ Humus: Insieme di sostanze organiche contenute nel terreno, prodotte dalla decomposizione dei resti di organismi vegetali e animali.  

/ Orizzonte: Ciascun livello stratificato del suolo, differente per composizione e colore.  

/ Pedologia: Scienza che analizza la formazione, le caratteristiche e l'evoluzione dei suoli.  

/ Permafrost: Strato di terreno perennemente ghiacciato presente nelle regioni polari.  

/ Porosità: Caratteristica del suolo che misura il grado di presenza di pori e interstizi, espressa come il rapporto tra il volume degli spazi vuoti e il volume totale del suolo.  

/ Potenzialità: Proprietà di un suolo che indica le possibilità di uso, soprattutto in ambito agricolo e forestale.  

/ Profilo pedologico: Sequenza dei vari orizzonti che compongono il suolo.  

/ Scheletro: Componente minerale del suolo formata da granuli con un diametro superiore ai 2 mm.  

/ Tessitura: Proprietà del suolo che descrive la proporzione di scheletro, sabbia, limo e argilla presenti.  
