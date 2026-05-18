#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La superficie terrestre è ampiamente ricoperta da rocce sedimentarie, una categoria estremamente eterogenea derivante dalla sedimentazione di materiali di varia natura. Sulla base dell'origine dei loro componenti, queste rocce possono essere classificate in quattro principali gruppi: clastiche, chimiche, organogene e piroclastiche. La loro formazione trae origine da rocce preesistenti attraverso una sequenza di processi sedimentari che comprende diverse fasi: la degradazione meteorica delle rocce, il trasporto e il deposito dei sedimenti e infine la diagenesi. Quest'ultima comporta la compattazione e la cementazione, processi fondamentali per trasformare i sedimenti in rocce consolidate.]

== Classificazione delle rocce sedimentarie

Nonostante le rocce sedimentarie coprano circa il 75% della superficie terrestre, esse rappresentano solo una frazione esigua delle rocce che compongono la crosta terrestre. Ciò si deve alla loro configurazione come strati sottili che ricoprono sia i continenti sia i fondali oceanici. Tali rocce si formano attraverso processi di sedimentazione di materiali solidi di origine diversa, in una varietà di ambienti sedimentari. La loro classificazione si basa sulla genesi dei sedimenti, distinguendosi in rocce clastiche, chimiche, organogene e piroclastiche.

== Rocce clastiche

Le rocce clastiche, note anche come rocce detritiche (dal greco _klázo_, "rompo"), si originano dalla deposizione di clasti, ossia frammenti di varie dimensioni derivanti dall'alterazione meteorica di rocce esposte sulla superficie terrestre. Questi frammenti vengono trasportati attraverso agenti naturali quali acqua, ghiaccio, vento o gravità, per poi essere depositati, talvolta a grandi distanze dal sito di origine. In queste rocce, i clasti sono immersi in una matrice o cemento che ne garantisce la coesione.

L'analisi dei clasti fornisce informazioni preziose riguardo all'ambiente deposizionale e all'età della roccia. Ad esempio, la forma e le dimensioni dei clasti permettono di dedurre la distanza e l'intensità del trasporto subito: clasti arrotondati indicano un percorso prolungato, mentre quelli con spigoli vivi suggeriscono un trasporto breve. Inoltre, è possibile identificare l'agente di trasporto: un ciottolo sferico testimonia un modellamento fluviale, mentre uno appiattito potrebbe indicare l'azione delle onde marine. In base alle dimensioni granulo-metriche dei clasti che le costituiscono, le rocce clastiche si suddividono in quattro tipologie principali: conglomerati, arenarie, siltiti e argilliti.

I conglomerati si formano dall'accumulo di detriti di notevole dimensione, superiori a 2 mm, definiti generalmente ghiaie. Questi possono essere ulteriormente classificati in puddinghe, quando i ciottoli risultano arrotondati, e in brecce, quando i frammenti mantengono spigoli vivi. Ulteriori sottocategorie si basano sulla composizione dei clasti: i conglomerati monogenici sono composti da frammenti della stessa natura, mentre quelli poligenici presentano clasti derivanti da tipi di rocce differenti.

Le arenarie derivano dalla sedimentazione di particelle di dimensioni comprese tra 2 mm e 1/16 mm, conosciute come sabbie. Questi sedimenti si trovano sia in ambienti marini sia continentali e la loro composizione dipende non solo dalla roccia madre ma anche dall'intensità dei processi erosivi che li hanno interessati.

Le siltiti e le argilliti sono caratterizzate da particelle a grana molto fine: il silt ha dimensioni comprese tra 1/16 mm e 1/256 mm, mentre l'argilla è formata da particelle inferiori a 1/256 mm. Questi sedimenti si depositano in ambienti come mare aperto, fondali lacustri, paludi e lagune. La loro capacità di essere facilmente trasportati permette spesso una deposizione a distanze significative dai luoghi di origine. Le siltiti e le argilliti trovano ampio impiego nell'industria dei laterizi, delle terrecotte e nell'industria chimica.

#figure(
  caption: [Clasti e le rocce sedimentarie clastiche],
  gap: 0pt, // Allinea la didascalia alla tabella
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
table.header[Sedimento][Dimensioni (mm)][Roccia Clastica],
[ghiaia], [>2], [conglomerato \ (puddinga o breccia)],
[sabbia], [1/16 ÷ 2], [arenaria],
[silt], [1/256 ÷ 1/16], [stiltite],
[argilla], [< 1/256], [argillite],
)   
)

=== Rocce chimiche

Le rocce chimiche prendono origine dalla sedimentazione di sostanze presenti in soluzione nelle acque marine o lacustri, in seguito alla loro precipitazione causata da cambiamenti chimico-fisici nella soluzione. Questo processo avviene, ad esempio, quando la soluzione diventa satura per effetto dell'evaporazione del solvente. Tra le principali rocce chimiche si annoverano i calcari, le dolomie, le evaporiti e le selci.

I calcari e le dolomie si formano rispettivamente dalla precipitazione del carbonato di calcio (CaCO#sub[3]) e del carbonato doppio di calcio e magnesio (CaMg(CO#sub[3])#sub[2]), presenti nelle acque di mari caratterizzati da bassi fondali e temperature elevate, in seguito a una forte evaporazione.

I calcari, tuttavia, possono originarsi anche in contesti continentali. Un esempio è il travertino, roccia chimica composta da carbonato di calcio precipitato per saturazione delle acque sorgive. Quando l'acqua emerge in superficie, subisce un cambiamento fisico dovuto a una riduzione della pressione e a un aumento della temperatura, favorendo la precipitazione di parte del carbonato di calcio presente in soluzione. Questo processo porta a incrostare i resti vegetali che abbondano vicino alle sorgenti. Con il tempo, i residui organici vegetali si decomponono, conferendo al travertino una struttura porosa che lo rende leggero e distintivo. Questa roccia fu largamente impiegata dagli ingegneri dell'antica Roma.

Le evaporiti, invece, derivano dalla precipitazione di sali disciolti in acque marine divenute sature per intensa evaporazione. L'ordine di precipitazione dei sali dipende dalla loro solubilità: si depositano dapprima quelli meno solubili, come calcite (CaCO#sub[3]) e dolomite (CaMg(CO#sub[3])#sub[2]), seguiti via via dagli altri, sino ai più solubili, quali gesso (CaSO#sub[4] · 2H#sub[2]O), anidrite (CaSO#sub[4]) e salgemma (NaCl).

Le selci, infine, si formano da un deposito di microscopici cristalli di quarzo (SiO#sub[2]) derivanti dalla precipitazione della silice. Sono rocce estremamente dure, spesso composte da noduli globosi di quarzo con diametri che variano da pochi centimetri a decimetri. Nell'età della pietra, frammenti di selci venivano utilizzati dall'uomo per la fabbricazione di strumenti. Un particolare deposito di silice si verifica in ambiente continentale; qui, a partire da acque calde di origine vulcanica, si genera la geyserite per precipitazione di SiO#sub[2].

=== Rocce organogene

Le rocce sedimentarie organogene si formano a partire dalla sedimentazione di resti di organismi viventi che, prevalentemente in ambienti marini, prelevano dall'acqua sostanze disciolte, come il carbonato di calcio o la silice, per costruire gusci o scheletri. In alternativa, derivano da strutture rigide costruite da specifici organismi, note come biocostruzioni (ad esempio, le barriere coralline). Gli organismi che partecipano alla formazione di queste rocce includono molluschi, spugne, coralli e alghe unicellulari. I loro gusci e scheletri, una volta terminato il loro ciclo vitale, si accumulano in grandi quantità sul fondo marino, dando origine a materiali come i calcari, le dolomie e le selci.

Anche i carboni rientrano tra le rocce organogene, essendo costituiti da resti di origine biologica. Tuttavia, il loro processo di formazione presenta caratteristiche specifiche differenti dalle altre tipologie.

#figure(
  caption: [Classificazione dei carboni],  
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
  table.header[Tipo][Caratteristiche],	
[torbe], [depositi vegetali d'incipiente carbonizzazione: sono pessimi combustibili, ma discreti correttivi acidi di terreni],
[ligniti], [carboni fossili geologicamente più recenti; hanno già perso, nei processi di trasformazione, una notevole quantità di acqua e anidride carbonica, ma sono ancora ricchi di anidride solforosa e quindi inquinanti],
[litantraci], [prodotti di carbonizzazione spinta; buoni combustibili a struttura compatta, nero-opachi o lucenti, trovano i maggiori impieghi pratici. Vengono suddivisi in 4 categorie in base al potere calorifico e al tipo di coke che si produce nella combustione],
[antraciti], [carboni quasi puri, per perdita spinta di zolfo e azoto (oltre che di tutto l'ossigeno) dai tessuti vegetali d'origine; ottimi combustibili, ma poco coerenti (friabili)],
)  
)

#note(bottom)[== *🧩* La formazione del carbone fossile <senza_numero>

I depositi di carbone attualmente disponibili sulla Terra risalgono principalmente al periodo Carbonifero, che iniziò circa 345 milioni di anni fa. Questo periodo fu caratterizzato da un clima caldo e umido che favorì lo sviluppo di vaste foreste in aree paludose. Per centinaia di migliaia di anni, i resti delle piante si accumularono formando spessi strati, successivamente sepolti da sedimenti quali sabbie e fanghi. 

Una volta sepolti e isolati dal contatto con l'ossigeno atmosferico, i resti vegetali furono sottoposti all'effetto combinato di elevate pressioni, temperature e azione di batteri anaerobi (organismi capaci di vivere senza ossigeno). Questo processo portò a una serie di trasformazioni chimiche: la materia organica vegetale perse progressivamente idrogeno, ossigeno e azoto, mentre aumentò il contenuto di carbonio. Tale processo di trasformazione, noto come carbonizzazione, culminò nella formazione del carbone fossile.

In base al crescente contenuto di carbonio, che funge anche da indicatore dell'età del deposito, si distinguono diverse tipologie di carbone: torba, lignite, litantrace e antracite.]

I calcari organogeni possiedono una composizione chimica analoga a quella dei calcari di origine chimica, ma con la differenza che il carbonato di calcio proviene dai resti di organismi viventi.

Le dolomie organogene, invece, sono formate da carbonato doppio di calcio e magnesio. Si originano attraverso un processo chiamato dolomitizzazione che avviene sulle rocce calcaree, in cui il calcio viene parzialmente sostituito dal magnesio presente nelle acque circostanti (un fenomeno noto come sostituzione metasomatica). Proprio queste dolomie hanno dato il nome alle Dolomiti, una catena montuosa dove tali rocce sono particolarmente diffuse.

Le selci organogene sono costituite da silice derivante dai gusci di diatomee (alghe unicellulari) e radiolari (protozoi), oltre che dalle spicole silicee di alcune spugne.

=== Rocce piroclastiche

Le rocce piroclastiche rappresentano un'interessante categoria intermedia tra rocce ignee e sedimentarie. Sono formate da frammenti solidi, chiamati piroclasti, espulsi durante violente eruzioni vulcaniche e trasportati dall'aria. Tipiche delle rocce sedimentarie sono la disposizione stratificata e la possibile presenza di fossili, caratteristiche assenti nelle rocce ignee. I piroclasti si suddividono in base alla dimensione decrescente in blocchi, lapilli, sabbie e ceneri vulcaniche. I frammenti più grandi tendono a depositarsi vicino al cratere vulcanico, mentre quelli più fini possono essere trasportati dal vento anche per centinaia di chilometri. Un esempio noto di roccia piroclastica è il tufo, composto principalmente da ceneri e lapilli.

== Il processo sedimentario

Il processo sedimentario è fondamentale nella formazione delle rocce sedimentarie e comprende una serie di trasformazioni derivanti da materiali preesistenti. Questo processo include: la degradazione meteorica delle rocce; il trasporto e la deposizione dei sedimenti in vari ambienti; e infine la diagenesi, cioè la conversione dei sedimenti incoerenti in roccia consolidata tramite compattazione e cementazione dei singoli frammenti.

=== La degradazione meteorica delle rocce
#note(bottom)[== *🧩* L'azione degli organismi viventi sulle rocce <senza_numero>

Anche gli organismi viventi contribuiscono alla degradazione delle rocce, esercitando un'azione sia meccanica sia chimica.

Tra le azioni meccaniche va ricordata la capacità delle radici di espandersi nelle fessure delle rocce, un fenomeno visibile soprattutto nelle specie vegetali pioniere, cioè quelle che colonizzano per prime le superfici rocciose (come driadi e sassifraghe). I licheni, attraverso i loro rizoidi (strutture simili a radici per funzione), riescono ad ancorarsi anche su superfici lisce e penetrarle per pochi millimetri. Oltre a quella meccanica, l'azione delle radici è spesso anche chimica grazie alla produzione di anidride carbonica e, talvolta, di acidi particolarmente corrosivi.

L'azione chimica può manifestarsi direttamente o indirettamente. Gli effetti diretti derivano dalla produzione di sostanze acide da parte degli organismi, capaci di corrodere vari minerali delle rocce. Un esempio significativo è quello dei litodomi, molluschi marini che producono acido cloridrico per scavare teche nei calcari, da utilizzare come rifugio. Azioni analoghe sono compiute da batteri, alghe e altri microrganismi, che generano alveoli di corrosione biochimica alla base di pareti calcaree esposte a suoli umidi; in alcuni casi queste nicchie millimetriche si uniscono formando canali ben evidenti.

Gli effetti indiretti dipendono dai prodotti organici derivati dalla decomposizione o da processi catabolici, inclusa la respirazione che emette anidride carbonica e altre sostanze di scarto. L'azione chimica indiretta rappresenta il nucleo della pedogenesi, il lungo processo fisico-chimico che trasforma le rocce madri inalterate in suoli fertili e sviluppati.]
Le rocce presenti sulla superficie terrestre sono continuamente sottoposte a trasformazioni che comportano una modifica delle loro caratteristiche originarie. Tali cambiamenti avvengono quando le rocce sono esposte a condizioni chimico-fisiche significativamente diverse rispetto a quelle in cui si sono formate.

Le rocce affioranti sono soggette a un processo di degradazione meteorica, che comprende sia la disgregazione fisica sia l'alterazione chimica, causate dall'azione combinata dell'atmosfera e dell'idrosfera. Questo processo porta alla formazione di frammenti detti clasti, che possono variare notevolmente in dimensioni. Sebbene disgregazione fisica e alterazione chimica si verifichino contemporaneamente, le condizioni ambientali influenzano quale dei due fenomeni prevalga: in aree aride si riscontra una maggiore azione fisica, mentre in ambienti umidi domina quella chimica.

La disgregazione fisica può avvenire attraverso diversi processi specifici, tra i quali: il crioclastismo, dovuto al gelo dell'acqua nelle fratture delle rocce; il termoclastismo, legato alle variazioni di temperatura; e l'idroclastismo, causato dalla capacità di alcune rocce di assorbire acqua. I principali processi di alterazione chimica comprendono invece l'ossidazione dovuta all'ossigeno presente nell'atmosfera, l'idratazione che implica l'assorbimento di acqua da parte di alcuni minerali con conseguente trasformazione in nuovi minerali, la carbonatazione dovuta alla reazione tra anidride carbonica disciolta nelle acque e rocce carbonatiche, e l'idrolisi, una complessa reazione chimica che altera i silicati per effetto dell'acqua. Anche gli organismi viventi giocano un ruolo importante nel processo di degradazione delle rocce.

=== Il trasporto dei sedimenti e gli ambienti di sedimentazione

I frammenti generati dalla degradazione meteorica delle rocce possono rimanere sul posto oppure essere trasportati altrove. Il trasporto dei sedimenti può avvenire grazie a vari agenti naturali come piogge, ghiacciai, fiumi, mari, vento e forza di gravità. Ogni agente opera con modalità proprie e specifiche. I luoghi in cui i sedimenti si accumulano sono chiamati ambienti di sedimentazione e si distinguono in tre categorie principali: ambienti continentali, ambienti di transizione e ambienti marini. Ogni ambiente è caratterizzato da particolari tipi di sedimenti o facies, termine che deriva dal latino e significa "aspetto esteriore". Le facies rappresentano l'insieme delle caratteristiche litologiche e paleontologiche (come la presenza di fossili) di una roccia.

#notebr[== *🧩* Gli ambienti di sedimentazione <senza_numero>

=== Ambienti continentali <senza_numero>

Alcuni degli ambienti continentali più caratteristici, ricchi di varietà e profondamente diversi tra loro, comprendono il contesto lacustre, quello alluvionale, quello glaciale e quello desertico. I sedimenti che si accumulano sui continenti sono trasportati e depositati attraverso due principali meccanismi: la presenza di una depressione (come i bacini lacustri) o l'arresto del trasporto di materiali dovuto all'azione di corsi d'acqua, ghiacciai o vento.
- Ambiente lacustre: spostandosi dai margini verso il centro di un lago, si osserva un accumulo progressivo di depositi come argille, sabbie e ghiaie. Questi possono essere distinti dai sedimenti fluviali soprattutto se contengono fossili di animali o vegetali tipici dell'ambiente lacustre. Un altro importante deposito associato ai laghi è la torba, costituita da materiali organici come muschi, sfagni e frammenti legnosi. La formazione della torba è un segno del progressivo interramento del lago, che tende a trasformarsi in palude nelle fasi finali del suo ciclo di vita.
- Ambiente alluvionale (o fluviale): in questo ambiente si trovano depositi di ghiaie, sabbie e argille, distribuiti in relazione alla diminuzione della velocità del corso d'acqua. Le ghiaie abbondano soprattutto nell'alto corso del fiume, mentre sabbie e argille si concentrano prevalentemente lungo il medio e basso corso.
- Ambiente glaciale: i ghiacciai riescono a trasportare enormi quantità di materiali solidi, erodendo le rocce sottostanti e spostandoli per decine o addirittura centinaia di chilometri. Quando il ghiaccio si scioglie, il trasporto si interrompe, lasciando i materiali trasportati a formare le morene, depositi estremamente eterogenei per dimensione. I blocchi di maggiori dimensioni abbandonati dai ghiacciai sono noti come massi erratici. I ghiacciai trasportano anche materiali più fini, che però vengono spesso dilavati: i torrenti alimentati dalla fusione del ghiaccio sospendono queste particelle minute, dando origine ai depositi fluvioglaciali.
- Ambiente desertico: in questo contesto è il vento a dominare come principale agente di trasporto. Esso solleva le particelle più leggere, che vengono trasportate fino a quando una diminuzione della velocità le fa precipitare al suolo. I depositi eolici (così chiamati da Eolo, il dio greco del vento) mostrano una caratteristica stratificazione incrociata dovuta ai diversi cambiamenti nella direzione del vento durante il processo di sedimentazione. Formazioni tipiche di questi depositi sabbiosi sono le dune.

=== Ambienti di transizione <senza_numero>

Questa tipologia di ambienti rappresentano zone di transizione tra i contesti continentali e marini, spesso di dimensioni limitate ma di grande importanza dal punto di vista paleogeografico. Essi consentono di ricostruire i cambiamenti della linea di costa avvenuti nel passato, permettendo così di delineare i contorni di mari e terre emerse nei vari periodi geologici. Si possono distinguere in ambienti lagunari e deltizi.
- Ambiente lagunare: la laguna è un bacino d'acqua in comunicazione con il mare, ma parzialmente separato da cordoni litoranei. I depositi tipici di questo ambiente sono generalmente calcari, che si differenziano da quelli marini per la presenza di organismi adattati a tollerare variazioni di salinità, frequenti nelle acque lagunari.
- Ambiente deltizio: situati alla foce dei corsi d'acqua, questi ambienti si contraddistinguono per la presenza di depositi di materiale fine trasportato dal fiume e non sedimentato lungo il suo corso. In tali depositi si può osservare sia fauna tipica degli ambienti fluviali sia quella marina.

=== Ambienti marini <senza_numero>

Gli ambienti marini rappresentano le aree più estese e diversificate. A seconda della profondità, si dividono in ambiente litorale, neritico, batiale e abissale.
- Ambiente litorale: questo ambiente comprende la porzione di fondale marino soggetta alle escursioni delle maree, abitata da organismi capaci di sopportare periodi variabili di emersione. Qui si forma prevalentemente la panchina, una roccia calcarea bioclastica i cui granuli possono derivare dalla disgregazione fisica di altre rocce carbonatiche o essere di origine biologica, costituiti da frammenti di gusci, teche di molluschi e ossa.
- Ambiente neritico: situato tra la linea di bassa marea e i 200 metri di profondità, questo ambiente corrisponde alla piattaforma continentale. I sedimenti presenti possono essere organogeni o clastici; nel secondo caso, vengono selezionati dall'azione delle onde e delle correnti marine in base alla loro granulometria, con i più grossolani vicini alla costa e i più fini che si accumulano a distanza.
- Ambiente batiale: quest'area si estende dai 200 ai 4000 metri di profondità, lungo la scarpata continentale. Presenta una forte pendenza su cui possono franare sedimenti incoerenti provenienti dalla piattaforma continentale, formando depositi fangosi che talvolta contengono gusci di organismi planctonici.
- Ambiente abissale: oltre i 4000 metri di profondità si trova l'ambiente abissale, corrispondente alla piana abissale. Qui si accumulano melme organiche ricche di resti biologici o depositi inorganici estremamente fini.]

=== La diagenesi

L'accumulazione progressiva di frammenti di diversa grandezza in vari ambienti porta alla formazione di sedimenti sciolti e incoerenti. Questi sedimenti possono trasformarsi in rocce compatte e coerenti attraverso il processo di diagenesi. Si tratta di un fenomeno estremamente complesso che si sviluppa nell'arco di tempi lunghissimi ed è influenzato da molteplici fattori, fra cui la natura dei sedimenti, l'ambiente di sedimentazione, la pressione degli strati sovrastanti, la temperatura e la profondità dei materiali sedimentari. Durante la diagenesi si verificano principalmente due processi fondamentali: la compattazione e la cementazione.

La compattazione consiste nella riduzione del volume dei sedimenti a causa della pressione esercitata dagli strati sovrastanti, che continuano ad accumularsi nel tempo. Questo processo provoca il progressivo avvicinamento dei granuli sedimentari e riduce lo spazio vuoto tra i clasti, eliminando aria e acqua precedentemente intrappolate.

La cementazione, invece, comporta il riempimento dei pori tra i granuli sedimentari con nuovo materiale minerale. Questo materiale può essere costituito da sali come il carbonato di calcio o la silice, che precipitano dalle soluzioni acquose circolanti nei sedimenti. Il risultato è la coesione dei sedimenti incoerenti e la loro trasformazione in una roccia compatta e coerente.

== La stratificazione delle rocce sedimentarie

Le rocce sedimentarie presentano spesso una caratteristica organizzazione a strati, visibile nelle successioni stratigrafiche.

Uno strato è definito come una formazione rocciosa piatta, estesa e con spessore variabile, determinato dalla quantità di materiale depositato durante i diversi momenti del processo di sedimentazione. Ogni strato è delimitato nella parte superiore da una superficie detta tetto, e inferiormente da una superficie chiamata letto. 

Ogni strato, ossia ogni unità singola di formazione rocciosa, custodisce al suo interno le modificazioni avvenute durante il processo di sedimentazione. Ad esempio, è possibile osservare mutamenti nella composizione dei sedimenti. 

La stratificazione offre superfici di riferimento essenziali per definire l'ordine di sovrapposizione dei sedimenti. Sulle superfici di stratificazione possono comparire strutture legate alle correnti che hanno depositato il materiale, alle condizioni ambientali in cui si è svolta la sedimentazione, o alla presenza di organismi, con le loro impronte e tracce. Le rocce sedimentarie sono infatti caratterizzate dalla presenza di fossili, resti di organismi o prove della loro attività, intrappolati nei sedimenti.

La disposizione iniziale degli strati è orizzontale, configurandosi durante la sedimentazione; essi si sovrappongono creando una sequenza stratigrafica. Tuttavia, potenti forze tettoniche possono alterare questa disposizione originaria, dislocando, piegando o fratturando gli strati. Due strati sono definiti concordanti se mantenuti paralleli; discordanti se risultano non paralleli. La spinta laterale provoca spesso deformazioni, con la formazione di pieghe che tuttavia preservano il parallelismo tra gli strati.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Arenaria: Roccia sedimentaria costituita da granuli di sabbia legati tra loro da un cemento composto da calcio, argilla o silice.  

/ Argilla: Roccia sedimentaria costituita principalmente da silicato idrato di alluminio mescolato ad altri minerali. Quando bagnata, diventa estremamente malleabile e conserva la forma dopo cottura o essiccazione.  

/ Breccia: Roccia sedimentaria clastica composta da frammenti angolosi con diametro superiore a 2 mm.  

/ Calcare: Roccia sedimentaria di origine chimica o organogena composta per oltre il 50% da carbonato di calcio sotto forma di calcite.  

/ Carbone: Materiale solido combustibile, ricco di carbonio (grafite), che brucia con una reazione altamente esotermica. Si forma dalla lenta trasformazione di residui vegetali coperti da strati sedimentari.  

/ Clasti: Frammenti di rocce derivanti dalla disgregazione causata da agenti atmosferici.  

/ Diagenesi: Serie di processi chimico-fisici che avvengono nei sedimenti tra i minerali o tra questi e le soluzioni circolanti, dalla deposizione fino alla formazione della roccia solida.  

/ Facies: Insieme delle caratteristiche litologiche e paleontologiche che permettono di individuare l'origine ambientale di una roccia.  

/ Sedimentazione: Processo di deposizione e accumulo di materiali sulla superficie terrestre, sia in ambiente subaereo che subacqueo. Può avvenire per via meccanica, chimica o organogena.  

/ Stratificazione: Caratteristica delle rocce sedimentarie che consiste nella sovrapposizione di superfici piane e parallele, creando strati distinti nella massa rocciosa.  

/ Tufo: Roccia piroclastica originata dalla sedimentazione di materiali espulsi durante eruzioni vulcaniche esplosive, in ambiente terrestre o acquatico.  