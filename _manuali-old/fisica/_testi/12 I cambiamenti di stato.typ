#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La materia, nelle normali condizioni ambientali, può presentarsi in tre diversi stati fisici o stati di aggregazione: solido, liquido e aeriforme (distinguibile tra stato gassoso e stato di vapore).

Modificando la temperatura e/o la pressione di una sostanza, è possibile provocarne il passaggio da uno stato di aggregazione a un altro, cioè un cambiamento dello stato fisico. Ogni cambiamento avviene, mantenendo costante la pressione, a una temperatura specifica che varia da sostanza a sostanza e rimane invariata durante l'intero processo.

Durante i cambiamenti di stato, la sostanza scambia energia con l'ambiente sotto forma di calore. Questo calore può essere trasferito dall'ambiente alla sostanza o dalla sostanza all'ambiente. Per il principio della conservazione dell'energia, la quantità di calore ceduta durante il passaggio inverso sarà esattamente equivalente a quella assorbita o rilasciata nel cambiamento iniziale.

Il calore scambiato tra una sostanza e l'ambiente, riferito all'unità di massa della sostanza stessa, prende il nome di calore latente.]

== Stati di aggregazione della materia e cambiamenti di stato

La materia può trovarsi in uno dei tre stati di aggregazione (o fasi) a seconda dell'intensità delle forze di coesione tra le molecole: solido, liquido e aeriforme.

Le sostanze allo stato solido possiedono un volume e una forma definiti. Quelle allo stato liquido hanno un volume proprio ma non una forma propria, che varia in base al contenitore. Infine, le sostanze allo stato aeriforme non presentano né forma né volume propri, adeguandosi completamente alla forma e al volume del recipiente in cui sono contenute.

Liquidi e gas vengono generalmente classificati insieme sotto il termine fluidi.

Perché avvenga un cambiamento di stato, ossia il passaggio da uno stato di aggregazione a un altro, è necessario modificare l'intensità delle forze di coesione tra le molecole della sostanza, influenzando la loro energia cinetica.

=== Gli stati di aggregazione

La maggior parte delle sostanze presenti in natura, a temperatura ambiente, si trova allo stato solido. In queste condizioni, gli atomi o le molecole che le compongono sono generalmente disposti nello spazio secondo un ordine geometrico ben definito. Tali materiali sono conosciuti come solidi cristallini. Esempi comuni di solidi cristallini includono il diamante, lo zucchero e il ghiaccio.

Esiste però una minoranza di sostanze che non presenta una struttura organizzata delle particelle. Questi materiali vengono definiti solidi amorfi, o falsi solidi, poiché la loro struttura è simile a quella dei liquidi e, per alcune caratteristiche, potrebbero essere considerati liquidi ad alta viscosità. Un esempio tipico di solido amorfo è il vetro.

Un corpo solido può trasformarsi in liquido quando le forze di coesione tra le particelle che lo compongono si indeboliscono al punto da rompere la struttura geometrica regolare che le lega. Nello stato liquido, tali forze di coesione sono più deboli rispetto allo stato solido e le particelle non rimangono fisse in posizioni specifiche. Esse possiedono sufficiente energia cinetica per muoversi liberamente, scorrendo le une sulle altre.

Nel caso delle sostanze allo stato aeriforme, l'energia cinetica delle particelle prevale nettamente sulle forze di attrazione reciproca. Di conseguenza, queste tendono a occupare tutto lo spazio a disposizione, motivo per cui gli aeriformi non hanno né forma né volume propri. Gli aeriformi si distinguono in due categorie: gas e vapori. I vapori sono aeriformi che, a temperatura ambiente, si trovano normalmente allo stato liquido, come il vapore acqueo. I gas, invece, sono sostanze che si trovano abitualmente allo stato aeriforme, come l'idrogeno.

Un vapore può essere trasformato in liquido semplicemente attraverso la compressione, senza modificarne la temperatura. Al contrario, per liquefare un gas è necessaria una combinazione di compressione e raffreddamento sotto una determinata soglia di temperatura, nota come temperatura critica, che in alcuni casi può essere estremamente bassa.

=== I cambiamenti di stato

I cambiamenti di stato rappresentano il passaggio di una sostanza da uno stato di aggregazione a un altro, influenzati principalmente dai valori di temperatura e pressione. Durante questi processi si verifica sempre uno scambio di calore tra la sostanza coinvolta e l'ambiente circostante. In generale, fornendo calore a una sostanza si favorisce il passaggio da stati più compatti, come quello solido, a stati meno compatti, quali quelli liquido e gassoso. Sottraendo calore si ottiene l'effetto inverso.

La pressione esercita un'effetto opposto rispetto alla temperatura: un aumento della pressione facilita i passaggi dallo stato gassoso a quello liquido e da quello liquido a quello solido. Al contrario, una diminuzione di pressione facilita i cambiamenti dagli stati più compatti verso quelli meno compatti.

Tutti i cambiamenti di stato avvengono a temperature ben precise, il cui valore dipende dalla pressione esercitata (generalmente si considera la pressione atmosferica normale, pari a 1013,2 hPa). Durante un cambiamento di stato, fino a quando l'intera massa della sostanza coinvolta non completa la trasformazione (ad esempio, da solido a liquido o da liquido a gas), la sua temperatura rimane costante.

Un esempio comune è il processo di ebollizione dell'acqua: quando l'acqua passa dallo stato liquido a quello di vapore, anche se si continua a fornire energia sotto forma di calore, la temperatura non subisce variazioni.

Il calore fornito a temperatura costante viene immagazzinato nel vapore prodotto e verrà successivamente ceduto all'ambiente circostante durante il processo inverso, ovvero nella condensazione, quando il vapore si trasforma nuovamente in liquido.

Questo calore, riferito all'unità di massa, prende il nome di calore latente. A seconda del tipo di trasformazione di stato, si distinguono diverse tipologie: calore latente di fusione, calore latente di evaporazione, calore latente di ebollizione, ecc.

Ogni passaggio di stato comporta quindi l'assorbimento o la liberazione di calore. Per esempio, la fusione di un solido e l'evaporazione di un liquido richiedono energia sotto forma di calore fornito dall'esterno. Al contrario, la condensazione del vapore e la solidificazione di un liquido comportano una cessione di calore verso l'esterno.

La quantità di calore necessaria per fondere una massa _m_ di un solido si calcola attraverso la formula:

$ 
  Q = m dot c_f
$

dove _c#sub[f]_ rappresenta il calore latente di fusione, misurato in J/kg secondo il Sistema Internazionale.
#figure(
  caption: [I vari tipi di passaggi di stato.],
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
  columns: (3),
  table.header[Nome][Definizione][Esempio],
[Fusione], [trasformazione dallo stato solido a quello liquido], [ghiaccio o un metallo che si scioglie], 
[Solidificazione], [passaggio dallo stato liquido a quello solido],[congelamento dell'acqua o la solidificazione di un metallo],  
[Evaporazione#footnote[Denominati collettivamente vaporizzazione.]<vaporizzazione>], [transizione dallo stato liquido allo stato aeriforme in modo lento e graduale, coinvolgendo solo la superficie del liquido], [l'acqua che evapora dai panni umidi o l'alcol che svanisce a contatto con la pelle], 
[Ebollizione#footnote(<vaporizzazione>)], [passaggio dallo stato liquido allo stato aeriforme caratterizzato da un processo più rapido e tumultuoso che interessa l'intera massa del liquido], [l'acqua durante la bollitura ], 
[Condensazione], [trasformazione dallo stato aeriforme di vapore a quello liquido], [formazione di rugiada o pioggia],  
[Liquefazione], [passaggio dallo stato aeriforme di gas a quello liquido],  [liquefazione dell'idrogeno],  
[Sublimazione], [trasformazione diretta dallo stato solido a quello aeriforme e viceversa], [naftalina]
)  
)

== La fusione e la solidificazione

La fusione è una trasformazione che consente il passaggio di una sostanza dallo stato solido allo stato liquido. Perché avvenga, è necessario fornire calore alla sostanza mantenendo costante la pressione; raggiunta una precisa temperatura, definita temperatura di fusione o punto di fusione, ha inizio il processo.

Per convertire completamente il solido in liquido è indispensabile continuare a fornire calore, anche se la temperatura della sostanza non cambia. Il calore somministrato non aumenta la temperatura del sistema, ma agisce riducendo le forze di coesione tra le particelle della sostanza, favorendone la trasformazione in liquido.

Questa quantità di energia necessaria per trasformare un'unità di massa di un solido in liquido prende il nome di calore latente di fusione. La temperatura al momento della fusione varia da sostanza a sostanza e dipende dalla pressione.

Per l'acqua, alla pressione atmosferica normale, la temperatura di fusione è pari a 0 °C (273 K), mentre il calore latente necessario è pari a circa 334 · 10³ J/kg. Ciò significa che per fondere un blocco di ghiaccio da 1 kg a 0 °C bisogna fornire una quantità di energia pari a 334.000 J.

Nel passaggio dallo stato solido a quello liquido, le sostanze generalmente si dilatano, aumentando di volume. Di conseguenza, un incremento della pressione tende a ostacolare il processo di fusione. L'acqua rappresenta un'eccezione a questa regola: quando il ghiaccio fonde, il suo volume diminuisce. Pertanto, un aumento della pressione esterna, favorendo la contrazione del ghiaccio, accelera la fusione, che avviene a temperature inferiori rispetto al punto normale di fusione del ghiaccio.

Questo fenomeno può essere osservato facilmente attraverso un semplice esperimento. Se si utilizza un filo metallico per esercitare pressione sulla superficie di un blocco di ghiaccio, la forza applicata, superiore alla pressione atmosferica, provoca la fusione del ghiaccio a temperature inferiori a 0 °C. Nonostante ciò, il filo sembra attraversare il blocco di ghiaccio. Questo accade perché l'acqua ottenuta dalla fusione, trovandosi a una temperatura inferiore al punto di fusione e sottoposta solo alla pressione atmosferica, si solidifica rapidamente, ricostituendo il blocco originale.

In conformità con la legge di conservazione dell'energia, durante il passaggio inverso dalla fase liquida a quella solida (solidificazione), il calore latente di fusione viene restituito all'ambiente circostante. Per ottenere la solidificazione di un liquido è necessario abbassarne la temperatura fino al punto di solidificazione, che coincide con il punto di fusione della sostanza alla stessa pressione. Anche in questo caso, durante il processo la temperatura resta costante fino al completamento della trasformazione dello stato liquido in solido.

Per una data sostanza, il calore latente di fusione e quello di solidificazione sono sempre equivalenti, così come le temperature di fusione e solidificazione, purché la pressione rimanga invariata. Tuttavia, modificando la pressione esercitata sul liquido, cambia anche il punto di solidificazione.

Nel caso dell'acqua, se sottoposta a pressioni superiori a quella atmosferica, essa ghiaccia a temperature inferiori rispetto al normale punto di solidificazione. È proprio per questa ragione che grandi masse d'acqua, come un lago, ghiacciano solo in superficie mentre in profondità rimangono liquide anche a temperature inferiori allo zero. Questo fenomeno si verifica perché la pressione sul fondo del lago è data dalla somma della pressione atmosferica esterna e della pressione esercitata dalla colonna d'acqua sovrastante.
#figure(
  caption: [Temperature di fusione di alcune sostanze e calori latenti di fusione a pressione normale.],
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
  columns: (3),
  table.header[Sostanza][Temperatura di  \ fusione in °C (in K)][Calore latente \ (· 10#super[6] J/kg)],
[elio],	[−269,7	(3,5)],	[0,005],
[idrogeno],	[−259,3	(13,9)],	[0,059],
[ossigeno],	[−218,8	(54,4)],	[0,014],
[alcol etilico],	[−114,0	(159,2)],	[0,105],
[acqua],	[0	(273,15)],	[0,012],
[mercurio],	[−39,0	(234,2)],	[0,334],
[piombo],	[327,3	(600,5)],	[0,025],
[argento],	[960,8	(1234)],	[0,105]
)  
)

== La vaporizzazione

La vaporizzazione è un fenomeno che consiste nella transizione dallo stato liquido a quello aeriforme e può avvenire in due modi: evaporazione ed ebollizione. L'evaporazione è un processo lento e graduale che coinvolge esclusivamente gli strati superficiali del liquido. Le particelle situate sulla superficie del liquido, meno vincolate rispetto a quelle interne, riescono ad abbandonare il liquido trasformandosi in vapore.

L'evaporazione può verificarsi a qualsiasi temperatura ma con intensità variabile. Un aumento della temperatura incrementa l'energia cinetica delle molecole del liquido e, di conseguenza, accelera il processo di evaporazione.

La quantità di particelle che evaporano dipende dalla superficie esposta del liquido: una superficie più ampia favorisce l'evaporazione. Se l'evaporazione avviene in un ambiente chiuso, si stabilisce un equilibrio tra il liquido e il vapore. In questa condizione, il numero di particelle liquide che si trasformano in vapore risulta uguale al numero di particelle di vapore che si condensano tornando allo stato liquido. In tale situazione si dice che il vapore è saturo, mentre la pressione corrispondente a questo equilibrio è chiamata tensione di vapore (o pressione del vapore saturo).

La tensione di vapore varia da un liquido all'altro ed aumenta con l'incremento della temperatura, ma non dipende dalla quantità di liquido presente. Essa rappresenta una misura della volatilità di una sostanza, ovvero la sua capacità di evaporare a una data temperatura. Ad esempio, l'alcol è più volatile dell'acqua a temperatura ambiente.

Il calore latente di evaporazione è definito come la quantità di calore necessaria per far evaporare una massa unità di liquido. Durante l'evaporazione, il liquido sottrae al proprio ambiente una quantità di calore pari al calore latente di evaporazione, che verrà restituito durante il processo inverso. Questo fenomeno è la ragione per cui si percepisce una sensazione di freddo quando il sudore evapora dalla pelle.

L'ebollizione, invece, è il passaggio rapido e tumultuoso di un liquido allo stato aeriforme (gas o vapore) che coinvolge l'intera massa liquida. Nei liquidi sono sempre presenti bollicine gassose contenenti molecole allo stato di vapore. Con l'aumento della temperatura, queste bollicine si espandono e, quando la loro tensione di vapore eguaglia la pressione esterna, avviene il fenomeno dell'ebollizione. Durante questo processo, le bollicine raggiungono la superficie e liberano il gas o il vapore intrappolato.

L'ebollizione avviene a una temperatura specifica per una determinata pressione esterna: questa temperatura, chiamata temperatura di ebollizione o punto di ebollizione, rimane costante per tutta la durata del processo. Si dice quindi che un liquido bolle a quella temperatura.

La temperatura di ebollizione corrisponde alla condizione in cui la tensione di vapore del liquido eguaglia la pressione esterna esercitata sulla sua superficie. Tuttavia, essa varia con i cambiamenti nella pressione: aumenta all'aumentare della pressione esterna e diminuisce al diminuire della stessa. Una diminuzione della pressione esterna comporta un abbassamento della temperatura necessaria per l'ebollizione; al contrario, un aumento della pressione richiede una temperatura più alta per raggiungere l'ebollizione.

Ad esempio, l'acqua bolle a 100 °C a pressione atmosferica normale (101,32 kPa). Tuttavia, ad altitudini elevate, come a circa 5500 metri dove la pressione atmosferica è circa la metà (50 kPa), l'acqua bolle a una temperatura inferiore, pari a 86 °C. Viceversa, aumentando la pressione esterna, come nel caso della pentola a pressione, l'acqua può bollire a temperature superiori a 100 °C. La quantità di calore necessaria per portare una massa unità di liquido alla completa ebollizione è chiamata calore latente di ebollizione.

#figure(
  caption: [Temperature di ebollizione e calori latenti di alcune sostanze a pressione normale.],
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
  columns: (3),
  table.header[Sostanza][Temperatura di \ ebollizione in °C (in K)][Calore latente \ (· 10#super[6] J/kg)],
  [elio],	[−268,9	(4,22)],	[0,021],
  [idrogeno],	[−252,9	(20,3)],	[0,452],
  [ossigeno],	[−239,9	(90,2)],	[0,213],
  [alcol etilico],	[78	(351)],	[0,854],
  [acqua],	[100	(373,15)],	[2,253],
  [mercurio],	[357	(630,2)],	[0,272],
  [piombo],	[1750	(2023,2)],	[0,871],
  [argento],	[2193	(2466,2)],	[2,336],
)  
)

#note(bottom)[== *🧩* Il vapore d'acqua nell'atmosfera <senza_numero>

Il vapore acqueo, pur essendo presente nell'atmosfera terrestre in quantità piccole e variabili, rappresenta uno dei suoi componenti più rilevanti, poiché dalla sua condensazione prendono origine tutti i fenomeni meteorologici.

La quantità di vapore acqueo nell'atmosfera viene misurata come umidità dell'aria. L'umidità relativa, in particolare, è il rapporto percentuale tra la quantità effettiva di vapore presente in un dato volume di aria e la quantità massima che quell'aria può contenere alla stessa temperatura senza che si verifichi condensazione. Quando l'umidità relativa raggiunge il 100%, l'aria diventa satura e il vapore inizia a condensarsi.

La condensazione del vapore avviene solitamente attorno a superfici solide o liquide. In mancanza di tali superfici, l'aria può trattenere un quantitativo maggiore di vapore senza dar luogo alla condensazione, condizione nota come soprassaturazione.

La condensazione del vapore acqueo può manifestarsi al suolo, dando origine alla rugiada o alla brina se la temperatura scende sotto gli 0 °C. Oppure può avvenire in aria, causando la formazione di nubi, nebbie e precipitazioni.

Il processo di formazione delle nubi e delle precipitazioni è complesso e dipende dalla presenza di corpuscoli atmosferici che fungono da nuclei di condensazione per il vapore acqueo. Questi nuclei possono essere particelle di sale marino, fumo, o materiali generati dall'erosione del terreno.

Quando una massa d'aria si raffredda al di sotto del punto di saturazione, il vapore condensa attorno ai nuclei di condensazione, formando goccioline d'acqua o piccoli cristalli di ghiaccio, in base alla temperatura dell'aria. Tali goccioline costituiscono le nubi. Scontrandosi tra loro, possono aumentare di dimensioni fino a quando, per effetto della gravità, precipitano all'interno della nube.

Durante la loro caduta, le gocce tendono a fondersi con altre presenti nella nube, ingrandendosi ulteriormente. Se sono abbastanza pesanti, raggiungono il suolo sotto forma di pioggia. Nel caso in cui la temperatura rimanga sufficientemente bassa lungo tutto il percorso, le precipitazioni si presentano sotto forma di neve.

Se la formazione della nube avviene vicino al suolo, si genera la nebbia. Le goccioline di vapore acqueo condensato presenti in essa riducono significativamente la visibilità.]

== La liquefazione e la condensazione

#figure(
  caption: [Temperatura critica di alcuni gas.],
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
  table.header[Gas][Temperatura critica \ in °C (in K)],
[azoto], [−147,1 (126,1)],
[elio], [−267,9 (5,3)],
[idrogeno], [−239,9 (33,3)],
[neon], [−228,7 (44,5)],
[ossigeno], [−118,7 (154,5)],
)  
)

Il passaggio dallo stato aeriforme a quello liquido prende il nome di liquefazione nel caso dei gas e condensazione nel caso dei vapori.

Questi due fenomeni possono verificarsi sia per un abbassamento della temperatura dell'aeriforme, mantenendo costante la pressione, sia per una compressione, mantenendo costante la temperatura.

Quando si riduce la temperatura di un aeriforme sottraendogli calore, si arriva a una temperatura caratteristica per ogni sostanza (corrispondente alla sua temperatura di ebollizione da liquido) in cui iniziano i processi di liquefazione o condensazione. Durante l'intero processo, fino a che tutto l'aeriforme non si trasforma in liquido, la temperatura rimane invariata.

Il calore ceduto all'ambiente durante la liquefazione o la condensazione, calcolato per una massa unitaria di sostanza, viene definito calore latente di liquefazione o di condensazione. Questo valore è equivalente al calore latente di vaporizzazione, cioè quello assorbito dalla sostanza durante la sua trasformazione da liquido ad aeriforme.

La pressione gioca un ruolo importante nel processo di condensazione. Si osserva, infatti, che in un recipiente aperto il liquido raggiunge il punto di ebollizione quando la tensione di vapore eguaglia la pressione atmosferica. Analogamente, un vapore non saturo condensa quando viene portato a una temperatura in cui la sua tensione di vapore diventa uguale alla pressione del vapore alla precedente temperatura.

Di norma, i vapori condensano più facilmente in presenza di superfici fredde. Questo fenomeno è evidente, ad esempio, quando il vapore acqueo in inverno si deposita sui vetri delle finestre riscaldate, esposti al freddo esterno, oppure su un bicchiere contenente ghiaccio durante una giornata calda e umida.

La condensazione di un vapore può essere ottenuta anche attraverso la compressione, finché la sua pressione non raggiunge la tensione di vapore alla temperatura specifica. 

La distinzione tra gas e vapori si basa sull'esistenza della temperatura critica, ovvero quella sopra la quale una sostanza non può essere liquefatta o condensata, indipendentemente dalla pressione esercitata. Per i vapori, tale temperatura è generalmente molto alta (per esempio, per il vapore acqueo è pari a 365 °C), permettendo loro di essere facilmente condensati tramite compressione in molte condizioni. 

Al contrario, i gas presentano temperature critiche estremamente basse (come i −240 °C dell'idrogeno), rendendo impossibile liquefarli tramite compressione. Di conseguenza, a temperatura ambiente i gas restano nello stato aeriforme, mentre i vapori si trovano nello stato liquido.

== La sublimazione

La sublimazione rappresenta il processo mediante il quale una sostanza passa direttamente dallo stato solido a quello aeriforme, senza attraversare la fase intermedia di stato liquido.

Alcuni solidi, come la canfora, la naftalina e lo iodio, a temperature inferiori al loro punto di fusione presentano una tensione di vapore maggiore rispetto alla pressione atmosferica, favorendo così il passaggio diretto allo stato aeriforme. Questi materiali possono esistere in forma liquida solo se sottoposti a elevate pressioni.

In linea teorica, tutti i solidi possono sublimare; tuttavia, per far avvenire questo processo, è necessario creare condizioni specifiche di temperatura e pressione. Nella maggior parte dei casi, alla normale pressione atmosferica, quando un solido viene riscaldato oltre la sua temperatura di fusione, tende a passare prima allo stato liquido.

Un fenomeno correlato alla sublimazione è il brinamento, in cui si verifica il passaggio dell'acqua dallo stato aeriforme direttamente a quello solido. Questo accade durante la formazione della brina: nelle notti serene, quando la temperatura al suolo scende sotto gli 0 °C, gli strati di aria vicini al suolo si raffreddano rapidamente e il vapore acqueo presente nell'atmosfera si deposita formando cristalli di ghiaccio. Al contrario, se la temperatura è superiore agli 0 °C, lo stesso processo conduce alla formazione della rugiada. La figura 12.2 è utile per visualizzare le trasformazioni di stato descritte.

== Il punto triplo

Ogni sostanza presenta un valore specifico di temperatura, noto come punto triplo, in cui i tre stati della materia (solido, liquido e aeriforme) coesistono in perfetto equilibrio. Per determinarlo si utilizza un diagramma che correla la pressione e la temperatura della sostanza.

Nel caso dell'acqua, il punto triplo corrisponde a una temperatura di 0,01 °C e una pressione di 4,58 mmHg. In queste condizioni, i tre stati dell'acqua (ghiaccio, liquido e vapore) si trovano in equilibrio reciproco. Questo valore rappresenta anche la tensione del vapore saturo dell'acqua in equilibrio con il ghiaccio e con l'acqua di fusione.

Dal 1954 il punto triplo dell'acqua ha sostituito il punto di fusione del ghiaccio come riferimento per la taratura della scala termometrica. In base a questa definizione, il kelvin è considerato pari a 1/273,16 del punto triplo dell'acqua.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Calore latente: Quantità di energia termica necessaria per trasformare lo stato fisico di una sostanza senza variarne la temperatura.  

/ Condensazione: Trasformazione di una sostanza dal suo stato di vapore a quello liquido.  

/ Fusione: Trasformazione di una sostanza dallo stato solido a quello liquido.  

/ Liquefazione: Conversione di una sostanza dallo stato gassoso a quello liquido.  

/ Solidificazione: Processo in cui una sostanza passa dallo stato liquido a quello solido.  

/ Sublimazione: Transizione diretta di una sostanza dallo stato solido a quello aeriforme, o viceversa dallo stato aeriforme a quello solido, senza attraversare lo stato liquido.  

/ Tensione di vapore: Pressione esercitata da un vapore saturo sopra il liquido con cui si trova in equilibrio. Aumenta all'aumentare della temperatura e rappresenta il grado di volatilità di una sostanza, ovvero la sua tendenza a evaporare (o sublimare, nel caso di un solido).  

/ Vaporizzazione: Passaggio di una sostanza dallo stato liquido a quello aeriforme, che può avvenire tramite due modalità: l’evaporazione, che interessa la superficie del liquido, e l’ebollizione, che coinvolge l’intera massa del liquido.