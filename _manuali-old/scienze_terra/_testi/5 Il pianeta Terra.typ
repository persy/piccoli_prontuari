#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La Terra presenta caratteristiche geofisiche che la discostano dalla configurazione sferica ideale; essa è infatti leggermente schiacciata ai poli e rigonfia lungo la linea equatoriale, conformandosi alla figura del geoide. I suoi principali moti astronomici sono quelli di rotazione sul proprio asse e di rivoluzione attorno al Sole; tali movimenti, congiuntamente all'inclinazione dell'asse terrestre, determinano fenomeni astronomici fondamentali quali l'alternanza tra dì e notte e la variabilità della loro durata nell'arco dell'anno, il ciclico susseguirsi delle stagioni e la formazione delle zone climatiche astronomiche sulla superficie planetaria.]

== La forma della Terra

Già diversi secoli prima dell'era cristiana, i filosofi greci avevano concluso che la Terra non fosse piatta, come comunemente si pensava all'epoca, bensì di forma sferica. Tale intuizione si basava su una serie di prove indirette, fra cui se ne possono evidenziare due particolarmente significative.

La prima riguarda l'osservazione del comportamento delle navi che si allontanano verso il mare aperto: queste sembrano gradualmente affondare. In particolare, lo scafo sparisce per primo, seguito dalle vele. Se la Terra fosse stata una superficie piatta, la nave sarebbe semplicemente diventata sempre più piccola man mano che si allontanava, ma avrebbe continuato a essere visibile nella sua interezza.

La seconda prova è legata all'osservazione delle stelle. Se due persone situate in località diverse osservassero la medesima stella nello stesso momento, su una Terra piatta l'astro risulterebbe alla stessa altezza sull'orizzonte per entrambi. Invece, a causa della curvatura terrestre, la stella viene percepita a differenti altezze in base alla latitudine degli osservatori.

Nonostante queste evidenze della forma sferica, la Terra non possiede una sfericità perfetta. Essa presenta infatti un rigonfiamento lungo l'area equatoriale e uno schiacciamento alle estremità polari. Questo fenomeno, per quanto minimo (il raggio equatoriale eccede quello polare di circa 21 chilometri), conferisce alla Terra una forma assimilabile a un ellissoide di rotazione, derivato dalla rotazione di un'ellisse attorno al proprio asse minore.

La definizione di "prima approssimazione" per questa forma è però necessaria, poiché la distribuzione non uniforme dei materiali interni della Terra e la presenza di montagne e depressioni sulla sua superficie rendono la sua geometria più complessa. Per descriverla con maggiore precisione, si ricorre al concetto di geoide, una figura idealizzata in cui ogni punto della superficie è perpendicolare alla direzione del filo a piombo. Se la Terra fosse composta da materiali perfettamente omogenei, il geoide coinciderebbe con l'ellissoide. Tuttavia, nella realtà, nessun punto del geoide si trova a oltre 200 metri di distanza dall'ellissoide di riferimento.

== Le dimensioni della Terra

#set figure.caption(position: bottom)
#figure(
  caption: [La Terra in cifre],
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
  table.header[Caratteristica][Valore],
[raggio \ equatoriale (R#sub[e])], [6378 km],
[raggio \ polare (R#sub[p])], [6357 km],
[massa], [6 \u{00D7} 1027 g],
[volume], [1,083 \u{00D7} 1027 cm#super[3]],
[densità], [5,52 g/cm#super[3]],
[gravità \ superficiale], [9,8 m/s#super[2]],
[velocità di fuga], [11,2 km/s],
[schiacciamento \ [(R#sub[e] - R#sub[p]) / R#sub[e]]], [0,0034],
[superficie \ totale], [5,1 \u{00D7} 108 km#super[2]],
[superficie delle \ terre emerse], [1,49 \u{00D7} 108 km#super[2]],
[superficie \ degli oceani], [3,61 \u{00D7} 108 km#super[2]],
[altitudine \ media delle \ terre emerse], [840 m],
[profondità \ media degli \ oceani], [3900 m],
)  
)

Fin dall'antichità, ci si è impegnati a misurare le dimensioni della Terra attraverso metodi relativamente semplici ma sorprendentemente accurati rispetto ai risultati ottenuti in epoca moderna con strumenti tecnologici avanzati.

Un esempio emblematico di questa capacità risale al 240 a.C., quando Eratostene di Cirene riuscì a calcolare con notevole precisione la circonferenza terrestre. Eratostene seppe che, a Siene (l'attuale Assuan in Egitto), vi era un pozzo dove il Sole si rifletteva direttamente sul fondo ogni anno il 21 giugno a mezzogiorno, un chiaro segno che in quel momento il Sole era esattamente sopra la verticale del luogo. Nello stesso istante ad Alessandria, posizionata più a nord rispetto a Siene, il Sole non era perfettamente verticale ma inclinato. Misurando l'angolo di inclinazione del Sole rispetto alla verticale ad Alessandria (circa 7°, pari a un cinquantesimo dell'angolo giro), Eratostene stabilì che tale angolo equivaleva anche alla distanza angolare tra le due città.

Conoscendo già la distanza lineare tra Alessandria e Siene (stimata in circa 5000 stadi), Eratostene applicò una semplice proporzione matematica per calcolare la circonferenza terrestre: se 360° rappresentavano l'intero angolo giro, allora i 7° fra Siene e Alessandria corrispondevano alla porzione relativa alla distanza tra le città. Il risultato indicava una circonferenza terrestre di circa 257 mila stadi, equivalente a 39 375 chilometri.

È impressionante notare quanto questa stima sia vicina al valore reale oggi accertato con tecnologie moderne: la misura ufficiale della circonferenza lungo un meridiano è infatti pari a 40 009 chilometri.

Oggi, grazie a sofisticati strumenti montati su satelliti artificiali che orbitano intorno alla Terra, è possibile ottenere misurazioni estremamente precise delle sue dimensioni e delle sue caratteristiche fisiche.

== L'orientamento

Orientarsi, nel suo significato originario, vuol dire "trovare l'oriente", ossia il punto in cui sorge il Sole (dal latino _oriri_, nascere). In senso più ampio, significa riuscire a determinare la direzione da seguire per arrivare a un luogo specifico. Le tecniche di orientamento più immediate si basano sull'individuazione di punti di riferimento universali, utili per non smarrirsi anche in ambienti completamente nuovi. 

Tra questi, i più antichi e fondamentali sono i quattro punti cardinali: Nord, Sud, Est e Ovest. Essi si identificano sulla linea dell'orizzonte, ossia quella che dà l'impressione che terra e mare si congiungano con il cielo. L'Est (E) corrisponde al luogo da cui il Sole sorge, il Sud (S) è nella direzione del Sole durante il mezzogiorno solare, l'Ovest (O o W) è dove il Sole tramonta, mentre il Nord (N) si trova nella direzione opposta al Sud oppure in quella indicata dalla Stella Polare. Più nel dettaglio, nei giorni degli equinozi, Est e Ovest coincidono precisamente con i punti sulla linea d'orizzonte in cui il Sole nasce o si ritira. Queste direzioni formano tra loro angoli perpendicolari, permettendo di identificare gli altri tre punti cardinali una volta che ne è stato stabilito almeno uno.

=== Orientarsi con la bussola

La bussola è uno strumento indispensabile per l'orientamento, formato da un quadrante che mostra i quattro punti cardinali insieme a quelli intermedi (come NE, NO, SE), disposti in quella che viene chiamata la rosa dei venti. Al centro del quadrante ruota un ago calamitato di acciaio, sostenuto da un perno, che ha la capacità di allinearsi al campo magnetico terrestre lungo l'asse Nord-Sud. Una delle punte di questo ago indica il Nord magnetico del pianeta. Una volta individuato il Nord, si potrà facilmente dedurre che il Sud si trova dalla parte opposta, l'Est alla propria destra e l'Ovest alla propria sinistra.

=== Orientarsi con il Sole

Il movimento apparente del Sole nel cielo rappresenta un utile alleato per orientarsi. Seguendo il suo tragitto dall'alba al tramonto, si possono fissare l'Est al punto del suo sorgere e l'Ovest al punto in cui tramonta. Per determinare il Sud a qualsiasi ora durante il giorno nell'emisfero nord si può anche sfruttare un orologio a lancette. Posizionando l'orologio in piano con il quadrante rivolto verso l'alto e facendo ruotare l'intero orologio finché la lancetta delle ore punta verso il Sole, la bisettrice dell'angolo formato fra la lancetta delle ore e la linea immaginaria che collega il centro dell'orologio alla cifra 12 indicherà la direzione del Sud.

=== Orientarsi con le stelle

Durante la notte, nell'emisfero settentrionale, la Stella Polare è un riferimento essenziale per trovare il Nord. Questa stella mantiene una posizione apparentemente immutabile nel cielo poiché è allineata con l'asse di rotazione terrestre, a differenza delle altre stelle che sembrano ruotarle attorno. Per localizzarla, è necessario prima individuare l'Orsa Minore (o Piccolo Carro), la costellazione di cui fa parte, aiutandosi con l'Orsa Maggiore (o Grande Carro), facilmente riconoscibile per la sua forma caratteristica.

Nell'emisfero meridionale, dove la Stella Polare non è visibile, ci si orienta con la Croce del Sud. Questa è formata da quattro stelle disposte a creare una figura simile a una croce, il cui punto di intersezione centrale indica sempre il Sud.

== I riferimenti sulla superficie terrestre

Per individuare in modo univoco un punto su una superficie sferica, come la volta celeste o la superficie terrestre, è necessario impiegare opportuni sistemi di riferimento che consentano di definire coordinate precise. Nel caso del nostro pianeta, si utilizza un sistema di riferimento basato su un reticolato geografico costituito da meridiani e paralleli, immaginando di tracciare queste circonferenze sulla superficie terrestre.

=== Meridiani e paralleli

I meridiani, che derivano dal termine latino "meridies" (mezzogiorno), sono circoli massimi che attraversano i poli e vengono generati intersecando la Terra con innumerevoli piani passanti per l'asse terrestre. In tal modo si definiscono infinite circonferenze immaginarie, tutte uguali e lunghe circa 40.000 km, note come circoli meridiani. Ogni cerchio si suddivide in due semicirconferenze: il meridiano e l'antimeridiano. Sebbene i meridiani siano teoricamente infiniti, per convenzione si considerano solo 360 meridiani geografici, distanziati tra loro da un arco di ampiezza pari a 1°.

I paralleli, invece, risultano dall'intersezione della superficie terrestre con piani immaginari paralleli tra loro e perpendicolari all'asse terrestre. Si ottengono così infinite circonferenze immaginarie, la cui lunghezza decresce progressivamente procedendo dall'Equatore verso i poli, passando da circa 40.000 km a pochi punti geometrici. L'Equatore costituisce il parallelo principale, essendo il circolo massimo ottenuto intersecando la superficie terrestre con un piano perpendicolare all'asse terrestre che attraversa il centro della Terra. Tra i paralleli più noti ci sono i due circoli polari (Artico e Antartico) e i Tropici (del Cancro e del Capricorno), situati rispettivamente a nord e a sud dell'Equatore.

=== Reticolato geografico

Meridiani e paralleli intersecandosi a angoli retti formano il reticolato geografico, una rete immaginaria che avvolge la Terra con maglie dalla forma di trapezi sferici (tranne quelle triangolari verso i poli). Per la costruzione di un sistema di coordinate è imprescindibile fissare dei riferimenti specifici. Il meridiano fondamentale è il meridiano di Greenwich, che attraversa l'osservatorio astronomico vicino a Londra. L'antimeridiano associato, noto come meridiano 180°, taglia l'Oceano Pacifico. Nelle cartografie italiane, il meridiano di riferimento è quello passante per l'osservatorio di Monte Mario a Roma.

Per quanto riguarda i paralleli, il principale è l'Equatore, che suddivide la Terra in due emisferi: quello boreale (tra Equatore e Polo Nord) e quello australe (tra Equatore e Polo Sud).

=== Le coordinate geografiche

La posizione esatta di qualsiasi luogo sulla superficie terrestre può essere determinata attraverso le coordinate geografiche: latitudine, longitudine e altitudine.

La latitudine (φ) indica la distanza angolare di un punto rispetto all'Equatore ed è misurata in gradi e frazioni di grado lungo il meridiano che passa per quel punto. Può variare tra 0° e 90° Nord se il punto si trova a nord dell'Equatore e tra 0° e 90° Sud se si trova a sud. I punti situati sull'Equatore hanno una latitudine di 0°.

La longitudine (λ) esprime la distanza angolare di un punto rispetto al meridiano fondamentale ed è misurata in gradi e frazioni di grado lungo il parallelo del punto. La longitudine può essere compresa tra 0° e 180° Est (se il punto è a est del meridiano fondamentale) o tra 0° e 180° Ovest (se il punto è a ovest). I punti lungo il meridiano fondamentale hanno una longitudine pari a 0°.

L'altitudine rappresenta la distanza verticale di un luogo rispetto al livello medio del mare, stabilito come superficie di riferimento.

== I movimenti terrestri

La Terra e gli altri pianeti del Sistema Solare si muovono seguendo un duplice movimento: ruotano attorno al proprio asse e orbitano intorno al Sole. Oltre a questi moti ben noti e facilmente osservabili, grazie ai fenomeni che essi generano, la Terra è coinvolta anche in altre dinamiche, chiamate moti millenari, le cui conseguenze ci appaiono meno immediate.

=== Il moto di rotazione

La Terra effettua un moto di rotazione attorno al proprio asse, muovendosi da ovest verso est, in direzione opposta rispetto all'apparente movimento diurno del Sole e degli astri sulla sfera celeste. Questo moto definisce il giorno, la cui durata varia a seconda del sistema di riferimento adottato. Il giorno sidereo, che rappresenta l'intervallo tra due passaggi consecutivi di una stella su un determinato punto della superficie terrestre, dura 23 ore, 56 minuti e 4 secondi. Il giorno solare, invece, corrisponde al tempo intercorrente tra due transiti consecutivi del Sole nel punto più alto dell'orizzonte di uno stesso luogo; ha una durata leggermente maggiore, pari a 24 ore, ovvero 3 minuti e 56 secondi in più rispetto al giorno sidereo.

Durante la rotazione, tutti i punti sulla superficie terrestre effettuano un giro completo di 360° nell'arco di un giorno con velocità angolare costante, tranne ai poli, dove questa velocità è pari a zero. La velocità lineare di un punto, che rappresenta la distanza percorsa in un'unità di tempo, varia invece in funzione della latitudine. Essa raggiunge valori massimi all'Equatore, dove la circonferenza descritta durante la rotazione è maggiore, e si azzera ai poli.

La prima prova sperimentale della rotazione terrestre risale al 1792 e fu effettuata dall'astronomo italiano G.B. Guglielmini. Egli osservò uno spostamento di 17 mm verso est rispetto alla verticale quando lasciò cadere liberamente un oggetto da un'altezza di 100 metri. Questo fenomeno si spiega accettando l'idea che la Terra ruoti da ovest verso est: il corpo in caduta conserva per inerzia la velocità di rotazione iniziale della quota da cui viene rilasciato, superiore rispetto a quella del punto d'arrivo più vicino al centro terrestre.

Nel 1851 il fisico francese J. L. Foucault dimostrò in modo ancora più evidente il moto di rotazione con un esperimento celebre condotto al Pantheon di Parigi. Utilizzò un pendolo costituito da un filo d'acciaio lungo circa 67 metri al quale era sospesa una pesante sfera di cannone dotata di una punta. Sotto il pendolo fu preparato uno strato sottile di sabbia per registrare i movimenti della punta durante l'oscillazione nord-sud. Secondo le leggi della fisica, il piano di oscillazione di un pendolo libero dovrebbe rimanere invariato nello spazio. Tuttavia, le tracce lasciate sulla sabbia indicavano uno spostamento apparente di tale piano. Questo fenomeno non poteva essere attribuito a un cambiamento della posizione del pendolo stesso; dunque, si dedusse che fosse la superficie terrestre sotto il pendolo a ruotare.

=== Il moto di rivoluzione

La Terra descrive un movimento di rivoluzione attorno al Sole in direzione antioraria, se osservato dal polo Nord celeste, seguendo un'orbita ellittica con un grado di eccentricità relativamente basso. L'eccentricità dell'orbita terrestre, definita dal rapporto tra la distanza del Sole dal centro dell'ellisse e il semiasse maggiore dell'orbita stessa, è pari a 0,017. In confronto, una circonferenza possiede un'eccentricità pari a zero. 

In conformità alla prima legge di Keplero, la distanza massima della Terra dal Sole, nota come afelio, raggiunge i 152 milioni di chilometri, mentre la distanza minima, denominata perielio, si riduce a 147 milioni di chilometri, determinando una distanza media di circa 149,6 milioni di chilometri. Durante il percorso orbitale intorno al Sole, la velocità di rivoluzione della Terra varia secondo la seconda legge di Keplero: al perielio la velocità raggiunge circa 30,3 km/s, mentre all'afelio diminuisce a circa 29,3 km/s. 

La durata complessiva del moto di rivoluzione definisce il concetto di anno, che varia in base al riferimento adottato. L'anno solare, ossia l'intervallo che intercorre tra due passaggi consecutivi del Sole allo zenit dello stesso tropico, ammonta a 365 giorni, 5 ore e 48 minuti. Tale durata risulta circa 20 minuti inferiore rispetto all'anno sidereo, che si calcola come l'intervallo tra due successivi ritorni del Sole nella medesima posizione rispetto alle stelle fisse, con una durata di 365 giorni, 6 ore e 9 minuti.

Una delle evidenze empiriche del moto di rivoluzione terrestre è fornita attraverso l'analisi dello spostamento Doppler della luce stellare. Misurando la frequenza delle onde luminose provenienti da una stella, si osserva che durante una parte dell'anno la Terra si avvicina alla stella osservata, mentre sei mesi dopo il pianeta si allontana da essa.

Un'ulteriore prova diretta della rivoluzione terrestre consiste nell'aberrazione della luce proveniente dalle stelle. Quando un osservatore sulla Terra rileva la luce di un astro utilizzando un telescopio, l'immagine appare provienire da una posizione leggermente spostata rispetto alla sua reale ubicazione. Questo scostamento angolare, definito angolo di aberrazione, varia in relazione alla velocità orbitale della Terra. Il fenomeno si verifica poiché nel tempo impiegato dalla luce a percorrere la distanza tra l'obiettivo e l'oculare del telescopio, la Terra subisce uno spostamento lungo la propria orbita attorno al Sole.

== Conseguenze dei moti della Terra

I moti di rotazione e rivoluzione della Terra sono responsabili di diversi fenomeni naturali facilmente percepibili dall'osservatore comune: l'alternanza tra dì e notte; la variazione della durata del dì e della notte; e il susseguirsi delle stagioni.

=== L'alternarsi del dì e della notte

Il moto di rotazione terrestre, che si completa nell'arco temporale di circa 24 ore e definisce il giorno solare, è la causa primaria dell'alternanza tra il periodo diurno e quello notturno. I raggi solari giungono sulla superficie terrestre dispersi parallelamente tra loro. Tuttavia, in virtù della sfericità del pianeta, solo metà della superficie terrestre risulta illuminata dal Sole in qualsiasi momento. La porzione illuminata è identificata come dì, mentre l'altra metà rimane in penombra ed è indicata come notte. La linea immaginaria che separa la parte illuminata da quella oscurata prende il nome di circolo di illuminazione e si sposta continuamente a seguito del movimento di rotazione terrestre.

Il transitorio tra dì e notte avviene in maniera graduale grazie alla presenza dell'atmosfera terrestre, che diffonde, riflette e rifrange i raggi solari. Questo processo dà origine ai fenomeni della alba, contraddistinta dal progressivo incremento della luminosità prima che il disco solare sia visibile sopra l'orizzonte; e del crepuscolo, caratterizzato da una diminuzione della intensità luminosa dopo che il Sole è sceso sotto la linea dell'orizzonte.

=== La diversa durata del dì e della notte

Se l'asse terrestre fosse disposto in modo perpendicolare al piano dell'orbita, il circolo di illuminazione attraverserebbe sempre i poli, dividendo in due parti uguali tutti i paralleli. In tale scenario, su ogni punto della Terra, sia il dì che la notte avrebbero costantemente una durata di 12 ore ciascuno, indipendentemente dal periodo dell'anno. Tuttavia, poiché l'asse terrestre è inclinato di 66°33' rispetto al piano dell'orbita e mantiene una direzione parallela a se stesso durante il moto di rivoluzione attorno al Sole, il circolo di illuminazione varia nel corso dell'anno, contribuendo alla diversa durata del dì e della notte e, come vedremo, all'alternanza delle stagioni.

Il 21 giugno, solstizio d'estate, il polo Nord si orienta verso il Sole, facendo sì che il circolo di illuminazione, tangente ai circoli polari Artico e Antartico, divida in due l'equatore. Nell'emisfero boreale, in questa data, la superficie illuminata supera quella in ombra, portando al dì più lungo e alla notte più breve dell'intero anno; al contrario, nell'emisfero australe si verifica la notte più lunga e il dì più corto. Inoltre, nella zona compresa fra il Circolo Polare Artico e il polo Nord, il Sole non tramonta mai durante questa giornata, rendendo il dì una continuativa durata di 24 ore.

Il 21 dicembre, solstizio d'inverno, è invece il polo Sud a dirigersi verso il Sole. Di conseguenza, nell'emisfero boreale la superficie illuminata risulta inferiore rispetto a quella in ombra: si vive il dì più breve e la notte più lunga dell'anno. Inversamente, nell'emisfero australe si verificano condizioni opposte. Tra il Circolo Polare Artico e il polo Nord, in questa data il Sole non si leva mai sopra l'orizzonte, dando luogo a una notte che perdura per 24 ore. Nei mesi che intercorrono tra il 21 giugno e il 21 dicembre, nell'emisfero boreale si assiste a un progressivo accorciamento del dì e all'allungarsi della notte; viceversa, dalla data del 21 dicembre fino al 21 giugno successivo si osserva l'allungamento del dì e la riduzione della notte. La dinamica opposta caratterizza l'emisfero australe.

In due giornate particolari dell'anno, precisamente il 21 marzo (equinozio di primavera) e il 23 settembre (equinozio d'autunno), il dì e la notte si equivalgono in durata in ogni punto del pianeta. Questo accade perché nessuno dei poli è inclinato verso il Sole: in tali giorni, il circolo di illuminazione attraversa entrambi i poli e divide perfettamente a metà tutti i paralleli. Le condizioni luminose risultano quindi equilibrate tra i due emisferi.

L'unico luogo sulla Terra dove tale equilibrio tra dì e notte persiste per tutto l'anno è l'equatore.

=== Il succedersi delle stagioni

L'inclinazione dell'asse terrestre influisce non solo sulla durata del giorno e della notte nell'arco dell'anno, ma anche sull'angolazione con cui i raggi solari colpiscono la superficie terrestre, determinando variazioni nel riscaldamento del pianeta. Questo riscaldamento è massimo quando i raggi solari formano un angolo di 90 gradi rispetto al piano tangente alla superficie terrestre in un punto specifico, mentre si riduce progressivamente con la diminuzione di tale angolo. Tali dinamiche sono alla base dell'alternanza tra periodi caldi e freddi, ossia della successione delle stagioni.

Nell'emisfero boreale, le stagioni astronomiche si articolano come segue:  
- Primavera (21 marzo - 21 giugno): Il 21 marzo, al momento dell'equinozio primaverile, il Sole raggiunge il suo culmine con i raggi perpendicolari all'equatore. In tale configurazione, l'energia solare trasmessa è massima all'equatore e diminuisce gradualmente procedendo verso i poli. Con l'avvicinarsi del solstizio estivo, il flusso di energia solare cambia progressivamente.  
- Estate (21 giugno - 23 settembre): Durante il solstizio estivo, l'energia solare è massima al Tropico del Cancro, dove i raggi risultano perpendicolari. In questa fase, il Polo Nord è completamente illuminato, mentre il Polo Sud rimane in ombra. Conseguentemente, l'emisfero boreale riceve una quantità di energia superiore rispetto a quello australe.  
- Autunno (23 settembre - 21 dicembre): Al momento dell'equinozio d'autunno, si ripetono le condizioni registrate durante l'equinozio primaverile. Tuttavia, tali caratteristiche variano progressivamente con l'avvicinarsi del solstizio invernale.  
- Inverno (21 dicembre - 21 marzo): Al solstizio invernale, i raggi solari risultano perpendicolari al Tropico del Capricorno. In questo periodo, il Polo Sud è illuminato, mentre il Polo Nord si trova in ombra. Di conseguenza, l'emisfero australe beneficia di un flusso energetico maggiore rispetto all'emisfero boreale.

Le stagioni astronomiche non corrispondono pienamente a quelle meteorologiche, ossia al reale andamento delle condizioni climatiche. Tale discrepanza è attribuibile al fatto che atmosfera, idrosfera e litosfera assorbono e rilasciano calore con un certo intervallo temporale, ritardando l'impatto percepibile delle variazioni dell'inclinazione dei raggi solari. Inoltre, l'inclinazione dei raggi altera l'altezza degli archi descritti dal Sole nel cielo durante il suo moto apparente tra alba e tramonto. Basandosi su queste differenze stagionali nell'inclinazione dei raggi solari, è possibile identificare diverse zone astronomiche della superficie terrestre, ciascuna caratterizzata da specifici pattern climatici.

#note(bottom)[== *🧩* Le zone astronomiche <senza_numero>

A causa della diversa inclinazione dei raggi solari nel corso dell'anno, la superficie terrestre viene suddivisa in diverse zone astronomiche, ognuna con condizioni di riscaldamento caratteristiche.

La zona torrida, compresa tra il Tropico del Cancro e il Tropico del Capricorno, è caratterizzata da un'esposizione solare intensa. Qui il Sole si trova perpendicolare a tutti i punti della zona due volte l'anno (e una sola volta sui tropici). Durante gli equinozi, raggiunge la verticale sull'equatore e in momenti differenti per le aree tra l'equatore e i tropici. Questa zona registra temperature elevate per quasi tutto l'anno, con variazioni stagionali poco marcate.

Le zone temperate, distinte in boreale e australe, si estendono tra i rispettivi tropici e circoli polari. Nella zona temperata boreale (tra il Tropico del Cancro e il Circolo Polare Artico), la posizione del Sole varia enormemente: nel solstizio estivo raggiunge un'altezza massima di 90° al tropico e di 46°54' al circolo polare, mentre nel solstizio invernale il Sole non sorge. Nella zona temperata australe (tra il Tropico del Capricorno e il Circolo Polare Antartico), la massima altezza solare cambia simmetricamente: nel solstizio invernale raggiunge i 90° al tropico e diminuisce progressivamente fino ai 46°54' del circolo polare. Qui, durante il solstizio estivo, il Sole non si alza sopra l'orizzonte. Entrambe le zone temperate mostrano marcate differenze stagionali.

Le calotte polari, articola e antartica, presentano condizioni climatiche estreme. Nella calotta polare artica, a nord del Circolo Polare Artico, il Polo Nord vive periodi di notte polare che durano sei mesi consecutivi, da un equinozio d'autunno a quello di primavera; nel solstizio estivo invece il Sole raggiunge una massima altezza di 23°27'. Analogamente, nella calotta polare antartica a sud del Circolo Polare Antartico, il Sole resta sotto l'orizzonte dall'equinozio di primavera fino a quello d'autunno. Durante il solstizio estivo la sua altezza massima varia tra i 46°54' al circolo polare e i 23°27' al Polo Sud.

Essendo il Sole basso o persino assente per lunghi periodi nelle zone polari, queste ricevono minore energia solare. Di conseguenza, le temperature rimangono basse tutto l'anno.]

== I moti millenari

Oltre ai moti di rotazione e di rivoluzione, la Terra compie movimenti detti millenari, perché i loro effetti si manifestano solo nel corso di millenni; questi moti sono dovuti all'attrazione gravitazionale che soprattutto il Sole e la Luna, ma anche altri corpi del sistema solare, esercitano sul nostro pianeta (va anche segnalato che la Terra partecipa con tutto il sistema solare al moto di traslazione intorno al centro della Galassia, il cui effetto consiste in un apparente spostamento del sistema solare verso la costellazione di Ercole).

=== Moto di precessione

Per effetto dell'attrazione esercitata dal Sole e dalla Luna, l'asse terrestre non si mantiene sempre parallelo a se stesso, ma, molto lentamente nel corso dei millenni, tende a diventare perpendicolare al piano dell'eclittica; la rotazione della Terra si oppone a questo cambiamento e tende a mantenere costante la posizione dell'asse: il risultato dell'azione di queste due forze è un moto, detto precessione lunisolare, in cui l'asse terrestre descrive un doppio cono intorno all'asse dell'eclittica, con il vertice nel centro della Terra. A questo moto, che ha un periodo di 26 000 anni, si deve la precessione degli equinozi, cioè un'anticipazione dei momenti in cui, ogni anno, si verificano gli equinozi. 

Infatti, il cambiamento di direzione dell'asse terrestre comporta lo spostamento nello spazio dell'equatore celeste; quindi varia anche l'intersezione fra il piano dell'equatore celeste e quello dell'eclittica, intersezione che corrisponde alla linea degli equinozi. Poiché il moto conico dell'asse terrestre avviene in senso antiorario, anche la linea degli equinozi si muove in questo senso, che risulta contrario (moto retrogrado) al movimento della Terra sulla sua orbita. Perciò, ogni anno gli equinozi si verificano con un anticipo di circa 20 minuti rispetto all'anno precedente. 

Un'altra conseguenza del moto di precessione è che l'asse terrestre, nel corso del tempo, non continuerà a puntare verso la Stella Polare, come avviene ora, ma, quando l'asse avrà percorso circa metà giro, il suo prolungamento indicherà la stella Vega, nella costellazione della Lira.

=== Nutazioni

Oltre ai moti di rotazione e rivoluzione, la Terra manifesta movimenti di natura millenaria, i cui effetti diventano evidenti soltanto nel corso di migliaia di anni. Questi moti derivano dall'attrazione gravitazionale esercitata principalmente dal Sole e dalla Luna, oltre che da altri oggetti celesti del sistema solare. Di particolare interesse è il fatto che la Terra, insieme all'intero sistema solare, partecipa al moto di traslazione attorno al centro della Via Lattea. Questo movimento dà origine a un'apparente spostamento del sistema solare in direzione della costellazione di Ercole.

=== Variazione di eccentricità

La variazione dell'eccentricità dell'orbita terrestre causa modifiche alla forma dell'orbita stessa, alternando fasi in cui tende ad accorciarsi (eccentricità minore) e altre in cui si allunga (eccentricità maggiore). Questo fenomeno, influenzato dall'attrazione gravitazionale esercitata dal Sole e dagli altri pianeti del sistema solare, ha un ciclo di circa 92.000 anni.

=== Variazione dell'inclinazione dell'asse terrestre

L'inclinazione dell'asse terrestre rispetto alla verticale del piano orbitale cambia molto lentamente, seguendo un ciclo di 40.000 anni. Attualmente, l'asse terrestre è inclinato di 23°27' rispetto alla verticale del piano dell'eclittica. Tuttavia, questo angolo può oscillare tra un massimo di 24°36' e un minimo di 21°58'. Poiché l'inclinazione dell'asse determina le stagioni, queste variazioni influenzano le differenze climatiche tra le stagioni nel corso dei millenni.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Anno: Periodo necessario alla Terra per completare un'orbita intorno al Sole. A seconda del riferimento usato, può essere un anno sidereo (basato su una stella fissa) o tropico (detto anche solare). Per effetto della precessione degli equinozi, l'anno tropico dura 365 giorni, 5 ore e 46 minuti ed è più corto di circa 20 minuti rispetto al sidereo. Dall'anno tropico deriva l'anno civile di 365 giorni, con l'aggiunta di un giorno ogni quattro anni per formare l'anno bisestile.

/ Bussola: Strumento per orientarsi geograficamente o navigare, composto da un ago calamitato che ruota su una rosa dei venti e indica costantemente il nord magnetico.

/ Crepuscolo: Fioca luminosità che precede l'alba o segue il tramonto del Sole.

/ Dì: Periodo della giornata illuminato dalla luce del Sole. La sua durata varia durante l'anno: è massima al solstizio d'estate e minima al solstizio d'inverno nell'emisfero boreale.

/ Ellissoide: Superficie tridimensionale generata dalla rotazione di un'ellisse attorno a uno dei suoi assi.

/ Equinozio: Giornata in cui la durata del giorno e della notte è uguale in ogni punto della Terra.

/ Geoide: Superficie ideale, perpendicolare alla forza di gravità in ogni suo punto, che riflette le irregolarità nella distribuzione della densità terrestre. Può essere immaginata come la superficie media degli oceani estesa idealmente attraverso i continenti. Il geoide viene usato come riferimento per misurazioni topografiche, altimetriche e marine.

/ Giorno: Unità di tempo corrispondente a una rotazione completa della Terra su sé stessa.

/ Inclinazione: Angolo formato dal piano dell'orbita di un corpo celeste rispetto al piano dell'eclittica. L'inclinazione dell'orbita terrestre, nota come obliquità dell'eclittica, è pari a 23°27'.

/ Latitudine: Distanza angolare di un punto dall'equatore, misurata in gradi e frazioni sul meridiano che passa per quel punto.

/ Longitudine: Distanza angolare di un punto rispetto al meridiano di riferimento, calcolata sull'arco di parallelo passante per il punto stesso.

/ Rosa dei venti: Rappresentazione grafica delle direzioni dei venti, corrispondenti ai quattro punti cardinali e alle direzioni intermedie.