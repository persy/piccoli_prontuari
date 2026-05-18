#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Nei solidi, le forze attrattive tra le particelle predominano nettamente rispetto alla loro energia cinetica.

Di conseguenza, i solidi mantengono una forma e un volume propri, si presentano come incomprimibili e sono caratterizzati da una struttura cristallina.

La forma geometrica di un cristallo riflette l'ordine spaziale delle particelle che lo costituiscono, siano esse atomi, ioni o molecole. I solidi privi di tale struttura cristallina sono definiti amorfi.

Al contrario, i solidi cristallini sono classificati in diversi sistemi e gruppi sulla base di parametri specifici chiamati costanti cristallografiche e sulla presenza di elementi di simmetria quali centro, assi e piani di simmetria.]

== Proprietà generali dei solidi

Nel stato solido, le forze attrattive tra le particelle, che possono essere atomi, ioni o molecole, sono estremamente intense. Queste consistono in legami chimici veri e propri, come quelli ionici, covalenti e metallici, oppure in legami intermolecolari molto forti, come nel caso dei solidi molecolari basati sulle interazioni di van der Waals.

Queste potenti forze impediscono alle particelle di muoversi liberamente l'una rispetto all'altra, permettendo solo piccoli movimenti oscillatori, i cosiddetti moti vibrazionali. Di conseguenza, l'energia cinetica delle particelle nello stato solido è relativamente modesta. Per questo motivo, i solidi possiedono forma e volume definiti e non sono comprimibili.

Generalmente, i solidi si presentano sotto forma di cristalli, cioè strutture geometriche che riflettono la disposizione spaziale ordinata delle particelle che li compongono. I solidi che non hanno una struttura cristallina vengono invece definiti amorfi.

La maggior parte delle sostanze presenti in natura si trova, a temperatura ambiente, allo stato solido cristallino. Quando un solido viene riscaldato, l'energia cinetica delle sue particelle aumenta fino a raggiungere una temperatura specifica, detta punto di fusione nei solidi cristallini. A questo punto, l'energia acquisita è sufficiente per indebolire le forze attrattive tra le particelle e trasformare il solido in liquido.

La quantità di calore necessaria per fondere una massa unitaria di solido a temperatura costante viene chiamata calore latente di fusione. Quest'ultimo coincide con la quantità di energia liberata durante il processo inverso di solidificazione (calore di cristallizzazione) quando una massa unitaria di liquido si trasforma in solido.

Alcune sostanze caratterizzate da una elevata tensione di vapore possono invece passare direttamente dallo stato solido a quello aeriforme senza attraversare la fase liquida. Questo fenomeno è noto come sublimazione. Un esempio comune è la naftalina, lo iodio o il biossido di carbonio (CO#sub[2]). Quest'ultimo viene utilizzato come "ghiaccio secco", grazie al fatto che la sua tensione di vapore è pari a 1 atm a circa −78,5 °C; ciò permette al CO#sub[2] di trasformarsi direttamente in vapore quando esposto all'aria mantenendo questa temperatura costante.

#figure(
  caption: [Tipi di solidi cristallini],
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
  table.header[Tipo di legame][Unità strutturali][Punto di fusione][Proprietà meccaniche \ ed elettriche][Esempi],  
  [Ionico], [ioni], [da elevato a molto elevato], [duri e fragili; \ isolanti allo stato solido, conduttori allo stato liquido], [cloruro di sodio (NaCl) \ floruro di litio (LiF) \ solfuro di zinco (ZnS)], 
  [Covalente], [atomi], [molto elevato], [in genere isolanti], [diamante (C) \ carburo di silicio (SiC) \ amianto], 
  [Metallico], [ioni positivi circondati da \ una nuvola di elettroni mobili], [variabile], [durezza variabile; \ malleabili; \ buoni conduttori], [ferro (Fe) \ rame (Cu) \ argento (Ag)], 
  [Molecolare], [atomi o molecole], [basso], [teneri e fragili; \ isolanti], [neon (Ne) \ acqua (H#sub[2]O) \ anidride carbonica (CO#sub[2])],  
)  
)

== I solidi cristallini

I cristalli si formano attraverso processi chiamati cristallizzazione. Durante questi processi, le particelle come atomi, ioni o molecole si dispongono gradualmente secondo uno schema regolare e ripetitivo attorno a nuclei ordinati di dimensioni submicroscopiche.  

I solidi cristallini naturali costituiscono i minerali, formati da singoli cristalli o più frequentemente da aggregati cristallini. Questi aggregati sono responsabili della formazione delle rocce che compongono la crosta terrestre.

=== Proprietà dei solidi cristallini

I cristalli si distinguono per le loro forme geometriche caratteristiche, limitate da superfici piane chiamate facce. Le facce si intersecano creando spigoli e angoli ben definiti, noti come angoli diedri. 
La caratterizzazione di un cristallo può essere determinata attraverso l'analisi della simmetria della sua forma geometrica, facendo riferimento agli elementi di simmetria e identificando il suo reticolo cristallino. Quest'ultimo rappresenta la disposizione spaziale ordinata delle particelle costituenti, organizzata mediante la ripetizione, nelle tre direzioni dello spazio, di una struttura fondamentale denominata cella elementare.

Oltre alla sua configurazione geometrica, i cristalli possiedono proprietà distintive, tra cui:  
- sfaldabilità, ovvero la tendenza del cristallo a rompersi lungo piani specifici;  
- anisotropia, che descrive il fenomeno secondo il quale alcune proprietà vettoriali, come la dilatazione termica, la coesione o determinati comportamenti ottici, variano a seconda della direzione considerata (se le proprietà rimangono invece identiche in tutte le direzioni, si parla di isotropia);  
- isomorfismo, caratteristica per cui sostanze chimicamente diverse cristallizzano seguendo una stessa forma;  
- polimorfismo, che riguarda la capacità di una stessa sostanza di cristallizzare in forme differenti;  
- fluorescenza e fosforescenza, proprietà di alcune sostanze che, esposte a radiazioni ultraviolette, emettono luce visibile colorata (nel caso della fluorescenza l'emissione cessa con l'interruzione dell'irradiazione, mentre nella fosforescenza il fenomeno persiste nel tempo);  
- piroelettricità e piezoelettricità, capacità di un solido di generare un campo elettrico rispettivamente quando riscaldato o sottoposto a pressioni;  
- peso specifico, calcolato come rapporto tra il peso e il volume;  
- durezza, intesa come resistenza del cristallo a essere scalfito da un altro materiale. La durezza viene misurata tramite la scala di Mohs, che va da 1 (talco) a 10 (diamante)
- birifrangenza, che si manifesta in cristalli come la calcite ed è la capacità di dividere un raggio luminoso incidente in due distinti raggi, uno ordinario e uno straordinario.

=== Cristalli idrati

Le sostanze cristalline chimicamente associate a molecole d'acqua in rapporti fissi danno origine ai cosiddetti cristalli idrati. Un esempio è rappresentato dal solfato di rame pentaidrato (CuSO#sub[4] · 5H#sub[2]O).  

Alcuni cristalli idrati possono perdere acqua spontaneamente a temperatura ambiente (sostanze efflorescenti), altri invece assorbono umidità dall'aria circostante (sostanze igroscopiche) e altri ancora possono assorbirne così tanta da liquefarsi (sostanze deliquescenti).  

== Gli elementi di simmetria

Un aspetto fondamentale nello studio della geometria dei cristalli è rappresentato dalla loro simmetria, definita dalla presenza di specifici elementi: centro, assi e piani di simmetria.  

// Immagine

- Il centro di simmetria (C) è un punto ideale all'interno del cristallo che separa ogni segmento che collega elementi equivalenti (facce, spigoli, vertici) in due parti uguali e opposte.  
- L'asse di simmetria (A) è una linea immaginaria attorno alla quale il cristallo può ruotare di un angolo tale da riprodurre due o più posizioni equivalenti alla configurazione iniziale. Si distinguono assi binari (A#sub[2]), ternari (A#sub[3]) e così via, a seconda del numero di posizioni equivalenti ottenute in una rotazione completa.  
- Il piano di simmetria (P) è una superficie ideale che divide il cristallo in due parti specularmente identiche.

Tutti questi elementi contribuiscono a definire il grado di simmetria del cristallo, utilizzato per identificare minerali specifici nello stato cristallino. Il cubo, ad esempio, presenta 9 piani, 13 assi e un centro di simmetria, raggiungendo un grado di simmetria pari a 23. In base alla presenza o assenza di elementi di simmetria, i cristalli possono essere divisi in 32 classi, raggruppate in 7 sistemi cristallini.

== Il reticolo cristallino

La struttura tridimensionale ordinata delle particelle che costituiscono un cristallo può essere descritta come un insieme di punti distribuiti regolarmente nello spazio, rappresentando ciò che viene definito reticolo cristallino.

Il reticolo cristallino è composto dalla ripetizione di una cella elementare, una unità strutturale che possiede una forma geometrica semplice, come un cubo o un parallelepipedo. Essa è caratterizzata dalla lunghezza degli spigoli a, b e c (chiamati periodi), paralleli ai tre assi di riferimento x, y e z (noti come assi cristallografici). Inoltre, tali periodi sono associati ai valori degli angoli della cella. Nello spazio tridimensionale sono possibili 14 tipi di celle elementari: 7 fondamentali e 7 derivate da queste.

Le 7 celle fondamentali definiscono i 7 sistemi cristallini, ognuno dei quali accoglie le 32 classi che condividono uno o più elementi di simmetria.

A loro volta, i sistemi cristallini si suddividono in tre gruppi: monometrico, dimetrico e trimetrico, distinti in base ai valori dei periodi a, b e c.

#figure(
  caption: [I sistemi cristallini],
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
  table.header[Gruppo][Sistema][Costanti \ cristallografiche][Reticolo],
  [Monometrico \ a = b = c], [cubico], [a = b = c \ #math.alpha = #math.beta = #math.gamma = 90°], [],
  table.cell(rowspan: 3)[Dimetrico \ a = b #math.eq.not c], [tetragonale], [a = b #math.eq.not c \ #math.alpha = #math.beta = #math.gamma = 90°], [], 
  [trigonale o \ romboedrico], [a = b #math.eq.not c \ #math.alpha = #math.beta = #math.gamma #math.eq.not 90°], [], 
  [esagonale], [a = b #math.eq.not c \ #math.alpha = #math.beta = 90°\ #math.gamma = 120°], [],
  table.cell(rowspan: 3)[Trimetrico \ a ≠ b ≠ c], [rombico], [a #math.eq.not b #math.eq.not c \ #math.alpha = #math.beta = #math.gamma = 90°], [], 
  [monoclino], [a #math.eq.not b #math.eq.not c \ #math.alpha = #math.gamma = 90° \ #math.beta #math.eq.not 90°], [], 
  [triclino], [a #math.eq.not b #math.eq.not c \ #math.alpha #math.eq.not #math.beta #math.eq.not #math.gamma #math.eq.not 90°], [],
)  
)

== Impaccamento compatto di sfere

La maggior parte dei metalli, così come alcune sostanze elementari come i gas nobili, H#sub[2], HCl e NaCl, tende a cristallizzarsi seguendo uno o più tipi di reticoli cristallini. Questi reticoli permettono il massimo impaccamento delle particelle, descritto come un impaccamento compatto di sfere. Le sfere rappresentano gli atomi o gli ioni. Le tre principali strutture di impaccamento compatto sono: la cubica a corpo centrato, la cubica a facce centrate e quella esagonale.

== Difetti dei cristalli

Praticamente tutti i cristalli presentano difetti strutturali nel reticolo. Questi difetti possono manifestarsi come lacune reticolari (ovvero la mancanza di alcuni atomi o ioni rispetto al reticolo ideale) oppure come difetti interstiziali (cioè particelle posizionate in punti intermedi rispetto alle posizioni previste).

I difetti possono conferire ai cristalli proprietà che i modelli ideali non possiedono. Alcuni difetti chimici dipendono dalla presenza di sostanze estranee all'interno del cristallo.

Un esempio è il germanio, un solido molecolare isolante dal punto di vista elettrico. Tuttavia, la presenza di pochi atomi di arsenico nel reticolo del germanio lo trasforma in un semiconduttore. Questo fenomeno è sfruttato nella costruzione di transistor e altri componenti elettronici, poiché l'elettrone di valenza aggiuntivo dell'arsenico interagisce con gli elettroni di valenza del germanio in modo simile a quello dei solidi metallici.

== I solidi amorfi

Una frazione minoritaria delle sostanze solide, nota come solidi amorfi, è caratterizzata da una struttura disordinata che risulta analoga a quella dei liquidi. Per tale motivo, questi materiali vengono talvolta descritti come "liquidi ad altissima viscosità".  

La classe di solidi amorfi più conosciuta è rappresentata dai vetri, il cui stato fisico viene comunemente definito stato vetroso. Quando i vetri vengono sottoposti a riscaldamento, prima si rammolliscono e successivamente transitano gradualmente verso lo stato liquido, senza evidenziare una temperatura di fusione nettamente definita.  

Oltre al vetro, fanno parte delle sostanze amorfe materiali come la gomma e numerose tipologie di materie plastiche.  

== La diffrazione dei raggi X

L'ipotesi formulata da Auguste Bravais ha ricevuto una conferma sperimentale attraverso gli studi effettuati sulla diffrazione dei raggi X tra il 1912 e il 1913, condotti dal fisico tedesco Max von Laue (1879-1960) e dallo scienziato inglese William Henry Bragg (1862-1942).  

I raggi X possiedono una lunghezza d'onda comparabile alle dimensioni atomiche e alle distanze interatomiche presenti nei cristalli, che corrispondono a circa 10−8 cm. Di conseguenza, quando incontrano un cristallo, è possibile registrare su una lastra fotografica spettri di diffrazione caratteristici. Questi spettri prendono la forma di fotogrammi composti da una serie di macchie puntiformi la cui disposizione regolare e simmetrica riflette l'organizzazione atomica del cristallo stesso.  

Nell'esperimento condotto da von Laue, i raggi X generati dal tubo e successivamente diffratti da una sottile lamina cristallina producono un'immagine caratteristica che viene fissata sulla lastra fotografica.  
#pagebreak()
#set page(fill: main_tecnologia.lighten(90%))
== Glossario <senza_numero>

/ Solidi cristallini: Solidi le cui particelle sono disposte nel spazio secondo regole geometriche precise e regolari.

/ Solidi amorfi: Solidi con una disposizione casuale e disordinata delle particelle.  

/ Cristallo: Solido dalla forma geometrica ben definita, limitato da superfici piane e contraddistinto da un certo grado di simmetria. 

/ Grado di simmetria: Raggruppa gli elementi caratteristici della simmetria, come il centro, gli assi e i piani.

/ Cella elementare: Struttura di base che, replicata lungo le tre direzioni dello spazio, forma l'intero cristallo.  

/ Reticolo cristallino: Configurazione che rappresenta le posizioni ordinate e regolarmente distribuite delle particelle che costituiscono un cristallo. 

/ Sistemi cristallini: Classificazioni delle forme cristalline basate sulle relazioni tra i parametri cristallografici comuni.  

/ Gruppi: Raccolte di forme cristalline accomunate dalle stesse proporzioni tra le lunghezze degli spigoli. Questi gruppi vengono ulteriormente suddivisi in sistemi.  
