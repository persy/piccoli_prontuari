#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Il sistema solare comprende il Sole e l'insieme dei corpi celesti che orbitano intorno ad esso, tra cui i pianeti principali con i loro satelliti, gli asteroidi e le comete. Grazie all'invio di numerose sonde spaziali, la nostra comprensione degli elementi che compongono il sistema solare si è notevolmente ampliata, permettendoci di ottenere dati significativi sulla loro origine, evoluzione, struttura e orbite.]

== Origine del sistema solare

Utilizzando tecniche di datazione radioattiva, è possibile stimare un'età massima di circa 4,5 miliardi di anni per le rocce terrestri, un intervallo simile per quelle lunari e per alcuni meteoriti. Per il Sole, attraverso l'analisi della sua struttura e della sua evoluzione, si calcola invece un'età approssimativa di quasi 5 miliardi di anni. Questi risultati concordanti suggeriscono che i primi eventi legati alla formazione dei pianeti abbiano avuto luogo circa 4,6 miliardi di anni fa.

Una teoria valida riguardo l'origine del sistema solare deve poter spiegare una serie di osservazioni fondamentali:  
+ Il sistema solare è isolato dagli altri oggetti celesti e composto in larga parte da spazio vuoto, con il 99% della massa concentrata nel Sole.  
+ I pianeti orbitano intorno al Sole e ruotano su se stessi seguendo traiettorie che, salvo alcune eccezioni, giacciono su un unico piano.  
+ Esiste una netta distinzione tra due gruppi di pianeti basata su massa e composizione.  
+ Una fascia di asteroidi delimita il confine tra questi due gruppi planetari.  
+ Le superfici degli corpi celesti del sistema solare sono segnate da crateri di varie dimensioni, risalenti a circa 4 miliardi di anni fa.  
+ I materiali recuperati mostrano un'età massima coerente di 4,6 miliardi di anni.

Nel corso della storia, sono state proposte diverse teorie per spiegare la formazione del sistema solare. Tra quelle più rilevanti, anche se basate su dati meno consistenti rispetto a quelli attuali, si distinguono le teorie di Kant-Laplace e Jeans.

La teoria nebulare formulata da Immanuel Kant nel 1755 e perfezionata da Pierre Laplace nel 1796 ipotizzava che il sistema solare avesse origine da una nebulosa rotante in contrazione, chiamata nebulosa presolare. Secondo questa teoria, il movimento centrifugo avrebbe causato la separazione di anelli che successivamente si sarebbero condensati per formare pianeti e satelliti.

Nel 1900 James Jeans avanzò invece la teoria catastrofica, secondo la quale il sistema solare sarebbe nato da un evento unico e violento: il passaggio ravvicinato del Sole con un'altra stella avrebbe generato una massiccia onda di marea, provocando l'espulsione di materia dal Sole da cui si sarebbero originati pianeti più grandi al centro e più piccoli ai margini. Tuttavia, questa teoria è stata abbandonata poiché calcoli successivi hanno dimostrato che il materiale espulso a velocità elevata si sarebbe disperso nello spazio anziché condensarsi in pianeti.

Le ricerche condotte negli ultimi anni hanno consentito di delineare le principali fasi del probabile processo che condusse alla formazione dei pianeti del sistema solare.

Attualmente, l'ipotesi maggiormente accettata, nota come teoria dell'accumulazione, suggerisce che circa 5 miliardi di anni fa il Sole e gli altri corpi celesti del sistema solare si siano originati simultaneamente all'interno di una nube primordiale composta da gas e polveri, caratterizzata da un lento moto di rotazione. Perturbazioni gravitazionali avrebbero provocato il collasso della nube su se stessa, causando un progressivo aumento della sua velocità rotazionale con il conseguente spostamento delle particelle di materia verso il centro. Il moto rotatorio portò la nube a contrarsi gradualmente, assumendo la forma di un disco appiattito. Al centro del disco si accumulò la maggior parte della materia originaria, mentre il materiale residuo si condensò in una serie di anelli periferici in rotazione attorno al centro. La massa centrale, sotto l'azione della gravità, collassò ulteriormente fino a dar vita al Sole. Nei anelli periferici, per mezzo di una sequenza complessa di processi di accumulazione e aggregazione di polveri e gas, si formarono i pianeti. Questo processo evolutivo vide inizialmente la formazione di piccoli granuli, successivamente aggregatisi in corpi di massa crescente, noti come planetesimi. Attraverso attrazioni gravitazionali tra planetesimi, vennero a costituirsi ammassi più consistenti: i futuri pianeti.

Un aspetto importante di questo processo è legato alla variazione di temperatura nella nube: le zone periferiche erano significativamente più fredde rispetto a quelle vicine al centro. Queste differenze termiche influenzarono la composizione dei corpi celesti che stavano formando. Nelle regioni vicine al Sole, più calde, i corpi non riuscirono a trattenere atmosfere costituite principalmente da elementi leggeri come idrogeno ed elio, portando alla formazione di pianeti minori, della Luna e degli asteroidi, caratterizzati da una composizione prevalentemente rocciosa. Viceversa, nelle regioni periferiche più fredde si formarono i pianeti maggiori, composti principalmente da acqua, metano e ammoniaca congelati, oltre alle comete. Questa ipotesi spiega efficacemente la distinzione tra i pianeti terrestri, più densi e rocciosi, e i pianeti giganti, costituiti principalmente da materiali gassosi. Nei pianeti terrestri con massa maggiore, come la Terra, si verifica un'ulteriore evoluzione interna. La materia tende a precipitare verso il centro sotto l'effetto della gravità e il calore generato dagli elementi radioattivi provoca un incremento della temperatura tale da indurre la fusione parziale dei materiali. Questo fenomeno modifica la distribuzione interna delle componenti: i materiali più leggeri si stabiliscono in prossimità della superficie formando una crosta silicatica, mentre quelli più pesanti migrano verso il nucleo metallico centrale.

== Il Sole

Il Sole, localizzato al centro del sistema planetario, rappresenta una gigantesca sfera composta da gas ionizzati (plasma) che emettono energia sotto forma di radiazioni elettromagnetiche e corpuscolari. Questo corpo celeste costituisce la fonte principale di energia che si manifesta e viene sfruttata sulla Terra.

Il Sole è classificato come stella della sequenza principale appartenente al tipo spettrale G2 (quinta classe di luminosità), ed è contraddistinto dal colore giallo. Possiede un raggio di circa 696.500 km, pari a 109 volte quello terrestre, e una massa stimata in 1,99 \u{00D7} 10#super[30] kg, equivalente a circa 330.000 volte la massa terrestre e a 750 volte quella degli altri corpi del sistema solare combinati. La densità media del Sole è pari a 1,41 g/cm#super[3], ovvero un quarto della densità media terrestre. La sua temperatura superficiale raggiunge circa 5.700°C e l'accelerazione gravitazionale misurata sulla sua superficie è 28 volte superiore a quella terrestre.

#figure(
  caption: [Caratteristiche del Sole],
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
  columns: (2),
  table.header[Caratteristica][Descrizione],
[raggio], [696 500 km \ (109 volte quello terrestre)],
[massa], [2 \u{00D7} 10#super[33] g \ (333 400 volte quella terrestre)],
[densità media], [2 \u{00D7} 10#super[33] g \ (333 400 volte quella terrestre)],
[temperatura superficiale], [5700 °C],
[accelerazione di \ gravità alla superficie], [274 m/s#super[2] \ (28 volte quella terrestre)],
[distanza dalla Terra], [da 147,1 a 152,1 milioni di km; \ in media 149,6 milioni di km],
[diametro angolare \ apparente del disco], [da 31'27" a 32'30"],
)  
)

=== Struttura interna

Il Sole, analogamente alle altre stelle, è una sfera di gas ad altissima temperatura, in cui la materia è mantenuta coesa grazie alla forza gravitazionale. La struttura del Sole può essere suddivisa in due regioni principali: una parte interna, non direttamente osservabile, e una parte esterna identificata come atmosfera solare.  

La regione interna si articola in diverse zone. Si ipotizza la presenza di un nucleo al centro del Sole, dove hanno luogo le reazioni di fusione nucleare che costituiscono la fonte primaria di energia della stella. Circostante il nucleo vi è la zona radiativa o zona di radiazione, un guscio sferico formato da gas che trasporta l'energia principalmente sotto forma di raggi gamma attraverso assorbimento e riemissione continui. Al di sopra della zona radiativa si estende la zona convettiva, caratterizzata dal trasporto energetico tramite moti convettivi dei gas. Tale regione, rappresentante circa il 30% del raggio solare, è essenziale per il trasferimento dell'energia verso gli strati superiori.  

Esternamente, il Sole presenta una parte visibile composta da tre strati distinti: fotosfera, cromosfera e corona. La cromosfera e la corona collettivamente costituiscono l'atmosfera solare, una struttura complessa e sede di fenomeni violenti che variano nel tempo.  

La radiazione solare ha origine nella fotosfera, il più basso degli strati atmosferici; il nome deriva dal greco e significa "sfera di luce". Questo strato, spesso poche centinaia di chilometri e caratterizzato da temperature comprese tra 4.300 °C e 9.000 °C, rappresenta il sito delle macchie solari. Queste zone più scure, contraddistinte da un intenso campo magnetico, si presentano con una configurazione bipartita: una regione centrale chiamata "ombra" circondata da una zona più chiara detta "penombra". La posizione delle macchie solari varia nel tempo a causa della rotazione differenziale del Sole, che dipende dalla latitudine. In aggiunta, è stato osservato che il numero totale delle macchie segue un ciclo di attività solare di circa 11 anni.  

Al di sopra della fotosfera risiede la cromosfera, uno strato di gas rarefatto spesso circa 2.000 km e caratterizzato dalla presenza di strutture chiamate spicole, che possono raggiungere lunghezze sino a 10.000 km. La temperatura media nella cromosfera si innalza fino a circa 15.000 °C.  

La corona rappresenta il terzo e ultimo strato solare ed è costituita da gas estremamente rarefatto che raggiunge temperature dell'ordine del milione di gradi. Questo strato esterno può essere osservato durante le eclissi totali di Sole o tramite strumenti specifici denominati coronografi.

=== Attività solare

Per quanto riguarda l'attività solare, i moti convettivi generati dal riscaldamento del gas proveniente dal nucleo contribuiscono alla formazione della granulazione nella fotosfera. La granulazione si manifesta come zone chiare — note come teste superiori delle colonne ascendenti di gas caldo — circondate da aree scure in cui il gas, raffreddandosi, tende a scendere. Oltre alla granulazione, il Sole è teatro di fenomeni spettacolari quali le protuberanze e i brillamenti. Le protuberanze sono emissioni massive di materia che si estendono fino a decine di migliaia di chilometri nello spazio. I brillamenti, al contrario, sono incrementi improvvisi e violenti di luminosità localizzati nella cromosfera e nella corona; questi eventi sono accompagnati da emissioni di raggi X e particelle accelerati, spesso correlati alle sottostanti macchie solari.  

La corona solare si espande nello spazio interplanetario formando il vento solare, un flusso continuo di particelle e campi magnetici che pervade l'intero sistema solare. Quando tali perturbazioni raggiungono la Terra, possono causare tempeste geomagnetiche che interagiscono con il campo magnetico terrestre, dando origine a fenomeni atmosferici spettacolari come le aurore polari. Tali fenomeni luminossissimi si formano nelle regioni alte dell'atmosfera terrestre tra mesosfera e termosfera ad altitudini superiori ai cinquanta chilometri. Le manifestazioni di attività solare sono strettamente legate alla distribuzione spaziale e al comportamento dei campi magnetici localizzati sulla superficie del Sole.

L'energia totale emessa dal Sole viene calcolata utilizzando la costante solare, ovvero la quantità di energia che, per unità di tempo, raggiunge una data superficie unitaria posta fuori dall'atmosfera terrestre e orientata perpendicolarmente rispetto ai raggi solari. Il valore di questa costante è pari a 1,374 kW/m#super[2] al minuto. In termini globali, il Sole irradia annualmente all'interno dell'atmosfera terrestre una quantità di energia stimata in 5,47 \u{00D7} 10#super[24] joule, e circa il 70% di tale energia riesce a raggiungere la superficie terrestre.

== I pianeti

I pianeti del sistema solare, il cui nome deriva dal termine greco "planào," che significa "vagare," si distinguono dalle stelle fisse per il loro movimento apparente sulla volta celeste.

Attualmente sono noti nove pianeti: Mercurio, Venere, Terra, Marte, Giove, Saturno, Urano, Nettuno e Plutone. Essi vengono classificati in base alle loro orbite rispetto a quella terrestre: i pianeti esterni o superiori (da Marte a Plutone) e i pianeti interni o inferiori (Mercurio e Venere). Una seconda suddivisione si basa sulle caratteristiche fisiche: i pianeti terrestri (Mercurio, Venere, Terra e Marte) e i pianeti gioviani (Giove, Saturno, Urano, Nettuno e Plutone). I pianeti gioviani sono chiamati anche pianeti giganti a causa delle loro dimensioni significativamente più grandi rispetto alla Terra.

#pad(left: -4em, right: -4em)[
#figure(
  caption: [Principali caratteristiche dei pianeti del sistema solare],
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
  columns: (6em, auto, auto, auto, auto, auto, auto, auto, auto, ),
  table.header[Caratteristica][Mercurio][Venere][Terra][Marte][Giove][Saturno][Urano][Nettuno],
[distanza media \ dal Sole \ (milioni di km)], [57,9], [108,2], [149,6], [227,9], [778,3], [1427], [2869,6], [4496,6], 
[diametro \ equatoriale \ (km)], [4880], [12 104], [12 756], [6787], [142 800], [120 000], [51 800], [49 200], 
[massa \ (Terra = 1)], [0,055], [0,815], [1], [0,108], [317,9], [95,2], [14,6], [17,2], 
[volume \ (Terra = 1)], [0,06], [0,86], [1], [0,15], [1316], [755], [67], [61], 
[atmosfera], [nessuna], [diossido di carbonio], [azoto, ossigeno], [diossido di carbonio], [idrogeno, elio], [idrogeno, elio], [idrogeno, elio, metano], [idrogeno, elio, metano], 
[periodo di \ rotazione], [59 g], [243 g], [23h 56min], [24h 37min], [9h 50,5min], [10h 14min], [16h], [16h],
[periodo di \ rivoluzione], [88 g], [224,7 g], [365,26 g], [687 g], [11,86 anni], [29,46 anni], [84 anni], [164,8 anni], 
[gravità \ (Terra = 1)], [0,37], [0,88], [1], [0,38], [2,64], [1,13], [1,17], [1,18]
)  
)
]

#notebr[== *🧩* Leggi che governano i moti dei pianeti <senza_numero>

Approfondendo le leggi che regolano i moti planetari, è utile ricordare che nell'antichità il cosmo veniva concepito come un insieme di sfere concentriche con la Terra situata al centro. Su ciascuna di queste sfere era posto un corpo celeste ("astro"), e il tutto era racchiuso da una sfera opaca perforata da piccoli fori attraverso cui filtrava la luce divina dell'empireo. Una visione introdotta dal matematico, astronomo e geografo greco Claudio Tolomeo nel I secolo d.C., che descriveva la Terra immobile al centro dell'universo. Secondo il sistema tolemaico, attorno al pianeta orbitavano la Luna, Mercurio, Venere, il Sole, Marte, Giove, Saturno e infine la sfera delle stelle fisse.

Tale modello geocentrico dominò per secoli fino al XVII secolo, quando venne successivamente confutato con l'avvento del sistema copernicano proposto da Niccolò Copernico. Quest'ultimo affermò che la Terra e gli altri pianeti orbitano attorno al Sole lungo traiettorie definite come orbite. Un ciclo completo di rivoluzione di un pianeta intorno al Sole identifica il periodo orbitale, ad esempio per la Terra tale durata corrisponde a un anno.

Le caratteristiche del movimento dei pianeti nel Sistema Solare furono definite all'inizio del XVII secolo dall'astronomo tedesco Giovanni Keplero (1571-1630). Basandosi sull'osservazione diretta del cielo, Keplero formulò tre leggi fondamentali che descrivono il moto dei pianeti.

=== Le leggi di Keplero <senza_numero>

La prima legge stabilisce che l'orbita di ogni pianeta è un'ellisse, con il Sole situato in uno dei due fuochi. Seguendo questa traiettoria ellittica, la distanza di ciascun pianeta dal Sole cambia continuamente, oscillando tra due valori estremi: il punto di massima distanza è chiamato afelio, mentre quello di minima distanza è il perielio.

La seconda legge descrive la variazione della velocità orbitale: ogni pianeta si muove più velocemente quando si trova vicino al Sole e più lentamente quando è distante. Questo fenomeno garantisce che il pianeta percorra aree uguali dell'ellisse nel medesimo intervallo di tempo.

La terza legge mette in relazione la velocità orbitale dei pianeti con le loro distanze dal Sole: i pianeti più vicini al Sole completano le loro orbite più rapidamente rispetto a quelli più lontani. Questa correlazione segue una regola matematica precisa: il rapporto tra i quadrati dei tempi impiegati da due pianeti per compiere una rivoluzione è uguale al rapporto tra i cubi delle loro distanze medie dal Sole.

Queste tre leggi derivano dall'attenta osservazione dei movimenti dei pianeti, fornendo una descrizione accurata di come ogni corpo celeste orbita attorno a una stella. Tuttavia, non spiegano quale forza generi tale movimento.

=== La legge di gravitazione universale <senza_numero>

Nel 1687, Isaac Newton (1642-1727) individuò la causa del moto planetario formulando la legge di gravitazione universale. Secondo questa legge, due corpi si attraggono reciprocamente con una forza proporzionale al prodotto delle loro masse e inversamente proporzionale al quadrato della loro distanza. Un esempio intuitivo è la forza di gravità sulla Terra, che fa sì che ogni oggetto venga attratto verso la superficie terrestre.

Nel sistema solare, i pianeti subiscono l'attrazione gravitazionale della grande massa del Sole, ma non precipitano su di esso grazie all'equilibrio dinamico tra due forze opposte. La forza centripeta, diretta verso il Sole, è bilanciata dalla forza centrifuga generata dal moto orbitale dei pianeti. I pianeti più vicini al Sole, soggetti a una maggiore attrazione gravitazionale, devono contrastarla con una forza centrifuga più intensa, ottenibile grazie a velocità orbitali elevate. Al contrario, i pianeti più lontani, sottoposti a una forza gravitazionale minore, possono mantenere un movimento orbitale più lento. Questa relazione riflette chiaramente quanto illustrato nella seconda legge di Keplero.]

=== Pianeti terrestri

Mercurio rappresenta il pianeta più interno del sistema solare e, per lungo tempo, è rimasto poco conosciuto. Le uniche osservazioni significative sono state effettuate durante i passaggi ravvicinati della sonda Mariner 10 nel 1974 e nel 1975. Le limitate dimensioni del pianeta, unite alla sua stretta vicinanza al Sole, rendono complessa l'osservazione astronomica. Mercurio emerge e tramonta entro circa un'ora dal sorgere e dal calare del Sole, costringendo gli osservatori terrestri a individuare il pianeta in posizioni prossime all'orizzonte, dove l'immagine risulta alterata dalla turbolenza atmosferica.

A livello termico, la superficie di Mercurio è caratterizzata da variazioni estreme: le temperature superano i 327 °C nell'emisfero esposto al Sole, ma scendono fino a –103 °C nella parte permanentemente in ombra. Dal punto di vista orbitale, Mercurio segue una traiettoria significativamente ellittica e non possiede satelliti naturali. La sua morfologia superficiale è sorprendentemente simile a quella della Luna, presentando vaste regioni craterizzate derivanti da impatti meteorici, conservatesi intatte per miliardi di anni in assenza di acqua e atmosfera. Oltre ai crateri, si trovano ampie pianure che si ritiene abbiano un'origine vulcanica; tuttavia, non sono stati osservati vulcani attivi. Il pianeta detiene una tenue atmosfera composta prevalentemente da gas nobili, catturati dal vento solare o generati dal decadimento radioattivo delle rocce. Mercurio completa una rivoluzione siderale intorno al Sole in 88 giorni terrestri e ruota su se stesso con un periodo di circa 58,6 giorni, una relazione temporale che equivale ai due terzi del suo moto di rivoluzione.

Venere condivide parametri fisici simili a quelli della Terra, quali dimensioni, massa e densità, ma differisce radicalmente per le condizioni ambientali. La sua temperatura superficiale, che si aggira sui 477 °C, rende estremamente improbabile lo sviluppo della vita come la conosciamo. Privo di satelliti naturali, Venere è avvolto da un'atmosfera densa e spessa oltre 80 km, costituita quasi interamente da anidride carbonica. Questa composizione atmosferica crea una coltre di nubi formate da goccioline di acido solforico e acqua, responsabili di intrappolare gran parte dell'energia solare incidente mediante effetto serra. La sua morfologia include catene montuose rilevanti, tra cui il Monte Maxwell, che raggiunge un'altitudine di 11 km. Sul pianeta è stata confermata la presenza di vulcani attivi. Un'ulteriore peculiarità di Venere è la sua rotazione retrograda, ovvero in direzione opposta rispetto al movimento orbitale.

Per quanto riguarda la Terra, un'analisi dettagliata delle sue proprietà strutturali è rinviata a capitoli successivi. Tuttavia, si può anticipare che il nostro pianeta ha la forma di un ellissoide di rotazione in prima approssimazione e presenta una struttura interna stratificata costituita da crosta, mantello e nucleo. Il campo magnetico terrestre, prevalentemente dipolare, è probabilmente generato da un processo di dinamo autoeccitante causato dal movimento delle cariche elettriche all'interno del fluido conduttore presente nel nucleo. L'atmosfera terrestre è composta per circa il 20% da ossigeno e per il restante 80% da azoto. Il pianeta possiede un unico satellite naturale, la Luna, privo sia di acqua che di atmosfera.

Marte è facilmente riconoscibile grazie al suo distintivo colore rossastro. Al contrario della Terra e di Venere, il suo diametro rappresenta circa la metà di quello terrestre ed è leggermente più grande rispetto a quello di Mercurio. Il pianeta presenta agli estremi polari delle calotte chiare composte da ghiaccio d'acqua e anidride carbonica solidificata, la cui estensione varia ciclicamente con le stagioni. Sebbene Marte sia geologicamente attivo e ospiti tracce di significative attività vulcaniche sulla sua superficie, non vi è evidenza della presenza di acqua nello stato liquido. La sua atmosfera è dominata dall'anidride carbonica, con tracce minori di azoto, ossigeno, monossido di carbonio e argon.

Nel 1877, l'astronomo italiano Giovanni Schiaparelli (1835-1910) riteneva di aver individuato una rete di strutture quasi rettilinee sulla superficie di Marte, che descrisse come "canali" colleganti piccole "oasi". Queste osservazioni alimentarono l'ipotesi che tali canali potessero essere il frutto di un'intelligenza extraterrestre. Tuttavia, oggi sappiamo che quelle formazioni erano il risultato di un effetto ottico.

Marte dispone di due satelliti naturali, Phobos e Deimos, entrambi con una forma irregolare e una superficie costellata di crateri.

=== Pianeti gioviani

Giove, il più grande tra i pianeti del sistema solare, supera la Terra di 318 volte in massa e presenta un diametro equatoriale oltre 11 volte maggiore. La sua struttura è essenzialmente fluida, con un nucleo composto da ferro e silicati.

L'atmosfera di Giove è stratificata e caratterizzata da una complessa dinamica. Il classico aspetto a bande—zone bianco-giallastre alternate a fasce bruno-rossicce—è dovuto alla rotazione differenziale della materia fluida e delle nubi, che si spostano a velocità diverse. Una delle caratteristiche più impressionanti dell'atmosfera superiore è la Grande Macchia Rossa, un immenso ciclone ellittico osservato fin dal XVII secolo, nota per la sua incredibile stabilità nel tempo.

Giove mostra un marcato appiattimento ai poli, causato dalla sua elevata velocità di rotazione, ed è dotato di un imponente campo magnetico.

Fino ad oggi sono stati identificati 16 satelliti naturali di Giove. Tra questi i più noti sono Io, Europa, Ganimede e Callisto, scoperti da Galileo Galilei. Ganimede è il satellite più grande del sistema solare, superando in dimensioni lo stesso Mercurio. Gli altri tre hanno tutti dimensioni superiori a quelle della Luna terrestre. Io, Europa e Ganimede possiedono atmosfere rarefatte; su Io sono stati rilevati vulcani attivi. Europa, Ganimede e Callisto ospitano abbondanti quantità di acqua allo stato solido, e si suppone che Europa possa addirittura contenere acqua liquida sotto la sua crosta ghiacciata. Sia Ganimede che Callisto presentano superfici solide fortemente segnate e ormai da lungo tempo solidificate.

Giove possiede anche un sottile anello costituito probabilmente da particelle di polvere, simile per natura, ma meno spettacolare rispetto agli iconici anelli di Saturno.

Saturno, infatti, si distingue nel sistema solare per il suo magnifico sistema di anelli. Situato a una distanza dal Sole pari al doppio di quella di Giove, Saturno è un gigante gassoso con una densità molto bassa.

Gli anelli di Saturno furono osservati per la prima volta da Galileo Galilei, che non ne comprese pienamente la natura, e successivamente studiati in dettaglio dall'astronomo italiano Giovanni Domenico Cassini (1625-1712). Essi sono formati da una miriade di particelle estremamente piccole composte principalmente da ghiaccio d'acqua mescolato con polveri silicatiche.

Attualmente sono conosciuti 18 satelliti naturali di Saturno, ma si ritiene che ne possano esistere molti altri. I satelliti si suddividono in regolari, con orbite quasi circolari allineate al piano equatoriale del pianeta, e irregolari, con traiettorie più eccentriche. Titano è il più grande e luminoso; supera le dimensioni di Mercurio ed è avvolto in una densa atmosfera composta principalmente da azoto e metano, rendendo impossibile l'osservazione diretta della sua superficie.

Urano fu identificato per caso nel 1781 dall'astronomo F. W. Herschel (1738-1822). Appartenente alla categoria dei pianeti giganti, insieme a Giove, Saturno e Nettuno, si distingue per l'assenza di significative fonti interne di calore. Una peculiarità di Urano è rappresentata dall'elevata inclinazione del suo asse di rotazione rispetto al piano orbitale, che determina lunghi periodi in cui uno dei poli è costantemente esposto al Sole. L'atmosfera esterna del pianeta, composta principalmente da idrogeno ed elio, conferisce al corpo celeste una tonalità verde-azzurra.

Nettuno, invece, fu scoperto nel 1846 dall'astronomo J. G. Galle (1812-1910), grazie a precise previsioni teoriche elaborate indipendentemente da J. C. Adams (1819-1892) e U. Le Verrier (1811-1877). Le loro analisi si concentrarono sulle perturbazioni osservate nell'orbita di Urano. Al telescopio, Nettuno appare come un piccolo disco dall'aspetto verdastro, somigliante a Urano. La sua atmosfera rivela la presenza di metano, ma la struttura interna del pianeta rimane sconosciuta. Nettuno è circondato da quattro anelli sottili e presenta due satelliti principali: Tritone e Nereide.

== Pianeti nani

Un pianeta nano viene definito come un corpo celeste che orbita attorno al Sole, possiede una massa sufficiente a raggiungere l'equilibrio idrostatico — ovvero una forma quasi sferica — ma non ha mai ripulito la propria orbita da altri oggetti di dimensioni simili, e non è un satellite. Questa distinzione è stabilita dall'Unione Astronomica Internazionale (IAU), che nel 2006 ridefinì pianeta e coniò il nuovo termine come due classi distinti di oggetti, introducendo la nuova categoria per quei corpi che soddisfano il primo due criteri di un pianeta ma non il terzo, cioè la dominanza orbitale.

Plutone emerge come il più grande del sistema solare in questa categoria. Scoperto fortuitamente nel 1930 da Clyde Tombaugh e fino al 2006 considerato un vero e proprio pianeta, Plutone possiede un'orbita altamente inclinata rispetto al piano dell'eclittica e fortemente eccentrica. La distanza media dal Sole si attesta intorno ai 5.900 milioni di chilometri. Il pianeta forma un sistema binario con il suo satellite Caronte, che presenta dimensioni e massa paragonabili a quelle di Plutone stesso. La superficie del pianeta è probabilmente ricoperta da metano ghiacciato, che in prossimità del Sole sublima generando una tenue atmosfera di metano.

Oltre Plutone sono stati individuati altri pianeti nani, tra cui: Cerere, situato nella fascia principale di asteroidi; Eris, associato al disco diffuso e accompagnato dal satellite Disnomia; Haumea, appartenente ai plutoidi; Makemake, un cubewano classificato come plutoide caratterizzato da orbite oltre le 41 Unità Astronomiche e bassa eccentricità. 

Numerosi altri oggetti nel sistema solare esterno, come Quaoar, Sedna, Orcus e Gonggong, sono considerati candidati plausibili per questa categoria e potrebbero essere riconosciuti ufficialmente in futuro. 

== La fascia degli asteroidi

Per quanto concerne la fascia degli asteroidi, questi corpi rocciosi di forma irregolare rappresentano residui delle prime fasi evolutive del sistema solare. Gli asteroidi orbitano generalmente tra Marte e Giove, con la maggior parte dei loro diametri limitati a poche decine di chilometri. Tuttavia, circa una trentina supera i 200 km di diametro. Due specifici gruppi detti "Troiani" condividono l'orbita di Giove, mantenendo una posizione equidistante dal pianeta e dal Sole. Altri asteroidi possiedono traiettorie ellittiche particolarmente allungate che li conducono ai confini del sistema planetario.

L'origine degli asteroidi è attribuita alla nube primordiale di gas da cui si è formato il sistema solare; tuttavia, la forte influenza gravitazionale di Giove avrebbe impedito loro di aggregarsi in un unico corpo celeste. Gli asteroidi sono classificati in base alla composizione chimica predominante della loro superficie e suddivisi in carbonacei, silicacei e metallici.

Dal primo asteroide identificato nel 1801 ad oggi, il numero totale è cresciuto significativamente, raggiungendo decine di migliaia. Per circa 2000 di essi le orbite sono state mappate con precisione.

== La Luna

La Luna, unico satellite naturale della Terra, appare nel cielo come un disco dalle dimensioni simili a quelle del Sole, risultando con un diametro pari a circa un quarto di quello terrestre.

#figure(
  caption: [Caratteristiche della Luna],
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
  table.header[Caratteristica][Valore][],
[distanza dalla Terra \ da centro a centro], [media], [384 400 km],
[], [minima (perigeo)], [356 410 km],
[], [massima (apogeo)], [406 697 km],
[distanza dalla Terra \ da superficie a superficie], [media], [376 284 km],
[], [minima], [348 294 km],
[], [massima], [398 581 km],
[periodo di rivoluzione], [27,321 661 giorni], [],
[periodo di rotazione \ sul proprio asse], [27,321 661 giorni], [],
[mese sinodico], [29g 12h 44m 2,9s], [],
[velocità orbitale media], [3680 km/h], [],
[inclinazione assiale del piano], [1°32'], [],
[inclinazione orbitale], [5°09'], [],
[eccentricità orbitale], [0,0549], [],
[diametro], [3475,6 km], [],
[diametro apparente \ visto dallta Terra], [massimo], [33'31"],
[], [medio], [31'5"],
[], [minimo], [29'2"],
[densità \ (acqua = 1)], [3,342], [],
[massa \ (Terra = 1)], [ 0,0123], [],
[volume \ (Terra = 1)], [ 0,0203], [],
[velocità di fuga], [ 2,38 km/s], [],
[gravità alla superficie \ (Terra = 1)], [ 0,1653], [],
[albedo ], [0,07], [],
[magnitudine media \ (alla Luna piena)], [ – 12,7], [],
)  
)

=== Origine della Luna

Nel corso del tempo, sono state proposte diverse teorie sull'origine della Luna. Alcune di queste hanno perso validità, mentre altre si sono evolute grazie all'incremento dei dati scientifici disponibili.
- Teoria della separazione: In questa ipotesi, la Terra primordiale, ancora in stato fluido, avrebbe ruotato a una velocità molto maggiore rispetto a quella attuale. Questa rapida rotazione avrebbe provocato il distacco di una massa dalla Terra, dando origine alla Luna. Tuttavia, questa teoria è stata abbandonata per due motivi principali: le forze di attrito avrebbero impedito alla protuberanza di raggiungere l'altitudine necessaria per il distacco e non si spiega il motivo per cui la Terra ruotasse inizialmente così velocemente né perché il piano orbitale della Luna sia inclinato rispetto a quello terrestre. Nonostante ciò, questa teoria giustifica in parte la minore densità lunare.
- Teoria del pianeta doppio: Secondo quest'ipotesi, la Luna e la Terra si sarebbero formate contemporaneamente dall'accrescimento di particelle di materia nello stesso periodo. Tuttavia, i valori molto diversi di densità tra i due corpi indicano una composizione differente, rendendo quest'idea poco plausibile.
- Teoria della cattura: In base a questa teoria, la Luna sarebbe un corpo celeste formatosi altrove nel sistema solare e successivamente catturato dal campo gravitazionale terrestre. Tuttavia, la probabilità di tutte le condizioni necessarie affinché un tale evento si verificasse risulta piuttosto bassa, anche se spiegherebbe la differente composizione tra Luna e Terra.
- Teoria dell'accrescimento: La spiegazione più accreditata propone che la Luna si sia formata dall'aggregazione di particelle e polveri presenti nell'orbita terrestre. Questa teoria sembra essere la più compatibile con i dati attualmente disponibili.

=== La superficie della Luna

La composizione chimica della crosta lunare è simile a quella della crosta terrestre. Nelle rocce lunari riportate sulla Terra (tutte di natura basaltica) sono stati individuati soltanto tre minerali che non esistono sul nostro pianeta. 

La superficie lunare si distingue per caratteristiche peculiari come zone chiare e scure, chiamate rispettivamente terre (o continenti) e mari. 
- Le terre sono aree più luminose, accidentate e ricche di strutture; presentano catene montuose che possono raggiungere altitudini di 8000 metri, oltre a profondi solchi.
- I mari, al contrario, appaiono come regioni pianeggianti, scure e lisce, dalla forma circolare. Originariamente si riteneva che avessero origine vulcanica, ma questa teoria è stata confutata poiché i crateri lunari hanno una distribuzione casuale (diversa da quella dei vulcani terrestri, solitamente raggruppati in aree specifiche) e dimensioni decisamente troppo grandi per considerarli vulcani. Oggi si accetta che i mari siano il risultato dell'impatto di asteroidi giganti che hanno creato enormi crateri successivamente riempiti da lava proveniente dagli strati interni della Luna.

Attraverso lo studio delle traiettorie dei satelliti orbitanti attorno alla Luna, sono state individuate anomalie gravitazionali nelle aree dei mari circolari. Queste irregolarità, chiamate mascon (dalle parole ''mass concentration''), sembrano essere attribuibili alla presenza di grandi meteoriti metallici sotto la superficie lunare.

La Luna, priva di atmosfera a causa della sua debole gravità incapace di trattenere gas, presenta alcune caratteristiche particolari. L'assenza di atmosfera genera effetti significativi: le temperature sulla superficie registrano variazioni estreme nell'arco di un giorno lunare, oscillando tra un massimo di 120 °C durante il giorno e un minimo di –150 °C nella notte, per uno sbalzo complessivo di circa 270 °C. Inoltre, fenomeni come l'erosione o eventi acustici non si manifestano sulla Luna. Osservando le stelle dalla superficie lunare, esse appaiono più luminose e puntiformi, poiché manca il "tremolio" causato dai movimenti d'aria presenti sulla Terra.

=== La struttura interna

Le informazioni raccolte dalle missioni Apollo e dagli studi con sonde senza equipaggio hanno portato alla definizione di un modello attendibile della struttura interna della Luna. Lo strato superficiale, formato da sabbia e polvere (regolite), raggiunge in alcuni punti anche 20 m di spessore. La profondità della crosta è in media di 60 km; al di sotto di essa si trova il mantello, che si estende a circa 1000 km di profondità. Procedendo ulteriormente verso l'interno, si incontra una zona parzialmente fusa (astenosfera). La parte più interna è il nucleo lunare, presumibilmente del diametro di circa 1000 km, ricco di ferro, probabilmente allo stato liquido e con temperature di circa 1500 °C. 

I sismometri lasciati sul suolo lunare nel corso di differenti missioni hanno registrato terremoti di tipo sia superficiale, sia profondo. Gli eventi sismici sono dovuti alla caduta di meteoriti e a sommovimenti che hanno luogo all'interno della Luna stessa. Questi ultimi sono più frequenti quando la Luna si trova più vicina alla Terra e sono pertanto attribuibili all'azione gravitazionale esercitata dal nostro pianeta.

=== I movimenti della Luna

La Luna è caratterizzata da tre movimenti principali: il moto di rivoluzione attorno alla Terra, il moto di rotazione attorno al proprio asse e il moto di traslazione insieme alla Terra attorno al Sole.

Il moto di rivoluzione avviene in direzione antioraria lungo un'orbita ellittica, in cui la Terra occupa uno dei fuochi dell'ellisse. Il piano di questa orbita è inclinato di circa 5° rispetto al piano dell'eclittica, ovvero l'orbita terrestre attorno al Sole. Durante una rivoluzione completa, la Luna attraversa il piano dell'eclittica in due punti chiamati nodi, con la linea che li collega denominata linea dei nodi. La distanza tra la Terra e la Luna varia fra un minimo (perigeo) e un massimo (apogeo), con una distanza media pari a circa 384 000 km.

Per calcolare il periodo di rivoluzione lunare, è necessario distinguere tra due riferimenti: una stella fissa (rivoluzione siderea) oppure l'allineamento Terra-Sole (rivoluzione sinodica). Nel caso della rivoluzione siderea, il periodo dura 27 giorni, 7 ore, 43 minuti e 12 secondi (mese sidereo); invece, nel caso della rivoluzione sinodica, il periodo si estende a 29 giorni, 12 ore, 44 minuti e 3 secondi (mese sinodico), superando di oltre due giorni quello sidereo. Questo scarto temporale si verifica perché mentre la Luna completa il suo moto orbitale, anche la Terra si muove lungo l'eclittica. Di conseguenza, affinché la Luna raggiunga lo stesso allineamento rispetto a Terra e Sole (ad esempio nella fase di Luna nuova), deve percorrere ulteriormente un tratto della sua orbita, un processo che richiede quei due giorni e 12 ore aggiuntivi.

La Luna presenta un complesso sistema di movimenti che ne caratterizzano il comportamento in relazione alla Terra e al Sole. Il moto di rotazione della Luna attorno al proprio asse avviene nello stesso senso della rotazione terrestre, da ovest a est, e ha una durata singolare: circa 27 giorni e un terzo, identica al tempo impiegato per completare la propria rivoluzione siderale attorno alla Terra. Questo sincronismo determina il fenomeno per cui la Luna rivolge sempre lo stesso emisfero verso il nostro pianeta. Il lato nascosto della Luna è stato osservato solo grazie alle missioni spaziali.

Il moto di traslazione della Luna procede nello stesso senso e con una velocità corrispondente a quella del movimento terrestre attorno al Sole. Tuttavia, rispetto al Sole, la traiettoria descritta dalla Luna non è un'ellisse, bensì una curva complessa chiamata epicicloide, simile a un ovale ondulato che interseca l'orbita terrestre in più punti regolari.

Un'altra particolarità del movimento lunare sono le librazioni, leggere oscillazioni che interessano la parte visibile della Luna. Questi cambiamenti derivano dalle caratteristiche dei suoi moti di rotazione e rivoluzione intorno alla Terra e permettono di osservare un 58% della superficie lunare, superiore al semplice 50% dell'emisfero rivolto verso di noi. Le librazioni si verificano principalmente per due motivi: l'inclinazione dell'asse di rotazione della Luna rispetto al piano della sua orbita, che consente di intravedere alternativamente una maggiore porzione degli emisferi settentrionale e meridionale (librazione in latitudine); e la variazione della velocità nel moto di rivoluzione ellittico, dove la Luna accelera al perigeo e rallenta all'apogeo, dando modo di osservare ulteriori porzioni a est e ovest (librazione in longitudine), in accordo con la seconda legge di Keplero.

=== Le fasi lunari

Le fasi lunari rappresentano il ciclo visibile dall'osservatore terrestre, causato dalla variazione della porzione illuminata della Luna durante la sua rivoluzione attorno alla Terra. La luce riflessa dal Sole illumina sempre metà della sfera lunare, ma dal nostro punto di vista terrestre, l'aspetto delle aree visibili cambia giorno dopo giorno. Questo ciclo, che dura circa 29 giorni e mezzo, si suddivide in diverse fasi.

Il novilunio (o Luna nuova) segna il momento in cui la Luna si trova in congiunzione tra il Sole e la Terra. In questa fase non risulta visibile poiché l'emisfero illuminato è rivolto verso il Sole. In tale condizione, la Luna sorge e tramonta contemporaneamente al Sole. Entrando nella fase crescente, appare gradualmente una falce luminosa con convessità verso ovest ("gobba a ponente"), che aumenta progressivamente fino a raggiungere il primo quarto dopo circa una settimana. A questo punto, metà del disco lunare occidentale è illuminata; la Luna sorge a mezzogiorno e tramonta a mezzanotte.

Dopo un'altra settimana la Luna raggiunge la fase di plenilunio (o Luna piena), durante la quale appare come un disco completamente illuminato. In questa posizione opposta rispetto al Sole (opposizione), la Luna sorge al tramonto e cala all'alba. Segue poi l'ultimo quarto: qui è visibile nuovamente metà del disco illuminato, ma stavolta la parte orientale; la Luna sorge a mezzanotte e tramonta a mezzogiorno. Infine, nell'ultima fase calante, il disco lunare assume ancora una forma di falce ridotta, con convessità rivolta verso est ("gobba a levante"), fino a sparire completamente con il ritorno alla Luna nuova e l'inizio di un nuovo ciclo.

Le fasi di Luna nuova e piena sono definite sizigie, mentre quelle del primo e ultimo quarto prendono il nome di quadrature.

=== Eclissi di Sole e di Luna

Quando la Luna si posizione tra il Sole e la Terra, creando un allineamento Sole-Luna-Terra, il suo cono d'ombra si proietta su una parte della superficie terrestre e si verifica un'eclissi di Sole, durante la quale quest'ultimo risulta oscurato per chi osserva dalla Terra.

Se invece è la Terra ad interporre tra il Sole e la Luna, formando un allineamento Sole-Terra-Luna, il cono d'ombra terrestre si estende sulla Luna, generando un'eclissi lunare, con il satellite naturale che viene momentaneamente oscurato.

Le eclissi possono essere di due tipi: totali o parziali. Un'eclissi è totale quando il Sole è completamente coperto dalla Luna o quando tutta la Luna viene oscurata dall'ombra della Terra. Nel caso invece di un allineamento non perfetto tra Sole, Luna e Terra, il cono d'ombra non riesce a oscurare interamente il corpo celeste interessato, dando origine a un'eclissi parziale.

Perché un'eclissi si verifichi, la Luna deve trovarsi in prossimità di uno dei nodi orbitali. Se si trova in fase di novilunio (congiunzione), accadrà un'eclissi solare; mentre se è in plenilunio (opposizione), avrà luogo un'eclissi lunare. Un caso particolare è l'eclissi anulare: questa si manifesta quando la Luna orbita nel punto di massima distanza dalla Terra (apogeo) e il cono d'ombra non arriva a toccare la superficie terrestre. In questi casi, sul disco solare apparirà centralmente l'ombra della Luna, il cui diametro, inferiore rispetto a quello del Sole, lascia visibile un anello luminoso.

=== Le maree

Le maree sono movimenti ciclici di innalzamento (flusso) e abbassamento (riflusso) del livello del mare, causati principalmente dall'attrazione gravitazionale combinata di Luna e Sole sulla Terra. L'influenza della Luna è circa 2,2 volte superiore rispetto a quella del Sole. 

Il livello massimo raggiunto dal mare prende il nome di alta marea, mentre il momento di massimo abbassamento è denominato bassa marea. La differenza tra questi livelli è chiamata ampiezza di marea, che varia significativamente: nei mari chiusi è modesta (1-2 metri), mentre negli oceani può essere molto più accentuata (fino a 20 metri nella baia di Fundy in Canada e 15 metri lungo alcune coste dell'Europa atlantica).

A causa della rotazione terrestre e del moto orbitale lunare, la Luna completa un giro intorno alla Terra in 24 ore e 50 minuti. Questo ciclo determina che, in teoria, ogni punto delle superfici marine dovrebbe alternare un flusso e un riflusso ogni 6 ore e circa 12 minuti, con due alte maree e due basse maree nell'arco di quel periodo.

Tuttavia, nella realtà questo movimento delle maree non avviene regolarmente per diversi fattori. Tra i principali vi sono la distribuzione irregolare degli oceani, l'inerzia delle masse d'acqua, l'attrito esercitato dal fondo marino e la conformazione frastagliata delle coste. Questi elementi causano un ritardo nel raggiungimento dei livelli di alta o bassa marea, noto come ora di porto. Sul piano geografico, i punti costieri che registrano l'alta marea contemporaneamente vengono indicati sulle carte nautiche mediante linee cotidali.

== Corpi minori del sistema solare: comete, meteore, meteoriti

Le comete, il cui nome deriva dal termine greco "kométes" (letteralmente "provvisto di chioma"), rappresentano i corpi celesti più spettacolari tra gli elementi minori che orbitano attorno al Sole lungo traiettorie ellittiche altamente eccentriche. Secondo una teoria ampiamente condivisa, le comete si formarono contemporaneamente al Sole e ai pianeti all'interno di una vasta "nube" di nuclei cometari che avvolge l'intero sistema planetario e si estende fino a circa 2,5 anni luce dal Sole. Questa struttura, nota come nube di Oort in onore dell'astronomo danese Jan Oort, è composta da corpi con massa relativamente ridotta, concentrata all'interno di nuclei di forma irregolare.

Il nucleo di una cometa può essere descritto come un agglomerato di tipo spugnoso, costituito principalmente da acqua ghiacciata mescolata a biossido di carbonio, monossido di carbonio, metano e ammoniaca; tutti presenti in stato solido. Oltre a questi, il nucleo contiene particelle solide imprigionate sotto forma di polveri. Quando una cometa si avvicina al Sole, il nucleo subisce un processo di sublimazione, generando una nube di gas e vapori nota come "chioma", che circonda il corpo principale della cometa. Sotto l'influenza del vento solare, questa chioma viene spinta in direzione opposta rispetto al Sole, formando una lunga coda caratteristica.

Sulla base della durata del loro periodo orbitale attorno al Sole, le comete sono comunemente classificate in quattro categorie: quelle a breve periodo (meno di 20 anni), a periodo intermedio (tra 20 e 200 anni), a lungo periodo (tra 200 e un milione di anni) e quelle con orbite quasi paraboliche.

Le meteore, invece, sono frammenti rocciosi di diverse dimensioni che appartengono al sistema solare e che si muovono nello spazio a velocità elevate. Quando penetrano nell'atmosfera terrestre, il loro moto genera un forte attrito con l'aria che causa l'incandescenza della loro superficie, determinando la combustione del materiale. Questo processo produce un alone luminoso intorno alla meteora stessa. I brillamenti nel cielo, comunemente definiti "stelle cadenti", sono il risultato di questo fenomeno. Si ritiene che le meteore siano residui solidi originariamente appartenuti ai nuclei delle comete. Gli sciami meteorici ricevono il loro nome dalla costellazione celeste da cui sembrano provenire.

I meteoriti costituiscono frammenti extraterrestri più massicci, caratterizzati da dimensioni significative e densità elevata. Pur subendo combustione e parziale disintegrazione durante l'attraversamento dell'atmosfera terrestre, essi riescono a raggiungere la superficie del nostro pianeta, talvolta generando crateri considerevoli. A seconda della loro composizione chimica, i meteoriti vengono classificati in: metallici (ferro e nichel), litoidi (a base di silicati), carbonacei (ad alto contenuto di carbonio) e altre tipologie.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Afelio: Punto più lontano dal Sole occupato da un pianeta o un corpo celeste lungo la propria orbita ellittica.

/ Astronomia: Scienza che studia gli astri e i fenomeni dell'universo.

/ Baricentro: Punto in cui si considera concentrata tutta la massa di un corpo o sistema; chiamato anche centro di gravità o centro di massa.

/ Datazione radioattiva: Metodo per determinare l'età di rocce o eventi geologici basato sulla misurazione della concentrazione di elementi radioattivi.

/ Ellisse: Luogo geometrico dei punti del piano in cui la somma delle distanze da due punti fissi, detti fuochi, è costante.

/ Ellissoide: Solido generato dalla rotazione di un'ellisse attorno a uno dei suoi assi principali.

/ Forza centripeta: Forza che attrae i corpi verso un centro. Nel caso degli oggetti sulla Terra coincide con la gravità.

/ Forza centrifuga: Forza apparente che spinge un corpo verso l'esterno quando si trova in rotazione. Sulla Terra è causata dalla sua rotazione.

/ Moto convettivo: Trasferimento di calore e materia all'interno di un fluido (liquido o gas) dovuto al movimento libero delle particelle che lo compongono.

/ Perielio: Punto più vicino al Sole raggiunto da un pianeta o corpo celeste lungo la sua orbita ellittica.