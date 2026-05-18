#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Gli animali hanno sviluppato strutture specializzate, come cellule e organi sensoriali, che permettono loro di percepire l'ambiente circostante. Questi elementi sono in grado di rilevare suoni, colori, pressioni, sapori e altre stimolazioni, trasmettendo tali informazioni al cervello sotto forma di segnali elettrici chiamati potenziali d'azione, che viaggiano lungo le fibre nervose. Il sistema nervoso raccoglie questi dati, insieme a quelli provenienti dall'ambiente interno dell'organismo, li analizza e genera una risposta. Questa risposta può influenzare l'attività muscolare o ghiandolare. Le funzioni vitali sono mantenute in equilibrio grazie alla stretta collaborazione tra il sistema nervoso e quello endocrino: mentre il primo comunica attraverso impulsi nervosi, il secondo utilizza regolatori chimici, ossia ormoni, secreti dalle ghiandole endocrine e distribuiti nel flusso sanguigno.]

== Neuroni e sinapsi

Il sistema nervoso è composto da due tipi di cellule principali: i neuroni e le cellule della glia. I neuroni rappresentano l'unità funzionale del sistema nervoso, mentre le cellule della glia svolgono ruoli complementari, come protezione, nutrizione e isolazione del neurone per ottimizzare la velocità di trasmissione degli impulsi.

=== Il neurone

Il neurone è progettato per svolgere quattro funzioni principali:
- ricevere informazioni dall'ambiente interno o esterno.
- integrare le informazioni e generare una risposta.
- trasmettere la risposta verso la sua estremità.
- comunicare la risposta ad altri neuroni o attivare organi effettori, come muscoli e ghiandole.

La struttura del neurone è formata da un corpo cellulare e da due tipi di estensioni: i dendriti e gli assoni.

Il corpo cellulare, o pirenoforo, contiene il nucleo e diversi organelli. Il suo ruolo principale è integrare i segnali elettrici ricevuti dai dendriti e generare un potenziale d'azione da inviare attraverso l'assone.

I dendriti sono estensioni brevi e numerose che ricevono informazioni da altri neuroni o recettori. Queste informazioni vengono trasmesse al corpo cellulare sotto forma di segnali elettrici. Grazie alla loro forma ramificata, i dendriti offrono una superficie ampia per la ricezione dei dati.

L'assone, conosciuto anche come neurite, è generalmente unico e ha il compito di trasportare l'impulso nervoso fino alla sua terminazione. Di solito è ricoperto da mielina, una sostanza lipidica prodotta dalle cellule di Schwann, che appartengono al gruppo delle cellule della glia. La guaina mielinica avvolge l'assone in strati multipli, formando una struttura protettiva simile a un manicotto. Tuttavia, questa copertura non è continua; presenta interruzioni regolari chiamate nodi di Ranvier, punti in cui l'assone entra in contatto diretto con l'ambiente circostante. Gli assoni rivestiti di mielina (detti mielinici) si aggregano per formare fibre nervose o, semplicemente, nervi. Esistono anche assoni con un singolo strato di mielina (chiamati amielinici), che costituiscono il sistema nervoso simpatico, responsabile della regolazione delle funzioni vegetative come circolazione, digestione e respirazione.

=== Le sinapsi

L'impulso nervoso, che si propaga lungo un assone sotto forma di potenziale d'azione, viene trasferito a un altro neurone o a organi effettori, come muscoli e ghiandole, attraverso strutture specializzate denominate sinapsi.

I neuroni responsabili del trasferimento dell'impulso nervoso alla sinapsi sono definiti neuroni presinaptici, mentre quelli che trasmettono l'impulso oltre la sinapsi vengono chiamati neuroni postsinaptici. Questi due gruppi di neuroni sono separati da una stretta intercapedine extracellulare, nota come fessura sinaptica, la cui larghezza si aggira intorno a 200 Å (angstrom).

La terminazione assonica del neurone presinaptico presenta una struttura sofisticata denominata bottone sinaptico, all'interno della quale sono immagazzinate piccole vescicole contenenti il mediatore chimico chiamato neurotrasmettitore.

Nel momento in cui il potenziale d'azione raggiunge il bottone sinaptico, il neurotrasmettitore viene rilasciato nella fessura sinaptica, diffonde attraversandola e si lega ai recettori specifici presenti sulla membrana del neurone postsinaptico. L'interazione tra il neurotrasmettitore e i recettori consente la formazione di un nuovo potenziale d'azione nel neurone postsinaptico.

Vi sono sinapsi che esercitano un effetto inibitorio, riducendo la probabilità di generazione del potenziale d'azione, in contrasto con le sinapsi eccitatorie appena descritte.

#figure(
  caption: [I principali neurotrasmettitori],
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
  table.header[Neutrotrasmettitore][Caratteristiche],
  [Acetilcolina], [Si trova in tutte le sinapsi pregangliari del sistema nervoso autonomo, nelle fibre postgangliari parasimpatiche, nelle fibre nervose delle ghiandole sudoripare, e in quelle responsabili della vasodilatazione nei muscoli scheletrici. È particolarmente presente nella corteccia motoria cerebrale e nel talamo.], 
  [Noradrenalina], [Mediatore del sistema nervoso autonomo (ortosimpatico postgangliare), è rilevabile in elevate concentrazioni nell'ipotalamo e nell'epifisi. Ha un ruolo nella vasocostrizione e nell'aumento della pressione sanguigna.], 
  [Dopamina], [Precursore della noradrenalina, sembra possedere un'azione inibitoria sulla trasmissione degli impulsi nervosi, agevolando i riflessi condizionati di evitamento.],
  [Serotonina], [Presente principalmente nelle piastrine, nelle cellule cromaffini intestinali, nelle corna laterali del midollo spinale e nell'ipotalamo. Il suo ruolo è complesso e include il controllo della contrazione muscolare liscia in vari organi, meccanismi sonno-veglia, regolazione della temperatura, percezione del dolore, comportamento emotivo e altro, sebbene non sia ancora completamente chiarito.], 
  [Istamina], [Diffusa nei mastociti (cellule del tessuto connettivo) e localizzata anche nell'ipofisi e nell'ipotalamo. Partecipa nei processi di secrezione gastrica, riparazione tissutale, fenomeni allergici e altro ancora. Tuttavia, il suo ruolo come mediatore sinaptico è ancora da definire con precisione.], 
  [Sostanza P], [Proteina che gioca un ruolo nei riflessi della muscolatura intestinale e nella trasmissione del dolore. Si trova principalmente nell'ipotalamo, nella sostanza nera cerebrale e nei rami dorsali dei nervi spinali.], 
  [Prostaglandine], [Acidi grassi sintetizzati a partire dall'acido arachidonico. Sono ampiamente presenti nella corteccia cerebrale, nel cervelletto, nel midollo spinale e in vari organi. Svolgono funzioni complesse nel controllo del metabolismo, nella regolazione della funzione renale e nella trasmissione degli impulsi nervosi.], 
  [Endorfine], [Sostanze polipeptidiche con proprietà simili alla morfina, agendo quindi come potenti analgesici. Vengono sintetizzate dalle cellule endocrine dell'adenoipofisi e influiscono sul controllo della pressione arteriosa, la temperatura corporea e la secrezione ormonale.], 
  [GABA o acido \ gamma-amminobutirrico], [Un amminoacido con azione inibitoria sul sistema nervoso], 
)  
)


== La trasmissione dell'impulso nervoso

La trasmissione dell'impulso nervoso è direttamente correlata alla differenza di potenziale elettrico tra il lato interno e quello esterno della membrana cellulare del neurone, denominata potenziale di riposo o potenziale di membrana. L'interno della cellula possiede una carica negativa rispetto all'esterno, condizione determinata dalle concentrazioni diseguali di ioni sodio (Na#super[+]) e potassio (K#super[+]). Questa asimmetria ionica è supportata da meccanismi attivi, come la pompa sodio-potassio, oltre che dalla variabile permeabilità della membrana plasmatica ai diversi tipi di ioni.

Durante la propagazione dell'impulso nervoso, si verifica una temporanea modifica nella permeabilità della membrana neuronale che culmina in un'improvvisa inversione delle cariche elettriche della cellula. Tale variazione elettrica costituisce il potenziale d'azione, fondamentale per la comunicazione nervosa.
 
=== Il potenziale d'azione

Durante la fase di attivazione del potenziale d'azione, si verifica un aumento della permeabilità agli ioni sodio, i quali penetrano rapidamente all'interno della cellula, mentre una quantità relativamente modesta di ioni potassio ne fuoriesce. Questo fenomeno porta alla trasformazione del potenziale di riposo, che diventa positivo all'interno e negativo all'esterno della membrana cellulare.

Successivamente, la permeabilità agli ioni sodio diminuisce in modo repentino, mentre quella agli ioni potassio aumenta significativamente. Gli ioni potassio fuoriescono dalla cellula, sottraendo cariche positive e contribuendo al ristabilimento del potenziale di riposo, ossia il ritorno del citoplasma a una condizione elettricamente negativa. L'interazione complessiva di queste depolarizzazioni e ripolarizzazioni determina la generazione di un segnale di natura elettrochimica, trasmesso lungo la fibra nervosa. Infatti, il potenziale d'azione generato in una specifica porzione della membrana cellulare induce la formazione di un potenziale simile nelle regioni adiacenti.

Nelle fibre mieliniche, la conduzione dell'impulso nervoso avviene in modo saltatorio, poiché il potenziale d'azione si propaga saltando tra i nodi di Ranvier. La guaina mielinica facilita una conduzione estremamente rapida, arrivando a raggiungere una velocità fino a 400 km/h. Al contrario, nelle fibre amieliniche la conduzione è di tipo continuo e significativamente più lenta.

== Il sistema nervoso negli animali

Il sistema nervoso presenta variazioni significative tra i diversi gruppi animali, ma mantiene una struttura fondamentale costituita da: neuroni sensoriali o afferenti, responsabili della ricezione degli stimoli dai recettori; neuroni associativi, incaricati di elaborare e integrare i segnali provenienti da multipli neuroni sensoriali e, negli organismi più complessi, di combinarli con esperienze pregresse per generare risposte adeguate; neuroni motori o efferenti, che trasmettono le risposte agli organi effettori.

Da un punto di vista funzionale, i sistemi nervosi possono essere classificati in due categorie principali: diffusi e centralizzati. Un esempio di sistema nervoso diffuso è osservabile nei celenterati, quali meduse e coralli. Questi animali, caratterizzati da simmetria raggiata e privi di estremità anatomiche definite, possiedono neuroni distribuiti uniformemente nel corpo a formare una rete nervosa, capace di rispondere agli stimoli provenienti da qualsiasi direzione.

Con l'avanzare dell'evoluzione e l'emergere della simmetria bilaterale, i neuroni hanno progressivamente tenduto a concentrarsi verso la regione cefalica, determinando il fenomeno noto come cefalizzazione. La parte anteriore del corpo assume il ruolo preponderante nella perlustrazione ambientale alla ricerca di risorse alimentari e nella gestione della risposta ai pericoli circostanti. In questa area si raccolgono anche le cellule recettrici e gli organi sensoriali.

Nei primi stadi evolutivi associati alla cefalizzazione si formano i gangli cefalici, strutture composte da aggregati neuronali capaci di integrare le informazioni provenienti dai recettori. Da tali gangli si originano uno o più cordoni nervosi longitudinali. Nei vertebrati, la cefalizzazione raggiunge il suo massimo grado di sviluppo, portando alla differenziazione del sistema nervoso centrale e periferico in forme altamente specializzate.

== Il sistema nervoso dell'uomo

Il sistema nervoso umano si articola in due componenti fondamentali: il sistema nervoso centrale e il sistema nervoso periferico.

Il sistema nervoso centrale è costituito dall'encefalo, situato all'interno della scatola cranica, e dal midollo spinale, contenuto nel canale vertebrale della colonna vertebrale. Esso è principalmente composto da neuroni associativi e svolge il ruolo cruciale di analizzare, interpretare e integrare gli stimoli provenienti dai neuroni sensoriali, generando risposte adeguate che vengono trasmesse ai neuroni efferenti. Inoltre, rappresenta la sede dove si formano i pensieri e i ricordi.
 
=== Encefalo

L'encefalo è suddiviso in strutture principali tra cui il cervello, il corpo calloso, il talamo e l'ipotalamo, che si prolunga nell'ipofisi. Il cervello, composto da due emisferi cerebrali interconnessi dal corpo calloso, presenta una superficie esterna denominata corteccia cerebrale. Questa struttura è costituita da sostanza grigia (formata da corpi cellulari), che ricopre la sostanza bianca (composta da fibre nervose mieliniche). La corteccia cerebrale è caratterizzata da circonvoluzioni che ampliano la sua superficie funzionale.

Dal punto di vista funzionale, la corteccia cerebrale è suddivisa in tre tipi di aree: sensoriale, motoria e associativa. Le regioni sensoriali ricevono gli stimoli provenienti dal corpo; le aree motorie emettono impulsi diretti ai muscoli; le porzioni associative elaborano l'integrazione e la memorizzazione degli stimoli e sono coinvolte nei processi cognitivi complessi come ideazione, consapevolezza, volontà e capacità critica. Nonostante agisca come un'unità integrata, il cervello presenta una distribuzione specifica delle funzioni: ad esempio, il lobo occipitale è sede della sensibilità visiva; i lobi temporali ospitano i centri della percezione acustica; l'area olfattiva e gustativa si trovano a livello dell'ippocampo. Inoltre, la corteccia include centri specializzati per funzioni linguistiche.

Il talamo svolge il ruolo di integrazione e coordinamento degli stimoli nervosi che transitano tra gli emisferi cerebrali e il midollo spinale. L'ipotalamo, invece, governa funzioni somatiche e viscerali essenziali, tra cui la regolazione della temperatura corporea, il controllo dei ritmi fisiologici legati a respirazione e attività cardiaca, l'equilibrio idro-salino, il ciclo sonno-veglia, la fame, la sete e la regolazione ormonale.

Alla base dell'encefalo si trova il tronco encefalico, che include mesencefalo, ponte e midollo allungato (o bulbo). Questa struttura contiene fasci nervosi che connettono l'encefalo al midollo spinale e al resto dell'organismo, oltre a ospitare nuclei nervosi responsabili dell'innervazione della testa e del volto. Il tronco encefalico regola anche attività vitali quali respirazione, ritmo cardiaco e ciclo sonno-veglia e coordina movimenti volontari e involontari. Dalla sua base emergono 12 paia di nervi cranici con funzione somatica e viscerale, indirizzate a testa, collo, torace e addome.

Il cervelletto è ancorato alla parte posteriore del tronco encefalico ed è un organo con funzioni specifiche autonome. Esso interviene nel mantenimento dell'equilibrio corporeo e nella coordinazione fine dei movimenti.
 
=== Midollo spinale

Il midollo spinale rappresenta una componente fondamentale del sistema nervoso centrale, svolgendo il ruolo di canale per la trasmissione degli impulsi sensoriali dalla periferia al cervello e degli impulsi motori dal cervello alla periferia. 

Da esso originano 31 paia di nervi spinali, ciascuno dei quali è dotato di due radici: una dorsale, che raccoglie fibre sensoriali, e una ventrale, contenente fibre motorie. All'interno del midollo spinale sono presenti numerosi neuroni associativi, i quali stabiliscono connessioni sinaptiche sia con neuroni motori sia con assoni diretti verso il cervello. 

La regione centrale del midollo spinale, denominata sostanza grigia, ospita i corpi cellulari dei neuroni motori e associativi. Essa è circondata dalla sostanza bianca, costituita da assoni mielinizzati di colore bianco. Al contrario, i corpi cellulari dei neuroni sensoriali si trovano esternamente al midollo, situati nei gangli delle radici dorsali.

=== Sistema nervoso periferico

Il sistema nervoso periferico è formato da nervi afferenti ed efferenti, i quali fungono da connessione tra il sistema nervoso centrale e gli organi recettori ed effettori. La sua funzione è limitata alla conduzione dei segnali, senza prevedere processi di elaborazione degli stessi. I segnali transitano dal midollo spinale agli organi periferici (innervazione efferente) e, viceversa, dagli organi periferici al midollo spinale (innervazione afferente).

Funzionalmente, il sistema nervoso periferico si suddivide in due componenti principali: il sistema nervoso somatico, responsabile dell'innervazione della muscolatura volontaria; e il sistema nervoso vegetativo o autonomo, che regola la muscolatura involontaria e il funzionamento delle ghiandole. Quest'ultimo si articola ulteriormente nei sistemi simpatico e parasimpatico, i quali innervano gli stessi organi ma generano effetti contrapposti. Il sistema simpatico è attivato in situazioni di emergenza e provoca un aumento della frequenza cardiaca e respiratoria, vasocostrizione e la mobilitazione delle riserve di glicogeno nel fegato. Al contrario, il sistema parasimpatico rallenta la frequenza cardiaca, favorisce la vasodilatazione e stimola l'attività degli organi digestivi.

== La percezione degli stimoli

I recettori sensoriali costituiscono le strutture specializzate nella ricezione degli stimoli provenienti dall'ambiente esterno. La forma più elementare di queste strutture è rappresentata da singole cellule capaci di rispondere specificamente a determinati stimoli; tuttavia, più frequentemente i recettori sensoriali sono organizzati in complessi definiti organi, quali l'occhio, l'orecchio o la lingua. L'attività di questi recettori e organi permette la percezione dei cosiddetti "sensi". 

Le informazioni sensoriali possono essere categorizzate in sei principali tipologie: somatiche, visive, uditive, cinetico-statiche (relative al movimento o alla posizione statica), vestibolari (concernenti il senso del movimento e dell'equilibrio fisico), gustative e olfattive. Tali informazioni costituiscono la base dell'interazione tra gli organismi viventi e il loro ambiente circostante.

== La percezione delle informazioni somatiche

Le informazioni somatiche comprendono il tatto e le percezioni di natura termica e dolorosa. Questi stimoli vengono trasmessi attraverso recettori distribuiti su tutta la superficie cutanea e tramite terminazioni nervose libere presenti nei muscoli e nelle articolazioni.

=== La pelle

La pelle, nota anche come cute, avvolge il corpo intero e svolge funzioni essenziali, tra cui protezione e scambio con l'ambiente esterno. Attraverso la sudorazione, consente la regolazione dell'equilibrio salino e la termoregolazione. Si compone di tre strati: l'epidermide (esterno), il derma (intermedio) e l'ipoderma (interno). Il derma è attraversato da fibre del sistema nervoso autonomo, le quali innervano vasi sanguigni, muscoli lisci cutanei, ghiandole e peli. Alcune di queste fibre possono estendersi fino all'epidermide.

Nel derma si trovano anche importanti recettori somatici, come i corpuscoli di Pacini e di Ruffini, responsabili della percezione della pressione, e i corpuscoli di Krause, sensibili a variazioni termiche.

#note(bottom)[== *🧩* La struttura della pelle <senza_numero>

Anatomicamente, la pelle è composta da diversi strati sovrapposti: l'epidermide, il derma e l'ipoderma. L'epidermide è costituita da cellule generate dallo strato basale; queste cellule attraversano diverse trasformazioni passando dagli strati sottostanti (spinoso, granuloso, lucido) fino a quello superiore (corneo). Durante questo processo, le cellule assumono una forma appiattita, perdono il nucleo e si arricchiscono di cheratina, conferendo loro proprietà impermeabili sia all'aria sia all'acqua. Il derma ospita strutture quali i follicoli piliferi dotati di muscoli erettori del pelo, nonché le ghiandole sudoripare e sebacee. L'ipoderma si trova al di sotto del derma ed è caratterizzato dalla presenza di cellule adipose, che hanno la funzione di isolare e ammortizzare.]

== La percezione delle informazioni visive: l'occhio

L'occhio, organo dalla forma sferica, è composto dal bulbo oculare e da tre strati concentrici: tonaca fibrosa, vascolare e nervosa.

La tonaca fibrosa include la sclerotica, opaca, che anteriormente forma la cornea trasparente. La tonaca vascolare comprende la coroide, ricca di vasi sanguigni; il corpo ciliare, dotato del muscolo responsabile dell'accomodamento per una corretta messa a fuoco; e l'iride, che agisce come un diaframma muscolare delimitando la pupilla, apertura circolare centrale.

La tonaca nervosa è rappresentata dalla retina, dove si trovano i recettori luminosi: i coni (sensibili ai colori e alla visione diurna) e i bastoncelli (adatti alla visione in condizioni di scarsa luminosità). La retina comunica con la corteccia cerebrale attraverso il nervo ottico. Nell'area in cui emerge il nervo ottico (la papilla ottica) vi è una zona priva di recettori, conosciuta come punto cieco. Il centro geometrico della retina, chiamato fovea, garantisce la massima precisione visiva.

All'interno dell'occhio si trovano i mezzi di rifrazione, tra cui umor acqueo (un fluido presente sia nella camera anteriore tra cornea e iride sia in quella posteriore tra iride e cristallino), cristallino (una lente biconvessa situata fra la camera posteriore e il corpo vitreo) e corpo vitreo (una massa gelatinosa trasparente che occupa lo spazio tra cristallino e retina).

=== La funzione visiva

La funzionalità visiva deriva dai raggi luminosi che attraversano la cornea e il cristallino per focalizzarsi sulla retina. I coni e i bastoncelli contengono molecole fotosensibili che, assorbendo la luce, subiscono un cambiamento molecolare generando un segnale elettrico (potenziale di ricezione). Questo segnale viene trasmesso al cervello tramite il nervo ottico. 

Le fibre dei due nervi ottici provenienti da ciascun occhio si incontrano e incrociano nel chiasma ottico, situato nella parte inferiore dell'encefalo. In questo modo, i nervi che dal chiasma arrivano alla corteccia visiva trasportano informazioni provenienti da entrambi i campi visivi.

=== Annessi del bulbo oculare

Annesse al bulbo oculare trovano spazio diverse strutture che svolgono funzioni di protezione. Tra queste, il sopracciglio, situato sopra la cavità orbitaria e dotato di peli, le palpebre, anch'esse provviste di ciglia, e la congiuntiva, una membrana mucosa che riveste la superficie interna delle palpebre e parte della parte anteriore del bulbo oculare.

L'apparato lacrimale è un sistema importante dell'occhio. È composto dalle ghiandole lacrimali, situate nell'angolo interno dell'occhio, e dai condotti lacrimali, che riversano il loro contenuto nel sacco lacrimale. Questo, a sua volta, è collegato alla cavità nasale tramite il condotto naso-lacrimale. Le lacrime svolgono una funzione disinfettante e aiutano a mantenere la superficie esterna dell'occhio umida.

Il movimento degli occhi è garantito da diversi muscoli: oltre ai muscoli ciliari e ai dilatatori della pupilla, ci sono i muscoli retti e obliqui, responsabili della mobilità del globo oculare, e il muscolo elevatore della palpebra superiore.

== La percezione delle informazioni uditive e vestibolari: l'orecchio

L'orecchio non è solo l'organo dell'udito ma ospita anche l'apparato vestibolare, che regola la percezione del movimento e mantiene l'equilibrio spaziale del corpo.

L'orecchio si divide in tre parti principali: l'orecchio esterno, medio e interno. Nell'orecchio esterno troviamo il padiglione auricolare, una struttura cartilaginea collegata al condotto uditivo esterno, lungo circa 2-3 cm, che termina nella membrana timpanica.

Viene poi l'orecchio medio, costituito da cavità ossee rivestite da membrana mucosa. In questa sezione è presente la catena degli ossicini (martello, incudine e staffa), elemento fondamentale nella trasmissione del suono dalla membrana timpanica all'orecchio interno. Inoltre, l'orecchio medio è collegato alla cavità nasale tramite la tromba di Eustachio.

Infine, si trova l'orecchio interno, formato da una rete di canalicoli racchiusi nel labirinto osseo, situato nella rocca petrosa dell'osso temporale. All'interno del labirinto osseo si trova la coclea, da cui origina il nervo acustico. La coclea ha una forma a spirale simile a un guscio di chiocciola ed è attraversata da due canali paralleli: la scala vestibolare che termina nella finestra ovale, e la scala timpanica che termina nella finestra rotonda. Questi canali sono separati dalla membrana basilare, in cui si trova l'organo del Corti.

=== La funzione uditiva

Le onde sonore, attraversando il canale uditivo esterno, provocano la compressione delle molecole d'aria presenti al suo interno. Questa pressione fa incurvare la membrana timpanica verso l'interno. Di conseguenza, la vibrazione della membrana movimenta la catena degli ossicini che trasferiscono l'energia meccanica fino alla finestra ovale. L'onda sonora viene trasmessa successivamente alla coclea dove causa la flessione della membrana basilare. Questo movimento attiva le cellule ciliate dell'organo del Corti, generando un "potenziale di ricezione" che prosegue attraverso le fibre efferenti fino al nervo acustico, trasportando il segnale al cervello per l'elaborazione delle informazioni uditive.

=== La funzione vestibolare

La funzione vestibolare ricopre un ruolo fondamentale nella percezione della posizione del capo e del corpo, nella modulazione del tono muscolare e nella regolazione dell'equilibrio statico e dinamico. Il sistema vestibolare è situato all'interno del labirinto osseo e comprende tre canali semicircolari contenenti un fluido noto come endolinfa, oltre a due rigonfiamenti localizzati alla base dei suddetti canali, che ospitano cellule ciliate. Durante il movimento della testa, l'endolinfa, per effetto dell'inerzia, non si sposta simultaneamente con la struttura circostante. Questa differenza di movimento esercita una pressione sulle ciglia delle cellule ciliate che, piegandosi, generano un potenziale recettoriale.

La percezione della posizione corporea relativamente alla forza gravitazionale è affidata all'utricolo e al sacculo, due camere posizionate sotto i canali semicircolari. Ciascuna di queste strutture include grappoli di cellule ciliate immerse in una massa gelatinosa. La direzione di flessione delle ciglia dipende dall'orientamento della testa rispetto alla gravità.

== La percezione delle informazioni gustative: la lingua

La lingua costituisce un organo muscolo-membranoso fondamentale non solo per le funzioni di masticazione, deglutizione e fonazione, ma anche per la tattilità e il gusto. La mucosa linguale ospita numerose protuberanze, al cui interno si trovano i bottoni gustativi: strutture microscopiche presenti in numero superiore a 10.000 nella lingua umana. Ogni bottone gustativo è formato da una piccola cavità comunicante con l'esterno tramite un poro, al cui interno si trovano circa 60-80 recettori gustativi e diverse cellule di sostegno. I microvilli dei recettori gustativi emergono dal poro della cavità e si legano alle molecole chimiche disciolte nella saliva. Gli assoni dei neuroni collegati ai bottoni gustativi trasmettono impulsi nervosi al cervello, elaborando le informazioni relative ai quattro sapori fondamentali: dolce, amaro, acido e salato.

== La percezione delle informazioni olfattive: il naso

Il naso rappresenta l'organo deputato alla percezione olfattiva e svolge anche una funzione respiratoria complementare, filtrando, umidificando e riscaldando l'aria inspirata. La porzione superiore della cavità nasale ospita l'epitelio olfattivo, composto da neuroni olfattivi le cui terminazioni sono costituite da 10-20 ciglia libere immerse in uno strato di muco. Le molecole odorose si dissolvono nel muco prima di interagire con i recettori olfattivi, i quali inviano impulsi elettrici al bulbo olfattivo per consentire l'elaborazione delle informazioni sensoriali legate agli odori.

== Il sistema endocrino

Il sistema endocrino rappresenta un complesso di ghiandole a secrezione interna, comunemente note come ghiandole endocrine. Tali ghiandole, prive di dotto escretore, sono tuttavia caratterizzate da una fitta rete vascolare mediante la quale rilasciano le sostanze da loro sintetizzate, denominate ormoni.

La struttura microscopica delle ghiandole endocrine e le proprietà degli ormoni mostrano straordinarie somiglianze tra i vertebrati. Le principali differenze riguardano la forma delle ghiandole, la loro localizzazione anatomica, la presenza o assenza di alcune di esse, e il ruolo svolto da ormoni quasi identici in organismi differenti.

Attraverso la produzione di ormoni, il sistema endocrino assume un ruolo centrale nella regolazione delle funzioni metaboliche, nei processi legati alla crescita e nella riproduzione.
 
=== Gli ormoni

Gli ormoni sono molecole di diversa natura chimica (steroidi, proteine o derivati amminoacidici) deputate alla regolazione delle attività di specifici tessuti e organi. Ciascun ormone è prodotto da una particolare ghiandola endocrina e tende ad agire su un organo specifico, definito organo bersaglio. Tale organo si trova spesso distante dalla sede di secrezione dell'ormone, che lo raggiunge attraverso il sistema circolatorio. Una volta giunti al loro bersaglio, gli ormoni possono modulare l'attività degli enzimi già presenti nel citoplasma oppure indurre la sintesi di nuovi enzimi. La specificità dell'interazione tra ormone e organo bersaglio è garantita dalla presenza di recettori specifici che riconoscono la molecola dell'ormone. L'equilibrio della concentrazione di ormoni nel sangue è mantenuto dal fegato, che ne effettua un'inattivazione costante, contrastando così il ritmo continuo della loro produzione da parte delle ghiandole endocrine.
 
=== Il sistema endocrino nell'uomo

Nel corpo umano sono presenti le seguenti ghiandole endocrine: ipofisi; tiroide; paratiroidi; ghiandole surrenali (distinguibili in porzione corticale e midollare); pancreas endocrino; gonadi (testicoli negli uomini e ovaie nelle donne); timo (struttura linfoide attiva principalmente durante l'infanzia e soggetta a progressiva atrofia dopo la pubertà); epifisi.  

Vi sono inoltre altre strutture che svolgono funzioni endocrine, quali l'ipotalamo, alcune cellule del tratto gastrointestinale, il cuore e i reni. Durante la gravidanza, anche la placenta si comporta come un organo endocrino temporaneo, contribuendo all'adattamento dell'organismo materno alla gestazione e al parto.
 
=== Sistema endocrino e sistema nervoso

Le ghiandole endocrine cooperano in maniera strettamente integrata tra loro e stabiliscono connessioni anatomiche e funzionali con il sistema nervoso centrale e periferico. Tali interazioni si esplicano sia mediante la midollare delle ghiandole surrenali, che secerne adrenalina e noradrenalina - sostanze che fungono da ormoni e neurotrasmettitori - sia attraverso l'ipotalamo. Quest'ultimo è una struttura cerebrale imprescindibile per l'omeostasi e l'adattamento dell'organismo all'ambiente, che rilascia molecole capaci di stimolare o inibire l'attività dell'ipofisi, delle gonadi, della tiroide e della corteccia surrenale.

#figure(
  caption: [Ghiandole e relativi ormoni],
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
  table.header[Ghiandola][Ormoni \ secreti][ Funzioni principali],
  [ipotalamo], [ormone antidiuretico (ADH)], [promuove il riassorbimento dell'acqua da parte dei reni e delle ghiandole sudoripare; restringe il lume dei piccoli vasi sanguigni arteriosi],
  [], [ossitocina], [ nelle femmine stimola la contrazione dei muscoli uterini durante il parto, la secrezione del latte e comportamenti materni; nei maschi provoca l'eiaculazione],
  [], [], [],
)  
)

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Apparato vestibolare: Strutture presenti nell'orecchio interno, specializzate nella percezione dei movimenti e dei cambiamenti di posizione della testa. Comprendono tre canali semicircolari, il sacculo e l'utricolo.  

/ Cervelletto: Struttura cerebrale separata, situata nella parte posteriore del tronco encefalico. Ha la funzione di coordinare l'attività muscolare e mantenere l'equilibrio.  

/ Cervello: Porzione dell'encefalo composta da due emisferi cerebrali. Esternamente è rivestita dalla corteccia cerebrale, costituita da sostanza grigia (corpi cellulari) organizzata in circonvoluzioni, mentre internamente si trova la sostanza bianca (fibre nervose).  

/ Encefalo: Elemento del sistema nervoso centrale situato nel cranio, responsabile del coordinamento delle attività nervose. Riceve dati dagli organi di senso o dai neuroni afferenti, li integra e genera una risposta da trasmettere agli organi effettori. È formato da cervello, corpo calloso, talamo, ipotalamo, cervelletto e tronco encefalico.  

/ Ganglio: Gruppo di tessuto nervoso che ospita numerosi corpi cellulari. È presente sia negli invertebrati (ad esempio i gangli cefalici) sia nei vertebrati (come il ganglio della radice dorsale).  

/ Ghiandole endocrine: Ghiandole che secernono i propri prodotti (ormoni) direttamente nel sangue.  

/ Impulso nervoso: Fenomeno elettrico che percorre le fibre nervose e consiste nel flusso di ioni attraverso la membrana dell'assone, generato dall'improvvisa inversione della carica elettrica della cellula.  

/ Ipotalamo: Regione dell'encefalo situata sotto il talamo, coinvolta nella regolazione di numerosi processi fisiologici.  

/ Lingua: Organo muscolare situato nella cavità orale, responsabile della masticazione, deglutizione, fonazione e percezione gustativa attraverso i bottoni gustativi.  

/ Midollo allungato o bulbo: Parte del tronco encefalico da cui originano 12 paia di nervi cranici. Regola funzioni involontarie quali respirazione, battito cardiaco e pressione sanguigna.  

/ Midollo spinale: Elemento del sistema nervoso centrale contenuto nella colonna vertebrale, da cui si originano 31 paia di nervi spinali. È costituito da una parte centrale di sostanza grigia (corpi cellulari) circondata da sostanza bianca (fibre nervose).  

/ Naso: Organo deputato alla percezione degli odori e responsabile della filtrazione, umidificazione e riscaldamento dell'aria inspirata.  

/ Neurone: Unità fondamentale del sistema nervoso, composta dal corpo cellulare (pirenoforo), numerosi dendriti e un assone lungo. È specializzato nella trasmissione degli impulsi nervosi ricevuti dai recettori o da altri neuroni. Può essere sensoriale (afferente), motorio (efferente) o associativo.  

/ Occhio: Organo della vista contenente cellule fotoricettrici specializzate: coni e bastoncelli.  

/ Orecchio: Organo preposto alla ricezione dei suoni e al controllo dell'equilibrio tramite l'apparato vestibolare. È composto da orecchio esterno, medio e interno.  

/ Ormoni: Sostanze chimiche responsabili della regolazione delle attività di specifici organi e tessuti denominati organi bersaglio.  

/ Pelle o cute: Rivestimento del corpo dotato di ghiandole sebacee e sudoripare, oltre a recettori sensibili al dolore, temperatura e pressione.  

/ Rete nervosa: Sistema nervoso semplice costituito da neuroni diffusi in tutto il corpo. È caratteristico degli animali a simmetria raggiata.  

/ Sinapsi: Collegamento specializzato per la trasmissione degli impulsi nervosi tra neuroni o verso organi effettori. Attraverso la terminazione presinaptica viene rilasciato un neurotrasmettitore che passa attraverso la fessura sinaptica e si lega ai recettori della terminazione postsinaptica, ripristinando l'impulso nervoso.  

/ Sistema nervoso centrale: Parte fondamentale del sistema nervoso composta da encefalo e midollo spinale.  

/ Sistema nervoso periferico: Comprende i nervi efferenti e afferenti; include il sistema nervoso somatico e quello vegetativo, suddiviso a sua volta in simpatico e parasimpatico.  

/ Talamo: Zona profonda dell'encefalo, situata sopra il tronco encefalico. Svolge un ruolo chiave nella trasmissione delle informazioni sensoriali verso la corteccia cerebrale.  

/ Tronco encefalico: Estensione dell'encefalo che comprende mesencefalo, midollo allungato (o bulbo) e ponte.  

