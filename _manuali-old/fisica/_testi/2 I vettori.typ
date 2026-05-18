#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Per comprendere appieno il comportamento delle diverse grandezze fisiche, è essenziale conoscerne la natura e i metodi di rappresentazione. In fisica esistono due principali categorie di grandezze: le grandezze scalari, caratterizzate da un valore numerico, e le grandezze vettoriali, che necessitano, oltre al valore numerico (intensità), di una direzione e di un verso. Queste ultime sono soggette a specifiche regole di calcolo.]

== Grandezze scalari e grandezze vettoriali

Le grandezze scalari sono quelle che possono essere descritte unicamente con un valore numerico e l'unità di misura corrispondente. Tra gli esempi più comuni si trovano la temperatura e il tempo. Per esempio, si può dire che la durata di un intervallo temporale è di 5 secondi o che la temperatura di una stanza è pari a 20 °C. Il numero che rappresenta la misura di una grandezza scalare viene generalmente definito come modulo o intensità.

Le grandezze vettoriali, invece, richiedono, oltre alla loro intensità, anche una direzione e un verso per essere definite. Queste grandezze vengono rappresentate attraverso figure geometriche chiamate vettori: segmenti orientati contrassegnati da una freccia. La lunghezza del segmento indica il modulo (o intensità), la direzione è definita dalla retta su cui il segmento si colloca, mentre il verso è determinato dalla punta della freccia. Il punto di origine del segmento orientato è noto come origine. Tra gli esempi di grandezze vettoriali si annoverano velocità e forza. 

Per descrivere adeguatamente la velocità di un'automobile, ad esempio, si potrebbe affermare che viaggia a 120 km/h lungo l'autostrada A1 (direzione), in direzione Firenze (verso). Due vettori si definiscono uguali quando hanno lo stesso modulo, direzione e verso. Sono invece opposti se condividono il modulo e la direzione ma hanno verso contrario. 

Nella notazione vettoriale, un vettore viene indicato con una lettera sormontata da una freccia, #math.arrow[A], oppure con una lettera in grassetto, come *A*. Quando si considera esclusivamente l'intensità del vettore, esso viene trattato come una grandezza scalare, utilizzando il corsivo per la notazione, ad esempio _A_, o direttamente il grassetto, secondo le convenzioni adottate in questo contesto. Seguiranno queste modalità nel corso del trattato per uniformare le diciture e facilitare la comprensione.

== Operazioni con i vettori

I vettori possono essere sottoposti alle principali operazioni aritmetiche: somma, differenza e prodotto.

=== Somma di due vettori

L'operazione di somma, detta anche composizione di vettori, prevede che i vettori addendi siano noti come componenti, mentre il risultato dell'operazione viene chiamato risultante.

Quando si sommano due vettori A e B, si possono verificare tre situazioni principali:
+ Direzione e verso uguali: il vettore risultante *A + B* ha la stessa direzione e verso dei vettori componenti. Il modulo della risultante sarà dato dalla somma dei moduli dei vettori addendi.
+ Direzione uguale ma verso opposto: la risultante *R* avrà la stessa direzione dei vettori componenti, un modulo pari alla differenza tra i moduli degli addendi e un verso che coincide con quello del vettore avente modulo maggiore.
+ Verso uguale ma direzione diversa: in questo caso si utilizza la regola del parallelogramma.

Per applicare la regola del parallelogramma è necessario spostare i vettori *A* e *B* parallelamente a se stessi fino a far coincidere le loro origini in un punto comune O. Da qui, si tracciano due rette parallele ai vettori rispettivamente opposti, incrociandole in un punto C e formando un parallelogramma. La risultante *R* sarà definita dalla diagonale del parallelogramma. La sua direzione sarà quella della diagonale, mentre il verso parte da O e si spinge verso C.

A partire da una risultante *R*, è possibile identificare i due vettori *A* e *B* che formano i lati di un parallelogramma di cui *R* è la diagonale, procedimento noto come scomposizione di un vettore nelle sue componenti lungo direzioni specifiche.

La somma tra tre o più vettori può essere eseguita applicando successivamente la regola del parallelogramma. Si sommano due vettori alla volta, ottenendo una serie di risultanti che vengono poi combinate tra loro fino ad ottenere il vettore finale.

=== Differenza tra vettori

Per calcolare la differenza tra due vettori *A* e *B*, si utilizza il concetto di opposizione: la differenza *A - B* equivale alla somma *A + (-B)*, dove *-B* è il vettore opposto di *B*.

=== Prodotto tra un vettore e uno scalare

Il prodotto tra un vettore *A* e uno scalare _a_ genera una risultante *R*. Questo vettore avrà la stessa direzione e lo stesso verso di *A*, mentre l'intensità sarà pari al prodotto tra il modulo di *A* e il valore dello scalare *A*. Oltre a questa forma di moltiplicazione, il calcolo vettoriale include altre operazioni come il prodotto scalare e il prodotto vettoriale, con applicazioni specifiche.

#note(top)[
== *🧩* Prodotto scalare e prodotto vettoriale <senza_numero>

La moltiplicazione applicata al calcolo vettoriale non si riduce unicamente al prodotto fra uno scalare e un vettore. Essa, infatti, contempla anche altre due forme di prodotto, concettualmente più complicate da definire, ma facilmente rappresentabili dal punto di vista grafico, dette prodotto scalare e prodotto vettoriale. In entrambi i casi, i termini dell'operazione sono sempre vettori, ma nel primo prodotto la risultante ha natura scalare, nel secondo vettoriale.

Il prodotto scalare fra due vettori *A* e *B*, indicato come *A·B* (si legge "A scalare B"), viene definito come uno scalare dato dal prodotto fra il modulo di *A* e la proiezione di *B* nella direzione di *A*. Trigonometricamente, viene definito come lo scalare _R_ dato dal prodotto fra il modulo dei due vettori e il coseno dell'angolo compreso tra le direzioni dei due vettori:

$ italic(R) = bold(A dot B) = italic(A B) cos theta.alt_(italic(A B)) $

Il prodotto vettoriale tra due vettori *A* e *B*, indicato come A\u{2227}B (si legge "A vettore B"), viene definito come il vettore *R* avente modulo pari all'area del parallelogramma di cui *A* e *B* sono i lati, direzione perpendicolare al piano del parallelogramma e verso dalla parte della testa di un osservatore che, posto in piedi sul piano che contiene il parallelogramma, vede *A* sovrapporsi a *B* ruotando in senso antiorario. 

Trigonometricamente, il modulo _R_ può anche essere definito come dato dal prodotto fra il modulo dei due vettori e il valore del seno dell'angolo compreso fra le direzioni dei due vettori:

$ italic(R) = italic(A B) = italic(A B) sin theta.alt_(italic(A B)) $
]
#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Scalari: Categoria di grandezze fisiche che vengono definite esclusivamente dal loro valore numerico. Esempi comuni includono la temperatura, il tempo e la massa di un corpo.  

/ Scomposizione: Operazione che rappresenta l'inverso della regola del parallelogramma. Consente di ottenere, partendo da un unico vettore iniziale e da due direzioni prestabilite, i due vettori che, sommati tra loro, danno come risultato finale il vettore originale.  

/ Vettori: Categoria di grandezze fisiche caratterizzate da intensità, direzione e verso. Alcuni esempi di grandezze vettoriali sono la velocità e l'accelerazione di un corpo.





