#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Lo studio della cinematica, ovvero quella branca della meccanica che descrive il moto dei corpi indipendentemente dalle cause che lo generano, suddivide i movimenti principali in due categorie: il moto rettilineo, in cui la traiettoria è una linea retta (analizzato in questo capitolo), e il moto curvilineo, caratterizzato da traiettorie curve (trattato nel capitolo successivo).

Un corpo si considera in moto se la sua posizione nello spazio cambia con il trascorrere del tempo rispetto a un sistema di riferimento. La grandezza che descrive la variazione della posizione nell'unità di tempo è chiamata velocità. Nel moto rettilineo uniforme, la velocità rimane costante lungo tutto il movimento, mentre nel moto rettilineo non uniforme essa subisce variazioni.

Le variazioni di velocità vengono rappresentate attraverso una grandezza nota come accelerazione; quando un moto rettilineo presenta accelerazione costante, si parla di moto uniformemente accelerato.

Le leggi del moto derivate dalla cinematica sono valide esclusivamente nel contesto della fisica classica, cioè quando le velocità considerate sono nettamente inferiori alla velocità di propagazione della luce (circa 300.000.000 m/s). Inoltre, tali leggi si applicano al moto di corpi puntiformi, ossia con dimensioni geometriche trascurabili.]

== Sistema di riferimento e coordinate

Per analizzare il movimento di un punto nello spazio, è indispensabile definire un sistema di riferimento inequivocabile, rispetto al quale effettuare l'analisi dei diversi tipi di moto.

Una volta stabilito il sistema di riferimento, la posizione del punto al suo interno può essere espressa matematicamente mediante un insieme ordinato di numeri chiamati coordinate.

Il sistema di riferimento più comune è composto da due o tre rette perpendicolari tra loro, denominate assi cartesiani, che condividono un unico punto in comune, noto come origine (solitamente indicato con la lettera O). Tale configurazione definisce uno spazio cartesiano, a due o a tre dimensioni.

La posizione di un punto _P_ all'interno dello spazio cartesiano viene determinata proiettando un segmento perpendicolare da _P_ su ciascun asse; la lunghezza calcolata dal punto origine fino alla perpendicolare su ogni asse rappresenta il valore della rispettiva coordinata cartesiana.

Nel caso bidimensionale, gli assi sono indicati con le lettere _x_ e _y_, e le coordinate corrispondenti del punto P sono chiamate ascissa e ordinata, indicate rispettivamente con _P#sub[x]_ e _P#sub[y]_ oppure con la notazione _P(x, y)_.

In uno spazio tridimensionale si aggiunge un terzo asse, _z_, e quindi al punto _P_ vengono associate le coordinate _P#sub[x]_, _P#sub[y]_ e _P#sub[z]_ oppure, in forma compatta, la terna _P(x, y, z)_. In chiave vettoriale, è possibile tracciare il vettore distanza d, orientato lungo la retta che collega l'origine al punto _P_ e con direzione verso quest'ultimo. Il modulo del vettore viene calcolato combinando le coordinate di _P_ secondo specifiche regole matematiche.

Una volta definito il sistema di riferimento appropriato, se il punto varia la posizione in maniera continua nel tempo, le sue coordinate seguiranno una legge temporale espressa come _x(t)_, _y(t)_ e _z(t)_, dipendendo quindi da una variabile temporale t e descrivendo una relazione matematica nota come funzione.

La relazione che lega la variazione della posizione del punto nello spazio al trascorrere del tempo è chiamata legge oraria. Il percorso formato dai punti occupati dal corpo in movimento prende invece il nome di traiettoria del moto.

#note(bottom)[== *🧩* Il concetto di funzione <senza_numero>

Il termine funzione in analisi matematica descrive la relazione secondo la quale un elemento dipende da un altro secondo un criterio ben definito. Le funzioni più semplici riguardano una sola variabile, generalmente identificata con _x_ (variabile indipendente) e _y_ (variabile dipendente).

Assegnando alla variabile _x_ una serie di valori arbitrari appartenenti al suo dominio, è possibile calcolare i corrispondenti valori di _y_, determinati dalla legge della funzione. L'equazione:

$ y = f(x) $ 

esprime questa relazione e si legge "y uguale effe di x". Il dominio è l'insieme dei valori che _x_ può assumere, mentre i valori corrispondenti che _y_ produce costituiscono il codominio.

Rappresentando graficamente la funzione in un piano cartesiano ortogonale, dove le variabili  _x_  e  _y_  corrispondono rispettivamente all'ascissa e all'ordinata, si possono tracciare i punti  P#sub[1], P#sub[2], ... . Le coordinate di questi punti ( x#sub[1], y#sub[1] ,  x#sub[2], y#sub[2], ...) soddisfano la relazione funzionale  _y = f(x)_ .

L'insieme dei punti legati dalla funzione forma il grafico della relazione: per esempio, per _y = x_, il grafico è una retta passante per l'origine con inclinazione di 45° rispetto agli assi. Per  _y = x#super[2]_ , invece, il grafico assume l'aspetto di una parabola anch'essa passante per l'origine, con asse di simmetria coincidente con l'asse delle ordinate (_y_).]

== Il moto rettilineo uniforme

Il moto rettilineo uniforme rappresenta il tipo di movimento più semplice per un corpo, dove la traiettoria corrisponde a una linea retta e la legge oraria dipende esclusivamente dalla variazione nel tempo di una delle tre coordinate spaziali, solitamente indicata con la coordinata _x_.

La posizione del punto _P_, in ogni istante, può essere descritta mediante un vettore spostamento caratterizzato da:
- una direzione che coincide con la retta lungo la quale si sviluppa il moto;
- un verso che segue il senso del movimento di _P_;
- un'intensità o modulo pari alla distanza di _P_ dall'origine del sistema di riferimento.

=== La velocità

Consideriamo due posizioni, x#sub[1] e x#sub[2], appartenenti al punto P in due istanti di tempo successivi, t#sub[1] e t#sub[2]. Durante l'intervallo temporale t#sub[2] - t#sub[1], si definisce la velocità media (v#sub[m]) come il rapporto tra lo spazio percorso (x#sub[2] - x#sub[1]) e il tempo impiegato per percorrerlo (t#sub[2] - t#sub[1]):

$ 
  v_m = ((x_1 - x_2))/((t_1 - t_2))
$

In fisica, le variazioni delle grandezze come spazio (_x_) e tempo (_t_) vengono spesso indicate con la lettera greca Δ (delta), per rappresentare un incremento. Le differenze _x#sub[2] - x#sub[1]_ e _t#sub[2] - t#sub[1]_ possono quindi essere espresse rispettivamente come _Δx_ e _Δt_. La velocità media assume così la forma:

$ 
  v_m = (Delta x)/(Delta y)
$

dove $(Delta x)/(Delta y)$ è il rapporto incrementale e risulta essere costante nei vari intervalli di tempo considerati se il moto è rettilineo uniforme. In tal caso, il punto _P_ percorre spazi uguali in intervalli di tempo uguali, mantenendo una velocità costante. Tale velocità è rappresentata dal vettore *v* con direzione lungo la traiettoria, verso nel senso del movimento e intensità che corrisponde al valore della velocità:

$ v = v_m $

In generale, per il moto rettilineo uniforme, la velocità può essere espressa tramite una relazione semplice e costante tra lo spazio percorso (_s_) e il tempo impiegato (_t_):

$ v = (space s space) /t $

Da questa relazione si deduce la legge oraria del moto rettilineo uniforme:

$ s = v t $

Nel caso in cui, all'istante iniziale _t = 0_, il corpo si trovi in una posizione iniziale s₀ diversa dall'origine del sistema di riferimento, la legge oraria si estende in forma più generale:

$ s = s (t) = s_0 + v t $

Se rappresentata graficamente su un piano cartesiano, con l'asse delle ascisse dedicato al tempo (_t_) e quello delle ordinate allo spazio (s), questa legge dà origine a una retta che interseca l'asse delle ordinate nel punto di coordinate (0, _s#sub[0]_). La velocità di un corpo ha le dimensioni di una lunghezza divisa per un intervallo temporale.

Nel Sistema Internazionale (SI), l'unità di misura della velocità è il metro al secondo (m/s), definita come la velocità di un corpo che percorre 1 metro di spazio in 1 secondo. Questa unità è indicata con il simbolo m/s.

Un'altra unità di misura comunemente utilizzata è il chilometro all'ora (km/h), con la relazione: 1 km/h = 0,278 m/s. Da qui deriva che: 
1 m/s = 3,6 km/h.

== Il moto rettilineo non uniforme

Quando il rapporto $italic((Delta x)/(Delta t))$, calcolato in istanti successivi, non risulta più costante e il punto _P_ percorre distanze diverse in intervalli di tempo uguali, si parla di moto rettilineo non uniforme. In questo caso, la velocità dipende dai tempi considerati e viene definita attraverso il concetto di velocità istantanea.

=== La velocità istantanea

La velocità istantanea del punto _P_ corrisponde alla velocità che il corpo in movimento possiede nell'istante in cui si trova esattamente nella posizione data dalla coordinata _x#sub[1]_. Per determinarla, è necessario effettuare un'operazione matematica basata sul limite del rapporto incrementale. Questo procedimento consiste nel considerare intervalli di tempo _t_ sempre più piccoli fino a far convergere la coordinata _x#sub[2]_ verso _x#sub[1]_, annullando lo spazio percorso lungo la retta.

La velocità istantanea del punto _P_ nella posizione _x#sub[1]_ risulta quindi dal valore limite del rapporto $italic((Delta x)/(Delta t))$ quando _Δt_  tende a zero. Secondo il principio matematico della derivata, questa operazione corrisponde alla derivata della legge oraria  _s = s(t)_, che descrive lo spazio  _s_ in funzione del tempo  _t_ . Pertanto, è possibile utilizzare il calcolo differenziale per definire le principali grandezze cinematiche.

=== L'accelerazione

In un moto caratterizzato da una velocità non costante, si introduce la grandezza vettoriale chiamata accelerazione (_a_), che ha la stessa direzione della traiettoria rettilinea e il verso concorde con il moto. Il modulo dell'accelerazione permette di descrivere come varia la velocità nel corso del tempo.

Analogamente al moto uniforme, inizialmente è possibile definire un'accelerazione media (a#sub[m]), che rappresenta il rapporto tra la variazione della velocità e l'intervallo di tempo impiegato per tale variazione. 

$ 
  a_m = ((v_2 - v_1))/((t_2 - t_1)) = (Delta v)/(Delta t)
$

Qualora tale rapporto rimanga costante, si parlerà di moto rettilineo uniformemente accelerato. Altrimenti, si può introdurre il concetto di accelerazione istantanea determinabile come limite del rapporto incrementale $italic((Delta v)/(Delta t))$.

L'accelerazione ha come unità di misura uno spazio diviso per un tempo al quadrato. Nel Sistema Internazionale, si esprime in  m/s^2 , rappresentando l'accelerazione di un corpo la cui velocità aumenta di 1  m/s  in un intervallo di 1 secondo. Questa unità si legge "metro al secondo quadrato".

=== La legge del moto rettilineo uniformemente accelerato

La legge oraria del moto rettilineo uniformemente accelerato, relativo al caso dell'accelerazione costante, si ottiene analizzando il movimento di un punto _P_ lungo una retta. Supponiamo che, in un intervallo di tempo _t_, il punto _P_ passi da una velocità iniziale  _v#sub[0] = 0_, quando  _t = 0_ , a una velocità finale  _v#sub[t]_  al termine dell'intervallo.

Considerando il concetto di velocità media, basato sul valore medio di una serie di misurazioni, si può affermare che _P_ avrà una velocità media pari alla metà della velocità finale _v#sub[t]_.

$ 
  v_m = ((v_0 + v_t))/2 = 1/2 v_t
$

Questo caso può essere quindi equiparato a quello di un moto rettilineo uniforme, ossia con velocità costante pari a  $v_t / 2$ . Applicando la relativa formula del moto rettilineo uniforme, si arriva alla seguente relazione:

$ 
  s = (1/2 v_t)t
$

Combinando tale espressione con la definizione della velocità finale nel moto uniformemente accelerato:

$ 
  v_t = a t
$

si ricava la legge oraria generale del moto rettilineo uniformemente accelerato:

$ 
  s = 1/2 a t^2
$

Se il punto _P_ all'istante iniziale _t = 0_, ha già una velocità iniziale v#sub[0] diversa da zero, le precedenti relazioni, considerando tale velocità iniziale, assumono la forma definitiva di:

$ 
  v_m &= ((v_0 + v_t))/2 \ s &= 1/2 (v_0 + v_t)t = 1/2 v_0 t + 1/2 v_t t
$

Ma, poiché:

$ 
  a = ((v_t - v_0))/t
$

si ottiene che:

$ 
  v_t = v_0 + a t
$

e perciò:

$
 s = 1/2 v_0 t + 1/2 (v_0 + a t)t = 1/2 v_0 t + 1/2 v_0 t + 1/2 a t^2
$

ovvero:

$ 
  s = 1/2 a t^2 + v_0 t
$

Nel contesto più generale, se _P_ occupa una posizione iniziale  s#sub[0]  diversa dall'origine, allora la legge oraria completa è espressa come segue:

$ 
  s = s(t) = 1/2 a t^2 + v_0 t + s_0
$



Nel piano cartesiano, questa legge oraria è rappresentata da una curva di secondo grado, nota con il termine parabola.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Accelerazione: Grandezza vettoriale che, in un determinato sistema di riferimento, descrive la variazione temporale della velocità di un punto _P_. Nel Sistema Internazionale di unità di misura, essa è espressa in metri al secondo quadrato (m/s²).  

/ Coordinate: Costituiscono un insieme ordinato di numeri che identificano la posizione di un punto _P_ nello spazio, a condizione che sia stato previamente definito un sistema di riferimento adeguato rispetto al quale misurare le distanze. Si definiscono cartesiane quando, nel contesto di un piano bidimensionale o di uno spazio tridimensionale, rappresentano le distanze lineari di un punto _P_ da due o tre rette specifiche, note come assi cartesiani.  

/ Legge oraria: Espressione matematica che descrive la variazione temporale delle coordinate di un punto P in movimento entro un dato sistema di riferimento. La serie delle posizioni occupate da _P_ nel tempo determina quella che viene chiamata traiettoria.  

/ Velocità: Grandezza vettoriale che quantifica il rapporto tra la variazione della posizione di un punto, in relazione a uno specifico sistema di riferimento, e l'intervallo temporale in cui tale variazione si verifica. Nel Sistema Internazionale, il modulo della velocità viene misurato in metri al secondo (m/s).   