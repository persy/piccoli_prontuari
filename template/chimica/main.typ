#import "../_global/template.typ": *
#import "../_global/config.typ": main_tecnologia, main_color

// Copertina
#include "cover.typ"

// Colore della materia
#let selected_color = main_tecnologia

// Aggiorna lo stato globale per subfile
#main_color.update(selected_color)

// 3. Applichiamo il layout del template
#show: template.with(
  title: "Chimica",
  color: selected_color,  
)

#set math.equation(numbering: "1", supplement: none, number-align: end)

// Capitoli

= Introduzione <senza_numero>

#include "../../docs/chimica/00_introduzione.typ"

=  La materia e le sue proprietà

#include "../../docs/chimica/01_materia.typ"

=  La struttura microscopica della materia atomi e molecole

#include "../../docs/chimica/02_atomi-molecole.typ"

=  La struttura dell'atomo

#include "../../docs/chimica/03_struttura-atomo.typ"

=  Il sistema periodico degli elementi

#include "../../docs/chimica/04_sistema-periodico.typ"

=  I legami chimici

#include "../../docs/chimica/05_legami-chimici.typ"

=  Classificazione e nomenclatura dei composti inorganici

#include "../../docs/chimica/06_classificazione-nomenclatura-inorganici.typ"

=  Le reazioni chimiche

#include "../../docs/chimica/07_reazioni-chimiche.typ"

=  Lo stato gassoso

#include "../../docs/chimica/08_stato-gassoso.typ"

=  Lo stato liquido

#include "../../docs/chimica/09_stato-liquido.typ"

=  Lo stato solido

#include "../../docs/chimica/10_stato-solido.typ"

=  Le soluzioni

#include "../../docs/chimica/11_soluzioni.typ"

=  La cinetica chimica e l'equilibrio chimico

#include "../../docs/chimica/12_cinetica-chimica-equilibrio-chimico.typ"

=  Termodinamica e chimica

#include "../../docs/chimica/13_termodinamica.typ"

=  Acidi e basi. Equilibri ionici in soluzione

#include "../../docs/chimica/14_acidi-basi.typ"

=  Elettrochimica

#include "../../docs/chimica/15_elettrochimica.typ"

=  Chimica nucleare

#include "../../docs/chimica/16_chimica-nucleare.typ"

=  Chimica inorganica e descrittiva

#include "../../docs/chimica/17_chimica-inorganica-descrittiva.typ"

=  Il carbonio e la chimica organica

#include "../../docs/chimica/18_carbonio-chimica-organica.typ"

=  Le classi dei composti organici

#include "../../docs/chimica/19_classi-composti-organici.typ"

=  Composti organici di interesse biologico

#include "../../docs/chimica/20_composti-organici-biologia.typ"

=  Chimica e ambiente

#include "../../docs/chimica/21_chimica-ambiente.typ"

#pagebreak()

// Retro
#include "retro.typ"