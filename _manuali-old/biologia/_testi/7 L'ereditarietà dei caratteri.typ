#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Fin dai tempi più remoti, praticando l'allevamento degli animali e la coltivazione delle piante, l'umanità ha avuto modo di osservare le somiglianze e le differenze tra genitori e figli. Grazie a queste osservazioni, è emersa l'opportunità di migliorare razze e raccolti selezionando e incrociando le varietà di animali e piante che presentavano caratteristiche più vantaggiose. Sebbene fosse già evidente che i tratti morfologici e fisiologici si trasmettessero di generazione in generazione, il processo responsabile di tale trasmissione è rimasto sconosciuto fino alla fine del XIX secolo. Solo in tempi relativamente recenti, questo fenomeno è diventato oggetto di studio di una disciplina specifica: la genetica.]

== Che cos'è la genetica

La genetica è la disciplina scientifica che si occupa di studiare i processi di ereditarietà, ovvero il modo in cui le caratteristiche biologiche (denominate "caratteri") vengono tramandate da una generazione all'altra nelle diverse specie vegetali e animali. In particolare, questa scienza analizza il genoma, l'insieme delle informazioni genetiche degli organismi viventi, i cui elementi essenziali sono i cromosomi e i geni. I geni, segmenti funzionali di DNA, sono responsabili della sintesi di specifiche proteine e, di conseguenza, della manifestazione dei caratteri ereditari. Questi geni vengono trasferiti da una generazione alla successiva attraverso il processo riproduttivo.

La genetica classica ha origine nella seconda metà dell'Ottocento grazie alle ricerche del biologo boemo Gregor Mendel sulle piante di pisello. Nei primi decenni del Novecento, essa si è poi evoluta mediante esperimenti condotti sul moscerino dell'aceto. Negli anni '40, con la scoperta che il DNA costituisce la base materiale dell'eredità genetica, nasce la genetica molecolare. A partire dagli anni '70, l'applicazione delle tecniche della biologia molecolare ha permesso la manipolazione del materiale genetico, segnando l'inizio dell'ingegneria genetica.

L'importanza della genetica si riflette nello sviluppo di discipline specializzate all'interno della biologia, come la citogenetica (che studia gli aspetti genetici legati alla struttura cellulare), la genetica dei microrganismi e delle piante, la genetica dello sviluppo e la genetica umana.

#figure(
  caption: [I sette caratteri studiati da Mendel],
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
    table.header[][Carattere dominante][Carattere recessivo],
    [forma del seme], [liscio], [rugoso],
    [colore del seme], [giallo], [verde],
    [forma del baccello], [liscio], [rugoso],
    [colore del baccello], [verde], [giallo],
    [colore del fiore], [porpora], [bianco],
    [posizione del fiore], [all'ascella delle foglie], [all'apice dei rami],
    [altezza della pianta], [alta], [bassa],
)  
)


== Gli incroci di Mendel

La scelta delle piante di pisello da parte di Mendel per i suoi esperimenti derivò da una meticolosa osservazione e non fu affatto casuale. Egli notò che queste piante si distinguevano per diversi tratti distintivi, ciascuno dei quali si manifestava in due forme alternative. Inoltre, la struttura del fiore facilita il processo di autoimpollinazione, in cui il polline fertilizza l'ovulo dello stesso fiore. Questo meccanismo garantisce che le piante generate conservino stabili le caratteristiche originarie, in quanto non interviene materiale ereditario proveniente da altre piante. Nel caso in cui questa autoimpollinazione si perpetui per numerose generazioni, si ottiene quella che è definita una linea pura.

Mendel condusse esperimenti incrociando piante di pisello appartenenti a due linee pure (P), differenti per un singolo carattere, dando luogo a un incrocio monoibrido. La prima generazione filiale (F1) risultò composta esclusivamente da piante fenomenologicamente identiche, che esprimevano solo il carattere di uno dei due genitori. Mendel definì gli individui della F1 come "ibridi", in quanto derivanti dall'incrocio tra due linee pure. 

Successivamente, incrociando tra loro gli individui della F1, Mendel ottenne la seconda generazione filiale (F2), che si rivelò composta per tre quarti da piante con lo stesso carattere dominante della F1 e per un quarto da piante che riacquistavano il carattere presente nella generazione parentale P, apparentemente assente nella F1. Il carattere riconfermato nella F2 fu designato come "recessivo" (dal latino ''recedere'', ovvero "ritirarsi"), mentre quello predominante fu definito "dominante".

Mendel estese il suo studio anche agli incroci diibridi, esaminando contemporaneamente due caratteri. Anche in questo caso, i risultati furono coerenti con le osservazioni precedenti: nella F1 emergevano esclusivamente le varianti dominanti di entrambi i tratti, mentre nella F2 la distribuzione fenotipica seguì proporzioni specifiche. Mendel ottenne: 1/16 di individui con entrambe le varianti recessive, 9/16 con entrambe le varianti dominanti, 3/16 con una variante dominante accompagnata da una recessiva e altri 3/16 con la variante opposta dominante e recessiva.

#note(bottom)[== *🧩* Mendel, il fondatore della genetica <senza_numero>
// Da rimuovere e sostituire con un altro approfondimento
Gregor Mendel (1822-1884) era un monaco del monastero di Brno (nell'attuale Repubblica Ceca), con una vasta cultura matematica acquisita all'università di Vienna. Per dieci anni, dal 1854 al 1864, egli coltivò e studiò i meccanismi dell'eredità di circa 28.000 piante di Pisum sativum, dalle quali era stato attratto per la presenza di alcuni caratteri che si presentavano in due forme alternative (il colore del seme, giallo o verde; il bacello, liscio o rugoso; i fiori, ascellari o apicali ecc.).
Mendel non fu il primo a compiere studi di questo tipo, ma ebbe alcune intuizioni che gli permisero di introdurre degli elementi di novità: la scelta di un numero elevatissimo di individui per seguire gli esperimenti nel corso di numerose generazioni; l'analisi di un solo carattere per volta; l'interpretazione statistica dei risultati; l'uso di simboli per esprimere in modo chiaro e schematico gli incroci.
L'opera di Mendel, sebbene pubblicata e inviata alle principali società scientifiche del tempo, fu ignorata fino al 1900, quando tre studiosi di scienze biologiche, l'olandese H. de Vries, il tedesco K.E. Correns e l'austriaco E. Tschermak, l'uno indipendentemente dall'altro, riscoprirono i risultati di Mendel e ne riconobbero l'importanza.]

== Le tre leggi di Mendel

Gli esperimenti condotti portarono Mendel a enunciare alcune conclusioni fondamentali, da cui derivano le tre leggi che costituiscono il fondamento della genetica moderna:
- i caratteri non si mescolano negli ibridi ma conservano integralmente la propria identità.
- ogni carattere è determinato da una coppia di "fattori" ereditari, trasmessi individualmente da ciascun genitore tramite i gameti. Sebbene inizialmente Mendel non conoscesse la natura di questi fattori, oggi sappiamo che si tratta dei geni localizzati nei cromosomi, presenti in due forme alternative chiamate alleli. Di questi, uno prevale sull'altro: l'allele dominante maschera la presenza dell'allele recessivo nella generazione F1.
- durante la meiosi, ogni coppia di cromosomi omologhi (uno di origine materna e uno paterna) si separa in modo tale che ciascun gamete contenga un solo cromosoma. Pertanto, ogni spermatozoo o cellula uovo possiede un unico allele relativo a ciascun carattere.
- in seguito alla fecondazione, i gameti si combinano casualmente ripristinando le coppie cromosomiche e, di conseguenza, le coppie alleliche.
- gli individui sono definiti *omozigoti* qualora possiedano alleli identici per un dato carattere (sia entrambi dominanti che entrambi recessivi). Sono invece eterozigoti se presentano due alleli divergenti (dominante e recessivo). Gli omozigoti producono solo una tipologia di gameti, mentre gli eterozigoti possono generarne due varianti.

Le leggi di Mendel trovano applicazione sia nel regno vegetale che animale. Anche molti tratti umani seguono tali regole di ereditarietà: la pigmentazione scura dei capelli, i capelli crepi, gli occhi scuri, il naso aquilino sono caratteri dominanti rispetto le altre corrispettive varianti. 

=== La legge della dominanza dei caratteri o della uniformità degli ibridi
Compiendo incroci fra individui che differiscono per un solo carattere, si producono alla prima generazione ibridi tutti uguali. Ponendo delle lettere dell'alfabeto agli alleli, nello specifico indicando con A il carattere dominante e con a il carattere recessivo, nell'incrocio di due linee pure si otterrà:

- generazione parentale P: AA ⨯ aa
- gameti di P: A A a a
- prima generazione filiale F#sub[1]: tutti Aa

=== Legge della segregazione

Alla seconda generazione, ottenuta dall'incrocio tra gli ibridi della prima, si verifica la separazione (segregazione) degli alleli che determinano un particolare carattere. Questi alleli vengono distribuiti ai gameti in modo diverso, portando alla formazione di una progenie composta da individui con caratteristiche distinte. In particolare, si osserva che il 25% degli individui manifesta il carattere recessivo, mentre il rimanente 75% presenta il carattere dominante. All'interno di quest'ultimo gruppo, il 66% degli individui risultano essere eterozigoti e il 33% omozigote dominante.

Il termine "fenotipo" si riferisce al complesso dei caratteri osservabili di un individuo, mentre "genotipo" indica la combinazione di alleli che tale individuo possiede. L'analisi degli incroci mostra che il fenotipo dominante viene espresso sia dagli omozigoti dominanti sia dagli eterozigoti. Per identificare con precisione il genotipo di un individuo con fenotipo dominante, si utilizza il test-cross, noto anche come incrocio di controllo. Tale metodo prevede l'accoppiamento con un individuo omozigote recessivo. Se il genitore dal fenotipo dominante è eterozigote, la progenie risulterà equamente distribuita tra individui con fenotipo dominante e recessivo. Nel caso in cui il genitore dominante sia omozigote, tutti i discendenti presenteranno il fenotipo dominante.

=== Legge dell'assortimento indipendente

Quando si incrociano individui che differiscono per due o più caratteri, ciascuna coppia di alleli associata a un dato carattere viene ereditata in maniera completamente indipendente rispetto alle altre. Questa indipendenza nell'assortimento consente la formazione di tutte le possibili combinazioni tra gli alleli delle diverse coppie, contribuendo alla comparsa di nuovi fenotipi. 

Ad esempio, incrociando due individui diibridi con genotipo RrGg, ciascun genitore produce quattro tipi di gameti: RG, Rg, rG e rg. Questi gameti possono combinarsi tra loro in sedici modalità distintive, dando origine a una progenie che riflette la varietà delle combinazioni genetiche derivanti dall'assortimento casuale degli alleli.

== Le eccezioni alle leggi di Mendel

#figure(
  caption: [Alleli e gruppi sanguigni umani],
  table(
    stroke: 0.5pt + main_tecnologia.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return main_tecnologia // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return main_tecnologia.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: left + horizon,
  columns: (2),
  table.header[Genotipo][Fenotipo],
  [I#super[A]I#super[A]], [gruppo A], 
  [I#super[A]I#super[0]], [gruppo A], 
  [I#super[B]I#super[B]], [gruppo B],
  [I#super[B]I#super[0]], [gruppo B], 
  [I#super[A]I#super[B]], [gruppo AB], 
  [I#super[0]I#super[0]], [gruppo 0], 
)  
)

Non tutti i caratteri seguono la classica relazione di dominanza e recessività, poiché in alcuni casi nessuno dei due alleli prevale sull'altro. In queste situazioni, entrambi gli alleli vengono espressi negli individui della generazione F1, che presentano un fenotipo intermedio rispetto ai genitori.

Un esempio di dominanza incompleta si osserva nei fiori della bocca di leone, dove il colore dei petali è determinato da due alleli: uno per il rosso (R) e l'altro per il bianco (R'). In questo caso, non essendoci un allele recessivo, si utilizza una simbologia diversa negli incroci di dominanza incompleta. Dall'incrocio tra individui RR e R'R', non si producono fiori completamente rossi o bianchi, ma fiori rosa con genotipo RR'. Gli alleli responsabili del colore dei fiori rimangono invariati nella generazione F1, e nella generazione F2 riappaiono fiori sia rossi sia bianchi.

La legge dell'assortimento indipendente, invece, è applicabile solo ai geni situati su cromosomi diversi. Quando due geni si trovano sullo stesso cromosoma (geni concatenati), essi tendono a essere ereditati insieme, soprattutto se disposti vicino sul cromosoma: maggiore è la loro vicinanza, maggiori sono le probabilità che vengano trasmessi congiuntamente. 

Esistono anche caratteri determinati da più di due alleli; ad esempio, il gruppo sanguigno umano viene influenzato da tre alleli: IA, IB e I0. In questo caso, IA e IB sono codominanti, poiché entrambi si manifestano nel fenotipo dell'eterozigote e risultano dominanti rispetto a I0. Dalle combinazioni di questi tre alleli derivano i seguenti fenotipi:

== La determinazione del sesso

Negli esseri umani, come in altri vertebrati e in molti insetti, esiste una coppia di cromosomi distintivi chiamata cromosomi sessuali. Nelle femmine, questa coppia è composta da due cromosomi uguali con una forma a bastoncino (cromosomi X), mentre nei maschi la coppia è formata da due cromosomi diversi: uno è simile a quello delle femmine (X), mentre l'altro è più piccolo e presenta un'estremità a uncino (cromosoma Y).

Durante la formazione delle cellule riproduttive (uova e spermatozoi), i cromosomi sessuali si dividono e ciascun gamete riceve solo uno dei due. Le femmine producono uova identiche contenenti sempre un cromosoma X, mentre i maschi generano due tipologie di spermatozoi: metà con un cromosoma X e metà con un cromosoma Y. Al momento della fecondazione, se l'uovo viene fecondato da uno spermatozoo contenente il cromosoma X, si forma una coppia XX e il nuovo organismo sarà femmina; se invece l'uovo viene fecondato da uno spermatozoo portatore del cromosoma Y, si forma una coppia XY e il nuovo organismo sarà maschio.

Il sesso del nascituro viene pertanto stabilito al momento della fecondazione ed è determinato dal tipo di spermatozoo coinvolto. A differenza di quanto si pensava in passato, non è la madre, ma il padre a influire sul sesso del bambino.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Allele: Le diverse forme alternative di un gene, generalmente due o più.  

/ Carattere dominante: Un carattere che si manifesta in un organismo anche in presenza di un carattere recessivo.  

/ Carattere recessivo: Un carattere che si esprime solo quando il carattere dominante è assente.  

/ Cromosomi sessuali: I cromosomi responsabili della determinazione del sesso di un individuo. Nell'uomo, sono rappresentati dai cromosomi X e Y: il genotipo femminile è XX, mentre quello maschile è XY.  

/ Eterozigote: Individuo il cui genoma include un allele dominante e uno recessivo per un dato carattere.  

/ Fenotipo: L'insieme dei caratteri visibili di un organismo, ovvero l'espressione esteriore dei suoi geni.  

/ Gene: Unità funzionale ereditaria composta da una sequenza di nucleotidi del DNA.  

/ Genetica: La disciplina scientifica che analizza i meccanismi di trasmissione dei caratteri ereditari.  

/ Genoma: L'intero corredo cromosomico di un organismo, corrispondente al suo genotipo completo.  

/ Genotipo: La totalità dei geni presenti in un organismo.  

/ Omozigote: Individuo con due alleli identici, siano essi entrambi dominanti o recessivi, per un determinato carattere. 

