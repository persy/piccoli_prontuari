#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Statistica descrittiva

#intro[
  La statistica descrittiva fornisce gli strumenti matematici per raccogliere, sintetizzare e rappresentare i dati relativi a fenomeni collettivi. Attraverso l'uso di tabelle, grafici e indici di sintesi, essa permette di trasformare un insieme di osservazioni grezze in informazioni chiare e interpretabili, costituendo la base per l'analisi quantitativa della realtà.
]

== L'analisi statistica di un fenomeno

Immaginiamo di dover rispondere a una domanda in una ricerca antropologica: qual è, in media, l'altezza delle donne europee? Per rispondere, è necessario chiarire cosa si intende con "in media": sarebbe decisamente poco pratico misurare l'altezza di tutte le donne in Europa, poiché si tratterebbe di considerare decine di milioni di casi. Un metodo più efficiente consisterebbe nella raccolta di dati, come il numero di donne che vivono in Europa e la loro distribuzione nei vari paesi europei. Dopo aver raccolto le informazioni necessarie, bisognerà elaborarle: per esempio, stimando l'altezza media delle donne nei diversi paesi tramite opportuni metodi per ottenere il risultato desiderato.

Problemi come questo e i metodi per affrontarli rientrano nell'ambito della statistica. Ci concentreremo in particolare sulla statistica descrittiva, che riguarda la raccolta e l'interpretazione dei dati. Le indagini statistiche esaminano sempre fenomeni che coinvolgono collettività o popolazioni, ossia insiemi di elementi chiamati individui o unità statistiche, che presentano caratteristiche comuni, come l'insieme dei cittadini italiani o delle batterie prodotte da una specifica azienda.

Per le popolazioni siamo interessati a valutare determinati caratteri; nel caso dei cittadini italiani, per esempio, possiamo considerare l'età, il livello di istruzione e le opinioni politiche. Possiamo anche parlare di variabile statistica.

Ognuno di questi caratteri può manifestarsi attraverso diversi attributi, che definiamo modalità: per esempio, le opinioni politiche si possono esprimere attraverso il voto a vari partiti. Le modalità rappresentano essenzialmente i valori della variabile statistica. In linea con le variabili aleatorie, chiamiamo $X$ la variabile e $x_i$ i suoi valori, scrivendo: $X = { x_1, x_2, dots, x_n }$.

== Intensità e frequenza

I dati statistici possono essere qualitativi, espressi in forma verbale (come colore, nazionalità, religione), o quantitativi, espressi numericamente (come l'altezza, il numero di figli in una famiglia, il numero delle nascite in un anno).

Il dato statistico viene solitamente rappresentato da un numero che indica:
+ il numero di volte in cui una modalità si presenta: questo è definito come frequenza assoluta.
+ una misura (peso, superficie, velocità): in questo caso si parla di intensità.

La frequenza relativa di una modalità è il rapporto tra la frequenza assoluta e il numero totale dei casi osservati.

#esempio[Nell'ambito delle frequenze in modalità qualitative, consideriamo gli studenti di una classe (25) e valutiamo il colore dei loro occhi. Si può costruire la seguente tabella:

#tabella_statistica1
][
Per quanto riguarda invece le intensità in modalità qualitative, consideriamo i prodotti di un'azienda agricola e valutiamo le quantità prodotte. La tabella risultante potrebbe essere la seguente:

#tabella_statistica2

]
Le tabelle possono naturalmente essere rappresentate tramite grafici, come già visto trattando il concetto di funzione.

//
== Indici statistici

Un primo approccio nell'analisi dei dati statistici è l'individuazione di indici specifici che possano sintetizzare qualche caratteristica significativa dei dati stessi in un singolo valore. Esamineremo alcuni di questi indici.

Indicheremo con $f(x_i)$ o $f_i$ le frequenze assolute e con $p(x_i)$ o $p_i$ quelle relative dei valori di una variabile statistica $X$.

#definizione(title: "Moda", label: <def-moda>)[Data una variabile statistica $X = { x_1, x_2, dots, x_n }$ con frequenze assolute $f(x_i)$ e relative $p(x_i)$, la moda è il valore $x_m$ associato alla massima frequenza assoluta o relativa. È possibile che la moda non sia unica, poiché più valori possono avere la stessa frequenza. In assenza di una frequenza prevalente, la moda non può essere determinata.]

#definizione(title: "Mediana", label: <def-mediana>)[Per una distribuzione di $n$ valori numerici ordinati (in modo crescente o decrescente), la mediana è il valore $x_c$ situato al centro se $n$ è dispari, oppure la semisomma dei due valori centrali se $n$ è pari.]

#definizione(title: "Media aritmetica semplice", label: <def-media-aritmetica-semplice>)[Per una variabile statistica composta da $n$ valori numerici $x_1, x_2, dots, x_n$, la media aritmetica semplice è il numero $M$ ottenuto dividendo la somma di tutti i valori per $n$:

$ M = (limits(sum)_(i = 1)^n x_i) / n $]

Un esempio in geometria analitica sono le coordinate del punto medio di un segmento o le coordinate del baricentro di un triangolo, che rappresentano la media delle coordinate degli estremi o dei vertici.

#definizione(title: "Media aritmetica ponderata", label: <def-media-aritmetica-ponterata>)[Data una variabile statistica composta da $m$ valori numerici $x_1, x_2, dots, x_m$, con frequenze assolute $f_1, f_2, dots, f_m$, la media aritmetica ponderata è:

$ M = (limits(sum)_(i = 1)^m x_i f_i) / (limits(sum)_(i = 1)^m f_i) $

dove i coefficienti $f_i$ sono detti pesi. Se si considerano le frequenze relative anziché quelle assolute, la media diventa:

$ M = limits(sum)_(i = 1)^m x_i p_i $

un risultato che si dimostra facilmente.]

#definizione(title: "Media geometrica semplice e ponderata", label: <def-media-geometrica-semplice-ponderata>)[Per una variabile statistica composta da $n$ valori numerici $x_1, x_2, dots, x_n$, tutti positivi, la media geometrica semplice è:

$ M_g = root(n, product_(i = 1)^n x_i) $

Per una variabile statistica con $m$ valori numerici positivi $x_1, x_2, dots, x_m$ e frequenze assolute $f_1, f_2, dots, f_m$, la media geometrica ponderata è:

$ M_g = root(f_1 + f_2 + dots + f_m, product_(i = 1)^m x_i^(f_i))  $

dove i coefficienti $f_i$ sono pesi. Se si considerano le frequenze relative $p_i$, la media diventa:

$ M_g = product_(i = 1)^m x_i^(p_i) $

per cui non è fornita una dimostrazione.]

#definizione(title: "Media armonica semplice e ponderata", label: <def-media-armonica-semplice-ponderata>)[Per una variabile statistica costituita da $n$ valori numerici $x_1, x_2, dots, x_n$, tutti non nulli, la media armonica semplice è il numero:

$ M_h = n / (limits(sum)_(i = 1)^n 1/x_i) $

//
Data una variabile statistica composta da $m$ valori numerici $x_1, x_2, dots, x_m$, tutti diversi da zero, con ciascun valore associato a una frequenza assoluta $f_1, f_2, dots, f_m$, la media armonica ponderata si definisce come il numero:

$ M_h = (sum f_i) / (sum f_i / x_i). $

Se si considerano le frequenze relative $p_i$ invece di quelle assolute, la media armonica ponderata è data da:

$ M_h = 1 / (sum p_i / x_i), $

sebbene la dimostrazione di questo risultato non sia fornita. //? aggiungere dimostrazione

]

Analogamente a quanto fatto per le variabili casuali, si definiscono i concetti di scarto, varianza e scarto quadratico medio, generalmente in relazione alla media aritmetica. Tali definizioni non vengono ripetute poiché sono dirette trascrizioni delle definizioni delle variabili casuali.

== Inferenza statistica

In molte applicazioni, si analizzano variabili casuali o statistiche con distribuzioni di probabilità sconosciute. Per esempio, immagina di avere un'urna contenente $n$ palline, alcune bianche e altre colorate. Si considera una variabile casuale $X$ che attribuisce il numero 1 se viene estratta una pallina colorata e 0 se è bianca. Senza conoscere il numero esatto di ciascun colore, non è possibile determinare preliminarmente la distribuzione di probabilità della variabile casuale. In statistica, prendiamo la variabile statistica relativa al colore degli occhi della popolazione italiana, che può essere rappresentato numericamente: 1 per azzurro, 2 per verde, 3 per castano, e così via. Interpellare ogni cittadino sul colore dei propri occhi è difficile, quindi risulta complesso identificare la funzione $f(x)$ che indica la frequenza assoluta o $p(x)$ per la frequenza relativa.

In situazioni come queste, anziché studiare l'intera popolazione, si esamina un campione rappresentativo della popolazione stessa. La selezione del campione non è un'operazione semplice e richiede verifiche e continui miglioramenti. Un metodo semplice di campionamento potrebbe consistere nell'estrazione casuale di individui dalla popolazione: come nel caso delle palline dell'urna menzionato. Tuttavia, se l'obiettivo fosse quello di comprendere le intenzioni di voto per un'elezione, sarebbero necessarie strategie più complesse. Questo argomento complesso è stato solo brevemente introdotto qui.