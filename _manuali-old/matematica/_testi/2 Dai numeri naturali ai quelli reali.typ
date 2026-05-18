#import "../../template_normal.typ": *
#import "@preview/cetz:0.4.2" // grafici, cetz-plot richiede cetz ≥ 0.4.2 
#import "@preview/cetz-plot:0.1.3": plot, chart

#evidenzia[In questo capitolo verranno trattate le proprietà fondamentali degli insiemi dei numeri naturali, interi, razionali e reali. Analizzeremo le caratteristiche principali di ciascun insieme numerico e, anche se brevemente, ripercorreremo il processo logico che porta all'estensione del concetto di numero, iniziando dai naturali. Dedicheremo particolare attenzione ai numeri naturali, sia per la necessità di stabilire una notazione chiara sia perché spesso le conoscenze su questo tema risultano poco approfondite. Nel caso dei numeri reali, ci soffermeremo sulle proprietà dei radicali a causa della loro rilevanza applicativa. Inoltre, per introdurre intuitivamente i numeri reali, esploreremo anche la rappresentazione decimale.]

== I numeri naturali

La celebre affermazione di Leopold Kronecker (1823-1891) "Dio ha fatto i numeri naturali, tutto il resto è opera dell'uomo" racchiude l'idea che i numeri naturali siano un concetto primitivo, in qualche modo innato nell'essere umano. Studi più recenti, come alcuni risultati riportati da Keith Devlin, confermano che persino i neonati sono in grado di percepire il concetto di "quantità" fino a due o tre elementi. Anche molti animali possiedono una capacità simile, sebbene con un grado di precisione decrescente man mano che si superano determinate quantità.

Tuttavia, il significato più profondo della frase di Kronecker va oltre questa intuizione spontanea. L'autore, in polemica con Cantor e ispirandosi a idee pitagoriche, sosteneva che l'aritmetica e l'analisi dovessero fondarsi sui numeri interi. Egli respingeva le teorie matematiche allora darrow.l.r.doubleuse sulla costruzione dei numeri reali e auspicava una "rivoluzione aritmetica" per escludere i numeri irrazionali.

Giuseppe Peano (1858-1932), nei suoi fondamenti dell'aritmetica, individuò tre concetti primitivi:  
- lo zero;  
- il numero (intero non negativo);  
- la relazione "essere il successivo di".  

Questi concetti sono approfonditi attraverso cinque postulati:  
+ zero è un numero.  
+ se $a$ è un numero, il successivo di $a$ è un numero.  
+ zero non è il successivo di alcun numero.  
+ due numeri con lo stesso successivo sono uguali tra loro.  
+ se un insieme $S$ contiene lo zero e il successivo di ogni suo elemento, allora $S$ coincide con l'insieme dei numeri naturali (assioma di induzione).  

Non analizzeremo dettagliatamente la costruzione dei numeri naturali secondo Peano; ciò che conta qui è comprendere la complessità nell'assegnare una base assiomatica a questo concetto così fondamentale. Vale la pena accennare che un metodo operativo per definire i numeri naturali può essere basato sulla cardinalità (@cardinalità) di insiemi come $emptyset, {emptyset}, {emptyset, {emptyset}}$ e così via.

Ai nostri scopi interessa soprattutto soffermarci su alcune proprietà fondamentali dei numeri naturali:  
- come insieme, i numeri naturali possiedono una specifica cardinalità;  
- costituiscono un insieme ordinato che rispetta determinate caratteristiche;  
- su di essi si possono effettuare operazioni come somma e prodotto, garantendo proprietà specifiche;  
- da queste proprietà operative derivano la possibilità di risolvere alcune equazioni e l'impossibilità di risolverne altre.

=== Cardinalità dei naturali

L'insieme dei numeri naturali, indicato con $NN$, è un insieme infinito ed è, tra gli insiemi infiniti, il "più piccolo". Ogni altro insieme infinito, infatti, o è equipotente all'insieme dei naturali oppure ne contiene un sottoinsieme equipotente. 

La cardinalità dell'insieme $NN$ viene rappresentata con il simbolo $aleph_0$ (aleph zero). Quindi, la cardinalità di qualsiasi insieme infinito è maggiore o uguale a $aleph_0$. Un insieme che abbia cardinalità $aleph_0$ si dice anche numerabile, termine che deriva dal fatto che i suoi elementi possono essere associati biunivocamente ai numeri naturali, come se fossero "contabili".

=== Ordine nei numeri naturali  

Nell'insieme $NN$ esiste un ordine totale chiamato ordine naturale, solitamente indicato con il simbolo "$<$". Questo ordine, in una forma antiriflessiva (più comoda nel contesto dei naturali rispetto alla forma riflessiva), soddisfa alcune proprietà fondamentali:  

+ proprietà antiriflessiva: per ogni numero naturale $n in NN$, $n lt.not n$ 
+ proprietà antisimmetrica: per ogni $m, n in NN$, se $m < n arrow.r.double n lt.not m$  
+ proprietà transitiva: per $m, n, p in NN$, se $m < n and n < p arrow.r.double m < p$
+ proprietà di tricotomia: dati due numeri naturali $m$ e $n$, deve essere valido esattamente uno dei seguenti casi: $m < n$, $m = n$ o $n < m$.

Oltre a queste, l'ordine naturale ha ulteriori proprietà:  

5. ogni numero naturale $n$ ha un immediato successore, indicato con $n + 1$  
+ ogni numero naturale $n > 0$ ha un immediato predecessore, indicato con $n - 1$  
+ ogni sottoinsieme non vuoto di $NN$ ha un elemento minimo; in particolare, l'insieme $NN$ stesso ha $0$ come elemento minimo  
+ ogni insieme non vuoto e superiormente limitato in $NN$ ha un elemento massimo

Infine, nell'insieme dei naturali vale anche il principio di induzione matematica#footnote[L'idea intuitiva alla sua base del principio di induzione è l'effetto domino: affinché le tessere da domino disposte lungo una fila cadano tutte sono sufficienti due condizioni: che cada la prima tessera e che ogni tessera sia posizionata in modo tale che cadendo provochi la caduta della successiva.
Il principio d'induzione estende quest'idea al caso in cui la fila sia composta da infinite tessere.], che non verrà trattato in questo testo. // Aggiungere approfondimento? #TODO

=== Le operazioni sui numeri naturali  

Per trattare le operazioni definite nell'insieme dei numeri naturali, iniziamo richiamando il concetto generale di operazione interna su un insieme.  

#definizione(title: "Operazione interna")[Dato un insieme $A$, si definisce operazione interna in $A$ ogni funzione 
  $
    phi : A times A -> A
  $<operazione_interna> 

Tali funzioni vengono comunemente rappresentate mediante simboli come $dot$, $+$, $times$, $\/$, ecc.
]

Invece di scrivere esplicitamente la funzione $z = phi(x, y)$ per indicare l'immagine della coppia (x, y) tramite la funzione (operazione) $phi$, si utilizzano frequentemente notazioni più compatte come $z = x + y$ o $z = x y$. Per esempio, nel caso della moltiplicazione, gli elementi della coppia possono essere scritti semplicemente uno accanto all'altro, ad esempio $z = x y$. Analogamente, altre operazioni come l'elevamento a potenza vengono rappresentate mediante simboli noti, ad esempio $x^y$.

Tra le operazioni definite sull'insieme $NN$, le principali sono:  
- addizione: il risultato si chiama somma e gli elementi coinvolti si chiamano addendi. Data la somma di due numeri naturali $a$ e $b$, essa si indica con $a + b$.  
- moltiplicazione: il risultato si chiama prodotto e gli elementi coinvolti si chiamano fattori. Dati due fattori $a$ e $b$, il prodotto può essere indicato come $a times b$, $a dot b$ o semplicemente $a b$#footnote[Le operazioni che stiamo analizzando si chiamano addizione e moltiplicazione, mentre i termini somma e prodotto indicano i risultati di queste operazioni. Tuttavia, nell'uso quotidiano, si tende spesso a utilizzare somma e prodotto anche per riferirsi alle operazioni stesse, nonostante ciò rappresenti un abuso di linguaggio. Anche noi, occasionalmente, adotteremo questa abitudine.].

Queste operazioni rispettano diverse proprietà fondamentali:
+ proprietà associativa:
  $ 
    forall a, b, c in NN, quad &(a + b) + c = a + (b + c) \ &(a b) c = a (b c)
  $
  Questa proprietà permette di omettere le parentesi nelle addizioni o moltiplicazioni ripetute. Ad esempio, le scritture $a + b + c$ e $a b c$ risultano ben definite.

+ proprietà commutativa:
  $ 
    forall a, b in NN, quad &a + b = b + a \ &a b = b a
  $

+ esistenza dell'elemento neutro#footnote[Non tutti concordano sull'inclusione dello zero nell'insieme dei numeri naturali. Tuttavia, come abbiamo visto parlando della possibile costruzione dei numeri naturali attraverso la cardinalità di determinati insiemi, appare appropriato includere lo zero all'interno di ℕ. D'altro canto, esistono argomentazioni che potrebbero giustificare la sua esclusione. Di conseguenza, scegliere se includerlo o meno dipende sostanzialmente da una preferenza convenzionale. Per questo motivo, è fondamentale verificare, nell'elenco delle notazioni del testo consultato, quale convenzione sia stata adottata.]: 
  $ 
    forall a in NN, quad &a + 0 = a \ &a dot 1 = a
  $
+ proprietà distributiva della moltiplicazione rispetto all'addizione:
  $ 
    forall a, b, c in NN, quad a (b + c) = a b + a c
  $
+ legge dell'annullamento del prodotto:
  $ 
    a b = 0 <==> a = 0 or b = 0
  $
+ legge di cancellazione della somma:
  $ 
    a + c = b + c <==> a = b
  $

+ legge di cancellazione del prodotto: 
  $ 
    c != 0 ==> a c = b c <==> a = b
  $

+ compatibilità dell'ordine con l'addizione: 
  $ 
    a < b <==> a + c < b + c
  $

+ compatibilità dell'ordine con la moltiplicazione: 
  $ 
    c > 0 ==> a < b <==> a c < b c
  $

L'introduzione delle operazioni di addizione e moltiplicazione rende l'insieme dei numeri naturali una struttura algebrica molto semplice: precisamente un monoide o semigruppo abeliano dotato di elemento neutro rispetto a entrambe le operazioni. Tuttavia, la necessità di disporre di strutture algebriche via via più complesse è uno dei fattori che spingono ad ampliare l'insieme dei numeri utilizzati in matematica.

=== Le prime equazioni nei numeri naturali

Con l'introduzione dell'addizione e della moltiplicazione, emergono immediatamente alcuni problemi, tra cui:
+ dati due numeri naturali $a$ e $b$, determinare se esiste un numero naturale $x$ tale che $x + b = a$.
+ dati due numeri naturali $a$ e $b$, determinare se esiste un numero naturale $x$ tale che $x dot b = a$.

Questi rappresentano i primi esempi di equazioni con un'incognita. Tali problemi conducono rispettivamente all'introduzione delle operazioni di sottrazione e divisione, anche se il termine operazione non è pienamente corretto, secondo la definizione @operazione_interna data in precedenza. Infatti, né la sottrazione né la divisione sono definite in tutta $N times N$. Possiamo formulare le seguenti definizioni:
#pagebreak(weak:true)
#definizione(title: "Sottrazione")[Dati due numeri naturali $a$ e $b$, con $a >= b$, si definisce differenza di $a$ e $b$ (in quest'ordine) l'unico numero naturale $x$ tale che $x + b = a$. 

Tale numero si indica con $a - b$. Il numero $a$ è detto minuendo, mentre $b$ si chiama sottraendo.]

#definizione(title: "Divisione")[Dati due numeri naturali $a$ e $b$, con $b != 0$, si definisce quoziente di $a$ e $b$ (in quest'ordine) l'unico numero naturale $x$<divisione>, se esiste, tale che $x dot b = a$. 

Tale numero si indica con $a \/ b$ o con $a : b$. Il numero $a$ è detto dividendo, mentre $b$ si chiama divisore.]

Occorre tenere presenti alcune osservazioni importanti:
+ la sottrazione è possibile solo se il minuendo è maggiore o uguale al sottraendo.
+ la divisione non è mai possibile se il divisore è zero, nemmeno nel caso in cui anche il dividendo sia zero: l'espressione $a \/ 0$ non ha alcun significato, e ancor meno la scrittura $0 \/ 0$.
+ la divisione, con divisore diverso da zero, non è sempre possibile: quando è effettuabile, si afferma che $a$ è un multiplo di $b$, oppure che $b$ è un divisore di $a$, oppure ancora che "$b$ divide $a$", indicato con la notazione $b | a$.
+ né la sottrazione né la divisione godono della proprietà associativa:
  $ 
    (a - b) - c != a - (b - c); quad quad (a/b)/c != a/(b/c)
  $
+ anche la proprietà commutativa è assente nella sottrazione e nella divisione:
$ 
  a - b != b - a; quad quad a/b != b/a
$
  La mancanza di questa proprietà è evidenziata nella nomenclatura: mentre nell'addizione e nella moltiplicazione i due operandi si chiamano rispettivamente addendi e fattori, nella sottrazione e divisione i termini hanno nomi diversi. Ciò accade proprio perché la proprietà commutativa non è applicabile. 
  
L'impossibilità di risolvere certe equazioni in modo universale è una delle principali motivazioni che portano all'ampliamento dei sistemi numerici utilizzati in matematica.
#pagebreak(weak:true)

=== Elevazione a potenza

Nel dominio dei numeri naturali ($NN$), viene introdotta anche l'operazione di elevazione a potenza, principalmente come una forma abbreviata per rappresentare certi prodotti ripetuti. La definizione precisa è la seguente:

#definizione(title: "Potenza", label: <potenza>)[Dati due numeri naturali $a$ e $n$, con $n > 0$, si definisce:
$ 
  a^1 = a \ a^n = underbracket(a dot a dot dot dot a, n "fattori"), quad "se" n > 1 
$

Si stabilisce inoltre:
$
  a^0 = 1, quad forall > 0 \ quad 0^n = 0, quad  forall n > 0
$

Nella notazione $a^n$, $a$ prende il nome di base, mentre $n$ è chiamato esponente.]


Le formule sopra indicate possono essere riformulate anche in modo ricorsivo, come segue:

$ 
  "Se" a > 0, quad a^0 = 1, quad a^(n+1) = a dot a^n \ "Se" n > 0, quad 0^n = 0
$

Si osservi che al valore $0^0$ non viene assegnato alcun significato. La potenza, sebbene appaia come una scrittura compatta per rappresentare prodotti con fattori uguali, non sempre rispecchia un legame diretto con l'operazione di moltiplicazione. I simboli $a^1$ e $a^0$ non derivano strettamente dalla moltiplicazione. Nella @potenze_esponenziali_logaritmi si approfondiranno ulteriormente le ragioni che motivano tali definizioni.

#definizione(title: "Proprietà delle potenze", label: <proprietà_potenza>)[Dati i numeri naturali positivi $a, b, m, n$ valgono le seguenti proprietà:

$
  a^n dot a^m = a^(n+m) \ (a^n)^m = a^(n m) \ a^n dot b^n = (a b)^n \ "Se" n >= m, quad a^n / a^m = a^(n-m)
$
]
Alcune di queste proprietà possono essere estese ai casi in cui uno o più numeri coinvolti sono pari a zero, purché il calcolo sia matematicamente significativo.

=== Regole di precedenza nelle operazioni matematiche

Quando si devono eseguire più operazioni su una serie di numeri, la regola generale prevede che queste vengano effettuate nell'ordine in cui appaiono, salvo diversa indicazione data dall'uso delle parentesi. Le parentesi, infatti, possono modificare il cosiddetto "ordine naturale". Per esempio, l'operazione $24 : 6 : 2$ restituisce come risultato $2$, perché si calcola prima $24 : 6 = 4$ e poi $4 : 2 = 2$. Utilizzando le parentesi, la stessa operazione scritta come $(24 : 6) : 2$ darebbe lo stesso risultato. Se invece si scrive $24 : (6 : 2)$, il risultato cambia, diventando $8$, perché si calcola prima $6 : 2 = 3$, seguito da $24 : 3 = 8$.

Per evitare l'uso eccessivo di parentesi, è stato convenuto di assegnare priorità ad alcune operazioni rispetto ad altre. Pertanto, l'ordine di esecuzione è il seguente per le operazioni finora definite:
+ l'elevamento a potenza viene sempre eseguito per primo.
+ le moltiplicazioni e le divisioni vengono effettuate successivamente, seguendo l'ordine in cui si presentano.
+ infine, si eseguono le somme e le sottrazioni.

#esempio[L'espressione $3 + 5 times 2^3$ si calcola come segue: 
+ si esegue l'elevamento a potenza, determinando che $2^3 = 8$
+ si calcola la moltiplicazione: $5 times 8 = 40$
+ si effettua l'addizione: $3 + 40 = 43$.] 

Al di fuori di queste regole di priorità, le operazioni si eseguono semplicemente nell'ordine in cui sono scritte. Ad esempio, l'espressione $12 : 6 times 2$ dà come risultato $4$, poiché non ci sono regole che stabiliscano una priorità tra divisione e moltiplicazione.

Tuttavia, è opportuno segnalare un caso particolare che può generare ambiguità: l'elevamento a potenza in notazioni del tipo 

$
  a^(b^c)
$

frequenti nei testi e nei software di calcolo. Per capire meglio, analizziamo un caso concreto. Le notazioni

$
  (2^3)^2 quad "e" quad 2^((3^2))
$

non presentano ambiguità interpretativa. 

Il loro risultato è, rispettivamente, $64$ e $512$. Ma come si deve interpretare un'espressione come $2^3^2$? Non esiste una convenzione universalmente accettata: alcuni la interpretano come $(2^3)^2 = 64$, altri invece come $2^((3^2)) = 512$. Questa differenza si riscontra anche nei vari strumenti di calcolo: scrivendo $2^3^2$ su una comune calcolatrice tascabile si ottiene generalmente $64$, mentre software di algebra computazionale come Mathematica, Maple o GeoGebra restituiscono solitamente $512$.

Per evitare ambiguità, adotteremo la convenzione più diffusa, ovvero che nella notazione $a^(b^c)$ si interpreta come $a^((b^c))$. In altre parole, scrivendo $a^b^c$ si intende $a^(b^c)$, stabilendo che l'elevamento a potenza è "associativo a destra". Questo concetto si distingue dalla divisione, per la quale si ha invece un'associatività "a sinistra", il che significa che per un'espressione come 

$
  a\/b\/c = (a\/b)\/c
$

=== Divisibilità e numeri primi

All'interno dell'insieme dei numeri naturali è definita un'operazione di divisione con resto. Tuttavia, occorre sottolineare che, analogamente alle operazioni di sottrazione e divisione tradizionali, essa non può essere considerata un'operazione nel senso stretto del termine, in quanto non rappresenta propriamente un'applicazione di $N times N$ in $N$. Quest'operazione si fonda sul seguente teorema.

#definizione(title: "Teorema", label: <divisibilità_numeri_primi>)[Dati due numeri naturali $a$ e $b$, con $b > 0$, esiste una e una sola coppia $(q, r)$ di numeri naturali tali che:
$
  a = q b + r, \ 0 <= r < b
$
]
I termini $q$ e $r$ assumono rispettivamente il significato di quoziente e resto della divisione di $a$ per $b$. È importante notare che, se $r = 0$, la divisione tra $a$ e $b$ è effettivamente possibile, conformemente alla definizione @divisione. In tal caso, i termini multiplo, divisibile e divisore trovano applicazione come precedentemente introdotto. Inoltre, quando un numero $a$ è divisibile per $b$, si afferma che $b$ divide $a$, utilizzando la seguente notazione: 

$
  b | a
$

Per determinare i valori di $q$ e $r$, si applica il classico algoritmo della divisione insegnato fin dai primi anni di scuola.

#definizione(title: "Numero Primo")[Un numero naturale $p$ si definisce primo se è maggiore di 1 ed è divisibile esclusivamente per 1 e per sé stesso.
]
#esempio[
È immediato osservare che 2 è il più piccolo numero primo ed è anche l'unico numero primo pari. Seguono poi i primi successivi: 3, 5, 7 e così via.] 

I numeri primi rivestono un'importanza fondamentale in numerosi ambiti applicativi; uno degli utilizzi più noti è nel campo della moderna crittografia.

In matematica si considerano i numeri primi come i "mattoni fondamentali" con cui è possibile costruire tutti i numeri naturali, come descritto dal seguente teorema.

#definizione(title: "Teorema fondamentale dell'aritmetica")[Ogni numero naturale maggiore di 1 o è un numero primo o può essere espresso come prodotto di fattori primi in modo unico, a meno dell'ordine in cui i fattori sono disposti.

Questo risultato può essere sintetizzato nella formula:
$
  n = p_1^(i_1) p_2^(i_2) dots p_k^(i_k) 
$<teorema_fondamentale_aritmetica>

dove i fattori primi uguali sono raggruppati con l'uso delle potenze. Si può inoltre assumere che i fattori siano ordinati in modo crescente.]

#esempio()[

$28 thin 693 thin 665 = 3^2 dot 5 dot 7^3 dot 11 dot 13^2$.
]
Il contenuto di questo teorema non è banale, e la dimostrazione dell'unicità della scomposizione risulta piuttosto complessa. Verificare concretamente la scomponibilità di un numero in un prodotto di numeri primi può richiedere tempi molto lunghi, perfino per i computer più potenti. A tal proposito, è celebre un articolo di Martin Gardner pubblicato su _Scientific American_ nell'agosto del 1977: lo scritto presentava un problema di crittografia, invitando i lettori a scomporre in fattori primi un numero di ben 129 cifre:

$
  n = &11438162575788886766923577997614661201021829672124 \ &23625625618429357069352457338978305971235639587050 \ &58989075147599290026879543541
$

La soluzione fu scoperta solo nell'aprile del 1994, dopo 17 anni: si trattava del prodotto di due numeri primi, precisamente:

$ p = &34905295108476509491478496199038981334177646384933 \ &87843990820577, \ q = &32769132993266709549961988190834461413177642967992 \ &942539798288533 $

Il primo dei due numeri ha 64 cifre e il secondo ne possiede 65. A ottobre 2024, il primato di numero primo più grande conosciuto è detenuto da $2^(136 279 841) - 1$#footnote[È un numero primo di Mersenne, ovvero un numero primo inferiore di uno rispetto ad una potenza di due ($M_(p)=2^(p)-1$)], un numero di $41 thin 024 thin 320$ cifre scoperto nell'ottobre 2024 nell'ambito del progetto di calcolo distribuito GIMPS, che ha sorpassato di circa 16,15 milioni di cifre il precedente numero detentore del titolo.

I numeri primi diventano sempre più rari con il crescere dei numeri naturali. Considerando alcuni intervalli, otteniamo i seguenti dati:
- tra 1 e 1000 ci sono 168 numeri primi;
- tra 1001 e 2000 ce ne sono 135;
- tra 2001 e 3000, se ne trovano 127;
- tra 3001 e 4000, il numero scende a 120;
- infine, tra 4001 e 5000, si contano 119 primi.

Nonostante questa diminuzione progressiva nella loro densità, i numeri primi sono infiniti. Questa affermazione è dimostrata da uno degli argomenti più celebri della matematica, formulato da Euclide. Vediamolo.

#definizione(title: "Teorema dell'infinità dei numeri primi")[
Esistono infiniti numeri primi.

#dimostrazione()
Supponiamo per assurdo che i numeri primi siano finiti: $p_1, p_2, p_3, ..., p_k$. Con questa ipotesi, consideriamo il numero naturale:

$n = p_1 times p_2 times p_3 times dots times p_k + 1$

Questo nuovo numero $n$ non è divisibile per nessuno dei primi della lista ($p_1, p_2, p_3, ..., p_k$), poiché il resto della divisione tra $n$ e ciascuno di questi primi sarà sempre uguale a 1. Di conseguenza, $n$ è o un numero primo (il che contraddice l'idea che i numeri primi fossero finiti) o è divisibile da un altro numero primo non incluso nella lista originale. In entrambi i casi, la supposizione iniziale secondo cui i numeri primi sono finiti porta a una contraddizione. Pertanto, devono esistere infiniti numeri primi.
]
Occorre osservare che questa dimostrazione, pur elegantissima, non fornisce un sistema per generare nuovi numeri primi a partire da un insieme già noto. Ad esempio, prendendo i primi 2, 3, 5, 7, 11 e 13 e applicando l'algoritmo di Euclide:

$ n = 2 times 3 times 5 times 7 times 11 times 13 + 1 = 30 thin 031 $

otteniamo un numero che non è primo. Esso può infatti essere scomposto come prodotto di due numeri primi più grandi, cioè 59 e 509, che non erano nella lista originale.

La ricerca di formule capaci di generare numeri primi ha affascinato molti matematici nel corso della storia, in particolare nel XVII secolo. Un esempio celebre è attribuito a Eulero: la formula 

$ x^2 + x + 41 $

che genera numeri primi per tutti i valori naturali di $x <= 39$ ma non produce un numero primo per $x = 40$.

Sebbene sia un argomento estremamente interessante e ricco di implicazioni, lo spazio qui non consente ulteriori approfondimenti.

#definizione(title: "Numeri primi tra loro")[Due numeri naturali diversi da zero si dicono primi tra loro, o mutuamente primi, se il loro unico divisore comune è 1.] 

In particolare, il numero 1 risulta essere primo con qualsiasi altro numero naturale. Ne consegue che due numeri naturali $a$ e $b$ sono primi tra loro se, e solo se, non condividono alcun fattore primo nelle rispettive scomposizioni.

In caso contrario, ovvero quando $a$ e $b$ non sono primi tra loro, è di grande interesse calcolare il loro massimo comune divisore (MCD). Questo rappresenta il maggiore tra i divisori comuni di $a$ e $b$ ed è sempre definito, poiché non può superare i valori dei due numeri dati. Il MCD viene indicato come $M C D(a, b)$. Se $a$ e $b$ sono primi tra loro, allora necessariamente il loro MCD è 1.

L'algoritmo più semplice per determinare il MCD consiste nel scomporre i due numeri in fattori primi e calcolare il prodotto dei fattori comuni considerando l'esponente minimo. Tuttavia, esiste un metodo più efficiente per trovare il massimo comune divisore: l'algoritmo euclideo delle divisioni successive, descritto nel seguente teorema.

#definizione(title: "Algoritmo euclideo delle divisioni successive")[Dati due numeri $a$ e $b$, con $a > b$ senza perdita di generalità, si eseguano le seguenti divisioni, ciascuna con resto:

$
  &a = d_1 dot b + r_1, quad &"con" 0 <= r_1 < b, \
  &b = d_2 dot r_1 + r_2, quad &"con" 0 <= r_2 < r_1, \
  &r_1 = d_3 dot r_2 + r_3, quad &"con" 0 <= r_3 < r_2, \
  &dots.v &dots.v quad quad quad   
$<algoritmo_divisioni_successive>

Si procede iterativamente fino a ottenere un resto nullo (il processo termina sempre in un numero finito di passi, inferiore a $b$). Il massimo comune divisore fra $a$ e $b$ è il resto non nullo ottenuto nell'ultimo passaggio.]

#esempio[Consideriamo i numeri $326 thin 059$ e $164 thin 143$. Applicando l'algoritmo descritto nel teorema  euclideo delle divisioni successive @algoritmo_divisioni_successive:
$
  326 thin 059 &= 1 dot 164 thin 143 + 161 thin 916, \ 164 thin 143 &= 1 dot 161 thin 916 + 2 thin 227, \ 161 thin 916 &= 72 dot 2 thin 227 + 1 thin 572, \ 2 thin 227 &= 1 dot 1 thin 572 + 655, \ 1 thin 572 &= 2 dot 655 + 262, \ 655 &= 2 dot 262 + 131, \ 262 &= 2 dot 131 + 0
$
L'ultimo resto non nullo è dunque $131$, che rappresenta il massimo comune divisore tra i due numeri dati: $M C D(326 thin 059, 164 thin 143) = 131$.
]
Passando al concetto correlato, due numeri naturali non nulli $a$ e $b$ hanno sempre un multiplo comune: uno di essi è il prodotto $a dot b$. Tuttavia, si considera particolarmente interessante identificare il più piccolo multiplo comune dei due numeri, detto minimo comune multiplo (mcm), indicato come $m c m(a, b)$.

L'algoritmo più semplice per calcolare il minimo comune multiplo è quello di scomporre i numeri in fattori primi e moltiplicare tutti i fattori comuni e non comuni, scegliendo il massimo esponente in ogni caso. Tuttavia, osservando che dalla definizione segue la relazione fondamentale

$ a dot b = M C D(a, b) dot m c m(a, b) $
è possibile calcolare il minimo comune multiplo utilizzando il valore del massimo comune divisore ottenuto mediante l'algoritmo euclideo e ricavandolo secondo la formula: 
$ m c m(a, b) = (a dot b) / (M C D(a, b)) $

=== Alcuni criteri di divisibilità

Di seguito sono riportati i principali criteri di divisibilità, la maggior parte dei quali può essere dimostrata con metodi elementari:
+ un numero è divisibile per 2 se, e solo se, è pari
+ un numero è divisibile per 3 se, e solo se, la somma delle sue cifre è un multiplo di 3
+ un numero è divisibile per 4 se, e solo se, il numero formato dalle sue ultime due cifre è divisibile per 4
+ un numero è divisibile per 5 se, e solo se, termina con la cifra 0 o 5
+ un numero è divisibile per 8 se, e solo se, il numero formato dalle sue ultime tre cifre è divisibile per 8
+ un numero è divisibile per 9 se, e solo se, la somma delle sue cifre è un multiplo di 9
+ un numero è divisibile per 10 se, e solo se, termina con la cifra 0
+ un numero è divisibile per 11 se, e solo se la differenza fra la somma delle cifre in posizione dispari (partendo dall'unità come posizione zero) e quella delle cifre in posizione pari è un multiplo di 11

Esistono anche altri criteri per la divisibilità (ad esempio per il 7), ma risultano più complessi e meno diffusi nell'uso comune.

== Gli interi

A partire dall'insieme dei numeri naturali si definisce l'insieme degli interi, noti anche come interi relativi ($ZZ$). Questo nuovo insieme presenta una struttura algebrica più complessa rispetto a quella dei numeri naturali, rendendo possibile risolvere senza limitazioni le equazioni del tipo $x + b = a$.

Pur non entrando nei dettagli della loro costruzione formale, ci limitiamo a considerare che l'insieme degli interi è dato da:

$
  ZZ = { ..., -3, -2, -1, 0, 1, 2, 3, ... }
$

In parole semplici, esso comprende i numeri naturali completi dei rispettivi opposti (numeri negativi). È importante notare che in $ZZ$ non esiste distinzione tra $+0$ e $-0$ poiché entrambi rappresentano lo stesso valore, ovvero lo zero. Inoltre, l'insieme dei numeri naturali può essere trattato come sottoinsieme dell'insieme degli interi, anche se questa affermazione andrebbe ulteriormente approfondita per maggiore precisione.

L'insieme degli interi introduce una relazione d'ordine totale e due operazioni aritmetiche che rispettano le proprietà già definite per i naturali, con alcune varianti significative:

+ relazione d'ordine:
  - ogni numero intero possiede un predecessore e un successore immediato.
  - l'insieme $ZZ$ non ha né massimo né minimo; tuttavia, ogni suo sottoinsieme non vuoto e superiormente limitato possiede un massimo, così come ogni sottoinsieme non vuoto e inferiormente limitato possiede un minimo.
+ operazioni:
  - la compatibilità dell'ordine con la moltiplicazione si modifica come segue:
    $ c > 0 => (a < b <=> a c < b c); \ c < 0 => (a < b <=> a c > b c) $
  - esistenza dell'opposto nell'addizione: 
    $ forall x in ZZ, exists y in ZZ "tale che" x + y = 0 $Questo opposto viene indicato come $-x$. Si usa solitamente scrivere $x - x$ invece di $x + (-x)$.

La presenza dell'opposto porta a una conseguenza rilevante: $ZZ$ diventa un gruppo abeliano (o commutativo) rispetto all'operazione di addizione, mentre mantiene le proprie proprietà rispetto alla moltiplicazione. Inoltre, ciò garantisce che l'equazione $x + b = a$ ammetta sempre una e una sola soluzione $x = a + (-b)$. scritto $x = a - b$, 

Riguardo alla cardinalità, non si rileva alcuna differenza rispetto all'insieme dei numeri naturali. Dato un $n in NN$, è sufficiente considerare la corrispondenza biunivoca che associa a ogni numero naturale pari $2n$ l'intero positivo $n$, e a ogni numero naturale dispari $2n+1$ l'intero $-n-1$.

Nell'insieme degli interi relativi $ZZ$, non è più necessario introdurre l'operazione di sottrazione come separata, poiché quest'ultima può essere espressa tramite la somma: dati $a, b in ZZ$, si definisce $a - b = a + (-b)$. Inoltre, anche negli interi relativi sono definite la divisione e la divisione con resto, mantenendo le proprietà già osservate nei numeri naturali. In particolare, è valido il seguente teorema, simile al teorema @teorema_fondamentale_aritmetica:

#definizione(title: "Teorema della divisione euclidea")[Dati due numeri interi $a$ e $b$, con $b > 0$, esiste una e una sola coppia $(q, r)$ di numeri interi tali che:
$
  a = q b + r, \ 
  0 <= r < b
$

I numeri $q$ ed $r$ sono definiti rispettivamente come quoziente e resto, analogamente ai numeri naturali.]// verificare nome teorema #TODO

Tuttavia, è da notare che, mentre nel teorema @teorema_fondamentale_aritmetica il fatto che $r >= 0$ era immediato (poiché tutti i numeri naturali sono $>= 0$), in questo caso tale condizione deve essere specificamente inclusa nell'enunciato del teorema. 

#esempio[$ -87 = -10 times 9 + 3 $

È fondamentale imporre che $r >= 0$ (oltre che $r < b$) per garantire l'unicità della coppia $(q, r)$. In assenza di questa condizione, si potrebbero ottenere risultati diversi, ad esempio:
$ -87 = -9 times 9 - 6 $
]
Infine, si osserva che l'insieme degli interi dispari è chiuso rispetto alla moltiplicazione (ovvero il prodotto di due dispari è sempre dispari) e lo stesso vale per l'insieme degli interi pari (il prodotto di due pari è sempre pari). Sebbene queste proprietà appaiano intuitive, esse risultano utili per risolvere molti problemi matematici.

=== Potenze negli interi

Il concetto di potenza, già introdotto per i numeri naturali, può essere esteso agli interi con la seguente definizione:

#definizione[Sia $a in ZZ$, con $a != 0$ e sia $n in ZZ$, con $n < 0$. Si definisce:
$ 
  a^n = 1 / a^(-n)
$]

Questa definizione è formulata in modo da preservare le proprietà algebriche delle potenze già viste nella @potenza. Grazie a essa, l'ultima proprietà in risulta valida per ogni valore degli esponenti $n$ ed $m$, senza necessità di supporre che $n >= m$. Si noti che questa definizione non attribuisce significato al simbolo $0^m$ con $m <= 0$.

== I numeri razionali

L'introduzione dei numeri interi consente di risolvere equazioni del tipo $x + b = a$. Tuttavia, non offre miglioramenti significativi per equazioni come $x dot b = a$. Per affrontare questo tipo di problemi, si introducono i numeri razionali, indicati con $QQ$. L'insieme dei razionali è costituito da tutte le frazioni formate da due numeri interi, in cui il denominatore è diverso da zero. In questo contesto si definisce la relazione di equivalenza:
$
  a / b ~ c / d <==> a d = b c
$

Le classi di equivalenza definite da questa relazione corrispondono ai numeri razionali. Formalmente, per indicare un numero razionale si dovrebbe utilizzare la notazione delle classi di equivalenza. Ad esempio, invece di dire "consideriamo il numero razionale $1\/2$", si dovrebbe specificare "consideriamo il numero razionale $[1\/2]$", tenendo presente che nella stessa classe troviamo elementi come 

$
  [1/2] = {1/2, 2/4, (-4)/(-8), dots}
$

Tuttavia, nella pratica si fa spesso riferimento ai razionali pensando direttamente alle frazioni, con la consapevolezza che in realtà rappresentano intere classi di equivalenza. Ciò diviene evidente quando si opera con i razionali, ad esempio nel calcolo della somma:

$
  1 / 2 + 3 / 5 = 5 / 10 + 6 / 10 = 11 / 10
$

L'insieme dei numeri razionali $QQ$ può essere considerato un'estensione dell'insieme degli interi $ZZ$, interpretando questi ultimi come frazioni con denominatore pari a 1.

In $QQ$ vengono definiti sia un ordine totale sia operazioni algebriche (addizione e moltiplicazione) che soddisfano le proprietà già osservate in $ZZ$. Tuttavia, ci sono alcune importanti modifiche e aggiunte che meritano attenzione
+ Per quanto riguarda l'ordine:
  - gli elementi di $QQ$ non hanno né un immediato successivo né un immediato predecessore.
  - non solo $QQ$ non presenta un massimo o un minimo assoluti, ma i sottoinsiemi superiormente limitati di $QQ$ potrebbero non avere un massimo né un estremo superiore. Allo stesso modo, i sottoinsiemi inferiormente limitati potrebbero non avere un minimo né un estremo inferiore.
+ Per quanto riguarda le operazioni:
  -  Esiste sempre l'inverso moltiplicativo: 
    $
      forall x in QQ, x != 0, exists y in QQ, "tale che" x dot y = 1
    $
    dove $y$ è indicato come $1\/x$.

La presenza dell'inverso moltiplicativo implica che l'insieme $QQ without {0}$ forma un gruppo abeliano rispetto alla moltiplicazione. Questo conferisce a $QQ$ la struttura di un campo commutativo (o corpo ordinato). Grazie a ciò, è anche possibile risolvere in $QQ$ tutte le equazioni della forma 

$
  x dot b = a, "con" b != 0
$

mediante la formula:

$
  x = a / b = a dot (1/b)
$

Non è quindi necessaria una distinta operazione di divisione nell'insieme dei numeri razionali: per qualunque coppia $a, b in QQ$, con $b != 0$, il quoziente tra $a$ e $b$ è definito come il prodotto di $a$ per l'inverso di $b$.

Tra i risultati significativi relativi all'ordine vi è il seguente teorema:

//
#definizione(title: "Teorema della densità dei numeri razionali", label: <teorema_densità_razionali>)[Il campo dei razionali è denso, ovvero tra due numeri razionali qualsiasi esiste sempre un altro razionale e, di fatto, ne esistono infiniti.

#dimostrazione()
Presi due numeri razionali $a$ e $b$ tali che $a < b$, basta considerare il numero 

$
  (a + b) / 2
$<densità_razionali>

che risulta compreso tra $a$ e $b$.]

Il concetto di potenza con esponente intero può essere tranquillamente esteso ai numeri razionali senza variazioni nella definizione o nelle proprietà. Tuttavia, per poter estendere il concetto di potenza anche ad esponenti razionali, si rende necessario introdurre i numeri reali. Approfondiremo questo tema nella @potenze_esponenziali_logaritmi, dedicato specificamente alle potenze.

=== Cardinalità dei razionali

Nonostante il teorema @densità_razionali suggerisca che l'insieme dei numeri razionali contenga molti più elementi rispetto agli interi, la loro cardinalità risulta comunque essere $aleph_0$. La dimostrazione di questo risultato è particolarmente interessante grazie al celebre "procedimento diagonale" di Cantor.

È possibile dimostrare, in particolare, che l'insieme delle frazioni con denominatore positivo ha cardinalità $aleph_0$. Da ciò si evince immediatamente che tale proprietà è valida anche per l'insieme dei razionali. Per questo si faccia riferimento alla @numerabilità_razionali, in cui le frazioni sono rappresentate graficamente come coppie di numeri interi — con il secondo elemento maggiore di zero.

#figure(
  
  cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (6, 4),
      axis-style: none,
      x-tick-step: 1,      
      y-tick-step: 1,      
      x-min: -0.5, x-max: 5.5,
      y-min: 0,    y-max: 4.5,
      x-label: [$x$],        
      y-label: [$y$],    
      x-grid: true,   
      y-grid: true,
      {
        let col = blue.lighten(25%) 
        
        for q in range(-3, 1) {
          let y0 = -float(q) // Intercetta all'asse y
          
          // 1. Disegna la retta
          plot.add(
            domain: (0.2, 5),
            style: (stroke: (paint: col, thickness: 1pt)),
            x => x - float(q)
          )
          
          // 2. Aggiungi la punta della freccia con la giusta inclinazione
          if y0 >= 0 and y0 <= 4.5 {
            plot.annotate({
              mark(
                (0.1, y0 + 0.1), // Punto leggermente avanti sulla retta (x=0.1, y=0.1-q)
                (0, y0),         // Punto esatto sull'asse y (x=0, y=-q)
                symbol: ">",
                fill: col,
                stroke: (paint: col, thickness: 1pt),
                size: 0.15
              )
            })
          }
        }
      }
    )
    content((1.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 1)])
    content((2.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 2)])
    content((3.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 3)])
    content((4.5, 3.5), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(0, 4)])
    content((1.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 1)])
    content((2.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 2)])
    content((3.5, 2.6), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(1, 3)])
    content((1.5, 1.7), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(-1, 1)])
    content((2.5, 1.7), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(-1, 2)])
    content((1.5, 0.8), frame: "rect", fill: white, stroke: none, padding: 0.1, text(size: 8pt)[(2, 1)])
  }),
  caption: []
)<numerabilità_razionali>

Dalla figura si comprende la corrispondenza biunivoca che vogliamo costruire tra i numeri naturali e le frazioni:
$
  0 &<-> (0, 1) \
  1 &<-> (0, 2) \
  2 &<-> (1, 1) \
  3 &<-> (0, 3) \
  4 &<-> (1, 2) \ 
  5 &<-> (-1, 1) \
  &quad dots.v
$
Questo risultato appare sorprendente: mentre tra due numeri interi qualsiasi vi è un numero finito di interi, fra due razionali qualsiasi esiste un numero infinito di razionali.

=== Perché i razionali non bastano? <oltre_razionali>
Dal punto di vista algebrico e della risoluzione delle equazioni, i numeri razionali risultano essere adeguati a molte esigenze. Tuttavia, emergono situazioni nelle quali l'insieme dei razionali si rivela "incompleto". Storicamente, questa scoperta è strettamente collegata al famoso teorema di Pitagora.

Si immagini un triangolo rettangolo i cui due cateti abbiano lunghezza pari a $1$: qual è la misura della sua ipotenusa? Equivalentemente, se si ha un quadrato di lato $1$, quale sarà la lunghezza del lato di un quadrato che ha superficie doppia?

In termini algebrici, il problema corrisponde alla risoluzione dell'equazione $x^2 = 2$. Tuttavia, questa equazione non possiede soluzioni nell'insieme dei numeri razionali. Infatti, se una frazione $m/n$ fosse soluzione dell'equazione, si avrebbe $m^2 = 2n^2$. Scomponendo $m$ e $n$ in fattori primi, nella relazione ottenuta il numero di fattori primi uguali a $2$ risulterebbe dispari su un lato dell'equazione, violando dunque le proprietà dei quadrati perfetti.

È importante sottolineare il carattere teorico del problema. Dal punto di vista pratico, è possibile approssimare la lunghezza dell'ipotenusa con una frazione fino a ottenere una precisione arbitraria. Ad esempio, la frazione $1414/1000$ rappresenta un'approssimazione della radice quadrata di $2$, corretta fino alle prime tre cifre decimali, sufficiente per la maggior parte delle applicazioni pratiche.

Un altro aspetto rilevante riguarda il fatto che un insieme superiormente limitato di numeri razionali può non possedere né massimo né estremo superiore.

La corretta risoluzione dei problemi matematici presentati conduce all'estensione dell'ambito numerico fino a includere l'insieme dei numeri reali. Questa estensione rappresenta un arricchimento significativo rispetto agli insiemi finora considerati. Per fornire un'intuizione sul processo di costruzione di questo insieme, affrontiamo brevemente il tema della rappresentazione decimale dei numeri introdotti fino a questo punto.

== Rappresentazione decimale dei numeri razionali

In questa sezione esamineremo come sia possibile rappresentare ogni numero razionale utilizzando un numero finito di simboli, noti come cifre, disposti in sequenza. In sostanza, introdurremo la scrittura posizionale dei numeri con una breve panoramica. L'obiettivo finale sarà arrivare alla scrittura decimale; tuttavia, per evitare confusione, inizieremo usando la rappresentazione romana degli interi, che non è una notazione posizionale, introducendo però il simbolo dello zero (inesistente nel sistema romano). I numeri naturali saranno quindi indicati come 0, I, II, III, IV e così via. Da subito, per semplicità, useremo 1 invece di I.

=== Il caso degli interi
Per adottare la scrittura posizionale nei numeri naturali (gli interi potranno essere gestiti aggiungendo eventualmente il segno "-"), è necessario considerare il seguente risultato fondamentale:
#v(4em)
#definizione(title: "Teorema del sistema di numerazione posizionale")[Se $b$ è un numero naturale maggiore di 1, per ogni numero naturale $n$ esiste una e una sola sequenza di cifre naturali comprese tra $0$ e $b - 1$, che indicheremo con $c_k, c_(k-1), ..., c_1, c_0$, tale che:
$ n = c_k b^k + c_(k-1) b^(k-1) + dots + c_1 b^1 + c_0 b^0 $
ovvero:
$ n = (c_k c_(k-1) dots c_1 c_0)_b $<teorema_sistema_posizionale>
]

In pratica, per rappresentare il numero $n$, le cifre vengono scritte una accanto all'altra, seguite dall'indicazione della base $b$, che definisce il sistema posizionale usato.

Va specificato che nella formula @teorema_sistema_posizionale il valore di $c_k$ è diverso da zero, mentre gli altri coefficienti possono anche essere nulli; tuttavia, gli zeri devono essere esplicitamente rappresentati nella scrittura. Il cuore della notazione posizionale sta proprio nella presenza degli zeri tra le cifre: essi consentono di associare ogni cifra alla potenza corrispondente della base. 

Per evitare ambiguità, è preferibile utilizzare simboli semplici e univoci per le cifre (ossia i numeri naturali compresi tra $0$ e $b - 1$), disposti ordinatamente uno accanto all'altro.

Quando la base $b = X$ (o $b = 10$), si ottiene la comune scrittura decimale. Tuttavia, con l'avvento dei calcolatori, hanno acquisito rilevanza anche altri sistemi di numerazione, come il binario ($b = 2$), l'ottale ($b = 8$) e l'esadecimale ($b = 16$). Si noti che la base deve essere maggiore di 1: un singolo simbolo non può costituire una base numerica.

Nel caso delle basi fino a $b = X$, si utilizzano le cifre arabe comuni; per la base $b = 16$, si aggiungono le lettere A, B, C, D, E ed F per rappresentare i valori da 10 a 15. Poiché la base decimale ($b = x$) è universalmente diffusa, si omette generalmente la sua indicazione esplicita nella rappresentazione posizionale. Si noti che la base $b$ della scrittura si scrive sempre $(10)_b$; infatti si ha:

$ 
  b = 1 b^1 + 0 b^0
$

#esempio[#let sp = {
  h(0.1em)
}
$"CLXXVII" &= 1 times "X"^"II" + 7 times "X"^1 + 7 times "X"^0 = (177)_X = 177
\ &= 2 #sp times #sp "III"^"IV" #sp + #sp 0 #sp times #sp "III"^"III" #sp + #sp 1 #sp times #sp "III"^"II" #sp + #sp 2 #sp times #sp "III"^1 #sp + #sp 0 #sp times #sp "III"^0 #sp = #sp (20120)_"III" \ &="B" times "XVI"^1 + 1 times "XVI"^0 = ("B"1)_"XVI"$. 
]
Si osserva quindi che, quanto maggiore è la base, più breve risulta la scrittura posizionale di un numero.  

=== Cenno al cambiamento di base

Vediamo ora come passare da una base qualsiasi alla base decimale (10) e viceversa. 

Il passaggio da una base qualunque alla base 10 si effettua in maniera diretta, sfruttando il principio della scrittura posizionale e traducendo i valori delle potenze nella forma decimale. 

#esempio()[
$
  (241)_V &= 2 times V^2 + 4 times V^1 + 1 times V^0 \  &= 2 times 5^2 + 4 times 5^1 + 1 times 5^0 = 71
$
]

Per effettuare il passaggio inverso (da base 10 a una qualsiasi base $b$), si procede tramite divisioni successive con il resto, usando la nuova base fino ad ottenere il quoziente pari a zero. I resti calcolati, letti in ordine inverso, rappresentano il numero nella nuova base. 

#esempio()[
$
  &71 : 5 = 14 "con resto di" 1; \  
  &14 : 5 = 2 "con resto di" 4; \  
  &2 : 5 = 0 "con resto di" 2
$
Si ottiene allora $(71)_X = (241)_V$.
][
Un altro esempio con base $"XII"$:
$
&2014 : 12 = 167 "con resto di" 10, "ovvero" A; \
&167 : 12 = 13 "con resto di" 11, "ovvero" B; \
&13 : 12 = 1 "con resto di" 1; \
&1 : 12 = 0 "con resto di" 1.
$
Si ottiene allora $(2014)_X = (11"BA")_"XII"$.
]

=== Il caso dei razionali
Per i numeri razionali ci concentreremo esclusivamente sulla scrittura decimale, ovvero quella che include la virgola, considerando frazioni ridotte ai minimi termini (senza divisori comuni tra numeratore e denominatore). Per semplicità, trattiamo solo i numeri razionali positivi, dove per rappresentare un valore negativo sarà sufficiente aggiungere il segno "--".  

La comprensione di questi concetti passa dalla classica operazione di divisione con virgola tra due numeri naturali, come illustrato negli esempi seguenti.  
#v(4em)
#esempio[Consideriamo la divisione del numero $19 : 4$, corrispondente alla frazione $19/4$. In questo caso, il processo di divisione termina quando si ottiene come resto 0:

#align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$19 #hide[00]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$4#hide[,00]$],
  
  // Primo passaggio | Quoziente
  [$#hide[0] 30 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[$4.75$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[00] 20$],
  grid.cell(stroke: (left: .5pt))[],
  
  [#hide[000] $0$],
  grid.cell(stroke: (left: .5pt))[]
)]

La rappresentazione decimale risultante è $ 19/4 = 4.75 $

Questa scrittura corrisponde alla seguente decomposizione posizionale:  
$ 19/4 = 4 times 10^0 + 7 times 10^(-1) + 5 times 10^(-2) $  
]
Il punto decimale viene introdotto per separare le potenze di dieci con esponenti positivi e negativi. Come noto, un numero decimale derivante da una divisione con resto zero è chiamato decimale finito.  

#esempio[Ora consideriamo la divisione del numero $19 / 6$:

#align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$19 #hide[00]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$6#hide[,0000]$],
  
  // Primo passaggio | Quoziente
  [$#hide[0] 10 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[$3.16 dots$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[00] underline(4) 0$],
  grid.cell(stroke: (left: .5pt))[],
  
  [$#hide[000] underline(4)$],
  grid.cell(stroke: (left: .5pt))[]
)]

Nell'ultimo esempio, il processo di calcolo si arresta quando un resto si ripete: proseguendo la divisione si otterrebbe infatti, all'infinito, la stessa sequenza di cifre dopo la virgola. Questo fenomeno è noto come rappresentazione decimale periodica e la cifra (o gruppo di cifre) che si ripete è definita periodo (in questo caso, 6), mentre la cifra (o gruppo di cifre) che precede il periodo, subito dopo la virgola, è chiamata antiperiodo. Se non esiste un antiperiodo, il decimale è detto "periodico semplice", mentre se presente, si parla di "periodico misto". La scrittura comunemente utilizzata è:

$ 19/6 = 3.1 overline(6) $

Il significato di questa notazione può essere espresso come segue:

$ 19/6 &= 3 times 10^0 + 1 times 10^(-1) + 6 times 10^(-2) + 6 times 10^(-3) + dots \
&= 3 times 10^0 + 1 times 10^(-1) + 6 times 10^(-2) times (1 + 10^(-1) + 10^(-2) + dots) \
&= 3 times 10^0 + 1 times 10^(-1) + 6 times 10^(-2) times sum_(i=0)^(+oo) 10^(-i) $

La somma infinita che compare in questa espressione è chiamata "serie". Sebbene il tema delle serie esuli dagli scopi principali di questo testo, non è difficile dimostrare che questa somma infinita ha un valore finito, pari a $10/9$. Per comprenderlo meglio in modo elementare, si può verificare direttamente che:

$ 19/6 = 3 times 10^0 + 1 times 10^(-1) + 6 times 10^(-2) times (10/9) $

Un'ulteriore verifica può essere fatta con il seguente calcolo formale:

$ sum_(i=0)^(+oo) (10^(-i)) &= 1 + 10^(-1) + 10^(-2) + dots \ &= 1 + 0.1 + 0.01 + dots \ &= 1.111 dots\ &= 1.overline(1) \ &= 10/9 $
][
Come altro esempio, consideriamo la divisione di $40 : 33$, che rappresenta la frazione $40/33$. In questo caso abbiamo:

#align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$40 #hide[00]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$33#hide[,000]$],
  
  // Primo passaggio | Quoziente
  [$#hide[0] underline(7)0 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[$1.21 dots$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[00] 40$],
  grid.cell(stroke: (left: .5pt))[],
  
  [$#hide[000] underline(7)$],
  grid.cell(stroke: (left: .5pt))[]
)]

La notazione utilizzata è:
$ 40/33 = 1.overline(21) $
Il cui significato in termini espliciti è:

$ #h(-1em) 40/33 &= 1 dot 10^0 + 2 dot 10^(-1) + 1 dot 10^(-2) + 2 dot 10^(-3) + dots \
&= 1 dot 10^0 + (2 dot 10^(-1) + 1 dot 10^(-2)) + (2 dot 10^(-3) + 1 dot 10^(-4)) + dots \
&= 1 dot 10^0 + 21/100 dot (1 + 10^(-2) + 10^(-4) + dots) $

dove appare ancora una somma simile alla precedente, il cui valore questa volta risulta essere pari a $100/99$ (verificabile con la stessa tecnica usata in precedenza).

][

Quando si esegue una divisione con il metodo del resto, è evidente che il resto deve essere inferiore al denominatore. Dunque, in questo tipo di processo, vi sarà un numero finito di passi prima che un resto si ripeta. Se il denominatore ha valore $n$, la ripetizione avverrà al massimo dopo $n$ passi. Ad esempio, consideriamo la divisione relativa alla frazione $15/7$:

#align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 12pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$15 #hide[000000]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$7#hide[,00000000]$],
  
  // Primo passaggio | Quoziente
  [$#hide[0] underline(1)0 #hide[00000]$],
  grid.cell(stroke: (left: .5pt))[$2.142857 dots$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[00] 30 #hide[0000]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[000] 20 #hide[000]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[0000] 60 #hide[00]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[00000] 40 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[000000] 50$],
  grid.cell(stroke: (left: .5pt))[],
  
  [$#hide[0000000] underline(1)$],
  grid.cell(stroke: (left: .5pt))[]
)]

In questo caso, il processo si conclude esattamente al settimo passo, poiché il resto "1" si ripete. Con un denominatore 7, si raggiunge il massimo valore consentito; inoltre, dato che tutte le sei cifre ottenute fanno parte del periodo, chiamato decimale periodico massimale. La scrittura risultante è:

$ 15/7 = 2.overline(142857) $

Va sottolineato che il processo di divisione termina nel momento in cui si ripete un resto, e non necessariamente quando si ripete una delle cifre decimali. Gli esempi seguenti lo dimostrano.  
][
Esaminiamo la divisione $2249 : 1125$, corrispondente alla frazione $2249/1125$:  

#align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 5pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$2249 #hide[00000]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$1125#hide[,000]$],
  
  // Primo passaggio | Quoziente
  [$ 11240 #hide[0000]$],
  grid.cell(stroke: (left: .5pt))[$1.9991 dots$],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$#hide[0] 11150 #hide[000]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[0] 10250 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[00] underline(125)0 $],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[000] underline(125) $],
  grid.cell(stroke: (left: .5pt))[],

)]

da cui la scrittura $ 2249/1125 = 1.9991 overline(1) $
][

Consideriamo la divisione 1 : 9900 e la relativa frazione $1/9900$:

#align(center)[#grid(
  columns: (auto, auto),  
  inset: (x: 10pt, y: 4pt), 
  column-gutter: 0pt,
  
  // Dividendo | Divisore
  [$1 #hide[0000]$], 
  grid.cell(stroke: (left: .5pt, bottom: .5pt))[$9900#hide[.000]$],
  
  [$10 #hide[000]$],
  grid.cell(stroke: (left: .5pt))[$0.0001 dots$],

  // Primo passaggio | Quoziente
  [$ underline(100) #hide[00]$],
  grid.cell(stroke: (left: .5pt))[],
  
  // Resti successivi | Spazio vuoto (mantiene la linea verticale)
  [$1000 #hide[0]$],
  grid.cell(stroke: (left: .5pt))[],

  [$10000$],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[0] 9900 $],
  grid.cell(stroke: (left: .5pt))[],

  [$#hide[00] underline(100) $],
  grid.cell(stroke: (left: .5pt))[],

)]

da cui la scrittura: $ 1/9900 = 0.00 overline(01) $

]

Una scrittura come quella descritta negli esempi prende il nome di allineamento decimale, che può essere finito o periodico. Per uniformità, possiamo convenire di rappresentare un allineamento decimale finito come un allineamento decimale periodico con periodo 0.

Sugli allineamenti decimali si fonda il seguente importante teorema:

#definizione(title: "Teorema", label: <teorema_periodo1>)[Durante una divisione con virgola tra due numeri naturali, non si otterrà mai un allineamento decimale con periodo 9.]

Tenendo conto di questo teorema e delle osservazioni già fatte negli esempi, si arriva alla seguente conclusione:

#definizione(title: "Teorema", label: <teorema_periodo2>)[Ogni numero razionale può essere rappresentato in modo univoco da un allineamento decimale periodico (eventualmente con periodo 0), ma mai con periodo $9$.
]

Viceversa, a ogni allineamento decimale con periodo diverso da 9 corrisponde sempre un unico numero razionale, denominato frazione generatrice. Questa frazione può essere determinata seguendo un ragionamento che illustreremo ora con un esempio.

#esempio[Consideriamo l'allineamento decimale $3, #h(0em) overline(21973)$ e cerchiamo di determinare la sua frazione generatrice $x$:  
$
  x = 3.21 overline(973)
$

Si prosegue così, 
$ 
  100 x &= 321,#h(0em) overline(973) \ 
  1000 times 100 x &= 321 thin 973,overline(973)
$

Ora sottraiamo dalla seconda equazione la prima:

$ 
  100000 x - 100 x &= 321 thin 973,overline(973) - 321,#h(0em) overline(973) \
  99 thin 900 x &= 321 thin 973,overline(973) - 321,overline(973) $

Poiché tutte le cifre dopo la virgola si eliminano nella sottrazione, essendo esattamente identiche nelle due righe, si ricava subito:

Da qui possiamo ricavare $x$:  
$ x = (321 thin 973 - 321) / (99 thin 900) = (321 thin 970) / (99 thin 900) = (80 thin 413) / (24 thin 975) $]

Da questo procedimento emerge una regola pratica, nota e molto utilizzata: "per determinare la frazione generatrice di un decimale periodico, si scrive al numeratore la differenza tra il numero ottenuto affiancando tutte le cifre fino al primo periodo incluso e quello corrispondente alle cifre fino al periodo escluso. Al denominatore si pone un numero formato da tanti 9 quante sono le cifre del periodo e da quanti zeri sono le cifre dell'antiperiodo".

Questa regola è applicabile anche ai decimali finiti (con periodo 0). Tuttavia, in questi casi è più semplice scrivere direttamente una frazione costituita dal numeratore uguale al valore dell'intero numero senza il periodo, e dal denominatore uguale a $10^n$, dove $n$ indica le cifre successivamente alla virgola, escluse quelle relative al periodo 0.

#esempio[
$ 4.75 = 475 / 100 = 19 / 4 $]

Per comprendere, anche a un livello basilare, le ragioni alla base del teorema nella @teorema_periodo1, ovvero l'impossibilità di ottenere allineamenti decimali con periodo 9, osserviamo che la scrittura $0.overline(9)$, secondo le convenzioni adottate, equivale a:

$ 0.overline(9) = 9 times 10^(-1) + 9 times 10^(-2) + dots = 9/10 times sum_(i=0)^oo 10^(-i) = 9/10 times 10/9 = 1 $

Lo stesso risultato emerge applicando la regola della frazione generatrice già menzionata in precedenza. Gli allineamenti decimali con periodo 9 si definiscono allineamenti decimali impropri, in quanto rappresentano una seconda forma di scrittura per i decimali finiti. Ad esempio, $23.75overline(9) = 23.76$, come è semplice dimostrare.

Per concludere la discussione sulla rappresentazione decimale dei numeri razionali, ricordiamo i seguenti fatti relativi al tipo di allineamento decimale associato a un numero razionale $m/n$, assumendo che la frazione sia ridotta ai minimi termini e che $n > 0$:

1. Se il denominatore è 1 o, scomposto in fattori primi, contiene solo i numeri 2 e/o 5, il numero può essere rappresentato mediante due allineamenti decimali: uno finito e uno improprio (con periodo 9). Questi numeri razionali sono detti razionali decimali, perché possono essere trasformati in una frazione equivalente che ha come denominatore una potenza di 10.
2. Se il denominatore, nel suo sviluppo in fattori primi, contiene esclusivamente numeri diversi da 2 e 5, il numero può essere rappresentato come un unico allineamento decimale periodico semplice (privo di antiperiodo).
3. Se il denominatore contiene sia i fattori 2 o 5, sia altri fattori primi, il numero può essere rappresentato da un unico allineamento decimale periodico misto (ossia con antiperiodo).

=== Operazioni con i decimali <operazioni_decimali>

La rappresentazione dei numeri razionali in forma di allineamenti decimali risulta particolarmente utile in molte situazioni pratiche e tecniche. I calcolatori, ad esempio, utilizzano generalmente rappresentazioni decimali, spesso limitandosi a quelle finite, ottenute arrotondando o troncando opportunamente le espressioni illimitate. Gli allineamenti decimali, inoltre, permettono di semplificare notevolmente i problemi concernenti l'ordine tra i numeri. Tuttavia, le difficoltà emergono con operazioni come somma e moltiplicazione.

Nel caso di allineamenti finiti, si possono applicare le tecniche apprese già durante la scuola primaria. Tuttavia, per numeri con molte cifre decimali, queste operazioni diventano poco pratiche; inoltre, le stesse tecniche non risultano generalmente applicabili con gli allineamenti periodici, fatta eccezione per alcuni semplici casi.
#pagebreak()
Prendiamo in esame un esempio per illustrare questa difficoltà.

#esempio[ 
Poiché $1/3 = 0.overline(3)$, si ricava facilmente che:
$
  3 times 0.overline(3) = 0.overline(9) = 1
$

come ci si aspetterebbe. In questo caso la moltiplicazione è risultata semplice poiché non c'era alcun problema legato ai riporti. Ma come potremmo calcolare $4 times 0.overline(3)$? 

La tecnica della moltiplicazione richiederebbe di partire "dall'estrema destra", ma qui non è possibile farlo: "l'ultima cifra" del prodotto dovrebbe essere un 2, seguita da una ripetizione infinita di cifre 3, ma qual è davvero l'ultima cifra? Nonostante l'apparente difficoltà, possiamo dedurre che il risultato, trasformando il numero in frazione:

$ 4 times 0.overline(3) &= 4 times 1/3 = 4/ 3 \ = 1 + 1/3 &= 1 + 0,overline(3) = 1,overline(3) $

][
Consideriamo ora il calcolo di $ 0.overline(3) times 0.overline(3) $ 

Utilizzando la rappresentazione frazionaria, l'operazione risulta molto semplice:
$ 0.overline(3) times 0.overline(3) = 1/3 times 1/3 = 1/9 = 0.overline(1) $
][

Se invece provassimo a eseguire il calcolo direttamente usando gli allineamenti decimali, il procedimento risulterebbe meno immediato. Con un po' di dedizione e attenzione potremmo ugualmente giungere al risultato corretto, tenendo però presente che il risultato sarebbe un numero decimale periodico.

A dimostrazione della complessità del calcolo con gli allineamenti decimali, riportiamo un problema interessante proposto nell'aprile 2001 sul sito dell'Institut de Recherche sur l'Enseignement des Mathématiques dell'Università Louis Pasteur di Strasburgo. Il quesito era il seguente: "qual è il periodo del numero decimale $(1.overline(001))^2$?"

La risoluzione del problema non è immediata nemmeno con strumenti avanzati, come software dedicati al calcolo matematico o calcolatrici tascabili. Sappiamo però che:

$ 1,overline(001) = 1000/999 = 1000 / (3^3 times 37). $

Da ciò si deduce che il risultato è un numero decimale periodico semplice, poiché il denominatore non include i fattori primi 2 o 5. Inoltre, il periodo del decimale non supererà le $998 thin 000$ cifre. Sebbene software come _Mathematica_ possano calcolare una rappresentazione approssimata con un numero elevato di cifre decimali, verificare direttamente un periodo così lungo è complesso. È più conveniente utilizzare un software che calcoli il periodo tramite divisione e rilevamento delle ricorrenze. Il risultato ottenuto indica un periodo costituito da ben $2 thin 997$ cifre:

$ (1,overline(001))^2 = 1,overline(002 thin 003 dots 995 thin 996 thin 997 thin 999 thin 000 thin 001). $

È interessante notare che nello sviluppo decimale appaiono tutti i numeri di tre cifre da $002$ a $997$ senza ripetizioni, con l'eccezione del numero $998$, sostituito da una sequenza finale di "$999, 000, 001$". Questa curiosità fu uno dei motivi per cui l'esercizio venne proposto inizialmente. Sebbene sia teoricamente possibile ottenere questo risultato manualmente, ciò richiede un notevole impegno e una metodologia estremamente organizzata, come illustrato nella soluzione analitica discussa sul sito dell'università di Strasburgo.
]
È importante sottolineare che i calcoli effettuati dai computer utilizzano un allineamento decimale finito. Tale troncamento o arrotondamento degli sviluppi decimali può generare problemi significativi, come evidenziato nel prossimo esempio.

#esempio[Consideriamo l'operazione seguente:

$ 1/3 times 4 - 1 = 1/3. $

Idealmente, ripetendo il calcolo e moltiplicando nuovamente per 4 e sottraendo 1 a ogni passaggio, si dovrebbe sempre ottenere il valore originale di $1/3$. Questo è vero se si lavora direttamente con le frazioni esatte. Supponiamo però di approssimare $1/3$ come $0.3333$ (con quattro cifre decimali precise, comportando un errore inferiore a un decimillesimo) e di ripetere la procedura dieci volte:

$ (((((((((0.3333 times 4 - 1) times 4 - 1) times 4 - 1) times \ times 4 - 1) times 4 - 1) times 4 - 1) times 4 - 1) times \ times 4 - 1) times 4 - 1) times 4 - 1 $

In questo caso, il risultato finale è $-34.6192$, un valore totalmente errato e inaccettabile. Anche utilizzando una rappresentazione più precisa (con più cifre decimali), l'errore cumulativo continuerebbe ad aumentare man mano che cresce il numero di iterazioni eseguite.
]
Questo esempio dimostra chiaramente come sia fondamentale tenere in conto gli effetti dell'approssimazione nei calcoli basati sugli allineamenti decimali per evitare risultati significativi ma sbagliati.

#pagebreak(weak: true)
== I numeri reali  
=== Definizioni e proprietà 

Come già sottolineato, l'insieme dei numeri razionali, indicato con $QQ$, non è sufficiente a risolvere alcuni problemi, anche relativamente semplici, come ad esempio quelli legati alla risoluzione dei triangoli rettangoli. Per superare tali limitazioni, si introduce l'insieme dei numeri reali, che estende quello dei razionali. Tuttavia, trattare rigorosamente i numeri reali richiede un approccio complesso, motivo per cui qui ci limiteremo a una spiegazione intuitiva che ne illustri i concetti fondamentali e le difficoltà principali. Un approfondimento rigoroso sarà invece affrontato nei corsi universitari di matematica.

Cominciamo prendendo in considerazione l'equazione $x^2 = 2$ e cerchiamo di determinarne delle soluzioni positive, approssimate per difetto, utilizzando una progressiva precisione decimale. È possibile costruire una tabella come la seguente:  

#figure(
  caption: [],
  // gap: 0pt, // Allinea la didascalia alla tabella
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return main_scienze // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return main_scienze.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: right + horizon,
  columns: (3),
  table.header[Decimali][x][x#super[2]],
    [0], [1], [1],
    [1], [1.4], [1.96],
    [2], [1.41], [1.9881],
    [3], [1.414], [1.999396],
    [4], [1.4142], [1.99996164],
    [5], [1.41421], [1.9999899241],
    [6], [1.414213], [1.999998409369],
)  
)

Da questa tabella emerge una successione di valori decimali, ovvero: $1; 1.4; 1.41; 1.414; 1.4142; dots$ Questa successione è formata da numeri il cui quadrato è sempre inferiore a 2, ma rappresenta la migliore approssimazione per difetto della soluzione "esatta" dell'equazione $x^2 = 2$, al livello di precisione decimale considerato.  

È importante ricordare che nell'insieme dei razionali, una soluzione esatta per questa equazione non esiste. Inoltre, siccome il comportamento decimale dell'approssimazione non diventa mai periodico né finito, possiamo procedere indefinitamente a costruire una successione di valori decimali illimitati e non periodici. Si assume, quindi, che tale successione rappresenti la soluzione "esatta" dell'equazione in questione.  

Questa intuizione ci conduce a considerare l'insieme completo di tutti gli allineamenti decimali, inclusi quelli periodici e non. L'obiettivo diventa definire in questo insieme un ordine e le operazioni di addizione e moltiplicazione in modo tale da estendere le proprietà valide in $QQ$ anche al nuovo contesto. Sebbene il procedimento sia tutt'altro che semplice, specialmente per quanto riguarda le operazioni sugli allineamenti periodici, esso si conclude con l'introduzione di un nuovo insieme numerico chiamato insieme dei numeri reali, indicato con $RR$, che contiene $QQ$ come sottoinsieme: $QQ subset RR$.  

Va precisato che il metodo descritto non è l'unico né il più comune per definire l'insieme dei numeri reali, ma risulta utile in questo contesto introduttivo per lo scopo didattico prefissato.  

Nell'insieme $RR$ viene introdotto un ordine, basato sulle stesse regole del cosiddetto ordine lessicografico. Vengono inoltre definite due operazioni fondamentali: l'addizione e la moltiplicazione. Con queste strutture, l'insieme $RR$ assume la forma di un campo ordinato che estende le proprietà già presenti in $QQ$ per quanto riguarda le operazioni algebriche.  

La grande innovazione che distingue $RR$ da $QQ$ riguarda però la struttura dell'ordine. In $RR$ vale la cosiddetta proprietà dell'estremo superiore, secondo cui ogni insieme non vuoto e superiormente limitato di numeri reali possiede un massimo limite superiore nel contesto dei reali. 

Sebbene non possiamo approfondire ulteriormente questa proprietà, ci limitiamo a sottolineare che, in sostanza, è proprio grazie a essa che l'equazione $x^2 = 2$ ammette soluzioni nell'insieme dei numeri reali $RR$, mentre non ne aveva nell'insieme dei numeri razionali $QQ$. Inoltre, nei numeri reali non solo tale equazione di secondo grado trova una soluzione, ma ogni equazione del tipo:

$ x^n = a, quad n in NN, n >= 2, quad a in RR, a >= 0 $<equazione_reali>

L'insieme dei numeri reali $RR$ possiede un'importante proprietà nota come corpo archimedeo: questo implica che, dati due numeri reali $a > 0$ e $b > a$, esiste un multiplo di $a$ che supera $b$. Sebbene questa caratteristica possa sembrare intuitiva, non tutti i corpi ordinati ne sono dotati. Tuttavia, non ci soffermeremo ulteriormente su questo aspetto.

Per quanto riguarda la "quantità di elementi" appartenenti all'insieme $RR$, è utile ricordare che abbiamo già dimostrato (@insiemi_finiti_infiniti) che l'insieme dei numeri reali possiede una cardinalità maggiore rispetto a quella dei numeri naturali, e di conseguenza rispetto anche a quella dei razionali. Questo è confermato dal teorema (@teorema_densità_razionali), secondo cui l'insieme dei numeri razionali ha la stessa cardinalità di quello dei naturali. Pertanto, l'insieme $RR$ è significativamente "più ricco" rispetto ai numeri razionali.

Definendo l'insieme $RR$ come formato da tutti gli allineamenti decimali (escludendo quelli con periodo 9 per evitare duplicati), possiamo considerarlo costituito dall'unione dei numeri decimali finiti o periodici (ossia i razionali) con quelli decimali illimitati non periodici. Questi ultimi prendono il nome di numeri irrazionali o semplicemente irrazionali. Indichiamo gli irrazionali con $II$, quindi possiamo scrivere $RR = QQ union II$, con $QQ inter II = emptyset$. Sebbene l'insieme degli irrazionali abbia una struttura meno rilevante rispetto ai razionali, esso presenta una cardinalità maggiore di $aleph_0$, il che indica che la stragrande maggioranza dei numeri reali è composta da irrazionali.

Con queste premesse, possiamo dimostrare alcune proprietà fondamentali dell'insieme $RR$:
+ la somma tra due numeri irrazionali può risultare razionale. Ad esempio, prendendo i numeri $a = 2.alpha_1 alpha_2 dots$ e $b = -1.alpha_1 alpha_2 dots$, dove le cifre decimali successive alla virgola sono identiche e illimitate non periodiche, otteniamo che $a, b in II$, ma la loro somma $a + b = 1 in QQ$.
+ il prodotto di due irrazionali può essere un numero razionale. Consideriamo, per esempio, il numero illimitato non periodico risultato dalla radice quadrata di 2 ($x = sqrt(2)$), che è un irrazionale. Moltiplicandolo per se stesso ($x^2$), otteniamo 2, che è un numero razionale.
+ la somma tra un razionale e un irrazionale è sempre irrazionale. Infatti, se prendiamo $r in QQ$ e $i in I$ e supponiamo $r + i = s in QQ$, ciò implicherebbe $i = s - r in QQ$, il che contraddice la definizione di $i$ come numero irrazionale.
+ il prodotto tra un razionale (diverso da zero) e un irrazionale è sempre irrazionale. Analogamente, consideriamo $r in QQ$ e $i in II$. Se fossimo in grado di scrivere $r dot i = s in QQ$, ciò implicherebbe che $i = s \/ r in QQ$, contraddicendo ancora una volta la natura irrazionale di $i$.

Queste considerazioni dimostrano alcune delle proprietà peculiari degli insiemi dei numeri reali e delle loro sotto-classi, come l'insieme dei numeri razionali e quello degli irrazionali.

=== Ascisse su una retta

Uno degli aspetti più significativi legati all'introduzione dei numeri reali è la possibilità di stabilire una corrispondenza biunivoca tra i numeri reali e i punti di una retta, definendo così un sistema di ascisse su di essa. In tal caso, la retta viene denominata asse delle ascisse. Il procedimento avviene in questo modo: si considera una retta $r$ sulla quale si fissa un punto $O$, detto origine, e un punto $U$. Assumendo la lunghezza del segmento $overline(O U)$ come unità di misura, al punto $U$ si associa il numero reale $1$. A qualsiasi altro punto $P$ della semiretta $O U$ si associa un numero reale positivo proporzionale alla lunghezza del segmento $overline(O P)$. Analogamente, ai punti $P$ appartenenti all'altra semiretta con origine $O$ si associa l'opposto del numero che rappresenta la lunghezza del segmento $overline(O P)$.

Questo approccio consente di attribuire a ogni numero reale un preciso punto della retta dotata del sistema di ascisse e, viceversa, permette di associare ogni punto della retta a un numero reale. Di fatto, numeri reali e punti della retta risultano identificabili tra loro: perciò, in molti contesti, si utilizza il termine "punti" come sinonimo di "numeri reali" (anche noi adotteremo spesso questa convenzione). Si parla quindi di retta reale per indicare l'insieme dei numeri reali, solitamente raffigurato come una retta orientata.

È interessante notare che l'introduzione dei numeri reali risolve quella che, a prima vista, potrebbe sembrare una situazione paradossale. Per esempio, analizziamo il caso rappresentato in figura @intersezione_retta_circonferenza, dove $O U A B$ è un quadrato.
#pagebreak(weak: true)
#figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 8 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10.5, 0), mark: (end: ">", fill: black))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
  let to_x(val) = val * scale

  // punti principali (coordinata, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "", "-3"),
    (0.2, "", "-2"),
    (0.4, "", "-1"),
    (0.6, "", "0"),
    (0.8, "", "1"),
    (1.0, "", "2"),
    (1.2, "", "3"),  
  )

  // segni punti
  for (val, top, bot) in points {
    let x = to_x(val)
    line((x, -0.1), (x, 0.1))
    content((x, 0.4), eval("$" + top + "$"))
    if bot != "" {
      content((x, -0.4), eval("$" + bot + "$"))
    }
  }

    // linea 0A   
    let x_start_a = 0.6 * scale
    let y_start_a = 0
    let x_end_a = 0.8 * scale
    let y_end_a = (calc.sqrt(2))
    line((x_start_a, y_start_a), (x_end_a, y_end_a), stroke: (paint: main_scienze, dash: "dashed"))
    
    // quadrato e cerchio
    rect((0.6 * scale, 0), (0.8 * scale, calc.sqrt(2)))
    circle((0.6 * scale, 0), radius: (calc.sqrt(2) + 0.74), fill: none, stroke: main_scienze)

    // punti
    circle((0.6 * scale, 0), radius: 0.05, fill: main_scienze, stroke: none)
    content((0.6 * scale - 0.3, 0.3), [$O$])

    circle((0.8 * scale, 0), radius: 0.05, fill: main_scienze, stroke: none)
    content((0.8 * scale + 0.3, 0.3), [$U$])

    circle((0.6 * scale, (calc.sqrt(2))), radius: 0.05, fill: main_scienze, stroke: none)
    content((0.6 * scale - 0.3, (calc.sqrt(2))), [$B$])

    circle((0.8 * scale, (calc.sqrt(2))), radius: 0.05, fill: main_scienze, stroke: none)
    content((0.8 * scale + 0.3, (calc.sqrt(2))), [$A$])

    circle(((calc.sqrt(2)) * 0.6145 * scale, 0), radius: 0.05, fill: main_scienze, stroke: none)
    content(((calc.sqrt(2)) * 0.6 * scale + 0.4, 0.3), [$P$])

}),
caption: []
)<intersezione_retta_circonferenza>

Senza fare ricorso ai numeri reali, saremmo costretti a concludere che non può esserci intersezione tra l'asse delle ascisse e la circonferenza con centro in $O$ e passante per $A$. Questo perché il punto $P$, uno dei candidati all'intersezione tra la retta e la circonferenza, deve avere come ascissa un numero il cui quadrato è $2$. Tuttavia, sappiamo che nei numeri razionali ($QQ$) un numero del genere non esiste.

=== Intervalli di numeri reali

I segmenti e le semirette rappresentano sottoinsiemi significativi sulla retta numerica. Di conseguenza, acquistano rilevanza anche i sottoinsiemi di $RR$ che ad essi corrispondono nella rappresentazione dei numeri reali sulla retta. Per facilitare le scritture (e per ragioni che diverranno più chiare trattando il concetto di limite), si aggiungono all'insieme dei numeri reali due elementi particolari: $-oo$ (meno infinito) e $+oo$ (più infinito). L'insieme che si forma è denominato retta reale estesa, definita come:

$ accent(RR, tilde) = RR union {-oo, +oo} $

L'ordinamento di $RR$ può essere esteso stabilendo che:
$ -oo < x < +oo, quad forall x in RR, " e " -oo < +oo $

Tuttavia, le operazioni di somma e prodotto non vengono estese a $accent(RR, tilde)$, poiché $-oo$ e $+oo$ non sono numeri nel senso tradizionale e, pertanto, non possono essere trattati come tali. Nei corsi di analisi matematica si dimostra che non è possibile estendere queste operazioni in modo da mantenerne le proprietà formali.

#definizione(title: "Intervalli")[Si definiscono intervalli di $RR$ tutti i sottoinsiemi $I subset.eq RR$ che rispettano la seguente condizione: se $a, b in I$, con $a <= b$, allora ogni $x in RR$, tale che $a <= x <= b$, appartiene a $I$. 

In altre parole, un sottoinsieme $I$ è un intervallo se, contenendo due numeri reali qualsiasi, include anche tutti i numeri compresi tra essi.]
#pagebreak(weak: true)
È dimostrabile#footnote[La questione risulta intuitivamente chiara, ma in realtà è più complessa di quanto sembri.] che gli intervalli di $RR$ sono esattamente quelli elencati di seguito, con $a, b in RR, a <= b$.
+ intervalli degeneri:
  - $emptyset$;
  - ${a}, quad forall a in RR$.

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

=== Valore assoluto

#definizione(title: "Valore assoluto")[Dato un numero reale $x$, si definisce valore assoluto o modulo di $x$ il numero reale, indicato con $|x|$ o $abs x$, determinato come segue:
$
  abs x = |x| = cases(
    x & space "se " x >= 0,
    -x & space "se " x < 0
  ) 
$
]
Secondo la rappresentazione dei numeri reali sull'asse delle ascisse, $|x|$ rappresenta la distanza tra il punto $x$ e l'origine. Il valore assoluto soddisfa le seguenti proprietà fondamentali:
+ $|x + y| <= |x| + |y|$ (nota anche come disuguaglianza triangolare);
+ $|x - y| >= ||x| - |y||$;
+ $|x dot y| = |x| dot |y|$;
+ $abs(x / y)  = (|x|)/(|y|)$, con $y != 0$

#esempio[
$ |-5| = 5; quad |+8| = 8; quad |x^2| = x^2; quad (|x|)^2 = x^2 $]

=== I radicali

Abbiamo già specificato che, in $RR$, ogni equazione del tipo: 

$ x^n = a, quad n in NN, n >= 2, quad a in RR, a >= 0 $<radicali1>

ha soluzione. Nello specifico ha:
- per $n$ pari, l'equazione ha due soluzioni opposte.
- per $n$ dispari, ha una sola soluzione positiva.

Si introduce pertanto la seguente definizione:

#definizione(title: "Radice aritmetica", label: <radice_aritmetica>)[L'unica soluzione positiva dell'equazione $x^n = a$ si chiama radice $n$-esima aritmetica o radicale aritmetico $n$-esimo del numero reale positivo $a$, e si indica con $ root(n, a) $ 

Il numero $n$ è chiamato indice del radicale, mentre il numero $a$ radicando. Questa definizione implica che, per $a >= 0$ e $n >= 2$:
$ (root(n, a))^n = a $]
Se $n = 2$, viene semplicemente scritto $sqrt(a)$, senza specificare l'indice, e la radice è detta radice quadrata.
Se $n = 3$, la radice è nota come radice cubica.
Se invece si fosse in presenza di $n = 1$, l'equazione sarebbe elementare poiché risolvibile per qualsiasi reale; da ciò deriva che l'indice del radicale deve essere almeno pari a 2.

Sebbene la definizione di radicale aritmetico valga per ogni $a >= 0$, nelle applicazioni comuni ci si concentra su radicali con radicando razionali o interi, trascurando quelli più generali. Per convenzione, quindi, si utilizza il termine "radicale" riferendosi esclusivamente a casi con radicando razionale, e in questa trattazione seguiremo tale regola.

Anche l'equazione:
$ x^n = a, quad n in NN, n "dispari" >= 3, quad a in RR, a < 0 $
possiede un'unica soluzione negativa. Tuttavia, per questa soluzione negativa si utilizza la stessa simbologia già introdotta per la soluzione positiva di @radice_aritmetica, cioè $ root(n, a) $

In questo caso, il principio viene chiamato radicale algebrico, anziché aritmetico. Questa ambiguità potrebbe generare confusione e portare a errori gravi; è quindi indispensabile prestare grande attenzione nella distinzione.

#esempio[Se $x^3 = -8$, l'unica soluzione è $x = -2$]

Analizzando l'equazione $x^2 = 2$, che rappresenta un caso specifico dell'equazione @radicali1, abbiamo affermato che la sua soluzione si manifesta come un numero decimale illimitato e non periodico che comincia con $1.41421 dots$ Per quale motivo, allora, abbiamo deciso di introdurre un nuovo simbolo, ovvero $sqrt(2)$, per rappresentare questa stessa soluzione? La scelta è giustificata da diversi motivi:

- praticità universale: l'introduzione del simbolo radicale offre una notazione "universale" che può essere applicata a qualunque equazione del tipo @radicali1, indipendentemente dal radicando o dall'indice;
- chiarezza interpretativa: utilizzare i radicali permette di individuare immediatamente l'equazione da cui proviene una determinata soluzione;
- evitare approssimazioni decimali: l'uso dei radicali riduce, entro certi limiti, la necessità di effettuare calcoli con numeri decimali, che possono diventare complicati nel caso di allineamenti illimitati e non periodici. Questa complessità è già stata analizzata per gli allineamenti finiti e periodici nella @operazioni_decimali e diventa ancora più problematica con quelli illimitati e non periodici. 

Un esempio pratico può chiarire la questione. 

#esempio()[Mentre $sqrt(2)$ elevato alla decima potenza dà esattamente:
$ (sqrt(2))^10 = (sqrt(2)^2)^5 = 2^5 = 32 $
invece, approssimando $sqrt(2)$ a $1,4$ (con un errore di poco più di un centesimo), il calcolo porta a:
$ (1,4)^10 approx 28,9254654976 $
con un errore significativo. Approfondiremo questo argomento in seguito, in @radicali_allineamenti.
]

Passiamo ora alle proprietà dei radicali aritmetici, che descrivono le regole operative fondamentali per il loro utilizzo. Alcune modifiche saranno necessarie per estendere tali regole ai radicali algebrici. È essenziale sottolineare che le seguenti proprietà si applicano esclusivamente ai radicali aritmetici, condizione che segnaleremo ogni volta ricordando che i radicandi devono essere numeri reali non negativi ($>= 0$).

#definizione(title: "Proprietà invariantiva dei radicali")[ 
Data una quantità reale $a >= 0$ e numeri naturali $n, m, k$ maggiori o uguali a 2, vale la seguente proprietà:
$ root(n, a^m) = root(k dot n, a^(k dot m)) $]

Questa relazione consente di uniformare più radicali portandoli a uno stesso indice. 

#esempio[I radicali $root(3, 5), root(4, 7), root(6, 11)$ 
possono essere riscritti in forma equivalente utilizzando come indice comune il minimo comune multiplo di 3, 4 e 6:

$ root(12, 5^4), quad root(12, 7^3), quad root(12, 11^2) $

Inversamente, leggendo la proprietà da destra a sinistra, è possibile semplificare un radicale dividendo sia l'indice che l'esponente del radicando per un comune divisore. Per esempio:
$ root(15, 7^12) = root(5, 7^4), quad root(8, 64) = root(8, 2^6) = root(4, 2^3) $]

Infine, si osserva una relazione particolarmente importante:
$ root(n, a^(m dot n)) = a^m $

#definizione(title: "Prodotto e quoziente di radicali con lo stesso indice")[
Se $a >= 0$ e $b >= 0$ sono numeri reali, e $n$ è un numero naturale $>= 2$, si applica la proprietà:
$ root(n, a) dot root(n, b) = root(n, a dot b) $

Se $a >= 0$ e $b > 0$ sono numeri reali, e $n$ è un numero naturale $>= 2$, vale:
$ root(n, a / b) = root(n, a) / root(n, b) $]

Nel caso in cui i radicali abbiano indici diversi, il prodotto o il quoziente possono essere calcolati dopo averli ridotti allo stesso indice. 

#esempio()[$ root(3, 5) dot root(3, 7) = root(3, 35), \ root(3, 5) dot root(4, 7) dot root(6, 11) = root(12, 5^4) dot root(12, 7^3) dot root(12, 11^2) = root(12, 5^4 times 7^3 times 11^2) $]

#definizione(title: "Potenza e radice di un radicale")[Se $a$ è un numero reale $>= 0$, $n$ è un numero naturale $>= 2$, e $m$ è un numero intero, si ha:
$ (root(n, a))^m = root(n, a^m) $

Se $a$ è un numero reale $>= 0$, $n$ e $m$ sono numeri naturali $>= 2$, allora:
$ root(m, root(n, a)) = root(n dot m, a) $]

#definizione(title: "Portare dentro e fuori dal segno di radice")[Utilizzando le proprietà appena descritte, è possibile eseguire due operazioni molto frequenti, ovvero portare un fattore positivo dentro o fuori dal segno di radice.
Se $a >= 0$, allora:
$ a dot root(n, b) = root(n, a^n dot b) $
e viceversa:
$ root(n, a^n dot b) = a dot root(n, b) $]

#esempio[$ 3 root(4, 5) = root(4, 3^4 times 5) = root(4, 405) $][$ -2 root(3, 4) = -root(3, 2^3 dot 4) = -root(3, 32) $][$ a root(n, b) = cases(
  root(n, a^n dot b) & "se " a >= 0,
  -root(n, |a|^n dot b) & "se " a < 0
) $][$ root(3, 20000) = root(3, 2^5 times 5^4) = 2 times 5 times root(3, 2^2 times 5) = 10 root(3, 20) $]

#definizione(title: "Problema della somma di radicali")[Dato che, come visto, $ a root(n, b) = root(n, a^n dot b), quad "se" a >= 0 $ possiamo estendere la definizione di radicale anche alle espressioni del tipo $a root(n, b)$. In questo caso, due radicali come $a root(n, b)$ e $c root(n, b)$ si dicono simili.

La somma di due radicali simili genera un nuovo radicale simile ai due dati:
$ a root(n, b) + c root(n, b) = (a + c) root(n, b) $]

Per convincersi della proprietà si può applicare la regola distributiva della moltiplicazione rispetto all'addizione. Consideriamo ora la somma di due radicali non simili e che non possono essere resi tali attraverso l'applicazione delle proprietà dei radicali. 

#esempio[Studiamo il caso di $sqrt(2) + sqrt(3)$. Iniziamo dimostrando che questo numero non è razionale. Supponiamo, per assurdo, che esista un valore razionale $r in QQ$ tale che $sqrt(2) + sqrt(3) = r$. Elevando al quadrato entrambi i membri dell'equazione, otteniamo:

$2 + 3 + 2 sqrt(6) = r^2 quad arrow.long quad sqrt(6) = (r^2 - 5) / 2$

Da questa relazione sembrerebbe che $sqrt(6)$ sia razionale, essendo ottenuto da operazioni tra numeri razionali. Tuttavia, avvalendoci della stessa tecnica utilizzata per dimostrare l'irrazionalità di $sqrt(2)$ (@oltre_razionali), possiamo confermare che anche $sqrt(6)$ è irrazionale, il che genera una contraddizione. 

Analogamente, si può dimostrare che non esiste alcun $r in QQ$ tale che $sqrt(2) + sqrt(3) = sqrt(r)$. Un'ulteriore difficoltà emerge se si prova a dimostrare che, per ogni $n in NN$ con $n > 1$, non esiste un $r in QQ$ tale che $sqrt(2) + sqrt(3) = root(n, r)$. Pertanto, la somma proposta non corrisponde a un radicale con radicando razionale#footnote[È evidente, invece, che $sqrt(2) + sqrt(3) = sqrt(5 + 2sqrt(6))$,  
ovvero che la somma indicata risulta essere un radicale con un radicando irrazionale. Tuttavia, questo aspetto ha un'importanza piuttosto marginale.].
]
Questa peculiarità della somma tra radicali è uno dei motivi per cui lavorare con i radicali risulta complicato. A differenza dei numeri razionali, la somma e il prodotto di due radicali non garantiscono di essere nuovamente un radicale. L'insieme dei radicali, infatti, non gode di alcuna struttura significativa in relazione alle operazioni di addizione e moltiplicazione. 

Dopo aver introdotto il concetto di radicale e le proprietà relative alla somma e al prodotto di numeri razionali e irrazionali (già trattate in @equazione_reali), è possibile verificarle più chiaramente con alcuni esempi pratici:

#esempio[
$ 1 - sqrt(2) in I, quad sqrt(2) in I, quad &"ma" quad 1 - sqrt(2) + sqrt(2) = 1 in QQ \ root(3, 4) in I, quad root(3, 16) in I, quad &"ma" quad root(3, 4) dot root(3, 16) = root(3, 64) = 4 in QQ $
]
#definizione(title: "Estensione delle proprietà ai radicali algebrici")[Le caratteristiche dei radicali aritmetici possono essere estese, in condizioni specifiche, anche ai radicali algebrici. Tuttavia, non è sempre opportuno fissare delle regole generali.]

#esempio[Conviene invece analizzare esempi particolarmente rilevanti che evidenzino possibili strategie operative: 

$ 
  sqrt((-3)^2) = sqrt(3^2) = 3 = |-3| \

  sqrt((-3)(-4)) = sqrt(3 times 4) = sqrt(3)sqrt(4) = sqrt(|-3|)sqrt(|-4|); \
  sqrt((-3)^2 times 5) = sqrt(3^2 times 5) = 3 sqrt(5) = |-3|sqrt(5); \
  root(6, (-3)^4) = root(6, 3^4) = root(3, 3^2) = root(3, (-3)^2); \ root(6, (-3)^2) = root(6, 3^2) = root(3, 3) = root(3, |-3|)
$
]

Una situazione che richiede particolare attenzione è la seguente:
$ sqrt(a b) = sqrt(|a|) dot sqrt(|b|) $

Questa uguaglianza è valida procedendo da sinistra a destra, ma non sempre vale nel senso opposto. È importante notare che il primo membro ha significato solo quando $a$ e $b$ sono concordi, mentre il secondo membro ha senso indipendentemente dai segni di $a$ e $b$. 

#esempio()[
$ sqrt((-2)(-3)) = sqrt(|-2|) dot sqrt(|-3|) $
mentre
$ sqrt(|-2|) dot sqrt(|3|) != sqrt((-2) dot 3) $]

Un'altra situazione frequente negli esercizi, che va ben compresa, è la seguente:
$ sqrt(a^2) = |a|, quad forall a in RR $<radicali2>

Con riferimento a questa equazione, bisogna ricordare che, secondo la definizione di radice quadrata:
$ sqrt(a^2) = a, quad "se " a >= 0 $<radicali3>

Questo evidenzia una distinzione tra le due formule:
+ la relazione @radicali2 vale per ogni numero reale $a$
+ la relazione @radicali3 vale esclusivamente per i numeri reali $a >= 0$

Tale differenza porta ad affermare che:
$ sqrt(a^2) != (sqrt(a))^2 $
sebbene un'applicazione errata delle proprietà dei radicali (particolarmente della formula base per i radicali) possa far pensare il contrario. Poiché è comune estendere erroneamente le proprietà dei radicali aritmetici anche ai radicali algebrici, è importante ribadire che le formule dei radicali sono valide solo per valori non negativi di $a$. Pertanto, correttamente:
$ sqrt(a^2) = (sqrt(a))^2, quad "se e solo se " a >= 0 $

In generale, quando si opera con radicali il cui radicando può essere negativo (o dipendente da un parametro che può assumere valori sia positivi che negativi), è essenziale verificare che l'applicazione delle proprietà dei radicali non alteri i segni né le condizioni di esistenza. Per illustrare queste considerazioni, ecco due esempi pratici.

#esempio[$ sqrt(x^2(x - 1)) != |x| dot sqrt(x - 1) $
poiché il primo membro ha significato anche quando $x = 0$, mentre il secondo no.][$ sqrt(x^2(x + 1)) = |x| dot sqrt(x + 1) $
in quanto entrambi i membri hanno senso per i medesimi valori di $x$, ovvero $x >= -1$]
#v(3em)
#definizione(title: "Radicali doppi")[Si definisce radicale doppio o radicale quadratico doppio, la seguente espressione:
$ sqrt(a #sym.plus.minus sqrt(b)) $
Per tali espressioni, vale la formula:
$ sqrt((a + sqrt(a^2 - b)) / 2) #sym.plus.minus sqrt((a - sqrt(a^2 - b)) / 2) $
che si dimostra elevando al quadrato entrambi i membri. Se il termine $a^2 - b$ è un quadrato perfetto, il radicale doppio può essere trasformato in una somma di due radicali semplici.] 

#esempio()[$ sqrt(4 - 2 sqrt(3)) &= sqrt(4 - sqrt(12)) \ &= sqrt((4 + sqrt(4^2 - 12)) / 2) - sqrt((4 - sqrt(4^2 - 12)) / 2) \ &= sqrt((4 + sqrt(4)) / 2) - sqrt((4 - sqrt(4)) / 2) = sqrt(3) - 1 $]

=== Razionalizzazioni

Talvolta, si incontrano frazioni con radicali al numeratore o al denominatore. In alcuni casi è utile eliminare i radicali trasformando tali frazioni, operazione detta "razionalizzazione".

Di seguito presentiamo tre regole principali, utili nelle applicazioni. Nel calcolo algebrico, spesso ci si concentra sulla razionalizzazione dei denominatori, come sarà mostrato negli esempi illustrativi. Tuttavia, in operazioni come il calcolo di limiti o integrali, si presenta anche la necessità di razionalizzare i numeratori. È importante notare che, in generale, questo tipo di problema può risultare complesso o persino insolubile; pertanto, potrebbe non essere conveniente affrontare situazioni troppo difficili, che raramente emergono nella pratica. Per tale motivo, ci limiteremo a condividere tre regole fondamentali che risultano di frequente utilizzo.

#definizione(title: "Regola 1")[
Quando il denominatore è della forma $a^m dot root(n, p)$, con $n > m$, la razionalizzazione si ottiene moltiplicando numeratore e denominatore per $root(n, p^(n-m))$. Si suppone che $n > m$ poiché, diversamente, il radicale può essere semplificato, permettendo di estrarre i termini opportuni dalla radice.]

#esempio[$ 1 / sqrt(2) = 1 / sqrt(2) dot sqrt(2) / sqrt(2) = sqrt(2) / 2 $][$ 1 / (3 root(4, 3^5)) = 1 / (3 dot 3 root(4, 3)) = 1 / (9 root(4, 3)) dot root(4, 3^3) / root(4, 3^3) = root(4, 27) / (9 dot 3) = root(4, 27) / 27 $]

#definizione(title: "Regola 2")[Se il denominatore è della forma $sqrt(a) #sym.plus.minus sqrt(b)$, la razionalizzazione si ottiene moltiplicando numeratore e denominatore per $sqrt(a) minus.plus sqrt(b)$]

#esempio[$ 1 / (sqrt(5) + sqrt(3)) = 1 / (sqrt(5) + sqrt(3)) dot (sqrt(5) - sqrt(3)) / (sqrt(5) - sqrt(3)) = (sqrt(5) - sqrt(3)) / ((sqrt(5))^2 - (sqrt(3))^2) = (sqrt(5) - sqrt(3)) / 2 $
][$ 1 / (2 - sqrt(3)) = 1 / (2 - sqrt(3)) dot (2 + sqrt(3)) / (2 + sqrt(3)) = (2 + sqrt(3)) / (4 - 3) = 2 + sqrt(3) $]

#definizione(title: "Regola 3")[
Se il denominatore è della forma $ root(3, a) #sym.plus.minus root(3, b) $ la razionalizzazione si ottiene moltiplicando numeratore e denominatore per $ root(3, a^2) minus.plus root(3, a b) + root(3, b^2) $]

#esempio[
$ 1 / (1 - root(3, 2)) &= 1 / (1 - root(3, 2)) dot (1 + root(3, 2) + root(3, 4)) / (1 + root(3, 2) + root(3, 4)) = \ &= (1 + root(3, 2) + root(3, 4)) / (1^3 - (root(3, 2))^3) = - (1 + root(3, 2) + root(3, 4)) $]

Al fine di avvalorare l'importanza del calcolo simbolico con i radicali (argomento già introdotto in @radice_aritmetica), esaminiamo un esempio emblematico delle criticità che sorgono quando si opera con approssimazioni decimali di numeri irrazionali.
#pagebreak(weak: true)
#esempio[Si prendano in esame le seguenti sette espressioni:

$ ((sqrt(2) - 1) / (sqrt(2) + 1))^3, quad (sqrt(2) - 1)^6, \  (3 - 2 sqrt(2))^3, quad  (5 sqrt(2) - 7)^2, $
$ 5: 99 - 70 sqrt(2), quad  1 / (sqrt(2) + 1)^6, \ 1 / (99 + 70 sqrt(2)) $<radicali_allineamenti>

Sebbene appaiano diverse, queste espressioni rappresentano tutte il medesimo numero reale. Tale equivalenza può essere dimostrata analiticamente tramite le proprietà dei radicali o verificata numericamente con un software di calcolo, che restituisce per ognuna il valore $0,005050633883 dots$.

Tuttavia, se sostituiamo $sqrt(2)$ con il valore approssimato $1,4$, commettendo un errore di poco superiore a un centesimo, i risultati ottenuti (arrotondati alla sesta cifra decimale) deviano drasticamente dal valore reale:

$ 0.00463; quad 0.004096; \ 0.008; quad 0; \ 1; quad 0.005233; \ 0.005076 $
]
Dall'analisi di questi dati emerge chiaramente come alcune forme algebriche tendano a mitigare l'errore iniziale, mentre altre lo amplifichino in modo sproporzionato, rendendo il risultato del tutto inattendibile.

//

=== Altri numeri reali 

L'introduzione dei radicali e delle operazioni associate ci consente di generare numerosi numeri irrazionali. Tuttavia, possiamo chiederci: è possibile costruire tutti i numeri irrazionali a partire dai radicali? La risposta è negativa. È dimostrabile, infatti, che l'insieme di tutti i numeri ottenibili tramite radicali e relative operazioni (appartenenti alla categoria degli irrazionali algebrici) ha una cardinalità pari a $aleph_0$, ovvero è numerabile. Ciò implica inevitabilmente l'esistenza di altri numeri reali, considerando che l'insieme dei numeri reali, in generale, non è numerabile.  

Non ci addentreremo attualmente in questo complesso ambito, ma vale la pena sottolineare che, ad esempio, il numero $pi$ (rapporto tra la lunghezza della circonferenza e il diametro) e il numero di Nepero, $e$, non sono irrazionali algebrici. Essi appartengono invece alla categoria degli irrazionali trascendenti, un insieme che comprende un'infinità non numerabile di reali, rappresentando dunque la "quasi totalità" dei numeri reali.

=== Potenze nei reali

Il concetto di potenza con esponente intero può essere semplicemente esteso ai numeri reali, senza modificare né la sua definizione né le proprietà ad esso associate. Con l'introduzione dei radicali è possibile estendere questa idea anche agli esponenti razionali, definendoli come segue:

#definizione[Dato un numero reale $a in RR$, con $a > 0$, e un numero razionale $m/n != 0$, con $n > 1$, si definisce:  
$ a^(m/n) = (root(n, a^m)) $ 

Inoltre, se $r > 0$ è un numero razionale, si pone $0^r = 0$.  
]
Vale la pena notare che questa definizione non può essere applicata a basi negative. Ciò avviene perché un'estensione alle basi negative comporterebbe difficoltà insormontabili dal punto di vista matematico. 

#esempio[Sapendo che $1/3 = 2/6$, se la definizione di cui sopra fosse applicabile anche a basi negative, si avrebbe:  
$ -1 = root(3, -1) = (-1)^(1/3) = (-1)^(2/6) = root(6, (-1)^2) = root(6, 1) = 1 $  
quindi $-1 = 1!$, una chiara contraddizione.]

L'estensione del concetto di potenza può essere applicata anche al caso di esponenti irrazionali reali. Tuttavia, tale definizione è piuttosto complessa e verrà affrontata solo nella @potenze_esponenziali_logaritmi. Quello che vogliamo evidenziare già ora è che tutte le estensioni successive del concetto di potenza (per includere esponenti sempre più generali) vengono realizzate rispettando le proprietà formali descritte nella @proprietà_potenza, assicurando la loro coerenza con quelle delle potenze aventi esponenti naturali.

== Verso i numeri complessi 

L'introduzione dei numeri reali ha permesso di risolvere molti dei problemi matematici incontrati nel corso dello sviluppo della disciplina e ha fornito un insieme numerico ricco di utilissime proprietà. Tuttavia, rimane irrisolto un particolare problema: l'equazione $ x^2 + 1 = 0 $.

Questa risulta impossibile da trattare nel contesto dei numeri reali, poiché non ammette soluzioni. In effetti, la richiesta di trovare un numero il cui quadrato sia negativo è di per sé piuttosto insolita, poiché contrasta con le proprietà fondamentali dei numeri reali. 

Questo tipo di problema è decisamente più complicato rispetto a quelli affrontati fino a ora. Tuttavia, la ricerca di un sistema numerico che estenda l'insieme dei reali e permetta la risoluzione di equazioni di questo tipo ha avuto successo, portando alla costruzione di un insieme dalle caratteristiche straordinarie: i numeri complessi. Ci limiteremo ad esaminare brevemente questo insieme nella seconda parte, poiché non rientra generalmente nei programmi della scuola secondaria.

// Esercizi? #TODO