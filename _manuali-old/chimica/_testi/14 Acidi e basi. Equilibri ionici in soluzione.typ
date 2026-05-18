#import "../../template_normal.typ": *
#import "@preview/xarrow:0.3.1": xarrow // Frecce
//#show: frame-style(styles.thmbox)

#evidenzia[Gli equilibri ionici in soluzione riguardano equilibri omogenei relativi alle reazioni acido-base. La prima definizione di acidi e basi venne introdotta attraverso la teoria di Arrhenius, sviluppata studiando la dissociazione degli elettroliti in soluzione acquosa. 

Successivamente, il concetto di acido e base fu arricchito e ampliato grazie alla teoria di Brønsted-Lowry e alla teoria di Lewis, che offrirono una descrizione più completa e generale del comportamento di una sostanza come acido o base, indipendentemente dal tipo di solvente utilizzato. I sistemi acido-base comprendono anche i sali suscettibili di reazioni di idrolisi e le soluzioni tampone. Gli equilibri eterogenei, invece, riguardano situazioni dove il prodotto di solubilità definisce le interazioni fra soluzioni sature di elettroliti poco solubili e il loro corpo di fondo.]

== Dalla teoria di Arrhenius alla teoria di Brønsted-Lowry

Gli acidi e le basi sono due delle principali categorie di elettroliti. Il primo approccio scientifico per descriverne il comportamento fu introdotto dalla teoria di Arrhenius, in seguito completata da nuove interpretazioni con la teoria di Brønsted-Lowry e quella di Lewis, che ampliarono il concetto di acidità e basicità raggiungendo una prospettiva più universale.

La teoria acido-base di Arrhenius, proposta dal chimico svedese Svante Arrhenius (1859-1927) nell'ambito della sua ricerca sulla dissociazione elettrolitica, definisce gli acidi come quei composti che, in soluzione acquosa, liberano ioni idrogeno o protoni (H#super[+]) e le basi come quei composti che rilasciano ioni idrossido (OH#super[--]):

$
  mark("HCl", tag: #<1>)
  xarrow("acqua")
  mark("H", tag: #<2>)^+
  +
  mark("Cl", tag: #<3>)^-

  #annot(<1>)[#align(center)[acido \ cloridrico]]
  #annot(<2>)[#align(center)[protone]]
  #annot(<3>)[#align(center)[anione \ cloruro]]
  \
#v(7em)
  mark("NaOH", tag: #<1>)
  xarrow("acqua")
  mark("Na", tag: #<2>)^+
  +
  mark("OH", tag: #<3>)^-

  #annot(<1>)[#align(center)[idrossido \ di sodio]]
  #annot(<2>)[#align(center)[ione \ sodio]]
  #annot(<3>)[#align(center)[ione \ idrossido]]
$

Gli acidi monoprotici liberano un singolo ione H#super[+], come accade con l'acido nitrico (HNO#sub[3]) o l'acido ipocloroso (HClO), mentre gli acidi poliprotici ne liberano più di uno: l'acido solforico (H#sub[2]SO#sub[4]) è diprotico, mentre l'acido fosforico (H#sub[3]PO#sub[4]) è triprotico. Allo stesso modo, le basi possono essere monoacide, come l'idrossido di potassio (KOH), o poliacide, come l'idrossido di calcio (Ca(OH)#sub[2]), classificato come biacido per il numero di ioni OH#super[--] rilasciati in soluzione.

Le reazioni acido-base, dette anche reazioni di neutralizzazione, portano alla formazione di un sale e acqua. Ad esempio, la neutralizzazione deriva dall'interazione diretta tra ioni H#super[+] e OH#super[--] che reagiscono formando molecole d'acqua. Per esempio: 
$
  mark("HNO", tag: #<1>)_3
  +
  mark("KOH", tag: #<2>)
  ->
  mark("KNO", tag: #<3>)_3
  +
  mark("H"_2"O", tag: #<4>)

  #annot(<1>)[#align(center)[acido \
nitrico]]
  #annot(<2>)[#align(center)[idrossido \
di potassio]]
  #annot(<3>)[#align(center)[nitrato di \
potassio]]
  #annot(<4>)[#align(center)[acqua]]
  
$
#v(1.5em)
Tuttavia, la teoria di Arrhenius presenta alcune limitazioni: si applica esclusivamente alle soluzioni acquose e non è in grado di spiegare il comportamento basico di sostanze come l'ammoniaca (NH#sub[3]), che, pur non contenendo ioni idrossido, si comportano come basi. Per superare questi vincoli, il chimico danese Johannes Brønsted (1879-1947) e l'inglese Thomas Lowry (1874-1936) svilupparono indipendentemente una visione più ampia del comportamento degli acidi e delle basi, sottolineando la stretta connessione tra queste due proprietà chimiche.

La teoria acido-base di Brønsted-Lowry definisce un acido come un composto capace di cedere uno o più protoni a una base, e una base come un composto in grado di accettare uno o più protoni ceduti da un acido. In altre parole, le proprietà acide di una sostanza si manifestano solo in presenza di una specie che possa comportarsi da base, e viceversa, secondo il seguente schema:
#v(2em)
$
  markhl("HA", tag: #<1>, color: #main_spettacolo) 
  + 
  markhl("B", tag: #<2>, color: #main_tecnologia) 
  arrows.rl 
  markhl(A^(-), tag: #<3>, color: #main_spettacolo)
  + 
  markhl("HB"^(+), tag: #<4>, color: #main_tecnologia) 
  #annot(<1>)[acido 1]
  #annot(<2>)[base 2]
  #annot(<3>)[base 1]
  #annot(<4>)[acido 2]
  #annot((<1>, <3>), pos: top, dy: -2em, dx: 3.6em)[coppia coniugata]
  #annot((<2>, <4>), pos: bottom, dy: 2em, dx: 3em)[coppia coniugata]
$
#v(2em)
In questo contesto, le coppie coniugate acido-base si presentano sotto forma di acido1-base1 e base2-acido2. Le due forme coniugate di una coppia differiscono per la presenza o l'assenza di uno ione H#super[+]. 

La definizione proposta da Arrhenius prevede necessariamente la presenza dell'acqua come solvente, mentre la teoria di Brønsted-Lowry supera questa restrizione, offrendo una visione più flessibile. Essa considera il comportamento delle sostanze come acidi o basi in relazione alle circostanze: una sostanza può comportarsi da acido se è presente un acido più debole (che funge da base) e da base se vi è un acido più forte.

Un esempio pratico è l'acido cloridrico (HCl), che in soluzione acquosa si comporta da acido perché l'acqua agisce da base, accettando il protone e formando lo ione ossonio (H#sub[3]O#super[--]). Va sottolineato che, in soluzione, i protoni non esistono in forma libera ma si legano elettrostaticamente alle molecole d'acqua:

#v(1.5em)
$
  mark("HCl", tag: #<1>) 
  + 
  mark("H"_2"O", tag: #<2>) 
  -> 
  mark("Cl"^(-), tag: #<3>)
  + 
  mark("H"_(3)"O"^(+), tag: #<4>) 
  #annot(<1>)[#align(center)[acido \ cloridrico]]
  #annot(<1>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido]]]
  #annot(<2>)[#align(center)[acqua]]
  #annot(<2>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base]]]
  #annot(<3>)[#align(center)[ione \ cloruro]]
  #annot(<3>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base]]]
  #annot(<4>)[#align(center)[ione \ ossonio]]
  #annot(<4>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido]]]
  #annot((<1>, <3>), pos: top, dy: -1.5em, dx: 3.6em)[coppia coniugata]
  #annot((<2>, <4>), pos: bottom, dy: 2.5em, dx: 3.6em)[coppia coniugata]
$
#v(2.5em)

L'ammoniaca (NH#sub[3]), pur non contenendo ioni idrossido, si comporta come una base. Infatti, reagendo con l'acqua (che in questo caso agisce da acido), accetta un protone trasformandosi nel suo acido coniugato, lo ione ammonio (NH#sub[4]#super[+]). L'acqua, invece, cedendo un protone, si converte nella sua base coniugata, lo ione idrossido (OH#super[--]):

#v(1.5em)
$
  mark("NH"_3, tag: #<1>) 
  + 
  mark("H"_2"O", tag: #<2>) 
  arrows.rl 
  mark("NH", tag: #<3>)_4^(+)
  + 
  mark("OH", tag: #<4>)^(-) 
  #annot(<1>)[#align(center)[ammoniaca]]
  #annot(<1>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base]]]
  #annot(<2>)[#align(center)[acqua]]
  #annot(<2>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido]]]
  #annot(<3>)[#align(center)[ione \ ammonio]]
  #annot(<3>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido]]]
  #annot(<4>)[#align(center)[ione \ ossidrile]]
  #annot(<4>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base]]]
  #annot((<1>, <3>), pos: top, dy: -1.6em, dx: 3.6em)[coppia coniugata]
  #annot((<2>, <4>), pos: bottom, dy: 2.7em, dx: 3.6em)[coppia coniugata]
$
#v(2.5em)

Poiché l'acqua può comportarsi sia da acido sia da base a seconda delle circostanze, viene classificata come composto anfotero:

#v(1.5em)
$
  mark("H"_2"O", tag: #<1>) 
  + 
  mark("H"_2"O", tag: #<2>) 
  arrows.rl 
  mark("OH", tag: #<3>)^(-)
  + 
  mark("H"_(3)"O", tag: #<4>)^(+) 
  #annot(<1>)[#align(center)[acqua]]
  #annot(<1>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido]]]
  #annot(<2>)[#align(center)[acqua]]
  #annot(<2>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base]]]
  #annot(<3>)[#align(center)[ione \ ossidrile]]
  #annot(<3>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base]]]
  #annot(<4>)[#align(center)[ione \ ossonio ]]
  #annot(<4>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido]]]
  #annot((<1>, <3>), pos: top, dy: -1.5em, dx: 3.6em)[coppia coniugata]
  #annot((<2>, <4>), pos: bottom, dy: 2.5em, dx: 3.6em)[coppia coniugata]
$
#v(2.5em)

Un classico esempio che illustra come uno stesso composto possa comportarsi da acido o da base in funzione della specie con cui reagisce riguarda l'acido acetico (CH#sub[3]COOH):

#v(1.5em)
$
  mark("CH"_3"COOH", tag: #<1>) 
  + 
  mark("H"_2"O", tag: #<2>) 
  arrows.rl 
  mark("CH"_3"COO", tag: #<3>)^(-)
  + 
  mark("H"_(3)"O", tag: #<4>)^(+) 
  
  #annot(<1>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido₁]]]  
  #annot(<2>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base₂]]]  
  #annot(<3>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base₁]]]  
  #annot(<4>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido₂]]]
  #annot((<1>, <3>), pos: top, dy: -1.5em, dx: 4em)[coppia coniugata]
  #annot((<2>, <4>), pos: bottom, dy: 1em, dx: 5em)[coppia coniugata]
$ <reaz_a>
#v(2.5em) 

#v(1.5em)
$
  mark("CH"_3"COOH", tag: #<1>) 
  + 
  mark("HClO"_4, tag: #<2>) 
  -> 
  mark("CH"_3"COOH", tag: #<3>)_2^(+)
  + 
  mark("ClO", tag: #<4>)_(4)^(-) 
  
  #annot(<1>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base₁]]]  
  #annot(<2>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido₂]]]  
  #annot(<3>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido₁]]]  
  #annot(<4>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base₂]]]
  #annot((<1>, <3>), pos: top, dy: -1.5em, dx: 5em)[coppia coniugata]
  #annot((<2>, <4>), pos: bottom, dy: 1em, dx: 6em)[coppia coniugata]
$ #v(2.5em) 

Nella prima reazione, l'acido acetico agisce da acido perché l'acqua è un acido più debole. Nell'ultima reazione, l'acido acetico si comporta invece da base poiché l'acido perclorico (HClO#sub[4]) è un acido decisamente più forte.

La forza degli acidi e delle basi dipende dai criteri generali trattati nel capitolo 11 riguardanti la forza degli elettroliti. Un elettrolita (e dunque un acido o una base) è considerato forte se in soluzione acquosa è completamente dissociato in ioni; al contrario, si definisce debole se la dissociazione è parziale, instaurando un equilibrio dinamico tra la parte dissociata e quella indissociata. Secondo la teoria di Brønsted-Lowry, il comportamento di un acido può essere rappresentato dalla seguente equazione di equilibrio:

$
  mark("HA", tag: #<1>)
  +
  mark("H"_2"O", tag: #<2>)
  arrows.rl
  mark("A", tag: #<3>)^(-)
  +
  mark("H"_3"O", tag: #<4>)^+

  #annot(<1>)[#align(center)[acido]]  
  #annot(<3>)[#align(center)[base coniugata]]
$

Nel caso di un acido forte, l'equilibrio della reazione di dissociazione può essere considerato completamente spostato verso destra. Un acido forte è associato a una base coniugata debole, ovvero una base con scarsa capacità di accettare ioni H#super[+]. Al contrario, in situazioni diverse, la reazione di dissociazione viene bilanciata dalla reazione inversa di ricombinazione. Questo implica che in soluzione coesistono ioni H#sub[3]O#super[+], A#super[--] e molecole di HA non dissociate. A seconda del rapporto tra la frazione indissociata e la concentrazione di H#sub[3]O#super[+] e A#super[--], si classificano gli acidi come medio-forti, deboli, molto deboli o debolissimi. Seguendo la legge di azione di massa, è possibile osservare sperimentalmente che il seguente rapporto rimane costante a una data temperatura:

$
  ([H_3O^+] dot ["base coniugata"])/(["acido"])= "costante"  
$
cioè:
$
  ([H_3O^+] dot [A^-])/(["HA"])= K_a 
$

Le parentesi quadre indicano le concentrazioni (espresse in moli per litro, ovvero mol/l) delle diverse specie. La costante K#sub[a], nota anche come costante di acidità, costante di ionizzazione acida o costante di dissociazione acida, fornisce una misura della forza dell'acido. Indica quanto la reazione di dissociazione è orientata verso la formazione degli ioni H#sub[3]O#super[+] e A#super[--]. Analoghi ragionamenti si applicano alle basi:

$
  mark("B", tag: #<1>)
  +
  mark("H"_2"O", tag: #<2>)
  arrows.rl
  mark("HB", tag: #<3>)^(+)
  +
  mark("OH", tag: #<4>)^(-)

  #annot(<1>)[#align(center)[base]]  
  #annot(<3>)[#align(center)[acido coniugato]]
$

Per una base forte, l'equilibrio è completamente spostato verso destra. Nei casi di basi medio-forti, deboli, molto deboli o debolissime si può definire una costante di basicità, nota come costante di ionizzazione basica o costante di dissociazione basica, K#sub[b], che ha lo stesso significato della K#sub[a]:

$
  K_b =(["HB"^+] dot ["OH"^-])/(["B"]) 
$

Secondo la teoria degli acidi e basi di Brønsted-Lowry, più forte è l'acido, più debole sarà la sua base coniugata. In altre parole, quanto più l'acido tende a donare un protone, tanto meno la sua base coniugata tenderà ad accettarlo. Parimenti, una base più forte corrisponde a un acido coniugato più debole.

I composti definiti anfoteri sono quelli che, in soluzione acquosa, possono comportarsi sia da acidi che da basi. Ad esempio, l'idrossido di alluminio Al(OH)#sub[3] si comporta da acido in presenza di una base (come OH#super[--]), sciogliendosi nella soluzione basica:

$
  mark("Al(OH)", tag: #<1>)_3
  +
  mark("OH", tag: #<2>)^(-)
  arrows.rl
  mark("Al(OH)", tag: #<3>)_4^-  

  #annot(<1>)[#align(center)[acido]]  
$

Mentre, in presenza di un acido (come H#sub[3]O#super[+]), si comporta da base, sciogliendosi nella soluzione acida:

$
  mark("Al(OH)", tag: #<1>)_3
  +
  mark(3"H"_3"O", tag: #<2>)^(+)
  arrows.rl
  mark("Al", tag: #<3>)^(3+)
  +
  mark(6"H"_2"O", tag: #<4>)  

  #annot(<1>)[#align(center)[base]]  
$

L'acqua rappresenta il composto anfotero per eccellenza, come dimostrano le seguenti reazioni con acido acetico (CH#sub[3]COOH) e ammoniaca (NH#sub[3]):

#v(1.5em)
$
  mark("CH"_3"COOH", tag: #<1>) 
  + 
  mark("H"_2"O", tag: #<2>) 
  arrows.rl 
  mark("CH"_3"COO", tag: #<3>)^(-)
  + 
  mark("H"_(3)"O", tag: #<4>)^(+) 
  
  #annot(<1>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido₁]]]  
  #annot(<2>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base₂]]]  
  #annot(<3>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base₁]]]  
  #annot(<4>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido₂]]]
  #annot((<1>, <3>), pos: top, dy: -1.5em, dx: 4em)[coppia coniugata]
  #annot((<2>, <4>), pos: bottom, dy: .7em, dx: 5em)[coppia coniugata]
$ 
#v(2.5em) 

#v(1.5em)
$
  mark("NH"_3, tag: #<1>) 
  + 
  mark("H"_2"O", tag: #<2>) 
  arrows.rl 
  mark("NH", tag: #<3>)_4^(+)
  + 
  mark("OH", tag: #<4>)^(-) 
  
  #annot(<1>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base]]]  
  #annot(<2>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido]]]  
  #annot(<3>, pos: top)[#align(center)[#text(fill: main_tecnologia)[acido]]]  
  #annot(<4>, pos: top)[#align(center)[#text(fill: main_tecnologia)[base]]]
  #annot((<1>, <3>), pos: top, dy: -1.6em, dx: 3.6em)[coppia coniugata]
  #annot((<2>, <4>), pos: bottom, dy: .7em, dx: 3.6em)[coppia coniugata]
$
#v(2.5em)

#figure(
  caption: [Valori di K#sub[a] per gli acidi],
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
  columns: (20pt,auto,auto,auto),
  table.header[][Nome][Formula][K#sub[a] a 25 °C],
table.cell(rowspan: 21)[#rotate(-90deg, reflow: true)[Forza degli acidi crescente #math.arrow.r]], 
[acido perclorico], [HClO#sub[4]], [grande],
[acido iodidrico], [Hl], [grande],
[acido bromidrico], [HBr], [grande],
[acido solforico], [H#sub[2]SO#sub[4]], [grande],
[acido cloridrico], [HCl], [grande],
[acido nitrico], [HNO#sub[3]], [grande],
[ione idronio], [H#sub[3]O#super[+]], [—],
[acido solforoso], [H#sub[2]SO#sub[3]], [1,2 · 10#super[-2]],
[acido fosforico], [H#sub[3]PO#sub[4]], [7,1 · 10#super[-3]],
[acido nitroso], [HNO#sub[2]], [7,1 · 10#super[-4]],
[acido fluoridrico], [HF], [6,8 · 10#super[-4]],
[acido formico], [HCHO#sub[2]], [1,8 · 10#super[-4]],
[acido acetico], [HC#sub[2]H#sub[3]O#sub[2]], [1,8 · 10#super[-5]],
[acido carbonico], [H#sub[2]CO#sub[3]], [4,5 · 10#super[-7]],
[acido solfidrico], [H#sub[2]S], [9,5 · 10#super[-8]],
[acido ipocloroso], [HOCl], [3,0 · 10#super[-8]],
[ione ammonio], [NH#sub[4]#super[+]], [5,7 · 10#super[-10]],
[ione bicarbonato], [HCO#sub[3]#super[--]], [4,7 · 10#super[-11]],
[ione disolfuro], [SH#super[--]], [1 · 10#super[-19]],
[acqua], [H#sub[2]O], [1 · 10#super[-14]],
[ione idrossido], [OH#super[--]], [1 · 10#super[-36]],
)  
)


== La teoria di Lewis

La teoria di Lewis, proposta dal chimico statunitense G. Lewis (1875-1946) nel 1916 ma accettata solo a partire dal 1938, definisce gli acidi e le basi in un modo più generale rispetto alla teoria di Brønsted-Lowry. Secondo questa teoria, un acido è una specie chimica in grado di accettare una coppia di elettroni (o doppietto elettronico) da una base, formando un legame dativo. Viceversa, una base è una specie chimica capace di donare un doppietto elettronico a un acido, sempre generando un legame dativo.

Esempio:

$ #scale(80%)[
#skeletize(
  config: (angle-increment: 90deg),
  {
    import cetz.draw: *
        molecule(
            "N",
            lewis: (
              lewis-line(),
              ),
            )
        branch({
          single(angle: 1)
          molecule("H")
        })
        branch({
          single(angle: 2)
          molecule(
            "H",       
          )
        })
        branch({
          single(angle: 3)
          molecule(
            "H",            
          )
        })
        branch({
          plus(angle: 4)
          molecule(
            "B",            
          )
        branch({
          single(angle: 1)
          molecule("Cl",
            lewis: (
              lewis-line(),
              lewis-line(angle: 90),
              lewis-line(angle: 180),
              ),
              )
        })
        branch({
          single(angle: 3)
          molecule("Cl",
            lewis: (
              lewis-line(),
              lewis-line(angle: -90),
              lewis-line(angle: 180),
              ),
              )
        })
        branch({
          single(angle: 4)
          molecule("Cl",
            lewis: (
              lewis-line(),
              lewis-line(angle: -90),
              lewis-line(angle: 90),
              ),
              )
        })
        })

operator(math.stretch(sym.arrow.r, size: 2em))

           molecule(
            "N"
            )
        branch({
          single(angle: 1)
          molecule("H")
        })
        branch({
          single(angle: 2)
          molecule(
            "H",       
          )
        })
        branch({
          single(angle: 3)
          molecule(
            "H",            
          )
        })
        
          operator(math.stretch(sym.arrow.r, size: 1em))
          molecule(
            "B",            
          )
        branch({
          single(angle: 1)
          molecule("Cl",
            lewis: (
              lewis-line(),
              lewis-line(angle: 90),
              lewis-line(angle: 180),
              ),
              )
        })
        branch({
          single(angle: 3)
          molecule("Cl",
            lewis: (
              lewis-line(),
              lewis-line(angle: -90),
              lewis-line(angle: 180),
              ),
              )
        })
        branch({
          single(angle: 4)
          molecule("Cl",
            lewis: (
              lewis-line(),
              lewis-line(angle: -90),
              lewis-line(angle: 90),
              ),
              )
        })
        
    
  },
)
] $

Ad esempio, l'ammoniaca (NH#sub[3]) agisce come base di Lewis, mentre il tricloruro di boro (BCl#sub[3]) si comporta da acido di Lewis. Queste reazioni acido-base non dipendono né dalla presenza di un solvente (come richiesto dalla teoria di Arrhenius) né dalla presenza di protoni (teoria di Brønsted-Lowry).

== Prodotto ionico dell'acqua: il pH

Le analisi della conducibilità dell'acqua chimicamente pura dimostrano che, seppur in quantità molto ridotte, essa contiene ioni. Considerando le proprietà anfotere dell'acqua, si può descrivere il suo equilibrio di dissociazione attraverso la seguente relazione:

$
  2H_2O arrows.rl H_3O^+ + O H^-
$

L'equilibrio è definito dalla costante K#sub[c]:

$ 
  K_c = ([H_3O^+] dot [O H^-])/([H_2O]^2)
$

Poiché la concentrazione di [H#sub[2]O] rimane costante nell'acqua pura, si può semplificare l'espressione in K#sub[c] ⋅ [H#sub[2]O]#super[2] = K#sub[w] = [H#sub[3]O#super[+]] ⋅ [OH#super[--]], dove K#sub[w] rappresenta una nuova costante chiamata prodotto ionico dell'acqua. A 25 °C, il valore di K#sub[w] è:

$ 
  K_w = [H_3O^+] dot [O H^-] = 1 dot 10^(-14)
$

Nell'acqua pura, quindi:

$ 
  [H_3O^+] = [O H^-] = 1 dot 10^(-7) space "mol"/l
$

Il valore della costante K#sub[w] deve essere rispettato non solo nell'acqua pura, ma anche in qualsiasi soluzione acquosa, indipendentemente dalla provenienza degli ioni H#sub[3]O#super[+] e OH#super[--]. Le interpretazioni delle concentrazioni degli ioni sono le seguenti:
- Quando [H#sub[3]O#super[+]] > 1 ⋅ 10⁻⁷ mol/l > [OH#super[--]], la soluzione è acida.
- Quando [H#sub[3]O#super[+]] = [OH#super[--]] = 1 ⋅ 10⁻⁷ mol/l, la soluzione è neutra.
- Quando [H#sub[3]O#super[+]] < 1 ⋅ 10⁻⁷ mol/l < [OH#super[--]], la soluzione è basica.

Per comodità nei calcoli e nelle rappresentazioni, l'acidità, la neutralità e la basicità delle soluzioni acquose vengono espresse tramite il pH, definito come il logaritmo negativo in base 10 della concentrazione molare degli ioni H#sub[3]O#super[+].

$ 
  p H = -log[H_3O^+]
$

ovvero:

$ 
  [H_3O^+] = 10^(-"pH")
$

L'intervallo dei valori di pH compresi generalmente tra 0 e 14 costituisce quella che viene chiamata scala del pH. In base a essa, le condizioni di acidità, neutralità e basicità di una soluzione, espresse in termini di pH, si determinano come segue:  
- Se pH < 7 la soluzione è acida  
- Se pH = 7 la soluzione è neutra  
- Se pH > 7 la soluzione è basica  

Analogamente al pH, si può definire il pOH, che rappresenta il logaritmo negativo in base 10 della concentrazione degli ioni idrossido OH#super[--].

$ 
  "pOH" = -log ["OH"^-]
$

Il prodotto ionico dell'acqua può essere espresso anche attraverso il logaritmo pK#sub[w] mediante la seguente relazione:

$
  p K_w = p H + p O H = 14
$

A seconda delle caratteristiche della soluzione, si distinguono vari casi. I più comuni sono:  
+ Soluzioni acquose concentrate (M > 1) di acidi o basi forti. In queste soluzioni il pH può risultare negativo (per gli acidi forti) o superiore a 14 (per le basi forti). A causa dell'elevata concentrazione degli ioni H#sub[3]O#super[+] o OH#super[--], l'acidità o la basicità viene spesso espressa direttamente in funzione di [H#sub[3]O#super[+]] o [OH#super[--]].
+ Soluzioni diluite di acidi e basi forti. Per queste soluzioni, essendo gli acidi e le basi completamente dissociati, il calcolo del pH si basa sulla concentrazione analitica della sostanza. Per esempio:  
   - HCl 0,01 M #math.arrow [H#sub[3]O#super[+]] = 10#super[2] → pH = 2  
   - NaOH 0,001 M #math.arrow [OH#super[--]] = 10#super[-3] → pOH = 3 → pH = 14 - pOH = 11  
+ Soluzioni diluite di acidi deboli e basi deboli. In questa categoria, la concentrazione degli ioni H#sub[3]O#super[+] o OH#super[--] dipende sia dalla concentrazione iniziale dell'acido (C#sub[a]) o della base (C#sub[b]) sia dalla costante di dissociazione (K#sub[a] o K#sub[b]). 

Si può dimostrare che:  
+ nel caso di una soluzione di acido debole:  
  $[H_3O^+] = sqrt(K_a C_a)$ e $p H = -log sqrt(K_a C_a)$
+ nel caso di una soluzione di base debole: $[O H^-] = sqrt(K_a C_a)$ e $p O H = -log sqrt(K_a C_a)$

da cui casi si ottiene:  

$ 
  p H = 14 - p O H
$

== Indicatori acido-base

Gli indicatori acido-base (o indicatori di pH) sono composti organici dotati della capacità di assumere colorazioni diverse al di sotto o al di sopra di un determinato valore di pH nella soluzione in cui sono presenti. Questo fenomeno dipende dalla loro natura chimica come acidi o basi deboli, in cui la forma coniugata presenta un colore distintivo rispetto alla forma indissociata.  

In soluzione, l'indicatore non dissociato (H#emph[In]) partecipa all'equilibrio acido-base secondo:  

$ 
  H#emph[In] + H_2O arrows.rl #emph[In] + H_3O^+
$

La costante di ionizzazione dell'indicatore è definita come:  

$ 
  K_("In") = ([H_3O^+] [#emph[In]^-])/([H#emph[In]])
$

Quando la relazione K#sub[#emph[In]] = [H#sub[3]O#super[+]] si verifica, ossia quando pK#sub[#emph[In]] = pH, l'indicatore raggiunge il punto di viraggio, acquisendo una colorazione intermedia tra la forma A e la forma B.  
- Per valori di pH < pK#sub[#emph[In]]: il logaritmo [#emph[In#super[--]]] risulta inferiore al logaritmo [HIn], l'indicatore assume il colore A, tipico delle condizioni acide rispetto all'indicatore utilizzato.  
- Per valori di pH > pK#sub[#emph[In]]: il logaritmo [#emph[In#super[--]]] supera quello di [H#emph[In]], l'indicatore assume il colore B, indicativo delle condizioni basiche rispetto all'indicatore usato.  

Nella pratica, l'occhio umano riesce a percepire nettamente uno dei due colori quando il rapporto tra [#emph[In#super[--]]] e [H#emph[In]] è pari a 1:10 o 10:1. Piuttosto che focalizzarsi esclusivamente sul punto di viraggio, si preferisce considerare un campo di viraggio che si estende per circa due unità di pH. Gli indicatori trovano largo impiego nelle titolazioni di acidi e basi.

#figure(
  caption: [Comuni indicatori acido-base],
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
  table.header[Nome][Intervallo][Variazione di colore],
  [blu timolo],	[1,2-2,8],	[dal rosso al giallo],
  [arancio di metile],	[3,2-4,4],	[dal rosso al giallo],
  [blu bromotimolo],	[6,0-7,6],	[dal giallo al blu],
  [tornasole],	[4,7-8,3],	[dal rosso al blu],
  [rosso cresolo],	[7,0-8,8],	[dal giallo al rosso],
  [fenolftaleina],	[8,2-10,0],	[da incolore a rosa]
)  
)


== Soluzioni acquose di sali

Nelle soluzioni acquose, l'equilibrio di dissociazione dell'acqua, gli equilibri di dissociazione di acidi e basi deboli, così come le proprietà elettrolitiche dei sali, possono dar luogo a una combinazione di più equilibri coesistenti. Questi equilibri spesso includono uno o più ioni comuni. Alcuni esempi di fenomeni derivanti dalla coesistenza di tali equilibri sono l'idrolisi, i sistemi tampone e gli equilibri di solubilità di sali scarsamente solubili.

Le reazioni di idrolisi consistono nell'interazione di sali derivanti da una base debole e un acido forte o viceversa, con l'acqua. Questo processo porta alla formazione di soluzioni con pH diverso da 7.

+ Sali derivanti da un acido forte e una base debole  

  Questi sali conferiscono alla loro soluzione un pH acido. Un esempio è il cloruro di ammonio (NH#sub[4]Cl), che deriva dall'ammoniaca (NH#sub[3]), una base debole, e dall'acido cloridrico (HCl), un acido forte. In soluzione acquosa, NH#sub[4]Cl si dissocia in ioni ammonio (NH#sub[4]#super[+]) e cloruro (Cl#super[--]).

  Lo ione Cl#super[--], che è una base debole secondo la teoria di Brønsted-Lowry, non reagisce con gli ioni H#sub[3]O#super[+] presenti nell'acqua ionizzata (2H#sub[2]O #math.arrows.rl H#sub[3]O#super[+] + OH#super[--]). Viceversa, lo ione ammonio (NH#sub[4]#super[+]), essendo un acido relativamente forte secondo Brønsted-Lowry, reagisce con lo ione OH#super[--] per stabilire l'equilibrio:

  $ 
    N H_4^+ + O H^- arrows.rl N H_3 + H_2O
  $

  In questa reazione, vengono sottratti ioni OH#super[--] dalla soluzione. Per ristabilire il valore di K#sub[w] = [H#sub[3]O#super[+]] ⋅ [OH#super[--]], ulteriori molecole d'acqua si dissociano. Una volta raggiunto l'equilibrio, si osserva una concentrazione maggiore di H#sub[3]O#super[+] rispetto a quella di OH#super[--], conferendo alla soluzione un pH inferiore a 7. La reazione di idrolisi può essere riassunta nel seguente modo:

  $ 
    N H_4^+ + H_2O arrows.rl N H_3 + H_3O
  $

  La costante di equilibrio della reazione, nota come costante di idrolisi (K#sub[idr.]), è espressa da:

  $ 
    K_"idr."= ([N H_3] dot [H_3O^+])/(N H_4^+) = K_w/K_b
  $

  dove [NH#sub[3]] = [H#sub[3]O#super[+]] e [NH#sub[4]#super[+]] è la concentrazione del sale C#sub[s].
  Conoscendo il valore della costante K#sub[b] della base coniugata NH#sub[3], è possibile calcolare:

  $ 
    [H_3O^+] = sqrt(C_s K_w/K_b)
  $

  da cui si ricava il valore del pH.

+ Sali derivanti da un acido debole e una base forte  

  In questo caso, la soluzione risultante ha un pH basico. Un esempio comune è l'acetato di sodio (CH#sub[3]COONa), che ha origine dall'acido acetico (CH#sub[3]COOH), un acido debole, e dall'idrossido di sodio (NaOH), una base forte. In soluzione acquosa, CH#sub[3]COONa si dissocia generando i seguenti ioni:

  $ 
    "CH"_3"COO"^-, "Na"^+, H_3O^+, "OH"^-
  $

  Analogamente a quanto osservato nel primo caso, lo ione Na#super[+] non interagisce con OH#super[--] poiché NaOH è una base forte. Lo ione acetato (CH#sub[3]COO#super[--]), invece, essendo una base relativamente forte secondo Brønsted-Lowry, reagisce con lo ione H#sub[3]O#super[+] per formare l'acido coniugato debole CH#sub[3]COOH secondo il seguente equilibrio: CH#sub[3]COO#super[--] + H#sub[3]O#super[+] #math.arrows.rl CH#sub[3]COOH + H#sub[2]O. Questa reazione sottrae ioni H#sub[3]O#super[+] alla soluzione e, per ristabilire il valore del K#sub[w], altre molecole d'acqua si dissociano.

  All'equilibrio si osserva che la concentrazione di [OH#super[--]] supera quella di [H#sub[3]O#super[+]], il che implica un pH maggiore di 7. La reazione di idrolisi può essere espressa come segue:

  $ 
    "CH"_3"COO"^- + H_2O arrows.rl "CH"_3"COOH" + "OH"^-
  $

  La costante di idrolisi della reazione è definita da:

  $ 
    K_("idr.") = K_w / K_a = (["CH"_3"COOH"] dot ["OH"^-])/(["CH"_3"COO"^-])
  $

  dove [CH#sub[3]COOH] = [OH#super[--]] e [CH#sub[3]COO#super[--]] è la concentrazione del sale, C#sub[s]. Partendo dal valore noto di K#sub[a], è possibile calcolare:

  $ 
    ["OH"^-] = sqrt(C_s K_w/K_a)
  $

  da cui si ricava il valore del pH.

Il grado d'idrolisi rappresenta la frazione molare del sale che subisce idrolisi allo stato di equilibrio.

Una soluzione tampone è un sistema chimico in grado di minimizzare le variazioni di pH in seguito all'aggiunta di quantità moderate di acidi o basi forti, mantenendo praticamente invariato il grado di acidità della soluzione. 

All'interno di una soluzione tampone si trova una coppia acido-base coniugata, che può consistere in un acido debole insieme al suo sale derivato da una base forte, come ad esempio il sistema formato da acido acetico e acetato di sodio, dove la coppia acido-base è $("CH"_3"COOH")/("CH"_3"COO"^-)$, oppure in una base debole accompagnata dal suo sale derivato da un acido forte, come nel caso del sistema idrossido d'ammonio-cloruro d'ammonio, la cui coppia acido-base corrisponde a $("NH"_4^+)/("NH"_3)$.

In ogni caso, l'effetto tampone del sistema dipende dalla presenza simultanea di una forma acida, capace di neutralizzare piccole quantità aggiunte di basi, e una forma basica, capace di contrastare piccole aggiunte di acidi. L'importanza delle soluzioni tampone è cruciale nelle reazioni chimiche che richiedono un pH costante e nella maggior parte dei processi biochimici.

== Equilibri di solubilità di sali poco solubili. Prodotto di solubilità

#figure(
  caption: [Prodotto di solubilità K#sub[ps] di alcuni sali a 25°C],
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
  table.header[Sostanza][K#sub[ps]],
  [AgBr], [7,70 · 10#super[-13]], [Fe(OH)#super[3]], [1,60 · 10#super[-35]], 
  [AgCl], [1,56 · 10#super[-10]], [FeS], [3,70 · 10#super[-19]], 
  [AgI], [1,50 · 10#super[-16]], [Mg(OH)#super[2]], [1,80 · 10#super[-11]], 
  [Al(OH)#super[3]], [1,26 · 10#super[-33]], [PbCl#super[2]], [1,62 · 10#super[-5]], 
  [BaSO#super[4]], [1,08 · 10#super[-10]], [PbS], [8,40 · 10#super[-28]], 
  [CaCO#super[3]], [8,70 · 10#super[-9]], [PbSO#super[4]], [1,90 · 10#super[-8]], 
  [CuS], [1,00 · 10#super[-35]], [ZnS], [1,20 · 10#super[-23]], 
)  
)

I composti ionici poco solubili in acqua sono coinvolti in un equilibrio eterogeneo che si instaura tra l'elettrolita solido (il corpo di fondo) e la sua soluzione satura. L'elettrolita può essere costituito da un sale, un acido o una base.

Ad esempio, per un sale molto poco solubile come il bromuro d'argento (AgBr), l'equazione di equilibrio relativa alla sua soluzione satura in presenza del corpo di fondo è la seguente:

$ 
  "AgBr"_((s)) arrows.rl "Ag"^+_(("aq.")) + "Br"^-_(("aq."))
$

La costante di equilibrio K#sub[c] del sistema può essere definita come:

$ 
  K_c = (["Ag"^+_(("aq."))] dot ["Br"^-_(("aq."))])/(["AgBr"_((s))])
$

Essendo [AgBr#sub[(s)]] la concentrazione costante di un solido puro, questa può essere inclusa nella costante K#sub[c], ottenendo così una nuova costante K#sub[ps] = K#sub[c] [AgBr#sub[(s)]]. Questa nuova costante viene denominata costante di solubilità o prodotto di solubilità ed è specifica per una determinata temperatura:

$ 
  K_("ps") = ["Ag"^+_(("aq."))] dot ["Br"^-_(("aq."))]
$

Dal valore del prodotto di solubilità è possibile calcolare la solubilità di un sale in grammi per litro.

Se a una soluzione satura di bromuro d'argento, AgBr, si aggiunge del bromuro di potassio (KBr), che condivide lo ione comune Br#super[--] con AgBr, [Br#super[--]#sub[(aq.)]] aumenta e l'equilibrio si sposta verso sinistra. Questo fenomeno, noto come effetto dello ione comune, dimostra che l'aggiunta di uno ione comune a una soluzione satura di un elettrolita poco solubile ne riduce ulteriormente la solubilità.

== La teoria di Lewis e la formazione di ioni complessi

Gli ioni dei metalli di transizione, quando formano ioni complessi (composti da più specie semplici), si comportano come acidi di Lewis. Ad esempio, lo ione rame (II), Cu#super[2+], in soluzione acquosa accetta quattro coppie di elettroni, ciascuna proveniente da una molecola d'acqua H#sub[2]O, secondo la seguente reazione:

$ 
  "Cu"^(2+) + 4H_2O arrows.rl "Cu"(H_2O)_4^(2+)
$

In questo processo lo ione Cu#super[2+] agisce da acido di Lewis mentre le molecole d'acqua si comportano da basi di Lewis.

== Le titolazioni acido-base

La titolazione è una tecnica analitica volumetrica utilizzata per determinare la concentrazione di una sostanza in una soluzione mediante l'impiego di un volume noto e misurabile di una soluzione standard. Questa soluzione standard ha una concentrazione nota e contiene il reagente titolante necessario per la reazione.

Per effettuare una titolazione, si riempie una buretta graduata con la soluzione standard. In un recipiente si pone un volume noto della soluzione da analizzare insieme a qualche goccia di un indicatore appropriato. A questo punto, la soluzione standard viene aggiunta lentamente, goccia dopo goccia, finché l'indicatore cambia colore.

Il punto in cui l'indicatore vira consente di individuare il punto di equivalenza della reazione chimica specifica, cioè il momento in cui alla soluzione da titolare è stato aggiunto un quantitativo stechiometrico del titolante. Nelle titolazioni acido-base, si verifica una reazione di neutralizzazione tra l'acido presente e la base aggiunta o viceversa.
#pagebreak()
== Glossario <senza_numero>
#set page(fill: main_tecnologia.lighten(90%))
/ Acidi e basi secondo Arrhenius: In soluzione acquosa, gli acidi rilasciano ioni H+, mentre le basi producono ioni OH#super[--]. 

/ Acidi e basi secondo Brønsted-Lowry: Gli acidi sono specie in grado di donare ioni H#super[+], mentre le basi sono specie capaci di accettare ioni H#super[+].  

/ Acidi e basi secondo Lewis: Gli acidi agiscono come accettatori di uno o più doppietti elettronici, mentre le basi fungono da donatori di uno o più doppietti elettronici.  

/ Forza degli acidi e delle basi: Acidi e basi completamente dissociati vengono classificati come acidi e basi forti. La forza degli acidi e delle basi deboli dipende invece dalla costante di equilibrio della reazione di ionizzazione.  

/ Prodotto ionico dell'acqua: K#sub[w] = [H#sub[3]O#super[+]] ⋅ [OH#super[--]] = 10#super[-14]; questa è la costante di equilibrio che descrive la dissociazione dell'acqua.  
pH. Misura del grado di acidità di una soluzione espressa tramite il valore pH = – log [H#sub[3]O#super[+]].  

/ Indicatori: Sostanze che cambiano colore in funzione del pH della soluzione in cui si trovano. 

/ Idrolisi: Reazione tra lo ione di un sale e l'acqua in cui il pH della soluzione risulta diverso da 7.  

/ Soluzioni tampone: Sistemi capaci di mantenere stabile il pH di una soluzione entro determinati limiti.  

/ Prodotto di solubilità: K#sub[ps] : Costante di equilibrio che descrive un sistema saturo in presenza del proprio corpo di fondo.









