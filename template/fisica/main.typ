#import "../_global/template.typ": *
#import "../_global/config.typ": accent, accent_color, gradient_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.fis)
#gradient_color.update(gradient.fis)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Fisica",
)

// Capitoli

=  Che cos'è la fisica <senza_numero>

#include "../../docs/fisica/00_introduzione.typ"

=  Il metodo sperimentale

#include "../../docs/fisica/01_metodo-sperimentale.typ"

=  I vettori

#include "../../docs/fisica/02_vettori.typ"

=  I moti rettilinei

#include "../../docs/fisica/03_moti-rettilinei.typ"

=  I moti curvilinei

#include "../../docs/fisica/04_moti-curvilinei.typ"

=  Le forze e i principi della dinamica

#include "../../docs/fisica/05_dinamica.typ"

=  La gravitazione universale

#include "../../docs/fisica/06_gravitazione.typ"

=  Lavoro, energia e potenza

#include "../../docs/fisica/07_lavoro-energia-potenza.typ"

=  Le leggi di conservazione

#include "../../docs/fisica/08_leggi-conservazione.typ"

=  L'equilibrio e il moto rotatorio dei corpi

#include "../../docs/fisica/09_equilibrio-moto-rotatorio.typ"

=  La meccanica dei fluidi

#include "../../docs/fisica/10_meccanica-fluidi.typ"

=  Il calore e la temperatura

#include "../../docs/fisica/11_calore-temperatura.typ"

=  I cambiamenti di stato

#include "../../docs/fisica/12_cambiamenti-stato.typ"

=  La teoria cinetica dei gas

#include "../../docs/fisica/13_teoria-cinetica-gas.typ"

=  La termodinamica

#include "../../docs/fisica/14_termodinamica.typ"

=  L'elettricità statica

#include "../../docs/fisica/15_elettricita-statica.typ"

=  Il campo elettrico

#include "../../docs/fisica/16_campo-elettrico.typ"

=  La corrente elettrica

#include "../../docs/fisica/17_corrente-elettrica.typ"

=  Il magnetismo

#include "../../docs/fisica/18_magnetismo.typ"

=  L'induzione elettromagnetica e le equazioni di Maxwell

#include "../../docs/fisica/19_induzione-elettromagnetica-maxwell.typ"

=  I fenomeni ondulatori

#include "../../docs/fisica/20_fenomeni-ondulatori.typ"

=  Il suono

#include "../../docs/fisica/21_suono.typ"

=  Le onde elettromagnetiche

#include "../../docs/fisica/22_onde-elettromagnetiche.typ"

=  La luce

#include "../../docs/fisica/23_luce.typ"

=  La meccanica quantistica e l'atomo

#include "../../docs/fisica/24_meccanica-quantistica.typ"

=  Il nucleo e le particelle elementari

#include "../../docs/fisica/25_nucleo-particelle-elementari.typ"

=  La relatività

#include "../../docs/fisica/26_relatività.typ"

=  Calcoli per la fisica

#include "../../docs/fisica/27_calcoli-fisica.typ"

#pagebreak()

// Retro
#include "retro.typ"