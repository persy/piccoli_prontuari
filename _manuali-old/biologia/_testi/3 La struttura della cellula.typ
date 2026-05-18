#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)
#evidenzia[Ogni organismo vivente è composto da cellule, unità microscopiche circondate da una membrana e dotate delle proprietà fondamentali della vita: ogni cellula è in grado di riprodursi, nutrirsi, respirare e smaltire i propri prodotti di scarto. La capacità di generare una nuova cellula geneticamente identica a sé stessa è resa possibile dalla presenza, al suo interno, di informazioni genetiche organizzate sotto forma di acido desossiribonucleico (DNA), strutturato nei cromosomi. Per soddisfare le esigenze di crescita e generare energia, la cellula opera come un laboratorio chimico altamente sofisticato, la cui attività è regolata da enzimi.

Sebbene esistano notevoli variazioni nella forma, dimensione e funzione delle cellule, esse condividono una configurazione strutturale e funzionale di base. Tale uniformità è ciò che rende la cellula l'elemento fondamentale, sia dal punto di vista strutturale sia funzionale, della vita negli organismi viventi.]

== Caratteristiche generali della cellula

La cellula è definita come l'unità strutturale e funzionale di tutti gli organismi viventi, ovvero il più piccolo aggregato di materia dotato di "vita". Ogni cellula presenta almeno tre componenti fondamentali: il DNA, che rappresenta il materiale genetico, immerso in una matrice fluida chiamata citoplasma, il tutto racchiuso da una membrana plasmatica, un sottile strato che la isola dall'ambiente esterno.

Il numero di cellule che costituiscono un organismo varia considerevolmente: negli organismi unicellulari basta una sola cellula, mentre nei pluricellulari si può arrivare a migliaia di miliardi, come nel caso umano (circa 10#super[28]).

Negli organismi unicellulari la singola cellula svolge autonomamente tutte le funzioni vitali necessarie. Al contrario, negli organismi pluricellulari le cellule si specializzano, differenziandosi per espletare compiti specifici. In questi ultimi, la forma delle cellule è estremamente variabile e strettamente correlata alla funzione: possono essere rotonde, cubiche, prismatiche o stellate con numerosi prolungamenti. Anche le dimensioni delle cellule sono molto diverse e solitamente si collocano nell'ordine di grandezza del micron (µm, dove 1 µm = 10#super[-6] m), con valori che vanno generalmente dai 10 µm ai 50 µm. 

Le cellule più piccole sono quelle dei batteri (1 µm), mentre le più grandi comprendono le cellule uovo di molti animali (100 µm nell'uomo) e le fibre di alcune piante. Le loro dimensioni ridotte garantiscono un rapporto ottimale con l'ambiente circostante, permettendo loro di assorbire nutrienti e eliminare sostanze di scarto con maggiore efficienza.

#note(bottom)[== *🧩* La teoria cellulare <senza_numero>

La scoperta delle cellule risale al XVII secolo, quando i primi microscopi erano ancora rudimentali. Tuttavia, ci vollero circa duecento anni per comprendere appieno la loro presenza universale in tutti gli esseri viventi. Il merito della prima osservazione di una cellula va allo scienziato inglese Robert Hooke (1635-1703), che nel 1665 identificò numerose piccole cavità vuote in una sottile sezione di sughero. Pur non intuendo il loro ruolo nell'organizzazione degli esseri viventi, Hooke diede a queste strutture il nome di "cellula". 

Fu solo nella prima metà del XIX secolo che si scoprì come tutte le piante (grazie agli studi di Matthias Schleiden nel 1838) e tutti gli animali (grazie al lavoro di Theodor Schwann nel 1839) fossero costituiti da cellule. Vent'anni più tardi, lo scienziato tedesco Rudolf Virchow (1821-1902) formulò il principio secondo cui ogni cellula è generata da un'altra cellula preesistente. Queste scoperte congiunte hanno dato origine alla teoria cellulare, che si basa su tre fondamenti principali: tutti gli organismi viventi sono composti da cellule; la cellula rappresenta l'unità strutturale e funzionale della vita; ogni cellula deriva da una cellula preesistente.]

== Cellule procarioti e cellule eucarioti

In base alla presenza o meno di un nucleo ben definito delimitato da una membrana, le cellule possono essere suddivise in procarioti ed eucarioti.

Le cellule procariote, il cui nome deriva dal greco e significa "nucleo primitivo", sono caratterizzate dall'assenza di una membrana che separi il materiale genetico dal citoplasma. In queste cellule, il DNA è disperso nel citoplasma e si concentra in una regione chiamata nucleoide. Inoltre, nel citoplasma delle cellule procariote, mancano quasi del tutto organuli e altre strutture citoplasmatiche. Al di fuori della membrana plasmatica, queste cellule possiedono una parete cellulare semirigida che le protegge dall'ambiente esterno. Esempi di organismi procarioti sono tutti i batteri.

Le cellule eucariote, il cui nome dal greco significa "nucleo ben fatto", presentano un nucleo ben definito racchiuso da una membrana nucleare e sono dotate di numerose strutture cellulari differenziate situate nel citoplasma. Questo tipo di cellula è presente nei protisti, nei funghi, nelle piante e negli animali. La cellula eucariote vegetale si distingue dalla cellula eucariote animale per la presenza nel citoplasma di alcune strutture caratteristiche esclusivamente delle piante.

== La membrana plasmatica

La membrana plasmatica, nota anche come membrana cellulare, è una struttura sottile di circa 7-8 nanometri (1 nm = 10#super[-9] m) che circonda la cellula, regolando il passaggio di sostanze in entrata e in uscita e fungendo da mezzo di comunicazione con altre cellule attraverso la ricezione e la trasmissione di segnali specifici. La sua organizzazione è rappresentata dal modello a mosaico fluido, descritto nel 1972 dai biologi S.J. Singer e G.L. Nicolson. I componenti principali della membrana plasmatica sono costituiti da molecole di lipidi e proteine, con una presenza complementare di carboidrati.

#figure(
  caption: [Strutture delle cellule eucarioti animali e vegetali],
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
    columns: (9.5em,auto),
    table.header[Struttura][Funzione],
    table.cell(colspan: 2)[#align(center)[Strutture della superficie cellulare]],
    [Parete cellulare#footnote[Presente solo nelle cellule vegetali] <cellula_vegetale> ], [Protegge e sostiene la cellula],
    [Membrana plasmatica], [Doppio strato lipidico con funzione di isolamento del contenuto della cellula dall'ambiente; regola lo scambio di materiali con l'esterno; stabilisce comunicazioni con altre cellule],
    table.cell(colspan: 2)[#align(center)[Strutture in cui è organizzato il materiale genetico]],
    [Cromosomi],[Ammassi organizzati di DNA e proteine accessorie, portatori dell'informazione genetica per costruire la cellula e controllarne l'attività], 
    [Nucleo], [Spazio delimitato da una membrana in cui sono contenuti i cromosomi],
    [Membrana nucleare], [Circonda il nucleo; regola l'entrata e l'uscita di materiali dal nucleo attraverso piccole aperture (pori nucleari)], 
    [Nucleolo],	[Sintetizza i ribosomi],
    table.cell(colspan: 2)[#align(center)[Strutture citoplasmatiche]],
    [Citoplasma],	[Sede dei processi metabolici, molto ricco di microtubuli e microfilamenti che mantengono la forma della cellula e partecipano attivamente ai processi di movimento],
    [Mitocondrio],	[Produce energia tramite metabolismo aerobico (respirazione cellulare)],
    [Cloroplasto#footnote(<cellula_vegetale>)],	[Realizza la fotosintesi],
 	  [Ribosoma],	[Sede della sintesi proteica],
 	  [Reticolo endoplasmatico],	[Sintetizza molte proteine (tra cui enzimi) e lipidi],
 	  [Apparato di Golgi],	[Modifica e smista proteine e lipidi; sintetizza carboidrati],
 	  [Lisosoma],	[Contiene enzimi digestivi intracellulari],
 	  [Plastidio#footnote(<cellula_vegetale>)],	[Immagazzina cibo, pigmenti],
 	  [Vacuolo centrale#footnote(<cellula_vegetale>)],	[Raccoglie acqua e prodotti di rifiuto: fornisce la pressione di turgore necessaria per dare sostegno alla cellula],
 	  [Citoscheletro],	[Dà forma e sostegno alla cellula; provvede al posizionamento e alla migrazione di parti della cellula],
 	  [Centriolo#footnote[Presente solo nelle cellule animali] <cellula_animale>],	[Può produrre il fuso mitotico nelle cellule animali],
 	  [Ciglia e flagelli#footnote(<cellula_animale>)],	[Fanno muovere la cellula in un liquido o spostano il fluido sulla superficie di una cellula ferma]
)  
)


=== Lipidi

I lipidi si dividono in tre categorie principali: fosfolipidi, colesterolo e glicolipidi. I fosfolipidi si organizzano in un doppio strato grazie al loro particolare comportamento nei confronti dell'acqua. Dato che la cellula è composta prevalentemente da acqua e si trova immersa in un ambiente acquoso, la parte idrofila di ciascuna molecola di fosfolipide, ovvero la "testa", si orienta verso il citoplasma e il liquido extracellulare, mentre la parte idrofoba, rappresentata dalla "coda", si dispone all'interno del doppio strato. Le code dei fosfolipidi, formate da acidi grassi, conferiscono alla membrana una consistenza fluida, simile a quella dell'olio. I fosfolipidi sono inoltre in grado di muoversi orizzontalmente all'interno della membrana, senza però passare da uno strato all'altro. Essi svolgono un ruolo cruciale come barriera per gli ioni e le molecole idrofile, che possono superare la membrana solo tramite specifici canali.

Il colesterolo è integrato nella membrana e ne aumenta la stabilità e la resistenza, riducendone al contempo la fluidità. I glicolipidi sono invece prevalentemente localizzati nello strato esterno della membrana, dove giocano un ruolo fondamentale nella regolazione della comunicazione tra cellule.

=== Proteine

Numerose proteine, conosciute come proteine di membrana, sono immerse nel doppio strato fosfolipidico oppure aderenti alla sua superficie. Alcune di queste, quando legate ai carboidrati, assumono il nome di glicoproteine.  

Le proteine periferiche o estrinseche si trovano solamente in uno dei due strati del doppio strato lipidico, mentre quelle intrinseche o integrali sono completamente integrate al suo interno. Similmente ai fosfolipidi, anche le proteine possono muoversi orizzontalmente all'interno del doppio strato lipidico, contribuendo alla fluidità della membrana. L'asimmetria tra i due strati della membrana è determinata dalla diversa disposizione delle proteine su ciascun lato. Queste proteine svolgono funzioni fondamentali quali il ruolo di enzimi catalizzatori per reazioni chimiche, la regolazione del passaggio di molecole idrosolubili attraverso la membrana e il riconoscimento e legame di specifiche molecole presenti nel fluido extracellulare.  

=== Carboidrati

I carboidrati, prevalenti nella membrana delle cellule eucariotiche, si legano sia ai lipidi, formando glicolipidi, sia alle proteine, dando origine alle glicoproteine.  

== Il nucleo

Il nucleo è una struttura caratteristica delle cellule eucariotiche, di forma prevalentemente sferica, che contiene il materiale genetico (l'acido desossiribonucleico, o DNA) ed esercita la funzione di centro di controllo, programmando e coordinando le attività cellulari. È costituito da tre componenti principali: la membrana nucleare, la cromatina e uno o più nucleoli.

La membrana nucleare, composta da due strati lipidici sovrapposti, separa il nucleo dal citoplasma. Essa presenta numerosi pori, attraverso i quali avviene lo scambio regolato di macromolecole, come proteine e RNA, tra nucleo e citoplasma. Al contrario, acqua, ioni e piccole molecole possono attraversarla liberamente senza restrizioni.

All'interno del nucleo si trova il plasma nucleare, una soluzione acquosa che contiene ioni, enzimi, ribosomi e prodotti intermedi dei processi di sintesi di DNA e RNA.

La cromatina è una sostanza granulare composta da lunghe catene di DNA associate a proteine. Il termine cromatina ("sostanza colorata") deriva dalle prime osservazioni mediante coloranti specifici, durante le quali alcune regioni del nucleo apparivano più intensamente colorate. Durante la divisione cellulare, la cromatina si compatta formando strutture ben visibili al microscopio ottico: i cromosomi ("corpi colorati"). Questi contengono il materiale genetico duplicato, pronto per essere trasmesso alle cellule figlie.

I nucleoli, piccoli corpuscoli tondeggianti presenti nel nucleo in numero variabile, svolgono invece un ruolo cruciale nella sintesi dell'RNA ribosomiale, che si combina con specifiche proteine prodotte nel citoplasma per dare origine alle subunità dei ribosomi, fondamentali per la sintesi proteica. Durante la divisione cellulare, i nucleoli si dissolvono a causa del rallentamento della sintesi ribosomiale, ma tornano a formarsi una volta che la cellula riprende le sue normali funzioni, riorganizzandosi in strutture sferiche a partire dal materiale momentaneamente disperso nel nucleo.

== Il citoplasma

Il citoplasma è costituito principalmente da una parte viscosa e fluida, il citosol, che contiene acqua (pari al 75-85% del peso complessivo della cellula), sostanze inorganiche dissociate sotto forma ionica (principalmente ioni K#super[+], Na#super[+], Ca#super[++] e Mg#super[++]) e diverse molecole organiche, tra cui proteine con funzioni enzimatiche o strutturali. Nelle cellule eucariote, il citoplasma ospita numerose strutture citoplasmatiche di diversa natura, ciascuna incaricata di svolgere specifiche funzioni. Al contrario, nelle cellule procariote le attività cellulari si verificano senza essere associate a strutture separate. 

Alcune delle strutture citoplasmatiche, chiamate anche organuli, sono avvolte da una membrana che presenta una composizione simile a quella della membrana plasmatica, ma con variazioni nel tipo e nella quantità di fosfolipidi e proteine, adattamenti necessari per eseguire le loro funzioni specifiche. Nelle cellule eucariote animali, le principali strutture citoplasmatiche includono:  
- reticolo endoplasmatico  
- apparato di Golgi  
- mitocondri  
- centrioli  
- ribosomi  
- lisosomi  
- citoscheletro  
- ciglia e flagelli   

Il reticolo endoplasmatico è una struttura cellulare costituita da una rete intricata di tubuli, sacchi e canali interconnessi, che si collegano alla membrana nucleare. 

Esistono due varianti di reticolo endoplasmatico: quello ruvido, che rappresenta un'estensione della membrana nucleare ed è caratterizzato dalla presenza di milioni di piccoli granuli chiamati ribosomi sulla sua superficie esterna, coinvolti nella sintesi delle proteine, e quello liscio, privo di ribosomi e deputato alla produzione di lipidi. Lo spazio racchiuso tra le membrane ripiegate di entrambi i tipi di reticolo endoplasmatico svolge la funzione di deposito e trasferimento di molecole all'interno della cellula.

I ribosomi sono i siti deputati alla sintesi proteica, cioè al processo di assemblaggio degli amminoacidi per la formazione delle proteine. Sono organizzati in due subunità di dimensioni differenti, composte da acido ribonucleico (RNA) e proteine. Possono essere legati al reticolo endoplasmatico ruvido, nel qual caso producono proteine destinate alla secrezione extracellulari, oppure presenti liberamente nel citoplasma, dove sintetizzano proteine utilizzate internamente dalla cellula.

L'apparato di Golgi è un organello cellulare caratterizzato da una serie di tubuli appiattiti al centro e dilatati alle estremità, disposti in maniera sovrapposta e terminanti in strutture a fondo cieco. Esso svolge un ruolo cruciale nella modifica, accumulo e smistamento di materiali biologici quali ormoni, proteine e lipidi, destinati ad altre regioni della cellula oppure all'espulsione verso l'ambiente extracellulare. Per facilitare questi processi, dalle estremità delle sacche appiattite si originano vescicole di trasporto che migrano verso la membrana plasmatica, con la quale si fondono, permettendo il rilascio del loro contenuto all'esterno della cellula.

I lisosomi, invece, sono costituiti vescicole originate dall'apparato di Golgi e sono caratterizzati dalla presenza di enzimi idrolitici capaci di degradare macromolecole come proteine e lipidi. La loro funzione principale consiste nel riciclaggio di componenti cellulari danneggiati e, in alcuni casi, nella digestione completa di cellule esterne, come i batteri, contribuendo così al mantenimento dell'omeostasi cellulare.

I mitocondri sono organelli citoplasmatici di forma tondeggiante o ovoidale, caratterizzati da una struttura delimitata da una doppia membrana. La membrana interna, ripiegata su sé stessa, genera delle prominenze denominate creste mitocondriali, che incrementano significativamente la superficie disponibile all'interno dell'organello. Lo spazio racchiuso dalla membrana interna prende il nome di matrice mitocondriale, mentre quello situato tra le due membrane costituisce lo spazio intermembranico. 

All'interno dei mitocondri si svolge il processo di respirazione cellulare, fondamentale per l'estrazione dell'energia contenuta nelle sostanze nutrienti, quali zuccheri e lipidi. Questo processo è basato sulla loro ossidazione e demolizione fino alla formazione di molecole di diossido di carbonio e acqua. L'energia liberata durante tale processo viene accumulata sotto forma di ATP (adenosina trifosfato), molecola che funge da principale riserva energetica della cellula. Attraverso l'idrolisi dell'ATP, l'energia viene successivamente resa disponibile per sostenere le attività cellulari. In virtù di questa funzione, le cellule caratterizzate da un metabolismo particolarmente elevato, come quelle muscolari, tendono a possedere una maggiore concentrazione di mitocondri; al contrario, i globuli rossi ne sono totalmente privi.

Un aspetto distintivo dei mitocondri è la loro capacità di autoreplicazione, resa possibile dalla presenza di DNA mitocondriale, ribosomi e una dotazione completa di molecole necessarie alla duplicazione del materiale genetico. Tale caratteristica è necessaria poiché la durata funzionale dei mitocondri è limitata a pochi giorni, richiedendo quindi una continua produzione di nuovi organelli. La loro formazione avviene tramite un processo di gemmazione dal mitocondrio primitivo: si originano vescicole dotate di doppia membrana che racchiudono il DNA mitocondriale e altre componenti essenziali per garantire l'autonomia dell'organello neoformato.

Gli organuli sono circondati e supportati da una rete di fibre proteiche, nota come citoscheletro. Questa struttura non solo offre sostegno alle cellule prive di pareti rigide, ma svolge anche un ruolo fondamentale nella divisione cellulare e nei movimenti degli organuli, oltre che dell'intera cellula. Il citoscheletro non è una componente rigida e permanente, poiché le fibre che lo compongono vengono costantemente assemblate e smontate. Esso si suddivide in tre categorie principali in base alle dimensioni delle fibre: i microfilamenti, con un diametro di 5-7 nm; i filamenti intermedi, con un diametro di 8-10 nm; e i microtubuli, strutture cave con un diametro di circa 25 nm, che formano anche i centrioli, le ciglia e i flagelli.

I centrioli sono strutture cilindriche cave composte da nove triplette di microtubuli fusi tra loro. Si trovano in tutte le cellule animali, dove ne sono presenti due per cellula, e in alcune cellule vegetali. Durante la divisione cellulare, i centrioli giocano un ruolo cruciale nel garantire la corretta distribuzione dei cromosomi tra le due cellule figlie.

Le ciglia e i flagelli sono delle appendici cellulari filiformi e dotate di motilità, caratterizzate da una struttura comune composta da nove coppie di microtubuli disposti perifericamente a formare un anello attorno a due microtubuli centrali. Queste due strutture differiscono principalmente per la lunghezza e per il numero con cui si manifestano sulla membrana plasmatica. 

Le ciglia sono generalmente corte, con dimensioni comprese tra 10 e 25 µm, e risultano presenti in gran numero. I flagelli, al contrario, sono più lunghi, raggiungendo dimensioni tra 50 e 75 µm, ma si trovano in quantità ridotta. I loro movimenti sincronizzati svolgono funzioni fondamentali: nel caso della cellula, favoriscono il suo spostamento nell'ambiente circostante; nel liquido extracellulare, contribuiscono alla generazione di correnti che inducono un trasporto costante delle particelle sospese.

== La cellula vegetale

La cellula vegetale è dotata di alcune strutture uniche, tra cui la parete cellulare e organuli specifici come i plastidi (inclusi i cloroplasti) e i vacuoli.

La parete cellulare, situata esternamente alla membrana plasmatica, è composta principalmente da polisaccaridi, in particolare cellulosa. Questa struttura fornisce sostegno e forma alla cellula vegetale.

I plastidi sono organuli racchiusi in una doppia membrana e si distinguono in cloroplasti, cromoplasti e leucoplasti, a seconda del colore e della funzione che svolgono.

I cloroplasti sono fondamentali per il supporto energetico della cellula. Svolgono la fotosintesi, un processo che consente di catturare l'energia solare grazie alla clorofilla, un pigmento verde contenuto in un sistema complesso di membrane chiamate tilacoidi, immerse nello stroma. Questi tilacoidi si organizzano in pile dette grani. L'energia solare accumulata viene utilizzata da altre molecole per sintetizzare glucosio a partire da diossido di carbonio e acqua. Similmente ai mitocondri, i cloroplasti dispongono di ribosomi e di un proprio DNA.

I cromoplasti, invece, contengono il pigmento carotene, di colore rosso-arancione. Si trovano nei fiori e nei frutti e hanno la funzione di attrarre insetti per favorire l'impollinazione. I leucoplasti sono organuli privi di pigmenti e appaiono bianchi. Sono presenti, ad esempio, nei tuberi dove immagazzinano sostanze di riserva come l'amido, prodotto dalla trasformazione degli zuccheri derivanti dalla fotosintesi.

I vacuoli sono cavità che fungono da depositi per acqua, sostanze nutritive o prodotti di scarto. Nelle cellule vegetali, spesso si trova un grande vacuolo centrale pieno d'acqua, che può occupare fino al 90% dello spazio interno. Questo vacuolo esercita pressione sulla membrana plasmatica, contribuendo a mantenere la cellula turgida.

== Il differenziamento delle cellule negli organismi pluricellulari

Negli organismi unicellulari, l'unica cellula presente è responsabile di svolgere autonomamente tutte le funzioni indispensabili alla sopravvivenza dell'organismo. Di conseguenza, le modificazioni della forma sono temporanee, legate alle condizioni ambientali e reversibili. Al contrario, negli organismi pluricellulari le cellule si differenziano, assumendo forme molto varie e caratteristiche che corrispondono a funzioni specifiche e altamente specializzate.

Il processo di differenziamento cellulare è irreversibile: una cellula che si specializza perde la capacità di svolgere altre funzioni generali o di assumere nuove specializzazioni. Ad esempio, le cellule nervose non sono in grado di replicarsi. In certi casi, alcune strutture della cellula possono persino scomparire; nei globuli rossi maturi del sangue, ad esempio, il nucleo, i mitocondri e i ribosomi vengono eliminati. Tuttavia, le cellule differenziate acquisiscono nuove funzioni e caratteristiche: i globuli rossi accumulano grandi quantità di emoglobina, una proteina essenziale per il trasporto di ossigeno.

Per garantire un efficace funzionamento dell'organismo pluricellulare, è fondamentale che le cellule interagiscano costantemente tra loro e operino in modo coordinato. A tal fine, quelle specializzate in una determinata funzione si organizzano formando tessuti. I tessuti, a loro volta, si combinano per generare organi deputati a specifiche attività. L'unione di più organi può costituire un apparato o un sistema che collabora per svolgere funzioni complesse. Un apparato è composto da organi eterogenei, basati su tessuti differenti, come il naso e i polmoni nell'apparato respiratorio. Un sistema, invece, comprende organi che condividono lo stesso tipo di tessuto, come il cervello e i nervi nel sistema nervoso.

Ogni apparato e sistema ha il compito di svolgere una funzione ben definita; tuttavia, l'insieme del loro lavoro è perfettamente integrato per mantenere l'organismo in equilibrio. Questo permette di stabilizzare le condizioni interne necessarie alla vita delle cellule e al loro corretto funzionamento, garantendo così la sopravvivenza dell'organismo nel suo complesso.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Apparato e sistema: Gruppo di organi che cooperano per svolgere una funzione comune.  

/ Cellula: Unità strutturale e funzionale degli organismi viventi.  

/ Cellula eucariote: Cellula in cui il materiale genetico è racchiuso in un nucleo ben definito; organismi come protisti, funghi, piante e animali sono costituiti da cellule eucariotiche.  

/ Cellula procariote: Cellula in cui il materiale genetico non è contenuto in un nucleo separato; batteri e altri microrganismi sono formati da cellule procariotiche.  

/ Citoplasma: Parte della cellula racchiusa nella membrana plasmatica e circostante il nucleo; include varie strutture citoplasmatiche e il citosol.  

/ Differenziamento cellulare: Processo tipico degli organismi pluricellulari, durante il quale le cellule assumono forme specifiche e funzioni altamente specializzate.  

/ Membrana plasmatica: Rivestimento esterno della cellula, semipermeabile, costituito da un doppio strato di fosfolipidi contenente molecole proteiche integrate.  

/ Nucleo: Zona della cellula che ospita l'informazione genetica (DNA) e dirige le sue funzioni.  

/ Organo: Gruppo di tessuti specializzati che collaborano per eseguire una determinata funzione.  

/ Tessuto: Aggregato di cellule simili che operano per svolgere lo stesso tipo di funzione.  