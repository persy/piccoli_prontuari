#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Affinità <affinità>

#intro[In questo capitolo vengono analizzate le principali caratteristiche delle affinità nel piano, utilizzando esclusivamente un approccio analitico anziché sintetico. Il calcolo matriciale viene impiegato frequentemente per semplificare la trattazione. Tuttavia, il contenuto è accessibile anche a coloro che non possiedono conoscenze approfondite di algebra lineare.]

== Trasformazioni del piano in sé

#definizione(title: "Trasformazioni del piano in sé", label: <def-trasfromazioni-piano>)[All'interno di un piano $pi$, considerando un sistema di riferimento cartesiano ortonormale, qualsiasi funzione $f$ che mappa il piano su se stesso, associando a ogni punto del piano un altro punto, è chiamata trasformazione del piano in sé. ]

Avendo fissato un riferimento cartesiano, è sufficiente definire una regola per calcolare le coordinate di $P' = f(P)$ a partire da quelle di $P$, ovvero considerare una funzione $f: RR^2 -> RR^2$.

#esempio[Le coordinate $(x', y')$ rappresentano quelle del punto immagine $P'$ e $(x, y)$ quelle di $P$. Si utilizza la seguente notazione:
$ cases(x' = x^2 - y + 2, y' = e^(x + y^2)) $

Si può anche rappresentare queste equazioni nella forma:
$ mat(x'; y') = f mat(x; y) $]

Qui le coppie di numeri reali vengono scritte in forma colonnare anziché su una riga, in linea con le convenzioni dell'algebra lineare. In sostanza, per definire la funzione $f$ abbiamo definito due componenti: la prima collega la coppia $(x, y)$ alla coordinata $x'$ del punto trasformato, mentre la seconda collega $(x, y)$ alla coordinata $y'$. Queste due sono le componenti della funzione $f$.

La @grafico_affinita illustra come opera questa funzione su alcuni punti: $P_1, P_2, P_3$ e le rispettive immagini $P'_1, P'_2, P'_3$, collegate da linee tratteggiate per evidenziare l'azione della funzione.

Nell'esempio considerato sono mostrati solo tre punti e le loro immagini; naturalmente è impossibile rappresentare tutti i punti e le loro immagini. Nelle applicazioni, è interessante studiare le relazioni tra insiemi di punti nel piano e i loro trasformati mediante funzioni come quella illustrata sopra. Quando si tratta di trasformazioni generali come quella dell'equazione precedente, le figure trasformate solitamente non mantengono le caratteristiche delle figure originarie.

#grafico_affinita

In questo capitolo, ci si concentra sulle trasformazioni in cui entrambe le funzioni che compongono la funzione $f$ sono di primo grado in $x$ e $y$, con alcune condizioni aggiuntive: queste saranno chiamate affinità. Prima di addentrarci maggiormente nell'argomento, è fondamentale sottolineare un aspetto significativo. Quando trattiamo le trasformazioni del piano che agiscono su sé stesso, ovvero funzioni da $RR^2$ a $RR^2$, non ci interessa il grafico della funzione $f$#footnote[Il grafico si può descrivere analiticamente come l'insieme delle coppie $(x, y)$ e $(x', y')$, ovvero delle quaterne $(x, y, x', y')$.]. Questo grafico non può essere rappresentato nel modo tradizionale, dato che richiederebbe un sistema di 4 assi cartesiani, cosa impossibile in uno spazio tridimensionale. Ci interessa invece l'aspetto geometrico dei particolari sottoinsiemi del dominio e dei loro correlati immagini.

== Affinità nel piano

La trasformazione più generica del piano su sé stesso, rappresentabile mediante funzioni di primo grado in $x$ e $y$, si esprime come:
$ cases(x' = a x + b y + p, y' = c x + d y + q) $ <eq-affinita1>

Queste funzioni sono spesso denominate lineari, anche se questa definizione non è tecnicamente corretta, poiché una vera funzione lineare da $RR^2$ a $RR^2$ sarebbe del tipo:
$ cases(x' = a x + b y, y' = c x + d y) $

ovvero priva di termini costanti rispetto alla precedente espressione. È pertanto più appropriato definire tali funzioni come affini, e adotteremo questo termine.

Impostando
$ bold(A) = mat(a, b; c, d), quad bold(u) = mat(x; y), quad bold(u)' = mat(x'; y'), quad bold(tau) = mat(p; q) $

le equazioni sopra possono essere riscritte in forma matriciale compatta come:
$ bold(u)' = A bold(u) + bold(tau) $ <eq-affinita2>

#definizione(title: "Affinità nel piano", label: <def-affinita-piano>)[Sono dette affinità nel piano le trasformazioni di tipo @eq-affinita1 o @eq-affinita2 che soddisfano la proprietà fondamentale:
$ det(A) != 0, quad a d - b c != 0 $]

Questa proprietà assicura che la trasformazione è biunivoca e quindi invertibile, rendendo possibile il calcolo degli originali ($x, y$) a partire dalle immagini ($x', y'$). Concettualmente, usando la notazione matriciale, è un passaggio immediato:
$ arrow(u)' = bold(A) arrow(u) + arrow(tau) ==> bold(A) arrow(u) = arrow(u)' - arrow(tau) ==> bold(A)^(-1) bold(A) arrow(u) = bold(A)^(-1) (arrow(u)' - arrow(tau)) $

ovvero
$ arrow(u) = bold(A^(-1)) (arrow(u)' - arrow(tau)) $ <eq-inversa-affinita1>

Si può anche dedurre direttamente dalle equazioni in @eq-affinita1, ottenendo le formule inverse dello stesso tipo:
$ cases(x = a' x' + b' y' + p', y = c' x' + d' y' + q') $ <eq-inversa-affinita2>

con
$ a' d' - b' c' = 1 / (a d - b c) != 0, quad det mat(a', b'; c', d') = 1 / det(A) != 0 $

#definizione(title: "Inversa di un'affinità", label: <def-inversa-affinita>)[L'affinità espressa dalle @eq-inversa-affinita1 o @eq-inversa-affinita2 è detta inversa dell'affinità della @eq-affinita1 ed è indicata con $f^(-1)$ se quella originale era indicata con $f$.]

È essenziale notare che le formule permettono di calcolare le coordinate dei punti trasformati partendo da quelle originali, mentre le formule inverse non solo permettono di risalire alle coordinate originali dai punti trasformati, ma sono anche utilissime per ottenere le trasformazioni delle equazioni di luoghi geometrici del piano. Per meglio comprendere questa osservazione, esaminiamo l'esempio seguente.

#esempio[Si consideri la trasformazione:
$ cases(x' = 2 x - y + 1, y' = x + y) $ <eq-affinita3>

classificata come un'affinità poiché il determinante $2 dot 1 - (-1) dot 1 = 3$ è diverso da zero. Utilizzando calcoli standard, si ottiene:
$ cases(x = display(1/3) x' + display(1/3) y' - display(1/3), y = -display(1/3) x' + 2/3 y' + display(1/3)) $ <eq-affinita4>

Ad esempio, usando le prima coppia di equazioni (@eq-affinita3), si scopre che l'immagine del punto $P = (-1, 2)$ è il punto $P' = (-3, 1)$. Invece, avvalendosi delle equazioni inverse (@eq-affinita4), si evince che il punto $P' = (0, 0)$ deriva dal punto $P = (-display(1/3), display(1/3))$. Inoltre, un'equazione come $x^2 + y^2 - 1 = 0$, rappresentante una composeonferenza centrata sull'origine con raggio 1, si trasforma nell'equazione:
$ (display(1/3) x' + display(1/3) y' - display(1/3))^2 + (-display(1/3) x' + 2/3 y' + display(1/3))^2 - 1 = 0 $

che riscritta diventa:
$ 2 x'^2 + 5 y'^2 - 2 x' y' - 4 x' + 2 y' - 7 = 0 $

rappresentando un'ellisse, illustrata nella @grafico_affinita_ellisse.

#grafico_affinita_ellisse

]

Per le affinità, esiste il seguente teorema che descrive le proprietà di queste trasformazioni piane.
#v(2em)
#definizione(title: "Teorema sulle trasfromazioni piane", label: <def-teorema-trasformazioni>)[Nell'ambito delle affinità, valgono le seguenti proprietà delle trasformazioni piane:
+ l'immagine di una retta resta una retta
+ l'immagine di una conica si mantiene una conica
+ rette parallele corrispondono sempre a rette parallele
+ rette incidenti restano incidenti
+ il rapporto tra le aree delle regioni corrispondenti è costante ed è noto come rapporto di affinità, dato da $ r_a = |a d - b c| = |det(bold(A))| $
+ le affinità conservano il punto medio dei segmenti; se $M$ è il punto medio di $overline(bold(A) B)$, allora $M'$ sarà il punto medio di $overline(bold(A)' B')$]

La dimostrazione delle prime due proprietà è immediata poiché le formule inverse sono funzioni lineari.

#definizione(title: "bold(A)ffinità dirette e inverse", label: <def-affinita-dirette-inverse>)[Un'affinità è detta diretta se $det(bold(A)) > 0$, mentre è inversa se $det(bold(A)) < 0$.]

Dalle proprietà enunciate e considerando che l'inversa di un'affinità è essa stessa un'affinità, si deduce immediatamente che un triangolo non degenere resta tale dopo la trasformazione.

#esempio[L'affinità trattata nell'esempio precedente

$ cases(x' = 2 x - y + 1, y' = x + y) $

 è diretta poiché il determinante della matrice $bold(A)$ è 3. Il triangolo con vertici $bold(A) = (-1, 0)$, $B = (2, 0)$, $C = (0, -2)$ e il suo trasformato con vertici $bold(A)' = (-1, -1)$, $B' = (5, 2)$, $C' = (3, -2)$ condividono lo stesso orientamento antiorario.

#grafico_affinita_diretta
][L'affinità $ cases(x' = 2 x - y + 1, y' = x + y) $ è inversa, dato che il determinante di $bold(A)$ è $-1$. Il triangolo iniziale con vertici $A = (0, 0)$, $B = (1, 0)$, $C = (0, 1)$ e il suo trasformato con $A' = (1, 0)$, $B' = (3, 1)$, $C' = (0, 1)$ presentano orientamenti opposti.

#grafico_affinita_inversa
]


== Gruppo delle affinità

Consideriamo due affinità:

$ f: cases(x' = a_1 x + b_1 y + p_1, y' = c_1 x + d_1 y + q_1), quad g: cases(x' = a_2 x + b_2 y + p_2, y' = c_2 x + d_2 y + q_2) $

Si possono esaminare le affinità composte $ h = f compose g, quad k = g compose f $ 
L'affinità $h$ si ottiene sostituendo in $f$ per $x$ e $y$ rispettivamente con $a_2 x + b_2 y + p_2$ e $c_2 x + d_2 y + q_2$. Analogamente, l'affinità $k$ si ottiene sostituendo in $g$ rispettivamente per $x$ e $y$ i termini $a_1 x + b_1 y + p_1$ e $c_1 x + d_1 y + q_1$. Come è evidente, la composizione di due funzioni non rispetta la proprietà commutativa: $f compose g != g compose f$.

Usando la notazione matriciale, tutto diventa più lineare. Consideriamo:
$ f: arrow(u)' = bold(A_1) arrow(u) + arrow(tau)_1 $
$ g: arrow(u)' = bold(A_2) arrow(u) + arrow(tau)_2 $

Si ottiene:
$ f compose g: arrow(u)' = bold(A_1) (bold(A_2) arrow(u) + arrow(tau)_2) + arrow(tau)_1 = bold(A_1) bold(A_2) arrow(u) + bold(A_1) arrow(tau)_2 + arrow(tau)_1 \ g compose f: arrow(u)' = bold(A_2) (bold(A_1) arrow(u) + arrow(tau)_1) + arrow(tau)_2 = bold(A_2) bold(A_1) arrow(u) + bold(A_2) arrow(tau)_1 + arrow(tau)_2 $

Queste espressioni dimostrano immediatamente la mancanza di commutatività nell'operazione di composizione (reminiscente della non commutatività del prodotto matriciale) e mostrano come la matrice della trasformazione composta derivi dal prodotto delle matrici delle singole trasformazioni.

L'operazione di composizione gode comunque della proprietà associativa: per tutte le affinità $f, g, h$ vale
$ (f compose g) compose h = f compose (g compose h) $

Nell'insieme delle affinità sussiste anche un elemento neutro rappresentato dalla trasformazione identica:
$ "id": cases(x' = x, y' = y) $

oppure

$ arrow(u)' = bold(I) arrow(u) + arrow(0) $

dove $I$ è la matrice identità e $arrow(0)$ è il vettore nullo:
$ bold(I) = mat(1, 0; 0, 1), quad arrow(0) = mat(0; 0) $

In considerazione del fatto che ogni affinità possiede un'inversa (poiché $det(bold(A)) != 0$), si può concludere che l'insieme delle affinità nel piano costituisce un gruppo non abeliano.

== Elementi uniti

#definizione(title: "Punti uniti (o fissi)", label: <def-punti-uniti>)[Considerando una funzione $f : A -> A$, un punto fisso o punto unito di $f$ è un elemento $x_0$ di $A$ che coincide con la propria immagine, ossia $f(x_0) = x_0$.]

Questo concetto è di grande interesse in vari campi, compreso quello delle affinità. Tra i teoremi sui punti fissi, quello di Brouwer è particolarmente celebre e rilevante, soprattutto nel caso specifico delle funzioni reali definite su $[0, 1]$ in $[0, 1]$:

#definizione(title: "Teorema di Brouwer", label: <def-teorema-brouwer>)[Ogni funzione continua $ f : [0, 1] -> [0, 1] $ possiede almeno un punto unito o fisso.]

In questo caso semplice, il teorema è evidente graficamente: qualsiasi funzione continua il cui grafico parte da $y$ con $0 <= y <= 1$ e giunge al punto sulla linea $x = 1$, mantenendosi in $0 <= y <= 1$, interseca almeno una volta la bisettrice del primo e terzo quadrante.

#grafico_punto_fisso

Per determinare eventuali punti fissi di una funzione, si risolve l'equazione $ f(x) = x $

Nel contesto delle affinità, dove i punti fissi potrebbero non esistere, si procede nello stesso modo imponendo:
$ cases(a x + b y + p = x, c x + d y + q = y) $

#esempio[Troviamo i punti fissi della seguente affinità:
$ cases(x' = x + y + 1, y' = 3 x - y) $

Risolvendo il sistema:
$ cases(x = x + y + 1, y = 3 x - y) $

Si determina facilmente l'unico punto $P = (display(-2/3), -1)$][
Troviamo i punti fissi della seguente affinità:
$ cases(x' = -y + 1, y' = -x + 1) $

Risolvendo il sistema:
$ cases(x = -y + 1, y = -x + 1) $

Si scopre che tutti i punti della retta $x + y - 1 = 0$ sono punti fissi; in questo caso, i punti uniti sono infiniti. Questa retta può essere definita come retta (puntualmente) unita.
]

Oltre ai singoli punti, nelle applicazioni sono interessanti le figure, in particolare le rette, i cui punti vengono trasformati in altri punti della stessa figura. 

#definizione(title: "Rette globalmente unite", label: <def-rette-unite>)[Una retta si chiama globalmente unita se i suoi punti vengono mappati su punti appartenenti alla stessa retta.]

In pratica, considerata una retta $ a x + b y + c = 0 $

si deve verificare se applicando a essa una data affinità — ovvero sostituendo $x$ e $y$ con le loro espressioni in funzione di $x'$ e $y'$ (affinità inversa) — si ottiene ancora la stessa retta con l'equazione $k a x' + k b y' + k c = 0$, dove $k$ è costante non nulla. Solitamente si preferisce considerare le rette nella forma esplicita; quindi, data la retta $y = m x + q$, sostituendo $x$ e $y$ con le loro espressioni in funzione di $x'$ e $y'$, si deve verificare che si ottenga una retta con lo stesso coefficiente angolare e la stessa ordinata all'origine. È necessario anche controllare se una retta parallela all'asse $y$ ($x = h$) è globalmente unita, cioè trasformabile nella retta $x' = h$. Si può alternativamente partire dalla retta $y' = m x' + q$ e controllare che sostituendo $x'$ e $y'$ si ottenga una retta con lo stesso coefficiente angolare e la stessa ordinata all'origine.

#esempio[Determinare le rette globalmente unite nella seguente affinità, già analizzata in precedenza:
$ cases(x' = x + y + 1, y' = 3 x - y) $

Iniziamo calcolando l'affinità inversa, come precedentemente indicato. Si ottiene:
$ cases(x = 1/4 x' + 1/4 y' - 1/4, y = 3/4 x' - 1/4 y' - 3/4) $

Una retta verticale del tipo $x = h$ si trasforma in $1/4 x' + 1/4 y' - 1/4 = h$, che non è della forma $x' = h$. Consideriamo quindi una retta non verticale $y = m x + q$ e sostituiamo i valori appena trovati per $x$ e $y$:
$ 3/4 x' - 1/4 y' - 3/4 = m(1/4 x' + 1/4 y' - 1/4) + q $

Calcolando e semplificando, si ottiene:
$ (3 - m)x' - (1 + m)y' - 3 - 4 q + m = 0 $

Il valore $m = -1$ porta a una retta verticale trasformata, che non soddisfa le condizioni dato che la retta originale non lo era. Per $m != -1$ si ha:
$ y' = (3 - m)/(1 + m) x' + (m - 3 - 4 q)/(1 + m) $

Il sistema da risolvere diventa:
$ m = display((3 - m)/(1 + m)) quad and quad display((m - 3 - 4 q)/(1 + m)) = q $

Da cui le due soluzioni sono:
$ cases(m = -3, q = -3) quad or quad cases(m = 1, q = -1/3) $

Si nota che il punto $P = (-2/3, -1)$, precedentemente già dimostrato unito, è il punto di intersezione delle due rette globalmente unite trovate: $r: y = -3 x - 3$ e $s: y = x - 1/3$. Questo è evidente: se ogni punto della retta $r$ viene trasformato in un altro punto della stessa retta $r$, e lo stesso vale per la retta $s$, allora $P$, comune a $r$ e $s$, deve essere un punto unito.

Procedendo in senso inverso, data una retta non verticale $y' = m x' + q$, sostituiamo i valori di $x'$ e $y'$ con le rispettive espressioni in funzione di $x$ e $y$. Dopo la semplificazione si ottiene:
$ y = (3 - m)/(1 + m) x - (m + q)/(1 + m) $

Si conclude che:
$ cases(display((3 - m)/(1 + m)) = m, - display((m + q)/(1 + m)) = q) $

fornendo gli stessi valori di $m$ e $q$ ottenuti in precedenza.

#grafico_rette_unite

]

== Similitudini

Passiamo ora a esaminare un particolare tipo di affinità che presenta alcune proprietà aggiuntive rispetto alle affinità generiche.

#definizione(title: "Similitudini", label: <def-similitudini>)[È definita similitudine un'affinità della forma
$ cases(x' = a x + b y + p, y' = c x + d y + q) $ <eq-similitudine>

 se
$ |a| = |d| quad and quad |b| = |c| $]

Dato che il determinante di $A$ deve essere diverso da zero ($det(A) = a d - b c != 0$), possiamo dedurre dalla @eq-similitudine che le similitudini richiedono i seguenti modelli:
$ cases(x' = a x - b y + p, y' = b x + a y + q) $ <eq-similitudine-tipo1>

in cui gli elementi della diagonale principale sono uguali e quelli della diagonale secondaria sono opposti, oppure:
$ cases(x' = a x + b y + p, y' = b x - a y + q) $ <eq-similitudine-tipo2>

dove gli elementi della diagonale principale sono opposti e quelli della secondaria sono uguali. In entrambi i casi, il rapporto di affinità è $ r_a = a^2 + b^2 $

Le similitudini del primo tipo si dicono dirette, mentre quelle del secondo tipo indirette.

#definizione(title: "Rapporto di similitudine", label: <def-rapporto-similitudine>)[Il numero $k = sqrt(a^2 + b^2)$ è chiamato rapporto di similitudine.

Le trasformazioni nei formati matriciali delle formule precedenti sono:
$ mat(x'; y') = A mat(x; y) + mat(p; q), quad  A = mat(a, -b; b, a) or mat(a, b; b, -a) $
]
Segue un importante teorema che descrive le proprietà delle similitudini aggiuntive rispetto alle affinità generiche.

=== Proprietà delle similitudini

Per le similitudini valgono le seguenti proprietà:
+ il rapporto tra le lunghezze dei segmenti corrispondenti rimane costante ed è uguale al rapporto di similitudine $k$
+ le composeonferenze si trasformano in altre composeonferenze
+ le similitudini preservano gli angoli. Questo implica che per qualsiasi terna di punti $A, B, C$ l'ampiezza dell'angolo $A B C$ è identica all'ampiezza dell'angolo $A' B' C'$, senza alterare il verso

#esempio[Si consideri la similitudine definita da:
$ cases(x' = x - 2 y + 1, y' = 2 x + y) $ <eq-esempio-similitudine>

Si tratta di una similitudine diretta con rapporto di similitudine $k = sqrt(5)$. Dato che gli angoli e i rapporti tra segmenti e i loro trasformati restano inalterati, ogni triangolo si trasforma in uno simile, anche se può essere ruotato, traslato o avere un cambiamento nell'orientamento del perimetro, come viene illustrato nella @grafico_similitudine_triangoli.

#grafico_similitudine_triangoli

Si nota che questa similitudine possiede solo un punto fisso: $(0, display(1/2))$.]

Per evidenziare il significato geometrico delle similitudini, è utile riscrivere le equazioni @eq-similitudine-tipo1 e @eq-similitudine-tipo2 in un altro formato. Con $k$ diverso da zero:
$ bold(A) = k space mat(display(a/k), display(-b/k); display(b/k), display(a/k)) quad "oppure" quad  bold(A) = k space mat(display(a/k), display(b/k); display(b/k), display(-a/k)) $

Poiché
$ (a/k)^2 + (b/k)^2 = (a^2 + b^2)/k^2 = 1 $

esiste un angolo $alpha$, con $0 <= alpha < 2 pi$, tale che:
$ cos(alpha) = a/k, quad sin(alpha) = b/k  $

Quindi, le equazioni di una qualsiasi similitudine possono essere espresse nei due modi seguenti per similitudini dirette e inverse:
$ cases(x' = k(x cos alpha - y sin alpha) + p, y' = k(x sin alpha + y cos alpha) + q) $

oppure
$ cases(x' = k(x cos alpha + y sin alpha) + p, y' = k(x sin alpha - y cos alpha) + q) $

dove $k > 0$ rappresenta il rapporto di similitudine.

#esempio[Considere la similitudine diretta definita da
$ cases(x' = x + 2 y + 1, y' = -2 x + y + 3) quad = quad  cases(x' = x - (-2)y + 1, y' = -2 x + y + 3) $

con fattore $k = sqrt(5)$. Questa riscrittura ci avvicina al modello @eq-similitudine-tipo1, utile per l'interpretazione geometrica successiva. Per trasformarla nel formato trigonometrico, basta trovare un angolo $alpha$ tale che:
$ cos alpha = 1/sqrt(5) quad and quad sin alpha = -2/sqrt(5) $

ovvero
$ alpha = 2 pi + arcsin(-2/sqrt(5)) approx 5.18 approx 297° $

In alternativa, si potrebbe considerare:
$ alpha = arcsin(-2/sqrt(5)) approx -1.11 approx -63° $

a condizione che si stabilisca che $-pi <= alpha < pi$.]

Concludendo questa introduzione alle similitudini, si può dimostrare il seguente teorema sulla struttura dell'insieme delle similitudini:

#definizione(title: "Teorema", label: <def-teorema-similitudini-sottogruppo>)[L'insieme delle similitudini sul piano costituisce un sottogruppo del gruppo delle affinità.]

== Omotetie

#definizione(title: "Omotetia", label: <def-omotetia>)[Una similitudine diretta con $b = 0$ è un'omotetia, e $a$ è il suo rapporto di omotetia. In termini delle equazioni delle similitudini dirette, un'omotetia è una similitudine diretta con $alpha = 0$ o $alpha = pi$.]

Le equazioni di un'omotetia sono quindi:
$ cases(x' = a x + p, y' = a y + q), quad a != 0 $

o, in forma matriciale:
$ mat(x'; y') = bold(A) mat(x; y) + mat(p; q), quad bold(A) = mat(a, 0; 0, a) $

Il rapporto di similitudine è dato dal valore assoluto del rapporto di omotetia: $k = |a|$. L'inversa di un'omotetia si ottiene immediatamente:
$ cases(x = display(1/a) x' - display(p/a), y = display(1/a) y' - display(q/a)) $

Gli elementi uniti di un'omotetia si determinano facilmente:
$ cases(x = a x + p, y = a y + q) $

implica che
$ cases(x(1 - a) = p, y(1 - a) = q) $

e, se $a != 1$, esiste una sola soluzione:
$ C = (p/(1 - a), q/(1 - a)), quad a != 1 $

#definizione(title: "Centro di omotetia", label: <def-centro-omotetia>)[Il punto $C$ definito come: 

$ C = (p/(1 - a), q/(1 - a)) $
si chiama centro di omotetia, quando il rapporto $a != 1$]


Quando invece il rapporto è $a = 1$ l'omotetia diventa translazione, definita in seguito, mentre invece se $a = -1$ si parla di rotazione, specificamente nelle simmetrie centrali, che verranno anch'esse affrontate successivamente.

#esempio[Sia data l'omotetia:
$ cases(x' = 2 x + 1, y' = 2 y - 2) $

L'unico punto invariato è $C = (-1, 2)$. Esaminiamo le rette globalmente invariate iniziando da quelle verticali: $x' = h$. Sostituendo otteniamo:
$ 2 x + 1 = h => x = (h - 1)/2 => (h - 1)/2 = h => h = -1 $

Per le rette non verticali $y' = m x' + q$, sostituendo si ricava che:
$ 2 y - 2 = m(2 x + 1) + q => y = m x + (2 + m + q)/2 $

quindi $m$ può valere qualunque numero, mentre $ q = (2 + m + q)/2 => q = m + 2 $

Tali rette sono $y = m(x + 1) + 2$ nel fascio centrato in $C = (-1, 2)$. Includendo la retta verticale trovata precedentemente, tutte le rette nel fascio centrato in $C$ sono globalmente unite, come risulta evidente della @grafico_omotetia_triangoli.

#grafico_omotetia_triangoli

]

=== Proprietà delle omotetie

Le proprietà illustrate nell'esempio precedente si applicano universalmente a tutte le omotetie.

+ le omotetie con rapporto diverso da 1, indicate con $a != 1$, hanno un unico punto fisso, $C$, che funge da centro dell'omotetia. 
+ qualsiasi retta passante per $C$ rimane globalmente invariata. 
+ le omotetie mantengono le direzioni inalterate, se una retta $r$ è soggetta a trasformazione, la sua immagine è una retta parallela a $r$. 
+ nel caso in cui $a > 0$, un punto $P$ e la sua immagine $P'$ si trovano sulla stessa semiretta avente origine in $C$
+ se invece $a < 0$, $P$ e $P'$ si collocano su semirette opposte a partire da $C$.

In altre parole, le omotetie dilatano o contraggono le figure rispetto al loro centro, mantenendo inalterate le forme originali. Inoltre, considerando le proprietà delle similitudini, che le omotetie ovviamente conservano, si può dedurre che quando $a = -1$, le omotetie non sono altro che simmetrie centrali rispetto al centro stesso. Se il valore assoluto di $a$ è maggiore di 1, la figura si dilata; mentre se è compreso tra 0 e 1, la figura si contrae.

== Isometrie

#definizione(title: "Isometria", label: <def-isometria>)[Le similitudini con rapporto $k = 1$ sono note come isometrie. Si distinguono in isometrie dirette, se $ det(A) = a^2 + b^2 = 1 $
e isometrie inverse, se $ det(A) = -a^2 - b^2 = -1 $]


Questi nomi derivano dal fatto che con $k = 1$, le lunghezze dei segmenti restano invariate nella trasformazione, preservando quindi sia la forma sia le dimensioni originali delle figure geometriche.

È importante notare che una similitudine con determinante $plus.minus 1$ è un'isometria, ma una generica affinità avente lo stesso determinante potrebbe non esserlo. Un esempio è fornito dalla trasformazione con equazioni
$ cases(x' = 2 x + y, y' = x + y) $

che possiede un determinante pari a 1 ma non costituisce una similitudine e quindi nemmeno un'isometria. Come mostrato dalla /* Figura 16.9 */, rappresentando un triangolo e il suo trasformato emerge che le aree risultano uguali (rapporto aree = 1), ma non si tratta chiaramente di un'isometria.

#grafico_isometria_triangoli

Considerando che $k = 1$, le equazioni delle isometrie dirette si possono scrivere come:
$ cases(x' = x cos alpha - y sin alpha + p, y' = x sin alpha + y cos alpha + q) $ <eq-isometria-tipo1>

per le isometrie inverse invece le equazioni sono:
$ cases(x' = x cos alpha + y sin alpha + p, y' = x sin alpha - y cos alpha + q) $ <eq-isometria-tipo2>

#definizione(title: "Teorema", label: <def-teorema-isometrie-sottogruppo>)[Il gruppo delle isometrie del piano forma un sottogruppo all'interno del gruppo delle similitudini.]

Passiamo ora ad esaminare in dettaglio le caratteristiche delle isometrie in relazione alla matrice $det(A)$.

=== Traslazioni

Nel caso in cui la matrice $det(A)$ sia l'identità, ovvero con $alpha = 0$ secondo le equazioni @eq-isometria-tipo1, l'isometria si esprime come:
$ cases(x' = x + p, y' = y + q) $ 

o, in forma matriciale:

$ mat(x'; y') = mat(1, 0; 0, 1) mat(x; y) + mat(p; q) $ <eq-translazione-matrice>

Questa trasformazione, una omotetia con rapporto 1 e senza punti fissi, è conosciuta come traslazione. Le equazioni @eq-translazione-matrice indicano che il punto $P'$ deriva dal punto $P$ tramite la traslazione definita dal vettore:
$ arrow(tau) = mat(p; q) $

In particolare, se $arrow(tau) = arrow(0)$, la trasformazione diventa identità. Come si può intuire e verificare facilmente, le traslazioni non possiedono punti uniti. Tuttavia, tutte le rette parallele al vettore $arrow(tau)$ mantengono la stessa posizione globale.

#esempio[L'affinità rappresentata da $ cases(x' = x + 2, y' = y - 1), quad arrow(tau) = mat(2; -1) $

è una traslazione. La @grafico_trasformazione_triangoli illustra la traslazione di un triangolo. La trasformazione inversa di una traslazione è anch'essa una traslazione, con vettore $-arrow(tau)$. Pertanto, l'insieme delle traslazioni forma un gruppo, un sottogruppo delle isometrie.

#grafico_trasformazione_triangoli

]

=== Rotazioni

Passiamo ora a considerare un'isometria diretta con una matrice distinta dall'identità:
$ cases(x' = a x - b y + p, y' = b x + a y + q), quad det(bold(A)) = a^2 + b^2 = 1 $

Da precedenti osservazioni, le isometrie di questo tipo si scrivono come:
$ cases(x' = x cos alpha - y sin alpha + p, y' = x sin alpha + y cos alpha + q) $  <eq-rotazione>

con la matrice rappresentata da:
$ mat(x'; y') = mat(cos alpha, -sin alpha; sin alpha, cos alpha) mat(x; y) + mat(p; q) $

e $0 < alpha < 2 pi$; se $alpha = 0$, la matrice $bold(A)$ diventa l'identità, rientrando nel caso delle traslazioni.

#definizione(title: "Teorema", label: <def-isometria-punto-unito>)[Le isometrie del tipo @eq-rotazione, con $alpha$ diverso da zero, hanno sempre un unico punto fisso.]

La dimostrazione richiede conoscenze dei sistemi lineari, espresse dalle equazioni:
$ cases(x = x cos alpha - y sin alpha + p, y = x sin alpha + y cos alpha + q) => cases(x(1 - cos alpha) + y sin alpha = p, -x sin alpha + y(1 - cos alpha) = q) $

Questo costituisce un sistema lineare di due equazioni in due incognite, con matrice dei coefficienti:
$ bold(M) = mat(1 - cos alpha, sin alpha; -sin alpha, 1 - cos alpha) $

Il determinante è $2 - 2 cos alpha != 0$, poiché $alpha != 0$, garantendo un'unica soluzione:
$ x = (det display(mat(p, sin alpha; q, 1 - cos alpha))) / (2 - 2 cos alpha), quad  y = (det display(mat(1 - cos alpha, p; -sin alpha, q))) / (2 - 2 cos alpha) $

Queste trasformazioni rappresentano rotazioni di angolo $alpha$ attorno al punto definito dalle soluzioni sopra indicate, noto come centro della rotazione.

Nel caso specifico in cui $alpha$ sia uguale a $pi$, le equazioni @@eq-rotazione si semplificano:

$ cases(x' = -x + p, y' = -y + q ) $ <eq-simmetria-centrale>
  
o in forma matriciale:

$ mat(x'; y') = mat(-1, 0; 0, -1) mat(x; y) + mat(p; q) $ 

Questo tipo di rotazione è conosciuta come mezzogiro attorno al centro di rotazione, o più comunemente, come simmetria centrale con centro nel punto di rotazione. Questa trasformazione è anche un'omotetia, con il centro nel punto di rotazione e un rapporto di $-1$. Le circonferenze che hanno il centro esattamente nel punto di rotazione rimangono invariate nel loro complesso. Quando $alpha != pi$, non ci sono rette completamente invariate; se $alpha = pi$, tutte le rette che passano per il centro di rotazione restano interamente invariate, essendo questo un caso particolare di omotetia.

Quando si parla delle rotazioni nello piano, va notato che le rotazioni attorno a un medesimo punto costituiscono un gruppo, mentre generalmente non vale lo stesso per le rotazioni attorno a punti diversi. 

Se consideriamo che il prodotto di due affinità corrisponde al prodotto delle loro matrici, vediamo che combinando due rotazioni con angoli $alpha$ e $beta$, otteniamo una matrice che rappresenta una rotazione del nuovo angolo $alpha + beta$, sempre che la somma non equivalga a $2 pi$, nel qual caso si otterrebbe una traslazione: 

$
mat(cos alpha, -sin alpha; sin alpha, cos alpha) mat(cos beta, -sin beta; sin beta, cos beta) = \
  = mat(
    cos alpha cos beta - sin alpha sin beta, -cos alpha sin beta - sin alpha cos beta;
    sin alpha cos beta + cos alpha sin beta, -sin alpha sin beta + cos alpha cos beta
  ) = \
  = mat(
    cos(alpha + beta), -sin(alpha + beta);
    sin(alpha + beta), +cos(alpha + beta)
  )
$

È importante sottolineare che l'ordine delle rotazioni influisce sul risultato. Se si eseguono consecutivamente una rotazione di centro $C_1$ con angolo $alpha$ e una rotazione di centro $C_2$ con angolo $beta$, il risultato è una rotazione con centro $C_3$ e angolo $alpha + beta$. Tuttavia, invertendo l'ordine, si otterrebbe la stessa somma angolare $alpha + beta$, ma il centro sarebbe generalmente diverso ($C_4 != C_3$). Solo le rotazioni attorno allo stesso centro consentono l'inversione dell'ordine senza alterare il risultato.

#esempio[La trasformazione
$ f: cases(x' = display(3/5) x - display(4/5) y + 1, y' = display(4/5) x + display(3/5) y) $

è un'isometria diretta perché il suo determinante è

$ det(bold(A)) = (3/5)^2 + (4/5)^2 = 1 $

Si ottiene qui che: $ alpha = arcsin(4/5) approx 0.93 approx 53.13° $

Infine, si determina il punto unito attraverso il seguente sistema

$ cases(x = display(3/5) x - display(4/5) y + 1, y = display(4/5) x + display(3/5) y) $

che risulta essere: $ C_1 = (1/2, 1) $

Questa trasformazione corrisponde a una rotazione di angolo $alpha$ attorno a $C_1$, come illustrato nella @grafico_rotazione_triangoli.

#grafico_rotazione_triangoli

][La trasformazione:
$ g: cases(x' = display(3/5) x - display(4/5) y, y' = display(4/5) x + display(3/5) y + 1) $

è anch'essa un'isometria diretta, poiché

$ det(bold(A)) = (3/5^2 + (4/5)^2) = 1 $

e si ricava lo stesso angolo $ alpha = arcsin 4/5 approx 0.93 approx 53.13° $

Il punto fisso in questo caso è $C_2 = (-1, 1/2)$.
][
Si considerino le composizioni $f compose g$ e $g compose f$, dove $f$ e $g$ sono le rotazioni degli esercizi precedenti. Con dei facili calcoli si ottiene che:

$ f compose g: cases(x' = display(-7/25) x - display(24/25) y + display(1/5,), y' = display(24/25) x - display(7/25) y + display(3/5)) \ g compose f: cases(x' = display(-7/25) x - display(24/25) y + display(3/5,), y' = display(24/25) x - display(7/25) y + display(9/5)) $

Si nota che $f compose g != g compose f$; che entrambe le composizioni hanno un angolo di rotazione pari a $2 alpha$, essendo basate sullo stesso angolo, ma i centri differiscono: il centro della rotazione $f compose g$ è $C_3 = (-1/8, 3/8)$, mentre per $g compose f$ è $C_4 = (-3/8, 9/8)$.]

=== Simmetrie assiali e glissoriflessioni

Consideriamo un'isometria inversa definita dalle seguenti equazioni:
$ cases(x' = a x + b y + p, y' = b x - a y + q), quad det(A) = -a^2 - b^2 = -1 $

Questa espressione può essere riscritta come:
$ cases(x' = x cos alpha + y sin alpha + p, y' = x sin alpha - y cos alpha + q) $ <eq-simmetria-assiale>

o in forma matriciale:
$ mat(x'; y') = mat(cos alpha, sin alpha; sin alpha, -cos alpha) mat(x; y) + mat(p; q) $

Per quanto riguarda i punti fissi, abbiamo il seguente teorema:

#definizione(title: "Teorema", label: <def-simmetrie-sottogruppi>)[Le trasformazioni del tipo sopra descritto si dividono in due categorie principali:
+ trasformazioni che hanno una linea $r$ di punti fissi, dove ogni linea perpendicolare a $r$ rimane globalmente invariata
+ trasformazioni che non hanno punti fissi, ma in cui esiste una sola linea $s$ globalmente invariata

In entrambe le tipologie di isometrie, le rette $r$ e $s$ hanno il coefficiente angolare $tan(alpha/2)$.]

Per coloro con conoscenze sui sistemi lineari, viene proposta un'introduzione alla dimostrazione di questo teorema. Trovare i punti fissi implica risolvere il sistema:
$ cases(x(1 - cos alpha) - y sin alpha = p, -x sin alpha + y(1 + cos alpha) = q) $

In questo sistema, la matrice dei coefficienti ha un determinante nullo: ciò significa che il sistema può avere infinite soluzioni oppure nessuna. Da qui derivano i due casi menzionati nel teorema. Basandosi sul teorema in @def-simmetrie-sottogruppi e attraverso un'analisi approfondita di ulteriori proprietà delle isometrie inverse, che non presenteremo in dettaglio, si possono formulare le seguenti definizioni.
#v(2em)
#definizione(title: "Simmetria assiale o riflessione", label: <def-simmetria-assiale>)[Un'isometria inversa che presenta un numero infinito di punti invariati si definisce riflessione o simmetria assiale rispetto alla retta $r$ dei punti invariati, caratterizzata da un coefficiente angolare pari a $tan alpha/2$. 

Questa retta è chiamata asse della simmetria. Ogni retta perpendicolare all'asse di simmetria risulta globalmente unita.]

#definizione(title: "Glissoriflessione", label: <def-glissoriflessione>)[Un'isometria inversa che non presenta punti invariati è il risultato della combinazione di una riflessione e di una traslazione di un vettore parallelo all'asse della riflessione, indipendentemente dall'ordine in cui avvengono (in questo caso riflessione e traslazione di un vettore parallelo all'asse della riflessione sono commutative): questa trasformazione è detta glissoriflessione. 

Di questa trasformazione esiste un'unica retta globalmente unita, con coefficiente angolare $tan alpha/2$, che si può considerare come asse della glissoriflessione: questa retta viene traslata su se stessa dalla trasformazione.]

#esempio[Considerare la trasformazione:
$ cases(x' = y - 1, y' = x + 1) $

in forma matriciale:
$ mat(x'; y') = mat(0, 1; 1, 0) mat(x; y) + mat(-1; 1) $

Questa è un'isometria inversa con $alpha = pi/2$. Risolvendo il sistema dei punti fissi:
$ cases(x = y - 1, y = x + 1) $

Scopriamo che le soluzioni sono tutti i punti della linea $r: x - y + 1 = 0$. Si tratta quindi di una simmetria assiale con l'asse lungo la linea $r$, avente coefficiente angolare 1, che corrisponde a $tan(pi/4)$. Inoltre, tutte le rette $y = -x + q$ sono globalmente invarianti.

#grafico_simmetria_assiale_triangoli

][
Considerare la trasformazione:
$ cases(x' = y, y' = x + 1) $

in forma matriciale:
$ mat(x'; y') = mat(0, 1; 1, 0) mat(x; y) + mat(0; 1) $

Anche qui, ci si trova un'isometria inversa con $alpha = pi/2$. Cercando i punti fissi per il sistema:
$ cases(x = y, y = x + 1) $

ci si accorge che non esistono soluzioni. Pertanto, cerchiamo le rette globalmente invarianti:
$ y' = m x' + q $

Sostituendo i valori di $x'$ e $y'$ in termini di $x$ e $y$, si ottiene $x = m(y - 1) + q$, cioè $m y = x + m - q$. Escludendo il caso $m = 0$, si calcola:
$ y = 1/m x + (m - q) / m $

e quindi

$ 1 / m = m quad and quad (m - q)/m = q $

da cui si ricava che $m$ deve essere 1 e $q = 1/2$. Quindi la linea globalmente invariata è $y = x + 1/2$, che rappresenta l'asse della glissoriflessione con coefficiente angolare pari a 1, cioè $tan(pi/4)$.

#grafico_glissoriflessione_triangoli

]

=== Simmetrie particolari

In alcuni contesti, le simmetrie assiali, che ricalcano l'equazione @eq-simmetria-assiale, presentano casi particolari rilevanti per le applicazioni pratiche e meritano una descrizione dettagliata. Gli ultimi due casi riguardano invece simmentrie centrali, seguendo le  equazioni  @eq-simmetria-centrale.

==== Simmetria rispetto all'asse $x$ 

Questa trasformazione, con parametri $alpha = 0$ e $arrow(tau) = arrow(0)$, si semplifica in:
$ cases(x' = x, y' = -y) $

==== Simmetria rispetto alla linea $y = y_0$ 

In questo caso, con $alpha = 0$ e $arrow(tau)$ da determinare per mantenere $y = y_0$ come retta dei punti invariati, si trova:
$ arrow(tau) = vec(0, 2 y_0) $

La trasformazione diventa:
$ cases(x' = x, y' = -y + 2 y_0) $

==== Simmetria rispetto all'asse $y$ 

Qui, con $alpha = pi$ e $arrow(tau) = arrow(0)$, si riduce a:
$ cases(x' = -x, y' = y) $

Si ricordi che l'asse di simmetria forma un angolo di $alpha/2$ con l'asse $x$.

==== Simmetria rispetto alla retta $x = x_0$ 

Con $alpha = pi$ e l'asse dei punti uniti come $x = x_0$, $arrow(tau)$ risulta:
$ arrow(tau) = vec(2 x_0, 0) $

La trasformazione quindi è:
$ cases(x' = -x + 2 x_0, y' = y) $

==== Simmetria rispetto alla bisettrice $y = x$ 

Con $alpha = pi/2$ e $arrow(tau) = arrow(0)$, la trasformazione è:
$ cases(x' = y, y' = x) $

Si noti che la bisettrice forma un angolo pari a $pi/4$ con l'asse $x$.

==== Simmetria rispetto alla bisettrice $y = -x$ 

Con $alpha = (3 pi)/2$ e $arrow(tau) = arrow(0)$, si ha:
$ cases(x' = -y, y' = -x) $

==== Simmetria rispetto all'origine 

Questa trasformazione con $arrow(tau) = arrow(0)$, diventa:
$ cases(x' = -x, y' = -y) $

==== Simmetria rispetto al punto $(x_0, y_0)$ 

Con $arrow(tau)$ e considerando $(x_0, y_0)$ come punto fisso, si ricava:
$ cases(x' = -x + 2 x_0, y' = -y + 2 y_0) $

Gli esempi di isometria esaminati coprono tutti i casi possibili. Presentiamo un riassunto:

Sia $f$ una isometria non identica. Allora:
+ se è diretta e non ha punti fissi, è una traslazione
+ se è diretta con un punto fisso, è una rotazione attorno a quel punto
+ se è inversa con punti fissi (necessariamente infiniti), è una simmetria assiale con asse la linea dei punti fissi.
+ se è inversa senza punti fissi, è una glissoriflessione con un asse unito globalmente che è l'asse della glissoriflessione.

Inoltre, il seguente teorema importante vale per le isometrie:

#definizione(title: "Teorema", label: <def-isometria-composizione-assiali>)[Ogni isometria del piano è ottenibile come composizione di $n$ simmetrie assiali (o riflessioni) con $n <= 3$. In particolare:
- se $n = 1$, si ottiene ovviamente una simmetria assiale
- se $n = 2$ e gli assi $r$ ed $s$ delle simmetrie sono paralleli, allora la composizione $f_r compose f_s$ è una traslazione di vettore $arrow(tau)$ perpendicolare ai due assi e di modulo doppio della distanza tra $r$ ed $s$; la direzione di $arrow(tau)$ è tale che, scegliendo il primo estremo su $s$ (asse della prima simmetria), il secondo estremo appartiene al semipiano definito da $r$ (asse della seconda simmetria) non contenente $s$
- se $n = 2$ e gli assi $r$ ed $s$ delle simmetrie si incontrano in un punto $C$, la composizione delle due simmetrie è una rotazione centrata in $C$ con angolo $alpha$ doppio dell'angolo orientato tra $s$ ed $r$
- se $n = 3$ e l'isometria non ha punti fissi, è una glissoriflessione]

=== Altri approfondimenti sulle similitudini

Per offrire un approfondimento e un'opportunità di esercizio, presentiamo alcuni risultati generali sulle similitudini che non erano stati affrontati in precedenza poiché richiedevano la comprensione delle omotetie e delle isometrie.

#definizione(title: "Teorema", label: <def-similitudine-composizione-omotetia>)[Ogni similitudine $f$ può essere vista come la composizione di un'omotetia $g$ (con centro arbitrario) e un'isometria $h$. Questa composizione può essere espressa sia come $f = h compose g$, sia come $f = g compose h$, sebbene l'omotetia e l'isometria nella decomposizione possano differire.]

La dimostrazione di questo teorema è piuttosto semplice ed è suggerita come esercizio utile. Considerando il rapporto di similitudine $k$, se $k = 1$ la similitudine è essa stessa un'isometria. In questo caso, si tratta della composizione di un'isometria con la trasformazione identica (anch'essa un'omotetia). 

Se invece $k != 1$, si consideri un'omotetia $g$ con centro arbitrario e rapporto $1/k$. La trasformazione composta $h_1 = f compose g$ è anch'essa una similitudine, risultando in un'isometria poiché il rapporto è $k dot 1/k = 1$. Moltiplicando a destra per $g^(-1)$, che è un'omotetia, si ottiene:
$ f = h_1 compose g^(-1) $

In modo simile, la trasformazione $h_2 = g compose f$ è un'isometria; moltiplicando a sinistra per $g^(-1)$ si ottiene:
$ f = g^(-1) compose h_2 $

Questi risultati derivano dal fatto che il prodotto delle affinità non è commutativo. Inoltre, se $f$ è diretta, allora anche $h_1$ e $h_2$ lo sono, mentre se $f$ è inversa, lo stesso vale per $h_1$ e $h_2$.

#definizione(title: "Teorema", label: <def-similitudine-isometria-punto-fisso>)[Ogni similitudine che non è un'isometria ha un unico punto fisso.]

Questo teorema è particolarmente significativo se si conosce la teoria dei sistemi lineari. Considerando la similitudine diretta:
$ cases(x' = k(x cos alpha - y sin alpha) + p, y' = k(x sin alpha + y cos alpha) + q) $

basta cercare i punti fissi risolvendo il sistema:
$ cases(x = k(x cos alpha - y sin alpha) + p, y = k(x sin alpha + y cos alpha) + q) $

che può essere espresso come:
$ cases((1 - k cos alpha)x + (k sin alpha)y = p, (-k sin alpha)x + (1 - k cos alpha)y = q) $

Il determinante della matrice incompleta $bold(A)$ (matrice dei coefficienti) è dato da:
$ det(bold(A)) = k^2 + 1 - 2 k cos alpha $

Si verifica che $ det(bold(A)) = 0 <=> (k^2 + 1) / (2 k) = cos alpha, quad k > 0 $

È facile dimostrare che $(k^2 + 1) / (2 k) > 1$ se $k != 1$, poiché $(k - 1)^2 >= 0$.

Un ragionamento simile si applica alle similitudini inverse.

#definizione(title: "Teorema", label: <def-similitudine-diretta-scomposizione>)[Ogni similitudine diretta che non è un'isometria può essere scomposta in infiniti modi come prodotto di una rotazione e un'omotetia, con il rapporto dell'omotetia uguale a quello della similitudine. È sempre possibile scegliere come centro dell'omotetia e della rotazione l'unico punto fisso della similitudine; in questo caso l'ordine delle trasformazioni non importa. Tali similitudini sono chiamate rotoomotetie.]

#definizione(title: "Teorema", label: <def-similitudine-inversa-scomposizione>)[Ogni similitudine inversa che non è un'isometria può essere scomposta in infiniti modi come prodotto di una simmetria assiale rispetto a una retta e un'omotetia, con il rapporto uguale a quello della similitudine. Il centro dell'omotetia può essere scelto come l'unico punto fisso $C$ della similitudine; in tal caso l'asse $r$ della simmetria assiale è la retta passante per il punto fisso con coefficiente angolare $tan(alpha/2)$. Ne consegue che una similitudine inversa presenta due rette mantenute nel loro insieme: la retta $r$ e quella perpendicolare ad $r$ attraverso $C$.]

#esempio[Analizzando di nuovo la similitudine: 

$ cases(x' = x - 2 y + 1, y' = 2 x + y) $

si individua che il punto $M = (0, 1/2)$ è un punto unito. La similitudine ha inoltre un rapporto $k = sqrt(5)$. Il sistema può essere  riformulato così::
$ cases(x' = x - 2 y + 1, y' = 2 x + y) => cases(x' = sqrt(5) (display(1/sqrt(5)x) - display(2/sqrt(5))y) + 1, y' = sqrt(5) (display(2/sqrt(5)x) + display(1/sqrt(5))y)) $

equivalente a, posto $alpha = display(arcsin(2 / sqrt(5)))$:
$ cases(x' = sqrt(5) (cos alpha dot x - sin alpha dot y) + 1, y' = sqrt(5) (sin alpha dot x + cos alpha dot y)) $

Quindi, questa similitudine può essere scomposta nel prodotto tra un'omotetia con centro $M$ e rapporto $sqrt(5)$, e una rotazione intorno a $M$ di un angolo $alpha$, in uno dei due ordini possibili. Le figure /* 16.13 e 16.14 */ illustrano questo concetto.

#grafico_omotetia_rotazione_triangoli

][
Proseguendo con l'analisi della similitudine dell'esempio /* 16.8 */, che ha un rapporto $k = sqrt(5)$, chiamiamo questa similitudine $f$:
$ f: cases(x' = x - 2 y + 1, y' = 2 x + y) $

Desideriamo dimostrare che può essere espressa come il prodotto di una rotazione e di un'omotetia, o viceversa, ma senza utilizzare il punto unito come centro della similitudine. In questo scenario, la proprietà commutativa non è valida per l'applicazione delle due trasformazioni, a differenza di quanto visto nell'esempio 16.17.

Consideriamo l'omotetia con rapporto di $1/sqrt(5)$ e centro all'origine, che denominiamo $g$:
$ g: cases(x' = 1/sqrt(5) x, y' = 1/sqrt(5) y) $

L'omotetia inversa è:
$ g^(-1): cases(x' = sqrt(5) x, y' = sqrt(5) y) $

È evidente che $f compose g$ e $g compose f$ sono isometrie poiché il rapporto di similitudine della composizione si ottiene moltiplicando i rapporti:
$ 1 = sqrt(5) dot (1/sqrt(5)) $

Definiamo quindi:
$ h_1 = f compose g, quad h_2 = g compose f $

Moltiplicando la prima uguaglianza a destra per $g^(-1)$ e la seconda a sinistra per $g^(-1)$, otteniamo:
$ f = h_1 compose g^(-1), quad f = g^(-1) compose h_2 $

In tal modo, si decompone $f$ in due modi differenti come prodotto di un'omotetia e un'isometria o viceversa.

Calcolando otteniamo:

$ h_1 = f compose g: cases(x' = 1/sqrt(5) x - 2/sqrt(5) y + 1, y' = 2/sqrt(5) x + 1/sqrt(5) y) $

Questa corrisponde a una rotazione di centro $M_1$ e angolo $alpha$ dati da $M_1 = (1/2, (sqrt(5) + 1)/4)$, $alpha = arcsin(2/sqrt(5))$. Allo stesso modo:

$ h_2 = g compose f: cases(x' = 1/sqrt(5) x - 2/sqrt(5) y + 1, y' = 2/sqrt(5) x + 1/sqrt(5) y) $

Questa isometria, $h_2$, è una rotazione con centro $M_2$ e angolo $alpha$ dati da $M_2 = (sqrt(5)/10, (5 + sqrt(5))/20)$, $alpha = arcsin(2/sqrt(5))$. La @grafico_rotazione_omotetia_triangoli rappresenta questa decomposizione.

#grafico_rotazione_omotetia_triangoli
][
Considerare la simmetria assiale $f$ definita da:
$ f: cases(x' = y, y' = x) $

e l'omotetia $g$ definita da:
$ g: cases(x' = 2 x - 2, y' = 2 y) $

con centro $M = (1,0)$ e rapporto $2$. Combinando queste due trasformazioni, otteniamo una similitudine inversa. I risultati delle composizioni sono:

$ s_1 = f compose g: cases(x' = 2 y, y' = 2 x - 2) $

e

$ s_2 = g compose f: cases(x' = 2 y - 2, y' = 2 x) $

La similitudine $s_1 = f compose g$ ha il punto fisso $M_1 = (4/3, 2/3)$ ed è caratterizzata dalle rette unite $ r: y = x - 2/3, quad s: y = -x + 2 $

che sono perpendicolari tra loro e si incrociano proprio nel punto fisso. Con un angolo di $alpha = pi/2$, la retta $r$ ha un coefficiente angolare pari a $tan(alpha/2) = tan(pi/4) = 1$. Pertanto, $s_1$ può essere decomposta in un prodotto (in qualsiasi ordine) di una simmetria assiale $sigma_1$, rispetto alla retta $r$, e un'omotetia $omega_1$ centrata in $M_1$ con coefficiente $2$.

La similitudine $s_2 = g compose f$ ha il punto fisso $M_2 = (2/3, 4/3)$ ed è caratterizzata dalle rette unite $ t: y = x + 2/3, quad u: y = -x + 2 $

che sono anch'esse perpendicolari e si incontrano nel punto fisso. Anche qui $alpha = pi/2$ e $t$ ha un coefficiente angolare di $tan(alpha/2) = tan(pi/4) = 1$. 

Quindi $s_2$ può essere decomposta in un prodotto (in qualsiasi ordine) di una simmetria assiale $sigma_2$, rispetto alla retta $t$, e un'omotetia $omega_2$ centrata in $M_2$ con coefficiente $2$.

L'esempio illustra che $s_1$ può essere scritta come prodotto di una simmetria assiale e un'omotetia in due modi diversi:
$ s_1 = f compose g quad or quad s_1 = sigma_1 compose omega_1 (= omega_1 compose sigma_1) $

La seconda decomposizione è particolarmente significativa poiché la simmetria $sigma_1$ e l'omotetia $omega_1$ commutano; inoltre, l'omotetia trasforma l'asse della simmetria in una retta globalmente unita senza spostarla.]

== Schema generale per la risoluzione //! trovare titolo migliore

Concludendo questa introduzione alle affinità, proponiamo uno schema logico come procedimento standard per analizzare le proprietà di un'affinità. Questo schema impiega una chiave di identificazione adattata appositamente.

Si prenda in considerazione una trasformazione geometrica affine data da:
$ cases(x' = a x + b y + p, y' = b x - a y + q) $

ovvero
$ mat(x'; y') = mat(a, b; b, -a) mat(x; y) + mat(p; q) $

Ponendo $A = mat(a, b; b, -a)$, si ottiene che $det(A) = a d - b c$.

Procedere con i seguenti passi:

#set enum(numbering: "1.a.")
+ Determina se la trasformazione è un'affinità:
  + se $det(A) = 0$, la trasformazione non è un'affinità.
  + se $det(A) != 0$, vai al passaggio successivo
+ Determina il tipo di affinità:
  + se $A != mat(a, -b; b, a) and A != mat(a, b; b, -a)$, è un'affinità generica
  + se $A = mat(a, -b; b, a) or A = mat(a, b; b, -a)$, vai al passaggio successivo
+ Determina il sottogruppo:
  + se $det(A) = 1$ e inoltre:
    - se non ha punti fissi, è una traslazione
    - se ha un solo punto fisso, è una rotazione
  + se $det(A) = -1$ e inoltre:
    - se ci sono infiniti punti fissi, è una simmetria assiale
    - se non ha punti fissi, è una glissoriflessione
  + se $det(A) > 0$, ma $!= 1$ e inoltre:
    - se $b = 0$, è un'omotetia
    - se $b != 0$, è una similitudine prodotto tra una rotazione e un'omotetia
  + se $det(A) < 0$, ma $!= -1$, è una similitudine inversa, prodotto tra una simmetria assiale e un'omotetia

Nel caso _2a_, è utile determinare il rapporto di affinità, che si riferisce al rapporto tra le aree delle regioni corrispondenti, ovvero l'area della regione trasformata rispetto all'area della regione originale.

Nel caso _4a_, il vettore $arrow(tau) = vec(p, q)$ indica la traslazione. Ogni retta parallela a questo vettore è unita globalmente.

Nel caso _4b_, il punto fisso è il centro della rotazione. Per calcolare l'angolo, si può esprimere l'affinità nella forma:
$ cases(x' = x cos alpha - y sin alpha + p, y' = x sin alpha + y cos alpha + q) $

In questo caso non esistono rette uniti globalmente.

Per il caso _5a_, la retta dei punti fissi è l'asse della simmetria assiale. Scrivendo l'equazione come:
$ cases(x' = x cos alpha + y sin alpha + p, y' = x sin alpha - y cos alpha + q) $

L'asse della simmetria assiale avrà un coefficiente angolare di $tan(alpha/2)$. Tutte le rette perpendicolari all'asse di simmetria sono uniti globalmente.

Nel caso _5b_, esiste una retta globalmente unita, che funge da asse di glissoriflessione. La trasformazione consiste in una simmetria rispetto a questo asse e una traslazione parallela ad esso.

Nel caso _6a_, l'unico punto fisso della trasformazione è il centro dell'omotetia e ogni retta passante per questo centro è unita globalmente.

Per quanto riguarda il caso _6b_, la trasformazione è una similitudine diretta che può essere realizzata come prodotto tra un'omotetia con rapporto uguale al rapporto di similitudine e una rotazione, entrambe aventi il loro centro nell'unico punto fisso. Per calcolare l'angolo di rotazione, si può descrivere la trasformazione così:
$ cases(x' = k(x cos alpha - y sin alpha) + p, y' = k(x sin alpha + y cos alpha) + q) $

Nel caso _3d_, la trasformazione è una similitudine inversa risultante da una simmetria assiale lungo l'asse $r$ e un'omotetia con il centro $C in r$, l'unico punto fisso della trasformazione. Questa trasformazione comprende due rette globalmente unite e perpendicolari; una di esse è l'asse della simmetria assiale e si intersecano nel punto fisso. La pendenza dell'asse $r$ è data da $tan(alpha/2)$, con $alpha$ definito dalla trasformazione così:
$ cases(x' = k(x cos alpha + y sin alpha) + p, y' = k(x sin alpha - y cos alpha) + q) $

== Dalla definizione geometrica alle equazioni //! trovare titolo migliore

In molti casi, derivare le equazioni di un'affinità partendo dalla sua definizione geometrica è piuttosto semplice. Qui ci concentreremo sulle isometrie e le omotetie, poiché hanno rilevanza nelle applicazioni pratiche e i relativi procedimenti sono di particolare interesse. Ogni caso trattato culminerà con una formula specifica; invitiamo i lettori a focalizzarsi più sul procedimento applicato piuttosto che memorizzare la formula stessa, poiché il processo è semplice da replicare nei casi concreti.

=== Traslazioni

Una traslazione è definita da un vettore:
$ arrow(tau) = vec(p, q) $

Il punto $P'$ si ottiene traslando il punto $P$ seguendo il vettore $arrow(tau)$. La @grafico_formule_traslazione illustra chiaramente le formule per effettuare la traslazione con il vettore $arrow(tau)$:
$ cases(x' = x + p, y' = y + q) $

#grafico_formule_traslazione

=== Rotazioni

Sia $C = (x_0, y_0)$ il centro della rotazione e $alpha$ l'angolo di rotazione. La @grafico_formule_rotazione fornisce un aiuto visivo.

Se $r = |C P| = |C P'|$, allora abbiamo:
$ cases(x - x_0 = r cos beta, y - y_0 = r sin beta) $

e quindi

$ cases(
  x' - x_0 = r cos(alpha + beta) = r cos alpha cos beta - r sin alpha sin beta,
  y' - y_0 = r sin(alpha + beta) = r sin alpha cos beta + r cos alpha sin beta
) $

proseguendo si ottiene: 

$ cases(
  (x - x_0) cos alpha - (y - y_0) sin alpha,
  (x - x_0) sin alpha + (y - y_0) cos alpha
) $

da ciò derivano le formule per la rotazione:
$ cases(
  x' = x_0 + (x - x_0) cos alpha - (y - y_0) sin alpha,
  y' = y_0 + (x - x_0) sin alpha + (y - y_0) cos alpha
) $

#grafico_formule_rotazione

=== Simmetrie assiali

Sono semplici le simmetrie rispetto alle rette parallele agli assi e rispetto alle bisettrici $y = x$ e $y = -x$:
- simmetria rispetto all'asse $x$: $display(cases(x' = x, y' = -y))$ #v(0.5em)
- simmetria rispetto all'asse $y$: $display(cases(x' = -x, y' = y))$
- simmetria rispetto alla retta orizzontale $y = y_0$: $display(cases(x' = x, y' = -y + 2 y_0))$ #v(0.5em)
- simmetria rispetto alla retta verticale $x = x_0$: $display(cases(x' = -x + 2 x_0, y' = y))$ #v(0.5em)
- simmetria rispetto alla bisettrice $y = x$: $display(cases(x' = y, y' = x))$ #v(0.5em)
- simmetria rispetto alla bisettrice $y = -x$: $display(cases(x' = -y, y' = -x))$

Per la simmetria rispetto a una retta $r: y = m x + q$, non orizzontale né verticale, il punto medio tra $P$ e $P'$ deve trovarsi sulla retta $r$ e il coefficiente angolare della retta attraverso $P$ e $P'$ deve essere $-1/m$, poiché $r$ e $overline(P P')$ sono ortogonali:

$ cases(
  display((y' + y) / 2 = m (x' + x) / 2 + q),
  display((y' - y) / (x' - x) = -1/m)
) $

Svolgendo i calcoli, si ottiene:
$ cases(
  display(x' = 1 / (1 + m^2) ((1 - m^2) x + 2 m y - 2 m q)),
  display(y' = 1 / (1 + m^2) (2 m x + (m^2 - 1) y + 2 q))
) $

=== Omotetie

Sia $C = (x_0, y_0)$ il centro dell'omotetia e $k$ il rapporto di omotetia. Il vettore $arrow(C P')$, con componenti $(x' - x_0, y' - y_0)$, deve essere un multiplo di $k$ del vettore $overline(C P)$, con componenti $(x - x_0, y - y_0)$. Pertanto:
$ cases(
  x' = x_0 + k (x - x_0),
  y' = y_0 + k (y - y_0)
) $






