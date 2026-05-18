#import "../../template_normal.typ": *
#import "@preview/cetz:0.4.2" // grafici, cetz-plot richiede cetz ≥ 0.4.2 
#import "@preview/cetz-plot:0.1.3": plot, chart
#import "@preview/cetz-venn:0.1.4" // diagrammi di Venn

// Funzioni

// tabella relazioni
#let tabella_relazioni(
  data: (), 
  num_col: 4, 
  color: silver // predefinito
) = {
  // indice dell'ultima riga in base a quanti dati passiamo
  let num_row = int(data.len() / num_col)
  let last_row = num_row - 1

  // stile
  show table.cell.where(y: 0): set text(weight: "regular", fill: black)
  show table.cell.where(x: 0): set text(weight: "bold", fill: white)
  show table.cell.where(y: last_row): set text(weight: "regular", fill: white)
  table(
    columns: (2em,) * num_col,
    align: center + horizon,
    stroke: 0.5pt + color.lighten(90%),
    fill: (x, y) => {
      if y == last_row { return color }
      if x == 0 { return color }
      if calc.even(x) { return color.lighten(90%) }
      return white
    },
    // dati
    ..data 
  )
}

#evidenzia[In questo capitolo verranno richiamati in sintesi alcuni concetti fondamentali di logica e teoria degli insiemi, con l'obiettivo di definire con precisione le notazioni adottate nel testo. La nozione di insieme rappresenta un fondamento imprescindibile di qualsiasi disciplina matematica, per cui è fondamentale acquisire una chiara padronanza dei contenuti che verranno illustrati. In particolare, gli elementi essenziali della logica delle proposizioni e dei predicati, sebbene trattati in modo sintetico, si rivelano strumenti utilissimi per affrontare in modo efficace i quesiti sempre più comuni nei test di ammissione alle facoltà universitarie.

Per rendere i concetti più concreti, utilizzeremo fin da subito, soprattutto negli esempi, gli insiemi numerici fondamentali: i numeri naturali ($NN$), interi ($ZZ$), razionali ($QQ$) e reali ($RR$). Le proprietà principali di tali insiemi verranno approfondite nei prossimi paragrafi.]

== Logica proposizionale

La frase "La neve è bianca" esprime un fatto da tutti riconosciuto come vero, o meglio, universalmente vero. Al contrario, la frase "La Terra è una stella" rappresenta un fatto considerato falso da chiunque, quindi universalmente falso. La frase "Roma è una bella città", invece, esprime un'opinione che può essere ritenuta vera da alcuni e falsa da altri, a seconda delle preferenze personali.

Ci sono frasi, come "Non disturbare mentre faccio lezione", "Vai a comprare il pane", "Se lancio un dado esce il sei" o "Domani pioverà", alle quali non si può attribuire un valore di verità o falsità. Questi esempi dimostrano che alcune espressioni o proposizioni della lingua italiana (e lo stesso avviene in altre lingue) possono assumere solo uno dei due valori, vero o falso. Tuttavia, in altri casi, non vi è accordo sull'attribuzione di un valore di verità o falsità, oppure tale attribuzione non ha proprio senso.

Ci sono anche situazioni più complesse, come nell'affermazione "Tutti i numeri naturali pari maggiori di 2 sono somma di due numeri primi". Fino ad oggi, non è stato possibile stabilire se tale affermazione sia vera o falsa, nonostante non sia stato trovato alcun caso che la contraddica#footnote[Si tratta della famosa Congettura di Goldbach, proposta sostanzialmente da Christian Goldbach nel 1742 e disponibile nel libro libro _Zio Petros e la Congettura di Goldbach_, scritto da Apostolos Doxiadis. Per esempio si ha:
+ 4 = 2 + 2
+ 6 = 3 + 3
+ 8 = 3 + 5
+ 10 = 3 + 7 = 5 + 5
+ ...].

=== Definizioni

Tenendo conto di queste osservazioni, daremo ora una definizione di enunciato, o proposizione, segnalando comunque che il concetto di verità è estremamente delicato e un'analisi del problema esula dagli scopi di questa trattazione.
#v(2em)
#definizione[Si chiama proposizione o enunciato ogni affermazione che assume uno e un solo dei due valori: vero o falso.]

Si noti che è implicito nella definizione data il fatto che ammettiamo che la logica che utilizziamo sia bivalente, cioè preveda che le espressioni di cui ci occupiamo possano avere uno solo dei due valori di verità "vero" o "falso".

Gli enunciati possono essere costituiti da una sola affermazione, come negli esempi che abbiamo proposto sopra, e li chiameremo enunciati atomici, oppure possono essere costituiti da più affermazioni, collegate tra di loro. Un esempio è costituito dall'enunciato "Il sole è una stella e la terra è un pianeta",
che si può considerare composto da due enunciati atomici (entrambi veri) connessi dalla parola "e". Un altro modo per costruire nuovi enunciati è quello di usare la negazione "non". Per esempio "La terra non è una stella" è ottenuto dalla negazione dell'enunciato (falso) "La terra è una stella".

Si chiamano connettivi le parole (come la "e" dell'esempio) che collegano tra di loro due enunciati, oppure che operano su un enunciato (come il "non" dell'esempio) per ottenere un nuovo enunciato. A volte il "non" è chiamato un operatore invece che un connettivo, in quanto in realtà non connette due enunciati, ma agisce, "opera", su un singolo enunciato. Si deve notare che i connettivi collegano tra di loro due enunciati senza alcun riguardo al significato che questi possono assumere; per esempio è perfettamente legittimo l'enunciato "Parigi è la capitale del Brasile o 2+2 vale 4", che è la connessione, tramite la parola "o", di due enunciati (uno falso e uno vero). L'unica cosa che conta è il valore di verità complessivo dell'enunciato risultante.

Poiché nel linguaggio comune le parole non hanno sempre un senso univoco, in logica al posto delle parole si utilizzano dei simboli speciali per formalizzare in maniera rigorosa i connettivi e si costruiscono delle tavole di verità che stabiliscono le regole che permettono di dedurre la verità o meno di un enunciato composto, una volta che sia noto il valore di verità degli enunciati componenti: queste tavole di verità possono essere pensate come delle vere e proprie definizioni dei connettivi stessi.

=== Connettivi logici

Nei paragrafi successivi utilizzeremo simboli come $P$, $Q$, ... per rappresentare le proposizioni. I connettivi logici di nostro interesse saranno i seguenti:  
- "non", negazione ($not$): $not P$ (o "non P") è vera se $P$ è falsa, mentre è falsa se $P$ è vera;  
- "e" o "et", congiunzione ($and$): $P and Q$ è vera solo se entrambe le proposizioni sono vere, altrimenti è falsa;  
- "o" o "vel", disgiunzione ($or$),: $P or Q$ è vera se almeno una delle due proposizioni è vera, altrimenti è falsa;  
- "implica", implicazione ($arrow.r.double$): $P arrow.r.double Q$ è falsa soltanto nel caso in cui $P$ sia vera e $Q$ sia falsa. In particolare, da una proposizione falsa si può dedurre qualsiasi cosa;  
- "se e solo se", equivalenza, o "condizione necessaria e sufficiente" ($arrow.l.r.double$): $P arrow.l.r.double Q$ è vera se $P$ e $Q$ sono entrambe vere o entrambe false.  

La @tabella_logica1 (dove "V" indica vero e "F" indica falso) sintetizza formalmente le definizioni dei connettivi logici. Si noti che la tabella è costruita considerando che ogni enunciato atomico può assumere due possibili valori di verità. Per analizzare il valore di verità di un enunciato che coinvolga due proposizioni, dobbiamo quindi considerare tutte le combinazioni possibili, il che corrisponde a un numero totale di $2^2 = 4$ casi. Tuttavia, per il solo connettivo $not$ (negazione), sarebbero necessarie solo due righe nella tabella, in quanto si opera su un unico enunciato atomico. Tabelle come questa vengono comunemente chiamate tavole di verità.  

#figure(
  caption: [Connettivi logici e corrispondente tavola di verità],
  //gap: 0pt, // Allinea la didascalia alla tabella
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
  align: center + horizon,
  columns: (7),
  table.header[ $sans(P)$ ][ $sans(Q)$ ][ $sans(not P)$ ][ $sans(P and Q)$ ][ $P or Q$ ][ $P arrow.r.double Q$ ][ $P arrow.l.r.double Q$ ], 
  [ V ], [ V ], [ F ], [ V ], [ V ], [ V ], [ V ],  
  [ V ], [ F ], [ F ], [ F ], [ V ], [ F ], [ F ],  
  [ F ], [ V ], [ V ], [ F ], [ V ], [ V ], [ F ],  
  [ F ], [ F ], [ V ], [ F ], [ F ], [ V ], [ V ], 
)  
)<tabella_logica1>

Il connettivo $arrow.r.double$ assume particolare rilievo in matematica, poiché dimostrare un teorema equivale a provare la verità di $P arrow.r.double Q$ supponendo che $P$ sia vera. In questo contesto, $P$ è denominata ipotesi e $Q$ tesi.  

Quando si costruiscono enunciati complessi che utilizzano ripetutamente questi connettivi, è essenziale prestare attenzione all'ordine delle operazioni e, se necessario, utilizzare parentesi per evitare ambiguità, analogamente a quanto avviene con le espressioni matematiche.  

Vediamo ora un esempio semplice che coinvolge soltanto due enunciati per evitare una tavola di verità troppo estesa. Dati due enunciati $P$ e $Q$, costruiamo la tavola di verità per l'espressione $not ((P and Q) or (P and not Q))$, illustrata nella @tabella_logica2.

#figure(
  caption: [Tabella di verità della proposizione $not ((P and Q) or (P and not Q))$],
  //gap: 0pt, // Allinea la didascalia alla tabella
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
  align: center + horizon,
  columns: (7),
  table.header[$sans(P)$][$sans(Q)$][$sans(P and Q)$][$sans(not Q)$][$sans(P and not Q)$][$sans((P and Q) or (P and not Q))$][$sans(not ((P and Q) or (P and not Q)))$],
  [V], [V], [V], [F], [F], [V], [F],
  [V], [F], [F], [V], [V], [V], [F],
  [F], [V], [F], [F], [F], [F], [V],
  [F], [F], [V], [V], [F], [F], [V],
)  
)<tabella_logica2>

L'uso delle seguenti due formule, note come leggi di De Morgan, è piuttosto comune nell'ambito della logica e descrive i legami tra negazione, unione e intersezione: 

#definizione()[$not(P or Q) = (not P) and (not Q) quad e quad  not(P and Q) = (not P) or (not Q)$]  

Queste formule possono essere facilmente verificate tramite la costruzione delle relative tavole di verità.  

== Logica dei predicati  

Come già evidenziato, il significato di una proposizione risiede nella possibilità di stabilire se essa sia vera o falsa. Un'affermazione come $x < -2$ non può essere considerata una proposizione, in quanto il suo valore di verità dipende dalla variabile $x$. Variando $x$ all'interno di un opportuno insieme (che deve essere specificato), è possibile ottenere sia proposizioni vere che false. Ci troviamo, quindi, davanti a una proposizione che dipende da una variabile $x$, e possiamo rappresentarla come $P(x)$.  

In questo contesto, $x$ è definita una variabile e $P(x)$ prende il nome di predicato. È inoltre possibile avere predicati che dipendono da più variabili: ad esempio, l'affermazione $x + y > 0$. In questi casi, i predicati sono spesso indicati come relazioni.  

Un punto fondamentale riguarda la precisazione dell'insieme entro il quale si sceglie la variabile (o le variabili) su cui è definito un predicato. Ad esempio, l'affermazione "$x$ è pari" ha significato solo se $x$ appartiene all'insieme dei numeri naturali; al contrario, perde senso qualora $x$ fosse una frazione.  

Quando si assegna un valore specifico alla variabile $x$, indicato con $x_0$, il predicato si trasforma in una proposizione ben definita (che sarà vera o falsa in base al valore attribuito a $x_0$). Tale proposizione viene indicata come $P(x_0)$.  

=== Quantificatori

Nella costruzione dei predicati si utilizzano spesso espressioni come:  
- esiste (almeno) un $x$ per cui vale $P(x)$;  
- per ogni $x$ è vero $P(x)$.  

Per formalizzare queste affermazioni, si ricorre a due simboli logici noti come quantificatori:  
- $exists$, "esiste (almeno) uno", detto quantificatore esistenziale;  
- $forall$, "per ogni", detto quantificatore universale  

Inoltre, si adopera anche il simbolo $exists!$, o talvolta $∃^1$, con il significato: "esiste uno e uno solo".  

Quando si utilizzano più quantificatori contemporaneamente, è fondamentale prestare attenzione particolare all'ordine con cui vengono scritti. Un esempio concreto può aiutare a chiarire il perché:  
#esempio()[
Consideriamo il predicato $P(x, y)$ = "$x$ è uno studente capace di risolvere il problema $y$", ovvero:

$ 
  forall y exists x "tale che" P(x, y)
$

che significa che "per ogni problema $y$ esiste almeno uno studente capace di risolverlo". Al contrario, scrivere 

$ 
  forall x exists y "tale che" P(x, y)
$

significa, invece: "esiste uno studente capace di risolvere qualunque problema". È evidente che si tratta di due situazioni profondamente diverse.  
]

È utile riflettere su un esempio classico per comprendere come la simbologia abitualmente utilizzata in matematica possa facilmente generare equivoci se non si ha una piena comprensione delle relazioni tra i connettivi logici.  

#esempio()[
Consideriamo l'equazione:

$ 
  x^2 = 1
$
  
le cui soluzioni vengono solitamente riportate nella forma:  

$ 
  x #sym.plus.minus  1
$

dove si intende che sia il numero $1$ che il numero $-1$ soddisfano l'equazione (in termini logici: rendono vero il predicato "$x^2 = 1$" nell'insieme dei numeri reali). Tuttavia, questo risultato dovrebbe essere espresso in modo più rigoroso nella forma:  

$ 
  x = 1 or x = -1
$
][

Consideriamo ora la scrittura:

$ 
  x^2 != 1
$

la cui "soluzione" viene solitamente espressa come $x != #sym.plus.minus $. 

$ 
  x != #sym.plus.minus 1
$

Tuttavia, questa espressione non deve essere tradotta in $x #sym.plus.minus 1 or x #sym.plus.minus -1$, poiché ciò implicherebbe che $x^2 != 1$ è verificata per qualsiasi numero reale. La traduzione logica corretta è invece 

$
  x #sym.plus.minus 1 and x #sym.plus.minus -1
$

in quanto ciò che si intende con $x #sym.plus.minus 1$ è la contemporanea soddisfazione delle due condizioni su $x$.

Si può osservare inoltre che l'espressione $x^2 != 1$ equivale a 

$
not(x^2 = 1)
$

che porta a 

$ 
  not(x = 1 or x = -1)
$

ovvero a 

$
  not(x = 1) and not(x = -1)
$

Quest'ultima è comunemente scritta come:

$
  x != 1 and x != -1
$

Per dimostrare formalmente questa equivalenza, è possibile utilizzare le tavole di verità, attraverso le quali si verifica che $not(P ∨ Q)$ e (¬P) ∧ (¬Q) hanno gli stessi valori di verità. Si tratta di una delle ben note leggi di De Morgan.

È interessante sottolineare che i due quantificatori introdotti sono strettamente correlati: ciascuno può essere visto come un'abbreviazione di un'espressione più complessa che include l'altro e l'operatore di negazione. È evidente, ad esempio, che affermare "esiste almeno un $x$ tale che valga $P(x)$" equivale a dire "non per ogni $x$ $P(x)$ non vale", ovvero, formulando matematicamente: 

$ 
  exists x "tale che" P(x) "equivale a" not(forall x "vale" not P(x))
$

Allo stesso modo, dire "per ogni $x$ vale $P(x)$" equivale a dire "non esiste alcun $x$ per cui $P(x)$ non valga", ovvero:

$ 
  forall x "vale" P(x) "equivale a" not(exists "tale che" not P(x))
$

Per chiarire meglio, consideriamo alcune frasi di esempio: invece di dire "Esiste almeno un triangolo rettangolo" o "Tutti gli italiani sono europei", sarebbe possibile utilizzare formulazioni alternative come "Non tutti i triangoli sono non rettangoli" oppure "Non esiste alcun italiano che non sia europeo". Tuttavia, questi esempi mostrano che la prima forma, quella priva di negazioni, risulta generalmente più comprensibile rispetto alla seconda.

Infine, è utile ricordare come si costruisce la negazione di una frase con quantificatore:
- la negazione di "$exists x$ tale che valga $P(x)$" è "$forall x$ vale $not P(x)$";
- la negazione di "$forall x$ vale $P(x)$" è "$exists x$ tale che valga $not P(x)$".

]

== Altri simboli

Tra i numerosi simboli utilizzati nella pratica matematica, ne richiameremo qui due per la loro particolare importanza. 

Se dobbiamo rappresentare la somma dei numeri 1, 2 e 3, possiamo comodamente scrivere $1 + 2 + 3$. Tuttavia, se la somma coinvolge una serie di numeri consecutivi, ad esempio da 1 a 100, una scrittura estesa come 

$
  1 + 2 + dots + 99 + 100
$

risulta poco pratica e di difficile lettura. Sebbene i puntini di sospensione possano sembrare una soluzione conveniente, tale rappresentazione presenta alcune criticità e non è sempre sufficientemente chiara o utilizzabile in contesti più articolati. Per ovviare a questo problema, si utilizza il cosiddetto simbolo di sommatoria, che permette di esprimere la somma precedente in modo conciso e preciso:

$ 
  sum^100_(i = 1) i
$

Questa notazione compatta descrive esattamente l'operazione da eseguire: sommare i numeri naturali rappresentati dalla variabile $i$, partendo da 1 e arrivando fino a 100#footnote[Un aneddoto piuttosto plausibile riguardante il grande matematico tedesco Carl Friedrich Gauss (1777-1855) narra che, all'età di otto o nove anni, il suo maestro, desiderando tenerlo impegnato per un po', gli assegnò il compito di sommare i numeri da 1 a 100. Con grande rapidità, Gauss trovò la soluzione: 50 #sym.times 101 = 5050, lasciando il maestro sbalordito e facendogli rivalutare l'eccezionale intelligenza di quello straordinario allievo.]. Inoltre, nella convenzione matematica, si sottintende che i numeri coinvolti siano naturali, dato che sommare numeri razionali o reali in un intervallo discreto prefissato non avrebbe senso in tale contesto.

In generale, gli addendi di una somma possono essere espressioni più complesse rispetto ai semplici numeri naturali. Si possono ad esempio sommare:  

- i reciproci dei numeri naturali ($1/i$);  
- i quadrati dei numeri naturali ($i^2$);  
- qualunque espressione che coinvolga i numeri naturali, come il rapporto tra un numero naturale e il suo successivo ($i / (i + 1)$).  

Se indichiamo un'espressione generica che coinvolge il numero naturale $i$ con $a(i)$ oppure con $a_i$, possiamo rappresentare la somma in forma generale utilizzando il simbolo di sommatoria:

$ 
  sum^n(i = m) a_i
$

Questa notazione indica la somma di diverse "copie" di un'espressione, in cui al posto della variabile $i$ si sostituiscono, di volta in volta, tutti i numeri naturali compresi tra il valore iniziale $m$ e il valore finale $n$. Per chiarire meglio il concetto, consideriamo alcuni esempi:

#esempio[
$
  sum_(i=5)^(10) 1/i^2 &= 1/5^2 + 1/6^2 + 1/7^2 + 1/8^2 + 1/9^2 + 1/10^2; \ sum_(i=2)^(100) i/(i-1) &= 2/(2-1) + 3/(3-1) + dots + 99/(99-1) + 100/(100-1); \ sum_(i=0)^(5) (-1)^i &= (-1)^0 + (-1)^1 + (-1)^2 + (-1)^3 +  (-1)^4 + (-1)^5 \ &= 1 - 1 + 1 - 1 + 1 - 1 \ &= 0 
$
]
Si osserva che è possibile utilizzare una qualsiasi altra lettera al posto di i, che viene chiamato indice della sommatoria. Ad esempio, le notazioni 

$
  sum_(i=m)^n a_i, quad sum_(j=m)^n a_j, quad sum_(k=m)^n a_k
$

sono perfettamente equivalenti (a condizione che i valori iniziali e finali rimangano invariati e che le espressioni rimangano identiche). Per questo motivo i viene spesso definita una variabile muta.

È utile ricordare che, trattandosi di somme, valgono le proprietà algebriche usuali, in particolare quella associativa. Per esempio:

$
  sum_(i=2)^(100) (2i + 4)/(i - 1) &= 2 sum_(i=2)^(100) (i + 2)/(i - 1); \  sum_(i=0)^(20) (-1)^i/i &= (-1) sum_(i=0)^(20) (-1)^(i-1)/i
$

Analogamente alle somme, si possono considerare prodotti al posto delle somme. In questo caso si parla di simbolo di produttoria e si utilizza la scrittura:

$
  product_(i=m)^(n) a_i
$

il cui significato è ormai evidente. 

Sommatorie e produttorie possono essere combinate e ripetute all'interno della stessa espressione. In tali situazioni è sufficiente applicare in maniera ordinata le definizioni fornite. 

Alcuni autori utilizzano una notazione leggermente diversa per indicare gli estremi:

$
  sum_(n)^(m) #sub()[i]  a_i
$

ma si tratta puramente di una questione di stile, dato che il significato resta invariato.

#esempio()[
$ 
  &sum_(i=1)^5 (sum_(j=3)^6 (i - 2j)) = \
  &= sum_(i=1)^5 ((i - 2 times 3) + (i - 2 times 4) + (i - 2 times 5) + (i - 2 times 6)) = \
  &= sum_(i=1)^5 ((i - 6) + (i - 8) + (i - 10) + (i - 12)) = \
  &= sum_(i=1)^5 (4i - 36) = 4 sum_(i=1)^5 (i - 9) = \
  &= 4 ((1 - 9) + (2 - 9) + (3 - 9) + (4 - 9) + (5 - 9)) = \
  &= 4 (-8 - 7 - 6 - 5 - 4) = -120
$
]

== Assiomi, teoremi, dimostrazioni

Prima di addentrarsi nello studio di qualsiasi ambito della matematica, è essenziale comprendere il significato di termini d'uso comune come assiomi e teoremi. Faremo una veloce e semplice introduzione a questi concetti, poiché una comprensione approfondita della teoria assiomatica richiederebbe volumi interi.

Per comprendere i concetti primitivi, ovvero termini non definiti, possiamo fare un esperimento con un dizionario italiano. L'idea è di iniziare da una parola, leggere la sua definizione e cercare nel dizionario una delle parole usate nella definizione; continuiamo finché non ci imbattiamo in una parola già utilizzata: arrivati a questo punto, abbiamo creato un circolo vizioso. Esperimenti simili sono stati fatti con vari dizionari ottenendo risultati praticamente identici. Riporteremo alcuni esempi dall'edizione del 1990 del _Grande Dizionario De Agostini della Lingua Italiana_, concentrandoci su parole legate alla geometria, sebbene le conclusioni siano valide per tutte le parole.

Ad esempio:

- punto: in geometria, ente elementare intuitivo, senza dimensioni
- dimensione: ognuna delle misure utilizzate per determinare l'estensione di una superficie o corpo nelle varie direzioni
- estensione: spazio, superficie
- spazio: l'estensione...
- (...)

- retta: ente geometrico definito intuitivamente come la più breve linea che congiunge due punti e che si prolunga all'infinito in entrambi i sensi.
- linea: in geometria, concetto intuitivo immaginato come la traiettoria tracciata da un punto mobile.
- traiettoria: la linea immaginaria percorsa da un oggetto in movimento nello spazio.
- spazio: l'estensione vuota e illimitata che contiene gli enti geometrici solidi e gli oggetti reali.
- estensione: spazio, ...
- (...)

Come dice Samuel Coxeter, "un circolo vizioso illustra l'importante principio che qualunque definizione richiede altre parole che a loro volta necessitano ulteriori definizioni. L'unico modo per evitare un circolo vizioso è considerare certi concetti primitivi come talmente semplici e ovvi da non doverli definire."

In ogni teoria, dunque, dobbiamo accettare alcuni concetti come primitivi o termini non definiti: si tratta di parole di cui non viene fornita spiegazione. Nella geometria euclidea i termini sono ad esempio punto, retta, piano, giace su, tra, congruente. Nella teoria (ingenua) degli insiemi tali termini sono: insieme, appartiene.

=== Assiomi o postulati

#definizione[
Gli assiomi sono proposizioni introdotte senza dimostrazione che si riferiscono a proprietà dei termini non definiti.] 

Grazie agli assiomi ci facciamo un'idea (anche fisica) di cosa siano gli enti primitivi: non ci chiediamo cosa siano esattamente, ci basta sapere che tra essi esistono certe relazioni e caratteristiche che noi stessi attribuiamo loro. Gli assiomi delimitano e caratterizzano gli enti primitivi, riducendo quell'apparente arbitrarietà iniziale. È cruciale assicurarsi che gli assiomi non siano in contraddizione tra loro. Tuttavia, questo controllo è complesso e può dar luogo a lunghi dibattiti. Un esempio noto è il quinto assioma delle parallele di Euclide#footnote["Se una retta taglia altre due rette determinando dallo stesso lato angoli interni la cui somma è minore di quella di due angoli retti, prolungando indefinitamente le due rette, esse si incontreranno dalla parte dove la somma dei due angoli è minore di due angoli retti". Per secoli, matematici di ogni epoca tentarono di elevare il V postulato a teorema, tra i quali Tolomeo, Al-Haytham, Gauss, Bolyai e Lobačevskij, convinti che la sua complessità nascondesse una dipendenza dagli altri assiomi.].

=== Teoremi  

#definizione[
I teoremi sono proposizioni che vengono dimostrate attraverso un processo di deduzione basato su assiomi o su altri teoremi già dimostrati. Per costruire tali ragionamenti si utilizzano gli enti primitivi e, all'occorrenza, altri concetti introdotti progressivamente.] 

Per comprendere meglio il funzionamento di un teorema, consideriamo alcuni esempi:  
— se scaldiamo la cera di una candela, essa si scioglie.  
— un triangolo con due lati uguali ha anche due angoli uguali.  

Questi esempi seguono uno schema logico preciso: se si verifica una determinata condizione iniziale, allora ne consegue obbligatoriamente un'altra. Tali proposizioni sono chiamate implicazioni logiche. La condizione iniziale è detta ipotesi, mentre la conseguenza è denominata tesi. La tesi è pertanto subordinata all'ipotesi, e questa relazione può essere verificata sperimentalmente (come nel caso della cera che si scioglie) oppure mediante un ragionamento strutturato, noto come dimostrazione. Le implicazioni logiche che richiedono una dimostrazione vengono definite teoremi. La proposizione che si vuole dimostrare è chiamata enunciato.  

In un teorema, dunque, si distinguono diversi elementi fondamentali:  
- L'enunciato, ovvero l'affermazione da dimostrare, costituito da:  
  - l'ipotesi, cioè la condizione iniziale da cui partire;  
  - la tesi, ovvero l'affermazione che si intende provare.  
- La dimostrazione, cioè il procedimento logico fondato su assiomi o teoremi già acquisiti, attraverso il quale si deduce la tesi dall'ipotesi.  

Un aspetto importante del concetto di dimostrazione è la sua riproducibilità: qualsiasi studioso che conosce le premesse -- ossia ciò che è già stato accettato o dimostrato -- dovrebbe essere in grado di seguire e replicare i ragionamenti svolti. In pratica, il processo di dimostrazione rappresenta un metodo con il quale un matematico può convincere un altro matematico della validità della tesi formulata. Va detto però che, all'aumentare della complessità delle teorie matematiche, cresce anche la difficoltà delle dimostrazioni.  

A tal proposito possiamo citare il celebre caso del cosiddetto "teorema enorme", riguardante la classificazione dei gruppi semplici. La sua dimostrazione originale comprende circa quindicimila pagine distribuite in più di cinquecento articoli pubblicati su riviste scientifiche e ha richiesto il contributo di un centinaio di matematici nell'arco di quarant'anni. È improbabile che una singola persona possa replicare integralmente una dimostrazione così complessa seguendo il metodo ipotetico-deduttivo nei minimi dettagli. Tuttavia, nonostante queste difficoltà pratiche, siamo comunque in presenza di una dimostrazione teoricamente valida.  

=== Condizione necessaria e/o sufficiente  

Un teorema può definire condizioni necessarie, sufficienti oppure condizioni sia necessarie sia sufficienti. Analizziamone le differenze per comprenderle meglio.

#definizione[Condizione necessaria: $A$ è una condizione necessaria per $B$ se $B and (not A)$ è falsa, ovvero una contraddizione. ]

Questa definizione può essere espressa anche in altri modi, come segue:
- $£$ è condizione necessaria per $B$ se $B$ implica $A$, cioè, ogni volta che si verifica $B$, si verifica necessariamente anche $A$.
- $A$ è condizione necessaria per $B$ se, in assenza di $A$, $B$ non può sussistere (attenzione però: la presenza di $A$ non garantisce, in generale, la presenza di $B$).

In altre parole, quando $A$ è una condizione necessaria per $B$, è inutile verificare la presenza di $B$ se manca $A$, perché l'assenza di $A$ implica sicuramente l'assenza di $B$.

#definizione[Condizione sufficiente: $A$ è una condizione sufficiente per $B$ se $A and (not B)$ è falsa, ovvero una contraddizione.]

$A$nche questa definizione può essere espressa in modi diversi:
- $A$ è condizione sufficiente per $B$ se $A$ implica $B$, cioè ogni volta che si verifica $A$ si verifica anche $B$.
- $A$ è condizione sufficiente per $B$ se, in assenza di $B$, $A$ non può essere presente (attenzione però: l'assenza di $A$ non esclude necessariamente la presenza di $B$).

In sostanza, quando $A$ è condizione sufficiente per $B$, la presenza di $B$ non implica necessariamente la presenza di $A$.

#definizione[Condizione necessaria e sufficiente: $A$ è condizione necessaria e sufficiente per $B$ se $A$ implica $B$ e contemporaneamente $B$ implica $A$. Questo significa che $A$ e $B$ sono equivalenti.]

Di seguito, alcuni esempi esplicativi:

#esempio()[
- Una condizione necessaria affinché un quadrilatero sia un quadrato è che abbia quattro angoli retti. Se almeno uno degli angoli non è retto, il quadrilatero non può essere un quadrato. Tuttavia, la sola presenza di quattro angoli retti non garantisce che il quadrilatero sia effettivamente un quadrato.
- Una condizione sufficiente perché un numero sia pari è che termini con la cifra 2. Se un numero finisce con il 2, allora è pari, ma vi sono numeri pari che non terminano con il 2.
- Una condizione necessaria e sufficiente affinché un triangolo sia isoscele è che abbia due angoli congruenti. Se un triangolo ha due angoli congruenti, allora è isoscele (cioè ha due lati congruenti); viceversa, se un triangolo è isoscele, ha due angoli congruenti. In pratica, nella definizione di triangolo isoscele si può sostituire la proprietà di "avere due lati congruenti" con quella di "avere due angoli congruenti". 
]

=== Dimostrazioni per assurdo  

Le dimostrazioni per assurdo rappresentano uno strumento molto comune in matematica, ed è importante comprendere chiaramente il procedimento su cui si basano. Quando si dimostra un teorema, si cerca di verificare, partendo dalle ipotesi e utilizzando proprietà già note o precedentemente dimostrate, che una determinata affermazione, chiamata tesi, sia vera. Poiché nella logica utilizzata la tesi può essere soltanto vera o falsa, dimostrare che essa non può essere falsa equivale a dimostrarne la verità. Per ottenere questo risultato, si assume inizialmente che il contrario della tesi sia vero, ovvero si nega la tesi stessa, e poi si mostra che tale ipotesi conduce a una contraddizione. Una volta individuata la contraddizione, si conclude che la tesi deve per forza essere vera.

In questo testo troverai molte dimostrazioni per assurdo, anche all'interno degli esercizi. Sebbene di solito non vengano proposte le dimostrazioni dei teoremi man mano che vengono enunciati, sarà fatto regolarmente per questo tipo di dimostrazioni, data la loro rilevanza e le difficoltà che spesso vi sono legate.  

=== Lemmi 

Ci sono situazioni in cui la dimostrazione di un teorema risulta particolarmente articolata e richiede una lunga serie di passaggi logici intermedi. In questi casi, si suddivide il lavoro introducendo una o più proposizioni preliminari, dette lemmi, le cui conclusioni vengono utilizzate quasi esclusivamente all'interno del teorema stesso.  

=== Corollari 

A volte, da un particolare teorema derivano direttamente altri risultati la cui dimostrazione risulta così immediata da essere appena accennata. Tali teoremi sono chiamati corollari. Va sottolineato che spesso le affermazioni contenute nei corollari possono avere un'importanza superiore rispetto alla tesi del teorema principale da cui originano.  

=== Definizioni 

#definizione[Definire significa spiegare un concetto introducendo un termine che lo descriva in modo sintetico mediante parole già conosciute.] 

In pratica, le definizioni servono a sostituire concetti complessi con termini singoli e chiari. Il loro scopo è quello di introdurre nuovi concetti a partire da quelli primitivi.  
È fondamentale comprendere la differenza tra una definizione e un ente primitivo: una definizione si costruisce utilizzando enti primitivi o teoremi già dimostrati, mentre gli enti primitivi sono concetti fondamentali che non necessitano di ulteriori dimostrazioni. Una spiegazione approfondita del concetto di definizione e del suo utilizzo in matematica sarebbe tuttavia molto complessa e ci porterebbe ben oltre gli obiettivi di questo discorso.

== Insiemi  
Consideriamo la nozione di insieme come un concetto primitivo, affidandoci alla nostra intuizione. Sebbene volendo si possano utilizzare definizioni descrittive come "un insieme è una collezione di oggetti, chiamati elementi", tali definizioni non aggiungerebbero nulla di realmente significativo: sarebbe essenzialmente come dire "un insieme è un insieme". Di solito, ma non sempre, rappresentiamo gli insiemi con lettere maiuscole corsive, come $A$, $B$, ecc.

La notazione

$ 
  x in A
$<insiemi1>

indica che l'oggetto $x$ è un elemento dell'insieme $A$ e si legge "$x$ appartiene ad A". È equivalente a scrivere $A in.rev x$. La negazione di @insiemi1  può essere espressa come  

$ 
  x in.not A
$
  
che si legge "$x$ non appartiene ad A", ed è equivalente a scrivere $A in.not.rev x$.  

Due insiemi sono considerati uguali se e solo se contengono gli stessi elementi. Formalizzando questa definizione con simboli logici, possiamo scrivere:

$ 
  A = B arrow.l.r.double.long (forall x, x in A arrow.l.r.double.long x in B)
$

Esiste un insieme particolare, chiamato insieme vuoto, indicato con $emptyset$, che non contiene alcun elemento. Poiché due insiemi sono diversi solo se hanno almeno un elemento differente, possiamo concludere che esiste un unico insieme vuoto.  

Per definire gli insiemi, possono essere utilizzati due approcci principali:  
+ rappresentazione estensiva: consiste nell'elencare esplicitamente tutti gli elementi dell'insieme. Ad esempio:

  $
    A = {0, π, √2, "Roma"}
  $

+ rappresentazione intensiva: consiste nel definire gli elementi dell'insieme attraverso una proprietà che li caratterizza. Ad esempio:

  $ 
    A = {x | x "è un numero naturale pari"}
  $

  In questo caso, la proprietà caratteristica corrisponde a un predicato $P(x)$, e l'insieme è costituito da tutti i valori di $x$ per cui il predicato risulta vero.

La rappresentazione intensiva è particolarmente utile per descrivere insiemi infiniti o sottoinsiemi di altri insiemi. Tuttavia, in alcuni casi, anche gli insiemi infiniti possono essere descritti per elencazione, a patto che non vi siano ambiguità. Per esempio:

$ 
  A = {3, 6, 9, 12, dots} 
$

rappresenta chiaramente l'insieme dei numeri naturali multipli di 3. Al contrario, però, se scrivessimo

$ 
  A = {2, 3, dots}
$

non sarebbe immediatamente chiaro se stiamo parlando dei numeri naturali maggiori o uguali a 2 oppure dei numeri primi.  

Nell'uso della rappresentazione intensiva è necessario prestare ulteriore attenzione in certi contesti. Sebbene tale metodo sia generalmente privo di ambiguità quando si tratta di definire sottoinsiemi di un insieme noto#footnote[È la medesima considerazione espressa riguardo ai predicati, quando abbiamo sottolineato la necessità di specificare in quale contesto varia la $x$ presente nel predicato.], può portare a complicazioni logiche in altre situazioni. Un esempio celebre di ciò è il Paradosso del barbiere: "se il barbiere è definito come colui che rade le persone che non si radono da sole, non si può determinare se il barbiere debba radere sé stesso o meno".

È importante sottolineare che, per definire un insieme, è necessario disporre di un criterio che consenta di stabilire quali elementi ne facciano parte. Tuttavia, in alcuni casi, verificare esplicitamente se un elemento appartiene o meno a un insieme può risultare estremamente complesso. Un esempio classico è rappresentato dall'insieme $P$ dei numeri primi. Sebbene sia immediato riconoscere che, ad esempio, $31 in P$, risulta molto più arduo verificare che anche $15.485.863$ appartenga a $P$. Ancora più complesso è determinare che $2^{43112609} - 1 in P$, uno dei numeri primi più grandi conosciuti alla metà del 2012, composto da ben $12.978.189$ cifre. Per questa verifica sono necessari tempi di calcolo enormi anche con i computer più avanzati.

Considerando due insiemi $A$ e $B$, si dice che $A$ è un sottoinsieme di $B$ (oppure contenuto in $B$) quando ogni elemento di $A$ appartiene anche a $B$. In alternativa, si può affermare che $B$ è un soprainsieme di $A$ (o contiene $A$). In simboli, si rappresenta questa relazione come 

$
  A subset.eq B quad o quad B supset.eq A
$

È importante osservare che, seguendo questa notazione, ogni insieme è sempre contenuto in se stesso, ossia $A subset.eq A$.

Qualora si voglia indicare che $A subset.eq B$, ma esiste almeno un elemento in $B$ che non appartiene a $A$, si utilizza la scrittura 


$
  A subset B quad o quad B supset A
$

e si parla di sottoinsieme (o soprainsieme) proprio. Va notato che alcuni utilizzano la notazione $A subset B$ anche per indicare sottinsiemi non propri; in tal caso, per identificare i sottoinsiemi propri, possono essere adottate notazioni alternative come 

$
  A subset.neq B "oppure" A subset.!= B
$ // TODO sono veramente simboli equivalenti? non trovo il simbolo subset con l'uguale barrato sotto

Tra i vari sottoinsiemi di un insieme si annovera anche l'insieme vuoto: $emptyset subset.eq A, forall A$. Inoltre, possono interessare sottoinsiemi formati da un solo elemento: se $a in A$, allora ${a} subset.eq A$.

È utile evidenziare la netta differenza tra i simboli $in$ e $subset.eq$ (o $subset$): il primo descrive una relazione tra entità di tipo diverso (elementi e insiemi), mentre il secondo riguarda solo relazioni tra insiemi.

Dato un insieme $A$, possiamo considerare l'insieme di tutti i suoi sottoinsiemi, chiamato "insieme delle parti" e indicato con $P(A)$. Ad esempio, se $A = {a, b}$, allora: 

$ 
  P(A) = {emptyset, {a}, {b}, A}
$

Utilizzando l'insieme delle parti si possono costruire insiemi molto complessi a partire dall'insieme vuoto. Ad esempio:

$ 
  P(emptyset) = {emptyset},  \
  P(P(emptyset)) = {emptyset, {emptyset}}, \ 
  P(P(P(emptyset))) = {emptyset, {emptyset}, {{emptyset}}, {emptyset, {emptyset}}}
$

Mentre l'insieme vuoto non contiene alcun elemento, gli insiemi proposti sopra contengono, rispettivamente, 1, 2 e 4 elementi. Approfondiremo più avanti la questione della determinazione del numero di elementi di un insieme e del calcolo dei sottoinsiemi.

== Operazioni tra insiemi

#definizione(title: "Unione di insiemi")[Dati due insiemi $A$ e $B$, si definisce la loro unione, indicata con $A union B$, l'insieme degli elementi che appartengono ad $A$, a $B$, o a entrambi.
$
  A union B = { x | x in A or x in B }
$
]

#esempio[Se $A = { 0, 1, 2, 3 }$ e $B = { 2, 3, 4 }$, allora:
$ A union B = { 0, 1, 2, 3, 4 } $]

#definizione(title: "Intersezione di insiemi")[
Dati due insiemi $A$ e $B$, si definisce la loro intersezione, indicata con $A inter B$, l'insieme degli elementi che appartengono contemporaneamente sia ad $A$ sia a $B$.
$ A inter B = { x | x in A and x in B } $
]
#esempio[Se $A$ e $B$ sono gli stessi insiemi dell'esempio precedente, allora:
$ A inter B = { 2, 3 } $]

Due insiemi si dicono disgiunti quando la loro intersezione è vuota. Inoltre, l'insieme vuoto è sempre disgiunto da qualsiasi altro insieme.

Le operazioni di unione e intersezione sono associative, il che ci consente di calcolare l'unione o l'intersezione tra più insiemi senza l'uso di parentesi.

Si possono anche considerare famiglie di insiemi: dato un insieme $A != emptyset$, se ad ogni elemento di $A$ corrisponde un sottoinsieme $A_alpha$, si denota questa famiglia di insiemi come:

$
  { A_alpha | alpha in A }
$

Quando il contesto è chiaro e non dà adito a fraintendimenti, è possibile omettere il riferimento esplicito all'insieme degli indici $A$ e usare semplicemente la notazione:

$ { A_alpha } $

In molti casi, l'insieme $A$ coincide con l'insieme dei numeri naturali o con un suo sottoinsieme. Per rappresentare l'unione di tutti gli insiemi appartenenti a una famiglia, utilizzeremo notazioni del tipo:

$ union.big.sq_(alpha in A) A_alpha, quad union.big.sq_(n=0)^(oo) A_n, quad union.big.sq_(n=0)^(10) A_n, quad union.big.sq_(n in {1, 2, dots, k}) A_n, dots$

e analoghe per le intersezioni#footnote[Come si può notare, c'è un'analogia nella notazione usata per il simbolo della sommatoria]. In alcuni contesti, possiamo sfruttare notazioni più compatte, nel caso in cui l'insieme degli indici sia chiaramente determinabile dal contesto:

$
  union.big.sq_alpha A_alpha
$

Di seguito riportiamo alcune proprietà fondamentali delle operazioni di unione e intersezione:

$
  A union A = A; quad A inter A = A; \ A union B = B union A; quad A inter B = B inter A; \ A union emptyset = A; quad A inter emptyset = emptyset; \ A union B supset.eq A; quad A inter B subset.eq A; \ A union B = A <=> A supset.eq B; quad A inter B = A <=> A subset.eq B.
$<insiemi2>

// Arrivato qui #TODO

Valgono anche le proprietà distributive di un'operazione rispetto ad un'altra:

$ A union (B inter C) = (A union B) inter (A union C) \ A inter (B union C) = (A inter B) union (A inter C) $ <insiemi3>

Le proprietà espresse in @insiemi3 e in @insiemi2 sottolineano come le operazioni di unione e intersezione tra insiemi siano differenti dalle operazioni di somma e prodotto dei numeri, anche se esistono alcune somiglianze. 

Ad esempio, mentre $A union A = A$ per ogni insieme $A$, si ha che $a + a = a$ solo se $a = 0$; inoltre, mentre $A union (B inter C) = (A union B) inter (A union C)$, non è vero che $a + (b dot c) = (a + b)(a + c)$.

#definizione(title: "Differenza di insiemi")[
Dati due insiemi $A$ e $B$, la loro differenza, indicata con $A without B$#footnote[Alcuni libri di testo utilizzano la notazione _A -- B_ al posto di _A #math.without B_, ma questa scelta è sconsigliata dalle norme ISO.], è l'insieme degli elementi che appartengono ad $A$ ma non a $B$. Formalmente:

$ A without B = { x | x in A and x in.not B } $ <diff>
#place(right, dy: -1.5em)[(1.13)]
]
#pagebreak(weak:true)
#esempio()[
Se gli insiemi $A$ e $B$ sono quelli già considerati nell'esempio per l'unione, allora $A without B = { 0, 1 }$.

Nel caso in cui $B subset.eq A$, l'insieme $A without B$ viene detto complementare di $B$ rispetto ad $A$ e può essere indicato con $complement_A B$ o più semplicemente con $complement B$, se l'insieme $A$ è già stato chiaramente specificato. 

Spesso si assume un insieme fisso detto universo, tale che tutti gli insiemi considerati nella teoria sono suoi sottoinsiemi. In queste circostanze, il termine "complementare" senza ulteriori precisazioni si riferisce sempre al complementare rispetto all'universo.
]

#definizione(title: "Differenza simmetrica")[
Dati due insiemi $A$ e $B$, la loro differenza simmetrica, indicata con $A Delta B$, è l'insieme formato dagli elementi che appartengono a uno e uno solo tra i due insiemi $A$ e $B$. Formalmente:

$
  A Delta B = (A without B) union (B without A) = (A union B) without (A inter B)
$
]
#esempio[
Se 
$
  A = { 1, 2, 3, 5, 7 } quad e quad B = { 2, 3, 4, 5, 6 }
$

allora 

$
  A Delta B = { 1, 4, 6, 7 }
$
]
Utilizzando il concetto di complemento di un insieme rispetto all'universo, è possibile esprimere le operazioni di differenza e differenza simmetrica tramite le sole operazioni di unione e intersezione:

$
  A without B = A inter complement B \ A Delta B = (A inter complement B) union (B inter complement A)
$

come è facilmente verificabile.

In maniera analoga alla logica proposizionale, possono essere facilmente dimostrate anche le seguenti relazioni, note come leggi di De Morgan:

#definizione(title: "Leggi di De Morgan")[
$
  (A inter B)^c = complement A union complement B \ (A union B)^c = complement A inter complement B
$
]

Infine, definiamo un altro concetto fondamentale che verrà utilizzato frequentemente: la coppia ordinata. Indichiamo una coppia ordinata nella forma $(x, y)$, dove la posizione degli elementi $x$ e $y$ ha un ruolo essenziale. In particolare: 

$
  (x, y) = (x_1, y_1) arrow.l.r.double.long x = x_1 and y = y_1
$

È opportuno sottolineare esplicitamente che, in linea generale:

$ 
  {a, b} = {b, a} "mentre" (a, b) != (b, a)
$

#definizione(title: "Prodotto cartesiano")[Dati due insiemi $A$ e $B$, il loro prodotto cartesiano, o semplicemente prodotto, è definito come l'insieme delle coppie ordinate in cui il primo elemento appartiene ad $A$ e il secondo a $B$. Questo insieme è indicato con $A times B$ ed è formalizzato così:

$
  A times B = {(a, b) | a in A e b in B}
$<prodotto_cartesiano>
]
Dalla definizione emerge chiaramente che, in generale, $A times B$ è diverso da $B times A$. Quando i due insiemi coincidono (cioè $A = B$), si può scrivere $A^2$ al posto di $A times A$. 

È inoltre possibile considerare prodotti cartesiani formati da più di due insiemi, tenendo presente che l'ordine degli elementi risulta fondamentale. Nel caso specifico di un prodotto cartesiano che coinvolga lo stesso insieme ripetuto n volte, si usa la notazione $A^n$ invece di scrivere esplicitamente $A times A times dots times A$.

#definizione(title: "Partizione")[Se A è un insieme non vuoto, una collezione ${A_alpha}$ di sottoinsiemi di $A$ si definisce una partizione o ripartizione di $A$ se sono soddisfatte le seguenti condizioni:
+ ogni sottoinsieme $A_alpha$ è non vuoto, ovvero $A_alpha != emptyset, forall alpha$.
+ i sottoinsiemi sono a due a due disgiunti, cioè $A_alpha inter A^beta = emptyset "se" alpha != beta$.
+ l'unione di tutti i sottoinsiemi deve coincidere con l'insieme originario $A$, ovvero $union.big, b:alpha A_alpha = A$.
]
In sostanza, una partizione suddivide un insieme in sottoinsiemi che sono non vuoti, distinti l'uno dall'altro e tali che la loro unione ricostruisce completamente l'insieme di partenza. Gli elementi della collezione ${A_alpha}$ sono anche chiamati classi.

#esempio[Sia $A$ l'insieme dei punti di un piano e $r$ una retta dello stesso piano. La famiglia costituita da tutte le rette parallele a $r$ rappresenta una partizione dell'insieme $A$.
][Consideriamo $ZZ$, l'insieme dei numeri interi. La famiglia di insiemi ${ZZ^-, {0}, ZZ^+}$, dove $ZZ^-$ rappresenta l'insieme degli interi negativi, ${0}$ il singolo zero e $ZZ^+$ gli interi positivi, costituisce una partizione dell'insieme $ZZ$.
][Sia $A$ l'insieme di tutte le rette di un piano e sia dato un fascio di rette $cal(A)$ avente il centro in un punto $O$ del piano. Considerato l'insieme:

$
  A_alpha = {r | r "è una retta parallela a una retta" r_alpha cal(A)},
$

la famiglia ${A_alpha}$ forma una partizione dell'insieme delle rette $A$.
][
Consideriamo $NN^\*$, cioè l'insieme dei numeri naturali positivi (maggiori di zero). Supponiamo di definire i seguenti sottoinsiemi: $A$ come l'insieme dei numeri pari, $B$ come l'insieme dei numeri primi e $C$ come l'insieme dei numeri dispari non primi. La famiglia ${A, B, C}$ non è una partizione di $NN^\*$, poiché, sebbene l'unione dei tre sottoinsiemi produca $NN^\*$, le intersezioni tra gli insiemi non risultano vuote. Ad esempio, 2 appartiene sia ad $A$ sia a $B$ ($2 in A and 2 in B$), violando la condizione di disgiunzione.
]

== Diagrammi di Eulero-Venn e altre rappresentazioni grafiche

In molte situazioni, è utile servirsi dei cosiddetti diagrammi di Eulero-Venn per rappresentare gli insiemi e verificare le proprietà delle operazioni tra insiemi. In questo tipo di diagrammi gli insiemi sono individuati da regioni del piano delimitate da una curva chiusa. In certi casi si conviene di evidenziare esplicitamente alcuni elementi di un insieme mediante punti: la cosa è particolarmente utile nel caso di insiemi finiti, quando si possono anche evidenziare tutti gli elementi degli insiemi stessi. Pur essendo questo tipo di rappresentazione grafica molto significativa, non bisogna abusarne ed è opportuno prestare la massima attenzione.

/* #figure(
cetz.canvas({
  import cetz.draw: *

  circle((-1.2, 0), radius: (2, 1.25), fill: main_scienze.lighten(80%), name: "A")
  circle((-2, 0), radius: 0.02, fill: black); content((-2, 0+0.3), [$a$])
  circle((-0.5, 0.4), radius: 0.02, fill: black); content((-0.5, 0.4+0.3), [$b$])
  circle((-0.9, -0.4), radius: 0.02, fill: black); content((-0.9, -0.4+0.3), [$c$])
  circle((1, 0.8), radius: 0.02, fill: black); content((1, 0.8+0.3), [$e$])
  circle((1.4, -0.2), radius: 0.02, fill: black); content((1.4, -0.2+0.3), [$f$])

  content((-2.8, 1.4), [A])


}),
caption: []
)

#figure(
cetz.canvas({
  import cetz.draw: *

  merge-path(fill: main_scienze.lighten(80%), stroke: none, {
    circle((-1.2, 0), radius: (2, 1.25))
    circle((1.2, 0), radius: (2, 1.25))
  })

  circle((-1.2, 0), radius: (2, 1.25), name: "A")
  circle((1.2, 0), radius: (2, 1.25), name: "B")

  content((-2.8, 1.4), [$A$])
  content((2.8, 1.4), [$B$])
  content((0, 1.6), [$A union B$])
}),
caption: []
)

#figure(
cetz.canvas({
  import cetz.draw: *

  compound-path({
    circle((-1.2, 0), radius: (2, 1.25))
    circle((1.2, 0), radius: (2, 1.25))
  }, fill: main_scienze.lighten(80%), fill-rule: "non-zero", ignore-hidden:true)
  merge-path({
        circle((-1.2, 0), radius: (2, 1.25))
        circle((1.2, 0), radius: (2, 1.25))
  }, fill: white, fill-rule: "even-odd")

  circle((-1.2, 0), radius: (2, 1.25), name: "A")
  circle((1.2, 0), radius: (2, 1.25), name: "B")

  content((-2.8, 1.4), [A])
  content((2.8, 1.4), [B])
  content((0, 0), [$A inter B$])
}),
caption: []
) */

#grid(columns: 2, gutter: 1.5em, align: horizon+ center)[
#figure(
cetz.canvas({
  import cetz.draw: *
  
  circle((-1.2, 0), radius: (1.8), fill: main_scienze.lighten(80%), name: "A")
  circle((-2, 0), radius: 0.02, fill: black); content((-2, 0+0.3), [$a$])
  circle((-0.5, 0.4), radius: 0.02, fill: black); content((-0.5, 0.4+0.3), [$b$])
  circle((-0.9, -0.4), radius: 0.02, fill: black); content((-0.9, -0.4+0.3), [$c$])
  circle((0.7, 0.8), radius: 0.02, fill: black); content((0.7, 0.8+0.3), [$e$])
  circle((1.1, -0.2), radius: 0.02, fill: black); content((1.1, -0.2+0.3), [$f$])

  content((-3, 1.4), [$A$])
}),
caption: []
)<grafico_insiemi1>
][
#figure(
  gap: 0pt,
  cetz.canvas({
    import cetz.draw: *
    scale(1.7)
    cetz-venn.venn2(      
      name: "venn",
      padding: 0.5em,
      not-ab-stroke: none, 
      a-fill: main_scienze.lighten(80%),
      b-fill: main_scienze.lighten(80%), 
      ab-fill: main_scienze.lighten(80%),         
    )
    import cetz.draw: *    
    content((-1.5, 1), [$A$])
    content((1.5, 1), [$B$])
    content((0, 1.2), [$A union B$])
    }),
caption: []
)<grafico_insiemi2>
][
#figure(
  gap: 0pt,
  cetz.canvas({
    
    import cetz.draw: *
    scale(1.7)
    cetz-venn.venn2(      
      name: "venn",
      padding: 0.5em,
      not-ab-stroke: none, 
      a-fill: white,
      b-fill: white,
      ab-fill: main_scienze.lighten(80%)    
    )
    import cetz.draw: *

    content((-1.5, 1), [$A$])
    content((1.5, 1), [$B$])
    content("venn.ab", [$A inter B $])
    }),
caption: []
)<grafico_insiemi3>
][
#figure(
  gap: 0pt,
  cetz.canvas({
    import cetz.draw: *
    scale(1.7)
    cetz-venn.venn2(      
      name: "venn",
      padding: 0.5em,
      not-ab-stroke: none, 
      a-fill: main_scienze.lighten(80%),
      b-fill: white          
    )
    import cetz.draw: *
    
    content((-1.5, 1), [$A$])
    content((1.5, 1), [$B$])
    content("venn.a", [$A without B$])
    }),
caption: []
)<grafico_insiemi4>
][
#figure(
  gap: 0pt,
  cetz.canvas({
    import cetz.draw: *
    scale(1.7)
    cetz-venn.venn2(      
      name: "venn",
      padding: 0.5em,      
      not-ab-stroke: none, 
      a-fill: main_scienze.lighten(80%),
      b-fill: main_scienze.lighten(80%),          
    )
    import cetz.draw: *
    content((-1.5, 1), [$A$])
    content((1.5, 1), [$B$])
    content((0, 1.2), [$A Delta B$])
    }),
caption: []
)<grafico_insiemi5>
][
#figure(
  gap: 1em,
  cetz.canvas({
    import cetz.draw: *

    rect((3,-2),(-3,2), fill: main_scienze.lighten(80%),)
    circle((0, 0), radius: (1.8), fill: white, name: "A")

    content((0, 0), [$A$])
    content((-2.5, -1), [$complement A$])
    content((3.5, 2.2), [$U$])
}),
caption: []
)<grafico_insiemi6>
]

Nella @grafico_insiemi1 è illustrato un insieme $A$, nel quale sono evidenziati tre elementi che gli appartengono: $a$, $b$, $c$, e due elementi $e$ e $f$, che invece non ne fanno parte. 

Quando si tratta di sottoinsiemi dell'insieme dei numeri reali, inclusi $NN$, $ZZ$ e $QQ$, spesso risulta utile utilizzare una rappresentazione grafica su una retta numerica in cui sia definito un sistema di ascisse. In tali situazioni, è consigliabile disegnare una linea che rappresenti tutta la retta reale, con l'indicazione dell'origine e del verso, accompagnata da una seconda linea inferiore per rappresentare l'insieme preso in considerazione. Qualora si debbano rappresentare più insiemi, è possibile utilizzare più righe, una per ciascun insieme. Questo metodo facilita la visualizzazione delle intersezioni, unioni e differenze tra insiemi.

Consideriamo un esempio pratico: gli insiemi $A = {x in RR | 2 < x <= 5} = ]2,5]$ e $B = {2, 3, 4, 6}$. Un metodo grafico molto efficace per descriverli è illustrato nella @grafico_insiemi7.

#figure(
cetz.canvas({
  import cetz.draw: *

  let scale = 6 // fattore di scala per la visualizzazione
  
  // disegno della retta orientata
  line((-0.5, 0), (10.5, 0), mark: (end: ">", fill: black))
  
  // funzione per mappare i valori matematici sulla coordinata x del disegno
    let to_x(val) = val * scale

  // punti principali (coordinata, etichetta superiore, etichetta inferiore)
  let points = (
    (0, "", "-1"),
    (0.2, "", "0"),
    (0.4, "", "1"),
    (0.6, "", "2"),
    (0.8, "", "3"),
    (1.0, "", "4"),
    (1.2, "", "5"),
    (1.4, "", "6"),
    (1.6, "", "7"),    
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

    // linea A (2-5); +1 per traslare l'origine di un punto; il passo 1.2 è perché scale * 0.2   
    let x_start_a = (2 + 1) * 1.2
    let x_end_a = (5 + 1) * 1.2
    line((x_start_a, -1.0), (x_end_a, -1.0), stroke: main_scienze + 1pt)
    content((x_start_a - 0.4, -1.0), [A:])
    
    circle((x_start_a, -1.0), radius: 0.05, fill: white, stroke: black)
    circle((x_end_a, -1.0), radius: 0.05, fill: black, stroke: none)

    // 3. Linea B: Punti evidenziati 2, 3, 4, 6
    let points_b = (2, 3, 4, 6)
    content(( (2 + 1) * 1.2 - 0.4, -1.8), [B:])
    
    for p in points_b {
      let x = (p + 1) * 1.2      
      circle((x, -1.8), radius: 0.05, fill: black, stroke: none)
    }
    
    // Linea tratteggiata di supporto per la Linea B (opzionale, per dare l'idea di "linea immaginaria")
    line(((2+1)*1.2, -1.8), ((6+1)*1.2, -1.8), stroke: (paint: gray, dash: "dotted", thickness: .2pt))

}),
caption: []
)<grafico_insiemi7>

Dalla @grafico_insiemi7, si può notare come il punto $5$ appartenga all'insieme $A$, mentre il punto $2$ non ne faccia parte. Questa precisione è importante soprattutto per applicazioni pratiche, come la risoluzione di disequazioni e sistemi di disequazioni. 

Analizzando la @grafico_insiemi7, emerge con chiarezza quanto segue:

- $A union B = [2, 5] union {6}$;
- $A inter B = {3, 4}$;
- $A without B = ]2, 3[ union ]3, 4[ union ]4, 5]$;
- $B without A = {2, 6}$;
- ...

Infine, ricordiamo che per rappresentare i sottoinsiemi di $RR times RR$ si fa abitualmente uso di un piano cartesiano con riferimento ortogonale, spesso di tipo monometrico, $O x y$. Questo sistema di coordinate permette di rappresentare efficacemente le relazioni tra coppie ordinate di numeri.

== Relazioni binarie
=== Definizioni

Ricordando la definizione di prodotto cartesiano in @prodotto_cartesiano:

#definizione(title: "Relazione")[Dati due insiemi non vuoti $A$ e $B$, chiamiamo relazione binaria tra $A$ e $B$ qualsiasi sottoinsieme $R$ del prodotto cartesiano $A times B$. Qualora $A = B$, la relazione viene detta relazione in $A$.]

Se $R$ è una relazione e $(a, b) in R$, possiamo scrivere $a R b$, indicando che il valore $a$ è in relazione con $b$. Essendo una relazione un semplice sottoinsieme, essa può essere definita sia elencandone esplicitamente gli elementi sia fornendo una proprietà caratteristica che descriva tutte le coppie $(a, b)$ tali che $a$ risulti in relazione con $b$. In sostanza, una relazione definisce un "legame" tra i due insiemi (o all'interno dello stesso insieme) che mette in corrispondenza i loro elementi.

#esempio()[La relazione "$<=$" è un esempio di relazione in $RR$: essa costituisce un sottoinsieme di $RR times RR$. Poiché il prodotto cartesiano può essere rappresentato graficamente tramite un piano con coordinate cartesiane ortogonali (monometriche), è possibile visualizzare questa relazione come un sottoinsieme del piano stesso. La @grafico_relazioni1 offre una rappresentazione visiva di tale concetto.
]

#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: none,      
    y-tick-step: none,      
    x-min: -5, x-max: 5,
    y-min: -4, y-max: 4,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",
    legend: (7, 4),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5)
  )),
    {
      // Area sopra retta e retta
      plot.add-fill-between(
        domain: (-5, 5),
        style: (
            stroke: main_scienze, 
            fill: main_scienze.lighten(80%),
          ), 
        x => calc.pow(x, 1), // First function/data
        x => 5) // Second function/data
    }
  )
}),
caption: []
)<grafico_relazioni1>

#esempio()[
"Essere parallelo" rappresenta una relazione definita nell'insieme di tutte le rette nello spazio.][ 
"$x R y$ se $x + y$ è pari" indica una relazione definita nell'insieme Z dei numeri interi.][  
"Essere nati nello stesso giorno dell'anno" rappresenta una relazione che si può stabilire in un determinato gruppo di persone.  
]
Una rappresentazione grafica significativa può essere realizzata per descrivere le relazioni tra insiemi finiti, seguendo un approccio simile a quello utilizzato nella rappresentazione cartesiana precedentemente illustrata. Supponiamo, ad esempio, di avere due insiemi definiti come $A = {a, b, c}$ e $B = {ast, +, hash, \-}$. La relazione tra gli elementi di A e B può essere visualizzata con una tabella (@tabella_relazioni1) a doppia entrata: gli elementi di A vengono riportati in orizzontale e quelli di B in verticale, in modo analogo alla rappresentazione sul piano cartesiano.
#pagebreak(weak:true)
#show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
  stroke: 0.5pt + main_scienze.lighten(90%),	
  fill: (x, y) => {
    if x == 0 {
    return main_scienze 
    } else if calc.even(x) {
    return main_scienze.lighten(90%)
    } else {
    return white
    }
  },
  align: center + horizon,	
  columns: (2em,) * 4, 
  [$-$], [], [], [], 
  [$ast$], [], [], [],
  [$+$], [], [], [],
  table.cell(stroke: main_scienze.lighten(90%))[$hash$], [], [], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: main_scienze.lighten(90%))[$a$], [$b$], [$c$],
  )
)<tabella_relazioni1>

A questo punto basterà segnare nelle diverse celle della tabella se esiste o meno una relazione tra ciascun elemento di $A$ e ciascun elemento di $B$. Considerando, ad esempio, la relazione formata dalle coppie $(a, +), (a, -), (b, hash)$ e $(c, ast)$, essa sarà rappresentata graficamente attraverso la  @tabella_relazioni2.

#show table.cell.where(y: 0): set text(weight: "regular", fill: black, font: serif-fonts)
#show table.cell.where(x: 0): set text(weight: "bold", fill: white, font: sans-fonts)
#figure(
  caption: [],
  table(
  stroke: 0.5pt + main_scienze.lighten(90%),	
  fill: (x, y) => {
    if x == 0 {
    return main_scienze 
    } else if calc.even(x) {
    return main_scienze.lighten(90%)
    } else {
    return white
    }
  },
  align: center + horizon,	
  columns: (2em,) * 4, 
  [$-$], [$checkmark$], [], [], 
  [$ast$], [], [$checkmark$], [],
  [$+$], [$checkmark$], [], [],
  table.cell(stroke: main_scienze.lighten(90%))[$hash$], [], [], [$checkmark$],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: main_scienze.lighten(90%))[$a$], [$b$], [$c$],
  )
)<tabella_relazioni2>

Le relazioni definite su un insieme $A$ possono soddisfare alcune proprietà importanti, che elenchiamo di seguito:  

- proprietà riflessiva: $forall x in  A space x R x$, ovvero "ogni elemento è in relazione con se stesso". Un esempio concreto è la relazione di parallelismo tra rette nello spazio: per ogni retta $r$, $r$ è parallela a sé stessa ($r parallel r$).
- proprietà simmetrica: $forall x, y in A space x R y arrow.r.double.long y R x$, ovvero "se $x$ è in relazione con $y$, allora $y$ è in relazione con $x$". Anche questa proprietà è soddisfatta dalla relazione di parallelismo: se una retta $r$ è parallela a un'altra retta $s$ ($r parallel s$), allora anche $s$ è parallela a $r$ ($s parallel r$).
- proprietà antisimmetrica: $forall x, y in A space x R y" e "y R x arrow.r.double.long x = y$, ovvero "se $x$ è in relazione con $y$ e anche $y$ è in relazione con $x$, allora $x$ e $y$ coincidono". Un esempio di questa proprietà è dato dalla relazione "$<=$" sui numeri reali: se $x <= y$ e $y <= x$, allora necessariamente $x = y$.
- proprietà transitiva: $forall x, y, z in A space x R y" e "y R z arrow.r.double.long x R z$, ovvero "se $x$ è in relazione con $y$ e $y$ è in relazione con $z$, allora $x$ è in relazione con $z$". Questa proprietà è rispettata sia dalla relazione di parallelismo sia dalla relazione "$<=$" precedentemente citate.

Per le relazioni sugli insiemi finiti come $A$, la rappresentazione tabellare appena descritta si rivela particolarmente utile perché consente di verificare facilmente alcune proprietà della relazione stessa. Ad esempio, la riflessività e la simmetria possono essere osservate in modo immediato.  

#esempio()[
Consideriamo ora le quattro relazioni rappresentate da tabelle relative all'insieme $A = {a, b, c}$:  
- la prima relazione risulta essere simmetrica e transitiva  
- la seconda relazione è riflessiva, simmetrica e transitiva  
- la terza soddisfa le proprietà di essere riflessiva, antisimmetrica e transitiva.  
- la quarta relazione è solamente transitiva 

#align(center)[
#grid(columns: 2, align: center, gutter: 2em)[
#tabella_relazioni(
  color: main_scienze,
  data: (
  [$c$], [], [], [], 
  [$b$], [$checkmark$], [$checkmark$], [],  
  table.cell(stroke: main_scienze.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: main_scienze.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: main_scienze,
  data: (
  [$c$], [], [$checkmark$], [$checkmark$], 
  [$b$], [], [$checkmark$], [$checkmark$],  
  table.cell(stroke: main_scienze.lighten(90%))[$a$], [$checkmark$], [], [],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: main_scienze.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: main_scienze,
  data: ( 
  [$c$], [], [], [$checkmark$], 
  [$b$], [], [$checkmark$], [$checkmark$],  
  table.cell(stroke: main_scienze.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [$checkmark$],
  table.cell(fill: white, stroke: white,)[], table.cell(stroke: main_scienze.lighten(90%))[$a$], [$b$], [$c$],
  )
)
][
#tabella_relazioni(
  color: main_scienze,
  data: (    
    [$c$], [], [$checkmark$], [], 
    [$b$], [], [], [],  
    table.cell(stroke: main_scienze.lighten(90%))[$a$], [$checkmark$], [$checkmark$], [$checkmark$],    
    table.cell(stroke: white, fill: white)[], table.cell(stroke: main_scienze.lighten(90%))[$a$], [$b$], [$c$],
  )
)
]
]
]

=== Relazioni di equivalenza

Un'importante categoria di relazioni, con numerose applicazioni, è quella delle relazioni di equivalenza.

#definizione(title: "Relazione di equivalenza")[Sia $A$ un insieme non vuoto e $R$ una relazione definita su $A$. La relazione $R$ è detta di equivalenza se soddisfa le seguenti proprietà:
- riflessività
- simmetria
- transitività

Le relazioni di equivalenza sono frequentemente rappresentate con il simbolo $tilde$.
]

#esempio[La relazione di parallelismo tra rette nello spazio rappresenta un esempio di relazione di equivalenza.]

Se in un insieme $A$ è definita una relazione di equivalenza $R$, è possibile costruire una particolare famiglia di sottoinsiemi di $A$. Questa costruzione è descritta nella seguente definizione.
#pagebreak(weak:true)

#definizione(title: "Classe di equivalenza")[
Sia $R$ una relazione di equivalenza definita in un insieme $A$ e sia $x in A$. L'insieme di tutti gli elementi $y$ in relazione con $x$ viene indicato con $[x]$ e prende il nome di classe di equivalenza individuata da $x$. Formalmente:
$
  \[x\] := { y in A | x R y }
$
Ogni elemento $x in [x]$ è detto rappresentante della classe $[x]$.
]
È piuttosto semplice dimostrare che la famiglia delle classi di equivalenza forma una partizione dell'insieme $A$. Questa famiglia è chiamata insieme quoziente di $A$ rispetto alla relazione di equivalenza $R$. In molte circostanze, le classi di equivalenza assumono nomi specifici, come mostrato nei seguenti esempi:
- nell'insieme delle rette dello spazio, dove si considera la relazione di parallelismo, le classi di equivalenza sono chiamate direzioni;
- nell'insieme dei piani dello spazio, con la stessa relazione di parallelismo, le classi di equivalenza sono invece chiamate giaciture.

#esempio[
Un esempio particolarmente interessante è dato dalla seguente relazione definita nell'insieme $NN times NN$, ossia l'insieme delle coppie ordinate di numeri naturali:

$ (m, n) tilde (p, q) quad text("se") quad n + q = m + p. $

Se consideriamo l'insieme $NN times NN$ rappresentato nel piano cartesiano, risulta evidente che le classi di equivalenza sono formate da tutte le coppie ordinate che si trovano su rette parallele alla bisettrice del primo e terzo quadrante ($y = x$). Questo fatto è illustrato nella @grafico_relazioni2, che aiuta anche a comprendere come l'insieme delle classi di equivalenza costituisca una partizione dell'insieme $NN times NN$.

#figure(
cetz.canvas({
  import cetz.draw: *

  plot.plot(
    size: (6, 4),
    axis-style: "school-book",
    x-tick-step: 1,      
    y-tick-step: 1,      
    x-min: -.5, x-max: 5.5,
    y-min: 0, y-max: 4.5,
    x-label: [$x$],        
    y-label: [$y$],    
    x-grid: "both",   
    y-grid: "both",
    legend: (7, 4),        
    legend-style: (stroke: none, fill: none, padding: 0, spacing: 0, item: (spacing: 0.1, preview: (width: 0.5)
  )),
    {
      // fascio di rette parallele
      for q in range(-5, 6) {
          plot.add(
            domain: (0, 6), // Usiamo lo stesso dominio per tutte
            style: (
              stroke: (
                paint: main_scienze.lighten(25%), 
                dash: "solid", // Lasciamo le rette solide
                thickness: 1pt // Spessore normale
              ), 
              
            ), 
            x => x - q, // Pendenza m=1 (parallela), intercetta q
          )
        }
    }
  )
}),
caption: []
)<grafico_relazioni2>
]
#pagebreak(weak: true)
=== Relazioni d'ordine

Un secondo tipo di relazioni, anch'esso rilevante in molte applicazioni, è rappresentato dalle relazioni d'ordine.

#definizione(title:"Relazione d'ordine")[
Sia $A$ un insieme non vuoto e $R$ una relazione definita su $A$. Si dice che $R$ è una relazione d'ordine se soddisfa le seguenti proprietà:
- riflessiva
- antisimmetrica
- transitiva
]

#esempio()[Se $P(A)$ è l'insieme delle parti di un insieme $A$, la relazione $subset.eq$ è una relazione d'ordine.
][
Negli insiemi $NN$, $ZZ$, $QQ$, $RR$, la relazione $<=$ è una relazione d'ordine.
]

Le relazioni d'ordine vengono generalmente denotate con simboli quali $prec.eq$. La notazione $a prec.eq b$ indica che "a precede b" o, in modo equivalente, che "b segue a". In una relazione d'ordine indicata con $prec.eq$, possiamo anche esprimere il fatto che "b segue a" scrivendo $b succ.eq a$.

È evidente che, se $A$ è un insieme ordinato secondo la relazione $prec.eq$, ogni sottoinsieme di $A$ rimane ordinato con la stessa relazione, ristretta al sottoinsieme in questione. Questo fatto sarà utilizzato molto spesso.

Una relazione d'ordine si definisce totale se, per ogni coppia di elementi $a, b in A$, vale sempre $a prec.eq b or b prec.eq a$. In altre parole, una relazione d'ordine è totale quando due elementi qualsiasi sono sempre confrontabili.

#esempio[Se $A$ è un insieme costituito da un solo elemento, allora la relazione $subset.eq$ in $P(A)$ è una relazione d'ordine totale.][
Se $A$ è un insieme con più di un elemento, la relazione $subset.eq$ in $P(A)$ non è d'ordine totale. Ad esempio, se $A = {a, b}$, allora $P(A) = { emptyset, {a}, {b}, {a, b}}$. È evidente che ${a}$ non contiene né è contenuto in ${b}$.][

La relazione $<=$ negli insiemi numerici sopra citati è una relazione d'ordine totale.
]
Una relazione d'ordine viene definita parziale se non soddisfa la condizione per essere totale.

#definizione(title: "Minimo e massimo di un insieme")[
Sia $A$ un insieme ordinato secondo la relazione $prec.eq$. Se esiste un elemento $m in A$ tale che $m prec.eq x$ per ogni $x in A$, allora $m$ si dice minimo di $A$. Analogamente, se esiste un elemento $M in A$ tale che $x prec.eq M$ per ogni $x in A$, allora $M$ si dice massimo di $A$.
]

L'articolo determinativo utilizzato sia davanti al minimo che al massimo trova giustificazione nel seguente teorema, che ne garantisce l'unicità.

#definizione(title: "Teorema",
[Se un insieme ordinato possiede un minimo e/o un massimo, questi sono unici.
#dimostrazione() 
Supponiamo che $m_1$ e $m_2$ siano due minimi. Deve allora valere:
$ m_1 prec.eq m_2 and m_2 prec.eq m_1, $
da cui segue $m_1 = m_2$, in virtù della proprietà antisimmetrica dell'ordine. Un ragionamento analogo si applica al massimo.]
)

#esempio[
Nell'insieme delle parti di un dato insieme $A$, l'insieme vuoto è il minimo, mentre $A$ stesso rappresenta il massimo rispetto alla relazione di inclusione tra insiemi ($subset.eq$).
][
L'insieme dei numeri naturali $NN$ ha lo zero come minimo, ma non possiede un massimo rispetto all'ordine naturale.
][
L'insieme dei numeri interi $ZZ$ non ha né massimo né minimo rispetto all'ordine naturale.
]

Gli esempi appena illustrati dimostrano che un insieme può non avere né massimo, né minimo. Per ovviare a tale problematica, si introduce un concetto alternativo: un surrogato del massimo e del minimo. Questo surrogato, pur avendo un ruolo simile, non è identico a essi. Tuttavia, nemmeno il surrogato è garantito in tutti i casi, come vedremo più avanti.

#definizione(title: "Minoranti e maggioranti")[
Consideriamo un insieme ordinato $A$ con una relazione d'ordine ($prec.eq$) e un sottoinsieme $B$ di $A$ (che potrebbe coincidere con $A$). Se esiste un elemento $l in A$ tale che $l prec.eq x$ per ogni $x in B$, allora $l$ si definisce minorante o limitazione inferiore di $B$.
][
Analogamente, se esiste un elemento $L in A$ tale che $x prec.eq L$ per ogni $x in B$, allora $L$ si definisce maggiorante o limitazione superiore di $B$. Un sottoinsieme $B$ che ammette maggioranti si dice superiormente limitato, mentre uno che ammette minoranti si dice inferiormente limitato. Se un sottoinsieme possiede sia maggioranti che minoranti, si definisce semplicemente limitato.
]
È evidente, considerando il caso in cui $B = A$, che l'insieme $A$ può avere come maggioranti solo il massimo (se esiste) e come minoranti solo il minimo (se esiste).

Per un sottoinsieme generico $B$, è utile considerare l'insieme dei maggioranti e l'insieme dei minoranti. Questi sottoinsiemi potrebbero essere anche vuoti. È interessante stabilire se tali insiemi possiedano rispettivamente un minimo (per i maggioranti) e un massimo (per i minoranti).

#definizione(title: "Estremo superiore e inferiore")[
Sia $A$ un insieme ordinato con una relazione d'ordine ($prec.eq$) e $B$ un sottoinsieme di $A$. Se l'insieme dei maggioranti di $B$ possiede un minimo, questo si definisce estremo superiore di $B$ e si indica con $sup B$.
][
Analogamente, se l'insieme dei minoranti di $B$ possiede un massimo, questo si definisce estremo inferiore di $B$ e si indica con $inf B$.
]
Come per il massimo e il minimo, anche per l'estremo superiore e inferiore può esistere al massimo un unico valore.

#esempio()[Sia $B = {x in QQ | x^2 < 4}$. 
Allora $sup B = 2$ e $inf B = -2$][Sia $B$ l'insieme definito come: 

$ B = {x in QQ | x < 0 or (x >= 0 and x^2 < 2)}. $

In questo caso, l'estremo inferiore ($inf B$) non può esistere perché $B$ non è inferiormente limitato. Allo stesso modo, non esiste un estremo superiore ($sup B$), malgrado l'insieme $B$ possieda chiaramente dei maggioranti. La presenza di sottoinsiemi dell'insieme dei numeri razionali che, pur essendo superiormente limitati, non hanno un estremo superiore, rappresenta una significativa limitazione di $QQ$. Per superare tale problema, si è reso necessario introdurre l'insieme dei numeri reali $RR$, nel quale queste problematiche vengono risolte#footnote[Torneremo su queste considerazioni quando tratteremo i numeri razionali e reali.].]

A partire da una relazione d'ordine del tipo precedentemente discusso, è possibile definire un'altra relazione, indicata con il simbolo $prec$ e definita come segue:

$ a prec b quad "se e solo se" quad (a prec.eq b) and (a != b). $

Questa relazione, a differenza di quella d'ordine usuale, non gode della proprietà riflessiva, ma di quella antiriflessiva: nessun elemento, infatti, è in relazione con se stesso. Una relazione siffatta è detta relazione d'ordine in forma antiriflessiva. È comunque evidente che da una relazione d'ordine in forma antiriflessiva è possibile ottenere una relazione d'ordine usuale. Le due tipologie di relazioni, dunque, trasportano la medesima informazione e possono essere considerate equivalenti sotto questo punto di vista.

== Funzioni o applicazioni

Richiamiamo brevemente il concetto di funzione concentrandoci sulle sue proprietà fondamentali, rimandando alla @funzioni un'analisi più approfondita, data la rilevanza dell'argomento.

Tra tutte le possibili relazioni che possono intercorrere tra due insiemi, le funzioni (o applicazioni) rivestono un interesse centrale. In particolare, per questo testo considereremo funzioni che collegano insiemi di numeri reali. Di seguito forniamo una definizione delle caratteristiche principali che ci interessano.

#definizione(title: "Funzione")[
Dati due insiemi $A$ e $B$, si definisce funzione di $A$ in $B$ ogni legge che associa a ciascun elemento di $A$ uno e un solo elemento di $B$.]
- L'insieme $A$ si chiama dominio della funzione.
- L'insieme $B$ si chiama codominio.
- Se $x$ è un elemento di $A$ e $y$ è l'unico elemento di $B$ associato a $x$, allora $y$ si dice funzione di $x$ e viene indicato da $y = f(x)$.
- L'elemento $y$ appartenente a $B$ viene chiamato anche immagine di $x$ attraverso $f$.

La notazione più completa per indicare una funzione è:
$ f : A -> B, quad x |-> f(x), $

ma è frequente usare la forma abbreviata:

$ x |-> f(x), $
soprattutto quando gli insiemi $A$ e $B$ sono già chiaramente definiti nel contesto. In alternativa, si può semplicemente scrivere la funzione come 

$ y = f(x) $.

#esempio()[Siano $A$ e $B$ insiemi dei numeri reali $RR$. Consideriamo la funzione che associa a ogni numero reale $x$ il suo quadrato. In questo caso la funzione può essere espressa come:

$ f : RR -> RR, quad x |-> x^2 $

e anche come

$ x |-> x^2 $

oppure, come spesso viene riportato nei testi di scuola secondaria:

$ y = x^2 $

]

Si noti, nella definizione di funzione, che è obbligatorio che ad ogni punto dell'insieme $A$ corrisponda esattamente un punto dell'insieme $B$, cioè che ogni punto dell'insieme $A$ sia in relazione con esattamente un punto dell'insieme $B$, mentre non è affatto richiesto che ogni punto dell'insieme $B$ sia in relazione con qualche punto dell'insieme $A$. In ogni caso l'insieme dei punti di $B$ che è in relazione con qualche punto di $A$ è molto importante e si dà la seguente definizione.
#pagebreak(weak:true)
#definizione(title: "Insieme immagine")[Se $f : A -> B$ è una funzione, l'insieme degli $y in B$ che siano immagine di almeno un $x in A$ si chiama insieme immagine o semplicemente immagine di $A$ tramite $f$ e si indica con $Im(f)$ o anche con $f(A)$. In formule:

$ Im(f) = { y in B | exists x in A, y = f(x) } $
]
Hanno particolare interesse le funzioni che godono di alcune particolari proprietà aggiuntive, precisamente:
1. funzioni inieittive, in cui punti diversi del dominio hanno immagini diverse (@insiemi_iniettività);
2. funzioni suriettive, in cui ciascun punto del codominio è immagine di almeno un punto del dominio (@insiemi_suriettività);
3. funzioni biiettive o biunivoche, in cui ciascun punto del codominio è immagine di un solo punto del dominio (@insiemi_biettività)

Segnaliamo, anche se la cosa è evidente, che il terzo requisito si ottiene quando sono verificati contemporaneamente il primo e il secondo. Nel caso di funzioni biunivoche si parla spesso anche di corrispondenza biunivoca tra l'insieme $A$ e l'insieme $B$. Le funzioni biunivoche sono particolarmente importanti: come vedremo nel capitolo 4 in relazione ad esse si può introdurre il concetto di funzione inversa.
#v(1em)
#align(center)[
#grid(columns: 3, column-gutter: -4em, row-gutter: 1em, align: center + horizon)[
#figure(
cetz.canvas({
  import cetz.draw: *

  // insiemi
  circle((0, 0), radius: (1, 1.5), fill: main_scienze.lighten(80%), name: "insieme_A")
  content((-1, 1.4), [])
  circle((3, 0), radius: (1, 1.5), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])
  circle((3, 0), radius: (0.6, 0.8), stroke:(paint: main_scienze, dash: "dashed"), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])

  // coordinate punti e etichette (y + 0.03)
  let (x_a, y_a) = (-0.2, 1)
  let (x_b, y_b) = (0.1, 0.5)
  let (x_c, y_c) = (-0.1, -0.1)
  let (x_d, y_d) = (0.1, -0.75)
  //let (x_e, y_e) = (-0.2, -1.2)
  let (x_f, y_f) = (3, 0.6)
  let (x_g, y_g) = (2.7, 0)
  let (x_h, y_h) = (3.1, -0.5)
  let (x_i, y_i) = (2.7, -1)
  let (x_j, y_j) = (3.3, 0.1)
  let (x_k, y_k) = (3.3, -0.9)
  let (x_m, y_m) = (3.1, -1.2)
  let (x_n, y_n) = (3.1, 1.1)

  // punti primo insieme
  circle((x_a, y_a), radius: 0.02, fill: black); content((x_a, y_a), [], name: "a")
  circle((x_b, y_b), radius: 0.02, fill: black); content((x_b, y_b), [], name: "b")
  circle((x_c, y_c), radius: 0.02, fill: black); content((x_c, y_c), [], name: "c")
  circle((x_d, y_d), radius: 0.02, fill: black); content((x_d, y_d), [], name: "d")
  //circle((x_e, y_e), radius: 0.02, fill: black); content((x_e, y_e), [], name: "e")

  // punti secondo insieme
  circle((x_f, y_f), radius: 0.02, fill: black); content((x_f, y_f), [], name: "f")
  circle((x_g, y_g), radius: 0.02, fill: black); content((x_g, y_g), [], name: "g")
  circle((x_h, y_h), radius: 0.02, fill: black); content((x_h, y_h), [], name: "h")
  circle((x_i, y_i), radius: 0.02, fill: black); content((x_i, y_i), [], name: "i")
  circle((x_j, y_j), radius: 0.02, fill: black); content((x_j, y_j), [], name: "j")
  circle((x_k, y_k), radius: 0.02, fill: black); content((x_k, y_k), [], name: "k")
  circle((x_m, y_m), radius: 0.02, fill: black); content((x_m, y_m), [], name: "m")
  circle((x_n, y_n), radius: 0.02, fill: black); content((x_n, y_n), [], name: "m")

  // relazioni
  bezier(
    "a.south", 
    "g.south",  
    (1, 1),        
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "b.south", 
    "f.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "c.south", 
    "h.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "d.south", 
    "j.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
}),
caption: []
)<insiemi_iniettività>
][][
#figure(
cetz.canvas({
  import cetz.draw: *

  // insiemi
  circle((0, 0), radius: (1, 1.5), fill: main_scienze.lighten(80%), name: "insieme_A")
  content((-1, 1.4), [])
  circle((3, 0), radius: (1, 1.5), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])
  //circle((3, 0), radius: (0.6, 0.8), stroke:(paint: main_scienze, dash: "dashed"), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])

  // coordinate punti e etichette (y + 0.03)
  let (x_a, y_a) = (-0.2, 1)
  let (x_b, y_b) = (0.1, 0.5)
  let (x_c, y_c) = (-0.1, -0.1)
  let (x_d, y_d) = (0.1, -0.75)
  let (x_e, y_e) = (0.2, -1.1)
  let (x_f, y_f) = (3, 0.8)
  let (x_g, y_g) = (2.7, 0)
  let (x_h, y_h) = (3.1, -0.8)
  let (x_i, y_i) = (2.7, -1)
  let (x_j, y_j) = (3.4, 0.1)
  let (x_k, y_k) = (3.3, -0.9)
  let (x_m, y_m) = (3.1, -1.2)
  let (x_n, y_n) = (3.1, 1.1)

  // punti primo insieme
  circle((x_a, y_a), radius: 0.02, fill: black); content((x_a, y_a), [], name: "a")
  circle((x_b, y_b), radius: 0.02, fill: black); content((x_b, y_b), [], name: "b")
  circle((x_c, y_c), radius: 0.02, fill: black); content((x_c, y_c), [], name: "c")
  circle((x_d, y_d), radius: 0.02, fill: black); content((x_d, y_d), [], name: "d")
  circle((x_e, y_e), radius: 0.02, fill: black); content((x_e, y_e), [], name: "e")

  // punti secondo insieme
  circle((x_f, y_f), radius: 0.02, fill: black); content((x_f, y_f), [], name: "f")
  circle((x_g, y_g), radius: 0.02, fill: black); content((x_g, y_g), [], name: "g")
  circle((x_h, y_h), radius: 0.02, fill: black); content((x_h, y_h), [], name: "h")
  //circle((x_i, y_i), radius: 0.02, fill: black); content((x_i, y_i), [], name: "i")
  circle((x_j, y_j), radius: 0.02, fill: black); content((x_j, y_j), [], name: "j")
  //circle((x_k, y_k), radius: 0.02, fill: black); content((x_k, y_k), [], name: "k")
  //circle((x_m, y_m), radius: 0.02, fill: black); content((x_m, y_m), [], name: "m")
  //circle((x_n, y_n), radius: 0.02, fill: black); content((x_n, y_n), [], name: "m")

  // relazioni
  bezier(
    "a.south", 
    "f.south",  
    (1, 1),        
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "b.south", 
    "g.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "c.south", 
    "h.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "d.south", 
    "j.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "e.south", 
    "j.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
}),
caption: []
)<insiemi_suriettività>
][][
#figure(
cetz.canvas({
  import cetz.draw: *
  
  // insiemi
  circle((0, 0), radius: (1, 1.5), fill: main_scienze.lighten(80%), name: "insieme_A")
  content((-1, 1.4), [])
  circle((3, 0), radius: (1, 1.5), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])
  //circle((3, 0), radius: (0.6, 0.8), stroke:(paint: main_scienze, dash: "dashed"), fill: silver.lighten(50%), name: "insieme_B")
  content((2.1, 1.4), [])

  // coordinate punti e etichette (y + 0.03)
  let (x_a, y_a) = (-0.2, 1)
  let (x_b, y_b) = (0.1, 0.5)
  let (x_c, y_c) = (-0.1, -0.1)
  let (x_d, y_d) = (0.1, -0.75)
  //let (x_e, y_e) = (-0.2, -1.2)
  let (x_f, y_f) = (3, 0.8)
  let (x_g, y_g) = (2.7, 0)
  let (x_h, y_h) = (3.1, -0.8)
  let (x_i, y_i) = (2.7, -1)
  let (x_j, y_j) = (3.4, 0.1)
  let (x_k, y_k) = (3.3, -0.9)
  let (x_m, y_m) = (3.1, -1.2)
  let (x_n, y_n) = (3.1, 1.1)

  // punti primo insieme
  circle((x_a, y_a), radius: 0.02, fill: black); content((x_a, y_a), [], name: "a")
  circle((x_b, y_b), radius: 0.02, fill: black); content((x_b, y_b), [], name: "b")
  circle((x_c, y_c), radius: 0.02, fill: black); content((x_c, y_c), [], name: "c")
  circle((x_d, y_d), radius: 0.02, fill: black); content((x_d, y_d), [], name: "d")
  //circle((x_e, y_e), radius: 0.02, fill: black); content((x_e, y_e), [], name: "e")

  // punti secondo insieme
  circle((x_f, y_f), radius: 0.02, fill: black); content((x_f, y_f), [], name: "f")
  circle((x_g, y_g), radius: 0.02, fill: black); content((x_g, y_g), [], name: "g")
  circle((x_h, y_h), radius: 0.02, fill: black); content((x_h, y_h), [], name: "h")
  circle((x_j, y_j), radius: 0.02, fill: black); content((x_j, y_j), [], name: "j")
  //circle((x_i, y_i), radius: 0.02, fill: black); content((x_i, y_i), [], name: "i")
  //circle((x_k, y_k), radius: 0.02, fill: black); content((x_k, y_k), [], name: "k")
  //circle((x_m, y_m), radius: 0.02, fill: black); content((x_m, y_m), [], name: "m")
  //circle((x_n, y_n), radius: 0.02, fill: black); content((x_n, y_n), [], name: "m")

  // relazioni
  bezier(
    "a.south", 
    "g.south",  
    (1, 1),        
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "b.south", 
    "f.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "c.south", 
    "h.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
  bezier(
    "d.south", 
    "j.south",  
    (1, 1),         
    mark: (end: ">", fill: main_scienze),
    stroke: (paint: main_scienze, thickness:0.5pt), padding: 0pt,
  )
}),
caption: []
)<insiemi_biettività>
][]
]
#pagebreak(weak:true)
== Cardinalità di un insieme <cardinalità>

#definizione(title: "Insiemi equipotenti")[Due insiemi $A$ e $B$ si dicono equipotenti se esiste una corrispondenza biunivoca tra i due insiemi.]

#esempio()[
Siano $A = {1, 2, 3}$ e $B = {a, b, c}$. La funzione definita da $f(1) = a, f(2) = b, f(3) = c$ è una corrispondenza biunivoca tra i due insiemi, che dunque sono equipotenti.
][
Siano $A$ l'insieme dei numeri naturali pari, $A = {0, 2, 4, 6, dots}$ e $B$ l'insieme dei numeri naturali dispari, $B = {1, 3, 5, dots}$. La funzione che a ogni elemento $n$ di $A$ fa corrispondere il naturale successivo $n + 1$ è una corrispondenza biunivoca tra i due insiemi, che dunque sono equipotenti.][
  Consideriamo l'insieme $A$ dei numeri naturali pari, ossia $A = {0, 2, 4, 6, dots}$, e l'insieme $NN$ che rappresenta l'insieme di tutti i numeri naturali. La funzione che associa a ogni elemento di $A$ la sua metà definisce una corrispondenza biunivoca tra i due insiemi. Di conseguenza, i due insiemi sono equipotenti.
]

Questo esempio è particolarmente significativo poiché dimostra che è possibile instaurare una corrispondenza biunivoca tra un insieme e un suo sottoinsieme proprio. Tale proprietà, tuttavia, non è valida per tutti gli insiemi. A tal proposito, si introduce la seguente definizione:

#definizione(title: "Insiemi finiti e infiniti", label: <insiemi_finiti_infiniti>)[Un insieme si dice finito se non esiste una corrispondenza biunivoca tra esso e un suo sottoinsieme proprio, ovvero se non è equipotente a nessuno dei suoi sottoinsiemi propri. Al contrario, un insieme si dice infinito se può essere messo in corrispondenza biunivoca con un suo sottoinsieme proprio.
]

#esempio()[L'insieme $A = {1, 2, 3, dots, 100}$ è un insieme finito, mentre $NN$, l'insieme di tutti i numeri naturali, è infinito.]

=== Proprietà degli insiemi finiti

Ogni insieme finito $A$ può essere messo in corrispondenza biunivoca con un sottoinsieme di $NN$ della forma ${1, 2, 3, dots, n}$, dove $n$ è unico per ciascun insieme finito. Questo valore di $n$ è chiamato cardinalità dell’insieme $A$ e si denota con $|A| = n$.

Per quanto riguarda gli insiemi infiniti, essi possiedono una cardinalità transfinita, e non tutti gli insiemi infiniti sono necessariamente equipotenti tra loro. Un importante esempio di questa distinzione riguarda gli insiemi dei numeri naturali ($NN$) e dei numeri reali ($RR$). Dimostrare che questi due insiemi non sono equipotenti è un esercizio classico, che utilizza il metodo della dimostrazione per assurdo:

Supponiamo che sia possibile stabilire una corrispondenza biunivoca tra i numeri naturali e i numeri reali rappresentati nella forma decimale $alpha . beta_1 beta_2 beta_3 dots$, dove $alpha$ è la parte intera e $beta_1, beta_2, dots$ sono le cifre decimali. Possiamo rappresentare questa presunta corrispondenza in una tabella come segue:

$
  0 &-> alpha_0 . beta_(01) beta_(02) beta_(03) dots \ 1 &-> alpha_1 . beta_(11) beta_(12) beta_(13) dots \ 2 &-> alpha_2 . beta_(21) beta_(22) beta_(23) dots \ 3 &-> alpha_3 . beta_(31) beta_(32) beta_(33) dots \ &dots \ n &-> alpha_n . beta_(n 1) beta_(n 2) beta_(n 3) dots \ &dots
$<cardinalità1>

Consideriamo ora un numero reale $gamma . delta_1 delta_2 delta_3 dots$ costruito in questo modo:
- se $alpha_(0) = 0$, allora $gamma = 1$, altrimenti $gamma = 0$
- se $beta_(01) = 0$, allora $delta_1 = 1$, altrimenti $delta_1 = 0$;
- se $beta_(12) = 0$, allora $delta_2 = 1$, altrimenti $delta_2 = 0$;
- ...

Questo numero non può essere associato a nessun numero naturale, poiché si distingue da tutti quelli presenti nella tabella @cardinalità1, sia per la parte intera prima della virgola, sia almeno per una cifra decimale. Di conseguenza, la corrispondenza tra i numeri naturali e quelli reali non può essere biunivoca. Questo dimostra che l'insieme dei numeri reali è effettivamente più grande rispetto a quello dei numeri naturali, anche se non approfondiamo ulteriormente questa osservazione.

In maniera sintetica, possiamo anche accennare che tra i numeri cardinali si può definire una relazione d'ordine. In particolare, un numero cardinale $alpha$ (che rappresenta la cardinalità di un insieme $A$) risulta minore rispetto a un cardinale $beta$ (cardinalità di un insieme $B$) se $A$ è equivale a un sottoinsieme di $B$, mentre il contrario non vale. 

Per quanto riguarda i cardinali finiti, è interessante notare come, partendo esclusivamente dall'insieme vuoto, sia possibile costruire insiemi con cardinalità $n$, per ogni valore di $n in NN$:

$ 
  0 &= |emptyset| \
  1 &= |{ emptyset }| \
  2 &= |{ emptyset, { emptyset } }| \
  3 &= |{ emptyset, { emptyset } , { emptyset, { emptyset } } }| \
  4 &= |{ emptyset, { emptyset } , { emptyset, { emptyset } } , { emptyset, { emptyset } , { emptyset, { emptyset } } } }| \
  5 &= ...

$<cardinalità2>

Come si può facilmente osservare, ogni insieme in @cardinalità2 viene costruito unendo gli insiemi di tutte le righe precedenti. Poiché $emptyset ⊂ { emptyset } ⊂ { emptyset, { emptyset } } ⊂ ...$, da ciò emerge un ordine "naturale" per tali cardinali finiti.

Per completare questa breve introduzione al concetto di cardinalità, ricordiamo che, se un insieme finito ha cardinalità $n$, l'insieme delle sue parti avrà cardinalità $2^n$. Questo risultato può essere dimostrato in diversi modi.

// Sintesi
// Esericizi