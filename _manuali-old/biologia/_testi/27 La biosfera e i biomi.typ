#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La biosfera comprende l'intera gamma degli ambienti fisici della Terra in grado di supportare forme di vita e l'insieme di tutti gli organismi che li abitano. All'interno della biosfera si distinguono zone geografiche contraddistinte da specifici climi, vegetazioni e faune, definite biomi. Questi biomi racchiudono la totalità delle forme viventi presenti sul nostro pianeta. Le attività umane esercitano pressioni significative sulla biosfera attraverso l'introduzione di sostanze chimiche che causano inquinamento, così come mediante modifiche fisiche al territorio, tra cui la deforestazione, l'espansione delle aree urbane e industriali e l'alterazione degli equilibri idrogeologici. Per preservare gli ambienti naturali sono state istituite riserve naturali, che rappresentano una delle principali strategie di tutela del patrimonio ambientale.]

== La biosfera

La biosfera rappresenta il sistema biologico che racchiude tutti gli ecosistemi presenti sul pianeta Terra. Essa include gli ambienti fisici che ospitano la vita - le terre emerse (litosfera), le acque (idrosfera) e l'aria (atmosfera) - nonché le comunità di organismi viventi che abitano tali spazi.

Si può immaginare la biosfera come una sottile pellicola di circa 20 chilometri di spessore che avvolge la superficie terrestre. Nell'atmosfera, fino a 10 chilometri di altezza, è stata rilevata la presenza passiva di polline e spore, mentre nelle fosse oceaniche, a circa 10 chilometri di profondità, esistono batteri adattati a vivere in assenza di luce e ossigeno. Tuttavia, la fascia in cui si concentra la maggiore attività vitale degli organismi non supera i 3000-4000 metri nelle zone montane e i 200 metri di profondità in ambienti marini, valore corrispondente alla massima penetrazione della luce solare.

La biosfera mantiene un equilibrio stazionario grazie alla sua capacità di autoregolazione. Riesce infatti a bilanciare le perdite di energia nello spazio con il continuo apporto dell'energia radiante del Sole, che le piante trasformano in materia organica mediante il processo della fotosintesi.

Gli ecosistemi terrestri presentano una straordinaria varietà, ma al tempo stesso condividono elementi comuni. Tali somiglianze derivano dall'influenza di specifici fattori fisico-climatici ambientali, tra cui la disponibilità di nutrienti, energia, acqua e la temperatura media. L'effetto di questi fattori determina la suddivisione degli ecosistemi in grandi raggruppamenti omogenei, conosciuti come biomi, che costituiscono il primo livello organizzativo della biosfera.

#note(bottom)[== *🧩* La fitogeografia e la zoogeografia <senza_numero>

La fitogeografia, nota anche come geografia botanica, geobotanica o biogeografia vegetale, indaga sulla distribuzione delle piante sul pianeta. Tale distribuzione dipende fortemente dalle caratteristiche climatiche, con le aree climatiche che generalmente corrispondono alle zone di diffusione della vegetazione predominante. Sulla base di questa analisi, la Terra viene distinta in sei principali regioni fitogeografiche:
- La regione oloartica comprende l'intero continente europeo, l'Asia centrosettentrionale, la Groenlandia e parte del Nord America. Al suo interno si trovano biomi quali la tundra, le foreste di conifere e le foreste di latifoglie; nelle aree meridionali è presente una fascia subtropicale caratterizzata dalla macchia mediterranea tipica delle zone costiere.
- La regione paleotropicale si estende alle aree tropicali dell'Africa e dell'Asia, ospitando biomi dominati da foreste pluviali tropicali e savane.
- La regione neotropicale include le aree tropicali dell'America centrale e meridionale con una prevalenza di foreste pluviali tropicali e savane.
- La regione capense copre la parte meridionale dell'Africa sotto il deserto del Kalahari; è caratterizzata da un clima di tipo mediterraneo e da una flora altamente specializzata.
- La regione australiana corrisponde al continente australiano, contraddistinto da una vegetazione di origine antichissima.
- La regione antartica comprende le isole Kerguelen, Falkland/Malvine, Macquarie, oltre alla Nuova Zelanda e alla Patagonia, dove predominano licheni e un numero limitato di piante superiori.

La zoogeografia studia la distribuzione degli animali sulla Terra, tenendo conto della loro evoluzione storica e delle trasformazioni geologiche avvenute nel tempo. Essa suddivide il pianeta in sei regioni zoogeografiche per le terre emerse, ciascuna caratterizzata da una relativa omogeneità nelle comunità faunistiche terrestri, in particolare uccelli e mammiferi. Contrariamente agli ecosistemi terrestri, la fauna marina segue una suddivisione più limitata a causa della maggiore capacità di dispersione delle specie acquatiche; sono infatti riconosciute quattro regioni principali: tropicale, boreale, antiboreale e polare.

#figure(
  caption: [Le regioni biogeografiche],
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
  table.header[Regione][Fauna caratteristica],
  [Neartica], [Capra delle nevi, antilocapra, caribù, ondatra],
  [Paleartica], [Erinaceidi, cinghiale comune, daino comune, capriolo], 
  [Indo-malese], [Tarsidi, macaco, gibbone, orango, elefante indiano, gallo bankiva, pavone crestato], 
  [Neotropica], [Guanaco, vigogna, alpaca, pecari, bradipi, armadilli, formichieri, cavie, vampiri, nandù, tucani e colibr],
  [Etiopica o \ paleotropica], [Gorilla, scimpanzé, elefante africano, rinoceronte bianco, rinoceronte nero, leone, zebra, giraffa, struzzo, serpentario, lemuri (Madagascar)],
  [Australiana], [Tutti i monotremi (echidna, ornitorinco ecc.), marsupiali (ma assenza dei mammiferi placentati tranne roditori e pipistrelli), emù, casuari, uccelli del paradiso]
)  
)]

== I biomi

I biomi sono sistemi ambientali complessi e molto estesi dal punto di vista geografico, formati da insiemi di ecosistemi in cui le comunità animali e vegetali hanno raggiunto una stabilità relativa rispetto alle condizioni ambientali del luogo. Le caratteristiche di ogni bioma sono principalmente influenzate dal clima della regione e dalla vegetazione predominante, che a sua volta ospita una fauna tipica delle specie animali locali.

Il clima consiste nell'insieme delle caratteristiche meteorologiche medie di una regione terrestre nel corso dell'anno. Queste condizioni sono influenzate da elementi climatici come temperatura e precipitazioni, i quali dipendono da fattori come latitudine, altitudine e distanza dai mari.

La vegetazione, invece, si riferisce all'associazione dominante di specie vegetali che caratterizzano una determinata area (ad esempio vegetazione alpina o mediterranea) rispetto alle altre specie presenti nella flora della regione.

La distribuzione dei biomi sulla Terra segue un andamento che rispecchia le fasce climatiche. A livello orizzontale, essi si posizionano lungo le diverse latitudini, mentre verticalmente corrispondono alle variazioni di altitudine.

I biomi si suddividono principalmente in due grandi categorie: terrestri e acquatici. I biomi terrestri includono tundra, foreste, praterie e deserti, mentre quelli acquatici si distinguono per le loro caratteristiche uniformi e comprendono biomi marini (regioni oceaniche, piattaforma continentale, zone di risalita e aree di estuario) e biomi d'acqua dolce (laghi, fiumi e zone paludose).

=== La tundra

La tundra può essere classificata in due principali tipologie: la tundra artica e la tundra alpina.

La tundra artica rappresenta circa il 20% delle terre emerse e si sviluppa lungo una vasta fascia situata tra la calotta polare artica e la foresta boreale caratterizzata da vegetazione ad aghifoglie, a latitudini comprese tra 75° e il circolo polare (66° 33' N). La sua distribuzione raggiunge la massima estensione nei territori settentrionali della Siberia. Questo ecosistema è caratterizzato da un clima estremamente rigido, con una stagione estiva molto breve, della durata di circa 40-50 giorni, durante la quale le temperature si mantengono tra 0 e 10 °C. Per il resto dell'anno, le temperature scendono costantemente sotto lo zero, arrivando talvolta a -70 °C. I venti risultano intensi e persistenti, mentre le precipitazioni sono limitate. Durante il periodo estivo, il terreno scongela solo superficialmente per pochi decimetri, mentre al di sotto permane il permafrost, uno strato di suolo perennemente ghiacciato che impedisce l'assorbimento dell'acqua di fusione negli strati profondi. Questa condizione esclude la crescita di alberi ad alto fusto, favorendo invece una vegetazione bassa composta prevalentemente da licheni, muschi, sfagni e salici nani. Durante l'estate, si verifica un temporaneo arricchimento della fauna, con l'arrivo di specie provenienti dalle regioni meridionali, inclusi renne, volpi, lepri artiche, ermellini e pernici. Gli insetti, incentivati dalla presenza di ampie aree acquitrinose che si formano sul suolo durante il disgelo estivo, rappresentano tuttavia la componente faunistica più consistente. 

La tundra alpina, pur condividendo simili associazioni vegetali con quella artica, si sviluppa ad elevate altitudini. Essa segna il limite superiore della vegetazione, situandosi oltre le praterie alpine e confinando con le rocce nude o i ghiacciai perenni.

=== Le foreste

La foresta rappresenta un'ampia zona caratterizzata dalla presenza predominante di alberi ad alto fusto.  

Si possono distinguere diverse tipologie di foreste: quelle decidue, dominate da alberi che perdono le foglie durante l'inverno; quelle sempreverdi, dove prevalgono alberi che mantengono il fogliame tutto l'anno; e le foreste miste, che combinano entrambe le tipologie.  

Le peculiarità delle foreste variano a seconda della latitudine e dell'altitudine in cui si trovano. Tra i principali tipi si annoverano le foreste di conifere, le foreste decidue dei climi temperati e le foreste tropicali.  

La foresta di conifere, nota anche come taiga, si sviluppa in una fascia di circa 1500-2000 km situata tra il circolo polare artico, al margine inferiore della tundra, e il 50° parallelo nord nei continenti nordamericano ed eurasiatico. Il clima è contraddistinto da estati calde e inverni rigidi. La vegetazione principale comprende gimnosperme sempreverdi come abeti e pini, oltre a specie decidue come i larici. Il sottobosco è generalmente scarso, mentre la fauna tipica annovera animali come l'alce, il lupo, lo scoiattolo e il gallo cedrone. In montagna, queste foreste crescono sopra il livello delle latifoglie fino a raggiungere il limite della vegetazione arborea, oltre il quale non possono prosperare piante ad alto fusto.  

Le foreste decidue di clima temperato sono distribuite in varie aree, tra cui l'America nordorientale, l'Europa centrale, alcune regioni del Giappone e dell'Australia, oltre alla punta meridionale dell'America del Sud. Qui il clima è caratterizzato da temperature moderate e precipitazioni abbondanti e regolari durante l'anno. La vegetazione predominante è costituita da latifoglie decidue come faggi, castagni e querce, con un sottobosco particolarmente denso. Tra gli animali tipici figurano cervi, cinghiali, linci e numerose specie di uccelli. Questo bioma una volta era molto più diffuso, soprattutto nell'Europa centrale, ma è stato notevolmente alterato dall'intervento umano attraverso ampie deforestazioni per ottenere legname o ampliare le aree agricole. In zone montuose, queste foreste si trovano ad altitudini inferiori rispetto a quelle di conifere.  

Le foreste tropicali includono diverse varietà di ecosistemi situati tra i Tropici del Cancro e del Capricorno. Tra queste, le più conosciute sono le foreste pluviali, che si estendono vicino all'Equatore a basse altitudini; esempi importanti si trovano nel bacino amazzonico e dell'Orinoco in Sud America, nei bacini del Congo, del Niger e dello Zambesi in Africa e nelle regioni asiatiche come India, Malesia, Borneo e Nuova Guinea.  

Questi territori sono caratterizzati da un clima con precipitazioni abbondanti superiori ai 200 cm annui, distribuite lungo le stagioni, pur con periodi occasionali di siccità. Le foreste pluviali sono note per la loro straordinaria biodiversità: ospitano un gran numero di specie animali (soprattutto insetti e uccelli) e vegetali, tra cui alberi altissimi a latifoglie sempreverdi. La struttura della vegetazione è stratificata con una densa copertura arborea che lascia filtrare poca luce al suolo, rendendo il sottobosco generalmente rado. Tuttavia, questo ambiente unico è gravemente minacciato dalla deforestazione su larga scala.  

=== Le praterie

Le praterie costituiscono un'altra importante categoria di ecosistemi, dominati da associazioni di piante erbacee (principalmente graminacee) che formano un tappeto vegetale denso e continuo. Si possono distinguere praterie a erbe alte e praterie a erbe basse.

Le praterie a erbe alte prevalgono in regioni caratterizzate da un clima continentale delle medie latitudini, dove la quantità di acqua derivante dalle precipitazioni risulta sufficiente a bilanciare quella persa attraverso evaporazione e traspirazione. Tale equilibrio idrico permette lo sviluppo di pochi alberi isolati. Estese aree di queste praterie si trovano in Nord America, nelle regioni settentrionali della Cina e in Argentina (pampa), così come in Ungheria (puszta). Un esempio peculiare sono le savane africane delle zone tropicali, in cui lunghi periodi di siccità si alternano a intense piogge stagionali.

Le praterie a erbe basse, comunemente note come steppe, si sviluppano invece in condizioni climatiche più aride, sia calde sia fredde. Questi ecosistemi sono distribuiti lungo due vaste fasce che si estendono oltre la zona equatoriale fino alle latitudini di 55° N e 45° S. La steppa si distingue per la presenza di specie erbacee con una crescita limitata in altezza, spesso organizzate in gruppi irregolari con ampie aree di terreno scoperto. Un numero ridotto di arbusti o alberi bassi isolati completa la vegetazione. La fauna che abita le steppe include vari carnivori come canidi (tra cui volpi, coyote e lupi) e felini (ad esempio puma e gatti selvatici).

Infine, le praterie alpine o pascoli alpini si trovano esclusivamente in regioni di alta quota, al di sopra del limite della vegetazione arborea. Esse sono esposte a climi molto rigidi e caratterizzate dalla presenza di abbondante acqua nel suolo. La vegetazione predominante comprende graminacee e ciperacee basse, insieme a specie erbacee fiorite, muschi e licheni, che contribuiscono alla biodiversità del sistema.

=== I deserti

I deserti sono ambienti estremamente aridi che ricevono meno di 25 cm di pioggia all'anno, oppure quantità superiori ma distribuite in modo irregolare. La loro conformazione è influenzata dai grandi sbalzi di temperatura tra il giorno e la notte, che causano la frammentazione delle rocce, e dall'azione del vento, che trasporta le particelle più fini. Questi processi portano alla formazione di deserti rocciosi o pietrosi (reg) e deserti sabbiosi (erg), spesso caratterizzati dalla presenza di dune. Ecologicamente, i deserti si possono classificare in caldi e freddi.

I deserti caldi si trovano principalmente in Africa, Arabia e Australia. In queste regioni, la presenza di falde acquifere permette lo sviluppo di una vegetazione rigogliosa e la creazione di insediamenti umani nelle oasi. Al contrario, i deserti freddi, come il deserto del Gobi in Mongolia, presentano caratteristiche climatiche molto diverse.

Nonostante l'apparente assenza di vita, i deserti ospitano una sorprendente varietà di comunità vegetali e animali che si sono adattate a questi ambienti estremi. Tra le piante si trovano specie annuali che crescono solo in condizioni di umidità temporanea, piante succulente come i cactus, capaci di immagazzinare acqua nei loro tessuti, arbusti spinosi progettati per ridurre al minimo la perdita d'acqua tramite traspirazione, e licheni o muschi. Quanto agli animali, molti adottano abitudini notturne o si rifugiano in tane per evitare la calura. Gli insetti, aracnidi e rettili sono particolarmente comuni, mentre nei deserti caldi si trovano mammiferi come l'orice, il gerboa delle piramidi e il fennec, noto anche come volpe del deserto.

=== Gli ambienti marini

Negli ecosistemi marini, diversi fattori ecologici influenzano la presenza e l'equilibrio delle comunità biologiche. Tra i principali vi sono il tipo di substrato dei fondali, la profondità (che determina la penetrazione della luce e la pressione), salinità, temperatura, densità, colore e trasparenza dell'acqua (che incidono sulla quantità di luce disponibile). Inoltre, le correnti, le maree e il moto ondoso contribuiscono a modellare tali ambienti.

La vita marina si adatta a tre modalità principali: plancton, necton e benton.  

Il plancton comprende organismi vegetali (fitoplancton) e animali (zooplancton) che vivono sospesi nell'acqua. Spesso microscopici e con scarse capacità di movimento, questi esseri vengono trasportati dalle correnti. Il fitoplancton include alghe unicellulari come le diatomee e cianobatteri, considerati i produttori primari dell'ecosistema marino. La loro produttività supera quella delle alghe pluricellulari bentoniche, che vivono sui fondali. Lo zooplancton, invece, raccoglie organismi come protozoi (foraminiferi e radiolari), meduse e ctenofori, crostacei (ad esempio cladoceri e copepodi) e tunicati che formano spesso colonie galleggianti. Esso include anche uova o larve di altri animali ed è composto principalmente da consumatori primari.

Il necton è costituito da animali capaci di nuotare attivamente superando le correnti marine. Fanno parte di questa categoria pesci, molluschi cefalopodi come i calamari, rettili come le tartarughe marine, oltre a mammiferi quali foche, balene e delfini.

Il benton (o benthos) raccoglie gli organismi che vivono sul fondo marino. Si suddivide in fitobenton (alghe e batteri) e zoobenton (animali). Quest'ultimo gruppo include rappresentanti di quasi tutti i phyla animali.

Gli organismi marini vengono classificati in base alla loro capacità di movimento: si definiscono sessili quelli che vivono fissati al substrato durante la fase adulta, come alghe, spugne (poriferi), coralli e madrepore (celenterati), anemoni di mare e balani (cirripedi incrostanti); gli organismi sedentari sono invece in grado di spostarsi lentamente sul fondo, come gli echinodermi (ad esempio, stelle marine); infine, si parla di fauna vagile per gli animali che si muovono liberamente sul substrato, come crostacei, molluschi e vermi.

Il benthos include anche specie che nuotano ma rimangono strettamente legate al substrato per nutrirsi, riprodursi o trovare rifugio, come molti pesci, alcuni molluschi e crostacei. Altri organismi, detti endobentonici, vivono all'interno del substrato, scavando nella sabbia o nel fango; questi sono spesso scavatori o detritivori, come policheti e bivalvi. Negli strati più profondi del mare si trovano anche i decompositori, principalmente batteri che consumano detriti organici e resti di organismi del necton e del plancton depositati sul fondo, liberando grandi quantità di sostanze minerali che arricchiscono le acque profonde.

A seconda della distanza dalla costa, l'ambiente marino è suddiviso in due principali domini: il neritico e l'oceanico.

Il dominio neritico, cioè la zona marina più vicina alla costa, si distingue in diversi livelli di profondità. La zona intercotidale è quella compresa tra i livelli di alta e bassa marea: durante l'alta marea gli organismi, come alghe, cirripedi e gasteropodi, sono immersi in acqua salata, mentre durante la bassa marea affrontano il rischio di disidratazione. La zona litorale coincide con la piattaforma continentale e si estende fino a circa 200 metri di profondità, il limite di penetrazione della luce solare. Qui, la presenza di sali minerali apportati dai fiumi e la capacità della luce di raggiungere i fondali favoriscono la crescita di una rigogliosa comunità di fitoplancton e una complessa rete alimentare.

Il dominio oceanico, o mare aperto, si suddivide ulteriormente secondo la profondità. La zona fotica, compresa tra 0 e 200-250 metri, è illuminata dalla luce solare, permettendo lo sviluppo di alghe e fitoplancton che costituiscono la base della catena alimentare; questa zona è molto popolata, ricca di plancton e necton. La zona batiale si estende tra 200 e circa 2000 metri di profondità ed è situata vicino alle scarpate continentali; qui non arriva la luce solare e la vita è più rara, sebbene siano presenti numerose specie animali come echinodermi e calamari giganti. Infine, la zona abissale, che va dai 2000 ai 4000 metri o più, ospita una fauna adattata alle condizioni estreme, caratterizzata da pochi predatori dotati spesso di organi luminescenti per sopravvivere alla pressione elevata e alla totale oscurità.

Il dominio oceanico è considerato meno produttivo rispetto ad altre zone marine e viene spesso paragonato a un deserto terrestre. La scarsa concentrazione di sali minerali impedisce lo sviluppo di fitoplancton in grandi quantità e, di conseguenza, limita l'abbondanza delle comunità marine. Nonostante ciò, vi abitano alcune specie di grandi pesci pelagici, come squali, pesci spada e tonni.

Le aree delle profondità oceaniche più ricche in termini di biodiversità sono le zone di risalita o "risorgenza", dove le correnti verticali riportano i nutrienti accumulati sul fondo verso la zona fotica. Di particolare interesse ecologico sono anche le comunità dei "camini" vulcanici sottomarini (black smokers), sorgenti che emettono acqua calda ricca di zolfo e sali minerali. Nonostante si trovino a grandi profondità, queste sorgenti ospitano sorprendenti comunità: solfobatteri chemiosintetici che fungono da produttori primari, anellidi, anemoni di mare, piccoli granchi ciechi, mitili e pesci rosati.

=== Gli ambienti di acqua dolce

Gli ambienti di acqua dolce occupano una superficie relativamente limitata e si suddividono in due principali categorie: quelli con acque correnti, caratterizzati da corsi d'acqua a flusso rapido (come i torrenti) o lento (come i grandi fiumi e laghi); e quelli con acque stagnanti, come paludi e stagni, dove l'ossigenazione risulta spesso insufficiente.

Tra gli ambienti di acqua dolce, i laghi sono i più estesi. Questi bacini continentali presentano stratificazioni verticali simili a quelle marine e si suddividono in aree distintive: la zona litoranea, caratterizzata da acque poco profonde con vegetazione acquatica di sponda, che offre rifugio a piccoli animali; la zona limnica, costituita da acque più profonde; e la zona profonda. I laghi ospitano anche organismi tipici quali plancton, necton e benton. Sebbene il plancton lacustre sia quantitativamente più abbondante rispetto a quello marino, è composto da un numero inferiore di specie.

Nelle regioni temperate, nei laghi si sviluppa spesso una stratificazione termica delle acque causata dalle variazioni di temperatura e densità dei diversi strati. Questo fenomeno ostacola la normale circolazione delle acque, incidendo sulla distribuzione dei sali minerali e dell'ossigeno. Le conseguenze possono includere condizioni di anossia nei fondali e scarsa concentrazione di sostanze nutritive negli strati superficiali, con importanti ripercussioni ecologiche.

== Le interazioni uomo-ambiente

Le interazioni tra l'uomo e l'ambiente naturale hanno inciso profondamente sugli equilibri terrestri per migliaia di anni, con un impatto particolarmente intenso a partire dalla rivoluzione industriale. L'azione umana ha determinato una significativa riduzione della biodiversità e un generale deterioramento delle condizioni ambientali.

=== La riduzione della biodiversità

La biodiversità rappresenta il totale delle specie presenti in un ecosistema, riflettendone direttamente l'integrità. Si stima che sulla Terra esistano tra 5 e 30 milioni di specie vegetali e animali, delle quali solo 1,4 milioni sono state finora descritte. Le foreste pluviali, pur degradate dall'intervento umano, conservano ancora uno dei valori più alti di biodiversità globale (oltre il 50%), mentre ambienti monoculturali come un campo coltivato con un'unica varietà di cereali mostrano una biodiversità estremamente ridotta.

La diminuzione della biodiversità è imputabile sia a cause naturali come le grandi estinzioni del passato legate alla competizione e alla selezione naturale, sia, in maniera più significativa durante il XX secolo, all'intervento umano. Molte specie sono scomparse a causa della caccia indiscriminata e delle crescenti alterazioni degli habitat naturali dovute a inquinamento e modifiche ambientali.

=== Il peggioramento delle condizioni ambientali

L'intervento umano sull'ambiente causa frequentemente la distruzione di numerosi habitat naturali, sia attraverso diverse forme di inquinamento che mediante altre perturbazioni quali la deforestazione e il pascolo intensivo. Questi fattori favoriscono fenomeni come la desertificazione, il deterioramento dell'assetto idrogeologico e l'espansione incontrollata degli insediamenti urbani, industriali e agricoli.

L'inquinamento può essere definito come il complesso di alterazioni inflitte all'ambiente (aria, acqua e suolo) da agenti capaci di modificarne le proprietà chimiche, fisiche o biologiche, spesso in modo dannoso per gli organismi viventi. Sebbene esistano forme di inquinamento naturale, come l'emissione di gas e ceneri vulcaniche, il termine oggi è principalmente associato agli effetti negativi causati dalle attività umane, che rappresentano la principale fonte di alterazioni ambientali.

Le sostanze inquinanti hanno un impatto negativo sull'ambiente sia per la loro tossicità intrinseca sia per le quantità che superano la capacità di autodepurazione degli ecosistemi. Questi agenti contaminanti derivano da sottoprodotti dell'industria (energia, beni di consumo), dall'agricoltura (fertilizzanti, pesticidi, scarti animali) e dai rifiuti biologici civili.

Le cause principali dell'inquinamento includono molteplici fattori interconnessi, tra cui l'aumento della popolazione, la crescente urbanizzazione e la conseguente domanda di beni di consumo. Gli effetti di un inquinamento continuo e non regolamentato si ripercuotono sulla crescita e sulla salute delle specie viventi, interferendo con le reti alimentari e, sommati alla distruzione degli habitat, minano progressivamente l'integrità della biosfera a livello di atmosfera, acqua e suolo.

=== Inquinamento atmosferico

In merito all'inquinamento atmosferico, i principali responsabili sono i sottoprodotti della combustione di combustibili fossili come petrolio, carbone e gas naturale. A questi si aggiungono pratiche dannose quali gli incendi appiccati per il disboscamento, una problematica ancora prevalente in alcuni paesi in via di sviluppo (esempio emblematico è l'incendio delle foreste indonesiane nell'autunno del 1997). Tra le fonti primarie di emissioni dannose troviamo gli impianti di riscaldamento domestico, i motori a combustione interna dei veicoli, gli stabilimenti industriali termici, le centrali termoelettriche e gli inceneritori di rifiuti solidi. Questi rilasciano nell'atmosfera diversi inquinanti come anidride carbonica, monossido di carbonio, biossido di zolfo, ossidi di azoto, piombo, particelle sospese e idrocarburi.

Anche altri settori industriali, come quelli chimici, metallurgici ed estrattivi, contribuiscono all'inquinamento atmosferico attraverso l'emissione di polveri e composti organici vari (tra cui i clorofluorocarburi). Inoltre, i prodotti radioattivi artificiali provenienti dalle esplosioni nucleari sperimentali e dall'impiego pacifico dell'energia atomica rappresentano un ulteriore fonte di contaminazione. A tali emissioni si aggiungono le fughe accidentali da centrali nucleari e l'uso di materiali radioattivi nella ricerca scientifica, nell'industria e in ambito medico.

Gli inquinanti possono disperdersi negli strati più alti dell'atmosfera oppure depositarsi al suolo, trasportati da correnti atmosferiche anche a notevoli distanze dalla loro origine. Questi fenomeni producono una vasta gamma di effetti dannosi sull'ambiente.

Il fenomeno dell'effetto serra si manifesta quando l'energia irradiata dalla superficie terrestre verso lo spazio, principalmente sotto forma di radiazione infrarossa, viene intercettata e parzialmente assorbita da specifici gas atmosferici definiti "gas serra" (tra cui il diossido di carbonio). Questi gas hanno la capacità di riemettere parte di tale energia verso la Terra, analogamente a quanto avviene nei vetri di una serra. Tale processo contribuisce al mantenimento di una temperatura media sulla superficie terrestre superiore a quella che verrebbe osservata in assenza di atmosfera, condizione essenziale per la vita. Tuttavia, la crescente concentrazione di gas serra derivante dalle attività antropiche (inclusi metano, protossido di azoto e clorofluorocarburi) amplifica l'effetto serra stesso, con potenziali ripercussioni quali il progressivo aumento delle temperature globali e significative alterazioni climatiche e idriche.

L'ozono, una forma allotropica dell'ossigeno, è costituito da molecole triatomiche (O3). Si tratta di un gas dall'odore pungente e dal caratteristico colore bluastro, altamente tossico. Si forma dall'ossigeno molecolare per effetto di scariche elettriche (ad esempio, durante fenomeni temporaleschi) o di radiazioni ultraviolette provenienti dal Sole. Quest'ultimo processo avviene nella stratosfera tra i 15 e i 40 km di altitudine, in una regione ricca di ozono nota come ozonosfera. Lo strato di ozono stratosferico svolge una funzione determinante per la biosfera, fungendo da scudo protettivo contro i raggi ultravioletti nocivi. Tuttavia, l'integrità di questa barriera è minacciata da agenti contaminanti, primi fra tutti i clorofluorocarburi, originati da attività umane.

Nell'atmosfera terrestre, gli inquinanti gassosi possono subire processi chimici che portano alla formazione di composti solubili nelle gocce d'acqua costituenti le nubi. Tali composti vengono poi trasportati al suolo tramite precipitazioni. In particolare, l'acido solforico (H#sub[2]SO#sub[4]) e l'acido nitrico (HNO#sub[3]) si sviluppano attraverso reazioni di ossidazione rispettivamente del diossido di zolfo (SO#sub[2]) e degli ossidi di azoto (NO e NO#sub[2]), derivanti dalla combustione di combustibili fossili. Questi acidi incrementano l'acidità delle piogge fino a valori di pH compresi tra 2 e 3, molto inferiori rispetto alla norma (circa pH 5.6). Le piogge acide danneggiano principalmente gli ecosistemi forestali e lacustri: nelle foreste, indeboliscono le difese delle piante rendendole vulnerabili agli attacchi patogeni; nei laghi, un aumento dell'acidità può ridurre la biodiversità acquatica. Nel suolo, le piogge acide favoriscono la mobilità dell'alluminio in forma ionica, nocivo per le piante, e contribuiscono al dilavamento di ioni calcio e altri elementi essenziali. Inoltre, esse provocano gravi danni ai beni culturali e architettonici, accelerando il degrado dei materiali costruttivi calcarei, come il carbonato di calcio.

Nella troposfera, alcuni composti chimici possono essere soggetti a ossidazioni fotochimiche indotte dalla luce solare, dando origine a una serie di reazioni che culminano nella formazione dello smog fotochimico. Questo fenomeno è principalmente legato alle emissioni automobilistiche di ossidi d'azoto e idrocarburi ed è accentuato in condizioni meteorologiche caratterizzate da inversione termica, situazione in cui la temperatura atmosferica aumenta con l'altitudine, ostacolando il naturale rimescolamento dell'aria e favorendo l'accumulo di inquinanti a basse quote. Tra gli effetti dello smog fotochimico si annovera l'incremento della concentrazione di ozono nell'atmosfera prossima al suolo, dove risulta altamente tossico, nonché la formazione di nebbie costituite da minuscole goccioline derivate dalla condensazione di composti organici poco volatili. Gli impatti sulla salute umana comprendono irritazioni oculari, danni alle vie respiratorie e disturbi alla gola.

#figure(
  caption: [I principali inquinanti atmosferici],
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
  columns: (3),
  table.header[Inquinante][Fonte][Effetti sulla salute e l'ambiente],
  [Diossido di \ carbonio (CO#sub[2])], [Uso di combustibili fossili, combustione di materia organica, incendi finalizzati alla deforestazione, decomposizione di materiale organico],[Contribuisce al rafforzamento dell'effetto serra],
  [Monossido di \ carbonio (CO)], [Processi di combustione incompleta, particolarmente nei motori a combustione interna alimentati a benzina], [Sostanza tossica che riduce l'efficacia dell'emoglobina nel trasporto di ossigeno ai tessuti; provoca inoltre una riduzione dell'acutezza visiva e delle capacità cognitive],
  [Diossido di \ zolfo (SO#sub[3])], [Utilizzo di combustibili fossili contenenti composti a base di zolfo come impurezze; attività metallurgiche], [Causa irritazioni e danni alle vie respiratorie; componente del cosiddetto smog invernale. Correlato alla formazione delle piogge acide],
  [Ossidi di azoto \ (NO e NO#sub[2])], [Utilizzo di combustibili fossili, specialmente nei motori a combustione interna, e processi legati alla materia organica], [Possono danneggiare le vie respiratorie. Partecipano alla formazione dello smog fotochimico e delle piogge acide; contribuiscono alla riduzione dello strato di ozono nella stratosfera],
  [Protossido di \ azoto (N#sub[2]O)], [Utilizzo di fertilizzanti azotati e combustione di materia organica], [Contribuisce al rafforzamento dell'effetto serra],
  [Metano (CH#sub[4])], [Processi anaerobici di decomposizione della materia organica come nelle risaie; allevamenti intensivi di bestiame; perdite durante l'estrazione dei combustibili fossili], [Contribuisce all'effetto serra e alla riduzione dell'ozono nella stratosfera],
  [Piombo], [Emissioni provenienti dai motori a combustione interna che utilizzano carburanti con additivi a base di piombo; alcuni processi industriali specifici], [Responsabile del saturnismo, una forma cronica di avvelenamento da metalli pesanti],
  [Clorofluorocarburi \ (CFC)], [Aerosol spray, fluidi refrigeranti e produzione di materie plastiche espanse], [Sull'ambiente: causano la riduzione dello strato di ozono e contribuiscono all'effetto serra.],
  [Particolato sospeso], [Processi di combustione e produzione industriale], [Provoca danni alle vie respiratorie e rappresenta un elemento centrale dello smog invernale. Riduce la trasparenza e la qualità dell'aria],
  [Idrocarburi], [Processi di combustione incompleta, in particolare nei veicoli; raffinerie di petrolio; manipolazione di combustibili e solventi; evaporazione di idrocarburi volatili], [Contribuiscono alla formazione dello smog fotochimico],
)  
)

=== L'inquinamento delle acque

Nel ciclo idrologico, l'acqua subisce diversi tipi di inquinamento. Alcuni derivano dall'immissione diretta di sostanze contaminanti, mentre altri sono causati dall'ingresso indiretto di inquinanti nell'acqua tramite l'atmosfera, come nel caso delle piogge acide, o dal suolo.

Le acque naturali vantano un potere autodepurante, che si manifesta nella capacità di biodegradare le sostanze organiche di origine animale e vegetale, alcuni composti sintetici e sali inorganici di fosforo e azoto, oltre a vari altri composti inorganici. Questo processo è reso possibile dall'azione dei microrganismi presenti nelle acque, i quali ossidano i materiali biodegradabili, trasformandoli in molecole semplici che si reintegrano nei cicli biogeochimici naturali.

I fenomeni di autodepurazione avvengono in presenza di ossigeno, il cui livello si ripristina grazie all'assorbimento di nuovo ossigeno dall'atmosfera. Tuttavia, se la richiesta di ossigeno da parte di un corpo idrico supera la capacità di riossigenazione, si verificano fenomeni putrefattivi, causati dall'attività di microrganismi anaerobi. Questi processi portano alla liberazione di sostanze tossiche come solfuro di idrogeno (H2S), fosfina (PH3) e metano (CH4), con conseguente deterioramento dell'ecosistema acquatico.

Le principali fonti di inquinamento idrico includono scarichi urbani, industriali e agricoli. 

Un fenomeno rilevante è l'eutrofizzazione, che si verifica quando un corpo idrico riceve un eccesso di nutrienti, come i sali di azoto e fosforo presenti nei fertilizzanti e detersivi. Questo porta a una proliferazione massiccia della vegetazione sommersa. La decomposizione della vegetazione genera un significativo consumo dell'ossigeno disciolto nelle acque profonde, causando la morte degli organismi e liberando gas tossici. 

In particolari condizioni stagionali, le acque prive di ossigeno presenti sul fondo possono mescolarsi a quelle superficiali, riducendo il contenuto complessivo di ossigeno. Questo può rendere l'ambiente inadatto alla vita acquatica, provocando la morte su larga scala dei pesci.

Il petrolio rappresenta l'inquinante marino più comune, principalmente a causa dello scarico deliberato delle acque di lavaggio delle cisterne da parte delle petroliere, degli incidenti frequenti che coinvolgono navi cisterna e delle attività di estrazione petrolifera dalle piattaforme marine. 

L'inquinamento termico delle acque costituisce un ulteriore problema. Esso è causato dall'uso crescente dell'acqua nei processi di raffreddamento industriali, in particolare nelle centrali termoelettriche e nucleari. L'acqua, una volta riscaldata durante questi processi, viene reimmessa nei corsi d'acqua o nei bacini lacustri. L'aumento della temperatura dell'acqua riduce la sua capacità di disciogliere ossigeno e accelera la crescita degli organismi acquatici, favorendo in modo esponenziale i processi di eutrofizzazione. Gli effetti più gravi si verificano quando si registrano improvvisi abbassamenti della temperatura, causando il cosiddetto "stress freddo" nei animali adattati a un ambiente più caldo. Questo stress può anche risultare mortale.

#figure(
  caption: [Fonti dei principali inquinanti delle acque],
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
  table.header[Fonti effluenti][Caratteristiche],
  [Effluenti urbani], [Sono caratterizzati principalmente dalla presenza di sostanze organiche biodegradabili derivanti dal metabolismo umano, insieme a prodotti chimici di diversa natura, come solventi organici, provenienti da attività artigianali, commerciali e dall'uso domestico di articoli quali detersivi. Questi effluenti presentano un alto contenuto di microrganismi patogeni, inclusi colibatteri e streptococchi fecali.],
  [Effluenti industriali], [Contengono una vasta gamma di composti chimici inquinanti, sia organici che inorganici, prodotti dalle attività delle industrie chimica, farmaceutica, petrolchimica, cartaria, tessile, galvanica, conciaria e alimentare. Gli inquinanti inorganici includono acidi e basi forti, solfuri, cianuri, fluoruri, solfiti, sali metallici e non metallici, e metalli tossici come arsenico, cadmio, cromo esavalente, rame, mercurio, nichel, piombo e selenio. Gli inquinanti organici comprendono oli minerali, fenoli e solventi (aromatici, clorurati e azotati), mentre nel caso dell'industria alimentare si riscontrano materiali organici biodegradabili.],
  [Effluenti agricoli], [Provengono dallo smaltimento delle deiezioni animali di allevamenti (soprattutto suini) non impiegate come fertilizzanti naturali. A questi si aggiungono i fertilizzanti chimici e gli antiparassitari che, influenzati dalla pioggia, possono essere trasportati nei corsi d'acqua superficiali o infiltrarsi nel suolo fino a contaminare la falda acquifera, compromettendo l'acqua potabile.  ],
)  
)

=== L'inquinamento del suolo

Le cause dell'inquinamento del suolo condividono alcune caratteristiche con quelle che influenzano l'aria e le acque, mentre altre derivano principalmente dalla gestione impropria dei rifiuti solidi urbani (RSU) e dei fanghi prodotti dagli impianti di depurazione delle acque reflue urbane e dei processi industriali.

Tra gli effetti più rilevanti si annoverano l'accumulo di sostanze inquinanti all'interno delle catene alimentari, in particolare antiparassitari e composti tossici contenuti nei fertilizzanti, come arsenico, cadmio e piombo, la riduzione della fertilità del suolo e l'aumento della sua vulnerabilità all'erosione.

== La tutela della natura

La biosfera possiede la capacità di mantenere un equilibrio globale; tuttavia, l'intervento antropico spesso agisce con una rapidità superiore rispetto alla capacità naturale di ristabilire tale equilibrio. Sebbene risulti impraticabile eliminare le azioni umane sul territorio, un approccio sostenibile mira a minimizzarne gli effetti nocivi attraverso una gestione oculata delle risorse ambientali, la protezione delle specie a rischio di estinzione e la salvaguardia degli habitat naturali.

La preservazione della natura non si affida esclusivamente alla responsabilità individuale, ma coinvolge anche organizzazioni internazionali e istituzioni dedicate alla conservazione del territorio, come le riserve naturali.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Benton o benthos: Comunità di organismi animali e vegetali che abitano il fondo marino o acquatico, suddivise in fitobenton (alghe e batteri) e zoobenton (animali).  

/ Biodegradabilità: Capacità di alcuni materiali di essere scomposti da microrganismi presenti nelle acque.  

/ Biodiversità: Numero complessivo delle specie diverse, e dunque dei geni, presenti in un ambiente.  

/ Biogeografia: Studio della distribuzione dei biomi sulla Terra, che analizza la ripartizione degli organismi viventi e i fattori che la influenzano.  

/ Biomi: Aree ambientali di vasta estensione geografica, formate da insieme di ecosistemi stabili con comunità animali e vegetali caratteristiche; ogni bioma è definito da clima e vegetazione peculiari.  

/ Biosfera: Ensemble degli organismi viventi della Terra e degli ambienti che essi formano, inclusi i biomi.  

/ Eutrofizzazione: Fenomeno provocato dall'eccessivo apporto di nutrienti in un corpo idrico, causando la proliferazione incontrollata della vegetazione sommersa.  

/ Fitogeografia: Settore della botanica che studia la distribuzione geografica delle piante sul pianeta.  

/ Fauna: Catalogo delle specie animali residenti in un'area geografica specifica.  

/ Flora: Catalogo delle specie vegetali presenti in un determinato ambiente.  

/ Inquinamento: Modificazione negativa delle caratteristiche chimiche, fisiche o biologiche dell'ambiente (aria, acqua, suolo) causata da fattori esterni, spesso con effetti dannosi per la vita.  

/ Necton: Gruppo di animali capaci di nuotare attivamente contro corrente; comprende pesci, calamari, rettili come tartarughe marine e mammiferi quali foche, balene e delfini.  

/ Plancton: Organismi microscopici vegetali (fitoplancton) e animali (zooplancton) sospesi nell'acqua, il cui movimento dipende principalmente dalle correnti marine.  

/ Riserve naturali: Territori protetti per interesse generale, scientifico, educativo o estetico, sottratti alle attività umane e gestiti da autorità pubbliche per preservare il patrimonio naturale.  

/ Vegetazione: Combinazione delle specie vegetali predominanti in un territorio specifico che ne definiscono le caratteristiche principali, come la vegetazione alpina o mediterranea.  

/ Zoogeografia: Settore della zoologia dedicato allo studio della distribuzione geografica degli animali in relazione alla loro evoluzione e ai cambiamenti geologici terrestri.  