#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Lo studio della fisica nucleare ha avuto origine nei primi decenni del Novecento, sviluppandosi seguendo due filoni paralleli. 

Da una parte, Rutherford scoprì la struttura dell'atomo, evidenziando la presenza di un nucleo centrale che aprì la strada all'analisi dei suoi costituenti, i protoni e i neutroni, e al loro comportamento. Dall'altra parte, la comprensione della radioattività, fenomeno scoperto già alla fine dell'Ottocento, rimase a lungo un enigma. Solo in seguito si riuscì a collegare l'origine delle radiazioni provenienti dalla materia al nucleo atomico.

Con l'ausilio di strumenti tecnologicamente avanzati, la struttura del nucleo e la natura delle sue componenti sono state chiarite. Ora, la fisica fondamentale si dedica allo studio dei costituenti ultimi della materia, ovvero le particelle elementari. Si ritiene che queste indagini siano strettamente legate alla cosmologia. 

Si ipotizza infatti che le altissime energie generate nella collisione tra particelle elementari negli acceleratori possano riprodurre le condizioni presenti nei primissimi istanti di vita dell'universo dopo il Big Bang.]

== I composti del nucleo atomico

Il nucleo è la parte centrale dell'atomo e ha dimensioni di circa 10#super[-15] metri, ovvero sono circa 10.000 volte inferiori a quelle dell'intero atomo. In esso è concentrata quasi tutta la massa atomica.

Essendo carico positivamente, il nucleo bilancia la carica negativa degli elettroni che orbitano attorno all'atomo, garantendone la neutralità complessiva. Nel 1911 Rutherford ipotizzò che il nucleo fosse formato da particelle cariche positivamente chiamate protoni, in numero pari agli elettroni degli orbitali atomici.

Anche prima che fosse nota l'esistenza del nucleo, i protoni erano già stati identificati come nuovi componenti di una radiazione osservata durante esperimenti con tubi a raggi catodici. Questi protoni, viaggiando in direzione opposta ai consueti raggi catodici, avevano una massa e una carica ben definite. La carica positiva del protone (+1,6022 · 10#super[-19] C) è uguale in valore assoluto alla carica negativa dell'elettrone, ma con segno opposto. La sua massa, però, è circa 1860 volte superiore a quella di un elettrone (1,6726 · 10#super[-27] kg).

Le misurazioni effettuate da Rutherford e dai suoi collaboratori rivelarono che la massa dei nuclei di alcuni elementi era quasi doppia rispetto alla somma delle masse dei protoni presenti. Questa discrepanza suggerì l'esistenza di un'altra particella neutra nel nucleo. Tale particella avrebbe una massa simile a quella del protone (1,6749 · 10#super[-27] kg) e sarebbe quasi pari per numero ai protoni nei nuclei analizzati. Fu chiamata neutrone e venne osservata direttamente nel 1932 dal fisico inglese James Chadwick, allievo di Rutherford.

Protoni e neutroni, collettivamente denominati nucleoni, determinano diverse proprietà del nucleo. Il numero di protoni, noto come il numero atomico _Z_, identifica il tipo di elemento chimico. Il numero totale di nucleoni (protoni + neutroni) è invece il numero di massa _A_. La differenza tra _A_ e _Z_ fornisce il numero di neutroni presenti nel nucleo, che può variare per nuclei dello stesso elemento.

$ 
  A - Z = N
$

Gli isotopi sono varianti dello stesso elemento chimico che condividono il medesimo numero atomico _Z_ ma differiscono per il numero di massa A. Per rappresentare un nuclide, considerato un'entità autonoma del nucleo atomico, si utilizza la notazione che prevede il simbolo chimico dell'elemento con il numero atomico Z indicato in basso a sinistra e il numero di massa A in alto a sinistra.

Nel caso del nucleo di carbonio (simbolo C) con _Z_ = 6 e A = 12, il nuclide corrispondente è rappresentato nel modo seguente: 

$ 
  #hide[]^12_6 "C"
$

Il carbonio presenta anche altri isotopi, caratterizzati da un valore diverso di _A_, tra cui:

$ 
  #hide[]^13_6 "C" quad #hide[]^14_6 "C" quad #hide[]^15_6 "C"
$

Una notazione più sintetica per indicare gli isotopi di un elemento omette il numero atomico (dato che è costante per ogni elemento) e include solo il numero di massa, ad esempio #super[12]C o, in alternativa, carbonio-12.

La stabilità del nucleo è determinata dal numero di protoni (_Z_) e neutroni (_N_): esistono rapporti $Z/N$ per i quali i nuclei risultano stabili, tendendo a mantenere inalterato il loro contenuto di nucleoni. I nuclei instabili, invece, presentano rapporti diversi tra protoni e neutroni, e tendono a trasformarsi attraverso la perdita o l'acquisto di uno o più nucleoni, fino a raggiungere una configurazione stabile. Questa trasformazione può dare origine a nuclei appartenenti a elementi chimici diversi, dando luogo al fenomeno della radioattività.

Per elementi con basso numero atomico (fino a circa _Z_ = 30), i nuclei stabili possiedono generalmente un numero di protoni uguale al numero di neutroni. Tuttavia, per valori di _Z_ elevati, la stabilità nucleare richiede un maggior numero di neutroni rispetto ai protoni. Questo surplus di neutroni contribuisce a stabilizzare i nuclei, poiché mitiga le forti forze repulsive generate dalle cariche positive dei protoni che, altrimenti, potrebbero causarne la disgregazione.

Tracciando un grafico dei nuclei conosciuti, con il numero atomico _Z_ sull'asse orizzontale e il numero di neutroni N sull'asse verticale, i nuclei stabili si dispongono lungo una fascia chiamata banda di stabilità. Per _Z_ < 20, questa banda coincide con la retta a 45° (_N_ = Z), mentre per valori crescenti di _Z_, i nuclei stabili mostrano un rapporto _N_ > _Z_.

La massa dei nucleoni e quella dei nuclei chimici vengono generalmente espresse utilizzando l'unità di massa atomica (simbolo amu, dall'inglese atomic mass unit). Tale unità è definita come 1/12 della massa del carbonio-12, ovvero  1,6604 · 10#super[-27] kg. In base a questa scala, il protone ha una massa pari a 1,0073 amu (approssimabile a 1 amu), il neutrone 1,0089 amu (~1 amu), mentre la massa dell'elettrone è notevolmente inferiore, pari a 0,000549 amu.

#figure(
  caption: [Proprietà particelle subatomiche],
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
  columns: (5),
  table.header[Particella][Massa (g)][Massa (u)][Carica \ elettrica][Simbolo],
  [Elettrone], [9,1093897 ⋅ 10#super[-28]], [0,0005486], [1–], [#box[#place(dx: -3pt)[#sub[-1]]#super[0]e], e#super[--]],
  [Protone], [1,672623 ⋅ 10#super[-24]], [1,007276], [1+], [#box[#place()[#sub[1]]#super[0]H], #box[#place()[#sub[1]]#super[1]p]],
  [Neutrone], [1,674929 ⋅ 10#super[-24]], [1,008665], [0], [#box[#place()[#sub[0]]#super[1]n]],
)  
)

=== Le forze nucleari

Nell'atomo, gli elettroni sono attratti verso il nucleo grazie alle forze elettriche derivanti dall'interazione tra le cariche negative degli elettroni e quella positiva del nucleo. Tuttavia, tali forze elettriche non sono sufficienti a spiegare la coesione tra i protoni del nucleo, i quali dovrebbero respingersi reciprocamente (a causa della repulsione coulombiana tra cariche dello stesso segno).

Le forze che mantengono uniti i nucleoni devono quindi essere più intense delle forze di natura elettrica per superare questa repulsione. Questo tipo di interazione è noto come forza nucleare forte.

L'interazione nucleare forte possiede un'intensità estremamente elevata ma agisce su distanze estremamente ridotte, limitate alle dimensioni del nucleo (circa 10#super[-15] m). Oltre questo intervallo, la forza si annulla completamente. L'energia necessaria per vincere le forze nucleari e separare un nucleone dal nucleo è molto superiore a quella richiesta per estrarre un elettrone dalla sua orbita atomica: si parla di qualche milione di elettronvolt (o megaelettronvolt, indicati con il simbolo MeV) contro una decina di elettronvolt (eV).

Di conseguenza, le energie liberate nei processi che coinvolgono i nuclei, come la fissione nucleare (frantumazione di un nucleo), sono enormemente superiori rispetto a quelle generate nelle comuni reazioni chimiche.

=== L'energia di legame

Nella teoria della relatività speciale, formulata da Albert Einstein intorno al 1905, viene stabilito che un corpo con massa _m_ possiede un'energia _E_ espressa dalla celebre equazione di Einstein: 

$ 
  E = m c^2
$

dove _c_ rappresenta la velocità della luce nel vuoto, una costante universale, dal valore di 299.792.458 m/s. 

Un fenomeno interessante emerge quando si confronta la massa di un nucleo con la somma delle masse dei suoi componenti isolati (nucleoni liberi). Si osserva che la somma delle masse dei nucleoni è sistematicamente maggiore rispetto alla massa del nucleo considerato nel suo complesso. Questo apparente paradosso trova spiegazione grazie all'equazione di Einstein: durante la formazione del nucleo, una parte della massa dei nucleoni si trasforma in energia. Tale energia, chiamata energia di legame, è quella necessaria per mantenere i nucleoni uniti ed è anche la quantità che occorre fornire per separare il nucleo nei suoi componenti. 

La differenza tra la somma delle masse dei nucleoni e la massa del nucleo è nota come "difetto di massa". 

$ 
  m_"nucleoni" - m_"nucleo" = Delta m > 0
$

A quest'ultimo (_Δm_) corrisponde una specifica quantità di energia _ΔE_, calcolabile mediante l'equazione di Einsten che rappresenta appunto l'energia di legame. 

$ 
  Delta E = Delta m dot c^2
$

Ad esempio, nel caso del deuterio (_D_), un isotopo dell'idrogeno con un neutrone e un protone (²H; _A_ = 2, _Z_ = 1), l'energia di legame è da ta da:

$ 
  Delta E &= (m_"protoni" + m_"neutroni") dot c^2 - m_"deuterio" dot c^2 = \ &= Delta m = 2.224 "MeV" 
$

Essa è circa un milione di volte superiore all'energia elettrostatica che lega l'elettrone al nucleo dell'idrogeno, ovvero circa 13,6 eV.

Nelle reazioni nucleari, le variazioni di massa sono sempre osservabili a causa della grande quantità di energia coinvolta. Al contrario, nelle reazioni chimiche tali variazioni sono trascurabili, dato che si generano energie molto inferiori. L'energia di legame media per nucleone, ottenuta dividendo l'energia complessiva di legame per il numero di massa _A_, mostra un andamento caratteristico: è bassa nei nuclei leggeri, cresce rapidamente fino a nuclei con numero di massa pari a circa 50 e poi diminuisce progressivamente nei nuclei più pesanti, ma con un ritmo più lento rispetto alla fase iniziale di incremento.

Questo profilo indica che si può liberare energia sia quando due nuclei leggeri si fondono per formare un nucleo più pesante (fusione), sia quando un nucleo pesante si divide in nuclei più leggeri (fissione).

=== I modelli nucleari

Analogamente a quanto avviene per gli atomi, anche la struttura del nucleo viene spiegata attraverso modelli semplificati e non completamente esaustivi. La complessità delle forze che tengono insieme i nucleoni e il numero elevato di particelle coinvolte rendono i modelli nucleari notevolmente più complessi rispetto a quelli atomici; per questo motivo non saranno qui trattati in dettaglio.

Attualmente si distinguono principalmente due modelli nucleari, a seconda che prendano o meno in considerazione gli effetti reciproci prodotti dalle particelle sul moto di ciascun nucleone. Il primo è il modello a goccia, che descrive il nucleo come un liquido in cui le forze che tengono insieme i nucleoni sono analoghe a quelle che mantengono coese le molecole in una goccia di liquido; queste forze sono molto intense ma hanno un raggio d'azione limitato. Il modello a goccia si dimostra particolarmente utile per spiegare reazioni che coinvolgono nuclei altamente eccitati, ma risulta meno efficace per lo studio degli stati fondamentali dei nucleoni.

Il secondo modello è il modello a shell (strati), simile a quello utilizzato per descrivere i livelli energetici degli elettroni negli atomi. Esso analizza i livelli energetici nucleari seguendo principi analoghi al riempimento degli orbitali atomici e rispettando il principio di esclusione di Pauli. Alcuni nuclei risultano particolarmente stabili quando i livelli energetici sono completamente occupati, analogamente a quanto avviene per gli atomi con configurazioni elettroniche dei gas nobili. Nuclei con un numero specifico di nucleoni, corrispondente ai cosiddetti numeri magici (2, 8, 20, 28, 50, 82 ecc.), presentano ricorrenti caratteristiche di stabilità.

Esistono inoltre modelli unificati che tentano di conciliare le due interpretazioni, nei quali le caratteristiche del nucleo vengono di volta in volta analizzate sia considerando il moto dei singoli nucleoni (come avviene nel modello a shell), sia in termini di moto collettivo (come nel modello a goccia).

== La radioattività

I nuclei instabili tendono spontaneamente a raggiungere uno stato di maggiore stabilità trasformandosi in altri nuclei ed emettendo particelle di diversa natura.

Questo fenomeno, osservato già prima che fossero disponibili informazioni sulla struttura interna dei nuclei, è conosciuto come radioattività, e i nuclei o gli elementi coinvolti vengono definiti radioattivi, oltre che noti come radionuclidi o radioisotopi. La scoperta della radioattività si deve al fisico francese Henri Becquerel (1852-1908), che nel 1896, durante gli studi sulla fosforescenza, si accorse che un composto di uranio (simbolo U, Z = 92) era in grado di annerire una lastra fotografica su cui poggiava, anche senza che la lastra fosse stata esposta alla luce.

Questo portò Becquerel a ipotizzare che l'uranio emettesse delle radiazioni proprie, senza però riuscire a determinarne la natura. Le sue ricerche vennero successivamente approfondite dai coniugi Pierre (1859-1906) e Marie Curie (1867-1934), entrambi fisici, che scoprirono come numerosi altri elementi, tra cui il radio, fossero in grado di emettere radiazioni fino ad allora sconosciute.

Il termine radioattività è stato proprio introdotto grazie agli studi condotti dai Curie sui composti del radio (simbolo Ra, _Z_ = 88). I lavori di questi scienziati furono ulteriormente sistematizzati nel 1899 da Ernest Rutherford, il quale, attraverso esperimenti su elementi radioattivi, riuscì a classificare le radiazioni emesse in diverse categorie e ne descrisse le principali caratteristiche.

Rutherford scoprì, ad esempio, che l'uranio emette due tipi di radiazioni, denominate radiazioni alfa e beta. Entrambe sono composte da particelle cariche ma con masse differenti, e Rutherford ne chiarì anche l'origine. Formulò l'idea che la radioattività fosse un processo intrinseco alle trasformazioni subatomiche, anticipando così il suo modello atomico che includeva l'esistenza del nucleo.

Nello stesso periodo venne identificato anche un terzo tipo di radiazioni, chiamate radiazioni gamma. Queste, caratterizzate da un'elevata capacità di penetrazione e non influenzate dai campi magnetici, furono subito riconosciute come radiazioni elettromagnetiche analoghe ai raggi X, dai quali si differenziano soltanto per la lunghezza d'onda.

Con la scoperta della struttura del nucleo, la radioattività divenne rapidamente uno dei temi centrali della nuova fisica nucleare. Le emissioni radioattive vennero infine interpretate come manifestazioni dei processi che accompagnano le trasformazioni nucleari.

L'emissione radioattiva è peculiare dei nuclei instabili, caratterizzati da energie di legame relativamente basse. Attraverso questo processo i nuclei si trasformano in nuclei più stabili appartenenti ad elementi chimici diversi.

Esistono diverse modalità di emissione radioattiva che dipendono dal tipo di nucleo coinvolto. Il processo di emissione delle radiazioni, noto anche come decadimento, implica che un nucleo emettitore "decada" trasformandosi in un altro nucleo.

Le reazioni nucleari sono descritte mediante una notazione simile a quella utilizzata per le reazioni chimiche, dove i radionuclidi vengono rappresentati con i simboli specifici illustrati nel paragrafo precedente.  Durante una reazione nucleare devono essere rispettate le leggi di conservazione della massa e dell'energia. Questo significa che la quantità totale di massa e di energia deve essere equivalente su entrambi i lati dell'equazione nucleare, prima e dopo la trasformazione.

Di seguito vengono descritti alcuni dei tipi più comuni di decadimento radioattivo e le loro caratteristiche:

=== Decadimento α  
Alcuni nuclei con numero atomico _Z_ elevato (indicativamente _Z_ > 80) emettono spontaneamente particelle α (o radiazioni) composte da nuclei di isotopi dell'elio, con due protoni e due neutroni (#super[4]He).  
Quando un nucleo emette una particella alpha, il suo numero atomico _Z_ diminuisce di due unità e il suo numero di massa A si riduce di quattro unità.  
Un esempio rappresentativo di decadimento alpha è quello dell'uranio-238, che si trasforma in torio-234 emettendo una particella alpha. Questo processo è espresso attraverso la seguente reazione:

$ 
  #hide[]^238_92 "U" -> #hide[]^234_90 "Th" + alpha
$

=== Decadimento β  
Il decadimento beta si manifesta con l'emissione di un elettrone (decadimento β#super[-]) o di una particella con la stessa massa dell'elettrone ma carica opposta, chiamata positrone (decadimento #super[β+]), considerata l'antiparticella dell'elettrone.  
Questo tipo di decadimento è tipico dei nuclei instabili in cui il rapporto tra neutroni e protoni ($N/Z$) è diverso da 1: $N/Z > 1$ indica un eccesso di neutroni, mentre $N/Z < 1$ rappresenta un difetto di neutroni.  
- Decadimento β-: Quando un nucleo emette un elettrone, il suo numero atomico _Z_ aumenta di un'unità, mentre il numero di massa rimane invariato; in pratica, un neutrone viene convertito in un protone.  
- Decadimento β+: Quando un nucleo emette un positrone, il suo numero atomico _Z_ diminuisce di un'unità, mentre il numero di massa resta immutato; in questo caso, un protone viene trasformato in un neutrone.  

Il nucleo residuo risultante dal decadimento β è spesso in uno stato eccitato ed emette radiazione γ per tornare al suo stato energetico fondamentale. Questo avviene attraverso l'emissione di fotoni con energia molto elevata, tipica delle radiazioni nucleari. Analogamente a quanto accade nei processi atomici, anche nel nucleo i livelli energetici dei nucleoni possono cambiare, rilasciando energia sotto forma di fotoni.

Le reazioni nucleari associate al processo di emissione apparentemente sembrano non rispettare le leggi di conservazione dell'energia. Durante ogni trasformazione nucleare viene rilasciata una quantità di energia che deve essere trasportata da una delle particelle coinvolte nella reazione. Tuttavia, in certi casi sembra che una parte dell'energia scomparsa non sia rintracciabile.

Sviluppando le ipotesi del fisico svizzero Wolfgang Pauli nel 1931, Enrico Fermi propose nel 1934 che questa energia apparentemente dispersa fosse trasportata da una particella neutra e quasi priva di massa, che egli denominò neutrino. Tale particella legata ai processi di decadimento fu inizialmente ipotizzata solo a livello teorico, ma venne effettivamente osservata vent'anni più tardi.

In particolare, nel decadimento β#super[-] viene emesso un antineutrino (#overline(math.nu) particella analoga al neutrino ma con proprietà opposte), mentre nel decadimento β#super[+] viene invece emesso un neutrino (ν).

Di seguito possono essere riportati esempi specifici di decadimenti β#super[-] e β#super[+] insieme alle rispettive equazioni nucleari.

$ 
  #hide[]^234_(space space 90) "Th" -> #hide[]^234_(space space 91) "Pa" + e^- (beta^-) + overline(nu) \ #hide[]^13_(space space 7) "N" -> #hide[]^13_(space space 6) "C" + e^+ (beta^+) + nu
$

=== Le leggi del decadimento

A seguito del decadimento radioattivo di tipo α o β, il numero di nuclei dell'elemento originario diminuisce progressivamente, poiché essi si trasformano in nuclei differenti seguendo una legge esponenziale. 

Il numero di nuclei presenti al tempo _t_, indicato come _N(t)_, è descritto dalla relazione:

$ 
  N(t) = N_0 e^(-lambda t)
$

dove N#sub[0] rappresenta il numero di nuclei presenti al momento iniziale (quando inizia il conteggio del tempo), _e_ è la base dei logaritmi naturali (_e_ = 2,71828...) e la costante _λ_ è detta costante di disintegrazione, caratteristica del fenomeno in esame.

Per ciascun nucleo radioattivo è possibile definire un intervallo di tempo fisso, conosciuto come tempo di dimezzamento o vita media dell'elemento radioattivo, necessario affinché il numero di nuclei iniziali si riduca della metà.

Il tempo di dimezzamento (T1/2) è collegato alla costante di disintegrazione tramite la relazione: 

$ 
  T_("1/2") = ln(2)/lambda
$

Tavolta $1/lambda$ viene indicato come _τ_, dunque:

$ 
  T_("1/2") =  ln(2) space tau
$

Questo valore varia sensibilmente tra i diversi elementi. Ad esempio, per il torio e l'uranio raggiunge diversi miliardi di anni, mentre per il radon-226 è inferiore a quattro giorni.

#figure(
  caption: [Tempi di dimezzamento di alcuni elementi radioattivi.],
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
    table.header[Elemento][Nuclide][Tempo di di \ dimezzamento T#sub[1/2]][Tipo di \ decadimento],
[tecnezio], [$#hide[]^99_43"Tc"$], [6,02 ore], [gamma],
[sodio], [$#hide[]^24_11"Na"$], [15 ore], [beta],
[rado], [$#hide[]^222_(space space 86)"Rn"$], [3,82 giorni], [alfa, gamma],
[iodio], [$#hide[]^131_(space space 53)"I"$], [8,07 giorni], [beta],
[fosforo], [$#hide[]^32_15"P"$], [14,3 giorni], [beta],
[calcio], [$#hide[]^45_20"Ca"$], [164 giorni], [beta],
[idrogeno], [$#hide[]^3_1"H"$ (trizio)], [12,26 anni], [beta],
[stronzio], [$#hide[]^90_38"Sr"$], [28,1 anni], [beta],
[cesio], [$#hide[]^137_(space space 55)"Cs"$], [30 anni], [beta, gamma],
[potassio], [$#hide[]^40_19"K"$], [1,3 · 10#super[9] anni], [beta, gamma],
[radio], [$#hide[]^226_(space space 88)"Ra"$], [1,59 · 10#super[3] anni], [alfa],
[carbonio], [$#hide[]^14_(space space 6)"C"$], [5,73 · 10#super[3] anni], [beta],
[torio], [$#hide[]^230_(space space 90)"Th"$], [8 · 10#super[4] anni], [alfa, gamma],
[uranio], [$#hide[]^238_(space space 92)"U"$], [4,51 · 10#super[9] anni], [alfa],
)  
)

=== Le famiglie radioattive

Un nucleo che decade si trasforma nell'isotopo di un diverso elemento, spesso anch'esso instabile e soggetto a ulteriore trasformazione in un nuovo nucleo instabile. Questo processo di decadimento a catena continua fino a quando il prodotto finale è un nucleo stabile.

Gli elementi coinvolti in una catena di decadimenti formano una famiglia radioattiva o serie radioattiva. In natura sono state identificate tre famiglie radioattive principali: quella dell'uranio, quella del torio e quella dell'attinio. Tutte queste terminano con isotopi stabili del piombo. La famiglia più rilevante è quella dell'uranio-238, che porta al piombo-206 come prodotto finale.

Grazie all'abbondanza naturale dell'uranio-238, è possibile determinare l'età della Terra. Questo isotopo ha un tempo di dimezzamento pari a circa 4,5 miliardi di anni. Nelle rocce più antiche del pianeta si trovano quantità simili di uranio-238 e piombo-206. Da questa proporzione si deduce che metà dell'uranio originario si è già trasformata in piombo, portando a un'età della Terra approssimativamente coincidente con il tempo di dimezzamento di tale isotopo.

=== La radioattività artificiale

Gli isotopi radioattivi presenti in natura derivano dalle tre famiglie radioattive appena descritte, ma esistono anche isotopi radioattivi artificiali, ottenuti tramite reazioni nucleari condotte in laboratorio. Questi esperimenti si basano generalmente sul bombardamento di nuclei atomici stabili con fasci di neutroni, inducendo un eccesso di neutroni che rende il nucleo instabile.

Il nucleo così prodotto tende spontaneamente ad acquisire stabilità, emettendo particelle (facendo cioè sì che uno dei neutroni in eccesso si trasformi in un protone). Il bombardamento può avvenire anche utilizzando particelle cariche come particelle α, sebbene in questo caso vi sia una minore probabilità che la particella venga assorbita dal nucleo a causa della repulsione coulombiana tra le particelle α e i protoni nucleari. Per superare tale barriera di energia, le particelle devono essere accelerate maggiormente.

Grazie a questi esperimenti è possibile ottenere radioisotopi artificiali.

=== Applicazioni della radioattività

Poiché le radiazioni α, β, γ sono caratterizzate da un'alta capacità ionizzante, ovvero la capacità di generare elettroni dagli atomi e dalle molecole delle sostanze attraversate, trasformandoli in ioni, esercitano un'azione biologica significativa sulle cellule viventi. Tale effetto si manifesta frequentemente con la morte cellulare o con alterazioni dei tessuti, incluse modifiche genetiche.

Nonostante il loro potenziale pericoloso per l'organismo umano, questa proprietà viene impiegata in maniera controllata nel campo medico. Ad esempio, tali radiazioni sono utilizzate per eliminare tessuti tumorali o rallentarne la crescita. Una delle modalità più comuni di applicazione in questo contesto è l'uso di un isotopo del cobalto, il cobalto-60, noto per la sua emissione di radiazioni γ. Un altro isotopo, lo iodio-131, trova impiego principalmente nel trattamento di affezioni tiroidee e nella realizzazione di radiografie specifiche mediante tecnica scintigrafica.

Gli isotopi radioattivi presentano inoltre la medesima reattività chimica dei loro rispettivi isotopi stabili. Questa caratteristica li rende adatti ad essere impiegati come traccianti introdotti negli organismi per tracciare il loro percorso e monitorarne il comportamento fisiologico nonché i tempi di trasformazione.

Un ambito particolarmente rilevante nell'utilizzo della radioattività riguarda la datazione di campioni geologici e di reperti biologici di epoche antiche. Quest'ultimo utilizzo è limitato a una durata massima di 50.000-60.000 anni e prevede l'impiego di un isotopo radioattivo del carbonio, il carbonio-14 (#super[14]C), il cui tempo di dimezzamento è relativamente breve, pari a circa 5.730 anni.

Il carbonio-14 origina naturalmente nell'atmosfera attraverso l'interazione tra i raggi cosmici e l'azoto e viene assimilato dalle piante sotto forma di diossido di carbonio (CO#sub[2]). Successivamente, attraverso la catena alimentare, esso viene trasferito agli animali. Al momento della morte dell'organismo, il processo di decadimento dell'isotopo #super[14]C ha inizio e porta a una progressiva riduzione della sua concentrazione rispetto al carbonio stabile (#super[12]C). Data la conoscenza del rapporto tra #super[14]C e #super[12]C, che si presume essere rimasto relativamente costante nel corso del tempo, è possibile risalire all'età del reperto analizzando la quantità residua di carbonio-14.

== La fissione e la fusione nucleari

La trasformazione nucleare è un processo che rilascia ingenti quantità di energia, in relazione al difetto di massa dei nuclei coinvolti, secondo quanto stabilito dalla celebre equazione formulata da Einstein. Tale energia può essere utilizzata per finalità pratiche e si manifesta in due modalità fondamentali: la fissione nucleare e la fusione nucleare.

La fissione nucleare si verifica quando un nucleo pesante si scinde in due o, raramente, in tre nuclei più leggeri. In questo processo, la massa del nucleo originario risulta superiore alla somma delle masse dei nuclei generati. La differenza di massa è convertita in energia.

La fusione nucleare, al contrario, consiste nell'unione di due nuclei leggeri che danno origine a un nucleo più pesante. Anche in questo caso, la massa totale del nucleo risultante è inferiore alla somma complessiva delle masse dei nuclei originali, con la massa mancante trasformata in energia utile.

=== La fissione nucleare

La fissione nucleare può avvenire spontaneamente, sebbene sia un fenomeno estremamente raro in natura, oppure può essere indotta artificialmente attraverso il bombardamento dei nuclei con fasci di neutroni. Questo processo si manifesta generalmente in nuclei pesanti e instabili, come l'uranio-235, che fu inizialmente utilizzato negli esperimenti.

L'uranio naturale è composto principalmente da uranio-238, mentre l'isotopo uranio-235 rappresenta solo circa lo 0,7% del totale. Quando viene bombardato con neutroni, l'uranio-235 si scinde in due frammenti, ad esempio bario-139 e kripto-94, liberando al contempo due o tre neutroni aggiuntivi. Durante la fissione, una significativa quantità di energia (circa 200 MeV) viene rilasciata, derivante dal difetto di massa. Questa energia si manifesta sotto forma di energia cinetica dei frammenti della fissione e di energia termica.

Come scoperto da Enrico Fermi, per innescare e sostenere il processo di fissione è essenziale che i neutroni siano a bassa energia, poiché i cosiddetti neutroni lenti hanno maggiori probabilità di essere catturati dai nuclei degli elementi fissili. La loro velocità viene ridotta grazie all'impiego di specifiche sostanze chiamate moderatori, che assorbono parte dell'energia cinetica dei neutroni attraverso urti.

I neutroni rilasciati dalla reazione possono, in condizioni adeguate, provocare la fissione di altri nuclei di uranio, generando ulteriori neutroni. Se il processo non viene controllato, si verifica una reazione a catena capace di produrre quantità enormi di energia. Questo meccanismo di reazione a catena incontrollata è alla base delle bombe atomiche a fissione. In questi ordigni, massicce quantità di uranio e altri materiali fissili, spesso isotopi del plutonio, vengono compressi in spazi ristretti fino a superare la cosiddetta massa critica, facilitando l'innesco del processo divergente di reazione a catena.

Nelle condizioni controllate, invece, alcuni neutroni vengono assorbiti da sostanze specifiche mentre soltanto una parte viene lasciata libera per continuare il ciclo di fissione. Tale processo rende possibile sfruttare in modo sicuro la fissione nucleare nei reattori nucleari.

#note(bottom)[== *🧩* I reattori nucleari <senza_numero>

Il primo reattore nucleare a fissione fu realizzato nel 1942 a Chicago, sotto la guida di Enrico Fermi e del suo gruppo di ricerca, assumendo il nome di "pila atomica". Tale sistema operativo è essenzialmente simile ai principi su cui si basano i reattori nucleari attualmente in funzione.

Durante gli anni della Seconda Guerra Mondiale, lo sviluppo della tecnologia nucleare fu immediatamente correlato alle sue applicazioni militari. In un breve lasso di tempo, alimentati dal timore che la Germania nazista potesse acquisire tale tecnologia, gli Stati Uniti avviarono il "Progetto Manhattan", culminato nella costruzione della prima bomba atomica, sganciata su Hiroshima il 6 agosto 1945. Questo progetto coinvolse i più eminenti scienziati atomici e nucleari del periodo, sotto la direzione del fisico statunitense J. Robert Oppenheimer (1904-1967).

Terminato il conflitto mondiale, si cominciò a promuovere l'utilizzo esclusivamente pacifico dell'energia nucleare. I primi reattori nucleari destinati alla produzione di energia elettrica vennero costruiti nei periodi 1955-56 e segnarono una svolta nel panorama energetico globale.

I reattori nucleari, essenzialmente centrali di produzione di energia, convertono l'energia di legame dei nucleoni di alcuni elementi in energia termica per produrre energia elettrica. Il loro funzionamento si basa sul processo di fissione nucleare, impiegando isotopi di uranio come materiale attivo. La struttura principale del reattore, chiamata nocciolo, è il luogo in cui si verificano le reazioni di fissione. Essa include il combustibile nucleare, organizzato in barre o pastiglie, intervallato con materiali moderatori come acqua, acqua pesante o grafite. I moderatori hanno il compito di rallentare i neutroni liberati dalla fissione, garantendo la stabilità della reazione.

La gestione della reazione è assicurata attraverso barre di controllo, costituite da materiali in grado di assorbire i neutroni eccedenti. Questi componenti fondamentali sono affiancati da sistemi ausiliari che servono al trasporto del calore derivante dalla fissione e alla sua eventuale conversione in altre forme energetiche.

Nonostante i benefici che derivano dall'impiego dell'energia nucleare, permangono alcune criticità significative. Tra queste, il problema dello smaltimento delle scorie radioattive rappresenta una sfida cruciale. I prodotti della fissione sono spesso elementi altamente radioattivi con tempi di dimezzamento molto lunghi, rendendo complessa l'elaborazione di sistemi di confinamento sicuri che impediscano la dispersione nell'ambiente.

Ulteriori preoccupazioni riguardano la sicurezza operativa dei reattori stessi. Data l'elevata pericolosità dei materiali radioattivi utilizzati e dei residui prodotti, è essenziale minimizzare il rischio di incidenti. Questi ultimi possono avere conseguenze devastanti, sia in termini di perdita di vite umane sia per l'impatto ambientale, come dimostrato dal disastro di Chernobyl nel 1986, che provocò un grave rilascio di sostanze tossiche con ripercussioni su scala globale.]

=== La fusione nucleare

La fusione nucleare rappresenta il processo opposto rispetto alla fissione: in questo caso due nuclei leggeri si combinano per formare un nucleo più pesante. Questo meccanismo è tipico delle stelle, incluso il Sole, dove quattro nuclei di idrogeno (protoni) si fondono dando origine a un nucleo di elio composto da due protoni e due neutroni. La fusione avviene attraverso una serie di reazioni intermedie, tra cui la trasformazione di due protoni in due neutroni, con una liberazione significativa di energia.

Nelle stelle, in cui l'idrogeno si trova in abbondanza nello stato ionizzato, le elevate temperature conferiscono ai nuclei un'energia cinetica sufficiente a superare le forze di repulsione elettrostatica, permettendo così la fusione in nuclei più pesanti. Questo stato della materia, composto da particelle ionizzate con energie cinetiche elevate, è conosciuto come plasma.

Per permettere a due nuclei di avvicinarsi sufficientemente per innescare il processo di fusione nucleare, è necessario raggiungere temperature dell'ordine di milioni o decine di milioni di gradi. Tale requisito rende estremamente complesso ottenere artificialmente reazioni di fusione capaci di produrre energia in quantità superiore rispetto a quella necessaria per innescarle.

Nei laboratori, la fusione nucleare non viene generalmente eseguita utilizzando i nuclei dell'idrogeno comune, ma piuttosto sfruttando i nuclei dei suoi isotopi, ovvero il deuterio (#super[2]H), composto da un protone e un neutrone, e il trizio (#super[3]H), formato da un protone e due neutroni. 

$ 
  #hide[]^2_1"H" + #hide[]^3_1"H" -> #hide[]^4_2"He" + "n"
$

La loro reazione porta alla formazione di elio e alla liberazione di energia pari a 17,6 MeV, derivante principalmente dalla differenza tra le masse delle particelle coinvolte inizialmente e quelle finali.

Per poter implementare l'energia generata dalla fusione su larga scala, sarebbe necessario sviluppare un reattore in grado non solo di confinare il plasma, ma anche di riscaldarlo a temperature elevate, superiori a decine di milioni di gradi. I modelli attualmente in fase di studio a livello sperimentale si basano principalmente sull'uso di campi magnetici intensi per il confinamento del plasma, sfruttando il principio secondo cui le particelle ionizzate, essendo elettricamente cariche, rispondono alle forze magnetiche. Il riscaldamento del plasma viene spesso ottenuto mediante correnti elettriche ad alta intensità.

La prospettiva di rendere la fusione nucleare una fonte energetica sostenibile richiede il superamento di sfide tecnologiche considerevoli, implicando investimenti iniziali significativi per la ricerca. Tuttavia, progressi sperimentali realizzati in vari paesi stanno alimentando l'aspettativa che entro pochi decenni sia possibile costruire prototipi funzionanti di centrali nucleari a fusione.

Un evento particolarmente rilevante in questo contesto si è verificato nel dicembre 2022, quando gli scienziati del Lawrence Livermore National Laboratory, un'importante istituzione del Dipartimento dell'Energia degli Stati Uniti, hanno annunciato di aver condotto con successo una fusione nucleare capace di produrre più energia di quella necessaria per l'attivazione del processo. L'esperimento ha impiegato 192 fasci laser concentrati su un piccolo cilindro contenente deuterio e trizio, producendo una quantità sostanziale di energia pur consumando una piccola quantità di combustibile. Questo progresso potrebbe rappresentare un punto di svolta fondamentale verso la produzione di energia abbondante, sicura e ecologica.

== Le particelle elementari

Agli inizi degli anni '30 del Novecento erano conosciute solo quattro particelle fondamentali: il neutrone (scoperto nel 1932), il protone, l'elettrone e il fotone. Fu proprio in quegli anni che lo sviluppo delle tecniche di rilevazione e la nascita degli acceleratori di particelle portarono a un'impressionante espansione del numero di particelle note, che oggi si aggira intorno a circa 200 e potrebbe continuare a crescere.

Sempre nel 1932, il fisico statunitense Carl David Anderson identificò la prima particella di antimateria, il positrone, ovvero l'antiparticella dell'elettrone (anche chiamato antielettrone), la cui esistenza era stata teoricamente prevista pochi anni prima. Tuttavia, occorse più di vent'anni per rilevare la seconda particella di antimateria, ovvero l'antiprotone. Questi risultati furono le prime conferme sperimentali delle previsioni teoriche avanzate nel campo.

Negli anni '30 iniziò anche a prendere forma l'idea che le interazioni a distanza tra i corpi potessero essere spiegate mediante particelle mediatrici. Queste particelle fungono da "collante" nell'interazione, nel senso che lo scambio delle stesse è ciò che genera la forza. Questo approccio fu successivamente consolidato e fornì le basi per le moderne teorie fisiche, con particolare riferimento all'elettrodinamica quantistica, che introdusse ordine nella classificazione delle particelle in base alla loro sensibilità verso diversi tipi di interazione.

La definizione stessa di particella elementare è strettamente connessa ai metodi di ricerca disponibili in una determinata epoca storica. Negli anni '60 si fece strada l'idea che alcune particelle, come il neutrone e il protone, fossero meno elementari di quanto si credesse originariamente, poiché costituite da altre particelle fondamentali, chiamate quark, estremamente difficili da osservare.

Grazie agli avanzamenti tecnologici nel campo degli acceleratori di particelle, la fisica delle particelle ha acquisito una struttura concettuale solida, suffragata da numerosi risultati sperimentali. Lo studio della materia ad altissime energie non solo permette di esplorare i suoi comportamenti a livelli fondamentali, ma si ritiene possa simulare le condizioni dei primi istanti dell'Universo e offrire prospettive per comprendere la realtà del Big Bang.

#note(bottom)[== *🧩* Gli acceleratori di particelle <senza_numero>

Gli acceleratori di particelle rappresentano strumenti fondamentali per l'indagine della materia, permettendo di accelerare particelle elettricamente cariche, quali protoni, elettroni e ioni, attraverso l'impiego di campi elettromagnetici. Questo processo consente di provocare collisioni tra le particelle stesse o con bersagli specifici, allo scopo di analizzare le interazioni che si verificano. Tali collisioni possono generare energia sufficiente a produrre nuove particelle, caratterizzate da una vita media estremamente breve e non osservabili in condizioni normali.

Gli acceleratori si dividono generalmente in base al sistema di accelerazione utilizzato e alla tipologia della traiettoria descritta dal fascio di particelle. Gli acceleratori lineari, che determinano una traiettoria rettilinea, sono progettati per accelerare protoni, elettroni, particelle α e ioni. Essi sono costituiti da una serie di tubi disposti in successione e di lunghezza crescente, posizionati lungo una struttura lineare. Le particelle vengono accelerate per mezzo di campi elettrici alternati e indirizzate verso un bersaglio. Tra gli acceleratori lineari più avanzati figura lo Stanford Linear Collider (SLC), situato negli Stati Uniti, che raggiunge energie superiori ai 100 GeV.

Nel caso degli acceleratori circolari, come ciclotroni, betatroni e sincrotroni, la traiettoria delle particelle viene curvature tramite la forza di Lorentz, la quale è generata da un campo magnetico, mentre l'accelerazione avviene grazie all'azione di campi elettrici o magnetici variabili. Un esempio rappresentativo è il LEP (Large Electron-Positron Accelerator), situato presso il CERN di Ginevra. Questo acceleratore costituisce un anello di accumulazione lungo 27 chilometri e opera su due fasci di particelle, elettroni e positroni, che viaggiano in direzioni opposte e si scontrano frontalmente. Il LEP è in grado di ottenere energie pari a 200 GeV; tuttavia, presso il medesimo anello è in corso la costruzione del LHC (Large Hadron Collider), un acceleratore più potente dotato di magneti estremamente avanzati, che consentiranno di raggiungere energie dell'ordine di 14 TeV (teraelettronvolt = 10#super[12] eV).]

=== L'antimateria

La scoperta del positrone, una particella identica all'elettrone ma con carica positiva, fu il primo riscontro concreto dell'ipotesi secondo cui a ogni particella materiale corrisponde un'antiparticella con massa identica ma caratteristiche opposte, tra cui la carica. Questa teoria, inizialmente formulata dal fisico inglese Paul A.M. Dirac (1902-1984), ricevette ulteriore conferma nel 1956 con l'individuazione dell'antiprotone, un protone con carica negativa. A questa scoperta seguì quella dell'antineutrone, che si distingue dal neutrone per una proprietà magnetica.

La materia e l'antimateria non possono coesistere. Quando una particella incontra la propria antiparticella, si verifica il fenomeno dell'annichilazione: entrambe scompaiono e generano una coppia di fotoni energetici, dai quali possono originarsi nuove particelle con emissione di energia. Questo processo rende ardua l'osservazione diretta delle antiparticelle. I fisici ipotizzano che, nei primissimi istanti di vita dell'Universo, materia e antimateria fossero presenti in proporzioni quasi equivalenti. Tuttavia, la materia avrebbe prevalso grazie all'influenza di una particella speciale, il bosone di Higgs, la cui presenza viene ricercata attraverso i nuovi e potenti acceleratori attualmente in fase di sviluppo.

=== I quark

Nei primi anni '60, il fisico statunitense M. Gell-Mann propose un'ipotesi oggi universalmente accettata secondo cui i protoni e i neutroni che costituiscono il nucleo atomico sarebbero composti da combinazioni di tre particelle fondamentali chiamate quark. Il nome "quark" fu probabilmente ispirato a Gell-Mann da un passaggio enigmatico del romanzo _Finnegans Wake_ di James Joyce, in cui compare la frase: "Three quarks for Muster Mark!"

I quark possiedono una carica elettrica frazionaria, pari a 1/3 o 2/3 della carica elementare dell'elettrone, positiva o negativa, e uno spin pari a 1/2. Gell-Mann ipotizzò inoltre che esistessero sei tipi differenti di quark, ciascuno identificato da un particolare sapore – un termine puramente simbolico che non ha correlazioni con il concetto di sapore comunemente inteso. I sei "sapori" dei quark sono: up (su), down (giù), strange (strano), beauty (bellezza), charm (fascino) e top (alto).

Successivamente, al fine di rispettare il principio di esclusione di Pauli, che si applica a tutte le particelle con spin semintero, venne introdotta una seconda proprietà fondamentale, denominata colore. Tale caratteristica, non correlata al concetto di colore nel senso comune, distingue i quark in tre categorie cromatiche: rosso, blu e verde.

I "sapori" e i "colori" dei quark possono essere interpretati come numeri quantici che definiscono differenti stati di uno stesso tipo di quark. Considerando sei sapori e tre colori, vi sono nove possibili combinazioni. La teoria che analizza il comportamento dei quark in funzione della loro distinzione cromatica è nota come cromodinamica quantistica.

Per ciascun quark esiste un corrispondente antiquark, caratterizzato dal rispettivo antisapore e un colore complementare rispetto al quark primario. Le particelle appartenenti alla stessa famiglia dei neutroni e protoni, note come barioni, sono composte da tre quark, mentre altre particelle più leggere, come i mesoni, contengono solo due quark.

Nel caso del neutrone, la somma algebrica delle cariche frazionarie dei suoi quark è pari a zero, determinando la neutralità elettrica del neutrone stesso. Tuttavia, la presenza di cariche elettriche interne potrebbe spiegare alcune proprietà magnetiche del neutrone che risultano altrimenti difficili da comprendere. 

Il modello a quark dei nucleoni stabilisce che i quark non possono essere osservati in isolamento. Questo fenomeno deriva dal fatto che l'interazione forte, che mantiene i quark uniti all'interno del nucleone, aumenta di intensità con l'aumentare delle distanze tra i quark, analogamente al comportamento di una molla.

Le prove sperimentali dell'esistenza dei quark sono esclusivamente indirette. L'ultima conferma significativa risale al 1994 presso il Fermilab di Chicago. In questa occasione, un gruppo di fisici diretto dall'italiano Giorgio Bellettini rilevò tracce dell'unico quark ancora non direttamente osservato, il quark top, utilizzando l'acceleratore di protoni CDF (Collider Detector at Fermilab).

#figure(
  caption: [I sei quark e le loro caratteristiche principali.],
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
    columns: (5),
    table.header[Sapore][Simbolo][Massa \ (GeV)][Carica (u)][Conferma \ sperimentale],
    [up],  [u],  [0,005],  [+ 2/3],  [1963], 
    [down],  [d],  [0,010],  [– 1/3],  [1963], 
    [strange],  [s],  [0,15],  [– 1/3],  [1974], 
    [charm],  [c],  [1,35],  [+ 2/3],  [1974], 
    [top],  [t],  [>89],  [+ 2/3],  [1994], 
    [beauty],  [b],  [4,5],  [– 1/3],  [1977], 
)  
)

=== L'interazione debole e le interazioni fondamentali

Oltre alle classiche interazioni gravitazionale ed elettromagnetica, e all'interazione nucleare forte responsabile della coesione dei nuclei atomici, esiste un quarto tipo di forza fondamentale: l'interazione debole. Questa agisce su particolari tipi di particelle elementari chiamate leptoni, tra cui si annoverano l'elettrone e il neutrino, ed è responsabile del fenomeno del decadimento radioattivo β nei nuclei.

L'interazione debole ha un'intensità circa 10#super[-10] volte inferiore rispetto a quella elettromagnetica e un raggio d'azione 10#super[-2] volte più piccolo rispetto all'interazione forte. Analogamente a quest'ultima, non esiste una formulazione matematica completa che descriva con precisione il comportamento dell'interazione debole.

Secondo una concezione moderna della fisica, riconducibile alla teoria elettrodinamica quantistica, le quattro interazioni fondamentali sono interpretate come fenomeni dovuti allo scambio di un quanto d'azione tra le particelle coinvolte. In tale contesto, ogni interazione avviene tramite lo scambio di una particolare particella associata.

Nell'interazione gravitazionale il quanto d'azione ipotetico sarebbe il gravitone, che finora non è stato osservato sperimentalmente; per l'interazione elettromagnetica il quanto d'azione è rappresentato dal fotone; per l'interazione forte è il gluone, anche questo previsto solo teoricamente. Infine, per l'interazione debole il quanto d'azione è il bosone intermedio. Quest'ultimo venne identificato sperimentalmente per la prima volta nel 1983 dal gruppo diretto da Carlo Rubbia presso i laboratori del CERN di Ginevra.

Per comprendere il funzionamento del mediatore di una forza, si può analizzare il processo di decadimento β. Secondo il modello a quark dei nucleoni, il decadimento β avviene attraverso diverse fasi: un quark che compone il nucleone si trasforma in un altro quark, emettendo un bosone intermedio. Quest'ultimo decade successivamente producendo un positrone o un elettrone (a seconda del tipo di decadimento β) e un neutrino o un antineutrino.

Uno degli obiettivi principali della fisica moderna è quello di unificare teoricamente le interazioni fondamentali in un unico schema. Questo modello dovrebbe descrivere tutte le forze come manifestazioni diverse di un'unica forza originaria, che si suppone esistesse nei primi istanti di vita dell'Universo.

Negli anni '70 è stata elaborata una teoria che ha raggruppato le forze elettromagnetica e debole sotto il nome di forza elettrodebole. Tuttavia, gli sforzi per includere gli altri tipi di interazioni hanno portato finora alla formulazione di teorie matematicamente complesse, che non hanno ancora trovato conferme sperimentali. La teoria che studia la possibile unificazione delle interazioni fondamentali è nota come Teoria della Grande Unificazione (GUT, Grand Unified Theory).

#figure(
  caption: [Le quattro interazioni fondamentali e le loro caratteristiche.],
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
    table.header[Interazione][Mediatori][Intensità \ relativa][Raddio d'azione],
[gravitazionale], 	[gravitoni], 	[10#super[−39] ], 	[infinito], 
[elettromagnetica], 	[fotoni], 	[10#super[−2] ], 	[infinito], 
[nucleare forte], 	[gluoni], 	[1], 	[10#super[−13] cm], 
[nucleare debole], 	[bosoni intermedi], 	[10#super[−13]], 	[10#super[−15] cm], 
)  
)

=== Le famiglie di particelle

Tra le particelle elementari scoperte fino ad oggi, grazie ai più avanzati acceleratori di particelle, è possibile suddividerle in tre grandi famiglie in base alle interazioni a cui partecipano.

La prima famiglia include i mediatori delle forze fondamentali: il fotone, responsabile della forza elettromagnetica; il gluone, mediatore della forza forte; i bosoni intermedi, legati alla forza debole; e il gravitone che, sebbene ipotetico, rappresenterebbe il mediatore della forza gravitazionale.

La seconda famiglia è quella dei leptoni, che comprende l'elettrone, il neutrino, il muone e la particella tau. Questi interagiscono attraverso la forza debole e, nel caso di particelle cariche come l'elettrone, anche attraverso la forza elettromagnetica. I leptoni sono particelle fondamentali non divisibili e possiedono masse relativamente ridotte o quasi nulle, come nel caso dei neutrini.

La terza famiglia, numericamente più ampia, è costituita dagli adroni. Gli adroni partecipano all'interazione nucleare forte e si dividono in due sottogruppi: i mesoni e i barioni. I mesoni comprendono particelle come i pioni, i kaoni e le particelle eta. I barioni invece includono i nucleoni (protone e neutrone), le particelle lambda, sigma e xi.

A differenza dei leptoni e dei mediatori delle forze fondamentali, gli adroni non sono particelle elementari poiché sono costituiti da quark. I barioni sono formati da tre quark (non necessariamente diversi), mentre i mesoni sono composti da un quark e un antiquark (non necessariamente dello stesso tipo).

#figure(
  caption: [Classificazione delle particelle elementari e loro caratteristiche],   table(
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
  columns: (7),
  table.header[Tipi di particella][][][Simbolo][Quark componenti][Carica elettrica][Antiparticella], 
  table.cell(rowspan: 5)[mediatori o portatori],	[fotone], [], [γ], [-], [0], [],
  [gluone], [],	  [g],  [-],  [0], [],   
  [bosone], [],   [W#super[+]],  [-],  [-1], [],
  [], [], [W#super[--]],  [-],  [-1], [],
  [], [],  [Z#super[0]],  [-],  [0],  [],
  table.cell(rowspan: 6)[leptoni],	[elettrone], [], [e#super[--]],  [-],  [-1], [e#super[+]],   
  [neutrino elettronico], [],	[ν#sub[e]],   [-],   [0],   [#overline[ν]#sub[e]],   [muone], [],  [μ#super[--]],   [-],   [-1],   [μ#super[+]], 
  [neutrino muonico], [],  [ν#sub[μ]],   [-],   [0],   [#overline[ν]#sub[μ]], 
  [tauone],	[], [τ#super[--]],   [-],   [-1],   [τ#super[+]], 
  [neutrino tauonico],	[],  [ν#sub[τ]],   [-],   [0],   [#overline[ν]#sub[τ]],   table.cell(rowspan: 9)[adroni],	table.cell(rowspan: 2)[mesoni],	[pione],   [π+],   [u d],   [+1],   [π#super[--]],   
  [kaone],	[K#super[+]],   [u #overline[s]],   [+1],   [K#super[--]],   
  table.cell(rowspan: 7)[barioni],	[protone],	[p],   [u u d],   [+1],   [p#super[--]],   [neutrone],	[n],   [d d u],   [0],   [#overline[n]#super[0]], 
  [lambda],	 [Λ#super[0]],   [s u d],   [0],   [#overline[Λ]#super[0]],   
  table.cell(rowspan: 2)[sigma],  [Σ#super[+]],   [u u s],   [+1],   [#overline[Σ]#super[+]], 
  [Σ#super[--]],   [d d s],   [-1],   [#overline[Σ]#super[--]],   
  table.cell(rowspan: 2)[xi],	[Ξ#super[0]],   [u s s],   [0],   [#overline[Ξ]#super[0]],  
  [Ξ#super[--]],   [d s s],   [-1], [#overline[Ξ]#super[+]] )  
)

#pagebreak()
#set page(fill: black.lighten(90%))
== *🧩* Approfondimenti <senza_numero>




#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Antiparticella: Particella elementare caratterizzata da una massa identica a quella della particella corrispondente, ma con proprietà opposte, inclusa la carica elettrica.

/ Datazione: Procedura per stimare l'età di una roccia, un fossile o altro materiale, basata sull'analisi del decadimento radioattivo.

/ Difetto di massa: Discrepanza tra la somma delle masse dei nucleoni di un nucleo atomico e la massa totale del nucleo stesso. Secondo la celebre relazione di Einstein che connette massa ed energia, il difetto di massa corrisponde all'energia di legame nucleare, ossia all'energia necessaria per separare un nucleone dal nucleo.

/ Famiglia di particelle: Classificazione delle particelle elementari in tre grandi gruppi: i vettori dell'interazione, i leptoni (comprendenti elettroni e neutrini) e gli adroni suddivisi ulteriormente in barioni (tra cui protoni e neutroni) e mesoni.

/ Famiglia radioattiva: Serie principale che include tre famiglie di elementi radioattivi naturali. Il capostipite della famiglia decade da uno stato instabile attraverso successivi processi radioattivi fino a raggiungere un elemento stabile.

/ Fissione nucleare: Fenomeno che comporta la divisione di un nucleo atomico appartenente a un elemento pesante in frammenti più piccoli, costituiti da nuclei di elementi più leggeri. Questo processo è accompagnato dall'emissione di neutroni e dalla produzione di grandi quantità di energia. I neutroni emessi possono generare una reazione a catena.

/ Fusione nucleare: Reazione attraverso cui due nuclei appartenenti a elementi leggeri si combinano per formare il nucleo di un elemento più pesante, liberando energia.

/ Interazione debole: Forza fondamentale responsabile del processo di decadimento β. Queste interazioni includono: gravitazionale, elettromagnetica, forte e debole. Ciascuna interazione viene mediata da specifiche particelle, note come "quanti d'azione" o vettori dell'interazione. Per l'interazione debole, il quanto d'azione è rappresentato dal bosone intermedio; per l'interazione forte dal gluone; per l'elettromagnetica dal fotone; e per l'interazione gravitazionale dal gravitone, la cui esistenza non è stata ancora verificata sperimentalmente.

/ Interazione nucleare forte: Forza fondamentale che garantisce la coesione tra i nucleoni all'interno del nucleo atomico. Si distingue per la sua elevata intensità e per l'azione estremamente limitata, confinata entro le dimensioni del nucleo stesso.

/ Isotopi: Atomi aventi lo stesso numero di protoni ma un diverso numero di neutroni. Il rapporto tra protoni e neutroni influisce sulla stabilità del nucleo. I nuclei instabili per natura tendono a stabilizzarsi emettendo particelle attraverso vari processi.

/ Neutrino: Particella elementare con una massa estremamente ridotta e priva di carica elettrica, prodotta durante i processi di decadimento nucleare β.

/ Nucleone: Termine che identifica entrambe le componenti principali del nucleo atomico: il protone, dotato di carica positiva, e il neutrone, privo di carica elettrica. Il numero protonico, indicato con _Z_, rappresenta il numero di protoni nel nucleo; _N_ indica il numero di neutroni, mentre _A_, risultante dalla somma di _Z_ e _N_, rappresenta il numero totale dei nucleoni.

/ Particelle elementari: Costituenti fondamentali della materia. Alcune di esse sono indivisibili, mentre altre sono formate da particelle più semplici.

/ Quark: Particella elementare rilevata solo in modo indiretto, costituente base di particelle come protoni e neutroni.

/ Radioattività: Processo per cui il nucleo di alcuni atomi si trasforma spontaneamente attraverso l’emissione di radiazioni corpuscolari o elettromagnetiche. Tale trasformazione, detta decadimento, può avvenire in tre forme principali: il decadimento α, durante il quale vengono emessi nuclei di elio; il decadimento β, con l’emissione di elettroni negativi o positroni; e il decadimento γ, caratterizzato dall’emissione di radiazioni altamente ionizzanti.

/ Tempo di dimezzamento: Intervallo di tempo necessario affinché la quantità di nuclei instabili di un elemento radioattivo si riduca esattamente alla metà.

/ Unità di massa atomica: Sistema di misura utilizzato in ambito atomico e nucleare, definito come un dodicesimo della massa dell’isotopo carbonio-12.