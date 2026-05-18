#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[La fisica, derivante dal termine greco "phýsis" che significa natura, rappresenta la disciplina scientifica dedicata allo studio dei fenomeni naturali. Essa esclude, tuttavia, quelli associati alle trasformazioni chimiche della materia e ai processi biologici. L'obiettivo principale della fisica consiste nel descrivere tali fenomeni mediante la misurazione delle proprietà fisiche (dette grandezze) e nello stabilire relazioni matematiche tra di esse, le cosiddette leggi.

Per perseguire tali fini, la fisica si avvale del metodo sperimentale, un approccio che si fonda sulla riproducibilità dell'esperimento. Questo metodo è condiviso da altre scienze sperimentali, quali la chimica e la biologia. Formalizzato da Galileo Galilei (1564-1642), il metodo sperimentale consente di interpretare le cause alla base dei fenomeni attraverso ipotesi che, qualora confermate dagli esperimenti condotti, assumono il rango di teorie consolidatesi nell'ambito scientifico.]

Dagli sviluppi della fisica galileiana fino alla fine del XIX secolo, sono stati posti i pilastri della cosiddetta fisica classica. Essa comprende i principi e le leggi che descrivono il moto dei corpi e le forze responsabili di tale dinamica (codificati principalmente dall'opera di I. Newton, 1642-1727), l'organizzazione dei fenomeni elettromagnetici tramite la teoria dell'elettromagnetismo di J.C. Maxwell (1831-1879), nonché le leggi relative ai fenomeni termici e ottici.

Con l'inizio del XX secolo prende avvio l'era della fisica moderna, contrassegnata da significativi mutamenti concettuali rispetto alla prospettiva della fisica classica. Da un lato, A. Einstein (1879-1955) sviluppa la teoria della relatività, che modifica le leggi della meccanica classica in condizioni di velocità prossime a quella della luce. Dall'altro lato, la meccanica quantistica emerge per spiegare i fenomeni su scala atomica attraverso la nozione di quanti di energia, concetto introdotto da M. Planck (1858-1947). In tale contesto, la visione deterministica della causalità, fondamento delle teorie classiche secondo cui il comportamento di un sistema fisico può essere pienamente previsto dalle condizioni iniziali, viene sostituita da un approccio probabilistico.

Negli ultimi decenni vi è stato un ampliamento del campo di investigazione della fisica verso sistemi precedentemente trascurati o esterni ai suoi domini tradizionali. Tra questi si annoverano i sistemi caotici, caratterizzati da comportamenti imprevedibili. Tali sistemi trovano applicazioni in ambiti diversificati, dalla fisica dei fluidi alla biologia e persino all'economia, sebbene non siano specificatamente approfonditi in questa sede.

Numerose sono le discipline che, pur mantenendo autonomia nei propri ambiti di studio, presentano intersezioni con la fisica. Tra esse figurano l'astronomia, la geologia, la chimico-fisica, la biofisica e la geofisica.
#v(9em)
#figure(
  caption: [I principali indirizzi disciplinari della fisica.],
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
  table.header[Disciplina][Ambito di studio],
  [Meccanica], [Studia le leggi che presiedono al movimento dei corpi e viene suddivisa in: cinematica, che fissa i concetti essenziali per la descrizione del moto; dinamica, che studia le cause (forze) che determinano il movimento; statica, che studia l'equilibrio dei corpi],
  [Ottica], [Studia i fenomeni luminosi, cioè quelli relativi al comportamento delle radiazioni che impressionano l'occhio (radiazioni ottiche) o, più in generale, quelli relativi al comportamento di tutte le radiazioni elettromagnetiche],
  [Acustica], [Studia i suoni, le loro proprietà e i loro meccanismi di produzione, propagazione, ricezione],
  [Elettromagnetismo], [Studia il complesso dei fenomeni relativi all'elettricità e al magnetismo],
  [Termologia], [Studia i fenomeni connessi alla generazione, propagazione e assorbimento del calore; della termologia fa parte la termodinamica, che studia le trasformazioni del calore in altre forme di energia],
  [Meccanica quantistica], [Studia i sistemi quantizzati, cioè i sistemi in cui le grandezze considerate non possono essere infinitamente piccole, ma sono sempre multiple di una quantità "discreta", o "quanto", non ulteriormente divisibile],
  [Meccanica statistica], [Studia le proprietà dei sistemi costituiti da un gran numero di particelle in movimento disordinato, riuscendo a determinarne le configurazioni possibili mediante il calcolo],
  [Fisica atomica], [Studia le proprietà degli atomi],
  [Fisica nucleare], [Studia i nuclei atomici e le reazioni in cui sono coinvolti],
  [Fisica delle particelle], [Studia i costituenti ultimi della materia, quali elettroni, neutroni, protoni, mesoni, quark],
  [Relatività speciale (o ristretta)], [Studia il complesso dei fenomeni che avvengono quando i corpi si muovono con velocità prossime a quella della luce; nell'ambito di questa teoria è formulato il principio di equivalenza fra massa ed energia, che consente, fra l'altro, di spiegare l'origine dell'energia generata dalle reazioni di fusione e di fissione nucleare],
  [Relatività generale], [Costituisce la teoria più generale della gravitazione],
  [Fisica dello stato solido], [Studia le proprietà fisiche dei solidi (per esempio, quelle elettriche, dielettriche, elastiche, termiche), con particolare attenzione alle proprietà comuni a grandi insiemi di sostanze; costituisce una base fondamentale per lo sviluppo dell'elettronica (per esempio, con il suo studio dei semiconduttori)],
)  
) // Da riformulare #TODO

