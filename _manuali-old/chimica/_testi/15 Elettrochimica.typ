#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[L'elettrochimica rappresenta l'applicazione pratica dei principi della termodinamica, utilizzati per convertire l'energia liberata dalle reazioni chimiche spontanee in lavoro utile, specificamente lavoro elettrico. Le pile, altrimenti note come celle galvaniche, sfruttano tali reazioni di ossidoriduzione spontanee mediante il trasferimento di elettroni attraverso un circuito elettrico esterno che connette due elettrodi. Al contrario, il processo di elettrolisi consente di promuovere reazioni di ossidoriduzione non spontanee attraverso l'immissione di energia elettrica nel sistema.]

== Reazioni di ossidoriduzione ed elettrochimica

L'ambito di studio dell'elettrochimica si concentra sui processi attraverso i quali l'energia chimica viene trasformata in energia elettrica e viceversa. Tali conversioni si basano sulle reazioni di ossidoriduzione o redox, così denominate perché implicano, simultaneamente, un'ossidazione — durante la quale una specie chimica perde elettroni — e una riduzione — nel corso della quale un'altra specie acquista elettroni. In queste reazioni, si verifica dunque un trasferimento di elettroni tra le specie reagenti.

Le reazioni redox possono essere classificate in base alla spontaneità: quelle spontanee sono accompagnate dal rilascio di energia sotto forma di calore, mentre quelle non spontanee richiedono l'apporto di energia esterna per potersi verificare. Attraverso dispositivi specifici, come le pile elettriche o celle elettrochimiche (anche dette celle galvaniche in onore di Luigi Galvani, 1737-1798), è possibile convertire l'energia chimica ceduta durante tali processi in energia elettrica recuperabile.

Un esempio significativo è fornito dall'immersione di una lamina metallica di zinco (Zn) in una soluzione acquosa contenente solfato rameico (CuSO#sub[4]). In questo sistema si verifica l'ossidazione dello zinco metallico a ioni Zn2+ e la concomitante riduzione degli ioni Cu#super[2+] a rame metallico (Cu)#footnote[La reazione è in forma ionica.]:

$ 
  "Zn" + "Cu"^(2+) -> "Cu" + "Zn"^(2+) + "calore"
$

Si verifica il trasferimento di elettroni dallo zinco agli ioni rame (Cu#super[2+]), con la conseguente formazione di un deposito di rame metallico sulla superficie dello zinco. Parallelamente, lo zinco si dissolve passando in soluzione sotto forma di ioni zinco (Zn#super[2+]). Quando questa reazione viene realizzata all'interno di una pila elettrica, il trasferimento di elettroni dal metallo zincato agli ioni rame avviene tramite un conduttore esterno. In tale configurazione, il flusso di elettroni attraverso il conduttore permette la produzione di energia elettrica, che può essere impiegata per compiere lavoro.

Le reazioni redox non spontanee possono invece essere indotte mediante la somministrazione di energia elettrica al sistema, in un processo noto come elettrolisi, realizzato in specifici dispositivi chiamati celle elettrolitiche. Un esempio comune è rappresentato dalla decomposizione dell'acqua nei suoi elementi fondamentali:

$ 
  2H_2O -> 2 H_2 + O_2
$

Questa decomposizione è ottenuta tramite elettrolisi, grazie all'impiego di soluzioni adeguate. In entrambe le configurazioni, sia nella pila sia nella cella elettrolitica, viene favorito il passaggio di corrente elettrica attraverso un elettrolita presente in soluzione o allo stato fuso.

#note(bottom)[== *🧩* Elettrolisi dell'acqua <senza_numero>

L'elettrolisi dell'acqua pura non è direttamente fattibile poiché la scarsa dissociazione di molecole rende impossibile il passaggio di corrente. Per ovviare a questo limite, si aggiungono piccole quantità di acido solforico (H#sub[2]SO#sub[4]) per renderla conduttrice. Il processo elettrolitico viene realizzato mediante un apparecchio chiamato voltametro. Nella soluzione in esame si trovano le specie H#sub[3]O⁺, OH⁻, H#sub[2]O e SO#sub[4]²⁻. Tuttavia, in questo caso l'ordine di scarica degli ioni non viene rispettato a causa delle basse concentrazioni ioniche presenti. Di conseguenza, agli elettrodi avvengono specifiche reazioni chimiche che possono essere descritte attraverso formule. Gli ioni migrano dando luogo al fenomeno di neutralizzazione.]

== Trasformazione di energia chimica in energia elettrica. Potenziale d'elettrodo

Quando un metallo (Me) viene immerso in una soluzione contenente un suo sale, e quindi i suoi corrispondenti ioni positivi, esso manifesta una propria naturale tendenza a dissolversi nella soluzione trasformandosi in ioni positivi (Me#super[n+]):

$ 
  "Me" -> "Me"^(n+)_(("aq.")) + "ne"^-
$

dove gli elettroni ne#super[--] rimangono sul metallo, caricandolo negativamente, mentre gli ioni Me#super[n+] passano in soluzione e la rendono carica positivamente. Nel caso in cui predomini la propensione degli ioni Me#super[n+] presenti in soluzione a depositarsi sul metallo sotto forma atomica:

$ 
  "Me"^(n+) + "ne"^- -> "Me"
$

Durante questo processo, il metallo cede elettroni e acquisisce una carica positiva, mentre la soluzione acquista una carica negativa. L'intero sistema, costituito dal metallo e dalla soluzione, prende il nome di elettrodo o semielemento, rappresentando un componente fondamentale della semipila.

All'interfaccia tra il metallo e la soluzione si stabilisce un equilibrio chimico:

$ 
  "Me"^(n+) + "ne"^- arrows.rl "Me"
$

La posizione dell'equilibrio dipende sia dalla concentrazione degli ioni nella soluzione sia dalle proprietà specifiche del metallo coinvolto. A seguito di questo equilibrio si genera una differenza di potenziale elettrico denominata potenziale d'elettrodo. 

L'entità e la direzione di questa differenza di potenziale variano in funzione del livello di spostamento dell'equilibrio verso sinistra o destra. Se l'equilibrio è più marcato verso destra, il potenziale d'elettrodo assumerà un segno opposto rispetto allo spostamento verso sinistra.

=== Pila elettrica

Nel caso in cui due metalli differenti, che fungono da elettrodi, vengano collegati mediante un conduttore esterno e immersi nelle rispettive soluzioni di sali, si forma un sistema noto come pila elettrica composto da due semipile. In queste condizioni, si genera un flusso di elettroni (ossia una corrente continua) che si muove dall'elettrodo con potenziale più negativo, l'anodo, verso quello con potenziale meno negativo, il catodo. Questo processo consente la produzione di lavoro, definito come lavoro elettrico. L'anodo è il sito dove avviene l'ossidazione, mentre il catodo è sede della riduzione.

Un esempio emblematico di tale sistema è rappresentato dalla pila Daniell, realizzata nel 1820 dal chimico e fisico britannico John Frederic Daniell (1790-1845). Tale pila, tra le più semplici e conosciute, consiste in due semipile. La prima è costituita da una lamina di zinco (Zn) immersa in una soluzione contenente ioni Zn#super[2+] (ZnSO#sub[4]), mentre la seconda presenta una lamina di rame (Cu) immersa in una soluzione contenente ioni Cu#super[2+] (CuSO#sub[4]). La configurazione simbolica della pila può essere rappresentata così:

$ 
  \u{2296} "Zn"\/"Zn"^(2+)\/\/"Cu"^(2+)\/"Cu" \u{2295}
$

La differenza di potenziale tra i due elettrodi in condizioni di assenza di corrente viene quantificata mediante la forza elettromotrice (f.e.m.), misurata in volt (V), la quale costituisce un'indicatore fondamentale per caratterizzare la pila.

$ 
  "f.e.m. (V) = potenziale \u{2295} - potenziale \u{2296}"
$

Il movimento degli elettroni attraverso il conduttore esterno, che collega gli elettrodi, procede dall'elettrodo di zinco, caratterizzato da un potenziale maggiormente elettronegativo, verso l'elettrodo di rame, avente potenziale superiore. Questo trasferimento altera i potenziali d'equilibrio dei due elettrodi. Per ristabilire tale equilibrio, lo zinco compensa la perdita di elettroni liberando ulteriori ioni Zn#super[2+] nella soluzione mediante ossidazione (semireazione 1), mentre gli ioni Cu#super[2+] sottraggono elettroni alla superficie del rame, riducendosi (semireazione 2).

$ 
  "Zn" arrows.rl "Zn"^(2+) + 2e^- "(semireaz. di ossidazione)" \
  "Cu"^(2+) + 2e^- arrows.rl "Cu"   "(semireaz. di riduzione)"
$

// Immagine #TODO

Lo zinco agisce come anodo della pila, fungendo da polo negativo, mentre il rame svolge il ruolo di catodo, operando come polo positivo. La pila è in grado di produrre lavoro fino a raggiungere lo stato di equilibrio.

$ 
  "Zn" + "Cu"^(2+) arrows.rl "Zn"^(2+) + "Cu" 
$

L'equilibrio è determinato dalla somma delle semireazioni di ossidazione e riduzione considerate in precedenza.

Le soluzioni contenute nelle due semipile sono generalmente collegate con un ponte salino o separate da un setto poroso permeabile agli ioni, dispositivi che svolgono la medesima funzione. Il loro scopo principale è chiudere il circuito garantendo l'elettroneutralità del sistema. In dettaglio, gli ioni negativi che si diffondono dal ponte salino verso il comparto anodico bilanciano le cariche positive degli ioni Zn#super[2+] disciolti nella soluzione. Allo stesso modo, gli ioni positivi che migrano verso il comparto catodico compensano l'eccesso di cariche negative generato dalla deposizione degli ioni Cu#super[2+] al catodo.

#note(bottom)[== *🧩* Applicazioni dell'elettrolisi <senza_numero>

I processi elettrolitici trovano ampio utilizzo in diversi ambiti. Nella galvanostegia, consentono di rivestire oggetti, principalmente metallici, con uno strato protettivo o decorativo di metalli come nichel, cromo, argento, oro e altri. Nella galvanoplastica, invece, vengono impiegati per modellare oggetti dalla forma desiderata. 

In metallurgia, i metodi elettrolitici sono utilizzati sia per estrarre metalli come alluminio, magnesio, zinco, sodio e calcio, sia per affinare metalli impuri già ottenuti tramite altri processi, come nel caso del rame (raffinazione elettrolitica). Nell'industria chimica, l'elettrolisi permette la produzione di sostanze fondamentali come cloro e idrossido di sodio.]

== Elettrodo a idrogeno. Scala dei potenziali standard

Poiché non è possibile determinare sperimentalmente la differenza di potenziale (d.d.p.) tra elettrodo e soluzione, per assegnare un potenziale a ciascun elettrodo è necessario collegarlo a un elettrodo di riferimento e misurare la forza elettromotrice (f.e.m.) della pila risultante. Tale valore corrisponde alla differenza tra i potenziali elettrodici relativi ai due semielementi che compongono la pila.

L'elettrodo di riferimento, scelto arbitrariamente e al quale è attribuito il potenziale E° = 0,00 V per convenzione (a 25°C), è l'elettrodo standard a idrogeno. Esso consiste in un filo di platino (Pt), attorno al quale viene fatto gorgogliare idrogeno puro (H#sub[2]) alla pressione di 1 atm. Il filo è immerso in una soluzione 1 M contenente ioni H#sub[3]O#super[+]. Connettendo all'elettrodo a idrogeno i diversi semielementi che si intende confrontare (alle stesse condizioni standard), si misura la f.e.m. delle pile ottenute. In base alla relazione 

$ 
  "f.e.m." = E° - 0,00V = E°
$

si calcola il potenziale standard o normale E° del semielemento. Un potenziale standard positivo indica che il sistema ha una maggiore tendenza ad acquisire elettroni rispetto al sistema H#sub[2]/H#sub[3]O#super[+] (elettrodo a idrogeno), evidenziando un potere ossidante superiore. Al contrario, un potenziale standard negativo implica che il sistema tende maggiormente a cedere elettroni rispetto al sistema H#sub[2]/H#sub[3]O#super[+], possedendo quindi un maggiore potere riducente.

Da ciò deriva che ogni semicoppia agisce da ossidante rispetto a quelle che la precedono nella scala dei potenziali standard e da riducente rispetto a quelle che la seguono. Accoppiando due elettrodi per formare una pila, quanto maggiore è la differenza tra i loro potenziali standard, tanto più spontanea risulta la reazione di ossidoriduzione globale tra i due sistemi. Ciò comporta uno spostamento più marcato dell'equilibrio verso destra e rende la pila complessivamente più efficiente. Ad esempio, nella pila:

$ 
  \u{2296} "Zn"\/"Zn"^(2+)\/\/"Cu"^(2+)\/"Cu" \u{2295}
$

considerando che il potenziale standard del sistema Cu/Cu#super[2+] è +0,34 V e quello del sistema Zn#super[2+]/Zn è –0,76 V, si avrà:

$ 
  E° = E°_("Cu") - E°_("Zn") = 0.34 - (-0.76) = 1.10 V = "f.e.m."_("pila")
$

In generale, la forza elettromotrice di una pila si calcola come la differenza tra il potenziale di riduzione maggiore (potenziale catodico E#sub[c]) e il potenziale di riduzione minore (potenziale anodico E#sub[a]), ovvero:

$ 
  "f.e.m." = E_c - E_a
$

Il flusso di elettroni nel circuito esterno avviene dall'elettrodo con il potenziale standard più basso (indicato con -) verso l'elettrodo con il potenziale standard più alto (indicato con +).

== Potenziale di elettrodo secondo l'equazione di Nernst

Il potenziale di un elettrodo E, riferito a condizioni diverse da quelle standard, per un semielemento rappresentabile dall'equilibrio:

$ 
  a "ox" + n e^- arrows.rl b "red"
$

può essere calcolato mediante una relazione formulata nel 1889 dal fisico e chimico tedesco W.H. Nernst (1864-1941). Questa relazione, nota come equazione di Nernst, assume la seguente forma:

$ 
  E = E° + (R T)/(n F) ln (["ox"]^a)/(["red"]^b) = \ = E° + (R T)/(n F) space 2.3 log (["ox"]^a)/(["red"]^b)
$

E° rappresenta il potenziale standard del semielemento; R è la costante universale dei gas pari a 8,31 J ⋅ K#super[-1] ⋅ mol#super[-1]; T rappresenta la temperatura assoluta in Kelvin; n è il numero di elettroni coinvolti nella reazione; F è la costante di Faraday pari a 96.500 C (coulomb); [ox]#super[a] indica la concentrazione molare della forma ossidata elevata al proprio coefficiente stechiometrico; [red]#super[b] rappresenta la concentrazione molare della forma ridotta elevata al proprio coefficiente stechiometrico; ln è il logaritmo naturale; log è il logaritmo decimale.

Nel caso della pila Daniell, identificata dalla reazione:

$ 
  "Zn" + "Cu"^(2+) arrows.rl "Zn"^(2+) + "Cu"
$<reaz_pila>

e operando a 25 °C, si ottiene:

$ 
  "f.e.m" = E_("Cu") - E_("Zn") = \ = [ E°_("Cu") + 0.059/2 log (["Cu"^(2+)])/(["Cu"]) ] - [ E°_("Zn") + 0.059/2 log (["Zn"^(2+)])/(["Zn"])]
$

dove E°#sub[Cu] = +0,34V ed E°#sub[Zn] = -0,76V; in aggiunta, [Cu] = 1 e [Zn] = 1, perché sono concentrazioni di solidi puri. Procedendo con la semplificazione si ottiene:

$ 
  "f.e.m" = 0.34 - (-0.76) + 0.059/2 log (["Cu"^(2+)])/(["Zn"^(2+)]) = \ = 1.10 + 0.059/2 log (["Cu"^(2+)])/(["Zn"^(2+)])
$

All'equilibrio: 

$
 (["Cu"^(2+)])/(["Zn"^(2+)]) = 1/K_c quad e quad "f.e.m."= 0
$

Questo indica che la pila è scarica. L'equazione di Nernst, dunque, si trasforma in:

$
 E°_("Cu") - E°_("Zn") = 0.059/2 log K_c
$

tramite la quale si può ottenere la costante d'equilibrio K#sub[c] della reazione $"Zn" + "Cu"^(2+) arrows.rl "Zn"^(2+) + "Cu"$.

#figure(
  caption: [Potenziali standard, E° di alcune semicoppie],
  table(
    stroke: 0.5pt + main_tecnologia.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return main_tecnologia // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return main_tecnologia.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: left + horizon,
  columns: (3),
  table.header[Composto][Reazione elettrolitica][E° (V)],
[Li#super[+]], [\+ 1 e#super[--] #math.arrows.rl  Li], [-3,04],
[K#super[+]], [\+ 1 e#super[--] #math.arrows.rl  K], [-2,92],
[Al#super[3+]], [\+ 3 e#super[--] #math.arrows.rl  Al], [-2,92],
[Mn#super[2#super[+]]], [\+ 2 e#super[--] #math.arrows.rl  Mn], [-1,19],
[2H#sub[2]O],[\+ 2 e#super[--] #math.arrows.rl  H#sub[2] + 2OH#super[--]], [-0,83],
[Zn#super[2#super[+]]], [\+ 2 e#super[--] #math.arrows.rl  Zn], [-0,76],
[Fe#super[2#super[+]]], [\+ 2 e#super[--] #math.arrows.rl  Fe], [-0,44],
[Cd#super[2#super[+]]], [\+ 2 e#super[--] #math.arrows.rl  Cd], [-0,40],
[Ni#super[2#super[+]]], [\+ 2 e#super[--] #math.arrows.rl  Ni], [-0,25],
[Pb#super[2#super[+]]], [\+ 2 e#super[--] #math.arrows.rl  Pb], [-0,13],
[Fe#super[3#super[+]]], [\+ 3 e#super[--] #math.arrows.rl  Fe], [-0,037],
[2H#sub[3]O#super[+]], [\+ 2 e#super[--] #math.arrows.rl  H#sub[2] + 2H#sub[2]O], [0,00],
[Cu#super[2#super[+]]], [\+ 2 e#super[--] #math.arrows.rl  Cu], [+0,34],
[Cu#super[+]], [\+ 1 e#super[--] #math.arrows.rl  Cu], [+0,52],
[Fe#super[3#super[+]]], [\+ 1 e#super[--] #math.arrows.rl  Fe#super[2#super[+]]], [+0,77],
[Hg#super[+]], [\+ 1 e#super[--] #math.arrows.rl  Hg], [+0,79],
[Ag#super[+]],[\+ 1 e#super[--] #math.arrows.rl  Ag], [+0,80],
[Hg#super[2#super[+]]], [\+ 2 e#super[--] #math.arrows.rl  Hg], [+0,854],
[O#sub[2] + 4H#sub[3]O#super[+]], [\+ 4 e#super[--] #math.arrows.rl  6H#sub[2]O], [+1,229],
[Cl#sub[2]], [\+ 2 e#super[--] #math.arrows.rl  2Cl#super[--]], [+1,36],
[PbO#sub[2] + 4H#sub[3]O#super[+]], [\+ 2 e#super[--] #math.arrows.rl  Pb#super[2+] + 6H#sub[2]O], [+1,45],
[Au#super[3#super[+]]], [\+ 3 e#super[--] #math.arrows.rl  Au], [+1,50],
[MnO#sub[4]#super[--] + 4H#sub[3]O#super[+]], [\+ 3 e#super[--] #math.arrows.rl  MnO#sub[2] + 6H#sub[2]O], [+1,70],
[F#sub[2]], [\+ 2 e#super[--] #math.arrows.rl  2F#super[--]], [+2,87],
)  
)


== Tipi di pile

Un sistema redox può essere impiegato per generare energia elettrica, purché vengano utilizzati i dispositivi adeguati.

Nelle pile a combustibile, i due semielementi derivano dallo stesso sistema, ma differiscono per la concentrazione ionica. Nel caso di elettrodi Me#super[+]/Me, il semielemento con maggiore concentrazione ionica funge da catodo (+), mentre quello con concentrazione inferiore opera come anodo (−). Un esempio di pila con elettrodi d'argento:

$ 
  \u{2296} "Ag"\/"Ag"^(+) space 0.01 space M space\/\/ space "Ag"^(+) space 0.1 space M\/"Ag" \u{2295} \
  "f.e.m." = 0.059 log 10^(-1)/10^(-2) = 0.059 V
$

Le pile a secco, note anche come pile Leclanché, non contengono elettroliti liquidi e sono disponibili in versione acida e alcalina. La pila acida presenta un rivestimento di zinco che funge da anodo, accompagnato da un elettrodo di carbone (catodo) immerso in una pasta solida composta da diossido di manganese (MnO#sub[2]), cloruro di ammonio (NH#sub[4]Cl) e polvere di carbone. Questo tipo di pila ha una forza elettromotrice di 1,5 V. 

Nella versione alcalina, il cloruro d'ammonio viene sostituito con idrossido di potassio (KOH) o idrossido di sodio (NaOH). Tra le pile a secco, sono comuni quelle ad argento, dove l'anodo è fatto di zinco e il catodo consiste in ossido d'argento (Ag#sub[2]O) in ambiente alcalino. Anche le pile a bottone al mercurio sono diffuse; in queste, il catodo d'acciaio è immerso in ossido di mercurio (HgO), che agisce come ossidante in ambiente alcalino. Queste ultime sono spesso utilizzate in dispositivi come calcolatrici, orologi e fotocamere.

Le pile a combustibile si distinguono dalle normali pile elettriche per il fatto che si basano su una reazione di combustione controllata. Il combustibile utilizzato è l'idrogeno (H#sub[2]) e il comburente l'ossigeno (O#sub[2]), con produzione finale di acqua (H#sub[2]O). Le reazioni redox sono:

$ 
  "(all'anodo)" 2H_2 + 4"OH"^- -> 4H_2O +4e^- \ "(al catodo)" O_2 + 2H_2O + 4e^- -> 4"OH"^-
$

Gli elettrodi sono immersi in un elettrolita e le reazioni redox seguono uno schema specifico che vede gli elettroni prodotti all'anodo percorrere un circuito metallico esterno fino al catodo, dove partecipano alla riduzione dell'ossigeno. Gli ioni OH#super[--] migrano attraverso l'elettrolita dalla zona catodica a quella anodica, chiudendo il circuito elettrico. Grazie al loro altissimo rendimento, queste pile sono state utilizzate in veicoli spaziali.

Un accumulatore elettrico è una variante reversibile delle pile, poiché può essere ricaricato attraverso una corrente elettrica continua proveniente da una fonte esterna, con senso opposto rispetto alla scarica. Durante la ricarica, agli elettrodi si innescano reazioni chimiche che ripristinano le condizioni originali della materia attiva trasformata durante la fase di scarica. In modalità scarica, l'accumulatore funziona come una cella galvanica; nella fase di ricarica opera invece come una cella elettrolitica, dove il catodo diventa l'elettrodo negativo e l'anodo quello positivo.

Collegando più accumulatori in serie è possibile ottenere una batteria la cui tensione complessiva corrisponde alla somma delle tensioni dei singoli elementi. Le batterie al piombo sono tra le più diffuse: quelle installate sui veicoli sono generalmente composte da sei elementi, ciascuno con capacità di erogare 2V, per un totale di 12V. Altri tipi importanti di accumulatori includono quelli alcalini.

// Da qui il testo è solo riformulato e non sono indicate le sezioni, i capitoli, le formule o le tabelle da inserire. 

== L'elettrolisi

L'elettrolisi è l'insieme di fenomeni che si verificano quando soluzioni di elettroliti o elettroliti allo stato fuso vengono attraversate da una corrente elettrica. Questo processo consente di trasformare l'energia elettrica fornita da un generatore di corrente continua in reazioni chimiche non spontanee, e si svolge all'interno di celle elettrolitiche. Questi dispositivi sono composti da contenitori che racchiudono l'elettrolita, nel quale vengono immersi due elettrodi collegati ai poli di un generatore, che può essere una pila o un accumulatore. Gli elettrodi, solitamente conduttori metallici, assumono ruoli distinti: il polo positivo è connesso all'anodo, mentre il polo negativo al catodo. L'elettrolisi trova applicazione in numerosi settori.

Quando viene applicato un campo elettrico generato dagli elettrodi, gli ioni presenti nell'elettrolita si comportano in modo specifico: i cationi, carichi positivamente, migrano verso il catodo dove avvengono reazioni di riduzione, mentre gli anioni, carichi negativamente, si dirigono verso l'anodo, dando luogo a reazioni di ossidazione. Nel caso di un elettrolita fuso, come il cloruro di sodio (NaCl), agli elettrodi si verificano precise reazioni chimiche correlate alla natura della sostanza.

$ 
  \u{2296} "catodo:" & space 2"Na"^+ + 2e^- -> 2"Na" & "(riduzione)" \
  \u{2295} "anodo:"  & space 2"Cl"^- -> "Cl"_2 + 2e^- & "(ossidazione)"
$

Quando l'elettrolita è composto da più specie chimiche, le reazioni si regolano secondo priorità definite:
- Al catodo \u{2296} avviene inizialmente la riduzione delle specie con potenziale di riduzione maggiore, ovvero quelle con una maggiore propensione a ridursi.
- All'anodo \u{2295} si ossidano per prime le specie con potenziale di riduzione più basso, ossia quelle con maggiore tendenza all'ossidazione.

Se l'elettrolita si trova in soluzione acquosa, anche l'acqua può subire riduzione o ossidazione agli elettrodi in base all'ordine di scarica delle specie coinvolte.

$ 
  \u{2296} "catodo:" space 2H_2O + 2e^- -> H_2 + 2"OH"^- quad  E° &= -0.83V \
  \u{2295} "anodo:"  space 6H_2O -> 4H_3O^+ + 4e^- + O_2 quad E° &= +1.229V 
$

=== Leggi di Faraday

Le leggi di Faraday mettono in relazione la quantità di carica elettrica fornita alla cella elettrolitica con la sostanza che reagisce agli elettrodi. Formulate nel 1834 dal chimico e fisico inglese Michael Faraday (1791-1867), descrivono i seguenti principi:
- Prima legge: la quantità di materia trasformata durante l'elettrolisi è direttamente proporzionale alla quantità di carica elettrica che attraversa la cella.
- Seconda legge: la carica elettrica necessaria per depositare o liberare una certa massa di materia agli elettrodi è calcolata con una formula che include F (il valore del faraday, cioè 96.500 C), z (la carica dello ione) e M (la massa molare, equivalente alla massa atomica relativa):

$ 
  Q = (F m z) / M
$

Infine, si definisce "equivalente elettrochimico" la massa, espressa in grammi, di una sostanza che reagisce agli elettrodi quando attraversata da una carica di un coulomb.

$ 
  "eq." e = (m_("eq"))/F
$

#pagebreak()
#set page(fill: main_tecnologia.lighten(90%))
== Glossario <senza_numero>

/ Elettrodo o semielemento: Sistema composto da una semicoppia redox con una forma ossidata e una forma ridotta.  

/ Potenziale d'elettrodo: Differenza di potenziale all'interfaccia tra il metallo e la soluzione.  

/ Pila: Sistema elettrochimico che converte l'energia libera associata a un processo redox spontaneo in energia elettrica.  

/ Anodo e catodo: Elettrodi di un sistema elettrochimico: nella pila, l'anodo corrisponde al polo negativo e il catodo al polo positivo; nella cella elettrolitica, l'anodo è il polo positivo e il catodo quello negativo. In entrambe le configurazioni, l'anodo è il luogo in cui avviene l'ossidazione e il catodo quello in cui si verifica la riduzione.  

/ Elettrodo standard a idrogeno: Elettrodo di riferimento convenzionale con potenziale standard definito come E° = 0,00 V.  

/ Scala dei potenziali standard: Serie ordinata dei potenziali di riduzione delle semicoppie, riferiti all'elettrodo standard a idrogeno.  

/ f.e.m. della pila: Differenza di potenziale tra il catodo e l'anodo di una pila, calcolabile attraverso l'equazione di Nernst.  

/ Elettrolisi: Processo elettrochimico mediante il quale si realizzano reazioni redox non spontanee fornendo energia elettrica al sistema.  

