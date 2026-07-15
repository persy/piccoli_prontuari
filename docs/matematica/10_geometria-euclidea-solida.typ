#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *
#import "func/10_geometria-euclidea-solida.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

//=======

#intro[Nello studio della geometria dello spazio, o stereometria, l'attenzione si concentra frequentemente sui solidi fondamentali e sui loro volumi. Questo approccio può complicare la comprensione approfondita di tematiche avanzate, come la teoria delle funzioni reali di due variabili o gli spazi lineari tridimensionali e superiori, a livello universitario. Per questa ragione, in questo capitolo richiameremo le principali nozioni della geometria euclidea dello spazio. Lo faremo in modo sintetico, evitando di presentare dimostrazioni dei teoremi o di formalizzare le varie proprietà sotto forma di teoremi stessi.]

== Rette e piani nello spazio

=== Posizione reciproca di due rette
Due rette distinte nello spazio sono parallele se si trovano nello stesso piano e non condividono alcun punto. Se due rette nello spazio hanno un unico punto in comune, sono dette incidenti e sono sempre complanari. Se inoltre formano quattro angoli uguali, sono perpendicolari. Rette distinte che non siano né parallele né incidenti si definiscono sghembe; queste non condividono un piano comune: scegliendo due punti su una e due punti sull'altra, non esiste alcun piano contenente tutti e quattro i punti. Diversamente da quanto accade nel piano, due rette senza punti comuni possono essere parallele (e complanari) o sghembe (non complanari).

#grafico_rette_sghembe

=== Semispazi
Un piano $alpha$ nel suo insieme determina due semispazi opposti. Ciascun semispazio è costituito dal piano stesso, detto origine, e dai sottoinsiemi $S_1$ e $S_2$. Questi sottoinsiemi non condividono alcun punto comune e ogni segmento con entrambi gli estremi in uno dei sottoinsiemi non interseca $alpha$, mentre ogni segmento con un estremo in uno dei sottoinsiemi e l'altro nell'opposto interseca $alpha$ in un solo punto. I semispazi sono tutti equivalenti; ciascuno è una figura convessa; una retta che interseca un piano $alpha$ in un punto $P$, ma non appartiene a quel piano, viene divisa da $P$ in due semirette che appartengono rispettivamente ai due semispazi opposti dell'origine $alpha$.

=== Intersezioni tra piani e tra piani e rette

Quando due piani distinti condividono almeno un punto, essi contengono anche una retta comune che passa attraverso quel punto, conosciuta come retta di intersezione. Due piani senza punti in comune sono detti paralleli.

#definizione(title: "Angolo diedro")[Se nello spazio consideriamo due semipiani che hanno la stessa retta origine, essi dividono lo spazio in due parti, ciascuna definita come angolo diedro o semplicemente diedro.]

Le superfici dei semipiani sono dette facce del diedro, mentre la loro origine comune è detta spigolo. Se i due semipiani non giacciono sullo stesso piano, uno dei due diedri sarà convesso e l'altro concavo. Di default, quando parliamo di diedro, ci riferiamo a quello convesso, salvo diversa indicazione.

Proprio come per gli angoli piani, anche i diedri si possono confrontare e sommare. Possono esserci diedri consecutivi e adiacenti. Un diedro detto piatto coincide con un semispazio quando le sue facce si trovano sullo stesso piano. Diedri opposti rispetto allo spigolo sono uguali, tra le altre proprietà.

Due piani sono perpendicolari se, intersecandosi, formano quattro diedri uguali. Quando due rette sono parallele e un piano interseca una di esse senza contenerla, interseca inevitabilmente anche l'altra. Una retta è parallela ad un piano se non vi ha alcun punto in comune; quantomeno se è parallela a una delle rette appartenenti al piano. Da un punto esterno a un piano si possono tracciare infinite rette parallele al piano stesso; queste rette appartengono tutte a un piano unico, parallelo al piano di partenza.

#grafici_diedro_piani_perpendicolari

=== Perpendicolarità e parallelismo tra rette e piani

Analogamente al piano bidimensionale, per un punto al di fuori di una retta può essere tracciata una sola perpendicolare a essa. Al contrario, da un punto sulla retta si possono tracciare infinite perpendicolari che risiedono tutte in un medesimo piano (@grafico_perpendicolari_retta_piano1).

Ciò permette di definire la perpendicolarità tra retta e piano: una retta è perpendicolare a un piano in un punto $A$ se essa è perpendicolare a tutte le rette del piano che passano per $A$. Una retta $r$ che incontra un piano in un punto $A$ senza esserne perpendicolare è definita obliqua rispetto al piano. Una retta obliqua forma angoli diversi con le rette del piano passanti per $A$; tra queste ne esiste sempre una perpendicolare alla retta $r$ (@grafico_perpendicolari_retta_piano2).

Da ogni punto nello spazio è possibile tracciare un solo piano perpendicolare a una data retta e una sola retta perpendicolare a un dato piano. Il punto di intersezione tra questo piano e la sua retta perpendicolare è noto come piede della perpendicolare.

#grafici_perpendicolari_retta_piano

#definizione(title: "Teorema delle tre perpendicolari", label: <def-teorema-perpendicolari>)[Se dal piede $P$ di una retta $r$, che è perpendicolare a un piano $alpha$, si traccia la perpendicolare $s$ a qualsiasi retta $t$ nel piano, la retta $t$ risulta essere perpendicolare sia al piano contenente $r$ sia a quello contenente $s$.]

Due rette entrambe perpendicolari allo stesso piano sono parallele tra loro. Inoltre, se due rette sono parallele, qualsiasi piano che sia perpendicolare a una delle rette sarà anche perpendicolare all'altra.

Due piani paralleli alla stessa retta risultano essere paralleli reciprocamente. Quando un piano interseca due piani paralleli, le rette di intersezione create sono parallele tra loro. Se due rette coincidenti sono parallele a un dato piano, allora il piano creato da queste rette sarà parallelo al piano originale.

#grafico_teorema_tre_perpendicolari

#definizione(title: "Faccia della striscia")[Due piani paralleli dividono lo spazio in tre regioni distinte: due semispazi e una striscia solida centrale; tali piani paralleli vengono chiamati facce della striscia solida.]
//
== Proiezioni, distanze e angoli

La proiezione di un punto su un piano si definisce come il punto in cui la perpendicolare dal punto al piano tocca il piano stesso. Per una retta, la proiezione su un piano è l'insieme delle proiezioni di tutti i suoi punti sul piano. Se la retta non è perpendicolare al piano, la proiezione forma una retta; se è perpendicolare, coincide con il punto di intersezione della perpendicolare. Quando la retta è parallela, la proiezione è anch'essa parallela. Analogamente, la proiezione di un segmento segue gli stessi principi.

#grafici_proiezioni_piano

La distanza di un punto da un piano è definita come il segmento di perpendicolare che congiunge il punto al piano. In caso di una retta e un piano paralleli, la distanza della retta dal piano è la distanza di uno qualsiasi dei suoi punti dal piano; per due piani paralleli, la distanza tra di essi è misurata come la distanza tra un punto di uno dei due piani e l'altro piano, spesso detta altezza della striscia solida. Considerando una retta obliqua rispetto a un piano, la sua proiezione sul piano e il punto d'intersezione formano angoli acuti. Questi sono detti angoli tra la retta e il piano, rappresentando il minimo tra gli angoli acuti creati dalla retta e qualsiasi retta sul piano passante per l'intersezione.

Per due rette sghembe, l'angolo tra di esse è dato dall'angolo acuto o retto formato dalle parallele condotte da un punto nello spazio. Se tale angolo è retto, le rette sono dette perpendicolari o ortogonali, anche se non lo sono nel senso tradizionale.

Per due rette sghembe esiste una sola retta perpendicolare a entrambe e il segmento che congiunge le due rette tramite questa perpendicolare rappresenta la loro distanza minima. Si considera una parallela a una delle rette condotta da un punto sull'altra retta e si determina il piano contenente queste due. Da qui, viene condotto un piano perpendicolare che interseca uno dei piani nei punti necessari a tracciare la comune perpendicolare, caratterizzando così la distanza minima tra le rette. L'angolo evidenziato rappresenta l'angolo tra le due rette sghembe.

#grafici_angolo_retta_piano

== Angoloidi e poliedri

#definizione(title: "Angoloide", label: <def-angoloide>)[Un angoloide convesso, o semplicemente angoloide#footnote[Un angoloide è un tipo particolare di angolo solido, che può essere definito in modo semplificato. Immaginiamo una sfera e una curva semplice e chiusa disegnata su di essa. Successivamente, tracciamo delle semirette che partono dal centro della sfera e attraversano i punti di questa curva: la superficie delimitata da queste semirette divide lo spazio in due aree, ciascuna delle quali rappresenta un angolo solido. La misura di questo angolo è data dal rapporto tra la porzione di superficie sferica racchiusa entro l'angolo e il quadrato del raggio della sfera. L'unità di misura utilizzata per esprimere questo rapporto è lo steradiante.], è definito come l'intersezione di $n$ semispazi originati da piani, ciascuno dei quali contiene una delle $n$ semirette con un'origine comune. Queste semirette non sono complanari in gruppi di tre e sono disposte in modo che il piano formato da due semirette successive lasci tutte le altre dalla stessa parte.]

#grafico_angoloide1

Il punto d'origine comune è chiamato vertice, le semirette sono gli spigoli, e gli angoli convessi formati da due semirette consecutive sono le facce dell'angoloide. Un angoloide con tre facce è detto triedro, con quattro facce tetraedro, e così via.

Un angoloide può essere anche definito utilizzando un poligono non intrecciato in un piano e un punto $V$ fuori dal piano. L'angoloide è identificato da tutte le semirette con origine in $V$ che passano per i vertici del poligono. Se il poligono è convesso, l'angoloide risultante è convesso come descritto nella @def-angoloide; altrimenti, se il poligono è concavo, si ottiene un angoloide concavo che non verrà ulteriormente considerato. La somma degli angoli delle facce di un angoloide è minore di un angolo giro e ogni singola faccia ha un angolo minore della somma degli angoli delle altre facce.

#grafici_angoloide2-3

=== Piramide

#definizione(title: "Piramide")[Una piramide è definita dall'intersezione di un angoloide convesso di vertice $V$ e un semispazio la cui origine è un piano $alpha$ non passante per $V$ ma che interseca tutti gli spigoli dell'angoloide. Il piano $alpha$ interseca l'angoloide formando un poligono convesso detto base della piramide. I triangoli risultanti dall'intersezione delle facce dell'angoloide con il semispazio della piramide sono chiamati facce laterali. L'unione delle facce laterali costituisce la superficie laterale, mentre la superficie totale include sia la superficie laterale che la base. Gli spigoli della piramide comprendono i lati delle facce laterali e della base, mentre il vertice dell'angoloide coincide con quello della piramide. La distanza da $V$ al piano $alpha$ è l'altezza della piramide.]

Una proprietà delle piramidi stabilisce che una perpendicolare tracciata dal piede $H$ dell'altezza alla retta di uno spigolo della base, con un'intersezione nel punto $K$, determina in $V K$ l'altezza della corrispondente faccia triangolare rispetto allo spigolo della base.

#grafici_piramide

#definizione(title:"Teorema")[Quando una piramide viene sezionata da un piano parallelo alla base, il poligono risultante è simile alla base stessa; i loro perimetri sono proporzionali alle rispettive distanze dal vertice $V$, mentre le aree sono proporzionali ai quadrati di queste distanze.]

Questo lo si può notare osservando la @grafico_piramide_sezione.

#definizione(title: "Piramide retta")[Una piramide si definisce retta se la sua base è un poligono circoscritto#footnote[
Da notare che se il poligono di base non fosse circoscrittibile non avrebbe senso parlare di centro.] a un cerchio, e l'altezza cade nel centro di questo cerchio.]

In tali piramidi, le altezze#footnote[Questa proprietà deriva dal fatto che il poligono di base è circoscrittibile a un cerchio.] delle facce laterali rispetto agli spigoli della base sono uguali e si chiamano apotemi. Come si vede nella @grafico_piramide_retta, in una piramide retta, l'apotema $a$, l'altezza $h$, e il raggio $r$ del cerchio inscritto formano un triangolo rettangolo, rispettando la relazione:

$ a^2 = h^2 + r^2 $

#grafici_piramide_sezione_retta

Una piramide retta con base poligonale regolare è talvolta chiamata piramide regolare, sebbene impropriamente, poiché in geometria solida l'attributo "regolare" ha un'altra valenza.

Il calcolo delle aree della superficie laterale e totale di una piramide è reso semplice dall'applicazione delle note formule per le aree di triangoli e poligoni.

#definizione(title: "Tetraedro regolare")[Una piramide retta, con una base e tre facce laterali tutte triangoli equilateri, è conosciuta come tetraedro regolare.]

#grafici_tetraedro

In un tetraedro regolare, il termine faccia include anche la base. Infatti, ciascuna delle quattro facce può essere considerata come base, mentre il vertice opposto diventa il vertice del tetraedro. Inoltre, tutti gli spigoli e gli angoli diedri tra le due facce risultano identici. Quando si stende la superficie totale di un tetraedro regolare su un piano, si ottiene un triangolo equilatero con il lato che è il doppio della lunghezza di uno spigolo del tetraedro.

=== Tronco di piramide

#definizione(title: "Tronco di piramide")[Quando una piramide viene sezionata con un piano parallelo alla base, si divide in due parti: quella contenente il vertice rimane una piramide, mentre la parte senza il vertice è chiamata tronco di piramide a basi parallele, o più semplicemente tronco di piramide. Le basi del tronco sono poligoni simili, e le facce laterali sono trapezi.]

Se il tronco deriva da una piramide retta, viene chiamato tronco di piramide retta. In questo scenario, le facce laterali sono trapezi di uguale altezza, denominata apotema, e tutti e due i poligoni di base possono essere inscritti in un cerchio. Calcolare le aree delle superfici laterale e totale di un tronco di piramide è semplice utilizzando le formule note per i trapezi e i poligoni.

#grafici_piramide_tronca_retta

=== Prisma

#definizione(title: "Prisma")[Considerando $n$ ($n > 2$) rette parallele in un certo ordine, tre a tre non complanari, e tali che il piano formato da due di esse lasci tutte le altre dalla stessa parte, si definisce prisma convesso indefinito o prisma indefinito l'insieme comune agli $n$ semispazi originato dai piani determinati da due semirette consecutive che contengono tutte le altre rette da un lato.]

Queste rette parallele sono chiamate spigoli e le strisce tra due rette parallele consecutive sono le facce del prisma indefinito. Il poligono formato intersecando il prisma con un piano non parallelo agli spigoli è la sua sezione.

#definizione(title: "Prisma finito")[Un prisma finito, o semplicemente prisma, è l'intersezione di un prisma indefinito con una striscia solida le cui facce non sono parallele agli spigoli.]

Le basi sono poligoni uguali, le facce laterali sono parallelogrammi, e c'è un'altezza definita per il prisma. Gli spigoli indicano tutti i lati delle facce laterali e delle basi, e i vertici delle facce laterali e delle basi sono i vertici del prisma.
#v(3em)
#definizione(title: "Prisma retto")[Un prisma è detto retto se i piani delle basi sono perpendicolari agli spigoli laterali.]

Un prisma non retto si chiama obliquo. Per calcolare le aree della superficie laterale o totale di un prisma si possono utilizzare le formule conosciute per poligoni e parallelogrammi.

#grafici_prisma

==== Parallelepipedo e cubo

#definizione(title: "Parallelepipedo")[Un prisma con basi costituite da parallelogrammi è un parallelepipedo.]

In questo caso, anche le basi vengono chiamate facce, quindi un parallelepipedo ha sei facce tutte parallelogrammi. Due vertici non sulla stessa faccia sono opposti, e la loro connessione si chiama diagonale. Ogni parallelepipedo ha quattro diagonali che si incontrano in un unico punto medio per ciascuna di esse. Facce senza vertici comuni sono opposte e uguali. Qualsiasi coppia di facce può essere considerata come basi.

#definizione(title: "Parallelepipedo rettangolo")[Un parallelepipedo rettangolo è un parallelepipedo retto con due rettangoli come basi.]

Ogni faccia è un rettangolo, e i tre spigoli che si incontrano in un singolo vertice sono le dimensioni del solido. Le quattro diagonali di un parallelepipedo rettangolo sono uguali tra loro.

#definizione(title: "Cubo")[Un parallelepipedo rettangolo con tutte e tre le dimensioni uguali è chiamato cubo o esaedro regolare.]

#grafici_parallelepipedo
//
=== Poliedri in generale

#definizione(title: "Poliedro")[Una superficie poliedrica convessa è una figura costituita da poligoni convessi che non sono complanari tra loro, in modo tale che ogni lato di un poligono sia condiviso con un altro, e il piano di ogni poligono separi gli altri poligoni nel medesimo semispazio.]

Lo spazio racchiuso da una superficie poliedrica viene chiamato poliedro convesso. I poligoni, i lati e i vertici sono noti rispettivamente come facce, spigoli e vertici del poliedro. Gli angoli definiti dalle semirette degli spigoli che si dipartono da un vertice sono gli angoloidi; i diedri convessi, formati dai piani di due facce con uno spigolo in comune, sono i diedri del poliedro. Esempi di poliedri includono piramidi e prismi.

#definizione(title: "Formula di Eulero per i poliedri")[Dato un poliedro, se $f$ indica il numero delle facce, $n$ quello dei vertici e $s$ il numero degli spigoli, allora si ha la formula di Eulero per i poliedri:
$ f + n = s + 2 $]

Come visto nel caso del tetraedro regolare, la superficie totale di un poliedro può essere proiettata su un piano: si può appoggiare il poliedro su un piano e ruotare una faccia adiacente attorno al lato comune fino a portarla sullo stesso piano, ripetendo il processo per le altre facce adiacenti. In questo modo si ottiene un poligono formato dall'unione di molti poligoni identici alle facce del poliedro.

=== Poliedri regolari

#definizione(title: "Poliedro regolare")[Un poliedro convesso è considerato regolare quando tutte le sue facce sono poligoni regolari equivalenti e i suoi diedri sono uguali tra loro.]

#definizione(title: "Teorema")[Esistono solo cinque poliedri regolari convessi.

#dimostrazione()
La somma degli angoli delle facce di un angoloide convesso è inferiore a 360°, e un angoloide ha almeno tre facce.

Consideriamo i poliedri regolari con facce composte da triangoli equilateri, i cui angoli misurano 60° ciascuno: possono esistere angoloidi con 3, 4 o 5 facce da 60°. A questi corrispondono il tetraedro regolare con 4 facce, l'ottaedro regolare con 8 facce (@grafico_poliedro_regolare1) e l'icosaedro regolare con 20 facce (@grafico_poliedro_regolare3). Il tetraedro regolare ha 4 facce, 4 vertici e 6 spigoli; l'ottaedro regolare ha 8 facce, 6 vertici e 12 spigoli; l'icosaedro regolare ha 20 facce, 12 vertici e 30 spigoli.

Passiamo al caso delle facce quadrate. Dato che gli angoli di un quadrato sono di 90°, esiste solo un angoloide con 3 facce, corrispondente al cubo o esaedro regolare. L'esaedro regolare ha 6 facce, 8 vertici e 12 spigoli.

Infine, consideriamo le facce pentagonali. Sapendo che gli angoli dei pentagoni regolari misurano 108°, esiste un solo angoloide con 3 facce, corrispondente al dodecaedro regolare (@grafico_poliedro_regolare5), che ha 12 facce, 20 vertici e 30 spigoli. Per poligoni regolari con più di 5 lati, il triplo dei loro angoli supera i 360°, quindi non possono esistere poliedri regolari con tali facce.

Gli unici poliedri regolari sono dunque quelli menzionati, noti anche come solidi platonici.]

#grafici_poliedro_regolare
//
== Solidi rotondi

#definizione(title: "Superficie di rotazione")[Consideriamo un semipiano $alpha$ originato da una retta $a$ e una qualsiasi linea $gamma$ situata in $alpha$. La superficie che $gamma$ descrive durante una rotazione completa attorno ad $a$ è chiamata superficie di rotazione. Se si prende in considerazione una superficie chiusa $Sigma$ nel semipiano $alpha$, la medesima rotazione genererà una regione dello spazio nota come solido di rotazione. La retta $a$ funge da asse di rotazione e la linea $gamma$ agisce come generatrice della superficie di rotazione.]

#grafici_curva_piana

=== Cilindro

#definizione(title: "Cilindro indefinito")[Un cilindro indefinito è il solido creato dalla rotazione completa di una striscia attorno a una retta del suo contorno.]

La superficie derivata dalla rotazione della retta non fissa del contorno della striscia è denominata superficie cilindrica indefinita. La retta fissa del contorno della striscia si definisce asse del cilindro indefinito, mentre l'altra retta e tutte le rette da essa generate durante la rotazione sono chiamate generatrici della superficie cilindrica. L'altezza della striscia è definita raggio $r$ del cilindro indefinito. La superficie cilindrica costituisce il contorno del cilindro.

#definizione(title: "Cilindro retto")[Un cilindro circolare retto, o semplicemente cilindro, è l'intersezione di una striscia solida con un cilindro circolare indefinito il cui asse è perpendicolare alle due facce della striscia solida.]

L'altezza della striscia solida viene chiamata altezza del cilindro; i cerchi formati dall'intersezione del cilindro indefinito con le facce della striscia sono detti basi del cilindro; il raggio del cilindro indefinito corrisponde anche al raggio del cilindro.

Un cilindro può essere concepito come il solido generato dalla rotazione completa di un rettangolo attorno a uno dei suoi lati.

#definizione(title: "Cilindro equilatero")[Un cilindro è detto equilatero se la sua altezza è pari al diametro della base, ossia se la sezione con un piano passante per l'asse è un quadrato.]

#grafici_cilindro

#definizione(title: "Teorema")[La superficie laterale di un cilindro corrisponde a un rettangolo i cui lati sono l'altezza del cilindro e la circonferenza rettificata della base.]

Anche il cilindro obliquo è di notevole interesse nelle applicazioni, poiché risulta dall'intersezione di un cilindro circolare indefinito con due piani: uno perpendicolare all'asse e l'altro obliquo, senza che i piani si intersechino all'interno del cilindro stesso. In questo contesto, i due segmenti più lungo e più corto delle generatrici si chiamano altezza maggiore e altezza minore del cilindro.

#grafici_cilindro2

=== Cono

#definizione(title: "Cono indefinito")[Un cono indefinito è definito come il solido generato da un angolo acuto $alpha$ mediante la rotazione completa attorno a uno dei suoi lati.]

La superficie risultante dalla rotazione è nota come superficie conica indefinita. L'angolo $alpha$ viene chiamato semiapertura del cono. Il lato fisso dell'angolo $alpha$ è noto come asse del cono, mentre il lato che ruota, insieme a tutte le sue successive posizioni, costituisce le generatrici della superficie conica indefinita.

#definizione(title: "Teorema")[Le sezioni trasversali di un cono indefinito attraverso piani perpendicolari all'asse sono cerchi; le loro aree sono proporzionali al quadrato delle rispettive distanze dal vertice del cono.]

#definizione(title: "Teorema")[Un cono circolare retto, o semplicemente un cono, è ottenuto intersecando un cono indefinito con un semispazio contenente il vertice del cono, dove il piano d'origine interseca perpendicolarmente l'asse del cono in un punto diverso dal vertice.]

Il cerchio risultante dall'intersezione del piano d'origine con il cono indefinito è definito base del cono, mentre la distanza tra il vertice e la base è l'altezza. Le intersezioni delle generatrici con il semispazio sono chiamate apotemi e sono di lunghezza uguale. Un cono circolare retto può anche essere visualizzato come il solido ottenuto dalla rotazione di un triangolo rettangolo attorno a uno dei suoi cateti.

#grafici_cono

#definizione(title: "Teorema")[La superficie laterale di un cono è equivalente a un triangolo con la circonferenza di base rettificata come base e l'apotema come altezza.]

#definizione(title: "Tronco di cono")[Dato un cono con vertice $V$, consideriamo la sua sezione con un piano parallelo alla base. Questa divisione del cono crea due parti: quella contenente il vertice rimane un cono, mentre l'altra è conosciuta come tronco di cono a basi parallele, o semplicemente tronco di cono.]

I due cerchi di sezione vengono chiamati basi, la distanza tra questi cerchi è l'altezza, e i segmenti risultanti dalle generatrici sono chiamati lati o apotemi del tronco di cono. Un tronco di cono può essere visualizzato anche come il solido creato dalla rotazione di un trapezio rettangolo attorno al lato perpendicolare alle basi.

#grafici_tronco_cono
//
=== Sfera

#definizione(title: "Sfera")[Si dice sfera il solido generato da una rotazione completa di un semicerchio attorno al suo diametro. Si dice superficie sferica la superficie generata dalla rotazione completa di una semicirconferenza attorno al suo diametro. La superficie sferica è il contorno della sfera.]

Sia per la sfera che per la superficie sferica si considerano il centro e il raggio. La superficie sferica e la sfera possono anche essere definite come il luogo dei punti dello spazio aventi da un punto fisso, detto centro, distanza uguale o, rispettivamente, minore o uguale a un segmento assegnato, detto raggio.

Una retta ha due, uno o nessun punto in comune con una sfera a seconda che la sua distanza dal centro sia minore, uguale o maggiore del raggio; nei tre casi la retta si dice, rispettivamente, secante, tangente o esterna.

#grafici_sfera

Un piano ha in comune con una superficie sferica una circonferenza, un punto o nessun punto, a seconda che la sua distanza dal centro sia minore, uguale o maggiore del raggio; nei tre casi il piano si dice, rispettivamente, secante, tangente o esterno. Se un piano secante passa per il centro, la circonferenza intersezione ha lo stesso centro e raggio della superficie sferica; se non passa per il centro, ha raggio minore.

Una retta o un piano passanti per il centro di una superficie sferica si dicono diametrali. I piani passanti per un diametro qualunque intersecano la superficie sferica secondo circonferenze massime, dette meridiani (@grafico_sfera3). I piani perpendicolari al diametro intersecano la superficie secondo circonferenze minori, dette paralleli, di raggio diverso a seconda della distanza dal centro (@grafico_sfera4). Il piano passante per il centro individua la circonferenza massima, detta equatore. Il diametro a cui sono perpendicolari i piani sezionanti è detto asse e i suoi estremi sono detti poli.

#grafici_meridiani_paralleli

#definizione(title: "Teorema")[ L'area della superficie sferica è uguale a quattro volte l'area del suo cerchio massimo. Detto $r$ il raggio della sfera $Sigma$, si ha:
$ A(Sigma) = 4 pi r^2 $]

==== Parti della superficie sferica e della sfera

#definizione(title: "Calotta sferica")[ Data una superficie sferica e un piano $alpha$ perpendicolare in un punto $C$ a un suo diametro $overline(A B)$, si dice calotta sferica ciascuna delle due parti in cui la superficie viene divisa dal piano $alpha$ (@grafico_parte_sfera1). 

La corrispondente parte di sfera si chiama segmento sferico a una base (@grafico_parte_sfera2).]

La circonferenza di centro $C$, intersezione della superficie sferica con il piano $alpha$, si dice base della calotta, mentre il corrispondente cerchio è la base del segmento sferico; il segmento $overline(A C)$, oppure $overline(C B)$, si dice altezza della calotta o del segmento sferico.

#definizione(title: "Zona sferica")[Data una superficie sferica e due piani $alpha$ e $beta$ perpendicolari rispettivamente in $C$ e $D$ a un suo diametro $overline(A B)$, si dice zona sferica la parte di superficie sferica compresa tra i due piani (@grafico_parte_sfera3).

La corrispondente parte di sfera si chiama segmento sferico a due basi (@grafico_parte_sfera4).]

#definizione(title: "Teorema")[ L'area $A$ della superficie di una calotta o di una zona sferica di altezza $h$, appartenenti a una sfera di raggio $r$, è data da:
$ A = 2 pi r h $]

#grafici_parti_sfera

#definizione(title: "Fuso sferico")[Un fuso sferico è definito come l'intersezione di una superficie sferica con un diedro il cui spigolo passa per il centro della sfera stessa (@grafico_parte_sfera5).

La parte della sfera risultante viene chiamata spicchio sferico (@grafico_parte_sfera6). L'angolo del diedro è noto come angolo del fuso o dello spicchio.]

I fusi appartenenti alla stessa sfera sono proporzionali ai rispettivi angoli. L'area $A$ di un fuso può quindi essere determinata attraverso la proporzione:
$ 4 pi r^2 : A = 360° : alpha $

#grafici_parti_sfera2

==== Poliedri inscritti e circoscritti

Un poliedro è descritto come inscritto in una sfera quando tutti i suoi vertici giacciono sulla superficie della sfera. Al contrario, è considerato circoscritto se tutte le sue facce toccano la superficie della sfera. Un poliedro regolare può sempre essere sia inscritto che circoscritto a una sfera. 

Le sfere inscritte e circoscritte a un poliedro condividono lo stesso centro, noto come il centro del poliedro, che è anche il punto di intersezione di tutte le rette perpendicolari alle facce nei loro centri. Il raggio della sfera inscritta è chiamato apotema del poliedro, mentre il raggio della sfera circoscritta è noto come raggio del poliedro.

#grafici_sfera_poligoni1

#grafici_sfera_poligoni2

== Volume e estensione solida

Così come abbiamo trattato linee e superfici, consideriamo come concetto primitivo anche l'estensione dei solidi.

#definizione(title: "Solidi equivalenti")[Due solidi che hanno la stessa estensione si definiscono equivalenti.]

Tutti i principi relativi all'equivalenza delle superfici si applicano anche all'equivalenza tra solidi. Analogamente al caso delle superfici, le estensioni solide rappresentano una classe di grandezze omogenee. Così, come per le superfici, è possibile definire la misura delle estensioni solide scegliendo come unità un cubo costruito sull'unità di lunghezza. Questo ci porta a definire il volume come la misura di tale estensione solida.

Di seguito presentiamo i teoremi utili per calcolare il volume dei solidi esaminati. Salvo indicazioni differenti, i simboli utilizzati hanno significati chiari.

#definizione(title: "Volume di un prisma o di un cilindro")[Il volume di un prisma o di un cilindro si ottiene moltiplicando l'area della base per la lunghezza dell'altezza. In particolare, il volume di un parallelepipedo rettangolo è dato dal prodotto delle sue tre dimensioni:
  $ V = A_b · h $]

#definizione(title: "Volume di una piramide o di un cono")[Il volume di una piramide o di un cono corrisponde a un terzo del prodotto dell'area della base per l'altezza:
  $ V = 1/3 A_b · h $]

#definizione(title: "Volume di una sfera")[ Il volume di una sfera è pari a $4/3 pi$ moltiplicato per il cubo del raggio:
  $ V = 4/3 pi r^3 $]

#definizione(title: "Volume di un segmento e di uno spicchio sferico")[Il volume di un segmento sferico avente altezza $h$ e raggi di base $r_1$ e $r_2$ (dove uno dei due può essere nullo se vi è solo una base) è calcolato come:
  $ V = (pi h) / 6 · (h^2 + 3r_1^2 + 3r_2^2) $]

Per calcolare il volume di uno spicchio sferico, si può utilizzare la proporzione:
$ 4/3 pi r^3 : V = 360° : alpha $

== Altre formule di geometria solida

Per concludere questa introduzione alla stereometria, presentiamo alcune formule di geometria solida utili in molte applicazioni.

Iniziamo con le formule relative ai poliedri regolari, utilizzando le seguenti convenzioni:
- $l$: lunghezza di uno spigolo
- $V$: volume
- $A_T$: area della superficie totale
- $R$: raggio della sfera circoscritta
- $r$: raggio della sfera inscritta

=== Poliedri regolari

#definizione(title: "Volume del tetraedro regolare")[
  $ V = (l^3 sqrt(2)) / 12, quad A_T = l^2 sqrt(3), quad R = (l sqrt(6)) / 4, quad r = (l sqrt(6)) / 12 $]

#definizione(title: "Volume del cubo")[
  $ V = l^3, quad A_T = 6l^2, quad R = (l sqrt(3)) / 2, quad r = l / 2 $]

#definizione(title: "Volume dell'ottaedro regolare")[
  $ V = (l^3 sqrt(2)) / 3, quad A_T = 2l^2 sqrt(3), quad R = (l sqrt(2)) / 2, quad r = (l sqrt(6)) / 6 $]

#definizione(title: "Volume del dodecaedro regolare")[
  $ V = (l^3 (15 + 7 sqrt(5))) / 4, quad A_T = 3l^2 sqrt(5(5 + 2 sqrt(5))) $
  $ R = (l sqrt(3(1 + sqrt(5)))) / 4, quad r = (l sqrt(250 + 110 sqrt(5))) / 20 $]

#definizione(title: "Volume dell'icosaedro regolare")[
  $ V = (5l^3 (3 + sqrt(5))) / 12, quad A_T = 5l^2 sqrt(3) $
  $ R = (l sqrt(10 + 2 sqrt(5))) / 4, quad r = (l sqrt(3(3 + sqrt(5)))) / 12 $]

=== Altri solidi

#definizione(title: "Volume del cilindro obliquo")[ Con $h_max$ e $h_min$ come le altezze maggiore e minore, e $r$ il raggio della base circolare:
  $ V = pi r^2 (h_max + h_min) / 2 $
  $ A_L = pi r (h_max + h_min) $
  $ A_"base" = pi r^2 $
  $ A_"ellisse" = pi r sqrt((v u)^2 + (h_max - h_min)^2 / 4) $]

#definizione(title: "Volume del tronco di cono")[ Anche se il volume può essere determinato differenziando i volumi di due coni, la seguente formula può risultare utile:
  $ V = pi h (r^2 + R r + R^2) / 3 $]
