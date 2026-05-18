#import "../../template_normal.typ": *

== Il limite e la derivata di una funzione

Il concetto di limite è alla base del calcolo infinitesimale e si applica alle funzioni di una variabile y = f(x). Per calcolare il limite di una funzione, si fa tendere la variabile indipendente x verso un valore limite x₀, che può essere finito o infinito. Il limite rappresenta il valore verso cui tendono tutti i valori della funzione f(x) quando x assume valori sempre più prossimi a x₀.

L'operazione viene indicata con una notazione simbolica e si interpreta come limite di f(x) per x che tende a x₀.

Considerando un valore di x vicino a x₀, espresso come x₀+h dove h è una quantità infinitesimale ma diversa da zero, questa distanza consente di definire geometricamente il concetto di pendenza di una retta. Tale retta interseca il grafico della funzione y = f(x) nei punti A = (x₀, f(x₀)) e B = (x₀+h, f(x₀+h)).

Eseguendo il limite della quantità corrispondente, il punto B tende ad avvicinarsi al punto A lungo la curva del grafico di y = f(x), fino a quando la retta assumerà la posizione della tangente alla curva nel punto A. 

Il risultato di tale operazione definisce la derivata della funzione f(x) nel punto x₀ ed è indicato con il simbolo f'(x₀). Da un punto di vista geometrico, la derivata esprime l'inclinazione sull'asse delle ascisse della retta tangente alla curva nel punto considerato.

Più in generale, la derivata di una funzione f(x) è essa stessa una funzione della variabile x. Il suo valore in ogni punto rappresenta la derivata della funzione originale in quel punto e viene indicato con apposita simbologia.

Poiché il concetto di derivata può essere applicato più volte, si ottengono le derivate di ordine superiore. Ad esempio, la derivata seconda della funzione y = f(x) è definita come la derivata della derivata prima ed è espressa attraverso una notazione specifica.

Le regole per calcolare le derivate delle funzioni più comuni, così come quelle delle loro combinazioni, sono ben note nell'analisi matematica e vengono spesso applicate per risolvere problemi teorici e pratici.

=== Le derivate parziali

Per una funzione di più variabili, ad esempio una funzione delle tre variabili spaziali x, y e z, scritta nella forma y = f(x, y, z), le derivate parziali si definiscono come le derivate della funzione rispetto a una singola variabile, ottenendo questa funzione mantenendo costanti i valori delle altre variabili.

Ad esempio, la derivata parziale di f(x, y, z) rispetto alla variabile x si calcola determinando il limite del rapporto incrementale della funzione per x che tende a un valore x₀, mentre si tengono fissi i valori di y e z. Un procedimento analogo si applica per calcolare le derivate parziali rispetto alle variabili y e z. Tali derivate si indicano rispettivamente come la derivata parziale rispetto a x, rispetto a y e rispetto a z.

Se una grandezza fisica dipende anche dal tempo oltre che da una o più variabili spaziali, si può definire la derivata parziale rispetto al tempo, che rappresenta la variazione della grandezza mantenendo costanti le altre variabili.

== Il gradiente, la divergenza e il rotore

Il gradiente, la divergenza e il rotore sono operatori matematici che appaiono in diverse aree della fisica, ad esempio nelle equazioni di Maxwell. Questi operatori agiscono su scalari o vettori per associarli a nuove quantità scalari o vettoriali.

Il gradiente descrive la variazione di una grandezza fisica scalare per unità di lunghezza lungo una determinata direzione. Per esempio, il gradiente termico indica il cambiamento di temperatura lungo una direzione scelta. Analogamente, il gradiente di pressione misura la variazione della pressione nello spazio. 

Il gradiente di una funzione scalare f(x, y, z) è rappresentato dal vettore chiamato grad f, ottenuto sommando le derivate parziali della funzione lungo le tre direzioni spaziali x, y e z. Queste direzioni sono definite dai versori i, j e k, che corrispondono ai vettori unitarî associati agli assi cartesiani. 

In formula:  
grad f = (∂f/∂x) i + (∂f/∂y) j + (∂f/∂z) k  

Il gradiente trasforma uno scalare in un vettore.  

La divergenza è un operatore che associa a un vettore una quantità scalare ottenuta sommando le derivate parziali delle sue componenti rispetto alle direzioni x, y e z. Se il vettore v ha componenti vx, vy e vz lungo gli assi cartesiani, la divergenza di v (indicata con div v) si calcola con la formula:  
div v = (∂vx/∂x) + (∂vy/∂y) + (∂vz/∂z)  

La divergenza trasforma un vettore in uno scalare. Un campo vettoriale in cui la divergenza del vettore è nulla è detto campo solenoidale. Un esempio è il campo magnetico B, la cui divergenza è zero in accordo con le equazioni di Maxwell. Questo implica che il campo magnetico non ha sorgenti.

Infine, il rotore è un operatore vettoriale che associa a un vettore un altro vettore le cui componenti sono date dalla differenza tra le derivate parziali delle componenti del vettore originale rispetto ai tre assi cartesiani. Per un vettore v con componenti vx, vy e vz, il rotore (indicato con rot v) si esprime con:  
rot v = [(∂vz/∂y - ∂vy/∂z) i] + [(∂vx/∂z - ∂vz/∂x) j] + [(∂vy/∂x - ∂vx/∂y) k]  

Il rotore trasforma un vettore in un altro vettore.

== Le funzioni seno e coseno

Le funzioni seno e coseno costituiscono esempi classici di funzioni periodiche ampiamente impiegate nella modellizzazione di fenomeni fisici dotati di periodicità, come la radiazione elettromagnetica e il moto armonico descritto da specifiche equazioni.  

Dal punto di vista matematico, tali funzioni derivano dalla trigonometria piana, una branca della matematica che analizza le relazioni tra i lati e gli angoli di un triangolo. La trigonometria trova applicazioni rilevanti anche in ambiti pratici, quali la determinazione di distanze astronomiche.  

Considerando un triangolo rettangolo che include un angolo acuto, il seno di tale angolo, indicato con \( \text{sen} \), si definisce come il rapporto tra il cateto opposto all'angolo e l'ipotenusa. Analogamente, il coseno dell'angolo, indicato con \( \text{cos} \), rappresenta il rapporto tra il cateto adiacente all'angolo e l'ipotenusa.  

Inoltre, se si osserva una circonferenza di raggio unitario centrata nell'origine di un sistema cartesiano, le funzioni seno e coseno possono essere ridefinite utilizzando l'angolo formato dal raggio vettore durante il percorso lungo la circonferenza. Da questa costruzione derivano due funzioni periodiche esprimibili come \( y = \text{sen}(x) \) e \( y = \text{cos}(x) \).  

L'estensione delle funzioni seno e coseno a valori angolari positivi (misurati in senso antiorario) e negativi (misurati in senso orario), senza limitazione di ampiezza, permette la generazione di funzioni del tipo sinusoide e cosinusoide, il cui comportamento mostra una periodicità definita.  

Le grandezze associate a queste funzioni sono caratterizzate principalmente da tre parametri: 
- ampiezza, che corrisponde al valore massimo assoluto raggiunto dalla funzione sull'asse delle ordinate (y); 
- periodo, che rappresenta la distanza tra due valori uguali consecutivi della funzione lungo l'asse delle ascisse (x); 
- frequenza, definita come l'inverso del periodo e indicativa del numero di oscillazioni per unità di tempo.  

== Le matrici

Le matrici rappresentano strutture matematiche organizzate sotto forma di tabelle rettangolari composte da elementi ordinati in righe e colonne. Esse costituiscono strumenti fondamentali nel calcolo matematico e trovano applicazioni trasversali in diverse aree scientifiche.  

La matrice \( A \), caratterizzata da \( m \) righe e \( n \) colonne, può essere identificata simbolicamente in base alla disposizione dei suoi elementi. Due matrici aventi lo stesso numero di righe e colonne vengono definite simili, mentre una matrice con identico numero di righe e colonne è denominata quadrata.  

Le matrici possono essere sottoposte ad operazioni matematiche quali somma e differenza. La somma di due matrici consiste nel generare una nuova matrice i cui elementi sono ottenuti sommando quelli corrispondenti delle matrici iniziali. Analogamente, la sottrazione di due matrici produce una matrice ottenuta dalla differenza tra gli elementi equivalenti delle due matrici originarie.  

La moltiplicazione di una matrice per uno scalare consiste invece nel calcolare una nuova matrice in cui ciascun elemento risulta moltiplicato per il valore dello scalare considerato. Esistono inoltre regole dedicate per la definizione rigorosa del prodotto di due matrici.  

L'insieme delle operazioni relative alle matrici costituisce il cosiddetto calcolo matriciale. Tale disciplina si rivela cruciale per risolvere problemi che richiederebbero calcoli estremamente complessi senza questo strumento, come nel caso della soluzione dei sistemi di equazioni algebriche.  

Il calcolo matriciale ha acquisito una rilevanza straordinaria soprattutto in ambito fisico, ad esempio nella meccanica quantistica. È infatti sulla base delle sue applicazioni che venne sviluppata la meccanica matriciale, un approccio teorico fondamentale per la rappresentazione matematica dei fenomeni quantistici.

// Tabella costanti

