#import "../_global/template.typ": *
#import "../_global/config.typ": *

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.mat)
#gradient_color.update(gradient.mat)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Matematica",
)

// Resetta counter formule matematiche, #definizione e #esempio ad ogni nuovo capitolo
#show heading.where(level: 1): it => {
  counter(math.equation).update(0)
  counter(figure.where(kind: "definizione")).update(0)
  counter("esempio").update(0)
  it
}

// Equazioni fratte
#show math.frac: it => $display(it)$

// Capitoli
= Introduzione <senza_numero>

#include "../../docs/matematica/00_introduzione.typ"

= Elementi di logica <logica>

#include "../../docs/matematica/01_logica.typ"

= Dai numeri naturali ai quelli reali <numeri_naturali_reali>

#include "../../docs/matematica/02_numeri-naturali-reali.typ"

= Algebra elementare <algebra>

#include "../../docs/matematica/03_algebra-elementare.typ"

= Funzioni <funzioni>

#include "../../docs/matematica/04_funzioni.typ"

= Equazioni e sistemi <equazioni>

#include "../../docs/matematica/05_equazioni-sistemi.typ"

= Disequazioni <disequazioni>

#include "../../docs/matematica/06_disequazioni.typ"

= Potenze, esponenziali, logaritmi <potenze_esponenziali_logaritmi>

#include "../../docs/matematica/07_potenze_esponenziali_logaritmi.typ"

= Geometria analitica <geometria_analitica>

= Geometria euclidea piana <geometria_euclidea_piana>

= Geometria euclidea solida <geometria_euclidea_solida>

= Goniometria e trigonometria <goniometria_trigonometria>

= Calcolo combinatorio <calcolo_combinatorio>

= Funzioni iperboliche <funzioni_iperboliche>

= Numeri complessi <numeri_complessi>

= Sistemi lineari e geometria spaziale <sistemi_lineari_geometria_spaziale> // trova un titolo migliore #TODO

= Affinità <affinità>

= Grafici costruibili per via elementare <grafici_elementari>

#pagebreak()

// Retro
#include "retro.typ"