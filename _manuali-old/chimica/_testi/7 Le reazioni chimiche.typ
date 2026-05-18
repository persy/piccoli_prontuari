#import "../../template_normal.typ": *
#import "@preview/mannot:0.3.1": * // Annotazioni
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge // Diagrammi
//#show: frame-style(styles.thmbox)

#evidenzia[Durante una reazione chimica, le sostanze coinvolte subiscono modifiche nella loro composizione, trasformandosi in prodotti diversi, nel rispetto della legge di conservazione della massa. Per rappresentare una reazione chimica si utilizza un'equazione chimica, una notazione simbolica che risulta bilanciata quando il numero di atomi di ciascun elemento è identico nei due membri dell'equazione.

Le reazioni chimiche possono essere classificate in diversi tipi, come sintesi, decomposizione, spostamento, doppio scambio ionico e neutralizzazione. Tuttavia, in termini generali, possono essere suddivise in due categorie principali: reazioni senza trasferimento di elettroni e reazioni con trasferimento di elettroni, dette anche di ossidoriduzione o redox, caratterizzate da variazioni del numero di ossidazione degli elementi coinvolti.

La stechiometria è il ramo della chimica dedicato ai calcoli quantitativi delle reazioni, permettendo di determinare i rapporti tra i reagenti e i prodotti attraverso relazioni matematiche.]

== La rappresentazione delle reazioni chimiche e il loro bilanciamento

Una reazione chimica consiste nella trasformazione di una o più sostanze, chiamate reagenti, in altre sostanze con composizione diversa, dette prodotti. I segnali visibili di questa trasformazione possono includere cambiamenti di colore, variazioni nello stato fisico, formazione di gas, comparsa di odori, formazione di precipitati o scomparsa di alcune sostanze. Poiché una reazione chimica comporta la rottura di legami chimici nei reagenti e la formazione di nuovi legami nei prodotti, essa è spesso accompagnata da scambi di energia sotto forma di calore: nelle reazioni esotermiche si genera calore, mentre nelle reazioni endotermiche il calore viene assorbito.

=== Come si rappresenta una reazione chimica

La rappresentazione simbolica di una reazione chimica si basa su un'equazione chimica che stabilisce un'equivalenza quantitativa tra gli atomi dei reagenti e quelli dei prodotti. Nel primo membro dell'equazione si collocano le sostanze reagenti (come A e B), mentre nel secondo membro si trovano i prodotti (come C e D). I due gruppi sono separati da una freccia che indica la direzione della reazione. L'equazione generale può essere espressa come:

$ "aA" + "bB" -> "cC" + "dD" $

I coefficienti stechiometrici (a, b, c e d) specificano quante unità o moli di ogni specie chimica (molecole, atomi o ioni) partecipano alla reazione affinché l'equazione risulti bilanciata. Questo garantisce che il numero di atomi di ciascun elemento sia identico in entrambi i membri. Per rappresentare le quantità minime necessarie, i coefficienti sono generalmente numeri interi piccoli.

=== Bilanciamento di una reazione

Un'equazione bilanciata non soltanto rappresenta l'uguaglianza numerica tra gli atomi delle sostanze reagenti e dei prodotti, ma garantisce anche la corrispondenza delle loro masse, espresse in termini di moli. Il bilanciamento di una reazione chimica è essenziale affinché essa soddisfi la legge di conservazione della massa, delineata da Lavoisier.

Esempi di bilanciamento:

$ underparen("N"_2, "ammoniaca") + underparen("H"_2, "idrogeno") -> underparen("NH"_3, "ammoniaca") $

Considerando la presenza di due atomi di azoto, sarà necessario utilizzare almeno due molecole di ammoniaca (2NH#sub[3]), il che implica la presenza di sei atomi di idrogeno, equivalenti a tre molecole di idrogeno (3H#sub[2]). L'equazione bilanciata sarà dunque:

$ "N"_2 + 3"H"_2 -> 2"NH"_3 $

In questo altro esempio:

$ underparen("Ca"("OH")_2, "idrossido
di calcio") + underparen("H"_3"PO"_4, "acido
fosforico") -> underparen("Ca"_3("PO"_4)_2, "fosfato
tricalcico") + underparen("H"_2"O", "acqua") $

Si osserva che nel composto fosfato sono presenti tre atomi di calcio e due atomi di fosforo. L'equazione bilanciata, che prevede la formazione di sei molecole d'acqua (6H#sub[2]O), sarà:

$ 3"Ca"("OH")_2 + 2"H"_3"PO"_4 -> "Ca"_3("PO"_4)_2 + 6"H"_2"O" $

=== Reazioni in forma ionica

Le suddette reazioni sono state rappresentate in forma molecolare, mostrando reagenti e prodotti nella loro forma aggregata. Tuttavia, nel caso delle reazioni in soluzione acquosa, dove intervengono ioni derivanti dalla dissociazione degli elettroliti, diventa necessario esprimere tali processi in forma ionica. In questa modalità vengono indicati esclusivamente gli ioni effettivamente coinvolti nella reazione. Esempio:

$ underparen("FeCl"_2, "dicloruro
di ferro") + underparen("Na"_2"CO"_3, "carbonato
di sodio") -> underparen("FeCO"_3, "carbonato
di ferro (II)") + underparen(2 "NaCl", "cloruro
di sodio") $

in forma ionica si presenta come:

#text(size: 11pt)[$ "Fe"^(2+) + 2"Cl"^(-) + 2"Na"^(+) + "CO"_3^(2-) -> "FeCO"_3 + 2 "Na"^(+) + 2"Cl"^(-) $]

Gli ioni sodio (Na⁺) e cloruro (Cl⁻), non partecipando direttamente alla reazione, sono identificati come "ioni spettatori". Pertanto, l'equazione può essere presentata in forma ionica semplificata:

$ underparen("Fe"^(2+), "ione
ferroso") + underparen("CO"_3^(2-), "ione
carbonato") -> underparen("FeCO"_3 arrow.b, "carbonato
di ferro (II)") $

La freccia diretta verso il basso indica che la sostanza non si dissocia e forma un precipitato solido.

== Classificazione delle reazioni chimiche

Le reazioni chimiche possono essere categorizzate in quattro principali tipologie:
+ sintesi; 
+ decomposizione; 
+ spostamento; 
+ doppio scambio.

Le reazioni di sintesi coinvolgono due o più sostanze chimiche (elementi o composti) che si combinano per formare un unico composto. Esempi: 

$ underparen("Fe", "ferro") + underparen("S", "zolfo") -> underparen("FeS", "solfuro di
ferro (II)") $

$ underparen("C", "carbonio") + underparen("O"_2, "ossigeno") -> underparen("CO"_2, "anidride
carbonica") ("combustione") $

$ underparen("CaO", "ossido di
calcio") + underparen("CO"_2, "anidride
carbonica") -> underparen("CaCO"_3, "carbonato
di calcio") $

Le reazioni di decomposizione comportano la scissione di un composto singolo in due o più sostanze più semplici, generalmente mediante riscaldamento. Esempi:

$ underparen("NH"_4"Cl", "cloruro di
ammonio") -> underparen("NH"_3, "ammoniaca") + underparen("HCl", "acido
cloridrico") $

$ underparen(2"HgO", "ossido di
mercurio") -> underparen(2 "Hg", "mercurio") + underparen("O"_2, "ossigeno") $

$ underparen(2 "KClO"_3, "clorato di
potassio") -> underparen(2 "KCl", "cloruro di
potassio") + underparen(3 "O"_2, "ossigeno") $

Le reazioni di spostamento prevedono che un elemento sostituisca un altro elemento all'interno di un composto. Esempio:

$ underparen("Zn", "zinco") + underparen(2"HCl", "acido
cloridrico") -> underparen("ZnCl"_2, "cloruro di
zinco") + underparen("H"_2 arrow.t, "idrogeno") $

La freccia diretta verso l'alto ($arrow.t$) indica la liberazione di una sostanza gassosa.

Le reazioni di doppio scambio si verificano quando due composti si scambiano le loro componenti; questa categoria comprende sia le reazioni di doppio scambio ionico sia quelle di neutralizzazione. Esempi:

$ underparen("AgNO"_3, "nitrato
d'argento") + underparen("NaCl", "cloruro
di sodio") -> underparen("AgCl" arrow.b, "cloruro d'argento") + underparen("NaNO"_3, "nitrato di sodio") $

Nell'esempio, gli ioni argento (Ag⁺) reagiscono con gli ioni cloruro (Cl⁻), dando origine al cloruro d'argento insolubile, mentre gli ioni sodio e nitrato rimangono in soluzione.

$ underparen("Na"_2"S", "solfuro
di sodio") + underparen(2"HCl", "acido
cloridrico") -> underparen(2"NaCl", "cloruro
di sodio") + underparen("H"_2"S" arrow.t, "solfuro di
diidrogeno" ) $

Analogamente, gli ioni idrogeno (H⁺) interagiscono con gli ioni solfuro (S²⁻) formando H#sub[2]S, che si libera come gas dalla soluzione. 

Le reazioni di neutralizzazione (acido-base) coinvolgono acidi e basi in soluzione e producono sali e acqua. Esempio:

$ underparen("HNO"_3, "acido
nitrico") + underparen("NaOH", "idrossido
di sodio") -> underparen("NaNO"_3, "nitrato
di sodio") + underparen("H"_2"O", "acqua") $

== Il trasferimento degli elettroni nelle reazioni

Il criterio di classificazione delle reazioni precedentemente esaminato si rivela certamente utile per categorizzare in maniera qualitativa il tipo di trasformazione che si verifica. Tuttavia, esso non fornisce informazioni riguardo alla presenza o meno di un trasferimento di elettroni tra atomi. 

Da una prospettiva che considera tale aspetto, le reazioni chimiche possono essere suddivise in due categorie fondamentali:  
- quelle in cui non si verifica alcun trasferimento di elettroni tra i reagenti e, di conseguenza, non si osserva una variazione del numero di ossidazione degli atomi o ioni coinvolti;  
- quelle in cui si manifesta un trasferimento di elettroni tra i reagenti, accompagnato da una conseguente variazione del numero di ossidazione degli atomi o ioni interessati. In tali reazioni, un elemento reagente cede uno o più elettroni, che vengono successivamente acquistati da un altro elemento. L'elemento che cede elettroni subisce un processo di ossidazione, mentre quello che li acquisisce è soggetto a riduzione. 

Questi due processi, ossidazione e riduzione, avvengono simultaneamente e pertanto tali reazioni vengono definite reazioni di ossidoriduzione, o redox. Tra le diverse tipologie di reazioni chimiche, le reazioni di doppio scambio ionico e quelle di neutralizzazione non rientrano nella categoria delle reazioni redox. Al contrario, altre classi come le reazioni di sintesi, decomposizione e spostamento tendono prevalentemente a caratterizzarsi come ossidoriduzioni. 

#note(bottom)[== *🧩* Il significato e l'importanza delle redox <senza_numero>

In passato, "ossidazione" indicava una reazione in cui una sostanza si combinava con l'ossigeno. Analogamente, "riduzione" si riferiva a una trasformazione chimica durante la quale un composto "ossidato" perdeva ossigeno.

Oggi i concetti di ossidazione e riduzione hanno assunto un significato più ampio, pur mantenendo il senso originario in certi contesti. Si dice che una sostanza subisce ossidazione (si ossida) quando perde elettroni trasferendoli a un'altra sostanza, aumentando così il proprio numero di ossidazione (n.o.). Il fatto che la sostanza accettante sia ossigeno costituisce semplicemente un caso particolare. Viceversa, una sostanza subisce riduzione (si riduce) quando acquisisce elettroni da un'altra sostanza, diminuendo il proprio numero di ossidazione. Anche in questo caso, il fatto che ciò avvenga con la perdita di ossigeno rappresenta solo una circostanza specifica.

Ossidazione e riduzione sono processi strettamente legati, che avvengono simultaneamente nell'ambito della stessa reazione chimica chiamata reazione di ossidoriduzione o redox.

Le reazioni redox rivestono un'importanza enorme. Praticamente tutte le reazioni chimiche destinate alla produzione di energia coinvolgono processi redox. Queste includono i fenomeni vitali nelle cellule, le combustioni (come quelle di carbone, idrocarburi e legna), e il funzionamento delle pile. Tra gli altri esempi di reazioni redox troviamo l'elettrolisi, la corrosione dei metalli e l'estrazione dei metalli dai loro minerali principali.]

== Il numero di ossidazione

Come anticipato, il numero di ossidazione (indicato con n.o.) rappresenta la carica formale attribuibile a un elemento all'interno di un composto, assumendo idealmente che i legami siano interamente ionici. In tale contesto, gli elettroni condivisi vengono assegnati all'elemento più elettronegativo.  

Il calcolo del numero di ossidazione si basa su criteri derivanti dai valori relativi di elettronegatività delle specie atomiche presenti nelle molecole. Esso può essere determinato seguendo le seguenti sette regole:  
+ Gli atomi presenti in una sostanza allo stato elementare (cioè non legati ad altri atomi), siano essi monoatomici, biatomici o poliatomici, posseggono un n.o. pari a zero (ad esempio, He, Ca, O#sub[2], Cl#sub[2], P#sub[4]).  
+ L'ossigeno nei composti ha generalmente un n.o. = −2, eccezion fatta per i perossidi (come H#sub[2]O#sub[2]), nei quali possiede un n.o. = −1.  
+ L'idrogeno nei composti usualmente ha un n.o. = +1. Tuttavia, nei composti noti come idruri metallici (ad esempio LiH e CaH#sub[2]), l'idrogeno assume un n.o. = −1.  
+ Il fluoro nei composti ha sempre un n.o. = −1.  
+ Gli elementi del gruppo I A (metalli alcalini), sotto forma di ioni, presentano un n.o. = +1, corrispondente alla loro carica effettiva (ad esempio: Li#super[+], Na#super[+]).  
+ Gli elementi del gruppo II A (metalli alcalino-terrosi), sotto forma di ioni, mostrano un n.o. = +2, corrispondente anch'esso alla loro carica effettiva (ad esempio Mg#super[2+] e Ca#super[2+]).  
+ Per altri elementi presenti in un composto, il numero di ossidazione si calcola tenendo conto che la somma algebrica dei numeri di ossidazione di tutti gli atomi in una molecola è pari a zero. Nel caso di uno ione, tale somma deve corrispondere al valore della sua carica netta.  

Esempio 1: determinare il numero di ossidazione dello zolfo nell'acido solforico (H#sub[2]SO#sub[4])  
Abbiamo che:
- n.o. H = +1
- n.o. O = -2
- n.o. S = $x$

Potremo quindi scrivere: $underparen("H"_2, +1) overparen("SO"_4, "x-2")$. Moltiplicando il n.o. per gli atomi di ciascun elemento e sommandoli si ottiene che:

$ +1 dot 2 + x + (-2) dot 4 = 0 \ x = -2 + 8 \ x = +6 $

Per cui potremo scrivere: $underparen("H"_2, +1) overparen("SO"_4, "+6-2")$.

Esempio 2: determinazione del n.o. dell'azoto nello ione nitrato, NO#sub[3]#super[--]. Per cui possiamo scrivere:
- n.o. O = -2
- n.o. N = $x$

Quindi, in maniera preliminare: $underparen("N"_2, "x") overparen("O"_3^(-), "-2")$ // L'overbrack dovrebbe toccare solo la O, lasciando gli espondenti fuori

Si calcola che:
$ x + (-2) dot 3 = -1 \ x = -1 + 6 \ x = +5  $

Perciò si può scrivere: $underparen("N"_2, "+5") overparen("O"_3^(-), "-2")$ // L'overbrack dovrebbe toccare solo la O, lasciando gli espondenti fuori

#figure(
  caption: [Numeri di ossidazione di alcuni elementi],
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
    columns: (3),
    table.header[Gruppi del \ sistema \ periodico][Elementi][Numero di \ ossidazione],
    [1],	[Li, Na, K],	[+1],
    table.cell(rowspan: 2)[2],	[Be, Mg, Ca, Sr, Ba],	[+2],
 	[B],	[+3],
    [3],	[Al],	[+3],
    table.cell(rowspan: 2)[4],	[C, Si],	[+4],
 	[N, P],	[−3, +3, +5],
    table.cell(rowspan: 3)[5],	[As, Sb],	[−3, +3, +5],
 	[Bi],	[+3],
 	[O],	[−2(−1)],
    table.cell(rowspan: 2)[6],	[S],	[−2, +4, +6],
 	[F],	[−1],
    table.cell(rowspan: 5)[7],	[Cl],	[−1, +1, +3, +5, +7],
 	[Br],	[−1, +1, +5],
 	[I],	[−1, +1, +5, +7],
 	[Cr],	[+2, +3 +6],
 	[Mn],	[+2, +3, +4 +6, +7],
    table.cell(rowspan: 6)[elementi di \ transizione],
    [Fe, Co, Ni],	[+2, +3],
 	[Pt],	[+2, +4],
 	[Cu, Hg],	[+1, +2],
 	[Ag],	[+1],
 	[Au],	[+1, +3],
 	[Zn, Cd],	[+2],
)  
)


== Le reazioni di ossidoriduzione o redox

Analizziamo, mediante le variazioni del numero di ossidazione (n.o.), le seguenti reazioni:

$ overparen("C", 0) + overparen("O"_2, 0) -> overparen("C", +4) overparen("O"_2, -2) quad "sintesi-combusione" $ <sintesi-combusione>

$ 2 overparen("Hg", +2) overparen("O"_2, -2) -> 2 overparen("Hg", 0) + overparen("O"_2, 0) quad "decomposizione" $ <decomposizione>

$ 2 overparen("Zn", 0) + 2 overparen("H", +1) overparen("Cl", -1) -> overparen("Zn", +2) overparen("Cl"_2, -1) + overparen("H"_2, 0) arrow.t quad "spostamento" $ <spostamento>

Nella prima reazione il numero di ossidazione del carbonio (C) aumenta da 0 a +4: ciò indica che il carbonio si ossida. Simultaneamente, il numero di ossidazione dell'ossigeno (O) diminuisce da 0 a –2, rappresentando una riduzione.

Nella seconda reazione il mercurio (Hg) subisce una riduzione, in quanto il suo numero di ossidazione passa da +2 a 0. Al contrario, l'ossigeno si ossida poiché il suo numero di ossidazione aumenta da –2 a 0.

Nella terza reazione lo zinco (Zn) si ossida con un aumento del suo numero di ossidazione da 0 a +2, mentre l'idrogeno (H) si riduce passando da +1 a 0. Tutte queste reazioni sono esempi tipici di ossidoriduzione e risultano perfettamente bilanciate.

Viene definito ossidante una sostanza, sia essa un elemento o un composto, che favorisce l'ossidazione di un'altra sostanza, acquisendo da quest'ultima elettroni. Durante questo processo un ossidante si riduce. Si definisce invece riducente una sostanza che provoca la riduzione di un'altra cedendole elettroni; in questo modo il riducente si ossida.

=== Rappresentazione di una reazione di ossidoriduzione

Le reazioni di ossidoriduzione possono essere rappresentate nel seguente modo:

#scale(85%)[
#diagram(spacing: 2pt, {
 let (A, B, C, D, E, F) = ((0,0), (0.48,0), (1,0), (5,0), (5.48,0), (6,0))
 node(A, $"Ossidante"$)
 node(B, "+")
 node(C, $"Riducente"$)
 node(D, "Ossidante ridotto")
 node(E, "+")
 node(F, "Riducente ossidato")
 edge(A, D, $+e^-$, "->", bend: +35deg, stroke: main_tecnologia, label-side: center)
 edge(C, F, $-e^-$, "->", bend: -35deg, stroke: main_tecnologia, label-side: center)
 edge(C, D, "->")
})
]

Ogni reazione redox è la somma di due semireazioni: una riguarda l'ossidazione e l'altra la riduzione. In ciascuna semireazione è presente una sostanza sia nella sua forma ossidata che in quella ridotta, formando una semicoppia coniugata ossido-riduttiva. Per esempio, nella reazione

$
  mark(2"Fe"^(2+), tag: #<1>)
  +
  mark("Cl"_2, tag: #<2>)^+
  //xarrow("acqua")
  ->
  mark(2"Fe"^(3+), tag: #<3>)^-
  +
  mark(2"Cl"^(-), tag: #<4>)

  #annot(<1>)[#align(center)[riducente]]
  #annot(<2>)[#align(center)[ossidante]]
  #annot(<3>)[#align(center)[riducente \ ossidato]]
  #annot(<4>)[#align(center)[ossidante \ ridotto]]
  
$

si ha:

$ 2"Fe"^(2+) -> 2"Fe"^(3+) + 2e^- \ "Cl"_2 + 2e^- -> 2"Cl"^- $

=== Bilanciamento di una reazione di ossidoriduzione

Il bilanciamento delle reazioni redox può essere eseguito tramite il metodo della variazione dei numeri di ossidazione o il metodo delle semireazioni. Per prima cosa, vengono determinati i coefficienti degli agenti ossidanti e riducenti in modo che il numero di elettroni ceduti sia uguale al numero di elettroni ricevuti. Successivamente, si calcolano i coefficienti delle altre specie coinvolte nella reazione. Per esempio:

$ overparen("Cu", +2)overparen("O", -2) + overparen("N", -3)overparen("H"_3, +1) -> overparen("N"_2, 0) + overparen("H"_2, +1)overparen("O", +2) + overparen("Cu", 0) $

Sopra ogni elemento sono indicati i rispettivi numeri di ossidazione. Nel caso del rame (Cu), questo si riduce acquisendo 2 elettroni, mentre l'azoto (N) si ossida cedendo 3 elettroni:

#align(center)[
#scale(85%)[
#diagram(spacing: 2pt, {
 let (A, B, C, D, E, F, G, H) = ((0,0), (0.50,0), (1,0), (5,0), (5.43,0), (6,0), (6.58,0), (7,0))
 node(A, $"CuO"$)
 node(B, "+")
 node(C, $"NH"_3$)
 node(D, $"N"_2$)
 node(E, "+")
 node(F, $"H"_2"O"$)
 node(G, "+")
 node(H, $"Cu"$)
 edge(A, "trrrr", H, $+e^-$, "->", bend: +35deg, stroke: main_tecnologia, label-side: center, shift: -8pt)
 edge(C, "brrr", D, $-e^-$, "->", bend: -35deg, stroke: main_tecnologia, label-side: center, shift: 10pt)
 edge(C, D, "->") 
})
]
]
Di conseguenza, per bilanciare elettroni ceduti e ricevuti, saranno necessari 3 atomi di Cu ogni 2 atomi di N:

$ 3"CuO" + 2"NH"_3 -> "N"_2 + "H"_2"O" + 3"Cu" $

Per equilibrare anche gli atomi di idrogeno e ossigeno nell'altro membro della reazione, sarà necessario aggiungere il coefficiente 3 davanti alla formula dell'H#sub[2]O:

$ 3"CuO" + 2"NH"_3 -> "N"_2 + 3"H"_2"O" + 3"Cu" $

La reazione così bilanciata prevede il trasferimento complessivo di 6 elettroni dall'azoto al rame.

=== Metodo delle semireazioni

Questo approccio è particolarmente utile per il bilanciamento delle reazioni redox che avvengono in soluzione acquosa, dove le sostanze dissociate vengono rappresentate sotto forma ionica. I coefficienti stechiometrici vengono determinati seguendo alcuni passaggi fondamentali:
- la reazione viene scritta nella sua forma ionica;
- si identificano l'ossidante e il riducente e si assegnano i corretti numeri di ossidazione alle semicoppie coniugate;
- le semireazioni di ossidazione e riduzione vengono scritte separatamente;
- ciascun termine delle due semireazioni viene moltiplicato per un opportuno coefficiente in modo da uguagliare il numero degli elettroni coinvolti;
- le due semireazioni vengono poi sommate membro a membro;
- infine si verifica la conservazione della massa e della carica.

Esempio:

$ "KMnO"_4 + "FeSO"_4 + "H"_2"SO"_4 -> "K"_2"SO"_4 + "MnSO"_4 + \ + space  "Fe"_2("SO"_4)_3 + "H"_2"O" $

$ "MnO"_4^(-) + "Fe"^(2+) + "H"^(+) -> "Mn"^(2+) + "Fe"^(3+) + "H"_2"O" $

MnO#sub[4]#super[--] è l'ossidante, Fe#super[2+] è il riducente:

// Verificare i coefficienti stechiometrici
#set math.cases(gap: 1em)
$ cases(
   overparen("Mn", +7)"O"_4^(-) + 5e^- + 8"H"^(+) -> overparen("Mn"^(2+), +2) + 4"H"_2"O", 
   overparen("Fe"^(2+), 2+) -> overparen("Fe"^(+3), +3) + e^-
) $

Si bilanciano gli elettroni moltiplicando la seconda per 5:

#set math.cases(gap: 1em)
$ cases(
   "MnO"_4^(-) + 5e^- + 8"H"^(+) -> "Mn"^(2+) + 4"H"_2"O",
   5"Fe"^(2+) -> 5"Fe"^(+3) + 5e^-
   ) $

E si ha dunque:

$ "MnO"_4^(-) + 5"Fe"^(2+) + 8"H"^(+) -> "Mn"^(2+) + 5"Fe"^(3+) + 4"H"_2"O" $

In forma molecolare la reazione risulta:

$ 2"KMnO"_4 + 10"FeSO"_4 + 8"H"_2"SO"_4 -> "K"_2"SO"_4 + 2"MnSO"_4 + \ + space  5"Fe"_2("SO"_4)_3 + 8"H"_2"O" $

// Formule dal libro

== L'equivalente e la massa equivalente

L'equivalente di una sostanza rappresenta una quantità che può variare in funzione delle proprietà chimiche che tale sostanza manifesta nel contesto di una specifica reazione. La definizione di equivalente, dunque, è strettamente correlata al tipo di reazione chimica considerata.

Nelle reazioni di neutralizzazione, un equivalente di acido corrisponde alla quantità di sostanza capace di fornire una mole di ioni H+, mentre un equivalente di base è la quantità necessaria per neutralizzare una mole di ioni H+, ovvero fornire una mole di ioni OH–. Analogamente, un equivalente di sale si definisce come la quantità di sale che, attraverso il processo di dissociazione, produce una mole di cariche elettriche positive e una mole di cariche elettriche negative. 

Diverso è il caso delle reazioni redox, dove un equivalente di ossidante corrisponde alla quantità di sostanza che accetta una mole di elettroni, mentre un equivalente di riducente indica la quantità capace di cedere una mole di elettroni.

Il numero di equivalenti risulta sempre essere un multiplo intero del numero di moli. Da questa definizione consegue che, in ogni reazione chimica, un equivalente di una sostanza reagisce esattamente con un equivalente di un'altra per generare un equivalente di prodotto. Per esempio, in una reazione acido-base, un equivalente di acido reagisce con un equivalente di base generando un equivalente di sale; analogamente, in una reazione redox, un equivalente di ossidante ossida un equivalente di riducente.

La massa equivalente, indicata con meq (nota anche come peso equivalente), corrisponde alla massa in grammi associata a un equivalente della sostanza e viene espressa in unità g/eq. La massa equivalente può essere ottenuta dalla formula: 

$ "m"_("eq") = "massa molare"/"numero di equivalenti per mole" = "M"/("n"_("eq")"/""mole") $

Nelle reazioni di neutralizzazione, la massa equivalente di un acido o di una base si calcola dividendo la sua massa molare M per il numero di ioni H#super[+] o OH#super[--] rilasciati dalla molecola durante la dissociazione in soluzione. 

$ "m"_("eqH"_2"SO"_4) = ("M"_("H"_2"SO"_4)lr(("g"/"mol")))/(2 space lr(("eq"/"mol"))) = (98,08) / 2 "g"/"eq" = 49,04 space "g"/"eq"  $

$ "m"_("eqCa(OH)"_2) = ("M"_("eqCa(OH)"_2)lr(("g"/"mol")))/(2 space lr(("eq"/"mol"))) = (74,10) / 2 "g"/"eq" = 37,05 space "g"/"eq"  $

Nelle reazioni redox, la massa equivalente di un ossidante o di un riducente si ottiene dal rapporto tra la massa molare M e il numero di elettroni ceduti o acquisiti dalla molecola per unità formula. Esempi:

$ "m"_("eqMnO"_4^(-))(overparen("Mn", +7)"O"_4^(-) + 5e^- -> overparen("Mn"^(2+), +2)) = \ = (M_"MnO"_4^(-))/(5) space "g"/"eq" = 23,78 space "g"/"eq" quad "amb. acido" $

$ "m"_("eqMnO"_4^(-))(overparen("Mn", +7)"O"_4^(-) + 3e^- -> overparen("Mn", +4)"O"_2) = \ = (M_"MnO"_4^(-))/(3) space "g"/"eq" = 39,64 space "g"/"eq" quad "amb. basico" $


== Stechiometria delle reazioni

La stechiometria è la branca della chimica che studia e calcola i rapporti quantitativi con cui reagenti e prodotti partecipano a una reazione chimica. Tali rapporti possono essere espressi in termini del numero di moli o delle masse dei componenti coinvolti. I rapporti tra il numero delle moli derivano dai coefficienti stechiometrici della reazione chimica bilanciata, mentre i rapporti tra le masse sono ottenuti moltiplicando i coefficienti stechiometrici per le masse molari delle rispettive sostanze, espresse in grammi. Considerando una generica reazione chimica bilanciata:

$ "aA" + "bB" -> "cC" + "dD" $

Il rapporto stechiometrico tra il reagente $A$ e il prodotto di reazione $C$, espresso in termini molari, è dato dal rapporto $a/c$, dove $a$ e $c$ rappresentano i coefficienti stechiometrici associati rispettivamente a $A$ e $C$. In termini ponderali, il rapporto è invece determinato attraverso la formula:

$ (a dot M_A) / (c dot M_C) $

dove $M_A$ e $M_C$ indicano le masse molari delle sostanze $A$ e $C$, rispettivamente espresse in grammi. Questo risultato fornisce l'indicazione che da $a dot M_A$ grammi del reagente $A$ si ottengono $c dot M_C$ grammi del prodotto $C$.

Nel senso più comune, i calcoli stechiometrici includono tutti quei procedimenti che, basandosi sulle leggi chimico-fisiche, consentono di determinare in termini quantitativi diverse proprietà dei sistemi chimici (sostanze, soluzioni, sistemi di reazione, ecc.). 

Ecco alcuni esempi pratici:
- Determinare (a) quanti grammi di soda caustica (NaOH), supposta pura al 100%, sono necessari per neutralizzare 5 g di acido solforico (H#sub[2]SO#sub[4]); e (b) quanti grammi di solfato di sodio (Na#sub[2]SO#sub[4]) si ottengono. La reazione chimica coinvolta è:

$ 2"NaOH" + "H"_2"SO"_4 -> "Na"_2"SO"_4 + 2"H"_2"O" $

Per risolvere il problema, scriviamo la reazione indicando sopra ogni specie chimica la massa reagente (m) e sotto la sua massa molare (M): 

$
  2 mark("NaOH", tag: #<1>)
  +
  mark("H"_2"SO"_4, tag: #<2>)  
  ->
  mark("Na"_2"SO"_4, tag: #<3>)
  +
  2"H"_2"O"

  #annot(<1>)[#align(center)[40,00 g/mol]]
  #annot(<1>, pos: top)[#align(center)[xg]]
  #annot(<2>)[#align(center)[98,08 g/mol]]
  #annot(<2>, pos: top)[#align(center)[5g]]
  #annot(<3>)[#align(center)[142,04 g/mol]]
  #annot(<3>, pos: top)[#align(center)[yg]] 
$

a. Se 98,08 g di H#sub[2]SO#sub[4] reagiscono con (40,00 · 2)g di NaOH, 5g di H#sub[2]SO#sub[4] reagiscono con $x$g di NaOH, cioè:

$
98.08 "g" : 40.00 · 2"g" = 5"g" : x"g" \
x"g" = 4.08"g di NaOH"
$

b. Calcolando i grammi di solfato di sodio Na#sub[2]SO#sub[4]:

$
98.08 "g" : 142.04"g" = 5"g" : y"g" \
y"g" = 7.24"g di Na"_2"SO"_4
$

Stabilire quanti grammi di calcare (CaCO#sub[3]) con il 70% di purezza reagiscono con 2 g di acido cloridrico (HCl) secondo la seguente reazione:

$ "CaCO"_3 + 2"HCl" -> "CaCl"_2 + "H"_2"O" + "CO"_2 $

Scrivere la reazione posizionando sopra a ogni specie chimica la massa reagente (m) e la massa molare (M):

$
  mark("CaCO", tag: #<1>)_3
  +
  mark(2"HCl", tag: #<2>)
  -> "CaCl"_2 + "H"_2"O" + "CO"_2

  #annot(<1>)[#align(center)[100,09 \ g/mol]]
  #annot(<1>, pos: top)[#align(center)[xg]]
  #annot(<2>)[#align(center)[36,46 \ g/mol]]
  #annot(<2>, pos: top)[#align(center)[2g]]
  
$
#v(1.5em)
Si risolve così:
$ 
100.09 "g" : 2 dot 36.46 "g" = x "g": 2 "g" \ x "g" = 2.75"g" dot 100/70 = 3.93 "g di CaCO"_3 "al 70% di purezza"
$

#pagebreak()
#set page(fill: main_tecnologia.lighten(90%))
== Glossario <senza_numero>

/ Reazione chimica: Trasformazione di una o più sostanze originarie in altre sostanze con composizioni differenti.  

/ Equazione chimica: Rappresentazione simbolica di una reazione chimica mediante formule e numeri che descrivono i rapporti fra reagenti e prodotti.  

/ Coefficiente stechiometrico: Numero necessario di molecole, atomi o ioni (o moli) per bilanciare un'equazione chimica in modo conforme ai principi di conservazione della massa.  

/ Reazione di sintesi: Processo chimico in cui due o più sostanze (elementi o composti) si combinano per formare un unico composto.  

/ Reazione di decomposizione: Reazione in cui un unico composto viene suddiviso in due o più sostanze più semplici.  

/ Reazione di spostamento: Fenomeno chimico in cui un elemento sostituisce un altro all'interno di un determinato composto chimico.  

/ Reazione di doppio scambio: Processo chimico in cui due composti si scambiano le parti costitutive, formando nuove specie chimiche.  

/ Reazione di doppio scambio ionico: Reazione che implica uno scambio di ioni tra i reagenti presenti in soluzione acquosa.  

/ Reazione di neutralizzazione: Interazione tra composti con proprietà acide e basiche, risultante nella formazione di acqua e di un sale.  

/ Reazioni di ossidoriduzione: Processi chimici caratterizzati dal trasferimento di elettroni dal riducente all'ossidante, determinando variazioni nello stato di ossidazione delle specie coinvolte.  

/ Numero di ossidazione: Valore che esprime la carica effettiva o apparente di uno ione o atomo all'interno di una molecola definita.  

/ Equivalente: Quantità di sostanza corrispondente a una mole di ioni H#super[+] in reazioni acido-base o a una mole di elettroni (e#super[--]) nelle reazioni redox. 

/ Massa equivalente: Massa espressa in grammi associata a un equivalente di sostanza secondo le reazioni chimiche considerate. 

/ Calcoli stechiometrici: Determinazione quantitativa dei rapporti tra reagenti e prodotti, misurati sia in termini di massa (grammi) sia in termini molari (numero di moli).  