#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Il concetto di campo di forze trova ampio utilizzo in fisica, specialmente quando si è chiamati a descrivere fenomeni in cui una forza agisce a distanza. Un esempio significativo è offerto dalla forza esercitata da una carica elettrica su un'altra. Tuttavia, risulta meno intuitivo comprendere come tale forza persista o si modifichi nel caso in cui una delle due cariche venga rimossa.

Per spiegare questo fenomeno, si introduce la nozione di campo elettrico, che si configura come una regione dello spazio attorno alla carica, la quale risente della forza elettrica generata. Analogamente al campo gravitazionale, il campo elettrico è un campo di forze conservativo. Tale proprietà permette di definire e utilizzare il potenziale elettrico, ovvero una grandezza che quantifica la differenza di lavoro necessario per spostare una carica all'interno del campo tra due punti distinti.]

== Il concetto di campo elettrico

Il campo elettrico si identifica con quella regione dello spazio in cui le forze elettriche interagiscono con cariche eventualmente presenti. Esattamente come nel caso del campo gravitazionale, una carica elettrica (o una distribuzione di cariche) genera attorno a sé un campo elettrico, alterando le caratteristiche dello spazio circostante. Questa perturbazione implica che qualsiasi altra carica introdotta in quel medesimo spazio venga sottoposta a una forza elettrica.

Dal punto di vista matematico e fisico, il campo elettrico rappresenta un campo vettoriale: esso è determinato da una quantità direzionale, la forza elettrica, che agisce in modo conservativo. In altre parole, il lavoro richiesto per spostare una carica da un punto iniziale a uno finale dipende esclusivamente dai due punti considerati e non dal percorso seguito.

=== Il vettore campo elettrico

Per verificare l'esistenza del campo elettrico generato da una carica _Q_, si considera una carica di prova _q_, caratterizzata da un'intensità molto ridotta, posta nella regione di spazio all'interno della quale opera _Q_. È fondamentale sottolineare che il campo generato da _Q_ esiste in maniera indipendente dalla presenza della carica di prova _q_.

La forza esercitata da _Q_ su _q_, divisa per il valore di _q_, risulta indipendente dalla stessa carica di prova. Questa grandezza viene formalmente definita come vettore campo elettrico e indicata con *E*. 

$ 
  bold(E) = bold(F)/q
$

Per convenzione, il vettore campo elettrico rappresenta la forza che agirebbe su una carica unitaria; nel Sistema Internazionale essa viene espressa in newton per coulomb (N/C). Sulla base della legge di Coulomb, l'intensità della forza è determinata dalla relazione:  

$ 
  F = k space (Q space q)/d^2
$

Sostituendo _F_ nella definizione del campo elettrico, si ottiene:  

$ 
  E = F/q = k space Q/d^2
$

dove _d_ rappresenta la distanza tra la carica _Q_ e il punto ove viene misurato il campo (considerando la presenza della carica di prova). Di conseguenza, l'intensità del campo elettrico dipende esclusivamente dalla distanza rispetto alla sorgente _Q_: aumentando tale distanza, la forza del campo diminuisce proporzionalmente.

=== Le linee di forza

Il campo elettrico può essere rappresentato graficamente mediante l'impiego delle linee di forza, ciascuna delle quali corrisponde alla traiettoria che verrebbe seguita da una carica elettrica introdotta in un punto dello spazio. È importante sottolineare che la carica utilizzata per questo scopo deve essere sufficientemente piccola da non perturbare in modo significativo il campo preesistente.

In ogni punto di una linea di forza, l'intensità del campo è descritta da un vettore tangente alla linea stessa. Le linee possiedono un orientamento specifico: il loro verso si estende dalla carica positiva (o dai corpi positivi) verso la carica negativa (o i corpi negativi).

Tale rappresentazione mediante linee di forza costituisce una prassi consolidata nella fisica per visualizzare i campi vettoriali. Va comunque evidenziato che esse non corrispondono a un fenomeno fisico realmente esistente; piuttosto, esse rappresentano un'utile astrazione ideata per descrivere la variazione del campo nello spazio, fornendo indicazioni sulla sua direzione e verso.

== Il potenziale elettrico

Come già accennato, il campo elettrico è un campo conservativo: ciò significa che il lavoro necessario per spostare una carica da un punto a un altro all'interno del campo dipende esclusivamente dai punti di partenza e arrivo, indipendentemente dal percorso seguito.

Ad esempio, se volessimo avvicinare una carica positiva _+q_ a una distanza _d_ da una carica positiva _+Q_, che consideriamo la sorgente del campo elettrico, sarebbe necessario compiere un lavoro per vincere le forze del campo che tendono a respingere le due cariche. In questo caso, il lavoro svolto sarebbe negativo, poiché verrebbe "fornito" dall'esterno rispetto al sistema di cariche.

Se invece si volesse avvicinare una carica negativa _--q_ sempre a distanza _d_ dalla carica _+Q_, basterebbe assecondare le forze attrattive tra le due cariche, svolgendo così un lavoro positivo. In entrambi i casi, il lavoro richiesto non dipenderebbe dal percorso scelto per portare la carica ±q alla distanza d dalla sorgente _+Q_.

È dimostrabile, inoltre, che se si facesse compiere a una carica positiva un percorso chiuso all'interno del campo elettrico generato da _+Q_, il lavoro totale sarebbe nullo. Infatti, il lavoro positivo necessario per avvicinare la carica a +Q equivarrebbe e sarebbe opposto al lavoro negativo (prodotto dal sistema di cariche) richiesto per allontanarla nuovamente. La somma dei due lavori risulterebbe quindi zero. Lo stesso principio vale anche per una carica negativa _--q_. Per questa ragione si afferma che la circuitazione in un campo conservativo è nulla. 

Il potenziale elettrico, indicato con _V_, è definito come il lavoro necessario per portare una carica unitaria da un punto qualsiasi del campo elettrico fino all'infinito, cioè un punto infinitamente lontano e situato al di fuori del campo. Il potenziale elettrico varia nei diversi punti dello spazio all'interno del campo: ogni punto ha un potenziale caratteristico.

Il lavoro necessario per spostare una carica unitaria da un punto _A_ (caratterizzato dal potenziale _V#sub[A]_) a un punto _B_ (potenziale _V#sub[B]_), entrambi nel campo elettrico, è determinato dalla differenza di potenziale (_Δ_) tra i due punti. 

$ 
  L = V_A - V_B
$

Questo lavoro, come ricordato in precedenza, è indipendente dal percorso scelto e dipende esclusivamente dalla posizione relativa tra _A_ e _B_.

L'unità di misura del potenziale elettrico è il volt (simbolo V), dove 1 V corrisponde a 1 joule diviso per 1 coulomb (1 J/1 C). Pertanto, tra due punti di un campo elettrico vi è una differenza di potenziale pari a 1 volt se il campo compie un lavoro di 1 joule nel trasferire una carica di 1 coulomb da un punto all'altro.

Se la carica spostata non è unitaria ma ha valore generico q, il lavoro necessario per spostarla da A a B è dato dal prodotto tra la differenza di potenziale _Δ_ e il valore della carica. 

$ 
  L = q space (V_A -V_B)
$

Questo ci permette anche di affermare che se il potenziale nei punti _A_ e _B_ è uguale, il lavoro richiesto per trasferire una carica da _A_ a _B_ sarà nullo. Le superfici in un campo elettrico in cui il potenziale rimane costante prendono il nome di superfici equipotenziali. Spostare una carica lungo queste superfici non richiede alcun lavoro.

In un campo elettrico generato da una carica puntiforme, le superfici equipotenziali assumono la forma di sfere concentriche aventi come centro la carica stessa. Al contrario, nel caso di un campo elettrico generato da una carica distribuita su una superficie piana, le superfici equipotenziali si configurano come piani paralleli alla distribuzione della carica.

Quando tra due punti si rileva una differenza di potenziale, ciò implica che è necessario compiere lavoro per spostare una carica all'interno del campo elettrico. Questo fenomeno evidenzia la presenza di un gradiente elettrico, comunemente denominato tensione elettrica.

=== Relazione tra campo elettrico e potenziale

La relazione tra campo elettrico e potenziale può essere dedotta in presenza di un campo uniforme, ovvero un campo caratterizzato da intensità, direzione e verso costanti. 

Ricorrendo alla relazione tra forza e lavoro, secondo cui il lavoro è definito dal prodotto tra forza e spostamento, è possibile esprimere il lavoro elettrico in termini di spostamento (_s_), forza elettrica (_F_) e lavoro (_L_).

$ 
  L = F s
$

Poiché: 
$ 
  F = q E
$

dove _E_ è il campo elettrico _E_, si può determinare:

$ 
  L = q E s
$

Dalla definizione di differenza di potenziale _Δ_, 

$ 
  Delta V = L / q = ( q E s)/q = E s
$

la natura del legame tra differenza di potenziale e campo elettrico si può esplicitare così:

$ 
  E = (Delta V)/s
$ 

Tale equazione dimostra che, in presenza di un campo elettrico uniforme, conoscendo la differenza di potenziale tra due punti, si può determinare l'intensità del campo. Inoltre, la direzione e il verso del campo elettrico sono orientati dai punti a potenziale più elevato verso quelli a potenziale inferiore.

Per quanto concerne la distribuzione delle cariche in un conduttore isolato carico, queste tendono a disporsi sulla superficie esterna in modo tale da rendere il campo elettrico interno nullo. Questo equilibrio si traduce in un potenziale uniforme su tutti i punti del conduttore. Analogamente, se vengono messi a contatto due conduttori − ad esempio, due sfere cariche − le cariche su ciascuna superficie si redistribuiranno fino a raggiungere uno stato uniforme, garantendo lo stesso potenziale per entrambi i conduttori.

Nel caso in cui le due sfere inizialmente abbiano quantità di carica differenti, la redistribuzione avviene attraverso il flusso delle cariche dalla sfera con carica maggiore verso quella con carica minore, fino a raggiungere il medesimo potenziale. Questo principio consente di chiarire il concetto di "messa a terra". 

La Terra può essere vista come una grande sfera conduttrice. Grazie alle sue dimensioni considerevoli, la forza repulsiva tra le cariche presenti sulla sua superficie risulta relativamente modesta, così come il suo potenziale rimane basso. Quando un conduttore carico viene collegato alla Terra, le sue cariche fluiscono verso questa ultima senza provocare variazioni significative del suo potenziale. Il processo di "messa a terra" consiste dunque nella dissipazione delle cariche in eccesso presenti su un conduttore al fine di portarlo al potenziale della Terra.

== Immagazzinamento delle cariche elettriche

Durante la seconda metà del XVIII secolo, nel corso dei primi studi sull'elettricità, alcuni scienziati iniziarono a interrogarsi sulla possibilità di accumulare una certa quantità di carica elettrica in un conduttore, evitando che questa si disperdesse. 

Il primo dispositivo ideato a tale scopo fu la bottiglia di Leida, così chiamata in onore della città olandese dove il fisico Pieter van Musschenbroek la realizzò nel 1745. La bottiglia di Leida era composta da un recipiente di vetro rivestito internamente ed esternamente con fogli di carta stagnola caricati elettricamente. Dal tappo, che fungeva da isolante, fuoriusciva una catenella di materiale conduttore collegata al rivestimento interno della bottiglia. Toccare questa catenella provocava una forte scossa elettrica, dimostrando che lo strumento funzionava come accumulatore di cariche elettriche.

La bottiglia di Leida è considerata il primo esempio pratico di condensatore, un dispositivo estremamente semplice ma efficiente per immagazzinare cariche elettriche.

=== Il condensatore

Il condensatore è un dispositivo progettato per accumulare quantità significative di carica elettrica. Generalmente è costituito da due conduttori denominati armature, caricati con intensità uguali ma segni opposti, separati tra loro da uno strato isolante.

Un esempio basilare è il condensatore piano, formato da due lamine metalliche distanziate e separate da un isolante (anche l'aria secca può fungere da ottimo isolante). Se una delle lamine viene caricata positivamente con una carica _+Q_ e l'altra viene messa a terra, quest'ultima si caricherà per induzione con una carica opposta _-Q_. Tra le due lamine si genera una differenza di potenziale _V_ legata all'intensità della carica: raddoppiando la carica si raddoppierà il lavoro necessario per spostare una carica da un'armatura all'altra e proporzionalmente aumenterà la differenza di potenziale. Analogamente, triplicando la carica si triplica anche la differenza di potenziale. Tuttavia, il rapporto tra la carica del condensatore e la differenza di potenziale tra le armature rimane costante.

$ 
  C = Q/(Delta V)
$

Questo rapporto definisce la capacità elettrica del condensatore, la cui unità di misura è il farad (F). Un farad corrisponde alla capacità di un condensatore che manifesta una differenza di potenziale di 1 volt quando accumula una carica di 1 coulomb. 

$ 
  1 "F" = "1 C"/"1 V"
$

Poiché il farad è un'unità molto grande, i condensatori comuni hanno capacità misurate in microfarad (1 µF = 10#super[-6] F) o picofarad (1 pF = 10#super[-12] F).

Nel caso specifico del condensatore piano, la capacità dipende dalla formula: 

$ 
  C ) epsilon space S/d
$

dove _ε_ rappresenta la costante dielettrica del materiale isolante tra le armature, S indica la superficie delle armature e d la distanza fra loro. Pertanto, la capacità dei condensatori piani è influenzata esclusivamente dalle dimensioni delle armature, dalla distanza e dal tipo di materiale isolante utilizzato. Riducendo la distanza tra le armature o aumentando la loro superficie si ottiene una capacità maggiore, migliorando così l'efficienza nell'accumulo di cariche elettriche.

Un condensatore ampiamente utilizzato nei circuiti elettrici è quello cilindrico. Questo modello consiste in due sottili strisce di materiale conduttore (ad esempio stagno o alluminio) intervallate da uno strato di materiale isolante come carta paraffinata o plastica. Il condensatore cilindrico è particolarmente apprezzato per le sue elevate capacità ed il design compatto, che lo rende ideale per numerose applicazioni in ambito tecnologico.
#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Bottiglia di Leida: Dispositivo pionieristico, creato nel 1745, utilizzato per accumulare cariche elettriche. È costituito da una bottiglia di vetro rivestita sia all'interno sia all'esterno con un foglio di carta stagnola caricato elettricamente.

/ Campo elettrico: Spazio di forze generato da una carica elettrica o da una distribuzione di cariche. La direzione del campo elettrico viene rappresentata graficamente attraverso le sue linee di forza.

/ Capacità elettrica: Rapporto costante tra la carica elettrica e la relativa differenza di potenziale di un condensatore. L'unità di misura è il farad.

/ Condensatore: Sistema composto da due conduttori separati da un materiale isolante, progettato per accumulare cariche elettriche.

/ Farad: Unità di misura della capacità elettrica. Un farad corrisponde alla capacità di un condensatore in cui la differenza di potenziale di 1 V è generata quando una carica di 1 C è presente su un'armatura.

/ Potenziale elettrico: Rappresenta il lavoro necessario per spostare una carica unitaria dall'infinito a un determinato punto all'interno di un campo elettrico contro le forze del campo stesso. La differenza di potenziale tra due punti equivale al lavoro necessario per spostare una carica unitaria da uno dei due punti all'altro. Si misura in volt.

/ Volt: Unità di misura del potenziale elettrico, equiparabile alla differenza di potenziale esistente tra due punti di un conduttore, in cui il campo elettrico svolge un lavoro di 1 J per spostare una carica di 1 C tra i due punti.





