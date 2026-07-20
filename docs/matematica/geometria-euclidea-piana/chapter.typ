#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

= Geometria euclidea piana <geometria_euclidea_piana>

#intro[In questo capitolo ci proponiamo di illustrare i concetti fondamentali della geometria euclidea nel piano. È opportuno chiarire sin dall'inizio che l'organizzazione degli argomenti non segue un ordine rigorosamente sequenziale. Abbiamo infatti optato per raggruppare temi affini all'interno di singole sezioni, anche quando, per coerenza logica, essi avrebbero potuto essere distribuiti in parti diverse del testo o richiedere prerequisiti differenti. Nonostante ciò, il capitolo non intende presentarsi come un semplice formulario, bensì come uno strumento pratico di rapida consultazione piuttosto che come un corso sistematico e formale. In linea con l'impostazione generale di questa trattazione, le dimostrazioni dei teoremi enunciati non saranno incluse; nei casi più intuitivi, ci limiteremo a dichiarare le proprietà senza formalizzarle sotto forma di teoremi.]

La geometria euclidea rappresenta uno dei primi, e certamente più significativi, esempi di scienza ipotetico-deduttiva. Come accennato nel paragrafo 1.4, essa si basa su alcuni concetti primitivi e su affermazioni fondamentali note come assiomi o postulati, accettando questi ultimi come veri senza dimostrazione. Da tali premesse si sviluppa logicamente l'intera struttura della disciplina, dando origine ai teoremi che costituiscono il corpo teorico della geometria.

La selezione dei concetti primitivi e degli assiomi è in larga misura arbitraria; nel nostro caso adotteremo l'impostazione proposta da Euclide nei suoi _Elementi_, perfezionata successivamente da David Hilbert nei suoi _Fondamenti della Geometria_. Pur rimandando un approfondimento a sezioni future, indichiamo tra i concetti primitivi quelli di punto, retta, piano e spazio, per i quali non forniremo definizioni esplicite. 

Degli assiomi, particolare rilievo spetta al famoso Postulato delle Parallele (noto anche come Quinto Postulato), che presenteremo nella sua formulazione classica: "In un piano, per un punto esterno a una retta, è possibile tracciare una sola retta parallela a quella data". Presumeremo fin da subito la possibilità di effettuare misurazioni sulle grandezze geometriche oggetto di studio — quali lunghezza dei segmenti, ampiezza degli angoli e aree delle superfici — anche se introdurremo formalmente tali concetti in un secondo momento.

Prima di procedere al riepilogo dei concetti e dei teoremi fondamentali, dedicheremo brevemente alcune parole al concetto di congruenza. Hilbert lo adopera come concetto primitivo, accompagnandolo con un insieme di assiomi volti a precisarlo. In particolare, questi ultimi formalizzano il cosiddetto principio di "uguaglianza mediante movimento rigido", già implicito nell'approccio di Euclide ed espresso dall'idea che "gli oggetti sovrapponibili sono uguali". Poiché il movimento rigido non può essere derivato dagli altri assiomi della geometria, risulta quindi legittimo considerarlo come un concetto primitivo. 

Nella maggior parte dei testi moderni di geometria, il termine "congruente" è comunemente utilizzato per indicare due figure che possono essere sovrapposte esattamente tramite movimento rigido. Tuttavia, è frequente il ricorso anche al termine "uguale" con lo stesso significato. In questo lavoro adotteremo prevalentemente quest'ultima terminologia, pur riconoscendo che si tratta di una semplice convenzione.

== Concetti fondamentali

La geometria si fonda su quattro concetti basilari: punto, retta, piano e spazio. Questi concetti sono definiti come primitivi, poiché non vengono formalmente descritti ma sono caratterizzati dagli assiomi a essi associati. 

Seguendo la tradizione euclidea, possiamo costruire un'intuizione sul concetto di punto osservando oggetti via via più piccoli, fino a immaginare un'entità "priva di dimensioni". In altre parole, il punto può essere concepito, citando Euclide, come ciò che "non ha parti". Convenzionalmente, i punti vengono rappresentati con lettere maiuscole dell'alfabeto latino ($A, B, C, dots$).

In modo analogo, l'idea di retta può essere intuita osservando un filo teso e immaginandolo prolungato all'infinito. Secondo Euclide, una linea è definibile come lunghezza priva di larghezza. Formalizzando questa idea, Euclide introduce la retta come il prolungamento illimitato di un segmento di linea. Le rette vengono indicate con lettere minuscole dell'alfabeto latino ($r, s, dots$) o mediante due lettere maiuscole che rappresentano due punti appartenenti alla retta (ad esempio, $A B$).

L'idea di piano si sviluppa invece pensando a una superficie con sole lunghezza e larghezza, estesa all'infinito in tutte le direzioni. Seguendo Euclide, il piano può essere immaginato come una superficie che giace uniformemente rispetto alle rette che vi appartengono. I piani sono solitamente indicati con lettere minuscole dell'alfabeto greco ($alpha, beta, dots$).

Infine, lo spazio può essere definito semplicemente come l'insieme di tutti i punti esistenti.

#definizione(title: "Figura geometrica", label: <def-figura-geometrica>)[Si definisce figura geometrica ogni sottoinsieme di punti dello spazio.]

Va osservato però che la geometria si occupa specificamente dello studio di alcune particolari figure geometriche.

=== Assiomi relativi alla retta

#definizione(title: "Retta e sue caratteristiche", label: <def-retta>)[Per due punti distinti passa una e una sola retta. I punti di una retta sono ordinati in due direzioni opposte, tali che non esista né un primo né un ultimo punto. Tra due punti qualsiasi di una retta si trovano infiniti punti intermedi. Inoltre, dato un punto esterno a una retta, è possibile tracciare, in un piano, una sola retta parallela a quella data che passi per tale punto.]

#definizione(title: "Semiretta", label: <def-semiretta>)[Sia $r$ una retta e $O$ un punto appartenente a essa. Il punto $O$ individua su $r$ due sottoinsiemi, denominati semirette, ciascuno dei quali include il punto $O$, detto origine, e tutti i punti che seguono $O$ in una delle due possibili direzioni lungo la retta. Se due semirette appartengono alla stessa retta e hanno in comune solamente il punto origine, si definiscono semirette opposte.]

Scelto un altro punto $P$ sulla semiretta oltre all'origine $O$, quest'ultima può essere indicata con $O P$; per le rette e le semirette si possono utilizzare anche le lettere minuscole dell'alfabeto latino per identificarle.

=== Segmenti

#definizione(title: "Segmento", label: <def-segmento>)[Dati due punti distinti $A$ e $B$ appartenenti a una retta $r$, si definisce segmento $A B$ il sottoinsieme di $r$ costituito da tutti i punti compresi tra $A$ e $B$ inclusi.]

I punti $A$ e $B$ vengono chiamati estremi del segmento; ciascun punto situato tra $A$ e $B$ si dice interno al segmento; mentre i punti della retta $r$ esterni agli estremi e non facenti parte del segmento si dicono esterni al segmento stesso.

Due segmenti $A B$ e $B C$, che condividono un unico estremo in comune (nel caso specifico $B$), si dicono consecutivi (@grafico_segmenti1). Se inoltre i segmenti consecutivi appartengono alla stessa retta si definiscono adiacenti (@grafico_segmenti2). Allo stesso modo, per le semirette valgono i termini consecutive e adiacenti, con significato analogo.

Una sequenza di segmenti consecutivi, ma non adiacenti tra loro, forma una poligonale. Se gli estremi iniziale e finale della poligonale coincidono, questa viene definita chiusa (@grafico_poligonale2); diversamente, è detta aperta (@grafico_poligonale1). Una poligonale si considera intrecciata se due segmenti consecutivi presentano un punto comune diverso dai vertici (@grafico_poligonale3). Infine, i segmenti possono essere sottoposti a confronti, addizioni o sottrazioni; non approfondiamo qui i dettagli di tali operazioni in quanto si ritengono concetti intuitivi.

#grafico_segmenti1-2

#grafico_poligonali1-3

=== Assiomi relativi al piano

Per tre punti distinti e non allineati passa uno e un solo piano. Ogni retta $r$ appartenente a un piano $pi$ suddivide il piano stesso in due sottoinsiemi, detti semipiani. Ciascun semipiano è costituito dalla retta $r$, definita origine, e da due sottoinsiemi $pi_1$ e $pi_2$, che non condividono alcun punto in comune. Inoltre, ogni segmento i cui estremi appartengono a uno solo di questi sottoinsiemi ($pi_1$ o $pi_2$) non interseca la retta $r$. Al contrario, un segmento che abbia un estremo in $pi_1$ e l'altro in $pi_2$ incontra $r$ in un solo punto.

I semipiani vengono indicati con lettere minuscole dell'alfabeto greco, analogamente ai piani.

Definizione 9.4. Una figura si dice convessa se, scegliendo due punti qualsiasi al suo interno, il segmento che li congiunge appartiene interamente alla figura stessa. Invece, si definisce concava una figura per cui esistono segmenti che collegano due punti della figura ma non ne fanno interamente parte.

L'intersezione di due figure convesse risulta sempre in una figura convessa. Tuttavia, l'unione di due figure convesse può generare una figura concava.

Sono esempi di figure convesse: piani, semipiani, rette, semirette e segmenti. Un esempio di figura concava è invece dato da due segmenti consecutivi che non sono adiacenti.

=== Angoli e strisce

#definizione(title: "Angolo", label: <def-angolo>)[Dati due semirette distinte appartenenti a un piano e aventi l'origine in comune, si definisce angolo ciascuno dei due sottoinsiemi determinati dalle semirette unite alle semirette stesse.]

Le due semirette sono chiamate lati dell'angolo, mentre il loro punto di origine comune è detto vertice. Se le semirette formano un angolo piatto, esse risultano adiacenti, e ciascun angolo così formato corrisponde a un semipiano. Se invece le semirette non sono adiacenti, si formano un angolo convesso, che non include i prolungamenti dei lati, e un angolo concavo, che invece li contiene.

In particolare:
- quando le due semirette coincidono, l'intero piano viene definito angolo giro, mentre l'insieme costituito solo dalle due semirette è detto angolo nullo; In entrambi i casi, i lati dell'angolo si definiscono coincidenti
- sia l'angolo giro che l'angolo piatto sono considerati figure convesse, tuttavia, generalmente, quando si parla di angoli convessi non ci si riferisce a essi.

Gli angoli possono essere rappresentati graficamente tramite lettere minuscole dell'alfabeto greco o mediante notazioni del tipo $A hat(O) B$, dove $A$ e $B$ indicano due punti distinti dal vertice $O$, posti uno su ciascun lato dell'angolo.

Esistono diverse definizioni di angolo. Ad esempio, in trigonometria è comune definire un angolo come la rotazione di una semiretta attorno alla sua origine. Questo approccio consente di considerare anche angoli superiori a un angolo giro, un concetto particolarmente utile nell'ambito della trigonometria. Affronteremo nuovamente questo argomento nella @goniometria_trigonometria.

#grafico_angoli1-3

Due angoli $A hat(O) B$ e $B hat(O) C$ che condividono solo il vertice $O$ e un lato in comune sono detti consecutivi (@grafico_angoli1). Se in più i lati non comuni sono semirette opposte, gli angoli consecutivi vengono definiti adiacenti (@grafico_angoli2). Due rette incidenti in un punto $O$ suddividono il piano in quattro angoli convessi. Tra questi angoli, quelli i cui lati sono rispettivamente costituiti dai prolungamenti degli altri lati si chiamano opposti al vertice (@grafico_angoli3).

Gli angoli possono sempre essere confrontati, mentre è possibile sommarli solo a condizione che la loro somma non superi un angolo giro. Inoltre, è consentito sottrarre un angolo da un altro solo se il primo è maggiore. Non entreremo nei dettagli formali delle definizioni, in quanto sono piuttosto intuitive.

Due angoli la cui somma è equivalente a un angolo giro sono definiti esplementari. 
Due angoli che, sommati, formano un angolo piatto sono detti supplementari; in questo caso, i due angoli possono essere sempre traslati rigidamente fino a diventarne adiacenti.

#definizione(title: "Rette perpendicolari", label: <def-rette-perpendicolari>)[Due rette incidenti si definiscono perpendicolari quando formano quattro angoli uguali, noti come angoli retti.] 

Un angolo retto corrisponde a metà di un angolo piatto. Un angolo convesso si dice acuto se è minore di un angolo retto, mentre si dice ottuso se è maggiore di un angolo retto. Infine, due angoli acuti la cui somma forma un angolo retto sono detti complementari.

Data una retta $r$ e un punto $P$ su un piano (che appartenga o meno alla retta), esiste una e una sola perpendicolare $s$ a $r$ che passa per $P$. Il punto $H$, dove $r$ e $s$ si incontrano, si chiama piede della perpendicolare $s$, o anche proiezione del punto $P$ sulla retta $r$. Il segmento $P H$, invece, è definito come segmento di perpendicolare.

Dato un segmento $overline(A B)$, una retta $r$ e i rispettivi punti di proiezione $H$ e $K$ degli estremi $A$ e $B$ su $r$, il segmento $H K$ viene chiamato proiezione di $overline(A B)$ su $r$.

I seguenti teoremi trovano impiego continuativo nell'analisi geometrica: 
#v(2em)
#definizione(title: "Teoremi degli angoli", label:<teoremi-angoli>)[Angoli supplementari associati ad angoli uguali sono tra loro uguali. Due angoli opposti al vertice risultano tra loro uguali. Angoli complementari associati ad angoli uguali sono anch'essi uguali.]

#definizione(title: "Striscia", label: <def-striscia>)[Date due rette parallele distinte $r$ ed $s$, si definisce striscia l'intersezione dei due semipiani aventi come origine la retta $r$ (contenente $s$) e viceversa. ]

#grafico_striscia_piano

Ogni striscia di piano costituisce una figura convessa. Le due rette che delimitano una striscia sono dette lati della striscia.

=== Rette parallele

Due rette parallele a una terza risultano tra loro parallele. In particolare, se due rette sono parallele, ogni retta che interseca una di esse interseca necessariamente anche l'altra.

#grafico_parallele

Se due rette distinte $r$ e $s$ vengono incontrate da una terza retta $t$ in due punti distinti, si formano otto angoli, ognuno con una denominazione specifica, come illustrato nella @grafico_parallele:
- gli angoli $delta$, $gamma$, $epsilon$ e $zeta$ sono chiamati interni.
- gli angoli $alpha$, $beta$, $eta$ e $theta$ sono chiamati esterni.
- gli angoli situati dalla stessa parte rispetto alla retta $t$ sono detti coniugati. In particolare:
  - le coppie $gamma$ e $zeta$, $delta$ e $epsilon$ sono angoli coniugati interni.
  - le coppie $beta$ e $eta$, $alpha$ e $theta$ sono angoli coniugati esterni.
- gli angoli situati su lati opposti rispetto alla retta $t$ sono chiamati alterni. In particolare:
  - le coppie $gamma$ e $epsilon$, $delta$ e $zeta$ sono angoli alterni interni.
  - le coppie $beta$ e $theta$, $alpha$ e $eta$ sono angoli alterni esterni.
- gli angoli $beta$ e $theta$, $gamma$ e $eta$, $alpha$ e $epsilon$, $delta$ e $zeta$ sono definiti corrispondenti, essendo coniugati di tipo interno ed esterno.

Se due rette formano una coppia di angoli alterni uguali, una coppia di angoli corrispondenti uguali oppure una coppia di angoli coniugati supplementari, allora tutte le coppie di angoli alterni e corrispondenti risultano uguali, mentre tutte le coppie di angoli coniugati risultano supplementari.

Il principio fondamentale del parallelismo tra due rette è definito dal seguente teorema:

#definizione(title: "Criterio di parallelismo", label: <def-parallelismo>)[Due rette $r$ e $s$ sono parallele se, e solo se, quando vengono intersecate da una trasversale $t$ formano una coppia di angoli alterni uguali, formano una coppia di angoli corrispondenti uguali
oppure formano una coppia di angoli coniugati supplementari.]

== I triangoli

#definizione(title: "Triangolo", label: <def-triangolo>)[Dati tre punti non allineati A, B e C, si definisce triangolo ABC l'insieme dei punti comuni ai tre angoli convessi $angle A B C$, $angle B C A$ e $angle C A B$. In modo equivalente, un triangolo può essere visto come l'intersezione dei semipiani aventi rispettivamente come origine i segmenti A B, B C e C A, ciascuno contenente il terzo vertice (C, A e B rispettivamente).]

Essendo l'intersezione di figure convesse, un triangolo ABC è sempre una figura convessa.

Nel triangolo ABC, i punti A, B e C sono detti vertici, mentre i segmenti A B, B C e C A sono chiamati lati. L'insieme complessivo dei tre lati costituisce il contorno del triangolo, e la loro somma in lunghezza rappresenta il perimetro.

L'angolo $angle A B C$ viene definito compreso tra i lati A B e B C, ed è adiacente a ciascuno di essi. Il lato A C, invece, è detto opposto all'angolo $angle A B C$ (e al vertice B). Analogamente, si definiscono i lati opposti e gli angoli adiacenti associati agli altri vertici e lati. Combinando insieme lati e angoli, si ottengono gli elementi del triangolo.

Per quanto riguarda gli angoli esterni, dato l'angolo $angle A B C$ del triangolo, si denomina angolo esterno ciascuno dei due angoli $angle C B D$ e $angle A B E$, che risultano adiacenti a $angle A B C$, come illustrato in @grafico_triangolo_angoli_esterni.

#grafico_triangolo_angoli_esterni

=== Criteri di uguaglianza

#definizione(title: "Primo criterio di uguaglianza dei triangoli", label: <def-primo-criterio-uguaglianza-triangoli>)[Due triangoli sono congruenti se hanno rispettivamente due lati uguali e l'angolo compreso tra essi.]

#definizione(title: "Secondo criterio di uguaglianza dei triangoli", label: <def-secondo-criterio-uguaglianza-triangoli>)[Due triangoli sono congruenti se hanno rispettivamente un lato e i due angoli adiacenti ad esso uguali.]

#definizione(title: "Terzo criterio di uguaglianza dei triangoli", label: <def-terzo-criterio-uguaglianza-triangoli>)[Due triangoli sono congruenti se hanno i tre lati uguali rispettivamente.]

In tutti e tre i criteri, si osserva che l'uguaglianza di due triangoli viene determinata dall'uguaglianza di tre elementi scelti tra i lati e gli angoli dei triangoli, a patto che almeno uno di questi elementi sia un lato.

=== Relazioni tra gli elementi di un triangolo

#definizione(title: "Somma angoli di un triangolo", label: <def-somma-angoli-triangoli>)[La somma degli angoli interni di un triangolo equivale a un angolo piatto. Inoltre, ciascun angolo esterno è pari alla somma dei due angoli interni non adiacenti.]

Da questo teorema si deduce che in ogni triangolo almeno due angoli interni sono acuti; di conseguenza, vi può essere al massimo un solo angolo retto o ottuso.

#definizione(title: "Teorema")[In un triangolo, se due lati sono disuguali, anche gli angoli opposti a tali lati saranno disuguali, e il lato maggiore sarà opposto all'angolo maggiore. Viceversa, in presenza di due angoli disuguali, anche i lati opposti saranno disuguali, e l'angolo maggiore sarà opposto al lato maggiore.]

#definizione(title: "Teorema")[In un triangolo, ogni lato è minore della somma degli altri due e maggiore della loro differenza.]

=== Tipologie di triangoli

Un triangolo si definisce scaleno quando tutti e tre i lati (e di conseguenza anche i tre angoli) sono di lunghezza diversa tra loro. Si parla invece di triangolo isoscele quando ha due lati di pari lunghezza. In questo caso, l'angolo compreso tra i due lati uguali prende il nome di angolo al vertice, mentre il lato opposto a tale angolo viene denominato base. Un triangolo si caratterizza come isoscele se e solo se possiede due angoli della stessa ampiezza.

Quando tutti i lati, o equivalentemente tutti gli angoli, sono uguali tra loro, il triangolo viene definito equilatero o equiangolo.

Esistono poi classificazioni basate sugli angoli interni: un triangolo si dice acutangolo quando tutti i suoi angoli sono acuti, mentre è detto rettangolo se contiene un angolo retto. Infine, un triangolo si definisce ottusangolo nel caso in cui vi sia un angolo ottuso al suo interno.

Nel triangolo rettangolo si utilizzano termini specifici per i suoi lati: i due che formano l'angolo retto vengono chiamati cateti, mentre il lato opposto all'angolo retto prende il nome di ipotenusa.

Per quanto riguarda i criteri di uguaglianza nei triangoli rettangoli, essi possono essere riassunti come segue: due triangoli rettangoli sono considerati uguali se posseggono due elementi corrispondenti uguali, purché questi non siano entrambi gli angoli acuti e non includano l'angolo retto.

Si noti che tale criterio possiede un'applicazione più generale rispetto a quanto avviene per i triangoli generici. Ad esempio, nel caso di due triangoli qualsiasi, la condizione di avere due lati e un angolo uguali non è sufficiente per determinarne l'uguaglianza. Una situazione analoga può essere osservata nella figura @grafico_due_lati_condivisi, dove i triangoli $A B C_1$ e $A C D$ hanno due lati ($overline(A C)$ e $overline(B C)$ il primo, $overline(A C)$ e $overline(C D)$) e un angolo ($alpha$) identici, ma non sono congruenti fra loro.

#grafico_due_lati_condivisi

=== Punti notevoli

In ogni segmento, esiste un unico punto che lo divide in due parti uguali: questo punto è denominato punto medio. Analogamente, per un angolo, esiste una sola semiretta con origine nel vertice che suddivide l'angolo in due parti di uguale ampiezza: questa semiretta prende il nome di bisettrice dell'angolo.

In un triangolo ABC, il segmento che collega il punto medio M di un lato con il vertice opposto è chiamato mediana. Di conseguenza, ogni triangolo possiede tre mediane. Queste sono sempre interne al triangolo e si incontrano in un unico punto, il baricentro. Il baricentro ha la proprietà di dividere ciascuna mediana in due parti in modo tale che la porzione vicina al vertice sia il doppio della porzione opposta. Il baricentro, punto d'intersezione delle mediane, coincide inoltre con il centro di gravità o centro di massa del triangolo#footnote[Si noti che questa coincidenza si verifica esclusivamente nella situazione descritta: ad esempio, il centro di massa di un telaio triangolare omogeneo non corrisponde al punto di intersezione delle mediane del triangolo, a meno che quest'ultimo non sia equilatero.], come mostrato nella @grafico_triangolo_baricentro.

#grafico_triangolo_baricentro

Per ogni angolo interno del triangolo si può considerare la relativa semiretta bisettrice; questa interseca il lato opposto al vertice dell'angolo in un punto. Il segmento compreso tra il vertice dell'angolo e il punto di intersezione con il lato opposto è chiamato semplicemente bisettrice. Ogni triangolo possiede dunque tre bisettrici, che sono sempre interne al triangolo e si incontrano in un punto detto incentro. L'incentro è equidistante dai tre lati del triangolo: per questo motivo funge da centro di una particolare circonferenza detta circoscritta nel triangolo, da cui deriva anche il suo nome, come si può osservare nella @grafico_triangolo_incentro.

#grafico_triangolo_incentro

Da ciascun vertice di un triangolo ABC si può tracciare una perpendicolare rispetto alla retta contenente il lato opposto. I punti di intersezione tra queste perpendicolari e i lati opposti sono detti piedi delle perpendicolari, indicati rispettivamente come $A'$, $B'$ e $C'$. 

I segmenti $overline(A A')$, $overline(B B')$ e $overline(C C')$ prendono il nome di altezze del triangolo. Le tre altezze, o i loro eventuali prolungamenti, si incontrano in un unico punto detto ortocentro.

Diversamente da mediane e bisettrici, le altezze non sono sempre interne al triangolo. Le loro caratteristiche dipendono dalla tipologia del triangolo:
- in un triangolo acutangolo, tutte le altezze e l'ortocentro sono interni (@grafico_triangolo_ortocentro1)
- in un triangolo rettangolo, due altezze coincidono con i cateti e l'ortocentro corrisponde al vertice dell'angolo retto (@grafico_triangolo_ortocentro2)
- in un triangolo ottusangolo, l'altezza tracciata dal vertice contenente l'angolo ottuso rimane interna al triangolo, mentre le altre due altezze e l'ortocentro si trovano all'esterno; in questo caso, è necessario considerare i prolungamenti delle altezze per identificare l'ortocentro (@grafico_triangolo_ortocentro3).

#grafici_triangolo_ortocentro

#definizione(title: "Asse di un segmento")[Si definisce asse di un segmento la retta perpendicolare al segmento stesso che passa per il suo punto medio.

L'asse di un segmento rappresenta il luogo geometrico dei punti del piano che sono equidistanti dagli estremi del segmento.]

In un triangolo, si possono considerare gli assi dei tre lati. Questi si incontrano in un punto comune chiamato circocentro, che è equidistante dai tre vertici del triangolo. Il circocentro rappresenta il centro della circonferenza che passa attraverso i tre vertici del triangolo, nota come circonferenza circoscritta, da qui deriva il suo nome. La posizione del circocentro dipende dal tipo di triangolo: è interno nei triangoli acutangoli (@grafico_triangolo_circocentro1), coincide con il punto medio dell'ipotenusa nei triangoli rettangoli (@grafico_triangolo_circocentro2) ed è esterno nei triangoli ottusangoli (@grafico_triangolo_circocentro3).

#grafici_triangolo_circocentro

#definizione(title: "Teorema")[In un triangolo isoscele, la bisettrice dell'angolo al vertice è perpendicolare alla base e la divide in due parti uguali. Essa è quindi contemporaneamente una altezza, una bisettrice e la retta che la contiene funge da asse della base.]

Da questa proprietà si deduce che nel caso di un triangolo isoscele, i quattro punti notevoli del triangolo (baricentro, incentro, ortocentro e circocentro) sono allineati e si trovano sull'asse della base#footnote[La linea che attraversa baricentro, circocentro e ortocentro è chiamata retta di Eulero. La distanza tra il baricentro e il circocentro su questa retta è esattamente la metà di quella tra il baricentro e l'ortocentro, ovvero: $overline(O H) = 3 overline(O G)$.] (@grafico_triangolo_centri1). Nel caso di un triangolo equilatero, questa proprietà vale per tutti i vertici, poiché i quattro punti notevoli coincidono in un unico punto, denominato centro del triangolo (@grafico_triangolo_centri2).

#grafici_triangolo_centri

#definizione(title: "Teorema")[Le semirette che rappresentano le bisettrici dei quattro angoli formati da due rette incidenti risultano essere coppie di semirette allineate e tra loro perpendicolari. Inoltre, tali semirette definiscono il luogo geometrico dei punti del piano equidistanti dalle due rette considerate.]

#grafico_rette_incidenti_bisettrici

#definizione(title: "Teorema")[In un triangolo, il segmento che collega i punti medi di due lati risulta essere parallelo al terzo lato e ha una lunghezza pari alla metà di quest'ultimo. Inoltre, se dal punto medio di un lato si traccia una parallela a uno degli altri due lati, tale parallela suddivide il lato rimanente in due parti di uguale lunghezza.]

#grafico_triangolo_punti_medi

== I poligoni

In questa sezione ci concentreremo sui poligoni convessi, tralasciando quelli concavi, in quanto il loro studio risulta particolarmente complesso e va oltre gli obiettivi di un tipico corso di geometria elementare. Citeremo brevemente i poligoni concavi alla fine del paragrafo per sottolineare alcune difficoltà relative a questo argomento.

Definizione 9.25. Siano dati $n$ punti nel piano ($n > 2$) $A_1, A_2, dots, A_n$, tali che nessun gruppo di tre punti consecutivi sia allineato e che, collegando due punti qualsiasi in sequenza, gli altri $n - 2$ punti rimangano sempre nello stesso semipiano rispetto al segmento considerato. Si definisce poligono convesso la porzione di piano comune agli angoli $A_1 A_2 A_3, A_2 A_3 A_4, dots, A_(n-1) A_n A_1$ o, equivalentemente, la parte di piano che è intersezione dei semipiani originati dai lati consecutivi $A_1 A_2, A_2 A_3, dots, A_n A_1$ e che contiene tutti gli altri vertici.

Un poligono convesso, essendo intersezione di figure convesse, è anch'esso una figura convessa. Di norma, quando si parla di poligono senza ulteriori specifiche si fa riferimento a un poligono convesso. La spezzata chiusa $A_1 A_2 dots A_n$, che determina il poligono, è detta contorno, mentre i punti $A_1, A_2, dots, A_n$ sono i vertici. I segmenti che uniscono i vertici consecutivi sono detti lati del poligono. La somma delle lunghezze dei lati costituisce il perimetro del poligono. Gli angoli $ angle A_n A_1 A_2, angle A_1 A_2 A_3, dots, angle A_(n-1) A_n A_1$ si chiamano angoli interni o, più semplicemente, angoli del poligono. I lati e gli angoli, presi insieme, costituiscono i suoi elementi.

I $2n$ angoli adiacenti agli angoli interni sono invece detti angoli esterni. Per convenzione, quando si costruiscono gli angoli esterni di un poligono convesso, si sceglie un orientamento (orario o antiorario) e si definisce l'angolo esterno relativo a ciascun angolo interno come quello avente il primo lato coincidente con il prolungamento del primo lato dell'angolo interno e il secondo lato coincidente con il secondo lato dell'angolo interno.

#grafici_angoli_poligono

Qualunque segmento che congiunge due vertici non consecutivi di un poligono è detto diagonale. Il numero totale delle diagonali di un poligono con $n$ lati è sempre pari a $ n_d = (n(n-3)) / 2 $

Più in generale, un segmento che collega due punti sul contorno del poligono senza appartenere a uno dei suoi lati è chiamato corda.

I poligoni vengono denominati in base al numero dei loro lati (e quindi anche dei loro angoli). Ad esempio:
- quadrilatero o quadrangolo: un poligono con 4 lati;
- pentagono: un poligono con 5 lati;
- esagono: un poligono con 6 lati;
- ettagono: un poligono con 7 lati, e così via...

=== Relazioni tra lati e angoli in un poligono

#definizione(title: "Teorema")[In un poligono, ogni lato è sempre minore della somma di tutti gli altri lati.]

#definizione(title: "Teorema")[In un poligono convesso con $n$ lati, la somma degli angoli interni è pari a $(n - 2)$ angoli piatti.]

#definizione(title: "Teorema")[In un poligono convesso, la somma degli angoli esterni (associati agli angoli interni) è sempre uguale a due angoli piatti.]

#grafici_diagonali_corda_poligono

=== Parallelogrammi

In un quadrilatero si definiscono lati opposti i due lati che non condividono vertici e angoli opposti i due angoli che non condividono lati.

#definizione(title: "Parallelogramma")[Si chiama parallelogramma un quadrilatero in cui i lati opposti sono paralleli.]

Un segmento tracciato perpendicolarmente da un punto di un lato al lato opposto si chiama altezza relativa alla coppia di lati opposti, che assumono il nome di basi.

#grafici_parallelogrammi

#definizione(title: "Teorema")[In ogni parallelogramma ciascuna diagonale divide il parallelogramma in due triangoli congruenti, i lati opposti sono uguali, gli angoli opposti sono uguali, gli angoli adiacenti a ciascun lato sono supplementari e le due diagonali si dividono reciprocamente a metà.]

#definizione(title: "Teorema")[Un quadrilatero è un parallelogramma se:
- è convesso con le due coppie di lati opposti uguali;
- è convesso con le due coppie di angoli opposti uguali;
- è convesso in cui due lati opposti sono contemporaneamente uguali e paralleli;
- è convesso in cui le diagonali si dividono reciprocamente a metà.]

==== Parallelogrammi particolari

Nei parallelogrammi, i lati e gli angoli si raggruppano a coppie di uguali. Alcuni casi particolari si verificano quando:
- tutti e quattro gli angoli sono uguali: il parallelogramma è un rettangolo;
- tutti e quattro i lati sono uguali: si ottiene un rombo (o losanga);
- sia i quattro lati sia i quattro angoli sono uguali: il risultato è un quadrato.

Nel rettangolo, dati un lato come base, gli altri due lati consecutivi rappresentano le altezze; base e altezza sono chiamate dimensioni del rettangolo; le due diagonali sono sempre uguali; viceversa, un parallelogramma che presenta due diagonali uguali è un rettangolo.

Nel rombo, le diagonali sono perpendicolari e bisettrici degli angoli interni; viceversa, se le diagonali di un parallelogramma sono perpendicolari o bisecano gli angoli, il parallelogramma è un rombo.

Il quadrato, infine, combina le proprietà del rettangolo e del rombo: le sue diagonali sono tra loro uguali, perpendicolari e bisettrici degli angoli interni.

=== I trapezi

#definizione(title: "Trapezio")[Si chiama trapezio un quadrilatero convesso, in cui due soli lati opposti sono paralleli mentre gli altri due non lo sono]

I due lati paralleli prendono il nome di basi del trapezio e si distinguono in base maggiore e base minore, i due lati non paralleli si chiamano lati obliqui, mentre il segmento perpendicolare tracciato da un punto di una base all'altra è detto altezza.

Se un trapezio ha i lati obliqui di lunghezze diverse si dice scaleno (@grafico_trapezio_scaleno1 e @grafico_trapezio_scaleno2), mentre se hanno la stessa lunghezza si dice isoscele (@grafico_trapezio_isoscele); quando uno dei lati obliqui è perpendicolare a una base, viene invece chiamato trapezio rettangolo (@grafico_trapezio_rettangolo).

In qualunque trapezio, gli angoli adiacenti ai lati obliqui sono supplementari, poiché sono coniugati interni rispetto alle basi parallele. Nel caso del trapezio isoscele, gli angoli adiacenti a ciascuna base sono uguali, le diagonali hanno la stessa lunghezza e le proiezioni dei lati obliqui sulla base maggiore risultano identiche.

#grafici_trapezi

=== Cenno ai poligoni concavi

Come accennato in precedenza, lo studio dei poligoni concavi risulta più complesso rispetto a quello dei poligoni convessi, soprattutto per quanto riguarda i concetti di angolo interno ed esterno. Per affrontare l'argomento dei poligoni concavi è necessario innanzitutto modificare la definizione di poligono. In questo contesto seguiremo la definizione proposta da L. Poinsot.

#definizione(title: "Poligono")[Si definisce poligono una figura composta da n ($n > 2$) punti $A_1, A_2, dots, A_n$, detti vertici, ordinatamente disposti su un piano e connessi tra loro tramite segmenti, detti lati, che collegano il primo vertice al secondo, il secondo al terzo, e così via fino a congiungere l'ultimo al primo.

Se esistono punti diversi dai vertici in cui due o più lati si intersecano, il poligono si dice intrecciato, in caso contrario, il poligono si dice ordinario.]

Le #ref(<grafico_poligono_concavo1>, supplement: "Figure"), #ref(<grafico_poligono_concavo2>, supplement: none), #ref(<grafico_poligono_concavo3>, supplement: none) e #ref(<grafico_poligono_concavo4>, supplement: none) sono alcuni esempi di pentagoni non convessi.

#grafici_poligoni_concavi

Per parlare di angoli interni ed esterni, è necessario, innanzitutto, definire un orientamento per il piano. In termini intuitivi, si può distinguere tra orientamento orario e antiorario, scegliendo uno dei due come positivo. Per esempio, possiamo considerare il senso antiorario come positivo. Una volta orientato il piano, anche il poligono va orientato in uno dei due sensi possibili. Per i poligoni ordinari, opteremo per un orientamento antiorario, mentre questa distinzione non ha più senso nel caso di poligoni intrecciati. In seguito, occorre definire l'orientamento degli angoli, immaginandoli come una rotazione di una semiretta attorno alla sua origine: gli angoli orientati nella stessa direzione del piano saranno positivi, mentre gli altri saranno considerati negativi.

Prendendo ora in esame un angolo di un poligono, immaginiamo di ruotare il secondo lato attorno al vertice in modo che descriva un angolo positivo (antiorario, secondo la nostra convenzione) fino a sovrapporsi al primo lato. L'angolo così descritto sarà definito angolo interno. È importante notare che, invertendo l'orientamento del poligono, ciascun angolo si trasforma nel suo angolo esplementare.

#grafici_angoli_interni_quadrilatero

Nelle #ref(<grafico_angoli_interni_quadrilatero1>, supplement: "Figure"), #ref(<grafico_angoli_interni_quadrilatero2>, supplement: none) e #ref(<grafico_angoli_interni_quadrilatero3>, supplement: none) sono mostrati gli angoli interni nei diversi casi possibili per un quadrilatero orientato in senso antiorario, nel caso si trattasse di un quadrilatero ordinario. Nei primi due casi illustrati, la somma degli angoli interni è pari a un angolo giro; nel terzo caso equivale a due angoli giri. Con questa definizione, non rimane valida la proprietà della somma degli angoli tipica di un poligono convesso; tuttavia, si conserva la caratteristica secondo cui la somma risulta sempre pari a un certo numero di angoli piatti, una costante per ogni tipo di poligono. 

Passando invece agli angoli esterni, con le stesse convenzioni adottate in precedenza, tale angolo si definisce come quello minore di un angolo piatto: è l'angolo descritto dal prolungamento del primo lato che ruota fino a sovrapporsi al secondo lato nello stesso verso (vedi #ref(<grafico_angoli_esterni_quadrilatero1>, supplement: "Figure"), #ref(<grafico_angoli_esterni_quadrilatero2>, supplement: none) e #ref(<grafico_angoli_esterni_quadrilatero3>, supplement: none)). Questa definizione permette di conservare una proprietà valida per i poligoni convessi: la somma di un angolo interno con l'angolo esterno adiacente è sempre pari a un angolo piatto (ricordando che gli angoli antiorari sono positivi, mentre quelli orari sono negativi).

#grafici_angoli_esterni_quadrilatero

Le #ref(<grafico_angoli_interni_pentagono1>, supplement: "Figure"), #ref(<grafico_angoli_interni_pentagono2>, supplement: none), #ref(<grafico_angoli_interni_pentagono3>, supplement: none) e #ref(<grafico_angoli_interni_pentagono4>, supplement: none) illustrano i casi possibili relativi agli angoli interni di un pentagono. 

#grafici_angoli_interni_pentagono

Le situazioni diventano progressivamente più complesse man mano che aumenta il numero dei lati. Ad esempio, in un esagono si devono analizzare anche i casi in cui tre lati convergono in un punto diverso dai vertici. A titolo esemplificativo, una di queste configurazioni è rappresentata nella @grafico_angoli_esagono_intrecciato, che include anche gli angoli interni.

#grafico_angoli_esagono_intrecciato

Questa breve introduzione mette in evidenza il motivo per cui, trattando i poligoni, si tende a limitarsi ai poligoni convessi: questi permettono di mantenere proprietà più semplici e intuitive.
#v(3em)
== Circonferenza e cerchio

#definizione(title: "Circonferenza e cerchio", label:<def-circonferenza-cerchio>)[La circonferenza o circolo di centro $O$ e di raggio $r$ è definita come il luogo geometrico dei punti del piano che si trovano a una distanza esattamente uguale a $r$ dal punto $O$.

Il cerchio di centro $O$ e raggio $r$ è invece il luogo geometrico dei punti del piano la cui distanza da $O$ è minore o uguale a $r$.]

La circonferenza di centro $O$ e raggio $r$ è pertanto contenuta all'interno del cerchio avente lo stesso centro e raggio e ne costituisce il contorno. Ogni segmento che connette $O$ a un punto della circonferenza è detto raggio, e tutti i raggi hanno uguale lunghezza.

I punti del piano con una distanza da $O$ inferiore a $r$ sono definiti come interni alla circonferenza e al cerchio, mentre i punti con una distanza da $O$ superiore a $r$ sono detti esterni alla circonferenza e al cerchio.

Il cerchio è una figura convessa perché, presi due punti qualsiasi al suo interno, il segmento che li unisce si trova interamente all'interno della figura stessa. Al contrario, la circonferenza non lo è poiché è una linea cava (se prendi due punti sulla linea, tranne il diametro, il segmento che li unisce passa per l'interno e risulta esterno alla linea stessa). Due cerchi o due circonferenze si dicono uguali se e solo se possiedono lo stesso raggio.

=== Corde

#definizione(title: "Corda", label: <def-corda>)[Si definisce corda qualunque segmento che unisce due punti appartenenti a una circonferenza. Una corda che passa per il centro della circonferenza prende il nome di diametro.]

Ogni diametro suddivide sia la circonferenza sia il cerchio in due parti uguali, denominate rispettivamente semicirconferenza e semicerchio.

Tutti i diametri sono pari alla somma di due raggi e hanno lunghezza equivalente tra loro. Inoltre, un diametro è sempre più lungo di ogni altra corda che non passa per il centro.

L'asse di una corda attraversa il centro della circonferenza, e il diametro ad essa perpendicolare divide la corda in due parti uguali.

#definizione(title: "Teorema")[Corde di pari lunghezza appartenenti alla stessa circonferenza sono equidistanti dal centro. Viceversa, corde equidistanti dal centro hanno necessariamente la stessa lunghezza.]

#grafici_corde

#definizione(title: "Teorema")[Per tre punti non allineati passa un'unica circonferenza. Pertanto, due circonferenze distinte non possono avere più di due punti in comune e nessuna circonferenza può contenere tre punti allineati.]

=== Relazioni tra retta e circonferenza

Una retta si definisce esterna a una circonferenza quando la distanza tra il centro della circonferenza e la retta è maggiore del raggio (@grafico_retta_circonferenza1). In questo caso, tutti i punti della retta si trovano al di fuori della circonferenza. Allo stesso modo, se una retta è esterna a una circonferenza, la sua distanza dal centro sarà necessariamente maggiore del raggio.

Se una retta ha una distanza dal centro uguale al raggio, essa presenta un solo punto in comune con la circonferenza ed è detta tangente alla circonferenza (@grafico_retta_circonferenza2). In senso inverso, una retta che è tangente a una circonferenza, avendo un unico punto in comune con essa, si trova a una distanza dal centro esattamente pari al raggio. Tale punto comune prende il nome di punto di tangenza o punto di contatto. Inoltre, una retta è tangente a una circonferenza nel punto $P$ (di centro $O$ ) se e solo se risulta perpendicolare al raggio $O P$. Da un dato punto appartenente alla circonferenza è possibile tracciare una e una sola tangente alla circonferenza.

Infine, una retta si considera secante a una circonferenza quando la sua distanza dal centro è minore del raggio, in quanto interseca la circonferenza in due punti distinti. Viceversa, se una retta è secante a una circonferenza, essa possiede necessariamente due punti di intersezione con la circonferenza (@grafico_retta_circonferenza3).

#grafici_retta_circonferenza

=== Parti della circonferenza e del cerchio

Un angolo si definisce angolo al centro quando il suo vertice coincide con il centro di una circonferenza (@grafico_parti_circonferenza1). L'arco di circonferenza, invece, è la porzione della circonferenza compresa all'interno di un angolo al centro (@grafico_parti_circonferenza2). La corda che unisce i due estremi di un arco si chiama corda sottesa dall'arco (@grafico_parti_circonferenza3). Se un angolo al centro determina un arco, si dice che l'angolo insiste sull'arco.

#grafici_parti_circonferenza

Con il termine settore circolare si indica la porzione di cerchio delimitata da un angolo al centro e dal corrispondente arco (@grafico_parti_circonferenza4). Un segmento circolare a una base è definito come la parte di cerchio compresa tra una corda e l'arco sotteso da essa, formato dall'intersezione tra il cerchio e un semipiano contenente tale corda (@grafico_parti_circonferenza5). Al contrario, un segmento circolare a due basi si ottiene dall'intersezione tra il cerchio e una striscia delimitata da due corde parallele (@grafico_parti_circonferenza6).

Nel medesimo cerchio, o in cerchi congruenti, archi uguali corrispondono a angoli al centro uguali, settori uguali e corde uguali. Analogamente, ad angoli al centro uguali corrispondono archi, settori e corde di pari lunghezza.

#definizione(title: "Angolo alla circonferenza")[Un angolo alla circonferenza è un angolo convesso il cui vertice si trova sulla circonferenza, mentre i suoi lati possono essere entrambi secanti alla circonferenza o uno secante e l'altro tangente.] 

Questo angolo determina, sulla circonferenza, un arco che coincide con la parte di circonferenza compresa tra i suoi lati. In caso di lati secanti, gli estremi dell'arco si troveranno sui due lati; se invece un lato è secante e l'altro tangente, un estremo dell'arco sarà sul lato secante e l'altro coinciderà con il vertice dell'angolo.

Si dice che un angolo alla circonferenza insiste sull'arco che esso individua. Inoltre, un angolo alla circonferenza che insiste su un determinato arco si considera inscritto nel restante arco della circonferenza. Un angolo alla circonferenza è detto corrispondente all'angolo al centro che insiste sullo stesso arco.

#grafici_angoli_circonferenza

A ogni angolo alla circonferenza corrisponde un unico angolo al centro relativo all'arco individuato, mentre a ogni angolo al centro sono associati infiniti angoli alla circonferenza. Questo conduce a un importante teorema.

#definizione(title: "Teorema")[Un angolo al centro è pari al doppio di qualsiasi angolo alla circonferenza che insiste sul medesimo arco. Di conseguenza, tutti gli angoli alla circonferenza che insistono sullo stesso arco o su archi uguali sono congruenti tra loro. Inoltre, gli angoli alla circonferenza iscritti in una semicirconferenza sono sempre retti.]

=== Posizioni relative di due circonferenze

Due circonferenze distinte in un piano possono trovarsi in differenti relazioni spaziali tra loro, che si possono classificare come segue:
+ esterne: ogni punto di una circonferenza si trova al di fuori dell'altra (@grafico_due_circonferenze1)
+ tangenti esternamente: le circonferenze condividono un unico punto in comune, e ogni altro punto di una risulta esterno all'altra (@@grafico_due_circonferenze2)
+ secanti: le circonferenze si intersecano in esattamente due punti distinti (@grafico_due_circonferenze3)
+ tangenti internamente: le circonferenze hanno raggi diversi e condividono un unico punto, con tutti gli altri punti della circonferenza (@grafico_due_circonferenze4) di raggio minore che si trovano all'interno di quella con raggio maggiore
+ interne: le circonferenze, avendo raggi diversi, non hanno punti in comune e tutti i punti della circonferenza più piccola sono contenuti all'interno della più grande (@grafico_due_circonferenze5)

Le condizioni necessarie e sufficienti affinché due circonferenze si trovino in ciascuna di queste posizioni relative sono:
+ esterne: la distanza tra i centri delle due circonferenze è maggiore della somma dei loro raggi
+ tangenti esternamente: la distanza tra i loro centri è esattamente uguale alla somma dei raggi
+ secanti: la distanza tra i due centri è compresa tra la differenza assoluta dei raggi e la loro somma
+ tangenti internamente: i raggi devono essere diversi e la distanza tra i centri deve essere uguale alla differenza assoluta dei raggi
+ interne: i raggi devono essere diversi e la distanza tra i centri deve essere inferiore alla differenza assoluta dei raggi

Nell'ultimo caso, se la distanza tra i centri è nulla e i raggi sono differenti, le circonferenze vengono definite concentriche, e l'area piana compresa tra le due viene chiamata corona circolare (@grafico_due_circonferenze6).

Per le circonferenze tangenti, sia internamente che esternamente, la tangente comune passa per il punto di tangenza ed è perpendicolare alla retta che congiunge i centri. Per le circonferenze secanti invece, la retta contenente i due punti di intersezione è perpendicolare alla retta passante per i centri.

#grafici_due_circonferenze

=== Tangenti a una circonferenza da un punto esterno

Abbiamo già osservato che da un punto appartenente a una circonferenza può essere condotta una sola tangente alla circonferenza stessa. Inoltre, non è possibile costruire alcuna tangente da un punto interno alla circonferenza. Tuttavia, per un punto esterno alla circonferenza vale il seguente teorema:

#definizione(title: "Tangenti a una circonferenza", label: <def-tangenti-circonferenza>)[Da un punto esterno $P$ a una circonferenza possono essere condotte esattamente due tangenti alla circonferenza.]

I segmenti che collegano il punto $P$ con i due punti di contatto $A$ e $B$ vengono chiamati segmenti tangenti o segmenti di tangenza, e hanno lunghezza identica.

Inoltre, la semiretta che collega il punto $P$ con il centro $O$ della circonferenza funge da bisettrice dell'angolo $angle A P B$ formato dai segmenti $overline(A P)$ e $overline(B P)$. La retta $P O$, infine, coincide con l'asse perpendicolare del segmento $overline(A B)$, dove $A$ e $B$ sono i punti di tangenza.

#grafico_tangenti_circonferenza


=== Poligoni inscritti e circoscritti

#definizione(title: "Poligono inscritto", label: <def-poligono-inscritto>)[Un poligono si definisce inscritto in una circonferenza quando tutti i suoi vertici appartengono alla circonferenza; in tal caso, la circonferenza viene detta circoscritta al poligono. Al contrario, un poligono si dice circoscritto a una circonferenza quando tutti i suoi lati sono tangenti alla circonferenza.]

I poligoni inscritti e circoscritti possono essere anche concavi o, in alcuni casi particolari, addirittura intrecciati, come illustrato nelle #ref(<grafico_poligoni_inscritti_circoscritti1>, supplement: "Figure"), #ref(<grafico_poligoni_inscritti_circoscritti2>, supplement: none), #ref(<grafico_poligoni_inscritti_circoscritti3>, supplement: none) e #ref(<grafico_poligoni_inscritti_circoscritti4>, supplement: none). Tuttavia, l'analisi qui si concentrerà principalmente sui poligoni convessi.

#grafici_poligoni_inscritti_circoscritti
#v(1em)
Sappiamo già, dalla @grafico_triangolo_incentro, che in ogni triangolo è sempre possibile inscrivere una circonferenza il cui centro corrisponde al punto di intersezione delle bisettrici. Inoltre, è sempre possibile circoscrivere una circonferenza intorno a un triangolo; in questo caso, il centro della circonferenza è individuato dal punto di intersezione degli assi dei tre lati.

Nel caso specifico del triangolo, oltre alla circonferenza inscritta si possono considerare tre ulteriori circonferenze particolari, dette ex-inscritte. Queste hanno la particolarità di essere tangenti a uno dei lati del triangolo e al prolungamento degli altri due. I loro centri prendono il nome di ex-centri e si ottengono come punti di intersezione tra le bisettrici di due angoli esterni e la bisettrice dell'angolo interno non adiacente ai precedenti. 

#grafico_triangolo_excentro

Complessivamente, la circonferenza inscritta e le tre ex-inscritte costituiscono un insieme di quattro circonferenze, tutte tangenti a tre rette non parallele a coppie e non passanti per un unico punto.

Per quanto riguarda i quadrilateri, il caso è notevolmente diverso rispetto ai triangoli: un quadrilatero generico, infatti, non è automaticamente inscrivibile né circoscrivibile a una circonferenza. Tuttavia, vi sono due importanti teoremi che riguardano i quadrilateri convessi e determinano le condizioni di inscrivibilità e circoscrivibilità.

#definizione(title: "Teorema")[Un quadrilatero convesso è inscrivibile in una circonferenza se, e solo se, gli angoli opposti sono supplementari.]

#definizione(title: "Teorema")[Un quadrilatero convesso è circoscrivibile a una circonferenza se, e solo se, la somma di due lati opposti è uguale alla somma degli altri due lati.]

=== Poligoni regolari

L'argomento dei poligoni regolari rientra nel capitolo dedicato alla circonferenza e al cerchio, poiché è strettamente collegato al problema della ciclotomia, ossia la suddivisione di una circonferenza in un numero prestabilito di parti uguali, un tema ampiamente studiato dai greci.

#definizione(title:"Poligono regolare", label: <def-poligono-regolare>)[Un poligono (convesso) si definisce regolare quando presenta tutti i lati e gli angoli congruenti.] 

Bisogna osservare che, mentre per un triangolo la condizione di avere i lati uguali è sia necessaria sia sufficiente per garantire l'uguaglianza degli angoli, lo stesso non vale per poligoni con più di tre lati. Ad esempio, un rettangolo ha angoli uguali ma lati diversi, mentre un rombo ha lati uguali ma angoli differenti.

Quando una circonferenza viene suddivisa in $n$ archi di uguale lunghezza, collegando sequenzialmente i punti di divisione si ottiene un poligono regolare inscritto nella circonferenza stessa. Inoltre, il poligono costruito utilizzando le rette tangenti alla circonferenza nei punti di divisione è anch'esso regolare e circoscritto a essa.

Ogni poligono regolare può essere sia inscritto sia circoscritto rispetto a una circonferenza. Il punto $O$, che rappresenta il centro delle circonferenze inscritta e circoscritta, è detto centro del poligono. Il raggio della circonferenza circoscritta viene chiamato raggio del poligono, mentre il raggio della circonferenza inscritta, che corrisponde alla distanza tra il centro e uno qualsiasi dei lati del poligono, prende il nome di apotema del poligono.

#grafici_poligoni_regolari_circonferenza

È evidente che, data una circonferenza, è possibile inscrivervi o circoscrivervi un numero infinito di poligoni con $n$ lati; tuttavia, tutti questi poligoni risultano essere identici tra loro. Per questa ragione, si parla di il triangolo equilatero inscritto anziché di un triangolo equilatero inscritto, il quadrato inscritto anziché di un quadrato inscritto, e così via.

#definizione(title: "Teorema")[Il lato dell'esagono regolare inscritto in una circonferenza è uguale al raggio della circonferenza.]

== Equivalenze tra superfici: Pitagora ed Euclide

Nell'ambito della geometria, è utile assumere come concetti fondamentali quello di superficie piana e di estensione superficiale.

#definizione(title: "Principio di equivalenza")[Si definiscono equivalenti due superfici che possiedono la stessa estensione.]

L'equivalenza tra superfici rappresenta quindi un'alternativa alla sovrapponibilità: infatti, per determinare se due superfici sono uguali o, in caso contrario, quale sia maggiore, si confrontano le loro estensioni. Allo stesso modo, è possibile sommare e sottrarre le estensioni di due superfici. È postulato che l'equivalenza di superfici soddisfi le proprietà riflessiva, simmetrica e transitiva. Inoltre, la somma deve rispettare le proprietà commutativa e associativa. Un'importante implicazione di questi principi è che somme e differenze tra figure equivalenti restano equivalenti. Anche figure che si possono scomporre in parti equivalenti ordinate sono, a loro volta, equivalenti.

=== Studio dell'equivalenza nei poligoni

Analizzando il caso particolare dei poligoni, l'approccio all'equivalenza può essere semplificato utilizzando il concetto di equiscomponibilità: due poligoni si dicono equiscomponibili quando possono essere suddivisi in un numero determinato di poligoni, ciascuno uguale all'altro. È evidente che i poligoni equiscomponibili sono anche equivalenti e la maggior parte dei teoremi relativi all'equivalenza dei poligoni si basa sulla verifica della equiscomponibilità. Di seguito si riportano alcuni risultati fondamentali, utili per il calcolo delle aree dei poligoni:
- un parallelogramma e un rettangolo con basi e altezze uguali sono equivalenti
- due parallelogrammi aventi basi e altezze uguali sono equivalenti
- un triangolo è equivalente a un parallelogramma la cui base corrisponde alla metà della base del triangolo e la cui altezza è la medesima
- due triangoli con basi e altezze uguali sono equivalenti
- un trapezio è equivalente a un triangolo con la stessa altezza e una base pari alla somma delle basi del trapezio

#definizione(title: "Riduzione del numero di lati di un poligono", label: <def-riduzione-lati>)[Un poligono può essere trasformato in un altro equivalente che abbia un lato in meno.

#dimostrazione() Consideriamo quattro vertici consecutivi $A, B, C, D$ appartenenti al poligono originale e tracciamo la diagonale $A C$. Attraverso $B$, disegniamo una retta parallela alla diagonale $A C$, che interseca il prolungamento del lato $C D$ nel punto $P$. I due triangoli $A B C$ e $A P C$ risultano equivalenti poiché condividono la stessa base e altezza relativa.

Sostituendo i vertici $A, B, C, D$ con quelli $A, P, D$, si ottiene un nuovo poligono equivalente al precedente ma con un vertice (e dunque un lato) in meno rispetto all'originale.

#grafici_riduzione_poligono
]

=== I teoremi di Pitagora ed Euclide

I teoremi di Pitagora ed Euclide, tra i più celebri della geometria, rappresentano esempi fondamentali di relazioni basate sull'equivalenza tra superfici piane. In particolare, il teorema di Pitagora ha ispirato numerose dimostrazioni, spesso molto diverse tra loro. Tra queste, meritano una menzione speciale quelle fondate sul principio di equiscomposizione, che offrono spunti di particolare interesse.

#definizione(title: "Teorema di Pitagora", label: <def-teorema-pitagora>)[In un triangolo rettangolo, l'area del quadrato costruito sull'ipotenusa è equivalente alla somma delle aree dei quadrati costruiti sui due cateti.]

#grafico_pitagora

#definizione(title: "Primo teorema di Euclide", label: <def-primo-teorema-euclide>)[In un triangolo rettangolo, l'area del quadrato costruito su un cateto è equivalente all'area del rettangolo i cui lati sono costituiti dall'ipotenusa e dalla proiezione del cateto stesso sull'ipotenusa.]

#grafico_euclide1

#definizione(title: "Secondo teorema di Euclide", label: <def-secondo-teorema-euclide>)[In un triangolo rettangolo, l'area del quadrato costruito sull'altezza relativa all'ipotenusa è equivalente all'area del rettangolo i cui lati corrispondono alle proiezioni dei cateti sull'ipotenusa.]

#grafico_euclide2

//
== Misura delle grandezze e proporzionalità

Abbiamo ipotizzato di avere, fin dall'inizio, la capacità di misurare le grandezze geometriche. Presentiamo ora in sintesi i concetti principali legati a questa capacità.

Nell'analisi dei segmenti e degli angoli, abbiamo visto che è possibile confrontare due elementi tra loro per determinarne l'eguaglianza o per stabilire quale sia maggiore. Per segmenti e angoli sono state introdotte le operazioni di addizione e sottrazione, con la somma che segue le proprietà commutativa e associativa. Lo stesso discorso vale per le aree delle superfici estese. Questo porta alla seguente definizione formale.

#definizione(title: "Classe di grandezze")[Un insieme di figure costituisce una classe di grandezze se è possibile definire per esse una relazione di uguaglianza e disuguaglianza, così come operazioni di addizione e sottrazione in cui l'addizione è commutativa e associativa. Devono inoltre essere rispettate le consuete relazioni tra somma, uguaglianza e disuguaglianza. Grandezze della stessa classe si chiamano omogenee.]

I segmenti, gli angoli e le superfici sono esempi di classi di grandezze omogenee. Se una grandezza $A$ è la somma di $n$ grandezze uguali alla grandezza $B$, si dirà che $A$ è multiplo di $B$ secondo il numero $n$, scritto $A = n B$. Analogamente, $B$ è sottomultiplo di $A$, scritto $B = 1/n A$. Si possono anche utilizzare espressioni come $A = m/n B$: $A$ è multiplo secondo $m$ del sottomultiplo secondo $n$ di $B$.

Valgono due postulati principali:
- ogni grandezza geometrica può essere divisa in un qualsiasi numero di parti uguali (postulato della divisibilità)
- date due grandezze omogenee e disuguali, esiste un multiplo della minore che supera la maggiore (postulato di eudosso-archimede)

Due classi di grandezze omogenee si dicono separate se ogni elemento della prima è minore rispetto a ogni elemento della seconda. Se due classi sono separate, esiste almeno una grandezza più grande o uguale a ogni elemento della prima classe e minore o uguale a ogni elemento della seconda, definita elemento separatore delle due classi (postulato di Dedekind o della continuità). Se fissando una qualunque grandezza esiste una grandezza della seconda classe e una della prima con una differenza inferiore alla grandezza data, le classi si dicono contigue e l'elemento separatore risulta unico.

Nel caso delle superfici, l'unicità dell'elemento separatore non implica l'esistenza di un'unica superficie, ma di un'unica estensione.

Date due grandezze omogenee $A$ e $B$, se esistono $m$ e $n$ tali che $A = m/n B$, esse si dicono commensurabili. Questa relazione si può anche scrivere come $A/m = B/n$: due grandezze sono commensurabili se hanno un sottomultiplo comune; ugualmente si può scrivere come $n A = m B$: due grandezze sono commensurabili se hanno un multiplo comune. Possiamo esprimere il rapporto tra due grandezze commensurabili come $A/B = m/n$ oppure $A : B = m/n$, definendo così un numero razionale positivo.

Se non esiste alcun sottomultiplo comune tra due grandezze, esse sono dette incommensurabili. In tale caso, il rapporto non è definibile mediante i metodi precedentemente descritti. Tuttavia, tramite classi contigue, si può estendere il concetto di rapporto ottenendo un numero reale irrazionale. Un esempio storico è costituito dal rapporto tra il lato e la diagonale di un quadrato, che vale $sqrt(2)$.

=== Misurazione delle grandezze

I risultati relativi al rapporto tra due grandezze omogenee permettono di dare un significato preciso al concetto di misura di una data grandezza. Per ogni categoria di grandezze, si sceglie convenzionalmente una grandezza $U$, chiamata campione, e si definisce la misura di ogni singola grandezza di quella classe rispetto alla $U$ come il rapporto $A : U$. Poiché la misura di $U$ rispetto a sé stessa, ovvero il rapporto $U : U$, è uguale a 1, la $U$ stessa è denominata unità di misura.

Il risultato fondamentale sulle misure è espresso dal seguente teorema, che afferma l'esistenza di una corrispondenza biunivoca tra le grandezze di una qualunque classe e i numeri reali positivi.

#definizione(title: "Teorema")[Ogni grandezza, di qualsiasi classe, ammette come misura rispetto a un'unità prestabilita un numero reale razionale o irrazionale, a seconda che la grandezza sia commensurabile o meno con l'unità. Viceversa, scegliendo arbitrariamente un numero reale positivo, esiste sempre una sola grandezza della classe che ha per misura quel numero reale rispetto all'unità prefissata, ed essa è commensurabile o incommensurabile con l'unità secondo che il numero reale sia razionale o irrazionale.]

Le proprietà della misura delle grandezze sono illustrate nei teoremi seguenti.

#definizione(title: "Teorema")[Date due grandezze omogenee $A$ e $B$ e considerate le loro misure rispetto a un'unità qualsiasi; se $A$ è maggiore, minore o uguale a $B$, lo stesso vale per le loro misure. Viceversa, se la misura di $A$ è maggiore, minore o uguale a quella di $B$, anche la grandezza $A$ è rispettivamente maggiore, minore o uguale alla grandezza $B$.]

#definizione(title: "Teorema")[La somma e la differenza di due grandezze omogenee hanno come misura la somma e la differenza delle rispettive misure rispetto a un'unità prefissata.]

#definizione(title: "Teorema")[Il rapporto di due grandezze omogenee ha come misura il quoziente delle rispettive misure rispetto a un'unità stabilita.]

In casi particolari e particolarmente rilevanti, come i segmenti, gli angoli e le superfici estese, le misure assumono denominazioni specifiche: si chiamano lunghezze le misure dei segmenti, ampiezze quelle degli angoli e aree quelle delle superfici. Altre misure saranno esaminate nello studio della geometria dello spazio. Per le lunghezze, l'unità di misura usuale è il metro, insieme ai suoi multipli e sottomultipli decimali; per gli angoli, l'unità è il grado sessagesimale, pari a 1/360 dell'angolo giro, con i suoi sottomultipli: minuto (1/60 del grado) e secondo (1/60 del minuto), oltre ad eventuali sottomultipli decimali; per le aree, l'unità è il metro quadrato, con multipli e sottomultipli basati su 100.

=== Proporzionalità tra grandezze

Consideriamo quattro grandezze $A$, $B$, $C$ e $D$, omogenee a coppie. Se il rapporto tra le prime due grandezze è uguale al rapporto tra le seconde due, si afferma che queste grandezze formano una proporzione, espressa come $A : B = C : D$. Questo si legge come "$A$ sta a $B$, come $C$ sta a $D$". Le coppie $(A, B)$ e $(C, D)$ possono anche essere definite coppie di grandezze proporzionali.

Nelle proporzioni tra grandezze, si utilizza la stessa terminologia delle proporzioni numeriche: termini della proporzione, estremi e medi, antecedente e conseguente. Il seguente teorema consente di estendere alla proporzionalità tra grandezze le proprietà delle proporzioni numeriche:

#definizione(title: "Teorema")[Una condizione necessaria e sufficiente affinché quattro grandezze, omogenee a coppie, siano in proporzione è che lo siano le loro misure.]

Un altro teorema importante sulle proprietà delle proporzioni è il seguente:

#definizione(title: "Teorema")[Date tre grandezze $A$, $B$ e $C$, con $A$ e $B$ omogenee, esiste una ed una sola grandezza $X$ omogenea con $C$ tale che la proporzione $A : B = C : X$ sia valida.]

Prendiamo ora in considerazione due classi di grandezze $A, B, dots$ e $A', B', dots$, dove in ciascuna classe le grandezze sono tra loro omogenee e vi è una corrispondenza biunivoca tra le classi. Queste classi sono dette direttamente proporzionali, o semplicemente proporzionali, se per due qualunque grandezze $A$ e $B$ della prima classe e le corrispondenti $A'$ e $B'$ della seconda vale $A : B = A' : B'$.

Un esempio di classi di grandezze direttamente proporzionali è dato dai rettangoli con altezza fissata e dalle rispettive basi o con base fissata e dalle rispettive altezze: raddoppiando la base di un rettangolo, mantenendo fissa l'altezza, raddoppia l'area. Se invece si ha $A : B = B' : A'$, le due classi di grandezze sono dette inversamente proporzionali. Un esempio di grandezze inversamente proporzionali è dato dalle basi e altezze di rettangoli aventi la stessa area: raddoppiando la base di un rettangolo mantenendo costante l'area, l'altezza si dimezza.

Considerando questa definizione di proporzionalità, i teoremi di Euclide possono essere formulati come segue:
- Primo teorema di Euclide: In un triangolo rettangolo, un cateto è medio proporzionale tra l'ipotenusa e la proiezione del cateto sull'ipotenusa.
- Secondo teorema di Euclide: In un triangolo rettangolo, l'altezza relativa all'ipotenusa è media proporzionale tra le proiezioni dei cateti sull'ipotenusa.

Esiste anche il seguente teorema relativo agli archi di circonferenza e ai settori circolari:

#definizione(title: "Teorema", label: <def-prop-archi-angoli>)[Gli archi di una circonferenza, o di circonferenze uguali, i corrispondenti angoli al centro e i corrispondenti settori circolari formano tre classi di grandezze, a due a due direttamente proporzionali.]

=== Calcolo delle aree dei poligoni

Avendo già le misure delle grandezze, possiamo rivedere le formule per calcolare le aree dei principali poligoni, tenendo in mente quanto sappiamo sull'equivalenza. 
- l'area di un rettangolo si ottiene moltiplicando la lunghezza della base per l'altezza
- l'area di un quadrato è il quadrato della lunghezza di uno dei suoi lati
- l'area di un parallelogramma è data dal prodotto della lunghezza della base per l'altezza
- l'area di un triangolo è data dal prodotto della lunghezza della base per l'altezza, diviso per due
- l'area di un trapezio si ottiene moltiplicando la somma delle lunghezze delle due basi per l'altezza e dividendo per due
- l'area di un poligono regolare è data dal prodotto del perimetro per l'apotema, diviso per due

=== Misurazioni di circonferenza e cerchio

Consideriamo come nozione fondamentale il concetto di linea piana, che possiamo immaginare, ad esempio, come un filo sottile disteso su un piano o il bordo di una superficie piana. Va notato, tuttavia, che in alcuni casi questo concetto può risultare complesso, come dimostra la celebre "curva di Hilbert", capace di riempire un intero quadrato. Anche le rette e i segmenti sono esempi di linee; quelle diverse dai segmenti vengono spesso chiamate linee curve o semplicemente curve.

Il concetto di estensione lineare è anch'esso fondamentale e può essere visualizzato come un filo immaginato teso in forma di segmento (per esempio, la curva di Hilbert precedentemente menzionata possiede un'estensione infinita). Due linee con la stessa estensione sono dette equivalenti; un segmento equivalente a una linea con estensione finita è definito linea rettificata. La lunghezza di una linea è, quindi, data dalla lunghezza della linea rettificata.

Nel contesto della geometria euclidea piana, la circonferenza è la curva più significativa. La determinazione della sua lunghezza è un problema complesso che ha trovato soluzione solo nel 1882 grazie a un articolo di C.L.F. Lindemann, dopo oltre duemila anni di studi, dimostrando l'impossibilità di costruire con riga e compasso un segmento equivalente a una circonferenza. Questo problema è strettamente legato alla determinazione dell'area del cerchio, essendoci uno storico interesse verso la "quadratura del cerchio"#footnote[Il problema è menzionato anche da Dante nel _Paradiso_, canto XXXIII, versi 133 - 135: "Qual’è il geomètra che tutto s’affige per
misurar lo cerchio, e non ritrova, pensando, quel principio ond’elli indige,..."].

La misurazione della lunghezza della circonferenza e dell'area del cerchio si fonda sui seguenti teoremi:

#definizione(title: "Teorema")[La circonferenza rettificata è inferiore al perimetro di qualsiasi poligono regolare circoscritto e superiore al perimetro di qualsiasi poligono regolare inscritto. Un cerchio è sempre inferiore a ogni poligono regolare circoscritto e superiore a ogni poligono regolare inscritto.]

#definizione(title: "Teorema")[Dato un segmento $sigma$ arbitrario, è possibile stabilire due poligoni regolari, uno circoscritto e uno inscritto in qualsiasi circonferenza, in modo che la differenza tra i loro perimetri sia inferiore a $sigma$. Da ciò si deduce che la circonferenza rettificata rappresenta l'unico segmento maggiore del perimetro di qualsiasi poligono regolare inscritto e minore del perimetro di qualsiasi poligono regolare circoscritto in una data circonferenza. Stabilita arbitrariamente una superficie $Sigma$, si possono determinare due poligoni regolari, uno circoscritto e uno inscritto in un cerchio dato, tali che la loro differenza sia minore di $Sigma$. Ne consegue che il cerchio è l'unica superficie maggiore di qualsiasi poligono regolare inscritto e minore di qualsiasi poligono regolare circoscritto a un cerchio dato.]

#definizione(title: "Teorema")[Il rapporto tra la circonferenza rettificata e il suo diametro è costante, indicato con $pi$ (pi greco).]

#definizione(title: "Teorema")[Un cerchio è equivalente a un triangolo con base pari alla circonferenza rettificata e altezza pari al raggio.]

Di conseguenza, se $c$ rappresenta la lunghezza di una circonferenza, $r$ la lunghezza del suo raggio e $A$ l'area del cerchio, avremo:
$ c = 2 pi r quad A = pi r^2 $

Storicamente, uno dei primi tentativi di quantificare $pi$ risale ai babilonesi con l'approssimazione $pi approx 3$. Gli egiziani riuscirono a migliorare questa stima raggiungendo $pi approx 3.16$. Tra le civiltà antiche, Archimede ottenne il calcolo più accurato utilizzando un poligono a 96 lati, concludendo che $3.1408 < pi < 3.1429$. Attualmente, conosciamo $pi$ con un numero enorme di cifre decimali esatte; fino alla decima cifra abbiamo:

$ pi = 3.1415926535... $

Per determinare la lunghezza di un arco e l'area di un settore circolare, basta fare riferimento alla @def-prop-archi-angoli, qualora l'angolo al centro sia noto.

=== La similitudine

#definizione(title: "Teorema di Talete", label: <def-teorema-talete>)[Un insieme di rette parallele genera, su due trasversali, segmenti che sono proporzionali tra loro. Otteniamo:
$ A B : A'B' = A C : A'C' = B C : B'C' = C D : C'D' = dots $]

#grafico_talete

Una conseguenza diretta di questo teorema è descritta nel seguente: 

#definizione(title: "Teorema")[Una retta parallela a un lato di un triangolo crea, sugli altri due lati o sui loro prolungamenti, segmenti proporzionali; viceversa, se una retta divide due lati di un triangolo, o i loro prolungamenti, in segmenti proporzionali, essa è parallela al terzo lato.]

#definizione(title: "Poligoni simili", label: <def-poligoni-simili>)[Due poligoni con lo stesso numero di lati, i cui vertici sono ordinati in modo tale che abbiano angoli uguali e lati proporzionali, si definiscono simili. Il rapporto costante $k$ tra due lati corrispondenti è il rapporto di similitudine. Nei poligoni simili, i vertici con angoli uguali sono detti vertici omologhi e i lati tra coppie di questi vertici sono lati omologhi. È chiaro che due poligoni identici sono anche simili, con un rapporto di similitudine pari a 1.]

Per i triangoli, la definizione è ridondante perché si dimostra che se due triangoli hanno angoli ordinali uguali, allora hanno anche lati proporzionali; viceversa, se hanno lati ordinatamente proporzionali, i loro angoli sono uguali. Inoltre, se due triangoli hanno un angolo uguale e i lati che lo includono in proporzione, allora hanno tutti gli angoli uguali e il terzo lato proporzionale. Questi risultati sono sintetizzati nei seguenti criteri di similitudine dei triangoli:
- 1° criterio di similitudine: se due triangoli hanno due angoli corrispondenti uguali, e quindi tutti gli angoli uguali, sono simili
- 2° criterio di similitudine: se due triangoli hanno un angolo uguale e i due lati che lo includono in proporzione, allora sono simili
- 3° criterio di similitudine: se due triangoli hanno lati ordinatamente proporzionali, sono simili

Le seguenti proprietà si applicano a triangoli e poligoni simili:
- in due triangoli simili, le altezze relative a due lati omologhi sono proporzionali a tali lati
- due poligoni regolari con lo stesso numero di lati sono simili
- due poligoni simili, divisi da diagonali tracciate tra vertici omologhi, formano triangoli simili
- i perimetri di due poligoni simili hanno lo stesso rapporto del rapporto di similitudine
- i perimetri di due poligoni regolari con lo stesso numero di lati si rapportano come i rispettivi raggi e apotemi
- le aree di due poligoni simili si rapportano come i quadrati costruiti su due lati omologhi


=== Applicazioni della similitudine

#definizione(title: "Teorema della bisettrice dell'angolo interno", label: <def-bisettrice-angolo-interno>)[La bisettrice di un angolo interno di un triangolo divide il lato opposto in segmenti proporzionali agli altri due lati del triangolo.]

#definizione(title: "Teorema della bisettrice dell'angolo esterno", label: <def-bisettrice-angolo-esterno>)[La bisettrice di un angolo esterno di un triangolo interseca il prolungamento del lato opposto, a meno che non sia parallela, in un punto le cui distanze dagli estremi di quel lato sono proporzionali agli altri due lati.]

Come si nota nelle figure @grafico_bisettrici_triangolo1 e @grafico_bisettrici_triangolo2, per entrambi gli angoli interni ed esterni si ha che:
$ B D : D C = A B : A C $

#grafici_bisettrici_triangolo

#definizione(title: "Teorema delle due corde", label: <def-teorema-corde>)[Quando da un punto interno a una circonferenza vengono tracciate due corde, esse si dividono in modo tale che le porzioni di una siano le medie e quelle dell'altra gli estremi di una proporzione.]

#definizione(title: "Teorema delle due secanti", label: <def-teorema-secanti>)[Tracciate da un punto esterno a una circonferenza, due secanti formano una proporzione in cui un intero segmento di secante e la sua parte esterna sono le medie, mentre l'altro intero segmento di secante e la sua parte esterna sono gli estremi.]

#definizione(title: "Teorema della secante e della tangente", label: <def-teorema-secante-tangente>)[Disegnando una secante e una tangente da un punto esterno a una circonferenza, il segmento di tangente risulta medio proporzionale tra l'intero segmento di secante e la sua parte esterna.]

Nei primi due casi (#ref(<grafico_corde_secanti_tangente1>, supplement: "Figure") e #ref(<grafico_corde_secanti_tangente2>, supplement: none)) vale:
$ A C : A D = A E : A B $

mentre nel terzo (@grafico_corde_secanti_tangente3) caso:
$ A C : A D = A D : A B $

che può essere visto come un caso particolare del secondo in cui la secante $A D$ diventa tangente, facendo coincidere i punti $D$ ed $E$.

#grafici_corde_secanti_tangente

#definizione(title: "Parte aurea di un segmento", label: <def-parte-aurea>)[Si definisce parte aurea o sezione aurea di un segmento quella parte che è media proporzionale tra l'intero segmento e la parte rimanente:
$ A B : A C = A C : C B $]

// grafico

Per ottenere il valore di questo rapporto, noto come la costante di Fidia, poniamo che il segmento intero sia $A B = l$, la parte maggiore (la sezione aurea) sia $A C = x$ e che la parte restante sia $C B = l - x$

Sostituendo queste definizioni nella proporzione iniziale otteniamo:
$ l : x = x : (l - x) $

Applicando la proprietà prima descritta, ricaviamo:
$ x^2 = l · (l - x) $

Sviluppando la moltiplicazione e portando tutti i termini dallo stesso lato, si ottiene un'equazione di secondo grado rispetto a $x$:
$ x^2 + l x - l^2 = 0 $

Il numero aureo $Phi$ rappresenta il rapporto costante tra l'intero segmento e la parte maggiore, ovvero $Phi = l/x$.

Per isolare questo rapporto, dividiamo ogni termine dell'equazione precedente per $x^2$ (sapendo che $x != 0$):
$ x^2 / x^2 + (l x) / x^2 - l^2 / x^2 = 0 $

Semplificando e sostituendo $l/x$ con il simbolo $Phi$, otteniamo:

$ 1 + Phi - Phi^2 = 0 \ Phi^2 - Phi - 1 = 0 $

ovvero:

$ Phi = (1 plus.minus sqrt(5))/2 $

Visto che il rapporto tra due lunghezze positive deve essere obbligatoriamente positivo, si considera solo la soluzione positiva, $Phi = (1 plus sqrt(5))/2 approx 1.618$.

#grafico_segmento_aureo

#definizione(title: "Teorema", label: <def-teorema-decagono>)[Il lato di un decagono regolare inscritto in un cerchio rappresenta la sezione aurea del raggio.]

== Costruzioni con riga e compasso

Le costruzioni con riga e compasso sono state un'importante questione matematica sin dai tempi dei Greci. Effettuare una costruzione con questi strumenti significa determinare oggetti geometrici partendo da altri dati, usando esclusivamente una riga e un compasso. Con il termine "riga" ci riferiamo a uno strumento capace di tracciare una linea retta a partire da due punti, non una riga graduata per misurazione. Il compasso è uno strumento che traccia una circonferenza con un centro assegnato che passa per un certo punto e può replicare una lunghezza da un segmento esistente per creare una circonferenza con quell'assegnato raggio. Per tutte le figure geometriche, la correttezza del procedimento seguito ha più importanza rispetto al disegno effettivo su carta, dove i punti non hanno dimensioni e le linee non possiedono spessore.

Tra i problemi di costruzione più noti, ereditati dai Greci, troviamo la duplicazione del cubo (costruzione di un cubo con un volume doppio rispetto a uno dato), la trisezione di un angolo generico (divisione di un angolo dato in tre parti uguali), e la quadratura del cerchio (costruzione di un quadrato equivalente a un cerchio dato). A questi si aggiunge il problema della ciclotomia, ovvero la divisione di una circonferenza in n parti uguali, che equivale alla costruzione di un poligono regolare di n lati. I problemi della duplicazione del cubo e della quadratura del cerchio risultano sempre impossibili da risolvere con riga e compasso, mentre quello della trisezione di un angolo può essere risolto solo per pochi angoli particolari. La ciclotomia è risolvibile solo per alcuni valori di $n$, escludendo casi come $n = 7$ e $n = 9$. È sorprendente che molti testi di disegno tecnico presentino la costruzione di un ettagono e di un ennagono con riga e compasso senza specificare che tali costruzioni sono necessariamente approssimate.

In questo paragrafo presenteremo alcune delle costruzioni più rilevanti, rinviando a testi specialistici per un'analisi più approfondita. Un buon esercizio consiste nel dimostrare la correttezza delle costruzioni proposte utilizzando i teoremi presentati.

=== Divisione di un segmento a metà

Per dividere il segmento $overline(A B)$ a metà, si inizia tracciando due circonferenze con centri rispettivamente in $A$ e $B$, entrambe con un raggio maggiore della metà del segmento. Le circonferenze si incrociano nei punti $C$ e $D$. La linea $overline(C D)$ interseca $overline(A B)$ nel punto $M$, il quale risulta essere il punto medio del segmento. Inoltre, la retta $C D$ funge da asse del segmento $overline(A B)$.

#grafico_sezione_segmento

=== Divisione di un angolo a metà

Supponiamo di avere l'angolo $angle A B C$. Con centro in $B$ e un'apertura a scelta, si descrive un arco che incontra i lati dell'angolo nei punti $E$ e $D$. Utilizzando la stessa apertura, si tracciano due archi con centri in $E$ e $D$, che si incontrano in $F$ (diverso da $B$). La retta $B F$ funge da bisettrice dell'angolo, dividendolo in due parti uguali.

#grafico_sezione_angolo

=== Costruzione della perpendicolare a una retta da un punto

Se $P$ è un punto sulla retta o all'esterno di essa, si disegna una circonferenza con centro in $P$ che interseca la retta nei punti $A$ e $B$. L'asse del segmento $A B$ rappresenta la perpendicolare richiesta.

#grafico_perpendicolare_retta_punto

=== Costruzione di una parallela a una retta per un punto

Consideriamo la retta $r$ e un punto $P$ esterno ad essa. Con centro in un punto $A$ sulla retta $r$ e raggio uguale a $A P$, si disegna un arco che interseca $r$ nel punto $B$. Con centri in $P$ e $B$ e la stessa apertura del compasso, si tracciano due archi che si intersecano in $C$. La retta $P C$ rappresenta la parallela cercata.

#grafico_parallela_punto

=== Divisione a metà di un arco di circonferenza

Per dividere a metà l'arco $overparen(A B C)$, è sufficiente tracciare l'asse del segmento $A C$, che è la corda del suddetto arco.

#grafico_mezzo_arco

=== Costruzione della circonferenza passante per 3 punti

Se $A$, $B$, e $C$ sono tre punti distinti e non allineati, bisogna tracciare gli assi di due dei segmenti $overline(A B)$, $overline(B C)$ o $overline(A C)$. Il loro punto d'intersezione sarà il centro della circonferenza desiderata.

#grafico_circonferenza_tre_punti

=== Tangenti a una circonferenza

Diamo $O$ come centro della circonferenza considerata e $P$ come un punto esterno. Con centro nel punto medio $M$ di $overline(P O)$, si costruisce una circonferenza con raggio $overline(O M)$. I punti $A$ e $B$ risultanti dall'intersezione delle due circonferenze sono i punti di contatto delle tangenti richieste. Se $P$ appartiene alla circonferenza, basta tracciare la perpendicolare a $O P$ passante per $P$.

#grafico_punto_tangenti_circonferenza

=== Luogo dei punti che vedono un segmento sotto un dato angolo

Consideriamo il segmento $overline(A B)$ e un angolo $alpha$. Posizioniamo l'angolo in modo tale che il suo vertice coincida con $A$ e uno dei suoi lati si sovrapponga alla semiretta $A B$, chiamando $A C$ il secondo lato dell'angolo così posizionato. Dopodiché, si traccia da $A$ una perpendicolare ad $A C$, intersecando l'asse di $A B$ nel punto $O$. L'arco avente come centro $O$ e come estremi $A$ e $B$, insieme al suo arco simmetrico rispetto al segmento $overline(A B)$, rappresenta il luogo cercato.

#grafico_luogo_punti_segmento_angolo

=== Triangolo equilatero, quadrato ed esagono regolare inscritti in una circonferenza

Per inscrivere un quadrato in una circonferenza, sono sufficienti due diametri tra loro perpendicolari. Per l'esagono regolare, è importante sapere che il lato dell'esagono è uguale al raggio della circonferenza. Per inserire un triangolo equilatero, è sufficiente connettere tre vertici, a intervalli di due, di un esagono regolare. Dopo aver costruito il quadrato e l'esagono, si possono ottenere poligoni con 8, 16, 32, $dots$, o 12, 24, $dots$ lati semplicemente dimezzando successivamente gli archi tra vertici.

#grafici_costruzione_poligoni_regolari

=== Quadratura di un poligono

Ogni poligono può essere trasformato in uno con un lato in meno (@def-riduzione-lati). Ripetendo questa trasformazione, un poligono può essere convertito in un triangolo equivalente. Il triangolo può poi essere trasformato in un rettangolo con la stessa altezza e base dimezzata. Successivamente, si può trasformare il rettangolo in un quadrato equivalente usando il secondo teorema di Euclide: se $A B C D$ è il rettangolo con base $overline(A B)$ e altezza $overline(B C)$, si prende il segmento $overline(B E)$ uguale a $overline(B C)$ sul prolungamento di $overline(A B)$. Si costruisce una semicirconferenza con centro nel punto medio $F$ di $overline(A E)$ e diametro $overline(A E)$. Tracciando da $B$ la perpendicolare ad $overline(A E)$, essa interseca la semicirconferenza nel punto $G$. Il triangolo $A G E$ è rettangolo in $G$ e $overline(B G)$ rappresenta l'altezza relativa all'ipotenusa: il quadrato costruito su quest'altezza equivale al rettangolo dato.

#grafici_quadratura_poligono

=== Divisione di un segmento in parti proporzionali o uguali

Consideriamo un segmento $overline(A B)$ e i segmenti $m, n, p$. Tracciamo una semiretta qualsiasi che non passa per $B$, con origine in $A$. Su questa semiretta, a partire da $A$, riportiamo consecutivamente i segmenti $m, n, p$, ottenendo i punti $C, D, E$. Successivamente, tracciamo la retta $D E$ e le parallele a essa passanti per $C$ e $D$. Queste parallele intersecheranno il segmento $A B$ nei punti $C'$ e $D'$, risolvendo così il problema. Se i segmenti $m, n, p$ sono tutti uguali, allora $A B$ viene diviso in tre parti uguali. Lo stesso procedimento si applica per qualsiasi numero di segmenti.

#grafico_divisione_segmento

=== Costruzione del quarto proporzionale dopo tre segmenti dati

Siano dati i segmenti $m, n, p$. Consideriamo un angolo acuto qualsiasi $angle A B C$. Sul lato $B A$, a partire da $B$, riportiamo consecutivamente i segmenti $m$ e $n$ nei punti $D$ e $E$; sull'altro lato $B C$, a partire da $B$, riportiamo il segmento $p$ nel punto $F$. Connettendo $F$ a $D$, tracciamo una parallela a $F D$ che passa per $E$ e interseca $B C$ nel punto $G$; il segmento $F G$ è il quarto proporzionale, $q$.

#grafico_quarto_proporzionale

=== Costruzione del medio proporzionale

Dati i segmenti $m$ ed $n$, posizionarli consecutivamente su una retta nei punti $A, B$ e $C$. Dopo aver disegnato una semicirconferenza con diametro $A C$, tracciare perpendicolarmente da $B$ ad $A C$ e chiamare $D$ il punto d'intersezione con la semicirconferenza. Il segmento $B D$ è il medio proporzionale ricercato: nel triangolo rettangolo $A C D$, $m$ e $n$ sono le proiezioni dei cateti sull'ipotenusa e $B D$ è l'altezza relativa all'ipotenusa.

#grafico_medio_proporzionale

=== Costruzione della sezione aurea di un segmento

Dato un segmento $A B$, si disegna una circonferenza con centro $O$ sulla perpendicolare ad $overline(A B)$ proveniente da $B$ e raggio $O B$ definito come $(overline(A B)) / 2$ (trasposto da $overline(M B)$). Collegando $A$ con $O$, $D$ è il punto in cui $overline(A O)$ interseca la circonferenza. Il segmento $A D$ è la sezione aurea richiesta e può essere riportato su $overline(A B)$ con l'uso del compasso ($overline(A C)$). 

#grafico_sezione_aurea

Da notare come il punto $D$ non intersechi l'arco $overparen(M O)$ e che $overline(A C)$ è sempre maggiore di $overline(A M)$.

=== Costruzione del decagono, pentagono e pentadecagono regolari inscritti in un cerchio

Per costruire un decagono regolare, secondo il teorema descritto in @def-teorema-decagono, basta determinare la sezione aurea del raggio del cerchio. Saltando un punto di congiunzione a uno si ottiene il pentagono. Per costruire un pentadecagono si osserva il seguente: se $O$ è il centro del cerchio, $A B$ rappresenta il lato dell'esagono (raggio del cerchio) e $A C$ è la sua sezione aurea (lato del decagono), allora $C B$ sarà il lato del pentadecagono poiché l'angolo al centro $C O B$ misura 24°.

#grafici_costruzioni_decapenta

=== Costruzione di un segmento lungo $sqrt(n)$ volte l'unità

Assumendo che $u$ sia un segmento unitario, possiamo costruire con riga e compasso il segmento $sqrt(n) u$ per qualsiasi numero naturale $n$. Iniziamo costruendo una poligonale formata da due lati uguali ad $u$ e perpendicolari tra loro: il segmento che collega gli estremi corrisponde a $sqrt(2) u$. Ripetendo questo processo e riportando ripetutamente $u$ in modo perpendicolare al lato precedente si ottiene $sqrt(3) u$ e così via per $sqrt(4) u$, $sqrt(5) u$, $sqrt(6) u$ eccetera. Tuttavia, non è sempre necessario iniziare da una coppia di segmenti perpendicolari uguali a $u$; si può iniziare da un segmento uguale a $u$ e uno uguale a $sqrt(m) u$ dove $m$ è il quadrato perfetto immediatamente precedente $n$. Ad esempio, per $sqrt(17) u$ si può partire da $u$ e da $4u = sqrt(16) u$.

#grafico_costruzione_sqrtn

== Applicazioni dell'algebra alla geometria

In questa sezione presentiamo alcune formule fondamentali della geometria piana, molte delle quali derivano da teoremi già noti o sono loro dirette applicazioni.

=== Relazione tra lato e diagonale di un quadrato

Se $l$ e $d$ rappresentano rispettivamente il lato e la diagonale:
  $ d = l sqrt(2) $

=== Relazione fra gli elementi di un triangolo equilatero

Se $l$ è il lato, $h$ l'altezza (che funge anche da mediana e bisettrice) e $A$ l'area:
  $ h = (l sqrt(3)) / 2, quad A = (l^2 sqrt(3)) / 4 $

=== Lati dei poligoni regolari inscritti in un cerchio

Se $r$ è il raggio del cerchio e $l_n$ il lato del poligono regolare di $n$ lati:
  $ l_3 = r sqrt(3) \ l_4 = r sqrt(2) \ l_5 = r / 2 sqrt(10 - 2 sqrt(5)) \ l_6 = r \ l_10 = (r (sqrt(5) - 1)) / 2 $

=== Area di un triangolo (formula di Erone)

Se $a, b, c$ sono i lati di un triangolo e $p$ è il semiperimetro:
  $ A = sqrt(p(p - a)(p - b)(p - c)) $

=== Altezze di un triangolo in funzione dei lati

Dalla formula di Erone si derivano le altezze $h_a, h_b, h_c$ relative ai rispettivi lati:
  $ h_a = 2/a sqrt(p(p - a)(p - b)(p - c)) \ h_b = 2/b sqrt(p(p - a)(p - b)(p - c)) \ h_c = 2/c sqrt(p(p - a)(p - b)(p - c)) $

=== Mediane di un triangolo in funzione dei lati

Per le mediane $m_a, m_b, m_c$ relative ai lati $a, b, c$:
  $ m_a = sqrt((2b^2 + 2c^2 - a^2) / 4), \ m_b = sqrt((2c^2 + 2a^2 - b^2) / 4), \ m_c = sqrt((2a^2 + 2b^2 - c^2) / 4) $

=== Bisettrici di un triangolo in funzione dei lati

Considerando $s_a, s_b, s_c$ come le bisettrici relative ai lati $a, b, c$:
  $ s_a = 2 / (b + c) sqrt(b c · p(p - a)) \ s_b = 2 / (c + a) sqrt(c a · p(p - b)) \ s_c = 2 / (a + b) sqrt(a b · p(p - c)) $

=== Raggio del cerchio inscritto e circoscritto a un triangolo

Se $r$ ed $R$ sono rispettivamente i raggi dei cerchi inscritto e circoscritto al triangolo con area $A$ e semiperimetro $p$:
  $ r = A / p, quad R = (a b c) / (4A) $

=== Raggio dei cerchi ex-inscritti a un triangolo

Se $r_a, r_b$ e $r_c$ sono i raggi dei cerchi tangenti ai lati $a, b, c$:
  $ r_a = A / (p - a), quad r_b = A / (p - b), quad r_c = A / (p - c) $











