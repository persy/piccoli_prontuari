#import "../_global/template.typ": *
#import "../_global/config.typ": main_umane, main_color

// Copertina
#include "cover.typ"

// Colore della materia
#let selected_color = main_umane

// Aggiorna lo stato globale per subfile
#main_color.update(selected_color)

// 3. Applichiamo il layout del template
#show: template.with(
  title: "Filosofia",
  color: selected_color,  
)

// Capitoli

= La filosofia come ricerca

#include "../../docs/filosofia/01_filosofia-ricerca.typ"

= Il problema metafisico

#include "../../docs/filosofia/02_problema-metafisico.typ"

= Il problema morale

#include "../../docs/filosofia/03_problema-morale.typ"

= Il problema politico

#include "../../docs/filosofia/04_problema-politico.typ"

= Il problema scientifico

#include "../../docs/filosofia/05_problema-scientifico.typ"

= Il problema religioso

#include "../../docs/filosofia/06_problema-religioso.typ"

= Il problema estetico

#include "../../docs/filosofia/07_problema-estetico.typ"

= La nascita della filosofia in Grecia

#include "../../docs/filosofia/08_nascita-filosofia-greca.typ"

= I filosofi ionici

#include "../../docs/filosofia/09_filosofi-ionici.typ"

= Pitagora e i pitagorici

#include "../../docs/filosofia/10_pitagora-pitagorici.typ"

= La scuola di Elea

#include "../../docs/filosofia/11_scuola-eleatica.typ"

= I fisici pluralisti

#include "../../docs/filosofia/12_fisici-pluralisti.typ"

= L'atomismo

#include "../../docs/filosofia/13_atomismo.typ"

= I sofisti

#include "../../docs/filosofia/14_sofisti.typ"

= Socrate e le scuole socratiche

#include "../../docs/filosofia/15_socrate.typ"

= Platone

#include "../../docs/filosofia/16_platone.typ"

= Aristotele

#include "../../docs/filosofia/17_aristotele.typ"

= Le filosofie ellenistiche

#include "../../docs/filosofia/18_filosofie-ellenistiche.typ"

= La filosofia a Roma

#include "../../docs/filosofia/19_filosofia-romana.typ"

= Plotino e il neoplatonismo

#include "../../docs/filosofia/20_plotino-neoplatonismo.typ"

= Il cristianesimo e la filosofia

#include "../../docs/filosofia/21_filosofia-cristiana.typ"

= Agostino

#include "../../docs/filosofia/22_agostino.typ"

= Gli esordi della scolastica

#include "../../docs/filosofia/23_scolastica.typ"

= La filosofia araba ed ebraica

#include "../../docs/filosofia/24_filosofia-araba-ebraica.typ"

= L'aristotelismo medievale e Tommaso d'Aquino

#include "../../docs/filosofia/25_aristotelismo-medievale-daquino.typ"

= L'esaurirsi della scolastica

#include "../../docs/filosofia/26_esaurirsi-scolastica.typ"

= Umanesimo e Rinascimento

#include "../../docs/filosofia/27_umanesimo-rinascimento.typ"

= Il platonismo e l'aristotelismo rinascimentali

#include "../../docs/filosofia/28_platonismo-aristotelismo-rinascimentali.typ"

= La riflessione politica nel '500-'600

#include "../../docs/filosofia/29_riflessione-politica-500-600.typ"

= La riforma protestante e il rinnovamento cattolico

#include "../../docs/filosofia/30_riforma protestante-rinnovamento-cattolico.typ"

= Il naturalismo rinascimentale

#include "../../docs/filosofia/31_naturalismo-rinascimentale.typ"

= La rivoluzione scientifica

#include "../../docs/filosofia/32_rivoluzione-scientifica.typ"

= La filosofia del metodo

#include "../../docs/filosofia/33_filosofia-metodo.typ"

= Il razionalismo

#include "../../docs/filosofia/34_razionalismo.typ"

= Il problema etico nel '600 e la riflessione di Pascal

#include "../../docs/filosofia/35_problema-etico-600-pascal.typ"

= Dal meccanicismo all'empirismo

#include "../../docs/filosofia/36_meccanicismo-empirismo.typ"

= Giambattista Vico

#include "../../docs/filosofia/37_vico.typ"

= I percorsi della morale nel secolo XVIII

#include "../../docs/filosofia/38_morale-700.typ"

= L'illuminismo

#include "../../docs/filosofia/39_illuminismo.typ"

= Immanuel Kant

#include "../../docs/filosofia/40_kant.typ"

= Il romanticismo

#include "../../docs/filosofia/41_romanticismo.typ"

= L'idealismo di Fichte e Schelling

#include "../../docs/filosofia/42_idealismo-fichte-schelling.typ"

= Georg Wilhelm Friedrich Hegel

#include "../../docs/filosofia/43_hegel.typ"

= Karl Marx

#include "../../docs/filosofia/44_marx.typ"

= L'opposizione all'idealismo

#include "../../docs/filosofia/45_opposizione-idealismo.typ"

= La filosofia spiritualistica italiana dell'800

#include "../../docs/filosofia/46_filosofia-spiritualistica-italiana-800.typ"

= Il positivismo

#include "../../docs/filosofia/47_positivismo.typ"

= Friedrich Nietzsche

#include "../../docs/filosofia/48_nietzsche.typ"

=  La filosofia dell'azione e lo spiritualismo francese

#include "../../docs/filosofia/49_filosofia-azione-spiritualismo-francese.typ"

= Storicismo e neokantismo

#include "../../docs/filosofia/50_storicismo-neokantismo.typ"

=  Il pragmatismo americano

#include "../../docs/filosofia/51_pragmatismo-americano.typ"

= Il neoidealismo italiano

#include "../../docs/filosofia/52_neoidealismo-italiano.typ"

= La nascita della psicoanalisi

#include "../../docs/filosofia/53_psicoanalisi.typ"

= Husserl e la fenomenologia

#include "../../docs/filosofia/54_husserl-fenomenologia.typ"

= Heidegger e l'esistenzialismo

#include "../../docs/filosofia/55_heidegger-esistenzialismo.typ"

= Wittgenstein e il neopositivismo

#include "../../docs/filosofia/56_wittgenstein-neopositivismo.typ"

=  La filosofia analitica

#include "../../docs/filosofia/57_filosofia-analitica.typ"

= Marxismo e Scuola di Francoforte

#include "../../docs/filosofia/58_marxismo-scuola-francoforte.typ"

=  Filosofia politica del '900

#include "../../docs/filosofia/59_filosofia-politica-900.typ"

=  Lo strutturalismo e i suoi sviluppi

#include "../../docs/filosofia/60_strutturalismo.typ"

=  Orientamenti dell'epistemologia contemporanea

#include "../../docs/filosofia/61_epistemologia-contemporanea.typ"

= L'ermeneutica

#include "../../docs/filosofia/62_ermeneutica.typ"

= Etica del discorso ed etica della responsabilità

#include "../../docs/filosofia/63_etica-discorso-responsabilita.typ"

=  Il postmoderno

#include "../../docs/filosofia/64_postmoderno.typ"

=  Il pensiero postmetafisico

#include "../../docs/filosofia/65_pensiero-postmetafisico.typ"

=  L'intelligenza artificiale

#include "../../docs/filosofia/66_intelligenza-artificiale.typ"

#pagebreak()

// Retro
#include "retro.typ"