#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La chimica inorganica studia le proprietà degli elementi analizzandole in relazione alla loro posizione nella tavola periodica e alle configurazioni elettroniche che ne derivano. Essa descrive lo stato naturale degli elementi, i processi industriali e di laboratorio impiegati per la loro preparazione, nonché i loro principali utilizzi. Inoltre, esamina le proprietà, i metodi di sintesi e gli impieghi dei principali composti di ciascun elemento, escludendo tuttavia la maggior parte dei composti del carbonio, che costituiscono il focus della chimica organica.]

== Idrogeno

L'idrogeno, indicato con il simbolo H e caratterizzato dal numero atomico 1 e dalla configurazione elettronica 1s¹, rappresenta il primo elemento della tavola periodica. Sebbene sia spesso collocato formalmente nel gruppo I A, in realtà non è attribuibile a nessun gruppo specifico, poiché possiede proprietà uniche che lo distinguono dagli altri elementi. Si presenta come un gas diatomico, incolore, inodore e insapore, avente una molecola biatomica H#sub[2] e caratterizzato da un punto di fusione pari a -259,2 °C e un punto di ebollizione di -252,7 °C.

Nell'atmosfera terrestre l'idrogeno si trova in concentrazioni estremamente ridotte; tuttavia, è relativamente abbondante in forma combinata, principalmente sotto forma di acqua (H#sub[2]O) e composti organici quali idrocarburi, carboidrati, lipidi e proteine. Rappresenta circa il 15% degli atomi presenti sulla crosta terrestre ed è l'elemento più abbondante nell'Universo, costituendo circa il 90% degli atomi presenti e trovando larga distribuzione nelle stelle e nei gas interstellari.

L'idrogeno naturale è formato da tre isotopi: il protium (#super[1]H), che costituisce circa il 99,9% dell'idrogeno presente in natura; il deuterio (#super[2]H), che rappresenta circa lo 0,016%; e il trizio (#super[3]H), isotopo radioattivo. A temperatura ambiente l'idrogeno manifesta una scarsa reattività chimica; tuttavia, una volta acceso in presenza di aria, combustiona con una fiamma caratteristica azzurra e altamente calorifica. Durante tale processo reagisce con l'ossigeno (O) generando acqua secondo la seguente reazione chimica:

$ 
  2H_2 + O_2 -> 2H_2O
$

L'idrogeno forma composti binari molecolari con tutti i non-metalli, adottando un numero di ossidazione pari a +1. Inoltre, con la maggior parte dei metalli genera composti binari ionici denominati idruri, nei quali è presente sotto forma di ione H#super[--] con numero di ossidazione -1. Negli acidi l'idrogeno compare come ione H#super[+] dissociabile (protone) in soluzione acquosa.

In ambito laboratoriale, il metodo maggiormente impiegato per la produzione di idrogeno si basa sulla reazione tra un metallo non nobile, come lo zinco (Zn), e un acido quale l'acido solforico (H#sub[2]SO#sub[4]), secondo la seguente reazione:

$ 
  "Zn" + H_2"SO"_4 -> "ZnSO"_4 + H_2
$

A livello industriale, l'idrogeno è comunemente ottenuto attraverso processi di cracking catalitico degli idrocarburi o mediante reazioni che coinvolgono ossigeno in condizioni di difetto o vapore d'acqua associato agli idrocarburi.

Le principali applicazioni dell'idrogeno riguardano la sintesi dell'ammoniaca e del metanolo, i processi di idrogenazione e le operazioni di saldatura e taglio dei metalli tramite l'utilizzo della fiamma ossidrica. Inoltre, allo stato liquido trova impiego come propellente per motori a razzo, spesso mescolato con ossigeno liquido.

Si prevede che in futuro il suo utilizzo come combustibile crescerà notevolmente; ad esempio, l'idrogeno potrebbe trovare largo impiego nel settore automobilistico grazie alla sua elevata resa calorifica e all'emissione esclusiva di acqua come sottoprodotto della combustione, rendendo tale processo ecologicamente vantaggioso.

== Gruppo I A: Metalli Alcalini

I metalli alcalini del gruppo I A comprendono: litio (Li), sodio (Na), potassio (K), rubidio (Rb), cesio (Cs) e francio (Fr). Questi elementi si caratterizzano per la presenza di un unico elettrone di valenza, il quale viene facilmente ceduto, generando un catione monovalente positivo con numero di ossidazione pari a +1. Tale comportamento conferisce ai metalli alcalini un'elevata reattività, che cresce proporzionalmente al numero atomico. Pertanto, in natura non si trovano mai in forma elementare, ma esclusivamente in composti ionici, generalmente sotto forma di sali.

Tra i metalli alcalini, il sodio e il potassio sono quelli di maggiore diffusione e importanza. Al contrario, il rubidio e il cesio sono relativamente rari, mentre il francio è un elemento radioattivo. Le proprietà chimiche e fisiche di questa famiglia variano in modo regolare con l'incremento del numero atomico. Tutti i metalli alcalini condividono caratteristiche quali una consistenza solida ma tenera, duttilità, malleabilità e punti di fusione relativamente bassi. Quando esposti all'aria, essi bruciano con una fiamma intensa formando i corrispondenti perossidi. La reazione di questi metalli con l'acqua produce i rispettivi idrossidi fortemente basici accompagnata da un rilascio di idrogeno gassoso:

$
  mark(2"Na", tag: #<1>)
  +
  mark(2H_2O, tag: #<2>)
  -->
  mark(2"NaOH", tag: #<3>)
  +
  mark(H_2, tag: #<4>)
  arrow.t
  
  #annot(<1>)[#align(center)[sodio]]
  #annot(<2>)[#align(center)[acqua]]
  #annot(<3>)[#align(center)[idrossido \ di sodio]]
  #annot(<4>)[#align(center)[idrogeno]]
  
$
#v(10pt)
Essi interagiscono direttamente con numerosi non metalli, inclusi gli alogeni, lo zolfo, il fosforo e l'idrogeno, portando alla formazione di alogenuri, solfuri, fosfuri e idruri. Il metodo predominante per la loro preparazione consiste nell'elettrolisi dei sali corrispondenti, in particolare dei cloruri, allo stato fuso.

#figure(
  caption: [Caratteristiche dei metalli alcalini (Gruppo IA)],
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
  columns: (7),
  table.header[Caratteristica][Litio][Sodio][Potassio][Rubidio][Cesio][Francio],
  [Numero atomico],	[3],	[11],	[19],	[37],	[55],	[87],
  [Configurazione elettronica],	[[He]2s#super[1]],	[[Ne]3s#super[1]],	[[Ar]4s#super[1]],	[[Kr]5s#super[1]],	[[Xe]6s#super[1]],	[[Rn]7s#super[1]],
  [Punto di fusione (°C)],	[180],	[97,8],	[63,2],	[39],	[28,5],	[-],
  [Punto di ebollizione (°C)],	[1347],	[881,4],	[756,5],	[688],	[678],	[-]
)  
)

== Gruppo II A: Metalli Alcalino-Terrosi

I metalli alcalino-terrosi del gruppo II A includono: berillio (Be), magnesio (Mg), calcio (Ca), stronzio (Sr), bario (Ba) e radio (Ra). Gli atomi di questi elementi possiedono due elettroni di valenza, che tendono a cedere facilmente per formare cationi bivalenti positivi con numero di ossidazione pari a +2. Analogamente ai metalli alcalini, anche i metalli alcalino-terrosi sono altamente reattivi, con una reattività che aumenta all'aumentare del numero atomico. Di conseguenza, non si rinvengono liberi in natura ma solamente sotto forma di composti, prevalentemente silicati, solfati e carbonati.

Il magnesio e il calcio rappresentano gli elementi più abbondanti sulla crosta terrestre; lo stronzio e il bario sono meno comuni, mentre il berillio è piuttosto raro e il radio è estremamente scarso e radioattivo. Le proprietà chimiche e fisiche dei metalli alcalino-terrosi mostrano significative somiglianze all'interno del gruppo, particolarmente tra calcio, stronzio, bario e radio; il berillio e il magnesio si distinguono per alcune differenze specifiche.

Rispetto ai metalli alcalini, questi elementi presentano maggiore durezza, punti di fusione più elevati e densità più alta. I loro idrossidi esibiscono un carattere basico che cresce con l'aumentare del numero atomico. Reagiscono agevolmente con gli alogeni, ossigeno, carbonio, zolfo e idrogeno per formare alogenuri, ossidi, carburi, solfuri e idruri; tutti i composti ottenuti sono di natura ionica.

#figure(
  caption: [Caratteristiche dei metalli alcalino-terroso (Gruppo IIA)],
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
  columns: (7),
  table.header[Caratteristica][Berillio][Magnesio][Calcio][Stronzio][Bario][Radio],
  [Simbolo],	[Be],	[Mg],	[Ca],	[Sr],	[Ba],	[Ra],
  [Numero atomico],	[4],	[12],	[20],	[38],	[56],	[88],
  [Configurazione elettronica],	[[He]2s#super[2]],	[[Ne]3s#super[2]],	[[Ar]4s#super[2]],	[[Kr]5s#super[2]],	[[Xe]6s#super[2]],	[[Rn]7s#super[2]],
  [Punto di fusione (°C)],	[1287],	[649],	[839],	[768],	[727],	[700],
  [Punto di ebollizione (°C)],	[∼2500],	[1105],	[1494],	[1381],	[1849],	[1700],
)  
)

== Gruppo III A

Gli elementi del gruppo III A sono: boro (B), alluminio (Al), gallio (Ga), indio (In), tallio (Tl). 

Gli atomi di questi elementi possiedono tre elettroni di valenza, e ciò li porta ad avere un numero di ossidazione +3 nella maggior parte dei loro composti, siano essi covalenti o ionici. L'alluminio, il gallio, l'indio e il tallio sono solidi, morbidi, lucenti e buoni conduttori di calore ed elettricità. Il boro, invece, si presenta duro, fragile, nero ed è un semimetallo che può combinarsi con molti elementi. Il carattere metallico di questi elementi aumenta man mano che cresce il numero atomico; gli ossidi passano da essere acidi, nel caso del boro, a progressivamente basici fino al tallio. Inoltre, l'alluminio ha proprietà anfotere: si scioglie negli acidi formando sali di alluminio e nelle basi generando alluminati.

$
  mark(2"Al", tag: #<1>)
  +
  mark(6"HCl", tag: #<2>)
  -->
  mark(3"AlCl", tag: #<3>)_3
  +
  mark(3H_2, tag: #<4>)
  arrow.t
  
  #annot(<1>)[#align(center)[alluminio]]
  #annot(<2>)[#align(center)[acido \ cloridrico]]
  #annot(<3>)[#align(center)[cloruro di \ alluminio]]
  #annot(<4>)[#align(center)[idrogeno]]
  
$
#v(10pt)
$
  mark(2"NaOH", tag: #<2>)
  +
  mark(2"Al", tag: #<1>)
  +
  mark(6H_2O, tag: #<3>)
  -->
  mark(2"Na"["Al"("OH")_4], tag: #<4>)
  +
  mark(3H_2, tag: #<5>)
  arrow.t
  
  #annot(<1>)[#align(center)[alluminio]]
  #annot(<2>)[#align(center)[idrossido \ di sodio]]
  #annot(<3>)[#align(center)[acqua]]
  #annot(<4>)[#align(center)[alluminato \ di sodio]]
  #annot(<5>)[#align(center)[idrogeno]]
  
$

#figure(
  caption: [Caratteristiche degli elementi del gruppo IIIA],
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
  columns: (6),
  table.header[Caratteristica][Boro][Alluminio][Gallio][Indio][Tallio],
  [Simbolo], [B], [Al], [Ga], [In], [Tl],
  [Numero atomico], [5], [13], [31], [49], [81],
  [Configurazione elettronica], [[He]2s#super[2]2p#super[1]], [[Ne]3s#super[2]3p#super[1]], [[Ar]3d#super[10]4s#super[2]4p#super[1]], [[Kr]4d#super[10]5s#super[2]5p#super[1]], [[Xe]4f#super[14]5d#super[10]6s#super[2]6p#super[1]],
  [Punto di fusione (°C)], [2300], [660], [29,8], [157], [303],
  [Punto di ebollizione (°C)], [2550], [2467], [2403], [2000], [1460]
)  
)

== Gruppo IV A

Gli elementi del gruppo IV A includono: carbonio (C), silicio (Si), germanio (Ge), stagno (Sn), piombo (Pb). 

Pur avendo tutti quattro elettroni di valenza, manifestano caratteristiche molto diverse tra loro. All'aumentare del numero atomico, aumenta il carattere metallico: il carbonio è un non metallo, il silicio e il germanio sono semimetalli, mentre stagno e piombo sono metalli con proprietà ben marcate. Il numero di ossidazione più comune per questi elementi è +4, sebbene sia possibile osservare +2 (nel caso di carbonio, stagno e piombo) e −4 (per carbonio e silicio). 

Carbonio e silicio sono particolarmente diffusi in natura e svolgono ruoli fondamentali: il carbonio è presente in tutte le sostanze organiche, rappresentando così un elemento imprescindibile per la vita, mentre il silicio è, dopo l'ossigeno, il principale costituente della litosfera.

#figure(
  caption: [Caratteristiche degli elementi del gruppo IVA],
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
  columns: (6),
  table.header[Caratteristica][Carbonio][Silicio][Germanio][Stagno][Piombo],
[Simbolo], [C], [Si], [Ge], [Sn], [Pb],
[Numero atomico], [6], [14], [32], [50], [82],
[Configurazione elettronica], [[He]2s#super[2]2p#super[2]], [[Ne]3s#super[2]3p#super[2]], [[Ar]3d#super[10]4s#super[2]4p#super[2]], [[Kr]4d#super[10]5s#super[2]5p#super[2]], [[Xe]4f#super[14]5d#super[10]6s#super[2]6p#super[2]],
[Punto di fusione (°C)], [3350], [1420], [937,4], [232], [327],
[Punto di ebollizione (°C)], [4827], [2355], [2830], [2270], [1751],
)  
)

== Gruppo V A

Gli elementi che appartengono al gruppo V A sono: azoto (N), fosforo (P), arsenico (As), antimonio (Sb), bismuto (Bi). 

Mentre azoto e fosforo sono non metalli, arsenico e antimonio sono semimetalli, e il bismuto è un metallo. Il carattere acido degli ossidi diminuisce scendendo lungo il gruppo. Questi elementi hanno cinque elettroni di valenza e mostrano numeri di ossidazione comuni al gruppo: −3, +3 e +5. Azoto e fosforo formano principalmente composti con legami covalenti. Tra i membri del gruppo, azoto e fosforo sono significativamente più diffusi in natura rispetto agli altri elementi.

#figure(
  caption: [Caratteristiche degli elementi del gruppo VA],
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
  columns: (6),
  table.header[Caratteristica][Azoto][Fosforo][Arsenico][Antimonio][Bismuto],
  [Simbolo], [N], [P], [As], [Sb], [Bi],
  [Numero atomico], [7], [15], [33], [51], [83],
  [Configurazione elettronica], [[He]2s#super[2]2p#super[3]], [[Ne]3s#super[2]3p#super[3]], [[Ar]3d#super[10]4s#super[2]4p#super[3]], [[Kr]4d#super[10]5s#super[2]5p#super[3]], [[Xe]4f#super[14]5d#super[10]6s#super[2]6p#super[3]],
  [Punto di fusione (°C)], [−209,8], [44,1], [814,5], [630,7], [273],
  [Punto di ebollizione (°C)], [−195,8], [280], [616], [1750], [1560],
)  
)

== Gruppo VI A

Gli elementi del gruppo VI A comprendono: ossigeno (O), zolfo (S), selenio (Se), tellurio (Te), polonio (Po). 

Questi elementi formano legami utilizzando 2, 4 o 6 elettroni, assumendo così numeri di ossidazione −2, +4 o +6. L'ossigeno costituisce un caso particolare, poiché vi troviamo un n.o. −2 nella maggior parte dei suoi composti e un n.o. −1 nei perossidi. Ossigeno e zolfo sono non metalli; scendendo lungo il gruppo aumenta gradualmente il carattere metallico degli elementi: selenio e tellurio sono semiconduttori, mentre il polonio presenta proprietà di buon conduttore. Alla temperatura ambiente l'ossigeno si trova sotto forma di gas biatomico (O#sub[2]); gli altri elementi del gruppo sono solidi e i loro punti di fusione e ebollizione incrementano con l'aumento delle dimensioni atomiche. Lo zolfo forma molecole ottoatomiche (S#sub[8]) a differenza dell'ossigeno biatomico.

#figure(
  caption: [Caratteristiche degli elementi del gruppo VIA],
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
  columns: (6),
  table.header[Caratteristica][Ossigeno][Zolfo][Selenio][Tellurio][Polonio],
[simbolo], [O], [S], [Se], [Te], [Po],
[numero atomico], [8], [16], [34], [52], [84],
[configurazione elettronica], [[He]2s#super[2]2p#super[4]], [[Ne]3s#super[2]3p#super[4]], [[Ar]3d#super[10]4s#super[2]4p#super[4]], [[Kr]4d#super[10]5s#super[2]5p#super[4]], [[Xe]4f#super[14]5d#super[10]6s#super[2]6p#super[4]],
[punto di fusione (°C)], [−218,8], [112,8], [220], [449,8], [254],
[punto di ebollizione (°C)], [−182,96], [444,6], [∼685], [990], [962],
)  
)

== Gruppo VII A: Alogeni

Gli elementi appartenenti al gruppo VII A sono fluoro (F), cloro (Cl), bromo (Br), iodio (I) e astato (At), con quest'ultimo caratterizzato da radioattività.

Questi elementi sono tipicamente non metallici, poiché tendono ad acquisire un elettrone per formare ioni monovalenti negativi, raggiungendo così una configurazione elettronica stabile. A temperatura ambiente, il fluoro e il cloro si presentano come gas, il bromo è liquido, mentre iodio e astato sono solidi. Tutti, nella loro forma elementare, si trovano sotto forma di molecole diatomiche.

Gli alogeni sono molto reattivi, con il fluoro che mostra la massima reattività, diminuita progressivamente fino allo iodio. Reagiscono facilmente con i metalli formando sali corrispondenti (alogenuri) e, combinandosi con l'idrogeno, producono idruri gassosi. Questi ultimi, in presenza di acqua, generano acidi alogenidrici come fluoridrico, cloridrico, bromidrico e iodidrico, nei quali il numero di ossidazione degli alogeni è −1. Ad eccezione del fluoro, gli altri alogeni possono assumere numeri di ossidazione da −1 a +7. Gli alogeni sono presenti in grandi quantità nell'acqua di mare sotto forma di sali, tra cui spicca il cloruro di sodio (NaCl), noto come il comune sale da cucina. Inoltre, fluoro, cloro e iodio sono elementi essenziali per il regno vegetale e animale. L'astato, al contrario, è estremamente raro.

#figure(
  caption: [Caratteristiche degli alogeni (gruppo VIIA)],
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
  columns: (6),
  table.header[Caratteristica][Fluoro][Cloro][Bromo][Iodio][Astato],
[Simbolo], [F], [Cl], [Br], [I], [At],
[Numero atomico], [9], [17], [35], [53], [85],
[Configurazione elettronica], [[He]2s#super[2]2p#super[5]], [[Ne]3s#super[2]3p#super[5]], [[Ar]3d#super[10]4s#super[2]4p#super[5]], [[Kr]4d#super[10]5s#super[2]5p#super[5]], [[Xe]4f#super[14]5d#super[10]6s#super[2]6p#super[5]],
[Punto di fusione (°C)], [−219,6], [−101], [−7,2], [113,7], [—],
[Punto di ebollizione (°C)], [−188,1], [−34,7], [58], [183], [—],
)  
)

== Gruppo VIII A: Gas nobili

I gas nobili, noti anche come elementi del gruppo VIII A o gruppo O, includono elio (He), neon (Ne), argon (Ar), cripton (Kr), xenon (Xe) e radon (Rn), con l'ultimo elemento caratterizzato da radioattività.

Questi elementi si distinguono per essere gas monoatomici incolore, insapore e inodore e sono noti per la loro straordinaria stabilità chimica. La scarsissima tendenza a formare composti è legata alla loro particolare configurazione elettronica esterna: elio ha due elettroni nello strato esterno, mentre gli altri ne hanno otto (configurazione a ottetto). I gas nobili sono presenti nell'atmosfera in tracce minime, fatta eccezione per l'argon che supera la percentuale dello 0,9% in volume. La loro produzione avviene come sottoprodotto dell'estrazione di azoto e ossigeno dall'aria liquida.

#figure(
  caption: [Caratteristiche dei gas nobili (gruppo VIIIA)],
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
  columns: (7),
  table.header[Caratteristica][Elio][Neon][Argon][Kripton][Xenon][Radon],
  [Simbolo], [He], [Ne], [Ar], [Kr], [Xe], [Rn],
  [Numero atomico], [2], [10], [18], [36], [54], [86],
  [Configurazione elettronica], [1s#super[2]], [[He]2s#super[2]2p#super[6]], [[Ne]3s#super[2]3p#super[6]], [[Ar]4s#super[2]4p#super[6]], [[Kr]5s#super[2]5p#super[6]], [[Xe]6s#super[2]6p#super[6]],
  [Punto di fusione (°C)], [-272], [-249], [-189], [-157], [-112], [-110],
  [Punto di ebollizione (°C)], [-269], [-246], [-186], [-153], [-107], [-62],
)  
)

== Metalli di transizione

I metalli di transizione sono gli elementi dei gruppi B (da IB a VIII B) del sistema periodico. Questi comprendono tutti gli elementi caratterizzati da orbitali interni incompleti. Nei periodi lunghi del sistema periodico (4º, 5º e 6º periodo) si verifica il riempimento progressivo degli orbitali 3d, 4d e 5d (serie di tipo d), mentre nei lantanidi (6º periodo) e attinidi (7º periodo) avviene il riempimento successivo degli orbitali 4f e 5f (serie di tipo f).

Ad eccezione del mercurio che è liquido, tutti i metalli di transizione sono solidi con elevati punti di fusione e ebollizione. Si caratterizzano per la durezza, eccellenti proprietà di conduzione del calore e dell'elettricità e una limitata reattività chimica. Alcuni di essi, come oro, argento, platino e rame, vengono definiti metalli nobili per la loro ridotta tendenza a legarsi con altri elementi. Formano composti variamente colorati e possono assumere numeri di ossidazione diversi grazie alla capacità di formare legami utilizzando gli elettroni dell'ultimo e del penultimo livello.

Il sottogruppo VIII B è composto da nove elementi che mostrano significative somiglianze orizzontali. Per questo motivo vengono suddivisi in tre triadi: quella del ferro, quella del palladio e quella del platino. Dal punto di vista pratico, i metalli di transizione più rilevanti sono ferro e rame.

#show table.cell.where(x: 4): set text(weight: "bold")
#show table.cell.where(x: 8): set text(weight: "bold")

#figure(
  caption: [Caratteristiche degli elementi di transizione],   table(
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
  columns: (12),
  table.header[Elementi 1#super[a] serie#footnote[I livelli fino a 3s#super[2]3p#super[6] sono completi.]][3d][4s][Punto di fusione (°C)][Elementi 2#super[a] serie #footnote[I livelli fino a 4s#super[2]4p#super[6] sono completi.]][4d][5s][Punto di fusione (°C)][Elementi 3#super[a] serie #footnote[I livelli fino a 5s#super[2]5p#super[6] sono completi.]][5d][6s][Punto di fusione (°C)],
  [Scandio (Sc)], [1], [2], [1539], [Ittrio (Y)], [1], [2], [1523±8], [Lantanio (La)], [1], [2], [920±5],
  [Titanio (Ti)], [2], [2], [1660±10], [Zirconio (Zr)], [2], [2], [1852±2], [Afnio (Hf)], [2], [2], [2227±20],
  [Vanadio (V)], [3], [2], [1890±10], [Niobio (Nb)], [4], [1], [2468±10], [Tantalio (Ta)], [3], [2], [2996],
  [Cromo (Cr)], [5], [1], [1857±20], [Molibdeno (Mo)], [5], [1], [2617], [Tungsteno (W)], [4], [2], [3410±20],
  [Manganese (Mn)], [5], [2], [1244±3], [Tecnezio (Tc)], [6], [1], [2172], [Renio (Re)], [5], [2], [3180],
  [Ferro (Fe)], [6], [2], [1535], [Rutenio (Ru)], [7], [1], [2310], [Osmio (Os)], [6], [2], [3045±30],
  [Cobalto (Co)], [7], [2], [1495], [Rodio (Rh)], [8], [1], [1966±3], [Iridio (lr)], [9], [—], [2410],
  [Nichel (Ni)], [8], [2], [1453], [Palladio (Pd)], [10], [—], [1552], [Platino (Pt)], [9], [1], [1772],
  [Rame (Cu)], [10], [1], [1083,4], [Argento (Ag)], [10], [1], [961,9], [Oro (Au)], [10], [1], [1064,4],
  [Zinco (Zn)], [10], [2], [419,6], [Cadmio (Cd)], [10], [2], [320,9], [Mercurio (Hg)], [10], [2], [-38,87]
  )  
)

#pagebreak()
#set page(fill: black.lighten(90%))
== *🧩* Gli elementi chimici e i loro utilizzi <senza_numero>

/ Litio: È ampiamente utilizzato nelle batterie al litio e trova applicazioni rilevanti nel settore nucleare. La sua capacità di assorbire neutroni è tra le più basse, rendendolo ideale per i reattori nucleari.

/ Sodio: 
  - Stato naturale: È presente in diverse forme, tra cui salgemma (cloruro di sodio), sale marino disciolto nei mari (circa 30 g/l), nitro del Cile (nitrato di sodio), silicati, carbonati, solfati e borati.  
  - Preparazione: Si ottiene tramite elettrolisi del cloruro di sodio fuso, utilizzando il processo Downs.  
  - Usi: Trova impiego nelle lampade stradali a vapori di sodio e, in lega con il potassio allo stato fuso, come fluido termovettore negli scambiatori di calore dei reattori autofertilizzanti.  
  - Composti:  
    - Cloruro di sodio (NaCl): Prodotto per cristallizzazione dall'evaporazione delle acque marine nelle saline.  
    - Idrossido di sodio o soda caustica (NaOH): Base forte utilizzata nella produzione di carta, detersivi, coloranti e materie plastiche.  
    - Carbonato di sodio o soda (Na#sub[2]CO#sub[3]): impiegato nell'industria del vetro, dei saponi, della carta e metallurgica. È prodotto attraverso il metodo Solvay, che coinvolge reazioni chimiche successive:  

      $"NaCl" + "NH"_3 + H_2O + "CO"_2 -> "NH"_4"Cl" + "NaHCO"_3  \ 2"NaHCO"_3  +( "calore") → "Na"_2"CO"_3 + H_2O + "CO"_2  $

/ Potassio:  
  - Stato naturale: Presente in minerali come la silvite (cloruro di potassio), silicati e in alcune piante.  
  - Preparazione: Si ricava per elettrolisi del cloruro di potassio fuso.  
  - Usi: Viene utilizzato nei fertilizzanti sotto forma di cloruro, nitrato e solfato.  
  - Composti:  
    - Bromuro di potassio (KBr): Adoperato in fotografia e come sedativo farmacologico.  
    - Carbonato di potassio (K#sub[2]CO#sub[3]):: utilizzato nella produzione di vetro, smalti e saponi.  
    - Clorato di potassio (KClO#sub[3]): Potente ossidante.  
    - Idrossido di potassio (KOH):: Base forte impiegata nella preparazione di saponi molli e nelle batterie alcaline, sia a secco che al nichel-cadmio.  
    - Ioduro di potassio (KI): usato principalmente in fotografia.

/ Rubidio: Il rubidio-87, suo radioisotopo naturale con un tempo di dimezzamento pari a circa 4,7 × 10#super[10] anni, è impiegato nelle tecniche di datazione geologica.

/ Cesio: Viene largamente utilizzato nelle celle fotoelettriche grazie alla sua elevata capacità di emissione elettronica.

/ Berillio: Trova applicazioni nei reattori nucleari come moderatore e nella produzione di leghe speciali destinate al settore aerospaziale.

/ Magnesio: 
  - Stato naturale: il magnesio si trova in natura principalmente sotto forma di dolomite (carbonato doppio di calcio e magnesio), magnesite (carbonato di magnesio) e carnallite (cloruro idrato di magnesio e potassio). Inoltre, esso è presente in vari silicati e solfati, e si manifesta nell'acqua di mare sotto forma di ione Mg#super[2+].  
  - Preparazione: la produzione del magnesio avviene attraverso l'elettrolisi del cloruro di magnesio fuso.  
  - Usi: Grazie alla sua leggerezza, il magnesio è ampiamente utilizzato nella produzione di leghe metalliche destinate ai settori aeronautico e automobilistico.  
  - Composti: il carbonato di magnesio (MgCO#sub[3]) è impiegato nella produzione di materiali refrattari; l'ossido di magnesio (MgO) trova applicazione nei refrattari e, in campo medico, come antiacido; il solfato di magnesio (MgSO#sub[4]) è utilizzato nell'industria tessile e come lassativo.  
  - Importanza biologica: il magnesio è un elemento essenziale per gli organismi viventi, essendo contenuto nei tessuti muscolari e costituendo un componente fondamentale della clorofilla.

/ Calcio:
  - Stato naturale: il calcio si trova principalmente nella calcite (carbonato di calcio), presente in rocce calcaree e marmi, nella dolomite (carbonato doppio di calcio e magnesio) e nella fluorite (fluoruro di calcio). Si trova disciolto come ione Ca²⁺ nelle acque marine e dolci, contribuendo alla durezza dell'acqua.  
  - Preparazione: il calcio viene prodotto mediante elettrolisi del cloruro di calcio fuso.  
  - Usi: il metallo calcio è utilizzato come agente riducente e affinante nei processi metallurgici.  
  - Composti: la calce viva (ossido di calcio, CaO), ottenuta per arrostimento del carbonato di calcio (CaCO#sub[3]), reagisce con acqua formando l'idrossido di calcio [Ca(OH)#sub[2]], usato come legante per malte e cementi. Il solfato di calcio biidrato (CaSO#sub[4]·2H#sub[2]O), noto come gesso, per riscaldamento si trasforma in solfato di calcio emiidrato (CaSO#sub[4]·½H#sub[2]O), impiegato in edilizia. Il fosfato tricalcico [Ca#sub[3]\(PO#sub[4]\)#sub[2]] è usato come fertilizzante.  
  - Importanza biologica: il calcio è indispensabile per la vita e si trova in tutti gli organismi vegetali e animali. Nei vertebrati è presente nei denti, sotto forma di fosfato di calcio, e nelle ossa, sotto forma di fosfato e carbonato di calcio. Inoltre, sotto forma di ione, contribuisce alla composizione del sangue. Molti organismi marini impiegano il calcio disciolto per costruire conchiglie e scheletri calcarei, come nel caso dei coralli.

/ Stronzio:
  - Stato naturale: lo stronzio si rinviene nella celestina (solfato di stronzio) e nella stronzianite (carbonato di stronzio).  
  - Usi: lo stronzio è impiegato in alcune leghe metalliche, come assorbitore di gas nei tubi a vuoto e nella fabbricazione di fuochi artificiali.
#v(2em)
/ Bario:
  - Stato naturale: il bario è presente principalmente nella baritina (solfato di bario) e nella witerite (carbonato di bario).  
  - Composti: l'ossido di bario (BaO) viene utilizzato come additivo per lubrificanti. Il solfato di bario (BaSO#sub[4]) è impiegato come pigmento bianco nell'industria della carta e delle vernici, oltre che come mezzo di contrasto per esami radiologici del tubo digerente. Il nitrato di bario [Ba(NO#sub[3])#sub[2]] trova applicazione in pirotecnica, conferendo alla fiamma una colorazione verde.

/ Boro:
  - Stato naturale: il boro si trova in stato naturale sotto varie forme, come il borace (Na,B,O, 10H#sub[2]O) e la kernite (Na,B#sub[4]O#sub[7] · 4H#sub[2]O). Nei soffioni boraciferi di Larderello, si presenta sotto forma di acido borico. 
  - Preparazione: il boro è ottenuto attraverso la riduzione del triossido di boro (BO#sub[3]) con magnesio o tramite elettrolisi del fluoborato di potassio (KBF).
  - Usi: il boro è impiegato nella produzione di leghe speciali ad alta durezza e come elemento drogante nella fabbricazione dei semiconduttori.
  - Composti: il borace trova applicazione nella produzione di vetri speciali; l'acido metaborico (HBO) come disinfettante; il perborato di sodio (NaBO·H#sub[2]O·3H#sub[2]O) viene utilizzato come sbiancante nei detersivi.

/ Alluminio:
  - Stato naturale dell'Alluminio: l'alluminio si presenta in natura sotto forma di silicati e ossidi in vari minerali, tra cui la bauxite (miscela di ossidi e idrossidi di alluminio) e il corindone (ossido di alluminio cristallino), che esiste in diverse varianti cromatiche come rubino e zaffiro.
  - Preparazione: la produzione dell'alluminio parte dalla bauxite, che viene trasformata in allumina anidra (Al#sub[2]O#sub[3]) e successivamente sottoposta a elettrolisi allo stato fuso. Questa operazione avviene dentro celle elettrolitiche in presenza di criolite (fluoruro doppio di alluminio e sodio), utilizzata come fondente. Durante il processo, l'alluminio si deposita sul catodo delle celle elettrolitiche.
  - Usi: l'alluminio, grazie alla sua leggerezza, conducibilità termica ed elettrica, resistenza alla corrosione e facilità di lavorazione, è utilizzato in numerosi settori. In lega con rame, zinco, magnesio, manganese, litio o titanio, forma leghe leggere impiegate nella costruzione di mezzi di trasporto, nell'industria elettrica, chimica e nel settore edilizio.
  - Composti: Tra i composti principali vi sono l'acetato basico di alluminio [Al(CH#sub[3]COO) · OH], usato come astringente, antisettico e mordente nella tintura; il tricloruro di alluminio (AlCl#sub[3]), impiegato come catalizzatore per molte reazioni organiche; il fosfato di alluminio (AlPO#sub[4]), utilizzato come fondente per ceramiche, vetro e refrattari; e il solfato di alluminio idrato [Al#sub[2]\(SO#sub[4]\)#sub[3] · 18H#sub[2]O], utilizzato come agente flocculante nel trattamento delle acque inquinate.

/ Carbonio:
  - Stato naturale del Carbonio: il carbonio si trova in diverse forme allotropiche cristalline, come grafite e diamante. È inoltre presente nel petrolio, nei carboni fossili (antracite, litantrace, lignite, torba), nel gas naturale e nei carbonati delle rocce calcaree. Si riscontra anche nell'atmosfera sotto forma di anidride carbonica (CO#sub[2]) e monossido di carbonio (CO).
  - Usi: il carbonio è impiegato sotto forma di carboni artificiali, tra cui coke metallurgico, ottenuto dalla distillazione a secco del litantrace e utilizzato in metallurgia; carbone vegetale o di legna, prodotto mediante distillazione secca del legno, impiegato come combustibile; carbone animale, preparato per distillazione secca delle ossa animali, usato come decolorante.
  - Composti inorganici: uno dei più importanti composti è il monossido di carbonio (CO), un gas incolore e inodore estremamente tossico. Esso si forma quando il carbonio brucia in difetto d'aria o facendo passare anidride carbonica su carbone rovente. Questo gas è rischioso poiché può legarsi stabilmente con l'emoglobina, ostacolando il trasporto dell'ossigeno nel sangue.

    $ 
      "CO"_2 + C arrows.rl 2 "CO"
    $

    Nell'industria, il gas d'acqua (miscela di monossido di carbonio e idrogeno, CO + H#sub[2]) si ottiene tramite la riduzione del vapore d'acqua con carbone rovente.
    Il diossido di carbonio o anidride carbonica (CO#sub[2]) è un gas incolore e inodore, non tossico e più pesante dell'aria. Solidifica a -79 °C formando il ghiaccio secco ed è solubile in acqua, dove reagisce formando acido carbonico (H#sub[2]CO#sub[3]), i cui sali sono i carbonati (contenenti lo ione CO#sub[3]#super[2-]) e i bicarbonati (con lo ione HCO#sub[3]#super[--]).

/ Silicio: 
  - Stato naturale: in natura si presenta principalmente sotto forma di silice e quarzo (biossido di silicio) o nei silicati che costituiscono molte rocce. Viene prodotto tramite la riduzione della silice con carbonio ad alta temperatura. È impiegato come semiconduttore nei dispositivi elettronici e nelle leghe metalliche. 
  - Composti: tra i suoi composti principali vi sono la silice (SiO#sub[2]), che si trova in diverse forme cristalline tra cui quarzo, opale, ametista e calcedonio, utilizzata nella produzione di vetro e cementi, e i siliconi, polimeri impiegati nell'industria elettronica e chimica.

/ Germanio: 
  - Stato naturale: si trova in tracce nei carboni fossili, sotto forma di ossido di germanio, oltre che in alcuni minerali di stagno, piombo, zinco e arsenico. 
  - Produzione: la produzione avviene tramite la riduzione del diossido di germanio mediante riscaldamento con idrogeno o carbonio, dopo una serie di passaggi per ottenerlo dai minerali. Le sue applicazioni principali riguardano i dispositivi elettronici, previa purificazione.

/ Stagno: 
  - Stato naturale: in natura si trova principalmente nella cassiterite (biossido di stagno, SnO2). 
  - Produzione: la produzione avviene per riduzione della cassiterite con carbone nei forni a riverbero. 
  - Usi: viene impiegato per rivestire lamiere d'acciaio e nella produzione di leghe come bronzo e peltro.
#v(2em)
/ Piombo: 
  - Stato naturale: in natura è presente nei minerali galena (solfuro di piombo), cerussite (carbonato di piombo) e anglesite (solfato di piombo). 
  - Produzione: la produzione prevede l'arrostimento della galena (PbS), seguito dalla riduzione dell'ossido di piombo (PbO) ottenuto. 
  - Usi: trova impiego nella fabbricazione di piastre per accumulatori elettrici, come materiale schermante contro le radiazioni e nella preparazione del peltro, una lega composta anche da stagno, rame e antimonio.

/ Azoto: 
  - Stato naturale: costituisce il 78% in volume dell'atmosfera terrestre sotto forma di molecola biatomica N#sub[2] e si trova anche in forma composta nel nitrato di sodio (nitro del Cile). 
  - Produzione: viene prodotto tramite distillazione frazionata dell'aria liquida. 
  - Usi: principalmente utilizzato come gas inerte in processi chimici o metallurgici e nella sintesi dell'ammoniaca (NH#sub[3]), ottenuta tramite il processo Haber:

    $ N_2 + 3H_2 arrows.rl 2"NH"_3 + 91,8 "KJ" $

    Essendo una reazione esotermica con diminuzione del numero di moli, viene favorita da temperature basse e pressioni elevate secondo il principio di Le Chatelier. 
  - Composti:
    - L'ammoniaca è un gas incolore dall'odore pungente che si forma durante la decomposizione di sostanze organiche azotate; è altamente solubile in acqua e si comporta come una base debole. Viene prodotta industrialmente per la fabbricazione di fertilizzanti, acido nitrico (HNO#sub[3]), materie plastiche, fibre sintetiche, coloranti e come fluido refrigerante nei frigoriferi.
    - L'acido nitrico (HNO#sub[3]) è un liquido che bolle a 83 °C ed è classificato come un acido forte. La sua produzione industriale avviene per ossidazione catalitica dell'ammoniaca. Questo composto trova ampio impiego nella sintesi di fertilizzanti, nitrocomposti organici e coloranti. 
    - L'azoto, inoltre, forma numerosi ossidi gassosi con l'ossigeno: 
      il protossido di azoto (N#sub[2]O, con numero di ossidazione dell'azoto pari a +1), l'ossido di azoto (NO, numero di ossidazione +2), il triossido di diazoto o anidride nitrosa (N#sub[2]O#sub[3], numero di ossidazione +3), che reagendo con l'acqua genera acido nitroso (HNO#sub[2]), il diossido di azoto (NO#sub[2], numero di ossidazione +4) e il pentossido di diazoto o anidride nitrica (N#sub[2]O#sub[5], numero di ossidazione +5), il quale in presenza di acqua forma acido nitrico. Tra gli altri composti derivati dall'azoto si segnalano l'idrazina (H#sub[2]N–NH#sub[2]) e l'idrossilammina (NH#sub[2]OH).

/ Fosforo:
  - Stato naturale: si trova in natura principalmente sotto forma di apatite, un fosfato di calcio che contiene anche fluoro, e fosforite, anch'essa composta da fosfato di calcio. Questo elemento è essenziale per gli organismi viventi, in quanto è presente negli acidi nucleici (DNA e RNA), nei composti organici con legami fosforici ad alta energia come l'ATP, e nelle ossa, sotto forma di fosfato di calcio. Il fosforo elementare esiste in due forme allotropiche: il fosforo bianco (P4), caratterizzato da elevata reattività e tossicità, e il fosforo rosso, un solido covalente meno reattivo e meno tossico. 
  - Produzione: industrialmente, il fosforo è prodotto mediante un processo elettrotermico alla temperatura di 1400 °C utilizzando una miscela di fosfato di calcio, silice e carbone. 

  $ 
    2 "Ca"_3("PO"_4)_2 + 10 C + 6 "SiO"_2 -> P_4 + 10 "CO" + 6 "CaSiO"_3
  $
  - Usi: le applicazioni principali includono le sintesi organiche e la produzione di fiammiferi (utilizzando il fosforo rosso). 
  - Composti: tra i suoi composti rilevanti si annoverano il pentossido di difosforo o anidride fosforica (P#sub[2]O#sub[5]) e diversi acidi fosforici: l'acido metafosforico (HPO#sub[3]), l'acido pirofosforico (H#sub[4]P#sub[2]O#sub[7]) e l'acido ortofosforico (H#sub[3]PO#sub[4]), accompagnati dai loro sali. I fosfati di calcio, in particolare, sono largamente impiegati come fertilizzanti.

/ Arsenico:
  - Stato naturale: si trova naturalmente in numerosi minerali della classe dei solfuri, quali arsenopirite (FeAsS), orpimento (As#sub[2]S#sub[3]), realgar (As#sub[4]S#sub[4]) e cobaltite (CoAsS). 
  - Usi: questo elemento trova applicazioni nella produzione di semiconduttori, come il arseniuro di gallio (GaAs), oltre che nelle leghe con piombo e antimonio e nella sintesi di composti arsenorganici utilizzati in insetticidi e farmaci.

/ Antimonio:
  - Usi: l'antimonio è impiegato nella fabbricazione di leghe con piombo, utili per ottenere materiali antifrizione, e in combinazione con stagno e piombo per produrre leghe conosciute come peltro. 
  - Composti: tra i principali composti dell'antimonio si distinguono l'ossido di antimonio (Sb#sub[2]O#sub[3]), usato come agente decolorante per il vetro, e il pentasolfuro di antimonio (Sb#sub[2]S#sub[5]), impiegato nella produzione di fiammiferi.

/ Bismuto:
  - Usi: il bismuto è utilizzato per la realizzazione di leghe a basso punto di fusione, spesso in combinazione con stagno e cadmio, nonché come fluido per lo scambio termico nei reattori nucleari quando si trova allo stato liquido. 
  - Composti: tra i suoi composti principali si menziona l'ossido di bismuto (Bi#sub[2]O#sub[3]), che trova impiego nella produzione di vetri colorati.

/ Ossigeno:
  - Stato naturale: l'ossigeno rappresenta l'elemento maggiormente presente nella crosta terrestre, costituendo circa il 47% in peso, principalmente sotto forma di silicati e carbonati. Inoltre, combinato con l'idrogeno all'interno dell'acqua, l'ossigeno contribuisce approssimativamente al 90% in peso dell'idrosfera. Quando si trova in forma libera, sotto forma di molecola biatomica (O#sub[2]), esso costituisce circa il 23% in peso dell'atmosfera. Una particolare forma allotropica dell'ossigeno è l'ozono, il quale è composto da molecole triatomiche (O#sub[3]). L'ozono si forma attraverso l'interazione con i raggi ultravioletti provenienti dal sole, concentrandosi in una zona della stratosfera nota come ozonosfera, situata a un'altitudine compresa tra 15 e 40 km.  
  - Proprietà: l'ossigeno è un elemento altamente reattivo, capace di combinarsi con quasi tutti gli altri elementi per formare ossidi. Tali reazioni si manifestano con sviluppo di calore e sono qualificabili come ossidazioni se la velocità è controllata, oppure come combustioni nel caso di velocità estremamente elevate accompagnate da un marcato incremento della temperatura.  
  - Produzione e impieghi: l'ossigeno utilizzato a livello industriale si ottiene prevalentemente mediante distillazione frazionata dell'aria liquida. L'applicazione principale trova spazio nella produzione di acciaio. Inoltre, viene utilizzato nel cannello ossiacetilenico e nel cannello ossidrico per generare fiamme ad alta temperatura necessarie per la saldatura e il taglio dei metalli. Si impiega altresì nei processi di cracking, nella produzione di gas di sintesi, acido nitrico, esplosivi e numerosi altri prodotti chimici. L'ossigeno liquido, infine, è utilizzato come propellente nell'ambito delle tecnologie aerospaziali.  
  - Importanza biologica: l'ossigeno riveste una rilevanza fondamentale per tutti gli esseri viventi, che ne sono composti in larga misura. Esso svolge un ruolo cruciale nei processi respiratori e nelle reazioni di ossidazione e combustione biologica, i cui prodotti finali includono il diossido di carbonio (CO#sub[2]). Attraverso la fotosintesi attuata dalle piante verdi, il diossido di carbonio viene costantemente trasformato nuovamente in ossigeno libero, assicurando il ciclo vitale dell'elemento.  

/ Zolfo:  
  - Stato naturale: lo zolfo è presente allo stato nativo nelle vicinanze di vulcani attivi o inattivi e si ritrova sotto forma di solfuri (ad esempio pirite, galena, blenda) e solfati (gesso o barite). Negli organismi viventi è rintracciabile in composti quali cheratine e albumine. Lo zolfo esiste in due forme allotropiche note come zolfo rombico e zolfo monoclino, caratterizzate dalla diversa simmetria dei cristalli.  
  - Produzione: la principale tecnica di estrazione dello zolfo dai giacimenti è il metodo Frasch: esso prevede la fusione del minerale direttamente nel giacimento e la sua successiva spinta verso la superficie mediante alte pressioni.  
  - Usi: lo zolfo viene impiegato prevalentemente nella produzione industriale di acido solforico, destinato a molteplici applicazioni quali la preparazione di farmaci, insetticidi, fertilizzanti, processi di vulcanizzazione della gomma, produzione di pasta di legno, detergenti, coloranti e esplosivi.  
  - Composti: lo zolfo forma una varietà di composti chimici di rilievo tra cui il solfuro di idrogeno (acido solfidrico, H#sub[2]S), il diossido di zolfo (SO#sub[2]), il triossido di zolfo (SO#sub[3]), l'acido solforoso (H#sub[2]SO#sub[3]) con i suoi sali (solfiti), e l'acido solforico (H#sub[2]SO#sub[4]) con i relativi sali (solfati). Particolarmente importante tra questi è l'acido solforico, considerato il più significativo degli acidi inorganici. Si tratta di un liquido denso dotato di forti proprietà disidratanti, la cui preparazione industriale avviene tramite l'ossidazione del SO#sub[2] in SO#sub[3], tramite catalizzatori al vanadio.

/ Fluoro:  
  - Stato naturale: si trova in minerali come fluorite (fluoruro di calcio), criolite (fluoruro di sodio e alluminio) e fluoroapatite (fosfato e fluoruro di calcio).  
  - Preparazione: ottenuto tramite elettrolisi dell'idrogenofluoruro di potassio allo stato fuso.  
  - Usi: impiegato per la produzione di composti organici fluorurati molto diffusi, ad esempio polietrafluoroetilene (PTFE o Teflon) e clorofluorocarburi (CFC).  
  - Composti: il fluoruro di idrogeno (HF), che con acqua genera l'acido fluoridrico. Quest'ultimo è estremamente corrosivo, capace di corrodere persino il vetro.  

/ Cloro:  
  - Stato naturale: si trova principalmente come cloruro di sodio (NaCl) nel salgemma o come sale marino.  
  - Preparazione: ottenuto tramite elettrolisi del cloruro di sodio allo stato fuso o in soluzione acquosa.  
  - Usi: grazie alle sue proprietà battericide, il cloro viene utilizzato nella depurazione delle acque potabili. È impiegato anche nella sintesi diretta del cloruro di idrogeno con idrogeno.  
  - Composti principali:  
    - Cloruro di idrogeno (HCl), che in acqua forma l'acido cloridrico, noto anche come acido muriatico, utile in vari settori industriali (produzione di carta, sbiancamento, preparazione di PVC e fibre sintetiche, solventi, farmaci, insetticidi).  
    - Diossido di cloro (ClO#sub[2]), impiegato nella disinfezione delle acque.  
    - Ipoclorito di sodio (NaClO), comunemente conosciuto come candeggina.  
    - Ipoclorito di calcio (Ca(ClO)#sub[2]), usato per sanificare ambienti.  
    - Clorato di potassio (KClO#sub[3]) e perclorato di potassio (KClO#sub[4]), utili nella produzione di farmaci ed esplosivi.  
    Tra i composti organici, troviamo il cloroformio (CHCl#sub[3]) e la trielina (CHCl=CCl#sub[2]).  

/ Bromo:  
  - Stato naturale: presente come bromuro di magnesio (MgBr#sub[2]) e bromuro di potassio (KBr) nelle acque marine.  
  - Preparazione: ricavato dalle acque madri delle saline attraverso uno spostamento chimico con il cloro:  
    $ "Cl"_2 + "MgBr"_2 -> "Br"_2 + "MgCl"_2 $   
  - Usi: impiegato per la sintesi di composti organici bromurati e per la preparazione del bromuro d'argento (AgBr), utilizzato nelle pellicole fotografiche grazie alla sua fotosensibilità.  

/ Iodio:  
  - Stato naturale: si trova nelle acque marine e nelle ceneri di alcune alghe sotto forma di ioduri.  
  - Preparazione: ottenuto dagli ioduri per spostamento chimico con il cloro o il bromo:  
    $ "Br"_2 + 2"KI" → 2"KBr" + I_2  $
  - Usi: principalmente utilizzato nell'industria farmaceutica.  

/ Elio: L'elio viene usato in applicazioni che richiedono atmosfera inerte, come saldature e produzione di semiconduttori; impiegato come refrigerante nei superconduttori, gas di riempimento per palloni aerostatici e lampade a vapori di mercurio; applicabile nei laser a gas.  

/ Neon: Ideale per il riempimento dei tubi al neon, saldature in atmosfera inerte e nei laser a gas.  

/ Argon: Viene utilizzato per saldature e lavorazione di metalli come titanio e zirconio; riempimento dei bulbi delle lampadine elettriche in miscela con il 20% di azoto; impiegato anche in lampade a vapori di mercurio e laser a gas.  

/ Kripton: È adoperato nelle saldature in atmosfera inerte, nella produzione di lampadine elettriche e nei laser a gas.  

/ Xenon: Viene utilizzato per lampade fluorescenti e camere a bolle.  

/ Radon: È impiegato nella radioterapia come fonte di raggi gamma.  

/ Cromo:  
  - Stato naturale: il cromo si trova naturalmente sotto forma di cromite (FeO ⋅ Cr#sub[2]O#sub[3]) e in quantità marginali nei suoli, nonché negli organismi animali e vegetali.  
  - Produzione: la produzione di cromo avviene a partire dalla cromite, attraverso una serie di processi industriali, culminando nella riduzione di Cr#sub[2]O#sub[3] per mezzo di alluminio.  
  - Usi: trattando la cromite con coke, si ottiene una lega ferro-cromo, impiegata principalmente nella produzione di acciai inossidabili. Ulteriori applicazioni riguardano leghe con elementi quali cobalto, nichel, alluminio, rame e titanio.  
  - Composti: tra i principali composti del cromo vi sono il dicromato di potassio (K#sub[2]Cr#sub[2]O#sub[7]), utilizzato nella concia delle pelli, nella litografia e nella cromatura di oggetti, e il triossido di dicromo (Cr#sub[2]O#sub[3]), un pigmento verde utilizzato per colorare vetri e porcellane.  

/ Ferro:  
  - Stato naturale: il ferro è uno degli elementi più diffusi sulla crosta terrestre e componente prevalente dei silicati. Tra i suoi minerali più rilevanti si annoverano magnetite (Fe#sub[3]O#sub[4]), ematite (Fe#sub[2]O#sub[3]), siderite (FeCO#sub[3]), limonite (Fe#sub[2]O#sub[3] ⋅ H#sub[2]O) e pirite (FeS#sub[2]). Il ferro rappresenta il quarto elemento più abbondante sulla superficie terrestre (4,75%), dopo ossigeno, silicio e alluminio, ed è l'elemento principale del nucleo terrestre, con una composizione stimata intorno al 91%.  
  - Produzione: il processo produttivo del ferro si basa sulla riduzione degli ossidi di ferro tramite carbon coke in altoforno. Durante questa operazione, l'insufflazione di aria favorisce l'ossidazione del coke o del monossido di carbonio, che a sua volta riduce il ferro presente nei minerali a ferro metallico. Il materiale ottenuto è una lega ferro-carbonio con un contenuto di carbonio variabile tra 2% e 5,5%, denominata ghisa; tale lega può essere trasformata in acciaio mediante processi di decarbonizzazione che riducono la percentuale di carbonio al massimo a 1,8-1,9%.  
  - Usi: il ferro puro è raramente impiegato, con eccezioni come la fabbricazione di magneti. Nella maggior parte dei casi viene utilizzato sotto forma di ghisa o, più frequentemente, come acciaio. Quest'ultimo comprende diverse tipologie: acciai al carbonio e acciai speciali, includendo acciai da costruzione, acciai inossidabili e acciai per utensili.  
  - Composti: Tra i composti del ferro figurano l'ossido ferrico (Fe#sub[2]O#sub[3]), impiegato come pigmento, additivo per leghe e lucidante ottico; l'ossido ferroso-ferrico (Fe#sub[3]O#sub[4]), utilizzato per elettrodi magnetite nell'elettrolisi del cloruro di sodio e come pigmento e colorante per vetri; il solfato ferroso (FeSO#sub[4]), sfruttato come mordente in tintoria, per produrre inchiostri, per protezione del legno e in fotografia.  
  - Importanza biologica: il ferro riveste un ruolo cruciale in ambito biologico. Esso è presente nella composizione di pigmenti respiratori, quali l'emoglobina del sangue, oltre a costituire parte integrante di numerosi enzimi essenziali, come la catalasi.  

/ Rame: 
  - Stato naturale: il rame si trova in natura sia allo stato elementare (rame nativo) sia in forma di minerali, tra cui solfuri (ad esempio calcocite, Cu#sub[2]S, e cuprite CuFeS#sub[2]), ossidi (cuprite, Cu#sub[2]O) e carbonati come la malachite [CuCO#sub[3] · Cu(OH)#sub[2]].  
  - Produzione: la produzione del rame avviene principalmente attraverso processi pirometallurgici. L'estrazione dagli ossidi si realizza mediante riduzione con coke, mentre dai solfuri si procede tramite arrostimento per eliminare parzialmente lo zolfo. Successivamente, attraverso diverse fasi di lavorazione, si ottiene il cosiddetto "rame blister", il quale viene ulteriormente raffinato attraverso convertitori. La massima purezza del rame si raggiunge con la raffinazione elettrolitica.  
  - Usi: il rame rappresenta un componente essenziale di molte leghe metalliche, tra cui bronzo, ottone, cupralluminio, argentana, alpacca e leghe per saldature, ciascuna delle quali trova applicazioni specifiche. Grazie alla sua elevata conducibilità elettrica, il rame puro ottenuto con la raffinazione elettrolitica è particolarmente utilizzato in ambito elettrotecnico.  
  - Composti: tra i composti di rilevanza industriale e tecnologica del rame troviamo:  
    - Ossido rameoso (CuO): insolubile in acqua, viene impiegato nelle vernici per rivestire gli scafi delle navi, in quanto previene l'adesione della vegetazione marina.  
    - Cloruro rameoso (CuCl): in soluzione, assorbe il monossido di carbonio (CO), motivo per cui viene utilizzato nella depurazione di miscele gassose contenenti tale composto.  
    - Solfato rameico (CuSO#sub[4]): in miscela con latte di calce (poltiglia bordolese), viene sfruttato come fungicida contro la peronospora della vite.  
    - Acetato rameico (Cu(CH#sub[3]COO)): Contribuisce alla formazione del verderame.  
#v(2em)
/ Zinco: 
  - Stato naturale: lo zinco si trova principalmente sotto forma di blenda (solfuro di zinco) e smithsonite (carbonato di zinco).  
  - Produzione: l'estrazione dello zinco avviene mediante riduzione dell'ossido di zinco (ZnO) con carbone.  
  - Usi: lo zinco viene impiegato prevalentemente per la protezione del ferro dalla corrosione mediante il processo di zincatura. Inoltre, è utilizzato nella produzione di leghe destinate a fonderie e lavorazioni plastiche, come laminati e profilati.  

/ Mercurio: 
  - Stato naturale: il mercurio si trova talvolta allo stato elementare in natura, ma più frequentemente sotto forma di cinabro (solfuro mercurico, HgS).  
  - Usi: grazie alle sue proprietà chimiche peculiari, il mercurio forma leghe liquide, pastose o solide note come amalgami. Inoltre, trova impiego in strumenti scientifici e nella produzione elettrolitica di cloro e idrossido di sodio.
