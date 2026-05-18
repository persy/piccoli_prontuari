#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La Terra è circondata da un involucro gassoso, l'atmosfera, che consiste in una complessa miscela di gas, tra cui azoto, ossigeno e diossido di carbonio (anidride carbonica). Questo sistema svolge funzioni di fondamentale importanza sia per l'ambiente fisico terrestre, contribuendo ad esempio al modellamento del pianeta attraverso i fenomeni meteorologici che si verificano al suo interno, sia per gli organismi viventi, dato che l'ossigeno e il diossido di carbonio rappresentano gas indispensabili per la respirazione. 

Originariamente, la composizione dell'atmosfera differiva significativamente rispetto a quella attuale e ha subito modificazioni nel corso del tempo, soprattutto a seguito delle attività umane. In funzione delle variazioni della temperatura rispetto alla quota, l'atmosfera è suddivisa in cinque strati principali: troposfera, stratosfera, mesosfera, termosfera ed esosfera. 

Ciascuna di queste fasce presenta caratteristiche peculiari legate ai fenomeni che vi si manifestano. Nella troposfera, parametri come temperatura, pressione e umidità influenzano fenomeni meteorologici rilevanti quali venti e precipitazioni, oltre a generare perturbazioni atmosferiche.]

== La composizione chimica dell'atmosfera

La superficie terrestre è avvolta da una miscela di gas definita aria, che forma l'atmosfera (dal greco _atmós_, vapore), un involucro che circonda il pianeta. Attualmente, l'atmosfera è composta per circa l'80% da azoto (N#sub[2]) e per circa il 20% da ossigeno (O#sub[2]), insieme a numerosi altri componenti minori tra cui argo (Ar), vapore acqueo (H#sub[2]O) e diossido di carbonio (CO#sub[2]). La presenza di questi gas è mantenuta intorno alla Terra grazie alla forza di gravità, e circa il 99% della loro massa si concentra entro i primi 40 chilometri di altitudine; oltre tale quota l'atmosfera diventa progressivamente più rarefatta.

Oltre ai gas principali, nell'atmosfera si trovano anche particelle solide microscopiche sotto forma di pulviscolo atmosferico. Questo include ceneri vulcaniche, spore fungine, batteri, granuli di polline e fuliggine derivante da processi di combustione. L'immissione in atmosfera di ingenti quantità di combustibili fossili genera ulteriormente gas quali monossido di carbonio, diossido di zolfo (anidride solforosa) e ossidi di azoto. Durante il XX secolo, la concentrazione di questi composti è aumentata rapidamente, aggravando il problema dell'inquinamento atmosferico e intensificando l'effetto serra attribuibile principalmente al CO#sub[2].

Dal punto di vista chimico, l'atmosfera può essere distinta in due grandi regioni: l'omosfera e l'eterosfera. L'omosfera, o bassa atmosfera, si estende fino a circa 100 chilometri di altitudine e presenta una composizione chimica uniforme grazie ai continui processi di miscelazione. Al contrario, l'eterosfera, o alta atmosfera, si trova oltre i 100 chilometri ed è caratterizzata da una disposizione dei gas in strati secondo la loro densità, determinando quindi una composizione chimica non uniforme.

Tra le molteplici funzioni svolte dall'atmosfera nei confronti della superficie terrestre e degli esseri viventi che la abitano, se ne possono citare alcune particolarmente rilevanti. Essa contribuisce alla regolazione della temperatura media globale; costituisce il luogo primario dei fenomeni meteorologici; favorisce il modellamento della superficie terrestre; filtra le radiazioni solari; crea una barriera contro oggetti celesti come meteore; e infine, permette la vita grazie alla presenza di ossigeno e diossido di carbonio indispensabili per i processi biologici. Per una descrizione dettagliata di ciascuno di questi aspetti si rimanda ai paragrafi seguenti e ai capitoli dedicati.

#figure(
  caption: [Composizione dell'atmosfera a livello del suolo],
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
  table.header[Gas][% in volume],
[azoto (N#sub[2])], [78,084],
[ossigeno (O#sub[2])], [20,947],
[argo(Ar)], [0,934],
[vapore acqueo \ (H#sub[2]O)], [0,33],
[diossido di \ carbonio (CO#sub[2])], [0,032],
[neo (Ne)], [0,001818],
[elio (He)], [0,000524],
[metano (CH#sub[4])], [0,0002],
[idrogeno (H#sub[2])], [0,00005],
[cripto (Kr)], [0,0000114],
[xeno (Xe)], [0,0000087],
[ozono (O#sub[3])], [0,000004],
[ossidi di azoto \ (monossido, NO; \ diossido, NO#sub[2]; \ protossido, N#sub[2]O)], table.cell(rowspan: 4)[tracce],
[monossido di \ carbonio (CO)], 
[ammoniaca (NH#sub[3])],
[diossido di \ zolfo (SO#sub[2])],
[solfuro di \ idrogeno (H#sub[2]S)], 
)  
)

== Origine ed evoluzione dell'atmosfera

È ormai certo che nei primi stadi della storia della Terra la composizione dell'atmosfera fosse molto diversa da quella attuale. Essa era caratterizzata dalla presenza predominante di gas leggeri come l'idrogeno (H#sub[2]) e l'elio (He), oggi riscontrabili in quantità minime. Era probabile anche la presenza significativa di metano (CH#sub[4]), ammoniaca (NH#sub[3]) e azoto (N#sub[2]). La perdita dei gas più leggeri è attribuibile alla temperatura superficiale del pianeta, che all'epoca era decisamente superiore a quella odierna; questa condizione conferiva ai suddetti gas un'energia sufficiente per superare la forza di gravità e disperdersi nello spazio.

L'atmosfera primordiale è andata incontro a mutamenti significativi, evolvendosi fino a raggiungere la composizione attuale. Tale trasformazione è stata determinata sia da eventi geologici che da fenomeni biologici peculiari.

In seguito agli impatti violenti di meteoriti sulla superficie terrestre e alle frequenti eruzioni vulcaniche, l'atmosfera si arricchì di gas provenienti dal cuore del pianeta. Parte degli elementi presenti nell'atmosfera di oggi deriverebbe invece da reazioni chimiche, un processo che spiegherebbe le attuali quantità di azoto, diossido di carbonio e vapore acqueo. L'ossigeno, inizialmente prodotto in piccole quantità, si sarebbe formato attraverso la scomposizione del vapore acqueo favorita dalle scariche elettriche e dalla radiazione solare nell'alta atmosfera. Con la comparsa della vita, l'ossigeno aumentò considerevolmente grazie alla fotosintesi clorofilliana realizzata dalle piante.

La trasformazione fotochimica dell'ossigeno portò alla formazione dello strato di ozono, essenziale per proteggere le forme di vita dalle radiazioni ultraviolette del sole. Successivamente, grazie alla condensazione del vapore acqueo sotto forma di pioggia, nel corso di milioni di anni si formarono gli oceani.

L'evoluzione dell'atmosfera, lontana dal raggiungere una condizione stabile, prosegue ancora oggi. Nei secoli più recenti, la sua composizione ha subito variazioni importanti causate dall'emissione di gas associati alle attività antropiche. Questi cambiamenti hanno generato squilibri termici e problemi di inquinamento atmosferico su scala globale.

#note(top)[== *🧩* L'ozonosfera e il buco nell'ozono <senza_numero>

L'ozono (O3) è un gas tossico dal colore bluastro e dall'odore pungente, particolarmente concentrato nell'ozonosfera, dove si origina dall'ossigeno biatomico (O2) per effetto dei raggi ultravioletti (UV) emessi dal Sole con lunghezze d'onda inferiori a 300 nanometri.

Questo strato svolge una funzione protettiva fondamentale per la vita sulla Terra, poiché costituisce una barriera contro i raggi ultravioletti dannosi, responsabili di effetti cancerogeni e mutageni. Tuttavia, l'ozonosfera è minacciata da diverse sostanze derivanti dalle attività umane, e il fenomeno della riduzione dello strato di ozono, noto come buco dell'ozono, rappresenta uno dei problemi più rilevanti dell'inquinamento atmosferico su scala globale. Il fenomeno si manifesta in modo più marcato nelle aree polari.

Tra i principali responsabili della diminuzione dell'ozono stratosferico vi sono i clorofluorocarburi (CFC), composti organici contenenti cloro e fluoro, utilizzati come refrigeranti nell'industria del freddo e come propellenti per aerosol. Il diffuso utilizzo di queste sostanze negli anni Sessanta e Settanta ha generato un loro accumulo nell'atmosfera e la successiva migrazione verso la stratosfera. Qui le radiazioni UV ne provocano la decomposizione, liberando atomi di cloro che reagiscono con l'ozono trasformandolo in ossigeno attraverso complesse reazioni chimiche. Il processo è estremamente efficace: un singolo atomo di cloro può distruggere fino a 100.000 molecole di ozono prima di diventare inattivo.

Grazie alla consapevolezza degli impatti dei CFC sulla riduzione dello strato di ozono e sulle conseguenti ripercussioni sull'ambiente e sugli organismi viventi, sono stati stipulati numerosi accordi internazionali volti a vietare l'utilizzo dei CFC e promuovere l'impiego di sostanze alternative meno dannose per la preservazione dell'ozono.]

== La suddivisione dell'atmosfera

L'atmosfera è suddivisa in cinque strati principali in base all'andamento della temperatura con l'aumento della quota. Questi strati, dal basso verso l'alto, sono: troposfera, stratosfera, mesosfera, termosfera ed esosfera, separati da sottili "fasce di transizione" denominate tropopausa, stratopausa, mesopausa e termopausa.

=== La troposfera

La troposfera, il livello più basso dell'atmosfera, deriva dal termine greco ''trópos'', che significa mutamento o cambiamento. Questo strato si estende fino a un'altitudine compresa tra 10 e 18 km dalla superficie terrestre, con uno spessore variabile in base alla latitudine: è più sottile ai poli e più spesso all'Equatore. Contiene tre quarti della massa totale dell'atmosfera e la quasi totalità del vapore acqueo atmosferico, oltre ad essere la sede dei principali fenomeni meteorologici e dei cicli biogeochimici che regolano lo scambio continuo di elementi vitali tra la biosfera e l'ambiente fisico.

Le caratteristiche principali della troposfera possono essere sintetizzate come segue: la composizione chimica risulta costante grazie ai moti orizzontali e verticali dell'aria, che assicurano un continuo rimescolamento dei gas atmosferici; la temperatura diminuisce con l'aumentare dell'altitudine, poiché l'atmosfera viene riscaldata dal calore emesso dalla superficie terrestre. Al livello del suolo, la temperatura media annua è pari a circa 15 °C; tale decremento termico segue un gradiente geotermico verticale di 6,5 °C per chilometro. 

Inoltre, la pressione atmosferica decresce con l'altezza, poiché, salendo, la colonna d'aria sovrastante diviene progressivamente più ridotta, e gli strati superiori dell'atmosfera si presentano sempre più rarefatti. Nella troposfera si concentra quasi tutta l'acqua presente nell'atmosfera: il vapore acqueo proviene principalmente dall'evaporazione degli oceani, delle acque continentali e dalla traspirazione degli organismi viventi. Questo vapore si accumula prevalentemente nei primi 4 km di altitudine, dove si trova circa il 75% della sua quantità totale.

La zona di transizione che separa la troposfera dalla stratosfera prende il nome di tropopausa, caratterizzata dalla presenza di correnti aeree ad alta velocità, denominate correnti a getto. Questi flussi d'aria, che raggiungono velocità tra i 200 e i 300 km/h, si comportano come veri e propri "fiumi d'aria," modificando stagionalmente la loro posizione in termini di latitudine e altitudine e talvolta circondando l'intero globo terrestre.

=== La stratosfera

La stratosfera si estende fra i 10-18 km e i 45 km di quota. In questa regione atmosferica, la temperatura rimane inizialmente costante attorno ai -55 °C fino a un'altitudine di circa 20 km; successivamente, essa aumenta progressivamente fino a raggiungere circa 0 °C al limite superiore della stratosfera. Tale limite rappresenta la stratopausa, la zona che separa la stratosfera dalla mesosfera.

La quantità di vapore acqueo nella stratosfera è estremamente ridotta, sebbene non del tutto assente. Talvolta tra 20 e 30 km di altitudine si possono osservare nubi madreperlacee o iridescenti, fenomeno raro ma di grande interesse atmosferico. L'incremento della temperatura negli strati superiori della stratosfera, compresi tra 17 e 45 km di quota, è attribuibile soprattutto alla presenza dell'ozono (O#sub[3]), un composto formato da tre atomi di ossigeno. La concentrazione massima dell'ozono si rileva tra i 20 e i 30 km di altitudine, in una fascia definita ozonosfera. Questo strato svolge un ruolo cruciale per la vita degli organismi terrestri, poiché l'ozono assorbe quasi completamente le componenti più pericolose dei raggi ultravioletti (UV) provenienti dal Sole. La decomposizione dell'ozono causata dai raggi UV comporta una liberazione di calore che giustifica l'aumento delle temperature nell'alto strato stratosferico.

=== La mesosfera

La mesosfera si estende da 45 a 95 km di altitudine ed è caratterizzata da una rapida diminuzione delle temperature che, al limite superiore, oscillano tra -70 °C e -90 °C. In questa regione atmosferica avviene il fenomeno noto come stelle cadenti: le meteoriti provenienti dallo spazio si incendiano per attrito con le particelle presenti in questa fascia atmosferica, generando scie luminose visibili dalla superficie terrestre.

Inoltre, la mesosfera rappresenta l'ambiente iniziale di una zona caratterizzata dalla presenza di particelle ionizzate, detta ionosfera. Quest'ultima si estende approssimativamente tra gli 80 e i 500 km di quota (interessando anche la termosfera) e origina dagli effetti delle radiazioni cosmiche sui gas atmosferici. Gli ioni prodotti giocano un ruolo cruciale nei fenomeni elettromagnetici legati all'atmosfera terrestre.

La mesopausa segna il confine tra mesosfera e termosfera ed è caratterizzata da un'inversione marcata del trend termico: al termine della mesosfera cessa la diminuzione delle temperature e inizia una fase di risalita molto significativa.

=== La termosfera

La termosfera si estende da circa 95 a 500 km di altitudine ed è così chiamata perché, a queste quote, la temperatura riprende a salire, raggiungendo valori di circa 1000 °C a 300 km e diventando straordinariamente elevate a quote superiori. Va interpretata come una misura dell'energia cinetica molto alta delle poche molecole gassose presenti in questi strati.

I gas presenti nella termosfera si trovano in uno stato ionizzato o atomico e non vi è traccia di diossido di carbonio, vapore acqueo o ozono.

In questa fascia atmosferica si sviluppano fenomeni elettrici e geomagnetici significativi, tra cui le aurore polari. Questi spettacoli luminosi si verificano prevalentemente nelle aree polari e appaiono sotto forma di archi e raggi multicolori che cambiano velocemente forma e tonalità. Le aurore si originano quando elettroni e protoni emessi dal Sole interagiscono ad alta velocità con le particelle ionizzate presenti nell'alta atmosfera terrestre.

La termosfera ospita gli strati ionizzati della ionosfera con la massima densità elettronica. Tali strati hanno la capacità di riflettere le onde radio: tra i 60 e gli 80 km vengono riflesse le onde lunghe, tra i 90 e i 120 km le onde medie, tra i 200 e i 250 km le onde corte e tra i 400 e i 500 km quelle cortissime.

La separazione tra la termosfera e l'esosfera è chiamata termopausa, punto in cui l'aumento della temperatura cessa.

=== L'esosfera

Nella zona superiore della termosfera, a partire dai 500 km, si trova l'esosfera. Qui la temperatura viene considerata relativamente costante e le particelle atmosferiche possono disperdersi verso lo spazio esterno. L'esosfera è una regione di transizione dove si mescolano particelle terrestri con quelle di origine solare. Rappresenta il confine con il vuoto cosmico e, data l'estrema rarefazione dell'aria, risulta impossibile determinare un limite superiore ben definito.

Al di sopra dei 500 km, questa fascia prende anche il nome di magnetosfera. In essa, gli ioni sono così scarsi che le collisioni tra di loro avvengono raramente, garantendo una vita media più lunga e permettendo agli ioni di subire l'effetto del campo magnetico terrestre. La magnetosfera interagisce con il vento solare, che la modella comprimendola e conferendole una caratteristica forma a goccia.

== La temperatura dell'aria nella troposfera
#note(bottom)[== *🧩* L'effetto serra <senza_numero>

Con il termine effetto serra si intende un fenomeno che comporta il riscaldamento dell'atmosfera terrestre. Questo processo avviene perché l'energia irradiata dalla superficie terrestre, prevalentemente sotto forma di raggi infrarossi (IR), per bilanciare il flusso di energia proveniente dal Sole, viene parzialmente assorbita da alcuni gas presenti nell'atmosfera, chiamati gas serra, tra cui principalmente vapore acqueo e anidride carbonica (CO2). Questi gas, a loro volta, riemettono parte di quell'energia verso il suolo terrestre. Grazie a questo effetto, la temperatura media della superficie terrestre, intorno ai 15 °C, risulta significativamente superiore rispetto a quella che si avrebbe in assenza di atmosfera (come nel caso della Luna, dove la temperatura media è pari a circa –18 °C).

Questo processo, pur essendo naturale, sta subendo un'intensificazione a causa delle attività umane. L'immissione crescente di gas serra nell'atmosfera sta infatti causando un progressivo incremento della temperatura media globale.

Dalla rivoluzione industriale in poi, le società moderne hanno fatto largo uso di combustibili fossili (petrolio, carbone e gas naturali), ricchi di carbonio. Durante la loro combustione, il carbonio si combina con l'ossigeno dell'atmosfera generando CO2. La concentrazione di questo gas è aumentata sensibilmente nell'ultimo secolo, passando da 270 parti per milione (ppm) a 410 ppm. Anche la deforestazione ha contribuito a questa crescita, riducendo la capacità fotosintetica delle piante e quindi la loro capacità di assorbire CO2.

Oltre alla CO2, altri gas serra legati perlopiù all'attività umana includono metano, protossido di azoto, ozono troposferico e clorofluorocarburi.

Se l'immissione di CO2 dovesse seguire il ritmo degli ultimi trent'anni, entro il 2100 la sua concentrazione potrebbe triplicare rispetto ai livelli attuali. Un tale aumento provocherebbe un incremento della temperatura terrestre di circa 3°C su scala globale. Le conseguenze previste includono la fusione progressiva dei ghiacci polari, un innalzamento graduale del livello del mare e la sommersione delle aree costiere. L'aumento della temperatura sta già portando a una maggiore frequenza di eventi meteorologici estremi.]
Nella troposfera si svolgono i principali fenomeni meteorologici (venti e precipitazioni) e climatici, che influenzano direttamente la vita sulla Terra. Questo strato merita un'attenzione particolare per approfondire i fattori che determinano tali fenomeni: temperatura, pressione e umidità.

La temperatura dell'aria nella troposfera diminuisce progressivamente con l'aumentare della distanza dal suolo. Infatti, la Terra assorbe le onde "corte" emanate dal Sole, si riscalda e rilascia radiazioni di lunghezza d'onda maggiore, note come raggi infrarossi (IR). Questi raggi vengono parzialmente assorbiti dal vapore acqueo e dal diossido di carbonio presenti nell'atmosfera, che ne riflettono una parte verso lo spazio e una parte maggiore verso la superficie terrestre. Questo processo svolge un ruolo fondamentale nel contribuire a mantenere temperature abbastanza miti da consentire la vita sul pianeta ed è noto come effetto serra.

Oltre all'altitudine, numerosi altri fattori influenzano la temperatura nella troposfera. Tra questi troviamo la latitudine, la distribuzione di terre e mari, il tipo di suolo e la vegetazione.

La temperatura media dell'aria diminuisce man mano che aumenta la latitudine a causa della minore inclinazione dei raggi solari rispetto alla superficie terrestre. Nelle zone costiere, la temperatura è più fresca d'estate e più mite d'inverno rispetto alle regioni interne. Questo fenomeno è dovuto alla maggiore capacità termica dell'acqua rispetto alla terraferma: in estate l'acqua si riscalda più lentamente rispetto al suolo, contribuendo a mantenere temperature più fresche; in inverno, invece, il raffreddamento dell'acqua avviene più gradualmente, rendendo le temperature più miti lungo le zone costiere rispetto alle aree interne.

In base alla sua composizione chimica, il suolo può riflettere quantità variabili di radiazione solare e, di conseguenza, influenzare la temperatura locale. Questa proprietà prende il nome di albedo ed è espressa come la percentuale di luce riflessa rispetto al totale ricevuto. I valori più elevati di albedo sono associati alla neve fresca, che riflette l'80-90% della luce solare, mentre i terreni coltivati presentano un valore molto più basso, pari al 15-20%.

La vegetazione contribuisce alla riduzione della temperatura locale, non solo modulando l'albedo ma anche incrementando il contenuto di vapore acqueo nell'atmosfera tramite il processo di traspirazione.

Per la misurazione della temperatura atmosferica, le stazioni meteorologiche utilizzano il termometro a mercurio. In meteorologia, l'unità di misura standard per la temperatura è il grado centigrado o Celsius, indicato col simbolo °C. Il termometro viene collocato generalmente a circa due metri dal suolo per evitare che il calore proveniente da fonti diverse dall'aria influenzi la lettura. Oltre ai termometri tradizionali, le stazioni sono dotate di termometri di massima e di minima, che registrano rispettivamente i valori estremi della giornata, e di termografi, strumenti che riportano le misurazioni in forma grafica, mostrando l'andamento delle temperature nel corso del tempo.

Tra i dati di maggiore rilevanza per i meteorologi figurano la temperatura minima e massima giornaliera, rilevate rispettivamente all'alba e intorno alle ore 15, le temperature medie (diurne, mensili e annuali) e l'escursione termica, ovvero la differenza tra il valore minimo e massimo registrato nell'arco di un periodo specifico (giornata, mese o anno). Per rappresentare graficamente la distribuzione delle temperature su una carta geografica si utilizzano le isoterme, ossia linee immaginarie che collegano i punti con la medesima temperatura media riferita al livello del mare in un dato intervallo temporale (giorno, mese o anno).

#note(top)[== *🧩* Il flusso energetico dal Sole alla Terra <senza_numero>

L'interconnessione tra vento e flusso energetico solare è cruciale per comprendere le dinamiche atmosferiche. L'attività del "sistema Terra" dipende infatti dai flussi energetici provenienti dal Sole. L'energia solare raggiunge il pianeta attraverso diverse onde elettromagnetiche, prevalentemente infrarosse, luminose e ultraviolette. Tali radiazioni interagiscono con l'atmosfera mediante dispersione, riflessione o assorbimento; solo una parte riesce ad attraversarla completamente per giungere alla superficie delle terre emerse e degli oceani.

La diffusione delle radiazioni solari, che interessa principalmente la luce visibile, avviene quando queste entrano in contatto con particelle atmosferiche o pulviscolo; una piccola frazione viene deviata nello spazio (circa il 6% della luce solare incidente), mentre il resto raggiunge la superficie terrestre. La riflessione delle radiazioni segue percorsi specifici ed è attribuibile a nubi, superfici oceaniche e terrestri. Le nubi riflettono tra il 30% e il 60% della radiazione incidente; i ghiacciai fino all'85%; le acque circa il 25%; le terre emerse variano notevolmente in funzione della loro natura — foreste, campi coltivati, deserti o zone urbanizzate — secondo un parametro noto come albedo.

L'assorbimento dell'energia solare è realizzato dalle molecole gassose presenti nei vari strati dell'atmosfera. 

Complessivamente, circa il 47% dell'energia solare iniziale raggiunge la superficie terrestre, dove viene assorbita dall'acqua dell'idrosfera e dalle rocce superficiali della litosfera. 

Dal momento che il flusso energetico proveniente dal Sole è continuo e inizialmente stabile, ci si aspetterebbe un aumento progressivo della temperatura terrestre. Tuttavia, qualsiasi corpo riscaldato emette radiazioni che restituiscono parte dell'energia assorbita all'ambiente esterno. Con il passare del tempo, si instaura un equilibrio radiativo, in cui la quantità di energia assorbita dalla Terra equivale a quella emessa. 

Durante questi complessi scambi energetici, il calore accumulato dalle terre emerse e dalle masse d'acqua oceaniche viene trasferito all'atmosfera. Questi processi innescano movimenti di venti e correnti marine, oltre a favorire il passaggio dell'acqua dall'idrosfera all'atmosfera tramite evaporazione, condensazione e precipitazioni, dando vita a una serie di fenomeni che coinvolgono atmosfera e idrosfera. ]

== La pressione atmosferica

La pressione atmosferica corrisponde al peso esercitato da una colonna d'aria alta quanto l'atmosfera su una superficie di 1 cm#super[2]. Al livello del mare, a una latitudine di 45° e a una temperatura di 0 °C, essa equivale alla pressione generata da una colonna di mercurio alta 760 mm con un'area di base pari a 1 cm#super[2]. Per questo motivo, si considera convenzionalmente un valore di 760 mm Hg.

La pressione atmosferica varia in base all'altitudine, alla temperatura e all'umidità dell'aria:
- Con l'aumento dell'altitudine, diminuiscono sia l'altezza della colonna d'aria soprastante che la densità dell'aria, causando una riduzione della pressione.
- Con l'incremento della temperatura, l'aria si espande diventando meno densa e più leggera; ciò comporta una diminuzione della pressione nelle masse d'aria calda rispetto a quelle fredde. Di conseguenza, l'aria calda tende a salire mentre quella fredda scende verso il basso.
- Un aumento dell'umidità atmosferica porta a una riduzione della pressione poiché il vapore acqueo ha una densità inferiore rispetto all'ossigeno e all'azoto, i gas principali presenti nell'atmosfera. Pertanto, l'aria umida risulta più leggera rispetto a quella secca e tende a risalire.

La distribuzione della pressione atmosferica viene rappresentata su una carta geografica mediante le isobare, linee concentriche che collegano i punti con la medesima pressione atmosferica al livello del mare e a una temperatura di 0 °C. Queste linee delimitano aree di alta pressione da aree con pressione più bassa.

Le zone caratterizzate da alta pressione prendono il nome di aree anticicloniche, in cui l'aria più densa si sposta verso il basso e si dirige verso le regioni circostanti con bassa pressione. Al contrario, le aree di bassa pressione, conosciute come zone cicloniche, sono contraddistinte da aria meno densa che si muove verso l'alto convergendo verso il centro.

La pressione atmosferica viene misurata mediante strumenti chiamati barometri. Tra questi, troviamo i barometri a mercurio, che si basano sul principio del dispositivo ideato nel 1643 da Evangelista Torricelli (1608-1647). Il barometro a mercurio è costituito da un tubo di vetro, lungo circa un metro e con una sezione di 1 cm#super[2], chiuso a un'estremità, riempito di mercurio e poi capovolto in una vaschetta che contiene anch'essa mercurio. La colonna di mercurio all'interno del tubo si abbassa fino a stabilirsi in una condizione di equilibrio tra il proprio peso e la pressione atmosferica esercitata sulla superficie libera del mercurio nella vaschetta. Oltre a questi, si utilizzano anche barometri aneroidi, composti da una capsula metallica vuota al cui interno è posta una molla. La pressione atmosferica deforma la capsula, mentre la molla collegata a essa trasmette il movimento a un indice che scorre su un quadrante graduato secondo una scala predefinita.

Nel Sistema Internazionale (SI), l'unità di misura della pressione atmosferica è il pascal (Pa), ma sono comunemente utilizzate anche altre unità come l'atmosfera (atm) — equivalente a 760 mm Hg — il bar e il millibar (mb), che ne rappresenta un sottomultiplo. A livello del mare, il valore medio della pressione atmosferica corrisponde a 1 atm (760 mm Hg), pari a 1013 mb o 101.325 Pa.

== L'umidità atmosferica

L'umidità atmosferica rappresenta la quantità di vapore acqueo presente nell'aria, originata principalmente dall'evaporazione dell'acqua dalla superficie terrestre sotto l'azione della radiazione solare, ma anche in minore misura dalla traspirazione delle piante. 

Il vapore acqueo svolge un ruolo fondamentale nell'atmosfera: attraverso i processi di condensazione si formano nubi, nebbia e precipitazioni. La presenza di vapore acqueo nell'ambiente può essere espressa in termini di umidità assoluta e umidità relativa. 

L'umidità assoluta identifica la quantità in grammi di vapore acqueo contenuta in un metro cubo d'aria. L'umidità relativa (UR), invece, indica il rapporto percentuale tra il vapore acqueo realmente presente nell'aria e la quantità massima di vapore che potrebbe essere contenuto alla medesima temperatura prima che l'aria raggiunga lo stato di saturazione. Ad ogni temperatura dell'aria corrisponde una soglia limite di vapore acqueo possibile: quando questa soglia è superata, il vapore eccedente condensa sotto forma di gocce d'acqua o sublima in cristalli di ghiaccio se la temperatura è pari o inferiore a 0 °C. Si considera che l'aria sia "satura" di vapore acqueo nel momento in cui comincia la condensa. Per esempio, un'umidità relativa del 70% significa che l'aria contiene il 70% della quantità di vapore acqueo necessaria per renderla satura a quella specifica temperatura. Se invece l'umidità relativa raggiunge il 100%, l'aria è completamente satura; qualsiasi abbassamento di temperatura o ulteriore aggiunta di vapore acqueo provocherà la condensazione eccedentaria. L'umidità relativa dipende direttamente dalla temperatura: con temperature più elevate aumenta la capacità dell'aria di trattenere vapore acqueo; viceversa, con temperature più basse diminuisce.

Per misurare l'umidità dell'aria vengono utilizzati strumenti chiamati igrometri, disponibili in diverse tipologie. Il più comune è l'igrometro a capello, che sfrutta la caratteristica dei capelli umani di allungarsi quando l'umidità relativa aumenta e accorciarsi quando invece diminuisce. In questo tipo di igrometro, un fascio di capelli fissato a un'estremità è collegato all'altra estremità a un sistema meccanico che amplifica il movimento e regola un indice posizionato su una scala graduata per fornire la misura dell'umidità relativa.

== I venti

Le differenze di pressione atmosferica che si riscontrano tra diverse aree della superficie terrestre sono alla base della formazione dei venti.  

I venti sono masse d'aria che si muovono orizzontalmente lungo la superficie terrestre, dalle zone ad alta pressione verso quelle a bassa pressione.  

Una pressione maggiore corrisponde a un'aria più pesante: nelle aree di alta pressione (anticicloniche), le masse d'aria situate al centro, più dense e pesanti, tendono a spostarsi verso la periferia. Al contrario, nelle zone di bassa pressione (cicloniche), l'aria al centro è più leggera e viene sollevata da quella, più densa, delle aree circostanti. Siccome le regioni anticicloniche e cicloniche sono contigue, si generano movimenti d'aria dal centro delle aree anticicloniche verso quelle cicloniche.  

La forza responsabile del movimento dei venti si chiama forza di gradiente, che dipende dal gradiente barico, ovvero dal rapporto tra la differenza di pressione tra due punti della Terra e la distanza che li separa.  

Come qualsiasi corpo libero che si sposta su una superficie in rotazione, anche i venti non seguono una traiettoria rettilinea. Nell'emisfero boreale vengono deviati verso destra, mentre nell'emisfero australe verso sinistra, grazie alla forza di Coriolis.  

I venti si distinguono per diversi caratteri principali:  
- La direzione, sempre indicata in base al punto di provenienza, espressa in gradi sessagesimali rispetto al nord o attraverso le denominazioni della rosa dei venti.  
- La velocità, espressa in km/h o in nodi (1 nodo equivale a 1,852 km/h). Questa viene misurata con l'anemometro e classificata secondo la scala di Beaufort, che varia da 0 a 12 in base all'aumento progressivo della velocità. La velocità del vento dipende direttamente dal gradiente barico: maggiore è il gradiente barico, più intenso sarà il vento.  

// Rosa dei venti

#note(bottom)[== *🧩* La forza di Coriolis <senza_numero>

I venti non si muovono seguendo il percorso più diretto, ovvero perpendicolare alle isobare, ma deviano a causa della rotazione della Terra. Nell'emisfero boreale tendono a spostarsi verso destra, mentre nell'emisfero australe deviano verso sinistra.

Durante le 24 ore del moto di rotazione terrestre, un punto situato al polo completa una rotazione di 360° senza compiere spostamenti lineari. Al contrario, un punto all'equatore percorre un tragitto di circa 40.000 km grazie alla lunghezza dell'Equatore, mantenendo uguale velocità angolare ma acquisendo una velocità lineare significativa pari a circa 40.000 km al giorno. La velocità lineare aumenta progressivamente muovendosi dai poli verso l'equatore.

Una massa d'aria che si sposta dai poli verso l'equatore, dirigendosi verso latitudini con velocità lineare maggiore, si trova "in ritardo" rispetto alla posizione che avrebbe assunto se la Terra fosse immobile. Allo stesso modo, un vento che va dall'equatore verso i poli, muovendosi da aree con alta velocità lineare a zone con velocità inferiore, "anticipa" il moto rotazionale della Terra.

Questa differenza provoca una deviazione dei venti rispetto al loro percorso rettilineo iniziale. Il senso della deviazione dipende dalla direzione della rotazione terrestre e varia nei due emisferi secondo la legge di Ferrel: un corpo libero di muoversi sulla superficie terrestre devia verso destra nell'emisfero boreale e verso sinistra in quello australe.]

=== Classificazione dei venti

In base al loro comportamento regolare o irregolare, i venti si classificano in quattro categorie principali:  
- Costanti: spirano tutto l'anno nella stessa direzione e nello stesso senso, come gli alisei.  
- Periodici: cambiano senso di direzione ciclicamente. Possono avere un ciclo stagionale, come i monsoni, o un ciclo giornaliero, come le brezze.  
- Variabili o locali: soffiano in modo irregolare nelle zone temperate quando si formano aree cicloniche o anticicloniche; ne sono esempi lo scirocco, il föhn e la bora.  
- Irregolari o ciclonici: caratterizzati da movimenti vorticosi che li rendono distruttivi; prendono nomi differenti a seconda dell'area geografica, come uragani nelle Antille e sulle coste atlantiche americane, tifoni nel Mar Giallo e nelle Filippine, tornado nelle grandi pianure degli Stati Uniti e dell'Australia.
// #TODO da riformulare

#figure(
  caption: [Scala Beaufort, a un altezza di 10 m su un terreno piatto],
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
    columns: (4),
    table.header[Grado][Velocità \ (Km/h)][Tipo di vento][Caratteri indicativi],
[0], [0-1], [calma], [Il fumo ascende verticalmente; il mare è uno "specchio"],
[1], [2-5], [bava di vento], [Il vento devia il fumo; increspature dell'acqua],
[2], [6-11], [brezza leggera], [Le foglie si muovono, una girandola ordinaria è messa in moto;onde piccole, ma evidenti],
[3], [12-19], [brezza], [Foglie e rametti costantemente agitati, il vento dispiega le piccole bandiere; piccole onde, creste che cominciano a infrangersi],
[4], [20-28], [brezza vivace], [Il vento solleva polvere, foglie secche, foglietti di carta, i rami sono agitati; piccole onde che divengono più lunghe],
[5], [29-38], [brezza tesa], [Gli arbusti con foglie cominciano a oscillare; nelle acque interne si formano piccole onde con creste; onde moderate, allungate],
[6], [39-49], [vento fresco], [Grandi rami agitati, i fili telegrafici fanno udire un sibilo; si formano marosi con creste di schiuma bianca, generalmente con spruzzi],
[7], [50-61], [vento forte], [Alberi interi agitati, difficoltà a camminare contro vento; il mare è grosso, la schiuma comincia a essere sfilacciata in scie],
[8], [62-74], [burrasca moderata], [Rami spezzati, camminare contro vento è impossibile; marosi di altezza media e più allungati, dalle loro creste si distaccano turbini di spruzzi],
[9], [75-88], [burrasca forte], [Camini e tegole asportati; grosse ondate, spesse scie di schiuma e di spruzzi sollevate dal vento possono ridurre la visibilità],
[10], [89-102], [tempesta], [Rara in terraferma; alberi sradicati, gravi danni alle abitazioni; enormi ondate con lunghe creste a pennacchio],
[11], [103-117], [fortunale], [Si verifica raramente; gravissime devastazioni; onde enormi e alte, che talvolta possono nascondere navi di medio tonnellaggio; visibilità ridotta],
[12], [oltre 118], [uragano (o ciclone)], [Sulla terraferma distruzione di edifici, manufatti ecc.; in mare l'aria piena di schiuma e di spruzzi porta a visibilità assai ridotta],
)  
)

== La circolazione generale dell'aria nell'atmosfera

La circolazione generale dell'aria nell'atmosfera è profondamente influenzata dalla sfericità del pianeta e dall'inclinazione dell'asse terrestre. Le regioni a basse latitudini, come quelle equatoriali, ricevono un riscaldamento maggiore rispetto ai poli poiché i raggi solari colpiscono con un angolo più diretto e concentrato. Al contrario, ai poli i raggi solari si distribuiscono su superfici più vaste. Questa disomogeneità nel riscaldamento tra l'Equatore e i poli genera una differenza di temperatura che l'atmosfera tenta di bilanciare, favorendo lo spostamento delle masse d'aria dall'Equatore verso le regioni polari.

Se si assumesse che la Terra fosse immobile e priva di rotazione attorno al proprio asse, con una distribuzione uniforme di continenti e oceani, si potrebbe osservare una circolazione dell'aria nella troposfera limitata alla parte illuminata dai raggi solari e all'emisfero nord. Questo tipo di circolazione atmosferica ideale porterebbe alla formazione di una struttura conosciuta come cella di Hadley, intitolata allo scienziato inglese George Hadley (1685-1768), che nel 1735 cercò di spiegare per la prima volta i fenomeni atmosferici su scala globale. 

L'effetto del riscaldamento solare sull'Equatore genererebbe correnti ascensionali di aria calda, che si solleverebbero verso altitudini elevate nella troposfera, dove si divergerebbero in direzione dei Poli Nord e Sud, seguendo il tracciato dei meridiani. Via via che queste correnti si spostano verso i poli, l'aria tende a raffreddarsi progressivamente, chiudendo infine il ciclo e tornando verso l'Equatore come masse di aria fredda.

La rotazione terrestre, invece, modifica significativamente questa circolazione ideale, influenzandola ulteriormente a causa della distribuzione irregolare di continenti e oceani. Nelle regioni equatoriali la forte risalita verticale dell'aria, provocata dall'intenso riscaldamento solare, crea una fascia di bassa pressione chiamata calma equatoriale. Questa zona era particolarmente temuta durante l'epoca della navigazione a vela, poiché la mancanza di venti poteva immobilizzare le imbarcazioni per lunghi periodi.

A nord e a sud di questa fascia equatoriale si sviluppano gli alisei, originati dallo spostamento dell'aria dalle zone di alta pressione delle fasce subtropicali (circa al 30° parallelo) verso le aree di bassa pressione equatoriali. La forza di Coriolis determina una deviazione dei venti: nell'emisfero nord gli alisei assumono direzione da nord-est e nell'emisfero sud da sud-est. 

Tra le latitudini 25° e 35° sia a nord che a sud si trovano zone di alta pressione, organizzate non in fasce continue ma in celle anticicloniche situate soprattutto sugli oceani. Qui l'aria si muove in spirali divergenti, direzionandosi sia verso l'Equatore, dando origine agli alisei, sia verso i poli, generando i venti occidentali o controalisei. Questi ultimi spirano tra i 35° e i 60° di latitudine in entrambi gli emisferi; nell'emisfero boreale soffiano generalmente da sud-ovest, mentre nell'emisfero australe da nord-ovest. Le masse continentali dell'emisfero nord interrompono questa fascia di venti occidentali, mentre nell'emisfero sud, in assenza di barriere significative, essi mantengono maggiore costanza e intensità.

Le regioni polari dell'Artico e dell'Antartico sono dominate da venti polari o orientali, che si spostano dalle aree ad alta pressione polare verso le fasce subpolari a bassa pressione. 

Questa configurazione di movimento dell'aria riguarda principalmente la bassa troposfera. Nella troposfera superiore, dove manca l'attrito causato dalle irregolarità terrestri come le catene montuose, i venti acquisiscono velocità significativamente maggiori, che aumentano con l'altitudine. Inoltre, la distribuzione pressoria è invertita rispetto al suolo: sopra l'Equatore vi è alta pressione, mentre nelle regioni polari predomina la bassa pressione. Per questo motivo le masse d'aria si muovono dall'Equatore verso i poli e, influenzate dalla rotazione terrestre, generano correnti occidentali dirette verso est seguendo i paralleli.

Alle latitudini medie queste correnti occidentali raggiungono velocità molto elevate, fino a circa 250-500 km/h, formando le cosiddette correnti a getto. Questi flussi d'aria somigliano a "fiumi atmosferici" ampi fino a 500 km ma relativamente poco profondi, estendendosi per pochi chilometri in verticale. Le correnti a getto possono formare un'unica fascia che circonda il globo.

Si è recentemente appurato l'esistenza di due distinti flussi di correnti a getto in entrambi gli emisferi terrestri: la corrente a getto del fronte polare, localizzata approssimativamente intorno ai 60° di latitudine, e la corrente a getto subtropicale, situata intorno ai 30°. Queste correnti a getto rivestono un ruolo cruciale nel processo di formazione e nel movimento delle depressioni atmosferiche, ossia delle aree cicloniche che dominano le medie latitudini.

#pad(left: -4em, right: -4em)[
#figure(
  caption: [Classificazione dei venti],
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
    columns: (5em,10em,10em,auto,),
    table.header[Classe][Descrizione][Nome][Caratteristiche],
table.cell(rowspan: 3)[costanti], table.cell(rowspan: 3)[venti che soffiano tutto l'anno, sempre nella stessa direzione e nello stesso senso], [alisei \ (dal francese _alizé_)], [spirano nelle zone fra l'Equatore e i tropici: da nord-est a sud-ovest nell'emisfero boreale, da sud-est a nord-ovest nell'emisfero australe; si generano nelle zone anticicloniche tropicali, e convergono verso le zone equatoriali],
[venti extratropicali], [spirano nelle fasce equatoriali dove, per effetto del riscaldamento, si formano masse di aria calda e umida ascendenti],
[venti occidentali], [spirano fra i 35° e i 60°, in corrispondenza delle zone temperate: da sud-ovest a nord-est nell'emisfero boreale, da nord-ovest a sud-est nell'emisfero australe; sono i venti regolari delle zone temperate],
table.cell(rowspan: 3)[periodici], table.cell(rowspan: 3)[venti che invertono periodicamente il senso; possono essere a periodo stagionale, come i monsoni o gli etesi, o a periodo diurno, come le brezze], [monsoni \ (dall'arabo _mausim_, stagione)], [sono sistemi di venti caratteristici dell'oceano Indiano e dei mari della Cina; soffiano, durante il semestre estivo (aprile-ottobre), dall'oceano (anticiclone) verso terra (India e Asia nordorientale, aree cicloniche); durante i mesi invernali (novembre-aprile), dall'India verso l'oceano (Africa orientale)],
[etesi \ (dal greco _étos_, anno)], [spirano, durante l'estate, dal Mare Egeo all'Egitto, e in senso opposto durante l'inverno],
[brezze], [venti moderati a periodo diurno; si distinguono in: brezze di mare e di terra: soffiano, durante il dì, dal mare alla costa, durante la notte, dalla costa al mare; brezze di monte e di valle: soffiano, durante il dì, dalla valle alla montagna, durante la notte, dalla montagna alla valle; brezze di lago e di riva: si comportano come le brezze di mare e di terra],
table.cell(rowspan: 14)[variabili o \ locali],
table.cell(rowspan: 14)[venti che soffiano irregolarmente nelle zone temperate tutte le volte che si vengono a formare aree cicloniche o anticicloniche], [scirocco \ (dall'arabo _shulùq_, vento di mezzogiorno)], [vento caldo che nasce nel deserto del Sahara; procedendo da sud-ovest verso nord, si carica di umidità sul Mediterraneo e raggiunge, umido e violento, l'Europa],
[mistral \ (dall'antico provenzale _maestral_)], [vento assai freddo, che spira dal Massiccio Centrale francese e raggiunge la massima violenza nella vallata del Rodano],
[föhn, o favonio \ (dal latino _favonius_, da _fav ĕre_, far crescere)], [vento caldo e secco, che soffia soprattutto in primavera e in autunno nelle vallate alpine verso l'Austria e la Svizzera e talvolta raggiunge la pianura Padana],
[ghibli \ (dall'arabo _qiblì_, meridionale)], [vento del deserto, molto caldo e carico di sabbia, che soffia per una trentina di giorni l'anno soprattutto sui territori della Tunisia, della Libia e dell'Egitto],
[khamsin \ (dall'arabo _khamasin_, 50)], [vento caldo e secco che spira da sud, da aprile a giugno, sul delta del Nilo; dura da 3 a 5 giorni],
[harmattan \ (dal sudanese _haamëtä'n_)], [vento caldo, secco e molto violento, che spira da nord-est, in inverno e in primavera, nell'Africa occidentale],
[bora \ (dal greco _boréas_, nord)], [vento freddo e violento che spira dai monti Illirici, nell'ex Iugoslavia, verso le coste dell'Istria e della Dalmazia, in inverno],
[austro (dal latino _auster_, vento da sud, ostro)], [vento caldo che spira da sud],
[grecale \ (dal tardo latino _Graecalis_, dei Greci)], [vento che soffia da nord-est a sud-ovest sul Mediterraneo centrale e meridionale nelle stagioni fredde],
[maestrale \ (da maestro, inteso come principale)], [vento da nord-ovest; è uno dei venti predominanti Mediterraneo],
[tramontana \ (dal latino _trans montanus_, al di là dei monti)], [vento freddo, spesso violento, che spira da nord, in inverno, e può investire tutta la penisola italiana],
[libeccio \ (da _Libycos_, proveniente dalla Libia)], [vento da ovest o da sud-ovest, violento in tutte le stagioni; soffia sulla Corsica e sull'Italia tirrenica],
[chinook \ (dal nome di una tribù nativa del nord-ovest degli USA)], [vento caldo e asciutto che soffia da nord-ovest, sulle Montagne Rocciose (USA), prevalentemente in primavera e in autunno],
[pampero \ (da _pampa_)], [vento freddo e umido che spira da ovest, tra luglio e settembre, soprattutto sul Rio de la Plata (Argentina)],
[irregolari \ o ciclonici], [cicloni], table.cell(colspan: 2)[vengono così genericamente definiti i venti irregolari, violentissimi e distruttivi, dotati di movimento vorticoso; essi prendono nomi diversi secondo le località: uragani (dall'amerindio _huracanes_) nelle Antille e sulle coste americane dell'Atlantico; tifoni (dal cinese _t'ai fung_, vento violento) nel Mar Giallo e nelle Filippine; tornadi (dallo spagnolo _tornado_, derivato da torno, giro, vortice) nelle grandi pianure degli USA e in Australia],
)  
)
]
#note(top)[== *🧩* I venti periodici, monsoni e brezze <senza_numero>

I venti sono definiti periodici quando la direzione del loro flusso si inverte a intervalli regolari, un fenomeno correlato alle variazioni periodiche delle condizioni di pressione atmosferica. Questo avviene, in particolare, quando un'area precedentemente caratterizzata da bassa pressione si trasforma in una zona di alta pressione e viceversa.

Tra i principali esempi di venti periodici si annoverano i monsoni, che presentano una periodicità stagionale, e le brezze, caratterizzate da una periodicità diurna.

I monsoni rappresentano una tipologia di venti caratteristica dell'oceano Indiano e dei mari della Cina. Durante il semestre estivo, compreso tra aprile e ottobre, essi soffiano dall'oceano — una zona di alta pressione — verso l'India e il Sudest asiatico, dove prevale una zona di bassa pressione. Nel semestre invernale, che va da novembre a marzo, il flusso si inverte: l'aria si muove dall'India, sede di alta pressione, verso l'oceano, dove si stabilisce la bassa pressione. 

Questo fenomeno è il risultato di uno spostamento significativo della zona equatoriale di bassa pressione, che si sposta tra i 10° di latitudine sud durante l'inverno e i 10° di latitudine nord in estate. Tale variazione determina un flusso di aria polare proveniente da nord nel periodo invernale e un flusso di aria equatoriale marittima dal sud durante l'estate.

La regione geografica influenzata dai monsoni è particolarmente eterogenea, sia per caratteristiche climatiche che orografiche. Ad esempio, l'India è protetta dall'Himalaya, che limita significativamente le incursioni di aria polare durante l'inverno. Al contrario, nel semestre estivo i monsoni trasportano verso l'India l'umidità accumulata tramite l'evaporazione marina, favorendo abbondanti precipitazioni essenziali per l'agricoltura e la sussistenza delle comunità locali nell'Asia meridionale.

Le brezze, invece, sono venti che spirano nelle aree costiere, invertendo la loro direzione all'interno dello stesso ciclo giornaliero. Durante le ore diurne, l'aria sopra la terraferma si riscalda più rapidamente rispetto a quella sopra il mare, a causa della minore capacità termica della terra in confronto all'acqua. Ciò genera una zona di bassa pressione sulla terraferma e una zona di alta pressione sul mare, con conseguente movimento dell'aria dal mare verso la terra: si origina così la brezza marina.

Di notte, il rapido raffreddamento della superficie terrestre per irraggiamento termico rende gli strati d'aria sopra la terraferma più freddi rispetto a quelli sopra il mare. In tal caso, la pressione aumenta sopra la terraferma e l'aria si muove verso il mare, generando la brezza terrestre.]

== Le nubi e la nebbia

Quando l'aria raggiunge il livello di saturazione del vapore acqueo, questo eccede la capacità dell'atmosfera di trattenerlo allo stato gassoso e condensa, processo che può avvenire per diminuzione della temperatura o per aggiunta di umidità all'aria. Tale fenomeno genera la formazione di minute gocce di acqua che danno origine, a seconda dell'altitudine in cui si verifica la condensazione, alle nubi (a una certa quota) oppure alla nebbia (a livello del suolo).

=== Le nubi

Le nubi consistono in volumi d'aria saturi di vapore acqueo nei quali si trovano sospese microgocce d'acqua, con dimensioni comprese generalmente fra 20 e 50 micrometri, e, sovente, cristalli di ghiaccio. La quantità e la dimensione delle goccioline d'acqua risultano strettamente correlate alla presenza dei nuclei di condensazione, rappresentati da particelle estremamente fini quali il pulviscolo atmosferico, cristalli microscopici di sali o particelle contaminanti. Maggiore è la densità dei nuclei di condensazione, maggiore sarà il numero e minore la dimensione delle goccioline d'acqua generate. Alle medie e alte latitudini, nella porzione superiore delle nubi può registrarsi una temperatura inferiore a 0 °C, circostanza che induce la solidificazione delle goccioline in cristalli di ghiaccio.

La formazione delle nubi può derivare da un incremento del vapore acqueo in una massa d'aria oppure dal raffreddamento termico della stessa fino al punto di condensazione del vapore. Tale raffreddamento può realizzarsi attraverso diversi meccanismi:  
- Raffreddamento convettivo: si verifica quando una massa d'aria viene riscaldata per contatto con la superficie terrestre, acquisisce minor densità e ascende nella troposfera; salendo, la temperatura diminuisce a un ritmo medio stimato di circa 1 °C ogni 100 metri.  
- Raffreddamento sinottico: avviene durante l'interazione tra masse d'aria di temperatura differente; l'aria fredda, più densa, tende a posizionarsi al di sotto dell'aria calda, che a sua volta si solleva e subisce un raffreddamento.  
- Raffreddamento orografico: si manifesta quando una massa d'aria in movimento incontra una barriera montuosa; in tali circostanze è costretta a risalire i pendii, causando il suo progressivo raffreddamento.

Le nubi possono essere catalogate in base alla loro altitudine e al loro aspetto morfologico. In riferimento alla quota alla quale si originano, è possibile distinguere:  
- Nubi basse, che si formano fino a circa 2 km al di sopra della superficie terrestre.  
- Nubi medie, situate tra i 2 e i 6 km.  
- Nubi alte, localizzate tra i 6 e i 13 km di altitudine.

Dal punto di vista del loro aspetto esteriore, si identificano tre tipi principali di nubi:  
- Cumuli: caratterizzati da una struttura bianca e densa, separati fra loro, con sviluppo verticale pronunciato; presentano una base piatta e una sommità che richiama la forma di un cavolfiore.  
- Strati: formano coperture grigie uniformi o frammentate; possono apparire come strati continui o parziali.  
- Cirri: sono nubi generalmente elevate, con conformazione filiforme e colore bianco; frequentemente contengono cristalli di ghiaccio a causa dell'elevata altitudine in cui si sviluppano.

#figure(
  caption: [Classificazione delle nubi],
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
    table.header[Classe][Tipologia][Descrizione],
table.cell(rowspan: 3)[nubi alte], [cirri], [Piccole nubi con forme a banchi o a strisce, di colore bianco; spesso si presentano come filamenti a forma di piumetta],
[cirrocumuli], [Si dispongono a increspature, strisce e piccoli fiocchi, formando il caratteristico "cielo a pecorelle"],
[cirrostrati], [Formano un velo bianco trasparente, liscio e uniforme o fibroso, talora con aloni],
table.cell(rowspan: 3)[nubi medie], [altocumuli], [La forma è molto variabile; possono essere a banchi oppure continue],
[altostrati], [Distesa nuvolosa informe e grigia; il Sole vi può penetrare debolmente, ma non si hanno fenomeni ottici particolari],
[nembostrati], [Tipiche nubi di pioggia, grigie, scure, opache],
table.cell(rowspan: 4)[nubi basse], [stratocumuli], [Vento caldo che nasce nel deserto del Sahara; procedendo da sud-ovest verso nord, si carica di umidità sul Mediterraneo e raggiunge, umido e violento, l'Europa],
[strati], [Vento assai freddo, che spira dal Massiccio Centrale francese e raggiunge la massima violenza nella vallata del Rodano],
[cumuli], [Vento caldo e secco, che soffia soprattutto in primavera e in autunno nelle vallate alpine verso l'Austria e la Svizzera e talvolta raggiunge la pianura Padana],
[cumulonembi], [Sono l'estremo sviluppo verticale dei cumuli; hanno l'aspetto di una torre, sono scuri alla base e spesso accompagnati da temporali],
)  
)

=== La nebbia

La nebbia si configura come una massa d'aria satura di vapore acqueo che si sviluppa vicino alla superficie terrestre, distinguendosi dalle nubi per il minor spessore e per la presenza di goccioline d'acqua di dimensioni più minute. La condensazione del vapore acqueo avviene in relazione alla differenza di temperatura tra il suolo e l'aria soprastante; a seconda dei meccanismi che determinano tale fenomeno, è possibile identificare due tipologie principali: le nebbie da advezione e le nebbie da irraggiamento.

Le nebbie da advezione emergono in situazioni in cui masse d'aria fredda sono sospese sopra un suolo o una superficie d'acqua più calda, oppure quando venti trasportano aria umida e calda sopra aree con temperatura inferiore. Questo tipo di nebbia è strettamente legato al movimento orizzontale delle masse d'aria.

Le nebbie da irraggiamento, invece, si formano al tramonto, quando il suolo perde calore per irradiazione, causando una diminuzione della propria temperatura. Conseguentemente, anche l'aria sovrastante si raffredda, portando alla condensazione del vapore acqueo che genera la nebbia. Il fenomeno si manifesta con maggiore intensità in condizioni di cielo sereno, poiché l'assenza di nubi non limita la dispersione del calore irradiato dalla Terra. Inoltre, è particolarmente evidente in ambienti ricchi di masse d'acqua, come laghi e fiumi, dove l'evaporazione intensifica l'umidità dell'aria.

== Le precipitazioni

Le precipitazioni comprendono tutte le forme liquide e solide che il vapore acqueo assume prima di raggiungere il suolo. Tra queste rientrano la pioggia (goccioline d'acqua), la neve e la grandine (cristalli di ghiaccio). Anche i fenomeni che riguardano la formazione di acqua e ghiaccio direttamente sulla superficie terrestre, come rugiada e brina, sono classificati come precipitazioni.

Affinché si verifichi una precipitazione, le goccioline d'acqua contenute nelle nubi devono aggregarsi fino a raggiungere dimensioni tali da non poter più essere sollevate dalle correnti ascensionali presenti nella nube, cadendo così a terra sotto l'influenza della forza gravitazionale. Le gocce di pioggia, con diametri variabili da frazioni di millimetro a pochi millimetri, si originano attraverso il processo di coalescenza, ovvero la fusione progressiva di goccioline più piccole.

Similmente, i cristalli di ghiaccio possono unirsi dando vita ai fiocchi di neve, formati mediante il processo di brinamento del vapore acqueo quando la temperatura delle nubi si abbassa al di sotto dello zero. La grandine, invece, presenta una struttura a strati concentrici sovrapposti e nasce dai violenti moti convettivi che si sviluppano all'interno dei cumulonembi. Le goccioline d'acqua vengono trascinate verso le porzioni superiori della nube, dove congelano, per poi ricadere verso il basso acquisendo ulteriori strati d'acqua liquida. Attraverso ripetuti cicli di congelamento e fusione dovuti ai moti convettivi, i chicchi raggiungono dimensioni sufficientemente grandi da precipitare al suolo.

La rugiada è caratterizzata dalla presenza di goccioline d'acqua formate sul terreno durante la notte per effetto del raffreddamento dell'aria a contatto con il suolo, che induce la condensazione del vapore acqueo. Se la temperatura notturna scende sotto lo zero, il vapore acqueo si solidifica formando la brina, composta da fini cristalli appuntiti di ghiaccio.

La misurazione delle precipitazioni avviene in millimetri, determinando l'altezza della colonna d'acqua depositata al suolo tramite strumenti noti come pluviometri. Per rappresentare la distribuzione geografica delle precipitazioni, si utilizzano le isoiete, linee immaginarie che collegano punti caratterizzati dalla medesima quantità di precipitazioni nel periodo esaminato. La sequenza temporale e geografica delle precipitazioni in una determinata area viene definita regime pluviometrico ed è analizzata rispettivamente per intervalli mensili o annuali.

== Le perturbazioni atmosferiche

Nel paragrafo precedente abbiamo visto come sulla superficie terrestre esistano zone di alta e bassa pressione permanenti. Tuttavia, è importante sottolineare che, oltre a queste aree stabili, si formano anche cicloni (aree di bassa pressione) e anticicloni (aree di alta pressione) temporanei, che cambiano posizione in breve tempo e generano condizioni meteorologiche instabili. I cicloni sono particolarmente rilevanti perché favoriscono i moti ascendenti dell'aria, la quale raffreddandosi dà vita a nubi e precipitazioni. Per questo motivo, i cicloni vengono considerati vere e proprie perturbazioni atmosferiche.

Tra i cicloni, si distinguono i cicloni extratropicali, che si sviluppano nelle medie latitudini e possono estendersi per migliaia di chilometri, e i cicloni tropicali, caratteristici delle basse latitudini, meno vasti ma spesso devastanti.

=== I cicloni extratropicali

I cicloni extratropicali influenzano le condizioni meteo delle medie latitudini e si originano dall'incontro tra due masse d'aria con caratteristiche diverse: l'aria calda e umida dei tropici incrocia l'aria fredda e secca proveniente dalle regioni polari.

Per masse d'aria si intendono grandi volumi atmosferici omogenei, che presentano caratteristiche uniformi in termini di temperatura e umidità. Queste masse sono classificate in funzione dell'area di origine: le masse polari, caratterizzate da un clima freddo, e le masse tropicali, più calde. Ulteriori distinzioni riguardano la tipologia di superficie che le ospita: si parla di masse continentali (più secche) e marittime (più umide).

Quando due masse d'aria con origini differenti si incontrano, mantengono le loro specifiche peculiarità e sono separate da una superficie detta fronte. Esistono tre tipi principali di fronte: caldo, freddo e occluso.

Un fronte caldo si forma quando una massa d'aria calda e umida avanza seguendo una massa d'aria fredda in movimento. In questa situazione si osservano nubi stratificate e piogge leggere ma persistenti.

Un fronte freddo si sviluppa quando una massa d'aria fredda e secca proveniente dai poli incontra una massa d'aria calda e umida proveniente dai tropici. L'aria fredda, essendo più densa, scivola sotto quella calda, sollevandola rapidamente. Questo processo dà origine a sistemi nuvolosi cumuliformi che spesso culminano in temporali intensi ma di breve durata.

Un fronte occluso rappresenta la separazione tra due masse d'aria fredde ed emerge quando un fronte freddo, che generalmente è più rapido nello spostarsi, raggiunge un fronte caldo. Tale fronte presenta aria calda nelle altitudini superiori e aria fredda vicino al suolo. La sovrapposizione dei sistemi nuvolosi provoca fenomeni tipici sia delle perturbazioni legate ai fronti caldi sia di quelle relative ai fronti freddi.

=== I cicloni tropicali

A seconda della regione geografica in cui si manifestano, i cicloni tropicali prendono nomi differenti: uragani nell'Oceano Atlantico e nel Pacifico meridionale, tornado in America centro-settentrionale, tifoni nel Pacifico settentrionale e willy-willies nel nord-ovest dell'Australia.

Questi cicloni hanno origine da forti variazioni di pressione, mentre le differenze di temperatura risultano minime. A differenza dei cicloni extratropicali, nei cicloni tropicali non si formano fronti atmosferici ma vortici d'aria con una zona centrale caratterizzata da pressioni estremamente basse. La struttura tipica di un ciclone tropicale comprende un'area relativamente concentrata ma molto profonda, dove la pressione al centro risulta inferiore ai 760 mm Hg. Qui l'aria calda e ricca di vapore acqueo viene sollevata in correnti ascendenti con raffiche vorticosamente intense, che possono superare i 200 km/h. Queste correnti lasciano un vuoto al centro del ciclone, che viene compensato dall'arrivo di aria proveniente da zone circostanti con pressioni più elevate.

Nel cuore del ciclone si trova l'occhio del ciclone, una zona sorprendentemente calma con scarsa presenza di nuvole. Solitamente, i cicloni tropicali nascono nelle basse latitudini e si dirigono verso ovest o nord o nord-ovest, scatenando violente piogge e forti venti sui luoghi interessati.

== El Niño

Negli ultimi vent'anni del Novecento, gli scienziati hanno riconosciuto l'importanza straordinaria di un fenomeno atmosferico noto come ENSO (El Niño-Southern Oscillation). Questo fenomeno, che periodicamente provoca impatti significativi su scala globale, era in passato conosciuto solo localmente lungo le coste peruviane, dove si manifesta con un innalzamento della temperatura delle acque del Pacifico accompagnato da una riduzione della pescosità.

L'ENSO si configura come un'alternanza periodica dell'equilibrio tra atmosfera e oceano, con oscillazioni che nel secolo scorso si sono verificate a intervalli di quattro-sette anni. Sebbene le sue cause non siano ancora del tutto chiarite, i suoi effetti possono rivelarsi devastanti: si osservano gravi siccità in alcune regioni (come Australia, Sahel ed Estremo Oriente) e piogge torrenziali in altre (ad esempio California, Indonesia e Africa orientale).

== Le previsioni del tempo

Le previsioni meteorologiche poggiano principalmente sulla comprensione del sistema di fronti caldi e freddi e dei cicloni extratropicali, concettualizzato e analizzato tra il 1920 e il 1930 da Jacob Bjerknes (1897-1975), meteorologo americano di origini norvegesi. Per garantire risultati affidabili, tuttavia, si è resa necessaria una rete di strumenti di misurazione numerosi e precisi, il che è stato possibile solo nella seconda metà del Novecento.

Oggi esistono oltre 10.000 stazioni meteorologiche distribuite a livello globale, molte delle quali posizionate su imbarcazioni appositamente attrezzate per operare in mare aperto. Queste stazioni effettuano rilevazioni ogni poche ore (e in alcuni aeroporti principali anche ogni 30 minuti), registrando sette parametri fondamentali che descrivono le condizioni atmosferiche: pressione, temperatura, densità, umidità e le caratteristiche del vento (direzione, intensità e verso). Inoltre, diverse centinaia di stazioni eseguono misurazioni in quota fino a 20-30 km utilizzando palloni sonda, mentre altre si avvalgono del radar, montato a terra o su velivoli. Poiché le stazioni meteorologiche non sono distribuite uniformemente a causa della conformazione irregolare della superficie terrestre e delle disparità nello sviluppo tecnologico tra nazioni, i satelliti meteorologici giocano un ruolo cruciale. Essi monitorano le masse d'aria a livello planetario e trasmettono i dati raccolti in tempo reale.

Tutti questi dati confluiscono nei vari centri meteorologici collegati all'Organizzazione Meteorologica Mondiale (OMM), con sede a Ginevra. Per l'Europa riveste particolare importanza il Centro Europeo per le Previsioni a Medio Termine (ECMWF), situato a Reading, vicino a Londra, che opera in collaborazione con 18 paesi, tra cui l'Italia. I dati elaborati a Reading vengono successivamente integrati dai diversi enti nazionali con informazioni provenienti dalle rispettive aree geografiche. In Italia, questa attività è svolta dal Servizio Meteorologico dell'Aeronautica Militare, che ha introdotto nel 1981 il sistema "Afrodite" e, nel 1988, il più avanzato sistema "Argo", capace di fornire previsioni dettagliate per 150 località del Paese.

In questi centri i dati vengono processati tramite modelli di previsione numerica. Fin dall'inizio della meteorologia moderna si era ipotizzato che le previsioni potessero essere affrontate utilizzando equazioni fisiche. Tuttavia, la limitata capacità di calcolo disponibile fino a pochi decenni fa ne aveva ostacolato l'applicazione pratica. Oggi, grazie al rapido sviluppo dei computer, queste difficoltà sono state in gran parte superate, consentendo notevoli progressi nella precisione e nell'affidabilità delle previsioni meteorologiche.

Presso il centro meteorologico di Reading vengono effettuate previsioni sul movimento orizzontale e verticale delle masse d'aria, sulla pressione e sulla temperatura sia in quota che al suolo, con una validità previsionale di sei giorni (e indicazioni generali fino a nove giorni). Per queste analisi viene utilizzato un modello matematico che suddivide idealmente l'atmosfera in 31 strati, ulteriormente frammentati in oltre 3 milioni di "cubi" di 55 km per lato, estesi fino a 30 km di altitudine. Per descrivere lo stato dell'atmosfera in un dato momento sono necessari ben 6 milioni di numeri, mentre per elaborare una previsione meteorologica a medio termine sono richieste circa 6000 miliardi di operazioni.

Teoricamente, i limiti delle previsioni elaborate a Reading potrebbero essere ampliati fino a due settimane, a condizione che si riesca a eliminare completamente gli errori del modello. In futuro, queste previsioni potrebbero coprire periodi ancora più lunghi se si avessero a disposizione dati più numerosi e precisi.

Grazie ai progressi tecnologici è stato possibile ridurre significativamente il ruolo del fattore umano, diminuendo la componente soggettiva nelle previsioni. Tuttavia, il contributo dell'uomo resta essenziale per interpretare i dati e presentarli al grande pubblico in maniera comprensibile.

I servizi meteorologici nazionali e internazionali producono anche le carte sinottiche, che illustrano la distribuzione dei diversi parametri misurati in un determinato istante, sia al suolo che in quota, su ampie regioni del pianeta. Tali carte, spesso semplificate, sono quelle che troviamo sui quotidiani o vediamo in televisione. Quando integrate con immagini satellitari, permettono di analizzare la disposizione delle masse d'aria e i loro spostamenti nel tempo. Di solito rappresentano l'andamento delle isobare, i fronti caldi e freddi, e spesso anche la direzione del vento.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Anticiclone: Zona caratterizzata da alta pressione atmosferica, delimitata da isobare chiuse con valori di pressione che diminuiscono progressivamente dal centro verso la periferia.  

/ Aurora polare: Fenomeno luminoso che si osserva nella ionosfera sotto forma di archi e raggi colorati, tipico delle aree polari e circumpolari. È causato dall'urto ad alta velocità tra corpuscoli solari e particelle ionizzate presenti nell'atmosfera superiore della Terra.  

/ Ciclone: Regione di bassa pressione atmosferica delimitata da isobare chiuse, con valori di pressione che aumentano dal centro verso la periferia. Anche definito come flusso d'aria vorticoso attorno a un centro di bassa pressione.  

/ Clorofluorocarburi (CFC): Composti organici contenenti cloro e fluoro, utilizzati principalmente come fluidi refrigeranti e propellenti per aerosol. Sono responsabili della significativa riduzione dell'ozono stratosferico.  

/ Effetto di Coriolis: Fenomeno fisico che provoca un'apparente deviazione del movimento di un corpo libero su una superficie rotante, verso destra o sinistra a seconda della direzione del moto.  

/ Ionosfera: Regione atmosferica composta da strati d'aria ionizzati ben definiti, situata a partire da quote comprese tra 60 e 80 km, includendo mesosfera e termosfera.  

/ Nube: Aggregazione visibile di piccole gocce d'acqua o cristalli di ghiaccio sospesi nell'atmosfera. Si forma grazie alla condensazione del vapore acqueo attorno a particelle o ioni che fungono da nuclei di condensazione.  

/ Ozono: Forma triatomica dell'ossigeno (O#sub[3]), meno comune rispetto alla tradizionale forma biatomica (O#sub[2]). La concentrazione massima di ozono si trova nella regione dell'ozonosfera.  

/ Sublimazione: Passaggio diretto di una sostanza dallo stato solido a quello aeriforme senza attraversare la fase liquida.  
