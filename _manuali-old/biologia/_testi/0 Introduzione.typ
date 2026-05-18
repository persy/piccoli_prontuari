#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

== Che cos'è la biologia <senza_numero>
#evidenzia[La biologia è la disciplina che si dedica allo studio degli organismi viventi, analizzandone la forma, classificandoli e investigando i processi interni che li caratterizzano, oltre a mettere in relazione gli organismi tra loro. Si propone inoltre di comprendere le ragioni alla base dei diversi modelli di vita, confrontandoli per individuare le caratteristiche condivise da tutti i viventi, con l'obiettivo di definire ciò che si intende per "vita". Seguendo criteri e principi rigidi propri delle scienze, la biologia si basa sul metodo sperimentale, essenziale per riprodurre i fenomeni osservati, analizzarne i meccanismi e verificarne l'universalità. Uno dei capisaldi della biologia moderna è l'assunto che gli esseri viventi siano soggetti alle stesse leggi fisiche e chimiche che regolano il comportamento della materia inanimata.]

La biologia, intesa come scienza autonoma distinta dalla medicina, si sviluppa solo dalla fine del XVII secolo, quando vengono introdotti lenti e microscopi capaci di osservare il mondo microscopico. Durante il XIX secolo emergono teorie fondamentali, come la scoperta della costituzione cellulare degli organismi, la teoria evolutiva e le leggi della genetica, che imprimono una notevole spinta alla ricerca biologica. Nel corso del XX secolo, l'interesse dei biologi si sposta principalmente verso lo studio delle componenti chimiche della materia vivente, ampliando ulteriormente il campo di osservazione grazie all'uso dei microscopi elettronici.

Oggi, la biologia è una scienza in continua crescita, articolata in settori sempre più specifici come la biologia molecolare e l'esobiologia; al tempo stesso intrattiene proficue collaborazioni interdisciplinari con ambiti quali la medicina, l'agraria e la veterinaria. Non mancano interazioni con le scienze umane, come l'antropologia e la psicologia, che contribuiscono ad arricchirne i campi di applicazione e di studio.

#figure(
  caption: [I principali settori disciplinari della biologia],
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
    columns: (auto, 1fr),
    table.header[Settori disciplinari][Ambiti di ricerca],
    [Botanica], [Regno vegetale],
    [Zoologia], [Regno animale],
    [Sistematica], [Descrizione e classificazione degli esseri viventi, con attenzione alla loro storia evolutiva],
    [Anatomia], [Struttura degli organismi],
    [Fisiologia], [Funzionamento degli organismi],
    [Biochimica], [Fenomeni chimici e chimico-fisici degli esseri viventi],
    [Etologia], [Comportamento degli animali],
    [Genetica], [Ereditarietà dei caratteri],
    [Ecologia], [Interazioni tra organismi e ambiente],
    [Embriologia], [Sviluppo degli organismi],
    [Biologia molecolare], [Struttura e funzioni delle biomolecole],
    [Citologia], [Struttura e funzione delle cellule],
    [Microbiologia], [Microrganismi],
    [Batteriologia], [Batteri],
    [Parassitologia], [Interazioni fra parassita e ospite],
    [Idrobiologia], [Ambiente acquatico],
    [Biologia della conservazione], [Consistenza attuale delle specie viventi e metodi per garantirne la loro sopravvivenza nel tempo],
    [Biofisica e bioenergetica], [Funzioni degli esseri viventi analizzate dal punto di vista fisico, con particolare attenzione agli scambi energetici)],
    [Esobiologia], [Presenza della vita sugli altri pianeti],
)  
)

== Che cos'è la vita? <senza_numero>

Nonostante i significativi progressi ottenuti dalle indagini biologiche, risulta praticamente impossibile fornire una definizione scientifica completa del concetto di vita, che si manifesta attraverso fenomeni unici e irripetibili. È tuttavia possibile individuare alcune caratteristiche comuni che permettono di identificare come "viventi" gli organismi. Tra queste:
  - un elevato grado di organizzazione interna;
  - l'utilizzo di specifiche molecole organiche fondamentali, quali proteine, carboidrati, lipidi e acidi nucleici, ciascuna con funzioni precise;
  - la capacità di omeostasi, ovvero il mantenimento di condizioni costanti come temperatura, pH, pressione, concentrazione di acqua e altri elementi;
  - la capacità di acquisire e trasformare energia per preservare una struttura complessa e ordinata;
  - la reattività agli stimoli esterni;
  - la possibilità di riprodursi e conservare la propria identità attraverso un patrimonio genetico costituito da acidi nucleici e proteine;
  - l'abilità di adattarsi al proprio ambiente;
  - il potenziale di evolversi nel corso del tempo.