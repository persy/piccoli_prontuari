#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La riproduzione è il processo mediante il quale vengono generati nuovi individui, garantendo la continuità della specie. Gli organismi più semplici si riproducono attraverso meccanismi di divisione diretta, ma gli animali, nel corso dell'evoluzione, hanno sviluppato una strategia più complessa basata sulla fusione del materiale genetico proveniente da due cellule specializzate, chiamate gameti. Da questa unione nasce una cellula che attraversa una serie di trasformazioni note come sviluppo embrionale, fino a dar vita a un nuovo organismo capace di esistere in modo autonomo.]

== Strategie riproduttive

Gli animali si riproducono seguendo due modalità fondamentali: asessuata o sessuata. Nella riproduzione asessuata (detta anche agamica), i nuovi individui vengono generati tramite divisione mitotica di una porzione del genitore, senza l'intervento di gameti. Questo genera cloni geneticamente identici al genitore, poiché non avviene alcuna mescolanza di materiale genetico con altri individui. Tra i meccanismi principali vi sono la scissione, la gemmazione e la partenogenesi.

La riproduzione sessuata (o gamica), invece, dà origine a un nuovo individuo attraverso la fusione di due gameti, uno maschile e uno femminile. Tale processo include la ricombinazione genetica, producendo discendenti con un patrimonio genetico differente rispetto ai genitori. Questo aumento della variabilità genetica risulta particolarmente vantaggioso in condizioni ambientali avverse o in rapida evoluzione, poiché accresce le possibilità di adattamento della specie.

In alcune specie, esistono cicli in cui si alternano riproduzione sessuata e asessuata, un fenomeno definito alternanza di generazioni. Nei celenterati, ad esempio, lo stadio larvale mobile (la medusa) produce gameti e rappresenta la fase sessuata, mentre lo stadio adulto fisso (il polipo) si riproduce agamicamente.

Alcune specie, come lombrichi, tenie e lumache, presentano individui ermafroditi, ovvero capaci di produrre sia gameti maschili che femminili. Questa caratteristica semplifica la riproduzione in organismi che hanno mobilità limitata o che vivono isolati rispetto agli altri individui della loro specie.

#figure(
  caption: [Principali modalità di riproduzione],
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
  table.header[Modalità][Riproduzione][Organismi],
  [Scissione#footnote[Riproduzione di tipo asessuata]<ripr_asessuata>], [divisione in due parti uguali dell'organismo (pluricellulari)
], [poriferi; celenterati; anellidi],
  [Gemmazione#footnote(<ripr_asessuata>)], [formazione di una protuberanza sull'organismo genitore e suo distacco come nuovo individuo
], [Funghi (lieviti); protozoi; poriferi; celenterati],
  [Partenogenesi#footnote(<ripr_asessuata>)], [sviluppo di un uovo diploide non fecondato; produce femmine diploidi], [insetti (afidi); (in api, vespe, formiche, la partenogenesi avviene in uova aploidi e produce maschi aploidi)],
  [Gametogamia#footnote[Riproduzione di tipo sessuata]], [fusione di due gameti], [protozoi; funghi; piante; animali pluricellulari]
)  
)


== I gameti

I gameti sono cellule aploidi, ovvero dotate della metà del normale numero di cromosomi, e vengono generate attraverso il processo di gametogenesi. Durante questo processo, a partire da cellule riproduttive diploidi, come gli spermatogoni e gli oogoni, si formano rispettivamente gli spermatozoi (tramite spermatogenesi) e le cellule uovo (tramite oogenesi).

I gameti maschili, noti come spermatozoi, sono di dimensioni ridotte e caratterizzati da una forma allungata, costituita da una testa e una coda mobile a forma di flagello, che consente loro di spostarsi in ambienti acquatici o all'interno delle vie genitali femminili. La testa degli spermatozoi ospita un nucleo quasi interamente occupato da DNA ed è ricoperta dall'acrosoma, un cappuccio contenente enzimi utili per facilitare la penetrazione nella cellula uovo. La produzione degli spermatozoi avviene nei testicoli, le gonadi maschili.

I gameti femminili, ovvero le cellule uovo, sono invece più grandi, pressoché immobili, e dotate di un citoplasma ricco di componenti essenziali. Al loro interno si distinguono il citoplasma formativo, che contribuirà alla formazione dell'embrione, e il citoplasma nutritivo (tuorlo o vitello), una fonte di nutrienti preziosi come proteine, lipidi e vitamine. Questo materiale nutritivo tende ad accumularsi nella regione del polo vegetativo per via del suo peso specifico maggiore rispetto al resto del citoplasma; il nucleo e il citoplasma formativo si concentrano invece al polo animale, che rappresenta l'area in cui l'embrione comincerà a svilupparsi. La formazione delle cellule uovo avviene negli ovari, le gonadi femminili.

== Fecondazione

La fecondazione è il processo mediante il quale un gamete maschile (spermatozoo) si unisce a un gamete femminile (cellula uovo), ciascuno proveniente da un genitore, dando origine a uno zigote. Lo zigote è una cellula diploide che costituirà il punto di partenza per lo sviluppo di un nuovo organismo.

La fecondazione può avvenire in due modalità principali: esterna o interna. Nella fecondazione esterna, i gameti si incontrano in un ambiente acquatico e devono essere prodotti in grandi quantità per compensare le alte probabilità di mancato incontro. Nella fecondazione interna, invece, lo spermatozoo viene trasferito nelle vie genitali femminili mediante strutture riproduttive specializzate, che ne favoriscono l'introduzione e la conservazione.

Quando il primo spermatozoo entra in contatto con la superficie della cellula uovo, si forma immediatamente un'estroflessione del citoplasma denominata cono di fecondazione. Questo cono ingloba lo spermatozoo e lo conduce all'interno della cellula uovo. Quasi contemporaneamente si attivano una serie di reazioni volte a rafforzare la membrana cellulare, impedendo così l'ingresso di altri spermatozoi dopo la penetrazione del primo.

== Apparato riproduttore umano

L'apparato riproduttore umano, descritto nel suo funzionamento anatomico, rappresenta un esempio generale di come sono strutturati i sistemi riproduttivi nei mammiferi.

=== Apparato riproduttore maschile

Il sistema riproduttore maschile è composto da due organi ghiandolari, i testicoli, un insieme di condotti per l'emissione dello sperma (vie spermatiche) e il pene.  

I testicoli, posizionati all'interno di una sacca membranosa chiamata scroto, sono gli organi responsabili della produzione degli spermatozoi. Ogni testicolo è strutturato in circa 250 lobuli, ciascuno dei quali racchiude 2-3 tubuli seminiferi che convergono verso un grande canale chiamato epididimo. Da qui, il flusso di spermatozoi prosegue attraverso il dotto deferente, che risale lungo il canale inguinale.  

All'interno dei tubuli seminiferi avviene la spermatogenesi, durante la quale si produce il testosterone, principale ormone maschile. Questo ormone gestisce la maturazione degli spermatozoi, il normale sviluppo degli organi genitali e la comparsa dei caratteri sessuali secondari durante la pubertà.  

Una volta maturati, gli spermatozoi passano nel dotto deferente e si dirigono verso l'uretra. Quest'ultima è un canale condiviso tra l'apparato escretore e riproduttore, che parte dalla vescica urinaria e termina nell'estremità del pene. Il pene, dotato di proprietà erettili utili alla copula, contiene due strutture vascolari denominate corpi cavernosi e una porzione terminale chiamata glande, ricoperta dal prepuzio e collegata ad esso tramite il frenulo. L'erezione avviene grazie all'afflusso di sangue nei corpi cavernosi in risposta a stimoli erogeni.  

Lo sperma è il liquido eiaculato dal pene, costituito da spermatozoi e dalle secrezioni di tre ghiandole accessorie situate lungo le vie spermatiche: vescicole seminali, prostata e ghiandole bulbouretrali. Le vescicole seminali immagazzinano lo sperma e contribuiscono, insieme alla prostata, alla produzione di composti che arricchiscono il liquido seminale. Questi elementi migliorano la vitalità degli spermatozoi e facilitano la loro progressione attraverso le vie genitali femminili. Le ghiandole bulbouretrali secernono sostanze lubrificanti che agevolano la penetrazione.

=== Apparato riproduttore femminile

Il sistema riproduttore femminile include due organi ghiandolari, le ovaie, l'utero e un insieme di dotti che collegano le ovaie alla vagina.  

Le ovaie sono composte da una zona periferica con numerosi follicoli, cavità in cui si sviluppa la cellula uovo, e da una zona centrale ricca di vasi sanguigni. Oltre alla funzione riproduttiva, le ovaie svolgono un ruolo endocrino, secernendo estrogeni e progesterone, ormoni regolatori del ciclo mestruale.  

Ai lati delle ovaie si trovano le tube di Falloppio, o tube uterine, dotate di frange cigliate chiamate fimbrie. Queste strutture raccolgono la cellula uovo rilasciata durante l'ovulazione e la trasportano verso l'utero.  

L'utero è un organo cavo dove si annida l'ovulo fecondato. La parete uterina è composta da tre strati principali: il perimetrio come rivestimento esterno, il miometrio con funzioni muscolari nella zona intermedia e l'endometrio internamente. Quest'ultimo cambia durante il ciclo mestruale e presenta ghiandole tubulari importanti per eventuali gravidanze.  

L'utero si divide in tre aree: il fondo, da cui partono le tube, una parte intermedia ristretta e la cervice uterina, che si affaccia sull'estremità superiore della vagina. Quest'ultima è un canale muscolo-membranoso progettato per accogliere il pene e ricevere lo sperma durante la riproduzione. La vulva costituisce la parte più esterna dell'apparato riproduttore femminile ed è composta da due pieghe cutanee verticali chiamate grandi labbra, dentro le quali si trovano le piccole labbra, che circondano l'orifizio vaginale. Anteriormente a queste si trova il clitoride, un piccolo organo erettile con caratteristiche analoghe al pene maschile.

#note(bottom)[== *🧩* Ciclo mestruale e ovulazione <senza_numero>

Il ciclo mestruale è un meccanismo fisiologico delle donne in età fertile. È regolato da cambiamenti periodici nell'endometrio sotto l'influenza di vari ormoni prodotti dall'ipotalamo, dall'ipofisi e dalle ovaie. Generalmente ha una durata di circa 28 giorni ed è suddiviso in tre fasi principali: la fase proliferativa (dal 5º al 14º giorno), la fase premestruale o secretoria (dal 15º al 28º giorno) e la fase mestruale (dal 28º al 5º giorno). 

Nella fase proliferativa avviene la produzione di follicoli da parte delle ovaie; tra questi, uno si sviluppa fino a maturare e rilasciare una cellula uovo. Durante questa fase, l'endometrio cresce progressivamente stimolato dagli estrogeni prodotti dal follicolo in maturazione, mentre l'ipofisi secerne gli ormoni follicolostimolante (FSH) e luteinizzante (LH) per incentivare questa produzione. La fase proliferativa culmina con l'ovulazione, cioè il rilascio della cellula uovo nella tuba di Falloppio quando il follicolo si rompe. In questo momento, la cellula uovo è pronta per essere fecondata.

La fase premestruale, o secretoria, è caratterizzata dalla trasformazione del follicolo ormai vuoto in corpo luteo, che secerne grandi quantità di estrogeni e progesterone. Questi ormoni bloccano ulteriormente la produzione di FSH e LH, impedendo la formazione di nuovi follicoli. Parallelamente, l'endometrio sviluppa una rete estesa di vasi sanguigni per favorire l'annidamento della cellula uovo fecondata. Tuttavia, se la fecondazione non avviene, l'endometrio si degrada e i vasi sanguigni si rompono.

Durante la fase mestruale, il miometrio si contrae per espellere i frammenti dell'endometrio e la cellula uovo non fecondata: questo processo prende il nome di mestruazione. Con il degrado del corpo luteo, ipotalamo e ipofisi tornano a produrre FSH e LH, riattivando così la maturazione di un nuovo follicolo e dando inizio a un nuovo ciclo mestruale.]

== Sviluppo dell'embrione e organogenesi

La cellula uovo fecondata dà origine allo zigote, una nuova entità cellulare che, attraverso processi di divisione, differenziamento e crescita, avvia la formazione di un nuovo individuo.

La fase di sviluppo embrionale si articola in tre momenti principali: segmentazione, gastrulazione e organogenesi. In questo processo rivestono un ruolo fondamentale quattro membrane embrionarie, chiamate annessi embrionari, che svolgono funzioni cruciali per il nutrimento e la protezione dell'embrione. Questo approfondimento riguarda specificamente lo sviluppo embrionale nell'uomo.

#figure(
  caption: [Organogenesi],
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
  table.header[Foglietto][Organi prodotti],
  [ectodema], [- Epidermide, ghiandole cutanee (sudoripare, sebacee, mammarie), annessi cutanei (peli, unghie)  
- Cavità orale, smalto dei denti, adenoipofisi  
- Apertura anale  
- Timo, paratiroide, orecchio medio, tromba di Eustachio, tonsille  
- Organo olfattorio, organo stato-acustico, organo della linea laterale, organi di senso  
- Cristallino dell’occhio  
- Emisferi cerebrali, epifisi, retina dell’occhio, neuroipofisi  
- Sensibilità visiva  
- Cervelletto, midollo allungato  
- Midollo spinale  
- Gangli nervosi, midollare delle ghiandole surrenali, porzioni dello scheletro cranico e cartilagini viscerali  ], 
  [mesoderma], [- Corda dorsale  
- Mesenchima  
- Derma cutaneo  
- Muscolatura del tronco  
- Corpi vertebrali  
- Apparato escretore  
- Midollare delle gonadi  
- Gonodotti  
- Corticale delle ghiandole surrenali  
- Muscoli della faccia, mandibola e muscolatura branchiale, scheletro e muscolatura degli arti, pericardio, corticale delle gonadi  
- Muscolatura dei visceri, cuore, elementi del sangue  ], 
  [endoderma], [- Intestino primitivo  
- Faringe, tiroide  
- Mucosa di trachea, bronchi e polmoni  
- Esofago  
- Stomaco  
- Intestino, fegato, cistifellea, pancreas  
- Allantoide e porzione della vescica urinaria  ],
)  
)

=== Segmentazione

La segmentazione rappresenta il primo stadio dello sviluppo embrionale e ha luogo lungo la tuba di Falloppio. Durante questa fase lo zigote subisce molteplici divisioni cellulari che portano prima alla formazione della morula, un agglomerato compatto di cellule, e successivamente della blastocisti, una struttura cava che aderisce all'endometrio uterino per annidarsi. In questa fase iniziale non si verifica una crescita dimensionale dell'embrione, bensì una riorganizzazione interna delle cellule.

=== Gastrulazione e organogenesi

La gastrulazione è lo stadio immediatamente successivo, caratterizzato dalla formazione della gastrula. In questa fase le cellule si organizzano nei tre strati germinali principali: ectoderma, mesoderma ed endoderma, dai quali derivano tutti i tessuti dell'organismo. Durante la gastrulazione si registra un incremento significativo dell'attività metabolica e una produzione intensiva di nuove proteine.

Al termine dell'ottava settimana di sviluppo embrionale, si considera completata questa fase. In seguito, durante l'organogenesi, avviene la formazione degli organi a partire dai tre foglietti embrionari. A partire da questo momento, si parla di feto.

=== Annessi embrionari e placenta

Gli annessi embrionari sono strutture membrane prodotte dall'embrione stesso:  
- L'amnios avvolge l'embrione e crea un sacco pieno di liquido amniotico che ne garantisce protezione e sostegno.  
- Il sacco vitellino, benché negli altri vertebrati contenga il tuorlo, fornisce le sostanze nutritive necessarie fino alla formazione completa della placenta.  
- Il corion è costituito da villi coriali vascolarizzati che entrano in contatto con l'endometrio materno contribuendo alla formazione della placenta.  
- L'allantoide rappresenta un'estroflessione dell'intestino embrionale che si fonde con i villi coriali, favorendo la loro vascolarizzazione.

La placenta costituisce l'interfaccia tra la madre e il feto per lo scambio di ossigeno e nutrienti. Composta da tessuti fetali (villi coriali e parte dell'allantoide) e materni (endometrio), funziona attraverso la formazione di lacune di sangue materno in cui penetrano i villi coriali. All'interno dei villi, i vasi sanguigni del cordone ombelicale (due arterie e una vena) permettono uno scambio efficiente senza la mescolanza diretta dei flussi sanguigni materno e fetale.

Oltre alla funzione nutritiva, la placenta protegge l'embrione grazie alla trasmissione degli anticorpi materni che conferiscono immunità passiva al feto fino a qualche mese dopo la nascita. Inoltre, secerne ormoni indispensabili per il mantenimento della gravidanza e il normale svolgimento del parto.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Annessi embrionari: Membrane prodotte dall'embrione che ne garantiscono nutrizione e protezione; includono corion, amnios, allantoide e sacco vitellino.  

/ Apparato riproduttore: Insieme delle strutture anatomiche preposte alla funzione riproduttiva nel maschio e nella femmina.  

/ Fecondazione: Unione di due gameti distinti: spermatozoo (maschile) e cellula uovo (femminile). Può avvenire esternamente, se i gameti si incontrano fuori dal corpo femminile, o internamente, quando gli spermatozoi sono introdotti nelle vie genitali della femmina.  

/ Gameti: Cellule sessuali aploidi prodotte dai testicoli (spermatozoi) o dalle ovaie (cellule uovo) mediante processi di spermatogenesi o oogenesi.  

/ Mestruazione: Perdita di sangue e frammenti di tessuto dell'endometrio, che si verifica se la cellula uovo non viene fecondata.  

/ Ovaie: Organi dell'apparato riproduttore femminile in cui si svolge l'oogenesi; producono ormoni che regolano il ciclo mestruale.  

/ Placenta: Organo deputato al trasferimento di ossigeno e nutrienti dal sangue materno a quello fetale; è composta da tessuti fetali (villi coriali, allantoide) e materni (endometrio).  

/ Riproduzione: Processo biologico che garantisce la continuità della specie; può essere asessuata, tramite la divisione cellulare di un unico genitore (scissione, gemmazione, partenogenesi), oppure sessuata, con la fusione di due gameti provenienti da genitori diversi.  

/ Sviluppo: Serie di processi mediante i quali lo zigote si evolve in un individuo autonomo; comprende segmentazione, gastrulazione e organogenesi.  

/ Testicoli: Organi maschili dell'apparato riproduttore dove avviene la spermatogenesi.  
