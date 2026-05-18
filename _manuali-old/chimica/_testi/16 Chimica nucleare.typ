#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Nelle reazioni nucleari si altera direttamente la struttura interna del nucleo di un atomo, trasformandolo in un elemento completamente diverso. Contrariamente alle reazioni chimiche, che coinvolgono unicamente gli elettroni esterni legati alla formazione dei legami atomici, le reazioni nucleari agiscono sui nucleoni (protoni e neutroni) all'interno del nucleo. 

Queste trasformazioni nucleari liberano grandi quantità di energia, derivanti dall'elevata intensità delle forze che mantengono unite le particelle del nucleo rispetto alle energie più contenute dei legami chimici tra gli atomi. Lo studio della materia in ambito nucleare prese avvio alla fine del XIX secolo (1896) con la scoperta della radioattività naturale. Questo fenomeno coinvolge nuclei instabili che si disgregano emettendo radiazioni di tipo corpuscolare (particelle α e β) o ondulatorio (raggi γ).

Nel 1919 venne individuata la radioattività indotta o artificiale, evento che segnò un importante progresso verso la comprensione e il successivo controllo delle reazioni di fissione nucleare utilizzate per la produzione di energia elettrica. In prospettiva futura si mira anche a sfruttare le reazioni di fusione nucleare come fonte energetica alternativa.]

== La radioattività

La radioattività, scoperta nel 1896 dal fisico francese Henri Becquerel, è un fenomeno in cui un nucleo atomico instabile (radioisotopo o radionuclide) si trasforma spontaneamente emettendo radiazioni (decadimento radioattivo). Questo processo porta alla formazione del nucleo di un elemento differente e stabile o al passaggio del nucleo a uno stato energetico più stabile. A seconda del tipo di decadimento radioattivo, si distinguono i seguenti tipi di radiazioni:  
- Raggi α (alfa)  o particelle α, composti da nuclei di elio (due protoni e due neutroni), con carica elettrica +2;  
- Raggi β (beta)  o particelle β, costituiti da elettroni (β#super[--]) con carica elettrica −1, oppure positroni (β#super[+]) che sono le antiparticelle degli elettroni, con carica elettrica +1;  
- Raggi γ (gamma) , radiazioni elettromagnetiche di altissima energia.  

A seguito dell'emissione della radiazione, il nucleo subisce le seguenti variazioni in termini di numero atomico Z e numero di massa A:  
- Emissione α : Z diminuisce di 2 unità, A diminuisce di 4 unità;  
- Emissione β#super[--] : Z aumenta di 1 unità, A rimane invariato;  
- Emissione β#super[+] : Z diminuisce di 1 unità, A rimane invariato;  
- Emissione γ : Z e A rimangono invariati (generalmente l'emissione γ segue un decadimento α o β e permette al nucleo in uno stato eccitato di raggiungere uno stato più stabile).  

#v(-.3em)
#figure(
  caption: [Principali caratteristiche delle particelle α, β e dei raggi γ],
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
  columns: (4),
  table.header[Caratteristiche][Raggi α][Raggi β][Raggi γ],
  [Natura], [nuclei di elio #box[#place()[#sub[2]]#super[4]He]], [elettroni (e#super[--] e β#super[--])], [onde elettromagnetiche \ (fotoni ad alta energia)],
  [Massa], [4u], [0,00055u], [0],
  [Carica elettrica], [+2], [-1 (e#super[--]) \ +1 (e#super[+])], [0],
  [Capacità di \ penetrazione], [relativamente debole (possono venire fermati da un semplice foglio di carta)], [maggiore dei raggi α (possono venire fermati da un foglio sottile di alluminio)], [assai elevata (per fermarli è necessaria una lastra di piombo dello spessore di diversi centimetri)],
  [capacità ionizzante], [ionizzano le molecole dei gas], [ionizzano le molecole dei gas], [ionizzano gli atomi dei tessuti biologici, causando danni alle cellule],
)  
)

== Cause della radioattività

Nonostante la naturale repulsione tra i protoni dovuta alla loro carica positiva, il nucleo atomico resta coeso grazie alla forza nucleare forte, che coinvolge anche i neutroni. Questa forza agisce solamente su distanze estremamente ridotte ed è praticamente inesistente al di fuori del nucleo stesso. 

Nei nuclei degli elementi pesanti, come quelli dell'uranio, aumenta la probabilità di instabilità a causa dell'elevato numero di nucleoni. Per raggiungere una condizione più stabile, tali nuclei tendono a emettere particelle radioattive. Inoltre, si riscontra una maggiore instabilità nei nuclei con un numero dispari di protoni e neutroni. 

Il decadimento radioattivo segue una legge statistica determinata dal tempo di dimezzamento T#sub[1/2], che rappresenta l'intervallo necessario affinché metà dei nuclei iniziali si disintegri. Durante il processo di decadimento, il nucleo di un radioisotopo si trasforma in un isotopo di un altro elemento, spesso anch'esso instabile. Si sviluppano così catene di decadimenti (serie radioattive) che terminano quando si forma un isotopo stabile. 

In natura esistono tre principali catene di decadimento: quella dell'uranio-238, dell'attinio e del torio, ciascuna culminante con la formazione di isotopi del piombo. 

La radioattività artificiale , invece, fu scoperta nel 1919 dal fisico neozelandese Ernest Rutherford. I processi di disintegrazione nucleare osservati spontaneamente in natura possono essere riprodotti attraverso il bombardamento di nuclei stabili con particelle subatomiche come protoni, particelle β o neutroni. Queste particelle devono essere accelerate fino a raggiungere velocità elevate per aumentare la loro energia cinetica, superando così le intense forze respingenti dei campi elettrici attorno ai nuclei. Questo risultato si ottiene mediante l'uso di acceleratori di particelle, come ciclotroni, sincrotroni e betatroni.  

I radioisotopi artificiali trovano applicazione in numerosi ambiti. Tuttavia, il progresso più rilevante derivato dallo studio della radioattività è stato la possibilità di sfruttare l'immensa energia contenuta nei nuclei atomici. 

#note(top)[== *🧩* L'acceleretore di particelle <senza_numero> 

Gli acceleratori di particelle sono strumenti utilizzati per indagare le proprietà della materia. Essi accelerano particelle elettricamente cariche, come protoni ed elettroni, oltre a ioni, mediante l'uso di campi elettromagnetici e le fanno collidere tra loro o con bersagli specifici per studiare le interazioni risultanti. Le energie prodotte da queste collisioni possono anche dare origine a nuove particelle, dalla durata estremamente breve e non osservabili in condizioni normali.

Gli acceleratori si classificano principalmente in base al sistema di accelerazione e alla traiettoria seguita dalle particelle. Gli acceleratori lineari, che seguono una traiettoria rettilinea, vengono impiegati per accelerare protoni, elettroni, particelle α e ioni. Questi consistono in tubi di lunghezza crescente posizionati in una struttura lineare, dove le particelle vengono accelerate da campi elettrici alternati e indirizzate verso un bersaglio. Tra gli acceleratori lineari più potenti vi è lo SLC (Stanford Linear Collider) negli Stati Uniti, che raggiunge energie superiori ai 100 GeV.

Negli acceleratori circolari, come ciclotrone, betatrone e sincrotrone, la traiettoria delle particelle viene curvata dalla forza di Lorentz generata da un campo magnetico, mentre l'accelerazione viene impressa da campi elettrici o magnetici variabili. Fra gli acceleratori circolari più avanzati si annovera il LEP (Large Electron-Positron Accelerator) del CERN di Ginevra. Il LEP è formato da un anello di accumulazione lungo 27 km che opera su due fasci di particelle (elettroni e positroni) viaggianti in direzioni opposte per farli collidere frontalmente. Con un'energia operativa massima di 200 GeV, sullo stesso anello del LEP è attualmente in costruzione l'LHC (Large Hadron Collider), un acceleratore dotato di magneti estremamente più potenti in grado di raggiungere energie fino a 14 TeV (teraelettronvolt = 10#super[12] eV).]

#figure(
  caption: [Tempi di dimezzamento di alcuni isotopi radioattivi],
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
  columns: (4),
  table.header[Elemento][Radioisotopo][Tempo di \ dimezzamento][Radiazione \ emessa],
[calcio], [#box[#place()[#sub[20]]#super[45]Ca]], [164 giorni], [beta],
[carbonio], [#box[#place(dx: 3pt)[#sub[6]]#super[14]C]], [5730 anni], [beta],
[cesio], [#box[#place(dx: 3pt)[#sub[55]]#super[137]Cs]], [30 anni], [beta, gamma],
[fosforo], [#box[#place()[#sub[15]]#super[32]P]], [14,3 giorni], [beta],
[idrogeno], [#box[#place()[#sub[1]]#super[3]H] (trizio)], [12,26 anni], [beta],
[iodio], [#box[#place(dx: 3pt)[#sub[53]]#super[131]I]], [8,07 giorni], [beta],
[potassio], [#box[#place()[#sub[19]]#super[40]K]], [1,3 · 109 anni], [beta, gamma],
[radio], [#box[#place(dx: 3pt)[#sub[88]]#super[226]Ra]], [1590 anni], [alfa, gamma],
[sodio], [#box[#place()[#sub[11]]#super[24]Na]], [15 ore], [beta],
[stronzio], [#box[#place()[#sub[38]]#super[90]Sr]], [28,1 anni], [beta],
[uranio], [#box[#place(dx: 3pt)[#sub[92]]#super[238]U]], [4,51 · 109 anni], [alfa, gamma],
)  
)

== Misurazione delle radiazioni

Il dispositivo maggiormente impiegato per la rilevazione della radioattività è il contatore Geiger-Müller, che sfrutta il principio di ionizzazione provocata da radiazioni ionizzanti all'interno di un cilindro contenente gas a bassa pressione.

L'attività di una sostanza radioattiva, definita come il numero di disintegrazioni che avvengono per unità di tempo, viene generalmente indicata in curie (simbolo Ci), dove 1 Ci corrisponde a 3,7 · 10#super[10] disintegrazioni al secondo. Tuttavia, l'unità di misura ufficiale nel Sistema Internazionale (SI) è il becquerel (simbolo Bq), equivalente a una disintegrazione al secondo: quindi, 1 Bq rappresenta 2,7 · 10#super[-11] Ci.

Le radiazioni α, β e γ esercitano un'interazione con la materia grazie alle loro proprietà ionizzanti, in grado di modificare la struttura atomica e molecolare del mezzo attraversato. Questi fenomeni possono rompere legami chimici, determinando effetti biologici potenzialmente gravi, specialmente nel caso di danni al DNA presente nei cromosomi cellulari. Gli effetti biologici delle radiazioni vengono classificati tramite due concetti principali: la dose assorbita e la dose equivalente.

Nel Sistema Internazionale, la dose assorbita si misura in gray (simbolo Gy), dove 1 gray corrisponde a una quantità di radiazione che trasferisce un joule di energia per chilogrammo di materiale irradiato, quindi 1 Gy = 1 J/kg. La dose equivalente, invece, è misurata in sievert (simbolo Sv) e rappresenta l'efficacia biologica di una radiazione ionizzante; essa indica la dose necessaria affinché la radiazione produca un effetto biologico comparabile a quello di 1 Gy di raggi X.

== Fissione e fusione Nucleari

Durante i processi di trasformazione nucleare avviene il rilascio di quantità significative di energia, che derivano dalla variazione della massa (Δm) dei nuclei originari secondo la celebre relazione di Einstein: 

$ 
  Delta E = Delta m dot c^2
$

dove c è la velocità della luce (299.792.458 m/s). Questi meccanismi costituiscono il principio alla base della fissione nucleare e della fusione nucleare.

La fissione nucleare consiste nella frammentazione di un nucleo pesante in due (raramente tre) nuclei più piccoli. In tale processo, la massa del nucleo originario risulta superiore alla somma delle masse dei nuclei prodotti, e questa differenza di massa viene convertita in energia.

La fusione nucleare, invece, implica l'unione di due nuclei leggeri per formare un nucleo più pesante; anche in questo caso, la massa complessiva del prodotto finale risulta inferiore rispetto alla somma delle masse dei nuclei iniziali. La frazione di massa "persa" si trasforma anch'essa in energia disponibile.

=== La fissione nucleare

La fissione nucleare può verificarsi spontaneamente, sebbene tale fenomeno sia estremamente raro in natura, oppure essere indotta artificialmente mediante il bombardamento dei nuclei atomici con fasci di neutroni. Questo processo si manifesta principalmente nei nuclei pesanti instabili ed è stato inizialmente osservato nell'isotopo uranio-235. L'uranio-235 costituisce circa lo 0,7% dell'uranio presente naturalmente, il quale è prevalentemente composto da uranio-238. Quando sottoposto al bombardamento con neutroni, l'uranio-235 si frammenta in due prodotti, ad esempio bario-139 e kripto-94, rilasciando contemporaneamente due o tre neutroni.

La fissione nucleare è accompagnata dall'emissione di una considerevole quantità di energia (circa 200 MeV), derivante dal difetto di massa, che viene convertita in energia cinetica dei frammenti generati e in energia termica. Come dimostrato negli studi condotti da Fermi, per avviare e sostenere il processo di fissione è necessario impiegare neutroni a bassa energia, poiché questi ultimi presentano una maggiore probabilità di essere catturati dai nuclei dell'elemento. Per ridurre la loro velocità si utilizzano specifici materiali denominati moderatori, i quali assorbono parte dell'energia cinetica dei neutroni attraverso urti controllati.

I neutroni emessi durante la reazione possono, in condizioni adeguate, provocare la fissione di altri nuclei di uranio, dando vita a una sequenza di eventi in cui vengono generati ulteriori neutroni. Se il processo non è sottoposto a regolazione, questo meccanismo può evolvere in una reazione a catena capace di liberare ingenti quantità di energia.

La reazione a catena non controllata è alla base della tecnologia impiegata nelle bombe atomiche a fissione. In tali ordigni vengono concentrate quantità considerevoli di uranio e altri materiali fissili, generalmente isotopi del plutonio, in uno spazio ristretto. Quando la massa aggregata supera una soglia critica predefinita, il processo della reazione a catena si attiva rapidamente e in maniera altamente efficiente. 

In questo scenario tutti i neutroni generati vengono sfruttati per alimentare ulteriori eventi di fissione, incrementando progressivamente il numero delle reazioni (reazione a catena divergente). Viceversa, qualora una parte dei neutroni venga assorbita da altre sostanze e solo una frazione possa innescare nuove fissioni, il sistema prende il nome di fissione controllata. Questo approccio costituisce la base operativa dei reattori nucleari a fissione, progettati per produrre energia in modo regolato e sicuro.

#note(bottom)[== *🧩* I reattori nucleari <senza_numero> 

Il primo reattore nucleare a fissione fu costruito nel 1942 a Chicago ad opera di Enrico Fermi e dei suoi collaboratori, venendo denominato "pila atomica". Il principio operativo di tale dispositivo è sostanzialmente analogo a quello dei reattori attualmente in utilizzo. Durante quel periodo storico dominato dalla seconda guerra mondiale, lo sviluppo della tecnologia legata alla fissione nucleare fu immediatamente correlato alle sue potenziali applicazioni di natura militare.

Nel giro di pochi anni, alimentati dal timore che la Germania nazista acquisisse la capacità di sfruttare queste tecnologie, gli Stati Uniti realizzarono la prima bomba atomica, la quale venne impiegata sul campo con il bombardamento di Hiroshima il 6 agosto 1945. Questo evento si inserì nel contesto del cosiddetto "Progetto Manhattan", un'iniziativa che riunì i maggiori esperti mondiali di fisica atomica e nucleare sotto la direzione del fisico statunitense J. Robert Oppenheimer (1904-1967).

Dopo la conclusione del conflitto mondiale, si avviò un processo di promozione per un utilizzo esclusivamente pacifico dell'energia nucleare. A partire dal 1955-56 furono costruiti i primi reattori destinati alla produzione di energia elettrica. 

Dal punto di vista funzionale, i reattori nucleari operano come centrali energetiche che convertono l'energia di legame dei nucleoni di alcuni elementi in energia termica, successivamente trasformata in energia elettrica mediante opportuni processi tecnologici.

I reattori nucleari si basano sul processo di fissione e utilizzano principalmente isotopi dell'uranio come materiale attivo. Strutturalmente, sono costituiti da un componente centrale, chiamato nocciolo, dove si verificano le reazioni di fissione, e da una serie di apparecchiature accessorie che hanno il compito di trasportare il calore generato e, in alcuni casi, convertirlo in altre forme di energia.

All'interno del nocciolo, il combustibile nucleare è generalmente disposto sotto forma di barre o pastiglie, intervallate da un materiale moderatore (come acqua, acqua pesante o grafite) incaricato di rallentare i neutroni prodotti durante la fissione. Per regolare la reazione nucleare, vengono introdotte barre di controllo realizzate con materiali capaci di assorbire i neutroni in eccesso.

I rischi correlati all'utilizzo dell'energia nucleare riguardano principalmente la gestione delle scorie. I prodotti della fissione, infatti, sono spesso elementi radioattivi con lunghi tempi di dimezzamento, rendendo difficile la creazione di sistemi sicuri per la conservazione e l'isolamento di tali materiali. Un ulteriore problema riguarda la sicurezza: la pericolosità del combustibile nucleare e dei suoi residui richiede misure rigorose per minimizzare il rischio di incidenti, che, come dimostrato dall'evento di Chernobyl nel 1986, possono causare gravi perdite umane e liberare nell'ambiente grandi quantità di sostanze tossiche.]

== La fusione nucleare  

La fusione nucleare rappresenta il processo opposto rispetto alla fissione: in essa due nuclei di un elemento con basso numero atomico si combinano per formare un nucleo con numero atomico più alto.  

Il caso più comune di fusione è quello che avviene naturalmente nelle stelle, incluso il Sole, dove quattro nuclei di idrogeno (ossia quattro protoni, #box[#place()[#sub[1]]#super[1]H]) si uniscono per generare un nucleo di elio (composto da due protoni e due neutroni, #box[#place()[#sub[2]]#super[4]He]). Questo processo si realizza tramite molteplici reazioni intermedie, tra cui la conversione di due protoni in neutroni, e comporta la liberazione di enormi quantità di energia.  

Le alte temperature presenti nelle stelle conferiscono ai nuclei di idrogeno una quantità di energia cinetica tale da superare le forze di repulsione elettrostatica, permettendo loro di fondersi in nuclei più pesanti. I nuclei di idrogeno, che nelle stelle sono presenti abbondantemente sotto forma di plasma, cioè un gas composto da particelle ionizzate, sono fondamentali per la fusione.  

Perché due nuclei riescano ad avvicinarsi abbastanza da avviare il processo di fusione, occorrono temperature pari a milioni o decine di milioni di gradi. Questo rende estremamente complessa l'attivazione artificiale della fusione e il suo utilizzo per produrre una quantità di energia superiore a quella consumata per generarla.  

Nei laboratori, le reazioni di fusione non sfruttano nuclei di idrogeno ordinario, ma quelli dei suoi isotopi: deuterio (#box[#place()[#sub[1]]#super[2]H]), costituito da un protone e un neutrone, e trizio (#box[#place()[#sub[1]]#super[3]H]), formato da un protone e due neutroni. Questi isotopi reagiscono tra loro per generare elio secondo la seguente reazione:  

$ 
  #hide[]^2_1"H" + #hide[]^3_1"H" -> #hide[]^4_1"He" + n + "energia"
$ 

Questa reazione libera un'energia pari a 17,6 MeV, derivante dalla differenza tra le masse iniziali e finali.  

Un'ulteriore reazione considerata promettente è quella tra deuterio e trizio, quest'ultimo ottenibile tramite la fusione di due nuclei di deuterio o, più facilmente, bombardando il litio-6 con neutroni:  

$ 
  #hide[]^6_3"Li" + n -> #hide[]^4_1"He" + #hide[]^3_1"H" + "energia"
$ 

Per sfruttare l'energia ottenuta dalla fusione sarebbe necessario realizzare un reattore capace di confinare il plasma e riscaldarlo a temperature dell'ordine di decine di milioni di gradi. I reattori sperimentali attualmente in fase di studio utilizzano campi magnetici intensi per confinare il plasma, sfruttando il fatto che le particelle ionizzate, essendo elettricamente cariche, possono essere influenzate dalla forza magnetica. Il riscaldamento del plasma avviene principalmente mediante correnti elettriche molto intense.  

La fusione nucleare è considerata una potenziale fonte energetica del futuro, ma il suo sviluppo richiede la risoluzione di sfide tecnologiche assai complesse e costi iniziali molto elevati per la ricerca. Tuttavia, gli studi condotti in varie nazioni hanno portato a significativi progressi sperimentali, lasciando immaginare la possibilità che nel giro di alcuni decenni si possa costruire un prototipo funzionante di centrale nucleare a fusione.  

Un annuncio particolarmente promettente è arrivato nel dicembre 2022 dagli scienziati del Lawrence Livermore National Laboratory (un centro di ricerca del Dipartimento dell'Energia degli Stati Uniti d'America). Essi hanno dichiarato di aver realizzato una fusione nucleare che, per la prima volta nella storia, ha prodotto una quantità di energia superiore a quella necessaria per attivarla.  

L'esperimento è stato condotto concentrando 192 fasci laser su un piccolo cilindro contenente deuterio e trizio, generando una notevole quantità di energia a fronte di un consumo minimo di combustibile. Questo risultato potrebbe rappresentare una svolta decisiva verso una produzione energetica abbondante, sicura ed ecosostenibile.

== Le particelle elementari  

Negli anni '30, le particelle ritenute fondamentali erano quattro: il neutrone, scoperto nel 1932, il protone, l'elettrone e il fotone. Fu proprio in quel periodo che il progresso delle tecniche di rilevazione, insieme al nascere degli acceleratori di particelle, permise di osservare un numero crescente di particelle, rilevate sia direttamente sia indirettamente. Oggi questo numero si aggira intorno alle 200 e continua probabilmente a crescere.  

Sempre nel 1932, lo stesso anno della scoperta del neutrone, il fisico statunitense Carl D. Anderson identificò la prima particella di antimateria: il positrone, antiparticella dell'elettrone. Si trattava di una scoperta importante poiché la sua esistenza era già stata teorizzata pochi anni prima. Tuttavia, per la rilevazione della seconda antiparticella, l'antiprotone, furono necessari più di vent'anni, a dimostrazione che la teoria richiedeva tempo e strumenti adeguati per affermarsi completamente.  

Negli stessi anni iniziò a emergere un'idea innovativa: le forze che agiscono a distanza e permettono l'interazione tra i corpi potevano essere spiegate attraverso particelle di scambio. Queste particelle, agendo da mediatori, rappresentano il "collante" dell'interazione, poiché è proprio il loro scambio che genera la forza stessa.  

Questa teoria fu in seguito perfezionata e costituisce tutt'oggi la base delle moderne teorie fisiche, in particolare dell'elettrodinamica quantistica. Essa permise di organizzare e classificare le numerose particelle scoperte nel tempo, raggruppandole in base al tipo di interazione a cui risultano sensibili.  

La definizione stessa di particella elementare dipende dai metodi di indagine disponibili in ciascun periodo storico. Negli anni '60 venne avanzata l'ipotesi che alcune particelle, come il neutrone e il protone, non fossero realmente elementari ma costituite da "particelle ancora più fondamentali", ovvero i quark. Questi ultimi sono così difficili da osservare che la loro identificazione richiede tecnologie estremamente avanzate.  

La fisica delle particelle ha raggiunto una solida struttura concettuale, sostenuta da molteplici evidenze sperimentali, grazie all'utilizzo degli acceleratori moderni capaci di raggiungere energie molto elevate. Si ipotizza che lo studio della materia in condizioni di alta energia possa permettere di simulare i primi istanti dell'Universo e comprendere meglio il comportamento della materia durante il Big Bang.  

== L'antimateria  

La scoperta del positrone, una particella con le stesse caratteristiche dell'elettrone ma dotata di carica positiva, fu decisiva per confermare l'ipotesi secondo cui ogni particella materiale ha una corrispondente antiparticella con massa uguale e altre proprietà opposte, come la carica elettrica.  

Teorizzata dal fisico inglese Paul A.M. Dirac, l'esistenza dell'antimateria trovò ulteriore conferma nel 1956 con l'identificazione dell'antiprotone, un protone con carica negativa, seguita dalla scoperta dell'antineutrone, differente dal neutrone soltanto per una proprietà magnetica.  

Materia e antimateria non possono esistere contemporaneamente: quando una particella incontra la sua antiparticella avviene il fenomeno dell'annichilazione. Durante questo processo entrambe scompaiono e vengono convertite in una coppia di fotoni energetici, dai quali possono emergere nuove particelle accompagnate da una significativa liberazione di energia. Questo rende difficile l'osservazione diretta delle antiparticelle.  

Secondo i fisici, nei primi istanti di vita dell'Universo materia e antimateria erano presenti quasi in quantità equivalenti. Tuttavia, la materia ha prevalso grazie al ruolo cruciale di una particella nota come bosone di Higgs. Si ritiene che i nuovi acceleratori, progettati per energie ancora maggiori, saranno in grado di fornire prove dirette dell'esistenza di questa fondamentale particella e del suo ruolo nei meccanismi che regolano l'Universo primordiale.  

=== I quark

Verso la metà del XX secolo, il fisico statunitense Murray Gell-Mann propose un'ipotesi rivoluzionaria, attualmente riconosciuta e accettata nella comunità scientifica, secondo cui le particelle che costituiscono il nucleo atomico, ovvero protoni e neutroni, sarebbero a loro volta formate da una combinazione di tre particelle fondamentali, da lui denominate quark. Il termine "quark" sembra essere stato ispirato da un enigmatico passaggio contenuto nel romanzo _La veglia di Finnegan_ di James Joyce, dove si legge: "Three quarks for Muster Mark!".

I quark si distinguono per possedere una carica elettrica frazionaria, positiva o negativa, equivalente a 1/3 o 2/3 della carica elementare dell'elettrone, e presentano uno spin pari a 1/2. Secondo Gell-Mann, esistono sei tipi di quark, ciascuno caratterizzato da un attributo noto come "sapore", un concetto puramente convenzionale che non corrisponde al significato associato ai sapori percepiti sensorialmente. I sei sapori identificati sono: up (su), down (giù), strange (strano), beauty (bellezza), charm (fascino) e top (alto).

Per soddisfare il principio di esclusione di Pauli, applicabile alle particelle con spin semintero, Gell-Mann introdusse inoltre un'altra proprietà fondamentale, definita "colore", la quale, analogamente al concetto di sapore, non ha alcuna correlazione con il significato comunemente attribuito ai colori. Ogni quark, dunque, può assumere uno dei tre "colori": rosso, blu o verde. I sapori e i colori possono essere considerati numeri quantici che descrivono i diversi stati possibili di un quark, generando un totale di nove combinazioni (sei sapori moltiplicati per tre colori).

Il comportamento dei quark e delle loro interazioni è spiegato attraverso la teoria nota come cromodinamica quantistica (QCD). Per ogni tipo di quark esiste un corrispondente antiquark, caratterizzato da un antisapore e associato a un anticolore. Le particelle appartenenti alla stessa famiglia dei protoni e neutroni, i cosiddetti barioni, sono costituite da combinazioni di tre quark. Al contrario, le particelle mesoniche, che risultano più leggere, sono composte da coppie di quark e antiquark.

La somma algebrica delle cariche frazionarie dei quark che costituiscono un neutrone risulta zero, coerentemente con il fatto che il neutrone ha carica nulla. Tuttavia, la distribuzione interna delle cariche potrebbe fornire una spiegazione teorica alle proprietà magnetiche osservate nel neutrone, altrimenti difficili da giustificare. Secondo il modello a quark dei nucleoni, i quark non possono essere isolati individualmente; ciò è dovuto alla natura dell'interazione forte che li lega all'interno del nucleone: tale forza aumenta progressivamente quando i quark vengono allontanati tra loro, seguendo un comportamento simile a quello di una molla.

Le evidenze sperimentali sull'esistenza dei quark risultano indirette ma significative. L'ultima conferma risale al 1994 ed è stata ottenuta presso il Fermilab di Chicago, dove un team guidato dal fisico italiano Giorgio Bellettini ha individuato tracce dell'unico quark precedentemente non osservato: il quark top. Questo risultato è stato raggiunto grazie agli esperimenti condotti con il Collider Detector at Fermilab (CDF), un acceleratore di protoni progettato per indagare sulle proprietà delle particelle fondamentali. 

#figure(
  caption: [I sei quark e le loro caratteristiche principali],
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
  columns: (5),
  table.header[Sapore][Simbolo][Massa / (GeV)][Carica][Conferma \ Sperimentale],
  [up], [u], [0,005], [+2/3], [1963],
  [down], [d], [0,010], [-1/3], [1963],
  [strange], [s], [0,15], [-1/3], [1974],
  [charm], [t], [1,35], [+2/3], [1974],
  [top], [c], [>89], [+2/3], [1994],
  [beauty], [b], [4,5], [-1/3], [1997],
)  
)

=== L'interazione debole e le interazioni fondamentali

L'elenco delle possibili interazioni tra i corpi comprende quattro forze fondamentali: l'interazione gravitazionale, l'interazione elettromagnetica, l'interazione nucleare forte — responsabile della coesione dei nuclei atomici — e infine l'interazione debole. Quest'ultima opera su particolari tipi di particelle elementari chiamate leptoni, tra cui l'elettrone e il neutrino, ed è implicata nel fenomeno del decadimento radioattivo β all'interno dei nuclei.

L'interazione debole si distingue per due caratteristiche principali: è circa 10#super[-10] volte meno intensa dell'interazione elettromagnetica e possiede un raggio d'azione ben più ridotto, pari a circa 10#super[-2] volte quello dell'interazione forte. Analogamente a quest'ultima, non esiste una formula matematica che descriva esplicitamente il comportamento dell'interazione debole. Tuttavia, nella moderna interpretazione della fisica — basata sulla teoria dell'elettrodinamica quantistica — tutte e quattro le interazioni fondamentali vengono descritte come il risultato dello scambio di "quanti d'azione" tra i corpi coinvolti. In questo contesto, ciascuna interazione è mediata da una particolare particella.

Per l'interazione gravitazionale il quanto d'azione ipotetico è il gravitone, una particella che finora non è stata osservata. L'interazione elettromagnetica è mediata dal fotone, mentre l'interazione forte si basa sul gluone, la cui esistenza è prevista teoricamente ma non ancora completamente verificata. Infine, l'interazione debole è associata ai bosoni intermedi — osservati per la prima volta nel 1983 dal gruppo di Carlo Rubbia presso i laboratori del CERN di Ginevra.

Un esempio del ruolo dei mediatori di forza è evidente nel processo di decadimento β. Secondo il modello a quark dei nucleoni, tale fenomeno si svolge in diverse fasi: uno dei quark che compongono il nucleone si trasforma in un quark di tipo diverso, emettendo un bosone intermedio. Questo bosone decade successivamente in un positrone (o un elettrone, a seconda del tipo di decadimento β) e in un neutrino (o antineutrino).

Uno degli obiettivi principali della fisica contemporanea consiste nell'unificare tutte le interazioni fondamentali in un unico modello teorico. Secondo questa visione, ciascuna forza rappresenterebbe una manifestazione diversa di una singola forza originaria, presumibilmente presente nei primi istanti di vita dell'Universo. Una parziale realizzazione di questo concetto si trova nella teoria elettrodebole formulata negli anni '70, che combina le interazioni elettromagnetica e debole in un'entità comune. Tuttavia, gli sforzi per includere anche le interazioni gravitazionale e forte non hanno ancora prodotto risultati sperimentalmente verificabili, sebbene abbiano dato vita a teorie estremamente complesse dal punto di vista matematico.

Lo studio delle interazioni fondamentali e della loro possibile unificazione rientra nella ricerca sviluppata dalla Teoria della Grande Unificazione (GUT, Grand Unified Theory).

#figure(
  caption: [Le quattro interazioni fondamentali e le loro caratteristiche],
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
  columns: (4),
  table.header[Interazione][Mediatori][Intensità \ relativa][Raggio d'azione],
  [Gravitazione], [gravitoni], [10#super[-39]], [infinito],
  [Elettromagnetismo], [fotoni], [10#super[-2]], [infinito],
  [Forza nucleare forte], [gluoni], [1], [10#super[-13] cm],
  [Forza nucleare debole], [bosoni intermedi], [10#super[-13]], [10#super[-15] cm],
)  
)

=== Le famiglie di particelle

Le particelle elementari menzionate finora, insieme a molte altre scoperte grazie all'uso dei più avanzati acceleratori di particelle attualmente disponibili, vengono generalmente classificate secondo uno schema che le suddivide in tre grandi famiglie, distinguendole in base al tipo di interazione cui sono soggette.

La prima famiglia include le particelle che fungono da mediatori delle forze fondamentali. Tra queste si annoverano il fotone, che è responsabile della trasmissione della forza elettromagnetica; il gluone, associato alla forza forte; i bosoni intermedi, che mediano la forza debole; e ipoteticamente il gravitone, teorico mediatore della forza gravitazionale.

La seconda famiglia è composta dai leptoni, che comprendono particelle quali l'elettrone, il neutrino, il muone e la particella tau. I leptoni partecipano alle interazioni debole ed elettromagnetica, presentano masse relativamente basse o quasi nulle (come nel caso dei neutrini) e sono considerati particelle fondamentali, non ulteriormente divisibili.

La terza famiglia, più numerosa rispetto alle precedenti, è costituita dagli adroni, i quali interagiscono attraverso la forza nucleare forte. Gli adroni vengono ulteriormente suddivisi in due sottocategorie: i mesoni e i barioni. I mesoni includono particelle come pioni, kaoni e particelle eta, mentre i barioni comprendono particelle più massicce, come nucleoni (protone e neutrone), particelle lambda, sigma e xi.

Contrariamente ai leptoni, gli adroni non sono particelle fondamentali, poiché sono costituiti da quark. I barioni sono formati da un aggregato di tre quark (non necessariamente differenti), mentre i mesoni sono composti da un quark e un antiquark, anche in questo caso non necessariamente dello stesso tipo.

#figure(
  caption: [Classificazione delle particelle elementari e loro caratteristiche],   table(
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
#set page(fill: main_tecnologia.lighten(90%))
== Glossario <senza_numero> 

/ Radioattività: Fenomeno in cui nuclei instabili emettono spontaneamente radiazioni (raggi α, β o γ) trasformandosi in nuclei più stabili.  
/ Tempo di dimezzamento: Periodo necessario affinché si disintegri la metà dei nuclei di un elemento radioattivo.  
/ Radioattività artificiale o indotta: Processo che prevede la disintegrazione di nuclei stabili attraverso il bombardamento con particelle, generando radioisotopi artificiali.  
/ Difetto di massa: Differenza tra la massa sperimentale di un nucleo e la somma delle masse dei nucleoni considerati singolarmente.  
/ Fissione nucleare: Fenomeno in cui un nucleo, bombardato con neutroni, si divide in due (o tre) nuclei più leggeri, liberando energia e neutroni che possono causare ulteriori fissioni.  
/ Fusione nucleare: Reazione in cui due nuclei atomici leggeri si uniscono formando un nucleo più pesante, accompagnata da un rilascio di energia.









