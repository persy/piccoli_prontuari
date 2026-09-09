#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 10pt, numbering("1", ..n))
  }) */

= Derivate e studio di funzione <derivate_studio_funzione>

#intro[
Questo capitolo introduce il concetto fondamentale di derivata, analizzandone il significato geometrico come pendenza della retta tangente e il legame con la continuità. Vengono presentate le regole di calcolo per le funzioni elementari e composte, i teoremi fondamentali del calcolo differenziale per lo studio dell'andamento e degli asintoti di una funzione, la teoria del confronto tra infiniti e infinitesimi, e l'approssimazione locale mediante i polinomi di Taylor.
]

== Definizione e proprietà di derivata

Nel contesto seguente, a meno di indicazioni diverse, ci riferiremo al dominio di una funzione reale di variabile reale come a intervalli o unioni di intervalli.

*Definizione 6.1.* 
#definizione(title: "Rapporto incrementale della funzione", label: <def-rapporto-incrementale-funzione>)[Considerando una funzione $f : A subset.eq RR -> RR$ e un punto $x_0 in A$, il rapporto:

$ x |-> (f(x) - f(x_0)) / (x - x_0), quad A without {x_0} -> RR, $

è denominato rapporto incrementale della funzione $f$ rispetto al punto $x_0$ e all'incremento $x - x_0$.

Capire il significato geometrico del rapporto incrementale è essenziale: esso rappresenta il coefficiente angolare della retta secante che interseca la curva nei punti $A(x_0, f(x_0))$ e $B(x, f(x))$.

#grafico_derivate1

]
#v(2em)
#esempio[Si consideri $f(x) = sqrt(x)$ con $x_0 >= 0$. Per $x != x_0$ si ottiene:

$ (f(x) - f(x_0)) / (x - x_0) = (sqrt(x) - sqrt(x_0)) / (x - x_0) = 1 / (sqrt(x) + sqrt(x_0)) $

Poiché $x_0$ è un punto di un intervallo, è certamente punto di accumulazione per $A without {x_0}$. Ha quindi senso calcolare il limite del rapporto incrementale per $x -> x_0$. Nell'esempio precedente, per $x_0 = 0$ ha senso solo il limite destro, che vale $+oo$; mentre per $x_0 > 0$ il limite normale esiste e assume valore $1 / (2 sqrt(x_0))$.

Dimostriamo ora con un esempio che tale limite può non esistere. Si consideri la funzione $f(x) = |x|$ e il punto $x_0 = 0$. Per $x != 0$:

$ (f(x) - f(x_0)) / (x - x_0) = (|x|) / x $

da cui segue immediatamente:

$ display(lim_(x -> 0^-) (|x|) / x = -1), quad display(lim_(x -> 0^+) (|x|) / x = 1) $

concludendo che il limite non esiste.]

È di particolare interesse quando il limite del rapporto incrementale risulta finito. In questo caso, si definisce quanto segue.

#definizione(title: "Funzione derivabile", label: <def-funzione-derivabile>)[Nelle condizioni della precedente @def-rapporto-incrementale-funzione, se il limite del rapporto incrementale (anche solo destro o sinistro) esiste ed è finito, diciamo che la funzione $f$ è derivabile in $x_0$, e quel limite viene chiamato derivata di $f$ in $x_0$, indicato con uno dei simboli:

$ f'(x_0), quad (D f)(x_0), quad (d f) / (d x) (x_0) $

Ovviamente, se il limite esiste solo da un lato, ci si riferirà a derivata destra o sinistra rispettivamente.]

Alcuni definiscono la derivata della funzione $f$ in $x_0$ anche quando il limite del rapporto incrementale è infinito, parlando in questo caso di derivata infinita. È chiaramente una questione di scelta personale. Per ragioni che diventeranno chiare in seguito, preferiamo parlare di derivata solo per limiti finiti.

#definizione(title: "Continuità delle funzioni derivabili", label: <def-continuita-funzioni-derivabili>)[Se una funzione $f$ è derivabile nel punto $x_0$ del suo dominio, allora $f$ è continua in $x_0$.

#dimostrazione()
La dimostrazione segue direttamente dalla definizione di continuità. Per $x != x_0$ si può scrivere:

$ f(x) - f(x_0) = (f(x) - f(x_0)) / (x - x_0) dot (x - x_0) $

Quando $x -> x_0$, il termine a sinistra tende al prodotto $f'(x_0)$, che esiste ed è finito per ipotesi, e al contempo a zero, concludendo che $f(x) -> f(x_0)$, ossia $f$ è continua in $x_0$.]

Se il limite del rapporto incrementale è infinito, non possiamo concludere nulla sul limite di $f(x) - f(x_0)$, poiché si ottiene la forma indeterminata $oo dot 0$. Quando il limite del rapporto incrementale è infinito, la funzione può essere sia continua sia non continua, come dimostrato dai seguenti due esempi.

#esempio[Considerando $f(x) = root(3, x)$ e $x_0 = 0$, la funzione è chiaramente continua in $0$, ma:

$ display(lim_(x -> x_0) (f(x) - f(x_0)) / (x - x_0) = lim_(x -> x_0) root(3, x) / x = lim_(x -> x_0) 1 / root(3, x^2) = +oo) $

#grafico_derivate2

Per la funzione $f(x) = root(3, x)$, quanto più $x$ si avvicina a $0$, tanto più la secante diventa verticale, cioè il coefficiente angolare cresce indefinitamente. La "posizione limite della secante" corrisponde a una retta tangente al grafico che risulta essere verticale.

][
Considerando $f(x) = "sgn" (x)$ e $x_0 = 0$, la funzione non è continua in $0$ e inoltre:

$ display(lim_(x -> x_0) (f(x) - f(x_0)) / (x - x_0) = lim_(x -> x_0) ("sgn" (x)) / x). $

Calcolando separatamente i limiti destro e sinistro si ottiene:

$ display(lim_(x -> 0^-) (-1) / x = +oo), quad display(lim_(x -> 0^+) 1 / x = +oo), $

da cui si conclude che il limite del rapporto incrementale è $+oo$.

#grafico_derivate3

Per la funzione $f(x) = "sgn" (x)$, la situazione è simile, ma qui la "posizione limite della secante" non corrisponde ad alcuna retta tangente.]

È importante notare che il viceversa del teorema non vale: una funzione può essere continua in un punto senza essere derivabile in esso, come dimostrato dall'esempio della funzione $f(x) = |x|$. Il teorema può essere riformulato così:

#definizione(title: "Continuità delle funzioni derivabili (2)", label: <def-continuita-funzioni-derivabili-bis>)[Per una funzione l'essere derivabile in un punto $x_0$ è condizione necessaria, ma non sufficiente, affinché sia continua in quel punto.] 

Questo significa che il processo di trovare la derivata di una funzione, ovvero il limite del rapporto incrementale, presenta delle difficoltà, poiché la continuità è una condizione essenziale per l'esistenza di un limite finito. Di conseguenza, il limite si presenta spesso nella forma indeterminata $0/0$.

Considerando anche esempi passati, si può concludere che la derivabilità di una funzione in un punto $x_0$ del suo dominio può essere vista come condizione per l'esistenza della retta tangente al grafico della funzione nel punto $(x_0, f(x_0))$. Pertanto, se una funzione $f$ è derivabile in $x_0$, l'equazione della retta tangente al grafico della funzione nel punto $(x_0, f(x_0))$ è data da:

$ y - f(x_0) = f'(x_0)(x - x_0). $

È possibile che una funzione $f$ sia derivabile in tutti i punti del suo dominio o almeno in un suo sottoinsieme. A tal proposito, viene fornita la seguente definizione.

#definizione(title: "Funzione derivata", label: <def-funzione-derivata>)[Consideriamo $f : A subset.eq RR -> RR$ come una funzione derivabile in $B subset.eq A$. La funzione $ x |-> f'(x), quad B in RR $

è chiamata funzione derivata di $f$ e viene indicata con uno dei seguenti simboli#footnote[Il primo dei tre simboli è stato introdotto da Newton, che preferiva utilizzare un punto sopra il simbolo di funzione, ˙f, anziché un apice. Questa notazione con il punto è ancora ampiamente utilizzata nei testi di meccanica per indicare la derivata di una funzione dove la variabile indipendente è il tempo. Il terzo simbolo, invece, è attribuito a Leibniz e allude al fatto che la derivata rappresenta un rapporto tra due quantità infinitesimali: la variazione di una funzione e quella della variabile indipendente. Entrambe queste notazioni hanno i loro vantaggi. Vale la pena notare che Newton e Leibniz sono stati gli ideatori, indipendentemente l'uno dall'altro, del calcolo differenziale, vale a dire della teoria delle derivate.]:

$ f', quad D f, quad (d f) / (d x) $]

Nella definizione di rapporto incrementale e successivamente di derivata, ponendo $x - x_0 = Delta x = h$, la definizione di derivata può essere riscritta come:

$ lim_(Delta x -> 0) (f(x_0 + Delta x) - f(x_0)) / (Delta x) = lim_(h -> 0) (f(x_0 + h) - f(x_0)) / h $ <eq-definizione-derivata-bis>

Questa scrittura, equivalente alla precedente, può semplificare le cose i ncerti casi, soprattutto dal punto di vista formale.

//? Trovare nome teorema
#definizione(title: "Teorema della derivabilità di una funzione", label: <def-teorema-derivabilita-funzione>)[Una funzione $f$ è derivabile in un punto $x_0$ se e solo se esistono una costante $a$ e una funzione $omega(h)$ tale che $omega(h) -> 0$ per $h -> 0$, e si verifica:

$ f(x_0 + h) - f(x_0) = a h + h omega(h) $ <eq-derivabilita-funzione>

#dimostrazione()
Supponiamo che $f$ sia derivabile e poniamo $a = f'(x_0)$ e 

$ omega(h) = cases(display((f(x_0 + h) - f(x_0)) / h) - f'(x_0)\, quad &h != 0, 0\, quad &h = 0) $

Da qui segue immediatamente l'espressione data (@eq-derivabilita-funzione).

Inversamente, supponiamo che valga la @eq-derivabilita-funzione e dividiamo ambo i membri per $h$ ($h != 0$), ottenendo:

$ (f(x_0 + h) - f(x_0))/ h - a = omega(h) $

Prendendo il limite per $h -> 0$ si ottiene che:

$ lim_(h -> 0) (f(x_0 + h) - f(x_0)) / h - a = 0 $

il che implica che la funzione è derivabile e che la derivata in $x_0$ è $a$.]

== Algebra delle derivate

//? Trovare nome teorema
#definizione(title: "Teorema sulle operazioni delle derivate", label: <def-teorema-operazioni-derivate>)[Se due funzioni $f$ e $g$ sono derivabili in un punto $x_0$, allora anche la somma, il prodotto e il quoziente (quest'ultimo, purché $g$ sia non nulla in $x_0$) sono derivabili. In particolare, si ha:
+ per la somma: $ D(f + g)(x_0) = f'(x_0) + g'(x_0) $
+ per il prodotto: $ D(f dot g)(x_0) = f'(x_0) dot g(x_0) + f(x_0) dot g'(x_0) $
+ per il quoziente: $ D(f / g)(x_0) = (f'(x_0) dot g(x_0) - f(x_0) dot g'(x_0)) / (g^2(x_0)), quad g(x_0) != 0 $

#dimostrazione()
Queste sono dimostrazioni elementari che richiedono l'applicazione attenta della definizione di derivata:
+ per la somma: $ (f(x) + g(x) - (f(x_0) + g(x_0))) / (x - x_0) $ e calcolando il limite per $x -> x_0$, si arriva alla conclusione
+ per il prodotto: $ (f(x)g(x) - f(x_0)g(x_0)) / (x - x_0) $ riorganizzando i termini, si trova che $ (f(x)g(x) - f(x_0)g(x)) / (x - x_0) + (f(x_0)g(x) - f(x_0)g(x_0)) / (x - x_0) = \ = (f(x) - f(x_0)) / (x - x_0) g(x) + f(x_0) (g(x) - g(x_0)) / (x - x_0) $ Calcolando i limiti, si deduce il risultato
+ per il quoziente: se $g(x_0) != 0$, allora in un intorno di $x_0$, $g(x) != 0$. La differenza del quoziente si scrive come $ ((f(x) / g(x) - f(x_0) / g(x_0))(1 / (x - x_0)))/((f(x)g(x_0) - f(x_0)g(x)) / (g(x)g(x_0))) $ Riformulando e calcolando i limiti come nel caso del prodotto, si ottiene la formula finale]

Inoltre, poiché la derivata di una costante è zero, è facile mostrare che $D(c f)(x_0) = c f'(x_0)$, usando la regola della derivazione del prodotto. Quindi, possiamo formulare il seguente enunciato:

#definizione(title: "Linearità dell'operatore derivata", label: <def-linearita-operatore-derivata>)[Se $f$ e $g$ sono derivabili in un insieme $A$, allora ogni loro combinazione lineare è derivabile e vale:

$ D(lambda f + mu g) = lambda D(f) + mu D(g), quad forall lambda, mu in RR $]

#definizione(title: "Derivata della funzione composta", label: <def-derivata-funzione-composta>)[Se $f$ e $g$ sono funzioni tali da permettere la composizione $f compose g$, e se la funzione $g$ è derivabile in $x_0$ mentre $f$ è derivabile in $t_0 = g(x_0)$, allora la funzione composta è derivabile in $x_0$. Si ha:

$ D(f compose g)(x_0) = f'(t_0) g'(x_0) $

#dimostrazione()
Utilizzando la notazione indicata nell'equazione @eq-definizione-derivata-bis, poniamo $g(x_0 + h) - g(x_0) = k$, ovvero $g(x_0 + h) = g(x_0) + k$. Consideriamo quindi il rapporto incrementale della funzione composta $f compose g$:

$ (f(g(x_0 + h)) - f(g(x_0))) / h = (f(g(x_0) + k) - f(g(x_0))) / h = \ = (f(t_0 + k) - f(t_0)) / h $

Applichiamo ora il teorema in @def-teorema-derivabilita-funzione (utilizzando $k$ al posto di $h$):

$ f(t_0 + k) - f(t_0) = f'(t_0) dot k + k omega(k) $

La formula diventa quindi:

$ (f(g(x_0 + h)) - f(g(x_0))) / h = f'(t_0) (k / h) + (k / h) omega(k) $

Da qui si conclude facilmente osservando che se $h -> 0$, anche $k -> 0$ (per la continuità di $g$) e

$ lim_(k -> 0) omega(k) = 0, quad lim_(h -> 0) k / h = lim_(h -> 0) (g(x_0 + h) - g(x_0)) / h = g'(x_0) $]

Usando la notazione di Leibniz e ponendo $y = f(g(x))$ e $t = g(x)$, questo teorema si può scrivere come:

$ (d f) / (d x) = (d y) / (d x) = (d y) / (d t) dot (d t) / (d x) $ <eq-derivata-funzione-composta-bis>

È come "semplificare" il $d t$ nel prodotto delle due "frazioni". Questo approccio, sebbene informale, è molto utile nelle applicazioni e il teorema sulla derivata della funzione composta ne fornisce una giustificazione teorica.

#definizione(title: "Derivata della funzione inversa", label: <def-derivata-funzione-inversa>)[Sia $f$ una funzione strettamente monotona definita in un intervallo e sia $g$ la sua inversa. Se $f$ è derivabile in un punto $x_0$ con derivata non nulla, posto $y_0 = f(x_0)$, la funzione inversa è derivabile in $y_0$ e si ha:

$ g'(y_0) = 1 / (f'(x_0)) $

Tralasciamo la dimostrazione di questo teorema, fornendone invece una giustificazione grafica significativa.

#grafico_derivate4

]
Il grafico proposto e le proprietà di simmetria tra una funzione e la sua inversa mostrano che gli angoli $alpha$ e $beta$ sono complementari e hanno tangenti reciproche: $tan beta = 1 / (tan alpha)$. Considerando che queste tangenti sono i coefficienti angolari delle tangenti ai grafici di $f$ (in $D$) e di $f^(-1)$ (in $F$), il significato geometrico della formula risulta evidente. Inoltre, diventa chiaro perché la derivata di $f$ non deve essere nulla in $x_0$: altrimenti $alpha$ sarebbe zero e $beta$ sarebbe $pi / 2$, ma una retta verticale non ha coefficiente angolare...

È importante notare che le derivate nei due membri dell'equazione sono calcolate in punti diversi, e ancora una volta il grafico proposto rende evidente questo bisogno: c'è un legame tra le tangenti ai grafici di una funzione e della sua inversa solo in punti simmetrici rispetto alla bisettrice del primo e terzo quadrante.

Tutti i teoremi espressi in questa parte indicano condizioni sufficienti ma non necessarie: ad esempio, la derivata di una somma può esistere anche se si sommano due funzioni non derivabili, e lo stesso si può dire per gli altri teoremi.

//
Come già menzionato, calcolare il limite del rapporto incrementale di una funzione non è un compito facile, poiché spesso si manifesta nella forma $0/0$ per le funzioni continue. Ci chiediamo quindi se esistano regole per calcolare la derivata delle funzioni comunemente utilizzate senza ricorrere ogni volta alla definizione. Fortunatamente, la risposta è sì. Esiste tutta una serie di regole di derivazione che ci permettono di determinare facilmente la derivata delle funzioni elementari nei punti in cui è possibile farlo.

Esempio significativo è la funzione $f(x) = |x| = sqrt(x^2)$, nota per non essere derivabile in $x_0 = 0$. Sebbene le funzioni elementari siano continue in tutti i punti del loro dominio, questo non significa che siano necessariamente derivabili ovunque.

== Derivate delle funzioni elementari

Passiamo ora a esaminare le regole di calcolo delle derivate delle funzioni elementari: una volta stabilite, non sarà più necessario determinare il limite del rapporto incrementale ogni volta.

Considerando la funzione potenza $n$-esima, ad esempio, si nota immediatamente che la funzione $f(x) = x$ (potenza di grado 1 o funzione identità) è derivabile, con $f'(x) = 1$ per ogni $x in RR$. Se $n >= 2$ e osserviamo la funzione $x |-> x^n$, possiamo vedere che quando $x$ tende a $x_0$, gli addendi nel termine finale tendono a $x_0^n$. Quindi, il limite risulta essere $n dot x_0^(n-1)$. Da ciò, possiamo derivare la formula: $ f(x) = x^n quad => quad f'(x) = n x^(n-1), quad n >= 2, x in RR $

Semplificando la notazione, si potrebbe scrivere:

$ D(x^n) = n x^(n-1) $

Anche se tecnicamente questa notazione potrebbe sembrare impropria perché la derivata si applica alla funzione potenza e non esattamente a $x^n$, in pratica non crea confusione e viene frequentemente usata.

=== Funzioni radice $n$-esima

Le funzioni radice $n$-esima rappresentano le inverse delle funzioni potenza $n$-esima per $n$ dispari e le inverse della restrizione delle stesse agli $x >= 0$ per $n$ pari. Notiamo subito che per $n >= 2$, le funzioni potenza hanno derivata nulla all'origine. Pertanto, non si applica il teorema sulla derivata dell'inversa nel punto $y_0$ corrispondente a $x_0 = 0$. Tuttavia, per $y_0 != 0$, si può applicare la regola della derivata dell'inversa:

$ g'(y_0) = 1/f'(x_0) = 1/(n x_0^(n -1)) = 1/(n (root(n, y_0))^(n - 1)) = 1 / (n root(n, x^(n-1))) $

dove $x$ è il punto generico in cui si calcola la derivata della funzione radice $n$-esima:

$ f(x) = root(n, x) => f'(x) = 1 / (n root(n, x^(n-1))), quad cases(x != 0\, quad n "dispari", x > 0\, quad n "pari") $

Infine, è facile dimostrare che il limite del rapporto incrementale è $+oo$ se $x_0 = 0$ (solo limite destro per $n$ pari).


=== Funzioni circolari

==== Seno

Iniziamo con la funzione seno e, utilizzando le formule di prostaferesi, si ottiene:

$ lim_(x -> x_0) (sin x - sin x_0) / (x - x_0) = lim_(x -> x_0) 1 / (x - x_0) dot 2 sin((x - x_0) / 2) cos((x + x_0) / 2) $

Procedendo, otteniamo:

$ = lim_(x -> x_0) sin((x - x_0) / 2) dot 1 / ((x - x_0) / 2) cos((x + x_0) / 2) = cos x_0 $

Abbiamo usato il noto limite di $(sin x) / x$ e la continuità del coseno. In alternativa, avremmo potuto procedere come segue:

$ lim_(h -> 0) (sin(x_0 + h) - sin(x_0)) / h = lim_(h -> 0) ((sin x_0 cos h + cos x_0 sin h - sin x_0) / h) $

Questo ci porta a:

$ = lim_(h -> 0) (sin x_0 dot (cos h - 1) / h + cos x_0 dot (sin h) / h) = cos x_0 $

usando il limite fondamentale e notando che:

$ (cos h - 1) / h = -1/2 times 0 = 0 $

possiamo quindi concludere con la regola:

$ f(x) = sin x => f'(x) = cos x, quad x in RR. $

==== Coseno

Passiamo ora alla funzione coseno, osservando che:

$ cos x = sin(pi / 2 - x) $

applicando la regola di derivazione delle funzioni composte, si conclude che:

$ f(x) = cos x => f'(x) = -sin x, quad x in RR $

==== Tangente e cotangente

Per quanto riguarda le funzioni tangente e cotangente, applicando la regola di derivazione del quoziente, otteniamo:

$ f(x) = tan x => f'(x) = sec^2 x = 1 + tan^2 x, quad x != pi / 2 + k pi, quad k in ZZ. $

$ f(x) = cot x => f'(x) = -csc^2 x = -(1 + cot^2 x), quad x != k pi, quad k in ZZ. $

=== Funzioni trigonometriche inverse

==== Arcseno

Cominciamo con la funzione arcseno, ricordando che è l'inversa della funzione seno ristretta all'intervallo $[-pi/2, pi/2]$. Dobbiamo esaminare separatamente i valori estremi dove la derivata del seno è nulla. Poniamo $y = f(x) = sin x$, quindi $x = g(y) = arcsin y$.

Otteniamo che:

$ g'(y_0) = 1 / (f'(x_0)) = 1 / (cos(x_0)) = 1/(cos(arcsin y_0)) = 1 / sqrt(1 - y_0^2). $

Se $y_0 = plus.minus 1$, il limite del rapporto incrementale diventa infinito.

==== Arccoseno

Per la funzione arccoseno, ponendo $y = f(x) = cos x$, si ha $x = g(y) = arccos y$:

$ g'(y_0) = 1/f('(x_0)) =  -1 / (sin(x_0)) = 1/(sin(arccos y_0)) = -1 / sqrt(1 - y_0^2) $

Se $y_0 = plus.minus 1$, il limite del rapporto incrementale è infinito.

==== Arctangente

La funzione arctangente è definita come $y = f(x) = tan(x)$, mentre la sua inversa come $x = g(y) = arctan(y)$. Questo porta alla derivata di $g(y)$ calcolata come:

$ g'(y_0) = 1 / (f'(x_0)) = 1 / (1 + tan^2(x_0)) = 1 / (1 + y_0^2) $

==== Arccotangente

Per la funzione cotangente abbiamo $y = f(x) = "ctg" x$ e la sua inversa $x = g(y) = "arcctg" y$, da cui:

$ g'(y_0) = 1 / (f'(x_0)) = 1 / (-(1 + "ctg"^2 x_0)) = 1 / (-(1 + "ctg"^2 ("arcctg" y_0))) = - 1 / (1 + y_0^2) . $

//! Da inserire nella sintesi finale del capitolo
/* Riassumendo i risultati ottenuti:
- Per la funzione $arcsin$, la derivata è:

$ f'(x) = 1 / sqrt(1 - x^2), quad x in (-1, 1) $

- Per la funzione $arccos$:

$ f'(x) = -1 / sqrt(1 - x^2), quad x in (-1, 1) $

- Per la funzione $arctan$:

$ f'(x) = 1 / (1 + x^2), quad x in RR $

- Per la funzione $"arcotg"$:

$ f'(x) = -1 / (1 + x^2), quad x in RR $ */

=== Funzioni esponenziali e logaritmiche

==== Funzioni esponenziali

Per la funzione esponenziale di base $e$, si avrà:

$ lim_(x -> x_0) (e^x - e^(x_0)) / (x - x_0) = e^(x_0) $

concludendo con la regola:

$ f(x) = e^x => f'(x) = e^x $

Per le funzioni del tipo $a^x$, osserviamo che:

$ a^x = e^(x ln a) $

da cui si può derivare che:

$ D(a^x) =D(e^(x ln a)) = e^(x ln a) dot ln a = a^x ln a $

==== Funzioni logaritmiche

Per le funzioni logaritmiche, se $y = f(x) = e^x$, allora $x = g(y) = ln y$, con conseguente derivata di $g(y)$:

$ g'(y_0) = 1/(f'(x_0)) = 1/e^(x_0) = 1/e^(ln y_0) = 1 / y_0 $

dunque la regola è:

$ f(x) = ln x => f'(x) = 1 / x $

Per altre basi, si usa la formula di cambio di base:

$ log_a x = (ln x) / (ln a) $

Da cui:

$ D(log_a x) = D((ln x)/(ln a)) = D(1/(ln a) ln x) = 1/(ln a) dot 1/x = 1 / (x ln a) $

Le formule indicate evidenziano perché, nell'analisi matematica, si preferisce utilizzare la base naturale ed il logaritmo naturale.

== Funzioni iperboliche

Alcune specifiche combinazioni delle funzioni esponenziali rivestono un grande interesse applicativo e vengono chiamate funzioni iperboliche. In particolare, si definiscono come segue:
- seno iperbolico: $display(sinh(x) = (e^x - e^(-x)) / 2), quad x in RR$#v(0.5em)
- coseno iperbolico: $display(cosh(x) = (e^x + e^(-x)) / 2), quad x in RR$#v(0.5em)
- tangente iperbolica: $display(tanh(x) = (e^x - e^(-x)) / (e^x + e^(-x))), quad x in RR$#v(0.5em)
- cotangente iperbolica: $display(coth(x) = (e^x + e^(-x)) / (e^x - e^(-x))), quad x in RR without {0}$

La seguente identità fondamentale è facilmente verificabile:

$ cosh^2(x) - sinh^2(x) = 1 $

Ciò giustifica il termine "iperboliche" per tali funzioni, in quanto il punto con coordinate ($cosh t, sinh t$) appartiene a una curva di equazione $x^2 - y^2 = 1$, che rappresenta un ramo di iperbole equilatera.

//
Le funzioni tangente e cotangente iperboliche sono denominate così per la loro somiglianza alle corrispondenti funzioni trigonometriche, che si basano sulle funzioni seno e coseno. Nelle figure /* seguenti */ vengono illustrati i grafici rispettivi delle funzioni seno e coseno iperbolico.

#grafici_derivate1

È importante notare che il seno iperbolico è una funzione dispari e strettamente crescente, mentre il coseno iperbolico è pari, crescendo per valori di $x$ maggiori di zero e decrescendo per valori di $x$ minori di zero. Un esercizio semplice consiste nel verificare le seguenti regole di derivazione:

$ D(cosh x) = sinh x $
$ D(sinh x) = cosh x $
$ D("ctgh" x) = 1 - "ctgh"^2 x $

=== Funzioni iperboliche inverse

Anche nelle regole di derivazione si osserva una forte somiglianza con le regole valide per le funzioni trigonometriche, il che giustifica ulteriormente i nomi assegnati a queste funzioni. Essendo la funzione seno iperbolico monotona, è invertibile e si può esprimere come:

$ y = sinh x = (e^x - e^(-x)) / 2 => e^(2x) - 2y e^x - 1 = 0 => e^x = y + sqrt(y^2 + 1) $

dove si considera solo il segno positivo davanti al radicale perché $e^x > 0$. Si ottiene così:

$ x = ln(y + sqrt(y^2 + 1)) $

Questa formula rappresenta l'inversa della funzione seno iperbolico, nota come arcseno iperbolico o settore seno iperbolico:

$ "arcsinh" x = ln(x + sqrt(x^2 + 1)) $

Per il coseno iperbolico, considerazioni simili richiedono una restrizione all'intervallo $[0, +oo[$. Si ottiene quindi la funzione arccoseno iperbolico o settore coseno iperbolico:

$ "arccosh" x = ln(x + sqrt(x^2 - 1)) $

Anche queste funzioni sono derivabili, e le loro derivate si trovano facilmente applicando le regole di derivazione delle funzioni elementari:

$ D("arcsinh" x) = 1 / sqrt(x^2 + 1) $
$ D("arccosh" x) = 1 / sqrt(x^2 - 1) $

Queste formule sono particolarmente utili per ricercare certe primitive. Come esercizio sulle proprietà delle potenze, invitiamo il lettore a dimostrare le seguenti formule:

$ sinh(x + y) = sinh x cosh y + cosh x sinh y $
$ cosh(x + y) = cosh x cosh y + sinh x sinh y $

//* Nella versione originale era un capitolo separato; controllare che i sottocapitoli siano in ordine
== Funzioni derivabili in un intervallo 

La continuità o la derivabilità di una funzione in un punto sono esempi di proprietà locali: queste riguardano il comportamento di una funzione non su tutto il dominio, ma solo in un opportuno intorno del punto considerato. Per chiarire meglio il concetto, prendiamo in esame un esempio. Consideriamo la funzione:

$ f(x) = cases(
  x^2\, quad &x in QQ,
  -x^2\, quad &x in RR backslash QQ,
) $

e il punto $0$ del suo dominio. Per questa funzione è impossibile tracciare un grafico nel senso tradizionale: infatti, il grafico è interamente compreso in quello della parabola $y = x^2$ sui numeri razionali e nella parabola $y = -x^2$ sui numeri irrazionali. Intorno a ogni punto, la funzione oscilla tra valori appartenenti alla prima parabola e valori appartenenti alla seconda, a causa della densità dei numeri razionali all'interno dei reali. Tuttavia, la funzione è continua e derivabile in $0$, con una derivata pari a zero, come risulta da un calcolo diretto. La derivabilità in $0$ implica l'esistenza di una tangente al grafico in questo punto, che coincide con l'asse delle ascisse. Di conseguenza, vicino a questo punto, la funzione può essere "approssimata" con l'asse delle $x$, un tratto che però non si estende ad altri punti al di fuori dell'origine.

=== Funzioni crescenti e decrescenti in un punto. Massimi e minimi relativi

//? Verificare nome
#definizione(title: "Monotonia ed estremi relativi", label: <def-monotonia-estremi-relativi>)[Data una funzione $f$ e un punto $x_0$ del suo dominio, se esiste un intorno $I_(x_0)$ tale che per ogni suo punto (che appartiene anche al dominio della funzione) si abbia:
- se $x < x_0 => f(x) <= f(x_0)$ e contemporaneamente se $x > x_0 => f(x) >= f(x_0)$, allora la funzione è detta crescente in $x_0$ (crescente in senso stretto se le disuguaglianze sono rigorose);
- se $x < x_0 => f(x) >= f(x_0)$ e contemporaneamente se $x > x_0 => f(x) <= f(x_0)$, allora la funzione è detta decrescente in $x_0$ (decrescente in senso stretto se le disuguaglianze sono rigorose);
- se $f(x) <= f(x_0)$, allora il punto $x_0$ è detto di massimo relativo (massimo relativo proprio se la disuguaglianza è stretta);
- se $f(x) >= f(x_0)$, allora il punto $x_0$ è detto di minimo relativo (minimo relativo proprio se la disuguaglianza è stretta).]

#esempio[La funzione $f(x) = "sgn"(x) - x$ è crescente in $0$, perché a sinistra di $0$ ha valori negativi e a destra di $0$ ha valori positivi. 

#grafico_derivate7

][
La funzione $f(x) = |"sgn"(x)|(x + 1)$ possiede un minimo nell'origine, dove il valore è $0$, mentre nei pressi dell'origine assume valori positivi. 

#grafico_derivate8

][
La funzione

$ f(x) = cases(
  2x + x sin(1/x)\, quad &x != 0,
  0\, quad &x = 0,
) $

è crescente nell'origine, poiché è positiva a destra dell'origine e negativa a sinistra. 

#grafico_derivate9

]

L'analisi delle proprietà di crescita e decrescita di una funzione in un punto, così come i concetti di massimo o minimo relativo, può includere situazioni che non corrispondono sempre all'idea intuitiva di questi termini. Per le funzioni derivabili, esistono due teoremi significativi che risuonano:

//? Verificare nome
#definizione(title: "Teorema della monotonia locale", label: <def-teorema-monotonia-locale>)[Sia $f$ una funzione definita in un intorno di $x_0$ e derivabile in $x_0$:
+ se $f'(x_0) > 0$, allora $f$ è strettamente crescente in $x_0$
+ se $f'(x_0) < 0$, allora $f$ è strettamente decrescente in $x_0$
+ se $f$ è crescente in $x_0$, allora $f'(x_0) >= 0$
+ se $f$ è decrescente in $x_0$, allora $f'(x_0) >= 0$

#dimostrazione()

+ $f'(x_0) > 0 => f$ strettamente crescente

  Dimostriamo la prima proprietà per il caso $f'(x_0) > 0$. Per definizione di derivata:
  $ lim_(x -> x_0) (f(x) - f(x_0)) / (x - x_0) = f'(x_0) > 0 $

  Per il teorema della permanenza del segno, esiste un intorno $I$ di $x_0$ in cui il rapporto incrementale mantiene segno positivo per ogni $x != x_0$:
  $ (f(x) - f(x_0)) / (x - x_0) > 0 $

  Affinché la frazione sia positiva, numeratore e denominatore devono avere lo stesso segno:
  - per $x > x_0$ si ha $x - x_0 > 0$, da cui $f(x) - f(x_0) > 0$, cioè $f(x) > f(x_0)$
  - per $x < x_0$ si ha $x - x_0 < 0$, da cui $f(x) - f(x_0) < 0$, cioè $f(x) < f(x_0)$

+ $f'(x_0) < 0 => f$ strettamente decrescente

  Poiché $f'(x_0) < 0$, per il teorema della permanenza del segno il rapporto incrementale è negativo in un intorno di $x_0$:
  $ (f(x) - f(x_0)) / (x - x_0) < 0 $

  Per $x > x_0$ si ha $x - x_0 > 0$, dunque $f(x) - f(x_0) < 0$, ovvero $f(x) < f(x_0)$
  Per $x < x_0$ si ha $x - x_0 < 0$, dunque $f(x) - f(x_0) > 0$, ovvero $f(x) > f(x_0)$
  La funzione è quindi strettamente decrescente in $x_0$.

+ $f$ crescente $=> f'(x_0) >= 0$

  Procedendo per assurdo, se fosse $f'(x_0) < 0$, per il caso 2 la funzione sarebbe strettamente decrescente in $x_0$, in contraddizione con l'ipotesi. Deve quindi essere $f'(x_0) >= 0$

+ $f$ decrescente $=> f'(x_0) <= 0$

  Procedendo per assurdo, se fosse $f'(x_0) > 0$, per il caso 1 la funzione sarebbe strettamente crescente in $x_0$, in contraddizione con l'ipotesi. Deve quindi essere $f'(x_0) <= 0$
]

//? Verificare nome
#definizione(title: "Teorema di Fermat", label: <def-teorema-fermat>)[Sia $f$ una funzione definita nell'intervallo $(a, b)$ e derivabile in un punto interno $x_0 \in (a, b)$.  Se $f$ presenta in $x_0$ un punto di massimo o di minimo relativo, allora la sua derivata prima si annulla: $ f'(x_0) = 0 $

#dimostrazione()
Consideriamo il caso in cui $x_0$ sia un punto di massimo relativo interno al dominio. Procediamo per assurdo supponendo $f'(x_0) != 0$.

Se fosse $f'(x_0) > 0$, la funzione sarebbe strettamente crescente in $x_0$. Poiché $x_0$ è interno all'intervallo, esisterebbero punti $x > x_0$ per i quali $f(x) > f(x_0)$, contraddicendo l'ipotesi che $x_0$ sia un punto di massimo relativo.

Se fosse $f'(x_0) < 0$, la funzione sarebbe strettamente decrescente in $x_0$. Esisterebbero quindi punti $x < x_0$ per i quali $f(x) > f(x_0)$, che viola nuovamente l'ipotesi di massimo.

Essendo escluse le due disuguaglianze, dev'essere necessariamente $f'(x_0) = 0$.

]

=== Asintoti

#definizione(title: "Asintoto verticale", label: <def-asintoto-verticale>)[Se $x_0$ è un punto di accumulazione per il dominio di una funzione e si ha
$ lim_(x -> x_0) f(x) = oo, $
con qualunque segno, allora la retta
$ x = x_0 $
si dice un asintoto verticale per la funzione. La stessa definizione vale anche se il limite è solo destro o solo sinistro.]

#esempio[- Se $f(x) = "tg"(x)$, tutte le rette di equazione $x = pi / 2 + k pi$ sono asintoti verticali
- Se $f(x) = ln(x)$, la retta $x = 0$ è asintoto verticale
- Se $f(x) = 1 / (x + 1)$, la retta $x = -1$ è asintoto verticale]

Se $f$ è una funzione razionale fratta (quoziente di due polinomi), allora può avere un asintoto verticale solo in corrispondenza di una radice del denominatore. La condizione non è però sufficiente: anche in corrispondenza di una radice del denominatore può non esserci un asintoto verticale, come mostra l'esempio della funzione
$ f(x) = (x^3 + 1) / (x + 1) $
per la quale si ha
$ lim_(x -> -1) (x^3 + 1) / (x + 1) = lim_(x -> -1) ((x + 1)(x^2 - x + 1)) / (x + 1) = 3 $

Per le funzioni diverse dalle razionali fratte, l'esistenza di asintoti verticali non dipende necessariamente dalla presenza di denominatori. Un esempio è la funzione $f(x) = ln(x)$, che presenta un asintoto sull'asse delle $y$ senza avere alcun denominatore.

#definizione(title: "Funzioni asintotiche", label: <def-funzioni-asintotiche>)[Due funzioni $f$ e $g$, continue e definite su un insieme non limitato superiormente, si definiscono asintotiche per $x -> +oo$ (o $x -> -oo$) se:

$ lim_(x -> +oo) (f(x) - g(x)) = 0 $ oppure $ lim_(x -> -oo) (f(x) - g(x)) = 0 $

In particolare, se $g(x) = m x + q$, la retta $y = m x + q$ diventa un asintoto per $f$: un asintoto orizzontale se $m = 0$, ed obliquo se $m != 0$.]

#definizione(title: "Teorema dell'asintoto orizzontale", label: <def-teorema-asintoto-orizzontale>)[La retta $y = q$ è un asintoto orizzontale per una funzione continua $f$ se:

$ lim_(x -> +oo) f(x) = q $

oppure

$ lim_(x -> -oo) f(x) = q $

]

#definizione(title: "Teorema dell'asintoto obliquo", label: <def-teorema-asintoto-obliquo>)[La retta $y = m x + q$ (con $m != 0$) è un asintoto obliquo per $x -> +oo$ per una funzione continua $f$ se e solo se:

$ lim_(x -> +oo) (f(x)) / x = m quad lim_(x -> +oo) (f(x) - m x) = q. $

Similmente si procede per $x -> -oo$.

#dimostrazione()
Se il limite di $f(x) - m x - q$ tende a zero per $x -> +oo$, allora $y = m x + q$ è un asintoto. Inversamente, se $y = m x + q$ è un asintoto, allora $f(x) - m x - q -> 0$ per $x -> +oo$ e quindi $f(x) - m x -> q$; inoltre:

$ f(x) - m x - q = x (f(x)/x - m - q/x) $

Dunque, , mentre l'espressione $f(x) / x$ deve convergere a $m$, poiché $q / x -> 0$

]

#esempio[
- la funzione $f(x) = e^x$ presenta l'asse delle $x$ come asintoto orizzontale per $x -> -oo$
- la funzione $f(x) = arctan x$ ha le rette $y = plus.minus  pi/2$ come asintoti orizzontali, rispettivamente per $x -> +oo$ e $x -> -oo$
- la funzione $f(x) = x + sqrt(x^2 + 1)$ ha l'asse delle $x$ come asintoto orizzontale per $x -> -oo$, e la retta $y = 2x$ come asintoto obliquo per $x -> +oo$
- la funzione $f(x) = sqrt(x^2 + 1)$ presenta le rette $y = plus.minus  x$ come asintoti obliqui, una per $x -> -oo$ e l'altra per $x -> +oo$]

=== Teoremi fondamentali sulle funzioni derivabili in un intervallo

#definizione(title: "Teorema di Lagrange", label: <def-teorema-lagrange>)[Se $f$ è una funzione continua su $[a, b]$ e derivabile su $]a, b[$, allora esiste almeno un punto $c in ]a, b[$ tale che:

$ f'(c) = (f(b) - f(a)) / (b - a). $

#dimostrazione()
Consideriamo i punti $A(a, f(a))$ e $B(b, f(b))$. La retta passante per $A$ e $B$ ha coefficiente angolare uguale al rapporto incrementale soprastante e può essere espressa come:

$ h(x) = f(a) + (f(b) - f(a)) / (b - a) (x - a). $

Definiamo $g(x) = f(x) - h(x)$, che condivide le proprietà di regolarità di $f$ e si annulla agli estremi dell'intervallo $[a, b]$. Applicando il teorema di Weierstrass su $g$, troviamo i punti di massimo e minimo; per il teorema di Fermat, in un punto interno $c in ]a, b[$ di estremo relativo la derivata prima di $g$ deve annullarsi. Poiché $ g'(x) = f'(x) - (f(b) - f(a)) / (b - a) $ imponendo $g'(c) = 0$ si dimostra la tesi.

//
Il grafico in @grafico_derivate10 illustra l'interpretazione geometrica del teorema appena dimostrato: esiste un punto all'interno dell'intervallo $[a, b]$ dove la tangente è parallela alla secante che passa per i punti $(a, f(a))$ e $(b, f(b))$.

#grafico_derivate10

]

#definizione(title: "Teorema di Rolle", label: <def-teorema-rolle>)[Se, alle ipotesi del teorema di Lagrange, si aggiunge che $f(a) = f(b)$, allora esiste un punto $c in ]a, b[$ tale che $f'(c) = 0$. Questa è una conseguenza diretta del teorema di Lagrange.]

#definizione(title: "Funzioni con derivata nulla", label: <def-funzioni-derivata-nulla>)[Se una funzione ha derivata nulla in un intervallo, allora è costante su quell'intervallo. 

#dimostrazione()
Prendendo $x in I$ e applicando Lagrange all'intervallo $[x_0, x]$, dove $x_0$ è un punto fissato di $I$, si ha l'esistenza di un $c$ tale che:

$ f'(c) = (f(x) - f(x_0)) / (x - x_0) $

Visto che $f'(c) = 0$, allora $f(x) = f(x_0)$, il che implica che $f$ è costante.]

#definizione(title: "Funzioni con la stessa derivata", label: <def-funzioni-stessa-dericata>)[Se due funzioni $f$ e $g$ hanno la stessa derivata in un intervallo, allora differiscono per una costante. 

#dimostrazione()
Basta applicare il precedente teorema alla funzione $f - g$ che ha derivata nulla.]

#definizione(title: "Funzioni a derivata con segno costante", label: <def-funzioni-derivata-segno-costante>)[Una funzione con derivata positiva in un intervallo cresce in quell'intervallo; se la derivata è negativa, decresce. 

#dimostrazione()
Supponendo che $f'(c) > 0$ e considerando due punti $x_1 < x_2$ nell'intervallo, applicando Lagrange si ottiene un $c$ tale che:

$ f'(c) = (f(x_2) - f(x_1)) / (x_2 - x_1) $

Dato che $f'(c) > 0$ e $x_2 - x_1 > 0$, ne risulta che $f(x_2) - f(x_1) > 0$, quindi $f$ è crescente.]

Nei precedenti tre corollari è cruciale che il dominio sia un intervallo. Questo è evidente dagli esempi seguenti.

#esempio[
- La funzione $ f(x) = arctan(x) + arctan 1/x $ ha derivata nulla nel suo dominio naturale ma non è costante.
- La funzione $f(x) = tan(x)$ ha derivata sempre positiva ma non cresce nel suo dominio naturale.
]

Enunciamo senza dimostrazione il teorema di Cauchy, che rappresenta una generalizzazione del teorema di Lagrange.

#definizione(title: "Teorema di Cauchy", label: <def-teorema-cauchy>)[Siano $f$ e $g$ due funzioni continue in $[a, b]$ e derivabili almeno internamente a $[a, b]$, con $g'(x) != 0$ in tutto l'intervallo aperto $]a, b[$. Allora esiste almeno un punto $c in ]a, b[$ tale che:

$ (f(b) - f(a)) / (g(b) - g(a)) = (f'(c)) / (g'(c)) $]

È ovvio che il teorema di Lagrange è un caso particolare di questo teorema: basta considerare $g(x) = x$. Infine, enunciamo anche due ulteriori teoremi rilevanti per il calcolo dei limiti, raggruppati per agevolarne la memorizzazione, pur senza dimostrarli qui.

//
#definizione(title: "Teoremi di l'Hôpital", label: <def-teoremi-hopital>)[Consideriamo due funzioni, $f$ e $g$, definite in un intorno $I$ di un punto $x_0$ (che può includere anche $plus.minus oo$ o $oo$), tranne forse $x_0$ stesso. Supponiamo che entrambe siano derivabili in $I$, escludendo al più $x_0$, e che $g'(x) != 0$ per ogni $x in I$ tranne $x_0$. In questo contesto si verificano le seguenti situazioni:
1. se $ lim_(x -> x_0) f(x) = lim_(x -> x_0) g(x) = 0, quad display(lim_(x -> x_0) (f'(x)) / (g'(x))) = l $
  
  allora anche $ lim_(x -> x_0) (f(x)) / (g(x)) = l $

2. se $ lim_(x -> x_0) f(x) = lim_(x -> x_0) g(x) = oo, quad display(lim_(x -> x_0) (f'(x)) / (g'(x))) = l $

  allora anche $ lim_(x -> x_0) f(x) / (g(x)) = l $

]

Da notare che $l$ può anche assumere valori $plus.minus oo$. Il secondo caso è rilevante anche quando non si conosce il limite di $f(x)$, ma la sua applicazione principale resta quella descritta. Bisogna segnalare che questi teoremi forniscono solo una condizione sufficiente per l'esistenza del limite del rapporto delle due funzioni.

#esempio[Dati $f(x) = x + cos x$ e $g(x) = x + sin x$, se consideriamo il limite  $ lim_(x -> +oo) f(x) / g(x) $ possiamo teoricamente applicare il secondo dei teoremi di l'Hôpital. Tuttavia, il limite del rapporto delle derivate non esiste, e quindi non possiamo concludere nulla direttamente. Tuttavia, risulta immediato che il limite del rapporto delle funzioni è $1$.]

Concludiamo l'analisi dei teoremi relativi alle funzioni derivabili in un intervallo con un ulteriore teorema utile per la verifica della derivabilità in punti considerati "critici".

#definizione(title: "Teorema sul limite della derivata", label: <def-teorema-limite-derivata>)[Sia $f$ una funzione definita e continua in un intorno $I$ di un punto $x_0$ (incluso $x_0$), e derivabile almeno in $I$ escluso $x_0$. Se esiste un limite $l$ per $x -> x_0$ di $f'(x)$, anche infinito, allora:
- se il limite è finito, la funzione è derivabile in $x_0$ e la sua derivata è uguale a $l$
- se il limite è infinito, allora anche il limite del rapporto incrementale di $f$ in $x_0$ è infinito

#dimostrazione()
Basta applicare il teorema di l'Hôpital al rapporto incrementale di $f$ relativo a $x_0$.]

=== Proprietà di Darboux e derivate

Una funzione definita in un intervallo $I$ ha la proprietà di Darboux se, presi due punti $x_1$ e $x_2$ in $I$ e considerato un $y$ compreso tra $f(x_1)$ e $f(x_2)$, esiste sempre un punto $x$ in $I$ tale che $f(x) = y$. In altri termini, la funzione assume tutti i valori tra due valori qualunque assegnati da essa stessa. In base al teorema di connessione, ogni funzione continua su un intervallo ha la proprietà di Darboux, ma anche alcune funzioni discontinue possono averla. Un esempio è la funzione definita come:

$ f(x) = cases(
  x sin 1/x \, quad &x != 0,
  0\, quad &x = 0,
) $

È chiaro che il grafico di una funzione con questa proprietà non presenta "salti", cioè punti dove i limiti sinistro e destro esistano entrambi finiti ma differenti tra loro; ad esempio, se esistesse un punto $x_0$ in cui i limiti sinistro e destro fossero finiti ma diversi, ovvero

$ lim_(x -> x_0^-) f(x) = l in RR quad and quad lim_(x -> x_0^+) f(x) = m in RR, quad l != m $

 la restrizione della funzione a un intorno di $x_0$ avrebbe un'immagine con una lacuna tra i valori dei due limiti.

È importante rilevare che la derivata di una funzione derivabile su un intervallo mantiene la proprietà di Darboux.

//
#definizione(title: "Proprietà di Darboux per le funzioni derivabili", label: <def-proprieta-darboux>)[Consideriamo una funzione $f$ derivabile in un intervallo $I$, e due punti $x_1 < x_2$ appartenenti a $I$ tali che risulti $f'(x_1) < f'(x_2)$ o viceversa. Se prendiamo un valore $y$ compreso tra $f'(x_1)$ e $f'(x_2)$, esiste almeno un punto $c$ tra $x_1$ e $x_2$ per il quale $f'(c) = y$.]

Questo teorema implica che la derivata di una funzione derivabile su un intervallo non può presentare discontinuità; pertanto, una funzione che mostra discontinuità su un intervallo non può essere la derivata di alcuna funzione definita nello stesso intervallo (cioè non possiede primitive nell'intervallo). 

Ad esempio, la funzione $f(x) = "sgn"(x)$ non può essere la derivata di alcuna funzione definita su tutto $RR$. Al contrario, la funzione $f(x) = x / (|x|)$, avente dominio $RR without {0}$, può essere considerata la derivata di una funzione ($f(x)$ non è definita su un intervallo). Infatti, questa funzione è la derivata della funzione $g(x) = |x|$, derivabile in $RR without {0}$, che non costituisce un intervallo.

Questa proprietà ci permette di affermare che se una funzione è continua in un intervallo $I$ ed è derivabile ovunque in $I$ tranne in un punto $x_0$, e se i limiti della derivata a sinistra e a destra di $x_0$ sono finiti ma diversi, allora la funzione non è derivabile in $x_0$. Questa caratteristica è ampiamente utile nell'analisi della derivabilità di una funzione senza calcolare il limite del rapporto incrementale. 

#esempio[Consideriamo la funzione:

$ f(x) = cases(
  -x\, quad &x <= 0,
  sin x\, quad &x > 0
) $

Per $x != 0$, la derivata è:

$ f'(x) = cases(
  -1\, quad &x < 0,
  cos x\, quad &x > 0
) $

Dunque, non può essere derivabile in $0$, poiché i limiti a sinistra e a destra della derivata per $x -> 0$ sono finiti ma diversi, rispettivamente $-1$ e $1$.
]

== Infiniti e infinitesimi

Esistono diverse modalità per introdurre i concetti di infinito e infinitesimo, ma qui ci concentreremo su un approccio specifico. Pur non essendo il più ampio, esso sarà adeguato per i nostri obiettivi. La maggior parte dei teoremi discussi in questo capitolo costituisce semplicemente una riformulazione di noti teoremi sui limiti, motivo per cui quasi tutti vengono proposti come esercizi.

=== Infinitesimi e loro confronto

#definizione(title: "Funzione infinitesima", label: <def-funzione-infinitesima>)[Una funzione $f$ si definisce infinitesima in $x_0$, o per $x$ tendente a $x_0$ (incluso $oo$), se:

$ lim_(x -> x_0) f(x) = 0 $

Naturalmente, $x_0$ deve essere un punto di accumulazione per il dominio della funzione.]

#definizione(title: "Infinitesimi simultanei", label: <def-infinitesimi-simultanei>)[Due funzioni $f$ e $g$, entrambe infinitesime in $x_0$, si chiamano infinitesimi simultanei in $x_0$.]

#esempio[
- Le funzioni $1 - cos x$ e $x^2$ sono infinitesimi simultanei in $0$.
- Le funzioni $1/x$ e $e^x$ sono infinitesimi simultanei in $-oo$.
- Le funzioni $ln x$ e $x - 1$ sono infinitesimi simultanei in $1$.
]
In generale, considereremo infinitesimi tali che esista un intorno di $x_0$, escluso $x_0$ stesso, dove $f(x) != 0$. Questa condizione semplifica notevolmente la teoria.

#definizione(title: "Ordine di infinitesimo", label: <def-ordine-infinitesimo>)[Siano $f$ e $g$ due infinitesimi simultanei in $x_0$.#v(0.25em)
- se $display(lim_(x -> x_0)) abs((f(x)) / (g(x))) = l > 0$, diciamo che $f$ e $g$ hanno lo stesso ordine di infinitesimo #v(0.25em)
- se $display(lim_(x -> x_0)) (f(x)) / (g(x)) = 0$, diciamo che $f$ ha ordine di infinitesimo superiore a $g$, o che $f$ è un infinitesimo di ordine superiore a $g$ #v(0.25em)
- se $display(lim_(x -> x_0)) (f(x)) / (g(x)) = +oo$, diciamo che $f$ ha ordine di infinitesimo inferiore a $g$, o che $f$ è un infinitesimo di ordine inferiore a $g$

Se nessuna delle tre eventualità si presenta, diciamo che $f$ e $g$ sono infinitesimi non confrontabili.]

Considerando il teorema sul limite del modulo (@def-teorema-limite-modulo), è possibile calcolare il limite del rapporto di due funzioni: se questo limite esiste, si può immediatamente dedurre il risultato; in caso contrario, si calcolerà il limite del modulo del rapporto.

È utile chiarire, anche se in modo un po' azzardato, il significato di "infinitesimo di ordine superiore". Esaminando la definizione precedentemente fornita, si nota che una funzione $f$ è di ordine superiore a una $g$ se il rapporto $f/g$ tende a zero. Una frazione è tanto più piccola quanto più il numeratore è piccolo rispetto al denominatore; pertanto, affermare che "$f$ è di ordine superiore a $g$" equivale a dire che "$f$ è infinitamente più piccola di $g$".

#esempio[
- Le funzioni $sin x$ e $x$ hanno lo stesso ordine di infinitesimo in $0$
- La funzione $x - sin x$ ha un ordine di infinitesimo superiore a $x$ in $0$
- Le funzioni $x - sin x$ e $x^3$ hanno lo stesso ordine di infinitesimo in $0$ (si può calcolare il loro limite usando l'Hôpital)
- La funzione $e^x - 1$ ha un ordine di infinitesimo minore rispetto a $x^2$ in $0$
- Le funzioni $ln(x^2)$ e $x - 1$ hanno lo stesso ordine di infinitesimo in $1$
- La funzione $e^(-x)$ è di ordine superiore rispetto a $1/x^n$ all'infinito positivo, per ogni $n in NN^+$
- Le funzioni $x(sin(1/x) + 2)$ e $x$ sono infinitesimi non confrontabili in $0$; è importante notare che anche le funzioni $x sin(1/x)$ e $x$ sarebbero adatte come esempi di infinitesimi non confrontabili. Abbiamo aggiunto il $2$ per garantire che entrambe le funzioni siano definitivamente diverse da zero. In molti teoremi successivi, la condizione che le funzioni siano definitivamente diverse da zero è essenziale, quindi è opportuno concentrarsi solo su questo tipo di infinitesimi.
]

#definizione(title: "Proprietà degli infinitesimi", label: <def-proprieta-infinitesimi>)[Le seguenti proprietà possono essere facilmente dimostrate usando i teoremi sui limiti per le funzioni infinitesime $f$, $g$ e $h$ simultanee in un punto $x_0$:
- $f$ ha lo stesso ordine di infinitesimo di se stessa
- se $f$ ha lo stesso ordine di $g$ e $g$ lo stesso ordine di $h$, allora $f$ ha lo stesso ordine di $h$
- se $f$ ha un ordine superiore a $g$ e $g$ ha un ordine superiore a $h$, allora $f$ ha un ordine superiore a $h$
- se $f$ ha lo stesso ordine di $g$ e $g$ ha un ordine superiore a $h$, allora $f$ ha un ordine superiore a $h$
]

Il seguente teorema sulle somme e sui prodotti di infinitesimi è molto utile nelle applicazioni. La dimostrazione, come per la maggior parte degli altri teoremi di questo capitolo, si basa su semplici applicazioni dei teoremi sui limiti.

#definizione(title: "Teorema delle somme e dei prodotti di infinitesimi", label: <def-teorema-somme-prodotti-infinitesimi>)[Siano $f$ e $g$ due infinitesimi simultanei in $x_0$:
- se $f$ ha un ordine inferiore a $g$, allora $f plus.minus  g$ ha lo stesso ordine di $f$
- se $f$ e $g$ hanno lo stesso ordine, allora $f plus.minus  g$ ha un ordine non minore dell'ordine comune
- il prodotto $f dot g$ ha un ordine superiore sia a $f$ che a $g$]

#esempio[
- Le funzioni $sin x$ e $x$ hanno lo stesso ordine in $0$
- La funzione $sin x + x$ mantiene lo stesso ordine, mentre la funzione $sin x - x$ ha un ordine superiore rispetto a entrambe
]

=== Ordine di infinitesimo rispetto a un campione

#definizione(title: "Ordine di infinitesimo", label: <def-ordine-infinitesimo>)[Consideriamo due infinitesimi $f$ e $g$ simultanei in $x_0$. Diremo che $f$ ha ordine $alpha > 0$ rispetto a $g$ se $f$ e $|g|^alpha$ hanno lo stesso ordine, vale a dire se

$ lim_(x -> x_0) (|f(x)|) / (|g(x)|^alpha) = l > 0 $

In questo contesto, $g$ è anche conosciuto come infinitesimo campione.]

#esempio[
La funzione $ln(1 + x)$ ha ordine $1$ rispetto a $x$ in $0$.
- La funzione $sin x^2$ ha ordine $2$ rispetto a $x$ in $0$, ma ha ordine $1$ rispetto a $1 - cos x$, sempre in $0$.
- La funzione $sin(x - 1) sin(x - 2)^2$ ha ordine $1$ rispetto a $x - 1$ in $1$, e ordine $2$ rispetto a $x - 2$ in $2$.
- La funzione $e^(x^2) - 1$ ha ordine $2$ rispetto a $x$ in $0$.
]

Non è sempre possibile trovare un infinitesimo campione rispetto al quale confrontare tutti gli altri infinitesimi. Questo è dovuto ai seguenti fatti:
- esistono infinitesimi non confrontabili
- non sempre è possibile trovare un $alpha$ appropriato nella Definizione 8.6. Ad esempio, per $x -> +oo$, $e^(-x)$ e $1/x$ sono infinitesimi simultanei, ma non esiste un $alpha > 0$ che funzioni, poiché il limite del rapporto $ e^(-x) / (1/x)^alpha $ è sempre zero, indipendentemente dal valore di $alpha$

In relazione alle operazioni di somma, prodotto, potenza e quoziente, si applica il seguente teorema utile.

#definizione(title: "Teorema")[Consideriamo $f$ e $g$ come due infinitesimi simultanei con ordini $alpha$ e $beta$ rispettivamente, rispetto allo stesso campione:
- se $alpha < beta$, $f plus.minus  g$ ha ordine $alpha$, sempre con riferimento allo stesso campione
- se $alpha = beta$, $f plus.minus  g$ ha ordine maggiore o uguale ad $alpha$
- il prodotto $f dot g$ ha un ordine pari alla somma $alpha + beta$
- la potenza $|f|^gamma$ ha ordine $alpha dot gamma$
- se $alpha > beta$, il quoziente $f/g$ è ancora un infinitesimo e ha ordine $alpha - beta$
]

=== Principio di sostituzione degli infinitesimi

Di grande importanza per il calcolo dei limiti è il teorema seguente.

#definizione(title: "Principio di sostituzione degli infinitesimi", label: <def-principio-sostituzione-infinitesi>)[Supponiamo che $f_1, f_2, g_1, g_2$ siano infinitesimi simultanei in $x_0$, con $f_2$ di ordine superiore rispetto a $f_1$ e $g_2$ di ordine superiore rispetto a $g_1$. 

Consideriamo i due limiti:

$ lim_(x -> x_0) (f_1(x) + f_2(x)) / (g_1(x) + g_2(x)), quad lim_(x -> x_0) (f_1(x)) / (g_1(x)) $

Se esiste uno dei due limiti, esiste anche l'altro e sono uguali.

#dimostrazione()
Simile agli altri teoremi in questo capitolo, si tratta semplicemente di applicare le note proprietà dei limiti:

$ lim_(x -> x_0) (f_1(x) + f_2(x)) / (g_1(x) + g_2(x)) = lim_(x -> x_0) (f_1(x)) / (g_1(x)) dot (1 + (f_2(x)) / (f_1(x))) / (1 + (g_2(x)) / (g_1(x))) $

A questo punto, è sufficiente osservare che il rapporto $(f_2(x)) / (f_1(x))$ tende a $0$ e anche il rapporto $(g_2(x)) / (g_1(x))$ tende a $0$ per giungere alla conclusione. Questo teorema chiarisce perché ci siamo focalizzati esclusivamente su infinitesimi diversi da zero in maniera definitiva: è grazie a tale scelta che abbiamo potuto raccogliere a fattor comune $f_1$ al numeratore e $g_1$ al denominatore.]

In sostanza, il teorema afferma che nel calcolo del limite del rapporto tra somme di due infinitesimi, si possono ignorare al numeratore e al denominatore gli infinitesimi di ordine superiore.

#esempio[Calcolare il seguente limite:

$ lim_(x -> 0) (2x + sin^3 x + 1 - cos x) / (ln(1 + x^2) + 3 sin x) $

Un possibile approccio è il seguente:
- al numeratore, la somma dei tre infinitesimi $2x$, $sin^3 x$, e $1 - cos x$ rispetta l'ordine: $1$, $3$, e $2$ rispettivamente. Dunque, $sin^3 x + 1 - cos x$ ha ordine $2$ ed è di ordine superiore rispetto a $2x$, pertanto può essere trascurato.
- al denominatore, vi sono due infinitesimi di ordine $2$ e $1$ rispetto a $x$: quello di ordine $2$ può essere tralasciato.

Il limite si riduce quindi a:

$ lim_(x -> 0) (2x) / (3 sin x) = 2/3 $
][
Calcolare il seguente limite:

$ lim_(x -> 0^+) (sqrt(x) + sin x + sin^3 x - tan^3 x + e^(x^2) - 1) / (x + sin^2 x + cos x - 1) $

Una possibile strategia consiste nel confrontare ogni infinitesimo con il campione $x$:
- la radice quadrata di $x$ ha ordine $1/2$
- $sin x$ ha ordine $1$
- gli ordini di $sin^3 x$ e $tan^3 x$ sono entrambi $3$, quindi la differenza $sin^3 x - tan^3 x$ ha ordine almeno $3$
- $e^(x^2) - 1$ ha ordine $2$
  Pertanto, al numeratore, il termine complessivo ha ordine $1$, che è trascurabile rispetto a $sqrt(x)$.
- al denominatore, $x$ ha ordine $1$, mentre la somma di $sin^2 x$ e $cos x - 1$ ha ordine almeno $2$, quindi può essere ignorata rispetto a $x$.

Rimane quindi da calcolare:

$ lim_(x -> 0^+) sqrt(x) / x = lim_(x -> 0^+) 1 / sqrt(x) = +infinity $][Calcolare il limite:

$ lim_(x -> 0) (x - sin x + ln(x^2 + 1)) / x^2 $

Confrontando tutti gli infinitesimi rispetto a $x$, notiamo che al numeratore abbiamo due infinitesimi di ordine $1$ e uno di ordine $2$. Tuttavia, considerando $x - sin x$, si tratta di un ordine $3$, il che rende questi termini trascurabili in confronto a $ln(x^2 + 1)$. Di conseguenza, il limite è semplicemente $1$, costituendo un limite fondamentale. Questo esempio evidenzia l'importanza di prestare attenzione nell'applicazione corretta del principio di sostituzione.]

=== Infiniti e loro confronto

La trattazione degli infiniti può essere sviluppata in modo complementare rispetto agli infinitesimi, apportando le opportune modifiche. È evidente come i paragrafi relativi agli infiniti rispecchino quasi integralmente il contenuto discusso sugli infinitesimi. Comprendere la complementarità dei due concetti richiede di considerare che se $f$ tende a zero, allora $1 / (|f|)$ tende a più infinito, secondo i teoremi sui limiti.
#v(2em)
#definizione(title: "Funzione infinita", label: <def-funzione-infinita>)[Una funzione $f$ si dice infinita in $x_0$ o per $x$ tendente a $x_0$ (incluse le estremità $oo$) se $display(lim_(x -> x_0)) f(x) = oo$. È importante che $x_0$ sia un punto di accumulazione per il dominio di $f$.]

#definizione(title: "Infiniti simultanei", label: <def-infiniti-simultanei>)[Due funzioni $f$ e $g$, entrambe infinite in $x_0$, si definiscono infiniti simultanei in $x_0$.]

#esempio[
- Le funzioni $ln |x|$ e $1/x$ sono infiniti simultanei in $0$
- Le funzioni $ln x$ ed $e^x$ sono infiniti simultanei all'$oo$
- Le funzioni $1 / (ln x)$ e $1 / (x - 1)$ sono infiniti simultanei in $1$
]

#definizione(title: "Ordini di infinito")[Date due funzioni simultaneamente infinite in $x_0$, se

$ lim_(x -> x_0) abs((f(x)) / (g(x))) = l > 0 $

diremo che $f$ e $g$ hanno lo stesso ordine di infinito. Se invece

$ lim_(x -> x_0) abs((f(x)) / (g(x))) = 0 $

diremo che $f$ ha un ordine di infinito inferiore a $g$. Infine, se 

$ lim_(x -> x_0) abs((f(x)) / (g(x))) = +oo $

indicheremo che $f$ ha un ordine di infinito superiore a $g$. Se nessuna di queste condizioni è soddisfatta, diremo che $f$ e $g$ sono infiniti non confrontabili.

Tenendo presente il teorema sul limite del modulo, è possibile calcolare il limite del rapporto delle due funzioni: se esiste, la conclusione è immediata; altrimenti, si calcolerà il limite del modulo del rapporto.]

È utile chiarire cosa si intende con "infinito di ordine superiore". Se riconsideriamo la definizione, vediamo che dire che $f$ è di ordine superiore a $g$ equivale a notare che il rapporto $f/g$ tende a infinito. Una frazione è tanto più grande quanto maggiore è il numeratore rispetto al denominatore; pertanto, dire che "$f$ è di ordine superiore a $g$" significa che "$f$ è infinitamente più grande di $g$".

#esempio[
- Le funzioni $1 / (ln x)$ e $1 / (x - 1)$ hanno lo stesso ordine di infinito in $1$.
- $ln x$ e $ln x^3$ hanno lo stesso ordine di infinito all'$oo$.
- $ln x$ ha ordine inferiore rispetto a $x$ all'$oo$.
- La funzione $e^x$ ha un ordine superiore rispetto a $x$ all'$oo$.
]

=== Proprietà sugli ordini di infinito

Le seguenti proprietà sugli ordini di infinito possono essere dimostrate facilmente utilizzando i teoremi sui limiti, se $f, g, h$ sono infiniti simultanei in $x_0$:
+ ogni funzione ha lo stesso ordine di infinito rispetto a se stessa
+ se $f$ ha lo stesso ordine di $g$ e $g$ ha lo stesso ordine di $h$, allora $f$ ha lo stesso ordine di $h$
+ se $f$ ha un ordine superiore a $g$ e $g$ ha un ordine superiore a $h$, allora anche $f$ avrà un ordine superiore rispetto a $h$
+ se $f$ ha lo stesso ordine di $g$, ma $g$ ha un ordine superiore rispetto a $h$, allora anche $f$ avrà un ordine superiore rispetto ad $h$

Il seguente teorema, utile nelle applicazioni, riguarda somme e prodotti degli infiniti:

#definizione(title: "Teorema")[Consideriamo le funzioni $f$ e $g$ che tendono all'infinito simultaneamente in un punto $x_0$:
- se $f$ cresce più rapidamente di $g$, allora la somma o differenza $f plus.minus  g$ avrà lo stesso ordine di crescita di $f$
- il prodotto $f dot g$ avrà un ordine di crescita superiore rispetto a entrambi i singoli fattori]

Va notato che, sebbene $f$ e $g$ possano essere della stessa grandezza, la loro somma o differenza non è necessariamente infinita. Ad esempio, le funzioni $x$ e $2 - x$ tendono all'infinito nello stesso modo quando $x$ tende a più infinito, ma la loro somma è costante e pari a $2$, quindi non è infinita. Questo fenomeno evidenzia la differenza tra infiniti e infinitesimi, e il fatto che la somma di due infiniti può risultare in una forma indeterminata.

=== Ordine di infinito rispetto a un riferimento

#definizione(title: "Infinito di riferimento", label: <def-infinito-riferimento>)[Considerando $f$ e $g$ come infiniti simultanei in $x_0$, diciamo che $f$ ha ordine $alpha > 0$ rispetto a $g$ se $f$ e $|g|^alpha$ hanno la stessa crescita, ovvero:

$ lim_(x -> x_0) (|f(x)|) / (|g(x)|^alpha) = l > 0 $

In questo contesto, $g$ è considerato un infinito di riferimento.]

#esempio[
- La funzione $1 / (ln x)$ ha ordine uno rispetto a $1 / (x - 1)$ quando $x$ tende a $1$
- La funzione $e^(2x)$ ha ordine due rispetto a $e^x$ quando $x$ tende a più infinito
]

Come avviene con gli infinitesimi, non esiste un infinito di riferimento universale con cui confrontare tutti gli altri infiniti, per ragioni simili. Un utile teorema riguarda le operazioni matematiche come somma, prodotto, potenza e divisione:

#definizione(title: "Teorema sulle operazioni fra infiniti simultanei", label: <def-operazioni-infiniti-simultanei>)[Supponiamo $f$ e $g$ siano due infiniti simultanei con ordini $alpha$ e $beta$ rispettivamente rispetto allo stesso riferimento:
- se $alpha > beta$, allora $f plus.minus  g$ avrà ordine $alpha$, sempre rispetto allo stesso riferimento
- il prodotto $f dot g$ ha un ordine pari alla somma $alpha + beta$
- la potenza $|f|^gamma$ ha ordine $alpha dot gamma$
- se $alpha > beta$, il quoziente $f/g$ mantiene una natura infinita con ordine $alpha - beta$]

=== Principio di sostituzione degli infiniti

Questo teorema è essenziale nel calcolo dei limiti:

#definizione(title: "Principio di sostituzione degli infiniti", label: <def-principio-sostituzione-infiniti>)[Consideriamo $f_1, f_2, g_1, g_2$ come infiniti simultanei in $x_0$, sapendo che $f_2$ ha un ordine inferiore rispetto a $f_1$ e $g_2$ rispetto a $g_1$, o che $f_2$ e $g_2$ sono limitate. Esaminiamo questi limiti:

$ lim_(x -> x_0) (f_1(x) + f_2(x)) / (g_1(x) + g_2(x)), quad lim_(x -> x_0) (f_1(x)) / (g_1(x)) $

Se uno di questi limiti esiste, allora esiste anche l'altro ed entrambi sono uguali.

#dimostrazione()
Simile alla sostituzione degli infinitesimi, con l'osservazione che il rapporto tra una funzione limitata e un infinito tende a zero.

In sostanza, nel calcolo del limite del rapporto tra somme di due infiniti si possono ignorare al numeratore e al denominatore gli infiniti di ordine inferiore.]

#esempio[Calcolare:

$ lim_(x -> +oo) (e^x + ln x + sin x + x^2) / (x^2 + cos x - sqrt(x)) $

Osserviamo che $ln x$ ha un ordine inferiore rispetto a $x^2$, quindi $ln x + x^2$ condivide lo stesso ordine di crescita con $x^2$. L'aggiunta di $sin x$ non influisce perché $sin x$ è limitata. Pertanto, $ln x + x^2 + sin x$ rimane allo stesso ordine di crescita di $x^2$, che è più lento rispetto a $e^x$. Al denominatore, $x^2$ ha ordine due rispetto a $x$, mentre $sqrt(x)$ ha un ordine di mezzo. Così $cos x - sqrt(x)$ ha un ordine minore di $x^2$. Si deduce quindi:

$ lim_(x -> +oo) e^x / x^2 = +oo, $

poiché $e^x$ cresce più rapidamente di $x^2$.]
//
===  Ordine rispetto a un campione

Richiamiamo la definizione per determinare l'ordine di un infinitesimo o di un infinito rispetto a un campione.

#definizione(title: "Ordine rispetto a un campio", label: <def-ordine-campione>)[Date le funzioni $f$ e $g$ che rappresentano infinitesimi o infiniti simultanei in un punto $x_0$, se esiste un $alpha > 0$ tale che

$ lim_(x -> x_0) (|f(x)|) / (|g(x)|^alpha) = l > 0 $

allora si dice che $f$ ha ordine $alpha$ rispetto a $g$, con $g$ considerata come il campione. È importante notare che l'ordine dipende dal campione scelto.] 

#esempio[La funzione $f(x) = 1 - cos x$ è infinitesima di ordine $2$ in $0$ rispetto a $x$, mentre ha un ordine di $2/3$ rispetto a $sin^3 x$. Infatti:

$ lim_(x -> 0) (|1 - cos x|) / (|x|^2) = 1/2 > 0 $

e

$ lim_(x -> 0) (|1 - cos x|) / (|sin^3 x|^(2/3)) = lim_(x -> 0) (|1 - cos x|) / (|sin^2 x|) = 1/2 > 0 $]

Secondo il teorema sul limite del modulo di una funzione, se esiste il limite

$ lim_(x -> x_0) (f(x)) / (g(x)^alpha) = m != 0 $

allora esiste anche il limite (come definito precedentemente) e si ha $l = |m|$. Tuttavia, questo limite potrebbe non avere senso (ad esempio, con $alpha$ non intero e $g(x) < 0$) o potrebbe non esistere pur ammettendo che l'altro esista. Pertanto, è possibile ragionare senza valore assoluto se tutto è coerente; altrimenti, occorre considerare il valore assoluto conforme alla definizione.

In alcuni casi, tuttavia, questa definizione non consente di assegnare un ordine a un infinitesimo o infinito rispetto a un certo campione. Esaminiamo alcuni esempi.

#esempio[Le funzioni $f(x) = e^x$ e $g(x) = x$ sono infinite quando $x$ tende a $+oo$, ma non esiste un ordine di $f$ rispetto a $g$ (o viceversa). Infatti,

$ lim_(x -> +oo) e^x / x^alpha = +oo quad text("per ogni") alpha in RR^+ $

Si può affermare che $e^x$ è un infinito di ordine superiore a $x^alpha$ per ogni $alpha$ rispetto a $x$, spesso descritto come avente un ordine soprareale in $+oo$ rispetto a $x$. Può anche avere un ordine diverso rispetto a un altro campione, ad esempio possiede ordine $1/2$ rispetto al campione $e^(2x)$.
][
Per le funzioni $f(x) = ln x$ e $g(x) = x$, entrambi sono infiniti quando $x$ tende a $+oo$, ma non esiste ordine tra questi. Infatti,

$ lim_(x -> +oo) (ln x) / x^alpha = 0 quad text("per ogni") alpha in RR^+ $

Ciò indica che $ln x$ è un infinito di ordine inferiore a $x^alpha$ per qualsiasi $alpha$ rispetto a $x$, noto come avente ordine sottoreale in $+oo$ rispetto a $x$. Tuttavia, può avere un diverso ordine rispetto a un altro campione; ad esempio possiede ordine $1$ rispetto al campione $ln(x^2)$.
][
Consideriamo le funzioni $f(x) = e^(-x)$ e $g(x) = 1/x$, che sono infinitesime quando $x$ tende a $+oo$. Nessun ordine esiste fra questi:

$ lim_(x -> +oo) e^(-x) / (1/x)^alpha = lim_(x -> +oo) x^alpha e^(-x) = 0 quad text("per ogni") alpha in RR^+. $

Questo significa che $e^(-x)$ è infinitesimo di ordine superiore a $(1/x)^alpha$ per qualunque $alpha$ rispetto a $1/x$, descritto come avente ordine soprareale in $+oo$ rispetto a $1/x$.
][
Le funzioni $f(x) = x ln x$ e $g(x) = x$ sono infinitesime in $0$ (con il limite destro per $f$ in $0$). Nessun ordine è stabilito tra queste:

$ lim_(x -> 0^+) (x ln x) / x^alpha = lim_(x -> 0^+) x^(1 - alpha) ln x $

Osserviamo che:
- se $0 < alpha < 1$, è un limite fondamentale (forma $0 dot oo$), risultando in $0$
- se $alpha = 1$, coincide col limite di $ln x$ in $0^+$, che vale $-oo$
- se $alpha > 1$, si ottiene la forma $+oo dot (-oo)$ e quindi il limite è $-oo$
]
//
Possiamo esprimere il concetto affermando che $x ln x$, per $x -> 0$, è infinitesimo di ordine superiore rispetto a $x^alpha$ per ogni $alpha < 1$ e di ordine inferiore rispetto a $x^alpha$ per ogni $alpha >= 1$. Si può anche dire che $x ln x$, per $x -> 0$, ha un ordine superiore a qualsiasi valore reale inferiore a $1$ e inferiore a qualunque reale maggiore o uguale a $1$, in relazione a $x$. La cautela necessaria deriva dal fatto che tali reali non esistono. Si dice che un infinitesimo come questo ha un ordine infrareale in $0$ rispetto all'infinitesimo campione $x$. Al di là dei termini usati, bisogna ricordare che la ricerca dell'ordine di un infinito o infinitesimo rispetto a un campione non ha sempre soluzione.

==== Campioni standard 

Spesso si decide tacitamente di considerare alcuni infiniti o infinitesimi come campioni "standard" e, senza ulteriori specificazioni, si sottintende che l'ordine sia riferito a questi. In particolare:
- per $x -> plus.minus oo$, l'infinito campione è $x$, e l'infinitesimo campione è $1/x$
- per $x -> x_0$, l'infinito campione è $1 / (x - x_0)$, e l'infinitesimo campione è $x - x_0$

È importante fare attenzione al testo degli esercizi, verificando se è stato scelto un campione diverso.

==== Infiniti e infinitesimi in diversi punti

Una funzione può essere infinita o infinitesima in corrispondenza di diversi punti. Ad esempio, la funzione $f(x) = x(x - 1)(x - 2) ... (x - n)$ è infinitesima nei naturali $0, 1, 2, ..., n$. È importante notare che la stessa funzione può essere infinita o infinitesima di ordine diverso rispetto ai campioni standard in punti diversi (ovviamente i campioni standard cambiano da punto a punto). Ad esempio, la funzione $f(x) = (x - 1)^3 (x - 2)^5$ è infinitesima di ordine $3$ rispetto al campione $x - 1$ in $1$, e infinitesima di ordine $5$ rispetto al campione $x - 2$ in $2$.

== Polinomi di Taylor e convessità

=== Derivate successive

Se una funzione è derivabile in un insieme $A$, come osservato, possiamo considerare la funzione derivata $f': A -> RR$ e chiedersi se essa stessa sia ulteriormente derivabile (eventualmente in un sottoinsieme di $A$). Se sì, indicheremo la nuova funzione risultante come derivata seconda e così via, finché possibile. Le funzioni ottenute sono chiamate derivate successive e sono indicate con i simboli $ f'', f''', f^(i v), ..., f^((n)) $

L'esistenza della derivata seconda richiede come condizione necessaria la continuità della derivata prima, e così via per le derivate successive. Può accadere che una funzione sia derivabile ma la sua derivata non sia continua, oppure che sia continua ma non ulteriormente derivabile, analogamente per le derivate successive.

#definizione(title: "Classe di una funzione", label: <def-classe-funzione>)[Una funzione si dice di classe $C^n$ se è derivabile fino alla derivata $n$-esima e quest'ultima è continua (naturalmente le derivate precedenti sono continue perché derivabili). Se la funzione è semplicemente continua, si dice di classe $C^0$.]

=== Approssimazioni lineari e polinomiali

Il teorema in @def-funzione-derivabile ci indica che se una funzione è derivabile in un punto $x_0$, esiste una funzione $omega(h)$ tale che:

$ f(x_0 + h) - f(x_0) = f'(x_0)h + h omega(h) $

dove

$ lim_(h -> 0) omega(h) = 0 $

Se sostituiamo $x - x_0$ a $h$, otteniamo:

$ f(x) = f(x_0) + f'(x_0)(x - x_0) + (x - x_0) omega(x - x_0) $ <eq-approssimazioni1>

con

$ lim_(x -> x_0) omega(x - x_0) = 0 $

Utilizzando la notazione degli infinitesimi, $omega(x - x_0)$ risulta infinitesima in $x_0$ e $(x - x_0) omega(x - x_0)$ è infinitesima di ordine superiore rispetto a $x - x_0$. Considerando $y = f(x_0) + f'(x_0)(x - x_0)$, possiamo interpretare la formula sopraindicata così: una funzione derivabile in un punto $x_0$ può essere approssimata dalla sua retta tangente. Questo perché i valori della funzione si discostano da quelli sulla retta tangente solo per un infinitesimo di ordine superiore a $x - x_0$. Questa lettura ci permette di dire che la retta tangente è l'approssimazione lineare della funzione in quel punto.

#grafico_derivate11

La questione che emerge è se possiamo trovare approssimazioni migliori della funzione $f$ nell'intorno di $x_0$, utilizzando polinomi semplici. La risposta è spesso affermativa e porta all'uso dei polinomi di Taylor.

Per costruire polinomi approssimanti di grado superiore al primo, consideriamo una funzione polinomiale, ad esempio di quarto grado, e analizziamo la situazione vicino a $0$:

$ f(x) = a_4 x^4 + a_3 x^3 + a_2 x^2 + a_1 x + a_0 $

Calcoliamo il polinomio e le sue derivate successive in $0$:

$ &f(x) = a_4 x^4 + a_3 x^3 + a_2 x^2 + a_1 x + a_0 &=> &f(0) = a_0 = 0! a_0 \ 
  &f'(x) = 4 a_4 x^3 + 3 a_3 x^2 + 2 a_2 x + a_1 &=> &f'(0) = a_1 = 1! a_1 \ 
  &f''(x) = 12 a_4 x^2 + 6 a_3 x + 2 a_2 &=> &f''(0) = 2 a_2 = 2! a_2 \ 
  &f'''(x) = 24 a_4 x + 6 a_3 &=> &f'''(0) = 6 a_3 = 3! a_3 \ 
  &f^(i v)(x) = 24 a_4 &=> &f^(i v)(0) = 24 a_4 = 4! a_4 $

Procedendo per induzione, per un polinomio di grado $n$ avremo:

$ f^((p))(0) = p! a_p, quad forall p <= n, quad f^((q))(x) equiv 0, quad forall q > n $

Da cui segue:

$ a_p = (f^((p))(0)) / (p!), quad forall p <= n $

Se scegliamo un punto diverso da $0$, il procedimento è simile ma con calcoli leggermente più complessi. 

#esempio[Prendendo come esempio $f(x) = 2x^3 + x$ e $x_0 = 1$, vogliamo esprimere il polinomio nella forma:

$ f(x) = a_3(x - 1)^3 + a_2(x - 1)^2 + a_1(x - 1) + a_0 $

Possiamo utilizzare il metodo delle divisioni successive. Dividendo $2x^3 + x$ per $x - 1$ otteniamo il quoziente $2x^2 + 2x + 3$ e il resto $3$:

$ 2x^3 + x = (x - 1)(2x^2 + 2x + 3) + 3 $

Ripetendo la divisione del quoziente $2x^2 + 2x + 3$ per $x - 1$ otteniamo:

$ 2x^2 + 2x + 3 = (x - 1)(2x + 4) + 7 $

Infine dividendo $2x + 4$ per $x - 1$ si ottiene $2$ come quoziente e $6$ come resto, ovvero:

$ 2x + 4 = 2(x - 1) + 6 $

Procedendo a ritroso con le sostituzioni si può ottenere la seguente scrittura del polinomio dato:

$ 2x^3 + x = 2(x - 1)^3 + 6(x - 1)^2 + 7(x - 1) + 3 = \ = a_3(x - 1)^3 + a_2(x - 1)^2 + a_1(x - 1) + a_0 $

A questo punto, procedendo esattamente come prima, si trova che:

$ a_3 = (f'''(1)) / (3!), quad a_2 = (f''(1)) / (2!), quad a_1 = (f'(1)) / (1!), quad a_0 = (f(1)) / (0!) $]

//
=== Polinomio di Taylor di una funzione

Considerando quanto detto riguardo ai polinomi, emerge la possibilità di migliorare l'approssimazione lineare data dalla formula @eq-approssimazioni1, sostituendola con un polinomio di grado superiore, espresso come:

$ (f(x_0)) / (0!) + (f'(x_0)) / (1!) (x - x_0) + (f''(x_0)) / (2!) (x - x_0)^2 + ... + (f^((n))(x_0)) / (n!) (x - x_0)^n $

in modo che la differenza tra la funzione e questo polinomio sia del tipo:

$ (omega(x - x_0)) / (n!) (x - x_0)^n,  quad lim_(x -> x_0) omega(x - x_0) = 0 $

Questo polinomio, utilizzabile per funzioni derivabili $n$ volte nel punto $x_0$, è noto come polinomio di Taylor di ordine $n$ della funzione $f$ rispetto al punto $x_0$, indicato con $T_(n, x_0)$, formulato come:

$ script(T_(n, x_0)(x) = (f(x_0)) / (0!) + (f'(x_0)) / (1!) (x - x_0) + (f''(x_0)) / (2!) (x - x_0)^2 + ... + (f^((n))(x_0)) / (n!) (x - x_0)^n) $

Il teorema seguente fornisce le condizioni sufficienti affinché il polinomio $T_(n, x_0)$ assuma le proprietà desiderate.

#definizione(title: "Formula di Taylor-Peano", label: <def-formula-taylor-peano>)[Sia $f$ una funzione definita nell'intervallo $I = ]a, b[$, e sia $x_0$ un punto di $I$. Supponiamo che esista la derivata $(n-1)$-esima di $f$ per ogni $x in I$, e che in $x_0$ esista anche la derivata di ordine $n$. In queste ipotesi, esiste una funzione $omega(x - x_0)$ tale che per ogni $x in I$:

$ f(x) - T_(n, x_0)(x) = (omega(x - x_0)) / (n!) (x - x_0)^n $

con $lim_(x -> x_0) omega(x - x_0) = 0$.

#dimostrazione()
Si deve provare che:

$ lim_(x -> x_0) (n! (f(x) - T_(n, x_0)(x))) / (x - x_0)^n = 0 $

ovvero che:

$ lim_(x -> x_0) (f(x) - T_(n, x_0)(x)) / (x - x_0)^n = 0 $

Poiché:

$ resize((f(x) - ( (f(x_0)) / (0!) + (f'(x_0)) / (1!) (x - x_0) + ... + (f^((n-1))(x_0)) / ((n-1)!) (x - x_0)^(n-1) )) / (x - x_0)^n - (f^((n))(x_0)) / (n!) = \ = (f(x) - T_(n, x_0)(x)) / (x - x_0)^n) $

basterà provare che:

$ resize(lim_(x -> x_0) (f(x) - ( (f(x_0)) / (0!) + (f'(x_0)) / (1!) (x - x_0) + ... + (f^((n-1))(x_0)) / ((n-1)!) (x - x_0)^(n-1) )) / (x - x_0)^n = \ = (f^((n))(x_0)) / (n!)) $

Se $n = 1$, ciò è ovvio per definizione di derivata. Se $n > 1$, si può applicare il teorema di l'Hôpital al limite del primo membro e procedere con il calcolo del limite:

$ resize(lim_(x -> x_0) (f'(x) - ( f'(x_0) + (f''(x_0)) / (1!) (x - x_0) + ... + (f^((n-1))(x_0)) / ((n-2)!) (x - x_0)^(n-2) )) / (n (x - x_0)^(n-1))) $

Applicando ripetutamente il teorema di l'Hôpital per calcolare le derivate fino all'$(n-1)$-esima, si giunge al calcolo del limite:

$ lim_(x -> x_0) (f^((n-1))(x) - f^((n-1))(x_0)) / (n! dot (x - x_0)) $

che è uguale a:

$ (f^((n))(x_0)) / (n!) $

secondo la definizione della derivata $n$-esima. Il teorema dimostrato si riassume nella formula di Taylor:

$ resize(f(x) = f(x_0) + (f'(x_0)) / (1!) (x - x_0) + ... + (f^((n))(x_0)) / (n!) (x - x_0)^n + omega(x - x_0)) $

dove l'ultimo termine rappresenta l'errore nel rappresentare la funzione con il polinomio di Taylor ed è anche noto come termine complementare o resto. Questa formula è chiamata formula di Taylor con il termine complementare di Peano.]

Il termine complementare è proporzionale a $(x - x_0)^n$ ed è un infinitesimo che decresce più rapidamente di $(x - x_0)^n$ quando $x$ tende a $x_0$. Questo è cruciale in varie applicazioni, pur fornendo poche informazioni sui valori del termine infinitesimo al di fuori di $x_0$.

Consideriamo un esempio per utilizzare questa formula nel calcolo dei limiti.

#esempio[Calcolare il limite:

$ lim_(x -> 0) (x - sin x) / x^3 $

Utilizzando la formula di Taylor di terzo ordine per la funzione seno:

$ sin x = x - x^3 / (3!) + omega(x) dot x^3 $

si ottiene:

$ lim_(x -> 0) (x - sin x) / x^3 = lim_(x -> 0) (x - x + x^3 / (3!) - omega(x) dot x^3) / x^3 = lim_(x -> 0) (x^3 / (3!) - omega(x) dot x^3) / x^3 $

Poiché $omega(x)$ tende a zero più rapidamente di $x^3$, il limite risulta essere semplicemente $1/6$.

Il polinomio di Taylor di ordine $3$ è quindi:

$ T_(3,0)(x) = x - x^3 / (3!) $

Nella figura @grafico_derivate12 sono presenti i grafici di $sin x$, $T_(3,0)(x)$ e $T_(17,0)(x)$. Poiché la funzione $sin x$ è periodica, è evidente che quest'ultimo risulti ottimizzato per approssimare $sin x$ nell'intervallo $[0, 2 pi]$, si dimostra utile per i calcoli sulla funzione seno. Considerando che in realtà basterebbe conoscere i valori della funzione seno solo nell'intervallo $[0, pi/2]$, appare chiaro che si potrebbero utilizzare polinomi ancora più semplici. Già un polinomio di terzo grado inizia a fornire una buona approssimazione.

#grafico_derivate12

]

In ulteriori applicazioni, valutare l'errore massimo tra una funzione e il suo polinomio di Taylor diventa cruciale, ma la formula di Taylor-Peano non fornisce stime precise sull'errore massimo. In seguito seguiranno formule più adatte per scopi specifici. È importante notare che non tutte le funzioni si comportano come la funzione seno; esempi classici dimostrano comportamenti differenti.

#esempio[Consideriamo la funzione $f(x)$ definita come segue:

$ f(x) = cases(e^(-1/x^2)\, quad &x != 0, 0\, quad &x = 0) $

Si può dimostrare con un certo impegno che questa funzione è derivabile su tutto $RR$ e che tutte le sue derivate, indipendentemente dall'ordine, sono nulle in corrispondenza dell'origine. Ne consegue che il polinomio di Taylor di qualunque ordine, con punto iniziale $0$, risulta sempre essere il polinomio identicamente nullo. È evidente quindi che questo polinomio nullo non costituisce una buona approssimazione "globale" della funzione. Il grafico in @grafico_derivate13 illustra come l'approssimazione sia visibilmente accettabile solo nei pressi dell'origine, poiché il polinomio di Taylor coincide con l'asse $x$.

#grafico_derivate13

Anche in casi molto più semplici si verificano situazioni analoghe in cui i polinomi di Taylor, pur essendo di ordini elevati, non offrono un'approssimazione valida su intervalli arbitrari del dominio. Il grafico successivo riguarda la funzione $f(x) = 1 / (1 + x^2)$ (linea continua) e il suo polinomio di Taylor di ordine $22$ all'origine (in tratteggio). Indipendentemente dall'aumento dell'ordine, il polinomio non riesce a fornire un'approssimazione accettabile al di fuori dell'intervallo $[-1, 1]$.

#grafico_derivate14

]

Passiamo ora al teorema annunciato, che presenteremo senza dimostrazione e che permette di valutare l'entità dell'errore che si commette approssimando una funzione con un suo polinomio di Taylor.

#definizione(title: "Formula di Taylor-Lagrange", label: <def-formula-taylor-lagrange>)[Sia $f$ una funzione definita su un intervallo $I = ]a, b[$ e sia $x_0$ un punto in $I$. Supponiamo che per ogni $x$ in $I$ esista una derivata continua di ordine $n$ e che la derivata di ordine $n + 1$ esista almeno in tutti i punti di $I without {x_0}$. Allora esiste almeno un punto $c$, compreso tra $x_0$ e $x$ o tra $x$ e $x_0$, tale che per ogni $x$ in $I$ si ha:

$ f(x) - T_(n, x_0)(x) = (f^((n+1))(c)) / ((n + 1)!) (x - x_0)^(n+1) $]

Sotto le ipotesi del teorema, è possibile scrivere la seguente formula:

$ resize(f(x) = (f(x_0)) / (0!) + (f'(x_0)) / (1!) (x - x_0) + ... + (f^((n))(x_0)) / (n!) (x - x_0)^n + (f^((n+1))(c)) / ((n + 1)!) (x - x_0)^(n+1)) $

nota come formula di Taylor con punto iniziale $x_0$ e ordine $n$, comprensiva del termine complementare di Lagrange. Se $n = 0$, la formula si riduce al Teorema di Lagrange:

$ f(x) = (f(x_0)) / (0!) + (f'(c)) / (1!) (x - x_0) $

o in forma semplificata:

$ (f(x) - f(x_0)) / (x - x_0) = f'(c) $

Vediamo ora un esempio di come utilizzare questa formula per calcoli approssimati, includendo una valutazione della precisione dell'approssimazione, fondamentale nelle applicazioni pratiche.

#esempio[Calcoliamo $sin(1)$ utilizzando il polinomio di Taylor di ordine $5$ della funzione seno con punto iniziale $0$, valutando l'errore massimo associato a tale approssimazione. 

Si consideri che la funzione seno e tutte le sue derivate pari sono nulle all'origine, mentre le derivate dispari assumono alternativamente i valori $1$ e $-1$. Si ottiene facilmente:

$ sin x = x - x^3 / (3!) + x^5 / (5!) - (cos c) / (7!) x^7 $

dove $c$ è un numero compreso tra $0$ e $1$; dunque l'errore che si commette trascurando il termine complementare risulta essere, in modulo, inferiore a $1/7!$. Si prosegue con le derivate fino alla settima, tenendo conto che la sesta derivata all'origine è nulla.

Dunque, nel calcolare il seno di $1$ utilizzando una serie di Taylor, otteniamo $ sin 1 approx 1 - 1/6 + 1/120 = 101/120 $

con un errore inferiore a $1/5040$. 

Verificando approssimativamente con una calcolatrice si ha che $101/120$ è circa $0.8416$, mentre $sin 1$ risulta essere $0.84147098480789650665$, dimostrando l'efficacia della formula di Taylor-Lagrange nel valutare la precisione dei polinomi di Taylor.]

=== Polinomi di Tayloer per funzioni elementari

Ora proponiamo una raccolta di polinomi di Taylor per alcune funzioni elementari, partendo da zero, incoraggiando il lettore a ricavarli come esercizio utile. In alcuni casi è anche indicata l'entità dell'errore, data dall'approssimazione con il polinomio. Naturalmente esiste un punto $c$ compreso tra $0$ e $x$ o viceversa. Ecco alcuni casi che meritano menzione:

#tabella_derivate1

=== Concavità e convessità di un intervallo

In merito alla concavità e convessità nell'intervallo, 

#definizione(title: "Insieme convesso", label: <def-insieme-convesso>)[Un insieme convesso è un sottoinsieme (di $RR$, $RR^2$, $RR^3$) in cui, se contiene due punti, comprende anche il segmento che li collega.]

Ad esempio, gli intervalli sono gli unici sottoinsiemi convessi in una retta, mentre nel piano gli angoli e i cerchi rientrano nella categoria dei sottoinsiemi convessi.

#definizione(title: "Sopragrafico", label: <def-sopragrafico>)[Per funzioni $f: I -> RR$, dove $I$ è un intervallo, si definisce il sopragrafico di $f$ come l'insieme dei punti $P(x, y)$ nel piano con $ x in I, quad y >= f(x) $

ovvero i punti sopra il grafico di $f$. Analogamente si definisce il sottografico.]

#definizione(title: "Funzione convessa", label: <def-funzione-covessa>)[Una funzione $f$ si dice convessa se il suo sopragrafico è convesso e concava se lo è il suo sottografico. Un sinonimo di funzione convessa è "funzione che volge la concavità verso l'alto" e per funzione concava "funzione che volge la concavità verso il basso".]

La condizione di convessità su un intervallo è piuttosto restrittiva: una funzione convessa in un aperto#footnote[#box[Bisogna prestare attenzione che anche se l'intervallo è chiuso, una funzione convessa potrebbe non essere continua; per esempio, basta considerare la funzione: 
$ f(x) = cases(3\, quad &x = plus.minus 1, |x|\, quad &- 1 < x < 1) $]] è sempre continua e ha derivate laterali in ogni punto dell'intervallo; la derivata sinistra è minore o uguale alla derivata destra. Qui focalizziamo su condizioni sufficienti per stabilire la convessità, precedute dalla seguente osservazione.

Per determinare la convessità di una funzione, è sufficiente dimostrare che il segmento che connette due punti qualsiasi del suo grafico si trova interamente sopra il grafico della funzione. Questo si esprime dicendo che, se $x_1$ e $x_2$ sono due punti qualsiasi del dominio $I$ (un intervallo) della funzione, la retta fra i punti $(x_1, f(x_1))$ e $(x_2, f(x_2))$ segue l'equazione:

$ y = f(x_1) + (f(x_2) - f(x_1)) / (x_2 - x_1) (x - x_1) $

Di conseguenza, la condizione di convessità si esprime come segue: 

$ forall x in ]x_1, x_2[, quad f(x) <= f(x_1) + (f(x_2) - f(x_1)) / (x_2 - x_1) (x - x_1) $ <eq-condizione-convessita>

Se questa disuguaglianza è stretta, la funzione è definita strettamente convessa.

#definizione(title: "Teorema")[Consideriamo un intervallo $I$ e una funzione $f: I -> RR$ derivabile due volte in $I$. Se la derivata seconda $f''(x)$ è maggiore o uguale a zero in ogni punto interno di $I$, allora la funzione è convessa in $I$; se $f''(x)$ è minore o uguale a zero, allora è concava in $I$.

#dimostrazione()
Per provare la convessità, dobbiamo dimostrare la relazione @eq-condizione-convessita per $x_1 < x < x_2$, ovvero che:

$ (f(x) - f(x_1))(x_2 - x_1) - (f(x_2) - f(x_1))(x - x_1) <= 0 $

Questa relazione viene semplificata e riscritta usando il teorema di Lagrange. Otteniamo che $ resize(f(x) - f(x_1) = f'(c_1)(x - x_1), quad f(x_2) - f(x) = f'(c_2)(x_2 - x), quad c_1 < c_2) $

Da ciò segue che l'ultimo termine diventa $ (f'(c_1) - f'(c_2))(x - x_1)(x_2 - x) $

e usando Lagrange otteniamo $ f'(c_1) - f'(c_2) = f''(c)(c_1 - c_2) $

Sostituendo nella formula originale, otteniamo che il risultato è dato da:

$ f''(c)(c_1 - c_2)(x - x_1)(x_2 - x) $

Poiché i fattori sono rispettivamente positivo, negativo, positivo e positivo, ne consegue che il prodotto è negativo, dimostrando così la condizione di convessità.]

=== Proprietà locali del secondo ordine

Nello studio delle proprietà locali di una funzione, confrontiamo i valori attorno a un punto con il valore al punto stesso. Supponiamo ora che una funzione sia derivabile in un punto $x_0$ e confrontiamo i valori della funzione attorno a $x_0$ con quelli della retta tangente in quel punto.

#definizione(title: "Funzione localmente convessa o concava", label: <def-funzione-localmente-convessa>)[Una funzione definita in un intervallo $I$ e derivabile in un punto $x_0$ di $I$ si dice (localmente) convessa [(localmente) concava] in $x_0$ se esiste un intorno di $x_0$ tale che in ogni suo punto valga:

$ f(x) >= f(x_0) + f'(x_0)(x - x_0) quad [f(x) <= f(x_0) + f'(x_0)(x - x_0)] $

Se le disuguaglianze sono strette per $x != x_0$, la funzione è detta strettamente convessa o concava.]

//
#definizione(title: "Flesso", label: <def-flesso>)[Consideriamo una funzione $f$ definita in un intervallo $I$, che sia derivabile in un punto $x_0$ di $I$. Se esiste un intorno $U_(x_0)$ tale che:
$ x < x_0: f(x) < f(x_0) + f'(x_0)(x - x_0), \ x > x_0: f(x) > f(x_0) + f'(x_0)(x - x_0) $
oppure
$ x < x_0: f(x) > f(x_0) + f'(x_0)(x - x_0), \ x > x_0: f(x) < f(x_0) + f'(x_0)(x - x_0) $

allora il punto $x_0$ è detto punto di flesso per la funzione $f$.]

È chiaro che se una funzione è derivabile e convessa in un intervallo, essa risulta essere (localmente) convessa in ogni punto di tale intervallo. Tuttavia, può accadere che una funzione sia convessa in un punto specifico senza esserlo in un intorno di quel punto, come verrà illustrato con alcuni esempi. È anche evidente che se un punto $x_0$ interno a $I$, dove la funzione è derivabile, rappresenta un estremo condiviso tra due intervalli in cui la funzione è convessa in uno e concava nell'altro, oppure viceversa, allora $x_0$ è un flesso.

Per quanto riguarda la convessità locale, vale il seguente teorema.

#definizione(title: "Teorema")[Se una funzione è due volte derivabile in un intervallo $I$ e $x_0$ è un punto interno a $I$, allora:

1. se la seconda derivata $f''(x_0) > 0$, la funzione è convessa in $x_0$;
2. se la seconda derivata $f''(x_0) < 0$, la funzione è concava in $x_0$;
3. se $x_0$ è un flesso, allora $f''(x_0) = 0$.

#dimostrazione()
Dimostriamo la prima proprietà utilizzando la formula di Taylor-Peano:

$ f(x) - [f(x_0) + f'(x_0)(x - x_0)] = (f''(x_0) + omega(x - x_0)) / (2!) (x - x_0)^2. $

Poiché

$ lim_(x -> x_0) (f''(x_0) + omega(x - x_0)) / (2!) = (f''(x_0)) / (2!) > 0, $

secondo il teorema della permanenza del segno, esiste un intorno $U_(x_0)$ in cui, tranne che in $x_0$, l'intera quantità $ (f''(x_0) + omega(x - x_0)) / (2!) > 0 $ ]

=== Condizioni sufficienti per massimi, minimi, flessi

Concludiamo questo capitolo con l'enunciato di due teoremi che forniscono condizioni sufficienti per l'esistenza di massimi, minimi e flessi, attraverso l'analisi delle derivate della funzione in un punto.

#definizione(title: "Teorema")[Sia $f$ una funzione definita in un intervallo aperto $I$, e sia $x_0$ un punto di $I$ dove $f'(x_0) = f''(x_0) = ... = f^((n-1))(x_0) = 0$, mentre $f^((n))(x_0) != 0$. Allora:

- se $n$ è pari, la funzione ha un massimo in $x_0$ (se $f^((n))(x_0) < 0$) o un minimo (se $f^((n))(x_0) > 0$)
- se $n$ è dispari, la funzione è crescente in $x_0$ (se $f^((n))(x_0) > 0$) o decrescente (se $f^((n))(x_0) < 0$)]

#definizione(title: "Teorema")[Sia $f$ una funzione definita in un intervallo aperto $I$ e sia $x_0$ un punto di $I$ dove $f''(x_0) = f'''(x_0) = ... = f^((n-1))(x_0) = 0$ mentre $f^((n))(x_0) != 0$. Allora:

- se $n$ è pari, la funzione è concava in $x_0$ (se $f^((n))(x_0) < 0$) o convessa (se $f^((n))(x_0) > 0$)
- se $n$ è dispari, la funzione ha un flesso in $x_0$]




















