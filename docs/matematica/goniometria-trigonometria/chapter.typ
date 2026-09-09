#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *
#import "../shared.typ": schema_segni


// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* /* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */ */

= Goniometria e trigonometria <goniometria_trigonometria>

#intro[Le funzioni elementari, come potenze, esponenziali e logaritmi, sono state introdotte con un certo rigore grazie alle proprietà dei numeri reali. Tuttavia, per le funzioni circolari o trigonometriche#footnote[In questo contesto, i termini "funzioni circolari" e "funzioni trigonometriche" verranno usati come sinonimi. Tuttavia, è bene notare che alcuni fanno una distinzione tra i due: le funzioni circolari si riferiscono al caso in cui la variabile è un numero reale, mentre le funzioni trigonometriche implicano che la variabile sia un angolo o un arco.], che saranno discusse in questo capitolo, la situazione è diversa. Per una presentazione elementare di queste funzioni, ci si deve riferire a concetti intuitivi ma difficili da giustificare rigorosamente, come il senso orario e antiorario o la direzione lungo una circonferenza.]

Le funzioni circolari hanno un legame stretto con le funzioni esponenziali, ma questo collegamento diventa evidente solo quando si lavora con i numeri complessi, il che va oltre lo scopo di questo testo. Di conseguenza, la nostra trattazione sarà piuttosto semplice e anche i grafici che presenteremo serviranno più come assiomi, anche se geometricamente si può verificare che sono corretti.

== Angoli e loro misura

Nella geometria euclidea piana abbiamo definito un angolo come la porzione di piano determinata da due semirette con un'origine comune, unite alle semirette stesse. Tuttavia, in trigonometria è utile avere una definizione che comprenda anche angoli maggiori di un giro completo o negativi. Per questo motivo, iniziamo orientando il piano, stabilendo la direzione delle rotazioni. Nel contesto di un sistema di coordinate cartesiane, consideriamo come positivo il senso di rotazione che porta il semiasse positivo delle ascisse a sovrapporsi a quello positivo delle ordinate creando un angolo convesso (retto se il sistema è ortogonale e monometrico). Generalmente, il senso positivo sarà antiorario, mentre l'opposto, ossia quello orario, sarà negativo.

#grafici_orientazione

Passando a un esempio concreto, consideriamo un angolo $angle A V B$ e uno dei suoi lati, ad esempio $V A$. Questo angolo può essere visto anche come la regione del piano tracciata dalla semiretta scelta durante una rotazione intorno al vertice per sovrapporsi all'altro lato, in questo caso $V B$.

#grafici_rotazione_angolo

Nell'ambito della geometria euclidea, il sistema non subirebbe alcun cambiamento se scegliessimo il lato $V B$ e lo facessimo ruotare nel verso opposto fino a sovrapporsi al lato $V A$. Tuttavia, una volta orientato il piano, possiamo confrontare il senso di rotazione con quello definito come positivo e distinguere le due situazioni differenti ottenute dalla rotazione di $V A$ verso $V B$ e di $V B$ verso $V A$. 

Se il verso positivo è quello antiorario, la prima situazione rappresenta un angolo positivo e la seconda un angolo negativo, permettendoci di parlare di angolo orientato. In questo modo, attribuiamo un ordine ai due lati dell'angolo, distinguendo un primo e un secondo lato. Di conseguenza, nel contesto della geometria elementare, un angolo funge da "supporto" per due angoli orientati in direzioni opposte.

Sostituendo il concetto tradicional di angolo come parte di piano con quello di angolo come rotazione di una semiretta attorno alla sua origine, possiamo immaginare che queste rotazioni superino un angolo giro sia in senso positivo che in senso negativo, similmente a un'asta rigida incernierata a un estremo. Pertanto, esistono anche angoli che superano un angolo giro, cosa che riveste grande importanza nello studio della trigonometria. Per differenziare questi angoli da quelli euclidei, si potrebbe adottare una terminologia diversa, come angolo generalizzato. In realtà, mantenere la stessa nomenclatura non crea confusione, e così possiamo stabilire la seguente definizione.

#definizione(title: "Angolo", label: <def-angolo>)[Data una semiretta con origine $V$, si definisce angolo la rotazione della semiretta attorno alla sua origine fino a sovrapporsi a una seconda semiretta con la stessa origine. Le due semirette si chiamano lati dell'angolo: rispettivamente primo e secondo lato, e la loro comune origine è il vertice. Se la rotazione avviene in linea con l'orientamento scelto sul piano, l'angolo viene definito positivo; altrimenti è negativo.]

Anche questi angoli generalizzati vengono indicati con le lettere minuscole dell'alfabeto greco. Notiamo inoltre che due semirette nel piano, aventi la stessa origine senza considerare l'ordine, individuano infiniti angoli positivi e negativi, rappresentati nelle #ref(<grafico_angolo_positivo1>, supplement: "Figure") e #ref(<grafico_angolo_positivo2>, supplement: none), dove si osserva il primo lato essere $V A$, mentre nella @grafico_angolo_positivo3 è $V B$.

#grafici_angolo_positivo

Si sottolinea inoltre che, fissato un ordine per due semirette con comune origine $V$, la prima semiretta può sovrapporsi alla seconda in diverse circostanze: inizialmente attraverso una rotazione in un senso e successivamente mediante ulteriori rotazioni complete (un angolo giro) sia in un senso che nell'altro. La @grafico_angolo_positivo4 illustra questo concetto, differenziandosi dalle #ref(<grafico_angolo_positivo1>, supplement: "Figure"), #ref(<grafico_angolo_positivo2>, supplement: none) e #ref(<grafico_angolo_positivo3>, supplement: none), nella quale la rotazione parte sempre dalla semiretta identificata come primo lato.

#grafico_angolo_positivo4

Con questa nuova definizione di angolo, la somma e la sottrazione di due angoli avranno sempre significato, senza alcuna limitazione. Per la misurazione degli angoli si può continuare a utilizzare il grado sessagesimale: ora gli angoli potranno avere una qualunque misura positiva o negativa in gradi sessagesimali, e alla somma o sottrazione di angoli corrisponderà la somma o sottrazione delle rispettive misure. 

In base alle osservazioni fatte, due semirette, date in un certo ordine, individuano una famiglia di angoli con una misura determinata, compresa tra $-360°$ e $360°$, a cui si può aggiungere un multiplo intero arbitrario di $360°$. Un esempio è illustrato nella figura 11.4, in cui, se la misura del primo angolo a sinistra è $alpha$ (con $0° < alpha < 360°$), quello al centro avrà una misura di $alpha + 360°$, mentre quello a destra sarà $alpha - 360°$. Generalmente, e lo faremo anche in seguito, in assenza di ulteriori specificazioni, parlando dell'angolo determinato da due semirette aventi l'origine in comune, faremo sempre riferimento all'angolo positivo minore di un angolo giro, cioè l'angolo nel senso della geometria euclidea.

=== Misura in radianti

In gran parte delle applicazioni matematiche e scientifiche, misurare gli angoli in gradi sessagesimali si rivela inadeguato. Per questo motivo si preferisce definire la misura in radianti.
#definizione(title: "Misura in radianti", label: <def-misura-radianti>)[Sia $alpha$ un angolo con vertice $V$ e lati $V A$ e $V B$. Scegliendo un punto $P$ sul primo lato ad una distanza $r = V P$, durante la rotazione che porta il primo lato a sovrapporsi al secondo, $P$ descrive un arco di circonferenza di lunghezza $l$. La misura in radianti dell'angolo $alpha$ (indicata con $alpha_r$ o semplicemente $alpha$) è definita come il rapporto tra la lunghezza dell'arco e il raggio:

$ alpha_r = l / r $]

Trattandosi del rapporto tra due grandezze omogenee (lunghezze), la misura in radianti è un numero puro (privo di unità di misura) ed è indipendente dalla scelta del raggio $r$. 

Su una circonferenza goniometrica (di raggio unitario $r = 1$), la misura dell'angolo in radianti coincide, a meno del segno, con la lunghezza dell'arco intercettato.

=== Conversione tra gradi sessagesimali e radianti

La conversione tra la misura in gradi ($alpha°$) e la misura in radianti ($alpha$) si effettua tramite la proporzione:

$ alpha° : alpha = 180° : pi $ <eq-conversione-radianti>

da cui si ricavano le formule di conversione:
$ alpha = (alpha° dot pi) / (180°), quad alpha° = (alpha dot 180°) / pi $

==== Angoli notevoli della geometria piana

#tabella_radianti

In merito alla misura degli angoli in radianti e alla definizione delle funzioni trigonometriche, è consuetudine introdurre nel piano un sistema cartesiano ortogonale monometrico e disegnare una circonferenza di centro nell'origine e raggio $1$, nota come circonferenza goniometrica. Prendendo il punto $A$ con coordinate $(1, 0)$ e considerando un angolo qualsiasi determinato dai suoi due lati (in un ordine specifico), si ruota l'angolo in modo che il primo lato coincida con il semiasse positivo delle ascisse. Il secondo lato intercetterà la circonferenza goniometrica in un punto $P$. La misura dell'angolo in radianti corrisponde alla lunghezza con segno dell'arco orientato di circonferenza $overparen(A P)$, eventualmente contando anche il numero di circonferenze complete attraversate in un senso o nell'altro. Essenzialmente, ciò che è rilevante in questa rappresentazione è solo l'intersezione del secondo lato dell'angolo con la circonferenza goniometrica. 

#grafico_circonferenza_goniometrica
Quando rappresentiamo gli angoli sulla circonferenza goniometrica, mettiamo in evidenza solo il secondo lato, poiché è implicito che il primo lato coincide con il semiasse positivo delle ascisse. Considerando solo gli angoli positivi e non superiori all'angolo giro, è possibile costruire una figura come la @grafico_circonferenza_goniometrica, che sostituisce efficacemente la @tabella_radianti e, in parte, la integra. Per risolvere gli esercizi, in particolare quelli relativi a equazioni e disequazioni goniometriche, è molto utile riconoscere rapidamente sulla circonferenza goniometrica i multipli degli angoli di $pi/2$, $pi/4$, $pi/3$ e $pi/6$. In questo contesto, possono risultare utili le #ref(<grafico_angoli_radianti1>, supplement: "Figure"), #ref(<grafico_angoli_radianti2>, supplement: none), #ref(<grafico_angoli_radianti3>, supplement: none) e #ref(<grafico_angoli_radianti4>, supplement: none).
#grafici_angoli_radianti

È fondamentale tenere a mente che, essendo $pi approx 3.14159 dots$, tutti gli angoli presenti nella @tabella_radianti e nelle figure successive, ad eccezione dell'angolo nullo, possiedono una misura in radianti espressa da un numero irrazionale, nello specifico trascendente. Questo può essere considerato uno svantaggio nel confrontare la misura in radianti con quella in gradi sessagesimali, poiché gli angoli fondamentali nella geometria piana, quando espressi in gradi sessagesimali, vengono rappresentati da numeri interi. Tuttavia, la misura in radianti offre una serie di vantaggi evidenti negli studi successivi di analisi che superano ampiamente questa difficoltà iniziale.

Partendo dalla proporzione indicata nell'equazione @eq-conversione-radianti, si arriva facilmente a stabilire che un angolo di $1$ radiante corrisponde approssimativamente a $57.2978°$, ovvero circa $57° 17' 45''$. Di contro, una misura di $1°$ in radianti è circa $0.0175$.

Nonostante questi angoli non siano comunemente usati nella geometria, risulta utile saper valutare sulla circonferenza goniometrica la posizione di angoli misurati in radianti da numeri interi. La @grafico_multipli_radianti1 visualizza angoli di $1$, $2$, $3$, $4$, $5$, $6$ radianti sulla circonferenza goniometrica. Dal momento che interessa anche la circonferenza rettificata, sull'asse delle ascisse di un sistema cartesiano ortogonale (@grafico_multipli_radianti2) sono indicati i multipli interi di mezzo radiante e, per confronto, anche i valori degli angoli multipli di $pi/2$.

#grafici_multipli_radianti

Nell'analisi delle proprietà delle funzioni circolari, il concetto di angolo ha un'importanza relativa: l'aspetto cruciale è che alla costruzione effettuata, ogni punto della circonferenza goniometrica può essere associato a infiniti numeri reali la cui differenza è un multiplo intero di $2 pi$. In un piano con riferimento cartesiano ortogonale monometrico, è stata costruita una funzione $rho: RR -> gamma$: se $x$ è un numero reale, $rho(x)$ identifica il punto $P$ su $gamma$ ottenuto partendo da $A = (1, 0)$ e percorrendo un arco di lunghezza $|x|$ su $gamma$, in senso antiorario se $x > 0$ e orario se $x < 0$. Risulta chiaro che $rho(x) = rho(x + 2k pi), forall k$. Il punto $P$ individua il secondo lato di un angolo il cui primo lato è il semiasse positivo delle ascisse e $x$ rappresenta la misura di tale angolo; tuttavia, ciò che conta nello studio delle funzioni circolari è il valore di $x$ che il punto $P$ rappresenta tramite questa funzione. In molte applicazioni pratiche, come in fisica, l'aspetto che $x$ misuri anche un angolo può essere di poca rilevanza. Questa funzione è conosciuta come avvolgimento della retta attorno a un cerchio.

D'ora in poi, per un numero reale $x$ ci riferiremo sempre al punto $P$ corrispondente sulla circonferenza goniometrica: poiché questo punto definisce un angolo nel modo descritto, ci riferiremo anche a "angolo $x$", anziché solo a "numero reale $x$". Inoltre, in questo contesto di avvolgimento del cerchio unitario su una retta, spesso si parlerà di "arco $x$". Tradizionalmente, gli angoli vengono indicati con lettere minuscole dell'alfabeto greco e quindi useremo spesso simboli come $alpha$, $beta$ al posto di $x$.

== Funzioni periodiche

Anche se questo argomento ha una portata più vasta e non si limita solo alla trigonometria, lo includiamo in questo capitolo poiché le funzioni trigonometriche, che presto introdurremo, rappresentano le funzioni periodiche più rilevanti. Abbiamo già incontrato, come esempio di una funzione periodica, la funzione $f(x) = x - floor(x)$.

#definizione(title: "Periodo", label: <def-periodo>)[Sia $f : D subset.eq RR -> RR$ una funzione reale con variabile reale. Se esiste un $p in RR$, strettamente positivo, tale che per ogni $x in D$, $x plus.minus p in D$ e
$ f(x + p) = f(x) $ 
allora $p$ si dice un periodo per $f$.]

Poiché $f(x + 2p) = f(x + p + p) = f(x + p) = f(x)$, se $p$ è un periodo, anche $2p$ lo è, così come $n p$ per ogni $n$ naturale. Di conseguenza, il dominio di una funzione con un periodo non può essere limitato. Inoltre, essendo $f(x) = f(x - p + p) = f(x - p)$, la definizione si può riscrivere come $f(x plus.minus p) = f(x)$.

#grafico_funzione_periodica1

Geometricamente, questa definizione implica che il grafico di una funzione con periodo può essere tracciato ripetendo il grafico ottenuto restringendo il dominio a qualsiasi intervallo di ampiezza $p$, come per esempio succede nella @grafico_funzione_periodica1.

#esempio[$ f(x) = k $ <funzione-periodica1>

Qualsiasi numero reale strettamente positivo è, chiaramente, un periodo.][
$ f(x) = x - floor(x) $ <funzione-periodica2>
Questa funzione ha come periodo un qualsiasi numero naturale positivo.][$ f(x) = cases(
  1 &"se" x in QQ,
  0 &"se" x in RR without QQ
) $ <funzione-periodica3>
Tutti i numeri razionali strettamente positivi sono un periodo per questa funzione. Per dimostrarlo, basta notare che la somma di due razionali è ancora un razionale, mentre la somma di un razionale con un irrazionale risulta irrazionale.]

Come si evince dagli esempi e dall'interpretazione della definizione, una funzione dotata di periodi ne possiede infiniti. Consideriamo quindi l'insieme di tutti i periodi di una funzione: essendo un insieme di numeri reali strettamente positivi, può avere un minimo (strettamente positivo) o solo un estremo inferiore (pari o superiore a zero). Negli esempi precedenti, le funzioni degli esempi @funzione-periodica1 e @funzione-periodica3 non ammettono un minimo periodo, mentre quella dell'esempio @funzione-periodica2 ha come minimo periodo $1$.

#definizione(title: "Minimo periodo", label: <def-minimo-periodo>)[Se l'insieme dei periodi di una funzione ha un minimo, questo viene chiamato minimo periodo o semplicemente periodo. In tal caso, la funzione si definisce periodica.]

Una funzione che possiede periodi, ma non un minimo periodo, generalmente non è considerata periodica. Torneremo a parlare di funzioni periodiche dopo aver introdotto le funzioni trigonometriche.

=== Estensione per periodicità

In diverse circostanze, è vantaggioso estendere una funzione definita su un sottoinsieme $A$ di $RR$ a un insieme più ampio, possibilmente anche all'intero $RR$. Questa estensione può essere eseguita in numerosi modi diversi, tra cui il prolungamento per continuità, che verrà esplorato in corsi di analisi successivi. Qui, ci concentreremo su un caso specifico: l'estensione per periodicità di una funzione inizialmente definita su un intervallo di $RR$ a tutta $RR$. Iniziamo con un esempio.

#esempio[Consideriamo la funzione $f : [-1, 1[ -> RR$ definita da $f(x) = x^2$. Da essa possiamo generare una funzione estesa su tutto $RR$ semplicemente replicando indefinitamente a destra e a sinistra dell'intervallo $[-1, 1[$ i valori della funzione. In questo modo si ottiene una funzione con $2$ come periodo minimo. Il suo grafico è illustrato nella @grafico_funzione_periodica2.

#grafico_funzione_periodica2] 

È importante notare che l'ampiezza dell'intervallo di definizione originale di $f$ non corrisponde necessariamente al periodo minimo dell'estensione; di solito è solo un periodo. Un esempio semplice è una funzione costante su un intervallo $I$: estendendola per periodicità su tutto $RR$ si ottiene una funzione costante che, come già indicato, non ha un periodo minimo.

Utilizzando la funzione "floor", menzionata già nella @funzioni_floor_ceil, possiamo esprimere esplicitamente l'estensione per periodicità di una funzione. Questo ci porta al seguente risultato.

#definizione(title: "Teorema")[Siano $tau > 0$ e $a$ numeri reali. Supponiamo di avere una funzione $f : [a, a + tau[ -> RR$. Esiste allora un'unica funzione $g : RR -> RR$ che estende $f$ e tra i cui periodi figura il numero $tau$. Tale funzione $g$ è data dalla formula:
$ g(x) = f(x - tau floor((x - a) / tau)), quad x in RR $]

== Funzioni seno e coseno

#definizione(title: "Coseno e seno", label: <def-coseno-seno>)[Considerando un numero reale $x$, che può rappresentare la misura di un angolo, e ponendo il punto $P = (x_P, y_P)$ corrispondente sulla circonferenza goniometrica, l'ascissa $x_P$ di $P$ è definita come il coseno di $x$, mentre l'ordinata $y_P$ è definita come il seno di $x$, scritti rispettivamente come: $ cos(x) = x_P, quad sin(x) = y_P $]  

In generale, si omettono le parentesi e si usa la notazione più semplice $cos x$ e $sin x$ quando non ci sono ambiguità.

Queste definizioni descrivono due funzioni reali elementari. Le immagini di queste funzioni sono soggette alle seguenti limitazioni:
$ -1 <= sin x <= 1, quad -1 <= cos x <= 1 $

Inoltre, considerando gli angoli generalizzati o l'avvolgimento della retta attorno al cerchio goniometrico, si derivano le proprietà:
$ sin(x + 2k pi) = sin x, quad cos(x + 2k pi) = cos x $
suggerendo che il periodo minimo delle funzioni seno e coseno è $2 pi$.

In aggiunta, dalla definizione e dall'equazione della circonferenza nel piano cartesiano, otteniamo l'identità fondamentale:
$ sin^2 x + cos^2 x = 1 $ <eq-identita-fondamentale>

Questo vuol dire che i quadrati del seno e del coseno di un numero reale sommano sempre a uno. Evidenziamo una nota importante: le scritture $sin^2 x$ e $cos^2 x$ possono essere ambigue ma vanno comprese come $(sin x)^2$ e $(cos x)^2$. Prestate attenzione a non confondere $sin(x^2)$ con $(sin x)^2$ e $cos(x^2)$ con $(cos x)^2$.

Quando consideriamo i numeri reali $x$ como misure di angoli, l'applicazione delle proprietà dei triangoli equilateri e rettangoli isosceli consente di determinare i valori di seno e coseno per $pi/6$, $pi/4$ e $pi/3$. Questa relazione è illustrata nelle #ref(<grafico_seno_coseno1>, supplement: "Figure"), #ref(<grafico_seno_coseno2>, supplement: none), e #ref(<grafico_seno_coseno3>, supplement: none).

#grafici_seno_coseno

I valori del seno e del coseno per $x = 0$ e $x = pi/2$ possono essere determinati facilmente, facilitando la creazione della tabella dei valori specifici. Per $x$ frazioni di $pi$ fino a $2 pi$, si utilizzano le simmetrie illustrate in figure precedenti. Per valori di $x$ superiori a $2 pi$ o negativi, si sfrutta la periodicità delle funzioni.

Grazie alla tabella dei valori specifici (@tabella_seno_coseno), è possibile tracciare punti $(x, sin x)$ sul piano cartesiano per disegnare il grafico della funzione seno nell'intervallo $[0, pi/2]$. Anche se il disegno geometrico del grafico può sembrare intuitivo, in questa fase viene accettato quasi dogmaticamente.

#tabella_seno_coseno

Un approccio simile viene adottato per il coseno, completando il grafico per il tratto $[0, 2 pi]$ e estendendolo ulteriormente per periodicità su tutto l'asse reale. I grafici risultanti, conosciuti come sinusoide e cosinusoide, vengono presentati in figura appropriata. Il grafico del coseno si ottiene traslando quello del seno di $pi/2$ verso sinistra.

#grafico_costruzione_seno

È importante sottolineare che i grafici delle funzioni seno e coseno (e delle altre funzioni trigonometriche) sono rappresentati in un sistema cartesiano ortogonale monometrico. Quando l'asse delle ascisse misura gli angoli in radianti, il coefficiente angolare della tangente al grafico di $f(x) = sin x$ all'origine è $1$. Se rappresentassimo invece la funzione $sin x$ in gradi, il coefficiente angolare della tangente sarebbe $pi / 180$. Queste differenze sono evidenziate confrontando la @grafico_seno_coseno_radianti con la @grafico_seno_coseno_gradi.

#grafici_seno_coseno_radianti_gradi

== Funzioni tangente e cotangente

#definizione(title: "Tangente e cotangente", label: <def-tangente-cotangente>)[La tangente di un numero reale è definita come il rapporto tra il seno e il coseno di quello stesso numero, quando tale rapporto esiste. Al contrario, la cotangente è il rapporto tra il coseno e il seno, sempre quando esiste. In simboli:
$ tan x = (sin x) / (cos x) ; quad cot x = (cos x) / (sin x) $]

La tangente è definita in tutti i punti eccetto quando $x$ è uguale a $pi/2$ più multipli di $pi$ ($x != pi/2 + k pi$, con $k in ZZ$), mentre la cotangente è definita in tutti i punti eccetto quando $x$ è multiplo di $pi$ ($x != k pi$, con $k in ZZ$).

Inoltre, si nota che:
$ tan x = 1 / (cot x) ; quad cot x = 1 / (tan x) , quad x != (k pi) / 2, space k in ZZ $

È importante prestare attenzione alle limitazioni necessarie affinché valgano queste relazioni, poiché non sempre è corretto affermare che $cot x$ sia uguale a $1 / (tan x)$ o che $tan x$ sia uguale a $1 / (cot x)$.

Le funzioni tangente e cotangente possono essere interpretate anche attraverso la circonferenza goniometrica centrata nell'origine $O = (0,0)$, così come per le funzioni seno e coseno. Precisamente, definendo $t$ la tangente nel punto $(1, 0)$ e $s$ la tangente nel punto $(0, 1)$ alla circonferenza goniometrica, e considerando il punto $P$ determinato dal numero reale $x$ sulla stessa circonferenza, si identificano $T$ e $C$ come le intersezioni, quando esistenti, della retta $O P$ con $t$ ed $s$ rispettivamente. Abbiamo così:
$ y_T = tan x ; quad x_C = cot x $

#grafici_tangente_cotangente

Per disegnare i grafici delle funzioni tangente e cotangente, si procede similmente a quanto fatto per seno e coseno, determinando alcuni valori in corrispondenza di angoli o archi significativi, partendo dalla @tabella_seno_coseno. Così si ottengono i grafici delle figure @grafico_tangente_cotangente3 e @grafico_tangente_cotangente4, noti rispettivamente come tangentoide e cotangentoide.

#grafici_tangente_cotangente2

Le rette verticali di equazione:
$ x = pi/2 + k pi, quad k in ZZ $
sono asintoti per la tangentoide. Le rette verticali di equazione:
$ x = k pi, quad k in ZZ $
sono asintoti per la cotangentoide. Entrambe le funzioni tangente e cotangente sono periodiche, con periodo minimo pari a $pi$.

#grafico_secante_cosecante3

== Funzioni secante e cosecante

In certi contesti sono rilevanti le funzioni reciproche del seno e del coseno. Ecco le definizioni e i grafici (#ref(<grafico_secante_cosecante1>, supplement: "Figure") e #ref(<grafico_secante_cosecante2>, supplement: none)) per completezza.

#definizione(title: "Secante", label: <def-secante>)[La secante del numero reale $x$ è il reciproco del coseno di $x$, a condizione che $cos x$ non sia nullo ($cos x != 0$), ed è espressa come:
$ sec x = 1 / (cos x) , quad x != pi/2 + k pi, k in ZZ $]

#definizione(title: "Cosecante", label: <def-cosecante>)[La cosecante del numero reale $x$ è il reciproco del seno di $x$, a condizione che $sin x$ non sia nullo ($sin x != 0$), ed è espressa come:
$ csc x = 1 / (sin x) , quad x != k pi, k in ZZ $]

#grafici_secante_cosecante

Le rette di equazione: $ x = pi/2 + k pi, space k in ZZ; quad x = k pi, space k in ZZ $ agiscono rispettivamente come asintoti per la funzione secante e per la funzione cosecante.

Analogamente al comportamento delle curve sinusoidale e cosinusoidale, il grafico della cosecante si ottiene traslando di $pi/2$ verso destra quello della secante. Le funzioni secante e cosecante possono anche essere definite attraverso la circonferenza goniometrica. Considerando il punto $P$ determinato dal numero reale $x$ sulla circonferenza, si può considerare la retta tangente in $P$ alla stessa circonferenza. Sia $M$ l'intersezione di questa tangente con l'asse delle ascisse e $N$ l'intersezione con l'asse delle ordinate. Si ha:
$ x_M = sec x , quad y_N = csc x $ 

== Relazioni tra le funzioni trigonometriche

Considerando la relazione fondamentale (@eq-identita-fondamentale) e le definizioni di tangente e cotangente, è possibile derivare una serie di formule che permettono di esprimere tutte le funzioni trigonometriche in termini di una sola funzione, tranne per un'indeterminazione di segno risolta tenendo conto del quadrante in cui si trova il punto $P$ associato al numero $x$ sulla circonferenza goniometrica. Per esempio:
$ sin^2 x + cos^2 x = 1 ==> tan^2 x + 1 = 1 / cos^2 x ==> \ ==> cos x = plus.minus 1 / sqrt(1 + tan^2 x) , quad x != pi/2 + k pi $

Questa relazione consente di calcolare il coseno una volta conosciuta la tangente. Seguendo un procedimento analogo, si possono ottenere le seguenti formule, che esprimono tutte le funzioni in termini rispettivamente di seno, coseno, tangente e cotangente. Non includiamo le formule relative a secante e cosecante per il loro uso limitato.

+ $ cos x = plus.minus sqrt(1 - sin^2 x) ; quad tan x = plus.minus (sin x) / sqrt(1 - sin^2 x) ; \ cot x = plus.minus sqrt(1 - sin^2 x) / (sin x) $ <eq-relazioni-trigonometria1>
+ $ sin x = plus.minus sqrt(1 - cos^2 x) ; quad tan x = plus.minus sqrt(1 - cos^2 x) / (cos x) ; \ cot x = plus.minus (cos x) / sqrt(1 - cos^2 x) $ <eq-relazioni-trigonometria2>
+ $ sin x = plus.minus (tan x) / sqrt(1 + tan^2 x) ; quad cos x = plus.minus 1 / sqrt(1 + tan^2 x) ; \ cot x = 1 / (tan x) $ <eq-relazioni-trigonometria3>
+ $ sin x = plus.minus 1 / sqrt(1 + cot^2 x) ; quad cos x = plus.minus (cot x) / sqrt(1 + cot^2 x) ; \ tan x = 1 / (cot x) $ <eq-relazioni-trigonometria4>

È importante notare che non è necessario memorizzare queste formule; piuttosto, basta applicare il procedimento utilizzato nell'esempio precedente, adattandolo al caso specifico.

#esempio[Sapendo che $cos x = -2/3$ e che $pi < x < (3 pi) / 2$, si osserva che $sin x$ è negativo mentre $tan x$ è positivo. Si ottiene:
$ sin x = -sqrt(1 - cos^2 x) = -sqrt(5)/3 ; quad tan x = (sin x) / (cos x) = sqrt(5)/2 $]

== Formule trigonometriche

Le funzioni trigonometriche obbediscono a diverse identità fondamentali che definiscono le relazioni tra esse e le operazioni matematiche fondamentali, come la somma, nel campo dei numeri reali. Fatta eccezione per le formule di addizione e sottrazione, forniamo un metodo per dimostrare le altre identità, che derivano proprio dalle formule di addizione e sottrazione. Questi passaggi sono così accessibili che memorizzarli risulta più semplice che ricordare le formule stesse.

=== Formule di addizione e sottrazione

Queste formule sono cruciali poiché da esse discendono tutte le altre. Insieme all'identità fondamentale e a poche altre condizioni, caratterizzano le funzioni trigonometriche. In linea di principio, le funzioni trigonometriche potrebbero essere introdotte richiedendo semplicemente la validità della relazione fondamentale e delle formule di addizione e sottrazione.

$ cos(alpha plus.minus beta) = cos alpha cos beta minus.plus sin alpha sin beta \ sin(alpha plus.minus beta) = sin alpha cos beta plus.minus cos alpha sin beta \ tan(alpha plus.minus beta) = (tan alpha plus.minus tan beta) / (1 minus.plus tan alpha tan beta) $
con la condizione che: $ alpha != pi/2 + k pi, quad beta != pi/2 + h pi, quad alpha plus.minus beta != pi/2 + l pi, quad h, k, l in ZZ $

Queste formule permettono anche di derivare, tramite considerazioni di simmetria, altre relazioni utili che coinvolgono coppie di archi "associati":
$ cos(pi - x) = -cos x, quad &sin(pi - x) = sin x \
cos(pi + x) = -cos x, quad &sin(pi + x) = -sin x \
cos(pi/2 - x) = sin x, quad &sin(pi/2 - x) = cos x \
cos(pi/2 + x) = -sin x, quad &sin(pi/2 + x) = cos x $

=== Formule di duplicazione e triplicazione

Sostituendo nella formula di addizione $beta$ con $alpha$ o $alpha$ e $beta$ con $alpha/2$, si ottengono le formule di duplicazione, scrivibili in diverse forme equivalenti e utili nelle applicazioni:

$ sin 2alpha = 2 sin alpha cos alpha, quad sin alpha = 2 sin alpha/2 cos alpha/2 \ 
  cos 2alpha = cos^2 alpha - sin^2 alpha = 1 - 2 sin^2 alpha = 2 cos^2 alpha - 1, space \ cos alpha = cos^2 alpha/2 - sin^2 alpha/2 \ 
  tan 2alpha = (2 tan alpha) / (1 - tan^2 alpha) , quad  alpha != pi/2 + k pi, k in ZZ $ <eq-duplicazione>

Analogamente, si possono ricavare formule per calcolare le funzioni trigonometriche di $n alpha$ conoscendo quelle di $alpha$. Di seguito sono riportate le formule di triplicazione per seno e coseno:

$ sin 3alpha = 3 sin alpha - 4 sin^3 alpha \ 
  cos 3alpha = 4 cos^3 alpha - 3 cos alpha $ <eq-triplicazione>

=== Formule di bisezione

Le formule di duplicazione consentono, attraverso semplici calcoli, di derivare le formule di bisezione. Queste formule permettono di calcolare le funzioni circolari di $alpha/2$, una volta note quelle di $alpha$. Si può partire dall'ultima delle formule di duplicazione del coseno (@eq-duplicazione) e dall'identità fondamentale (@eq-identita-fondamentale) espressa in termini di $alpha/2$:
$ cos alpha &= cos^2 alpha/2 - sin^2 alpha/2 = 1 - 2 sin^2 alpha/2 \ cos alpha &= cos^2 alpha/2 - sin^2 alpha/2 = 2 cos^2 alpha/2 - 1 $

Dalla prima è possibile ricavare $sin alpha/2$, e dalla seconda $cos alpha/2$:
$ sin alpha/2 = plus.minus sqrt((1 - cos alpha) / 2) \ 
  cos alpha/2 = plus.minus sqrt((1 + cos alpha) / 2) \ 
  tan alpha/2 = plus.minus sqrt((1 - cos alpha) / (1 + cos alpha)) = (sin alpha) / (1 + cos alpha) = (1 - cos alpha) / (sin alpha) , quad alpha != k pi, k in ZZ $ <eq-bisezione>

Il segno davanti ai radicali va determinato considerando il quadrante in cui si trova il punto $P$ associato sulla circonferenza goniometrica al numero $alpha/2$. Le formule per la tangente sono ottenute dividendo quelle del seno per quelle del coseno, oppure moltiplicando numeratore e denominatore per $1 - cos alpha$ o $1 + cos alpha$, notando che il segno di $tan alpha/2$ coincide con quello di $sin alpha$, mentre $1 - cos alpha$ e $1 + cos alpha$ sono sempre positivi.

Utilizzando ripetutamente queste formule si possono anche ottenere le espressioni per $alpha/2^n$. Si noti però che non esistono formule generali coinvolgenti solo espressioni razionali o radicali per la trisezione, in accordo con il fatto che la trisezione di un angolo generico non è possibile con riga e compasso.

=== Formule parametriche

Dalla formula di duplicazione del seno (@eq-duplicazione), tenendo conto dell'identità fondamentale espressa mediante $alpha/2$ e infine dividendo numeratore e denominatore per $cos^2alpha/2$, si ottiene:
$ sin alpha = 2 sin alpha/2 cos alpha/2 =  (2 sin alpha/2 cos alpha/2)/(cos^2 alpha/2 + sin^2 alpha/2) = (2 tan alpha/2) / (1 + tan^2 alpha/2) , space alpha != pi + 2k pi, k in ZZ $

Procedendo in modo analogo con la formula di duplicazione del coseno, si ottiene invece:
$ cos alpha = (cos^2 alpha/2 - sin^2 alpha/2)/(cos^2 alpha/2 + sin^2 alpha/2) = (1 - tan^2 alpha/2) / (1 + tan^2 alpha/2) , quad alpha != pi + 2k pi, k in ZZ $

Queste formule presentano il seno e il coseno di un angolo in termini della tangente dell'angolo metà, e per questo motivo sono chiamate formule razionali per il seno e il coseno. Quando introduciamo:
$ t = tan alpha/2 $

le formule razionali diventano:
$ sin alpha = (2t) / (1 + t^2) , quad cos alpha = (1 - t^2) / (1 + t^2) $ <eq-formule-razionali>

Nella forma espressa sopra, queste vengono indicate come formule parametriche per il seno e il coseno, perché li esprimono in funzione di un parametro.

Ricordando che $cos alpha$ e $sin alpha$ sono le coordinate di un punto sulla circonferenza goniometrica e considerando la condizione $alpha != pi + 2k pi$, si può concludere che le equazioni seguenti:
$ cases(
  #h(0.25em) x = display((1 - t^2) / (1 + t^2)), 
  #h(0.25em)  y = display((2t) / (1 + t^2))
) $
sono le equazioni parametriche della circonferenza unitaria centrata nell'origine, con l'esclusione del punto $(-1, 0)$.

#tabella_formule_parametriche

Osserviamo che, partendo dal punto $(1,0)$ corrispondente al valore $t = 0$ del parametro, con l'incremento del parametro, il punto si muove lungo la circonferenza in senso antiorario, avvicinandosi al punto $(-1,0)$, senza mai raggiungerlo. Invece, diminuendo il parametro, il movimento avviene in senso orario verso lo stesso punto $(-1,0)$, che rimane inaccessibile. Se immaginiamo $t$ come il tempo, possiamo pensare che il movimento rallenti progressivamente al crescere o al decrescere di $t$. La @grafico_circonferenza_parametrica mostra la circonferenza con evidenziati i punti riportati nella @tabella_formule_parametriche.

#grafico_circonferenza_parametrica

=== Formule di prostaferesi

Riconsideriamo le formule di addizione e sottrazione per seno e coseno separatamente:

$
cases(
  #h(0.25em) sin(alpha + beta) &= sin alpha cos beta + cos alpha sin beta,
  #h(0.25em) sin(alpha - beta) &= sin alpha cos beta - cos alpha sin beta
) \
cases(
  #h(0.25em) cos(alpha + beta) &= cos alpha cos beta - sin alpha sin beta,
  #h(0.25em) cos(alpha - beta) &= cos alpha cos beta + sin alpha sin beta
  )
$

Sommiamo e poi sottraiamo le prime e le seconde coppie:
$
cases(
  #h(0.25em) sin(alpha + beta) + sin(alpha - beta) &= 2 sin alpha cos beta,
  #h(0.25em) sin(alpha + beta) - sin(alpha - beta) &= 2 cos alpha sin beta
) \
cases(
  #h(0.25em) cos(alpha + beta) + cos(alpha - beta) &= 2 cos alpha cos beta,
  #h(0.25em) cos(alpha + beta) - cos(alpha - beta) &= -2 sin alpha sin beta
)
$

Ponendo $alpha + beta = p$ e $alpha - beta = q$ si ottiene:
$ alpha = (p + q)/2 , quad beta = (p - q)/2 $

Con queste relazioni, le equazioni diventano le formule di prostaferesi:
$
cases(
  #h(0.25em) sin p + sin q &= 2 sin (p + q)/2 cos (p - q)/2,
  #h(0.25em) sin p - sin q &= 2 cos (p + q)/2 sin (p - q)/2) \
cases(
  #h(0.25em) cos p + cos q &= 2 cos (p + q)/2 cos (p - q)/2,
  #h(0.25em) cos p - cos q &= -2 sin (p + q)/2 sin (p - q)/2
)
$

Queste formule trasformano somme o differenze di seni o coseni in un prodotto e sono particolarmente utili nella risoluzione di alcune disequazioni. È più efficiente memorizzare il semplice procedimento per ottenerle piuttosto che le formule stesse.

=== Formule di Werner

Consideriamo anche le formule di Werner che permettono, partendo dalle equazioni precedenti lette al contrario, di trasformare un prodotto tra seno e coseno in una somma:
$
cases(
  #h(0.25em) sin alpha cos beta &= 1/2 (sin(alpha + beta) + sin(alpha - beta)),
  #h(0.25em) cos alpha cos beta &= 1/2 (cos(alpha + beta) + cos(alpha - beta)),
  #h(0.25em) sin alpha sin beta &= -1/2 (cos(alpha + beta) - cos(alpha - beta))
)
$

Queste sono utili nel calcolo di certi integrali. Tuttavia, memorizzare il procedimento per ricavarle è immediato e altamente pratico.

== Angoli notevoli

Abbiamo esaminato, come si può vedere nella @tabella_seno_coseno, i valori delle funzioni seno e coseno per alcuni angoli particolari. Ora desideriamo completare questa tabella con altri valori significativi, tenendo presente che basta considerare gli archi compresi tra $0$ e $pi/2$, per poi eventualmente estendere a simmetrie e periodicità.

Iniziamo con il valore di $pi/10$. Notiamo che l'angolo al centro che sottende il lato di un decagono regolare, inscritto in una circonferenza, misura $(2pi)/10$, ovvero $pi/5$. Questo lato, essendo la sezione aurea del raggio, ha una lunghezza pari a:
$ l = (sqrt(5) - 1) / 2 r $ 

Osservando sulla circonferenza goniometrica il punto $P$ corrispondente a $alpha = pi/10$ e il suo simmetrico $Q$ rispetto all'asse $x$, il segmento $overline(P Q)$ rappresenta il lato del decagono regolare inscritto. Il valore di $sin alpha$ è la metà di questo lato, come illustrato nella @grafico_sin_pi_10. Il coseno può essere determinato tramite l'identità fondamentale, ottenendo:
$ sin(pi/10) = (sqrt(5) - 1) / 4, quad cos(pi/10) = sqrt(10 + 2 sqrt(5)) / 4 $ 

#grafico_sin_pi_10

Dalla @tabella_seno_coseno e dai valori calcolati per $pi/10$, è possibile determinare le funzioni trigonometriche di altri angoli notevoli usando le formule di duplicazione e bisezione. Riportiamo i più importanti nella /* tabella 11.3 */, dove sono inclusi anche i valori in gradi per un utile confronto con le misure in radianti.

#tabella_notevoli_trigonometria

== Inversione delle funzioni trigonometriche

Le funzioni trigonometriche come seno, coseno, secante e cosecante non sono iniettive quando considerate nel loro dominio naturale $RR$, e per le funzioni seno, coseno, secante e cosecante mancano anche della suriettività. Tuttavia, è possibile applicare restrizioni specifiche al dominio e al codominio per renderle biunivoche e quindi invertibili. Non ci concentreremo sulle inverse delle funzioni secante e cosecante, poiché trovano un uso limitato.

Quando si tratta di quali restrizioni adottare, specialmente per il dominio, la scelta è abbastanza arbitraria. Tuttavia, seguiremo il convenzionale metodo standard, che presenta vantaggi come l'utilizzo di intervalli non troppo ampi. Purtroppo, non è sempre possibile applicare la stessa restrizione per tutte e quattro le funzioni che ci interessano. Le situazioni per ciascuna sono le seguenti:

$ 
  sin: [-pi/2, pi/2], quad tan: lr(\] -pi/2, pi/2 \[), quad cos: [0, pi], quad cot: ]0, pi[
$

=== Funzione arcseno

Per rendere la funzione seno invertibile, è necessario limitarla all'intervallo $[-pi/2, pi/2]$ sul dominio e $[-1, 1]$ sul codominio:
$ sin_([-pi/2, pi/2]) : [-pi/2, pi/2] arrow.r [-1, 1] $ <eq-seno-restrizione>

#definizione(title: "Arcseno", label: <def-arcseno>)[L'inversa della restrizione (@eq-seno-restrizione) della funzione seno è chiamata funzione arcseno, indicata come $arcsin$, $a sin$, $i n v sin$ o $sin^(-1)$:
$ arcsin: [-1, 1] arrow.r [-pi/2, pi/2] $]

L'ultima notazione è comunemente utilizzata nei calcolatori tascabili; tuttavia, è la notazione standard per l'inversa di una funzione. In questo contesto, potrebbe generare confusione con il simbolo del reciproco, poiché non si tratta dell'inversa dell'intera funzione seno, ma solo di una sua porzione. Considerazioni simili valgono per le altre funzioni trigonometriche inverse.

Il grafico della funzione arcseno si può ottenere facilmente considerando il simmetrico, rispetto alla bisettrice del primo e terzo quadrante, del grafico della restrizione della funzione seno. 

#grafici_restrizione
#grafico_restrizione3

La funzione arcseno prende un numero reale $x$ nell'intervallo $[-1, 1]$ e restituisce l'unico numero reale nell'intervallo $[-pi/2, pi/2]$ il cui seno è $x$. È importante sottolineare che l'arco fornito da $arcsin x$ si situa in $[-pi/2, pi/2]$: esistono infatti infiniti archi con un seno tra $-1$ e $1$.

Un'osservazione utile è che la funzione seno ha come tangente all'origine la bisettrice del primo e terzo quadrante, e ciò è valido anche per la funzione arcseno: entrambe le funzioni sono quindi tangenti all'origine, che costituisce il loro unico punto comune. Di conseguenza, l'equazione $sin x = arcsin x$ ha come unica soluzione $x = 0$.

Per comprendere meglio la funzione arcseno, si può fare ricorso alla circonferenza goniometrica (vedi #ref(<grafico_seno_arcseno1>, supplement: "Figure") e #ref(<grafico_seno_arcseno2>, supplement: none)): la funzione seno fornisce l'ordinata del punto $P$ sulla circonferenza a partire da un arco $x$ (un numero reale qualsiasi). La funzione arcseno, prendendo un numero $x$ tra $-1$ e $1$ come ordinata di un punto sull'asse $y$, determina l'unico punto $P$ sul cerchio goniometrico situato nel primo o quarto quadrante. Questo punto corrisponde a un arco nell'intervallo $[-pi/2, pi/2]$ di cui il seno è $x$.

#grafici_seno_arcseno1

==== Composizione di seno e arcseno

Se le funzioni seno e arcseno fossero perfettamente inverse, la funzione composta $sin(arcsin x)$ sarebbe semplicemente l'identità sull'intervallo $[-1, 1]$. Questo accade perché, seguendo la regola generale delle funzioni inverse, otterremmo l'identità nel dominio dell'arcseno. 

Tuttavia, poiché l'arcseno è l'inversa di una parte limitata della funzione seno, occorre fare una precisazione. Dato un numero reale $x$ nell'intervallo $[-1, 1]$, l'arcseno restituisce un valore reale nell'intervallo $[-pi/2, pi/2]$, che è proprio la restrizione applicata alla funzione seno per poter essere invertita. Di conseguenza:
$ sin(arcsin x) = x quad forall x in [-1, 1] $

Il caso di $arcsin(sin x)$, ossia la composizione inversa, è differente. Questa funzione ha come dominio tutto $RR$, ma non può essere un'identità su $RR$ poiché l'immagine dell'arcseno è limitata all'intervallo $[-pi/2, pi/2]$. Ne consegue che $arcsin(sin x)$ non realizza un'inversione completa. 

Poiché la funzione è periodica con periodo $2pi$, possiamo limitare l'analisi a un intervallo di ampiezza $2pi$; convenzionalmente si sceglie l'intervallo $[-pi/2, (3pi)/2]$. 
- nell'intervallo $[-pi/2, pi/2]$, la funzione, si comporta da identità (@grafico_seno_arcseno3):
  $ arcsin(sin x) = x $
- nell'intervallo $[pi/2, (3pi)/2]$, per ragioni di simmetria rispetto all'asse della retta $x = pi/2$ (@grafico_seno_arcseno4):
  $ arcsin(sin x) = pi - x $

Ricapitolando, nell'intervallo $[-pi/2, (3pi)/2]$ la funzione è definita come:
$ arcsin(sin x) = cases(
  #h(0.25em) x\, quad &x in display([-pi/2, pi/2]),
  #h(0.25em) pi - x\, quad &x in display([pi/2, (3pi)/2])
) $

#grafici_seno_arcseno2

I problemi che sorgono dal fatto che l'arcseno, come risulta evidente nella @grafico_arcseno non è l'inversa completa del seno, ma solo della sua restrizione, sono analoghi a quelli visti con le funzioni di radice ed elevamento al quadrato.

#grafico_arcseno

=== Funzione arccoseno

Per ottenere una funzione invertibile dalla funzione coseno, si limita il suo dominio all'intervallo $[0, pi]$ e l'immagine a $[-1, 1]$:
$ cos_([0, pi]) : [0, pi] arrow.r [-1, 1] $ <eq-coseno-restrizione>

#definizione(title: "Arccoseno", label: <def-arccoseno>)[L'inversa della restrizione (@eq-coseno-restrizione) della funzione coseno è chiamata funzione arccoseno e viene indicata con $arccos$, $a cos$, $i n v cos$ o $cos^(-1)$:
$ arccos: [-1, 1] arrow.r [0, pi] $]

Il grafico della funzione arccoseno si ottiene immediatamente considerando il simmetrico, rispetto alla bisettrice del primo e terzo quadrante, del grafico della restrizione della funzione coseno.

La funzione arccoseno, dato un numero reale $x$ nell'intervallo $[-1, 1]$, restituisce l'unico arco reale in $[0, pi]$ il cui coseno è $x$. È essenziale sottolineare che l'arco fornito da $arccos x$ è compreso in $[0, pi]$, poiché esistono infiniti archi con un coseno $x$ tra $-1$ e $1$.

#grafici_restrizione2
#grafico_restrizione6

È interessante notare che poiché la funzione coseno interseca la bisettrice $y = x$ in un unico punto, lo stesso avviene per la funzione arccoseno: le due funzioni condividono un solo punto comune. In altre parole, l'equazione $cos x = arccos x$ ha un'unica soluzione, che è approssimativamente $0.739085$.

Per comprendere meglio la funzione arccoseno, si può utilizzare la circonferenza goniometrica: partendo da un arco $x$ (un numero reale qualsiasi), la funzione coseno fornisce l'ascissa del punto $P$ sulla circonferenza. La funzione arccoseno, dato un numero $x$ tra $-1$ e $1$ come ascissa di un punto sull'asse delle $x$, restituisce l'unico punto $P$ sulla circonferenza goniometrica, situato nel primo o secondo quadrante, che corrisponde all'arco in $[0, pi]$ il cui coseno è $x$.

#grafici_coseno_arccoseno1

Se le funzioni coseno e arccoseno fossero effettivamente l'una l'inversa dell'altra, la funzione composta $cos(arccos x)$ sarebbe semplicemente l'identità sul dominio dell'arccoseno, cioè sull'intervallo $[-1, 1]$. Tuttavia, poiché l'arccoseno è l'inversa di una limitazione della funzione coseno, è necessaria una precisazione. Dato un reale $x$ nell'intervallo $[-1, 1]$, la funzione arccoseno produce un reale nell'intervallo $[0, pi]$, che è esattamente l'intervallo a cui abbiamo limitato la funzione coseno per poterla invertire. Pertanto, la funzione risultante è proprio l'identità sull'intervallo $[-1, 1]$:
$ cos(arccos x) = x quad forall x in [-1, 1] $

==== Composizione di coseno e arccoseno

Il caso di $arccos(cos x)$, ossia la composizione inversa, è differente. Questa funzione ha come dominio l'intero $RR$, ma non può essere l'identità su $RR$ poiché l'immagine dell'arccoseno è limitata all'intervallo $[0, pi]$. Di conseguenza, la mancata inversione completa tra coseno e arccoseno determina un comportamento peculiare.

Poiché la funzione è periodica con periodo $2pi$, è sufficiente analizzarla all'interno di un intervallo di ampiezza $2pi$; convenzionalmente si sceglie l'intervallo $[0, 2pi]$.
- nell'intervallo $[0, pi]$, la funzione si comporta da identità:
  $ arccos(cos x) = x $
- nell'intervallo $[pi, 2pi]$, per ragioni di simmetria:
  $ arccos(cos x) = 2pi - x $

Dunque, nell'intervallo $[0, 2pi]$ la funzione è definita come:
$ arccos(cos x) = cases(
  #h(0.25em) x\, quad &x in [0, pi],
  #h(0.25em) 2pi - x\, quad &x in [pi, 2pi]
) $

#grafici_coseno_arccoseno2

Il grafico della funzione è mostrato nella @grafico_arccoseno.

#grafico_arccoseno

=== Funzione arctangente

Per rendere la funzione tangente invertibile, si limita il suo dominio all'intervallo $lr(\]-pi/2, pi/2\[)$. Non sono necessarie restrizioni sul codominio, dato che l'immagine di questa funzione è l'insieme dei numeri reali:
$ tan_(lr(\]-pi/2, pi/2\[)) : lr(\]-pi/2\, pi/2\[) arrow.r RR $ <eq-tangente-restrizione>

#definizione(title: "Arctangente", label: <def-arctangente>)[L'inversa della restrizione (@eq-tangente-restrizione) della funzione tangente è chiamata funzione arctangente, indicata con $arctan$, $a tan$, $i n v tan$ o $tan^(-1)$:
$ arctan: RR arrow.r ]-pi/2, pi/2[ $]

Il grafico della funzione arctangente si ottiene facilmente ed è simmetrico rispetto alla bisettrice del primo e terzo quadrante del grafico della restrizione della funzione tangente.

#grafici_restrizione3

La funzione arctangente, dato un valore reale $x$, restituisce l'unico arco nell'intervallo $lr(\]-pi/2, pi/2\[)$ la cui tangente è $x$. È importante notare che l'arco fornito da $arctan x$ rientra sempre in questo intervallo, anche se molti archi possono avere la stessa tangente $x$.

Un aspetto interessante è che sia la funzione tangente che la funzione arctangente hanno la bisettrice del primo e terzo quadrante come retta tangente all'origine. Questo significa che queste funzioni sono tangenti nell'origine e qui si trova il loro unico punto comune in $lr(\]-pi/2, pi/2\[)$. Quindi, l'equazione $tan x = arctan x$ in questo intervallo ha come unica soluzione $x = 0$. Altri punti comuni si trovano mediante la periodicità della funzione tangente (vedi @grafico_restrizione9), ricordando di considerare sempre tutti in valori reali in ogni intervallo del tipo $lr(\]-pi/2+k pi, pi/2+k pi\[)$.

#grafico_restrizione9

Inoltre, la restrizione della tangente ha le rette $x = plus.minus pi/2$ come asintoti verticali, mentre la funzione arctangente presenta due asintoti orizzontali $y = plus.minus pi/2$.

Per comprendere meglio la funzione arctangente, si può ricorrere alla circonferenza goniometrica: partendo da un arco $x$, la funzione tangente fornisce l'ordinata di un punto corrispondente sulla retta $y = 1$. Invece, l'arctangente, a partire da un valore $x$, determina l'unico punto $P$ sulla circonferenza situato nel primo o quarto quadrante, che corrisponde all'arco nell'intervallo $lr(\]-pi/2, pi/2\[)$ la cui tangente è $x$.

#grafici_tangente_arctangente

Per quanto riguarda la funzione composta $tan(arctan x)$, essa è semplicemente l'identità su tutto $RR$:
$ tan(arctan x) = x, quad forall x in RR $

Anche per la funzione $arctan(tan x)$ (@grafico_arctangente), il comportamento è più semplice rispetto alle funzioni seno e coseno. Essa è periodica con periodo $pi$ e nell'intervallo $lr(\]-pi/2, pi/2\[)$ si comporta da identità:
$ arctan(tan x) = x $

Come la tangente, non è definita nei punti della forma $pi/2 + k pi$, con $k in ZZ$.

La funzione arctangente è fondamentale nelle applicazioni, specialmente nel calcolo degli integrali indefiniti.

#grafico_arctangente

=== Funzione arccotangente

Per quanto riguarda la funzione cotangente, a differenza delle restrizioni per le funzioni seno, coseno e tangente, non esiste una convenzione universalmente accettata. Infatti, nel tentativo di ottenere una funzione iniettiva e di evitare archi troppo ampi, ci sono due scelte possibili, ciascuna con i propri vantaggi. 

Si può optare per l'intervallo $lr(\]-pi/2, pi/2\])$, escludendo l'origine dove la cotangente non è definita, oppure scegliere l'intervallo $]0, pi[$. La prima opzione produce una funzione dispari (simmetrica rispetto all'origine), con l'eccezione del punto $0$, dove la funzione vale $pi/2$ e presenta una discontinuità proprio all'origine. La seconda opzione invece è continua, ma priva di simmetrie particolari, e offre il vantaggio di un approccio quasi identico a quello usato per il coseno. La maggior parte dei testi preferisce la seconda convenzione, mentre i software di calcolo simbolico sono divisi: Mathcad e Maple optano per la seconda scelta, mentre Mathematica e Matlab preferiscono la prima. In questo contesto, seguiremo la seconda convenzione adottata nei testi consultati.

Per rendere invertibile la funzione cotangente, la restringeremo all'intervallo $]0, pi[$ sul dominio, senza alcuna necessità di restrizione sul codominio, poiché l'immagine della cotangente è sempre l'insieme dei numeri reali:
$ cot_(lr(\]0, pi\[)) : ]0, pi[ arrow.r RR $ <eq-arccotangente-restrizione>

#definizione(title: "Arccotangente", label: <def-arccotangente>)[L'inversa della restrizione (@eq-arccotangente-restrizione) della funzione cotangente si chiama funzione arccotangente e viene indicata con $"arccot"$, $"acot"$, $"invcot"$ o $cot^(-1)$:
$ "arccot": RR arrow.r ]0, pi[ $]

Il grafico della funzione arccotangente è facilmente ricavabile: basta riflettere il grafico della restrizione della funzione cotangente rispetto alla bisettrice del primo e del terzo quadrante.

La funzione arccotangente associa a ogni numero reale $x$ un unico numero reale nell'intervallo $]0, pi[$, la cui cotangente è $x$. È importante precisare che l'arco fornito da $"arccot" x$ rientra nell'intervallo $]0, pi[$, poiché esistono infiniti archi con una cotangente qualsiasi.

#grafici_restrizione4

Si nota che la funzione cotangente interseca la bisettrice $y = x$ in un solo punto. Questo avviene anche per la funzione arccotangente: entrambi hanno questo punto come unico punto comune nell'intervallo $]0, pi[$, rendendo l'equazione $cot x = "arccot" x$ risolubile con un'unica soluzione approssimativa di $0.860334$. Ulteriori intersezioni si trovano al di fuori di questo intervallo a causa della periodicità della funzione cotangente, che ripete tutti i valori reali in intervalli del tipo $]k pi, pi + h pi[$.

#grafico_restrizione12

Per comprendere meglio il significato della funzione arccotangente, analogamente a quanto fatto con seno, coseno e tangente, si può ricorrere alla circonferenza goniometrica. La funzione cotangente, a partire dall'arco $x$ (qualunque numero reale), determina l'ascissa del punto $C$ sulla retta $y = 1$. Al contrario, la funzione arccotangente, partendo da un numero $x$ considerato come l'ascissa di un punto su $y = 1$, individua l'unico punto $P$ della circonferenza goniometrica nel primo o secondo quadrante, corrispondente all'arco nell'intervallo $]0, pi[$, il cui valore di cotangente è $x$.

#grafici_cotangente_arccotangente

Riguardo alla funzione composta $cot("arccot" x)$, si constata facilmente che risulta essere l'identità su tutto $RR$:
$ cot("arccot" x) = x, quad forall x in RR $

Diversamente dalle funzioni legate a seno e coseno, la funzione $"arccot"(cot x)$ è più semplice, essendo periodica con periodo $pi$ e identica nell'intervallo $]0, pi[$, grazie al fatto che l'arccotangente è l'inversa della cotangente in questo intervallo. Similmente alla cotangente, questa funzione non è definita nei punti $k pi$, con $k in ZZ$.

#grafico_arccotangente

Per completezza, presentiamo anche i grafici relativi alla prima opzione per invertire la funzione cotangente. Questa scelta è adottata dai software principali di calcolo simbolico come Mathematica e Matlab: è sempre importante fare attenzione quando si utilizza qualsiasi software. Se si desidera adoperare la funzione arccotangente seguendo la definizione classica in questi programmi, basta utilizzare la formula @eq-relazione-arctan-arccot per ridefinirla tramite la funzione arctangente.

#grafici_arccotangente_alt

=== Alcune relazioni importanti

Abbiamo già discusso le relazioni tra le funzioni trigonometriche e le inverse delle loro restrizioni. Ora ci dedichiamo ad altre relazioni importanti, che costituiscono un utile esercizio di dimostrazione.

$ arccos x + arcsin x = pi/2 , quad, x in [-1, 1] $

Riferendoci alle #ref(<grafico_arcseno_arccoseno1>, supplement: "Figure") e #ref(<grafico_arcseno_arccoseno2>, supplement: none), distinguiamo i casi $x > 0$ (figura a sinistra) e $x < 0$ (figura a destra). Per verificare questa relazione, notiamo che in entrambi i casi i triangoli $O B E$ e $O F D$ sono identici e, nel secondo caso, $arcsin x$ è negativo. Questa relazione permette di esprimere una funzione tramite l'altra: in alcuni software di calcolo, infatti, è definita solo la funzione $arcsin$ mentre $arccos$ viene ricavata tramite questa relazione.

#grafici_arcseno_arccoseno

Analogamente, una relazione simile vale per l'arctangente e l'arccotangente:
$ arctan x + "arccot" x = pi/2 , quad, x in RR $ <eq-relazione-arctan-arccot>

La dimostrazione è analoga, riportando $x$ sulla retta $x = 1$ e successivamente sulla retta $y = 1$, a partire dai punti $(1, 0)$ e $(0, 1)$.

$ cos(arcsin x) = sqrt(1 - x^2) , quad sin(arccos x) = sqrt(1 - x^2) , quad x in [-1, 1] $

Queste relazioni derivano dalle definizioni stesse: ad esempio, il coseno di un arco il cui seno è $x$ è $plus.minus sqrt(1 - x^2)$. Si sceglie il segno positivo poiché $arcsin x$ è nel primo o quarto quadrante, dove il coseno è positivo. Lo stesso ragionamento vale per $sin(arccos x)$: si sceglie il segno positivo poiché $arccos x$ è nel primo o secondo quadrante, dove il seno è positivo.

$ sin(arctan x) = x / sqrt(1 + x^2) , quad x in RR $

Anche questa relazione è una conseguenza delle definizioni, la prima di @eq-relazioni-trigonometria3: si tratta del seno di un arco la cui tangente è $x$. C'è concordanza di segno perché $x$ e $sin(arctan x)$ sono entrambi positivi o negativi.

$ cos(arctan x) = 1 / sqrt(1 + x^2) , quad x in RR $

Utilizzando la seconda delle relazioni @eq-relazioni-trigonometria3, questa si dimostra facilmente poiché l'arco $arctan x$ si trova nel primo o quarto quadrante, dove il coseno è sempre positivo.

$ arctan x + arctan 1/x = cases(
  #h(0.25em) display(pi/2) & "se" x > 0,
  #h(0.25em) display(-pi/2) & "se" x < 0
) $

Definiamo $alpha = arctan x$ e $beta = arctan 1/x$. Se $x > 0$, sia $alpha$ che $beta$ appartengono al primo quadrante e dalla definizione @eq-relazioni-trigonometria3 segue che:

$
  sin alpha = x/(sqrt(1 + x^2)), quad sin beta = display(1/x)/(sqrt(1 + display(1/x)^2)) = 1/(sqrt(1 + x^2)) = cos alpha
$

Si deduce che $alpha$ e $beta$ sono complementari, ossia $alpha + beta = pi/2$. Se $x < 0$, $alpha$ e $beta$ sono negativi, quindi la loro somma è $-pi/2$. 

Il grafico della funzione $arctan 1/x$, ad eccezione del punto $x = 0$ in cui non è definita, coincide con l'inversa della restrizione della cotangente, costruito da altri software matematici; tale scelta differisce da quella fatta in questo testo. //?verificare

== Determinazione del periodo per funzioni elementari

Nelle applicazioni è fondamentale distinguere tra funzioni periodiche e non periodiche e, quando possibile, determinare il loro periodo. Questo processo può essere complesso, anche quando si considerano solo le funzioni trigonometriche e le loro combinazioni tramite somma, prodotto, quoziente o composizione. Per comprendere meglio queste difficoltà, esaminiamo alcuni esempi.

#esempio[Le funzioni $f(x) = sin x$ e $g(x) = 1 - sin x$ sono entrambe periodiche con periodo $2pi$. Tuttavia, la loro somma genera la funzione costante $h(x) = 1$, che non ha un periodo minimo e quindi non è considerata periodica. Un esperimento analogo si può fare con le funzioni $f(x) = sin^2 x$ e $g(x) = cos^2 x$, la cui somma è anch'essa $1$.][Le funzioni $f(x) = sin x$ e $g(x) = sin(pi x)$ hanno periodi di $2pi$ e $2$ rispettivamente. La loro somma non è una funzione periodica e lo stesso vale per il loro prodotto o quoziente.][Le funzioni $f(x) = sin x$ e $g(x) = cos x$ possiedono entrambe un periodo di $2pi$. Tuttavia, il loro quoziente, $h(x) = tan x$, è periodico con periodo $pi$. Analoghe considerazioni valgono per il prodotto.][Le funzioni $f(x) = sin x$ e $g(x) = 1 + cos x$ sono entrambe periodiche con periodo $2pi$. Il loro quoziente, $h(x) = (sin x) / (1 + cos x)$, risulta ancora periodico con periodo $2pi$.][La funzione $f(x) = sin x$ presenta un periodo di $2pi$. Il suo valore assoluto, $g(x) = |sin x|$, ha invece un periodo di $pi$.][La funzione $f(x) = sin x + 2$ è periodica con periodo $2pi$. Il valore assoluto di questa funzione, $g(x) = |sin x + 2|$, mantiene lo stesso periodo di $2pi$.]

Per individuare i periodi delle funzioni trigonometriche si possono osservare poche regole di riferimento:
+ se una funzione $f(x)$ ha un periodo $T$, allora la funzione scala con $f(k x)$, con $k != 0$ e avrà un periodo di $T / (|k|)$
+ se sono presenti due funzioni periodiche con periodi diversi, $T_1$ e $T_2$, e se esistono multipli comuni ai due periodi, le combinazioni come somma, prodotto o quoziente seguiranno il minimo comune multiplo dei due periodi
+ per due funzioni con lo stesso periodo $T$, le operazioni come somma, prodotto o quoziente daranno una funzione con un periodo uguale o inferiore a $T$

Le funzioni trigonometriche svolgono un ruolo cruciale tra le funzioni periodiche. Questa importanza si estende oltre l'apparenza, poiché le funzioni seno e coseno rappresentano i modelli base per quasi tutte le funzioni periodiche non particolarmente anomale. Questo principio è espresso nel significativo teorema di Fourier, di cui viene riportato solo l'eninciato in una forma molto sintetica.

#definizione(title: "Teorema di sviluppabilità in serie di Fourier", label: <def-serie-fourier>)[Per una funzione sufficientemente regolare e periodica di periodo $2pi$, è possibile esprimerla come:
$ f(x) = a_0 + sum_(n=1)^(+oo) [a_n cos(n x) + b_n sin(n x)] $] //? da precisare

Questo suggerisce che, in un contesto preciso, che viene affrontato nei corsi avanzati di analisi, tutte le funzioni periodiche possono essere viste come combinazioni di seno e coseno. Una delle applicazioni più celebri di tale teorema è l'analisi del suono nei suoi componenti armonici, un principio fondamentale dell'acustica musicale. 

== Risoluzione dei triangoli

Uno degli impieghi principali delle funzioni trigonometriche riguarda i teoremi sui triangoli. Seguiamo alcune convenzioni (@grafico_triangolo_nomenclatura1) per quanto riguarda i triangoli, in particolare quelli rettangoli: se $A$, $B$ e $C$ sono i vertici del triangolo, allora $a$, $b$ e $c$ rappresentano i lati opposti rispettivamente a questi vertici e $alpha$, $beta$ e $gamma$ sono gli angoli interni associati. Nel caso di un triangolo rettangolo, $A$ è il vertice in corrispondenza dell'angolo retto, quindi $a$ è l'ipotenusa con $alpha$ pari a $pi/2$ (@grafico_triangolo_nomenclatura2). Tutti gli angoli sono considerati in relazione alla geometria euclidea piana, pertanto sempre positivi e non generalizzati.

#grafici_triangolo_nomenclatura

#definizione(title: "Teorema dei triangoli rettangoli", label: <def-teorema-triangoli-rettangoli>)[In un triangolo rettangolo, ciascun cateto può essere calcolato come il prodotto dell'ipotenusa per il seno dell'angolo opposto, oppure come il prodotto dell'ipotenusa per il coseno dell'angolo acuto adiacente, oppure come il prodotto dell'altro cateto per la tangente dell'angolo opposto.] 

Il teorema si traduce nelle seguenti formule:
$ b = a sin beta = a cos gamma = c tan beta $ <eq-triangoli-rettangoli1>  
$ c = a sin gamma = a cos beta = b tan gamma $ <eq-triangoli-rettangoli2>

L'essenza del teorema, combinato con il teorema di Pitagora, è questa: nel caso di un triangolo rettangolo, conoscendo due elementi diversi dall'angolo retto e che non siano i due angoli acuti, è possibile determinare tutti gli altri elementi. Nello specifico:
- conoscendo due lati, si trova il terzo utilizzando il teorema di Pitagora; poi è possibile calcolare gli angoli acuti (ovvero il loro seno e coseno) con le formule @eq-triangoli-rettangoli1 o @eq-triangoli-rettangoli2.
- conoscendo un lato e un angolo, si può calcolare un altro lato tramite le formule @eq-triangoli-rettangoli1 o @eq-triangoli-rettangoli2 e poi determinare l'ultimo lato usando ancora queste formule o il teorema di Pitagora.

#esempio[Se $b = 3$ e $c = 4$, con il teorema di Pitagora si ottiene $a = 5$. Di conseguenza, $sin beta = 3/5$ e $sin gamma = 4/5$.]

È importante considerare che in generale si cerca di determinare il seno o il coseno di un angolo e valutare in quale quadrante si trova l'angolo stesso. Solo alla conclusione di un problema potrebbe essere necessario un valore approssimativo dell'angolo. Nell'esempio precedente, una volta trovato $sin beta$, si possono calcolare $cos beta$ o $tan beta$ usando le identità trigonometriche (sapendo che $beta$ è acuto) e impiegare questi valori per altre parti del problema; solo alla fine, se richiesto, si potrà approssimare $beta$ come circa $0.6435$ radianti o $36.8699°$.

Se si ha una corda $overline(A B) = a$ in una circonferenza di centro $O$ e raggio $r$, questa individua due archi sulla circonferenza con estremi $A$ e $B$: un arco maggiore e uno minore, a meno che non sia un diametro, nel qual caso entrambi gli archi saranno semicirconferenze. 

Indicando con $alpha$ uno degli angoli alla circonferenza sull'arco minore (tutti uguali tra loro) e con $beta$ quelli sull'arco maggiore (ancora tutti uguali), la somma risulta $alpha + beta = pi$, dato che gli angoli al centro corrispondenti soddisfano $2alpha + 2beta = 2pi$. Pertanto, $alpha$ e $beta$ che insistono sulla stessa corda ma non sullo stesso arco sono supplementari e hanno lo stesso seno. 

Vale la pena ricordare che tra gli angoli $alpha$ come tra quelli $beta$ vi sono sia angoli con entrambi i lati secanti che angoli (due per ciascun tipo) con un lato secante e uno tangente.
#v(-1.5em)
#grafici_corda_angoli_circonferenza

Tenendo presente che tra gli angoli come $alpha$ ce ne sono due con un lato che passa per il centro, e quindi risultano essere angoli acuti di un triangolo rettangolo con ipotenusa pari al diametro, possiamo dedurre il seguente teorema.

#definizione(title: "Teorema della corda", label: <def-teorema-corda>)[Considerando una circonferenza con raggio $r$, data una corda $a$ e detti $alpha$ e $beta$ gli angoli che insistono sui due archi determinati dalla corda, abbiamo:
$ a = 2r sin alpha = 2r sin beta $]

Poiché ogni triangolo può essere inscritto in una circonferenza in cui i lati del triangolo sono corde, si ottiene immediatamente il seguente teorema.

#definizione(title: "Teorema dei seni o di Eulero", label: <def-teorema-eulero>)[In ogni triangolo, il rapporto tra un lato e il seno dell'angolo opposto è costante e pari al diametro $2R$ della circonferenza circoscritta:
$ a / (sin alpha) = b / (sin beta) = c / (sin gamma) = 2R $]

Questo teorema permette di risolvere un triangolo, cioè di determinare tutti gli elementi quando sono forniti due angoli e un lato, oppure due lati e un angolo diverso da quello compreso tra i due lati. Esaminiamo le due situazioni in dettaglio.

=== Risoluzione di un triangolo dati due angoli e un lato

Se consideriamo, ad esempio, gli angoli $alpha$ e $beta$ e il lato $c$, possiamo trovare immediatamente $gamma = pi - alpha - beta$ e quindi calcolare $c / (sin gamma)$. Usando il teorema dei seni abbiamo:
$ a / (sin alpha) = c / (sin gamma) $
da cui si determina $a$, e infine:
$ b / (sin beta) = c / (sin gamma) $
da cui si ricava $b$.

=== Risoluzione di un triangolo dati due lati e un angolo non compreso tra essi

Supponiamo di avere $c$, $a$ e l'angolo $alpha$. Sia $H$ il piede della perpendicolare condotta da $B$ alla semiretta $A C$. Nel triangolo rettangolo $A B H$ è nota l'ipotenusa $overline(A B) = c$ e l'angolo $alpha$. Possiamo quindi determinare il cateto $overline(B H) = h$. 

È chiaro che, essendo $B H C$ un triangolo rettangolo eventualmente degenere con ipotenusa $overline(B C)$, deve essere $a >= h$ (@grafico_risoluzione_triangoli1)
- se $a = h$, esiste un solo triangolo rettangolo $A B C$, con $C equiv H$.
- se $a >= c$, esiste un solo triangolo $A B C$ (@grafico_risoluzione_triangoli2)
- se invece $h < a < c$, esistono due triangoli, $A B C'$ e $A B C''$ (@grafico_risoluzione_triangoli3)

In questi ultimi casi, l'angolo $gamma$ (o meglio il suo seno) può essere determinato usando il teorema dei seni:
$ a / (sin alpha) = c / (sin gamma) => sin gamma = c/a sin alpha $

#grafici_risoluzione_triangoli
#grafico_risoluzione_triangoli3

#definizione(title: "Teorema del coseno o di Carnot", label: <def-teorema-carnot>)[In ogni triangolo si ha:
$ a^2 = b^2 + c^2 - 2 b c cos alpha \ b^2 = a^2 + c^2 - 2 a c cos beta \ c^2 = a^2 + b^2 - 2 a b cos gamma $]

Anche se implicito nelle notazioni usate, è importante sottolineare che $alpha$ è l'angolo compreso tra i lati $b$ e $c$, $beta$ è quello compreso fra $a$ e $c$, e $gamma$ fra $a$ e $b$. Questo teorema può essere visto come un'estensione del teorema di Pitagora; infatti, se $alpha$ è retto, $b$ e $c$ sono i cateti, $a$ è l'ipotenusa e la formula si riduce al teorema di Pitagora, poichè $cos alpha = 0$.

Questo teorema permette di risolvere un triangolo quando sono noti due lati e l'angolo compreso, o quando sono conosciuti tutti e tre i lati. 
- Nel primo caso, con i valori di $b$, $c$ e l'angolo $alpha$ tra essi compreso, si trova subito il terzo lato $a$.
- Nel secondo caso, conosciuti $a$, $b$ e $c$, si determina $alpha$ e si può poi applicare il teorema dei seni per trovare uno degli angoli restanti.

Infine, esistono altri tre teoremi applicabili ai triangoli qualsiasi, anche se il loro utilizzo è molto limitato e non indispensabile: i teoremi dei seni (@def-teorema-eulero) e del coseno (@def-teorema-carnot) sono generalmente sufficienti per affrontare tutti i casi.

#definizione(title: "Teorema delle proiezioni", label: <def-teorema-proiezioni>)[In ogni triangolo, le seguenti formule sono valide:
$ a = b cos gamma + c cos beta \
  b = c cos alpha + a cos gamma \
  c = a cos beta + b cos alpha $] 

Il teorema si chiama così perché afferma che, in un triangolo, un lato è dato dalla somma delle proiezioni degli altri due lati su di esso.
#v(2em)
#definizione(title: "Teorema delle tangenti o di Nepero", label: <def-teorema-nepero>)[Per qualsiasi triangolo valgono queste equazioni:
$ (a - b) / (a + b) = tan((alpha - beta) / 2) / tan((alpha + beta) / 2) \
  (b - c) / (b + c) = tan((beta - gamma) / 2) / tan((beta + gamma) / 2) \
  (c - a) / (c + a) = tan((gamma - alpha) / 2) / tan((gamma + alpha) / 2) $]

Questo teorema rappresenta un'alternativa all'uso del teorema del coseno per risolvere un triangolo nel caso in cui siano noti due lati e l'angolo tra essi. Ad esempio, se si conoscono $a$, $b$ e $gamma$, allora la somma $alpha + beta = pi - gamma$ è nota. La prima delle formule in @def-teorema-nepero permette di determinare la tangente della semidifferenza di $alpha$ e $beta$, quindi anche $alpha - beta$. Conoscendo somma e differenza, si calcolano facilmente i singoli angoli $alpha$ e $beta$.

#definizione(title: "Teorema di Briggs", label: <def-teorema-briggs>)[In un triangolo, con $p$ che indica il semiperimetro, sono valide le seguenti formule:
$ sin alpha/2 = sqrt(((p - b)(p - c)) / (b c)) quad sin beta/2 = sqrt(((p - c)(p - a)) / (c a)) \ sin gamma/2 = sqrt(((p - a)(p - b)) / (a b)) \ cos alpha/2 = sqrt((p(p - a)) / (b c)) quad cos beta/2 = sqrt((p(p - b)) / (c a)) \ cos gamma/2 = sqrt((p(p - c)) / (a b)) $]

Questo teorema può essere utilizzato come alternativa al teorema del coseno per risolvere un triangolo quando si conoscono i tre lati. Una rapida applicazione dei teoremi sui triangoli rettangoli porta al seguente teorema relativo all'area di un triangolo.

#definizione(title: "Teorema dell'area di un triangolo", label: <def-teorema-area-triangolo>)[L'area di qualsiasi triangolo è uguale alla metà del prodotto di due lati per il seno dell'angolo compreso:
$ A = 1/2 a b sin gamma = 1/2 b c sin alpha = 1/2 a c sin beta $]

Conseguenze di questo teorema sono i teoremi che riguardano l'area e la lunghezza delle  diagonali di un quadrilatero convesso (@grafico_teorema_quadrilatero_convesso).

#definizione(title: "Teorema dell'area di un quadrilatero convesso", label: <def-teorema-area-quadrilatero-convesso>)[L'area di un quadrilatero convesso è data dalla metà del prodotto delle sue diagonali per il seno di un angolo tra esse:
$ A = 1/2 dot d_1 dot  d_2 sin alpha $]

#definizione(title: "Teorema di Tolomeo", label: <def-teorema-tolomeo>)[In un quadrilatero convesso inscritto in una circonferenza, il prodotto delle lunghezze delle diagonali è uguale alla somma dei prodotti dei lati opposti:
$ d_1 dot d_2 = (overline(A B) dot overline(C D)) + (overline(B C) dot overline(A D)) $]

#grafico_teorema_quadrilatero_convesso

== Equazioni e disequazioni goniometriche

Le equazioni o disequazioni in cui l'incognita appare come argomento di una funzione trigonometrica sono chiamate goniometriche. Similmente alle disequazioni irrazionali, logaritmiche ed esponenziali, non esistono metodi generali per risolverle, e spesso è necessario ricorrere a metodi numerici, come illustrato nel seguente esempio.

#esempio[considerare la risoluzione della disequazione:
$ 1/x + sin x > 0 $

Analizzando il grafico nella figura 11.43, che rappresenta la funzione nel primo membro, notiamo che la funzione è dispari, quindi basta risolverla per $x > 0$. Dal grafico deduciamo che l'insieme delle soluzioni è:
$ lr(\]0, x_A\[ space union space \]x_B, x_C\[ space union space \]x_D, x_E\[ space union space dots) $

I valori $x_A$, $x_B$, $x_C$, ecc., devono essere determinati numericamente, benché si avvicinino sempre più ai multipli di $pi$ man mano che $x$ aumenta e $1/x$ si riduce. I risultati approssimativi sono:
$ x_A approx 3.42; quad x_B approx 6.11; quad x_C approx 9.53; quad x_D approx 12.47; quad x_E approx 15.79 $
mentre per $pi$ e i suoi multipli si ha:
$ pi approx 3.14; quad 2pi approx 6.28; quad 3pi approx 9.42; quad 4pi approx 12.56; quad 5pi approx 15.71 $

#grafico_1x_sinx
]

=== Disequazioni elementari

Passiamo ora a discutere alcuni tipi di equazioni o disequazioni risolvibili con strategie semplici, in particolare quelle elementari che possono essere ridotte a forme più semplici. Le tecniche impiegate per le equazioni e le disequazioni sono sostanzialmente identiche: ci concentreremo principalmente sulle disequazioni, dalle quali deriviamo le strategie per risolvere le equazioni. Come consuetudine, useremo esempi per illustrare i metodi.

Chiamiamo elementari le disequazioni del tipo:
$ sin x >= a; quad cos x >= a; quad tan x >= a; quad cot x >= a $

Sebbene non si tratti esplicitamente di equazioni o disequazioni che coinvolgono le funzioni secante e cosecante, le stesse tecniche possono essere applicate. In ogni caso, queste disequazioni possono essere ridotte a quelle che coinvolgono seno e coseno.

Si raccomanda l'uso di una tecnica grafica per risolvere tali disequazioni, sia tramite l'uso della circonferenza goniometrica sia tramite i grafici delle funzioni goniometriche. Nei prossimi esempi li useremo entrambi.

#esempio[Risolvere la disequazione:
$ sin x > 1/2 $

Ponendo $Y = sin x$ e $X = cos x$, questa disequazione si traduce nel sistema:
$ cases(
  #v(0.25em) Y > 1/2,
  #v(0.25em) X^2 + Y^2 = 1
) $

#grafico_disequazione_goniometrica1

Osservando la @grafico_disequazione_goniometrica1 e considerando la periodicità della funzione, concludiamo immediatamente che l'insieme delle soluzioni è dato da:
$ pi/6 + 2k pi < x < (5pi)/6 + 2k pi , quad k in ZZ $

L'uso del grafico della funzione seno conduce allo stesso risultato ed evidenzia immediatamente la periodicità. Disegnato il grafico della funzione $f(x) = sin x$ e segnato il valore $1/2$ sull'asse delle ordinate, cerchiamo i valori di $x$ sull'asse delle ascisse il cui seno supera $1/2$, ossia dove il grafico sta sopra la retta $y = 1/2$. 

Questo rende palese che i valori richiesti sono compresi tra $alpha$ e $beta$ e la situazione si ripete identicamente sia a sinistra sia a destra a intervalli regolari di $2pi$. In questo caso, poiché sull'asse delle ordinate il valore è $1/2$, i valori sull'asse delle ascisse possono essere espressi in termini di multipli e sottomultipli di $pi$. Tuttavia, spesso si deve ricorrere alle funzioni trigonometriche inverse e ai calcoli numerici approssimati per trovare i valori desiderati. Consulta la @grafico_disequazione_goniometrica2 per maggiori dettagli.

#grafico_disequazione_goniometrica2
][Risolvere la disequazione $cos x < 1/3$. Ponendo $Y = sin x$ e $X = cos x$, questa disequazione equivale al sistema:
$ cases(
  #v(0.25em) X < 1/3,
  #v(0.25em) X^2 + Y^2 = 1
) $

#grafico_disequazione_goniometrica3

Osservando che $alpha = arccos(1/3)$ e utilizzando la figura 11.46, considerando la periodicità, si deduce che l'insieme delle soluzioni è dato da:
$ alpha + 2k pi < x < 2pi - alpha + 2k pi , quad k in ZZ $
con $alpha approx 1.2309$.

Il grafico della funzione coseno porta allo stesso risultato ma risulta più significativo poiché evidenzia immediatamente la periodicità. Tracciando il grafico di $f(x) = cos x$, si rileva che i valori di $x$ sull'asse delle ascisse per cui il coseno non supera $1/3$ si trovano tra $alpha$ e $beta$. Questa situazione si ripete identicamente a intervalli regolari di $2pi$. 

Poiché sull'asse delle ordinate si trova $1/3$, le ascisse non possono essere espresse in multipli o sottomultipli di $pi$, perciò è necessario ricorrere alle funzioni trigonometriche inverse. In questi casi, è conveniente denominare l'angolo come $alpha$ per semplificare il calcolo, evitando la scrittura continua di $arccos(1/3)$, il cui valore approssimato è fornito facilmente dalle calcolatrici.

#grafico_disequazione_goniometrica4

][
//! arrivato qui
  
Risolvere la disequazione $ tan x > sqrt(3) $

Quando si tratta di disequazioni con tangente o cotangente, è importante ricordare che la periodicità è di $pi$ invece di $2pi$. Utilizzando la circonferenza goniometrica, ci si può limitare alla semicirconferenza nel primo e quarto quadrante per la tangente, nel primo e secondo per la cotangente.

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

#grafico_disequazione_goniometrica5

L'uso del grafico della funzione tangente porta allo stesso risultato, ma offre una comprensione più immediata grazie alla sua natura periodica. Tracciando il grafico della funzione $f(x) = tan x$, si mostra il valore $sqrt(3)$ sull'asse delle ordinate. È importante determinare quali valori di $x$ sull'asse delle ascisse hanno una tangente superiore a $sqrt(3)$, ossia dove il grafico si colloca al di sopra della retta $y = sqrt(3)$. L'osservazione della figura 11.49 permette di giungere facilmente a questa conclusione.

#grafico_disequazione_goniometrica6

][Risolvere la disequazione $ cot x > -2 $

Se poniamo $Y = sin x$ e $X = cos x$, la disequazione equivale al sistema:
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

#grafico_disequazione_goniometrica7

Utilizzando la @grafico_disequazione_goniometrica7 e tenendo conto della periodicità, si giunge rapidamente alla conclusione che l'insieme delle soluzioni è dato da:
$ k pi < x < alpha + k pi , quad k in ZZ $
con $alpha = "arccot"(-2) approx 2.67795$.

Anche l'impiego del grafico della funzione cotangente conduce allo stesso risultato, ma ancora una volta offre un'interpretazione più significativa in termini di periodicità. Tracciando il grafico della funzione $f(x) = cot x$ e mostrando il valore $-2$ sull'asse delle ordinate, cerchiamo i valori di $x$ sull'asse delle ascisse con una cotangente superiore a $-2$, cioè dove il grafico si trova al di sopra della retta $y = -2$. L'esame della @grafico_disequazione_goniometrica8 rende questa deduzione piuttosto semplice da realizzare.

#grafico_disequazione_goniometrica8

]

=== Disequazioni lineari in seno e coseno

Le disequazioni lineari in seno e coseno hanno la forma:
$ a sin x + b cos x + c lt.eq.gt 0 $ <diseq-lineari-seno-coseno>

Per risolvere queste disequazioni esistono diverse strategie. Un approccio consiste nel trattarle come disequazioni elementari, definendo $X = cos x$ e $Y = sin x$.

#esempio[Risolvere la disequazione:
$ sin x + sqrt(3) cos x <= sqrt(3) $

Utilizzando le posizioni precedenti, la disequazione si riduce al sistema:
$ cases(
  Y + sqrt(3) X <= sqrt(3),
  X^2 + Y^2 = 1
) $

È utile determinare preliminarmente i punti di intersezione della retta (che delimita il semipiano definito dalla disequazione) con la circonferenza goniometrica. Si trovano facilmente i punti $A = (1, 0)$ e $B = (1/2, sqrt(3)/2)$.

#grafico_disequazione_goniometrica9

Dalla @grafico_disequazione_goniometrica9, emerge che le soluzioni della disequazione sono:
$ pi/3 + 2k pi <= x <= 2pi + 2k pi, quad k in ZZ $

Un'altra strategia efficiente consiste nel trasformare la disequazione come la @diseq-lineari-seno-coseno in forma elementare. Questo si realizza dividendo entrambi i membri per $sqrt(a^2 + b^2)$ (essendo $a^2 + b^2 != 0$):
$ a / sqrt(a^2 + b^2) sin x + b / sqrt(a^2 + b^2) cos x + c / sqrt(a^2 + b^2) >= 0 $

Poiché esiste un angolo $alpha$ tale che:
$ cos alpha = a / sqrt(a^2 + b^2) quad "e" quad sin alpha = b / sqrt(a^2 + b^2) $

la disequazione assume la forma:
$ cos alpha sin x + sin alpha cos x + c / sqrt(a^2 + b^2) >= 0 $

che, per le formule di addizione, diventa:
$ sin(x + alpha) + c / sqrt(a^2 + b^2) >= 0 $

Questa può essere risolta come una disequazione elementare ponendo $x + alpha = t$.

Riconsiderando l'esempio precedente, la disequazione può essere riscritta come:
$ 1/2 sin x + sqrt(3)/2 cos x <= sqrt(3)/2 => \ => cos(pi/3) sin x + sin(pi/3) cos x <= sqrt(3)/2 => \ => sin(x + pi/3) <= sqrt(3)/2 $

Questa disequazione in $t = x + pi/3$ è verificata#footnote[Desiderando rimanere nell'intervallo [0, 2π], si sarebbe potuto esprimere le soluzioni come $0 ≤ t <= 2/3 pi or 2/3 pi <= t < 2π$, tenendo conto della periodicità. Tuttavia, è stato optato per rappresentare l'insieme delle soluzioni come un unico intervallo per semplificare. Questa scelta è puramente stilistica e non cambia la sostanza del problema.] per:
$ (2pi)/3 + 2k pi <= t <= (7pi)/3 + 2k pi , quad k in ZZ $

che, effettuando la sostituzione inversa, fornisce le stesse soluzioni trovate in precedenza.

Si potrebbero adoperare anche le formule parametriche, esprimendo la disequazione @diseq-lineari-seno-coseno in funzione di $tan x/2$. Tuttavia, poiché tali formule non sono valide per tutti i valori di $x$, occorre effettuare una verifica separata per i valori esclusi; per questo motivo, tale metodo è generalmente sconsigliato.]

=== Disequazioni con una singola funzione trigonometrica

Queste sono disequazioni nella forma $f(sin x) > 0$, o analoghe in cui il seno è sostituito da un'altra funzione trigonometrica. Utilizzando la sostituzione $sin x = t$ (o le equivalenti per le altre funzioni), si possono ricondurre a una disequazione algebrica del tipo $f(t) > 0$. Risolvendo quest'ultima, la sostituzione inversa riporterà a una o più disequazioni elementari. 

Frequentemente, $f(x)$ è un polinomio di secondo grado del tipo $a x^2 + b x + c$, o di grado superiore ma scomponibile in fattori.

#esempio[Risolvere la disequazione:
$ 2 sin^2 x + sin x - 1 < 0 $

Ponendo $sin x = t$, otteniamo la disequazione di secondo grado $2 t^2 + t - 1 < 0$, valida per $-1 < t < 1/2$. Di conseguenza, la disequazione proposta equivale al sistema:
$ cases(
  sin x > -1,
  sin x < display(1/2)
) $

#grafico_disequazione_goniometrica10

Utilizzando le sostituzioni geometriche $Y = sin x$ e $X = cos x$, otteniamo:
$ cases(
  Y > -1,
  Y < display(1/2),
  X^2 + Y^2 = 1
) $

Questo sistema può essere risolto utilizzando la circonferenza goniometrica (@grafico_disequazione_goniometrica10) o il grafico della funzione seno (@grafico_disequazione_goniometrica11). Le soluzioni finali sono:
$ -pi/2 + 2k pi < x < pi/6 + 2k pi or (5pi)/6 + 2k pi < x < (3pi)/2 + 2k pi , quad k in ZZ $

#grafico_disequazione_goniometrica11

]

=== Disequazioni omogenee di secondo grado in seno e coseno

Queste disequazioni hanno la forma generale:
$ a sin^2 x + b sin x cos x + c cos^2 x + d >= 0 $

Si possono risolvere trasformandole in disequazioni lineari in seno e coseno tramite le formule di bisezione e duplicazione:
$ sin^2 x = (1 - cos 2x)/2 , quad cos^2 x = (1 + cos 2x)/2 , quad sin x cos x = 1/2 sin 2x $

#esempio[Risolvere la disequazione:
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

Questa disequazione fornisce lo stesso insieme di soluzioni trovato in precedenza. Tuttavia, esclude formalmente i valori $pi/2 + k pi$ dove la tangente non è definita; tali valori vanno poi reintegrati nell'insieme delle soluzioni poiché corrispondono a $cos x = 0$, condizione che verifica la disequazione originaria.]

=== Disequazioni simmetriche in seno e coseno

Si tratta di disequazioni del tipo:
$ a(sin x plus.minus cos x) + b sin x cos x + c lt.eq.gt 0 $

Più precisamente, si chiamano simmetriche quelle con il segno "$+$", mentre quelle con il segno "$-$" sono dette semisimmetriche. Questa distinzione deriva dal fatto che, nel caso simmetrico, scambiare seno e coseno non influisce sulla forma della disequazione.

Queste disequazioni possono essere risolte attraverso la sostituzione $x = t + pi/4$, che trasforma l'espressione in una disequazione di secondo grado in seno e coseno.

#esempio[Risolvere la disequazione:
$ sin x - cos x - 2 sqrt(2) sin x cos x < 0 $

Applicando la sostituzione indicata e semplificando, si ottiene la disequazione:
$ 2 sin^2 t + sin t - 1 < 0 $

le cui soluzioni sono:
$ (5pi)/6 + 2k pi < t < (3pi)/2 + 2k pi quad "oppure" quad (3pi)/2 + 2k pi < t < (13pi)/6 + 2k pi , quad k in ZZ $

Effettuando la sostituzione inversa $t = x - pi/4$, si ottiene:
$ (13pi)/12 + 2k pi < x < (7pi)/4 + 2k pi quad "oppure" quad (7pi)/4 + 2k pi < x < (29pi)/12 + 2k pi , quad k in ZZ $

Si nota che, per comodità, sono state espresse le soluzioni considerando un intervallo più ampio di $[0, 2pi]$ per ottenere una rappresentazione più compatta.]

=== Altre disequazioni

Come già menzionato, non esistono tecniche generali per risolvere tutte le disequazioni trigonometriche. Per quelle non classificabili nei modelli noti, possiamo applicare metodi algebrici adattati o usare le formule trigonometriche per cercare di ricondurle a forme già analizzate.

#esempio[Risolvere la disequazione:
$ (cos 2x + sin x - 1) / ((sin x + cos x)(1 - sqrt(2) sin x)) >= 0 $

È necessario prima definire il dominio e successivamente determinare il segno di ciascun fattore. Conviene utilizzare lo studio del segno tramite grafico "$+ \/ -$", limitandosi a un intervallo pari al periodo comune. Determinare il periodo, un compito che non sempre si rivela semplice, come dimostra il caso della funzione tangente. Questa funzione è periodica con periodo $pi$, anche se risulta dal rapporto di due funzioni con periodo $2 pi$. Nei casi più semplici, una volta individuato il periodo delle singole funzioni, sarà sufficiente prendere, se disponibile, il minimo comune multiplo dei periodi.

Nel caso in esame, per determinare il segno del numeratore, bisogna risolvere la disequazione $cos 2x + sin x - 1 > 0$. Questa può essere trasformata in una disequazione di secondo grado in seno tramite le formule di duplicazione del coseno. Per individuare il segno dei due fattori del denominatore, occorre risolvere le disequazioni elementari $sin x + cos x > 0$ e $1 - sqrt(2) sin x > 0$. Si osserva inoltre che la funzione ha periodo di $2 pi$ (anzi, $2 pi$ è il minimo periodo, ma questo dettaglio non è cruciale per il problema in questione). Sarà quindi sufficiente focalizzarsi sull'intervallo $[0, 2pi]$.

- Numeratore: per trovare il segno del numeratore si risolve la disequazione $cos 2x + sin x - 1 > 0$, riconducibile a una disequazione di secondo grado in seno usando le formule di duplicazione del coseno.
- Denominatore: per determinare il segno dei due fattori al denominatore si risolvono le disequazioni elementari:
  $ sin x + cos x > 0 quad "e" quad 1 - sqrt(2) sin x > 0 $

#schema_segni(
  punti: ([$0$], [$pi/6$], [$pi/4$], [$(3 pi)/4$], [$(5 pi)/6$], [$script(pi)$], [$(7 pi)/4$], [$script(2 pi)$]),
  righe: (
    (
      testo: [ #scale(70%)[$cos 2x + sin x - 1$] ],
      segni: ([$0$], [$+$], [$0$], [$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$], [$0$], [$-$], [$-$], [$-$], [$0$])
    ),
    (
      testo: [ #scale(70%)[$sin x + cos x$] ],
      segni: ([$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$0$], [$-$], [$-$], [$-$], [$-$], [$-$], [$0$], [$+$], [$+$])
    ),
    (
      testo: [ #scale(70%)[$1 - sqrt(2) sin x$] ],
      segni: ([$+$], [$+$], [$+$], [$+$], [$0$], [$-$], [$0$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$], [$+$])
    ),
    (
      testo: [ Complessivo ],
      segni: ([$0$], [$+$], [$0$], [$-$], [$times$], [$+$], [$times$], [$+$], [$0$], [$-$], [$0$], [$+$], [$times$], [$-$], [$0$])
    ),
  ), 
  evidenzia: (0, 1, 2, 5, 7, 11)   
)

Le soluzioni nell'intervallo $[0, 2pi[$ sono:
$ 0 <= x <= pi/6 quad "o" quad pi/4 < x < (3pi)/4 quad "o" quad (3pi)/4 < x <= (5pi)/6 quad "o" quad pi <= x < (7pi)/4 $]

=== Disequazioni con funzioni trigonometriche inverse

Questo genere di disequazioni sono generalmente complesse; in questo testo, ci si limita ad analizzare alcuni casi semplici con l'ausilio dei relativi grafici.

#esempio[Risolvere la disequazione:
$ arcsin x < pi/3 $

Tracciando il grafico di $arcsin x$ e segnando il valore $pi/3$ sull'asse delle ordinate, si individua la soluzione. Per determinare il valore del punto $sqrt(3)/2$ sull'asse delle ascisse, è sufficiente ricordare che la funzione arcseno rappresenta l'inversa della funzione seno nel tratto $[-pi/2, pi/2]$. Di conseguenza, sull'asse delle ordinate appaiono gli archi, mentre sull'asse delle ascisse si trovano i valori del seno. Poiché la funzione arcoseno è strettamente crescente, possiamo applicare la funzione seno a entrambi i membri senza invertire il verso della disequazione. Ricordando che $sin(arcsin x) = x$ per $x in [-1, 1]$, si ha:
$ sin(arcsin x) < sin(pi/3) => x < sqrt(3)/2 $

Considerando il dominio della funzione $arcsin x$, ovvero $[-1, 1]$, l'insieme delle soluzioni è:
$ -1 <= x < sqrt(3)/2 $

#grafico_disequazione_goniometrica12

][
Risolvere la disequazione:
$ arccos x > 3/4 $

Per determinare il valore di $cos (3/4)$ sull'asse delle ascisse, è utile ricordare che la funzione arccoseno è l'inversa della funzione coseno nel tratto $[0, π]$. Pertanto, sull'asse delle ordinate compaiono gli archi e sull'asse delle ascisse i valori del coseno.

Poiché la funzione arcocoseno è strettamente decrescente, applicando la funzione coseno a entrambi i membri occorre invertire il verso della disequazione. Sapendo che $cos(arccos x) = x$ per $x in [-1, 1]$, si ottiene:
$ cos(arccos x) < cos(3/4) => x < cos(3/4) approx 0.73 $

Tenendo conto del dominio $[-1, 1]$ della funzione arccoseno, la soluzione è:
$ -1 <= x < cos(3/4) $

#grafico_disequazione_goniometrica13
][
Risolvere la disequazione:
$ arcsin^2 x - 3 arcsin x + 2 > 0 $

Ponendo $arcsin x = t$, la disequazione diventa di secondo grado ($t^2 - 3t + 2 > 0$), che si risolve per $t < 1$ oppure $t > 2$. Otteniamo quindi:
$ arcsin x < 1 quad "oppure" quad arcsin x > 2 $

La seconda condizione non ha soluzioni, poiché l'immagine dell'arcoseno è $[-pi/2, pi/2]$ e $2 > pi/2$. La prima condizione, applicando la funzione seno a entrambi i membri, fornisce:
$ x < sin(1) approx 0.84 $

Intersecando con il dominio $[-1, 1]$ dell'arcoseno, si ottiene la soluzione finale:
$ -1 <= x < sin(1) $]