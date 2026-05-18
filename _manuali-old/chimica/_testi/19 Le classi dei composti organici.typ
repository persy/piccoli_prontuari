#import "../../template_normal.typ": *
#import "_variabili.typ" : * // Variabili
#import "@preview/tdtr:0.4.0" : * // Diagrammi
//#show: frame-style(styles.thmbox)

#evidenzia[Le numerosissime classi dei composti organici si distinguono per proprietà relativamente omogenee e sono raggruppate in base alla presenza specifica di uno o più gruppi funzionali all'interno della loro struttura. Il gruppo funzionale determina gran parte delle caratteristiche chimiche del composto, inclusi i metodi di preparazione e i tipi di reazioni che esso subisce.  

I composti organici più semplici sono gli idrocarburi, da cui derivano formalmente tutte le altre classi in seguito all'aggiunta di singoli atomi o gruppi atomici che costituiscono i gruppi funzionali. Oltre agli idrocarburi, le principali classi comprendono alcoli e i fenoli, aldeidi e chetoni, acidi carbossilici e loro derivati, ammine, composti polifunzionali e composti eterociclici.]

== Gli idrocarburi

Gli idrocarburi rappresentano una vasta categoria di composti organici costituiti esclusivamente da atomi di carbonio (C) e idrogeno (H). Da tali composti derivano, mediante la sostituzione di uno o più atomi di idrogeno con gruppi funzionali, le numerose classi di composti organici.

Si suddividono principalmente in due gruppi: idrocarburi alifatici e idrocarburi aromatici. Gli idrocarburi alifatici sono caratterizzati dall'assenza di anelli benzenici nella loro struttura. All'interno di questa categoria, gli idrocarburi a catena aperta presentano gli atomi di carbonio disposti in catene lineari o ramificate, mentre gli idrocarburi aliciclici sono composti da catene chiuse ad anello.

// Formula
#tidy-tree-graph(compact: false)[
  - idrocarburi
    - alifatici
      - a catena aperta \ (aciclici)
         - saturi
            - alcani
         - insaturi
            - alcheni
            - alchini
            - alcadieni
      - a catena chiusa \ (aliciclici)
         - saturi
            - cicloalcani
         - insaturi
            - cicloalcheni
    - aromatici
      - monociclici
      - policiclici
]


A seconda del tipo di legami presenti tra gli atomi di carbonio, si distinguono i composti saturi, che contengono solo legami semplici, e i composti insaturi, che possiedono anche legami doppi o tripli. Ogni famiglia di idrocarburi alifatici (alcani, alcheni, alchini, cicloalcani, cicloalcheni) può essere descritta attraverso una formula generale che definisce una serie omologa. Gli idrocarburi aromatici, o areni, sono suddivisi a seconda della loro struttura: monociclici, con un unico anello benzenico, o policiclici, con più anelli benzenici condensati.

Una caratteristica comune agli idrocarburi è la loro insolubilità nei solventi polari, come l'acqua, e la loro elevata solubilità nei solventi apolari, come l'etere o il tetracloruro di carbonio. Il loro punto di ebollizione tende a crescere proporzionalmente al numero di atomi di carbonio e alla complessità delle ramificazioni. Inoltre, gli idrocarburi con un numero ridotto di atomi di carbonio (fino a 3-4) sono normalmente gas, quelli con un numero intermedio (fino a 15-16) sono liquidi, mentre i composti con un alto numero di atomi di carbonio risultano solidi.

Gli idrocarburi insaturi generalmente mostrano una maggiore reattività rispetto a quelli saturi. Per quanto riguarda gli idrocarburi aromatici, l'anello benzenico è caratterizzato da una straordinaria stabilità chimica. Per tale motivo risulta difficile spezzarne la struttura, mentre è relativamente più semplice sostituire gli atomi di idrogeno nell'anello con altri atomi o gruppi funzionali.

Le principali fonti naturali di idrocarburi includono il carbone fossile, il gas naturale (composto per circa il 99% da metano) e soprattutto il petrolio. Nella composizione del petrolio si trovano centinaia di idrocarburi diversi, suddivisi mediamente per l'80% in alifatici e per il 20% in aromatici.

La nomenclatura degli idrocarburi avviene seguendo le regole stabilite dal sistema IUPAC. Le principali regole includono:
+ La numerazione della catena più lunga di atomi di carbonio, combinata con la scelta che consenta ai sostituenti (radicali alchilici, gruppi funzionali o catene laterali) di avere le posizioni numeriche più basse.
  $ 
  #move(dx: -25pt)[#mark(CH_3a, tag: <0>)]
  #v(1em)
  #annot(<0>, pos: right, dx: 2pt, dy: -17pt)[#align(center)[radicale metile]]
  \
  mark(#CH_3b, tag: #<1>)
  #annot(<1>, dx: -1.5em)[#align(center)[1]]
  mark(#CH, tag: #<2>)  
  #annot(<2>, dx: -1.5em, dy: .3em)[#align(center)[2]]
  mark(#CH_2, tag: #<3>)  
  #annot(<3>, dx: -1.5em, dy: .1em)[#align(center)[3]]

  mark(#CH_3c, tag: #<4>)
  #annot(<4>, dx: -.2em, dy: .1em)[#align(center)[4]]
  #annot(<4>, pos: right)[#align(center)[sequenza di atomi \ di C corrispondenti \ al butano]]
  
  $#v(1.5em)
+ L'assegnazione dei nomi ai radicali presenti nella catena principale seguendo l'ordine alfabetico e specificando la posizione del carbonio a cui sono legati.
  $ 
  mark(#metilbutano2, tag: #<5>)
  #annot(<5>, pos: right, dx: .3em)[#align(center)[2-metilbutano]]
  $#v(1em)
+ L'indicazione della ripetizione di uno stesso radicale tramite prefissi quali di-, tri-, tetra-, ecc., precisando tutte le posizioni corrispondenti.
  $ 
  mark(#dimetilpentano23, tag: #<6>)
  #annot(<6>, pos: right, dx: .3em)[#align(center)[2,3-dimetilpentano]]
  $#v(1em)
+ La ripetizione del numero di posizione se lo stesso radicale compare più volte sul medesimo atomo di carbonio.
  $ 
  mark(#dimetilbutano22, tag: #<7>)
  #annot(<7>, pos: right, dx: .3em, dy: -.2em)[#align(center)[2,2-dimetilbutano]]
  $

Queste regole assicurano una precisa identificazione e classificazione degli idrocarburi e dei composti organici correlati.


== Gli idrocarburi alifatici

Gli idrocarburi alifatici, che si sviluppano lungo una struttura a catena aperta, vengono classificati in quattro categorie principali: alcani, o paraffine, che sono idrocarburi saturi; alcheni, o olefine, caratterizzati da un doppio legame che li definisce come insaturi; alchini, identificati dalla presenza di un triplo legame che conferisce loro la caratteristica di insaturazione; e infine gli alcadieni, o dieni, che presentano due doppi legami nella loro struttura.

=== Alcani (paraffine)

Gli alcani sono definiti dalla presenza di atomi di carbonio in stato di ibridazione sp³. Tale configurazione consente la formazione esclusiva di legami semplici di tipo σ, sia tra atomi di carbonio (C-C) sia tra carbonio e idrogeno (C-H). La formula generale degli alcani può essere espressa come C#sub[n]H#sub[2n+2].

Secondo le regole stabilite dalla nomenclatura IUPAC, il nome degli alcani è caratterizzato dalla desinenza -ano. Fa eccezione la nomenclatura tradizionale conservata per i primi quattro termini della serie. Per gli altri composti, i nomi derivano generalmente da prefissi basati sulla numerazione greca o latina (pent-, es-, ept-, ecc.).

Gli alcani contenenti più di tre atomi di carbonio possono esistere in diverse configurazioni isomeriche. Il numero di isomeri aumenta con il crescere del numero di atomi di carbonio nella catena. Per identificare correttamente ciascun isomero, che spesso presenta una struttura ramificata, è necessario seguire le regole IUPAC e comprendere il concetto di radicale alchilico.

Un radicale alchilico si ottiene privando la molecola di un alcano di un atomo di idrogeno, risultando in una frazione della molecola caratterizzata da un elettrone spaiato. Questo radicale viene indicato con il simbolo R e il suo nome deriva dall'alcano originario, sostituendo la desinenza -ano con -ile. Ad esempio, il radicale metile ha forma ĊH#sub[3], il radicale etile è CH#sub[3]---ĊH#sub[2] mentre il radicale butile è rappresentato da CH#sub[3]---CH#sub[2]---ĊH#sub[2].

$
  & mark(#metano_struttura, tag: #<1>)    
  & mark(#etano_struttura, tag: #<2>) \ 
  #v(15em)  
  & mark(#propano_struttura, tag: #<3>) #h(3em) 
  & mark(#butano_struttura, tag: #<4>)

  #annot(<1>)[#align(center)[\ $#metano$ \ \ metano]]
  #annot(<2>)[#align(center)[\ $#etano$  \ \ etano]]
  #annot(<3>)[#align(center)[\ $#propano$ \ \ propano]]
  #annot(<4>)[#align(center)[\ $#butano$ \ \ butano]]  
$

Gli alcani possono essere sintetizzati attraverso diverse reazioni:
+ L'addizione di idrogeno ad alcheni in presenza di un catalizzatore:
    $
      mark(#etene, tag: #<1>)
      + H_2 
      mark(-->, tag: #<2>)    
      mark(#etano, tag: #<3>)    
    
      #annot(<1>)[#align(center)[etene]]
      #annot(<2>, pos: top, dx:-.2em)[#align(center)[Ni]]
      #annot(<3>)[#align(center)[etano]]          
    $
    #v(1em)
+ La reazione tra alogenuri alchilici e HCl in presenza di zinco:
  $
    mark(#cloruro_etile, tag: #<1>)
     + "HCl" + "Zn" ->       
    mark(#etano, tag: #<4>)
    + "ZnCl"_2    
  
    #annot(<1>)[#align(center)[cloruro di etile]]    
    #annot(<4>)[#align(center)[etano]]        
  $
  #v(.5em)
  Inoltre, gli alcani partecipano a importanti processi chimici quali:
+ Combustione:
  $
    mark(2 #etano, tag: #<1>)
    + 
    mark(7 "O"_2, tag: #<2>)
    ->
    mark(4 "CO"_2, tag: #<3>)
    +
    mark(6 "H"_2"O", tag: #<4>)

    #annot(<1>)[#align(center)[etano]]
    #annot(<2>)[#align(center)[ossigeno]]
    #annot(<3>)[#align(center)[anidride \ carbonica]]
    #annot(<4>)[#align(center)[acqua]]    
  $
  #v(1.5em)
+ Alogenazione mediante sostituzione radicalica:
  $
    mark(#etano, tag: #<1>)
    +
    mark("Cl"_2, tag: #<2>)
    mark(-->, tag: #<5>)    
    mark(#cloruro_etile, tag: #<3>)
    +
    mark("HCl", tag: #<4>)
  
    #annot(<1>)[#align(center)[etano]]
    #annot(<2>)[#align(center)[cloro]]
    #annot(<3>)[#align(center)[cloruro di etile]]
    #annot(<4>)[#align(center)[cloruro di \ idrogeno]]
    #annot(<5>, pos: top, dx: -.2em)[#align(center)[luce]]
    
  $

#figure(
  caption: [Proprietà dei primi dieci alcani lineari.],
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
  table.header[Nome][Formula][Punto di ebollizione (°C)], 		
  [Metano], [CH#sub[4]], [-161,5],
  [Etano], [C#sub[2]H#sub[6]], [-88,6],
  [Propano], [C#sub[3]H#sub[8]], [-42,1],
  [Butano], [C#sub[4]H#sub[10]], [-0,5],
  [Pentano], [C#sub[5]H#sub[12]], [36,1],
  [Esano], [C#sub[6]H#sub[14]], [68,7],
  [Eptano], [C#sub[7]H#sub[16]], [98,4],
  [Ottano], [C#sub[8]H#sub[18]], [125,7],
  [Nonano], [C#sub[9]H#sub[20]], [150,8],
  [Decano], [C#sub[10]H#sub[22]], [174,1]
)  
)

=== Alcheni (olefine)

Gli alcheni appartengono alla classe degli idrocarburi insaturi e si distinguono per la presenza di un doppio legame tra due atomi di carbonio. Questi atomi si trovano nello stato di ibridazione sp#super[2], con un doppio legame formato da una componente σ e una componente π. La formula generale degli alcheni è C#sub[2]H#sub[2n].

Seguendo le regole IUPAC, il nome degli alcheni termina con la desinenza -ene, che sostituisce la desinenza -ano utilizzata per gli alcani corrispondenti. Inoltre, nella nomenclatura è necessario indicare il numero del primo atomo di carbonio coinvolto nel doppio legame:

$
  & mark(#etene, tag: #<1>)
  #h(5em)
  & mark(#butene1, tag: #<2>)
  \ #v(5em)
  & mark(#propene, tag: #<3>)
  #h(5em)
  & mark(#butene2, tag: #<4>)

  #annot(<1>)[#align(center)[etene \ (etilene)]]
  #annot(<2>)[#align(center)[1-butene \ (butilene)]]
  #annot(<3>)[#align(center)[propene \ (propilene)]]
  #annot(<4>)[#align(center)[2-butene]] 
$

Gli alcheni possono presentare isomeria geometrica cis-trans, che dipende dalla disposizione dei gruppi attorno al doppio legame (si veda il Capitolo 18). Questa tipologia di isomeria non si verifica se uno dei due atomi di carbonio coinvolti nel doppio legame porta due gruppi identici.

Dal punto di vista sintetico, gli alcheni vengono frequentemente preparati mediante reazioni di eliminazione, partendo da composti saturi:
+ Eliminazione di acqua da un alcol in presenza di un catalizzatore acido (H#super[+]):

  $
    mark(#etanolo, tag: #<1>)
    mark(-->, tag: #<2>)
    mark(#etene, tag: #<3>)  

    #annot(<1>)[#align(center)[etanolo]]
    #annot(<2>, pos: top)[#align(center)[calore]]
    #annot(<2>, pos: bottom)[#scale(80%)[#align(center)[$H^+$]]]
    #annot(<3>)[#align(center)[etene]]
  $
  #v(1em)  
+ Eliminazione di una molecola di idracido da un composto alogenato mediante trattamento con idrossido di potassio (KOH) disciolto in una soluzione alcolica:
  $
    mark(#cloruro_etile, tag: #<1>)
    +"KOH"
    mark(-->, tag: #<2>)
    
    mark(#etene, tag: #<3>)
    + "KCl" + H_2O
    mark(, tag: #<4>)

    #annot(<1>)[#align(center)[cloruro di etile]]
    #annot(<2>, pos: top)[#align(center)[alcol]]
    #annot(<3>)[#align(center)[etene]]    
  $
  #v(1em)
  Le reazioni principali degli alcheni sono le addizioni elettrofile al doppio legame. Tuttavia, in particolari condizioni (ad esempio luce ultravioletta o presenza di perossidi), si possono verificare reazioni di addizione radicalica. Nel caso di addizioni elettrofile si applica la regola di Markovnikov, secondo cui, durante l'addizione di un composto contenente idrogeno, l'atomo di idrogeno si lega al carbonio del doppio legame che possiede il maggior numero di atomi di idrogeno.

+ Addizione di un acido alogenidrico  (esempio: HCl, HBr, HI):  
   Permette l'inserimento dell'alogeno e dell'idrogeno al doppio legame. 
   $
     mark(#propene, tag: #<1>)
     + "HCl" ->
     mark(#cloropropano2, tag: #<2>) 
        
     #annot(<1>)[#align(center)[propene]]
     #annot(<2>)[#align(center)[2-cloropropano]]     
   $ 
  #v(1em)
+ Addizione di acqua in presenza di catalizzatori (H#super[+]) :  
   Si ottiene un alcol attraverso la formazione iniziale di un intermedio carbocationico.  
  $
     mark(#propene, tag: #<1>)
     +H_2O ->
     mark(#propanolo2, tag: #<2>) 
        
     #annot(<1>)[#align(center)[propene]]
     #annot(<2>)[#align(center)[2-propanolo]]     
   $ 
  #v(1em)
+ Addizione di alogeni (Cl#sub[2], Br#sub[2]) :  
   In solventi come il tetracloruro di carbonio (CCl#sub[4]), l'alchene reagisce con alogeni, portando all'aggiunta dei due atomi d'alogeno al doppio legame.
   #v(.5em)  
   $
     mark(#propene, tag: #<1>)
     + "Cl"_2
     mark(-->, tag: #<2>)     
     mark(#dicloropropano12, tag: #<3>)     
   
     #annot(<1>)[#align(center)[propene]]
     #annot(<2>, pos: top)[#align(center)[CCl#sub[4]]]
     #annot(<3>)[#align(center)[1,2 dicloropropano]]     
   $
  #v(1em)
+ Addizione di idrogeno (H#sub[2]) in presenza di un catalizzatore (Ni). Il doppio legame viene saturato, dando origine a un alcano:
  #v(.5em)  
   $
     mark(#propene, tag: #<1>)
     + H_2
     mark(-->, tag: #<2>)     
     mark(#propano, tag: #<3>)     
   
     #annot(<1>)[#align(center)[propene]]
     #annot(<2>, pos: top)[#align(center)[Ni]]
     #annot(<3>)[#align(center)[propano]]     
   $
  #v(1em)
+ Addizione di ozono (O#sub[3]) :  
   L'alchene subisce una rottura ossidativa del doppio legame, producendo composti contenenti gruppi carbonilici (aldeidi o chetoni).      
   $ 
     mark(#propene, tag: #<1>)
     + O_3
     mark(-->, tag: #<2>)     
     mark(#aldeide_acetica, tag: #<3>)
     + space
     mark(#aldeide_formica, tag: #<4>)    
   
     #annot(<1>)[#align(center)[propene]]
     #annot(<2>, pos: top)[#align(center)[Zn]]
     #annot(<2>, pos: bottom)[#scale(75%)[#align(center)[$"CH"_2"COOH"$]]]
     #annot(<3>)[#align(center)[aldeide acetica \ (etanale)]] 
     #annot(<4>)[#align(center)[aldeide formica \ (metanale)]]  
   $
  #v(1.5em) 
+ Addizione radicalica di HBr in presenza di perossidi :  
   Questa reazione segue la regola anti-Markovnikov, con l'idrogeno che si lega al carbonio del doppio legame che possiede il minor numero di atomi di idrogeno.
   #v(1em)
   $
     mark(#propene, tag: #<1>)
     + "HBr"
     mark(-->, tag: #<2>)     
     mark(#bromopropano1, tag: #<3>)     
   
     #annot(<1>)[#align(center)[propene]]
     #annot(<2>, pos: top)[#align(center)[perossidi]]
     #annot(<3>)[#align(center)[1-bromopropano]]     
   $  
  #v(1em)
Un'altra importante reazione degli alcheni è la polimerizzazione , che avviene in opportune condizioni di temperatura e pressione e con l'uso di catalizzatori radicalici. Questa reazione porta alla formazione di lunghe catene di polimeri a partire da monomeri.

$
  mark(#emph[n] space #etene, tag: #<1>)  
  mark(-->, tag: #<2>)
  
  mark(#polietilene, tag: #<3>)
  space #emph[n]  

  #annot(<1>)[#align(center)[etene]]
  #annot(<2>, pos: top)[#align(center)[catalizz.]]  
  #annot(<3>)[#align(center)[polietilene \ (politene)]]
$
#v(1em)
=== Alchini 

Gli alchini sono idrocarburi insaturi caratterizzati dalla presenza di un triplo legame tra due atomi di carbonio con ibridazione sp. Il triplo legame si compone di un legame σ e due legami π ed è descritto da una formula generale C#sub[n]H#sub[2n-2]. Il loro nome si ottiene sostituendo la desinenza -ano degli alcani corrispondenti con -ino.

$
  & mark(#etino, tag: #<1>)
  #h(5em)
  & mark(#propino, tag: #<2>)
  \ #v(5em)
  & mark(butino1, tag: #<3>)
  #h(4em)
  & mark(butino2, tag: #<4>)

  #annot(<1>)[#align(center)[etino \ (acetilene)]]
  #annot(<2>)[#align(center)[propino]]
  #annot(<3>)[#align(center)[1-butino]]
  #annot(<4>)[#align(center)[2-butino]] 
$

La preparazione degli alchini avviene tramite reazioni di eliminazione analoghe a quelle osservate per gli alcheni. Gli alchini partecipano principalmente a reazioni di addizione sul triplo legame.

+ Addizione di un acido alogenidrico:  
   Gli atomi si sommano al triplo legame seguendo la regola di Markovnikov. 
   $
     mark(#propino, tag: #<1>)
     + "HCl" ->
     mark(#cloropropene2, tag: #<2>)     
     \ \ \ \ "quindi:" + "HCl" ->
     mark(#dicloropropano22, tag: #<3>)     
   
     #annot(<1>)[#align(center)[propino]]
     #annot(<2>)[#align(center)[2-cloropropene]]
     #annot(<3>)[#align(center)[2,2-dicloropropano]]        
   $ 
   #v(1em)
// Da allineare #TODO

+ Addizione di idrogeno (H#sub[2]) in presenza di catalizzatore (Ni) :  
   Il triplo legame viene progressivamente ridotto a doppio e infine a singolo, formando rispettivamente un alchene e successivamente un alcano.
   $
     mark(#propino, tag: #<1>)
     + 2"H"_2
     mark(-->, tag: #<2>)     
     mark(#propano, tag: #<3>)     
   
     #annot(<1>)[#align(center)[propino]]
     #annot(<2>, pos: top)[#align(center)[Ni]]
     #annot(<3>)[#align(center)[propano]]
   $  
  #v(.5em)
+ Addizione di acqua (H#sub[2]O) in presenza di catalizzatori (H#super[+], Hg#super[2+]) :
  $
     mark(#propino, tag: #<1>)
     + "H"_2"O"
     mark(-->, tag: #<2>)     
     mark(#acetone, tag: #<3>)     
   
     #annot(<1>)[#align(center)[propino]]
     #annot(<2>, pos: top)[#scale(80%)[#align(center)[$H^+$]]]
     #annot(<2>)[#scale(80%)[#align(center)[$"Hg"^(2+)$]]]
     #annot(<3>)[#align(center)[acetone]]
   $  
  #v(.5em)  
   
=== Alcadieni o dieni 

Gli alcadieni, o semplicemente dieni, sono idrocarburi insaturi caratterizzati dalla presenza di due doppi legami nella stessa molecola. La loro formula generale è C#sub[n]H#sub[2n-2]. I doppi legami possono essere:
- cumuli, quando i doppi legami sono contigui.
- coniugati, quando i doppi legami sono separati da un solo legame semplice.
- isolati, se sono separati da più di un legame semplice.

I dieni vengono nominati sostituendo la desinenza -diene alla desinenza -ene degli alcheni, specificando le posizioni dei doppi legami nella catena.

Importanti nella serie degli alcadieni sono il primo termine, l'1,3-butadiene (CH#sub[2]=CH--CH=CH#sub[2]), e l'isoprene, noto anche come 2-metil-1,3-butadiene (CH#sub[2]=CCH#sub[3]--CH=CH#sub[2]), entrambi fondamentali nella produzione della gomma sintetica. Inoltre, l'isoprene rappresenta l'unità molecolare semplice (monomero) che compone la gomma naturale. I metodi di sintesi e le reazioni degli alcadieni ricalcano i principi già osservati per gli alcheni.

== Idrocarburi aliciclici

Gli idrocarburi aliciclici appartengono alla classe degli idrocarburi alifatici che presentano una struttura ad anello formato da atomi di carbonio. La loro nomenclatura deriva dall'idrocarburo lineare corrispondente, preceduto dal prefisso "ciclo" (ad esempio ciclopropano, ciclobutene, cicloesene, ciclopentino).

Questi idrocarburi si suddividono in tre categorie principali:
- cicloalcani, con formula generale C#sub[n]H#sub[2n];
- cicloalcheni, con formula generale C#sub[n]H#sub[2n-2];
- cicloalchini, con formula generale C#sub[n]H#sub[2n-4].

Le proprietà chimiche e fisiche degli idrocarburi aliciclici non mostrano differenze significative rispetto agli analoghi lineari.

//TODO aggiungere formule per riempire la pagina?

== Idrocarburi aromatici

Gli idrocarburi aromatici, detti anche areni, si distinguono per la presenza nella loro struttura molecolare di uno o più anelli benzenici, responsabili delle particolari proprietà aromatiche. Queste caratteristiche derivano dalla delocalizzazione degli elettroni dei tre legami π distribuiti sui sei atomi di carbonio dell'anello. Il benzene, con formula C#sub[6]H#sub[6], costituisce il capostipite della categoria ed è presente nel catrame di carbon fossile e nel petrolio. La sua struttura si descrive come un ibrido di risonanza che integra due forme limite.

$ 
  #benzene_limite1 arrow.l.r.long #benzene_limite2 #benzene
$

Di seguito alcuni esempi di idrocarburi aromatici mociclici e policiclici:


$ #h(10em)
  mark(#benzene, tag: #<1>)
  mark(#metilbenzene, tag: #<2>)
  mark(#o_dimetilbenzene, tag: #<3>)  
  mark(#m_dimetilbenzene, tag: #<4>)
  mark(#p_dimetilbenzene, tag: #<5>)
  mark(#etenilbenzene, tag: #<6>) \ \ \ \
  mark(#difenile, tag: #<7>)
  mark(#naftalene, tag: #<8>)
  mark(#antracene, tag: #<9>)

  #annot(<1>)[#align(center)[benzene]]
  #annot(<2>)[#align(center)[metilbenzene]]
  #annot(<3>)[#align(center)[o-dimetilbenzene \ (o-xilene)]]
  #annot(<4>)[#align(center)[m-dimetilbenzene \ (m-xilene)]]
  #annot(<5>)[#align(center)[p-dimetilbenzene \ (p-xilene)]]
  #annot(<6>)[#align(center)[etenilbenzene]]
  #annot(<7>)[#align(center)[difenile]]
  #annot(<8>)[#align(center)[naftalene]]
  #annot(<9>)[#align(center)[antracene]]
$
// Da rifare? #TODO

Per la nomenclatura degli idrocarburi aromatici e dei derivati del benzene, si utilizza generalmente un prefisso che specifica il tipo di sostituente legato all'anello. Tuttavia, in molti casi vengono adottati nomi tradizionali. Il radicale aromatico (Ar), che deriva dal benzene per eliminazione di un atomo di idrogeno, è denominato fenile (C#sub[6]H#sub[5]). L'idrogeno associato al gruppo benzenico può essere sostituito da vari gruppi funzionali mediante reazioni di sostituzione elettrofila. Alcuni composti derivati del benzene si ottengono per:
- nitrazione mediante una miscela di HNO#sub[3] e H#sub[2]SO#sub[4];
- alogenazione tramite reagenti come Cl#sub[2] + AlCl#sub[3];
- solfonazione con H#sub[2]SO#sub[4].

$
  mark(#nitrobenzene, tag: #<1>)  quad
  mark(#clorobenzene, tag: #<2>)  quad
  mark(#acido_benzensolfonico, tag: #<3>)  

  #annot(<1>)[#align(center)[nitrobenzene]]
  #annot(<2>)[#align(center)[clorobenzene]]
  #annot(<3>)[#align(center)[acido \ benzensolfonico]]  
$
#v(1em)
Quando due sostituenti A e B sono presenti sull'anello benzenico, essi possono occupare posizioni diverse (orto-, meta-, o para-) sulla struttura:
$
  mark(#orto_benzene, tag: #<1>)  quad
  mark(#meta_benzene, tag: #<2>)  quad
  mark(#para_benzene, tag: #<3>)  quad

  #annot(<1>)[#align(center)[ortobenzene \ (o-benzene)]]
  #annot(<2>)[#align(center)[metabenzene \ (m-benzene)]]
  #annot(<3>)[#align(center)[parabenzene \ (p-benzene)]]   
$

== Alogenuri alchilici e arilici

Gli alogenuri alchilici si caratterizzano per la presenza di uno o più atomi di alogeno legati a una catena alifatica (R), con formula generale RX (dove X rappresenta Cl, Br o I). 

$
  & mark(#cloropropano2, tag: #<1>)
  #h(5em)
  & mark(#cloroetene, tag: #<2>)
  \ #v(5em)
  & mark(#bromoetano1, tag: #<3>)
  #h(4em)
  & mark(#cloropropene3, tag: #<4>)

  #annot(<1>)[#align(center)[2-cloropropano \ (cloruro di isopropile)]]
  #annot(<2>)[#align(center)[cloroetene \ (cloruro di vinile)]]
  #annot(<3>)[#align(center)[1-bromoetano \ (bromuro di etile)]]
  #annot(<4>)[#align(center)[3-cloro-1-propene \ (cloruro di allile)]] 
$

Gli alogenuri arilici, al contrario, contengono atomi di alogeno legati direttamente a un anello benzenico o a un radicale arilico (Ar), con formula generale Ar-X.

$
  & mark(#fluorobenzene, tag: #<1>)
  space
  & mark(#clorobenzene, tag: #<2>) 
  space 
  & mark(#bromobenzene, tag: #<3>)
  space
  & mark(#iodobenzene, tag: #<4>)

  #annot(<1>)[#align(center)[fluorobenzene]]
  #annot(<2>)[#align(center)[clorobenzene]]
  #annot(<3>)[#align(center)[bromobenzene]]
  #annot(<4>)[#align(center)[iodobenzene]] 
$

== Alcoli e fenoli  

Queste due classi di composti condividono il gruppo funzionale ossidrile, —OH. Negli alcoli, il gruppo ossidrile è associato a una catena alifatica (R), e la loro formula generale è R—OH. Nei fenoli, il gruppo ossidrile è invece legato a un anello aromatico, o radicale fenile (Ar), con formula generale Ar—OH.

=== Alcoli

Gli alcoli sono composti organici caratterizzati dalla presenza di uno o più gruppi funzionali —OH. Quando contengono un singolo gruppo —OH, vengono definiti alcoli monovalenti , mentre gli alcoli polivalenti  sono caratterizzati da più gruppi —OH associati a diversi atomi di carbonio. Tra gli alcoli monovalenti, i più rappresentativi sono il metanolo e l'etanolo; essi si classificano ulteriormente in alcoli primari, secondari  e terziari, in base alla natura dell'atomo di carbonio cui il gruppo ossidrile (—OH) è legato, cioè se esso risulta legato  rispettivamente a uno, due o tre atomi di carbonio. La nomenclatura degli alcoli prevede l'utilizzo della desinenza —olo in aggiunta al nome dell'idrocarburo corrispondente.

$
  & mark(#metanolo, tag: #<1>)
  #h(5em)
  & mark(#etanolo, tag: #<2>)
  \ #v(8.5em)
  & mark(#propanolo2, tag: #<3>)
  #h(4em)
  & mark(#metil2propanolo2, tag: #<4>)

  #annot(<1>)[#align(center)[metanolo \ (alcol metilico)]]
  #annot(<2>)[#align(center)[etanolo \ (alcol etilico)]]
  #annot(<3>)[#align(center)[2-propanolo \ (alcol isopropilico)]]
  #annot(<4>)[#align(center)[2-metil-2-propanolo \ (alcol ter-butilico)]] 
$

La presenza del gruppo funzionale —OH conferisce agli alcoli la capacità di formare legami idrogeno tra le molecole. Questa caratteristica spiega perché gli alcoli più semplici si presentano sotto forma liquida e siano solubili in acqua, dove la polarità del gruppo ossidrile prevale sull'apolarità della catena idrocarburica. Gli alcoli possono essere ottenuti attraverso vari processi:
+ La fermentazione, ad esempio nella produzione di etanolo mediante fermentazione del glucosio.
+ Procedimenti chimici, tra cui:
   - Addizione di H#sub[2]O agli alcheni, processo noto come idratazione.
   #v(.5em)
   $
     mark(#propene, tag: #<1>)
     + "H"_2"O"
     mark(-->, tag: #<2>)     
     mark(#propanolo2, tag: #<3>)     
   
     #annot(<1>)[#align(center)[propene]]
     #annot(<2>, pos: top)[#align(center)[$"H"^+$]]
     #annot(<3>)[#align(center)[2-propanolo]]     
   $#v(.5em)
   - Sostituzione nucleofila di un alogenuro alchilico.
   $
     mark(#cloruro_propile, tag: #<1>)
     + "KOH"
     mark(->, tag: #<2>)     
     mark(#propanolo1, tag: #<3>) 
     + "KCl"    
   
     #annot(<1>)[#align(center)[cloruro di propile]]     
     #annot(<3>)[#align(center)[1-propanolo]]     
   $#v(.5em)

Le principali reazioni chimiche cui gli alcoli possono essere sottoposti includono:
+ Ossidazione:  Gli alcoli primari, attraverso ossidazione parziale, generano aldeidi e, con un'ossidazione più spinta, si trasformano in acidi carbossilici. Gli alcoli secondari, invece, producono chetoni.
+ Disidratazione:  La disidratazione degli alcoli porta alla formazione di alcheni.
+ Esterificazione:  Gli alcoli reagiscono con acidi carbossilici dando luogo alla formazione di esteri.  
  #v(.5em)  
  $ #h(3.5em)
    mark(#etanolo, tag: #<1>)
    +
    mark(#acido_acetico, tag: #<2>)    
    mark(-->, tag: #<3>)    
    mark(#acetato_etile, tag: #<4>) + "H"_2"O" 
  
    #annot(<1>)[#align(center)[etanolo]]
    #annot(<2>)[#align(center)[acido acetico]]
    #annot(<3>, pos: top)[#align(center)[$H^+$]]
    #annot(<4>)[#align(center)[acetato di etile]]   
  $
  
=== Fenoli

I fenoli sono composti organici aromatici che comprendono un gruppo ossidrile —OH legato direttamente a un anello benzenico. Il prototipo di questa classe è il fenolo (chiamato anche idrossibenzene  o acido fenico ) con formula C#sub[6]H#sub[5]OH. Esistono anche derivati contenenti due gruppi —OH legati all'anello benzenico, quali pirocatecolo, resorcinolo e idrochinone.

$
  #h(3em)
  mark(#fenolo, tag: #<1>) space
  mark(#pirocatecolo, tag: #<2>) space  
  mark(#resorcinolo, tag: #<3>) space  
  mark(#idrochinone, tag: #<4>)

  #annot(<1>)[#align(center)[fenolo \ (idrossibenzene)]]
  #annot(<2>)[#align(center)[pirocatecolo \ (2-idrossifenolo)]]
  #annot(<3>)[#align(center)[resorcinolo \ (3-idrossifenolo)]]
  #annot(<4>)[#align(center)[idrochinone \ (4-idrossifenolo)]]  
$
#v(1.5em)

I fenoli sono generalmente solidi, caratterizzati da un odore intenso e solubilità nei solventi organici; possiedono proprietà acide deboli e trovano impiego nella produzione di coloranti. La loro sintesi avviene trattando gli alogenuri aromatici con basi forti ad alta pressione e temperatura.

Le principali reazioni dei fenoli includono:
+ Reazioni con basi forti:  Producono sali chiamati fenati , come il fenato di sodio (C#sub[6]H#sub[5]ONa).
+ Reazioni con acidi:  Determinano la formazione di esteri.
  $
    mark(#fenolo, tag: #<1>)
    +
    mark(#acido_acetico, tag: #<2>)    
    mark(-->, tag: #<3>)    
    mark(#acetato_fenile, tag: #<4>)
    + "H"_2"O"
  
    #annot(<1>)[#align(center)[fenolo]]
    #annot(<2>)[#align(center)[acido acetico]]
    #annot(<3>, pos: top)[#align(center)[$"H"^+$]]
    #annot(<4>)[#align(center)[acetato di fenile]]
    
  $
  #v(1.5em)
+ Sostituzione elettrofila:  Il gruppo —OH, agendo come fortemente attivante, favorisce reazioni che inseriscono specie elettrofile nelle posizioni orto  e para  dell'anello benzenico.
  $
    mark(#fenolo, tag: #<1>)
    + "HNO"_3 -->
    & mark(#para_nitrofenolo, tag: #<2>) + "H"_2"O" \
    "oppure" #h(2em)   
    & mark(#orto_nitrofenolo, tag: #<3>)
    + "H"_2"O"
  
    #annot(<1>)[#align(center)[fenolo]]
    #annot(<2>, pos: top + right)[#align(center)[para-nitrofenolo]]
    #annot(<3>)[#align(center)[orto-nitrofenolo]]
  $

== Eteri

Gli eteri sono composti organici caratterizzati dalla presenza di un atomo di ossigeno interposto tra due radicali organici (R—O—R′), che possono essere identici o differenti. Questi composti sono generalmente liquidi volatili e vengono utilizzati come solventi per molte sostanze organiche. L'etere dietilico (anche noto semplicemente come etere ), con formula C#sub[2]H#sub[5]—O—C#sub[2]H#sub[5], è il più conosciuto della classe.

Gli eteri possono essere preparati tramite disidratazione intermolecolare degli alcoli, permettendo la formazione del legame R—O—R′.
#v(.5em)
$
  mark(2 space #etanolo, tag: #<1>)
  +
  mark(-->, tag: #<2>)  
  mark(#etere_dietilico, tag: #<3>)  

  #annot(<1>)[#align(center)[etanolo]]
  #annot(<2>, pos: top)[#align(center)[$"H"^+$]]
  #annot(<3>)[#align(center)[etere dietilico]]  
  
$
#v(.5em)

== Aldeidi e chetoni

Le aldeidi e i chetoni rappresentano due classi di composti organici caratterizzati dalla presenza del gruppo funzionale carbonile ($#chetone_piccolo$). Nelle aldeidi, il gruppo carbonile è direttamente legato a un atomo di idrogeno e a un atomo di carbonio di un radicale alchilico (R) o arilico (Ar). Nei chetoni, invece, il carbonile è connesso a due atomi di carbonio appartenenti a gruppi alchilici o arilici.

$
  mark(#aldeide, tag: #<1>) quad quad
  mark(#chetone, tag: #<2>)    

  #annot(<1>)[#align(center)[aldeide]]  
  #annot(<2>)[#align(center)[chetone]]  
$
#v(.5em)
La nomenclatura delle aldeidi si ottiene aggiungendo al nome dell'idrocarburo corrispondente la desinenza "-ale". 
$ #h(3em)
  mark(#aldeide, tag: #<1>)  quad quad
  mark(#aldeideAR, tag: #<2>)   quad quad
  mark(#etanale_struttura, tag: #<3>)  quad  quad
  mark(#benzaldeide, tag: #<4>) 
  \
  #h(5em)
  mark(#chetoneRR, tag: #<5>)  quad quad
  mark(#chetoneArAr, tag: #<6>)   quad quad
  mark(#chetoneRAr, tag: #<7>)  quad  quad
  mark(#propanone_struttura, tag: #<8>)  quad quad
  mark(#feniletanone, tag: #<9>)

  #annot((<1>))[#align(center)[aldeide \ (alchilica)]]
  #annot(<2>)[#align(center)[aldeide \ (arilica)]]
  #annot(<3>)[#align(center)[chetone]]
  #annot(<4>)[#align(center)[benzaldeide]]

  #annot((<5>))[#align(center)[chetone \ (doppio alchilico)]]
  #annot(<6>)[#align(center)[chetone \ (doppio arilico)]]
  #annot(<7>)[#align(center)[chetone \ (alchilico e arilico)]]
  #annot(<8>)[#align(center)[propanone]]
  #annot(<9>)[#align(center)[feniletanone \ (acetofenone)]]
$
  #v(1em)

Le aldeidi più comuni della serie alifatica includono il metanale (HCHO), noto anche come formaldeide, e l'etanale (CH#sub[3]—CHO), chiamato acetaldeide. Il metanale si presenta come un gas dal caratteristico odore pungente, solubile in acqua, utilizzato principalmente come germicida e disinfettante; la sua soluzione acquosa è denominata formalina. L'etanale trova applicazione nella produzione di acido acetico, resine fenoliche e ureiche. 

Le aldeidi vengono sintetizzate per ossidazione di alcoli primari, ad esempio mediante anidride cromica (CrO#sub[3]) in presenza di piridina, oppure tramite riduzione catalitica dei cloruri degli acidi corrispondenti. 

$
  mark(#etanolo, tag: #<1>)
  + "CrO"_3
  mark(-->, tag: #<2>)  
  mark(#etanale, tag: #<3>)  

  #annot(<1>)[#align(center)[etanolo]]
  #annot(<2>, pos: top)[#align(center)[piridina]]
  #annot(<3>)[#align(center)[etanale]] 
$

Per quanto riguarda i chetoni, la loro nomenclatura segue il principio di aggiungere la desinenza "-one" al nome dell'idrocarburo di riferimento. Il chetone più semplice della serie alifatica è il propanone (CH3COCH3), comunemente conosciuto come acetone, un liquido incolore dall'odore caratteristico impiegato come solvente. I chetoni possono essere ottenuti sia attraverso l'ossidazione di alcoli secondari con CrO#sub[3], sia per addizione di acqua agli alchini.

$
  mark(#propanolo2, tag: #<1>)
  + "CrO"_3
  mark(-->, tag: #<2>)  
  mark(#etanale, tag: #<3>) \ \ \
  mark(#propino, tag: #<4>)
  + "H"_2"O"
  mark(-->, tag: #<5>)  
  mark(#propanone, tag: #<6>)

  #annot(<1>)[#align(center)[propanolo]]
  #annot(<2>, pos: top)[#align(center)[piridina]]
  #annot(<3>)[#align(center)[etanale]]  
  #annot(<4>)[#align(center)[propino]]
  #annot(<5>, pos: top)[#scale(80%)[#align(center)[$"H"^+$]]]
  #annot(<5>, pos: bottom)[#scale(80%)[#align(center)[$"Hg"^(2+)$]]]
  #annot(<6>)[#align(center)[propanone]]  
$
#v(.5em)
+ Reazioni di addizione nucleofila   
   - Riduzione: le aldeidi vengono ridotte ad alcoli primari, mentre i chetoni sono convertiti in alcoli secondari. La riduzione viene effettuata riscaldando i composti in presenza di riducenti quali idruro di litio-alluminio (LiAlH#sub[4]) o idruro di sodio-boro (NaBH#sub[4]). In tali processi, lo ione idruro (H#super[--]) funziona come nucleofilo. Un'alternativa consiste nell'idrogenazione catalitica.  
   $
     mark(#etanale, tag: #<1>)
     + "H"_2
     mark(-->, tag: #<2>)     
     mark(#etanolo, tag: #<3>)
     \ #v(5em)
     mark(#propanone, tag: #<4>)
     + "H"_2
     mark(-->, tag: #<5>)
     mark(#propanolo2, tag: #<6>)
   
     #annot(<1>)[#align(center)[etanale]]
     #annot(<2>, pos: top)[#align(center)[Ni]]
     #annot(<3>)[#align(center)[etanolo]]
     #annot(<4>)[#align(center)[propanone]]
     #annot(<5>, pos: top)[#align(center)[Ni]]
     #annot(<6>)[#align(center)[quarto]]     
   $
   - Reattivi di Grignard: per addizione dei reattivi di Grignard, ad esempio bromuro di alchilmagnesio, si ottengono alcoli con catene più lunghe: alcoli secondari nel caso delle aldeidi e terziari nel caso dei chetoni.
   $ #h(7em)
     mark(#etanale_struttura2, tag: #<1>)
     +
     mark(#bromuro_alchilmagnesio, tag: #<2>)
     #etanale_bromuro
     mark(-->, tag: #<3>)     
     mark(#propanolo2, tag: #<4>)
   
     #annot(<1>)[#align(center)[etanale]]
     #annot(<2>)[#align(center)[bromuro di \ alchilmagnesio]]
     #annot(<3>, pos: top)[#scale(80%)[#align(center)[$"H"_2"O"$]]]
     #annot(<3>)[#scale(80%)[#align(center)[(idrolisi))]]]
     #annot(<4>)[#align(center)[propanolo]]     
   $

+ Reazioni di ossidazione   
   Le aldeidi sono facilmente ossidabili ad acidi carbossilici, mentre i chetoni risultano ossidabili solo in condizioni drastiche, che richiedono agenti ossidanti energici e temperature elevate. In tal caso si verifica la rottura del legame carbonio-carbonio e la formazione di acidi carbossilici con catena più corta. Un esempio tipico è l'ossidazione del bicromato di potassio: esso converte l'etanale in acido etanoico ma non riesce a ossidare efficacemente l'acetone.
+ Reazioni di condensazione   
   Le molecole di aldeidi o chetoni sono capaci di reagire tra loro formando composti attraverso la condensazione aldolica. Tale reazione porta alla sintesi rispettivamente di idrossialdeidi o idrossichetoni.
   $
     mark(#etanale_struttura2, tag: #<1>)
     +
     mark(#etanale_struttura3, tag: #<2>)     
     mark(-->, tag: #<3>)
     mark(#idrossibutanale, tag: #<4>)
   
     #annot(<1>)[#align(center)[etanale]]
     #annot(<2>)[#align(center)[etanale]]
     #annot(<3>, pos: top)[#scale(80%)[#align(center)[$"OH"^-$]]]
     #annot(<4>)[#align(center)[idrossibutanale]]
     
   $
  #v(1em)
L'ampia reattività chimica delle aldeidi e dei chetoni li rende centrali in numerosi processi industriali e applicazioni sintetiche.

== Acidi carbossilici

Gli acidi carbossilici sono composti caratterizzati dalla presenza del gruppo funzionale carbossile (―COOH), il quale può essere legato a una catena alifatica, dando origine agli acidi carbossilici alifatici, oppure legato al carbonio di un anello benzenico, come nel caso degli acidi carbossilici aromatici. La nomenclatura di questi composti si basa sull'aggiunta della desinenza "-oico" al nome dell'idrocarburo corrispondente, preceduto dalla parola "acido".

$
  & mark(#aldeide, tag: #<1>) quad quad
  mark(#acido_etanoico_struttura, tag: #<2>) \ \ #v(7em)
  & mark(#chetone, tag: #<3>) quad quad 
  mark(#acido_benzoico_struttura, tag: #<4>)   

  #annot(<1>)[#align(center)[aldeide]]  
  #annot(<2>)[#align(center)[acido etanoico \ (acido acetico)]] 
  #annot(<3>)[#align(center)[chetone]]
  #annot(<4>)[#align(center)[acido benzoico]] 
$
#v(.5em)

Tra gli acidi alifatici più semplici si annoverano l'acido metanoico (noto anche come acido formico, HCOOH), l'acido etanoico (meglio conosciuto come acido acetico, CH#sub[3]―COOH) e l'acido propanoico, H#sub[3]―H#sub[2]―COOH. Gli acidi carbossilici che contengono due gruppi funzionali H#sub[3]COOH prendono il nome di dicarbossilici e la loro nomenclatura termina con la desinenza "-dioico". Un esempio rappresentativo è:

$
  mark(#acido_ossalico, tag: #<1>) quad quad #h(7em)
  
  mark(#acido_malonico, tag: #<2>)  

  #annot(<1>, pos: right)[#align(center)[acido ossalico \ (etandioico)]]
  #annot(<2>, pos: right)[#align(center)[acido malonico \ (propandioico)]]    
$

Gli acidi carbossilici sono solubili in acqua ma tendono a dissociarsi debolmente formando ioni H#sub[3]O#super[+]. La solubilità in acqua diminuisce all'aumentare della lunghezza della catena carboniosa. Gli acidi carbossilici contenenti un numero pari di atomi di carbonio pari o superiore a quattro sono definiti acidi grassi. Questi composti sono i precursori dei trigliceridi, ossia esteri del glicerolo, che costituiscono uno dei principali componenti dei grassi di origine animale e vegetale.

Gli acidi carbossilici possono essere sintetizzati attraverso l'ossidazione di alcoli primari mediante agenti ossidanti come KMnO#sub[4]. Nel caso degli acidi aromatici, come l'acido benzoico, la reazione avviene tramite ossidazione del toluene. Un'altra via di sintesi consiste nell'idrolisi dei nitrili in ambiente acido, che porta alla formazione di un acido carbossilico:

$
  mark(#propanonitrile, tag: #<1>)
  + "H"_2"O"
  mark(-->, tag: #<2>)  
  mark(#acido_propanoico, tag: #<3>)
  + "NH"^+_4  

  #annot(<1>)[#align(center)[propanonitrile]]
  #annot(<2>, pos: top)[#align(center)[$H^+$]]
  #annot(<3>)[#align(center)[acido propanoico]]
$

Le trasformazioni chimiche degli acidi carbossilici includono:
+ Salificazione : Gli acidi carbossilici reagiscono con basi formando i corrispondenti sali:
  $
    mark("CH"_3"COOH", tag: #<1>)
    + "KOH" -->
    mark("CH"_3"COOK", tag: #<2>)
    + "H"_2"O"  

    #annot(<1>)[#align(center)[acido etanoico]]
    #annot(<2>)[#align(center)[etanoato di potassio]]     
  $
  #v(1em)
+ Riduzione : Attraverso l'azione di agenti riducenti forti, gli acidi carbossilici vengono trasformati in alcoli primari.
+ Esterificazione : Gli acidi carbossilici reagiscono con alcoli o fenoli in presenza di catalizzatori acidi per formare esteri:
  #v(.5em)
  $
    mark("CH"_3"COOH", tag: #<1>)
    +
    mark("CH"_3"OH", tag: #<2>)
    mark(arrows.rl, tag: #<3>)
    mark("CH"_3"COOH"_3, tag: #<4>)
    + "H"_2"O"  

    #annot(<1>)[#align(center)[acido etanoico]]
    #annot(<2>)[#align(center)[metanolo]]
    #annot(<4>)[#align(center)[etanolato di metile \ (acetato di metile)]]
    #annot(<3>, pos: top)[#scale(80%)[#align(center)[$"H"^+$]]]
  $


== Derivati degli acidi carbossilici

Tra i principali derivati degli acidi carbossilici troviamo gli esteri, i quali si formano per reazione tra un acido carbossilico e un alcol in ambiente acido (reazione di esterificazione).

$
  mark(#acido, tag: #<1>)
  +
  mark(#alcol, tag: #<2>)  
  mark(-->, tag: #<3>)
  mark(#estere, tag: #<4>)

  #annot(<1>)[#align(center)[acido]]
  #annot(<2>)[#align(center)[alcol]]
  #annot(<3>, pos: top)[#scale(80%)[#align(center)[$H_2"SO"_4$]]]
  #annot(<4>)[#align(center)[estere]]
  
$

In tali composti, i gruppi R e R′ rappresentano radicali alchilici o arilici, che possono essere uguali o diversi. Il gruppo funzionale caratteristico della classe degli esteri è —CO—O—. La nomenclatura prevede la sostituzione della desinenza dell'acido con "-ato", seguita dal nome del radicale legato all'ossigeno.

$
  mark(#acetato_etile, tag: #<1>) quad quad #h(2em) 
  mark(#benzoato_metile_struttura, tag: #<2>)  

  #annot(<1>)[#align(center)[etanoato di etile \ (acetato di etile)]]
  #annot(<2>)[#align(center)[benzoato di metile]] 
$
#v(.5em)
Gli esteri del glicerolo, che si formano dalla reazione con acidi grassi, sono denominati trigliceridi e costituiscono uno dei principali gruppi di lipidi (discussi in dettaglio nel Capitolo 20). Questi composti subiscono principalmente reazioni di sostituzione nucleofila:
+ Idrolisi  in ambiente basico (nota come saponificazione):
  $
    mark("CH"_3"COOCH"_3, tag: #<1>)
    +
    mark("NaOH", tag: #<2>)
    -->
    mark("CH"_3"COONa", tag: #<3>)
    +
    mark("CH"_3"OH", tag: #<4>)
  
    #annot(<1>)[#align(center)[acetato di metile]]
    
    #annot(<3>)[#align(center)[acetato di sodio]]
    #annot(<4>)[#align(center)[metanolo]]
    
  $
  #v(1em)
+ Reazione con il reattivo di Grignard , che porta alla formazione di un alcol terziario:

  $ #h(5em)
    mark("CH"_3"COOCH"_3, tag: #<1>)
    +
    mark("2CH"_3"MgI", tag: #<2>)
    -->
    mark(#grignard1, tag: #<3>)
    mark(-->, tag: #<4>)
    mark(#grignard2, tag: #<5>)

    #annot(<1>)[#align(center)[acetato di metile]]
    #annot(<2>)[#align(center)[reattivo \ di Grignard]]    
    #annot(<4>, pos: top)[#scale(80%)[#align(center)[$"H"_2"O"$]]]
    #annot(<5>)[#align(center)[2-metil-2-propanolo]]
    
  $
  #v(1em)
Altri derivati degli acidi carbossilici includono:
- Cloruri degli acidi: si ottengono dalla clorurazione diretta degli acidi carbossilici e il gruppo funzionale è —COCl.
  $
    mark("CH"_3"COOH", tag: #<1>)
    +
    mark("PCL"_5, tag: #<2>)
    -->
    mark("CH"_3"COCl", tag: #<3>)
    + "POCl"_3 + "HCl"  

    #annot(<1>)[#align(center)[acido acetico]]  
    #annot(<3>)[#align(center)[cloruro di acetile]]  
    
  $
  #v(1em)
- Anidridi: derivano dall'eliminazione di acqua da due molecole di acido in ambiente acido e con riscaldamento; il loro gruppo funzionale è —CO—O—CO—.
  
  $
    mark(2"CH"_3"COOH", tag: #<1>)
    mark(-->, tag: #<2>)    
    mark(("CH"_3"CO")_2O, tag: #<3>)
    + "H"_2"O" 

    #annot(<1>)[#align(center)[acido acetico]] 
    #annot(<2>, pos: top)[#scale(80%)[#align(center)[$"H"^+$]]] 
    #annot(<2>, pos: bottom)[#scale(80%)[#align(center)[calore]]]
    #annot(<3>)[#align(center)[anidride acetica]]  
    
  $
  #v(1em)
- Ammidi: si formano facendo reagire i cloruri degli acidi con ammoniaca (NH#sub[3]):
  $
    mark("CH"_3"COCl", tag: #<1>)
    + 2"NH"_3 -->
    mark("CH"_3"CONH"_2, tag: #<2>)
    + "NH"_4"Cl"    
  
    #annot(<1>)[#align(center)[cloruro di acetile]]
    #annot(<2>)[#align(center)[etanammide \ (acetammide)]]    
    
  $  

#par(leading: 1.5em)[Il loro gruppo funzionale è caratterizzato dalla presenza di un gruppo amidico $#ammina$.  ]


== Ammine  

Le ammine possono essere considerate derivati dell'ammoniaca, nei quali uno (ammine primarie), due (ammine secondarie) o tre (ammine terziarie) atomi di idrogeno vengono sostituiti con radicali alchilici o arilici.  

$
  & mark("CH"_3"NH"_2, tag: #<1>) quad quad
  mark("CH"_3"NHC"_2"H"_5, tag: #<2>) quad quad
  mark(("CH"_3)_3"N", tag: #<3>) \ \ #v(10em)
  & mark(#anilina, tag: #<4>) quad quad #h(3em)
  mark(#Nmetilanilina, tag: #<5>)   

  #annot(<1>)[#align(center)[metilammina]]  
  #annot(<2>)[#align(center)[metiletilammina]] 
  #annot(<3>)[#align(center)[trimetilammina]]
  #annot(<4>)[#align(center)[anilina]] 
  #annot(<5>)[#align(center)[N-metilanilina]]
$
#v(.5em)

Le ammine più semplici si presentano come gas o liquidi solubili in acqua, formando legami a idrogeno. Tuttavia, la loro solubilità diminuisce all'aumentare del numero di atomi di carbonio nella catena. Questi composti presentano proprietà basiche dovute al doppietto elettronico non condiviso dell'atomo di azoto.  

È possibile preparare le ammine attraverso:  
+ Riduzione dei nitroderivati
  $
    mark(#nitrobenzene, tag: #<1>)    
    mark(-->, tag: #<2>)    
    mark(#anilina, tag: #<3>)    
  
    #annot(<1>)[#align(center)[nitrobenzene]]
    #annot(<2>, pos: top)[#align(center)[Sn, HCl]]
    #annot(<3>)[#align(center)[anilina]] 
  $
  #v(1em)  
+ Sostituzione dell'alogeno negli alogenuri alchilici primari
  $
    mark("CH"_3"CH"_2"Cl", tag: #<1>)
    +
    mark("NaNH"_2, tag: #<2>)
    -->
    mark("CH"_3"CH"_2"NH"_2, tag: #<3>)
    +
    mark("NaCl", tag: #<4>)
  
    #annot(<1>)[#align(center)[cloruro di etile]]
    #annot(<2>)[#align(center)[sodio ammide]]
    #annot(<3>)[#align(center)[etilammina]]
    #annot(<4>)[#align(center)[cloruro \ di sodio]]
    
  $  
  #v(1.5em)
+ Riduzione dei nitrili  
  $
    mark("CH"_3"CH"_2"CN", tag: #<1>)
    + 2 "H"_2
    mark(-->, tag: #<2>)    
    mark("CH"_3"CH"_2"CH"_2"NH"_2, tag: #<3>)    
  
    #annot(<1>)[#align(center)[propanonitrile]]
    #annot(<2>, pos: top)[#align(center)[Ni]]
    #annot(<3>)[#align(center)[propilammina]] 
  $

Le ammine agiscono come agenti nucleofili e subiscono reazioni quali:  
+ Salificazione 
  $
    mark("CH"_3"CH"_2"CN", tag: #<1>)    
    -->
    mark("CH"_3"NH"_3"Cl", tag: #<2>)    
  
    #annot(<1>)[#align(center)[metilammina]]
    #annot(<2>)[#align(center)[cloruro di \ metilammonio]] 
  $
  #v(1.5em)
+ Formazione di ammidi sostituite 
  $
    mark("CH"_3"NH"_2, tag: #<1>)
    +
    mark("CH"_3"COCl", tag: #<2>)
    -->
    mark(#ammide_sostituita, tag: #<3>)
    +
    mark("HCl", tag: #<4>)
  
    #annot(<1>)[#align(center)[metilammina]]
    #annot(<2>)[#align(center)[cloruro di acetile]]
    #annot(<3>)[#align(center)[ammide sostituita]]
  $

== Composti polifunzionali  

I composti polifunzionali sono molecole che presentano due gruppi funzionali. Gli amminoacidi, ad esempio, contengono sia un gruppo amminico che un gruppo carbossilico.  

Gli amminoacidi costituiscono le unità strutturali delle proteine, nelle quali sono legati tra loro mediante un legame ammidico —NH—CO— (detto legame peptidico), formato tra il gruppo amminico di un amminoacido e il gruppo carbossilico di un altro. In natura sono presenti circa venti tipi di amminoacidi.  

Gli idrossiacidi si distinguono per la presenza nella loro molecola del gruppo —OH e del gruppo —COOH. Le ossialdeidi e gli ossichetoni invece contengono il gruppo carbonilico C=O insieme a uno o più gruppi —OH, e sono comuni nei glucidi (zuccheri).  

== Composti eterociclici  

I composti eterociclici sono molecole organiche cicliche contenenti un anello pentatomico o esatomico, all'interno del quale vi è almeno un atomo diverso dal carbonio (O, S o N). Gli anelli eterociclici più rilevanti includono diverse tipologie illustrate dalle formule corrispondenti.  

$
  mark(#furano, tag: #<1>) quad quad 
  mark(#tiofene, tag: #<2>)  quad quad 
  mark(#pirrolo, tag: #<3>)  quad quad 
  mark(#piridina, tag: #<4>)  quad quad 

  #annot(<1>)[#align(center)[furano]]
  #annot(<2>)[#align(center)[tiofene]]
  #annot(<3>)[#align(center)[pirrolo]]
  #annot(<4>)[#align(center)[piridina]]
  
$


== Polimeri  

I polimeri sono molecole naturali o sintetiche caratterizzate da una massa molecolare elevata e costituite da macromolecole di grandi dimensioni. Si formano tramite la polimerizzazione, ovvero la concatenazione di molecole a basso peso molecolare chiamate monomeri, che rappresentano le unità strutturali dei polimeri.  

Un polimero composto da un unico tipo di monomero viene definito omopolimero, come nel caso del polietilene, ottenuto dall'unione di numerose molecole di etilene. Al contrario, un polimero formato dall'unione di due o più tipi di monomeri è detto copolimero, ad esempio il nailon, che è una poliammide derivante dalla combinazione alternata di molecole di acido adipico e di esametilendiammina.  

I polimeri sono sostanze di estrema importanza, sia tra quelle naturali come la cellulosa, le proteine e la gomma naturale, sia tra quelle sintetiche, fondamentali per la tecnologia moderna, come le materie plastiche. A seconda del grado di polimerizzazione (numero delle unità strutturali), possono essere classificati in bassi polimeri (grado tra 10 e 100), medi polimeri (tra 100 e 1000) e alti polimeri (superiori a 1000). Questi ultimi, in particolare, sono quelli che presentano il maggior interesse applicativo. Tuttavia, la suddivisione più comune dei polimeri si basa sul tipo di reazione con cui si formano.

Si distinguono principalmente due grandi categorie: i polimeri di addizione e quelli di condensazione. Nei polimeri di addizione, le molecole dei monomeri – solitamente dotate di doppio legame – si uniscono tra loro formando il polimero come unico prodotto finale. Nei polimeri di condensazione, invece, i monomeri si aggregano con il rilascio di piccole molecole secondarie, come l'acqua.

I polimeri con una disposizione regolare dei gruppi sostituenti lungo la catena della macromolecola assumono strutture simili ai cristalli. Questa conformazione regolare migliora sia le proprietà meccaniche che quelle chimiche del materiale. Un esempio è il polipropilene isotattico, dove tutti i gruppi sostituenti R si trovano sullo stesso lato rispetto a un piano. Contrariamente, un polimero è sindiotattico se i gruppi sostituenti si alternano su lati opposti rispetto al piano, mentre si definisce atattico quando la disposizione è casuale.

Approfondendo sul metanolo e sull'etanolo, il metanolo (CH3OH) è il più semplice tra gli alcoli. Si produce tramite distillazione secca del legno e risulta estremamente tossico per il sistema nervoso. Tra le sue applicazioni principali rientrano l'uso come solvente, combustibile e nella sintesi della formaldeide.

L'etanolo (C2H5OH), noto anche come alcol etilico, è l'alcol comunemente usato. Si ottiene dalla fermentazione degli zuccheri o tramite idratazione dell'etene. Commercialmente, viene spesso denaturato, rendendolo imbevibile mediante l'aggiunta di metanolo. È un liquido incolore, volatile e infiammabile, con un odore caratteristico. Trova impiego nella preparazione di bevande alcoliche, profumi, farmaci e come solvente.
#pagebreak()
#set page(fill: main_tecnologia.lighten(90%))
== Glossario <senza_numero>

/ Idrocarburi: Composti organici costituiti da carbonio e idrogeno, suddivisi in alifatici e aromatici.

/ Radicale alchilico: Residuo derivato da un alcano privato di un atomo di idrogeno. 

/ Radicale arilico: Residuo derivato da un arene privato di un atomo di idrogeno dell'anello aromatico.

/ Alcoli: Composti alifatici contenenti il gruppo funzionale —OH (ossidrile).

/ Fenoli: Composti aromatici in cui il gruppo ossidrile è legato a un anello benzenico. 

/ Eteri: Molecole caratterizzate dal gruppo funzionale —O— legato a due radicali, sia alchilici che arilici. 

/ Carbonile: Gruppo funzionale rappresentato con =CO. 

/ Aldeidi e chetoni: Composti contenenti il gruppo carbonile, distinti per il tipo di struttura chimica.

/ Carbossile: Gruppo funzionale rappresentato con —COOH.

/ Acidi carbossilici: Classe di composti che contengono il gruppo funzionale —COOH.  

/ Esteri: Molecole con il gruppo funzionale —CO—O— nella loro struttura. 

/ Ammine: Derivati dell'ammoniaca in cui uno o più atomi di idrogeno sono sostituiti da radicali alchilici o arilici.
  
/ Amminoacidi: Composti contenenti sia il gruppo amminico che il gruppo carbossile.  