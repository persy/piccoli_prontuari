#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Il comportamento della materia nello stato gassoso è governato da precise relazioni tra le variabili pressione, volume e temperatura, che ne definiscono la natura. Queste relazioni sono note come leggi dei gas e si riferiscono a un modello teorico di gas ideale o perfetto. La combinazione di tali leggi conduce a un'unica espressione matematica, chiamata equazione di stato dei gas ideali. Tale equazione permette di calcolare un parametro quando gli altri sono noti e consente di determinare caratteristiche cruciali come la densità, il peso molecolare di un gas e le pressioni parziali dei componenti in un miscuglio gassoso. 

L'equazione di stato può essere inoltre adattata per descrivere il comportamento dei gas reali applicando specifiche modifiche che considerino le deviazioni osservate, come descritto nell'equazione di van der Waals. Le leggi dei gas, basate su osservazioni sperimentali, trovano una spiegazione teorica grazie alla teoria cinetica dei gas. Quest'ultima applica le leggi della meccanica classica e della statistica alle particelle che costituiscono i sistemi gassosi.]

== Gas ideali e gas reali

Le particelle che compongono i gas possiedono un'energia cinetica tale da prevalere sulle forze di attrazione reciproca. Conseguentemente, i gas non hanno forma né volume propri. Le particelle tendono a diffondersi occupando tutto lo spazio disponibile, come nel caso di un recipiente chiuso, urtandosi continuamente tra loro e contro le pareti del contenitore. Gli urti contro le pareti producono la pressione esercitata dal gas.

Tutti i gas, indipendentemente dalla loro composizione chimica, presentano proprietà fisiche simili. Il loro comportamento rispetto a variazioni di pressione, volume e temperatura può essere descritto da leggi universali valide per tutte le sostanze gassose.

=== Il modello di gas ideale

Le leggi che definiscono le relazioni tra pressione, volume e temperatura fanno riferimento a un gas ideale, un modello teorico che soddisfa le seguenti condizioni:
- le particelle si muovono costantemente lungo traiettorie rettilinee guidate da fenomeni casuali;  
- il volume proprio delle particelle (covolume) è trascurabile rispetto al volume occupato dal gas;  
- non esistono interazioni tra le particelle del gas;  
- gli urti tra particelle sono elastici, quindi l'energia resta invariata.  

== Le leggi dei gas ideali

I gas reali si comportano in maniera molto simile al modello ideale a temperature e pressioni vicine a quelle ambientali. Tuttavia, a pressioni elevate e a basse temperature emergono significative deviazioni dalle leggi dei gas ideali. In queste condizioni, il volume proprio delle molecole e le interazioni attrattive tra di esse diventano elementi influenti nel comportamento del sistema.

=== Legge di Boyle

La legge di Boyle, chiamata anche legge isoterma, descrive la relazione tra pressione e volume di un gas. Quando la temperatura rimane costante, il volume di una determinata massa di gas è inversamente proporzionale alla pressione. L'espressione matematica della legge di Boyle, valida a temperatura (t) costante, si presenta così:

$ "PV" = "costante" $

dove P rappresenta la pressione e V il volume. Graficamente, la legge di Boyle può essere illustrata su un piano PV. Per una data temperatura, il comportamento del gas segue un'iperbole equilatera.

Definendo P#sub[1] e V#sub[1] come i valori iniziali della pressione e del volume, e con P#sub[2] e V#sub[2] come quelli finali, possiamo applicare la legge di Boyle con la formula:

$ "P"_1"V"_1 = "P"_2"V"_2 = "PV" $

Questa relazione consente di calcolare un parametro quando gli altri tre sono noti.

=== Prima legge di Gay-Lussac (legge di Charles)

La legge di Charles, o prima legge di Gay-Lussac (nota anche come legge isobara), stabilisce invece la relazione tra temperatura e volume. A pressione costante, il volume di una determinata massa di gas è direttamente proporzionale alla temperatura assoluta. L'espressione matematica della legge di Charles, valida a pressione (P) costante, è:

$ V/T = "costante" $

in cui V indica il volume e T la temperatura assoluta in Kelvin (K). Graficamente, questa legge può essere rappresentata da una semiretta. 

L'analisi di questa relazione ha portato a osservare che, a pressione costante, il volume del gas subisce una variazione pari a 1/273 del volume misurato a 0 °C per ogni grado centigrado di aumento o diminuzione della temperatura:

$ V = V_0 + V_0 space 1/273 space t = V_0 (1 + 1/273 space t) = \ = V_0 ((273 + t)/273) $

dove t è la temperatura in gradi centigradi. Poiché:

$ 273 + t (°C) = T (K) $

considerando infine che $V_0/273$ è una costante per una data massa di gas, otteniamo:

$ V/T = "costante" $

Passando da una situazione iniziale (1) a una finale (2), abbiamo:

$ V_1/T_1 = V_2/T_2 $

Quando sono dati tre dei parametri coinvolti, possiamo calcolare il quarto.

=== Seconda legge di Gay-Lussac

La seconda legge di Gay-Lussac, detta anche legge isocora, descrive la relazione tra pressione e temperatura. A volume costante, la pressione di una data massa di gas è direttamente proporzionale alla sua temperatura assoluta. L'espressione matematica di questa legge, valida a volume (V) costante, è:

$ P/T = "costante" $

Qui P rappresenta la pressione e T la temperatura assoluta in Kelvin (K). Anche in questo caso è possibile rappresentare la relazione graficamente tramite una semiretta. Si è giunti a questa formula osservando che, dato un volume costante, la pressione del gas varia di 1/273 del valore iniziale P_0 (misurato a 0 °C) per ogni grado centigrado di variazione:

$ P = P_0 + P_0 space 1/273 space t = P_0 ((273 + t)/273) $

da cui:

$ P/T = "costante" $

Passando da una condizione iniziale (1) a una finale (2), si giunge alla seguente espressione:

$ P_1/T_1 = P_2/T_2 $

=== L'equazione di stato dei gas ideali

Combinando queste tre leggi, si ottiene una formula generale che riassume i comportamenti dei gas:

$ (P V) / T = "costante" $

Pertanto, per una massa determinata di gas che passa dalla condizione iniziale 1 alla condizione finale 2, è possibile esprimere la relazione seguente:

$ (P_1 dot V_1)/T_1 = (P_2 dot V_2)/T_2 $

A questo punto è utile richiamare il concetto di volume molare, derivato dalla legge di Avogadro: una mole di gas, in condizioni standard (273 K o 0 °C e 1 atm), dette anche condizioni normali, occupa un volume di 22,414 litri. Ponendoci ora nelle condizioni standard (P#sub[0] = 1 atm, T#sub[0] = 273 K e V#sub[0] = 22,414 l), per una mole di gas si può scrivere:

$ (P_0 V_0) / T_0 = R = (1 dot 22.414)/(273.15) = \ = 0.0821 "atm" dot 1 dot K^(-1) dot "mol"^(-1) $

La costante universale dei gas, R, è definita in unità del Sistema Internazionale come R = 8,314 J ⋅ K#super[-1] ⋅ mol#super[-1]. Pertanto, per una mole di gas vale la relazione PV = RT, mentre per n moli si avrà:

$ P V = n R T $

Questa è l'equazione di stato dei gas ideali, che si applica con buona approssimazione anche ai gas reali alle condizioni ambientali di temperatura e pressione. Per condizioni differenti, si utilizza una versione modificata dell'equazione di stato, nota come equazione di van der Waals. Espressa in termini del numero di moli n, che si calcola come rapporto tra la massa m del gas (in grammi) e la sua massa molare M:

$ n = m / M $

sostituendo questa espressione nell'equazione di stato:

$ P V = m / M R T $

è possibile determinare il valore di m o di M per un certo gas, conoscendo le altre variabili. Inoltre, l'equazione di stato scritta in questa forma consente anche di calcolare la densità assoluta d di un gas con massa molare M, definita come rapporto tra la massa e il volume:

$ d = m / V $

Infatti:

$ d = (M P) / (R T) $

La densità relativa d#sub[rel] di un gas con massa molare M#sub[1] rispetto a un altro gas con massa molare M#sub[2], nelle stesse condizioni di pressione e temperatura, si esprime matematicamente come:

$ d_("rel") = d_1 / d_2 = M_1 / M_2 $

qui d#sub[1] e d#sub[2] rappresentano le densità assolute dei due gas. La densità relativa risulta indipendente dai valori di pressione e temperatura.

=== Legge di Dalton

La legge delle pressioni parziali di Dalton (1807) riguarda le miscele gassose: stabilisce che la pressione totale Ptot di una miscela è pari alla somma delle pressioni parziali esercitate da ciascun componente della miscela. La formula matematica della legge è:

$ P_("tot") = P_1 + P_2 + ... P_i $

dove P#sub[1], P#sub[2], ..., P#sub[i] indicano le pressioni parziali dei singoli componenti. La pressione parziale di un componente corrisponde alla pressione che quel gas eserciterebbe se fosse presente da solo nel volume occupato dalla miscela. Dalla relazione sull'equazione di stato dei gas si ottiene:

$ P_("tot") = n (R T)/V $

qui n = n#sub[1], n#sub[2], ..., n#sub[i] è il numero totale di moli presenti nella miscela. La pressione parziale P#sub[i] di ciascun componente si calcola inoltre come:

$ P_i = n_i (R T)/V $

Infine, la pressione parziale P#sub[i], di un componente i, può essere ricavata mediante la formula:

$ P_i = (n_i) / (n_("tot")) P_("tot") $

dove $n_i / n_("tot")$, ovvero la frazione molare del componente i, rappresenta il rapporto tra il numero di moli n#sub[i] della specie i e il numero totale n#sub[tot] di moli nella miscela.

=== Legge di Graham

La legge sull'effusione dei gas formulata da Graham nel 1846 descrive il comportamento dei gas che passano attraverso piccoli fori senza interazioni tra loro. In condizioni identiche di temperatura e pressione, i gas effondono con velocità inversamente proporzionali alla radice quadrata delle loro masse molari. L'espressione matematica della legge di Graham è:

$ v_1/v_2 = sqrt(M_2/M_1) $

in cui v#sub[1] e v#sub[2] corrispondono alle velocità di effusione dei due gas considerati, mentre M#sub[1] e M#sub[2] rappresentano le loro masse molari rispettive.

== Gas reali

Il volume disponibile per il movimento delle molecole di un gas reale è pari al volume V del recipiente, ridotto del volume occupato dalle molecole stesse, indicato con b (covolume). Inoltre, le forze di attrazione tra le molecole generano una pressione interna che diminuisce la pressione effettiva esercitata dal gas sulle pareti del recipiente, ovvero quella misurata sperimentalmente.

Per tenere conto di tali pertinenze, l'equazione di stato per i gas ideali viene corretta per i gas reali attraverso la formulazione di van der Waals. Quest'ultima, per una mole di gas, è espressa come segue:

$ (P + a / V^2) (V - b) = R T $

I parametri a e b della suddetta equazione sono costanti empiriche che variano a seconda del tipo di gas considerato. A specifiche condizioni di temperatura e pressione, l'intensità delle forze attrattive tra le molecole di un gas può diventare sufficiente a mantenere tali particelle unite, avviando così la transizione verso la fase liquida: un fenomeno noto come liquefazione.

La liquefazione può essere indotta aumentando la pressione (favorendo così l'avvicinamento delle molecole) o diminuendo la temperatura (riducendo la velocità delle molecole, rendendole più influenzabili dalle forze di attrazione). In particolare, esperimenti condotti nel 1870 hanno rivelato che ogni gas possiede una temperatura limite, denominata temperatura critica, al di sopra della quale il gas non può essere liquefatto, indipendentemente dalla pressione applicata.

La pressione necessaria per liquefare un gas alla temperatura critica è indicata come pressione critica. Al di sopra di tale temperatura, un aeriforme assume il comportamento di un gas; al di sotto, si tratta di un vapore.

=== Esempi di applicazione delle legge dei gas

==== Esempio 1 <senza_numero>
Una massa di gas contenuta in un recipiente di 5 l, alla pressione di 3 atm, viene trasferita a temperatura costante in un recipiente di 15 l. Qual è la pressione del gas?
- P#sub[1] = 3 atm
- P#sub[2] = ?
- V#sub[1] = 5 l
- V#sub[2] = 15 l
- T = costante

Si applica l'equazione di Boyle $P_1V_1 = P_2V_2$:

$ P_2 = (3 "atm" dot 5 space l)/(15 space l) = 1 "atm" $

==== Esempio 2 <senza_numero>

Calcolare il volume assunto a 70 °C da una massa di azoto che a 20 °C occupa un volume di 800 dm#super[3] se viene riscaldata a pressione costante.
- T#sub[1] = 20 °C = 293 K
- T#sub[2] = 70° C = 343 K
- P = costante
- V#sub[1] = 800 dm#super[3]
- V#sub[2] = ?

Si applica la legge di Charles $V_1/T_1 = V_2/T_2$:

$ V_2 = V_1/T_1 dot T_2 = (800 space "dm"^3) / (293 space K) dot 343 space K = 936,5 space "dm"^3 $

==== Esempio 3 <senza_numero>

Qual è la massa m (in grammi) di 20 l di idrogeno alla pressione di 750 mmHg e alla temperatura di 25 °C, supponendo ideale il comportamento del gas?

- P = 750 mmHg = $750/760$ atm = 0,987
- V = 20 l
- T = 25 °C = 298 K
- M#sub[H₂] = 2,016 $g/"mol"$

Si applica l'equazione di stato $P V = m/M R T$:

$ m = (P V) / (R T) M = \ = (0.987  "atm" dot space 20 space "l"  space dot  space 2.016 space "g"  space dot space "mol"^(-1)) / (0.0821 space l  space dot "atm" dot space K^(-1)  space dot space "mol"^(-1) space dot  space 298 space K) = \ = 1.627 space g $

==== Esempio 4 <senza_numero>

Una miscela formata da 1,2 moli di azoto e 2,3 moli di diossido di carbonio è contenuta in un recipiente di 60 l alla temperatura di 18 °C. Qual è la pressione totale del sistema e quali sono le pressioni parziali dei due gas?

- _n_ moli di N#sub[2] = 1,2
- _n_ moli di CO#sub[2] = 2,3
- _n_#sub[tot] = 1,2 + 2,3 = 3,5
- V = 60 l
- T = 18 °C = 291 K
- P#sub[tot] = ?
- P#sub[N₂] = ?
- P#sub[CO₂] = ?

Si calcola P#sub[tot] applicando l'equazione di stato $P V = n R T$:

$
  P_("tot") = (n_("tot") R T ) / (V)= \ = (3.5 "mol")/(60 space l) space 0.0821 space l dot  "atm" space K^(-1) dot "mol"^(-1) dot 291 space K = \ = 1.39 "atm"
$

Poi si applica la legge di Dalton $P_i = (n_i) / (n_("tot")) P_("tot")$:

$
  P_(N₂) = (1.2 "mol") / (3.5 "mol") dot 1.39 "atm" = 0.477 "atm" \ P_("CO"₂) = (2.3 "mol") / (3.5 "mol") dot 1.39 "atm" = 0.913 "atm"
$



== La teoria cinetica

La teoria cinetica dei gas, sviluppata nella seconda metà del XIX secolo da fisici quali C. Maxwell (1831-1879), L. Boltzmann (1844-1906), R. Clausius (1822-1888) e altri, rappresenta un'importante interpretazione delle leggi stabilite empiricamente sul comportamento dei gas. Essa si basa sull'assunto che il comportamento delle particelle costituenti i sistemi gassosi, caratterizzate da movimento continuo e caotico, possa essere descritto applicando le leggi della meccanica classica.

Tuttavia, considerando l'enorme numero di particelle presente anche in una minima quantità di gas, appare impossibile analizzare il comportamento di ciascuna unità individualmente. Si rende quindi necessario adottare un approccio statistico per descrivere le proprietà complessive del sistema gassoso. I valori ottenuti da tali analisi vengono espressi come medie statistiche: ad esempio, velocità media ($overline(v)$), energia cinetica media ($overline(E)_c$) e così via. Queste medie corrispondono ai valori più probabili nell'intervallo delle possibili distribuzioni.

Secondo la teoria cinetica, il prodotto PV (pressione per volume) è proporzionale all'energia cinetica media delle particelle:

$
overline(E)_c = 1/2 m overline(v)^2
$ 

Poiché PV è direttamente proporzionale alla temperatura assoluta T (PV = RT), ne deriva che la temperatura assoluta è anche proporzionale all'energia cinetica media delle particelle. Questo implica che un aumento della temperatura comporta un incremento della velocità media $overline(v)$ delle particelle, poiché la massa m delle medesime rimane invariata.

=== Le leggi dei gas in base alla teoria cinetica

- Legge di Boyle: a temperatura costante, l'energia cinetica media delle molecole del gas rimane invariata. Se il volume aumenta, le particelle si disperdono maggiormente, riducendo il numero di urti contro l'unità di superficie del recipiente nell'unità di tempo; ciò comporta una diminuzione della pressione. L'inverso avviene quando la pressione aumenta: in tal caso cresce il numero di urti e il volume si riduce. Viceversa se aumenta la pressione, aumenta il numero di urti nell'unità di tempo sull'unità di superficie, cioè diminuisce il volume.
- Legge di Charles: a pressione costante, un aumento della temperatura determina un incremento dell'energia cinetica media delle molecole. Per mantenere invariato il numero di urti nell'unità di superficie e nell'unità di tempo, deve verificarsi una dilatazione del volume del gas.
- Seconda legge di Gay-Lussac: quando il volume di un gas resta costante, un aumento della temperatura comporta un incremento dell'energia cinetica media delle particelle. Questo determina sia un aumento della forza degli urti delle particelle contro le pareti, sia un incremento del numero di tali urti per unità di superficie e di tempo. Di conseguenza, la pressione del gas aumenta.
#pagebreak()
#set page(fill: main_tecnologia.lighten(90%))
== Glossario <senza_numero>

/ Gas ideale: Modello teorico di gas descritto dalla teoria cinetica, in cui le particelle sono puntiformi, prive di interazioni e caratterizzate da urti completamente elastici. 

/ Gas reale: Gas che non segue perfettamente le leggi dei gas ideali a causa del covolume e delle forze di attrazione tra le molecole. 

/ Temperatura critica: Proprietà specifica di ogni gas; rappresenta la temperatura al di sopra della quale un aeriforme non può essere liquefatto, rimanendo un gas. Al di sotto di questa temperatura, gli aeriformi sono definiti come vapori.



