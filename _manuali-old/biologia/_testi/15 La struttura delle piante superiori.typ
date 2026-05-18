#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[Come gli animali, anche le piante nel corso dell'evoluzione hanno raggiunto due obiettivi fondamentali: la conquista dell'ambiente terrestre e l'incremento delle dimensioni. Per farlo, hanno dovuto sviluppare tessuti e organi specializzati non solo nella riproduzione e nella fotosintesi, ma anche per nuove funzioni, tra cui strutture di sostegno nell'ambiente aereo, sistemi di assorbimento dell'acqua e meccanismi per il trasporto delle soluzioni verso l'alto.]

== Dalle cellule ai tessuti

Negli organismi pluricellulari tutte le cellule derivano da successive divisioni mitotiche di una singola cellula, lo zigote, ovvero la cellula uovo fecondata dal gamete maschile. Durante lo sviluppo embrionale, le cellule inizialmente totipotenti, ossia uguali e capaci di dare origine a diversi tipi cellulari, si differenziano progressivamente. Diventano così cellule mature, ciascuna destinata a svolgere un compito specifico all'interno dell'organismo.

== Le cellule delle piante

Nelle piante, il processo di differenziamento comporta l'ispessimento della parete cellulare, che si arricchisce di varie sostanze. Le cellule lignificate, impregnate di lignina, sono rigide e poco elastiche, ideali per il sostegno. Le cellule suberificate, che contengono suberina, sono impermeabili e perfette per la protezione e l'isolamento. Infine, le cellule impregnate di sali minerali come calcare o silice diventano estremamente dure e spesso presentano qualità taglienti. Completato il processo di differenziamento, si possono generare fino a 70 tipi di cellule differenti, molte delle quali adempiono alla loro funzione anche da morte, grazie a pareti cellulari molto ispessite.

Di seguito i principali tipi di cellule vegetali:
- cellule epidermiche: cellule vive con contorni sinuosi che permettono loro di incastrarsi senza lasciare spazi intercellulari. Sono appiattite e spesso rivestite da sostanze cerose come la cutina, rendendole impermeabili all'acqua; alcune possono sviluppare sottili prolungamenti detti peli;  
- tracheidi: cellule morte lignificate, sottili e allungate con pareti trasversali oblique; presentano punteggiature sulla parete;
- elementi delle trachee: cellule morte lignificate dalla forma cilindrica e con una larghezza superiore a quella delle tracheidi; le pareti trasversali sono assenti o perforate.  
- cellule cribrose: cellule vive e allungate con pareti puntellate di pori
- fibre: cellule morte e allungate, con pareti lignificate;
- sclereidi: cellule morte dalla forma tondeggiante e lignificata;
- cellule del collenchima: cellule vive, allungate e poligonali con pareti cellulari ispessite agli angoli o sulla superficie completa;
- cellule parenchimatiche: poco differenziate, con pareti cellulosiche sottili che raramente si lignificano.

== I tessuti delle cormofite

Il corpo delle piante pluricellulari più primitive, come alghe e briofite, è strutturato in talli indifferenziati composti da pseudotessuti che non possiedono le caratteristiche dei tessuti più evoluti. Al contrario, nelle piante superiori, dette cormofite, il corpo è differenziato in radici, fusto e foglie. I tessuti descritti appartengono pertanto esclusivamente a queste piante più complesse.

Un tessuto è formato da un insieme di cellule che presenta alcune proprietà fondamentali:  
- le cellule che lo compongono svolgono la stessa funzione;  
- si origina dalla divisione di una o più cellule lungo le tre dimensioni dello spazio;  
- mantiene connessioni plasmatiche tra le cellule tramite i plasmodesmi, filamenti citoplasmatici;  
- la crescita cellulare è spesso accompagnata dalla formazione di spazi intercellulari.  

I tessuti delle cormofite si dividono in due categorie principali: tessuti embrionali o meristematici e tessuti permanenti o definitivi. 

=== Tessuti meristematici

I tessuti meristematici si distinguono per la presenza di cellule indifferenziate capaci di dividersi continuamente. Questi tessuti rimangono attivi durante tutto il ciclo vitale della pianta, permettendone l'accrescimento e la formazione di nuovi tessuti. Si classificano in meristemi primari e secondari.

I meristemi primari si sviluppano fin dalle prime fasi di crescita della pianta. Sono localizzati agli apici delle radici e dei fusti e danno origine ai tessuti primari, responsabili dell'accrescimento in altezza e della struttura primaria della pianta.

I meristemi secondari derivano da cellule già differenziate che riacquistano la capacità di dividersi. Questi meristemi laterali, detti anche cambi, circondano radici e fusti come cilindri concentrici e producono i tessuti secondari, essenziali per l'accrescimento in diametro e per la struttura secondaria. Si possono distinguere due tipi principali:  
- il cambio cribro-legnoso, che genera i tessuti di conduzione; il legno o xilema viene prodotto verso l'interno, mentre il libro o floema verso l'esterno di radici e fusti;  
- il cambio subero-fellodermico o fellogeno, che crea felloderma verso l'interno e sughero verso l'esterno.

== Tessuti definitivi

I tessuti definitivi sono formati da cellule mature, altamente specializzate per svolgere diverse funzioni, e che hanno perso la capacità di dividersi. Essi si suddividono in:

- tessuti tegumentali: comprendono l'epidermide e il sughero, strutture dedicate alla protezione che rivestono la superficie esterna della pianta.  
- tessuti conduttori (o vascolari): includono il legno, responsabile del trasporto di acqua e sali minerali, e il libro, incaricato del trasporto della linfa; inoltre, i tessuti conduttori lignificati contribuiscono parzialmente al sostegno meccanico della parte aerea della pianta.  
- tessuti fondamentali: sono caratterizzati da una varietà di funzioni:
 - tessuti meccanici: comprendono sclerenchima e collenchima, strutture che garantiscono il sostegno.  
 - tessuti parenchimatici (o parenchima): incaricati di funzioni di riempimento e accumulo.  

Questi tessuti lavorano insieme per formare le diverse strutture, apparati e sistemi, che costituiscono l'unità funzionale delle piante. Le strutture principali includono radici, fusto e foglie, mentre i fiori costituiscono l'organo riproduttivo, derivante dalla trasformazione di specifiche foglie.

#figure(
  caption: [I principali tessuti vegetali],
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
    columns: (auto,70pt,150pt,auto,auto,),
    table.header[Tessuti][Tipologia][Caratteristiche][Funzione][Localizzazione],
    table.cell(rowspan: 2)[Tegumentali], [Epidermide], [Cellule vive generalmente monostratificate, appiattite e strettamente vicine, ricoperte verso l'esterno da una sostanza cerosa (cutina)], [Protezione e riduzione delle perdite d'acqua], [Rivestimento esterno di fiori, frutti, semi, foglie, fusti e radici in struttura primaria],
    [Sughero], [Cellule morte, appiattite, strettamente vicine, con parete spessa impregnata di una sostanza impermeabile (suberina) ], [Impermeabilizzazione all'acqua e ai gas; protezione], [Rivestimento di fusti e radici in struttura secondaria],
    table.cell(rowspan: 2)[Conduttori], [Legno o \ xilema], [Cellule morte, allungate, con parete lignificata, disposte a formare lunghi "tubi"; sono dette tracheidi se sottili, con pareti trasversali; elementi delle trachee se di diametro maggiore, prive di parete trasversale: formano i vasi o trachee], [Conduzione di acqua e sali minerali; sostegno], [Fasci conduttori di radici e fusto (legno)],
    [Libro o \ floema], [Cellule vive, allungate, con parete ricca di pori, soprattutto sulle pareti trasversali (cellule cribrose); se una sull’altra formano i tubi cribrosi; sono in connessione con cellule compagne, vive, allungate, a parete sottile], [Conduzione di sostanze nutritive], [Fasci conduttori di radici e fusto (libro)],
    table.cell(rowspan: 2)[Meccanici], [Sclerenchima], [Cellule morte, con parete spessa e lignificata; sono dette fibre se allungate, sclereidi se tondeggianti], [Sostegno di organi adulti], [Fasci conduttori di fusto e radici; rivestimento dei semi; polpa di alcuni frutti],
    [Collenchima], [Cellule vive, allungate, con parete irregolarmente ispessita], [Sostegno di organi in accrescimento per distensione], [Cordoni o strati subepidermici di giovani fusti e piccioli],
    [Parenchimatici], [Parenchima], [Cellule vive, con parete sottile], [Rimarginazione di ferite; secrezione e immagazzinamento di acqua, aria o altre sostanze; trasporto di acqua e sostanze nutritive], [Corteccia dei fusti e delle radici; midollo e raggi midollari dei fusti; mesofillo delle foglie; polpa dei frutti],
)  
)

#note(bottom)[== *🧩* La dendrocronologia <senza_numero>

La dendrocronologia offre un contributo significativo alla datazione assoluta mediante lo studio e la quantificazione degli anelli annuali di accrescimento degli alberi. Attraverso questa disciplina è possibile ricostruire le fluttuazioni climatiche del passato e stabilire cronologie precise.

All'interno del tronco di una pianta, i vasi conduttori si modificano in risposta alle variazioni stagionali della disponibilità di acqua. Durante la primavera, ad esempio, quando le gemme si schiudono richiedendo un apporto idrico maggiore, i vasi formano pareti più sottili per favorire il passaggio dell'acqua. Tali modificazioni stagionali determinano anche un incremento nel diametro del fusto, accompagnato dalla formazione di nuovo tessuto legnoso. Una sezione trasversale del tronco rivela così anelli annuali distinti: una zona più chiara e ampia corrisponde al legno primaverile, mentre una zona più scura e compatta rappresenta il legno estivo.

Oltre a fornire informazioni temporali sullo sviluppo dell'albero, le sezioni trasversali possono essere utilizzate per analisi ambientali. Ad esempio, esse possono evidenziare segnali di contaminazione da metalli pesanti o illustrare relazioni tra crescita vegetativa e inquinanti come la pioggia acida.

Per stimare l'età di una pianta senza abbatterla, viene applicata una tecnica detta carotaggio. Questo metodo prevede la raccolta di un campione cilindrico di legno prelevato lungo il raggio del tronco. Gli anelli annuali del campione vengono quindi datati e confrontati con quelli provenienti da alberi vicini, presumibilmente più vecchi o già abbattuti in passato. Attraverso questa procedura è possibile estendere la cronologia arborea e risalire così a periodi storici sempre più remoti.]

== Radice

La radice è la parte sotterranea delle cormofite, indispensabile per l'ancoraggio al suolo, l'assorbimento di acqua e sali minerali, e, in alcuni casi, per la funzione di riserva. Nella sua struttura si distinguono diverse zone principali:
- apice: protetto da una cuffia (detta anche caliptra o pileoriza), secreta sostanze mucillaginose utili a prevenire danni causati dall'abrasione durante la crescita.
- zona di distensione: composta da cellule allungate che iniziano a differenziarsi formando tessuti conduttori.
- zona pilifera: caratterizzata dalla presenza di peli radicali, espansioni sottili delle cellule epidermiche che aumentano la superficie d'assorbimento. Questi peli radicali, di breve durata, vengono costantemente sostituiti; con il loro decadimento, la radice perde la capacità di assorbimento in quella specifica zona, mantenendo solo la funzione di conduzione. Per tale motivo, la regione pilifera continua a spostarsi verso l'apice.

Osservando una radice in sezione trasversale, dall'esterno verso l'interno si distinguono:
- epidermide
- corteccia: include sughero, fellogeno, felloderma e endoderma. Le cellule dell'endoderma presentano la banda del Caspary, una striscia impermeabile che regola il passaggio delle sostanze.
- cilindro centrale: Comprende il periciclo e i fasci conduttori (libro, cambio e legno), collegati ai corrispondenti del fusto.

Dal periciclo, formato da cellule meristematiche residue, si originano le radici laterali (o secondarie) sotto stimoli ormonali. Queste radici, grazie ad enzimi degradativi, attraversano la corteccia e l'epidermide fino a emergere esternamente. La loro funzione è ampliare l'area di esplorazione del terreno. In alcune specie, la parte più interna del cilindro centrale è occupata dal midollo, un tessuto parenchimatico di riserva.

La radice segue un geotropismo positivo, crescendo verso il basso. La crescita in lunghezza (o accrescimento primario) deriva dall'attività delle cellule meristematiche dell'apice. Nelle gimnosperme e nelle dicotiledoni avviene anche un accrescimento secondario in diametro, determinato dal cambio cribro-legnoso (situato fra libro e legno) e dal fellogeno nella corteccia.

=== Tipi di radice

Nelle piante superiori si possono identificare diverse tipologie di radici:

- radici fascicolate: presenti nelle monocotiledoni. Le radici secondarie raggiungono o superano in lunghezza la radice principale.  
- radici a fittone: caratteristiche delle dicotiledoni. La radice principale è spesso ingrossata per svolgere funzioni di riserva e si ramifica in radici laterali.
- radici avventizie: alcune piante rampicanti sviluppano queste radici lungo il fusto per aggrapparsi ai sostegni.
- radici delle piante galleggianti: rimangono libere nell'acqua e contengono clorofilla.  
- radici aeree delle epifite: queste piante crescono sugli alberi e hanno radici con clorofilla.  
- radici con pneumatofori: presente nelle mangrovie e altre piante palustri; queste sacche aeree fungono da riserva di ossigeno.

Nelle regioni temperate, dove l'acqua è disponibile in modo equilibrato, la parte aerea della pianta risulta più sviluppata rispetto alla radice. Al contrario, nelle aree aride, le piante sono generalmente molto distanziate tra loro e l'apparato radicale tende a essere più ampio rispetto alle foglie. Alcune piante desertiche dispongono le radici superficialmente per assorbire rapidamente l'acqua appena accessibile; altre, come le palme, sviluppano radici in profondità alla ricerca della falda freatica.

== Fusto

Il fusto rappresenta l'organo epigeo della pianta, ovvero situato al di sopra del terreno, e svolge una funzione essenziale di supporto per l'apparato fogliare. Attraverso di esso, si realizza il trasporto delle soluzioni assorbite dalle radici verso le foglie, oltre alla distribuzione della linfa elaborata dalle foglie al resto dell'organismo vegetale.

La struttura del fusto è prevalentemente composta da tessuti conduttori (legno e libro), che, insieme ai tessuti di sostegno e al cambio, formano i fasci conduttori. Analogamente alla radice, la struttura del fusto si divide, procedendo dall'esterno verso l'interno, nelle seguenti componenti: epidermide, corteccia (includente sughero, fellogeno e felloderma), fasci cribro-vascolari (comprendenti libro, cambio e legno) e midollo.

Nell'epidermide si trovano piccole aperture, dette lenticelle, che facilitano gli scambi gassosi tra l'interno della pianta e l'ambiente esterno. Nelle gimnosperme, il legno è formato esclusivamente da tracheidi, strutture considerate più primitive a causa della loro sottigliezza e dalle pareti trasversali che limitano la velocità del flusso ascendente. Al contrario, nelle angiosperme oltre alle tracheidi si trovano trachee, che grazie al riassorbimento delle pareti trasversali e al loro maggiore diametro, permettono un flusso più rapido ed efficiente.

Nei fusti delle monocotiledoni i fasci cribro-vascolari sono distribuiti uniformemente nel tessuto fondamentale. Nelle dicotiledoni, invece, questi fasci si dispongono in un anello continuo che separa la corteccia dal midollo.

=== Accrescimento

Il processo di crescita in altezza del giovane fusto che emerge dal seme germogliato, noto come accrescimento primario, è regolato dal tessuto meristematico apicale. In questa fase, la zona tra due nodi successivi (dove sono inserite le gemme fogliari) si allunga separando progressivamente le foglie man mano che si sviluppano.

Nelle monocotiledoni l'accrescimento primario apicale è affiancato da un accrescimento intercalare localizzato nei nodi, che determina una crescita molto rapida. Successivamente inizia il differenziamento cellulare nei vari tessuti: epidermide, corteccia primaria, fasci conduttori e midollo. Nelle gimnosperme e nelle dicotiledoni perenni si verifica anche un accrescimento in diametro, detto accrescimento secondario, governato dai meristemi secondari. Il cambio cribro-legnoso genera nuovo legno verso l'interno e libro verso l'esterno, mentre il fellogeno nella corteccia produce sughero verso l'esterno, formando la corteccia secondaria. Il sughero, essendo composto da cellule morte, non può ulteriormente espandersi in diametro. Con il progressivo accrescimento della pianta, l'epidermide si lacera e gli strati esterni di sughero tendono a staccarsi sotto forma di frammenti più o meno estesi. Questi frammenti danno origine al ritidoma (conosciuto anche come scorza o impropriamente "corteccia" dell'albero), che riveste esternamente il fusto. Le tipiche fessurazioni del ritidoma variano in base alla specie, creando disegni distintivi.

Dopo la fase di allungamento, alcune cellule meristematiche rimangono lungo il fusto per formare gemme laterali. Quando stimolate adeguatamente da segnali ormonali, queste gemme possono svilupparsi in rami che mantengono la consueta successione di nodi e internodi caratteristica della pianta originale e presentano un sistema conduttore direttamente connesso a quello del fusto principale.

=== Tipi di fusto

L'altezza dei fusti delle piante può variare enormemente: si parte da pochi centimetri nel caso di molte piante erbacee fino a superare i 100 metri nelle sequoie. In diverse specie, il fusto può essere estremamente ridotto o del tutto assente, come nelle piante acauli, a cuscinetto o a pulvino. Altre volte può strisciare sul terreno, come lo stolone, oppure rimanere interrato e presentarsi ingrossato come accade con il bulbo. Alcuni fusti si trasformano in organi di riserva di amido, come il rizoma o il tubero, oppure di acqua, come nel caso del baobab. Nei cactus, invece, il fusto svolge anche la funzione clorofilliana.

In base al tipo di lignificazione, le piante si classificano in erbacee o legnose. Per quanto riguarda il portamento, possono essere definite prostrate, erette o rampicanti; mentre considerando la ramificazione, si distinguono in arbustive o fruticose (con ramificazioni che partono dalla base del fusto) e arboree (con ramificazioni che iniziano a una certa altezza dal terreno).

== Foglia

La foglia rappresenta l'organo fondamentale per la regolazione della fotosintesi, della respirazione e della traspirazione nella pianta, limitando la perdita eccessiva di acqua. Dopo la fase di germinazione, le foglie emergono come piccoli abbozzi ai lati dell'apice del germoglio; successivamente si sviluppano nella lamina o lembo, una parte piatta collegata al fusto o al ramo tramite il picciolo. Il picciolo è attraversato dai fasci cribro-vascolari, che trasportano i tessuti conduttori provenienti dal ramo. Nella lamina, tali fasci ramificano formando le nervature.

Il picciolo può presentare espansioni (stipole), prolungarsi fino ad avvolgere il fusto (guaina) o essere del tutto assente; in questo caso le foglie vengono dette sessili. Strutturalmente, le foglie sono costituite dai seguenti tessuti:
- epidermide superiore;
- mesofillo (tessuto parenchimatico) diviso in uno strato superiore a palizzata, caratterizzato da cellule allungate e parallele, e uno strato inferiore lacunoso, che presenta numerosi spazi intercellulari;
- epidermide inferiore, con una ricca presenza di stomi che permettono lo scambio di vapor d'acqua e gas (CO2 e O2) tra l'interno della foglia e l'ambiente esterno.

=== Tipi di foglie

Le foglie possono essere semplici o composte, ovvero formate da più foglioline attaccate al medesimo picciolo. Esse variano anche in base alla consistenza (coriacee o molli), alla forma della lamina, al margine o al tipo di picciolo. Inoltre, alcune foglie si modificano per svolgere funzioni diverse, come accade con le squame dei bulbi, i cirri che ancorano il fusto a sostegni o le brattee colorate presenti in numerosi fiori. Persino i fiori stessi derivano da foglie che si sono adattate nel corso dell'evoluzione.

== Fiore

Il fiore rappresenta la struttura riproduttiva principale delle angiosperme, all'interno della quale si realizza il processo di impollinazione. Questo consiste nella fecondazione del gamete femminile, situato nell'ovulo, da parte del gamete maschile contenuto nel polline. La struttura del fiore è caratterizzata da verticilli fogliari modificati, noti come sporofilli.

Nel contesto della morfologia delle angiosperme, il fiore si sviluppa attorno a un asse fiorale. All'estremità espansa di questo asse, denominata ricettacolo, si dispongono i differenti verticilli foliarizzati:
- il calice, posizionato più esternamente, è costituito dai sepali, generalmente di colore verde e deputati alla protezione e avvolgimento della gemma fiorale.
- la corolla, posta internamente al calice, è formata da petali tipicamente vistosi e colorati; la loro funzione principale è di tipo vessillare, ovvero serve ad attrarre gli insetti impollinatori.
- l'androceo rappresenta l'apparato riproduttivo maschile, composto da stami. Ogni stame comprende un filamento che sostiene l'antera, struttura dove viene prodotto il polline.
- il gineceo costituisce l'apparato riproduttivo femminile ed è formato dal pistillo (o carpello). Il pistillo include un ovario che racchiude gli ovuli, uno stilo allungato e uno stimma spesso appiccicoso, predisposto a trattenere i granuli di polline.

I fiori possono essere classificati in base alla loro composizione: si definiscono ermafroditi quando contengono sia stami sia pistilli nello stesso fiore, oppure unisessuali quando sono distinti tra maschili e femminili. Nelle specie dioiche, i fiori maschili e femminili crescono su piante diverse, mentre nelle specie monoiche essi sono presenti sulla medesima pianta. I fiori possono manifestarsi in forma isolata o aggregata in strutture chiamate infiorescenze.

#pagebreak()
#set page(fill: main_scienze.lighten(90%))
== Glossario <senza_numero>

/ Accrescimento primario: Crescita in lunghezza del fusto e della radice dovuta alla divisione delle cellule del meristema apicale.  

/ Accrescimento secondario: Espansione in diametro del fusto e della radice, resa possibile dalla divisione e dal differenziamento delle cellule dei tessuti cambi cribro-vascolare e subero-fellodermico.  

/ Cambio: Tessuto meristematico secondario le cui cellule si differenziano in tessuti diversi orientandosi verso l'interno o l'esterno; è responsabile dell'accrescimento secondario delle piante.  

/ Corteccia: Tessuto parenchimatico situato tra l'epidermide e il cilindro centrale del fusto e della radice.  

/ Endoderma: Strato di cellule interne della corteccia della radice che separa quest'ultima dal cilindro centrale; le pareti cellulari sono rafforzate dalla banda del Caspary.  

/ Fascio conduttore: Gruppo integrato di tessuti di conduzione e sostegno (trachee, tracheidi, tubi cribrosi) che si estende lungo radici, fusto e foglie senza interruzioni.  

/ Legno o xilema: Tessuto conduttore che trasporta acqua e sali minerali dalle radici alle foglie.  

/ Libro o floema: Tessuto conduttore che distribuisce le sostanze nutritive dalle foglie alle radici.  

/ Meristema: Tessuto embrionale caratterizzato da una persistente capacità di divisione cellulare.  

/ Periciclo: Strato più esterno del cilindro centrale della radice da cui originano le radici laterali.  

/ Ritidoma o scorza: Strato più esterno del sughero, erroneamente chiamato "corteccia", che tende a sfaldarsi e staccarsi con la crescita della pianta.  

/ Sughero: Tessuto tegumentale secondario originato dal fellogeno, presente nella corteccia del fusto e della radice.

