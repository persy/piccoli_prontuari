#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Osservando il cielo notturno, le stelle appaiono "fisse" e sembrano essere disposte come se fossero incastonate su un immenso emisfero, chiamato sfera celeste, posizionato a uguale distanza dalla Terra. Questa sfera celeste mostra un movimento apparente da est verso ovest.

Per identificare la posizione degli astri sulla sfera celeste, sono stati sviluppati diversi sistemi di coordinate basati su punti caratteristici e piani convenzionali. Grazie a osservazioni sempre più precise, ottenute con strumenti astronomici avanzati, si sono evoluti sia il concetto di tempo che i metodi per la sua misurazione.]

== I riferimenti sulla sfera celeste

La sfera celeste, o volta celeste, è immaginata come un'enorme sfera dal raggio infinito, il cui centro corrisponde all'osservatore collocato idealmente al centro della Terra. Questa rappresentazione si basa sull'assunto che la sfera celeste sia una versione enormemente ampliata della sfera terrestre. Di conseguenza, l'equatore celeste si trova sullo stesso piano dell'equatore terrestre, mentre il suo asse di rotazione, definito asse del mondo, è prolungamento dell'asse terrestre.
Per studiare il movimento dei corpi celesti è necessario introdurre riferimenti fissi sulla sfera celeste, utili per definire sistemi di coordinate astronomiche. 

#set figure.caption(position: bottom)
#figure(
  caption: [Elementi di riferimento],
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
    columns: (2),
    table.header[Elemento][Descrizione],
    [Polo Nord e Polo Sud celesti], [I punti in cui l'asse di rotazione terrestre interseca la sfera celeste, dopo essere stato prolungato nelle due direzioni opposte.],
    [Equatore celeste], [Circolo massimo equidistante dai due poli celesti. Questo circolo divide la sfera celeste in due emisferi: settentrionale (boreale) e meridionale (australe). Il suo piano coincide con quello dell'equatore terrestre.], 
    [Paralleli celesti], [Circoli disegnati sulla sfera celeste paralleli all'equatore celeste. Hanno diametri decrescenti mano a mano che ci si avvicina ai poli celesti.],
    [Meridiani celesti], [Circoli massimi sulla sfera celeste, chiamati anche circoli orari poiché ogni ora uno di essi passa davanti a un osservatore. Questi circoli attraversano entrambi i poli celesti e sono perpendicolari all'equatore celeste.],
    [Eclittica], [Percorso apparente che il Sole descrive sulla sfera celeste nell'arco dell'anno. La stessa denominazione si riferisce anche all'orbita della Terra intorno al Sole. L'eclittica è inclinata di circa 23° rispetto all'equatore celeste e lo interseca in due punti chiamati punti equinoziali o equinozi (nodi dell'eclittica). Durante il corso dell'anno, il Sole attraversa questi punti in corrispondenza degli equinozi di primavera e autunno. Il punto di equinozio primaverile viene indicato come punto gamma o primo punto d'Ariete. Il meridiano celeste che passa per i punti equinoziali prende il nome di coluro equinoziale, mentre a una distanza angolare di 90° sui nodi dell'eclittica si trovano i punti solstiziali.],
    [Orizzonte celeste \ o astronomico], [Corrisponde all'intersezione tra la sfera celeste e un piano passante per il centro della Terra e perpendicolare alla verticale rispetto all'osservatore.],
    [Zenit], [Punto in cui la verticale innalzata dalla posizione dell'osservatore terrestre intercetta la sfera celeste.],
    [Nadir], [Punto diametralmente opposto allo zenit.],
    [Circoli verticali], [Circoli massimi che passano per lo zenit e il nadir e sono perpendicolari al piano dell'orizzonte celeste. Il circolo verticale che attraversa anche i poli celesti è definito circolo meridiano o meridiano celeste. Il primo circolo verticale, perpendicolare al circolo meridiano, interseca l'orizzonte celeste nei punti corrispondenti all'est e all'ovest.],
)  
)

== Le coordinate celesti

La disciplina dell'astronomia di posizione si focalizza esclusivamente sulle direzioni relative degli astri e sulle distanze percepite tra essi, le quali vengono descritte mediante misurazioni angolari. Per determinare la collocazione degli oggetti celesti, si impiegano sistemi di coordinate sferiche. La definizione delle coordinate risulta semplificata se si assume che l'osservatore occupi il centro della sfera celeste. Tutti i sistemi di coordinate astronomiche sono caratterizzati da un piano di riferimento che attraversa il centro della sfera celeste e include due punti distintivi della stessa sfera, denominati poli del piano considerato. La localizzazione di ciascun punto sulla superficie della sfera è determinata da due coordinate principali: l'ascissa sferica e l'ordinata sferica. Tra i principali sistemi di coordinate figurano il sistema altazimutale, il primo sistema equatoriale (anche noto come sistema orario), il secondo sistema equatoriale, il sistema di coordinate eclittiche e il sistema di coordinate galattiche.

=== Il sistema orizzontale o altazimutale

Nel contesto specifico del sistema orizzontale o altazimutale, il circolo di riferimento è rappresentato dall'orizzonte visibile all'osservatore, ossia la linea geometrica dell'orizzonte terrestre. Questo sistema utilizza due parametri fondamentali per determinare la posizione angolare degli astri: l'altezza e l'azimut.

L'altezza è definita come l'arco del circolo verticale che intercorre tra l'astro e l'orizzonte, misurato in gradi, minuti e secondi d'arco. Tale parametro varia tra un minimo di 0°, registrato quando l'astro si trova sull'orizzonte, e un massimo di 90°, valore raggiunto quando l'astro coincide con la verticale dell'osservatore, ossia lo zenit:

$ 0° ≤ beta ≤ 90° $

Il complemento dell'altezza viene indicato come distanza zenitale, che rappresenta la distanza angolare tra l'astro e lo zenit (γ).

L'azimut, invece, è l'arco dell'orizzonte compreso tra il punto Sud e il punto di intersezione del circolo verticale che passa per l'astro con l'orizzonte. Esso viene misurato dalla direzione sud verso ovest e varia tra 0° e 360°:

$ 0° ≤ alpha ≤ 360° $

Uno dei vantaggi principali del sistema altazimutale è la possibilità di ottenere direttamente le coordinate di un astro relativamente alla posizione dell'osservatore, poiché tali dati vengono riferiti al suo orizzonte visibile e alla sua verticale. Tuttavia, questo sistema presenta una limitazione significativa: per gli osservatori situati in posizioni diverse dal polo, a causa della rotazione apparente della sfera celeste dovuta alla rotazione terrestre, le coordinate dello stesso oggetto celeste variano sia con la posizione geografica dell'osservatore sia con l'orario di osservazione. Per superare questa problematica, si ricorre ai sistemi di coordinate equatoriali, che garantiscono che almeno una coordinata (nel primo sistema equatoriale) o entrambe (nel secondo sistema equatoriale) rimangano indipendenti dal fattore temporale.

=== Primo sistema di coordinate equatoriali

Questo sistema utilizza come circolo massimo di riferimento l'equatore celeste. Le due principali coordinate in questo contesto sono la declinazione e l'angolo orario. Il circolo orario relativo a un determinato astro è noto come circolo di declinazione. La declinazione rappresenta la distanza angolare dell'astro dall'equatore celeste lungo il rispettivo circolo di declinazione ed è misurata in gradi. Essa varia da 0° a 90° N per gli oggetti situati nell'emisfero boreale e da 0° a 90° S per quelli collocati nell'emisfero australe:

$ 0° ≤ delta ≤ 90° $

L'angolo orario (H) quantifica la distanza angolare tra il mezzocielo (il punto dell'equatore celeste determinato dall'intersezione del meridiano dell'osservatore con i punti zenit e Sud) e il meridiano del corpo celeste osservato. Tale parametro è espresso in ore (h), minuti (min) e secondi (s), con un'origine fissata nel mezzocielo e un incremento verso ovest:

$ 0h ≤ H ≤ 24h $

Si misura in ore (h), minuti (min) e secondi (s), partendo dal mezzocielo e procedendo verso ovest. In questo sistema, la declinazione rimane invariata, ma l'angolo orario, a causa della rotazione apparente della sfera celeste, assume tutti i valori tra 0 e 24 ore nell'arco di un giorno, variando inoltre da punto a punto.

=== Secondo sistema di coordinate equatoriali

Questo sistema utilizza come riferimento principale l'equatore celeste e si basa sulle coordinate declinazione (già affrontata nel caso precedente) e ascensione retta.

L'ascensione retta (AR) rappresenta la distanza angolare tra il meridiano che passa per l'astro e quello che attraversa il primo punto di Ariete. Si misura in ore, minuti e secondi lungo un intervallo da 0 a 24 ore, seguendo la direzione est (senso antiorario), ovvero opposta a quella dell'angolo orario.

$ 0h ≤ \AR ≤ 24h $

Le coordinate definite da questo sistema sono quelle riportate nei cataloghi stellari, negli atlanti celesti e negli annuari, poiché non dipendono dal luogo o dall'ora di osservazione. Tuttavia, anche questo sistema risente del passare del tempo a causa del moto proprio delle stelle e del graduale spostamento dell'origine delle coordinate (punto γ), causato dal moto di precessione dell'asse terrestre.

#note(top)[== *🧩* Sistemi di coordinate eclittiche e di coordinate galattiche <senza_numero>

Il sistema di coordinate eclittiche prende come riferimento l'eclittica, ovvero il circolo massimo sul cui piano si muovono la maggior parte dei corpi celesti del sistema solare. Le sue coordinate sono la latitudine e la longitudine eclittica.

La latitudine eclittica (β) rappresenta l'ampiezza dell'arco di un circolo massimo (chiamato anche circolo di longitudine) compreso tra l'astro e la sua proiezione sull'eclittica. Viene misurata in gradi e varia da 0° a 90° N nell'emisfero settentrionale contenente il polo Nord celeste, oppure tra 0° e 90° S nell'emisfero meridionale contenente il polo Sud.

$ 0° ≤ beta ≤ 90° $

La longitudine eclittica (λ) corrisponde invece all'arco di eclittica intercorrente tra il punto γ e quello attraversato dal circolo di longitudine dell'astro, sul piano dell'eclittica. Si misura in gradi da 0° a 360°, seguendo una direzione verso est, coerente con il senso positivo dell'ascensione retta. Dato che la maggior parte dei pianeti orbita vicino al piano dell'eclittica, questo sistema di coordinate risulta particolarmente utile per affrontare problematiche legate al moto planetario.

$ 0° ≤ lambda ≤ 360° $

Passando al sistema di coordinate galattiche, il riferimento principale è il piano dell'equatore galattico. Anche qui, le coordinate sono la latitudine e la longitudine galattica, definite in maniera analoga alle loro controparti celesti. 

La longitudine galattica ha il suo punto di origine nel luogo dove, visto dal sistema solare, si proietta il centro galattico situato nella costellazione del Sagittario. L'inclinazione dell'arco tra l'equatore galattico e quello celeste è pari a 62°.]

=== Il moto diurno

A causa della rotazione della Terra attorno al proprio asse, la sfera celeste compie un movimento apparente che provoca il sorgere e il tramontare del Sole, delle stelle e degli altri corpi celesti. Nell'arco di un giorno, gli astri ruotano apparentemente da est a ovest, intersecando due volte il meridiano celeste. Al primo incontro, la loro altezza sull'orizzonte raggiunge il massimo, dando origine alla culminazione superiore; al secondo, tocca il minimo, dando luogo alla culminazione inferiore. 

All'equatore, i poli celesti si trovano esattamente all'orizzonte, e tutte le stelle restano visibili per metà della giornata, sorgendo e tramontando muovendosi perpendicolarmente all'orizzonte. Ai poli, invece, l'equatore celeste coincide con l'orizzonte: in questo caso, le stelle si muovono percorrendo traiettorie circolari senza mai sorgere né tramontare. Qui non è possibile osservare alcuna stella appartenente all'altro emisfero celeste.

A latitudini intermedie si presentano situazioni variabili. Alcune stelle, definite circumpolari, si trovano a una distanza dal polo inferiore rispetto alla latitudine dell'osservatore e non tramontano mai. Di queste, è possibile osservare sia la culminazione superiore sia quella inferiore.

== Strumenti di osservazione

Fino all'inizio del XVII secolo, le osservazioni astronomiche si svolgevano esclusivamente a occhio nudo e si focalizzavano principalmente sulla determinazione il più precisa possibile della posizione dei corpi celesti. Sebbene l'occhio umano consenta di stimare la distanza di oggetti vicini, l'osservazione si complica notevolmente quando si vogliono esaminare stelle o pianeti distanti.

L'inizio di una nuova era per l'astronomia avvenne nel 1609, quando Galileo Galilei (1564-1642) perfezionò un rudimentale cannocchiale, precursore del moderno telescopio. Grazie a questo strumento, Galileo riuscì a documentare dettagli fino ad allora sconosciuti come il rilievo lunare, le macchie solari, le fasi di Venere e i quattro principali satelliti di Giove. Inoltre, scoprì che la Via Lattea è composta da un'infinità di stelle.

=== I telescopi

Il telescopio, il cui nome deriva dal greco _têle_ (lontano) e _scopéo_ (guardare), fu introdotto da Isaac Newton (1642-1727). Questo strumento ottico utilizza un obiettivo per catturare la luce proveniente dagli oggetti celesti e focalizzarla, creando così un'immagine che può essere osservata attraverso un oculare oppure registrata su supporti fotografici o elettronici. I telescopi si dividono principalmente in due categorie basate sul tipo di obiettivo utilizzato: rifrattori e riflettori.

Nel telescopio rifrattore, simile a quello inizialmente sviluppato da Galileo, l'obiettivo è costituito da lenti. Tuttavia, uno dei limiti di questa configurazione è l'impossibilità di utilizzare lenti di grande diametro. 

Il telescopio riflettore, invece, impiega uno specchio concavo come obiettivo. Questo specchio riflette la luce verso un secondo specchio, che la invia poi all'oculare o a strumenti per l'analisi della luce. I telescopi riflettori sono generalmente meno costosi da realizzare grazie alla maggiore semplicità nella costruzione degli specchi rispetto alle lenti. La capacità di catturare luce dipende strettamente dal diametro dell'obiettivo: mentre la pupilla umana raccoglie una quantità molto limitata di energia luminosa, grandi specchi ottici possono catturarne enormemente di più. Ciò consente di osservare oggetti celesti estremamente deboli o distanti. Ad esempio, il celebre telescopio di Monte Palomar, negli Stati Uniti, è in grado di rilevare la luce di stelle fino a un milione di volte più deboli rispetto a quelle visibili a occhio nudo.

L'ingrandimento di un telescopio dipende dalla distanza focale dell'obiettivo; tuttavia, per quanto riguarda le stelle, queste appaiono sempre come punti luminosi. L'ingrandimento diventa significativo nell'osservazione di oggetti estesi come i pianeti. Un parametro cruciale per gli astronomi è il potere risolutivo, ossia la capacità del telescopio di distinguere due stelle molto vicine tra loro. Tale caratteristica cresce con il diametro dell'obiettivo. Un'altra qualità fondamentale è la luminosità, ovvero la capacità dello strumento di rilevare oggetti molto deboli, che anch'essa aumenta proporzionalmente al diametro dell'obiettivo.

Oltre alla luce visibile, il cosmo emette radiazioni su tutta la gamma dello spettro elettromagnetico includendo raggi gamma, raggi X, ultravioletti, infrarossi e onde radio. 

Oggi l'osservazione dei raggi gamma e X e l'utilizzo dei radiotelescopi rivestono un ruolo fondamentale in astronomia, astrofisica e cosmologia. I radiotelescopi, spesso caratterizzati da gigantesche antenne paraboliche, raccolgono onde radio emesse dai corpi celesti indirizzandole verso un ricevitore che amplifica e analizza il segnale ricevuto. Mentre i telescopi ottici permettono di osservare fino a qualche miliardo di anni luce di distanza, i radiotelescopi spingono questa capacità oltre i 10 miliardi di anni luce. Grazie alla radioastronomia sono stati scoperti oggetti straordinari come quasar e pulsar, ampliando enormemente la nostra comprensione dell'universo.

=== Effetti dell'atmosfera sulle osservazioni astronomiche

L'osservazione degli astri attraverso telescopi terrestri è significativamente influenzata dalle perturbazioni causate dall'atmosfera terrestre, che incidono sulla qualità delle immagini ottenute e sull'accuratezza delle rilevazioni.

Una delle principali conseguenze di tali interferenze atmosferiche è la deviazione angolare progressiva dei raggi luminosi emessi da una sorgente celeste. Questo fenomeno fa sì che la luce percorra una traiettoria curva, generando un'illusione ottica per l'osservatore, che percepisce l'astro a un'altezza apparente superiore rispetto alla sua effettiva posizione. Questo effetto, noto anche come rifrazione atmosferica, varia in intensità in funzione dell'angolo zenitale; maggiore è l'angolo formato tra la traiettoria del raggio luminoso e la linea dello zenit, più marcato sarà il fenomeno.

In aggiunta, quando un raggio luminoso attraversa l'atmosfera terrestre, parte della sua energia viene assorbita dalla massa d'aria durante il suo percorso. Questo processo di assorbimento atmosferico è particolarmente problematico per osservazioni astronomiche ad elevati angoli zenitali. Inoltre, la turbolenza atmosferica rappresenta un ulteriore limite per gli strumenti astronomici moderni, causando fluttuazioni irregolari nelle immagini osservate e compromettendo il loro fuoco.

== Il tempo in astronomia

In ambito astronomico, la misurazione del tempo si basa su due riferimenti distinti: il tempo solare, associato al movimento diurno del Sole, e il tempo siderale, determinato dal movimento diurno della sfera celeste. Il giorno solare è definito come l'intervallo tra due passaggi consecutivi del Sole sul medesimo meridiano, mentre il giorno siderale corrisponde all'intervallo temporale tra due passaggi successivi di una stella fissa sullo stesso meridiano. A causa del moto terrestre, le durate di questi due giorni non risultano coincidenti.

Entrambe le misurazioni sono considerate tempi locali poiché il loro valore dipende dalla posizione geografica dell'osservatore, ovvero dalla sua latitudine e longitudine. Questa variabilità ha portato alla necessità di introdurre i fusi orari, suddividendo il pianeta in 24 zone ognuna delle quali adotta convenzionalmente lo stesso orario. All'interno di ogni fuso orario viene utilizzata l'ora del meridiano centrale di riferimento; tale ora è in ritardo di un'ora rispetto al fuso immediatamente a est e in anticipo di un'ora rispetto a quello immediatamente a ovest. Il fuso orario primario è quello di Greenwich (Londra), noto come il punto di riferimento globale. Va notato che i confini dei fusi orari seguono spesso contorni irregolari al fine di adattarsi ai limiti amministrativi degli Stati coinvolti.

A differenza del tempo locale, si definisce il tempo universale (TU) come il tempo locale del meridiano di riferimento fondamentale, ovvero quello che passa per l'osservatorio di Greenwich.

=== Calendari
#note(bottom)[== *🧩* Il calendario Gregoriano <senza_numero>

Questo sistema temporale, oggi utilizzato nella maggior parte dei paesi industrializzati, è un calendario solare che conserva tuttavia tracce di antichi modelli lunari nella suddivisione dei mesi e altri dettagli. Le sue origini dirette risalgono al primitivo calendario romano, che fu riformato da Giulio Cesare nel 46 a.C., dando vita al calendario giuliano. La versione giuliana prevedeva anni divisi in 12 mesi e della durata di 365 giorni per tre anni consecutivi, seguiti da un quarto anno di 366 giorni. Il giorno aggiuntivo era collocato dopo il 25 febbraio, corrispondente allora al sesto giorno prima delle calende di marzo (l'inizio del mese). Tale giorno supplementare veniva denominato _bis-sextus_ perché ripeteva il sesto giorno, da cui deriva il termine "anno bisestile".

Nel II secolo fu introdotta la settimana, di origine ebraica, che si sovrappose alle divisioni annuali e mensili. La regola per aggiungere un giorno ogni quattro anni presupponeva che la durata dell'anno tropico (il tempo tra due passaggi consecutivi del sole al primo punto dell'Ariete) fosse di 365,25 giorni solari. Tuttavia, la reale durata dell'anno tropico è leggermente inferiore, pari a circa 365,242 giorni. Questa discrepanza causò un accumulo di errore già rilevabile intorno all'anno 730.

Per correggere tale differenza, papa Gregorio XIII introdusse nel 1582 una riforma che sancì il passaggio al calendario tuttora in uso. Fu stabilito che al giovedì 4 ottobre 1582 seguisse direttamente il venerdì 15 ottobre dello stesso anno, eliminando 10 giorni dal conteggio temporale. Inoltre, si decretò che gli anni divisibili per quattro fossero bisestili e che tra gli anni terminanti con due zeri fossero bisestili solo quelli divisibili per 400.]

I calendari sono sistemi ideati per organizzare in modo sistematico e coerente lunghi intervalli temporali, basandosi sull'osservazione dei fenomeni astronomici. In genere, l'anno viene utilizzato come unità temporale di base. A questa periodicità si è successivamente aggiunta la settimana, che inizialmente assumeva un significato religioso, ma è diventata col tempo uno strumento con valenza civile. Nella storia dell'umanità, i diversi calendari hanno fatto e continuano a fare riferimento a fenomeni legati al sole, alla luna o a entrambi, fondando i loro sistemi su scrupolose ciclicità astronomiche.

Esistono dunque tre tipologie principali di calendari: quelli solari, come il calendario gregoriano, che si basano sul moto apparente del sole tra le costellazioni; quelli lunari, che regolano il tempo secondo il ciclo delle fasi lunari; e quelli lunisolari, che cercano di combinare con precisione entrambe le periodicità. La qualità di un calendario dipende dalla sua capacità di sincronizzarsi accuratamente con i multipli dei periodi astronomici di riferimento. Per migliorare tale precisione si aggiunge periodicamente un giorno o una frazione di tempo all'anno o al mese. Le modalità per apportare queste modifiche diventano sempre più complesse con l'aumentare del livello di accuratezza richiesto.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Eclittica: È il cerchio massimo risultante dall'intersezione del piano dell'orbita terrestre con la sfera celeste. Coincide con la traiettoria apparente che il Sole percorre sulla sfera celeste nel corso dell'anno.

/ Emisfero: Ciascuna delle due porzioni in cui l'equatore suddivide la sfera celeste immaginaria. Si distingue tra emisfero boreale (nord) ed emisfero australe (sud).

/ Mezzocielo: Punto sull'equatore celeste individuato dall'intersezione del meridiano dell'osservatore, che passa per i punti zenit, sud e nadir. Nelle nostre latitudini si colloca approssimativamente a metà strada tra zenit e orizzonte.

/ Rifrazione: Fenomeno per cui una radiazione, attraversando un corpo trasparente, devia la propria traiettoria rispetto alla direzione d'incidenza, seguendo specifiche leggi fisiche.

/ Rotazione apparente: Movimento apparente degli astri causato dalla rotazione della Terra.

/ Sfera celeste: Sfera immaginaria di dimensioni tali da includere tutti gli astri, con l'osservatore terrestre al suo centro. Sulla sua superficie vengono idealmente collocati i corpi celesti.
