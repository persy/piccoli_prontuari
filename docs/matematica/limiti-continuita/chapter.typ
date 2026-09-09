#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Limiti e continuità <limiti_continuita>

#intro[
  Lo studio dei limiti costituisce il pilastro fondamentale dell'analisi matematica, offrendo lo strumento rigoroso per descrivere il comportamento di una funzione nei pressi di un punto o all'infinito, a prescindere dal valore che essa assume in quel singolo punto. In questo capitolo si introducono le definizioni formali di limite e le relative proprietà algebriche e topologiche, necessarie per affrontare l'analisi delle forme di indecisione e il calcolo dei limiti notevoli. Tali concetti permettono infine di formalizzare la nozione di continuità, esplorando le proprietà fondamentali delle funzioni continue e i teoremi chiave che ne governano il comportamento negli intervalli reali.
]

== Elementi di topologia sulla retta reale

Riprendiamo alcuni concetti, già accennati nella @numeri_naturali_reali.

=== Intervalli

#definizione(title: "Intervalli", label: <def-intervalli>)[Si definiscono intervalli di $RR$ tutti i sottoinsiemi $I subset.eq RR$ che rispettano la seguente condizione: se $a, b in I$, con $a <= b$, allora ogni $x in RR$, tale che $a <= x <= b$, appartiene a $I$. 

In altre parole, un sottoinsieme $I$ è un intervallo se, contenendo due numeri reali qualsiasi, include anche tutti i numeri compresi tra essi.]

I possibili intervalli di $RR$ sono quelli elencati di seguito, con $a, b in RR, a <= b$.
+ intervalli degeneri:
  - $emptyset$
  - ${a}, quad forall a in RR$

+ intervalli limitati, che corrispondono ai segmenti, con o senza uno o entrambi gli estremi:
  - $[a, b] = {x in RR | a <= x <= b}$: intervallo chiuso con estremi $a$ e $b$;
  - $[a, b[ = {x in RR | a <= x < b}$: intervallo aperto a destra con estremi $a$ e $b$;
  - $]a, b] = {x in RR | a < x <= b}$: intervallo aperto a sinistra con estremi $a$ e $b$;
  - $]a, b[ = {x in RR | a < x < b}$: intervallo aperto con estremi $a$ e $b$

+ intervalli illimitati, che corrispondono alle semirette o all'intera retta:
  - $]-oo, a] = {x in RR | x <= a}$: intervallo chiuso inferiormente illimitato;
  - $]-oo, a[ = {x in RR | x < a}$: intervallo aperto inferiormente illimitato;
  - $[a, +oo[ = {x in RR | x >= a}$: intervallo chiuso superiormente illimitato;
  - $]a,+oo[= { x ∈ R | x > a }$: intervallo aperto superiormente illimitato;
  - $]-oo,+oo[= R$: intervallo illimitato

L'intero insieme dei numeri reali $RR$ può essere espresso tramite la notazione $]-infinity, +infinity[$; tale intervallo è detto illimitato e possiede la proprietà di essere sia aperto sia chiuso. Nel caso particolare in cui gli estremi coincidano ($a = b$), l'intervallo chiuso $[a, b]$ si riduce a un singolo punto e prende il nome di intervallo degenere. Allo stesso modo, l'insieme vuoto viene talvolta trattato come un intervallo speciale, detto intervallo nullo.

#definizione(title: "Centro e raggio di un intervallo", label: <def-centro-raggio--intervallo>)[Dato un qualsiasi intervallo limitato di estremi $a$ e $b$, si definisce centro il punto medio: $ x_0 = (a + b) / 2 $

Viene definito con il nome di raggio o semiampiezza il valore: $ delta = b - x_0 = x_0 - a $]


Di conseguenza, l'intervallo aperto centrato in $x_0$ con raggio $delta$ si rappresenta come $]x_0 - delta, x_0 + delta[$. Ogni punto appartenente all'intervallo che non coincida con i suoi eventuali estremi si definisce punto interno. Come ulteriore conseguenza dell'assioma di continuità, si introduce il seguente risultato fondamentale.

#definizione(title: "Teorema di Cantor", label: <def-teorema-cantor>)[Considerata una successione $(I_n)_n$ di intervalli chiusi e limitati inscatolati, ovvero tali che $ I_(n+1) subset.eq I_n $ per ogni $n$, esiste almeno un numero reale $c$ appartenente a ciascun intervallo della successione. Se inoltre l'ampiezza degli intervalli diventa arbitrariamente piccola al crescere di $n$, tale elemento $c$ è unico.

#dimostrazione()
Si considerino gli insiemi $A$ e $B$ costituiti, rispettivamente, dagli estremi sinistri e destri di tutti gli intervalli $I_n$. Tali insiemi soddisfano le condizioni richieste dall'assioma di continuità dei numeri reali: esiste pertanto almeno un elemento di separazione $c$ che, per le sue stesse proprietà, risulta contenuto in ogni intervallo. 

Qualora l'ampiezza degli intervalli diventi arbitrariamente piccola, il punto $c$ deve essere necessariamente unico. Se ne esistessero due distinti, $c_1$ e $c_2$, l'intero intervallo $[c_1, c_2]$ dovrebbe appartenere a ciascun $I_n$, il che contraddirebbe l'ipotesi che l'ampiezza diventi infinitesima.]

Si osservi che le ipotesi del teorema sono stringenti: la chiusura e la limitatezza degli intervalli sono requisiti indispensabili. Considerando infatti gli intervalli non chiusi $I_n = lr(]0, 1/n])$, 
la loro intersezione risulta vuota. Allo stesso modo, venendo meno la limitatezza, la successione di intervalli $[n, +infinity[$ produce anch'essa un'intersezione vuota.

Per il procedimento diagonale di Cantor, rimandiamo alla @numerabilità_razionali della sezione @numeri_naturali_reali.

=== Intorni

#definizione(title: "Intorno di un punto", label: <def-intorno>)[Dato un punto $x_0 in RR$, si definisce intorno di $x_0$ un qualsiasi intervallo aperto $]a, b[$ che contenga il punto stesso. In particolare, l'intervallo della forma $]x_0 - delta, x_0 + delta[$ prende il nome di intorno circolare di centro $x_0$ e raggio $delta$. 

Analogamente, l'intervallo $]x_0 - delta, x_0]$ costituisce un intorno sinistro di $x_0$, mentre $[x_0, x_0 + delta[$ definisce un suo intorno destro. Il concetto si estende anche ai punti all'infinito: un intorno di $+infinity$ è rappresentato da una qualsiasi semiretta aperta superiormente illimitata $]a, +infinity[$, mentre un intorno di $-infinity$ corrisponde a una semiretta aperta inferiormente illimitata $]-infinity, b[$.]

#esempio[Un intervallo aperto è intorno di tutti i punti che contiene, mentre un intervallo chiuso $[a, b]$ è intorno di ciascun suo punto interno, oltre a essere intorno destro dell'estremo $a$ e intorno sinistro dell'estremo $b$.] 

Dal punto di vista geometrico e analitico, la nozione di intorno formalizza l'idea intuitiva di vicinanza: fissato un punto $x_0$ e un suo intorno $I_(x_0)$, i punti appartenenti a tale insieme possono essere considerati vicini a $x_0$ secondo il grado di precisione stabilito dall'intorno scelto.

=== Insiemi e punti di accumulazione

==== Punti interni ed esterni

#definizione(title: "Punto interno", label: <def-punto-interno>)[Assumendo che tutti gli insiemi considerati siano sottoinsiemi della retta reale $RR$, un punto $x_0$ si dice interno ad un insieme $A$ se è possibile individuare un intorno di $x_0$ interamente contenuto in $A$. 

Diversamente, $x_0$ si definisce esterno ad $A$ se risulta essere un punto interno al suo complementare rispetto a $RR$. 

La totalità dei punti interni ad $A$ costituisce l'interno di $A$ e si indica simbolicamente con $std.math.accent(A, °)$.]

Per qualsiasi intervallo, tutti i punti diversi dagli estremi sono interni all'intervallo stesso, coerentemente con la nozione classica. Risulta fondamentale non confondere il concetto di punto interno con quello di semplice appartenenza: gli estremi di un intervallo chiuso $[a, b]$ appartengono all'insieme ma non sono punti interni per esso. In generale, un punto interno ad $A$ appartiene necessariamente ad $A$, mentre un punto esterno non vi appartiene mai. 

#esempio[I punti formati dall'unione arbitraria di intervalli aperti sono tutti interni all'unione ottenuta, mentre insiemi quali quello dei numeri razionali $QQ$ o dei numeri irrazionali $RR without QQ$ non possiedono alcun punto interno.]

#definizione(title: "Punto di frontiera", label: <def-punto-frontiera>)[Dato un insieme $A$, un punto $x_0$ che non sia né interno né esterno ad $A$ si definisce punto di frontiera per $A$. 

L'insieme formato da tutti i punti di frontiera si indica con $cal(F)(A)$ e prende il nome di frontiera di $A$.]

Una caratterizzazione fondamentale dei punti di frontiera è fornita dal seguente risultato.

#definizione(title: "Teorema", label: <def-teorema-punto-frontiera>)[Un punto $x_0$ è di frontiera per un insieme $A$ se e solo se ogni suo intorno contiene sia elementi appartenenti ad $A$ sia elementi appartenenti al suo complementare.]

Una diretta conseguenza di questo teorema è che un insieme e il suo complementare possiedono la stessa frontiera. Si osservi inoltre che un punto appartenente alla frontiera di $A$ può far parte oppure no dell'insieme $A$. 

#esempio[La frontiera di un qualsiasi intervallo è costituita dai suoi estremi; l'insieme dei numeri razionali $QQ$ (così come quello degli irrazionali $RR without QQ$) ha come frontiera l'intero insieme dei numeri reali $RR$; l'insieme $A = { 1/n | n in NN, n > 0 }$ possiede come frontiera l'insieme $A union {0}$; l'intero insieme $RR$, infine, ha frontiera vuota.]

==== Insiemi aperti e chiusi

#definizione(title: "Insieme aperto", label: <def-insieme-aperto>)[Un insieme $A$ si dice aperto se coincide con il suo interno, ossia se $A = std.math.accent(A, °)$, cioè se è formato esclusivamente da punti interni.] 

Da questo punto di vista, la nozione di insieme aperto costituisce la naturale generalizzazione del concetto di intervallo aperto ad insiemi più articolati.

#esempio[L'insieme $RR without NN$ è un insieme aperto, così come l'unione o l'intersezione di due intervalli aperti qualunque. Diversamente, l'intersezione di infiniti insiemi aperti può non essere un insieme aperto: considerando ad esempio la successione di intervalli aperti $I_n = lr(\]-1/n, 1/n\[)$ per $n in NN$ con $n > 0$, la loro intersezione infinita si riduce al singolo punto ${0}$, che non costituisce un insieme aperto.]

#definizione(title: "Insieme chiuso", label: <def-insieme-chiuso>)[Un insieme $A$ si definisce chiuso se il suo complementare rispetto a $RR$ è un insieme aperto.] 

Di conseguenza, ogni intervallo chiuso è un insieme chiuso. Occorre evidenziare che un generico insieme non è necessariamente aperto o chiuso. 

#esempio[Un intervallo limitato aperto a sinistra e chiuso a destra $]a, b]$ oppure l'insieme $QQ$ non sono né aperti né chiusi; l'insieme dei numeri naturali $NN$ è un insieme chiuso. Invece, l'insieme $A = {1/n | n in NN, n > 0}$ non è né aperto né chiuso.]

==== Punti di accumulazione e isolati

#definizione(title: "Punto di accumulazione", label: <def-punto-accumulazione>)[Un punto $x_0$ si dice di accumulazione per un insieme $A$ se in ogni suo intorno cadono infiniti punti di $A$. Si osservi che un punto di accumulazione per $A$ può appartenere oppure no all'insieme stesso.]

#esempio[Per un qualsiasi intervallo, i punti di accumulazione coincidono con l'intervallo stesso unito ai suoi eventuali estremi; per l'insieme dei numeri razionali $QQ$, ciascun numero reale è punto di accumulazione. Al contrario, l'insieme dei numeri naturali $NN$ è del tutto privo di punti di accumulazione. Per l'insieme $A = \{ 1/n | n in NN, n > 0 \}$, l'origine $0$ costituisce l'unico punto di accumulazione.]

La caratterizzazione degli insiemi chiusi in relazione a tali concetti è formalizzata dai due teoremi seguenti.

#definizione(title: "Teorema")[Un insieme è chiuso se e solo se contiene tutti i suoi eventuali punti di accumulazione.]

#definizione(title: "Teorema")[Un insieme è chiuso se e solo se contiene tutti i suoi eventuali punti di frontiera.]

Un ulteriore risultato di primaria importanza per la topologia della retta reale è il seguente.

#definizione(title: "Teorema di Bolzano-Weierstrass", label: <def-teorema-bolzano-weierstrass>)[Ogni insieme $A$ infinito e limitato possiede almeno un punto di accumulazione.

#dimostrazione() 

Poiché $A$ è limitato, è possibile racchiuderlo in un intervallo chiuso e limitato $I$. Dividendolo a metà tramite il suo punto medio, almeno uno dei due sottointervalli conterrà infiniti punti di $A$. Reiterando tale suddivisione, si genera una successione di intervalli chiusi, limitati e inscatolati la cui ampiezza diventa arbitrariamente piccola. Per il teorema di Cantor, esiste un unico punto $c$ comune a tutti gli intervalli. Tale elemento $c$ risulta di accumulazione per $A$, in quanto ogni suo intorno contiene interamente uno degli intervalli della successione e, di conseguenza, infiniti punti appartenenti ad $A$.]

#definizione(title: "Punto isolato", label: <def-punto-isolato>)[Dato un insieme $A$ e un punto $x_0 in A$, se $x_0$ non è un punto di accumulazione per $A$, esso si definisce punto isolato in $A$.]

#esempio[Nell'insieme dei numeri naturali $NN$ tutti i punti sono isolati, mentre un generico intervallo o l'insieme dei numeri razionali $QQ$ non contengono alcun punto isolato. Infine, l'insieme $A = \{ 1/n | n in NN, n > 0 \}$ è formato esclusivamente da punti isolati.]

== Concetto di limite

Per introdurre il concetto di limite, esaminiamo alcuni esempi utilizzando dei grafici: il problema che stiamo affrontando è analizzare il comportamento di una funzione nei pressi di un punto del dominio, senza concentrarci necessariamente su ciò che avviene esattamente in quel punto.

#grafici_limiti1

Nelle applicazioni che ci interessano, i sottoinsiemi di $RR$ che incontreremo più spesso saranno gli intervalli (di qualunque tipo) e le unioni di intervalli. La determinazione dei punti interni, esterni, ecc., per questi insiemi è relativamente semplice. In particolare, è importante notare i seguenti aspetti:
- in qualsiasi intervallo, tutti i punti al suo interno sono interni, tranne eventualmente gli estremi
- ogni punto di un intervallo, inclusi eventualmente gli estremi, è un punto di accumulazione
- solo gli eventuali estremi di un intervallo sono punti di frontiera
- non ci sono punti isolati in un intervallo

Basandoci su queste considerazioni, è facile determinare i punti interni, esterni, ecc., per le unioni di intervalli.

#esempio[Il dominio naturale della funzione $ tan x $

è un'unione di infiniti intervalli aperti. 

Questo dominio è un insieme aperto; i punti di frontiera sono i punti $pi/2 + k pi$, per qualunque $k$ intero; tutti i numeri reali sono punti di accumulazione e non ci sono punti esterni o isolati.][
Il dominio della funzione $ f(x) = sqrt(1 - x^2) $

è l'intervallo chiuso $[-1, 1]$. 

I punti di accumulazione sono sempre quelli di $[-1, 1]$; i punti di frontiera sono $\{ -1, 1 \}$; i punti interni si trovano in $]-1, 1[$ e i punti esterni in $]-oo, -1[ union ]1, +oo[$. Non ci sono punti isolati.]

Occasionalmente potremmo incontrare funzioni con punti isolati nel dominio, come nell'esempio seguente.

#esempio[La funzione $ f(x) = sqrt(x / (2(x - 1)^2 (x - 2))) $
ha come dominio $\{0, 1\} union [2, +oo[$. 

I punti interni si trovano in $]2, +oo[$, i punti di accumulazione in $[2, +oo[$, mentre i punti $\{0, 1\}$ sono isolati. I punti esterni si trovano in $]-oo, 0[ union ]0, 1[$, e i punti di frontiera sono $\{0, 1, 2\}$.]

Dopo aver preso confidenza con il concetto di intorno, è possibile passare alla definizione vera e propria di limite. Ricordiamo che un numero reale $x_0$ è un punto di accumulazione per un insieme $A$ se ogni intorno di $x_0$ contiene infiniti punti di $A$. Poiché ogni intorno di $+oo$ contiene infiniti punti di un insieme illimitato superiormente, spesso si dice, con un certo abuso di linguaggio, che $+oo$ è un punto di accumulazione per tali insiemi. Un discorso analogo vale per $-oo$ in relazione agli insiemi illimitati inferiormente. È importante notare che $plus.minus oo$ non sono numeri reali e quindi non corrispondono a punti sulla retta.

In alcuni contesti, servirà anche il concetto di intorno di $oo$ (infinito senza segno). Pertanto, forniamo la seguente definizione.

#definizione(title: "Contorno ∞", label: <def-contorno-infinito>)[Un intorno di $oo$ si definisce come l'unione di due intorni arbitrari, uno relativo a $+oo$ e uno a $-oo$.]

Avvalendoci di questa definizione, potremo talvolta riferirci a $oo$ come un "punto" di accumulazione per un insieme illimitato sia superiormente che inferiormente.

#definizione(title: "Limite", label: <def-limite-generale>)[Sia $f$ una funzione definita su $A subset.eq RR -> RR$ e sia $x_0$ un punto di accumulazione per $A$, con $x_0$ che può appartenere all'insieme $\{ +oo, -oo, oo \}$. Si dice che $l$ (dove $l$ può appartenere a $\{ +oo, -oo, oo \}$) è il limite di $f$ quando $x -> x_0$ se, fissato arbitrariamente un intorno $U_l$ di $l$, esiste un intorno $I_(x_0)$ di $x_0$ tale che i valori di $f$ calcolati nei punti di $I_(x_0)$, escluso eventualmente $x_0$ stesso, cadano nell'intorno $U_l$ preselezionato. In simboli:

$ forall U_l, exists I_(x_0) | forall x in I_(x_0) without {x_0}, quad f(x) in U_l $

In questo contesto scriviamo:

$ lim_(x -> x_0) f(x) = l, $ oppure $ f(x) -> l, quad x -> x_0 $]

È importante sottolineare che questa definizione non indica come calcolare il limite $l$; piuttosto fornisce un metodo per verificare se un dato $l$ è il limite di una funzione quando $x -> x_0$.

Inoltre, notiamo che il valore assunto dalla funzione in $x_0$ non è rilevante; in effetti, la funzione potrebbe non essere definita in $x_0$. Per mettere in risalto questo aspetto, alcuni adottano la scrittura:

$ lim_(x -> x_0, \ x != x_0) f(x) = l $

tuttavia, questa notazione risulterebbe troppo complessa da applicare regolarmente, perciò non verrà utilizzata qui.

#esempio[Verificare il limite:

$ lim_(x -> 1) (x - 1)/(x + 1) = 0 $

Seguendo la definizione, si procede così:
+ si stabilisce arbitrariamente un intorno del numero $0$ (ovvero di $l$), scegliendo un intervallo aperto contenente $0$, come per esempio un intervallo $ ]a, b[, quad  a < 0 < b $
+ si verifica se è possibile trovare un intorno di $1$, ossia un intervallo del tipo $ ]c, d[, quad c < 1 < d $
   tale che l'immagine tramite $f$ di tutti i punti di questo intorno (escluso al più $1$) rientri in $]a, b[$. Bisogna risolvere quindi la doppia disequazione $ a < f(x) < b $
+ si procede quindi con le conclusioni:
  - se le soluzioni della doppia disequazione includono un intorno di $1$, il limite è verificato
  - se tra le soluzioni non c'è un intorno di $1$, il limite non è verificato

//
Dal punto di vista tecnico, il problema si riduce a risolvere la doppia disuguaglianza $a < f(x) < b$, considerando il contesto in cui $a < 0 < b$. Procediamo, partendo da $a < (x - 1)/(x + 1) < b$, che possiamo tradurre in due disuguaglianze separate:

#set math.cases(gap: 1em)
$ a < f(x) < b <=> a < (x - 1)/(x + 1) < b <=> cases(display((x - 1)/(x + 1)) > a, display((x - 1)/(x + 1)) < b) $

Poiché siamo interessati a trovare un intorno del valore $x = 1$, possiamo tranquillamente assumere che $x > -1$, garantendo che il denominatore $x + 1$ sia sempre positivo. Questo semplifica il calcolo. Le disuguaglianze diventano:

$ cases(x - 1 > a x + a, x - 1 < b x + b) => cases(x(1 - a) > 1 + a, x(1 - b) < 1 + b) $

Risolviamo la prima disuguaglianza dividendo per $(1 - a)$, che è positivo poiché $a < 0$. Supponiamo $b < 1$ per risolvere facilmente la seconda disuguaglianza dividendo per $(1 - b)$. Otteniamo:

$ x > (1 + a)/(1 - a), quad x < (1 + b)/(1 - b) $

Per concludere, notiamo che $ (1 + a)/(1 - a) < 1 and (1 + b)/(1 - b) > 1 $

quindi otteniamo:

$ (1 + a)/(1 - a) < x < (1 + b)/(1 - b) $

Questa è un'intorno di $1$. Se fosse stato $b >= 1$, la seconda disuguaglianza sarebbe sempre vera e la soluzione del sistema sarebbe stata $ x > (1 + a)/(1 - a) $

ancora un intorno di $1$, questa volta superiormente illimitato. Dunque, l'espressione del limite è corretta.

Come illustratonella /* Figura */, è anche chiaro che l'immagine di qualsiasi punto del segmento $]c, d[$ rientra nel segmento $]a, b[$.

#grafico_limiti7

] 


La situazione appena esposta può essere espressa geometricamente come segue: il limite per $x ->x_0$ di $f$ è $l$ se, dato un intorno $U_l$ di $l$ sull'asse delle ordinate, esiste un intorno $I_(x_0)$ di $x_0$ sull'asse delle ascisse tale che la parte della curva grafica della funzione $f$ sopra questo intorno $I_(x_0)$ si proietta orizzontalmente entro l'intorno $U_l$ scelto.

È importante notare che l'intorno di $l$ può essere reso arbitrariamente piccolo; se funziona per intorni piccoli, funzionerà anche per quelli più grandi. Il tipo di intorno da scegliere per $l$ dipende da $l$:
- se $l$ è un numero reale, l'intorno sarà un segmento
- se $l$ è $plus.minus oo$, sarà necessaria una semiretta o l'unione di due semirette

Analogamente per l'intorno di $x_0$. Nel caso in cui sia $l$ che $x_0$ siano numeri reali (si parla di limite finito quando $x$ tende a un valore finito), gli intorni di $l$ sono centrati su $l$ con un raggio usualmente indicato con $epsilon$, e per $x_0$ si usano intorni centrati su $x_0$ con raggio $delta$. Con queste convenzioni, la definizione di limite finito viene riformulata.
#v(2em)
//! Formattare la x nel titolo
#definizione(title: "Limite finito per x tendente a un valore finito", label: <def-limite-finito>)[Sia data una funzione $f : A subset.eq RR -> RR$ e sia $x_0$ un punto di accumulazione per $A$, con $x_0 in RR$. Diremo che $l$, con $l in RR$, è il limite di $f$ per $x ->x_0$ se, per ogni $epsilon > 0$, esiste un $delta_epsilon > 0$ tale che:

$ forall x in A : |x - x_0| < delta_epsilon, quad |f(x) - l| < epsilon $] 

Questa definizione è conosciuta come la definizione dell'$epsilon$-$delta$. Nei casi pratici, specialmente nella verifica dei limiti e nelle dimostrazioni di molti teoremi, è spesso conveniente, per limiti finiti, scegliere gli intorni di $l$ centrati su $l$, mentre si tende a lasciare gli intorni di $x_0$ completamente arbitrari.

In effetti, si può dimostrare il seguente teorema che semplifica notevolmente i calcoli nelle dimostrazioni di molti teoremi.

#definizione(title: "Teorema")[Si ha:

$ lim_(x -> x_0) f(x) = l in RR $

se e solo se:

$ forall epsilon > 0, exists U "intorno di" x_0 : forall x in U without \{x_0\}, |f(x) - l| < k epsilon $

dove $k$ è un numero reale positivo.

#dimostrazione() 

Se la prima relazione è vera, allora per definizione si ha:

$ forall epsilon > 0, exists U "intorno di" x_0 : forall x in U without \{x_0\}, |f(x) - l| < epsilon $

e questa è precisamente la seconda relazione, con $k = 1$.

Viceversa, se la seconda relazione è vera, fissiamo un $epsilon > 0$ e consideriamo $epsilon' = epsilon / k$. Poiché anche $epsilon'$ è arbitrario, sempre in base alla seconda relazione, esisterà un intorno $U'$ di $x_0$ tale che:

$ forall x in U' without \{x_0\}, quad |f(x) - l| < k epsilon' = k epsilon / k = epsilon $

il che dimostra la validità della prima relazione.]

In molte situazioni è interessante esaminare il comportamento di una funzione nei pressi di un dato punto di accumulazione $x_0$ nel suo dominio, ma rimanendo "a destra" o "a sinistra" di $x_0$. Per fare ciò, basta sostituire un intorno destro o sinistro di $x_0$ all'intorno generico presente nella definizione di limite. Precisamente, possiamo dare le seguenti definizioni.

#v(2em)
#definizione(title: "Limite destro e sinistro", label: <def-limite-destro-sinistro>)[Consideriamo una funzione $f : A subset.eq RR -> RR$ e un punto $x_0$ che sia di accumulazione per $A$, tenendo presente che $x_0$ potrebbe anche appartenere a $\{+oo, -oo, oo\}$. Affermiamo che un valore $l$, che potrebbe anche essere in $\{+oo, -oo, oo\}$, è il limite destro (o rispettivamente il limite sinistro) di $f$ per $x$ che tende a $x_0$ se, per qualsiasi intorno $U_l$ di $l$, esiste un intorno destro $I_(x_0)^+$ (o rispettivamente un intorno sinistro $I_(x_0)^-$) di $x_0$ tale che i valori della funzione in tutti i punti di $I_(x_0)^+$ (o $I_(x_0)^-$), ad eccezione di $x_0$ stesso, si trovano dentro l'intorno $U_l$ prestabilito di $l$. In tal caso, scriviamo rispettivamente:

$ lim_(x -> x_0^+) f(x) = l , quad lim_(x -> x_0^-) f(x) = l $]

Da questa definizione ne deriva il seguente teorema.

#definizione(title: "Teorema")[Se $x_0$ è un punto di accumulazione per il dominio di una funzione $f$, allora:

$ lim_(x -> x_0) f(x) = l quad <=> quad lim_(x -> x_0^-) f(x) = l, quad  lim_(x -> x_0^+) f(x) = l $]

Notiamo che il concetto di limite destro e sinistro può essere espresso tramite restrizioni di una funzione. In particolare, il limite destro corrisponde al limite della funzione ristretta agli $x > x_0$, mentre il limite sinistro corrisponde al limite della funzione ristretta agli $x < x_0$. Su questa base, possiamo dimostrare le seguenti generalizzazioni del teorema precedente.

#definizione(title: "Teorema")[Se per una funzione $f : A subset.eq RR -> RR$ si ha $lim_(x -> x_0) f(x) = l$ e se $B$ è un sottoinsieme di $A$ con $x_0$ ancora come punto di accumulazione, allora:

$ lim_(x -> x_0) f|_B (x) = l $] //! controllare se giusta simbologia

#definizione(title: "Teorema")[Se i limiti delle restrizioni di una funzione a due sottoinsiemi diversi del dominio sono differenti, allora la funzione non possiede un limite per $x ->x_0$.]
#pagebreak()
== Teoremi sui limiti

#definizione(title: "Teorema dell'unicità del limite", label: <def-teorema-unicita-limite>)[Se $l_1, l_2 in RR$ e $ lim_(x -> x_0) f(x) = l_1 and lim_(x -> x_0) f(x) = l_2 $

allora $ l_1 = l_2 $

il che significa che "se il limite esiste, è unico".

#dimostrazione()

Supponiamo per assurdo che $l_1$ sia diverso da $l_2$ e consideriamo degli intorni $U_1$ di $l_1$ e $U_2$ di $l_2$, tra loro disgiunti. Possiamo individuare un intorno $I_1$ di $x_0$ tale che l'immagine dei punti di $I_1$ (escludendo eventualmente $x_0$) si trovi in $U_1$; analogamente, si può trovare un intorno $I_2$ di $x_0$ tale che l'immagine dei punti di $I_2$ (escludendo eventualmente $x_0$) stia in $U_2$. 

Considerando ora i punti di $I = I_1 inter I_2$, la cui immagine dovrebbe cadere contemporaneamente in $U_1$ e $U_2$, si verifica una contraddizione in quanto $U_1$ e $U_2$ sono disgiunti. 

Il teorema vale anche nel caso in cui il limite non sia finito: occorre solo tener conto che $oo$ ingloba i simboli $+oo$ e $-oo$. Ad esempio, se $lim_(x -> x_0) f(x) = +oo$, allora si ha $lim_(x -> x_0) f(x) = oo$. 

Di seguito viene visualizzata graficamente la modalità con cui è stata condotta questa dimostrazione.

#grafico_limiti8
]
#pagebreak(weak: true)

#definizione(title: "Teorema della permanenza del segno", label: <def-teorema-permanenza-segno>)[Se una funzione ammette limite positivo (finito oppure $+infinity$) per $x -> x_0$, esiste un intorno di $x_0$ per ogni $x$ del quale, appartenente al dominio, si ha $f(x) > 0$. Analogamente, se il limite per $x -> x_0$ è negativo (finito oppure $-infinity$), esiste un intorno di $x_0$ in cui per ogni $x$ del dominio risulta $f(x) < 0$.

#dimostrazione()
La dimostrazione si basa sul fatto che, ipotizzando per esempio che il limite $l$ sia positivo, è possibile scegliere un intorno $U_l$ di $l$ situato interamente nel semiasse positivo delle ordinate. Per la definizione stessa di limite, a tale $U_l$ corrisponde un opportuno intorno di $x_0$ i cui punti (appartenenti al dominio) hanno tutti immagine appartenente a $U_l$, e dunque strettamente positiva. Un ragionamento del tutto analogo vale nel caso in cui il limite sia negativo.]

Il grafico illustrato nella @grafico_limiti9 rende immediatamente evidente il significato della dimostrazione svolta.

#grafico_limiti9

#definizione(title: "Teorema di limitatezza locale", label: <def-teorema-limitatezza-locale>)[Se una funzione ha un limite finito quando $x -> x_0$, allora esiste un intorno di $x_0$ in cui la funzione è limitata. La dimostrazione segue dalla definizione di limite, scegliendo opportunamente un intorno di $l$ come un segmento limitato.]

#definizione(title: "Teorema di confronto", label: <def-teorema-confronto>)[Siano $f$, $g$ e $h$ funzioni tali che, in un intorno adeguato di $x_0$, soddisfano le seguenti disuguaglianze: $f(x) <= g(x) <= h(x)$.

+ se il limite di $f(x)$ e $h(x)$ al tendere di $x$ a $x_0$ è $l$, anche il limite di $g(x)$ sarà $l$
+ se il limite di $f(x)$ al tendere di $x$ a $x_0$ è $+oo$, anche il limite di $g(x)$ seguirà lo stesso comportamento
+ se il limite di $g(x)$ al tendere di $x$ a $x_0$ è $-oo$, anche il limite di $f(x)$ sarà $-oo$]

== Algebra dei limiti

#definizione(title: "Limite della somma", label: <def-limite-somma>)[Se $ lim_(x -> x_0) f(x) = l in RR and lim_(x -> x_0) g(x) = m in RR $

allora $ lim_(x -> x_0) (f(x) + g(x)) = l + m $

#dimostrazione()
La dimostrazione è facilitata utilizzando intorni di $l$ e $m$ centrati su $l$ e $m$ stessi. Fissato un $epsilon > 0$ arbitrario, si trovano intorni $U_1$ e $U_2$ di $x_0$ relativi alle funzioni $f$ e $g$ tali che

$ forall x in U_1: |f(x) - l| < epsilon quad and quad forall x in U_2: |g(x) - m| < epsilon $

Considerando $U = U_1 inter U_2$, per i punti in $U$ valgono entrambe le disuguaglianze precedenti, ossia:

$ forall x in U_1 : |(f(x) + g(x)) - (l + m)| <= epsilon + epsilon = 2 epsilon $

Questa è la dimostrazione che $f(x) + g(x) -> l + m$.]

#definizione(title: "Limite del prodotto", label: <def-limite-prodotto>)[Se $ lim_(x -> x_0) f(x) = l in RR quad and quad lim_(x -> x_0) g(x) = m in RR $

allora $ lim_(x -> x_0) (f(x) dot g(x)) = l dot m $

#dimostrazione()
Utilizzando il teorema di limitatezza locale, esiste un intorno $V$ di $x_0$ dove $g$ è limitata con $|g(x)| < h$ per un $h > 0$. Fissato un $epsilon > 0$, si trovano intorni $U_1$ e $U_2$ di $x_0$ rispettivamente per le funzioni $f$ e $g$ tali che:

$ forall x in U_1: |f(x) - l| < epsilon quad and quad forall x in U_2: |g(x) - m| < epsilon $ 

Considerando $U = U_1 inter U_2 inter V$, per i punti di $U$ valgono entrambe le disuguaglianze precedenti e inoltre l’ipotesi di limitatezza di $g$. Perciò, si ha:

$ |f(x) dot g(x) - l dot m| = |f(x) dot g(x) - l g(x) + l g(x) - l dot m| = \
= |(f(x) - l) g(x) + l(g(x) - m)| <= |f(x) - l| |g(x)| + |l| |g(x) - m| <= \
<= epsilon dot h + |l| dot epsilon = (h + |l|) epsilon = k epsilon $

concludendo così la dimostrazione.]

#definizione(title: "Limite della reciproca", label: <def-limite-reciproca>)[Se

$ lim_(x -> x_0) f(x) = l in RR without \{0\} $

allora

$ lim_(x -> x_0) 1/f(x) = 1/l $

#dimostrazione()
Iniziamo osservando che, se $l$ non è zero, per il teorema della permanenza del segno, esiste un opportuno intorno $V$ di $x_0$ in cui $f$ è strettamente maggiore di un certo numero $h > 0$ (se $l > 0$) o minore di un numero $-h$ con $h > 0$ (se $l < 0$), e quindi $|f(x)| > h > 0$, cioè $1 / (|f(x)|) < 1 / h$. Fissiamo $epsilon > 0$. Esisterà un intorno $U_1$ di $x_0$ tale che 

$ forall x in U_1: |f(x) - l| < epsilon $

Considerando ora $U = U_1 inter V$, si avrà:

$ lr(|1 / f(x) - 1 / l|) = lr(\| (l - f(x))/(f(x) dot l) \|) = (|l - f(x)|) / (|f(x)| dot |l|) < epsilon / (h dot |l|) = k epsilon $

e questo è sufficiente per concludere.]

Si noti che questi teoremi, come quelli successivi sull'algebra dei limiti, esprimono solo condizioni sufficienti, non necessarie. Un esempio banale sarebbe una funzione $f$ che non ha limite per $x ->x_0$ e la sua opposta $-f$, che evidentemente non ha limite neanche: chiaramente, la somma delle due è la funzione identicamente nulla con limite $0$.

Questi teoremi possono essere estesi, con precise limitazioni, anche al caso in cui i limiti delle funzioni $f$ e $g$ non siano finiti o, nel caso del teorema sulla reciproca, al caso in cui il limite di $f$ sia zero. Si tratta di una lunga serie di teoremi riguardanti vari scenari possibili. Ci limiteremo a esporre le tesi di alcuni di questi teoremi, utilizzando un linguaggio informale ma chiaro per le applicazioni.

Consideriamo due funzioni $f$ e $g$ aventi limite per $x ->x_0$, con la possibilità che uno o entrambi i limiti siano infiniti. In tal caso, si verificano le seguenti situazioni:
+ $l plus.minus (+oo) = plus.minus oo quad forall l in RR$
+ $l plus.minus (-oo) = minus.plus oo quad forall l in RR$
+ $(+oo) + (+oo) = +oo$
+ $(-oo) + (-oo) = -oo$
+ $l dot (oo) = oo quad forall l != 0$
+ $(oo) dot (oo) = oo$ #v(0.25em)
+ $l / 0 = oo quad forall l != 0$ #v(0.25em)
+ $l / oo = 0 quad forall l in RR$ #v(0.25em)
+ $oo / l = oo quad forall l in RR$

Quando necessario e possibile, si applica inoltre la consueta "regola dei segni". Valgono anche i seguenti teoremi, condensati in loro breve elenco:
+ la somma tra una funzione che tende a $+oo$ e una inferiormente limitata tende a $+oo$
+ la somma tra una funzione che tende a $-oo$ e una superiormente limitata tende a $-oo$
+ la somma tra una funzione che tende a $oo$ e una limitata tende a $oo$
+ il prodotto tra una funzione che tende all'infinito e una il cui modulo sia superiore a $k > 0$ tende all'infinito
+ il prodotto tra una funzione che tende a zero e una limitata tende a zero

=== Forme di indecisione

I teoremi sull'algebra dei limiti finora enunciati non ci permettono di trarre alcuna conclusione nei seguenti casi:
+ somma di due funzioni delle quali una tende a $+oo$ e l'altra a $-oo$: caso $+oo - oo$
+ prodotto di due funzioni delle quali una tende a zero e l'altra a $oo$: caso $0 dot oo$
+ quoziente di due funzioni entrambe tendenti a zero: caso $0/0$
+ quoziente di due funzioni entrambe tendenti a infinito: caso $oo/oo$

In queste situazioni la determinazione del limite, se esistente, richiede un'analisi dettagliata caso per caso. Li definiremo casi o forme di indecisione (a volte anche casi di indeterminazione). Questa denominazione potrebbe risultare fuorviante: non si riferisce a situazioni che non possono essere risolte, ma piuttosto a quelle in cui la decisione non può essere assunta esclusivamente in base ai teoremi sui limiti.

== Funzioni monotone

Esiste un teorema fondamentale per le funzioni monotone, di cui forniamo qui l'enunciato. 

#definizione(title: "Funzione monotona", label: <def-teorema-limite-funzioni-monotone>)[Consideriamo una funzione $f : A subset.eq RR -> RR$ che sia monotona, e supponiamo che $alpha = sup(A)$, anche nel caso in cui $alpha = +oo$, con l'ipotesi aggiuntiva che $alpha in.not A$ (ovvero, $alpha$ non è il massimo di $A$). A queste condizioni, la funzione ha sempre un limite per $x$ che tende ad $alpha$, e precisamente:

$ lim_(x --> alpha) f(x) = cases(sup(f(A))\, quad &f "è crescente", inf(f(A))\, quad &f "è decrescente") $]

Un discorso analogo vale per il limite con $x$ che tende a $inf(A)$. È importante notare che è cruciale l'assunzione che $alpha in.not A$. 
#v(2em)
#esempio[Considerare la funzione $f(x) = "sgn"(x)$, considerata sull'intervallo $]-oo, 0]$. Risulta chiaro che 

$ lim_(x -> 0) f|_(lr(]-oo, 0])) = -1 $

mentre il $sup(f(] -oo, 0])) = 0 $. Il grafico della @grafico_limiti10 aiuta meglio a capire il problema

#grafico_limiti10

]

I seguenti limiti, dove $c$ è un numero reale qualsiasi, sono conseguenze dirette della definizione:
+ $display(lim_(x -> c) k = k)$ ($f(x) = k$ è una funzione costante)
+ $display(lim_(x -> c) x = c)$
+ $display(lim_(x -> +oo) x = +oo)$
+ $display(lim_(x -> -oo) x = -oo)$

#esempio[Utilizzando solo i limiti e i relativi teoremi appena elencati, possiamo dichiarare che:
- $display(lim_(x -> +oo) x^2 = lim_(x -> +oo) (x dot x) = +oo dot (+oo) = +oo)$
- $display(lim_(x -> +oo) x^n = dots = +oo)$
- $display(lim_(x -> -oo) x^(2n) = dots = +oo)$
- $display(lim_(x -> -oo) x^(2n+1) = dots = -oo)$
- $display(lim_(x -> -oo) (x^2 - x) = +oo - (-oo) = +oo)$
- $display(lim_(x -> +oo) (x^2 - x) = lim_(x -> +oo) x^2 (1 - 1/x) = +oo(1 - 0) = +oo)$
- $display(lim_(x -> +oo) (a_n x^n + a_(n-1) x^(n-1) + dots + a_0) = lim_(x -> +oo) x^n (a_n + a_(n-1) 1/x + dots + a_0 1/x^n) = +oo(a_n + 0 + dots + 0) = op("sgn")(a_n) oo)$
- $display(lim_(x -> +oo) (3x^2 - 2x + 1)/(2x^2 - x - 5) = lim_(x -> +oo) (x^2 (3 - 2/x + 1/x^2))/(x^2 (2 - 1/x - 5/x)) = dots = 3/2)$
][
Per quanto riguarda l'espressione "forma di indecisione", si può dimostrare che:
- $display(lim_(x -> +oo) (2x - x) = lim_(x -> +oo) x = +oo)$; la scrittura si presenta inizialmente nella forma $+oo - oo$
- $display(lim_(x -> +oo) (x - 2x) = lim_(x -> +oo) (-x) = -oo)$; la scrittura si presenta inizialmente ancora nella forma $+oo - oo$
- $display(lim_(x -> +oo) (x - x) = lim_(x -> +oo) (0) = 0)$; la scrittura si presenta inizialmente ancora nella forma $+oo - oo$
- $display(lim_(x -> +oo) ((x + 1) - x) = lim_(x -> +oo) (1) = 1)$; la scrittura si presenta inizialmente ancora nella forma $+oo - oo$
- $display(lim_(x -> +oo) x dot 2/x = lim_(x -> +oo) (2) = 2)$; la scrittura si presenta inizialmente nella forma $oo dot 0$
- $display(lim_(x -> +oo) x dot 1/x = lim_(x -> +oo) (1) = 1)$; la scrittura si presenta inizialmente nella forma $oo dot 0$
- $display(lim_(x -> +oo) x dot 1/x^2 = lim_(x -> +oo) 1/x = 0)$; la scrittura si presenta inizialmente ancora nella forma $oo dot 0$
- $display(lim_(x -> +oo) x^2 dot 1/x = lim_(x-> +oo) (x) = +oo)$; la scrittura si presenta inizialmente ancora nella forma $oo dot 0$
]

Questi esempi evidenziano come il trattamento delle forme indeterminate possa portare a risultati disparati.

== Limitazioni, periodicità e valore assoluto

#definizione(title: "Teorema")[Consideriamo una funzione periodica $f$ che non sia costante. Tale funzione non può avere un limite per $x -> plus.minus oo$.

#dimostrazione()
Indichiamo con $tau$ il periodo di $f$. Se $f$ non è costante, significa che assume almeno due valori distinti. Supponiamo che $x_1$ e $x_2$ siano due punti nel dominio tali che $f(x_1) != f(x_2)$. Definiamo i seguenti insiemi:

$ E = {x_1 + n tau | n in NN}, quad F = {x_2 + n tau | n in NN} $]

Entrambi gli insiemi sono chiaramente illimitati superiormente. In ciascuno di essi, la funzione si ripete mantenendo costanti i suoi valori, ma assumendo valori diversi su $E$ e $F$. Pertanto, i limiti delle restrizioni di $f$ a $E$ e a $F$ per $x ->+oo$ esistono ma sono diversi, il che implica l'impossibilità per $f$ di avere un limite globale. Lo stesso ragionamento si applica per $x ->-oo$.

Da questo teorema deriva che le funzioni trigonometriche non possiedono limiti quando $x -> plus.minus oo$. Questo concetto si può applicare a casi complessi in cui almeno una funzione manchi di limite, mentre la loro somma ne possiede uno.

#esempio[
- $display(lim_(x -> +oo) sin^2(x)) space exists.not$, $display(lim_(x -> +oo) cos^2(x)) space exists.not$
- $display(lim_(x -> +oo) (sin^2(x) + cos^2(x))) = 1$
- $display(lim_(x -> +oo) sin(x)) space exists.not$, $display(lim_(x -> +oo) x = +oo)$, $display(lim_(x -> +oo) (sin(x) + x) = +oo)$
]


#definizione(title: "Teorema del limite del modulo", label: <def-teorema-limite-modulo>)[Se una funzione $f$ ha un certo limite $l$ (anche se infinito), allora la funzione $|f(x)|$ avrà come limite $|l|$ (dove definiamo $|-oo| = |oo| = +oo$).

#dimostrazione()
Consideriamo il caso in cui il limite sia finito. Per un $epsilon > 0$ fissato, esiste un intorno $I_(x_0)$ tale che per ogni $x$ in $I_(x_0)$ escluso il punto $x_0$, valga $|f(x) - l| < epsilon$. Ne consegue che:

$ ||f(x)| - |l|| <= |f(x) - l| < epsilon. $

Questo risulta sufficiente per concludere la dimostrazione.]

Tuttavia, è importante notare che l'inverso di questo teorema non è vero: il valore assoluto di una funzione potrebbe avere un limite anche mentre la funzione originale no. Consideriamo l'esempio seguente.

#esempio[La funzione:

$ f(x) = cases(
  1 &"se" x in QQ,
  -1 &"se" x in RR backslash QQ
) $

non ha limite in corrispondenza di alcun punto $x_0$. Tuttavia, la funzione $|f(x)|$ che è costantemente uguale a $1$, possiede un limite pari a $1$ in ogni punto $x_0$.

Questa funzione rappresenta inoltre un interessante esempio di funzione periodica con qualsiasi numero razionale come periodo, mentre il suo valore assoluto ha come periodo qualsiasi numero reale.]

== Funzioni continue

#definizione(title: "Funzione continua", label: <def-funzione-continua>)[Consideriamo una funzione $f : A subset.eq RR -> RR$ e un punto $x_0$ appartenente al suo dominio. Diciamo che la funzione è continua in $x_0$ se

$ forall U_(f(x_0)) exists I_(x_0), forall x in I_(x_0) : f(x) in U_(f(x_0)) $ <eq-funzione-continua> ]

Una funzione è considerata continua a destra o a sinistra in un punto $x_0$ se lo è rispettivamente nella restrizione della funzione agli $x$ maggiori o uguali oppure minori o uguali di $x_0$.

Una funzione si definisce continua su un insieme $E$ se è continua in ogni punto di $E$.

Vale la pena di mettere in evidenza le differenze, apparentemente minime ma sostanziali, tra questa definizione e quella di limite per una funzione. In particolare:
- nella condizione @eq-funzione-continua, il valore $l$ è sostituito da $f(x_0)$
- non è richiesto che $x_0$ sia un punto di accumulazione per $A$, ma è necessario che appartenga al dominio
- il punto $x_0$ non è escluso dai punti per i quali deve risultare vero che $f(x) in U_(f(x_0))$

Inoltre, osserviamo quanto segue:
- se il punto $x_0$ è isolato nel dominio, esiste un intorno di esso in cui non cade nessun altro punto del dominio. In questo caso, prendendo tale intorno come l’intorno $I_(x_0)$ della definizione @eq-funzione-continua, la condizione $f(x) in U_(f(x_0))$ è banalmente vera: una funzione qualsiasi è continua in un punto isolato del dominio.
- se il punto $x_0$ è di accumulazione per il dominio (e appartiene al dominio stesso), la condizione @eq-funzione-continua diventa la stessa necessaria affinché il limite di $f(x)$ converga a $f(x_0)$, ovvero affinché il limite della funzione esista e coincida con il valore della funzione nel punto $x_0$:

$ lim_(x -> x_0) f(x) = f(x_0) $

Questa situazione di interesse applicativo implica che, in termini meno formali ma comunque significativi, possiamo dire che una funzione è continua in un punto $x_0$ del dominio (che sia anche di accumulazione per il dominio) se, avvicinandoci a $x_0$, $f(x)$ si avvicina a $f(x_0)$.

In altre parole, se una funzione è continua in un punto $x_0$ del dominio (e di accumulazione), allora si può calcolare il limite $display(lim_(x -> x_0) f(x))$ come se si stesse semplicemente sostituendo $x_0$ a $x$.

Per molte funzioni di grande interesse applicativo, la continuità può essere stabilita a priori in quasi tutti i punti del dominio, rendendo il calcolo del limite privo di difficoltà.

=== Teoremi sulle funzioni continue

I teoremi sui limiti ci permettono di affermare e dimostrare i seguenti principi:
- la somma di due funzioni continue è anch'essa continua
- il prodotto di due funzioni continue risulta continuo
- il quoziente di due funzioni continue è continuo nei punti in cui il denominatore non è zero
- il valore assoluto di una funzione continua è continuo

Pur non avendo esplicitamente enunciato un teorema sulla composizione di funzioni nei teoremi sui limiti, si può formulare un principio generale sul limite della composta di due funzioni. Questo argomento è complesso e non di immediata enunciazione. Tuttavia, vi è un teorema più semplice e di uso comune, anche se valido in condizioni più restrittive, che risulta utile nelle applicazioni pratiche.

#definizione(title: "Limite delle funzioni composte", label: <def-limite-funzioni-composte>)[Date $f$ e $g$ due funzioni tali che si possa considerare la composta $f compose g$, con $x_0$ come punto di accumulazione del dominio di $g$, allora se:

$ display(lim_(x -> x_0) g(x) = l) quad and quad f "è continua in" l, $

allora esiste il limite della funzione composta per $x -> x_0$ e si ha:

$ display(lim_(x -> x_0) f(g(x)) = f(l)). $

Se invece $f$ non è definita in $l$ (ad esempio quando $g ->plus.minus oo$), allora:

$ display(lim_(x -> x_0) f(g(x)) = lim_(t -> l) f(t)). $]

Una conseguenza diretta di questo teorema è che la composta di due funzioni continue è continua.

==== Continuità dell'inversa

Se una funzione $f$ è strettamente monotona, allora essa è invertibile. Tuttavia, l'inversa di una funzione continua potrebbe non essere continua, come illustrato dall'esempio seguente.

#esempio[Consideriamo la funzione $f$ definita da:

$ f(x) = cases(
  2x\, quad &0 <= x <= 1,
  x^2 + display(1/2)\, quad &3 < x <= 5
) $

Questa funzione è continua nel suo dominio, ma la sua inversa non lo è, come si può vedere dai grafici di $f$ e della sua inversa $f^(-1)$.

// grafici
#grafici_limiti2
]

Il problema in questo esempio deriva dal fatto che il dominio di $f$ non è un intervallo. Se consideriamo funzioni definite su intervalli, questi problemi non si presentano, come mostrato dal prossimo teorema, di cui riportiamo solo la formulazione.

#definizione(title: "Teorema")[Sia $f$ una funzione strettamente monotona definita su un intervallo $I$, allora l'inversa di $f$ è continua.]

Da notare che anche se la funzione $f$ potrebbe non essere continua, ciò che conta è che sia monotona e definita su un intervallo. A noi interessa principalmente l'applicazione nel caso di funzioni continue.

== Funzioni elementari e continuità

La continuità delle funzioni elementari deriva quasi immediatamente dai teoremi che abbiamo discusso. Esaminiamo nei dettagli le situazioni di maggiore interesse.

=== Funzioni razionali e radici

Le funzioni costanti e la funzione $f(x) = x$ sono chiaramente continue. La continuità di tutte le funzioni razionali si può dedurre dai teoremi sulla continuità delle somme, dei prodotti e dei quozienti. Per quanto riguarda le funzioni radice $n$-esima, è sufficiente ricordare che sono le inverse di funzioni strettamente monotone: precisamente, si tratta delle inverse delle funzioni potenza nel caso in cui $n$ sia dispari, e delle inverse della restrizione delle funzioni potenza ai numeri reali maggiori o uguali a zero quando $n$ è pari. Quindi, la loro continuità deriva dal teorema sulla continuità dell’inversa. Per ulteriore chiarezza, si possono osservare i grafici nei casi $n = 2$ e $n = 3$.

#grafici_limiti3

=== Funzioni trigonometriche

Innanzitutto, dimostriamo la continuità della funzione seno, dimostrando che
$ lim_(x -> c) sin(x) = sin(c) $

Fissiamo $epsilon > 0$ e dimostriamo che $|sin(x) - sin(c)| < epsilon$ in un intorno adeguato di $c$. Utilizzando le formule di prostaferesi, otteniamo:

$ |sin(x) - sin(c)| = 2 lr(|cos((x + c) / 2)|) lr(|sin((x - c) / 2)|) <= 2 lr(|sin((|x - c|) / 2)|) = |x - c| $

Quindi, se $|x - c| < epsilon$, anche $|sin(x) - sin(c)| < epsilon$ (nella definizione $epsilon - delta$ abbiamo preso $delta = epsilon$).

Per la funzione coseno, basta osservare che $ cos(x) = sin(pi / 2 - x) $

e applicare il teorema sulla continuità delle funzioni composte. Per le altre funzioni trigonometriche, possiamo fare riferimento ai teoremi sulla continuità di prodotti e quozienti. Infine, per le funzioni inverse, è sufficiente invocare il teorema specifico.

=== Funzioni esponenziali e logaritmo

Ricordiamo che, per $a > 1$, $a^alpha$ è stato definito come il 

$ sup = {a^r | r < alpha and r in QQ} $

Dato che i numeri razionali sono densi nei reali, si ha anche 

$ a^alpha = sup{a^x | x < alpha and x in RR} $

Applicando il teorema sul limite delle funzioni monotone, possiamo concludere che 

$ lim_(x -> c) a^x = a^c $

cioè che la funzione $a^x$ è continua. Un ragionamento analogo vale per $0 < a < 1$. La continuità delle funzioni logaritmo segue successivamente dal teorema della continuità dell’inversa.

//
/* === 4.10.4. Conclusioni ed Esempi */

Considerando la continuità delle funzioni composte, possiamo concludere che le funzioni elementari e quelle costruite da esse tramite somme, prodotti, quozienti e composizioni sono continue in tutti i punti del loro dominio naturale. Tuttavia, il calcolo dei limiti per queste funzioni può risultare problematico se $x$ tende a un punto di accumulazione del dominio che non appartiene al dominio stesso, o naturalmente, se $x$ tende all'infinito in entrambe le direzioni.

Quando si tratta di funzioni non elementari, è necessaria maggiore attenzione. Uno dei metodi più comuni per costruire tali funzioni è quello di definirle in maniera composita o a pezzi (in inglese _piecewise defined_).

#esempio[Si consideri la funzione $f(x)$ definita come segue:

$ f(x) = cases(
  x + 1\, quad & x <= 1,
  3 - 2a x^2\, quad & x > 1
) $

dove $a$ è un numero reale qualsiasi. Si determini per quali valori di $a$ la funzione è continua.

Per un punto $x != 1$, in un intorno di $x$, la funzione coincide con una funzione elementare e dunque è continua. Resta da valutare la continuità in $x = 1$. Applichiamo quindi la definizione, calcolando il limite per $x -> 1$ e confrontandolo con $f(1)$. Abbiamo che $f(1) = 2$. Per calcolare il limite richiesto, conviene calcolare separatamente il limite destro e quello sinistro, poiché l'espressione della funzione è diversa a destra e a sinistra di $x = 1$.

$ display(lim_(x -> 1^-) f(x) = lim_(x -> 1^-) (x + 1) = 2), quad display(lim_(x -> 1^+) f(x) = lim_(x -> 1^+) (3 - 2a x^2) = 3 - 2a) $

Si deve quindi avere:

$ 3 - 2a = 2 => a = 1/2 $

La funzione è continua su tutto $RR$ solo se $a = 1/2$.

È utile visualizzare graficamente questo ragionamento per capirne meglio la conclusione. Nel grafico sono rappresentate le funzioni corrispondenti ai valori $a = 1$, $a = 1/2$, $a = -1/4$, e $a = -1/2$, ordinate dal basso verso l'alto. Come risulta chiaro, solo il valore $a = 1/2$ consente una connessione fluida tra le due porzioni del grafico.

#grafico_limiti15

]

/* == 4.11. Osservazioni e Approfondimenti */

== Limiti e dimostrazioni grafiche

Nella memorizzazione delle dimostrazioni dei vari teoremi, è spesso utile visualizzare graficamente i passaggi effettuati. Qui proponiamo una riflessione sul teorema del limite del modulo di una funzione (@def-teorema-limite-modulo), precedentemente trattato. L'ipotesi che una funzione abbia un limite $l$ implica anche che il modulo della funzione abbia questo stesso limite. 

+ il limite $l$ è un numero reale positivo: in questo caso, prendere il modulo della funzione vicino a $x_0$ non altera nulla se l'intorno di $l$ è sopra l'asse delle ascisse, rendendo la conclusione ovvia
   #grafico_limiti16
+ il limite $l$ è un numero reale negativo: passare da una funzione al suo modulo significa "ribaltare" la parte del grafico sotto l'asse delle $x$, rendendola simmetrica rispetto all'asse $x$. Considerando un intorno di $l$ sotto l'asse delle ascisse, sarà evidente che il passaggio avviene da $l$ a $-l$, quindi $|l|$, visto che $l$ è negativo
   #grafico_limiti17
+ il limite $l$ vale 0: in questo caso, è sufficiente considerare un intorno di $l$ centrato su $l$, operazione sempre possibile e spesso conveniente quando si tratta di limiti finiti. La transizione dalla funzione $f$ al suo valore assoluto vicino a $x_0$ implica che i valori della funzione assoluta di $f$ saranno inclusi solo nella metà superiore dell'intorno fissato di $l$. Questa condizione va persino meglio, poiché la definizione di limite richiede solo che tali valori siano contenuti nell'intorno prefissato di $l$
   #grafico_limiti18

#pagebreak(weak:true)
== Limiti notevoli e proprietà delle funzioni continue

/* === 5.1. Due Limiti Notevoli */

#definizione(title: "Teorema")[Se gli angoli sono misurati in radianti, si ha che:

$ display(lim_(x -> 0) (sin x) / x = 1) $

#dimostrazione()
La funzione $ f(x) = (sin x) / x $

ha come dominio naturale $RR without {0}$ ed è pari. È sufficiente mostrare la validità del limite per $x$ che tende verso $0$ da destra. Per le note proprietà delle funzioni goniometriche, si ha per $0 < x < pi/2$ che 

$ sin x < x < tan x $

come si può verificare dal grafico nella @grafico_limiti19.

#grafico_limiti19

Dividendo la disuguaglianza per $sin x$ (positivo e non nullo per $0 < x < pi/2$), si ottiene:

$ 1 < x / (sin x) < 1 / (cos x) $

da cui ne deriva:

$ cos x < (sin x) / x < 1 $]

Usando il teorema di confronto (@def-teorema-confronto) e ricordando che la funzione coseno è continua e il suo limite per $x$ che tende a $0$ è $1$, identico al limite della funzione costantemente uguale a $1$, possiamo concludere quanto desiderato. Il grafico delle tre funzioni coinvolte nell'ultima disuguaglianza, illustrato nella @grafico_limiti20, aiuta a visualizzare il processo.

#grafico_limiti20

Inoltre, applicando uno dei teoremi sul limite del quoziente, si deduce che:

$ display(lim_(x -> plus.minus oo) (sin x) / x = 0) $

poiché il rapporto può essere espresso come $sin x dot (1/x)$, ossia il prodotto fra una funzione limitata e una funzione che tende a $0$. Anche questo risultato può essere compreso graficamente studiando la @grafico_limiti21.

#grafico_limiti21

È importante ricordare che il limite è valido solo se gli angoli sono espressi in radianti. Misurando gli angoli in gradi, la disuguaglianza $sin x < x < tan x$ diventa:

$ sin x° < x° pi/180 < tan x° $

ottenuto considerando il rapporto fra le misure in gradi e in radianti di uno stesso angolo. Di qui si deduce che:

$ display(lim_(x -> 0°) (sin x°) / x° = pi / 180) $

L'importanza del limite nelle applicazioni dell'analisi suggerisce l'uso dei radianti negli angoli. Nello studio delle derivate si troverà una significativa interpretazione grafica della differenza nel valore del limite in funzione del sistema di misura degli angoli scelto. Enunciamo ora il seguente teorema, riservandoci di evidenziarne almeno una dimostrazione in seguito.
#pagebreak(weak:true)
#definizione(title: "Teorema")[La funzione $f : RR without {0} -> RR$, definita da:

$ f(x) = (1 + 1/x)^x $

ha un limite finito quando $x -> plus.minus oo$. Questo limite ha un valore irrazionale, chiamato numero di Nepero#footnote[Il numero di Nepero è fondamentale in matematica: è uno dei due numeri irrazionali trascendenti più comuni, l'altro è $pi$. Questo numero è anche conosciuto come Numero di Eulero, e per questo motivo è rappresentato con la lettera "e". Eulero non ha bisogno di presentazioni, mentre Nepero (John Napier) è il matematico scozzese noto per aver introdotto i logaritmi. Anche se non possiamo approfondire la distinzione tra numeri irrazionali trascendenti e non trascendenti, è importante sottolineare che i numeri irrazionali non trascendenti sono sempre soluzioni di equazioni razionali con coefficienti interi, mentre quelli trascendenti no. In particolare, sono non trascendenti tutti i numeri ottenuti tramite operazioni elementari a partire dai radicali.], $e$, situato strettamente tra $2$ e $3$. In forma simbolica:

$ display(lim_(x -> plus.minus oo) (1 + 1/x)^x = e) approx 2.71828 $]

//! aggiungere riferimenti precedenti da altre sezioni
Si sottolinea che la funzione considerata è del tipo $(f(x))^(g(x))$. È conveniente riscriverla, scegliendo una base adeguata $a$, ad esempio $a = 2 > 1$, nella forma:

$ (1 + 1/x)^x = 2^(x dot log_2(1 + 1/x)) $

Da questa rappresentazione è chiaro il motivo della difficoltà nel calcolo del limite: l’esponente di $2$ risulta dal prodotto tra $g(x) = x$, che tende a $plus.minus oo$, e $f(x) = (1 + 1/x)$, che tende a $0$. Si tratta, quindi, di una forma d'indecisione. In situazioni simili, è consigliabile utilizzare la suddetta tecnica: trasformare una potenza con esponente e base variabili in una potenza con solo l’esponente variabile.

Come già accennato nella @potenze_esponenziali_logaritmi, il numero di Nepero è quasi l'unico utilizzato come base delle funzioni esponenziali e logaritmiche. Quando si adopera "$e$" come base, si parla spesso semplicemente di funzione esponenziale, denotata come:

$ exp(x) = exp_e (x) = e^x $

Per il logaritmo in base $e$, si adopera la denominazione di logaritmo naturale, indicato con "ln":

$ ln(x) = log_e (x) $

Tuttavia, il logaritmo in base $10$ è spesso usato ed indicato con "log". Queste convenzioni non sono universali: alcuni usano "log" per il logaritmo naturale e "Log" per quello in base $10$. È importante prestare attenzione alle convenzioni adottate nei testi e negli esercizi.

//
/* == 5.2. Altri Limiti Importanti */

=== Applicazioni dei limiti notevoli

Utilizzando due limiti notevoli e applicando i teoremi sui limiti, è possibile calcolare alcuni limiti di grande rilevanza. Le tecniche impiegate nei calcoli seguenti sono standard nei problemi di calcolo dei limiti.

1. $display(lim_(x -> 0) (tan x) / x) = 1$. È facilmente dimostrabile:
   $ display(lim_(x -> 0)) (tan x) / x = display(lim_(x -> 0) (sin x) / x dot 1 / (cos x) = 1 dot 1 = 1) $

2. $display(lim_(x -> 0) (arcsin x) / x) = 1$. Questo calcolo offre l'opportunità di mostrare la tecnica del cambiamento di variabile, frequentemente applicata, basata sul teorema del limite delle funzioni composte. Ponendo $ arcsin x = t  -> x = sin t $

   si determina che $t -> 0$ se $x -> 0$. Si ottiene quindi:
   $ display(lim_(x -> 0)) (arcsin x) / x = display(lim_(t -> 0) t / (sin t) = 1) $

3. $display(lim_(x -> 0) (arctan x) / x) = 1$. Si proceda come nell'esempio precedente con la sostituzione $arctan x = t$.

4. $display(lim_(x -> 0) (1 - cos x) / x^2) = 1/2$. Questo si nel seguente modo:
   $ display(lim_(x -> 0) (1 - cos x) / x^2 dot (1 + cos x) / (1 + cos x) = lim_(x -> 0) (sin^2 x) / x^2 dot 1 / (1 + cos x) = 1 dot 1/2 = 1/2) $

5. $display(lim_(x -> 0) (ln(1 + x)) / x) = 1$. Per calcolarlo si prodece così:
   $ display(lim_(x -> 0) 1/x ln(1 + x) = display(lim_(x -> 0) ln(1 + x))^(1/x) = lim_(y -> plus.minus oo) ln(1 + 1/y)^y = ln e = 1). $

6. $display(lim_(x -> 0) (log_a(1 + x)) / x) = 1 / (ln a)$. Basta applicare la formula di cambio base nei logaritmi al caso precedente.

7. $display(lim_(x -> 0)) (e^x - 1) / x = 1$. Ponendo $e^x - 1 = t$, si trova che $x = ln(1 + t)$, e inoltre, se $x -> 0$, anche $t -> 0$. La conclusione segue dal quinto limite.

8. $display(lim_(x -> 0) (a^x - 1) / x) = ln a$. Si scrive:
   $ (a^x - 1) / x = ln a dot (e^(x ln a) - 1) / (x ln a) = ln a (e^t - 1)/t $
   La conclusione è immediata, essendo $lim_(t -> 0) (e^t - 1)/t = 1$, già prima dimostrato.

9. $display(lim_(x -> 0) ((1 + x)^alpha - 1) / x) = alpha$. Si riscrive come:
   $ ((1 + x)^alpha - 1) / x = (e^(alpha ln(1+x)) - 1) / (alpha ln(1+x)) dot alpha dot (ln(1+x)) / x = (e^t - 1)/t alpha ln (1 + x)/x $
   Essendo, come già dimostrato, $(e^t - 1)/t = 1$ e $ln (1 + x)/x = 1$, la conclusione è immediata.

I limiti 5, 6, 7, 8 appena esposti forniscono una giustificazione del perché la base delle funzioni logaritmiche ed esponenziali è comunemente $e$, un argomento che diventerà ancora più evidente con lo studio delle derivate.

//
=== Altri limiti relativi ad esponenziali e logaritmi

1. $display(lim_(x -> +oo) (ln x) / x = 0)$. Per dimostrare questo limite, notiamo che, per ogni $x > 0$, $ln x < x$. 
   
   Se $0 < x < 1$, allora $ln x < 0$ e quindi anche $ln x < x$. Inoltre, per ogni $n in NN$, se $e^n <= x <= e^(n+1)$, si ottiene $n <= ln x <= n+1$, quindi $ln x < x$. 
   
   Usando questa disuguaglianza successivamente: $ ln x < x => ln sqrt(x) < sqrt(x) => 1/2 ln x < sqrt(x) = ln x < 2 sqrt(x) $
   
   Dividendo entrambi i membri per $x$, otteniamo:

   $ 0 < (ln x) / x < 2 sqrt(x) / x = 2 / sqrt(x) $

   Poiché l'ultimo termine tende a zero, possiamo concludere usando il teorema del confronto.

2. $display(lim_(x -> +oo) (log_a x) / x = 0)$. Si procede eseguendo un cambio di base nel logaritmo in modo da ricondurlo al caso precedente:

   $ (log_a x) / x = 1 / (ln a) dot (ln x) / x $

3. $display(lim_(x -> +oo) (log_a x) / x^p = 0), quad p in RR^+ $. Abbiamo:

   $ (log_a x) / x^p = 1 / p dot (log_a (x^p)) / x^p $

4. $display(lim_(x -> 0^+) x^p log_a x = 0), quad p in RR^+$. Cambiamo variabile con $x = 1/t$; se $x -> 0^+$, allora $t -> +oo$. Il limite diventa:

   $ x^p log_a x = (1/t)^p log_a(1/t) = - (log_a t) / t^p $

5. $display(lim_(x -> +oo) a^x / x = +oo), quad a > 1$. Poniamo $a^x = t$; quindi $x = log_a t$ e quando $x -> +oo$, anche $t -> +oo$. Otteniamo:

   $ a^x / x = t / (log_a t) $

   Questa è l’interpretazione reciproca del limite numero 2.

6. $display(lim_(x -> +oo) a^x / x^p = +oo), quad a > 1, p > 0 $. Osserviamo che:

   $ a^x / x^p = (( (a^(1/p))^x ) / x)^p = (b^x / x)^p $

// 
== Teoremi fondamentali sulle funzioni continue

#definizione(title: "Zeri di una funzione continua", label: <def-zeri-funzione-continua>)[Consideriamo una funzione continua 
$ f : [a_0, b_0] -> RR $

Supponiamo che i valori agli estremi abbiano segni opposti, ovvero $ f(a_0) dot f(b_0) < 0 $

In tal caso, esiste almeno un punto $c in [a_0, b_0]$ per cui $f(c) = 0$.

#dimostrazione()
La dimostrazione si fonda su un approccio iterativo basato sul teorema di Cantor (@def-teorema-cantor). Iniziamo calcolando il punto medio $m_0$ dell'intervallo $[a_0, b_0]$. Se $f(m_0) = 0$, il problema è risolto; altrimenti, se $f(m_0) != 0$, si seleziona l'intervallo $[a_1, b_1]$ in base al segno del prodotto $f(a_0) dot f(m_0)$: se negativo, consideriamo $[a_1, b_1] = [a_0, m_0]$; altrimenti $[a_1, b_1] = [m_0, b_0]$, avendo comunque $f(a_1) dot f(b_1) < 0$. 

Ripetendo tale procedura sull'intervallo $[a_1, b_1]$, si giunge a individuare un punto $c$ tale che $f(c) = 0$ oppure si continua a iterare. Se si prosegue indefinitamente, si genera una successione di intervalli sempre più piccoli convergenti a un unico punto $c$. Dobbiamo dimostrare che $f(c) = 0$. Qualora $f(c)$ fosse diverso da zero, per il teorema della permanenza del segno, ci sarebbe un intorno di $c$ in cui $f$ è diversa da zero, ma questo contraddirebbe il fatto che in ogni intervallo costruito i valori di $f$ ai bordi sono di segno opposto. ]

Questo metodo è noto come metodo di bisezione ed è utile anche per approssimare zeri di funzioni quando non è possibile determinarli algebricamente.

Anche in scenari semplici, il procedimento può richiedere molti passaggi: ad esempio, per la funzione $f(x) = x^2 - 2$ nell'intervallo $[0, 2]$, dove $f(0) = -2$ e $f(2) = 2$. Sebbene il teorema sia applicabile, la radice $sqrt(2)$ non può essere raggiunta tramite divisioni successive poiché tale valore è irrazionale e tutte le medie calcolate sono razionali.

Il teorema è valido anche se l'intervallo di definizione non è chiuso o limitato, sostituendo i valori ai limiti con i limiti laterali o all'infinito. Questa estensione si dimostra tramite il teorema della permanenza del segno e il teorema degli zeri.

#definizione(title: "Teorema di connessione o dei valori intermedi", label: <def-teorema-connessione>)[Se una funzione continua $f$ è definita su un intervallo chiuso e limitato $[a_0, b_0]$, allora essa assume tutti i valori compresi tra $f(a)$ e $f(b)$.

#dimostrazione()
Se $f(a) = f(b)$, non c'è nulla da dimostrare. Se differiscono, per ogni valore $gamma$ compreso tra $f(a)$ e $f(b)$, possiamo considerare la funzione $g(x) = f(x) - gamma$ e applicare ad essa il teorema degli zeri. Scegliendo punti qualsiasi $c$ e $d$ tra $a$ e $b$ e applicando il teorema sull'intervallo $[c, d]$, possiamo affermare che la funzione assume ogni valore tra due qualsiasi dei suoi valori. Per questo motivo viene chiamato "teorema di tutti i valori".]

#definizione(title: "Teorema di Weierstrass", label: <def-teorema-weierstrass>)[Se una funzione continua $f$ è definita su un insieme $A$ chiuso e limitato, allora essa raggiunge sia un massimo che un minimo, ovvero esistono punti $c$ e $d$ in $A$ tali che $f(c)$ è il massimo e $f(d)$ è il minimo dell'immagine della funzione su $A$.]

//
== Continuità uniforme 

Riesaminiamo la definizione di continuità per una funzione in un punto non isolato del dominio:

$ display(lim_(x -> x_0) f(x) = f(x_0)) $

Questo significa che 

$ forall epsilon > 0 space exists delta > 0: forall x, |x - x_0| < delta -> |f(x) - f(x_0)| < epsilon $ //? da semplificare? da rendere discorsiva?

In altre parole, "punti sufficientemente vicini a $x_0$ hanno immagini altrettanto vicine a $f(x_0)$". Tuttavia, ci si potrebbe chiedere: da qui è possibile concludere che "punti vicini tra loro hanno immagini altrettanto vicine"? La risposta è negativa, come dimostra l'esempio della funzione $f(x) = x^2$. Se si prende un $delta > 0$ e si considerano $x_1 = 1/delta$ e $x_2 = 1/delta + delta/2$, la loro distanza è $delta/2$, che può essere resa piccola quanto si vuole, purché $delta$ sia sufficientemente piccolo. Tuttavia, la distanza tra $f(x_1) = x_1^2$ e $f(x_2) = x_2^2$ è data da $1 + delta^2/4$, risultando sempre maggiore di $1$, il che significa che questa distanza non può essere arbitrariamente ridotta.

#definizione(title: "Funzione uniformemente continua", label: <def-funzione-uniformemente-continua>)[Una funzione $f: A subset.eq RR -> RR$ è detta uniformemente continua se, fissato $epsilon > 0$, è possibile trovare un $delta > 0$ tale che per ogni coppia di punti $x_1$ e $x_2$ con $|x_1 - x_2| < delta$, si abbia $|f(x_2) - f(x_1)| < epsilon$.]

//!arrivato qua
//! 
//! 

È evidente che una funzione uniformemente continua è necessariamente continua, poiché la continuità uniforme è un concetto più restrittivo rispetto alla semplice continuità. Tuttavia, come mostra l'esempio precedente, la reciprocità non è valida. Per la funzione $f(x) = x^2$, fissando un $epsilon < 1$, non sarà mai possibile trovare un $delta$ che soddisfi i requisiti: qualunque sia il $delta$, ci saranno sempre due punti con distanza inferiore a $delta$ le cui immagini avranno una distanza superiore a $epsilon$.

Osserviamo che questa caratteristica è intuitivamente chiara per la funzione $f(x) = x^2$. Essa può essere espressa, anche se in modo poco rigoroso, nel seguente modo: se prendo coppie di punti "molto lontani dall'origine" ma vicini tra loro, la distanza delle immagini può comunque essere "grande", poiché il grafico della funzione diventa "molto verticale" per valori grandi di $x$.

#definizione(title: "Teorema di Heine", label: <def-teorema-heine>)[Ogni funzione continua definita su un insieme chiuso e limitato è uniformemente continua.]

Da notare che questo teorema esprime solo una condizione sufficiente: anche funzioni continue definite su insiemi non chiusi o non limitati possono essere uniformemente continue. Un esempio è dato dalla funzione $f(x) = sqrt(x)$, nell'intervallo $[1, +oo)$. Per due punti $x_1$ e $x_2$, entrambi maggiori di $1$, si ha:

$ |f(x_1) - f(x_2)| = |sqrt(x_1) - sqrt(x_2)| = (|x_1 - x_2|) / (sqrt(x_1) + sqrt(x_2)) < (|x_1 - x_2|) / 2 $

Se si prende $delta = 2 epsilon$, risulta immediato che quando i due punti $x_1$ e $x_2$ distano meno di $delta$, le loro immagini distano meno di $epsilon$.

Si noti che, a differenza della funzione $x^2$ precedentemente discussa, dove $x^2$ diventa più "verticale" con l'aumentare di $x$, la funzione $sqrt(x)$ rimane "abbastanza piatta" anche per valori grandi di $x$. Questo è evidente osservando iil grafico in /* figura */. La differenza diventa particolarmente chiara quando si impiega una scala adeguata per evidenziare le parti del grafico lontane dall'origine. Non approfondiremo ulteriormente questo concetto, sebbene sia importante, ma ci teniamo a sottolineare che ne faremo uso nella teoria dell'integrazione delle funzioni continue.

#grafici_limiti4

//
/* == 5.5. Osservazioni e Approfondimenti Vari */

=== Considerazioni sulla continuità

È noto che una funzione è continua in un punto $x_0$ non isolato del suo dominio se il limite di $f(x)$ per $x ->x_0$ è uguale a $f(x_0)$. Se il punto $x_0$ è isolato nel dominio, allora $f$ è automaticamente continua in $x_0$. Pertanto, la continuità di una funzione in $x_0$ è rilevante solo nei punti non isolati del dominio e richiede:
+ che il punto $x_0$ appartenga al dominio
+ che esista un limite finito della funzione per $x ->x_0$
+ che tale limite corrisponda al valore che la funzione assume in $x_0$

Poniamo particolare attenzione sulla prima condizione, poiché in molti testi si usano espressioni che riteniamo essere formalmente scorrette. Ecco alcuni esempi chiarificatori.

#esempio[La funzione definita come $ f(x) = 1/x $ ha come dominio naturale $RR without {0}$ ed è sempre continua nel suo dominio. Al punto $0$ la funzione non è definita, quindi non è né continua né discontinua, in quanto semplicemente non esiste. 

Poiché $0$ è un punto di accumulazione nel dominio della funzione, ha certamente senso cercare il limite quando $x -> 0$:

$ cases(display(lim_(x -> 0^-) 1/x = -oo), display(lim_(x -> 0^+) 1/x = +oo)) => display(lim_(x -> 0) 1/x = oo) $

#grafico_limiti24

Tuttavia, non ha senso chiedersi se la funzione è continua in $0$.][
La funzione definita come $ f(x) = (sin x) / x $ ha lo stesso dominio naturale $RR without {0}$ ed è continua nel suo dominio. Anche al punto $0$, la funzione non è definita, quindi non è né continua né discontinua, poiché semplicemente non esiste.

Anche in questo caso, dato che $0$ è di accumulazione per il dominio della funzione, ha perfettamente senso determinare il limite per $x$ che tende a $0$, noto come:
$ display(lim_(x -> 0) (sin x) / x = 1) $

#grafico_limiti25

Ma anche in questo caso, non ha senso chiedersi se la funzione è continua o meno in $0$. 
][
La funzione definita da $ f(x) = x + (|x|) / x $ presenta come dominio naturale $RR without {0}$ ed è sempre continua nel suo dominio. Tuttavia, al punto $0$ la funzione non è definita e, di conseguenza, non si può parlare né di continuità né di discontinuità. La funzione semplicemente non esiste in quel punto.

Poiché $0$ è un punto di accumulazione per il dominio della funzione, ha senso considerare il limite quando $x -> 0$:

$ cases(display(lim_(x -> 0^-) x + (|x|)/x) = -1, display(lim_(x -> 0^+) x + (|x|)/x) = +1) quad => lim_(x -> 0) x + (|x|)/x = exists.not $

#grafico_limiti26

Questo implica che il limite generale non esiste, confermando che non si può discutere della continuità della funzione in $0$.   
][
Per la funzione definita da $ f(x) = x + op("sgn")(x) $

il dominio naturale è tutto $RR$. Questo consente di discutere sulla sua continuità in ogni numero reale, in particolare in $0$:
$ cases(
  display(lim_(x -> 0^-)) x + op("sgn")(x) = -1,
  display(lim_(x -> 0^+)) x + op("sgn")(x) = +1
) quad => quad lim_(x -> 0) x + op("sgn")(x) = exists.not $

Anche in questo caso, il limite generale non esiste, ma a differenza del primo esempio, qui possiamo affermare che la funzione non è continua in $0$. Esaminando il grafico si osserva che la differenza risiede nel fatto che ora $0$ è incluso nel dominio.

#grafico_limiti27

][
La funzione $ f(x) = |op("sgn")(x)| $ ha anch'essa come dominio naturale tutto $RR$, quindi si può analizzare la sua continuità in ogni punto reale e particolarmente in $0$:

Il limite quando $x -> 0$ è $1$, mentre $f(0) = 0$. Quindi, la funzione non è continua in $0$ poiché il valore del limite non coincide con il valore della funzione.

#grafico_limiti28

][
Consideriamo la funzione $ f(x) = sin 1/x $

il cui dominio naturale è $RR without {0}$. La funzione rimane continua nel suo dominio, ma al punto $0$ non è definita. Pertanto, non si può parlare di continuità o discontinuità.

Anche per questa funzione, il limite quando $x -> 0$ non esiste, né per il lato destro né per quello sinistro. Di conseguenza, non ha senso discutere della continuità in $0$.

#grafico_limiti29

][
La funzione definita da $ f(x) = e^(1/x) = exp(1/x) $
possiede come dominio naturale $RR without {0}$ ed è continua al suo interno. Tuttavia, la funzione non esiste al punto $0$, quindi neppure qui si può parlare di continuità o discontinuità.

Inoltre, valutando il limite per $x -> 0$, si ottiene:
$ cases(
  display(lim_(x -> 0^-)) exp 1/x = 0,
  display(lim_(x -> 0^+)) exp 1/x = +oo
) quad => quad lim_(x -> 0) exp 1/x = exists.not $

Questo implica che anche in tale situazione il limite generale non esiste e dunque non vi è alcun senso nel considerare la continuità della funzione in $0$

#grafico_limiti30

]

Gli esempi che abbiamo proposto riguardano sempre funzioni non definite o non continue in un solo punto, il quale è comunque un punto di accumulazione per il dominio della funzione. In tutti questi casi, siamo stati in grado di determinare il limite della funzione. Sebbene esista una terminologia comune per classificare le varie situazioni che possono presentarsi -- e che non si limitano a quelle qui illustrate -- eviteremo di riportarla per non creare confusione, limitandoci a sottolineare quanto segue:
+ quando i limiti destro e sinistro di una funzione per $x -> x_0$ esistono e sono finiti ma diversi, si dice che la funzione presenta un salto in corrispondenza di $x_0$, indipendentemente dalla possibilità di parlarne in termini di continuità.
+ se la funzione ha un limite finito per $x -> x_0$:
   - se $x_0$ non appartiene al dominio della funzione, è possibile estenderla per continuità in $x_0$ impostando $ f(x_0) = lim_(x -> x_0) f(x) $ ottenendo così una funzione definita e continua anche in $x_0$
   - se $x_0$ appartiene al dominio della funzione, è possibile costruire una nuova funzione $g$ impostando:
     $ g(x) = cases(
       f(x)\, quad & x != x_0,
       display(lim_(x -> x_0)) f(x)\, quad & x = x_0
     ) $
     In questo modo si ottiene una funzione continua anche in $x_0$ che differisce da $f$ solo nel punto $x_0$.

=== Proprietà "grafiche" della continuità

È tradizione immaginare le funzioni continue come tracciati che si possono disegnare senza staccare la penna dal foglio. Gli esempi proposti dimostrano come quest'immagine possa risultare fuorviante. Si potrebbe naturalmente obiettare, in relazione a questi esempi, che è evidente considerando che nel dominio c'è una lacuna. 

#esempio[Consideriamo la funzione:

$ f(x) = cases(
  display(x sin 1/x)\, quad & x != 0,
  0\, quad & x = 0
) $

È immediato constatare che la funzione è continua ovunque.

#grafico_limiti31

Anche se non è facile dimostrarlo, il tratto di grafico della funzione compreso in un intorno (anche molto piccolo) dell'origine ha sempre lunghezza infinita: non ha senso allora dire che tale grafico è tracciabile senza staccare la penna dal foglio.]