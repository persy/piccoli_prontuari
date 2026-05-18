// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Storia dell'arte],
  authors: ("Marco Persy", "WikiBigino"),
  toc: true,
  colore: main_arte,
  full: true
)

#pagebreak(weak:true)

// Capitoli e sezioni
#set page(numbering: "1") // Da inserire dopo copertina e indice
#counter(page).update(4) // Aggiorna il numero della pagina

#set heading(numbering: (..nums) => {
  set text(fill: main_arte, weight: "bold")
      numbering("1.1.1", ..nums)
}
)

// Numeri didascalie
#set figure(numbering: (..nums) => {
  set text(fill: main_arte, font: sans-fonts)
      numbering("1.1.1", ..nums)
      
}
)

// Formule
#set math.equation(numbering: (..n) => {
  text(fill: main_Arte, font: sans-fonts, size: 9pt, numbering("1.", ..n))
})
#show math.equation: math.upright

// Didascalie a margine
//#set figure.caption(position: top)
//#show figure.caption.where(position: top): sidenote.with(numbered: false)

// Colore grassetto
#show strong: it => text(
  fill: main_arte
)[#it]

// // // // //

// Inizio documento

=  *Introduzione* <senza_numero>

#include "_testi/0 Introduzione.typ"

=  L'arte preistorica e delle civiltà antiche

#include "_testi/1 L'arte preistorica e delle civiltà antiche.typ"

=  L'arte greca

#include "_testi/2 L'arte greca.typ"

=  L'arte romana

#include "_testi/3 L'arte romana.typ"

=  Dall'arte paleocristiana all'arte carolingia

#include "_testi/4 Dall'arte paleocristiana all'arte carolingia.typ"

=  Il romanico

#include "_testi/5 Il romanico.typ"

=  L'arte gotica

#include "_testi/6 L'arte gotica.typ"

=  Pittura e architettura fra Trecento e Quattrocento

#include "_testi/7 Pittura e architettura fra Trecento e Quattrocento.typ"

=  La nuova funzione dell'arte nel Rinascimento

#include "_testi/8 La nuova funzione dell'arte nel Rinascimento.typ"

=  I maestri del Rinascimento maturo

#include "_testi/9 I maestri del Rinascimento maturo.typ"

= Il manierismo

#include "_testi/10 Il manierismo.typ"

= Classicismo e caravaggismo

#include "_testi/11 Classicismo e caravaggismo.typ"

= Il Barocco

#include "_testi/12 Il barocco.typ"

= Dal rococò al neoclassicismo

#include "_testi/13 Dal rococò al neoclassicismo.typ"

= La pittura nell'Europa romantica

#include "_testi/14 La pittura nell'Europa romantica.typ"

= Impressionismo e simbolismo

#include "_testi/15 Impressionismo e simbolismo.typ"

= Architettura e arti applicate nell'Ottocento

#include "_testi/16 Architettura e arti applicate nell'Ottocento.typ"

= La pittura italiana alla fine dell'Ottocento

#include "_testi/17 La pittura italiana alla fine dell'Ottocento.typ"

= Alle origini delle avanguardie - Espressionismo e cubismo

#include "_testi/18 Alle origini delle avanguardie - Espressionismo e cubismo.typ"

= L'Italia delle avanguardie

#include "_testi/19 L'Italia delle avanguardie.typ"

= L'astrattismo

#include "_testi/20 L'astrattismo.typ"

= Il recupero della figura - Da Chagall alla Nuova oggettività

#include "_testi/21 Il recupero della figura - Da Chagall alla Nuova oggettività.typ"

= Dadaismo e surrealismo

#include "_testi/22 Dadaismo e surrealismo.typ"

= L'architettura nella prima metà del Novecento

#include "_testi/23 L'architettura nella prima metà del Novecento.typ"

= Dagli anni Trenta al secondo dopoguerra

#include "_testi/24 Dagli anni Trenta al secondo dopoguerra.typ"

= Espressioni dell'arte contemporanea

#include "_testi/25 Espressioni dell'arte contemporanea.typ"

#pagebreak()

// Retro
#include "_retro.typ"