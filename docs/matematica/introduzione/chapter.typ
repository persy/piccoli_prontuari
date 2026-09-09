#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

= Introduzione <senza_numero>

== Che cos'è la matematica <senza_numero>

#intro[La matematica è la disciplina che studia le quantità, le strutture, le forme dello spazio e le loro trasformazioni, avvalendosi di un linguaggio simbolico rigoroso e di un metodo deduttivo basato su assiomi e dimostrazioni. A differenza delle scienze sperimentali, la matematica non verifica le proprie affermazioni tramite l'osservazione della natura, ma ne stabilisce la validità attraverso il ragionamento logico, a partire da un insieme minimo di postulati assunti come veri. Nonostante questa autonomia dall'esperienza diretta, la matematica costituisce lo strumento fondamentale con cui le altre scienze descrivono, modellizzano e prevedono i fenomeni naturali.]

Le origini della matematica risalgono alle civiltà mesopotamica ed egizia, dove nacquero le prime tecniche di calcolo e di misurazione legate a esigenze pratiche quali il commercio, l'agricoltura e l'edilizia. Fu però con la civiltà greca, e in particolare con Euclide (III secolo a.C.), che la matematica assunse la forma di sistema deduttivo organizzato, fondato su definizioni, postulati e teoremi dimostrati. Nei secoli successivi, il contributo del mondo arabo-islamico, custode e sviluppatore del sapere classico, permise l'introduzione dell'algebra come disciplina autonoma e la diffusione in Europa del sistema di numerazione posizionale.

Tra il XVI e il XVIII secolo la matematica conobbe una fase di straordinario sviluppo, segnata dall'introduzione della geometria analitica a opera di R. Descartes (1596-1650) e dall'elaborazione, indipendente, del calcolo infinitesimale da parte di I. Newton (1642-1727) e G.W. Leibniz (1646-1716). Questi strumenti si rivelarono essenziali per la nascente fisica matematica e per lo studio del cambiamento e del movimento. Nel corso del XIX secolo la disciplina si orientò verso una crescente astrazione e rigorizzazione, con la nascita delle geometrie non euclidee e la fondazione dell'analisi matematica su basi assiomatiche solide; nel XX secolo, infine, si assistette a una sistematica formalizzazione dei fondamenti stessi della matematica, in stretto dialogo con la logica e, più recentemente, con l'informatica teorica.

Oggi la matematica si articola in numerosi settori, spesso fortemente interconnessi, e intrattiene rapporti proficui con discipline quali la fisica, l'informatica, l'economia e le scienze naturali, delle quali fornisce gli strumenti concettuali e di calcolo indispensabili.

#figure(
  caption: [I principali settori disciplinari della matematica],
  table(
    stroke: 0.5pt + accent.mat.lighten(90%),
    fill: (x, y) => {
    if y == 0 {
      return accent.mat // Colore header
    } else if calc.even(y) {
      // Colore righe dispari
      return accent.mat.lighten(90%)
    } else {
      // Colore righe pari
      return white
    }
  },
    align: left + horizon,
    columns: (auto, 1fr),
    table.header[Settori disciplinari][Ambiti di ricerca],
    [Aritmetica], [Proprietà dei numeri e operazioni su di essi],
    [Algebra], [Strutture astratte (gruppi, anelli, campi) e risoluzione di equazioni],
    [Geometria], [Forme, figure e proprietà dello spazio],
    [Geometria analitica], [Studio delle figure geometriche mediante coordinate e metodi algebrici],
    [Analisi matematica], [Limiti, derivate, integrali e studio delle funzioni],
    [Analisi numerica], [Metodi approssimati per la risoluzione di problemi matematici],
    [Probabilità], [Fenomeni aleatori e loro modellizzazione],
    [Statistica], [Raccolta, analisi e interpretazione dei dati],
    [Logica matematica], [Fondamenti del ragionamento deduttivo e dei sistemi formali],
    [Teoria dei numeri], [Proprietà profonde dei numeri interi],
    [Topologia], [Proprietà delle figure che si conservano per deformazione continua],
    [Matematica discreta], [Strutture finite o numerabili, combinatoria e teoria dei grafi],
    [Matematica applicata], [Modellizzazione matematica di fenomeni fisici, economici e naturali],
)  
)
