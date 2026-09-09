#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Successioni e serie <successioni_serie>

#intro[
  L'analisi matematica affrontata finora si è concentrata su funzioni definite su intervalli continui della retta reale. In questo capitolo estenderemo tali strumenti al dominio discreto dei numeri naturali, introducendo le successioni e lo studio del loro comportamento asintotico. A partire da esse formalizzeremo il concetto di somma infinita tramite le serie numeriche e ne analizzeremo i criteri di convergenza. Infine, estenderemo queste nozioni alle serie di potenze, fornendo un fondamentale strumento per la rappresentazione e l'approssimazione delle funzioni tramite lo sviluppo in serie di Taylor.
]

== Successioni e sottosuccessioni

Tra le funzioni definite da $A subset.eq RR -> RR$, rivestono un particolare interesse quelle in cui $A$ è un sottoinsieme di $NN$, soprattutto se si tratta di un sottoinsieme infinito (e quindi superiormente illimitato) di $NN$.

Iniziamo introducendo la terminologia e la notazione specifiche per queste funzioni.

#definizione(title: "Successione", label: <def-successione>)[Consideriamo $A$ come un sottoinsieme infinito di $NN$; una funzione $a: A -> RR$ viene chiamata successione, o successione in $RR$.] 

Per questo tipo di funzioni si utilizzano generalmente, come già indicato nella definizione, le lettere $a, b$, e così via, al posto delle lettere $f, g$, ecc. Inoltre, l'immagine di un naturale $n$ tramite la funzione viene solitamente indicata con $a_n$ invece di $a(n)$. L'elemento $a_n$ è anche chiamato termine generale o termine $n$-esimo della successione. La successione si rappresenta spesso con una di queste notazion: $ (a_n)_(n in A) , quad (a_n)_n, quad (a_n) $

Quando esiste una specifica regola di calcolo per la successione, possiamo utilizzare anche la stessa notazione usata per le funzioni. Ad esempio, scrivendo $a_n = 1/n$ ci riferiamo alla successione che associa a ogni $n in NN^+$ il reciproco di $n$.

L'immagine della successione si indica, come per le funzioni, con $ {a_n | n in A subset.eq NN} $

Spesso, per descrivere una successione, si elencano esplicitamente i "primi" termini, cioè le immagini dei primi elementi del dominio, come nell'esempio seguente.

#esempio[La successione $a_n = 1/n$, con $n in NN^+$, può essere scritta come $ 1, 1/2, 1/3, 1/4, 1/5, dots $]

Una notazione di questo tipo può generare fraintendimenti e va usata con cautela, assicurandosi che il contesto sia chiaro. Ad esempio, scrivendo $3, 5, 7, dots$ ci si potrebbe riferire sia alla successione dei numeri primi dispari (dove il successivo è $11$), sia alla successione dei numeri dispari (dove il successivo è $9$).

Riguardo alla successione dei numeri primi $2, 3, 5, 7, 11, 13, dots$, è da notare che non esiste una formula per determinare quale sia l'immagine del $1000°$, ossia il millesimo numero primo; occorre consultare una tabella. In un certo senso, la funzione che associa a ogni numero naturale $n$ l'$n$-esimo numero primo non è una funzione elementare, sebbene il teorema di Euclide sull'infinità dei numeri primi ci assicuri che esiste l'$n$-esimo numero primo per ogni $n$.

#esempio[Consideriamo $ a_n = 1/(n - 2) $

Si tratta chiaramente di una successione definita in $NN backslash {2}$, con i primi termini $-1/2, -1, 1, 1/2, 1/3, dots$
  Volendo, potremmo anche considerarla una successione definita in $NN$ con la seguente definizione:
  $ a_n = cases(
    display(1/(n - 2))\, quad & n < 2,
    display(1/(n - 1))\, quad & n >= 2
  ) $
Tuttavia, solitamente questa opzione non è molto utile pur essendo logicamente importante perché permette di avere tutte le successioni con lo stesso dominio.
][
Consideriamo $ a_n = (-1)^n$ 

È una successione definita su tutto $NN$ i cui primi elementi sono $1, -1, 1, -1, 1, dots$
][
La successione $a_n = n!$ presenta i seguenti primi elementi: $1, 1, 2, 6, 24, 120, 720, dots$]

#definizione(title: "Sottosuccessione e coda", label: <def-sottosuccessione-coda>)[Dato un insieme $A$ con una funzione $a: A -> RR$, se $B$ è un sottoinsieme infinito di $A$, allora la restrizione della funzione $a$ all'insieme $B$ costituisce ancora una successione, nota come sottosuccessione. Se il sottoinsieme $B$ include tutti gli elementi di $A$ maggiori o uguali a un certo numero naturale $p$, questa viene denominata coda della successione o coda che inizia con $p$. ]

È importante non confondere una successione con il suo insieme immagine, proprio come non si dovrebbe confondere una funzione qualsiasi con il suo insieme immagine. Possiamo rappresentare graficamente una successione, così come possiamo farlo per una funzione da $RR$ in $RR$. Ad esempio, il grafico della successione $a_n = (-1)^n$, illustrato nella @grafico_successioni1, mostra un andamento oscillante tra $-1$ e $1$. 

#grafico_successioni1

Basandosi sul principio d'induzione (@logica), le successioni possono essere definite anche per ricorrenza, come nell'esempio seguente.

#esempio[La successione di Fibonacci è definita come:

$ cases(a_0 = 0, a_1 = 1, a_(n+2) = a_(n+1) + a_n) $

I primi termini della successione sono: $0, 1, 1, 2, 3, 5, 8, 13, 21, dots$

Anche per le successioni si possono introdurre le nozioni di successione crescente, decrescente e, più in generale, di successione monotona.]
#v(3em)

#definizione(title: "Teorema sulle successioni monotone", label: <def-teorema-successioni-monotone>)[Ogni successione monotona ammette sempre limite. In particolare, se una successione è crescente e limitata superiormente, allora converge e il suo limite coincide con l'estremo superiore dei suoi termini; se è crescente e non limitata superiormente, diverge a $+oo$.

Analogamente, se una successione è decrescente e limitata inferiormente, converge al suo estremo inferiore; se è decrescente e non limitata inferiormente, diverge a $-oo$.]

#definizione(title: "Proprietà definitivamente verificata", label: <def-proprieta-definitivamente-verificata>)[Una proprietà si dice definitivamente verificata per una successione se esiste un $p$ tale per cui la coda della successione che inizia con $p$ soddisfa la proprietà.] 

#esempio[- La successione $a_n = 1/(n - 2)$ è definitivamente decrescente, poiché la coda che inizia con $n = 3$ è decrescente
- La successione $a_n = 1 - ln n$ è definitivamente negativa, dato che la coda che inizia con $n = 3$ consiste interamente di numeri negativi]

== Limiti di successioni

Poiché le successioni sono particolari funzioni reali di variabile reale, ci si può chiedere se abbia senso per esse il concetto di limite. Siccome la definizione di limite richiede che il punto $x_0$ in cui si calcola il limite sia un punto di accumulazione del dominio della funzione, o nei casi illimitati uno dei simboli dell'infinito, ne deriva che per le successioni il concetto assume valore solo per $n -> +oo$ e non necessita di ulteriori precisazioni rispetto alla definizione data per le funzioni ordinarie. Dato che il limite si può calcolare solo verso $+oo$, spesso si scrive $ lim a_n $ piuttosto che la forma completa $ lim_(n -> +oo) a_n $

Per completezza riformuliamo comunque la definizione di limite adattandola al caso delle successioni ed esplicitandola in tutti i casi possibili.

//
#definizione(title: "Successioni convergenti, divergenti e indeterminate", label: <def-successioni-convergenti-divergenti-indeterminate>)[Consideriamo una successione $(a_n)$:

+ se $l in RR$, si dice che $lim a_n = l$ se, per ogni $epsilon > 0$, esiste un intero $overline(n)$ tale che per tutti gli $n > overline(n)$, si ha $|a_n - l| < epsilon$. Questo significa che la successione è contenuta definitivamente tra $l - epsilon$ e $l + epsilon$, per qualsiasi $epsilon > 0$. In tal caso, la successione si dice anche convergente.
+ se $l = +oo$, si dice che $lim a_n = l$ se per ogni $k in RR$, esiste un intero $overline(n)$ tale che per tutti gli $n > overline(n)$, si ha $a_n > k$. Ciò implica che la successione supera definitivamente $k$, qualunque sia $k$. In questo caso, la successione è vista come divergente a $+oo$ o positivamente divergente.
+ se $l = -oo$, si dice che $lim a_n = l$ se per ogni $k in RR$, esiste un intero $overline(n)$ tale che per tutti gli $n > overline(n)$, si ha $a_n < k$. Questo indica che la successione è al di sotto di $k$, qualunque sia $k$. In questa situazione, la successione è detta divergente a $-oo$ o negativamente divergente.
+ se $l = oo$, si dice che $lim a_n = l$ se per ogni $k in RR$, esiste un intero $overline(n)$ tale che per tutti gli $n > overline(n)$, si ha che il modulo $|a_n| > k$. Questo indica che, in termini di modulo, la successione è definitivamente maggiore di $k$, qualunque sia $k$.
+ nel caso in cui sia $l = oo$ senza considerare né $l = +oo$ né $l = -oo$, o se il limite non esiste, si dice che la successione è indeterminata.]

Non ha senso applicare il concetto di continuità alle successioni poiché il loro dominio è costituito esclusivamente da punti isolati, né tantomeno il concetto di derivata.

In molti casi pratici, una successione può essere facilmente vista come la restrizione ai numeri naturali (o a un suo sottoinsieme) di una funzione definita in un opportuno sottoinsieme di $RR$.

#esempio[La successione $a_n = 1/n$ può essere vista come la restrizione ai numeri naturali positivi della funzione definita in $RR backslash {0}$, cioè $f(x) = 1/x$.]

In altre situazioni, questo approccio non è facile o addirittura possibile.

Questa osservazione è importante per il calcolo dei limiti. Per le funzioni, esistono tecniche basate sul calcolo differenziale, cosa non utilizzabile con le successioni. Se è possibile calcolare il limite di queste funzioni a $+oo$, e questo limite esiste, esisterà anche il limite della successione secondo il teorema sul limite delle restrizioni. In caso contrario, non si potrà dire nulla riguardo al limite della successione.

#esempio[

Calcolare il limite
  $ lim n sin 1/n $
  La successione può essere vista come la restrizione ai numeri naturali positivi della funzione
  $ f(x) = x sin 1/x $
  Poiché
  $ lim_(x -> +oo) x sin 1/x = lim_(t -> 0) 1/t sin t = lim_(t -> 0) (sin t) / t = 1 $
  si conclude che anche $lim a_n = 1$.
][
Calcolare il limite di
  $ lim (sin(n pi) + 1) $
  Qui la successione può essere pensata come la restrizione ai numeri naturali della funzione
  $ f(x) = sin(pi x) + 1 $

La funzione, invece, non ha un limite quando $x$ tende a $+oo$, quindi non possiamo trarre conclusioni riguardo il limite della successione in questo modo. Tuttavia, poiché la successione è stabilmente uguale a $1$, ne segue che il suo limite sarà anch'esso $1$. Il grafico della @grafico_successioni2 evidenzia chiaramente questo comportamento.

#grafico_successioni2

]
Per quanto riguarda le successioni, restano validi i teoremi di unicità, confronto e permanenza del segno, oltre a tutti gli altri teoremi sull'algebra dei limiti già trattati per le funzioni. Spesso, calcolare i limiti delle successioni che non si riconducono facilmente al calcolo dei limiti di opportune funzioni o ai quali i teoremi sull'algebra dei limiti non sono applicabili può risultare complesso. Proponiamo un esempio per illustrare il metodo da seguire, sottolineando che esistono anche alcuni teoremi utili nella ricerca di soluzioni in casi di interesse pratico.

#esempio[Calcoliamo il seguente limite:

$ lim (n!)/n^n $

Risulta che:

$ 0 < (n!)/n^n = (1 dot 2 dot 3 dot dots dot (n-1) dot n)/(n dot n dot n dot dots dot n) = 1/n dot 2/n dot dots dot (n-1)/n < 1/n $

Quindi, applicando il teorema del confronto, possiamo dire che il limite richiesto è $0$.]

È chiaro dalla definizione che una successione e qualsiasi sua parte terminale si comportano allo stesso modo riguardo al limite. È inoltre evidente che se due sottosuccessioni diverse di una stessa successione hanno limiti diversi, allora la successione non può avere un limite. Questo è un criterio spesso utilizzato per dimostrare che una successione non ha limite. Un metodo spesso utilizzato consiste nel calcolare il limite dei termini corrispondenti solo ai valori pari di $n$ e quello corrispondente solo ai valori dispari di $n$; se i due limiti sono differenti, si conclude che il limite non esiste; se entrambi sono uguali a $l$, si può allora concludere che il limite della successione è effettivamente $l$: si potrebbe provare questo metodo come esercizio.

#esempio[La successione definita da $a_n = (-1)^n$ non ha limite perché la serie dei termini pari è costantemente uguale a $1$, dunque ha come limite $1$, mentre quella dei termini dispari ha come limite $-1$ poiché è costantemente $-1$.]

== Numero di Nepero //TODO sezione da rifare e rendere autonoma

Nella @limiti_continuita, abbiamo già accennato il numero di Nepero. Con gli strumenti appresi nei capitoli precendeti, possiamo procedere con la dimostrazione del teorema ad esso collegato.
#v(4em)
#definizione(title: "Teorema", label: <def->)[La successione $a_n = (1 + 1/n)^n$ è strettamente crescente e superiormente limitata. Pertanto, esiste finito il limite $lim_(n -> +oo) (1 + 1/n)^n = e$, con $2 < e < 3$.

#dimostrazione()

Sviluppiamo $a_n$ mediante la formula del binomio di Newton:

$ a_n = (1 + 1/n)^n = sum_(k=0)^n binom(n, k) 1/n^k = 1 + binom(n, 1) 1/n + binom(n, 2) 1/n^2 + ... + binom(n, n) 1/n^n $

Esplicitando i coefficienti binomiali e semplificando i fattori $n$, possiamo riscrivere ogni termine $k$-esimo:

$ resize(a_n = 1 + 1 + 1/(2!) (1 - 1/n) + 1/(3!) (1 - 1/n)(1 - 2/n) + ... + 1/(n!) (1 - 1/n)...(1 - (n-1)/n)) $

Confrontando la struttura di $a_n$ con quella di $a_(n+1)$, si osserva che ogni fattore del tipo $(1 - k/n)$ viene sostituito da $(1 - k/(n+1)) #v(2em)$, che è strettamente maggiore essendoci un sottrando più piccolo. Inoltre, la somma per $a_(n+1)$ contiene un addendo in più, anch'esso positivo. Segue che $a_n < a_(n+1)$ per ogni $n in NN^+$, ovvero la successione è strettamente crescente.

Poiché tutti i fattori del tipo $(1 - k/n)$ sono minori di $1$, possiamo maggiorare ciascun addendo:

$ a_n < 1 + 1 + 1/(2!) + 1/(3!) + ... + 1/(n!) $

Utilizzando la disuguaglianza $k! >= 2^(k-1)$ (valida per ogni $k >= 1$), otteniamo $1/(k!) <= 1/2^(k-1)$:

$ a_n < 1 + (1 + 1/2 + 1/2^2 + ... + 1/2^(n-1)) $

La somma tra parentesi è la somma parziale di una progressione geometrica di ragione $1/2$, che vale $2(1 - (1/2)^n) < 2$. Di conseguenza:

$ a_n < 1 + 2 = 3 $

Essendo crescente e limitata superiormente da $3$ (e dal basso da $a_1 = 2$), per il teorema sulle successioni monotone (@def-teorema-successioni-monotone) la successione ammette limite finito $e in ]2, 3]$.] 






 /* Tuttavia, una volta stabilito questo limite, si può anche calcolare:

$ lim_(n -> +oo) (1 + 1/n)^n $

e questo limite risulta essere il numero $e$ di Nepero.

In realtà, la dimostrazione si sviluppa in senso inverso: si valuta prima il limite della successione per poi passare a quello della funzione. Gli step di questa dimostrazione sono i seguenti:

- Si dimostra che la successione è strettamente compresa tra $2$ e $3$.
- Si prova che la successione è crescente.
- Dal teorema sul limite delle funzioni monotone, si conclude che il limite esiste ed è finito.
- Si mostra che il limite è un numero irrazionale, addirittura trascendente, indicato con "$e$".
- Attraverso procedimenti appropriati, ne viene calcolata un'approssimazione con un livello di precisione desiderato.

Alcuni di questi passaggi potrebbero costituire un ottimo esercizio, mentre altri (in particolare il quarto) sono decisamente più complessi e oltrepassano gli obiettivi di questo corso. In ogni caso, non approfondiremo ulteriormente il problema e invitiamo i lettori interessati a consultare un buon testo di analisi per ulteriori dettagli. */

//! arrivato fino a qui

== Serie numeriche

Le successioni numeriche di cui ci occuperemo in questo paragrafo sono costruite con un criterio che ci permette di estendere l'operazione di addizione a un numero infinito di addendi. Va notato fin dall'inizio che, sebbene ci riusciremo in qualche modo, queste somme di infiniti addendi non rispetteranno tutte le proprietà delle somme ordinarie, come la commutatività e l'associatività, che sono fondamentali nell'addizione tradizionale.

Affrontiamo un esempio per comprendere meglio il concetto. Consideriamo la rappresentazione decimale di un numero razionale, come $325.6432$. Sappiamo che questa scrittura può essere espressa in termini di potenze di $10$:

$ 325.6432 = 3 dot 10^2 + 2 dot 10^1 + 5 dot 10^0 + 6 dot 10^(-1) + 4 dot 10^(-2) + 3 dot 10^(-3) + 2 dot 10^(-4) $

Il punto decimale serve a separare i coefficienti delle potenze positive da quelle negative di $10$. Concentrandoci solo sulla parte decimale, possiamo riscriverla come:

$ 325.6432 = 325 + 6/10^1 + 4/10^2 + 3/10^3 + 2/10^4 $

In questo modo, la parte decimale è vista come la somma di un certo numero di frazioni (in questo caso, quattro).

La domanda successiva è: possiamo applicare questa idea ai numeri razionali con una rappresentazione decimale periodica? Ad esempio, ha senso scrivere:

$ 1.overline(3) = 1.333dots = 1 + 3/10^1 + 3/10^2 + 3/10^3 + 3/10^4 + dots ? $

La risposta è no, poiché non sappiamo come gestire una "somma di infiniti addendi" in questo contesto.

Ora intendiamo sviluppare una teoria rigorosa per dare senso a questa idea: la teoria delle serie numeriche, trattando solo i concetti essenziali.

Supponiamo di avere una successione $(a_n)_(n in NN)$ e, a partire da questa, costruiamo una nuova successione $(s_n)_(n in NN)$ come segue:

$
s_0 &= a_0 \
s_1 &= a_0 + a_1 \
s_2 &= a_0 + a_1 + a_2 \
    &dots.v \
s_n &= a_0 + a_1 + a_2 + dots + a_n \
    &dots.v
$

#definizione(title: "Successione delle ridotte", label: <def-successione-ridotte>)[La successione $(s_n)$, costruita secondo la formula sopra indicata, è chiamata successione delle ridotte o somme parziali associata alla successione $(a_n)$, o anche serie associata a $(a_n)$. Gli elementi della successione $(a_n)$ sono i termini della serie, che si indica con:

$ sum_(n=0)^oo a_n quad "o" quad sum a_n $

quando il "valore iniziale" e l'estensione "fino all'infinito" siano chiari nel contesto.

Naturalmente si scriverà anche $s_n = sum_(p=0)^n a_p$.]

#definizione(title: "Somma della serie", label: <def-somma-serie>)[Se la successione $(s_n)$ tende verso un limite finito $l$, allora $l$ è chiamato somma della serie e si indicherà con:

$ l = sum_(n=0)^oo a_n $

In questo contesto, si afferma che una serie converge se la successione delle somme parziali tende a un numero finito. Se invece tale successione diverge, si dice che la serie diverge, mentre se è indeterminata, anche la serie viene definita indeterminata. Questa proprietà di una serie di essere convergente, divergente o indeterminata è nota come carattere della serie.]

La terminologia e i simboli comunemente usati per le serie non sono sempre ottimali. Ad esempio, le definizioni precedenti utilizzano lo stesso simbolo per indicare sia la serie sia la sua somma, che sono concetti fondamentalmente diversi: una serie è una sequenza, ovvero una funzione, mentre la somma di una serie, quando esiste, rappresenta il limite della sequenza. Tuttavia, tali notazioni sono tanto diffuse da non giustificare un cambiamento.

#esempio[Consideriamo la successione $ a_n = 1/(n(n + 1)), quad n > 0 $

La serie con termine generale $a_n$ può essere costruita osservando che:

$ 1/(n(n + 1)) = 1/n - 1/(n + 1) $

Allora:

$
s_1 &= a_1 = 1 - 1/2 = 1/2 \
s_2 &= a_1 + a_2 = (1 - 1/2) + (1/2 - 1/3) = 1 - 1/3 \
s_n &= a_1 + a_2 + dots + a_n = (1 - 1/2) + (1/2 - 1/3) + dots + (1/n - 1/(n + 1)) = 1 - 1/(n + 1)
$

Dunque, la somma della serie infinita è:

$ sum_(n=1)^oo a_n = lim_(n -> +oo) (1 - 1/(n + 1)) = 1 $]

Questa serie è conosciuta come serie di Mengoli, studiata da Pietro Mengoli (1626-1686). La figura @grafico_successioni3 offre un'interpretazione geometrica del risultato: la somma delle aree dei rettangoli tracciati, che racchiudono il grafico della funzione $f(x) = 1/x$ dall'intervallo da $1$ a $+oo$, vale $1$.

#grafico_successioni3

#esempio[Si consideri la successione $a_n = a^n$, con $n in NN$ e $a in RR$, dove $a \neq 1$. Utilizzando le proprietà delle progressioni geometriche, si ottiene facilmente che:

$ s_n = (1 - a^n)/(1 - a) $

Ne consegue che:
- se $|a| < 1$, allora la serie $display(sum_(n=0)^oo a_n = 1/(1 - a))$
- se $a > 1$, la serie diverge
- se $a < -1$, la serie è indeterminata]

Questa serie è particolarmente importante e si chiama serie geometrica; il parametro $a$ è detto ragione, e il risultato può essere sintetizzato dicendo che una serie geometrica converge se e solo se la sua ragione in modulo è minore di $1$.

Costruire la successione delle somme parziali ($s_n$) partendo dalla successione iniziale ($a_n$) non è sempre semplice e spesso può risultare complicato determinare la somma della serie.

#definizione(title: "Serie a termini di segno costante", label: <def-serie-termini-segno-costante>)[Se il termine generale di una serie ha segno costante, la serie si dice a termini di segno costante. Da ciò segue che una tale serie è o monotona crescente o monotona decrescente e quindi, secondo il teorema sul limite delle funzioni monotone, essa ha un limite: una serie a segno costante o converge o diverge (positivamente o negativamente).]

#definizione(title: "Serie assolutamente convergente", label: <def-serie-assolutamente-convergente>)[Sia data una serie $ sum_n a_n $

Se la serie $ sum_n |a_n| $ è convergente, allora la serie si dice assolutamente convergente.]

== Criteri di convergenza

Determinare esplicitamente il limite di una successione ($s_n$) che definisce una serie non è generalmente semplice, e quindi valutare la somma di una serie può essere complesso. Tuttavia, verificare la convergenza di una serie è spesso più pratico. Stabilire la convergenza permette, almeno in casi di interesse, di fare stime approssimative della somma della serie quando questa converge, con un livello di precisione adeguato. Per questo, si usano i cosiddetti criteri di convergenza, tra cui i principali saranno discussi qui.

#definizione(title: "Condizione necessaria per la convergenza", label: <def-condizione-necessaria-convergenza>)[Se una serie converge, allora il suo termine generale è infinitesimo.

#dimostrazione()

Se $lim s_n = l$, allora è evidente che anche $lim s_(n-1) = l$. Data la relazione $a_n = s_n - s_(n-1)$, ne consegue che $a_n$ tende a zero. Pertanto, una serie il cui termine generale non sia infinitesimo non può convergere. Per esempio, la serie

$ sum_n n/(n + 1) $

non può convergere perché il termine generale tende a $1$.

Sfortunatamente, questa condizione non è sufficiente, come dimostreremo con un esempio successivo. Il seguente teorema è una semplice conseguenza dei teoremi sui limiti.]

#definizione(title: "Teorema", label: <def->)[Sono date due serie $ sum_n a_n, quad sum_n b_n $ allora:

- se entrambe convergono rispettivamente a $l$ e $m$, si ha che $ sum_n (lambda a_n + mu b_n) = lambda l + mu m, quad forall lambda, mu in RR $
- se entrambe divergono a $+oo$ o a $-oo$, anche la serie $ sum_n (a_n + b_n) $ diverge rispettivamente a $+oo$ e a $-oo$
- se una delle due diverge a $+oo$ o a $-oo$ e l'altra converge, anche la serie $ sum_n (a_n + b_n) $ diverge rispettivamente a $+oo$ e a $-oo$]

#definizione(title: "Serie resto p-esimo", label: <def-serie-resto-p-esimo>)[Per una serie $ sum_(n=0)^oo a_n $ la serie $ sum_(n=p+1)^oo a_n $ è chiamata serie resto $p$-esimo.]

Dato che le somme parziali delle due serie differiscono solo per una costante (la somma dei primi $p$ termini), è chiaro che le due serie condividono lo stesso carattere (ma non la stessa somma). Si afferma che il carattere di una serie non è influenzato dai primi $p$ termini della serie stessa.

=== Serie a termini positivi

Considerando che una serie a termini positivi può solo convergere o divergere e dal teorema sul confronto dei limiti, deriva un fondamentale criterio di convergenza da cui altri criteri vengono dedotti.

#definizione(title: "Criterio del confronto", label: <def->)[Se si considerano due serie a termini positivi $sum a_n$ e $sum b_n$ con $a_n <= b_n$ per ogni $n$, allora:
- se $sum_n b_n$ converge, anche $sum_n a_n$ converge
- se $sum_n a_n$ diverge, anche $sum_n b_n$ diverge]

Questo teorema indica che:
- la minorante positiva di una serie convergente è convergente
- la maggiorante di una serie positiva e divergente è divergente

#esempio[Dimostriamo la divergenza della cosiddetta serie armonica, ovvero $ sum^(+oo)_n 1/n $

Anche se il suo termine generale è infinitesimo, questo non garantisce la convergenza. Nella trattazione del numero di Nepero abbiamo detto che la successione associata è crescente, quindi risulta $(1 + 1/n)^n < e$.

Calcolando i logaritmi da entrambi i lati, si ottiene $ n ln(1 + 1/n) < 1 $ quindi $ ln(1 + 1/n) < 1/n $

Considerando la serie con termine generale $ ln(1 + 1/n) = ln (n + 1)/n = ln(n + 1) - ln(n) $ si tratta di una serie del tipo Mengoli e $s_n$ può essere calcolato semplicemente:

$ s_n = (ln 2 - ln 1) + (ln 3 - ln 2) + dots + (ln(n + 1) - ln n) = ln(n + 1) $

Dato che questa serie diverge ovviamente, anche la serie armonica diverge.]

È possibile dimostrare un altro teorema correlato, ma la dimostrazione sarà omessa qui.

//? aggiungere la dimostrazione?
#definizione(title: "Teorema", label: <def-serie-armonica-generalizzata>)[La serie definita da $ sum_(n=1)^oo 1/n^alpha $ nota come serie armonica generalizzata, converge se $alpha > 1$ e diverge se $0 < alpha <= 1$. Questa serie è frequentemente utilizzata per valutare la convergenza o divergenza di altre serie.]

Passiamo ora a presentare, in maniera sintetica e senza dimostrazione, due criteri comunemente usati per determinare la convergenza delle serie a termini positivi.

//? aggiungere la dimostrazione?
#definizione(title: "Criterio del rapporto", label: <def-criterio-rapporto>)[Per la serie a termini positivi $ sum_n  a_n $ se $ lim_(n -> oo) a_(n+1)/a_n = l $ allora:
- se $l < 1$, la serie converge
- se $l > 1$, la serie diverge
- se $l = 1$, il criterio non fornisce alcuna conclusione]

//? aggiungere la dimostrazione?
#definizione(title: "Criterio della radice", label: <def-criterio-radice>)[Per la serie a termini positivi $ sum a_n $ se $ lim_(n -> oo) root(n, a_n) = l $ allora:

- se $l < 1$, la serie converge
- se $l > 1$, la serie diverge
- se $l = 1$, il criterio non fornisce alcuna conclusione]

#esempio[La serie $ sum_n  1/(n!) $ converge poiché $ lim_(n -> oo) 1/((n+1)!) / (1/(n!)) = lim_(n -> oo) 1/(n+1) = 0 < 1 $
][
La serie $ sum_n  1/(ln n)^n $ converge perché $ lim_(n -> oo) root(n, 1/(ln n)^n) = lim_(n -> oo) 1/(ln n) = 0 < 1 $]

=== Serie con termini di segni variabili

L'analisi delle serie con termini di segni variabili è generalmente più complessa. Un risultato fondamentale è il seguente.

#definizione(title: "Teorema", label: <def->)[Se una serie è assolutamente convergente, allora è convergente.

#dimostrazione()

Consideriamo la serie $ sum_n  a_n $ e la sua corrispondente serie di valori assoluti $ sum_n  |a_n| $

Costruendo due nuove serie $ sum_n  b_n, quad sum_n  c_n $ sostituendo con zero rispettivamente i termini negativi e positivi, e cambiando il segno dei negativi, questi risultano essere sottoserie della serie dei valori assoluti, il che implica convergenza. La serie originale risulta quindi essere la somma delle due sottoserie, quindi converge.]

Per le serie a termini alterni, si applica il seguente criterio di convergenza:

#definizione(title: "Criterio di Leibniz", label: <def-criterio-leibnitz>)[Una serie a termini alterni $sum a_n$ converge se:
- $display(lim_(n -> oo) a_n = 0)$#v(0.5em)
- $|a_(n+1)| < |a_n|$]

Questo criterio afferma che una serie infinitesimale e decrescente in valore assoluto converge.

#esempio[La serie armonica alternata $ sum_(n=1)^oo (-1)^(n+1)/n = 1 - 1/2 + 1/3 - 1/4 + dots $ converge secondo il criterio di Leibniz e ha per somma $ln(2)$.]

== Proprietà delle serie

Nonostante le somiglianze apparenti, una serie è concettualmente diversa da una somma; in generale, non si possono applicare le proprietà associative e commutative delle somme.

#esempio[Consideriamo la serie: $1 - 1 + 1 - 1 + 1 - 1 + 1dots$ Sappiamo che non può convergere poiché il suo termine generale non è infinitesimo. Tuttavia, se la scriviamo in questo modo, associando i termini:

$ (1 - 1) + (1 - 1) + (1 - 1) + (1 - 1) + dots $

otteniamo chiaramente una serie che converge a zero. Se invece riorganizziamo i termini in un'altra maniera:

$ 1 - (1 - 1) - (1 - 1) - (1 - 1) - dots $

otteniamo chiaramente una serie che converge a uno. Ancora, scrivendola così, riorganizzando i termini pari con quelli dispari:

$ -1 + (1 - 1) + (1 - 1) + (1 - 1) + dots $

otteniamo una serie che converge a meno uno.
][
Prendiamo nuovamente la serie armonica a segni alterni, nota per convergere a $(ln(2))$. Riorganizzando i suoi termini nel modo seguente:

$ 1 - 1/2 - 1/4 + 1/3 - 1/6 - 1/8 + dots $

dove uno è positivo e due negativi, la serie è ancora convergente ma questa volta a $display((ln(2))/2)$.] 

Si può addirittura dimostrare che è possibile riordinare i termini per ottenere una serie divergente o una serie convergente a qualsiasi numero reale. Solamente per le serie assolutamente convergenti, in particolare quelle con soli numeri positivi, le proprietà associativa e commutativa continuano ad essere valide: questa è la ragione principale della loro importanza pratica.

#definizione(title: "Criterio dell'ordine di infinitesimo", label: <teo-criterio-ordine>)[
  Sia $sum a_n$ una serie a termini positivi. Se $a_n$ è un infinitesimo di ordine $p <= 1$ rispetto al campione $1/n$, la serie diverge. Se $a_n$ è un infinitesimo di ordine $p >= alpha > 1$ rispetto al campione $1/n$, la serie converge.

#dimostrazione()
Il risultato si dimostra applicando il criterio del confronto con la serie armonica generalizzata $sum 1/n^alpha$.

Se $a_n$ è infinitesimo d'ordine $1$, il limite del rapporto vale $ lim_(n -> +oo) a_n / (1/n) = l > 0 $

Fissato $epsilon > 0$ tale che $l - epsilon > 0$, definitivamente si ha $ a_n > (l - epsilon)/n $
implicando la divergenza per confronto con la serie armonica. Se l'ordine è minore di $1$, il limite vale $+oo$; fissato $k > 0$, definitivamente risulta $a_n > k/n$, da cui la medesima conclusione.

Se $a_n$ è infinitesimo d'ordine $p >= alpha > 1$, si ha $ lim_(n -> +oo) a_n / (1/n^alpha) = l >= 0 $ Fissato $epsilon > 0$, definitivamente vale $a_n < (l + epsilon)/n^alpha$. Poiché la serie armonica generalizzata converge per $alpha > 1$, per il criterio del confronto la serie $sum a_n$ converge.
]

== Serie di funzioni

Consideriamo una successione di funzioni $f_0, f_1, dots, f_n, dots$ definite su un insieme comune $A$. Se scegliamo un punto $c$ nel dominio comune, possiamo analizzare la serie numerica $ sum_(n=0)^oo f_n(c) $

Questa serie può convergere, divergere o rimanere indeterminata a seconda del valore scelto per $c$.

Ad esempio, per la successione di funzioni $ x^0, x^1, x^2, dots, x^n, dots $ la serie con $c = 2$ diverge#footnote[In contesti simili, prenderemo in considerazione la funzione $x$ elevata a $0$ definita anche per $x = 0$, stabilendo che $x$ elevato a $0$ sia uguale a $1$ quando $x = 0$. È importante sottolineare che ciò non implica che abbiamo attribuito un significato al simbolo $0^0$; semplicemente abbiamo esteso la definizione della funzione $x^0$ per continuità, includendo anche il caso in cui $x$ è $0$.]; mentre per $c = 1/2$ converge e per $c = -1$ è indeterminata (trattandosi di serie geometriche). In generale, con la successione di funzioni $f_0, f_1, dots, f_n, dots$ su un insieme $A$, possiamo considerare la serie di funzioni $sum_(n=0)^oo f_n(x)$, e chiederci per quali valori di $x$ essa converge. Chiamiamo $B$ l'insieme di tutti i valori $x$ in cui la serie converge. In questo intervallo, definiamo una nuova funzione, denominata funzione somma della serie di funzioni: $ f(x) = sum_(n=0)^oo f_n(x) , quad forall x in B $

Considerando nuovamente la successione di funzioni precedente, dalle proprietà delle serie geometriche risulta che $ 1/(1-x) = sum_(n=0)^oo x^n, quad forall x in lr(\]-1, 1\[) $

Determinare l'insieme di convergenza di una serie di funzioni è principalmente legato alle proprietà delle serie numeriche. Tuttavia, un problema più complesso emerge quando ci si domanda quali proprietà (di continuità, derivabilità, ecc.) possano avere le funzioni somma rispetto alle funzioni originali. Purtroppo, in generale, le funzioni somma potrebbero non mantenere tali proprietà che le funzioni individuali possiedono. Vediamo un esempio semplice:

Considerando la serie $ sum_(n=0)^oo x^n (1-x), quad x in [0, 1] $

osserviamo che:
- per $x = 1$, la serie è chiaramente uguale a $0$: $ sum_(n=0)^oo x^n (1-x) = sum_(n=0)^oo 0 = 0 $
- per $0 <= x < 1$, la somma della serie diventa $ (1-x) sum_(n=0)^oo x^n = (1-x) dot 1/(1-x) = 1 $

Quindi la funzione somma non è continua. Non ci approfondiremo ulteriormente in questa problematica poiché ci concentreremo su una specifica tipologia di serie di funzioni: le serie di potenze.

=== Serie di potenze

#definizione(title: "Coefficienti della serie", label: <def-coefficienti-serie>)[Fissato un punto $x_0 in RR$, una serie di potenze di $x - x_0$ è definita come una serie del tipo $ sum_(n=0)^oo a_n (x-x_0)^n $

La funzione potenza zero, ovvero $(x-x_0)^0$, è estesa per continuità a $0$ attribuendole il valore $1$. I coefficienti reali $a_0, a_1, dots$ sono detti coefficienti della serie.]

Una serie di potenze converge sempre al punto $x = x_0$. Per quanto riguarda l'insieme di convergenza di una tale serie, vale il seguente teorema.

#definizione(title: "Lemma di Abel", label: <def-lemma-abel>)[Se una serie di potenze converge in un punto $c$, allora essa converge assolutamente anche per ogni $x$ tale che $ |x - x_0| < |c - x_0| $

In altre parole, quando una serie di potenze converge in un punto specifico $c$, allora convergerà assolutamente in tutto l'intervallo aperto centrato in $x_0$ e con raggio pari a $|c - x_0|$.

#dimostrazione()

Se la serie

$ sum_(n=0)^oo a_n (c - x_0)^n $

converge, allora i suoi termini sono infinitesimi e quindi limitati. Pertanto, esiste un numero $M > 0$ tale che

$ |a_n (c - x_0)^n| < M. $

Allora si ha

$ |a_n (x - x_0)^n| = |a_n| |x - x_0|^n = |a_n| |c - x_0|^n ((x - x_0) / (c - x_0))^n < M ((x - x_0) / (c - x_0))^n $

La serie a termini positivi

$ sum_(n=0)^oo M abs(((x - x_0)^n) / (c - x_0)^n) $

converge, poiché è una serie geometrica con ragione minore di $1$ (moltiplicata per $M$). Di conseguenza, la serie originale converge perché è minorante di una serie convergente.]

Consideriamo ora l'insieme dei numeri reali positivi $|c - x_0|$ per cui la serie converge in $c$ e indichiamo con $r$ (eventualmente $+oo$) l'estremo superiore di questo insieme. Dalle proprietà dell'estremo superiore segue che la serie converge sicuramente in tutto l'intervallo aperto centrato in $x_0$ con raggio $r$. Non converge nei punti esterni a questo intervallo, mentre non si può assumere nulla sulla convergenza agli estremi dell'intervallo.

#definizione(title: "Raggio e intervallo di convergenza", label: <def-raggio-intervallo-convergenza>)[] [Il numero $r$ definito sopra si chiama raggio di convergenza della serie di potenze; l'intervallo di centro $x_0$ e raggio $r$ si chiama intervallo di convergenza della serie di potenze, e non va confuso con l'insieme di convergenza, che potrebbe includere, oltre all'intervallo di convergenza, anche uno o entrambi gli estremi.]

Per trovare il raggio di convergenza si usano i noti criteri di convergenza, principalmente quelli del rapporto o della radice (almeno nei casi semplici che noi considereremo). Particolare attenzione va prestata alla valutazione del comportamento agli estremi dell'intervallo stesso.

#esempio[Trovare il raggio di convergenza della serie di potenze

$ sum_(n=0)^oo x^n / (n!) $

Applichiamo il criterio del rapporto:

$ lim_(n -> oo) abs(a_(n + 1)/a_n) = lim_(n -> oo) (abs(x)^(n+1) / (n+1)!) / (abs(x)^n / n!) = lim_(n -> oo) abs(x)^(n+1) / (n+1)! dot n! / abs(x)^n = lim_(n -> oo) abs(x) / (n+1) = 0 $

Poiché il limite è minore di $1$ per qualunque $x$ reale, ne segue che il raggio di convergenza è $+oo$.
][
Trovare il raggio di convergenza della serie di potenze

$ sum_(n=1)^oo ((-1)^(n+1) x^n) / n $

Applichiamo il criterio del rapporto:

$ lim_(n -> oo) (abs(x)^(n+1) / (n+1)) / (abs(x)^n / n) = lim_(n -> oo) abs(x)^(n+1) / (n+1) dot n / abs(x)^n = lim_(n -> oo) |x| ( n) / (n+1) = |x| $

Pertanto, la serie converge se $|x| < 1$. Il raggio di convergenza è dunque $1$. Si può osservare che per $x = -1$ si ottiene la serie

$ -1 - 1/2 - 1/3 - 1/4 - dots $

che è una serie armonica e quindi diverge. Invece, per $x = 1$ si ottiene la serie

$ 1 - 1/2 + 1/3 - 1/4 + dots $

che è nota per essere convergente.]

//
=== Serie di potenze e derivabilità

In merito ai problemi di regolarità accennati precedentemente, esistono alcuni importanti teoremi riguardanti le serie di potenze che esponiamo qui di seguito.

#definizione(title: "Derivazione delle serie", label: <def-derivabilita-serie>)[Se una serie di potenze

$ sum_(n=0)^oo a_n (x - x_0)^n $

ha un raggio di convergenza $r > 0$, anche la serie delle sue derivate

$ sum_(n=1)^oo n a_n (x - x_0)^(n-1) $

ha lo stesso raggio di convergenza. Inoltre, la funzione somma della serie di potenze

$ f(x) = sum_(n=0)^oo a_n (x - x_0)^n $

è derivabile nell'intervallo aperto $]x_0 - r, x_0 + r[$, e si ha

$ f'(x) = sum_(n=1)^oo n a_n (x - x_0)^(n-1) $

sempre in $]x_0 - r, x_0 + r[$.]

Come conseguenza immediata di questo teorema, la funzione somma di una serie di potenze è continua nell'intervallo $]x_0 - r, x_0 + r[$. Tuttavia, va sottolineato che il teorema non fornisce informazioni sul comportamento ai limiti dell'intervallo di convergenza.

Anche se non abbiamo ancora introdotto le primitive di una funzione, anticipiamo un risultato importante che riguarda sempre le serie di potenze e deriva direttamente dal teorema di derivazione delle serie.

#definizione(title: "Integrazione delle serie", label: <def-integrazione-serie>)[Data una serie di potenze

$ sum_(n=0)^oo a_n (x - x_0)^n $

con raggio di convergenza $r > 0$, anche la serie

$ sum_(n=0)^oo a_n / (n+1) (x - x_0)^(n+1) $

ha lo stesso raggio di convergenza. Inoltre, la somma di questa nuova serie, $F(x)$, è una primitiva della somma originale $f(x)$ nell'intervallo $]x_0 - r, x_0 + r[$.]

Questo teorema è significativo per le applicazioni pratiche, poiché spesso non è possibile calcolare con metodi semplici le primitive di funzioni note per avere una serie dalla quale derivano. Si ricorre quindi all'integrazione attraverso le serie per poi procedere a stimare e approssimare la serie degli integrali. Un esempio è la serie

$ 1 - x^2 / (3!) + x^4 / (5!) - x^6 / (7!) + dots $

che ha come somma la funzione $(sin x) / x$, prolungata in zero assegnandole il valore $1$. Per questa funzione non si può calcolare una primitiva con metodi elementari. Tuttavia, si può applicare il teorema di integrazione per ottenere lo sviluppo in serie di una primitiva della funzione $(sin x) / x$:

$ x - x^3 / (3 dot 3!) + x^5 / (5 dot 5!) - x^7 / (7 dot 7!) + dots $

=== Sviluppabilità in serie di Taylor

Il seguente teorema deriva dal teorema di derivazione delle serie.

#definizione(title: "Teorema", label: <def->)[La somma

$ f(x) = sum_(n=0)^oo a_n (x - x_0)^n $

di una serie di potenze con raggio di convergenza $r > 0$ è derivabile infinite volte nell'intervallo $]x_0 - r, x_0 + r[$, e i coefficienti possono essere espressi come

$ a_n = (f^((n))(x_0)) / (n!) $

ovvero

$ f(x) = sum_(n=0)^oo a_n (x - x_0)^n = sum_(n=0)^oo (f^((n))(x_0)) / (n!) (x - x_0)^n $

#dimostrazione()
Vediamo il problema di convergenza delle serie di potenze e il loro legame con le funzioni analitiche. Ogni serie di potenze ha lo stesso raggio di convergenza della sua derivata e, calcolando le derivate fino all'ordine $n$, troviamo la formula necessaria.]

La somiglianza tra la formula della serie di potenze e quella di Taylor solleva una domanda interessante: se una funzione è infinitamente derivabile (di classe $C^oo$) in un intervallo di numeri reali $I = ]x_0 - r, x_0 + r[$, allora è possibile rappresentarla con la serie

$ sum_(n=0)^oo (f^((n))(x_0)) / (n!) (x - x_0)^n $

Questa serie converge sempre alla funzione $f(x)$? In generale, la risposta è negativa: la serie può convergere a una funzione diversa da quella originaria (escludendo il punto $x_0$). Un classico esempio è la funzione

$ f(x) = cases(e^(-1/x^2) &"se" x != 0, 0 &"se" x = 0) $

Pur con calcoli complessi, si può dimostrare che tutte le derivate di questa funzione sono nulle all'origine. Quindi, la serie di Taylor generata da questa funzione all'origine consiste in termini nulli, convergendo alla funzione costantemente nulla, diversa dalla $f$ iniziale.

Per affrontare questo problema, definiamo:

#definizione(title: "Funzione analitica", label: <def-funzione-analitica>)[Una funzione $f$ su un intervallo aperto $I$ è analitica in $I$ se in ogni punto $x_0$ di $I$ esiste un intorno in cui la funzione $f$ coincide con la somma della sua serie di Taylor. Una funzione con questa proprietà è sviluppabile in serie di Taylor.

Consideriamo ora la formula di Taylor e definiamo il resto come

$ R_n (x) = f(x) - T_(n, x_0)(x) $

La serie di Taylor converge a $f$ solo se il resto tende a zero per $n$ che tende all'infinito

$ lim_(n -> oo) R_n (x) = 0 quad forall x in I $]

Calcolare questo limite non è sempre facile. La forma di Lagrange per il resto può essere utile per giungere a una conclusione in molti casi. Senza entrare nei dettagli, menzioniamo alcuni importanti risultati relativi alle funzioni elementari più significative. Le seguenti funzioni sono analitiche nell'intervallo indicato e i loro sviluppi in serie di Taylor sono specificati:

#tabella_successioni1

#esempio[Calcoliamo lo sviluppo di Taylor di $display(f(x) = 1/(1-x)^2)$. Dalla formula base

$ 1 / (1-x) = sum_(n=0)^oo x^n $

deriviamo per ottenere lo sviluppo richiesto:

$ 1 / (1-x)^2 = sum_(n=1)^oo n x^(n-1), quad -1 < x < 1 $
][
Calcolare la somma della serie

$ 1 - 1/2 + 1/3 - 1/4 + 1/5 - 1/6 + dots $

Basta sostituire $x = 1$ nello sviluppo della funzione $ln(x + 1)$. Così facendo, la serie proposta converge a $2$.

][
Calcolare la somma della serie

$ 1 + 1 + 1/(2!) + 1/(3!) + 1/(4!) + 1/(5!) + dots $

Basta sostituire $x = 1$ nello sviluppo della funzione $e^x$. Così facendo, la serie proposta converge a $e$.]

Le serie di potenze sono estremamente utili nelle applicazioni perché permettono di rappresentare una funzione qualsiasi come una somma infinita di termini costituiti da potenze, rendendo i calcoli più semplici. Poiché una serie converge solo se il suo termine generale diventa infinitesimo, scegliendo un numero sufficiente di addendi è possibile ottenere un'approssimazione accurata della serie, e quindi della funzione stessa, anche attraverso un polinomio. Tuttavia, un aspetto fondamentale è poter valutare l'errore di tale approssimazione, compito non sempre facile. In tal caso, la formula di Taylor-Lagrange spesso risulta utile. Esiste inoltre una stima valida per le serie a segno alterno.

#definizione(title: "Teorema", label: <def->)[In una serie a segno alterno, la somma dei primi $n$ termini approssima la somma della serie totale con un errore non maggiore del valore assoluto del termine $a_(n+1)$.]

#esempio[La somma 

$ sum_(n = 1)^100 (-1)^(n - 1) 1/n $

approssima il valore di $ln(2)$ con un errore inferiore a $1/101$.]



