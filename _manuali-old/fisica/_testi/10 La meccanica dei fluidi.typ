#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La meccanica dei fluidi si occupa di analizzare il comportamento dei fluidi sia in movimento (fluidodinamica) sia in condizione di quiete (idrostatica). 

Un fluido è definito come un sistema che può trovarsi nello stato liquido o gassoso, caratterizzato dall'assenza di una forma propria. Esso assume la forma del contenitore in cui è racchiuso. 

Tra gli aspetti fondamentali nello studio dei fluidi, troviamo la pressione che il fluido esercita su una superficie. Tale pressione può derivare dal peso del fluido stesso (pressione idrostatica) oppure dal suo movimento (pressione dinamica). Inoltre, la pressione atmosferica è descritta come la forza per unità di superficie esercitata dal peso della colonna d'aria che si estende dal suolo fino al limite esterno dell'atmosfera. 

Il moto dei fluidi è regolato da due equazioni principali: l'equazione di continuità e l'equazione di Bernoulli. La prima rappresenta il principio di conservazione della massa, mentre la seconda si riferisce alla conservazione dell'energia. Da queste leggi deriva anche la comprensione dei principi che governano i fluidi in quiete.]

== Le proprietà dei fluidi

Le proprietà dei fluidi li identificano come sistemi altamente deformabili, privi di forma propria, che si adattano a quella del recipiente che li contiene. La materia si presenta comunemente in tre stati di aggregazione: solido, liquido e gassoso. I solidi hanno un volume e una forma definiti, i liquidi possiedono un volume ben determinato ma non una forma propria, mentre i gas non hanno né forma né volume definiti.

Liquidi e gas sono inclusi nella categoria dei fluidi, distinguendosi però per le forze di coesione molecolare. I liquidi, rispetto ai gas, presentano forze di attrazione tra le molecole nettamente più intense. Ne consegue che i liquidi generalmente possiedono una densità maggiore rispetto ai gas.

=== Densità

La densità, intesa come il rapporto tra la massa e il volume del fluido, varia significativamente tra i due stati di aggregazione. Nel caso dei liquidi, le molecole sono in contatto diretto tra loro, pur potendo scorrere reciprocamente. Nei gas, invece, le molecole sono distanziate, il che contribuisce a una densità decisamente inferiore.

=== Viscosità

La viscosità è una grandezza fisica che misura la resistenza offerta dalle particelle di un fluido al loro scorrimento reciproco, rappresentando l'attrito interno tra le molecole del fluido.

Il fenomeno si manifesta anche quando un fluido scorre su una superficie solida o quando un solido si muove attraverso un fluido. Generalmente, la viscosità è più marcata nei liquidi rispetto ai gas.

Un elemento fondamentale che influisce sulla viscosità è la temperatura: nei gas, la viscosità aumenta con l'incremento della temperatura a causa del maggiore moto termico delle particelle. Nei liquidi, invece, la viscosità diminuisce al salire della temperatura, essendo inversamente proporzionale alla coesione tra le molecole.

La viscosità varia inoltre in rapporto alla velocità del fluido in movimento e può essere descritta matematicamente tramite la legge di Newton. Considerando un fluido contenuto in un recipiente e soggetto a una forza orizzontale che fa slittare uno strato rispetto a quello sottostante, se _v_ è la differenza di velocità tra gli strati e _x_ la loro distanza, la forza _F_, detta resistenza viscosa, che si oppone allo scorrimento dipende dalla formula:

$ 
  F = eta A ((Delta v)/(Delta x))
$

_A_ rappresenta la superficie di contatto e il coefficiente di viscosità è un fattore di proporzionalità che varia da fluido a fluido. Nel Sistema Internazionale, il coefficiente di viscosità si misura in Ns/m#super[2]; tuttavia, è comune utilizzare il poise (simbolo P), dove 1 P corrisponde a 0,1 Ns/m². Di conseguenza, l'unità del Sistema Internazionale diventa il decapoise (daP), equivalente a 1 Ns/m².

I fluidi che seguono esattamente la legge di Newton, come acqua, glicerina, alcool e mercurio, sono definiti newtoniani. Al contrario, alcuni liquidi mostrano comportamenti differenti, ad esempio con una viscosità che dipende dal tempo.

La viscosità si misura utilizzando strumenti chiamati viscosimetri, che sfruttano lo scorrimento dei fluidi in tubi capillari estremamente sottili oppure osservano il moto di caduta di piccole sfere con massa e diametro noti immerse nella sostanza da analizzare.

=== Pressione

Quando si tratta di fluidi, il concetto tradizionale di forza dinamica non è più sufficiente per spiegare certi fenomeni. Applicando una forza su un punto specifico di un fluido, le molecole scorrono le une sulle altre senza generare un'accelerazione complessiva del fluido.

Per ottenere un effetto analogo a quello esercitato da una forza su un solido, in un fluido è necessario distribuire la forza su tutta la superficie interessata. Ad esempio, per spostare una massa d'acqua, si può esercitare pressione usando l'intera superficie delle mani.

A tal fine viene introdotta una nuova grandezza definita pressione, indicata con _p_. La pressione è il rapporto tra il valore della forza _F_, perpendicolare alla superficie _S_, e la superficie stessa:

$
  p = P/S
$

Questo parametro rappresenta una forza per unità di superficie e viene misurato nel Sistema Internazionale in pascal (simbolo Pa), dove 1 Pa corrisponde a 1 N/m². Si può dimostrare che in un fluido la pressione si trasmette uniformemente a tutti i suoi punti. Questa importante scoperta si deve al fisico francese Blaise Pascal (1623-1662), a cui è dedicata l'unità di misura della pressione.

Consideriamo un dispositivo composto da un cilindro riempito con un fluido, chiuso da uno stantuffo, all'interno del quale viene collocato un palloncino pieno d'aria: applicando una pressione sullo stantuffo, il palloncino si riduce di volume pur mantenendo invariata la sua forma.

Questo fenomeno indica che la pressione esercitata sul fluido tramite lo stantuffo si distribuisce uniformemente su ogni punto della superficie del palloncino, agendo perpendicolarmente alla stessa.

Sulla base di questa osservazione, la legge di Pascal afferma che la pressione applicata a una qualsiasi superficie di un fluido si trasmette con identica intensità a tutta la massa del fluido.

#note(bottom)[== *🧩* Le unità di misura della pressione atmosferica <senza_numero>

Poiché il valore della pressione atmosferica espresso in pascal risulta numericamente molto elevato, sono state introdotte unità di misura più pratiche.

Per convenzione, l'atmosfera (indicato con il simbolo atm) corrisponde alla pressione esercitata al livello del mare da una colonna di mercurio alta 76 cm (o 760 mm), cioè:

$ 
  1 "atm" = 101.325 "Pa"
$

Un'altra unità di misura è il bar:

$ 
  1 "bar" = 10^5
$

e il suo sottomultiplo, il millibar (mbar), usato comunemente in meteorologia:

$ 
  1 "mbar" = 10^2 "Pa"
$

Questo è oggi sostituito dall'ettopascal (hPa), secondo cui:

$ 
  1 "mbar" = 1 "hPa"
$

Secondo tale unità di misura, ampiamente accettata dai fisici dell'atmosfera, la pressione atmosferica media al livello del mare in condizioni standard è pari a 1013,2 hPa.]

=== Comprimibilità dei fluidi

La comprimibilità di un fluido consiste nella sua capacità di ridurre il proprio volume quando viene sottoposto a una pressione esterna.

Se un fluido occupa un volume _V_ a una data pressione _p_ e subisce una compressione, il suo volume diminuisce di _ΔV_ secondo la relazione:

$ 
  Delta V = -k V Delta p
$

dove _k_ rappresenta il coefficiente di comprimibilità. Il valore di _k_ varia con la pressione e risulta generalmente molto basso per i liquidi, mentre è significativamente più alto per i gas. Di conseguenza, i liquidi sono quasi incomprimibili, mentre i gas mostrano una maggiore comprimibilità.

=== Tensione superficiale

La tensione superficiale è la forza di coesione che agisce tra le molecole situate sulla superficie di un liquido.

Questo fenomeno dipende dal fatto che, mentre una molecola interna al liquido subisce forze simmetriche in tutte le direzioni da parte delle altre molecole circostanti, le molecole in superficie sono influenzate solo da forze laterali e verso l'interno del liquido.

Di conseguenza, sulle molecole superficiali si manifesta una forza risultante diretta verso il basso: la tensione superficiale. Questo effetto fa sì che la superficie del liquido si comporti come una membrana elastica.

La formazione delle gocce e delle bolle è una diretta conseguenza della tensione superficiale. Essa tende a minimizzare l'area della superficie libera di una goccia, motivo per cui le bolle di sapone assumono una forma sferica: tra tutti i solidi con stesso volume, la sfera presenta la superficie minima.

Le bolle possono formarsi anche nell'acqua pura, tuttavia quest'ultima ha una tensione superficiale molto maggiore rispetto a quella dell'acqua saponata. Di conseguenza, le bolle d'acqua sarebbero talmente piccole da risultare invisibili a occhio nudo.

La tensione superficiale diminuisce con l'aumento della temperatura. Uno degli effetti caratteristici della tensione superficiale è la formazione di menischi sulla superficie libera di un liquido contenuto in un recipiente: la superficie del liquido, per effetto della tensione superficiale, non appare perfettamente piatta ma tende ad assumere una forma curva denominata menisco, con concavità (menisco concavo) o convessità (menisco convesso) orientata verso l'alto. La tipologia del menisco dipende dal fatto che il liquido bagni o meno le pareti del recipiente; ciò è determinato dal predominio delle forze di adesione tra le molecole del liquido e quelle del recipiente rispetto alle forze di coesione tra le molecole del liquido.

Se un liquido si trova all'interno di un tubo estremamente sottile, con un diametro interno inferiore a 0,1 mm, chiamato capillare, le forze di tensione superficiale si manifestano in modo particolarmente evidente. Nei capillari, infatti, la superficie libera del liquido è così ridotta che l'effetto del menisco si estende praticamente su tutta la superficie. Inoltre, il capillare possiede un'ulteriore peculiarità: quando viene immerso in un liquido contenuto in un recipiente, il livello del liquido nel capillare non raggiunge lo stesso livello del liquido nel recipiente, come accadrebbe con un tubo di dimensioni maggiori. Al contrario, il liquido subisce un innalzamento anomalo, fenomeno attribuito alla tensione superficiale.

Se il liquido forma un menisco concavo, il suo livello si alza; se il menisco è convesso, invece, il livello si abbassa. L'entità di questo dislivello può essere calcolata utilizzando la legge di Jurin-Borrelli, secondo cui il dislivello h è direttamente proporzionale alla tensione superficiale del liquido e inversamente proporzionale alla sua densità e al raggio del capillare:

$ 
  h = (2 tau cos θ) / (rho g r)
$


Dove _γ_ è la tensione superficiale, _ρ_ è la densità del liquido, _r_ è il raggio del capillare e _g_ rappresenta l'accelerazione di gravità (9,8 m/s#super[2]).

Questo fenomeno, noto come capillarità, si osserva in spugne e carte assorbenti e assume una rilevanza particolare in natura. Un esempio significativo è il trasporto della linfa lungo i fusti delle piante, che avviene contro la forza di gravità. Lo stesso principio è implicato nella circolazione sanguigna nelle zone periferiche dell'organismo.

== La dinamica dei fluidi

La dinamica dei fluidi, o fluidodinamica, studia il comportamento dei fluidi in movimento in relazione alle cause che ne determinano il flusso. Per descrivere matematicamente il moto dei fluidi è necessario elaborare un modello teorico chiamato fluido perfetto o ideale. Un fluido perfetto si presuppone completamente incomprimibile e privo di viscosità, quindi senza attriti interni.

Sebbene i fluidi reali differiscano dai fluidi perfetti, il loro comportamento in molti casi può essere assimilabile a quello ideale. Tuttavia, non sono privi di viscosità: questa proprietà ostacola il flusso del liquido e richiede l'introduzione di termini correttivi nelle equazioni del moto per tenere conto della dissipazione energetica causata dagli attriti molecolari.

I fluidi reali possono muoversi secondo due schemi principali. Nel caso del flusso laminare, il fluido scorre in strati paralleli che non si mescolano; nel caso di flusso turbolento, invece, il movimento è irregolare e caotico, con porzioni di fluido che si mescolano tra loro. Le equazioni che descrivono il flusso turbolento sono notevolmente più complesse rispetto a quelle del flusso laminare.

Il metodo più immediato per analizzare il moto di un fluido consiste nell'incanalarlo all'interno di un condotto dalle dimensioni e curvatura variabili.

Un fluido si dice in regime di moto stazionario quando tutte le molecole che attraversano una qualunque sezione del condotto hanno la stessa velocità in ogni istante successivo. In tali condizioni, la velocità del fluido è uniforme in ogni punto della sezione, indipendentemente dalla distanza dalle pareti del condotto.

Nel regime stazionario, il comportamento dei fluidi è regolato dall'equazione di continuità, derivata dalla legge della conservazione della massa. Questa stabilisce che la quantità di massa di fluido che attraversa una sezione del condotto nell'unità di tempo resta costante. In altre parole, in assenza di perdite o aggiunte, la stessa quantità di fluido sarà presente in ciascuna sezione del condotto.

Se si definisce la massa di fluido _Δm_ che attraversa una sezione nell'unità di tempo _Δt_, questa può essere espressa tramite la densità, ricordando che _m = ρΔV_ (_ρ_ è la densità del fluido e _ΔV_ rappresenta il volume del condotto dato da una sezione _S_ e uno spessore _ _). Sostituendo questi elementi, si ottiene una formulazione finale che riassume l'equazione di continuità:

$ 
  rho ((Delta V)/(Delta t)) = rho S ((Delta x)/(Delta t))
$

Osservando che $(Delta x)/(Delta t) = v$ è la velocità del fluido, si può ricavare l'equazione di continuità:

$ 
  rho S v = "costante"
$

La quantità _ρSv_ (dove _Δv_ è la velocità del fluido) è denominata portata di massa e si misura in kg/s. Più comunemente, si fa riferimento alla portata volumica, definita da 

$ 
  S v = V/t
$

Essa di misura in m#super[3]/s. Applicando l'equazione di continuità a due diverse sezioni del condotto, _S#sub[1]_ e _S#sub[2]_, dove il fluido scorre con velocità rispettivamente _v#sub[1]_ e _v#sub[2]_, e assumendo che la densità resti invariata su tutto il condotto (ossia che il fluido sia omogeneo), si può esprimere la relazione in forma:  

$ 
  S_1 v_1 = S_2 v_2
$

Questa formula implica che, in un condotto a sezione variabile, la portata volumica rimane costante. Ne deriva che all'aumentare della sezione diminuisce la velocità del fluido, mentre una riduzione della sezione comporta un incremento della sua velocità. Per questa ragione, quando un fluido attraversa una strozzatura nel condotto, la sua velocità aumenta. Tale effetto spiega la percezione del vento nei passaggi stretti o nei tunnel, dove l'aria accelera passando attraverso sezioni ridotte rispetto all'ambiente aperto.

=== Equazione di Bernoulli

La principale legge della fluidodinamica è rappresentata dall'equazione di Bernoulli, formulata dal fisico Daniel Bernoulli (1700-1782). Essa traduce la legge di conservazione dell'energia nel caso dei fluidi.

Per arrivare all'equazione di Bernoulli si considera un piccolo volume di fluido ideale che fluisce in regime stazionario con velocità _v#sub[1]_ lungo un condotto con sezione _S#sub[1]_, posizionato alla quota _h#sub[1]_ rispetto al suolo.

Sotto l'effetto della pressione _p#sub[1]_, il fluido si innalza attraverso il condotto fino a raggiungere la sezione _S#sub[2]_, maggiore di _S#sub[1]_. In questa nuova sezione, la velocità del fluido _v#sub[2]_ risulta inferiore rispetto a _v#sub[1]_.

Un piccolo volume del fluido subisce una variazione dell'energia cinetica _E_#sub[cin]_, conseguente alla variazione di velocità, e una variazione dell'energia potenziale gravitazionale _E_#sub[pot]_, legata alla differenza di quota. Tali variazioni devono essere bilanciate dal lavoro _ L#sub[p]_ compiuto dalle forze di pressione. Il lavoro delle forze di pressione che spingono il fluido da _S#sub[1]_ a _S#sub[2]_ può essere calcolato sulla base della seguente relazione:

$ 
  L_p = Delta E_"cin" + Delta E_"pot"
$

Il lavoro delle forze di pressione che tendono a spingere il fluido da _S#sub[1]_ a _S#sub[2]_ si ottiene così:

$ 
  L_p = p_1 S_1 Delta x_1 - p_2 S_2 Delta x_2
$

Richiamando le definizioni di energia cinetica e potenziale gravitazionale di un corpo, si giunge alla forma più nota dell'equazione di Bernoulli, detta anche equazione dell'idrodinamica. 

$ 
  1/2 m v^2_1 + m g h_1 + p_1 S_1 Delta x_1 = 1/2 m v^2_2 + m g h_2 + p_2 S_2 Delta x_2
$

Considerando che il fluido è incomprimibile si ha:

$ 
  S_1 Delta x_1 = S_2 Delta x_2 = Delta V
$

Introducendo la densità del fluido _ρ_, si ottiene:

$ 
  p + (rho v^2)/2 + rho g h = "costante"
$

dove _p_ è la pressione, _ρ_ la densità del fluido e _h_ l'altezza della sezione. Nell'equazione sopra, il termine _ρ g h_, che possiede le dimensioni di una pressione, rappresenta il peso della colonna di fluido che agisce su un'area unitaria, noto come pressione idrostatica. Al contrario, il termine $(rho v^2)/2$ è indicato come pressione dinamica, esercitata da un fluido in movimento con velocità _v_.

== L'idrostatica

Dall'equazione di Bernoulli si possono dedurre alcune leggi fondamentali della meccanica dei fluidi in condizioni di quiete, ossia nell'ambito della disciplina detta idrostatica. Tra queste troviamo il principio di Stevino e la legge di Archimede. Tali leggi disciplinano il comportamento dei fluidi in quiete e sono applicabili indipendentemente dalla velocità del fluido. La denominazione "idrostatica" deriva dal fatto che i primi esperimenti furono condotti utilizzando acqua; tuttavia, le leggi risultano valide per ogni tipo di fluido.

Il principio di Stevino, enunciato dal matematico fiammingo Simon Stevin (1548-1620), afferma che la pressione in un fluido omogeneo contenuto in un recipiente aumenta con la profondità ed è funzione della densità del fluido e della distanza verticale dal pelo libero del liquido alla superficie considerata. La relazione che esprime questo principio è:

$ 
  p = p_0 + rho g h
$

dove _p_ rappresenta la pressione a una profondità _h_ e _ p#sub[0]_ è la pressione sulla superficie del liquido. Una conseguenza significativa di tale principio è che la pressione esercitata da un fluido non dipende dalla quantità totale del fluido contenuto nel recipiente, bensì esclusivamente dalla quota. Questo implica che, in recipienti aventi differenti forme ma posti alla medesima altezza verticale, la pressione esercitata dal fluido è identica.

Dal principio di Stevino deriva inoltre la legge dei vasi comunicanti. Considerando un sistema formato da contenitori di forme diverse collegati tramite un condotto orizzontale e riempiti con un liquido omogeneo, il livello del fluido risulta uniforme in tutti i recipienti. Ciò accade poiché la pressione esercitata dal liquido dipende esclusivamente dall'altezza della colonna fluida. Per garantire l'equilibrio del sistema, questa altezza deve necessariamente essere uguale in ciascuno dei contenitori.

Uno dei principi cardine dell'idrostatica è attribuibile al matematico e fisico greco Archimede di Siracusa (287-212 a.C.), che formulò la celebre legge sul galleggiamento dei corpi immersi in un liquido, nota come "legge di Archimede".  

La capacità di alcuni oggetti di galleggiare in un fluido implica la presenza di una forza. Archimede determinò che tale forza, orientata dal basso verso l'alto, è proporzionale al peso del liquido spostato dal corpo immerso. Questa relazione può essere derivata anche dalla forma statica dell'equazione di Bernoulli. Considerando un corpo che si trovi completamente immerso in un fluido, si può analizzare la forza esercitata dal fluido sulla sua superficie. Per semplicità, analizziamo il caso di un corpo a forma cubica: la forza in questione è il prodotto tra la pressione esercitata dal fluido e l'area di contatto della superficie.  

Le superfici che risentono della pressione fluidodinamica sono quella superiore e quella inferiore del corpo, poiché sulle facce laterali la pressione risulta equilibrata secondo il principio di Pascal. Quest'ultimo stabilisce che la pressione esercitata su una faccia è annullata da quella opposta.  La forza esercitata dalla pressione sulla faccia superiore si esprime come:

$ 
  F_1 = S p_1
$
 
mentre quella sulla faccia inferiore è:  

$ 
  F_2 = S p_2
$

dove _S_ rappresenta l'area della superficie del corpo. Poiché secondo il principio di Stevino _p#sub[2]>p#sub[1]_, la forza risultante agisce verso l'alto e si calcola come:  

$ 
  F = F_2 - F_1 = S rho g h
$

dove _h = h#sub[2] - h#sub[1]_ indica l'altezza del corpo. Dal momento che il volume _V_ del corpo può essere espresso come _V = Sh_, la legge di Archimede risulta formulabile come: 

$ 
  F = rho V g
$ 
dove _F_ rappresenta la spinta verso l'alto che agisce sul corpo ed è esattamente pari al peso del liquido spostato.  

== La pressione atmosferica

L'atmosfera è l'involucro gassoso che circonda la Terra, trattenuto dalla forza di gravità, che agisce grazie al suo peso.

È costituita da una miscela di gas, principalmente azoto (circa 78\%) e ossigeno (circa 21\%), accanto ad alcuni gas minori, tra cui argo, vapor d'acqua e diossido di carbonio, o anidride carbonica.

L'atmosfera esercita una pressione su tutti i corpi che vi sono immersi, la pressione atmosferica, dovuta alla pressione esercitata dal peso della colonna d'aria, dal livello del mare al limite esterno dell'atmosfera.

La prima misura della pressione atmosferica si deve al fisico italiano Evangelista Torricelli (1608-1647), che inventò il barometro a mercurio. Il barometro di Torricelli è costituito da una vaschetta contenente mercurio e da un tubo, anch'esso contenente mercurio, del diametro di circa 1 cm e lungo circa 1 m, chiuso a un'estremità e inserito capovolto all'interno della vaschetta.

All'interno del tubo la colonna di mercurio si abbassa fino a che non viene raggiunto l'equilibrio tra la sua forza peso e la pressione atmosferica, che grava sulla superficie libera del mercurio contenuto nella vaschetta:

al livello del mare, l'equilibrio si ottiene quando il mercurio nel tubo raggiunge un dislivello _h_ rispetto alla superficie della vaschetta tale che:

$ 
  h = 76 "cm"
$

La pressione atmosferica impedisce al tubo di svuotarsi completamente e, poiché la pressione esercitata dal mercurio e quella esercitata dall'atmosfera sono in equilibrio, si può dire che al livello del mare l'atmosfera esercita mediamente una pressione pari a quella esercitata da una colonnina di mercurio alta 76 cm.

Il valore della pressione misurata nell'unità del Sistema Internazionale (pascal, Pa) può essere determinato attraverso la relazione:

$ 
  p = rho g h
$

in cui ρ = 13.590 kg/m³ rappresenta la densità del mercurio, ottenendo così:

$ 
  p = 101.325 "Pa"
$

Questo valore equivale alla pressione atmosferica media, definita normale, registrata al livello del mare, a una latitudine di 45° e a una temperatura di 0 °C.

Tali parametri sono essenziali poiché la densità del mercurio varia con la temperatura, l'accelerazione di gravità è influenzata dalla latitudine, e la pressione atmosferica diminuisce con l'altitudine rispetto al livello del mare (poiché a quote maggiori si riduce lo strato di atmosfera e, di conseguenza, il suo peso).

Oltre al pascal, sono comunemente utilizzate altre unità di misura per la pressione atmosferica. La pressione atmosferica, inoltre, subisce variazioni in funzione della località e delle condizioni meteorologiche. Queste differenze possono essere osservate ripetendo l'esperimento in circostanze diverse.

L'analisi della distribuzione orizzontale della pressione atmosferica rappresenta il fulcro della meteorologia. Per studiarla, vengono utilizzate carte geografiche sulla cui superficie si tracciano linee che collegano punti con uguale pressione atmosferica (le isobare). La distribuzione della pressione consente di prevedere il movimento delle masse d'aria.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Comprimibilità: La capacità di un corpo di ridurre il proprio volume quando è sottoposto a compressioni esterne.

/ Equazione di Bernoulli: Rappresenta la legge fondamentale della fluidodinamica e descrive la conservazione dell’energia in un fluido perfetto.

/ Equazione di continuità: Esprime il principio di conservazione della massa per un fluido perfetto.

/ Fluido: Sostanza allo stato liquido o gassoso, priva di una forma propria e in grado di adattarsi al contenitore che la raccoglie. La meccanica dei fluidi si suddivide in fluidodinamica, che analizza il moto dei fluidi, e idrostatica, che studia le condizioni di equilibrio dei fluidi.

/ Fluido perfetto: Modello ideale di fluido privo di viscosità e perfettamente incomprimibile, impiegato per semplificare l’analisi del moto reale dei fluidi.

/ Legge di Archimede: Indica che un corpo immerso in un fluido riceve una spinta verticale verso l’alto pari al peso del fluido spostato.

/ Legge di Pascal: Afferma che una pressione applicata su una superficie qualsiasi di un fluido si trasmette uniformemente a tutta la massa del fluido con la stessa intensità.

/ Pressione: Grandezza fisica che rappresenta il rapporto tra l’intensità di una forza normale alla superficie e l’area su cui essa agisce. L’unità di misura nel Sistema Internazionale è il pascal (Pa), pari a 1 N/m#super[2]. La pressione idrostatica generata da un fluido corrisponde al peso della colonna del fluido sulla superficie considerata. Allo stesso modo, la pressione atmosferica è determinata dal peso della colonna d’aria presente sopra una determinata superficie.

/ Principio di Stevino: Definisce come la pressione in un fluido omogeneo contenuto in un recipiente aumenti con la profondità, influenzata dalla densità del fluido e dalla distanza verticale dal livello libero del liquido.

/ Tensione superficiale: La forza che si manifesta lungo la superficie di separazione tra due liquidi immiscibili o tra un liquido e l’aria, facendo sì che lo strato superficiale del liquido si comporti come una sottile pellicola elastica.

/ Viscosità: La proprietà fisica che descrive la resistenza interna di un fluido alle deformazioni causate dal movimento relativo delle sue particelle.

