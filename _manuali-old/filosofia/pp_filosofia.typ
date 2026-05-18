// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Biologia],
  authors: ("Marco Persy", "WikiBigino"),
  toc: true,
  colore: main_umane,
  full: true
)

#pagebreak(weak:true)

// Capitoli e sezioni
#set page(numbering: "1") // Da inserire dopo copertina e indice
#counter(page).update(4) // Aggiorna il numero della pagina

#set heading(numbering: (..nums) => {
  set text(fill: main_umane, weight: "bold")
      numbering("1.1.1", ..nums)
}
)

// Numeri didascalie
#set figure(numbering: (..nums) => {
  set text(fill: main_umane, font: sans-fonts)
      numbering("1.1.1", ..nums)
      
}
)

// Didascalie
// #set figure.caption(position: bottom)
//#show figure.caption.where(position: top): sidenote.with(numbered: false)

// Colore grassetto
#show strong: it => text(
  fill: main_umane
)[#it]

// // // // //

// Inizio documento

= La filosofia come ricerca

#include "_testi/1 La filosofia come ricerca.typ"

= Il problema metafisico

#include "_testi/2 Il problema metafisico.typ"

= Il problema morale

#include "_testi/3 Il problema morale.typ"

= Il problema politico

#include "_testi/4 Il problema politico.typ"

= Il problema scientifico

#include "_testi/5 Il problema scientifico.typ"

= Il problema religioso

#include "_testi/6 Il problema religioso.typ"

= Il problema estetico

#include "_testi/7 Il problema estetico.typ"

= La nascita della filosofia in Grecia

#include "_testi/8 La nascita della filosofia in Grecia.typ"

= I filosofi ionici

#include "_testi/9 I filosofi ionici.typ"

= Pitagora e i pitagorici

#include "_testi/10 Pitagora e i pitagorici.typ"

= La scuola di Elea

#include "_testi/11 La scuola di Elea.typ"

= I fisici pluralisti

#include "_testi/12 I fisici pluralisti.typ"

= L'atomismo

#include "_testi/13 L'atomismo.typ"

= I sofisti

#include "_testi/14 I sofisti.typ"

= Socrate e le scuole socratiche

#include "_testi/15 Socrate e le scuole socratiche.typ"

= Platone

#include "_testi/16 Platone.typ"

= Aristotele

#include "_testi/17 Aristotele.typ"

= Le filosofie ellenistiche

#include "_testi/18 Le filosofie ellenistiche.typ"

= La filosofia a Roma

#include "_testi/19 La filosofia a Roma.typ"

= Plotino e il neoplatonismo

#include "_testi/20 Plotino e il neoplatonismo.typ"

= Il cristianesimo e la filosofia

#include "_testi/21 Il cristianesimo e la filosofia.typ"

= Agostino

#include "_testi/22 Agostino.typ"

= Gli esordi della scolastica

#include "_testi/23 Gli esordi della scolastica.typ"

= La filosofia araba ed ebraica

#include "_testi/24 La filosofia araba ed ebraica.typ"

= L'aristotelismo medievale e Tommaso d'Aquino

#include "_testi/25 L'aristotelismo medievale e Tommaso d'Aquino.typ"

= L'esaurirsi della scolastica

#include "_testi/26 L'esaurirsi della scolastica.typ"

= Umanesimo e Rinascimento

#include "_testi/27 Umanesimo e Rinascimento.typ"

= Il platonismo e l'aristotelismo rinascimentali

#include "_testi/28 Il platonismo e l'aristotelismo rinascimentali.typ"

= La riflessione politica nel '500-'600

#include "_testi/29 La riflessione politica nel '500-'600.typ"

= La riforma protestante e il rinnovamento cattolico

#include "_testi/30 La riforma protestante e il rinnovamento cattolico.typ"

= Il naturalismo rinascimentale

#include "_testi/31 Il naturalismo rinascimentale.typ"

= La rivoluzione scientifica

#include "_testi/32 La rivoluzione scientifica.typ"

= La filosofia del metodo

#include "_testi/33 La filosofia del metodo.typ"

= Il razionalismo

#include "_testi/34 Il razionalismo.typ"

= Il problema etico nel '600 e la riflessione di Pascal

#include "_testi/35 Il problema etico nel '600 e la riflessione di Pascal.typ"

= Dal meccanicismo all'empirismo

#include "_testi/36 Dal meccanicismo all'empirismo.typ"

= Giambattista Vico

#include "_testi/37 Giambattista Vico.typ"

= I percorsi della morale nel secolo XVIII

#include "_testi/38 I percorsi della morale nel secolo XVIII.typ"

= L'illuminismo

#include "_testi/39 L'illuminismo.typ"

= Immanuel Kant

#include "_testi/40 Immanuel Kant.typ"

= Il romanticismo

#include "_testi/41 Il romanticismo.typ"

= L'idealismo di Fichte e Schelling

#include "_testi/42 L'idealismo di Fichte e Schelling.typ"

= Georg Wilhelm Friedrich Hegel

#include "_testi/43 Georg Wilhelm Friedrich Hegel.typ"

= Karl Marx

#include "_testi/44 Karl Marx.typ"

= L'opposizione all'idealismo

#include "_testi/45 L'opposizione all'idealismo.typ"

= La filosofia spiritualistica italiana dell'800

#include "_testi/46 La filosofia spiritualistica italiana dell'800.typ"

= Il positivismo

#include "_testi/47 Il positivismo.typ"

= Friedrich Nietzsche

#include "_testi/48 Friedrich Nietzsche.typ"

=  La filosofia dell'azione e lo spiritualismo francese

#include "_testi/49 La filosofia dell'azione e lo spiritualismo francese.typ"

= Storicismo e neokantismo

#include "_testi/50 Storicismo e neokantismo.typ"

=  Il pragmatismo americano

#include "_testi/51 Il pragmatismo americano.typ"

= Il neoidealismo italiano

#include "_testi/52 Il neoidealismo italiano.typ"

= La nascita della psicoanalisi

#include "_testi/53 La nascita della psicoanalisi.typ"

= Husserl e la fenomenologia

#include "_testi/54 Husserl e la fenomenologia.typ"

= Heidegger e l'esistenzialismo

#include "_testi/55 Heidegger e l'esistenzialismo.typ"

= Wittgenstein e il neopositivismo

#include "_testi/56 Wittgenstein e il neopositivismo.typ"

=  La filosofia analitica

#include "_testi/57 La filosofia analitica.typ"

= Marxismo e Scuola di Francoforte

#include "_testi/58 Marxismo e Scuola di Francoforte.typ"

=  Filosofia politica del '900

#include "_testi/59 Filosofia politica del '900.typ"

=  Lo strutturalismo e i suoi sviluppi

#include "_testi/60 Lo strutturalismo e i suoi sviluppi.typ"

=  Orientamenti dell'epistemologia contemporanea

#include "_testi/61 Orientamenti dell'epistemologia contemporanea.typ"

= L'ermeneutica

#include "_testi/62 L'ermeneutica.typ"

= Etica del discorso ed etica della responsabilità

#include "_testi/63 Etica del discorso ed etica della responsabilità.typ"

=  Il postmoderno

#include "_testi/64 Il postmoderno.typ"

=  Il pensiero postmetafisico

#include "_testi/65 Il pensiero postmetafisico.typ"

=  L'intelligenza artificiale

#include "_testi/66 L'intelligenza artificiale.typ"


#pagebreak()
// Retroc
#include "_retro.typ"