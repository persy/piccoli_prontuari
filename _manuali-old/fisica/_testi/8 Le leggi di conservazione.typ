#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Per determinare il comportamento di un sistema fisico, di cui si conoscano le condizioni iniziali, quando è sottoposto all'azione di determinate forze, non sempre sono sufficienti le tre leggi della dinamica, che descrivono la variazione delle grandezze fisiche associate al sistema.

Quando le forze che agiscono sul sistema non sono costanti, o agiscono per intervalli di tempo molto brevi, occorre trovare un punto di vista diverso; a questo proposito risultano molto utili in fisica le leggi di conservazione, postulati fondamentali, suffragati da numerose evidenze sperimentali, che stabiliscono che la quantità totale di una certa grandezza fisica rimane costante nel tempo durante lo svolgimento di un processo.

Così, per esempio, l'energia meccanica di un corpo in moto si mantiene costante quando il corpo è sottoposto a forze conservative, quali la forza gravitazionale.

Quando intervengono forze di tipo diverso, come le forze di attrito (dette forze dissipative), parte dell'energia viene persa, ma ricompare sotto forma di calore:

poiché il calore è esso stesso una forma di energia, si può dire che l'energia totale di un sistema si mantiene sempre costante, ma si trasforma passando da una forma all'altra.

Nello studio degli urti risulta molto utile sapere che la quantità di moto totale dei corpi, che per definizione è data dal prodotto della massa dei corpi per la loro velocità, è soggetta a una legge di conservazione che permette di dedurre le traiettorie e le velocità dei corpi che entrano in collisione.]

== Le leggi di conservazione

L'analisi del comportamento di un sistema fisico composto da uno o più corpi sottoposti a forze si basa generalmente sulle leggi della dinamica. L'obiettivo è prevedere, momento per momento, l'evoluzione delle grandezze fisiche che lo descrivono, come massa e velocità.

In certi contesti, se si conoscono con precisione le forze che agiscono sul sistema e le caratteristiche del corpo in questione, il problema risulta relativamente semplice. Ad esempio, è possibile determinare il moto di un corpo di massa nota in caduta libera sotto l'effetto della gravità o il comportamento di una molla soggetta alla forza elastica.

Tuttavia, la maggior parte dei fenomeni naturali presenta maggiore complessità: le forze coinvolte non sono costanti nel tempo o durano per brevi intervalli. In questi casi è indispensabile ricorrere a leggi più generali, capaci di descrivere l'evoluzione delle grandezze fisiche variabili e fornire indicazioni utili sul moto del sistema.

Quando un sistema fisico subisce una trasformazione, ciò comporta usualmente una variazione nelle grandezze fisiche che lo descrivono. Ad esempio, se un corpo inizialmente fermo viene messo in moto da una forza, varia la sua velocità e, di conseguenza, la sua energia cinetica. Analogamente, una sostanza coinvolta in una reazione chimica può subire modifiche nella sua massa.

In tali circostanze, anziché focalizzarsi sulle grandezze variabili che caratterizzano il sistema in esame, è possibile indagare l'esistenza di grandezze che mantengono un valore costante nel tempo.

Una legge di conservazione, o principio di conservazione, rappresenta un fondamento teorico della fisica secondo cui, in un sistema fisico isolato, la quantità complessiva di determinate grandezze (ad esempio, energia, quantità di moto o carica elettrica) rimane inalterata, anche qualora tali grandezze vengano scambiate tra i diversi componenti del sistema.

Questi principi, derivati dall'analisi dei risultati di molteplici esperimenti, consentono ai fisici di formulare previsioni generali sul comportamento di un sistema. Ciò risulta particolarmente utile in contesti complessi, come collisioni tra corpi, scambi di energia o reazioni chimiche, dove non è necessario conoscere nel dettaglio tutte le interazioni coinvolte.

Le leggi di conservazione stabiliscono una relazione diretta tra le grandezze che descrivono lo stato iniziale e quello finale del sistema, fornendo uno strumento essenziale per comprendere i fenomeni fisici. Poiché queste grandezze devono essere globalmente equivalenti prima e dopo l'interazione, è possibile dedurre equazioni che ne vincolano l'evoluzione, predicendo così il comportamento del sistema in seguito alle sue trasformazioni.

== La legge di conservazione dell'energia

L'energia di un sistema, intesa come la sua capacità di compiere lavoro, può manifestarsi in diverse forme e trasformarsi da una all'altra. Nel caso delle forze conservative, quali la forza gravitazionale o quella elastica, il lavoro compiuto da tali forze può essere descritto mediante variazioni dell'energia potenziale e dell'energia cinetica. In questo contesto, dato uno stato iniziale e uno stato finale (ad esempio movimento e quiete), è possibile correlare la variazione di energia del sistema al lavoro svolto dalla forza considerata. È importante notare che tale variazione dipende esclusivamente dalle condizioni iniziali e finali, e non dal percorso seguito tra i due punti.

Diverso è il caso delle forze non conservative, come l'attrito. In queste situazioni, poiché non è definibile un'energia potenziale associata a tali forze, occorre analizzare le variazioni complessive dell'energia del sistema. Questo richiede una conoscenza dettagliata delle trasformazioni intervenute durante la transizione da uno stato all'altro.

Tuttavia, in entrambe le tipologie di forze, è soddisfatta una legge di conservazione. Nel caso specifico dell'energia, essa rimane costante durante il fenomeno in questione. L'analisi risulta particolarmente agevole quando si trattano forze conservative, poiché in tali circostanze a conservarsi è l'energia meccanica. Al contrario, nei sistemi dominati da forze non conservative emerge il bisogno di introdurre il concetto di dissipazione per tenere conto delle perdite energetiche che si verificano nel processo.

=== La conservazione dell'energia meccanica
// TODO
In un sistema soggetto a forze conservative, come ad esempio la forza gravitazionale, l'energia meccanica totale del sistema _E_ è definita come la somma dell'energia cinetica _E#sub[cin]_ e dell'energia potenziale _E#sub[pot]_ del sistema.

$ 
  E = E_"cin" + E_"pot"
$

In generale, l'energia cinetica e l'energia potenziale di un corpo che si muove sotto l'influenza di una forza variano nel tempo in relazione alla velocità e alla posizione del corpo stesso.

Consideriamo il caso specifico di un corpo che cade da una certa altezza iniziale, dotato di energia potenziale. In questa situazione, il lavoro compiuto dalla forza gravitazionale nel condurre il corpo a una quota inferiore corrisponde alla differenza tra i valori dell'energia potenziale del corpo nei due punti considerati. Parallelamente, il lavoro esercitato dalle forze del campo equivale alla variazione dell'energia cinetica acquisita dal corpo durante la caduta.

Se indichiamo con _A_ il punto iniziale e con _A_ il punto finale, il lavoro può essere espresso come:

$ 
  L = E_"pot"_A - E_"pot"_B quad "oppure" quad L = E_"cin"_B - E_"cin"_A
$

Dunque:

$ 
  E_"cin"_B - E_"cin"_A = E_"pot"_A - E_"pot"_B
$

Sommando entrambi i termini di questa relazione, si ottiene:

$ 
  E_"cin"_B + E_"pot"_B = E_"cin"_A + E_"pot"_A 
$

I due membri dell'uguaglianza rappresentano, per definizione, l'energia meccanica del corpo nel punto _B_ e nel punto _A_.

Questo principio può essere esteso a qualsiasi sistema isolato che non sia influenzato da forze non conservative, come ad esempio le forze di attrito. Tale risultato esprime la legge di conservazione dell'energia meccanica, secondo cui l'energia meccanica di un sistema isolato soggetto esclusivamente a forze conservative rimane costante nel corso del moto. Si può dunque scrivere:

$ 
  E = E_"cin" + E_"pot" = "costante"
$

Poiché una quantità costante presenta variazione nulla, la legge di conservazione dell'energia meccanica può essere formulata anche come:

$ 
  Delta E = Delta E_"cin" + Delta E_"pot" = 0
$

Le diverse forme di energia — cinetica e potenziale — possono variare nel tempo. Tuttavia, la loro somma rimane invariata. Le forze conservative prendono il nome proprio dalla loro capacità di preservare l'energia meccanica totale di un sistema.

Le leggi di conservazione trovano ampio utilizzo nell'ambito della fisica; esse costituiscono uno strumento fondamentale per determinare il valore di grandezze incognite all'interno di un problema.

Attraverso la legge di conservazione dell'energia meccanica si può calcolare la velocità con cui un corpo raggiunge il suolo dopo essere stato lasciato cadere da una quota iniziale nota, _h_. 

All'inizio, il corpo possiede energia potenziale, _E#sub[pot] = mgh_, mentre la sua energia cinetica è nulla. Al momento dell'impatto con il suolo, l'energia potenziale si annulla, e quella cinetica diventa _E#sub[cin] = 1/2 mv#super[2]_. Poiché l'energia totale del sistema rimane costante, si ha:

$ 
  m g h = 1/2 m v^2
$

Da questa, è possibile determinare la velocità di caduta tramite questa relazione.

$ 
  v = sqrt(2 g h)
$

=== La conservazione dell'energia totale

Quando un corpo si muove su una superficie o nell'aria, è soggetto anche alle forze di attrito, che oppongono resistenza al moto e svolgono un lavoro dissipativo. Queste forze appartengono alla categoria delle forze non conservative, in cui il lavoro dipende dal cammino percorso e contribuisce alla dissipazione dell'energia.

Per le forze dissipative si applica una più generale legge di conservazione dell'energia, secondo cui la variazione totale di energia meccanica di un corpo corrisponde al lavoro compiuto su di esso dalle forze dissipative. Questa relazione assume la forma: 

$ 
  Delta E = Delta E_"cin" + Delta E_"pot" = L_d
$

_L#sub[d]_ rappresenta il lavoro svolto dalle forze dissipative. Essendo un lavoro resistente, la variazione di energia meccanica è sempre negativa, indicando che tali forze tendono a ridurre l'energia meccanica totale del corpo. 

Nella maggior parte dei casi, specialmente in presenza di attrito, l'energia meccanica persa si trasforma in energia termica, che provoca un aumento della temperatura del sistema in movimento. Ad esempio, consideriamo una sferetta che si muove su un piano inclinato non perfettamente liscio: all'inizio, la sferetta possiede energia potenziale gravitazionale a causa della forza di gravità, che la spinge verso il basso. Durante il movimento, l'energia potenziale viene convertita in energia cinetica. In un sistema isolato privo di attrito, la somma di queste due forme di energia rimarrebbe costante. 

Tuttavia, nel caso presente, il moto della sferetta è ostacolato dall'attrito esercitato dalla superficie del piano inclinato. Questo causa una diminuzione dell'energia meccanica totale rispetto a quella che si avrebbe in assenza di attrito. L'energia persa dal sistema meccanico si trasforma in energia termica, aumentando la temperatura del sistema formato dalla sferetta e dal piano inclinato.

In generale, l'energia di un sistema non viene mai persa del tutto; piuttosto, essa cambia forma passando da una modalità all'altra. La legge di conservazione dell'energia può essere estesa ai fenomeni termici grazie al primo principio della termodinamica.

Quando ci si sposta a fenomeni fisici a livello atomico o subatomico, le leggi della meccanica classica non sono più applicabili. Tuttavia, la legge di conservazione dell'energia rimane valida e assume un carattere ancora più generale, includendo le trasformazioni tra energia e materia previste dalla teoria della relatività.

In questo contesto, si introduce l'energia termica prodotta dalle forze dissipative (_Q_) e il contributo dovuto alla trasformazione della massa in energia, espresso come _m#sub[0]c#super[2]_ (dove _m#sub[0]_ rappresenta la massa a riposo del corpo e _c_ = 3·10#super[8] m/s è la velocità della luce nel vuoto). La forma più generale della legge di conservazione dell'energia risulta quindi:

$ 
  Delta E + Q + m_0 c^2 = 0
$

== La legge di conservazione della quantità di moto

Per descrivere il movimento di un corpo, le grandezze cinematiche come velocità e accelerazione spesso non sono sufficienti.

Un esempio emblematico è l'urto tra una sferetta in movimento e una ferma: la velocità trasmessa alla sferetta inizialmente immobile dipende non solo dalla velocità della sferetta in moto, ma anche dalle masse dei corpi coinvolti. Una sferetta con una massa ridotta acquisisce una velocità maggiore rispetto a una di massa più grande in seguito all'urto.

Per considerare l'influenza della massa sul moto di un corpo, la fisica introduce una nuova grandezza vettoriale, la quantità di moto, indicata con la lettera *p*. Questa si definisce come il prodotto tra la velocità *v* del corpo in moto e la sua massa _m_. La direzione e il verso della quantità di moto sono gli stessi della velocità del corpo.

$ 
  bold(p) = m bold(v)
$

La seconda legge della dinamica ($bold(F) = m bold(a)$) stabilisce che, quando un corpo è sottoposto a una forza esterna, si verifica una variazione della sua velocità e, di conseguenza, della quantità di moto. 

Questa legge può essere espressa anche in termini di variazioni di quantità di moto. Tuttavia, tale formulazione è valida solo nel caso in cui la massa del corpo rimanga costante durante il processo. Se si studia ad esempio un missile, che perde grandi quantità di combustibile durante il lancio, o qualsiasi corpo la cui massa vari sotto l'azione di una forza, sarà necessario ricorrere a una diversa espressione della legge.

Poiché l'accelerazione rappresenta per definizione la variazione della velocità nel tempo, la seconda legge può essere scritta nel modo seguente: 

$ 
  bold(F) = m ((Delta bold(v))/(Delta t)) = (Delta (m bold(v)))/(Delta t) = (Delta bold(p))/(Delta t)
$

ciò implica che la forza agente su un corpo è equivalente alla variazione della sua quantità di moto nel tempo.

Nel caso in cui un corpo non sia soggetto ad alcuna forza esterna (ossia *F* = 0) o subisca forze tali da avere risultante nulla, la seconda legge della dinamica formulata in termini di quantità di moto diventa la legge di conservazione della quantità di moto. Essa afferma che la quantità di moto di un corpo sottoposto a forze con risultante nulla rimane invariata nel tempo.

Analogamente, considerando un sistema composto da più corpi, si può definire la quantità di moto totale come la somma delle quantità di moto di ciascun corpo. In tal caso, se il sistema è soggetto esclusivamente a forze con risultante nulla, la quantità di moto totale del sistema resta costante.

Infine, si introduce il concetto di impulso *I*, definito come il prodotto della forza *F* applicata a un corpo per l'intervallo di tempo _Δt_ durante il quale essa agisce. 

$ 
  bold(I) = bold(F) Delta t
$

In base a questa definizione, la seconda legge della dinamica assume una forma ulteriore che stabilisce che l'impulso di una forza applicata a un corpo equivale alla sua variazione di quantità di moto:

$ 
  bold(I) = Delta bold(p)
$

La legge di conservazione della quantità di moto trova ampio utilizzo nello studio degli urti tra corpi, rivelandosi uno strumento essenziale per comprenderne le dinamiche.

=== Quantità di moto e urti

La quantità di moto è un concetto fondamentale nello studio degli urti che coinvolgono due o più corpi. Questi fenomeni si verificano quando i corpi interagiscono a distanze ravvicinatissime e in tempi estremamente brevi. 

In situazioni simili, le forze in gioco, chiamate forze impulsive, agiscono per frazioni di tempo molto ridotte, provocando variazioni improvvise nella direzione e nella velocità dei corpi coinvolti nell'urto.

Come esempio, esaminiamo il caso più semplice di urto: quello tra due sferette in movimento, denominate A e B. Durante l'urto, la sferetta _A_ subisce un impulso dato dal prodotto tra la forza esercitata da _B_ (indicato con *F#sub[B]*) e l'intervallo di tempo _∆t_ dell'urto. Questo impulso corrisponde esattamente alla variazione della quantità di moto della sferetta _A_. 

$ 
  bold(F)_B Delta t = Delta bold(p)_B
$

Analogamente, la sferetta _B_ sperimenta un impulso dovuto alla forza *F#sub[A]* esercitata da _A_, equivalente alla variazione della quantità di moto di _B_.

$ 
  bold(F)_A Delta t = Delta bold(p)_A
$

Secondo la terza legge della dinamica, la forza che la sferetta _A_ esercita su _B_ è uguale e contraria alla forza che _B_ esercita su _A_. Ne deriva che:

$ 
  bold(F)_B  = - bold(F)_A
$

e quindi:

$ 
  (Delta bold(p)_B)/(Delta t) = - (Delta bold(p)_A)/(Delta t)
$

che si può scrivere anche come:

$ 
  (Delta (bold(p)_A + bold(p)_b))/(Delta t) = 0
$

La relazione tra le quantità di moto delle due sferette porta alla formulazione della legge di conservazione della quantità di moto: nel sistema costituito dalle due sferette, la variazione temporale della quantità di moto totale è nulla. Questo implica che la quantità di moto totale del sistema resta invariata durante l'urto.

$
  bold(p)_A + bold(p)_B = "costante"
$

L'effetto della collisione è quindi una redistribuzione interna della quantità di moto tra le due sferette, pur mantenendo costante il valore complessivo. Ciò significa che la quantità di moto di ciascuna sferetta può variare in intensità, direzione e verso, ma la somma totale delle quantità di moto delle due non subisce cambiamenti.

Questa analisi presuppone che sul sistema non agiscano forze esterne non equilibrate. Le uniche forze che influenzano il movimento delle sferette sono quelle derivanti dalla loro interazione reciproca. Pertanto, il sistema può essere considerato isolato.

La legge di conservazione della quantità di moto può essere così estesa al caso generale: in un sistema isolato, la quantità di moto totale si conserva ed è costante nel tempo. 

Questa legge vale indipendentemente dal numero di corpi in interazione o dalle loro dimensioni. Inoltre, analogamente alla legge di conservazione dell'energia, trova applicazione anche in ambiti in cui la meccanica classica non è più valida, come nei sistemi atomici. È particolarmente utile nello studio delle collisioni tra particelle elementari, poiché permette di ottenere informazioni preziose (ad esempio sulle masse), difficilmente misurabili in modo diretto.

=== Urti elastici e urti anelastici

Quando si analizzano gli urti tra corpi, questi possono essere classificati principalmente in due categorie: urti elastici e urti anelastici.

Nel caso di urti elastici, oltre alla conservazione della quantità di moto totale, si conserva anche l'energia cinetica totale del sistema, ovvero la somma delle energie cinetiche dei corpi che lo compongono.

In questo tipo di urti si può verificare una deformazione temporanea dei corpi coinvolti nella collisione.

Le leggi di conservazione applicate agli urti elastici servono a prevedere il comportamento del sistema dopo l'impatto, permettendo di calcolare velocità e traiettorie dei corpi. Un esempio tipico di urto elastico è quello tra due palle da biliardo, poiché sono generalmente realizzate con materiali rigidi e non deformabili.

Negli urti anelastici, invece, parte dell'energia cinetica viene impiegata per causare una deformazione permanente (anche solo parziale) di almeno uno dei corpi coinvolti nella collisione.

Un esempio di urto anelastico è quello che si verifica quando una freccia colpisce un bersaglio, il quale viene trafitto e deformato.

Si parla di urto parzialmente anelastico quando solo una parte dell'energia cinetica viene dissipata sotto forma di calore o utilizzata per compiere lavoro. Per esempio, quando un sasso colpisce una vetrata, una porzione della sua energia cinetica viene consumata per rompere il vetro; tuttavia, il sasso conserva una frazione della sua energia e prosegue il suo percorso.

Va sottolineato che anche negli urti anelastici si applica la legge di conservazione della quantità di moto. Negli urti elastici, invece, sono valide entrambe le leggi di conservazione: quella della quantità di moto e quella dell'energia cinetica.

#figure(
  caption: [Caratteristiche degli urti elastici e anelastici.],
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
  align: left + horizon,
  columns: (4),
  table.header[Tipo di urto][Deformazione][Cosa viene conservato][Esempio],
  [Elastico], [nulla o temporanea], [quantità di moto e energia],[Due sferette rigide di massa m#sub[1] e m#sub[2] e velocità v#sub[1] e v#sub[2] che collidono frontalmente. Dopo l'urto ripartono con velocità v'#sub[1] e v'#sub[2]. \ \ $m_1v_1 + m_2v_2 = m_1v'_1 + m_2v'_2 \ 1/2 m_1v^2_1 + 1/2 m_2v^2_2 = 1/2 m_1v'^2_1 + 1/2 m_2v'^2_2$],
  [Anelastico], [permanente], [quantità di moto],
  [Una sferetta rigida di massa _m_ e velocità _v_ che penetra un blocco di massa _M_. Dopo l'urto i due ripartono solidali con velocità _v'_. \ \ $m v = (m + M) v'$ ],
)  
)

== Esplosione e propulsione

Un'applicazione particolarmente interessante della legge di conservazione della quantità di moto riguarda i motori a propulsione, come quelli dei razzi.

Per comprendere il funzionamento di questi sistemi, si può partire dal fenomeno del rinculo che segue un'esplosione. Pensiamo, ad esempio, a un fucile che spara un proiettile: il rinculo, ovvero il movimento all'indietro del fucile dopo lo sparo, è una diretta conseguenza della legge di conservazione della quantità di moto.

Nel sistema formato da fucile e proiettile, la quantità di moto deve restare invariata prima e dopo lo sparo. Prima dell'esplosione, sia il fucile che il proiettile sono immobili, e la quantità di moto totale del sistema è pari a zero. Dopo lo sparo, però, il proiettile viene lanciato in avanti con una certa velocità, acquisendo una quantità di moto positiva. Allo stesso tempo, il fucile deve acquisire una quantità di moto uguale ma con direzione opposta, provocando il rinculo.

Considerando che la massa del fucile è significativamente maggiore rispetto a quella del proiettile, la velocità del rinculo del fucile risulta sensibilmente inferiore rispetto a quella del proiettile.

I motori a propulsione funzionano sulla base dello stesso principio. Nel motore di un razzo avviene la combustione del carburante, che viene espulso ad alta velocità da un'estremità. Questo processo spinge il razzo nella direzione opposta rispetto all'uscita dei gas combusti.

Se il razzo è fissato su un mezzo mobile dotato di ruote, continuerà a muoversi finché la combustione del carburante rimane attiva.
#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Forze dissipative: Le forze dissipative sono caratterizzate dal fatto che il lavoro da esse svolto dipende dal percorso effettuato, a differenza delle forze conservative, per le quali il lavoro dipende esclusivamente dai punti iniziale e finale del percorso, indipendentemente dalla traiettoria percorsa.  

/ Impulso: Grandezza fisica che quantifica l'effetto dell'azione di una forza su un sistema fisico durante un intervallo di tempo. È determinato dal prodotto tra la forza applicata e il tempo di applicazione.  

/ Legge di conservazione dell'energia meccanica: La legge afferma che l'energia meccanica di un sistema isolato, soggetto esclusivamente a forze conservative, rimane costante durante il moto. Tuttavia, questa legge può essere estesa a tutte le tipologie di forze. In tal caso, si enuncia affermando che la variazione dell'energia meccanica totale di un corpo equivale al lavoro compiuto su di esso dalle forze dissipative.  

/ Legge di conservazione della quantità di moto: Secondo questa legge, la quantità di moto di un corpo o di un sistema di corpi rimane costante nel tempo quando la risultante delle forze che agiscono su di esso è nulla.  

/ Leggi di conservazione: Le leggi di conservazione sono principi fondamentali della fisica che definiscono l'invariabilità di determinate grandezze o proprietà di un sistema fisico durante il moto o nel corso di trasformazioni, reazioni e processi dove interviene l'energia.  

/ Quantità di moto: Grandezza vettoriale definita come il prodotto tra la massa di un corpo e la sua velocità. Per un sistema composto da più corpi, la quantità di moto totale è ottenuta sommando le quantità di moto di ciascun elemento del sistema.  

/ Urto: Interazione tra due corpi in movimento relativo che avviene in tempi estremamente brevi, determinando variazioni nella velocità e nella direzione dei corpi coinvolti.  