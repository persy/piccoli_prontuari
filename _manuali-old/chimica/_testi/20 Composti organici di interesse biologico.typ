#import "../../template_normal.typ": *
#import "_variabili.typ" : * // Variabili
//#show: frame-style(styles.thmbox)

#evidenzia[Alcune categorie di composti organici rivestono un ruolo essenziale per gli organismi viventi. Essi formano i costituenti chimici delle cellule e permettono il funzionamento di numerosi processi biologici. Tra i composti organici di rilevanza biologica – definiti anche biomolecole – troviamo i glucidi (zuccheri), i lipidi, le proteine e gli acidi nucleici (DNA e RNA). Queste molecole sono generalmente caratterizzate da una struttura complessa che permette loro di svolgere funzioni vitali.]

== Le molecole biologiche

Le cellule viventi sono costituite principalmente da molecole organiche, caratterizzate da strutture complesse e spesso di grandi dimensioni (macromolecole). Queste derivano dalla combinazione fondamentale di quattro elementi: carbonio (C), idrogeno (H), ossigeno (O) e azoto (N), ai quali si aggiungono talvolta fosforo (P) e zolfo (S). 

I liquidi cellulari, invece, contengono soluzioni acquose che ospitano elementi in forma ionica, come sodio (Na), potassio (K), magnesio (Mg), calcio (Ca) e cloro (Cl). Altri elementi necessari alla vita sono presenti solo in piccole quantità, per esempio ferro, iodio, rame, zinco, manganese, fluoro e silicio.

La biochimica si occupa dello studio delle biomolecole, ovvero delle molecole che costituiscono gli organismi viventi, e delle loro trasformazioni. Queste biomolecole si suddividono in quattro gruppi principali: glucidi o zuccheri, lipidi, proteine e acidi nucleici. Un quinto insieme, le vitamine, è formato da composti chimicamente eterogenei.

== Glucidi o zuccheri

I glucidi, noti anche come carboidrati, sono formati da carbonio, idrogeno e ossigeno. Questi composti possono essere classificati in semplici o complessi: i glucidi complessi derivano dalla condensazione di due o più molecole semplici e possono essere scissi nuovamente in molecole semplici attraverso l'idrolisi. In base al loro grado di complessità, i glucidi si suddividono in monosaccaridi, disaccaridi e polisaccaridi.

=== Monosaccaridi

I monosaccaridi, chiamati anche zuccheri semplici, non possono essere ulteriormente suddivisi attraverso idrolisi. Sono costituiti da catene composte da 3, 4, 5 o 6 atomi di carbonio, e vengono denominati rispettivamente triosi, tetrosi, pentosi o esosi. Ciascun atomo di carbonio porta un gruppo alcolico (—OH), ad eccezione di uno che fa parte di un gruppo aldeidico (—CHO) oppure chetonico. Nel primo caso il monosaccaride viene classificato come aldoso, mentre nel secondo come chetoso. Ad esempio, un monosaccaride con 6 atomi di carbonio può essere definito aldoesoso o chetoesoso.

$
  mark(#d_glucosio, tag: #<1>) quad quad  #h(5em) 
  mark(#d_fruttosio, tag: #<2>)  

  #annot(<1>)[#align(center)[D-glucosio (aldoesoso)]]
  #annot(<2>)[#align(center)[D-fruttosio (chetoesoso)]]
$

Ogni monosaccaride ha almeno un centro chirale, ossia un atomo di carbonio legato a quattro gruppi diversi (indicato con C\*). Questo permette l'esistenza di più stereoisomeri, distinguibili in destrogiri e levogiri. I monosaccaridi sono ulteriormente classificati nelle serie D e L, a seconda della posizione del gruppo —OH legato al penultimo atomo di carbonio: se il gruppo —OH è orientato a destra rispetto alla catena si tratta della serie D; a sinistra appartiene alla serie L. Ad esempio, due tipi comuni di monosaccaridi sono il D-glucosio e il D-fruttosio.

$ #h(19em)
  mark(#d_glucosio_chiusura, tag: #<1>) #text(size: 1.5em)[\u{21C4}]
  mark(#alfad_glucosio, tag: #<2>) #text(size: 1.5em)[\u{21C4}]
  mark(#betad_glucosio, tag: #<3>)


  #annot(<1>)[#align(center)[chiusura dell'anello \ D-glucosio]]
  #annot(<2>)[#align(center)[α-D-glucosio]]
  #annot(<3>)[#align(center)[β-D-glucosio]]  
$
#v(1em)

Le forme D e L dello stesso monosaccaride sono enantiomeri. In soluzione acquosa, i monosaccaridi contenenti 5 o 6 atomi di carbonio tendono a formare cicli chiusi ad anello attraverso un processo noto come mutarotazione. In tale condizione coesistono due forme cicliche denominate α e β, determinate dalla posizione del gruppo —OH sul carbonio C1. Queste due varianti hanno poteri diversi nella rotazione del piano della luce polarizzata e sono classificate come diastereoisomeri.

Tra i monosaccaridi più rilevanti troviamo il ribosio e il desossiribosio (entrambi aldopentosi), che costituiscono gli acidi nucleici. Il glucosio, un aldoesoso, rappresenta la principale fonte energetica per tutti gli organismi viventi. Il fruttosio è largamente presente nella natura, specialmente nella frutta. Altri monosaccaridi comuni, come il galattosio, si trovano spesso combinati in disaccaridi.

#note(bottom)[== *🧩* Il glucosio <senza_numero>

Il glucosio, noto anche come destrosio per la sua capacità di deviare il piano della luce polarizzata verso destra, è essenziale nei processi di fermentazione e respirazione cellulare, dove viene utilizzato per produrre molecole altamente energetiche, come l'ATP (adenosintrifosfato), che rappresentano una riserva energetica per l'organismo.

Solo gli organismi fotosintetici (piante, alghe azzurre e alcuni batteri), detti autotrofi, sono in grado di sintetizzare il glucosio. Negli animali, i carboidrati ingeriti vengono convertiti in glucosio durante la digestione. Questo può essere immediatamente impiegato nella respirazione cellulare per essere eliminato come CO#sub[2] dai polmoni oppure immagazzinato: prevalentemente sotto forma di trigliceridi nel tessuto adiposo o, in misura minore, come glicogeno nel fegato e nei muscoli.]

=== Disaccaridi

I disaccaridi originano dal processo di condensazione tra due molecole di monosaccaridi in forma ciclica, con conseguente eliminazione di una molecola d'acqua. Il legame che si instaura tra i monosaccaridi è denominato legame glicosidico, costituito da un ponte di ossigeno che collega i due monosaccaridi. Tra i disaccaridi più rilevanti si annoverano il saccarosio, il maltosio e il lattosio.

#figure(
  caption: [I principali disaccaridi.],
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
  table.header[Nome][Struttura][Caratteristiche],
  [saccarosio],	[glucosio + fruttosio],	[È il comune zucchero da tavola, ricavato dalla barbabietola o dalla canna da zucchero],
  [maltosio],	[glucosio + glucosio],	[Si forma durante la germinazione dell'orzo per idrolisi incompleta dell'amido ad opera dell'enzima diastasi],
  [lattosio],	[galattosio + glucosio],	[Presente nel latte (circa 45 g/l nel latte di mucca)]
)  
)


=== Polisaccaridi

I polisaccaridi rappresentano macromolecole complesse, costituite da numerosi monomeri di glucosio che si legano fra loro tramite legami glicosidici. Tra i polisaccaridi più significativi vi sono l'amido, la cellulosa e il glicogeno.

L'amido è formato da catene di α-glucosio e risulta composto da due frazioni principali: l'amilosio (circa 20%), caratterizzato da strutture lineari, e l'amilopectina (circa 80%), dotata di catene ramificate. È ampiamente diffuso nel mondo vegetale, dove svolge la funzione di deposito energetico. Durante la digestione, specifici enzimi riescono a idrolizzare i legami α-glicosidici dell'amido, producendo molecole di glucosio liberamente utilizzabili dall'organismo.

La cellulosa è composta da catene lineari di β-glucosio e rappresenta il componente primario delle pareti cellulari delle piante. È il principale polisaccaride presente in natura e costituisce circa il 50% della massa del legno. A causa della particolare conformazione spaziale dei legami β-glicosidici, gli enzimi digestivi dell'uomo e di molti altri animali non possono scindere la cellulosa, contrariamente a quanto accade con l'amido. Tuttavia, nei ruminanti tale processo è possibile grazie all'azione di batteri e protozoi presenti nel sistema digestivo.

Il glicogeno, invece, è composto da catene ramificate di α-glucosio e rappresenta il polisaccaride di riserva degli animali. È particolarmente concentrato nel fegato e nei muscoli, dove funge da riserva energetica.

#note(bottom)[== *🧩* Gli enzimi <senza_numero>

Gli enzimi sono proteine che funzionano come catalizzatori biologici, accelerando le reazioni biochimiche che avvengono all'interno delle cellule, sia quelle di sintesi che di demolizione. Grazie a questi catalizzatori, la velocità delle reazioni aumenta fino a un milione di volte. Ogni enzima è altamente specifico per una determinata reazione o per gruppi di reazioni affini.

Molti enzimi diventano attivi solo se associati a uno specifico coenzima, come uno ione metallico o una struttura organica complessa, solitamente una vitamina. In tali casi, la componente proteica dell'enzima viene definita apoenzima. La produzione degli enzimi è regolata dai geni.

L'attività catalitica degli enzimi dipende da una porzione precisa della molecola detta sito attivo, che interagisce con il substrato (ovvero le molecole da trasformare) attraverso legami deboli. Questi legami sono possibili grazie alla disposizione specifica degli atomi nel sito attivo.]

== I lipidi

I lipidi sono una categoria di composti caratterizzati da una grande eterogeneità chimica e strutturale. L'aspetto comune a tutti i lipidi risiede nella loro insolubilità in acqua e nella solubilità in solventi apolari, una proprietà conferita dalla presenza di lunghe catene idrocarburiche nelle loro molecole.

Questi composti si classificano in diverse tipologie: trigliceridi (principali componenti del tessuto adiposo e riserve di energia), cere (che rivestono fiori e frutti), fosfolipidi (elementi strutturali fondamentali nelle membrane cellulari) e steroidi (importanti per il funzionamento del sistema endocrino).

=== I trigliceridi

I trigliceridi sono composti di origine sia vegetale sia animale, costituiti da esteri dell'alcol trivalente glicerolo (propantriolo o glicerina) legato ad acidi carbossilici, noti come acidi grassi.

Questi composti rivestono un ruolo di primaria importanza sia in ambito alimentare sia biologico, essendo tra i principali componenti dei tessuti di riserva, come il tessuto adiposo. Inoltre, forniscono un quantitativo energetico considerevole (circa 9 kcal/g, rispetto alle 4 kcal/g offerte dai glucidi). Gli acidi grassi contenuti nei trigliceridi presentano un numero variabile di atomi di carbonio, compreso tra 4 e 24, sempre pari.

Gli acidi grassi possono essere classificati come saturi (privi di doppi legami) o insaturi (caratterizzati dalla presenza di uno o più doppi legami). I trigliceridi composti prevalentemente da acidi grassi saturi sono solidi a temperatura ambiente e vengono comunemente indicati come "grassi" (ad esempio il burro, il sego, il lardo). Al contrario, quelli contenenti una maggiore quantità di acidi mono o polinsaturi sono liquidi e vengono denominati "oli".

In presenza di soluzioni alcaline, i trigliceridi subiscono un processo di idrolisi noto come saponificazione. Questo meccanismo porta alla formazione di glicerolo e sali alcalini degli acidi grassi chiamati saponi.
#v(1em)
$ #h(3.5em)
  mark(#glicerolo_struttura, tag: #<1>)
  quad + quad
  mark(#acidi_grassi, tag: #<2>)
  quad --> quad
  mark(#trigliceride_struttura, tag: #<3>)
  quad + quad
  mark(3 "H"_2"O", tag: #<4>)

  #annot(<1>, dy: .3em)[#align(center)[glicerolo]]
  #annot(<2>, dy: -0.5em)[#align(center)[acidi \ carbossilici]]
  #annot(<3>, dy: -0.5em)[#align(center)[trigliceride]]
  #annot(<4>)[#align(center)[acqua]]
  
$

=== Cere

Le cere sono sostanze di origine sia vegetale che animale, costituite da esteri formati da acidi grassi saturi e alcoli monovalenti a lunga catena.

=== Fosfolipidi

I fosfolipidi si originano dall'esterificazione di due gruppi ossidrilici del glicerolo con acidi grassi, mentre il terzo gruppo viene esterificato con acido fosforico, legato a sua volta a un residuo di una molecola organica polare. 

Ciò che distingue i fosfolipidi è la presenza simultanea di gruppi idrofili, solubili in acqua, e gruppi idrofobi, insolubili in acqua. In ambiente acquoso tendono ad aggregarsi formando un doppio strato di natura lipidica. Quando questo doppio strato si chiude su sé stesso, delimita uno spazio interno e si trasforma in membrana cellulare, fornendo così la barriera essenziale per le cellule.

=== Steroidi

Gli steroidi sono composti policiclici complessi. Quando presentano una funzione alcolica (—OH), vengono denominati steroli. Il colesterolo, il più famoso tra gli steroli, si trova nei tessuti degli organismi animali ed è il precursore metabolico per la sintesi di numerosi ormoni steroidei. Tra questi si annoverano gli ormoni sessuali, sia maschili che femminili, come testosterone e progesterone, e gli ormoni corticoidi, ad esempio il cortisolo.

== Proteine

Le proteine sono macromolecole con massa molecolare elevata, derivanti dall'unione di un gran numero di amminoacidi. La varietà delle proteine esistenti si deve alle molteplici combinazioni possibili tra i venti amminoacidi naturali. Gli amminoacidi si legano gli uni agli altri mediante legami peptidici: in questi, l'azoto del gruppo amminico di un amminoacido si unisce al carbonio del gruppo carbossilico di un altro, liberando una molecola d'acqua attraverso una reazione di condensazione.

Si definisce proteina quando la massa molecolare relativa supera le 10.000 unità. Al di sotto di tale valore, si parla invece di polipeptidi. La reazione inversa alla formazione delle proteine è detta idrolisi: in essa si verifica la scissione delle proteine negli amminoacidi costituenti, processo che avviene ad esempio durante la digestione.

$ #h(14em)
  mark(#amminoacido1, tag: #<1>)
  +
  mark(#amminoacido2, tag: #<2>)
  -->
  mark(#legame_peptidico, tag: #<3>)
  +
  mark("H"_2"O", tag: #<4>)

  #annot(<1>)[#align(center)[amminoacido]]
  #annot(<2>)[#align(center)[amminoacido]]
  #annot(<3>)[#align(center)[legame peptidico]]
  #annot(<4>)[#align(center)[acqua]]
  
$
#v(1em)
=== Struttura delle proteine

Le proteine possiedono quattro livelli distinti di organizzazione spaziale:
+ struttura primaria: determinata dalla sequenza specifica degli amminoacidi nella catena polipeptidica,
+ struttura secondaria: configurazione della catena sotto forma di elica o, in alcuni casi, foglio pieghettato; è stabilizzata da numerosi legami a idrogeno tra amminoacidi vicini,
+ struttura terziaria: formatasi grazie al ripiegamento su sé stessa della catena polipeptidica causato dall'interazione tra legami intramolecolari,
+ struttura quaternaria: caratteristica delle proteine multimeriche, ovvero formate da più sub-unità polipeptidiche; descrive l'organizzazione spaziale delle sub-unità. Un esempio è l'emoglobina del sangue, composta da quattro sub-unità distinte.

Quando la temperatura supera i 70 °C circa o l'ambiente risulta particolarmente acido o basico, i legami deboli che stabilizzano le strutture secondarie, terziarie e quaternarie tendono a rompersi. Questo fenomeno, noto come denaturazione, comporta la perdita della funzionalità biologica della proteina.

#figure(
  caption: [Amminoacidi naturali.],
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
  table.header[Nome][Sigla],
  [alanina], [ala],
  [arginina#footnote[Amminoacido essenziale]<amminoacido>], [arg],
  [asparagina], [asn],
  [aspartico, acido], [asp],
  [cisteina], [cys],
  [fenilalanina#footnote(<amminoacido>)], [phe],
  [glicina], [gly],
  [glutammico, acido], [glu],
  [idrossiprolina], [hy-pro],
  [isoleucina], [ile],
  [istidina#footnote(<amminoacido>)], [his],
  [leucina#footnote(<amminoacido>)], [leu],
  [lisina#footnote(<amminoacido>)], [lys],
  [metionina#footnote(<amminoacido>)], [met],
  [prolina], [pro],
  [serina], [ser],
  [tirosina], [tyr],
  [treonina#footnote(<amminoacido>)], [thr],
  [triptofano#footnote(<amminoacido>)], [try],
  [valina#footnote(<amminoacido>)], [val],
)  
)


=== Classificazione e funzione delle proteine

Le proteine si dividono in due grandi categorie: proteine semplici e proteine complesse o coniugate. Le proteine semplici sono costituite esclusivamente da amminoacidi, mentre quelle complesse includono anche molecole di natura diversa, generalmente a basso peso molecolare, chiamate gruppi prostetici. Le proteine semplici si suddividono ulteriormente in due sottoclassi:
le proteine globulari, solubili in acqua, come l'albumina (contenuta nel bianco d'uovo), le proteine del sangue e alcuni enzimi;
le proteine fibrose, o strutturali, che contribuiscono alla formazione delle strutture degli organismi, tra cui il collagene (presente nella pelle e nei tessuti connettivi) e la cheratina (componente delle unghie e dei capelli).

#set figure.caption(position: bottom)
#figure(
  caption: [Principali funzioni delle proteine.],
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
  table.header[Proteine][Funzione][Esempi],
[nucleoproteine],[organizzazione del DNA nei cromosomi], [istoni, protamine],
[glicoproteine],[difesa immunitaria], [anticorpi o immunoglobuline],
[lipoproteine],[trasporto di lipidi nel sangue],  [],
[ormoni],[regolazione endocrina dell'attività di tessuti e organi], [insulina, adenocorticotropo, vasopressina, testosterone],
[proteine strutturali],[supporto meccanico; movimento muscolare, movimento di ciglia e flagelli; strutturazione della membrana cellulare], [collagene, elastina, actina, miosina, proteine di membrana],
[enzimi],[catalisi enzimatica], [DNA-polimerasi, piruvato deidrogenasi, glucosio 6-fostato deidrogenasi],
[fattori induttori e repressori],[regolazione dell'espressione genica], []
)  
)

== Acidi nucleici

Gli acidi nucleici sono macromolecole di notevole complessità, localizzate principalmente nel nucleo cellulare degli organismi viventi. Essi svolgono un ruolo fondamentale nella conservazione e trasmissione dell'informazione genetica tra generazioni. Inoltre, dirigono e regolano la sintesi delle proteine necessarie per le funzioni vitali.

Esistono due tipi principali di acidi nucleici: l'acido desossiribonucleico (DNA) e l'acido ribonucleico (RNA). Entrambi sono polimeri di elevata massa molecolare composti da unità più semplici chiamate nucleotidi.

Ogni nucleotide è formato da tre elementi principali:
un gruppo fosfato;
uno zucchero pentoso (monosaccaride);
una base azotata.

Tra DNA e RNA esistono differenze nei componenti: lo zucchero nel DNA è il desossiribosio, mentre nell'RNA è il ribosio. Inoltre, nel DNA sono presenti quattro basi azotate: adenina (A), guanina (G), citosina (C) e timina (T), mentre l'RNA utilizza l'uracile (U) al posto della timina.

La struttura dei nucleotidi è legata dal gruppo fosfato, che forma l'ossatura delle macromolecole degli acidi nucleici.

=== Il DNA

La molecola del DNA è caratterizzata dalla sua forma a doppia elica, composta da due filamenti di nucleotidi legati tra loro tramite interazioni tra basi azotate. Le basi si accoppiano secondo uno schema specifico: adenina (A) con timina (T) e citosina (C) con guanina (G).

Questa struttura consente al DNA di replicarsi in maniera relativamente semplice. Durante la duplicazione, i due filamenti si separano progressivamente e ciascun filamento serve da stampo per la formazione di un nuovo filamento complementare, dando origine a due doppie eliche identiche. L'informazione genetica è immagazzinata seguendo un "linguaggio" chimico basato sulla sequenza delle quattro basi azotate lungo la molecola del DNA, un sistema identificato come codice genetico.

Il DNA trasmette le informazioni alle regioni della cellula dove si verifica la sintesi proteica tramite l'RNA. Questo processo determina l'ordine preciso con cui gli amminoacidi si legano tra loro per formare una specifica proteina.

=== RNA

L'RNA è una molecola composta da un singolo filamento avvolto in una struttura elicoidale. Esistono vari tipi di RNA, ognuno con funzioni specifiche; i due principali sono l'RNA messaggero (mRNA) e l'RNA di trasporto (tRNA). Il mRNA è responsabile della trascrizione delle informazioni dal DNA, mentre il tRNA ha il compito di tradurre queste informazioni permettendo la corretta sintesi delle proteine, unendo gli amminoacidi nella sequenza appropriata.

== Vitamine

Le vitamine sono composti organici dalla struttura eterogenea, essenziali per molte funzioni vitali, anche se richieste in quantità minime. Gli esseri umani e la maggior parte degli animali non possono sintetizzarle autonomamente e devono ottenerle attraverso l'alimentazione. Al contrario, le piante sono in grado di produrle e costituiscono la principale fonte vitaminica per gli animali.

Le vitamine spesso agiscono come coenzimi, supportando l'attività degli enzimi. Si suddividono in due gruppi principali in base alla solubilità: le vitamine idrosolubili, che comprendono il gruppo B, la vitamina C e la vitamina H; e le vitamine liposolubili, che includono la vitamina A, D, E e K.

#pagebreak()
#set page(fill: main_tecnologia.lighten(90%))
== Glossario <senza_numero>

/ Glucidi o zuccheri: Composti chimici costituiti da carbonio, idrogeno e ossigeno, suddivisi in monosaccaridi, disaccaridi e polisaccaridi. Conosciuti anche come carboidrati, rappresentano una fonte primaria di energia per gli organismi viventi e contribuiscono alla formazione delle strutture nelle piante.

/ Lipidi: Una classe di composti che include trigliceridi, fosfolipidi, cere e steroidi. Questi condividono la caratteristica di essere insolubili in acqua.

/ Proteine: Macromolecole costituite da catene polipeptidiche formate da amminoacidi, disposte secondo strutture spaziali definite. Svolgono numerose funzioni biologiche, sia strutturali che regolatrici.

/ Enzimi: Molecole di natura proteica che funzionano da catalizzatori nelle reazioni biochimiche, accelerando i processi mediante la riduzione dell'energia di attivazione.

/ Acidi nucleici: Composti chimici complessi formati da nucleotidi, includono il DNA (acido desossiribonucleico) e l'RNA (acido ribonucleico). Questi sono responsabili della conservazione dell'informazione genetica e della regolazione della sintesi proteica.