#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Equazioni differenziali <equazioni_differenziali>

#intro[
  In questo capitolo, ci concentriamo sull'applicazione del calcolo differenziale e, in particolare, sul calcolo integrale per risolvere diversi tipi di problemi. L'obiettivo è creare modelli matematici di fenomeni reali che, una volta risolti, permettano di spiegare tali fenomeni e formulare previsioni sulla loro evoluzione. Un modello matematico è una rappresentazione quantitativa di un fenomeno naturale, e l'uso delle derivate, che indicano le velocità istantanee di crescita delle varie quantità, ha consentito di sviluppare un'ampia varietà di modelli applicabili in vari campi scientifici e tecnici. La modellistica differenziale è cruciale per lo sviluppo di ogni scienza moderna e si basa essenzialmente sullo studio di equazioni contenenti derivate di funzioni che rappresentano leggi o relazioni tra le principali quantità coinvolte nell'analisi del fenomeno in questione.
]

Un esempio di modello differenziale semplice ma versatile riguarda la crescita: la velocità di crescita di una popolazione è direttamente proporzionale alla sua dimensione al tempo $t$. In formule, se indichiamo con $N(t)$ la dimensione della popolazione al tempo $t$, la sua velocità di crescita è espressa dalla derivata prima $N'(t)$. Pertanto, il modello si scrive come 

$ N'(t) prop N(t) $

ovvero come 

$ N'(t) = k dot N(t) $

Questa equazione semplice, contenente la derivata prima della funzione $N(t)$, modella sia la crescita che la decrescita della popolazione. Può essere utilizzata per rappresentare la crescita di una popolazione di batteri, la diffusione iniziale di un virus durante una pandemia o il decadimento radioattivo. La nostra intenzione è studiare in generale la teoria che consente di trovare soluzioni a alcune delle principali equazioni differenziali affrontate negli studi avanzati e discutere i principali modelli per comprendere meglio i fenomeni che descrivono.

Partiamo definendo correttamente la terminologia da usare quando tratteremo gli argomenti successivi. 

#definizione(title: "Equazione differenziale ordinaria di ordine n (o.d.e.)", label: <def-equazione-differenziale-ordine-n>)[Un'equazione della forma $ F(x, f(x), f'(x), ..., f^((n))(x)) = 0 $ si chiama equazione differenziale ordinaria di ordine $n$, spesso abbreviata in o.d.e#footnote[Dall'inglese, "ordinary differential equation".]. L'ordine dell'equazione corrisponde al grado massimo di derivazione della funzione $f(x)$. Di solito non espliciteremo $f(x)$ e le sue derivate; con la notazione comune dove $y = f(x)$, l'equazione differenziale diventa: $ F(x, y, y', ..., y^((n))(x)) = 0 $]

È importante non confondere l'ordine dell'equazione differenziale con il suo grado; quest'ultimo è l'esponente massimo che eleva la funzione o le sue derivate all'interno dell'equazione. 

#esempio[L'o.d.e. della $ (y')^3 - y + 1 = 0 $ è di primo ordine ma di terzo grado. Se il grado è uno, l'equazione viene definita lineare. L'o.d.e. vista prima per il modello di crescita della popolazione, con $y = N(t)$ e $x = t$, si riscrive come $y' = k dot y$, che può anche essere espressa come $y' - k dot y = 0$, ed è un'o.d.e. di primo ordine lineare.] 

#definizione(title: "Forma normale di un'o.d.e.", label: <def-forma-normale-ode>)[Si definisce forma normale un'o.d.e. scritta in modo che la derivata di massimo ordine possa essere esplicitata come relazione tra le derivate di ordini inferiori: $ y^((n))(x) = G(x, y, y', ..., y^((n-1))) $]

//
#definizione(title: "Soluzione (o integrale) di un'o.d.e", label: <def-soluzione-ode>)[Per soluzione (o integrale) di un'equazione differenziale ordinaria (o.d.e.), si intende una funzione che, insieme alle sue derivate fino all'ordine richiesto, soddisfa l'equazione data.] 

In generale, esistono diverse soluzioni, anzi,infinite. Possiamo distinguere tre tipi di soluzioni: particolari, generali e singolari. Le soluzioni generali sono tutte le funzioni che soddisfano l'o.d.e. e, dipendendo da uno o più parametri, sono infinite. Tra queste, imponendo delle condizioni iniziali, si seleziona una soluzione particolare. Tuttavia, possono esistere soluzioni che non si riescono a ottenere tramite l'integrazione dell'equazione differenziale e quindi non sono incluse nelle soluzioni generali: in questo caso, si parla di soluzioni singolari. 

#esempio[Per l'equazione $ y' = 4x sqrt(y) $ una delle soluzioni è $y = 0$. Il suo integrale generale, che calcoremo a breve, è $ y = (x^2 + c)^2 $

che non include il caso $y = 0$, indipendentemente da quale valore si scelga per $c$ in $RR$. Pertanto, $y = 0$ è una soluzione singolare dell'equazione appena scritta. ]

Generalmente ci interessa determinare le soluzioni generali e, se vi sono condizioni aggiuntive pari all'ordine dell'o.d.e., la soluzione particolare dell'equazione stessa. 

#definizione(title: "Funzione lipschitziana", label: <def-lipschitziana>)[Una funzione $f(x,y)$ si dice lipschitziana rispetto a $y$ in un insieme $D$ se esiste una costante $L > 0$, detta costante di Lipschitz, tale che

$ |f(x, y_1) - f(x, y_2)| <= L |y_1 - y_2| $

per ogni $(x, y_1), (x, y_2) in D$. Intuitivamente, la funzione non può variare "troppo velocemente" al variare di $y$: la condizione di Lipschitz è più forte della sola continuità e garantisce un controllo uniforme sulla crescita di $f$ rispetto alla seconda variabile.]

#definizione(title: "Problema di Cauchy", label: <def-problema-cauchy>)[Un'equazione differenziale con la funzione $f(x, y)$ definita su un intervallo $[a, b]$, insieme a tante condizioni iniziali pari all'ordine dell'equazione stessa, è chiamata problema di Cauchy (indicato con P.C.):

$ cases(y' = f(x, y), y(x_0) = y_0) $]

#definizione(title: "Teorema di esistenza e unicità locale (Cauchy-Lipschitz)", label: <def-cauchy-lipschitz>)[Se $f(x,y)$ è continua in un intorno di $(x_0, y_0)$ ed è lipschitziana rispetto a $y$ in tale intorno (@def-lipschitziana), allora esiste un intervallo $I$ contenente $x_0$ su cui il problema di Cauchy (@def-problema-cauchy) ammette una e una sola soluzione.

#dimostrazione()
Per il teorema fondamentale del calcolo, il problema differenziale è equivalente al problema integrale

$ y(x) = y_0 + integral_(x_0)^x f(t, y(t)) d t $

Si definisce l'operatore $T$ che associa a una funzione continua $y$ la funzione a destra dell'uguaglianza. Grazie alla condizione di Lipschitz, si dimostra che $T$ è una contrazione su un opportuno spazio di funzioni continue (metodo delle approssimazioni successive di Picard). Per il teorema delle contrazioni di Banach, ogni contrazione su uno spazio metrico completo ammette uno e un solo punto fisso: tale punto fisso è la soluzione del problema di Cauchy, ed è unica per costruzione.

Si dimostra quindi che, sotto condizioni piuttosto "ampie" (continuità e lipschitzianità), i P.C. ammettono sempre una soluzione unica a livello locale.]

#esempio[Verifichiamo le ipotesi del teorema per il problema di Cauchy

$ cases(y' = x + y^2, y(0) = 1) $

La funzione $f(x, y) = x + y^2$ è continua su tutto $RR^2$, quindi in particolare in un intorno di $(0, 1)$. Inoltre, la derivata parziale rispetto a $y$ è

$ (d f) / (d y) = 2y $

che è continua e quindi limitata su ogni intorno limitato di $(0, 1)$: questo garantisce che $f$ sia lipschitziana rispetto a $y$ in tale intorno (con $L$ pari al massimo di $|2y|$ nell'intorno scelto). Le ipotesi del teorema sono soddisfatte: il problema ammette dunque una e una sola soluzione locale, definita su un opportuno intervallo $I$ contenente $x_0 = 0$.

Si noti che il teorema garantisce l'esistenza solo locale: nulla si può dire a priori sull'intervallo massimale di esistenza della soluzione, che andrebbe studiato separatamente.]

== O.d.e. del primo ordine e a variabili separabili

Un'equazione differenziale del primo ordine, scritta in forma normale, ha la forma $y' = f(x, y)$. È più semplice da risolvere quando la funzione $f(x, y)$ dipende solo dalla variabile indipendente $x$, ovvero $f(x, y) = f(x)$. Integrando direttamente entrambi i membri dell'equazione, si ottiene la soluzione: 

$ y' = f(x) ==> y(x) = integral f(x) d x + c $

#esempio[Risolviamo l'equazione differenziale $ y' = x^2 + 3x $ Integrando entrambi i membri si ottiene:

$ y = integral (x^2 + 3x) d x + c = 1/3 x^3 + 3/2 x^2 + c $

Questa rappresenta la soluzione generale dell'o.d.e. data.]

Se la funzione $f(x, y)$ può essere scritta come prodotto di due funzioni che dipendono unicamente da $x$ e da $y$, l'equazione è detta a variabili separabili. Queste equazioni si risolvono separando le variabili e integrando ciascuna rispetto alla propria variabile. Se $f(x, y) = f_1(x) dot f_2(y)$, allora possiamo scrivere:

$ y' = f(x, y) <==> (d y) / (d x) = f_1(x) dot f_2(y) ==> 1 / (f_2(y)) dot d y = f_1(x) dot d x $

Integrando entrambi i lati di questa equazione, si ottiene la soluzione generale:

$ integral 1 / (f_2(y)) d y = integral f_1(x) d x + c $

#esempio[Per trovare la soluzione generale dell'equazione differenziale presentata nella sezione precedente, iniziamo separando le variabili:

$ 1 / sqrt(y) d y = 4x d x $

Integrando su entrambi i lati, otteniamo:

$ 2 sqrt(y) = 2x^2 + c $

da cui possiamo scrivere:

$ y = (x^2 + c)^2 $

dove $c$ è una costante arbitraria di integrazione.][Risolvere il modello di Malthus, noto anche come modello di crescita esponenziale:

$ N'(t) = k dot N(t) $

Anche qui separiamo le variabili:

$ 1 / N d N = k d t $

e otteniamo:

$ ln(|N|) = k t + c $

Ricordando la definizione di logaritmo, riscriviamo:

$ N = e^(k t + c), quad "ovvero" quad N(t) = e^c dot e^(k t) $

Se al tempo iniziale $t = 0$ la popolazione è $N(0) = N_0$, basta sostituire nella nostra uguaglianza per ottenere:

$ N(0) = e^c dot e^(k dot 0) ==> e^c = N_0 $

Pertanto, la soluzione è:

$ N(t) = N_0 dot e^(k t) $]

Il parametro $k$ caratterizza il tasso di crescita o decrescita della popolazione ed è spesso fornito sotto forma di tempo di duplicazione o tempo di dimezzamento. Questi tempi definiscono quanto una popolazione impiega a raddoppiare o dimezzarsi. Nel prossimo esempio vedremo come usare queste informazioni.

== O.d.e. lineari di primo ordine

Le equazioni differenziali lineari del primo ordine hanno molteplici applicazioni che apprezzeremo appena finiremo la discussione sulla loro soluzione. La forma generale di un'equazione di questo tipo è:

$ y' + p(x)y = q(x) $

Se $q(x) = 0$, l'equazione è detta omogenea e si può risolvere con il metodo della separazione delle variabili, scrivendo:

$ y' + p(x)y = 0 ==> 1 / y d y = -p(x) d x $

Integrando su entrambi i lati otteniamo:

$ ln |y| = -integral p(x) d x + c $

e ricordando la definizione del logaritmo e ponendo $e^c = k$:

$ y = k dot e^(-integral p(x) d x) $

Per le equazioni non omogenee, possiamo utilizzare il metodo della variazione delle costanti per creare la soluzione. Il ragionamento è questo: se $q(x) != 0$, quella costante $k$ diventa una funzione dipendente da $x$, ovvero $k = k(x)$. Se ciò è vero, possiamo determinare questa funzione applicando la definizione di soluzione generale dell'equazione differenziale. Procediamo quindi cercando una soluzione non omogenea del tipo#footnote[Dovuta a Lagrange.]:

$ y = k(x) dot e^(-integral p(x) d x) $

Sostituendo questa soluzione nell'equazione differenziale originale, l'equazione deve trasformarsi in un'identità:

$ D [k'(x) dot e^(-integral p(x) d x)] + p(x) dot [ k(x) dot e^(-integral p(x) d x)] = q(x) \ k'(x) dot e^(- integral p(x) d x) + cancel(k(x) dot e^(- integral p(x) d x)) dot [-p(x)] + cancel(p(x) dot k(x) dot e^(- integral p(x) d x)) = q(x) $

Così possiamo trovare $k(x)$, e completare la soluzione dell'equazione differenziale.

//
L'ultimo passaggio espone un'altra equazione differenziale ordinaria (o.d.e.) che permette un'integrazione immediata per la funzione $k(x)$. Risolvendola, otteniamo il risultato desiderato:

$ k'(x) dot e^(- integral p(x) d x) = q(x) quad <=> quad k'(x) = q(x) dot e^(integral p(x) d x) \ k(x) = integral [q(x) dot e^(integral p(x) d x)] d x + c $

Da questo punto in avanti, la soluzione generale di una prima o.d.e. lineare non omogenea è espressa come:

$ y = (integral [q(x) dot e^(integral p(x) d x)] d x + c) dot e^(-integral p(x) d x) $

Per costruire la soluzione è utile seguire questi passaggi:
+ calcolare $ P = integral p(x) d x $
+ determinare poi l'integrale $ Q = integral q(x) dot e^P d x $
+ assemblare la soluzione nel modo mostrato nella formula, semplificando se necessario: $ y = (Q + c) dot e^(-P) $

#esempio[Risolviamo l'o.d.e. $y' + cos(x) y - 2 cos(x) = 0$. È opportuno riscrivere l'o.d.e. nella forma standard identificando le funzioni $p(x)$ e $q(x)$:

$ y' + cos(x) y = 2 cos(x), quad p(x) = cos(x), quad q(x) = 2 cos(x) $

Procediamo secondo l'ordine indicato precedentemente:

+ a meno di una costante additiva, che è opportuno ignorare: $ P = integral cos(x) d x = sin(x) $
+ si procede quindi con: $ Q = integral 2 cos(x) dot e^(sin(x)) d x = 2 e^(sin(x)) $
+ quindi la soluzione è: $ y = (2 e^(sin(x)) + c) dot e^(-sin(x)) = 2 + c dot e^(-sin(x)) $]

== O.d.e. lineari del secondo ordine

Un'equazione differenziale lineare del secondo ordine può essere scritta nella forma standard:

$ y'' + a(x)y' + b(x)y = c(x) $

Se $c(x) = 0$, l'equazione è considerata omogenea. In questo contesto, ci concentriamo su casi in cui le funzioni $a(x)$, $b(x)$, e $c(x)$ sono costanti. L'importanza di queste equazioni risiede nella loro applicazione alla fisica: ad esempio, la seconda legge della dinamica di Newton si esprime come un'o.d.e. del secondo ordine, in cui l'accelerazione (derivata seconda dello spazio rispetto al tempo) gioca un ruolo centrale.

In generale, un'equazione differenziale del secondo ordine non deve essere lineare: il moto oscillatorio di un pendolo semplice, ad esempio, non segue una descrizione lineare precisa. Tuttavia, per piccole oscillazioni si può approssimare attraverso una linearizzazione dell'equazione originaria. Facciamo ora un passo avanti verso la risoluzione di tali equazioni sfruttando le proprietà della funzione esponenziale.

Consideriamo come primo caso una semplice o.d.e. lineare omogenea del secondo ordine con coefficienti costanti. Per estendere il discorso a casi non omogenei, si somma alla soluzione generale omogenea una soluzione particolare ottenuta tramite esperienza. Discutiamo ora la soluzione di un'equazione che assume la forma:

$ y'' + a y' + b y = 0 $

//
Supponendo che il problema possa essere risolto tramite una funzione esponenziale, ipotizziamo che la soluzione sia della forma $y = e^(lambda x)$, dove $lambda$ è un parametro da determinare. Dalla definizione di soluzione di un'equazione, sappiamo che sostituendo questa espressione nell'equazione originale, essa deve risultare valida. Nel caso in questione, arriviamo a:

$ lambda^2 e^(lambda x) + a lambda e^(lambda x) + b e^(lambda x) = 0 $

ovvero:

$ e^(lambda x) (lambda^2 + a lambda + b) = 0 $

Poiché la funzione esponenziale è strettamente positiva, il contenuto della parentesi deve essere pari a zero:

$ lambda^2 + a lambda + b = 0 $

Questa è un'equazione algebrica semplice#footnote[È di secondo grado, poiché l'equazione da cui è stata derivata è di secondo ordine. Se l'equazione differenziale ordinaria fosse stata di ordine $n$, anche l'equazione algebrica associata avrebbe avuto grado $n$.], nota come equazione caratteristica associata all'equazione differenziale. Il parametro $lambda$ viene determinato risolvendo questa equazione caratteristica. Secondo la teoria delle equazioni di secondo grado, il numero delle soluzioni dipende dal discriminante#footnote[Ricordiamo che per un'equazione di secondo grado completa del tipo $a x^2 + b x + c = 0$, il delta è definito come: $∆ = b^2 - 4a c$.]:

$ Delta = a^2 - 4b $

Se questa quantità è positiva, ci saranno due soluzioni, e quindi due valori di $lambda$ che determinano la soluzione dell'equazione differenziale. Se $y_1 = e^(lambda_1 x)$ e $y_2 = e^(lambda_2 x)$ sono soluzioni della stessa equazione differenziale, qualsiasi loro combinazione lineare sarà anch'essa una soluzione#footnote[O meglio detto, ha "una soluzione con molteplicità due".]. Pertanto, la soluzione generale dell'equazione differenziale è:

$ Delta > 0 ==> k_1 e^(lambda_1 x) + k_2 e^(lambda_2 x) $

dove $k_1$ e $k_2$ sono numeri reali arbitrari e $lambda_1, lambda_2$ sono le soluzioni dell'equazione caratteristica.

Se $Delta = 0$, l'equazione caratteristica ha una soluzione unica. In questo caso, una sola funzione esponenziale risulta direttamente essere la soluzione dell'equazione differenziale di partenza ($y_1 = e^(lambda x)$), ma si può verificare facilmente che una seconda soluzione sia $y_2 = x e^(lambda x)$. La loro combinazione lineare è ancora una soluzione:

$ Delta = 0 ==> k_1 e^(lambda x) + k_2 x e^(lambda x) $

con $k_1, k_2 in RR$ e $lambda$ soluzione dell'equazione caratteristica.

Se $Delta < 0$, l'equazione caratteristica non ha soluzioni nel campo reale, quindi per ottenerla è necessario operare all'interno del campo dei numeri complessi, già trattati nella @numeri_complessi. 

//? Parte rimossa perchè già trattata in un'altra sezione

Le soluzioni dell'equazione sono le due radici complesse coniugate: $ lambda_(1,2) = -a/2 minus.plus i sqrt(|Delta|)/2 $

Per comodità, definiamo $alpha = -a/2$ e $beta = sqrt(|Delta|)/2$. Pertanto, le soluzioni dell'equazione differenziale ordinaria (o.d.e.) sono della forma $y_1 = e^(lambda_1 x)$ e $y_2 = e^(lambda_2 x)$, che riscritte diventano $y_1 = e^((alpha - i beta)x)$ e $y_2 = e^((alpha + i beta)x)$. Queste possono essere espresse come:

$ y_1 = e^(alpha x) dot e^(-i beta x), quad y_2 = e^(alpha x) dot e^(i beta x) $

Grazie alle formule di de Moivre, otteniamo:

$ y_1 = e^(alpha x) dot [cos(-beta x) + i sin(-beta x)] $

e 

$ y_2 = e^(alpha x) dot [cos(beta x) + i sin(beta x)] $

ovvero:

$ y_1 = e^(alpha x) [cos(beta x) - i sin(beta x)], quad y_2 = e^(alpha x) [cos(beta x) + i sin(beta x)] $

Poiché una qualsiasi combinazione lineare di soluzioni è ancora una soluzione, la soluzione generale è del tipo $C_1 dot y_1 + C_2 dot y_2$. Svolgendo alcuni passaggi possiamo riscrivere questa combinazione come:

$ C_1 e^(alpha x) [cos(beta x) - i sin(beta x)] + C_2 e^(alpha x) [cos(beta x) + i sin(beta x)] \
  = e^(alpha x) [(C_1 + C_2) cos(beta x) + i(C_2 - C_1) sin(beta x)] $

Se scegliamo $C_1 = 1$ e $C_2 = 1$, la soluzione diventa $2e^(alpha x) cos(beta x)$. Con $C_1 = -1$ e $C_2 = 1$, la soluzione si riduce a $2e^(alpha x) i sin(beta x)$. Questo dimostra che le combinazioni lineari di $e^((alpha + i beta)x)$ e $e^((alpha - i beta)x)$ sono le stesse generate dalle funzioni reali:

$ e^(alpha x) cos(beta x), quad e^(alpha x) sin(beta x) $

Di conseguenza, la soluzione generale, per il caso in esame, può essere espressa utilizzando esclusivamente le combinazioni lineari delle due funzioni reali: quando $Delta < 0$, si ha

$ e^(alpha x) [k_1 cos(beta x) + k_2 sin(beta x)], $

con $k_1, k_2$ come parametri reali qualsiasi, mentre $alpha, beta$ rappresentano rispettivamente la parte reale e quella immaginaria delle soluzioni $lambda_(1,2)$ dell'equazione caratteristica associata.

Passiamo ora a degli esempi di risoluzione di o.d.e. del secondo ordine, lineari, omogenee a coefficienti costanti.

#esempio[Risolviamo la seguente o.d.e.:

$ y'' + 2y' - 3y = 0 $

L'equazione caratteristica associata è:

$ lambda^2 + 2 lambda - 3 = 0 $

che ha due soluzioni reali: $lambda_1 = -3$ e $lambda_2 = 1$.

Così, la soluzione generale dell'equazione è:

$ y(x) = k_1 e^(-3x) + k_2 e^x. $][Risolvere l'equazione differenziale ordinaria: $y'' + 4y' + 4y = 0$.

L'equazione caratteristica associata è:

$ lambda^2 + 4 lambda + 4 = 0 $

Poiché il primo membro è il quadrato del binomio $(lambda + 2)^2$, essa ammette una soluzione per $lambda = -2$, radice con molteplicità due. Pertanto, la soluzione generale dell'equazione differenziale ordinaria è:

$ y(x) = k_1 e^(-2x) + k_2 x e^(-2x). $][Determinare la soluzione generale dell'equazione differenziale ordinaria: $y'' - 2y' + 5y = 0$.

_Soluzione._ In questo caso, l'equazione caratteristica ha un discriminante negativo ed è descritta da:

$ lambda^2 - 2 lambda + 5 = 0 $

Il discriminante è:

$ Delta = -16 < 0 $

Le soluzioni complesse coniugate dell'equazione caratteristica sono:

$ lambda_(1,2) = 1 minus.plus i 2 $

Quindi, la parte reale è $alpha = Re(lambda_(1,2)) = 1$, mentre la parte immaginaria è $beta = Im(lambda_(1,2)) = 2$. Pertanto, la soluzione cercata dell'equazione differenziale ordinaria è:

$ y(x) = [k_1 cos(2x) + k_2 sin(2x)] e^x $]