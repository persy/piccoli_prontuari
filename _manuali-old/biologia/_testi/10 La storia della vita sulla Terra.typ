#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La comparsa delle prime forme di vita fu preceduta, secondo le ipotesi più accreditate, da un periodo noto come evoluzione prebiotica. Durante questa fase si formarono le molecole organiche essenziali per costruire il materiale cellulare. Dagli organismi procarioti primordiali, considerati le forme di vita ancestrali, si svilupparono nel mare organismi con cellule eucariotiche. Tra questi, si trovano alghe vegetali capaci di fotosintesi e invertebrati marini, antenati delle piante e degli animali. Grazie alla crescente presenza di ossigeno nell'atmosfera terrestre, alcuni di questi organismi riuscirono a colonizzare la terraferma.

Nell'evoluzione animale, un evento significativo fu la comparsa dei mammiferi, tra cui si sono diversificati i primati, categoria che include l'uomo. Il processo evolutivo che condusse all'uomo moderno è noto come ominazione ed è caratterizzato da una serie di adattamenti biologici e comportamentali.]

== Dall'evoluzione prebiotica alle prime cellule

L'evoluzione prebiotica rappresenta quella fase chimica che precedette l'avvento della vita. In questo periodo, molecole inorganiche si trasformarono in composti organici attraverso reazioni chimiche. Tale processo si verificò durante il primo miliardo di anni dalla formazione della Terra, avvenuta circa 4,6 miliardi di anni fa.

Per descrivere gli eventi all'origine dell'evoluzione prebiotica, sono state avanzate diverse ipotesi scientifiche. Una di queste suggerisce che l'atmosfera terrestre primordiale fosse composta principalmente da idrogeno, metano, ammoniaca, vapore acqueo e anidride carbonica; l'ossigeno era presente in quantità irrilevante, rendendo l'atmosfera riducente. L'energia necessaria per innescare le reazioni chimiche proveniva dai lampi e dalla radiazione solare. Questi agenti rompevano i legami delle molecole inorganiche formando composti organici semplici che, in un ambiente privo di ossigeno (che avrebbe portato alla loro decomposizione), si accumularono in bacini di acqua calda conosciuti come brodo primordiale.

In seguito, le molecole presenti nel brodo primordiale, tra cui amminoacidi, lipidi e zuccheri semplici, si aggregarono dando origine a strutture sferiche chiamate microsfere. Queste sono considerate una possibile forma primitiva di cellule. Le microsfere erano dotate di una membrana che separava il loro ambiente interno da quello esterno e avevano la capacità di assorbire sostanze nutritive dall'ambiente esterno, crescere in dimensioni e replicarsi.

== Dalla cellula procariote alla cellula eucariote

Secondo le analisi dei resti fossili, le prime forme di vita cellulare apparvero circa 3,9 miliardi di anni fa. Queste cellule primitive erano procariote, anaerobiche ed eterotrofe, simili ai batteri. Si alimentavano sfruttando i composti organici disponibili nell'ambiente e traevano energia mediante processi di fermentazione.

Con il progressivo esaurimento delle sostanze nutritive presenti nel brodo primordiale, alcune cellule svilupparono la capacità di sintetizzare composti organici autonomamente. Grazie alla fotosintesi, iniziarono a utilizzare il diossido di carbonio come fonte di carbonio e l'energia solare per alimentare questo processo. Fu allora che comparvero le prime cellule autotrofe, rappresentate dai cianobatteri.

La fotosintesi trasformava l'acqua e il diossido di carbonio in composti organici, liberando ossigeno come sottoprodotto. Di conseguenza, l'atmosfera cominciò ad arricchirsi di ossigeno, creando le condizioni ideali per l'evoluzione dei batteri aerobici capaci di respirazione cellulare, un processo nettamente più efficiente della fermentazione per produrre energia.

Circa 1,6 miliardi di anni fa, secondo alcune teorie, l'origine delle cellule eucariote potrebbe essere attribuita a batteri anaerobici che si nutrivano inglobando altri batteri interi. Tale trasformazione si sarebbe verificata attraverso due tipi di simbiosi metaboliche:  
- La prima tra un batterio anaerobico eterotrofo e un batterio aerobico, che si evolse in mitocondrio. Questo processo avrebbe dato origine alle cellule animali.  
- La seconda tra una cellula contenente mitocondri e un cianobatterio, evolutosi successivamente in cloroplasto. Da questa simbiosi sarebbero derivate le cellule vegetali.  

Anche flagelli e altri organuli cellulari potrebbero essere stati acquisiti tramite simbiosi analoghe. In merito alla membrana nucleare, si ipotizza che essa si formò attraverso il ripiegamento interno della membrana cellulare, creando una struttura chiusa.

#figure(
  caption: [La storia della vita sulla Terra],
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
    table.header[Era][Periodo][Epoca][Anni (milioni di anni)][Eventi biologici],
    [Precambriano], [], [], [4600-3500 \ 3500-590], [Nascita delle prime cellule viventi; dominio dei batteri; comparsa della fotosintesi e sviluppo di ossigeno nell’atmosfera; prime alghe e invertebrati marini a corpo molle],
    [Paleozoico], [Cambriano], [], [590-505], [Diffusione delle alghe marine primitive; sviluppo della maggior parte dei tipi di invertebrati marini], 
    [], [Ordoviciano], [], [505-438], [Predominio degli invertebrati marini, in particolare artropodi e molluschi; primi pesci, funghi; invasione delle terre emerse a opera delle piante], 
    [], [Siluriano], [], [438-408], [Molti pesci, trilobiti e molluschi nelle acque oceaniche; prime piante vascolari; invasione della terraferma da parte degli artropodi], 
    [], [Devoniano], [], [408-360], [Diffusione di pesci e trilobiti nei mari; comparsa di anfibi e insetti], 
    [], [Carbonifero], [], [360-286], [Foreste palustri di felci arboree e licopodi; dominio degli anfibi; numerosi insetti; comparsa dei rettili], 
    [], [Permiano], [], [286-248], [Prime gimnosperme; massicce estinzioni marine, compresi gli ultimi trilobiti; grande sviluppo dei rettili e declino degli anfibi], 
    [Mesozoico], [Triassico], [], [248-213], [Primi mammiferi, dinosauri e altri rettili; foreste di gimnosperme e felci arboree], 
    [], [Giurassico], [], [213-144], [Dominio di dinosauri e conifere; primi
uccelli; angiosperme], 
    [], [Cretaceo], [], [144-65], [Dominio delle angiosperme; estinzione in massa di forme di vita marine e di qualcuna terrestre, inclusi gli ultimi dinosauri], 
    [Cenozoico], [Terziario], [Paleocene], [65-54], table.cell(rowspan: 5)[Diffusione di uccelli, mammiferi (tra cui primati), insetti e angiosperme; Driopitecine e Ramapitecine], 
    [], [], [Eocene], [54-37],  
    [], [], [Oligocene], [37-24],  
    [], [], [Miocene], [24-5], 
    [], [], [Pliocene], [5-2], 
    [], [Quaternario], [Pleistocene], [2-0,01], table.cell(rowspan: 2)[Evoluzione di Homo; estinzione di molti mammiferi di grosse dimensioni], 
    [], [], [Olocene], [0,01-oggi], 
)  
)

== L'evoluzione nel mare

L'evoluzione degli organismi proseguì nell'ambiente marino, poiché l'atmosfera terrestre non aveva ancora caratteristiche tali da sostenere la vita. La transizione da organismi unicellulari a pluricellulari rimane un fenomeno complesso e non del tutto chiarito. Tuttavia, l'organizzazione pluricellulare offrì significativi vantaggi evolutivi: maggiore dimensione (senza le limitazioni imposte dal rapporto superficie-volume delle cellule singole), specializzazione funzionale e possibilità di riproduzione sessuata.

I primi organismi pluricellulari non possedevano parti dure adatte alla fossilizzazione, motivo per cui i loro resti sono limitati a impronte. Le prime alghe comparvero circa 1,4 miliardi di anni fa, mentre i primi animali, simili alle meduse odierne, datano a circa 600 milioni di anni fa.

Un cambiamento nelle caratteristiche chimiche del mare si verificò circa 590 milioni di anni fa: l'acqua divenne ricca di silice e sali minerali come calcio e fosforo. Questo favorì l'emergere di strutture mineralizzate, come gusci e conchiglie, che avevano una maggiore probabilità di conservazione fossile. Da questo periodo i resti fossili si fanno più frequenti, indicativi della presenza di organismi marini con forme varie, tra cui trilobiti, ammoniti e altri difficili da classificare.

Circa 500 milioni di anni fa apparvero gli ostracodermi, i primi animali dotati di un endoscheletro, ovvero una struttura interna di sostegno. Gli ostracodermi erano privi di mascelle e arti ed erano rivestiti da una corazza ossea che lasciava libera solo la coda. Da queste forme primitive si svilupparono successivamente i pesci.

#note(bottom)[== *🧩* L'evoluzione prebiotica riprodotta in laboratorio <senza_numero>

Negli anni \'20 del Novecento, il biochimico russo Aleksandr Oparin (1894-1980) e il biologo inglese John Burdon Sanderson Haldane (1892-1964) elaborarono un'ipotesi secondo cui, in un'atmosfera riducente, comuni reazioni chimiche sarebbero in grado di generare molecole organiche partendo da molecole inorganiche. 

Circa trent'anni più tardi, nel 1953, lo scienziato americano Stanley Miller (nato nel 1930) mise alla prova questa ipotesi con un esperimento. Miller creò un sistema in cui i gas tipici dell'atmosfera primitiva venivano esposti a scariche elettriche in assenza di ossigeno e osservò la formazione di molecole organiche, inclusi alcuni amminoacidi.

Sempre negli anni \'50, lo scienziato americano Sidney Fox riuscì a ottenere microsfere tramite un processo che prevedeva il riscaldamento di amminoacidi in ambiente privo di ossigeno. Da questa operazione si originarono spontaneamente polipeptidi, che Fox definì protenoidi. Questi, una volta immersi in acqua, formavano una sorta di doppio strato attorno a una piccola vescicola, dando vita alle microsfere. Secondo teorie successive, un ruolo cruciale nell'aggregazione delle semplici molecole organiche in polimeri sarebbe stato svolto da minerali argillosi dotati di attività catalitica.

Parallelamente, alcuni ricercatori hanno avanzato l'ipotesi della panspermia, che suggerisce come la vita possa essere arrivata sulla Terra dall'esterno, ossia dallo spazio.]

== Il passaggio sulla terraferma

Con l'aumento graduale della concentrazione di ossigeno nell'atmosfera e la formazione dello strato di ozono che protegge dagli effetti dannosi delle radiazioni ultraviolette, l'ambiente terrestre iniziò a diventare ospitale per l'insediamento degli organismi viventi.

=== L'evoluzione delle piante

I primi esseri viventi ad adattarsi alla vita sulla terraferma furono vegetali originati dalle alghe verdi. Questi organismi svilupparono progressivamente strutture simili a radici per ancorarsi al suolo, vasi per il trasporto di acqua e nutrienti, e organi specializzati per la riproduzione, in grado di proteggere i gameti dalla disidratazione.

Durante un periodo caratterizzato da un clima caldo e umido, tra 360 e 286 milioni di anni fa, si assistette alla crescita di grandi felci arboree e licopodi. I loro resti fossilizzati sono oggi la principale fonte dei depositi di carbone fossile. 

In un successivo periodo più arido, tra 286 e 248 milioni di anni fa, si affermarono le gimnosperme, piante come pini e larici capaci di tollerare la siccità. Circa 100 milioni di anni dopo, da queste gimnosperme derivarono le angiosperme, caratterizzate dai semi racchiusi nel frutto, che oggi rappresentano le forme vegetali predominanti sul pianeta.

=== L'evoluzione degli animali

Poco dopo la colonizzazione della terraferma da parte delle piante, anche gli animali iniziarono ad adattarsi a questo nuovo ambiente. I primi a farlo furono gli artropodi, come crostacei, ragni e insetti, che già nei mari avevano evoluto un esoscheletro rigido e impermeabile. Questo rivestimento esterno garantiva protezione contro la forza di gravità e permetteva loro di vivere senza il supporto dell'acqua. Gli artropodi si svilupparono in una grande varietà di forme e dimensioni, dominando indisturbati il mondo terrestre per milioni di anni.

Circa 350 milioni di anni fa, dagli antenati dei pesci crossopterigi emersero gli anfibi. I crossopterigi possedevano pinne robuste e muscolose oltre a un'estroflessione del canale digerente, funzionale a respirare aria come rudimentale polmone in caso di necessità. Gli anfibi evolsero arti veri e propri e polmoni più efficaci, ma continuarono a dipendere dall'acqua, soprattutto per la loro riproduzione.

Da un ramo evolutivo degli anfibi che aveva sviluppato adattamenti alla siccità nacquero i rettili. Questi si differenziarono dai loro predecessori grazie a caratteristiche come la pelle ricoperta di squame impermeabili, la fecondazione interna e uova protette da gusci impermeabili. I rettili, al pari degli anfibi, erano ectotermi o eterotermi, cioè incapaci di mantenere una temperatura corporea costante, adattandosi quindi alle variazioni termiche dell'ambiente circostante. Dominarono incontrastati la terra per circa 250 milioni di anni, periodo in cui si svilupparono anche rettili giganteschi, come i dinosauri. Alcuni rettili si adattarono alla vita acquatica, mentre altri acquisirono la capacità di compiere voli planati sfruttando espansioni cutanee.

Circa 65 milioni di anni fa, un cambiamento climatico su scala globale, probabilmente causato dall'impatto di un enorme meteorite sulla Terra, portò all'estinzione di molte specie animali, incluse le ammoniti e gran parte dei grandi rettili.

Frattanto, alcuni rettili avevano evoluto strutture come peli e penne per trattenere meglio il calore corporeo, rendendoli endotermi o omeotermi. Grazie a questa capacità di mantenere una temperatura interna stabile, potevano essere attivi anche durante le ore notturne, eludendo i predatori ectotermi limitati dal freddo.

Gli uccelli hanno origine proprio da un gruppo di rettili dotati di penne. Con l'evoluzione, alcune penne divennero più lunghe e robuste sulle estremità degli arti anteriori e sulla coda, permettendo loro prima di planare e successivamente di volare. Questo fu possibile anche grazie a modificazioni negli scheletri e nella muscolatura che favorivano il volo.

I mammiferi, invece, derivano dai rettili ricoperti di peli. Si distinguevano per la viviparità, ossia partoriscono cuccioli vivi anziché deporre uova, e per la presenza di ghiandole mammarie per nutrire i piccoli. I primi mammiferi erano creature di piccola taglia e avevano abitudini notturne. Con l'estinzione della maggior parte degli antichi rettili, riuscirono a diversificarsi enormemente e colonizzare ogni ambiente disponibile.

== L'evoluzione dell'uomo

L'insieme degli eventi che hanno portato all'evoluzione della specie umana è noto come ominazione. Le fasi iniziali di questo processo si sono svolte in Africa. Tradizionalmente, si considera che l'ominazione abbia avuto inizio circa 70 milioni di anni fa, con la comparsa dei primati, il gruppo di mammiferi al quale appartiene l'essere umano. I primati originari erano animali notturni, arboricoli, dotati di mani e piedi prensili, un muso piatto e occhi grandi e frontali che permettevano una visione stereoscopica, utile per la percezione della profondità. Col tempo alcuni primati divennero diurni, acquisendo la capacità di distinguere i colori e sviluppando la brachiazione, un sistema di movimento basato sull'oscillazione tra i rami mediante le braccia. Questo tipo di locomozione comportò significativi cambiamenti nella colonna vertebrale e nel bacino, preparando il terreno per l'evoluzione della postura eretta, una caratteristica fondamentale dell'uomo.

Intorno a 20 milioni di anni fa appare un gruppo di primati chiamati Driopitecine, che presentavano caratteristiche simili a quelle umane ma conducevano ancora una vita arboricola. Da questi derivarono le Ramapitecine, vissute tra 14 e 8 milioni di anni fa. La loro comparsa coincise con un lungo periodo di raffreddamento climatico, che portò al ritiro delle foreste tropicali e alla nascita delle savane, un ambiente meno adatto alla vita sugli alberi. L'analisi dei denti delle Ramapitecine indica un primo adattamento alla vita terrestre.

== La comparsa degli ominidi

Gli ominidi, progenitori dell'uomo, si distinguono per la camminata eretta e la locomozione bipede. I primi ominidi appartenevano al genere _Australopithecus_, i cui resti fossili sono stati rinvenuti principalmente in Tanzania e in Etiopia. La postura bipede dell'_Australopithecus_ liberò gli arti superiori dal compito della locomozione, permettendo loro di perfezionarsi nella presa e nella manipolazione degli oggetti. La specie più antica è _A. ramidus_, vissuta circa 4,4 milioni di anni fa, della quale abbiamo solo alcuni denti come testimonianza. Tra le scoperte più significative vi è lo scheletro quasi completo di _A. afarensis_, ritrovato nel 1974 e soprannominato Lucy dagli scopritori.

Circa 2 milioni di anni fa dall'_Australopithecus africanus_ nacque _Homo habilis_, capace di realizzare utensili rudimentali in pietra scheggiata. Successivamente, _Homo habilis_ diede origine a _Homo erectus_, circa 1,8 milioni di anni fa. Questa specie mostrò progressi nella fabbricazione degli strumenti e si diffuse al di fuori dell'Africa arrivando in Eurasia. _H. erectus_ sviluppò l'uso del fuoco per scaldarsi e probabilmente per cucinare; migliorò le tecniche di caccia ai grandi animali, costruì accampamenti e organizzò comunità tribali grazie all'evoluzione del linguaggio.

== L'uomo attuale

Attorno a 200.000 anni fa _Homo erectus_ venne gradualmente sostituito da _Homo sapiens_. In Europa fu presente _Homo sapiens neanderthalensis_, noto come uomo di Neanderthal, che contribuì a migliorare le dinamiche sociali: le tribù divennero più strutturate, con proprie tradizioni; le comunità iniziarono a prendersi cura degli anziani e a praticare sepolture, forse accompagnate da rituali.

Intorno a 90.000 anni fa apparve l'uomo moderno, _Homo sapiens sapiens_, che progressivamente assimilò le popolazioni Neanderthal. Questa specie dimostrò una grande capacità creativa: lavorava ossa e corna per creare strumenti come aghi e arpioni da usare nella pesca. Inoltre, sviluppò un senso artistico evidente nei ritrovamenti di pitture rupestri, statuette animali e raffigurazioni femminili. _Homo sapiens sapiens_ addomesticò animali e diede inizio all'agricoltura, modificando profondamente il proprio rapporto con l'ambiente circostante.

#figure(
  caption: [Principali caratteristiche degli ominidi],
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),
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
  columns: (8),
  table.header[Ominide][Volume \ cranico][Altezza#footnote[In centimetri. Nel caso di doppi valori, il primo si riferisce all'esemplare maschio, il secondo a quello femmina.]][Dentatura][Fronte][Mento][Cibo][Abitudini],
  [_A. afarensis_], [400], [100 \ 150], [mista tra scimmia e uomo; spazi tra i denti, canini sporgenti], [sfuggente], [assente], [frutti secchi, granaglie], [raccolta], 
  [_A. africanus_], [450-500], [120], [canini normali, denti contigui, molari grandi], [inclinata], [assente], [frutti secchi, bacche, uova, larve], [raccolta], 
  [_A. robustus_], [500-600], [120], [canini piccoli, molari enormi], [sfuggente, cresta cranica], [assente], [erbe, radici, germogli], [raccolta], 
  [_H. abilis_], [680-750], [150], [denti grandi ma proporzionati], [inclinata], [assente], [vegetali, carne di animali morti], [raccolta di vegetali e animali morti], 
  [_H. erectus_], [800-1300], [160-170], [denti grandi ma proporzionati], [quasi dritta], [accennato], [vegetali e carne], [raccolta e caccia], 
  [_H. neanderthalensis_], [1300-1600], [150-160], [canini piccoli, molari grandi], [inclinata], [accennato], [vegetali e carne], [raccolta e caccia], 
  [_H. sapiens_], [1300-1600], [160-180], [denti più piccoli], [diritta], [presente], [vegetalie e carne], [raccolta, agricoltura, caccia, domesticazione],   
)  
)

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Brodo primordiale: Soluzione costituita da molecole organiche generate dall'evoluzione prebiotica, accumulatesi in ambienti acquatici poco profondi e caldi. Tali molecole, successivamente, avrebbero dato origine a strutture sferiche denominate microsfere. Il brodo primordiale è considerato il luogo in cui ebbero origine le prime forme di vita.

/ Evoluzione prebiotica: Processi chimici che occorsero nell'atmosfera primitiva, conducendo alla formazione di molecole organiche semplici a partire da sostanze inorganiche.

/ Ipotesi endosimbiotica: Teoria che spiega l'origine della cellula eucariotica attraverso l'incorporazione endocitotica, da parte di un batterio ancestrale, di una cellula aerobica (precursore del mitocondrio) e di una cellula autotrofa (precursore del cloroplasto).

/ Ominazione: Sequenza di eventi evolutivi che portarono alla comparsa della specie umana.

/ Ominidi: Primati caratterizzati da postura eretta e locomozione bipede.

