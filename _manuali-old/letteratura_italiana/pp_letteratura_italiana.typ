// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Letteratura italiana],
  authors: ("Marco Persy", "WikiBigino"),
  toc: true,
  colore: main_letteratura,
  full: true
)

#pagebreak(weak:true)

// Capitoli e sezioni
#set page(numbering: "1") // Da inserire dopo copertina e indice
#counter(page).update(4) // Aggiorna il numero della pagina

#set heading(numbering: (..nums) => {
  set text(fill: main_letteratura, weight: "bold")
      numbering("1.1.1", ..nums)
}
)

// Numeri didascalie
#set figure(numbering: (..nums) => {
  set text(fill: main_letteratura, font: sans-fonts)
      numbering("1.1.1", ..nums)
      
}
)

// Numeri didascalie
#set figure(numbering: (..nums) => {
  set text(fill: main_letteratura, font: sans-fonts)
      numbering("1.1.1", ..nums)
      
}
)

// Colore grassetto
#show strong: it => text(
  fill: main_letteratura
)[#it]

// // // // //

// Inizio documento

= *Le origini e il Duecento* <senza_numero>

#include "_testi/1 Le origini e il Duecento/0 Introduzione.typ"

= Le origini

#include "_testi/1 Le origini e il Duecento/1 Le origini.typ"

= La poesia prestilnovistica

#include "_testi/1 Le origini e il Duecento/2 La poesia prestilnovistica.typ"

= La prosa

#include "_testi/1 Le origini e il Duecento/3 La prosa.typ"

= Il dolce stilnovo

#include "_testi/1 Le origini e il Duecento/4 Il dolce stilnovo.typ"

= *Il Trecento* <senza_numero>

#include "_testi/2 Il Trecento/0 Introduzione.typ"

= Dante Alighieri

#include "_testi/2 Il Trecento/1 Dante Alighieri.typ"

= Francesco Petrarca

#include "_testi/2 Il Trecento/2 Francesco Petrarca.typ"

= Giovanni Boccaccio

#include "_testi/2 Il Trecento/3 Giovanni Boccaccio.typ"

= Letteratura didattico-allegorica

#include "_testi/2 Il Trecento/4 Letteratura didattico-allegorica.typ"

= Letteratura religiosa

#include "_testi/2 Il Trecento/5 Letteratura religiosa.typ"

= La lirica e la novellistica

#include "_testi/2 Il Trecento/6 La lirica e la novellistica.typ"

= *Il Quattrocento* <senza_numero>

#include "_testi/3 Il Quattrocento/0 Introduzione.typ"

= L'Umanesimo

#include "_testi/3 Il Quattrocento/1 L'Umanesimo.typ"

= La letteratura umanistica alla corte dei Medici

#include "_testi/3 Il Quattrocento/2 La letteratura umanistica alla corte dei Medici.typ"

= La letteratura umanistica a Ferrara e Napoli

#include "_testi/3 Il Quattrocento/3 La letteratura umanistica a Ferrara e Napoli.typ"

= *Il Cinquecento* <senza_numero>

#include "_testi/4 Il Cinquecento/0 Introduzione.typ"

= Classicismo rinascimentale

#include "_testi/4 Il Cinquecento/1 Classicismo rinascimentale.typ"

= Ludovico Ariosto

#include "_testi/4 Il Cinquecento/2 Ludovico Ariosto.typ"

= Niccolò Macchiavelli e Francesco Guicciardini

#include "_testi/4 Il Cinquecento/3 Niccolò Macchiavelli e Francesco Guicciardini.typ"

= Novellistica e teatro del Rinascimento

#include "_testi/4 Il Cinquecento/4 Novellistica e teatro del Rinascimento.typ"

= Anticlassicismo

#include "_testi/4 Il Cinquecento/5 Anticlassicismo.typ"

= Manierismo

#include "_testi/4 Il Cinquecento/6 Manierismo.typ"

= Tasso e il periodo controriformistico

#include "_testi/4 Il Cinquecento/7 Tasso e il periodo controriformistico.typ"

= *Il Seicento* <senza_numero>

#include "_testi/5 Il Seicento/0 Introduzione.typ"

= Il barocco e Giambattista Marino

#include "_testi/5 Il Seicento/1 Il barocco e Giambattista Marino.typ"

= Il classicismo barocco

#include "_testi/5 Il Seicento/2 Il classicismo barocco.typ"

= La prosa filosofica, scientifica e storica

#include "_testi/5 Il Seicento/3 La prosa filosofica, scientifica e storica.typ"

= *Il Settecento* <senza_numero>

#include "_testi/6 Il Settecento/0 Introduzione.typ"

= Un nuovo orizzonte storico

#include "_testi/6 Il Settecento/1 Un nuovo orizzonte storico.typ"

= L'illuminismo italiano

#include "_testi/6 Il Settecento/2 L'illuminismo italiano.typ"

= La riforma teatrale di Goldoni

#include "_testi/6 Il Settecento/3 La riforma teatrale di Goldoni.typ"

= La cultura lombarda e Parini

#include "_testi/6 Il Settecento/4 La cultura lombarda e Parini.typ"

= Neoclassici e preromantici

#include "_testi/6 Il Settecento/5 Neoclassici e preromantici.typ"

= Vittorio Alfieri

#include "_testi/6 Il Settecento/6 Vittorio Alfieri.typ"

= *L'Ottocento* <senza_numero>

#include "_testi/7 L'Ottocento/0 Introduzione.typ"

= Il periodo napoleonico e Vincenzo Monti

#include "_testi/7 L'Ottocento/1 Il periodo napoleonico e Vincenzo Monti.typ"

= Ugo Foscolo

#include "_testi/7 L'Ottocento/2 Ugo Foscolo.typ"

= Il romanticismo

#include "_testi/7 L'Ottocento/3 Il romanticismo.typ"

= Alessandro Manzoni

#include "_testi/7 L'Ottocento/4 Alessandro Manzoni.typ"

= Giacomo Leopardi

#include "_testi/7 L'Ottocento/5 Giacomo Leopardi.typ"

= Letteratura risorgimentale

#include "_testi/7 L'Ottocento/6 Letteratura risorgimentale.typ"

= La reazione antiromantica

#include "_testi/7 L'Ottocento/7 La reazione antiromantica.typ"

= Verismo

#include "_testi/7 L'Ottocento/8 Verismo.typ"

= Fra Ottocento e Novecento, la stagione decadente

#include "_testi/7 L'Ottocento/9 Fra Ottocento e Novecento, la stagione decadente.typ"

= *Il Novecento* <senza_numero>

#include "_testi/8 Il Novecento/0 Introduzione.typ"

= Al di là del decadentismo

#include "_testi/8 Il Novecento/1 Al di là del decadentismo.typ"

= Benedetto Croce e il dibattito critico

#include "_testi/8 Il Novecento/2 Benedetto Croce e il dibattito critico.typ"

= Luigi Pirandello

#include "_testi/8 Il Novecento/3 Luigi Pirandello.typ"

= Italo Svevo

#include "_testi/8 Il Novecento/4 Italo Svevo.typ"

= La nuova poesia: Saba e Ungaretti

#include "_testi/8 Il Novecento/5 La nuova poesia, Saba e Ungaretti.typ"

= Gli anni Venti e Trenta

#include "_testi/8 Il Novecento/6 Gli anni Venti e Trenta.typ"

= Surrealismo e realismo

#include "_testi/8 Il Novecento/7 Surrealismo e realismo.typ"

= L'ermetismo

#include "_testi/8 Il Novecento/8 L'ermetismo.typ"

= Eugenio Montale

#include "_testi/8 Il Novecento/9 Eugenio Montale.typ"

= Carlo Emilio Gadda

#include "_testi/8 Il Novecento/10 Carlo Emilio Gadda.typ"

= Il neorealismo

#include "_testi/8 Il Novecento/11 Il neorealismo.typ"

= Il realismo critico

#include "_testi/8 Il Novecento/12 Il realismo critico.typ"

= La poesia dialettale del Novecento

#include "_testi/8 Il Novecento/13 La poesia dialettale del Novecento.typ"

= La poesia del dopoguerra

#include "_testi/8 Il Novecento/14 La poesia del dopoguerra.typ"

= Sperimentalismo e neoavanguardia

#include "_testi/8 Il Novecento/15 Sperimentalismo e neoavanguardia.typ"

= Elsa Morante e le narratrici

#include "_testi/8 Il Novecento/16 Elsa Morante e le narratrici.typ"

= Italo Calvino

#include "_testi/8 Il Novecento/17 Italo Calvino.typ"

= Gli ultimi decenni del Novecento

#include "_testi/8 Il Novecento/18 Gli ultimi decenni del Novecento.typ"

#pagebreak()

// Retro
#include "_retro.typ"
