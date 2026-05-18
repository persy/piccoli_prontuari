#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[I fenomeni ondulatori possono essere considerati essenzialialmente un meccanismo attraverso il quale l'energia si propaga nello spazio a partire da una sorgente, senza comportare il trasporto di materia.

La propagazione delle onde riguarda fenomeni come il suono e la luce ed è simile a ciò che accade quando un sasso viene gettato sulla superficie dell'acqua, generando increspature. Tali onde sono caratterizzate da una quantità oscillante, che può variare a seconda del contesto: l'altezza dell'acqua in un'onda marina, la pressione dell'aria in un'onda sonora o l'intensità del campo elettrico e magnetico in un'onda luminosa. 

Mentre la propagazione di alcune onde richiede un mezzo materiale, come l'acqua o l'aria, nel caso delle onde luminose essa può avvenire anche nel vuoto. Tutti i fenomeni legati alla propagazione delle onde possono essere descritti attraverso modelli generali della meccanica ondulatoria, che permettono di spiegare processi come riflessione, rifrazione, diffrazione, interferenza e risonanza.]

== Definizione e tipi di onde

Definiamo un'onda come un'oscillazione generata in un punto che si propaga nello spazio trasportando energia ma non materia. Un esempio classico è costituito dalle onde concentriche prodotte su uno specchio d'acqua dopo avervi gettato un sasso, oppure dalle onde marine causate dal vento. In questi casi, l'acqua perturbata oscilla verticalmente senza spostamento orizzontale della massa; infatti, se ci fosse trasporto di materia, l'acqua si accumulerebbe sulle rive sommergendole, ma ciò non avviene. 

Questa oscillazione verticale può essere osservata facilmente collocando un oggetto galleggiante nella zona perturbata: il corpo non viene trasportato dalle onde, ma segue il movimento oscillatorio. Nonostante possano sembrare molto diverse tra loro, tutti i tipi di onde condividono caratteristiche comuni e possono essere descritti mediante concetti universali.

Ad esempio, il suono si propaga nell'aria attraverso moto ondulatorio; l'oscillazione impressa a una fune si trasmette lungo la sua lunghezza sotto forma di onda; la luce viaggia nello spazio come onde elettromagnetiche. In ogni tipo di onda è presente una grandezza che oscilla, variando periodicamente nel tempo nella zona interessata dalla sua propagazione. 

Nel caso delle onde marine, questa grandezza è rappresentata dall'altezza dell'acqua; nelle onde sonore si tratta della pressione dell'aria; mentre nelle onde elettromagnetiche, è l'intensità dei campi elettrico e magnetico. Nei primi due casi, si verifica la propagazione di energia meccanica, mentre nel terzo caso viene trasportata energia elettromagnetica.



=== Come si classificano le onde

Esistono diversi modi per classificare le onde, a seconda delle proprietà che si desidera mettere in evidenza.

Un primo criterio di classificazione distingue le onde in due categorie in base alla necessità o meno di un mezzo materiale per propagarsi. Le onde meccaniche, dette anche elastiche (come le onde sulla superficie del mare o le onde sonore), richiedono un mezzo attraverso cui muoversi. Le onde elettromagnetiche, invece, come la luce, la radiazione infrarossa (calore) e le onde radio, possono propagarsi anche nel vuoto.

Un secondo criterio di classificazione riguarda il modo in cui le onde si propagano. Esse possono essere trasversali, quando vibrano in direzione perpendicolare rispetto alla direzione di propagazione, oppure longitudinali, quando vibrano in direzione parallela alla direzione di propagazione. Le onde elettromagnetiche e le onde del mare sono esempi di onde trasversali. Le prime si propagano nello spazio, mentre le seconde si spostano orizzontalmente e vibrano verticalmente. Le onde sonore, invece, sono onde longitudinali; si muovono generando compressioni e rarefazioni dell'aria lungo la direzione di propagazione. La superficie che delimita un'onda, definita dai punti equidistanti dalla sorgente della vibrazione, prende il nome di fronte d'onda.

In base alla forma del fronte d'onda, possiamo suddividere le onde in tre categorie: piane, circolari e sferiche. Le onde piane hanno un fronte d'onda rappresentato da una retta, come avviene per le onde del mare in mare aperto e per quelle prodotte nell'acqua da una lamina vibrante.

Le onde circolari, invece, hanno un fronte d'onda a forma di circonferenza. Un esempio classico sono le onde generate quando si getta un sasso in uno stagno: il movimento si propaga in cerchi concentrici attorno al punto d'impatto.

Le onde sferiche si espandono uniformemente in tutte le direzioni nello spazio e hanno un fronte d'onda con forma sferica. Sono esempi di questo tipo le onde sonore e quelle elettromagnetiche.

Persino il movimento delle particelle di materia all'interno dell'atomo e del nucleo può essere descritto come un fenomeno ondulatorio. Le particelle atomiche e subatomiche, infatti, presentano caratteristiche tipiche sia delle onde che delle particelle. Questo comportamento viene definito dualità onda-particella ed è spiegato attraverso i principi della meccanica quantistica.
#figure(
  caption: [Classificazione delle onde.],
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
  columns: (5.2em, 5em, auto, 7em),
  table.header[Suddivisione][Tipi][Caratteristiche][Esempi],
  table.cell(rowspan: 2)[Modo], 
  [trasversali], [vibrano in direzione perpendicolare alla direzione di propagazione], [onde luminose, radio, onde del mare],
  [longitudinali], [vibrano in direzione parallela alla direzione di propagazione], [onde sonore],
  table.cell(rowspan: 2)[Mezzo],
  [meccaniche], [hanno bisogno di un mezzo nel quale propagarsi], [onde sonore, onde del mare],
  [elettromagnetiche], [non hanno bisogno di un mezzo nel quale propagarsi], [onde luminose, radio],
  table.cell(rowspan: 3)[Forma del fronte d'onda],
  [piane], [il fronte d'onda è una retta], [onde del mare],
  [circolari], [il fronte d'onda è una circoferenza], [onde prodotte su uno specchio d'acqua],
  [sferiche], [il fronte d'onda è una sfera], [onde sonore, onde luminose, radio],
)  
)

== Caratteristiche delle onde

Le onde meccaniche, facilmente osservabili, saranno utilizzate qui come riferimento per descrivere il comportamento e le principali caratteristiche di tutte le tipologie di onde. Il moto ondulatorio, indipendentemente dal tipo di onda, può essere descritto attraverso alcune proprietà fondamentali.

La grandezza oscillante, come il livello dell'acqua per le onde marine, il campo elettrico per le onde elettromagnetiche o la pressione dell'aria per le onde sonore, segue un movimento sinusoidale. Questo movimento è rappresentato da una curva chiamata sinusoide, caratterizzata da creste (i punti più alti dell'oscillazione) e ventri (i punti più bassi), che si susseguono continuamente.

I principali parametri che definiscono il moto ondulatorio includono:
- ampiezza dell'onda (_A_): è la variazione massima della grandezza oscillante. Onde con ampiezza maggiore trasportano più energia. Per produrre un'onda con ampiezza elevata è necessario compiere un lavoro maggiore. Ad esempio, venti più intensi generano onde più alte sulla superficie del mare e, in modo analogo, esercitando più forza quando si imprime un movimento a una fune si ottiene un'oscillazione con ampiezza maggiore.
- lunghezza d'onda (_λ_): è definita come la distanza minima (espressa in metri) tra due creste o due ventri consecutivi.
- periodo (_T_): è l'intervallo di tempo (misurato in secondi) durante il quale si completa un'oscillazione. Corrisponde al tempo necessario affinché l'onda ritorni nella stessa posizione, come il tempo tra due creste o due ventri successivi.
- frequenza (_ν_): corrisponde al numero di oscillazioni compiute in un secondo. Si misura in hertz (simbolo Hz), dove 1 Hz equivale a 1 oscillazione al secondo (s#super[-1]). La frequenza è l'inverso del periodo: 
  $ 
    f = 1/T
  $
- velocità di propagazione dell'onda (_v_): indica la velocità con cui l'oscillazione si muove lungo la direzione di propagazione. Poiché in un periodo (_T_) l'onda percorre una distanza pari alla sua lunghezza d'onda (λ), il rapporto tra velocità, lunghezza d'onda e frequenza è espresso dalla relazione: 
  $ 
    v = lambda/T
  $
  oppure alternativamente 
  $ 
    v = λ dot nu
  $
  considerando che $nu = 1/T$.

Questo implica che, a velocità di propagazione costante, onde con lunghezza d'onda maggiore avranno frequenze più basse, mentre onde con lunghezza d'onda minore presenteranno frequenze più alte.

La velocità di propagazione di un'onda dipende dal mezzo in cui si propaga. Onde luminose e altre onde elettromagnetiche, che non necessitano di un mezzo materiale, viaggiano nel vuoto con velocità estremamente elevate. 

$ 
  v = 3 dot 10^6 "m/s"
$

Questa relazione inversa tra frequenza e lunghezza d'onda caratterizza le onde elettromagnetiche.

== Comportamento delle onde

Quando un'onda incontra un ostacolo lungo il suo percorso o passa da un mezzo di propagazione a un altro differente, si verificano fenomeni comuni sia alle onde elastiche che a quelle elettromagnetiche.

Questi fenomeni includono la riflessione, la rifrazione e la diffrazione. Un ulteriore fenomeno ondulatorio, che si manifesta quando due onde si incontrano, è l'interferenza. 

Inoltre, quando la sorgente di un'onda si muove rispetto a un osservatore, quest'ultimo percepisce modificazioni nelle caratteristiche dell'onda, diverse in base al movimento di avvicinamento o di allontanamento. Questo fenomeno è noto come effetto Doppler.

=== La riflessione

La riflessione si verifica quando un'onda s'imbatte in un ostacolo che non può attraversare e viene quindi rinviata verso la sorgente. 

Un esempio emblematico è dato da un raggio luminoso che colpisce una superficie riflettente o da un'onda marina che incontra una barriera. 

Nel caso di un'onda piana rappresentata con un diagramma a raggi (dove il raggio rappresenta la direzione di propagazione dell'onda), si definisce angolo di incidenza quello formato tra il raggio dell'onda incidente e la retta perpendicolare alla superficie colpita. Analogamente, l'angolo di riflessione è quello formato dal raggio dell'onda riflessa con la stessa perpendicolare. 

Secondo la legge della riflessione, l'angolo di incidenza (_i_) è uguale all'angolo di riflessione (_r_), e entrambi giacciono sul medesimo piano. Inoltre, nel processo di riflessione, l'onda viene capovolta.

Se la riflessione è totale e non c'è assorbimento d'energia, l'energia trasportata dall'onda riflessa risulta identica a quella dell'onda incidente.

=== La rifrazione

La rifrazione avviene quando un'onda attraversa un confine tra due mezzi con densità diversa, causando variazioni nella velocità e nella direzione di propagazione. 

Per esempio, nelle onde superficiali prodotte sull'acqua, la rifrazione si manifesta anche quando l'onda passa da una zona più profonda a una meno profonda, poiché queste zone si comportano come mezzi distinti.

Il fenomeno della rifrazione può essere studiato con strumenti come l'ondoscopio, dotato di una lamina o di una punta vibranti immerse in uno specchio d'acqua. Questi elementi generano rispettivamente onde piane e onde circolari.

Utilizzando una lamina vibrante e facendo transitare l'onda attraverso due zone di diversa profondità, si nota chiaramente la deviazione dell'onda dalla sua traiettoria originaria, accompagnata da una variazione della lunghezza d'onda. In particolare, quando l'acqua diventa meno profonda, la lunghezza d'onda diminuisce.

Poiché esiste una relazione diretta tra lunghezza d'onda e velocità di propagazione, se la lunghezza d'onda diminuisce, anche la velocità di propagazione subisce una riduzione. In generale, se _v#sub[1]_ rappresenta la velocità dell'onda nel primo mezzo e _v#sub[2]_ quella nel secondo mezzo, l'indice di rifrazione relativo del secondo mezzo rispetto al primo (_n#sub[1 2]_) corrisponde al rapporto tra le due velocità.

$ 
  n_(1 2) = v_1/v_2
$

Quando un'onda luminosa passa dal vuoto a un mezzo, come l'aria, il valore dell'indice di rifrazione rispetto al vuoto prende il nome di indice di rifrazione assoluto per quel dato mezzo. 

=== La diffrazione

Il fenomeno della diffrazione si manifesta quando un'onda incontra un ostacolo di dimensioni ridotte o una fenditura stretta su una barriera. Se la dimensione dell'ostacolo o della fenditura è paragonabile alla lunghezza d'onda dell'onda incidente, quest'ultima può aggirare l'ostacolo propagandosi anche nella zona che, teoricamente, dovrebbe essere in ombra.

Ad esempio, quando un'onda piana incontra un ostacolo o una fenditura, attraversa l'apertura, ma emerge dall'altro lato modificando la sua forma: non è più un'onda piana, bensì presenta una curvatura concentrata nei bordi della fenditura.

Nel caso in cui la dimensione della fenditura o dell'ostacolo sia simile alla lunghezza d'onda dell'onda incidente, questa, superato l'ostacolo, dà vita a onde circolari. Tali onde si comportano come se fossero generate da una sorgente collocata nella fenditura o sulla superficie dell'ostacolo stesso.

Un esempio comune di diffrazione riguarda le onde marine che incontrano un palo piantato sul fondale e affiorante al livello dell'acqua: le onde non si limitano a passare oltre l'ostacolo, ma invadono anche lo spazio retrostante. Lo stesso avviene in presenza di moli o frangiflutti. Per quanto riguarda le onde luminose, il fenomeno è particolarmente evidente utilizzando fenditure o ostacoli di dimensioni estremamente ridotte.

=== L'interferenza

L'interferenza, invece, si verifica quando due onde si incontrano lungo il loro cammino. Pensiamo, per esempio, a due sassi lanciati vicini in uno stagno: le onde generate da ciascun sasso si sovrappongono. In modo analogo, quando due barche incrociano le loro traiettorie sul mare, le onde formate dal loro movimento si combinano. Questo fenomeno è regolato dal principio di sovrapposizione: l'onda risultante è ottenuta sommando in ogni istante e in ogni punto gli spostamenti delle due onde originarie, tenendo conto sia dell'intensità sia della direzione. La somma è quindi vettoriale.

Una caratteristica interessante dell'interferenza è che la sovrapposizione delle onde non modifica quelle originarie: oltre la zona di interferenza, infatti, ciascuna onda mantiene le sue proprietà iniziali. Si parla di interferenza costruttiva quando l'unione di due onde genera una terza onda con ampiezza maggiore rispetto alle singole originali. 

Se le due onde hanno identica ampiezza e frequenza e sono in fase, ossia creste e ventri coincidono perfettamente, l'onda risultante mantiene la medesima frequenza delle due iniziali ma con un'ampiezza doppia.

Un caso particolare si verifica con una doppia fenditura: grazie al fenomeno della diffrazione, ciascuna apertura funge da sorgente per onde circolari. Quando le fenditure sono sufficientemente vicine tra loro, oltre al fenomeno della diffrazione si osservano anche effetti di interferenza tra le onde prodotte dalle due fenditure.

Le onde derivanti dai fenomeni di interferenza prodotti dalla diffrazione attraverso una doppia fenditura possono essere osservate, ad esempio, utilizzando un ondoscopio. In questo caso, facendo passare l'acqua attraverso una barriera con doppia apertura della stessa lunghezza della lunghezza d'onda generata dall'onda sullo strumento, si formano delle figure denominate figure di interferenza.

Queste figure di interferenza sono facilmente osservabili anche nel caso delle onde luminose.

Si parla di interferenza distruttiva quando due onde creano un'onda con ampiezza inferiore. Nel caso limite, se le due onde che interferiscono sono in opposizione di fase (le creste di una coincidono con i ventri dell'altra) e hanno ampiezza e frequenza identiche, si annullano completamente, generando un'oscillazione risultante pari a zero.

L'interferenza può avvenire anche con una sola onda, quando questa colpisce un ostacolo e viene riflessa. In tal caso, l'interferenza tra l'onda incidente e quella riflessa genera figure simili a quelle prodotte da due onde distinte.

#notebr[== *🧩* Le onde stazionarie: nodi, antinodi e risonanza <senza_numero>

I nodi sono il risultato di interferenza distruttiva tra onde identiche, mentre gli antinodi sono il risultato di interferenza costruttiva. Le onde stazionarie emergono dall'interferenza tra due onde identiche che viaggiano in direzione opposta. Queste onde sono caratterizzate da punti che rimangono statici (nodi) e punti in cui l'oscillazione raggiunge sempre la sua ampiezza massima (antinodi).

È semplice generare un'onda stazionaria su una corda fissata a un'estremità. Facendo oscillare la corda all'estremità libera, si genera un'onda che si propaga lungo la corda. Quando l'onda raggiunge l'estremità vincolata, viene riflessa invertendo la propria fase rispetto all'onda incidente.

Ogni volta che l'onda raggiunge un'estremità della corda, sia quella vincolata che quella libera, subisce una riflessione con inversione della fase. L'interferenza tra l'onda incidente e quella riflessa genera l'onda stazionaria.

È possibile ottenere onde stazionarie con uno o più nodi; il numero dipende dalla lunghezza d'onda principale. Nei nodi, l'interferenza distruttiva tra l'onda incidente e quella riflessa fa sì che la corda resti immobile, mentre negli antinodi, dove si verifica interferenza costruttiva, la corda oscilla con la massima ampiezza.

La distanza tra due nodi consecutivi in un'onda stazionaria corrisponde alla metà della lunghezza d'onda originaria e le estremità della corda rappresentano sempre due nodi.

Regolando la frequenza con cui si fa oscillare la corda—ad esempio attraverso un vibratore applicato a uno degli estremi—si può modificare la lunghezza d'onda e generare diverse configurazioni di onde stazionarie. Se si regola la lunghezza d'onda in modo che la lunghezza della corda sia esattamente uguale alla metà della lunghezza d'onda originaria, si otterrà un'onda stazionaria con due nodi alle estremità e un unico antinodo al centro.

Se si regola la frequenza in modo che la lunghezza della corda sia pari a λ/2, l'onda stazionaria generata presenta tre nodi: uno al centro e due alle estremità della corda. Inoltre, si formano due antinodi situati a metà strada tra ciascuna coppia di nodi.

Diminuendo gradualmente la frequenza, e quindi aumentando la lunghezza d'onda della vibrazione impressa alla corda, si osservano onde stazionarie ogni volta che la lunghezza della corda risulta essere un multiplo intero di λ/2. Le lunghezze d'onda e le frequenze associate alla formazione di tali onde stazionarie prendono il nome di lunghezze d'onda e frequenze di risonanza.

In corrispondenza di questi valori, si dice che la corda entra in risonanza. Questo fenomeno implica che la corda oscilli con ampiezze relativamente elevate, anche se l'ampiezza dell'oscillazione imposta dal vibratore (o dalla mano) rimane contenuta.

In sintesi, valori specifici della frequenza, chiamati frequenze di risonanza, favoriscono la comparsa di onde stazionarie. Queste onde sono caratterizzate da nodi, dove l'oscillazione è nulla, e da antinodi, dove l'oscillazione raggiunge il massimo. Quando una corda è soggetta a un'onda stazionaria, sembra immobile: i nodi restano fissi mentre gli antinodi vibrano con una determinata ampiezza.

Le frequenze di risonanza dipendono esclusivamente dalla lunghezza del mezzo di propagazione e non dalla natura del materiale. Perciò, è possibile ottenere risonanza facendo vibrare fili metallici o altri tipi di materiali.]

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Ampiezza dell'onda: Massima variazione dell'intensità della grandezza oscillante.

/ Diffrazione: Fenomeno proprio delle onde, che si manifesta quando queste incontrano un ostacolo o un'apertura di dimensioni comparabili alla loro lunghezza d'onda. In tali situazioni, le onde riescono a superare l'ostacolo o l'apertura, propagandosi anche nelle zone d'ombra. Se la dimensione dell'ostacolo equivale alla lunghezza d'onda incidente, l'ostacolo agisce come una sorgente di onde circolari.

/ Frequenza: Numero di oscillazioni compiute dall'onda in un secondo. La frequenza è il reciproco del periodo e viene espressa in hertz (Hz).

/ Fronte d'onda: Superficie che include i punti equidistanti dalla sorgente. In base alla forma del fronte d'onda, le onde possono essere classificate come piane (lineari), circolari (a forma di circonferenza) o sferiche (a forma di sfera).

/ Interferenza: Fenomeno fisico risultante dalla sovrapposizione di due o più onde con la stessa frequenza. Si parla di interferenza distruttiva quando l'onda risultante ha intensità minore rispetto alle originali; al contrario, c'è interferenza costruttiva quando l'intensità dell'onda risultante è maggiore.

/ Lunghezza d'onda: Distanza tra due creste consecutive o due ventri successivi di un'onda.

/ Onda: Oscillazione che si propaga nello spazio, trasportando energia ma non materia. In un'onda vi è una grandezza che oscilla e varia ciclicamente nel tempo e nello spazio.

/ Onde stazionarie: Onde generate dall'interferenza tra più onde e presentano caratteristiche peculiari: vi sono alcuni punti che rimangono fissi (nodi) e altri in cui l'oscillazione raggiunge il massimo valore (antinodi).

/ Periodo:Tempo necessario affinché un'onda completi un'oscillazione, come il passaggio da una cresta alla successiva. Corrisponde all'intervallo temporale per un'oscillazione completa.

/ Riflessione: Fenomeno che si verifica quando un'onda, incontrando un ostacolo, viene riflessa e torna indietro rispetto alla sua direzione iniziale.

/ Rifrazione: Fenomeno che avviene quando un'onda attraversa la superficie di separazione tra due mezzi diversi, subendo una deviazione nella sua traiettoria.

/ Velocità di propagazione: Velocità con cui l'oscillazione si diffonde lungo la direzione di propagazione dell'onda.