#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Con la scoperta dell'elettrone da parte di J.J. Thomson nel 1897, si fece chiarezza sul fatto che l'atomo non fosse, come ipotizzato da Dalton, indivisibile. Anzi, si comprese che esso possiede una struttura interna complessa. Poco dopo, ulteriori studi portarono all'identificazione del protone, un'altra particella subatomica fondamentale.

Nel 1911, il modello planetario elaborato da Rutherford rivoluzionò la comprensione dell'atomo. Questo schema descriveva un nucleo compatto, costituito principalmente da protoni, attorno al quale gli elettroni orbitavano in traiettorie circolari. Successivamente, nel 1932, venne individuata una terza particella subatomica, il neutrone, anch'esso situato nel nucleo atomico.

La teoria quantistica permise ulteriori progressi. Nel 1913, Niels Bohr formulò un modello più sofisticato: gli elettroni non si muovono casualmente, ma seguono orbite specifiche legate a determinati livelli di energia, definiti come "quantizzati". Tuttavia, i limiti teorici del modello di Bohr furono superati grazie agli interventi di brillanti scienziati come De Broglie, Heisenberg e Schrödinger tra il 1924 e il 1927. Questi progressi diedero vita al moderno modello quanto-meccanico dell'atomo.

In questa nuova visione, gli elettroni esibiscono una natura duplice, sia corpuscolare sia ondulatoria. Si muovono all'interno di regioni dello spazio chiamate orbitali, definite da numeri quantici e non da orbite fisicamente tracciabili. La configurazione elettronica degli elementi è oggi determinata seguendo principi che collegano i numeri quantici alle regole della meccanica quantistica.]

== La scoperta delle particelle subatomiche e i modelli atomici di Thomson e di Rutherford

Nella seconda metà dell'Ottocento, le indagini sui fenomeni elettrici aprirono la strada a dubbi sulla storica ipotesi di Dalton che considerava l'atomo indivisibile. La curiosità scientifica fu alimentata da due osservazioni significative: la capacità di alcune soluzioni acquose di condurre elettricità grazie alla presenza di particelle cariche positivamente e negativamente chiamate ioni; e il comportamento dei gas rarefatti nei tubi contenenti elettrodi (anodo e catodo), dove le scariche elettriche generavano radiazioni note come raggi catodici.

Proprio analizzando i raggi catodici, Thomson giunse a una scoperta rivoluzionaria: queste emanazioni sono composte da particelle negative, presenti negli atomi di tutti gli elementi. Queste particelle vennero battezzate "elettroni". L'elettrone rappresenta la carica negativa fondamentale (-1) e ha una massa molto più piccola rispetto a quella dell'atomo.

Nel 1886, un altro fenomeno emerse attraverso l'uso di tubi modificati: si identificarono radiazioni aventi direzione opposta ai raggi catodici, associate a particelle dotate di carica positiva. Questi raggi, chiamati positivi o anodici (noti anche come raggi canale), risultarono costituiti da ioni, ovvero atomi privati delle loro cariche negative. 

Thomson studiò approfonditamente questi raggi anodici e stabilì che la massa delle particelle positive variava a seconda del gas utilizzato nel tubo. Nel caso dell'idrogeno, però, si riscontrava un valore minimo: qui apparivano particelle specifiche identificate come protoni. Oggi sappiamo che il protone è una delle particelle fondamentali dell'atomo. Ha una carica positiva (+1) ed è circa 1836 volte più massiccio dell'elettrone, corrispondendo grosso modo a un'unità di massa atomica. 

=== Il modello atomico di Thomson

Nel 1904, Thomson, basandosi sui dati disponibili, propose un'ipotesi nota come modello atomico di Thomson. Secondo questa teoria, l'atomo era concepito come una massa sferica con cariche elettriche positive distribuite uniformemente, al cui interno erano immersi un numero equivalente di elettroni. Questa configurazione garantiva che l'atomo fosse elettricamente neutro. Tuttavia, il modello di Thomson si rivelò presto insufficiente per spiegare diversi fenomeni fisici.

=== Il modello atomico di Rutherford

Il modello atomico di Rutherford segnò un importante passo avanti nella comprensione della struttura dell'atomo. Nel 1911, il fisico neozelandese Ernest Rutherford condusse un esperimento in cui utilizzò particelle alfa (α), emesse da materiale radioattivo, per bombardare una sottile lamina d'oro. La maggior parte delle particelle α attraversava la lamina senza deviazioni, ma una minima parte subiva deviazioni significative o veniva respinta.

Rutherford concluse che queste deviazioni potevano essere spiegate solo ipotizzando che gli atomi avessero una struttura composta da una zona centrale estremamente piccola e densa, chiamata nucleo, caratterizzata da carica positiva e contenente quasi tutta la massa dell'atomo. Intorno al nucleo, si trovava un ampio spazio in cui gli elettroni ruotavano lungo orbite circolari. Questo modello venne noto come modello atomico planetario o modello di Rutherford. Successivamente, Rutherford stimò che la carica positiva del nucleo corrispondesse al numero di protoni contenuti al suo interno, definendo tale quantità il numero atomico (Z), che in un atomo neutro è pari al numero degli elettroni.

Rutherford osservò inoltre che la massa del nucleo basata sul numero dei protoni era inferiore alla massa effettiva dell'atomo, suggerendo l'esistenza nel nucleo di particelle ulteriori. Nel 1932, il fisico inglese James Chadwick individuò queste particelle, denominate neutroni (n), prive di carica ma con una massa simile a quella del protone. 

In sintesi, un atomo è costituito da un nucleo formato da protoni e neutroni (detti nucleoni), intorno al quale gli elettroni sono disposti in orbite. Un atomo elettricamente neutro ha un numero di protoni (numero atomico Z) uguale al numero di elettroni. Il numero atomico è specifico per ogni elemento, mentre la somma del numero di protoni e neutroni definisce il numero di massa (A).

$ "A = Z + N" $

Ad esempio, il simbolo $#hide[]^(18)_8"O"$ (ossigeno-18) rappresenta il nuclide dell'ossigeno con numero atomico 8 e numero di massa 18.

$ #hide[]^"A"_"Z" "X" $

#figure(
  caption: [Proprietà particelle subatomiche],
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
  columns: (5),
  table.header[Particella][Massa (g)][Massa (u)][Carica \ elettrica][Simbolo],
  [Elettrone], [9,1093897 ⋅ 10#super[-28]], [0,0005486], [1–], [#box[#place(dx: -3pt)[#sub[-1]]#super[0]e], e#super[--]],
  [Protone], [1,672623 ⋅ 10#super[-24]], [1,007276], [1+], [#box[#place()[#sub[1]]#super[0]H], #box[#place()[#sub[1]]#super[1]p]],
  [Neutrone], [1,674929 ⋅ 10#super[-24]], [1,008665], [0], [#box[#place()[#sub[0]]#super[1]n]],
)  
)


== Gli isotopi

Gli isotopi sono atomi dello stesso elemento (con lo stesso numero atomico) ma con differente numero di massa. La maggior parte degli elementi possiede due o tre isotopi. Ad esempio, il carbonio ha isotopi come $#hide[]^"12"_"6" "C"$, $#hide[]^"13"_"6" "C"$ e $#hide[]^"14"_"6" "C"$. La massa atomica di un elemento è calcolata come media ponderata delle masse atomiche dei suoi isotopi e, pertanto, non risulta mai essere un numero intero.

L'abbondanza isotopica indica la percentuale in peso con cui un isotopo si trova in un elemento. Gli isotopi condividono le stesse caratteristiche chimiche poiché queste dipendono dal numero di protoni (e quindi di elettroni), mentre i neutroni non influenzano le proprietà chimiche.

== Il modello quantico di Bohr

Il modello atomico "planetario" di Rutherford, inizialmente rivoluzionario, si dimostrò presto insufficiente per spiegare la complessità degli atomi. Due erano i principali punti deboli: in primo luogo, secondo le leggi dell'elettromagnetismo conosciute all'epoca, gli elettroni in moto lungo orbite circolari avrebbero dovuto perdere energia costantemente attraverso irraggiamento, rallentando progressivamente fino a cadere nel nucleo. Tuttavia, gli atomi si presentano come sistemi stabili, contraddicendo questa previsione. In secondo luogo, il modello non riusciva a collegare le proprietà chimiche degli elementi alla disposizione degli elettroni nello spazio attorno al nucleo.

Nel 1913, il fisico danese Niels Bohr propose un nuovo approccio basato sulla teoria quantistica di Max Planck, con successivi contributi di Albert Einstein. Bohr introdusse un modello secondo il quale gli elettroni possono occupare solo determinate orbite, dette stazionarie, ciascuna caratterizzata da livelli energetici ben definiti e quantizzati.

Secondo Bohr, muovendosi lungo queste orbite stazionarie, gli elettroni non irradiano energia e mantengono la loro stabilità. Ogni orbita è identificata da un numero quantico principale ($n$), che assume valori interi ($n = 1, 2, 3, 4…$) e determina il livello energetico dell'elettrone. Per esempio, il livello con $n = 1$ corrisponde al livello fondamentale, cioè quello a energia più bassa.

Se un elettrone riceve energia sufficiente per compiere un "salto" da un livello energetico inferiore ($E_1$) a uno superiore ($E_2$), questa differenza di energia ($Delta E = E_2 - E_1$) deve coincidere esattamente con la quantità di energia fornita al sistema. Una volta cessata l'eccitazione, l'elettrone torna al livello originario emettendo la stessa quantità di energia sotto forma di radiazione elettromagnetica.

Nel 1915, il fisico tedesco Arnold Sommerfeld ampliò il modello di Bohr introducendo l'idea di orbite ellittiche accanto a quelle circolari. Questa modifica si rivelò fondamentale per descrivere più precisamente la struttura degli atomi complessi, con più di un elettrone. Sommerfeld introdusse anche il numero quantico secondario ($l$), che può assumere valori interi da $0$ a $n - 1$ e definisce la forma delle orbite. Inoltre, per descrivere l'orientamento delle orbite nello spazio, venne introdotto un numero quantico magnetico ($m$), che può variare tra $-l$ e $+l$, includendo anche lo zero.

Successivamente, nel 1924, Walter Pauli aggiunse un quarto numero quantico: il numero di spin ($m_s$), che rappresenta il senso di rotazione dell'elettrone intorno al proprio asse. Questo valore può essere $+1/2$ o $-1/2$ e contribuì a chiarire ulteriormente il comportamento degli elettroni nell'atomo.

#note(bottom)[== *🧩* Quanti e spettri di emissione <senza_numero>

Nel 1900 il fisico tedesco Max Planck formulò una teoria rivoluzionaria secondo cui la luce e qualsiasi forma di energia radiante non vengono scambiate in modo continuo dai corpi materiali, ma sotto forma di piccole quantità discrete chiamate quanti. I quanti di luce presero il nome di fotoni.

L'energia $E$ associata a ciascun quanto è descritta dalla seguente relazione matematica:

$ E = h v $

dove $v$ è la frequenza della radizione e $h$ una costante detta costante di Planck, pari a 6,63 ⋅ 10–34 Js.

Bohr giunse alla formulazione del suo modello atomico interpretando i risultati dello spettro di emissione dell'idrogeno, il più semplice degli atomi, alla luce della teoria di Planck. Lo spettro di emissione di un atomo è costituito dall'insieme delle radiazioni emesse quando i suoi elettroni, inizialmente eccitati a livelli energetici superiori rispetto allo stato fondamentale (il livello minimo di energia), tornano a quest'ultimo. 

Analizzando spettroscopicamente le radiazioni provenienti dall'atomo di idrogeno in stato eccitato, Bohr notò che queste erano caratterizzate da frequenze ben definite, formando spettri a righe. Il ritorno degli elettroni allo stato fondamentale avveniva attraverso salti energetici precisi e, per ogni salto tra due livelli $E_2$ ed $E_1$, veniva emessa una radiazione con una frequenza specifica, corrispondente a una determinata quantità di energia $Delta E$.

Un salto energetico più grande corrisponde a una frequenza maggiore della radiazione emessa.]

== Il modello quanto-meccanico di atomo

La teoria di Bohr, nota anche come teoria di Bohr-Sommerfeld, lasciava irrisolti numerosi problemi.

Nel 1924, il fisico francese Louis De Broglie avanzò l'ipotesi che, analogamente a quanto postulato per i fotoni o quanti di luce (Einstein, 1905), anche gli elettroni possiedano una duplice natura: ondulatoria e corpuscolare. 

Questa teoria, successivamente confermata sperimentalmente, stabilisce che ad ogni particella con massa $m$ (espressione della sua natura corpuscolare) possa essere associata una lunghezza d'onda $lambda$ (espressione della natura ondulatoria), secondo la relazione:

$ lambda = h / (m dot.c v) $ 

dove $v$ rappresenta la velocità della particella e $h$ la costante di Planck.

Nel 1927, il fisico tedesco Werner Heisenberg formulò il principio di indeterminazione, secondo il quale è impossibile determinare contemporaneamente la velocità e la posizione di un elettrone. 

Questa scoperta mise in discussione il modello di Bohr, che attribuiva orbite precise agli elettroni, introducendo invece la possibilità di definire una regione intorno al nucleo dove è più probabile trovare l'elettrone. In quegli stessi anni, il fisico austriaco Erwin Schrödinger, approfondendo l'idea proposta da De Broglie, sviluppò un'equazione matematica nota come equazione d'onda di Schrödinger. La soluzione di questa equazione consente di rappresentare l'elettrone come una nube di carica negativa la cui densità varia in base alla distanza dal nucleo e alla direzione considerata.

La regione dello spazio intorno al nucleo in cui è massima la probabilità di trovare l'elettrone è chiamata orbitale atomico. Nella teoria quantistica, gli orbitali sono descritti attraverso i numeri quantici $n$, $l$, $m$ e $m_s$, che presentano un significato analogo ai parametri utilizzati nella teoria di Bohr-Sommerfeld.
#v(3em)
== Numeri quantici e livelli energetici

#figure(
  caption: [Valori $l$ e corrispondenti \ sottolivelli energetici],
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
  table.header[Valore di $l$][Simbolo],
  [0], [s],
  [1], [p],
  [2], [d],
  [3], [f],
  [4], [g],
)  
)

I numeri quantici $n$, $l$ e $m$ identificano gli orbitali occupati dagli elettroni in un atomo. Il numero quantico principale n determina il livello di energia dell'elettrone e la dimensione dell'orbitale. Può assumere valori interi positivi come $n = 1, 2, 3, 4, 5, 6…$ Il numero quantico secondario l definisce il numero di sottolivelli in cui si suddivide ogni livello energetico. Ogni sottolivello comprende orbitali della stessa forma che dipende dal valore assegnato a $l$, compreso tra $0$ e $n - 1$. I sottolivelli sono indicati con lettere minuscole secondo lo schema a lato. Di conseguenza, si parla di orbitali $s$, $p$, $d$ e così via.

Il numero quantico magnetico m stabilisce il numero di orbitali presenti in ciascun sottolivello e ne identifica l'orientamento nello spazio. Gli orbitali di uno stesso sottolivello sono degeneri (isoenergetici). Il valore di $m$ varia tra $-l$ e $+l$, includendo lo zero. Per esempio, nel caso di $l = 1$, $m$ può assumere i valori $-1$, $0$ e $+1$. Il sottolivello p comprende dunque tre orbitali degeneri orientati lungo gli assi cartesiani: $p_x$, $p_y$ e $p_z$.

Il numero quantico di spin ms descrive il senso della rotazione dell'elettrone attorno al proprio asse, che può essere orario o antiorario. Esso assume esclusivamente i valori $+1/2$ o $-1/2$. Ogni orbitale può accogliere al massimo due elettroni con spin opposto, formando così un doppietto elettronico.

#figure(
  caption: [Relazioni tra valiri di $n$, $l$, $m$ e rispettivi orbitali#footnote[Si noti che nel livello $n$-esimo vi siano $n$ sottolivelli e $n^2$ orbitali.]],
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
  align: center + horizon,
  columns: (5),
  table.header[$bold(n)$][$bold(l)$][$bold(m)$][nome \ sottolivello][numero di orbitali \ del sottolivello],
  [1], [0], [0], [1s], [1],
  [2], [0 \ 1], [0 \ -1, 0, +1], [2s \ 2p], [1 \ 3],
  [3], [0 \ 1 \ 2], [0 \ -1, 0, +1 \ -2, -1, 0, +1, +2], [3s \ 3p \ 3d], [1 \ 3 \ 5],
  [4], [0 \ 1 \ 2 \ 3], [0 \ -1, 0, +1 \ -2, -1, 0, +1, +2 \ -3, -2, -1, 0, +1, +2, +3], [4s \ 4p \ 4d \ 4f], [1 \ 3 \ 5 \ 7],
)  
)


== Configurazioni elettroniche

La configurazione elettronica di un atomo rappresenta lo schema di distribuzione dei suoi elettroni nei vari orbitali atomici. Per determinare la configurazione elettronica di un atomo con numero atomico $Z$ nel suo stato fondamentale, ovvero lo stato a energia più bassa, gli $Z$ elettroni vengono inseriti progressivamente, seguendo alcune regole fondamentali:

- Gli elettroni occupano inizialmente gli orbitali disponibili con energia più bassa. È importante notare che gli orbitali $3d$ hanno un'energia superiore rispetto agli orbitali $4s$, motivo per cui vengono riempiti successivamente.
- In un atomo non possono esistere due elettroni con identici valori per tutti e quattro i numeri quantici. Pertanto, su uno stesso orbitale, identificato dai valori di $n$, $l$ e $m$, è possibile collocare al massimo due elettroni con spin opposto.
- Quando più elettroni occupano orbitali degeneri, si distribuiscono con spin paralleli sul massimo numero possibile di tali orbitali, secondo la regola di Hund o principio della massima molteplicità.

// TODO immagine riempimento orbitali
Per rappresentare la configurazione elettronica di un elemento, si indicano i livelli energetici occupati scrivendo il valore di $n$ seguito da lettere che identificano i sottolivelli, accompagnate da un numero posto in alto a destra che indica il numero di elettroni presenti in quel sottolivello. Ad esempio, nella rappresentazione simbolica $1s^2$, "1" è il numero quantico principale che rappresenta il livello energetico, $s$ indica il tipo di orbitale (sottolivello) e $#hide[]^2$ il numero di elettroni contenuti in quel sottolivello.

La configurazione elettronica può essere raffigurata anche con un diagramma orbitale: ogni orbitale viene rappresentato da un quadratino, e gli elettroni con spin opposto sono indicati tramite frecce orientate in direzioni opposte. Per quanto riguarda gli elettroni di valenza, ossia quelli del livello energetico più esterno e mai più di otto, si utilizzano i simboli di Lewis. Qui i puntini attorno al simbolo dell'elemento rappresentano tali elettroni. Per esempio: $space #skeletize({
 fragment("N", lewis:(
 lewis-single(),
 lewis-single(angle: 90deg),
 lewis-double(angle: 180deg),
 lewis-single(angle: -90deg)
 ))
}) 
quad 
#skeletize({
 fragment("O", lewis:(
 lewis-single(),
 lewis-double(angle: 90deg),
 lewis-double(angle: 180deg),
 lewis-single(angle: -90deg)
 ))
}) 
quad
#skeletize({
 fragment("F", lewis:(
 lewis-single(),
 lewis-double(angle: 90deg),
 lewis-double(angle: 180deg),
 lewis-double(angle: -90deg)
 ))
})
quad
#skeletize({
 fragment("Ne", lewis:(
 lewis-double(),
 lewis-double(angle: 90deg),
 lewis-double(angle: 180deg),
 lewis-double(angle: -90deg)
 ))
})$

// TODO Tabella configurazione elettronica N, O, F, Ne
#figure(
  caption: [Rappresentazione della configurazione elettronica di azoto, ossigeno, fluoro e neon.],
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
  columns: (4),
  table.header[Elemento][Z][Configurazione \ elettronica][Diagramma orbitale],
  [Azoto], [7], [1s#super[2] 2s#super[2] 2p#super[3]], [1s#super[2] #math.arrows.tb \ 2s#super[2] #math.arrows.tb \ 2p#super[1]#sub[x]  2p#super[1]#sub[y] 2p#super[1]#sub[z] #math.arrow.t #math.arrow.t #math.arrow.t],
  [Ossigeno], [8], [1s#super[2] 2s#super[2] 2p#super[4]], [1s#super[2] #math.arrows.tb \ 2s#super[2] #math.arrows.tb \ 2p#super[2]#sub[x] 2p#super[1]#sub[y] 2p#super[1]#sub[z] #math.arrows.tb #math.arrow.t #math.arrow.t],
  [Fluoro], [9], [1s#super[2] 2s#super[2] 2p#super[5]], [1s#super[2] #math.arrows.tb \ 2s#super[2] #math.arrows.tb \ 2p#super[2]#sub[x] 2p#super[2]#sub[y] 2p#super[1]#sub[z] #math.arrows.tb #math.arrows.tb #math.arrow.t], 
  [Neon], [10], [1s#super[2] 2s#super[2] 2p#super[6]], [1s#super[2] #math.arrows.tb \ 2s#super[2] #math.arrows.tb \ 2p#super[2]#sub[x] 2p#super[2]#sub[y] 2p#super[2]#sub[z] #math.arrows.tb #math.arrows.tb #math.arrows.tb],
)  
)

#set page(fill: main_tecnologia.lighten(90%))
== Glossario <senza_numero>

/ Particelle subatomiche: Unità fondamentali della materia suddivise per massa e carica elettrica. Tra queste si distinguono:
- Nucleoni: 
  - Protoni, con una massa pari a 1,007276 unità e carica elettrica positiva (+1).
  - Neutroni, con una massa di 1,008665 unità e carica neutra (0).
- Elettroni: Particelle con massa significativamente inferiore (0,0005486 unità) e carica negativa (-1).

/ Numero atomico ($Z$): Corrisponde al numero totale degli elettroni presenti in un atomo e, di conseguenza, al numero di protoni nel nucleo.

/ Numero di massa ($A$): Rappresenta la somma tra il numero di protoni e neutroni contenuti nel nucleo di un atomo.

/ Isotopi: Atomi appartenenti allo stesso elemento chimico, ma caratterizzati da un diverso numero di massa a causa della variazione nel numero di neutroni.

/ Modello di Thomson: Descrive l'atomo come una sfera di carica positiva all'interno della quale sono distribuiti uniformemente gli elettroni.

/ Modello di Rutherford: Proposto successivamente, rappresenta l'atomo con un nucleo centrale di carica positiva che concentra la quasi totalità della massa, mentre gli elettroni orbitano a grande distanza dal nucleo.

/ Modello di Bohr: Introduce il principio della quantizzazione delle energie elettroniche, organizzando gli elettroni in livelli energetici definiti da numeri quantici.

/ Modello quantomeccanico: Sviluppato da De Broglie, Heisenberg e Schrödinger, descrive l'atomo mediante il concetto di orbitale, ossia una regione dello spazio intorno al nucleo dove la probabilità di localizzare un elettrone è massima. Grazie all'equazione di Schrödinger, l'elettrone viene descritto utilizzando quattro numeri quantici.

/ Configurazione elettronica: Definisce lo schema della distribuzione degli elettroni negli orbitali atomici di un atomo. 

/ Numeri quantici: Sono parametri che caratterizzano ciascun elettrone. Si distinguono quattro tipi principali:
- $n$ (numero quantico principale): Indica il livello energetico principale dell'orbitale.
- $l$ (numero quantico secondario): Determina la forma geometrica dell'orbitale.
- $m$ (numero quantico magnetico): Specifica l'orientamento dell'orbitale rispetto a un campo magnetico esterno.
- $m_s$ (numero quantico di spin): Rappresenta la possibilità dell'elettrone di ruotare attorno al proprio asse.

