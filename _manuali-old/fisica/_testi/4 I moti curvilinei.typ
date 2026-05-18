#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Lo studio dei moti curvilinei, caratterizzati da traiettorie che seguono linee curve, consente di ampliare i concetti di velocità e accelerazione, applicandoli non solo a distanze lineari ma anche angolari. L'analisi del moto circolare uniforme, il più semplice dei moti curvilinei, introduce grandezze fondamentali quali il periodo e la frequenza della rotazione, oltre a un movimento derivato, denominato moto armonico.]

== Velocità e accelerazione nei moti curvilinei

Nei moti curvilinei, ovvero in traiettorie caratterizzate da linee curve, le grandezze velocità e accelerazione assumono una natura vettoriale più articolata rispetto ai moti rettilinei. Quando un punto si sposta lungo una curva, la direzione del suo moto cambia continuamente: la velocità istantanea del corpo risulta tangente alla traiettoria nel punto e orientata nel senso del movimento. L'analisi dell'accelerazione è ancora più complessa; essa può essere scomposta in due componenti fondamentali: 

- Accelerazione tangenziale, che dipende dalla variazione del modulo della velocità. Questa componente è rappresentata da un vettore di modulo $(Delta v)/(Delta t)$, orientato lungo la tangente alla traiettoria e diretto nel verso del moto.
- Accelerazione normale o centripeta, che è invece perpendicolare alla traiettoria e orientata verso la concavità della curva. Tale componente descrive la variazione della direzione del vettore velocità lungo il percorso.

== Il moto circolare uniforme

Il moto circolare uniforme rappresenta un caso paradigmatico di movimento curvilineo, in cui un punto _P_ si muove con velocità costante lungo una traiettoria circolare di raggio _R_ e centro _O_. L'intervallo di tempo _T_ necessario affinché il punto _P_ completi un giro della circonferenza è definito come periodo del moto. Allo stesso modo, la frequenza _f_, che misura il numero di giri compiuti da _P_ in un secondo, è legata al periodo dalla relazione inversa: 

$ f = 1/T quad e quad T = 1/f $ 

La frequenza si esprime in unità di giri al secondo (giri/s), o hertz (Hz) nel Sistema Internazionale, dove 1 Hz = 1 s#super[-1].

=== Velocità nel moto circolare uniforme

Conoscendo il periodo _T_, è possibile determinare la velocità lineare del punto _P_. Considerando che _P_ percorre una distanza pari alla circonferenza (_2πR_) nell'intervallo di tempo corrispondente a un periodo, si ottiene:

$ 
  v = 2 pi R/T
$

Alternativamente, sostituendo il reciproco del periodo con la frequenza _f_, si può calcolare la velocità mediante la relazione:

$ 
  v = 2 pi R f
$

La velocità, intesa come grandezza vettoriale nel moto circolare uniforme, si completa assegnandole una direzione tangente alla circonferenza nel punto _P_ e un verso coerente con quello del movimento. Oltre a questa formulazione lineare, la velocità può essere espressa anche in termini angolari. La velocità angolare descrive lo spostamento dell'angolo corrispondente al moto di _P_ sulla circonferenza ed è relazionata alla velocità lineare tramite la formula:

$ 
  v = omega R
$

dove _ɷ_ rappresenta la velocità angolare e determina lo stretto legame tra dinamiche lineari e rotazionali nel moto circolare uniforme.

#note(bottom)[== *🧩* La velocità angolare <senza_numero>

Nel caso in cui un punto P si muova lungo una circonferenza con moto uniforme alla velocità v, questo implica che percorre archi uguali in tempi uguali. In altre parole, il rapporto tra la lunghezza _l_ dell'arco e il tempo _t_ trascorso rimane costante:

$ 
  v = (space l space) / t
$

Introducendo la misura in radianti per rappresentare l'angolo α sotteso al centro della circonferenza anziché la lunghezza dell'arco _l_, si ottiene la relazione seguente:

$ 
  alpha = l/R quad o quad l = alpha dot R
$

Sostituendo _l = α · R_ nella formula precedente, l'espressione per la velocità diventa:

$ 
  v = alpha R/t
$

Definendo _$ω = α/t$_, abbiamo:

$ 
  v = omega R
$

Il valore di _ω_, detto velocità angolare, rappresenta il rapporto tra l'angolo percorso (misurato in radianti) e il tempo impiegato a percorrerlo. Per calcolare il valore di _ω_, si considera il caso particolare in cui _α_ corrisponda all'angolo giro completo pari a _2π_ radianti e _t_ sia uguale al periodo _T_ del moto:

$ 
  omega = (2 pi) / T
$

La velocità angolare si esprime in radianti al secondo (rad/s) e ha come unità la reciproca del tempo [T]#super[-1], poiché il radiante è un'unità adimensionale (ossia un numero puro).

La velocità angolare _ω_ ha natura vettoriale. Il suo vettore è caratterizzato da un'intensità pari a _2π/T_, da una direzione corrispondente a quella dell'asse di rotazione (la retta perpendicolare al piano di traiettoria della circonferenza e passante per il suo centro) e da un verso rivolto verso l'alto rispetto al piano della circonferenza nel caso in cui il punto P ruoti in senso antiorario.]

=== L'accelerazione nel moto circolare uniforme

Nel moto circolare uniforme, il modulo del vettore velocità resta invariato, ma la sua direzione cambia costantemente. Ciò si verifica poiché, mentre il punto si sposta lungo la circonferenza, la posizione della tangente alla curva si modifica continuamente.

Per descrivere questa variazione, si introduce il vettore accelerazione. In tale contesto, la componente tangenziale dell'accelerazione è nulla, mentre risulta attiva la componente centripeta.

Per calcolare l'accelerazione, è utile ricorrere a un metodo grafico, rappresentato nella figura /*TODO*/. Su una circonferenza di raggio _R_ sono delineati i vettori velocità *v#sub[1]*, *v#sub[2]*, *v#sub[3]* e *v#sub[4]*, ciascuno relativo alle posizioni P#sub[1], P#sub[2], P#sub[3] e P#sub[4] del punto _P_ nei quattro istanti di tempo t#sub[1], t#sub[2], t#sub[3] e t#sub[4].

Si immagini di trasportare i vettori velocità parallelamente a se stessi fino a far coincidere le loro origini in un unico punto. A questo punto, le estremità opposte dei vettori tracceranno una nuova circonferenza, con un raggio che corrisponde al modulo _v_ della velocità. Questo nuovo cerchio non coincide con la traiettoria originaria del moto.

Il vettore velocità si muove lungo questa nuova circonferenza completando un giro completo in un periodo _T_, pari a quello del moto di _P_. Percorrendo l'intera circonferenza, si ottiene uno spazio:

$ 
  s = 2 pi v
$

Il modulo di _v_ essendo uguale al raggio della nuova traiettoria rende possibile calcolare la velocità del cambiamento del vettore velocità di _P_, ovvero il valore dell'accelerazione _a_:

$ 
  a = s/T = (2 pi v)/T = v^2/R
$

Sostituendo il valore della velocità $v = (2R)/T$ nella relazione tra spazio e tempo tipica del moto circolare uniforme, si ottiene:

$ 
  a = 4 pi^2 R /T^2 = omega^2 R
$

Il vettore accelerazione, definito come velocità del cambiamento della velocità, è orientato lungo la tangente della curva che rappresenta la nuova traiettoria delle velocità. Quindi risulta perpendicolare al raggio definito dalla circonferenza costruita con i vettori velocità e, di conseguenza, anche al vettore *v*.

Tornando alla circonferenza originaria/*TODO*/, si osserva che *v* è perpendicolare al raggio _R_. Di conseguenza, il vettore accelerazione di modulo _a_ risulterà orientato lungo la perpendicolare alla perpendicolare del raggio, ovvero lungo la direzione stessa del raggio. Come si vede nella figura /*TODO*/Il verso di _a_ punta verso il centro della circonferenza. Per questa ragione, l'accelerazione così definita viene chiamata centripeta.

== Il moto armonico

A partire dal moto circolare uniforme, è possibile definire un tipo di movimento diverso, ottenuto considerando, in ogni istante, la proiezione del punto _P_ sul diametro _AB_ della circonferenza lungo cui si muove. Questo punto proiettato, denominato _Q_, descrive il cosiddetto moto armonico.

Mentre _P_ percorre la circonferenza, _Q_ si muove lungo il diametro AB avanti e indietro. Si possono considerare diversi archi della circonferenza, come _AP#sub[1]_, _P#sub[1]P#sub[2]_, _P#sub[2]P#sub[3]_, _P#sub[3]P#sub[4]_, _P#sub[4]P#sub[5]_ e _P#sub[5]B_. Essi rappresentano lo spazio percorso dal punto P in senso orario da _A_ a _B_ in intervalli di tempo _t_ uguali (ad esempio, ogni secondo). 

Poiché il moto circolare uniforme implica che tutti gli archi compresi tra le proiezioni siano di uguale lunghezza, la stessa cosa non vale per le proiezioni sul diametro. Questo evidenzia come il movimento di _Q_ differisca da quello di _P_ e non sia uniforme.

Dalla figura /*TODO*/ si nota che quando _P_ si sposta da _A_ verso P#sub[3], Q percorre segmenti di diametro sempre più ampi fino a raggiungere il centro O della circonferenza, che coincide con la proiezione di P#sub[3]. Superato il centro _O_, i segmenti percorsi da _Q_ diventano progressivamente più corti, fino a quando _P_ raggiunge _B_, ossia l'estremità opposta del diametro, tornando a coincidere con la propria proiezione. Dunque, _Q_ accelera mentre si avvicina al centro e rallenta man mano che raggiunge gli estremi del diametro. 

Il grafico temporale del moto armonico assume la forma di una sinusoide, caratterizzata da un'ampiezza pari al raggio della circonferenza (valore massimo dell'elongazione lungo il segmento _AB_) e da un periodo che corrisponde alla distanza fra due creste consecutive della curva. Esempi di moto armonico sono il movimento di un pendolo o quello di una molla.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Accelerazione normale: Nel contesto di un moto curvilineo, l'accelerazione normale è definita come il vettore che descrive la variazione nel tempo della direzione del vettore velocità. Essa mantiene costantemente una direzione perpendicolare rispetto alla traiettoria del moto. Nel caso specifico del moto circolare, tale accelerazione prende il nome di accelerazione centripeta, poiché la sua direzione è orientata verso il centro della traiettoria circolare descritta.  

/ Accelerazione tangenziale: L'accelerazione tangenziale misura la variazione temporale del modulo della velocità di un punto che si muove lungo una traiettoria curvilinea non uniforme. Questo tipo di accelerazione ha una direzione che coincide sempre con la retta tangente alla traiettoria nel punto in cui viene valutata la velocità del corpo in movimento.  

/ Frequenza: La frequenza è una grandezza scalare impiegata per rappresentare il numero di volte in cui un dato fenomeno si ripete in modo periodico nell'unità di tempo, mantenendo ogni volta la stessa configurazione iniziale.  

/ Periodo: Nel moto circolare uniforme, il periodo è definito come l'intervallo di tempo necessario affinché un punto percorra esattamente un'intera circonferenza della traiettoria descritta.  



