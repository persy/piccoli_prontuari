#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[L'immensa varietà di specie animali e vegetali che si sono evolute sulla Terra nel corso di milioni di anni ha reso indispensabile la creazione di un sistema logico per identificare ogni organismo e collocarlo in categorie specifiche. Questo metodo non solo permette di attribuire un ordine ai viventi, ma facilita anche il confronto tra le diverse specie, aiutando a individuare le affinità evolutive e le interconnessioni tra gli organismi.]

== La classificazione degli organismi

La sistematica, o tassonomia (dal greco _táxis_, che significa ordinamento), è la disciplina che si occupa di stabilire i criteri per classificare gli organismi viventi secondo una struttura organizzata basata su categorie sistematiche, chiamate táxa (singolare _táxon_). Queste categorie sono disposte in maniera gerarchica.

Le sette principali categorie sistematiche, ordinate dal livello più ampio al più specifico, sono: regno, _phylum_ (terminologia usata per gli animali) o divisione (impiegata per piante e funghi), classe, ordine, famiglia, genere e specie. Ogni categoria superiore include quelle inferiori in una struttura simile a quella delle "scatole cinesi". Ad esempio, il regno contiene numerosi _phyla_; ogni _phylum_ racchiude più classi; ogni classe include più ordini e via dicendo, fino ad arrivare alla singola specie.

=== La nomenclatura binomia

L'identificazione di un organismo avviene specificando a quale categoria tassonomica appartenga, dalla specie fino al _phylum_ (o divisione), passando per genere, famiglia, ordine e classe. Tuttavia, per praticità, si basa principalmente sulle due categorie più basse: genere e specie. Il nome scientifico di un organismo è espresso tramite la nomenclatura binomiale, ideata da Linneo nel XVIII secolo. Questo sistema utilizza due termini in latino: il primo indica il genere (scritto in maiuscolo), mentre il secondo identifica la specie (scritto in minuscolo). Per esempio, il lupo è denominato _Canis lupus_, il cane _Canis familiaris_ e l'uomo _Homo sapiens_.

L'assegnazione di nomi a nuovi generi o specie avviene durante congressi scientifici internazionali seguendo vari criteri. Il nome può derivare dalla tradizione classica di greci e latini, dall'intitolazione allo scopritore oppure dalla descrizione di una caratteristica dell'esemplare. La nomenclatura binomiale serve come standard universale per superare l'ambiguità derivante dall'uso comune di nomi diversi in ogni lingua o dialetto per animali e piante.

== La tassonomia moderna

Durante il XIX secolo, con la diffusione delle teorie evoluzionistiche e la nuova definizione di specie (gruppo di individui capaci di incrociarsi tra loro generando prole fertile), si cominciò a preferire sistemi di classificazione basati sulle relazioni filogenetiche, ossia i legami evolutivi tra le varie specie, cercando di ricostruirne la discendenza da antenati comuni.

Oggi la tassonomia punta a individuare con maggiore precisione le affinità evolutive fra gli organismi grazie a contributi provenienti da discipline diverse. Oltre agli studi su anatomia ed embriologia, riveste particolare importanza la biochimica, che permette di analizzare la sequenza di amminoacidi nelle proteine. Dato che le proteine sono codificate dal DNA, una maggiore somiglianza nella composizione proteica tra due specie suggerisce rapporti evolutivi più vicini.

Pur essendo una scienza complessa, la sistematica degli organismi, soprattutto quelli meno evoluti, resta ancora oggetto di dibattito. I gruppi tassonomici, i cosiddetti _taxa_, vengono continuamente revisionati alla luce dei nuovi risultati emersi dalle ricerche nei diversi ambiti scientifici.

=== I regni viventi

La maggior parte delle classificazioni scientifiche moderne concorda nel suddividere gli organismi viventi in cinque principali regni: monere (_Monera_), protisti (_Protista_), piante (_Plantae_), funghi (_Fungi_), animali (_Animalia_). Ciascuno di questi raggruppamenti include organismi accomunati da caratteristiche fondamentali:
- Il regno delle monere comprende procarioti unicellulari
- I protisti sono eucarioti unicellulari
- Le piante sono eucarioti pluricellulari autotrofi
- Gli animali sono eucarioti pluricellulari eterotrofi

Di recente, alcuni studiosi hanno proposto una diversa suddivisione degli organismi viventi, che include categorie come procarioti, prototisti, piante, funghi e animali. In questa classificazione, il regno dei prototisti racchiude tutti gli organismi eucarioti, sia unicellulari che pluricellulari, che non rientrano nelle caratteristiche specifiche degli altri regni. Tra questi troviamo non solo protisti unicellulari, ma anche alghe pluricellulari.

I virus, per loro natura peculiare, non appartengono a nessuno dei suddetti regni. Essi vengono considerati entità separate, collocate ai margini del mondo vivente.

#figure(
  caption: [I cinque regni dei viventi],
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
    table.header[Regno][_Phyla_#footnote[Sono indicati solo i principali _phyla_. Questa classificazione potrebbe essere considerata obsoleta]],
    [Monere], [Archeobatteri, Eubatteri],
    [Protisti], [Euglenofite, Bacillariofite, Dinoflagellati, Rodofite, Feofite, Clorofite, Sarcomastigofori, Sporozoi, Ciliati, Mixomiceti, Acrasie],
    [Piante], [Rodofite, Feofite, Clorofite, Briofite, Pteridofite, Coniferofite, Antofite],
    [Funghi], [Zigomiceti, Oomiceti, Ascomiceti, Basidiomiceti, Deuteromiceti],
    [Animali], [Poriferi, Cnidari, Platelminti, Nematodi, Anellidi, Artropodi, Molluschi, Echinodermi, Cordati],
)  
)

=== Gli alberi evolutivi

La rappresentazione della storia filogenetica dei grandi raggruppamenti sistematici avviene spesso attraverso schemi grafici. Questi schemi illustrano le linee evolutive che collegano i progenitori più lontani alle specie attuali, sintetizzando le tappe principali dell'evoluzione.

Tuttavia, la storia evolutiva della vita sulla Terra è straordinariamente complessa e, in larga parte, conosciuta solo attraverso ipotesi. Non è possibile definire un percorso evolutivo lineare, poiché molte linee si interrompono a causa di estinzioni o si ramificano dando origine a nuove specie.

Di conseguenza, i sistemi evolutivi, così come i modelli tassonomici derivati da essi, sono generalmente strutturati sotto forma di alberi ramificati: i cosiddetti alberi evolutivi. In questi schemi, il tronco rappresenta gli antenati comuni; i grandi rami evidenziano le principali suddivisioni del mondo vivente; le ramificazioni più piccole mostrano i percorsi evolutivi di gruppi specifici di organismi.

== I cicli vitali e le generazioni

Il ciclo vitale descrive l'intera sequenza delle fasi che caratterizzano lo sviluppo di un organismo. Questo percorso inizia dalla formazione dello zigote, la cellula fecondata, e arriva alla produzione dei gameti, ovvero le cellule sessuali necessarie per la riproduzione. 

Il ciclo vitale di un organismo costituisce un fattore chiave per valutare il livello di evoluzione della specie di appartenenza. Proprio per questo motivo il ciclo rappresenta anche un elemento di rilevante importanza nella classificazione biologica delle specie.

Esso è scandito da fasi cellulari in cui il numero di cromosomi rimane invariato, definite generazioni. Negli organismi che si riproducono asessualmente mediante la semplice divisione cellulare (mitosi), il numero di cromosomi per cellula non cambia, e il ciclo si completa tra due divisioni consecutive, comprendendo un'unica generazione. Al contrario, nei organismi con riproduzione sessuata, la formazione dei gameti comporta un dimezzamento del numero di cromosomi attraverso la meiosi (indicati con n), seguito da un loro raddoppiamento durante la fecondazione (2n). Di conseguenza, il ciclo vitale in questi organismi si articola in un'alternanza tra una generazione aploide (metà del numero di cromosomi, che si estende dalla meiosi alla fecondazione) e una diploide (numero completo di cromosomi, che va dalla fecondazione alla meiosi).

In diversi gruppi di organismi, il predominio di una generazione rispetto all'altra rappresenta una caratteristica che riflette un livello evolutivo diverso. Si possono così individuare organismi aplonti (dove prevale la generazione aploide, come in molti protisti, alghe e funghi), diplonti (di predominante generazione diploide, tipica degli animali) e aplodiplonti (con equilibrio tra le due generazioni, riscontrabile in molte piante).

In numerose piante, la meiosi genera spore aploidi che si dividono per mitosi formando un individuo aploide (gametofito). Questo gametofito produce gameti che si fondono, generando uno zigote diploide. Lo zigote dà vita a un individuo diploide (sporofito) il quale, attraverso nuove meiosi, genera nuovamente spore aploidi, ripristinando il ciclo. Nel corso dell'evoluzione, la fase gametofitica tende a ridursi: nelle piante superiori prevale la generazione diploide dello sporofito (la forma più visibile delle piante), mentre il gametofito è ridotto a poche cellule destinate alla produzione di gameti. Analogamente, in alcuni animali diplonti come i celenterati, le generazioni alternano tra la larva natante (medusa), che produce gameti e si riproduce sessualmente, e lo stadio adulto fisso sul fondo marino (polipo), che si riproduce asessualmente.

== I virus

I virus sono particelle subcellulari prive di struttura cellulare, e possono replicarsi solo all'interno di una cellula ospite infettata. Data la loro ridotta dimensione, che varia tra 17 e 3000 nanometri, possono essere osservati esclusivamente al microscopio elettronico.

La struttura dei virus comprende un involucro proteico chiamato capside, formato da subunità proteiche denominate capsomeri. Alcuni virus presentano un ulteriore strato protettivo lipidico esterno al capside, prelevato dalla membrana della cellula ospite durante la rottura della stessa al termine del ciclo infettivo. Questo strato protegge le nuove particelle virali replicate. All'interno del capside si trova il materiale genetico: un acido nucleico che può essere DNA o RNA. 

=== Classificazione dei virus

I virus possono essere classificati in base al tipo di acido nucleico presente: DNA virus e RNA virus. Inoltre, in base agli organismi che riescono a infettare, si dividono in virus propriamente detti, che attaccano cellule eucariote, e batteriofagi o fagi, che infettano cellule batteriche procariote. I virus propriamente detti assumono spesso una forma icosaedrica, un poliedro a venti facce, e comprendono agenti patogeni responsabili del raffreddore, delle verruche e della poliomielite. Al contrario, i virus che parassitano cellule vegetali presentano generalmente una struttura allungata o sferica.

I batteriofagi, invece, hanno una conformazione più complessa, suddivisa in cinque elementi principali formati da diverse proteine: testa, stilo, guaina contrattile, piastra basale e fibre della coda.  

=== Cicli infettivi

La riproduzione dei virus avviene esclusivamente all'interno di una cellula ospite. L'involucro proteico del virus è specificamente progettato per legarsi a gruppi molecolari presenti sulla superficie di cellule bersaglio. Alcuni tipi di virus, come i fagi, introducono nella cellula solo l'acido nucleico virale, mentre altri penetrano completamente nella cellula e successivamente liberano il proprio involucro proteico, spesso digerito dagli enzimi dell'ospite. Una volta dentro, il materiale genetico virale si integra con quello della cellula ospite, costringendola a leggere anche le informazioni genetiche del virus e a produrre i componenti necessari per formare nuovi virus. Questi ultimi vengono assemblati rapidamente e fuoriescono dalla cellula, distruggendola, diffondendosi poi nelle cellule vicine.

Nei DNA virus, il doppio filamento di DNA che viene introdotto nella cellula può essere immediatamente replicato. L'intero processo culmina con la distruzione o lisi della cellula e la formazione di nuovi virus (ciclo litico). In altri casi, il DNA virale si integra nel materiale genetico dell'ospite e resta dormiente per un periodo, contribuendo passivamente alla crescita e divisione cellulare (ciclo lisogenico). Solo successivamente viene avviato un ciclo litico che porta alla distruzione della cellula.

Negli RNA virus è necessario che il materiale genetico venga prima trascritto in una molecola di DNA tramite un enzima chiamato trascrittasi inversa, prima di potersi integrare nella cellula ospite. Un esempio emblematico di RNA virus è il retrovirus HIV, responsabile dell'insorgenza dell'AIDS (sindrome da immunodeficienza acquisita).
#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario  <senza_numero>

/ Aplodiplonti: Organismi il cui ciclo vitale presenta un'alternanza di generazioni aploidi e diploidi, come avviene in molte piante.

/ Aplonti: Organismi nei quali la generazione aploide predomina nel ciclo vitale, tipicamente protisti, alghe e funghi.

/ Diplonti: Organismi nei quali la generazione diploide è prevalente nel ciclo vitale, come negli animali.

/ Ciclo vitale: Congiunto delle fasi di sviluppo di un organismo, che si estende dallo zigote fino alla formazione dei gameti.

/ Classificazione: Processo che inserisce un organismo in una categoria sistematica. La classificazione artificiale, basata sulle somiglianze morfologiche più evidenti, è stata progressivamente sostituita dalla classificazione naturale, che tiene in considerazione le relazioni filogenetiche tra gli organismi.

/ Fagi o batteriofagi: Virus capaci di infettare cellule batteriche.

/ Gametofito: Negli organi vegetali, organismo aploide che produce gameti destinati a fondersi in uno zigote diploide (lo sporofito).

/ Generazione: Fase del ciclo vitale definita da divisioni cellulari che mantengono costante il numero cromosomico.

/ Generazione aploide: Segmento del ciclo vitale compreso tra la meiosi e la fecondazione, caratterizzato da un dimezzamento del numero di cromosomi (aploide).

/ Generazione diploide: Segmento del ciclo vitale compreso tra la fecondazione e la meiosi, contraddistinto da una duplicazione del numero di cromosomi (diploide).

/ Nomenclatura binomiale: Sistema di denominazione scientifica degli organismi basato su due termini latini: il primo, scritto con iniziale maiuscola, indica il genere; il secondo, con iniziale minuscola, rappresenta la specie.

/ Sistematica o tassonomia: Disciplina biologica che si occupa dello studio delle somiglianze e differenze tra gli organismi al fine di consentirne identificazione e classificazione.

/ Sporofito: Negli organismi vegetali, organismo diploide che genera, tramite meiosi, spore aploidi.

/ _Táxa_: Unità sistematiche ordinate gerarchicamente, dove ogni livello superiore include categorie sempre più specifiche.

/ Virus: Particelle subcellulari in grado di replicarsi esclusivamente all'interno di una cellula ospite precedentemente infettata.

