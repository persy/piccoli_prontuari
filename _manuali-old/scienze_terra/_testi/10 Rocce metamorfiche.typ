#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Tutte le rocce che compongono la crosta terrestre possono essere sottoposte a una trasformazione significativa, nota come metamorfismo, causata da agenti fisici come la temperatura e la pressione. Questo processo dà origine alle rocce metamorfiche. A seconda dell'agente fisico predominante durante la trasformazione, si distinguono tre principali tipi di metamorfismo: di contatto, dinamico e regionale. Quando temperatura e pressione superano determinati valori, si verifica il fenomeno dell'anatessi, che rappresenta una transizione tra condizioni metamorfiche e magmatiche. Le rocce metamorfiche possono avere una struttura scistosa, granulare oppure occhiadina.]

== Il metamorfismo

Il termine "metamorfismo" deriva dal greco e si traduce letteralmente con "cambiamento di forma". Più precisamente, si riferisce a una modifica della struttura o della composizione mineralogica di una roccia preesistente (ad esempio, ignea o sedimentaria) senza che questa subisca fusione. Durante il metamorfismo avvengono fenomeni di ricristallizzazione, con la formazione di cristalli diversi da quelli originari della roccia, e reazioni chimiche tra i minerali presenti, che però rimangono allo stato solido. Questo processo è reso possibile solo attraverso un significativo aumento di temperatura e/o pressione.

Nella maggior parte dei casi, la composizione chimica complessiva della roccia non varia durante il metamorfismo. Tuttavia, i processi di ricristallizzazione modificano la composizione mineralogica. Non è sempre semplice risalire alla roccia originaria analizzando quella metamorfica: rocce diverse per origine e composizione mineralogica, ma con una composizione chimica simile, possono trasformarsi nella stessa roccia metamorfica quando sottoposte alle medesime condizioni di temperatura e pressione, un fenomeno noto come "convergenza". Viceversa, rocce uguali per origine possono generare rocce metamorfiche differenti, in base all'intensità del processo subito. In tali casi si parla di grado di metamorfismo, che può essere alto, medio o basso.

La composizione mineralogica finale di una roccia metamorfica, dunque, dipende sia dall'intensità del processo metamorfico che dalla sua composizione chimica iniziale.

== Tipi di metamorfismo

Basandosi sull'agente fisico predominante nella trasformazione delle rocce preesistenti, si possono distinguere tre tipi di metamorfismo: di contatto, dinamico e regionale.

Nel caso del metamorfismo di contatto, il processo interessa rocce che vengono a diretto contatto con un magma incandescente in fase di raffreddamento nelle profondità o mentre risale verso la superficie terrestre. L'elevata temperatura, generalmente compresa tra 200 e 800 °C, è il principale fattore responsabile del cambiamento. Questa provoca fenomeni di ricristallizzazione e anche reazioni chimiche dovute ai gas provenienti dal magma. Si forma così una zona nella massa rocciosa adiacente al magma che ha subito queste trasformazioni: essa prende il nome di aureola metamorfica di contatto. Si tratta di una sorta di "guscio" di rocce metamorfiche che avvolge la massa magmatica. Le modifiche sono maggiormente evidenti vicino al magma e diminuiscono progressivamente allontanandosi da esso, fino a scomparire del tutto.

Un esempio emblematico di roccia formatasi attraverso il processo di metamorfismo di contatto è il marmo, derivante dalla ricristallizzazione delle rocce calcaree.

Il metamorfismo dinamico, noto anche come metamorfismo cataclastico, si verifica in prossimità delle grandi fratture della crosta terrestre, denominate faglie, che si estendono su considerevoli spessori. In tale contesto, le rocce appartenenti ai margini opposti della faglia, strette in contatto diretto, subiscono spostamenti reciproci sotto l'azione di enormi forze. Tali sollecitazioni esercitano intense pressioni sulle rocce, provocando significativi cambiamenti nella loro struttura e, occasionalmente, nella composizione mineralogica. Lungo i piani di faglia, le rocce vengono frammentate dando origine a una formazione simile a una ghiaia grossolana denominata breccia di frizione. In alcune aree localizzate nei pressi del piano di faglia, il calore generato dall'attrito favorisce condizioni di comportamento plastico delle rocce. In tali circostanze, per effetto delle elevate pressioni orientate, si formano rocce con una marcata struttura scistosa, chiamate miloniti.

Il metamorfismo regionale, a differenza del metamorfismo di contatto e di quello dinamico, che si manifestano rispettivamente nelle aree di interazione con il magma e nelle zone interessate dalle faglie, agisce su vastissime porzioni della crosta terrestre. Questo tipo di processo è strettamente connesso a fenomeni geodinamici di grande scala, in particolare allo scontro delle placche terrestri (le porzioni in cui è suddivisa la crosta terrestre) e ai processi orogenetici che conducono alla formazione delle catene montuose. 

Il metamorfismo regionale è determinato dalla combinazione di temperatura e pressione elevata e coinvolge tutte le rocce situate a notevoli profondità, raggiunte come conseguenza dei movimenti tettonici. Tali condizioni inducono un aumento della temperatura e della pressione, causando una ricristallizzazione dei minerali presenti nelle rocce. Durante il processo di ricristallizzazione, i cristalli si sviluppano preferenzialmente lungo la direzione perpendicolare alla forza applicata, producendo la caratteristica struttura scistosa che distingue molte rocce metamorfiche. Il grado di metamorfismo influenza anche la dimensione dei cristalli formati: cristalli più grandi sono associati a condizioni metamorfiche di maggiore intensità.

== L'anatessi

Il fenomeno dell'anatessi si verifica quando la temperatura raggiunge valori estremamente elevati, generalmente compresi tra 700 e 800 °C, superando il limite oltre il quale i minerali non possono più mantenersi allo stato solido. La fusione della roccia conseguente a tali condizioni rappresenta un processo di transizione tra il metamorfismo e le dinamiche magmatiche o ignee. L'anatessi è strettamente legata all'osservazione di particolari tipi di rocce chiamate migmatiti, associate a metamorfismo di grado elevato. Le migmatiti sono caratterizzate da una composizione distintiva suddivisa in due porzioni: una parte ignea, spesso a composizione granitica, e una parte metamorfica. Questo dualismo può essere interpretato ammettendo che la componente ignea sia il risultato di una fusione parziale della roccia originaria, in cui solo i minerali con temperature di fusione più basse hanno dato origine a vene magmatiche, mentre la restante massa rocciosa è rimasta nello stato solido.

Il processo di anatessi riveste un ruolo cruciale nello studio della genesi dei magmi, poiché permette la formazione di magmi granitici anche a temperature significativamente inferiori rispetto a quelle richieste per la fusione completa della roccia preesistente.

#figure(
  caption: [Rocce metamorfiche più comuni],
  gap: 0pt, // Allinea la didascalia alla tabella
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
  columns: (2),
  table.header[Tipo di roccia][Caratteristiche],	
[fillade], [roccia a grana molto fine, composta principalmente da microscopiche lamelle di mica (è il prodotto di un basso grado di metamorfismo su un'argillite)],
[micascisto], [roccia composta in massima parte da lamelle visibili di minerali appiattiti; come la fillade, si forma spesso dalle argilliti, ma in questo caso il metamorfismo è stato più intenso; spesso sono presenti nuovi minerali, esclusivi delle rocce metamorfiche],
[gneiss], [roccia a composizione molto simile al granito; la caratteristica più rilevante è l'aspetto striato, dovuto ai caratteristici strati alternati di minerali chiari e scuri],
[marmo], [roccia risultante dal metamorfismo di un calcare; è costituita da cristalli di calcite, in granuli di dimensioni fino a 5 mm, che le conferiscono il particolare aspetto saccaroide (simile a quello dello zucchero)],
[quarzite], [comune roccia metamorfica derivata da un'arenaria quarzosa, all'apparenza simile al marmo, ma molto più dura],
)  
)

#notebr[== *🧩* Gli effetti del metamorfismo sulle rocce <senza_numero>

Il metamorfismo, a seconda delle sue intensità, può trasformare una roccia originaria in differenti tipi di rocce metamorfiche, che costituiscono una sequenza metamorfica.

=== La sequenza metamorfica delle argille <senza_numero>

Le argille sono costituite principalmente da quarzo e silicati lamellari capaci di assorbire acqua. Quando si depositano in un bacino sedimentario, formano originariamente una massa fangosa e ricca d'acqua; successivamente, sotto il peso di ulteriori sedimenti, si compattano espellendo gran parte del liquido. Un ulteriore incremento pressorio provoca l'allineamento dei silicati lamellari in strati o letti, originando l'argilloscisto. Questo rappresenta un caso peculiare poiché può essere considerato sia una roccia sedimentaria sia metamorfica di bassissimo grado.

Con un basso grado di metamorfismo, i silicati trasformano le lamelle argillose in piccoli cristalli di mica. La roccia risultante è la fillade, che si separa facilmente in sottili fogli lungo i piani micacei.

Un aumento del grado metamorfico comporta la crescita dei cristalli di quarzo e delle lamelle micacee, dando origine al micascisto, il quale manifesta piani di scistosità ben visibili anche a occhio nudo.

Con un livello medio-alto di metamorfismo, i feldspati si aggiungono ai minerali già presenti formando grossi cristalli che tendono ad aggregarsi con i cristalli quarzosi. Questi creano alternanze di letti biancastri dello spessore di alcuni centimetri. La roccia risultante è lo gneiss, che si frattura lungo i piani micacei mostrando una scistosità evidente ma meno fine rispetto al micascisto.

Un ulteriore incremento di temperatura e pressione conduce infine alla fusione parziale delle componenti quarzoso-feldspatiche. Questo materiale fuso penetra tra le porzioni solide della roccia originando la migmatite, spesso caratterizzata da una struttura non scistosa e composta da una mescolanza di frazioni sia fuse sia solidificate.

=== La sequenza metamorfica dei calcari <senza_numero>

I sedimenti calcarei soggetti a pressione e temperature crescenti subiscono un progressivo processo di compattazione. In una prima fase, entrano in contatto con acque sotterranee che ne sciolgono parzialmente i componenti o li cementano mediante la precipitazione di calcite cristallina che riempie gli interstizi.

Il metamorfismo vero e proprio provoca una ricristallizzazione totale della calcite già a basse temperature e pressioni, distruggendo completamente la struttura sedimentaria iniziale. Il risultato è il marmo, formato da un mosaico di granuli cristallini di calcite.

La calcite mantiene la sua stabilità anche nei più elevati livelli di metamorfismo, senza subire alterazioni chimiche. Gli altri minerali, presenti nel calcare in qualità di impurità, possono invece trasformarsi. Queste trasformazioni consentono di determinare il grado di metamorfismo raggiunto e, qualora siano abbondanti, possono donare alla roccia caratteristiche venature visibili.
]

== La struttura delle rocce metamorfiche

La struttura delle rocce metamorfiche è il risultato diretto del tipo di metamorfismo che le ha generate. A seconda che abbia prevalso l'influenza della pressione, della temperatura, o di entrambe, si possono distinguere diverse strutture: scistosa, granulare o occhiadina.

La struttura scistosa è la più comune nelle rocce metamorfiche. In queste, i cristalli si dispongono lungo dei piani paralleli, allungandosi e orientandosi in una sola direzione, perpendicolare rispetto alla pressione esercitata. Grazie a questa caratteristica, le rocce scistose si dividono facilmente in strati sottili lungo i cosiddetti piani di scistosità. Esempi tipici di tali rocce sono le filladi e i micascisti, spesso utilizzati per la copertura dei tetti, oltre agli gneiss, impiegati nei rivestimenti edilizi. 

Al contrario, le rocce dalla struttura granulare o saccaroide presentano cristalli equidimensionali, non orientati. Tra queste troviamo il marmo, che si origina dal metamorfismo di contatto dei calcari, e la quarzite, derivante da arenarie ricche di quarzo. 

Un terzo tipo è la struttura occhiadina, che rappresenta una forma intermedia tra le due precedenti. Qui coesistono cristalli grandi ed equidimensionali con altri orientati e organizzati in strati paralleli. Un esempio rappresentativo è lo gneiss occhiadino.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Anatessi: Processo di fusione parziale che interessa una massa rocciosa preesistente.  

/ Gneiss: Roccia metamorfica con struttura scistosa, generatasi tramite metamorfismo regionale di origine ignea o sedimentaria.  

/ Marmo: Roccia con tessitura granulare, derivante dal metamorfismo di contatto del calcare.  

/ Metamorfismo: Fenomeno di trasformazione di una roccia preesistente, caratterizzato da reazioni allo stato solido fra i minerali che la costituiscono, comportando modificazioni della composizione mineralogica e/o della struttura originaria.  

/ Milonite: Roccia metamorfica sviluppatasi attraverso un processo di fine frantumazione, seguito da ricristallizzazione, dei componenti di una roccia preesistente.  

/ Scistosità: Caratteristica delle rocce metamorfiche che consente la loro suddivisione in lastre sottili lungo piani paralleli definiti piani di scistosità.  

/ Tessitura: Configurazione visibile, anche macroscopicamente, di una roccia, determinata dalla disposizione spaziale dei suoi costituenti mineralogici.  