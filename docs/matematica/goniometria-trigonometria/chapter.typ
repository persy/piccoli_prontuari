#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

= Goniometria e trigonometria <goniometria_trigonometria>

#intro[Le funzioni elementari trattate finora, come potenze, esponenziali e logaritmi, sono state introdotte con un certo rigore grazie alle proprietà dei numeri reali. Tuttavia, per le funzioni circolari o trigonometriche#footnote[In questo contesto, i termini "funzioni circolari" e "funzioni trigonometriche" verranno usati come sinonimi. Tuttavia, è bene notare che alcuni fanno una distinzione tra i due: le funzioni circolari si riferiscono al caso in cui la variabile è un numero reale, mentre le funzioni trigonometriche implicano che la variabile sia un angolo o un arco.], che saranno discusse in questo capitolo, la situazione è diversa. Per una presentazione elementare di queste funzioni, ci si deve riferire a concetti intuitivi ma difficili da giustificare rigorosamente, come il senso orario e antiorario o la direzione lungo una circonferenza.]

In realtà, le funzioni circolari hanno un legame stretto con le funzioni esponenziali, ma questo collegamento diventa evidente solo quando si lavora con i numeri complessi, il che va oltre lo scopo di questo testo. Di conseguenza, la nostra trattazione sarà piuttosto semplice e anche i grafici che presenteremo serviranno più come assiomi, anche se geometricamente si può verificare che sono corretti.

== Angoli e loro misura

Nella geometria euclidea piana abbiamo definito un angolo come la porzione di piano determinata da due semirette con un'origine comune, unite alle semirette stesse. Tuttavia, in trigonometria è utile avere una definizione che comprenda anche angoli maggiori di un giro completo o negativi. Per questo motivo, iniziamo orientando il piano, stabilendo la direzione delle rotazioni. Nel contesto di un sistema di coordinate cartesiane, consideriamo come positivo il senso di rotazione che porta il semiasse positivo delle ascisse a sovrapporsi a quello positivo delle ordinate creando un angolo convesso (retto se il sistema è ortogonale e monometrico). Generalmente, il senso positivo sarà antiorario, mentre l'opposto, ossia quello orario, sarà negativo.

// grafico

Passando a un esempio concreto, consideriamo un angolo $A V B$ e uno dei suoi lati, ad esempio $V A$. Questo angolo può essere visto anche come la regione del piano tracciata dalla semiretta scelta durante una rotazione intorno al vertice per sovrapporsi all'altro lato, in questo caso $V B$.

// grafico

Nell'ambito della geometria euclidea, il sistema non subirebbe alcun cambiamento se scegliessimo il lato $V B$ e lo facessimo ruotare nel verso opposto fino a sovrapporsi al lato $V A$. Tuttavia, una volta orientato il piano, possiamo confrontare il senso di rotazione con quello definito come positivo e distinguere le due situazioni differenti ottenute dalla rotazione di $V A$ verso $V B$ e di $V B$ verso $V A$. Se il verso positivo è quello antiorario, la prima situazione rappresenta un angolo positivo e la seconda un angolo negativo, permettendoci di parlare di angolo orientato. In questo modo, attribuiamo un ordine ai due lati dell'angolo, distinguendo un primo e un secondo lato. Di conseguenza, nel contesto della geometria elementare, un angolo funge da "supporto" per due angoli orientati in direzioni opposte.

Sostituendo il concetto tradicional di angolo come parte di piano con quello di angolo come rotazione di una semiretta attorno alla sua origine, possiamo immaginare che queste rotazioni superino un angolo giro sia in senso positivo che in senso negativo, similmente a un'asta rigida incernierata a un estremo. Pertanto, esistono anche angoli che superano un angolo giro, cosa che riveste grande importanza nello studio della trigonometria. Per differenziare questi angoli da quelli euclidei, si potrebbe adottare una terminologia diversa, come angolo generalizzato. In realtà, mantenere la stessa nomenclatura non crea confusione, e così possiamo stabilire la seguente definizione.

*Definizione 11.1.* Data una semiretta con origine $V$, si definisce angolo la rotazione della semiretta attorno alla sua origine fino a sovrapporsi a una seconda semiretta con la stessa origine. Le due semirette si chiamano lati dell'angolo: rispettivamente primo e secondo lato, e la loro comune origine è il vertice. Se la rotazione avviene in linea con l'orientamento scelto sul piano, l'angolo viene definito positivo; altrimenti è negativo.

Anche questi angoli generalizzati vengono indicati con le lettere minuscole dell'alfabeto greco. Notiamo inoltre che due semirette nel piano, aventi la stessa origine senza considerare l’ordine, individuano infiniti angoli positivi e negativi, alcuni dei quali sono rappresentati nella figura 11.3 dove si osserva che nei primi due casi il primo lato è $V A$, mentre nel terzo è $V B$.

Si sottolinea inoltre che, fissato un ordine per due semirette con comune origine $V$, la prima semiretta può sovrapporsi alla seconda in diverse circostanze: inizialmente attraverso una rotazione in un senso e successivamente mediante ulteriori rotazioni complete (un angolo giro) sia in un senso che nell'altro. La figura 11.4 illustra questo concetto differenziandosi dalla figura 11.3 in cui la rotazione parte sempre dalla semiretta identificata come primo lato.

// grafici

Con questa nuova definizione di angolo, la somma e la sottrazione di due angoli avranno sempre significato, senza alcuna limitazione. Per la misurazione degli angoli si può continuare a utilizzare il grado sessagesimale: ora gli angoli potranno avere una qualunque misura positiva o negativa in gradi sessagesimali, e alla somma o sottrazione di angoli corrisponderà la somma o sottrazione delle rispettive misure. 

In base alle osservazioni fatte, due semirette, date in un certo ordine, individuano una famiglia di angoli con una misura determinata, compresa tra $-360°$ e $360°$, a cui si può aggiungere un multiplo intero arbitrario di $360°$. Un esempio è illustrato nella figura 11.4, in cui, se la misura del primo angolo a sinistra è $alpha$ (con $0° < alpha < 360°$), quello al centro avrà una misura di $alpha + 360°$, mentre quello a destra sarà $alpha - 360°$. Generalmente, e lo faremo anche in seguito, in assenza di ulteriori specificazioni, parlando dell'angolo determinato da due semirette aventi l'origine in comune, faremo sempre riferimento all'angolo positivo minore di un angolo giro, cioè l'angolo nel senso della geometria euclidea.

// grafici

*Osservazione 11.3.* È fondamentale tenere a mente che, essendo $pi$ un numero irrazionale, approssimato come $3.14159...$, tutti gli angoli presenti nella tabella 11.1 e nelle figure 11.5, 11.6 e 11.7, ad eccezione dell’angolo nullo, possiedono una misura in radianti espressa da un numero irrazionale, nello specifico trascendente. Questo può essere considerato uno svantaggio nel confrontare la misura in radianti con quella in gradi sessagesimali, poiché gli angoli fondamentali nella geometria piana, quando espressi in gradi sessagesimali, vengono rappresentati da numeri interi. Tuttavia, la misura in radianti offre una serie di vantaggi evidenti negli studi successivi di analisi che superano ampiamente questa difficoltà iniziale.

Partendo dalla proporzione indicata nell’equazione (11.2), si arriva facilmente a stabilire che un angolo di $1$ radiante corrisponde approssimativamente a $57.2978°$, ovvero circa $57° 17' 45''$. Di contro, una misura di $1°$ in radianti è circa $0.0175$.

Nonostante questi angoli non siano comunemente usati nella geometria, risulta utile saper valutare sulla circonferenza goniometrica la posizione di angoli misurati in radianti da numeri interi. La figura 11.8 visualizza angoli di $1$, $2$, $3$, $4$, $5$, $6$ radianti sulla circonferenza goniometrica. Dal momento che interessa anche la circonferenza rettificata, sull’asse delle ascisse di un sistema cartesiano ortogonale sono indicati i multipli interi di mezzo radiante e, per confronto, anche i valori degli angoli multipli di $pi/2$.

Nell’analisi delle proprietà delle funzioni circolari, il concetto di angolo ha un’importanza relativa: l’aspetto cruciale è che alla costruzione effettuata, ogni punto della circonferenza goniometrica può essere associato a infiniti numeri reali la cui differenza è un multiplo intero di $2 pi$. In un piano con riferimento cartesiano ortogonale monometrico, è stata costruita una funzione $p: RR -> gamma$: se $x$ è un numero reale, $p(x)$ identifica il punto $P$ su $gamma$ ottenuto partendo da $A = (1, 0)$ e percorrendo un arco di lunghezza $|x|$ su $gamma$, in senso antiorario se $x > 0$ e orario se $x < 0$. Risulta chiaro che $p(x) = p(x + 2k pi)$ per ogni intero $k$. Il punto $P$ individua il secondo lato di un angolo il cui primo lato è il semiasse positivo delle ascisse e $x$ rappresenta la misura di tale angolo; tuttavia, ciò che conta nello studio delle funzioni circolari è il valore di $x$ che il punto $P$ rappresenta tramite questa funzione. In molte applicazioni pratiche, come in fisica, l’aspetto che $x$ misuri anche un angolo può essere di poca rilevanza. Questa funzione è conosciuta come avvolgimento della retta attorno a un cerchio.

D'ora in poi, per un numero reale $x$ ci riferiremo sempre al punto $P$ corrispondente sulla circonferenza goniometrica: poiché questo punto definisce un angolo nel modo descritto, ci riferiremo anche a "angolo $x$", anziché solo a "numero reale $x$". Inoltre, in questo contesto di avvolgimento del cerchio unitario su una retta, spesso si parlerà di "arco $x$". Tradizionalmente, gli angoli vengono indicati con lettere minuscole dell’alfabeto greco e quindi useremo spesso simboli come $alpha$, $beta$ al posto di $x$.

== Funzioni Periodiche

Anche se questo argomento ha una portata più vasta e non si limita solo alla trigonometria, lo includiamo in questo capitolo poiché le funzioni trigonometriche, che presto introdurremo, rappresentano le funzioni periodiche più rilevanti. Abbiamo già incontrato, come esempio di una funzione periodica, la funzione $f(x) = x - floor(x)$ a pagina 127.

*Definizione 11.4.* Sia $f : D subset.eq RR -> RR$ una funzione reale con variabile reale. Se esiste un $p in RR$, strettamente positivo, tale che per ogni $x in D$, $x plus.minus p in D$ e
$ f(x + p) = f(x) $ <eq-11-3>
allora $p$ si dice un *periodo* per $f$.

Poiché $f(x + 2p) = f(x + p + p) = f(x + p) = f(x)$, se $p$ è un periodo, anche $2p$ lo è, così come $n p$ per ogni $n$ naturale. Di conseguenza, il dominio di una funzione con un periodo non può essere limitato. Inoltre, essendo $f(x) = f(x - p + p) = f(x - p)$, la definizione si può riscrivere come $f(x plus.minus p) = f(x)$.

Geometricamente, questa definizione implica che il grafico di una funzione con periodo può essere tracciato ripetendo il grafico ottenuto restringendo il dominio a qualsiasi intervallo di ampiezza $p$. Consultare la Figura 11.9 per un esempio.

*Esempio 11.1.* $f(x) = k$ (funzione costante). Qualsiasi numero reale strettamente positivo è, chiaramente, un periodo.

*Esempio 11.2.* $f(x) = x - floor(x)$, già discusso a pagina 127. Questa funzione ha come periodo un qualsiasi numero naturale positivo.

*Esempio 11.3.*
$ f(x) = cases(
  1 &"se" x in QQ,
  0 &"se" x in RR without QQ
) $
Tutti i numeri razionali strettamente positivi sono un periodo per questa funzione. Per dimostrarlo, basta notare che la somma di due razionali è ancora un razionale, mentre la somma di un razionale con un irrazionale risulta irrazionale.

Come si evince dagli esempi e dall'interpretazione della definizione, una funzione dotata di periodi ne possiede infiniti. Consideriamo quindi l'insieme di tutti i periodi di una funzione: essendo un insieme di numeri reali strettamente positivi, può avere un minimo (strettamente positivo) o solo un estremo inferiore (pari o superiore a zero). Negli esempi precedenti, le funzioni degli esempi 11.1 e 11.3 non ammettono un minimo periodo, mentre quella dell'esempio 11.2 ha come minimo periodo $1$.

*Definizione 11.5.* Se l'insieme dei periodi di una funzione ha un minimo, questo viene chiamato *minimo periodo* o semplicemente *periodo*. In tal caso, la funzione si definisce *periodica*. Una funzione che possiede periodi, ma non un minimo periodo, generalmente non è considerata periodica. Torneremo a parlare di funzioni periodiche dopo aver introdotto le funzioni trigonometriche.

=== Estensione per Periodicità

In diverse circostanze, è vantaggioso estendere una funzione definita su un sottoinsieme $A$ di $RR$ a un insieme più ampio, possibilmente anche all'intero $RR$. Questa estensione può essere eseguita in numerosi modi diversi, tra cui il prolungamento per continuità, che verrà esplorato in corsi di analisi successivi. Qui, ci concentreremo su un caso specifico: l'estensione per periodicità di una funzione inizialmente definita su un intervallo di $RR$ a tutta $RR$. Iniziamo con un esempio.

*Esempio 11.4.* Consideriamo la funzione $f : [-1, 1[ -> RR$ definita da $f(x) = x^2$. Da essa possiamo generare una funzione estesa su tutto $RR$ semplicemente replicando indefinitamente a destra e a sinistra dell'intervallo $[-1, 1[$ i valori della funzione. In questo modo si ottiene una funzione con $2$ come periodo minimo. Il suo grafico è illustrato nella figura 11.10.

È importante notare che l'ampiezza dell'intervallo di definizione originale di $f$ non corrisponde necessariamente al periodo minimo dell'estensione; di solito è solo un periodo. Un esempio semplice è una funzione costante su un intervallo $I$: estendendola per periodicità su tutto $RR$ si ottiene una funzione costante che, come già indicato, non ha un periodo minimo.

Utilizzando la funzione "floor" menzionata nel paragrafo 4.8.9 di pagina 126, possiamo esprimere esplicitamente l'estensione per periodicità di una funzione. Questo ci porta al seguente risultato.

*Teorema 11.6.* Siano $tau > 0$ e $a$ numeri reali. Supponiamo di avere una funzione $f : [a, a + tau[ -> RR$. Esiste allora un'unica funzione $g : RR -> RR$ che estende $f$ e tra i cui periodi figura il numero $tau$. Tale funzione $g$ è data dalla formula:
$ g(x) = f(x - tau floor((x - a) / tau)), quad x in RR $

== Le Funzioni Seno e Coseno

*Definizione 11.7.* Consideriamo un numero reale $x$, che può rappresentare la misura di un angolo, e poniamo il punto $P = (x_P, y_P)$ corrispondente sulla circonferenza goniometrica. L'ascissa $x_P$ di $P$ è definita come il *coseno* di $x$, mentre l'ordinata $y_P$ è il *seno* di $x$, scritti rispettivamente come $cos(x) = x_P$ e $sin(x) = y_P$. In generale, si omettono le parentesi e si usa la notazione più semplice $cos x$ e $sin x$ quando non ci sono ambiguità.

Queste definizioni descrivono due funzioni reali elementari. Le immagini di queste funzioni sono soggette alle seguenti limitazioni:
$ -1 <= sin x <= 1 quad "e" quad -1 <= cos x <= 1 $

Inoltre, considerando gli angoli generalizzati o l'avvolgimento della retta attorno al cerchio goniometrico, si derivano le proprietà:
$ sin(x + 2k pi) = sin x quad "e" quad cos(x + 2k pi) = cos x $
suggerendo che il periodo minimo delle funzioni seno e coseno è $2 pi$.

In aggiunta, dalla definizione e dall'equazione della circonferenza nel piano cartesiano, otteniamo l'identità fondamentale:
$ sin^2 x + cos^2 x = 1 $

Questo vuol dire che i quadrati del seno e del coseno di un numero reale sommano sempre a uno. Evidenziamo una nota importante: le scritture $sin^2 x$ e $cos^2 x$ possono essere ambigue ma vanno comprese come $(sin x)^2$ e $(cos x)^2$. Prestate attenzione a non confondere $sin(x^2)$ con $(sin x)^2$ e $cos(x^2)$ con $(cos x)^2$.

Quando consideriamo i numeri reali $x$ como misure di angoli, l'applicazione delle proprietà dei triangoli equilateri e rettangoli isosceli consente di determinare i valori di seno e coseno per $pi/6$, $pi/4$ e $pi/3$. Questa relazione è illustrata nella figura pertinente.

I valori del seno e del coseno per $x = 0$ e $x = pi/2$ possono essere determinati facilmente, facilitando la creazione della tabella dei valori specifici. Per $x$ frazioni di $pi$ fino a $2 pi$, si utilizzano le simmetrie illustrate in figure precedenti. Per valori di $x$ superiori a $2 pi$ o negativi, si sfrutta la periodicità delle funzioni.

Grazie alla tabella dei valori specifici, è possibile tracciare punti $(x, sin x)$ sul piano cartesiano per disegnare il grafico della funzione seno nell'intervallo $[0, pi/2]$. Anche se il disegno geometrico del grafico può sembrare intuitivo, in questa fase viene accettato quasi dogmaticamente.

Un approccio simile viene adottato per il coseno, completando il grafico per il tratto $[0, 2 pi]$ e estendendolo ulteriormente per periodicità su tutto l'asse reale. I grafici risultanti, conosciuti come *sinusoide* e *cosinusoide*, vengono presentati in figura appropriata. Il grafico del coseno si ottiene traslando quello del seno di $pi/2$ verso sinistra.

È importante sottolineare che i grafici delle funzioni seno e coseno (e delle altre funzioni trigonometriche) sono rappresentati in un sistema cartesiano ortogonale monometrico. Quando l'asse delle ascisse misura gli angoli in radianti, il coefficiente angolare della tangente al grafico di $f(x) = sin x$ all'origine è $1$. Se rappresentassimo invece la funzione $sin x$ in gradi, il coefficiente angolare della tangente sarebbe $pi / 180$. Queste differenze sono evidenziate confrontando la figura 11.13 con la 11.14, che abbiamo già considerato precedentemente.

// grafici

== Le Funzioni Tangente e Cotangente

*Definizione 11.9.* La *tangente* di un numero reale è definita come il rapporto tra il seno e il coseno di quello stesso numero, quando tale rapporto esiste. Al contrario, la *cotangente* è il rapporto tra il coseno e il seno, sempre quando esiste. In simboli:
$ tan x = (sin x) / (cos x) ; quad cot x = (cos x) / (sin x) $

La tangente è definita in tutti i punti eccetto quando $x$ è uguale a $pi/2$ più multipli di $pi$ ($x != pi/2 + k pi$, con $k in ZZ$), mentre la cotangente è definita in tutti i punti eccetto quando $x$ è multiplo di $pi$ ($x != k pi$, con $k in ZZ$).

Inoltre, si nota che:
$ tan x = 1 / (cot x) ; quad cot x = 1 / (tan x) , quad "se" x != (k pi) / 2, k in ZZ $

È importante prestare attenzione alle limitazioni necessarie affinché valgano queste relazioni, poiché non sempre è corretto affermare che $cot x$ sia uguale a $1 / tan x$ o che $tan x$ sia uguale a $1 / cot x$.

Le funzioni tangente e cotangente possono essere interpretate anche attraverso la circonferenza goniometrica centrata nell'origine $O = (0,0)$, così come per le funzioni seno e coseno. Precisamente, definendo $t$ la tangente nel punto $(1, 0)$ e $s$ la tangente nel punto $(0, 1)$ alla circonferenza goniometrica, e considerando il punto $P$ determinato dal numero reale $x$ sulla stessa circonferenza, si identificano $T$ e $C$ come le intersezioni, quando esistenti, della retta $O P$ con $t$ ed $s$ rispettivamente. Abbiamo così:
$ y_T = tan x ; quad x_C = cot x $

Per una visione chiara si può fare riferimento alla figura 11.15.

Per disegnare i grafici delle funzioni tangente e cotangente, si procede similmente a quanto fatto per seno e coseno, determinando alcuni valori in corrispondenza di angoli o archi significativi, partendo dalla tabella 11.2. Così si ottengono i grafici delle figure 11.16 e 11.17, noti rispettivamente come *tangentoide* e *cotangentoide*.

Le rette verticali di equazione:
$ x = pi/2 + k pi, quad "con" k in ZZ $
sono asintoti per la tangentoide. Le rette verticali di equazione:
$ x = k pi, quad "con" k in ZZ $
sono asintoti per la cotangentoide. Entrambe le funzioni tangente e cotangente sono periodiche, con periodo minimo pari a $pi$.

== Le Funzioni Secante e Cosecante

In certi contesti sono rilevanti le funzioni reciproche del seno e del coseno. Ecco le definizioni e i grafici per completezza.

*Definizione 11.10.* La *secante* del numero reale $x$ è il reciproco del coseno di $x$, a condizione che $cos x$ non sia nullo ($cos x != 0$), ed è espressa come:
$ sec x = 1 / (cos x) , quad "per" x != pi/2 + k pi, k in ZZ $

La *cosecante* del numero reale $x$ è il reciproco del seno di $x$, a condizione che $sin x$ non sia nullo ($sin x != 0$), ed è espressa come:
$ csc x = 1 / (sin x) , quad "per" x != k pi, k in ZZ $

Le rette di equazione $x = pi/2 + k pi$, con $k in ZZ$, e $x = k pi$, con $k in ZZ$, agiscono rispettivamente come asintoti per la funzione secante e per la funzione cosecante.

Analogamente al comportamento delle curve sinusoidale e cosinusoidale, il grafico della cosecante si ottiene traslando di $pi/2$ verso destra quello della secante. Le funzioni secante e cosecante possono anche essere definite attraverso la circonferenza goniometrica. Considerando il punto $P$ determinato dal numero reale $x$ sulla circonferenza, si può considerare la retta tangente in $P$ alla stessa circonferenza. Sia $M$ l'intersezione di questa tangente con l'asse delle ascisse e $N$ l'intersezione con l'asse delle ordinate. Si ha:
$ x_M = sec x , quad y_N = csc x $ 

== Relazioni tra le Funzioni Trigonometriche

Considerando la relazione fondamentale e le definizioni di tangente e cotangente, è possibile derivare una serie di formule che permettono di esprimere tutte le funzioni trigonometriche in termini di una sola funzione, tranne per un'indeterminazione di segno risolta tenendo conto del quadrante in cui si trova il punto $P$ associato al numero $x$ sulla circonferenza goniometrica. Per esempio:
$ sin^2 x + cos^2 x = 1 ==> tan^2 x + 1 = 1 / cos^2 x ==> cos x = plus.minus 1 / sqrt(1 + tan^2 x) , quad "con" x != pi/2 + k pi $

Questa relazione consente di calcolare il coseno una volta conosciuta la tangente. Seguendo un procedimento analogo, si possono ottenere le seguenti formule, che esprimono tutte le funzioni in termini rispettivamente di seno, coseno, tangente e cotangente. Non includiamo le formule relative a secante e cosecante per il loro uso limitato.

+ $ cos x = plus.minus sqrt(1 - sin^2 x) ; quad tan x = plus.minus sin x / sqrt(1 - sin^2 x) ; quad cot x = plus.minus sqrt(1 - sin^2 x) / sin x $
+ $ sin x = plus.minus sqrt(1 - cos^2 x) ; quad tan x = plus.minus sqrt(1 - cos^2 x) / cos x ; quad cot x = plus.minus cos x / sqrt(1 - cos^2 x) $
+ $ sin x = plus.minus tan x / sqrt(1 + tan^2 x) ; quad cos x = plus.minus 1 / sqrt(1 + tan^2 x) ; quad cot x = 1 / tan x $
+ $ sin x = plus.minus 1 / sqrt(1 + cot^2 x) ; quad cos x = plus.minus cot x / sqrt(1 + cot^2 x) ; quad tan x = 1 / cot x $

È importante notare che non è necessario memorizzare queste formule; piuttosto, basta applicare il procedimento utilizzato nell'esempio precedente, adattandolo al caso specifico.

*Esempio 11.5.* Sapendo che $cos x = -2/3$ e che $pi < x < (3 pi) / 2$, si osserva che $sin x$ è negativo mentre $tan x$ è positivo. Si ottiene:
$ sin x = -sqrt(1 - cos^2 x) = -sqrt(5)/3 ; quad tan x = (sin x) / (cos x) = sqrt(5)/2 $

== Formule Trigonometriche

Le funzioni trigonometriche obbediscono a diverse identità fondamentali che definiscono le relazioni tra esse e le operazioni matematiche fondamentali, come la somma, nel campo dei numeri reali. Fatta eccezione per le formule di addizione e sottrazione, forniamo un metodo per dimostrare le altre identità, che derivano proprio dalle formule di addizione e sottrazione. Questi passaggi sono così accessibili che memorizzarli risulta più semplice che ricordare le formule stesse.

=== Formule di Addizione e Sottrazione

Queste formule sono cruciali poiché da esse discendono tutte le altre. Insieme all'identità fondamentale e a poche altre condizioni, caratterizzano le funzioni trigonometriche. In linea di principio, le funzioni trigonometriche potrebbero essere introdotte richiedendo semplicemente la validità della relazione fondamentale e delle formule di addizione e sottrazione.

*Coseno:*
$ cos(alpha plus.minus beta) = cos alpha cos beta minus.plus sin alpha sin beta $

*Seno:*
$ sin(alpha plus.minus beta) = sin alpha cos beta plus.minus cos alpha sin beta $

*Tangente:*
$ tan(alpha plus.minus beta) = (tan alpha plus.minus tan beta) / (1 minus.plus tan alpha tan beta) $
con la condizione che $alpha != pi/2 + k pi$, $beta != pi/2 + h pi$, $alpha plus.minus beta != pi/2 + l pi$, con $h, k, l in ZZ$.

Queste formule permettono anche di derivare, tramite considerazioni di simmetria, altre relazioni utili che coinvolgono coppie di archi "associati":
$
cos(pi - x) = -cos x quad &sin(pi - x) = sin x \
cos(pi + x) = -cos x quad &sin(pi + x) = -sin x \
cos(pi/2 - x) = sin x quad &sin(pi/2 - x) = cos x \
cos(pi/2 + x) = -sin x quad &sin(pi/2 + x) = cos x
$

=== Formule di Duplicazione e Triplicazione

Sostituendo nella formula di addizione $beta$ con $alpha$ o $alpha$ e $beta$ con $alpha/2$, si ottengono le formule di duplicazione, scrivibili in diverse forme equivalenti e utili nelle applicazioni:

*Duplicazione:*
$ sin 2alpha = 2 sin alpha cos alpha $
$ cos 2alpha = cos^2 alpha - sin^2 alpha = 1 - 2 sin^2 alpha = 2 cos^2 alpha - 1 $
$ tan 2alpha = (2 tan alpha) / (1 - tan^2 alpha) , quad "con" alpha != pi/2 + k pi, k in ZZ $

Analogamente, si possono ricavare formule per calcolare le funzioni trigonometriche di $n alpha$ conoscendo quelle di $alpha$. Di seguito sono riportate le formule di triplicazione per seno e coseno:

*Triplicazione:*
$ sin 3alpha = 3 sin alpha - 4 sin^3 alpha $
$ cos 3alpha = 4 cos^3 alpha - 3 cos alpha $

== Formule di Bisezione

Le formule di duplicazione consentono, attraverso semplici calcoli, di derivare le formule di bisezione. Queste formule permettono di calcolare le funzioni circolari di $alpha/2$, una volta note quelle di $alpha$. Si può partire dall'ultima delle formule di duplicazione del coseno e dall'identità fondamentale espressa in termini di $alpha/2$:
$ cos alpha = cos^2 (alpha/2) - sin^2 (alpha/2) = 1 - 2 sin^2 (alpha/2) $ 
$ cos alpha = 2 cos^2 (alpha/2) - 1 $

Dalla prima è possibile ricavare $sin(alpha/2)$, e dalla seconda $cos(alpha/2)$:
$ sin (alpha/2) = plus.minus sqrt((1 - cos alpha) / 2) $  
$ cos (alpha/2) = plus.minus sqrt((1 + cos alpha) / 2) $
$ tan (alpha/2) = plus.minus sqrt((1 - cos alpha) / (1 + cos alpha)) = (sin alpha) / (1 + cos alpha) = (1 - cos alpha) / (sin alpha) , quad alpha != k pi, k in ZZ $

Il segno davanti ai radicali va determinato considerando il quadrante in cui si trova il punto $P$ associato sulla circonferenza goniometrica al numero $alpha/2$. Le formule per la tangente sono ottenute dividendo quelle del seno per quelle del coseno, oppure moltiplicando numeratore e denominatore per $1 - cos alpha$ o $1 + cos alpha$, notando che il segno di $tan (alpha/2)$ coincide con quello di $sin alpha$, mentre $1 - cos alpha$ e $1 + cos alpha$ sono sempre positivi.

Utilizzando ripetutamente queste formule si possono anche ottenere le espressioni per $alpha/2^n$. Si noti però che non esistono formule generali coinvolgenti solo espressioni razionali o radicali per la trisezione, in accordo con il fatto che la trisezione di un angolo generico non è possibile con riga e compasso.

== Formule Parametriche

Dalla formula di duplicazione del seno, tenendo conto dell'identità fondamentale espressa mediante $alpha/2$ e infine dividendo numeratore e denominatore per $cos^2(alpha/2)$, si ottiene:
$ sin alpha = 2 sin (alpha/2) cos (alpha/2) = (2 tan (alpha/2)) / (1 + tan^2 (alpha/2)) , quad alpha != pi + 2k pi, k in ZZ $

Procedendo in modo analogo con la formula di duplicazione del coseno, si ottiene invece:
$ cos alpha = (1 - tan^2 (alpha/2)) / (1 + tan^2 (alpha/2)) , quad alpha != pi + 2k pi, k in ZZ $

Queste formule presentano il seno e il coseno di un angolo in termini della tangente dell'angolo metà, e per questo motivo sono chiamate formule razionali per il seno e il coseno. Quando introduciamo:
$ t = tan (alpha/2) $

le formule razionali diventano:
$ sin alpha = (2t) / (1 + t^2) , quad cos alpha = (1 - t^2) / (1 + t^2) $

Nella forma espressa sopra, queste vengono indicate come *formule parametriche* per il seno e il coseno, perché li esprimono in funzione di un parametro.

Ricordando che $cos alpha$ e $sin alpha$ sono le coordinate di un punto sulla circonferenza goniometrica e considerando la condizione $alpha != pi + 2k pi$, si può concludere che le equazioni seguenti:
$ x = (1 - t^2) / (1 + t^2) , quad y = (2t) / (1 + t^2) $
sono le equazioni parametriche della circonferenza unitaria centrata nell'origine, con l'esclusione del punto $(-1, 0)$.

Osserviamo che, partendo dal punto $(1,0)$ corrispondente al valore $t = 0$ del parametro, con l'incremento del parametro, il punto si muove lungo la circonferenza in senso antiorario, avvicinandosi al punto $(-1,0)$, senza mai raggiungerlo. Invece, diminuendo il parametro, il movimento avviene in senso orario verso lo stesso punto $(-1,0)$, che rimane inaccessibile. Se immaginiamo $t$ come il tempo, possiamo pensare che il movimento rallenti progressivamente al crescere o al decrescere di $t$.

== Formule di Prostaferesi e Werner

Riconsideriamo le formule di addizione e sottrazione per seno e coseno separatamente:
$
sin(alpha + beta) = sin alpha cos beta + cos alpha sin beta \
sin(alpha - beta) = sin alpha cos beta - cos alpha sin beta \
cos(alpha + beta) = cos alpha cos beta - sin alpha sin beta \
cos(alpha - beta) = cos alpha cos beta + sin alpha sin beta
$

Sommiamo e poi sottraiamo le prime e le seconde coppie:
$
sin(alpha + beta) + sin(alpha - beta) = 2 sin alpha cos beta \
sin(alpha + beta) - sin(alpha - beta) = 2 cos alpha sin beta \
cos(alpha + beta) + cos(alpha - beta) = 2 cos alpha cos beta \
cos(alpha + beta) - cos(alpha - beta) = -2 sin alpha sin beta
$

Ponendo $alpha + beta = p$ e $alpha - beta = q$ si ottiene:
$ alpha = (p + q)/2 , quad beta = (p - q)/2 $

Con queste relazioni, le equazioni diventano le *formule di prostaferesi*:
$
sin p + sin q = 2 sin((p + q)/2) cos((p - q)/2) \
sin p - sin q = 2 cos((p + q)/2) sin((p - q)/2) \
cos p + cos q = 2 cos((p + q)/2) cos((p - q)/2) \
cos p - cos q = -2 sin((p + q)/2) sin((p - q)/2)
$

Queste formule trasformano somme o differenze di seni o coseni in un prodotto e sono particolarmente utili nella risoluzione di alcune disequazioni. È più efficiente memorizzare il semplice procedimento per ottenerle piuttosto che le formule stesse.

Consideriamo anche le *formule di Werner* che permettono, partendo dalle equazioni precedenti lette al contrario, di trasformare un prodotto tra seno e coseno in una somma:
$
sin alpha cos beta = 1/2 (sin(alpha + beta) + sin(alpha - beta)) \
cos alpha cos beta = 1/2 (cos(alpha + beta) + cos(alpha - beta)) \
sin alpha sin beta = -1/2 (cos(alpha + beta) - cos(alpha - beta))
$

Queste sono utili nel calcolo di certi integrali. Tuttavia, memorizzare il procedimento per ricavarle è immediato e altamente pratico.

== Angoli Notevoli

Abbiamo esaminato, come si può vedere nella tabella 11.2 a pagina 366, i valori delle funzioni seno e coseno per alcuni angoli particolari. Ora desideriamo completare questa tabella con altri valori significativi, tenendo presente che basta considerare gli archi compresi tra $0$ e $pi/2$, per poi eventualmente estendere a simmetrie e periodicità.

Iniziamo con il valore di $pi/10$. Notiamo che l'angolo al centro che sottende il lato di un decagono regolare, inscritto in una circonferenza, misura $(2pi)/10$, ovvero $pi/5$. Questo lato, essendo la sezione aurea del raggio, ha una lunghezza pari a:
$ l = (sqrt(5) - 1) / 2 r $ 

Osservando sulla circonferenza goniometrica il punto $P$ corrispondente a $alpha = pi/10$ e il suo simmetrico $Q$ rispetto all'asse $x$, il segmento $P Q$ rappresenta il lato del decagono regolare inscritto. Il valore di $sin alpha$ è la metà di questo lato, come illustrato nella figura 11.21. Il coseno può essere determinato tramite l'identità fondamentale, ottenendo:
$ sin(pi/10) = (sqrt(5) - 1) / 4 \
cos(pi/10) = sqrt(10 + 2 sqrt(5)) / 4 $ 

Dalla tabella 11.2 e dai valori calcolati per $pi/10$, è possibile determinare le funzioni trigonometriche di altri angoli notevoli usando le formule di duplicazione e bisezione. Riportiamo i più importanti nella tabella 11.3, dove sono inclusi anche i valori in gradi per un utile confronto con le misure in radianti.

== L'inversione delle Funzioni Trigonometriche

Le funzioni trigonometriche come seno, coseno, secante e cosecante non sono iniettive quando considerate nel loro dominio naturale $RR$, e per le funzioni seno, coseno, secante e cosecante mancano anche della suriettività. Tuttavia, è possibile applicare restrizioni specifiche al dominio e al codominio per renderle biunivoche e quindi invertibili. Non ci concentreremo sulle inverse delle funzioni secante e cosecante, poiché trovano un uso limitato.

Quando si tratta di quali restrizioni adottare, specialmente per il dominio, la scelta è abbastanza arbitraria. Tuttavia, seguiremo il convenzionale metodo standard, che presenta vantaggi come l'utilizzo di intervalli non troppo ampi. Purtroppo, non è sempre possibile applicare la stessa restrizione per tutte e quattro le funzioni che ci interessano. Le situazioni per ciascuna sono le seguenti:

- *Seno:* $[-pi/2, pi/2]$
- *Tangente:* $]-pi/2, pi/2[$
- *Coseno:* $[0, pi]$
- *Cotangente:* $]0, pi[$

#align(center)[
  #figure(
    table(
      columns: 6,
      align: (center + horizon,) * 6,
      table.header(
        [*Gradi*], [*Radianti*], [*Seno*], [*Coseno*], [*Tangente*], [*Cotangente*]
      ),
      [$0°$], [$0$], [$0$], [$1$], [$0$], [non definita],
      [$15°$], [$pi/12$], [$(sqrt(6) - sqrt(2))/4$], [$(sqrt(6) + sqrt(2))/4$], [$2 - sqrt(3)$], [$2 + sqrt(3)$],
      [$18°$], [$pi/10$], [$(sqrt(5) - 1)/4$], [$sqrt(10 + 2 sqrt(5))/4$], [$sqrt(5 - 2 sqrt(5))/5$], [$sqrt(5 + 2 sqrt(5))$],
      [$22° 30'$], [$pi/8$], [$sqrt(2 - sqrt(2))/2$], [$sqrt(2 + sqrt(2))/2$], [$sqrt(2) - 1$], [$sqrt(2) + 1$],
      [$30°$], [$pi/6$], [$1/2$], [$sqrt(3)/2$], [$sqrt(3)/3$], [$sqrt(3)$],
      [$36°$], [$pi/5$], [$sqrt(10 - 2 sqrt(5))/4$], [$(sqrt(5) + 1)/4$], [$sqrt(5 - 2 sqrt(5))$], [$sqrt(5 + 2 sqrt(5))/5$],
      [$45°$], [$pi/4$], [$sqrt(2)/2$], [$sqrt(2)/2$], [$1$], [$1$],
      [$54°$], [$(3pi)/10$], [$(sqrt(5) + 1)/4$], [$sqrt(10 - 2 sqrt(5))/4$], [$sqrt(5 + 2 sqrt(5))/5$], [$sqrt(5 - 2 sqrt(5))$],
      [$60°$], [$pi/3$], [$sqrt(3)/2$], [$1/2$], [$sqrt(3)$], [$sqrt(3)/3$],
      [$67° 30'$], [$(3pi)/8$], [$sqrt(2 + sqrt(2))/2$], [$sqrt(2 - sqrt(2))/2$], [$sqrt(2) + 1$], [$sqrt(2) - 1$],
      [$72°$], [$(2pi)/5$], [$sqrt(10 + 2 sqrt(5))/4$], [$(sqrt(5) - 1)/4$], [$sqrt(5 + 2 sqrt(5))$], [$sqrt(5 - 2 sqrt(5))/5$],
      [$75°$], [$(5pi)/12$], [$(sqrt(6) + sqrt(2))/4$], [$(sqrt(6) - sqrt(2))/4$], [$2 + sqrt(3)$], [$2 - sqrt(3)$],
      [$90°$], [$pi/2$], [$1$], [$0$], [non definita], [$0$],
      [$180°$], [$pi$], [$0$], [$-1$], [$0$], [non definita],
      [$270°$], [$(3pi)/2$], [$-1$], [$0$], [non definita], [$0$],
      [$360°$], [$2pi$], [$0$], [$1$], [$0$], [non definita]
    ),
    caption: [Valori significativi delle funzioni trigonometriche.]
  ) <tbl-valori-trig>
]

== La Funzione Arcseno

Per rendere la funzione seno invertibile, è necessario limitarla all'intervallo $[-pi/2, pi/2]$ sul dominio e $[-1, 1]$ sul codominio:
$ "sin"|_([-pi/2, pi/2]) : [-pi/2, pi/2] arrow.r [-1, 1] $

*Definizione 11.11:* L'inversa di questa restrizione della funzione seno è chiamata *funzione arcseno*, indicata come $arcsin$, $a sin$, $i n v sin$ o $sin^(-1)$:
$ arcsin: [-1, 1] arrow.r [-pi/2, pi/2] $

L'ultima notazione è comunemente utilizzata nei calcolatori tascabili; tuttavia, è la notazione standard per l'inversa di una funzione. In questo contesto, potrebbe generare confusione con il simbolo del reciproco, poiché non si tratta dell'inversa dell'intera funzione seno, ma solo di una sua porzione. Considerazioni simili valgono per le altre funzioni trigonometriche inverse.

Il grafico della funzione arcseno si può ottenere facilmente considerando il simmetrico, rispetto alla bisettrice del primo e terzo quadrante, del grafico della restrizione della funzione seno. La funzione arcseno prende un numero reale $x$ nell'intervallo $[-1, 1]$ e restituisce l'unico numero reale nell'intervallo $[-pi/2, pi/2]$ il cui seno è $x$. È importante sottolineare che l'arco fornito da $arcsin x$ si situa in $[-pi/2, pi/2]$: esistono infatti infiniti archi con un seno tra $-1$ e $1$.

Un'osservazione utile è che la funzione seno ha come tangente all'origine la bisettrice del primo e terzo quadrante, e ciò è valido anche per la funzione arcseno: entrambe le funzioni sono quindi tangenti all'origine, che costituisce il loro unico punto comune. Di conseguenza, l'equazione $sin x = arcsin x$ ha come unica soluzione $x = 0$.

Per comprendere meglio la funzione arcseno, si può fare ricorso alla circonferenza goniometrica: la funzione seno fornisce l'ordinata del punto $P$ sulla circonferenza a partire da un arco $x$ (un numero reale qualsiasi). La funzione arcseno, prendendo un numero $x$ tra $-1$ e $1$ come ordinata di un punto sull'asse $y$, determina l'unico punto $P$ sul cerchio goniometrico situato nel primo o quarto quadrante. Questo punto corrisponde a un arco nell'intervallo $[-pi/2, pi/2]$ di cui il seno è $x$.

// grafico

=== Composizione di Seno e Arcseno

Se le funzioni seno e arcseno fossero perfettamente inverse, la funzione composta $sin(arcsin x)$ sarebbe semplicemente l'identità sull'intervallo $[-1, 1]$. Questo accade perché, seguendo la regola generale delle funzioni inverse, otterremmo l'identità nel dominio dell'arcseno. 

Tuttavia, poiché l'arcseno è l'inversa di una parte limitata della funzione seno, occorre fare una precisazione. Dato un numero reale $x$ nell'intervallo $[-1, 1]$, l'arcseno restituisce un valore reale nell'intervallo $[-pi/2, pi/2]$, che è proprio la restrizione applicata alla funzione seno per poter essere invertita. Di conseguenza:
$ sin(arcsin x) = x quad "per ogni" x in [-1, 1] $

Il caso di $arcsin(sin x)$, ossia la composizione inversa, è differente. Questa funzione ha come dominio tutto $RR$, ma non può essere un'identità su $RR$ poiché l'immagine dell'arcseno è limitata all'intervallo $[-pi/2, pi/2]$. Ne consegue che $arcsin(sin x)$ non realizza un'inversione completa. 

Poiché la funzione è periodica con periodo $2pi$, possiamo limitare l'analisi a un intervallo di ampiezza $2pi$; convenzionalmente si sceglie l'intervallo $[-pi/2, (3pi)/2]$. 

- Nell'intervallo $[-pi/2, pi/2]$, la funzione si comporta da identità:
  $ arcsin(sin x) = x $
- Nell'intervallo $[pi/2, (3pi)/2]$, per ragioni di simmetria rispetto all'asse della retta $x = pi/2$:
  $ arcsin(sin x) = pi - x $

Sinteticamente, nell'intervallo $[-pi/2, (3pi)/2]$ la funzione è definita come:
$ arcsin(sin x) = cases(
  x & "se" x in [-pi/2, pi/2],
  pi - x & "se" x in [pi/2, (3pi)/2]
) $

Il grafico della funzione è mostrato nella @fig-grafico-arcsin-sin.

#align(center)[
  #figure(
    rect(width: 80%, height: 120pt, stroke: 0.5pt, fill: gray.lighten(90%), radius: 2pt)[
      #set align(center + horizon)
      [Grafico ad onda triangolare di $y = arcsin(sin x)$ \ con picchi a $(pi/2, pi/2)$ e minimi a $(-pi/2, -pi/2)$]
    ],
    caption: [Grafico della funzione $y = arcsin(sin x)$.]
  ) <fig-grafico-arcsin-sin>
]

*Osservazione 11.12:* I problemi che sorgono dal fatto che l'arcseno non è l'inversa completa del seno, ma solo della sua restrizione, sono analoghi a quelli visti con le funzioni di radice ed elevamento al quadrato.

== La Funzione Arccoseno

Per ottenere una funzione invertibile dalla funzione coseno, si limita il suo dominio all'intervallo $[0, pi]$ e l'immagine a $[-1, 1]$:
$ "cos"|_([0, pi]) : [0, pi] arrow.r [-1, 1] $

*Definizione 11.13:* L'inversa di questa limitazione della funzione coseno è chiamata *funzione arccoseno* e viene indicata con $arccos$, $a cos$, $i n v cos$ o $cos^(-1)$:
$ arccos: [-1, 1] arrow.r [0, pi] $

Il grafico della funzione arccoseno si ottiene immediatamente considerando il simmetrico, rispetto alla bisettrice del primo e terzo quadrante, del grafico della restrizione della funzione coseno.

La funzione arccoseno, dato un numero reale $x$ nell'intervallo $[-1, 1]$, restituisce l'unico arco reale in $[0, pi]$ il cui coseno è $x$. È essenziale sottolineare che l'arco fornito da $arccos x$ è compreso in $[0, pi]$, poiché esistono infiniti archi con un coseno $x$ tra $-1$ e $1$.

È interessante notare che poiché la funzione coseno interseca la bisettrice $y = x$ in un unico punto, lo stesso avviene per la funzione arccoseno: le due funzioni condividono un solo punto comune. In altre parole, l'equazione $cos x = arccos x$ ha un'unica soluzione, che è approssimativamente $0.739085$.

Per comprendere meglio la funzione arccoseno, si può utilizzare la circonferenza goniometrica: partendo da un arco $x$ (un numero reale qualsiasi), la funzione coseno fornisce l'ascissa del punto $P$ sulla circonferenza. La funzione arccoseno, dato un numero $x$ tra $-1$ e $1$ come ascissa di un punto sull'asse delle $x$, restituisce l'unico punto $P$ sulla circonferenza goniometrica, situato nel primo o secondo quadrante, che corrisponde all'arco in $[0, pi]$ il cui coseno è $x$.

Se le funzioni coseno e arccoseno fossero effettivamente l'una l'inversa dell'altra, la funzione composta $cos(arccos x)$ sarebbe semplicemente l'identità sul dominio dell'arccoseno, cioè sull'intervallo $[-1, 1]$. Tuttavia, poiché l'arccoseno è l'inversa di una limitazione della funzione coseno, è necessaria una precisazione. Dato un reale $x$ nell'intervallo $[-1, 1]$, la funzione arccoseno produce un reale nell'intervallo $[0, pi]$, che è esattamente l'intervallo a cui abbiamo limitato la funzione coseno per poterla invertire. Pertanto, la funzione risultante è proprio l'identità sull'intervallo $[-1, 1]$:
$ cos(arccos x) = x quad "per ogni" x in [-1, 1] $

=== Composizione di Coseno e Arccoseno

Il caso di $arccos(cos x)$, ossia la composizione inversa, è differente. Questa funzione ha come dominio l'intero $RR$, ma non può essere l'identità su $RR$ poiché l'immagine dell'arccoseno è limitata all'intervallo $[0, pi]$. Di conseguenza, la mancata inversione completa tra coseno e arccoseno determina un comportamento peculiare.

Poiché la funzione è periodica con periodo $2pi$, è sufficiente analizzarla all'interno di un intervallo di ampiezza $2pi$; convenzionalmente si sceglie l'intervallo $[0, 2pi]$.

- Nell'intervallo $[0, pi]$, la funzione si comporta da identità:
  $ arccos(cos x) = x $
- Nell'intervallo $[pi, 2pi]$, per ragioni di simmetria:
  $ arccos(cos x) = 2pi - x $

Sinteticamente, nell'intervallo $[0, 2pi]$ la funzione è definita come:
$ arccos(cos x) = cases(
  x & "se" x in [0, pi],
  2pi - x & "se" x in [pi, 2pi]
) $

Il grafico della funzione è mostrato nella @fig-grafico-arccos-cos.

#align(center)[
  #figure(
    rect(width: 80%, height: 120pt, stroke: 0.5pt, fill: gray.lighten(90%), radius: 2pt)[
      #set align(center + horizon)
      [Grafico ad onda triangolare di $y = arccos(cos x)$ \ con picchi a $(pi, pi)$ e minimi a $(0, 0)$ e $(2pi, 0)$]
    ],
    caption: [Grafico della funzione $y = arccos(cos x)$.]
  ) <fig-grafico-arccos-cos>
]

== La Funzione Arctangente

Per rendere la funzione tangente invertibile, si limita il suo dominio all'intervallo $]-pi/2, pi/2[$. Non sono necessarie restrizioni sul codominio, dato che l'immagine di questa funzione è l'insieme dei numeri reali:
$ "tan"|_(]-pi/2, pi/2[) : ]-pi/2, pi/2[ arrow.r RR $

*Definizione 11.14.* L'inversa di questa restrizione della funzione tangente è chiamata *funzione arctangente*, indicata con $arctan$, $a tan$, $i n v tan$ o $tan^(-1)$:
$ arctan: RR arrow.r ]-pi/2, pi/2[ $

Il grafico della funzione arctangente si ottiene facilmente ed è simmetrico rispetto alla bisettrice del primo e terzo quadrante del grafico della restrizione della funzione tangente.

La funzione arctangente, dato un valore reale $x$, restituisce l'unico arco nell'intervallo $]-pi/2, pi/2[$ la cui tangente è $x$. È importante notare che l'arco fornito da $arctan x$ rientra sempre in questo intervallo, anche se molti archi possono avere la stessa tangente $x$.

Un aspetto interessante è che sia la funzione tangente che la funzione arctangente hanno la bisettrice del primo e terzo quadrante come retta tangente all'origine. Questo significa che queste funzioni sono tangenti nell'origine e qui si trova il loro unico punto comune in $]-pi/2, pi/2[$. Quindi, l'equazione $tan x = arctan x$ in questo intervallo ha come unica soluzione $x = 0$. Altri punti comuni si trovano mediante la periodicità della funzione tangente.

Inoltre, la restrizione della tangente ha le rette $x = plus.minus pi/2$ come asintoti verticali, mentre la funzione arctangente presenta due asintoti orizzontali $y = plus.minus pi/2$.

Per comprendere meglio la funzione arctangente, si può ricorrere alla circonferenza goniometrica: partendo da un arco $x$, la funzione tangente fornisce l'ordinata di un punto corrispondente sulla retta $y = 1$. Invece, l'arctangente, a partire da un valore $x$, determina l'unico punto $P$ sulla circonferenza situato nel primo o quarto quadrante, che corrisponde all'arco nell'intervallo $]-pi/2, pi/2[$ la cui tangente è $x$.

Per quanto riguarda la funzione composta $tan(arctan x)$, essa è semplicemente l'identità su tutto $RR$:
$ tan(arctan x) = x quad "per ogni" x in RR $

Anche per la funzione $arctan(tan x)$, il comportamento è più semplice rispetto alle funzioni seno e coseno. Essa è periodica con periodo $pi$ e nell'intervallo $]-pi/2, pi/2[$ si comporta da identità:
$ arctan(tan x) = x $

Come la tangente, non è definita nei punti della forma $pi/2 + k pi$, con $k in ZZ$.

La funzione arctangente è fondamentale nelle applicazioni, specialmente nel calcolo degli integrali indefiniti, ruolo che verrà esplorato nei successivi corsi di analisi.

=== La Funzione Arccotangente

Per quanto riguarda la funzione cotangente, a differenza delle restrizioni per le funzioni seno, coseno e tangente, non esiste una convenzione universalmente accettata. Infatti, nel tentativo di ottenere una funzione iniettiva e di evitare archi troppo ampi, ci sono due scelte possibili, ciascuna con i propri vantaggi. 

Si può optare per l'intervallo $]-pi/2, pi/2]$, escludendo l'origine dove la cotangente non è definita, oppure scegliere l'intervallo $]0, pi[$. La prima opzione produce una funzione dispari (simmetrica rispetto all'origine), con l'eccezione del punto $0$, dove la funzione vale $pi/2$ e presenta una discontinuità proprio all'origine. La seconda opzione invece è continua, ma priva di simmetrie particolari, e offre il vantaggio di un approccio quasi identico a quello usato per il coseno. La maggior parte dei testi preferisce la seconda convenzione, mentre i software di calcolo simbolico sono divisi: Mathcad e Maple optano per la seconda scelta, mentre Mathematica e Matlab preferiscono la prima. In questo contesto, seguiremo la seconda convenzione adottata nei testi consultati.

Per rendere invertibile la funzione cotangente, la restringeremo all'intervallo $]0, pi[$ sul dominio, senza alcuna necessità di restrizione sul codominio, poiché l'immagine della cotangente è sempre l'insieme dei numeri reali:
$ "cot"|_(]0, pi[) : ]0, pi[ arrow.r RR $

*Definizione 11.15.* L'inversa della restrizione della funzione cotangente si chiama *funzione arccotangente* e viene indicata con $"arccot"$, $"acot"$, $"invcot"$ o $cot^(-1)$:
$ "arccot": RR arrow.r ]0, pi[ $

Il grafico della funzione arccotangente è facilmente ricavabile: basta riflettere il grafico della restrizione della funzione cotangente rispetto alla bisettrice del primo e del terzo quadrante.

La funzione arccotangente associa a ogni numero reale $x$ un unico numero reale nell'intervallo $]0, pi[$, la cui cotangente è $x$. È importante precisare che l'arco fornito da $"arccot" x$ rientra nell'intervallo $]0, pi[$, poiché esistono infiniti archi con una cotangente qualsiasi.

Si nota che la funzione cotangente interseca la bisettrice $y = x$ in un solo punto. Questo avviene anche per la funzione arccotangente: entrambi hanno questo punto come unico punto comune nell'intervallo $]0, pi[$, rendendo l'equazione $cot x = "arccot" x$ risolubile con un'unica soluzione approssimativa di $0.860334$. Ulteriori intersezioni si trovano al di fuori di questo intervallo a causa della periodicità della funzione cotangente, che ripete tutti i valori reali in intervalli del tipo $]k pi, pi + h pi[$.

// grafico

Per comprendere meglio il significato della funzione arccotangente, analogamente a quanto fatto con seno, coseno e tangente, si può ricorrere alla circonferenza goniometrica. La funzione cotangente, a partire dall'arco $x$ (qualunque numero reale), determina l'ascissa del punto $C$ sulla retta $y = 1$. Al contrario, la funzione arccotangente, partendo da un numero $x$ considerato come l'ascissa di un punto su $y = 1$, individua l'unico punto $P$ della circonferenza goniometrica nel primo o secondo quadrante, corrispondente all'arco nell'intervallo $]0, pi[$, il cui valore di cotangente è $x$.

Riguardo alla funzione composta $cot("arccot" x)$, si constata facilmente che risulta essere l'identità su tutto $RR$:
$ cot("arccot" x) = x quad "per ogni" x in RR $

Diversamente dalle funzioni legate a seno e coseno, la funzione $"arccot"(cot x)$ è più semplice, essendo periodica con periodo $pi$ e identica nell'intervallo $]0, pi[$, grazie al fatto che l'arccotangente è l'inversa della cotangente in questo intervallo. Similmente alla cotangente, questa funzione non è definita nei punti $k pi$, con $k in ZZ$.

Per completezza, presentiamo anche i grafici relativi alla prima opzione per invertire la funzione cotangente. Questa scelta è adottata dai software principali di calcolo simbolico come Mathematica e Matlab: è sempre importante fare attenzione quando si utilizza qualsiasi software. Se si desidera adoperare la funzione arccotangente seguendo la definizione classica in questi programmi, basta utilizzare la formula (11.60) per ridefinirla tramite la funzione arctangente.

== Alcune Relazioni Importanti

Abbiamo già discusso le relazioni tra le funzioni trigonometriche e le inverse delle loro restrizioni. Ora ci dedichiamo ad altre relazioni importanti, che costituiscono un utile esercizio di dimostrazione.

$ arccos x + arcsin x = pi/2 , quad "per" x in [-1, 1] $

Riferendoci alla figura 11.39, distinguiamo i casi $x > 0$ (figura a sinistra) e $x < 0$ (figura a destra). Per verificare questa relazione, notiamo che in entrambi i casi i triangoli $O B E$ e $O F D$ sono identici e, nel secondo caso, $arcsin x$ è negativo. Questa relazione permette di esprimere una funzione tramite l'altra: in alcuni software di calcolo, infatti, è definita solo la funzione $arcsin$ mentre $arccos$ viene ricavata tramite questa relazione.

Analogamente, una relazione simile vale per l'arctangente e l'arccotangente:
$ arctan x + "arccot" x = pi/2 , quad "per" x in RR $

La dimostrazione è analoga, riportando $x$ sulla retta $x = 1$ e successivamente sulla retta $y = 1$, a partire dai punti $(1, 0)$ e $(0, 1)$.

$ cos(arcsin x) = sqrt(1 - x^2) , quad sin(arccos x) = sqrt(1 - x^2) , quad "per" x in [-1, 1] $

Queste relazioni derivano dalle definizioni stesse: ad esempio, il coseno di un arco il cui seno è $x$ è $plus.minus sqrt(1 - x^2)$. Si sceglie il segno positivo poiché $arcsin x$ è nel primo o quarto quadrante, dove il coseno è positivo. Lo stesso ragionamento vale per $sin(arccos x)$: si sceglie il segno positivo poiché $arccos x$ è nel primo o secondo quadrante, dove il seno è positivo.

$ sin(arctan x) = x / sqrt(1 + x^2) , quad "per" x in RR $

Anche questa relazione è una conseguenza delle definizioni: si tratta del seno di un arco la cui tangente è $x$. C'è concordanza di segno perché $x$ e $sin(arctan x)$ sono entrambi positivi o negativi.

$ cos(arctan x) = 1 / sqrt(1 + x^2) , quad "per" x in RR $

Utilizzando la seconda delle relazioni precedenti, questa si dimostra facilmente poiché l'arco $arctan x$ si trova nel primo o quarto quadrante, dove il coseno è sempre positivo.

$ arctan x + arctan(1/x) = cases(
  pi/2 & "se" x > 0,
  -pi/2 & "se" x < 0
) $

Definiamo $alpha = arctan x$ e $beta = arctan(1/x)$. Se $x > 0$, sia $alpha$ che $beta$ appartengono al primo quadrante e dalla definizione segue che sono complementari: $alpha + beta = pi/2$. Se $x < 0$, $alpha$ e $beta$ sono negativi, quindi la loro somma è $-pi/2$. 

Il grafico della funzione $arctan(1/x)$, ad eccezione del punto $x = 0$ in cui non è definita, coincide con l'inversa della restrizione della cotangente come scelto da Mathematica e Matlab; tale scelta differisce dalla nostra.

== Determinazione del Periodo per Funzioni Elementari

Nelle applicazioni è fondamentale distinguere tra funzioni periodiche e non periodiche e, quando possibile, determinare il loro periodo. Questo processo può essere complesso, anche quando si considerano solo le funzioni trigonometriche e le loro combinazioni tramite somma, prodotto, quoziente o composizione. Per comprendere meglio queste difficoltà, esaminiamo alcuni esempi.

*Esempio 11.6.* Le funzioni $f(x) = sin x$ e $g(x) = 1 - sin x$ sono entrambe periodiche con periodo $2pi$. Tuttavia, la loro somma genera la funzione costante $h(x) = 1$, che non ha un periodo minimo e quindi non è considerata periodica. Un esperimento analogo si può fare con le funzioni $f(x) = sin^2 x$ e $g(x) = cos^2 x$, la cui somma è anch'essa $1$.

*Esempio 11.7.* Le funzioni $f(x) = sin x$ e $g(x) = sin(pi x)$ hanno periodi di $2pi$ e $2$ rispettivamente. La loro somma non è una funzione periodica e lo stesso vale per il loro prodotto o quoziente.

*Esempio 11.8.* Le funzioni $f(x) = sin x$ e $g(x) = cos x$ possiedono entrambe un periodo di $2pi$. Tuttavia, il loro quoziente, $h(x) = tan x$, è periodico con periodo $pi$. Analoghe considerazioni valgono per il prodotto.

*Esempio 11.9.* Le funzioni $f(x) = sin x$ e $g(x) = 1 + cos x$ sono entrambe periodiche con periodo $2pi$. Il loro quoziente, $h(x) = (sin x) / (1 + cos x)$, risulta ancora periodico con periodo $2pi$.

*Esempio 11.10.* La funzione $f(x) = sin x$ presenta un periodo di $2pi$. Il suo valore assoluto, $g(x) = |sin x|$, ha invece un periodo di $pi$.

*Esempio 11.11.* La funzione $f(x) = sin x + 2$ è periodica con periodo $2pi$. Il valore assoluto di questa funzione, $g(x) = |sin x + 2|$, mantiene lo stesso periodo di $2pi$.

Per individuare i periodi delle funzioni trigonometriche si possono osservare poche regole di riferimento:

+ Se una funzione $f(x)$ ha un periodo $T$, allora la funzione scala $f(k x)$, con $k != 0$, avrà un periodo di $T / |k|$.
+ Se sono presenti due funzioni periodiche con periodi diversi $T_1$ e $T_2$, e se esistono multipli comuni ai due periodi, le combinazioni come somma, prodotto o quoziente seguiranno il minimo comune multiplo dei due periodi.
+ Per due funzioni con lo stesso periodo $T$, le operazioni come somma, prodotto o quoziente daranno una funzione con un periodo uguale o inferiore a $T$.

Le funzioni trigonometriche svolgono un ruolo cruciale tra le funzioni periodiche. Questa importanza si estende oltre l'apparenza, poiché le funzioni seno e coseno rappresentano i modelli base per quasi tutte le funzioni periodiche non particolarmente anomale. Questo principio è espresso nel significativo teorema di Fourier.

*Teorema 11.16.* Per una funzione sufficientemente regolare e periodica di periodo $2pi$, è possibile esprimerla come:
$ f(x) = a_0 + sum_(n=1)^(+oo) [a_n cos(n x) + b_n sin(n x)] $

Questo suggerisce che, in un contesto preciso che verrà affrontato in corsi avanzati di analisi, tutte le funzioni periodiche possono essere viste come combinazioni di seno e coseno. Una delle applicazioni più celebri di tale teorema è l'analisi del suono nei suoi componenti armonici, un principio fondamentale dell'acustica musicale.


== Risoluzione dei Triangoli

Uno degli impieghi principali delle funzioni trigonometriche riguarda i teoremi sui triangoli. Seguiamo alcune convenzioni per quanto riguarda i triangoli, in particolare quelli rettangoli: se $A$, $B$ e $C$ sono i vertici del triangolo, allora $a$, $b$ e $c$ rappresentano i lati opposti rispettivamente a questi vertici e $alpha$, $beta$ e $gamma$ sono gli angoli interni associati. Nel caso di un triangolo rettangolo, $A$ è il vertice in corrispondenza dell'angolo retto, quindi $a$ è l'ipotenusa con $alpha$ pari a $pi/2$. Tutti gli angoli sono considerati in relazione alla geometria euclidea piana, pertanto sempre positivi e non generalizzati.

*Teorema 11.17 (Teorema sui triangoli rettangoli).* In un triangolo rettangolo, ciascun cateto può essere calcolato come il prodotto dell'ipotenusa per il seno dell'angolo opposto, oppure come il prodotto dell'ipotenusa per il coseno dell'angolo acuto adiacente, oppure come il prodotto dell'altro cateto per la tangente dell'angolo opposto.

Il teorema si traduce nelle seguenti formule:
$ b = a sin beta = a cos gamma = c tan beta $ <eq-11-66>  
$ c = a sin gamma = a cos beta = b tan gamma $ <eq-11-67>

L'essenza del teorema, combinato con il teorema di Pitagora, è questa: nel caso di un triangolo rettangolo, conoscendo due elementi diversi dall'angolo retto e che non siano i due angoli acuti, è possibile determinare tutti gli altri elementi. Nello specifico:

- Conoscendo due lati, si trova il terzo utilizzando il teorema di Pitagora; poi è possibile calcolare gli angoli acuti (ovvero il loro seno e coseno) con le formule @eq-11-66 o @eq-11-67.
- Sapendo un lato e un angolo, si può calcolare un altro lato tramite le formule @eq-11-66 o @eq-11-67 e poi determinare l'ultimo lato usando ancora queste formule o il teorema di Pitagora.

*Esempio 11.12.* Se $b = 3$ e $c = 4$, con il teorema di Pitagora si ottiene $a = 5$. Di conseguenza, $sin beta = 3/5$ e $sin gamma = 4/5$.

*Osservazione 11.18.* È importante considerare che in generale si cerca di determinare il seno o il coseno di un angolo e valutare in quale quadrante si trova l'angolo stesso. Solo alla conclusione di un problema potrebbe essere necessario un valore approssimativo dell'angolo. Nell'esempio precedente, una volta trovato $sin beta$, si possono calcolare $cos beta$ o $tan beta$ usando le identità trigonometriche (sapendo che $beta$ è acuto) e impiegare questi valori per altre parti del problema; solo alla fine, se richiesto, si potrà approssimare $beta$ come circa $0.6435$ radianti o $36.8699°$.

Se si ha una corda $A B = a$ in una circonferenza di centro $O$ e raggio $r$, questa individua due archi sulla circonferenza con estremi $A$ e $B$: un arco maggiore e uno minore, a meno che non sia un diametro, nel qual caso entrambi gli archi saranno semicirconferenze. 

Indicando con $alpha$ uno degli angoli alla circonferenza sull'arco minore (tutti uguali tra loro) e con $beta$ quelli sull'arco maggiore (ancora tutti uguali), la somma risulta $alpha + beta = pi$, dato che gli angoli al centro corrispondenti soddisfano $2alpha + 2beta = 2pi$. Pertanto, $alpha$ e $beta$ che insistono sulla stessa corda ma non sullo stesso arco sono supplementari e hanno lo stesso seno. 

Vale la pena ricordare che tra gli angoli $alpha$ come tra quelli $beta$ vi sono sia angoli con entrambi i lati secanti che angoli (due per ciascun tipo) con un lato secante e uno tangente.

// grafici

Tenendo presente che tra gli angoli come $alpha$ ce ne sono due con un lato che passa per il centro, e quindi risultano essere angoli acuti di un triangolo rettangolo con ipotenusa pari al diametro, possiamo dedurre il seguente teorema.

*Teorema 11.19 (Teorema della corda).* Considerando una circonferenza con raggio $r$, data una corda $a$ e detti $alpha$ e $beta$ gli angoli che insistono sui due archi determinati dalla corda, abbiamo:
$ a = 2r sin alpha = 2r sin beta $

Poiché ogni triangolo può essere inscritto in una circonferenza in cui i lati del triangolo sono corde, si ottiene immediatamente il seguente teorema.

*Teorema 11.20 (Teorema dei seni o di Eulero).* In ogni triangolo, il rapporto tra un lato e il seno dell'angolo opposto è costante e pari al diametro $2R$ della circonferenza circoscritta:
$ a / sin alpha = b / sin beta = c / sin gamma = 2R $

Questo teorema permette di risolvere un triangolo, cioè di determinare tutti gli elementi quando sono forniti due angoli e un lato, oppure due lati e un angolo diverso da quello compreso tra i due lati. Esaminiamo le due situazioni in dettaglio.

*Risoluzione di un triangolo dati due angoli e un lato.* Se consideriamo, ad esempio, gli angoli $alpha$ e $beta$ e il lato $c$, possiamo trovare immediatamente $gamma = pi - alpha - beta$ e quindi calcolare $c / sin gamma$. Usando il teorema dei seni abbiamo:
$ a / sin alpha = c / sin gamma $
da cui si determina $a$, e infine:
$ b / sin beta = c / sin gamma $
da cui si ricava $b$.

*Risoluzione di un triangolo dati due lati e un angolo non compreso tra essi.* Supponiamo di avere $c$, $a$ e l'angolo $alpha$. Sia $H$ il piede della perpendicolare condotta da $B$ alla semiretta $A C$. Nel triangolo rettangolo $A B H$ è nota l'ipotenusa $A B = c$ e l'angolo $alpha$. Possiamo quindi determinare il cateto $B H = h$. 

È chiaro che, essendo $B H C$ un triangolo rettangolo eventualmente degenere con ipotenusa $B C$, deve essere $a >= h$. 
- Se $a = h$, esiste un solo triangolo rettangolo $A B C$ con $C$ coincidente con $H$.
- Se $a >= c$, esiste un solo triangolo.
- Se invece $h < a < c$, esistono due triangoli. 

In questi ultimi casi, l'angolo $gamma$ (o meglio il suo seno) può essere determinato usando il teorema dei seni:
$ a / sin alpha = c / sin gamma => sin gamma = c/a sin alpha $

*Teorema 11.21 (Teorema del coseno o di Carnot).* In ogni triangolo si ha:
$ a^2 = b^2 + c^2 - 2 b c cos alpha $

Esistono formule analoghe per $b^2$ e $c^2$.

Anche se implicito nelle notazioni usate, è importante sottolineare che $alpha$ è l'angolo compreso tra i due lati $b$ e $c$. Questo teorema può essere visto come un'estensione del teorema di Pitagora; infatti, se $alpha$ è retto, $b$ e $c$ sono i cateti e $a$ è l'ipotenusa, e la formula si riduce al teorema di Pitagora ($cos alpha = 0$).

Questo teorema permette di risolvere un triangolo quando sono noti due lati e l'angolo compreso, o quando sono conosciuti tutti e tre i lati. 
- Nel primo caso, con i valori di $b$, $c$ e l'angolo $alpha$ tra essi compreso, si trova subito il terzo lato $a$.
- Nel secondo caso, conosciuti $a$, $b$ e $c$, si determina $alpha$ e si può poi applicare il teorema dei seni per trovare uno degli angoli restanti.

Infine, esistono altri tre teoremi applicabili ai triangoli qualsiasi, anche se il loro utilizzo è molto limitato e non indispensabile: i teoremi dei seni e del coseno sono generalmente sufficienti per affrontare tutti i casi.

*Teorema 11.22 (Teorema delle proiezioni).* In ogni triangolo, le seguenti formule sono valide:
$ a = b cos gamma + c cos beta \
  b = c cos alpha + a cos gamma \
  c = a cos beta + b cos alpha $ <eq-11-71>

Il teorema si chiama così perché afferma che, in un triangolo, un lato è dato dalla somma delle proiezioni degli altri due lati su di esso.

*Teorema 11.23 (Teorema di Nepero o delle tangenti).* Per qualsiasi triangolo valgono queste equazioni:
$ (a - b) / (a + b) = tan((alpha - beta) / 2) / tan((alpha + beta) / 2) \
  (b - c) / (b + c) = tan((beta - gamma) / 2) / tan((beta + gamma) / 2) \
  (c - a) / (c + a) = tan((gamma - alpha) / 2) / tan((gamma + alpha) / 2) $ <eq-11-72>

Questo teorema rappresenta un'alternativa all'uso del teorema del coseno per risolvere un triangolo nel caso in cui siano noti due lati e l'angolo tra essi. Ad esempio, se si conoscono $a$, $b$ e $gamma$, allora la somma $alpha + beta = pi - gamma$ è nota. La prima delle formule @eq-11-72 permette di determinare la tangente della semidifferenza di $alpha$ e $beta$, quindi anche $alpha - beta$. Conoscendo somma e differenza, si calcolano facilmente i singoli angoli $alpha$ e $beta$.

*Teorema 11.24 (Teorema di Briggs).* In un triangolo, con $p$ che indica il semiperimetro, sono valide le seguenti formule:
$ sin(alpha / 2) = sqrt(((p - b)(p - c)) / (b c)), quad sin(beta / 2) = sqrt(((p - c)(p - a)) / (c a)), quad sin(gamma / 2) = sqrt(((p - a)(p - b)) / (a b)) $
$ cos(alpha / 2) = sqrt((p(p - a)) / (b c)), quad cos(beta / 2) = sqrt((p(p - b)) / (c a)), quad cos(gamma / 2) = sqrt((p(p - c)) / (a b)) $

Questo teorema può essere utilizzato come alternativa al teorema del coseno per risolvere un triangolo quando si conoscono i tre lati.

Una rapida applicazione dei teoremi sui triangoli rettangoli porta al seguente teorema relativo all'area di un triangolo.

*Teorema 11.25 (Area di un triangolo).* L'area di qualsiasi triangolo è uguale alla metà del prodotto di due lati per il seno dell'angolo compreso:
$ A = 1/2 a b sin gamma = 1/2 b c sin alpha = 1/2 a c sin beta $ <eq-11-75>

Una conseguenza di questo teorema riguarda l'area di un quadrilatero convesso.

*Teorema 11.26 (Area di un quadrilatero convesso).* L'area di un quadrilatero convesso è data dalla metà del prodotto delle sue diagonali per il seno di un angolo tra esse.

Concludiamo questa panoramica con il teorema di Tolomeo.

*Teorema 11.27 (Teorema di Tolomeo).* In un quadrilatero convesso inscritto in una circonferenza, il prodotto delle lunghezze delle diagonali è uguale alla somma dei prodotti dei lati opposti.

// grafico

== Equazioni e Disequazioni Goniometriche

Le equazioni o disequazioni in cui l'incognita appare come argomento di una funzione trigonometrica sono chiamate goniometriche. Similmente alle disequazioni irrazionali, logaritmiche ed esponenziali, non esistono metodi generali per risolverle, e spesso è necessario ricorrere a metodi numerici, come illustrato nel seguente esempio.

*Esempio 11.13:* Consideriamo la risoluzione della disequazione:
$ 1/x + sin x > 0 $

Analizzando il grafico nella figura 11.43, che rappresenta la funzione nel primo membro, notiamo che la funzione è dispari, quindi basta risolverla per $x > 0$. Dal grafico deduciamo che l'insieme delle soluzioni è:
$ (0, x_A) union (x_B, x_C) union (x_D, x_E) union ... $

I valori $x_A$, $x_B$, $x_C$, ecc., devono essere determinati numericamente, benché si avvicinino sempre più ai multipli di $pi$ man mano che $x$ aumenta e $1/x$ si riduce. I risultati approssimativi sono:
$ x_A approx 3.42; quad x_B approx 6.11; quad x_C approx 9.53; quad x_D approx 12.47; quad x_E approx 15.79 $
mentre per $pi$ e i suoi multipli si ha:
$ pi approx 3.14; quad 2pi approx 6.28; quad 3pi approx 9.42; quad 4pi approx 12.56; quad 5pi approx 15.71 $

Passiamo ora a discutere alcuni tipi di equazioni o disequazioni risolvibili con strategie semplici, in particolare quelle elementari che possono essere ridotte a forme più semplici. Le tecniche impiegate per le equazioni e le disequazioni sono sostanzialmente identiche: ci concentreremo principalmente sulle disequazioni, dalle quali deriviamo le strategie per risolvere le equazioni. Come consuetudine, useremo esempi per illustrare i metodi.

=== Disequazioni Elementari

Chiamiamo elementari le disequazioni del tipo:
$ sin x >= a; quad cos x >= a; quad tan x >= a; quad cot x >= a $

Sebbene non si tratti esplicitamente di equazioni o disequazioni che coinvolgono le funzioni secante e cosecante, le stesse tecniche possono essere applicate. In ogni caso, queste disequazioni possono essere ridotte a quelle che coinvolgono seno e coseno.

Si raccomanda l'uso di una tecnica grafica per risolvere tali disequazioni, sia tramite l'uso della circonferenza goniometrica sia tramite i grafici delle funzioni goniometriche. Nei prossimi esempi li useremo entrambi.

*Esempio 11.14:* Risolviamo la disequazione:
$ sin x > 1/2 $

Ponendo $Y = sin x$ e $X = cos x$, questa disequazione si traduce nel sistema:
$ cases(
  Y > 1/2,
  X^2 + Y^2 = 1
) $

Osservando la figura 11.44 e considerando la periodicità della funzione, concludiamo immediatamente che l'insieme delle soluzioni è dato da:
$ pi/6 + 2k pi < x < (5pi)/6 + 2k pi , quad k in ZZ $

L'uso del grafico della funzione seno conduce allo stesso risultato ed evidenzia immediatamente la periodicità. Disegnato il grafico della funzione $f(x) = sin x$ e segnato il valore $1/2$ sull'asse delle ordinate, cerchiamo i valori di $x$ sull'asse delle ascisse il cui seno supera $1/2$, ossia dove il grafico sta sopra la retta $y = 1/2$. 

Questo rende palese che i valori richiesti sono compresi tra $alpha$ e $beta$ e la situazione si ripete identicamente sia a sinistra sia a destra a intervalli regolari di $2pi$. In questo caso, poiché sull'asse delle ordinate il valore è $1/2$, i valori sull'asse delle ascisse possono essere espressi in termini di multipli e sottomultipli di $pi$. Tuttavia, spesso si deve ricorrere alle funzioni trigonometriche inverse e ai calcoli numerici approssimati per trovare i valori desiderati.

Vedi figura 11.45 per maggiori dettagli.

*Esempio 11.15.* Risolviamo la disequazione $cos x < 1/3$. Ponendo $Y = sin x$ e $X = cos x$, questa disequazione equivale al sistema:
$ cases(
  X < 1/3,
  X^2 + Y^2 = 1
) $

Osservando che $alpha = arccos(1/3)$ e utilizzando la figura 11.46, considerando la periodicità, si deduce che l'insieme delle soluzioni è dato da:
$ alpha + 2k pi < x < 2pi - alpha + 2k pi , quad k in ZZ $
con $alpha approx 1.2309$.

Il grafico della funzione coseno porta allo stesso risultato ma risulta più significativo poiché evidenzia immediatamente la periodicità. Tracciando il grafico di $f(x) = cos x$, si rileva che i valori di $x$ sull'asse delle ascisse per cui il coseno non supera $1/3$ si trovano tra $alpha$ e $beta$. Questa situazione si ripete identicamente a intervalli regolari di $2pi$. 

Poiché sull'asse delle ordinate si trova $1/3$, le ascisse non possono essere espresse in multipli o sottomultipli di $pi$, perciò è necessario ricorrere alle funzioni trigonometriche inverse. In questi casi, è conveniente denominare l'angolo come $alpha$ per semplificare il calcolo, evitando la scrittura continua di $arccos(1/3)$, il cui valore approssimato è fornito facilmente dalle calcolatrici.

*Esempio 11.16.* Risolviamo la disequazione $tan x > sqrt(3)$. Quando si tratta di disequazioni con tangente o cotangente, è importante ricordare che la periodicità è di $pi$ invece di $2pi$. Utilizzando la circonferenza goniometrica, ci si può limitare alla semicirconferenza nel primo e quarto quadrante per la tangente, nel primo e secondo per la cotangente.

Con $Y = sin x$ e $X = cos x$, la disequazione equivale al sistema:
$ cases(
  Y/X > sqrt(3),
  X^2 + Y^2 = 1
) $

Considerando solo i quadranti in cui $X > 0$, si semplifica la disequazione moltiplicando per $X$:
$ cases(
  Y > X sqrt(3),
  X^2 + Y^2 = 1
) $

Analogamente ai casi del seno e del coseno, concentrandoci solo sul primo e quarto quadrante, grazie alla figura 11.48 e alla periodicità, l'insieme delle soluzioni è dato da:
$ pi/3 + k pi < x < pi/2 + k pi , quad k in ZZ $

L'uso del grafico della funzione tangente porta allo stesso risultato, ma offre una comprensione più immediata grazie alla sua natura periodica. Tracciando il grafico della funzione $f(x) = tan x$, si mostra il valore $sqrt(3)$ sull'asse delle ordinate. È importante determinare quali valori di $x$ sull'asse delle ascisse hanno una tangente superiore a $sqrt(3)$, ossia dove il grafico si colloca al di sopra della retta $y = sqrt(3)$. L'osservazione della figura 11.49 permette di giungere facilmente a questa conclusione.

*Esempio 11.17.* Risolviamo la disequazione $cot x > -2$. Se poniamo $Y = sin x$ e $X = cos x$, la disequazione equivale al sistema:
$ cases(
  X/Y > -2,
  X^2 + Y^2 = 1
) $

Limitandoci al primo e secondo quadrante, avremo $Y > 0$. Nel sistema precedente, è possibile semplificare la disequazione moltiplicando entrambi i termini per $Y$:
$ cases(
  X > -2Y,
  X^2 + Y^2 = 1
) $

A questo punto, procediamo similmente al caso del seno e del coseno, considerando solo il primo e secondo quadrante.

Utilizzando la figura 11.50 e tenendo conto della periodicità, si giunge rapidamente alla conclusione che l'insieme delle soluzioni è dato da:
$ k pi < x < alpha + k pi , quad k in ZZ $
con $alpha = "arccot"(-2) approx 2.67795$.

Anche l'impiego del grafico della funzione cotangente conduce allo stesso risultato, ma ancora una volta offre un'interpretazione più significativa in termini di periodicità. Tracciando il grafico della funzione $f(x) = cot x$ e mostrando il valore $-2$ sull'asse delle ordinate, cerchiamo i valori di $x$ sull'asse delle ascisse con una cotangente superiore a $-2$, cioè dove il grafico si trova al di sopra della retta $y = -2$. L'esame della figura 11.51 rende questa deduzione piuttosto semplice da realizzare.

=== Disequazioni Lineari in Seno e Coseno

Le disequazioni lineari in seno e coseno hanno la forma:
$ a sin x + b cos x + c >= 0 $

Per risolvere queste disequazioni esistono diverse strategie. Un approccio consiste nel trattarle come disequazioni elementari, definendo $X = cos x$ e $Y = sin x$.

*Esempio 11.18.* Risolviamo la disequazione:
$ sin x + sqrt(3) cos x <= sqrt(3) $

Utilizzando le posizioni precedenti, la disequazione si riduce al sistema:
$ cases(
  Y + sqrt(3) X <= sqrt(3),
  X^2 + Y^2 = 1
) $

È utile determinare preliminarmente i punti di intersezione della retta (che delimita il semipiano definito dalla disequazione) con la circonferenza goniometrica. Si trovano facilmente i punti $A = (1, 0)$ e $B = (1/2, sqrt(3)/2)$.

Dalla figura 11.52, emerge che le soluzioni della disequazione sono:
$ pi/3 + 2k pi <= x <= 2pi + 2k pi , quad k in ZZ $

Un'altra strategia efficiente consiste nel trasformare la disequazione in forma elementare. Questo si realizza dividendo entrambi i membri per $sqrt(a^2 + b^2)$ (essendo $a^2 + b^2 != 0$):
$ a / sqrt(a^2 + b^2) sin x + b / sqrt(a^2 + b^2) cos x + c / sqrt(a^2 + b^2) >= 0 $

Poiché esiste un angolo $alpha$ tale che:
$ cos alpha = a / sqrt(a^2 + b^2) quad "e" quad sin alpha = b / sqrt(a^2 + b^2) $

la disequazione assume la forma:
$ cos alpha sin x + sin alpha cos x + c / sqrt(a^2 + b^2) >= 0 $

che, per le formule di addizione, diventa:
$ sin(x + alpha) + c / sqrt(a^2 + b^2) >= 0 $

Questa può essere risolta come una disequazione elementare ponendo $x + alpha = t$.

Riconsiderando l'esempio precedente, la disequazione originale può essere riscritta come:
$ 1/2 sin x + sqrt(3)/2 cos x <= sqrt(3)/2 => cos(pi/3) sin x + sin(pi/3) cos x <= sqrt(3)/2 => sin(x + pi/3) <= sqrt(3)/2 $

Questa disequazione in $t = x + pi/3$ è verificata per:
$ (2pi)/3 + 2k pi <= t <= (7pi)/3 + 2k pi , quad k in ZZ $

che, effettuando la sostituzione inversa, fornisce le stesse soluzioni trovate in precedenza.

Si potrebbero adoperare anche le formule parametriche, esprimendo la disequazione in funzione di $tan(x/2)$. Tuttavia, poiché tali formule non sono valide per tutti i valori di $x$, occorre effettuare una verifica separata per i valori esclusi; per questo motivo, tale metodo è generalmente sconsigliato.

=== Disequazioni con Una Singola Funzione Trigonometrica

Queste sono disequazioni nella forma $f(sin x) > 0$, o analoghe in cui il seno è sostituito da un'altra funzione trigonometrica. Utilizzando la sostituzione $sin x = t$ (o le equivalenti per le altre funzioni), si possono ricondurre a una disequazione algebrica del tipo $f(t) > 0$. Risolvendo quest'ultima, la sostituzione inversa riporterà a una o più disequazioni elementari. 

Frequentemente, $f(x)$ è un polinomio di secondo grado del tipo $a x^2 + b x + c$, o di grado superiore ma scomponibile in fattori.

*Esempio 11.19:* Risolviamo la disequazione:
$ 2 sin^2 x + sin x - 1 < 0 $

 Ponendo $sin x = t$, otteniamo la disequazione di secondo grado $2 t^2 + t - 1 < 0$, valida per $-1 < t < 1/2$. Di conseguenza, la disequazione proposta equivale al sistema:
$ cases(
  sin x > -1,
  sin x < 1/2
) $

Utilizzando le sostituzioni geometriche $Y = sin x$ e $X = cos x$, otteniamo:
$ cases(
  Y > -1,
  Y < 1/2,
  X^2 + Y^2 = 1
) $

Questo sistema può essere risolto utilizzando la circonferenza goniometrica o il grafico della funzione seno (entrambi illustrati nella figura 11.53). Le soluzioni finali sono:
$ -pi/2 + 2k pi < x < pi/6 + 2k pi quad "oppure" quad (5pi)/6 + 2k pi < x < (3pi)/2 + 2k pi , quad k in ZZ $

=== Disequazioni Omogenee di Secondo Grado in Seno e Coseno

Queste disequazioni hanno la forma generale:
$ a sin^2 x + b sin x cos x + c cos^2 x + d >= 0 $

Si possono risolvere trasformandole in disequazioni lineari in seno e coseno tramite le formule di bisezione e duplicazione:
$ sin^2 x = (1 - cos 2x)/2 , quad cos^2 x = (1 + cos 2x)/2 , quad sin x cos x = 1/2 sin 2x $

*Esempio 11.20:* Risolviamo la disequazione:
$ 4 sin^2 x - 2 sqrt(3) sin x cos x - 2 cos^2 x - 1 > 0 $

Utilizzando le formule di duplicazione e bisezione si ottiene:
$ sqrt(3) cos 2x + sin 2x < 0 $

Ponendo $2x = t$, otteniamo la forma lineare:
$ sqrt(3) cos t + sin t < 0 $

La disequazione in $t$ ha come soluzioni:
$ (2pi)/3 + 2k pi < t < (5pi)/3 + 2k pi , quad k in ZZ $

Eseguendo la sostituzione inversa $t = 2x$ e dividendo per $2$, giungiamo a:
$ pi/3 + k pi < x < (5pi)/6 + k pi , quad k in ZZ $

È fondamentale dividere per $2$ solo dopo aver scritto per esteso le soluzioni in $t$, includendo la periodicità.

Esiste un'altra strategia possibile. Poiché $cos^2 x + sin^2 x = 1$, possiamo moltiplicare il termine noto $-1$ per questa identità senza alterare l'espressione. Semplificando e riordinando si ottiene:
$ 3 sin^2 x - 2 sqrt(3) sin x cos x - 3 cos^2 x > 0 $

Dividendo per $cos^2 x$ (e verificando separatamente i valori in cui $cos x = 0$), si giunge a una disequazione di secondo grado nella funzione tangente:
$ 3 tan^2 x - 2 sqrt(3) tan x - 3 > 0 $

Questa disequazione fornisce lo stesso insieme di soluzioni trovato in precedenza. Tuttavia, esclude formalmente i valori $pi/2 + k pi$ dove la tangente non è definita; tali valori vanno poi reintegrati nell'insieme delle soluzioni poiché corrispondono a $cos x = 0$, condizione che verifica la disequazione originaria.

=== Disequazioni Simmetriche in Seno e Coseno

Si tratta di disequazioni del tipo:
$ a(sin x plus.minus cos x) + b sin x cos x + c >= 0 $

Più precisamente, si chiamano simmetriche quelle con il segno "$+$", mentre quelle con il segno "$-$" sono dette semisimmetriche. Questa distinzione deriva dal fatto che, nel caso simmetrico, scambiare seno e coseno non influisce sulla forma della disequazione.

Queste disequazioni possono essere risolte attraverso la sostituzione $x = t + pi/4$, che trasforma l'espressione in una disequazione di secondo grado in seno e coseno.

*Esempio 11.21:* Risolviamo la disequazione:
$ sin x - cos x - 2 sqrt(2) sin x cos x < 0 $

Applicando la sostituzione indicata e semplificando, si ottiene la disequazione:
$ 2 sin^2 t + sin t - 1 < 0 $

le cui soluzioni sono:
$ (5pi)/6 + 2k pi < t < (3pi)/2 + 2k pi quad "oppure" quad (3pi)/2 + 2k pi < t < (13pi)/6 + 2k pi , quad k in ZZ $

Effettuando la sostituzione inversa $t = x - pi/4$, si ottiene:
$ (13pi)/12 + 2k pi < x < (7pi)/4 + 2k pi quad "oppure" quad (7pi)/4 + 2k pi < x < (29pi)/12 + 2k pi , quad k in ZZ $

Si nota che, per comodità, abbiamo espresso le soluzioni considerando un intervallo più ampio di $[0, 2pi]$ per ottenere una rappresentazione più compatta.

=== Altre Disequazioni

Come già menzionato, non esistono tecniche generali per risolvere tutte le disequazioni trigonometriche. Per quelle non classificabili nei modelli noti, possiamo applicare metodi algebrici adattati o usare le formule trigonometriche per cercare di ricondurle a forme già analizzate.

*Esempio 11.22:* Risolviamo la disequazione:
$ (cos 2x + sin x - 1) / ((sin x + cos x)(1 - sqrt(2) sin x)) >= 0 $

È necessario prima definire il dominio e successivamente determinare il segno di ciascun fattore. Conviene utilizzare lo studio del segno tramite grafico "$+ / -$", limitandosi a un intervallo pari al periodo comune. 

Poiché la funzione ha periodo $2pi$, è sufficiente focalizzarsi sull'intervallo $[0, 2pi]$.

- Numeratore: per trovare il segno del numeratore si risolve la disequazione $cos 2x + sin x - 1 > 0$, riconducibile a una disequazione di secondo grado in seno usando le formule di duplicazione del coseno.
- Denominatore: per determinare il segno dei due fattori al denominatore si risolvono le disequazioni elementari:
  $ sin x + cos x > 0 quad "e" quad 1 - sqrt(2) sin x > 0 $

// schema

Le soluzioni nell'intervallo $[0, 2pi[$ si trovano nei seguenti intervalli:
$ 0 <= x <= pi/6 quad "o" quad pi/4 < x < (3pi)/4 quad "o" quad (3pi)/4 < x <= (5pi)/6 quad "o" quad pi <= x < (7pi)/4 $

Le disequazioni con funzioni trigonometriche inverse sono generalmente complesse; ci limiteremo ad analizzare alcuni casi semplici con l'ausilio dei relativi grafici.

*Esempio 11.23.* Risolviamo la disequazione:
$ arcsin x < pi/3 $

Tracciando il grafico di $arcsin x$ e segnando il valore $pi/3$ sull'asse delle ordinate, si individua la soluzione. Poiché la funzione arcoseno è strettamente crescente, possiamo applicare la funzione seno a entrambi i membri senza invertire il verso della disequazione. Ricordando che $sin(arcsin x) = x$ per $x in [-1, 1]$, si ha:
$ sin(arcsin x) < sin(pi/3) => x < sqrt(3)/2 $

Considerando il dominio della funzione $arcsin x$, ovvero $[-1, 1]$, l'insieme delle soluzioni è:
$ -1 <= x < sqrt(3)/2 $

*Esempio 11.24.* Risolviamo la disequazione:
$ arccos x > 3/4 $

Poiché la funzione arcocoseno è strettamente decrescente, applicando la funzione coseno a entrambi i membri occorre invertire il verso della disequazione. Sapendo che $cos(arccos x) = x$ per $x in [-1, 1]$, si ottiene:
$ cos(arccos x) < cos(3/4) => x < cos(3/4) approx 0.73 $

Tenendo conto del dominio $[-1, 1]$ della funzione arccoseno, la soluzione è:
$ -1 <= x < cos(3/4) $

*Esempio 11.25.* Risolviamo la disequazione:
$ arcsin^2 x - 3 arcsin x + 2 > 0 $

Ponendo $arcsin x = t$, la disequazione diventa di secondo grado ($t^2 - 3t + 2 > 0$), che si risolve per $t < 1$ oppure $t > 2$. Otteniamo quindi:
$ arcsin x < 1 quad "oppure" quad arcsin x > 2 $

La seconda condizione non ha soluzioni, poiché l'immagine dell'arcoseno è $[-pi/2, pi/2]$ (e $2 > pi/2$). La prima condizione, applicando la funzione seno a entrambi i membri, fornisce:
$ x < sin(1) approx 0.84 $

Intersecando con il dominio $[-1, 1]$ dell'arcoseno, si ottiene la soluzione finale:
$ -1 <= x < sin(1) $