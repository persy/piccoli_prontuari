#import "../_global/template.typ": *
#import "../_global/config.typ": main_scienze, main_color

// Copertina
#include "cover.typ"

// Colore della materia
#let selected_color = main_scienze

// Aggiorna lo stato globale per subfile
#main_color.update(selected_color)

// 3. Applichiamo il layout del template
#show: template.with(
  title: "Scienze della Terra",
  color: selected_color,  
)

// Capitoli

= Introduzione <senza_numero>

#include "../../docs/scienze_terra/00_introduzione.typ"

= Astronomia fondamentale

#include "../../docs/scienze_terra/01_astronomia-fondamentale.typ"

= Le stelle

#include "../../docs/scienze_terra/02_stelle.typ"

= Il sistema solare

#include "../../docs/scienze_terra/03_sistema-solare.typ"

= L'origine dell'universo

#include "../../docs/scienze_terra/04_origine-universo.typ"

= Il pianeta Terra

#include "../../docs/scienze_terra/05_pianeta-terra.typ"

= La rappresentazione cartografica

#include "../../docs/scienze_terra/06_rappresentazione-cartografica.typ"

= I materiali della crosta terrestre

#include "../../docs/scienze_terra/07_crosta-terrestre.typ"

= Le rocce ignee

#include "../../docs/scienze_terra/08_rocce-ignee.typ"

= Le rocce sedimentarie

#include "../../docs/scienze_terra/09_rocce-sedimentarie.typ"

= Le rocce metamorfiche

#include "../../docs/scienze_terra/10_rocce-metamorfiche.typ"

= L'interno della Terra

#include "../../docs/scienze_terra/11_interno-terra.typ"

= Le teorie tettoniche

#include "../../docs/scienze_terra/12_teorie-tettoniche.typ"

= Le deformazioni della litosfera

#include "../../docs/scienze_terra/13_deformazioni-tettoniche-litosfera.typ"

= Il vulcanismo

#include "../../docs/scienze_terra/14_vulcanismo.typ"

= La sismicità

#include "../../docs/scienze_terra/15_sismicita.typ"

= La storia della Terra

#include "../../docs/scienze_terra/16_storia-terra.typ"

= L'atmosfera

#include "../../docs/scienze_terra/17_atmosfera.typ"

= I climi

#include "../../docs/scienze_terra/18_climi.typ"

= L'idrosfera: le acque marine

#include "../../docs/scienze_terra/19_idrosfera-acque-marine.typ"

= L'idrosfera: le acque continentali

#include "../../docs/scienze_terra/20_idrosfera-acque-continentali.typ"

= Il modellamento della superficie terrestre

#include "../../docs/scienze_terra/21_modellamento-superficie-terrestre.typ"

= Il suolo

#include "../../docs/scienze_terra/22_suolo.typ"

= L'uomo e il rischio naturale

#include "../../docs/scienze_terra/23_uomo-rischio-naturale.typ"

= Le risorse minerarie

#include "../../docs/scienze_terra/24_risorse-minerarie.typ"

#pagebreak()

// Retro
#include "retro.typ"