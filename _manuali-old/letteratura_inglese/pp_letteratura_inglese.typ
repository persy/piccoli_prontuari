// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Letteratura inglese],
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

// Colore grassetto
#show strong: it => text(
  fill: main_letteratura  
)[#it]

// // // // //

// Inizio documento

= *Dalle origini al Quattrocento* <senza_numero>

#include "_testi/1 Dalle origini al Quattrocento\0 Introduzione.typ"

= Il periodo "Old English" (VI-X secolo)

#include "_testi/1 Dalle origini al Quattrocento\1 Il periodo Old English.typ"

= Il periodo "Middle English" (XI-XV secolo)

#include "_testi/1 Dalle origini al Quattrocento\2 Il periodo Middle English.typ"

= Geoffrey Chaucer

#include "_testi/1 Dalle origini al Quattrocento\3 Geoffrey Chaucer.typ"

= *Il Rinascimento e l'età elisabettiana* <senza_numero>

#include "_testi/2 Il Rinascimento e l'età elisabettiana\0 Introduzione.typ"

= Umanesimo e Riforma

#include "_testi/2 Il Rinascimento e l'età elisabettiana\1 Umanesimo e Riforma.typ"

= La poesia e la prosa

#include "_testi/2 Il Rinascimento e l'età elisabettiana\2 La poesia e la prosa.typ"

= Il teatro elisabettiano

#include "_testi/2 Il Rinascimento e l'età elisabettiana\3 Il teatro elisabettiano.typ"

= William Shakespeare

#include "_testi/2 Il Rinascimento e l'età elisabettiana\4 William Shakespeare.typ"

= John Donne e la "poetry of wit"

#include "_testi/2 Il Rinascimento e l'età elisabettiana\5 John Donne e la poetry of wit.typ"

= *La fine del Rinascimento e l'età della Restaurazione* <senza_numero>

#include "_testi/3 La fine del Rinascimento e l'età della Restaurazione\0 Introduzione.typ"

= La poesia e la prosa dal 1625 al 1660

#include "_testi/3 La fine del Rinascimento e l'età della Restaurazione\1 La poesia e la prosa dal 1625 al 1660.typ"

= John Milton

#include "_testi/3 La fine del Rinascimento e l'età della Restaurazione\2 John Milton.typ"

= I tratti distintivi della letteratura della Restaurazione

#include "_testi/3 La fine del Rinascimento e l'età della Restaurazione\3 I tratti distintivi della letteratura della Restaurazione.typ"

= John Dryden

#include "_testi/3 La fine del Rinascimento e l'età della Restaurazione\4 John Dryden.typ"

= *Il Settecento e l'Illuminismo* <senza_numero>

#include "_testi/4 Il Settecento e l'Illuminismo\0 Introduzione.typ"

= La poesia

#include "_testi/4 Il Settecento e l'Illuminismo\1 La poesia.typ"

= Alexander Pope

#include "_testi/4 Il Settecento e l'Illuminismo\2 Alexander Pope.typ"

= La prosa saggistica e il teatro

#include "_testi/4 Il Settecento e l'Illuminismo\3 La prosa saggistica e il teatro.typ"

= Jonathan Swift

#include "_testi/4 Il Settecento e l'Illuminismo\4 Jonathan Swift.typ"

= Il romanzo moderno

#include "_testi/4 Il Settecento e l'Illuminismo\5 Il romanzo moderno.typ"

= Jane Austen

#include "_testi/4 Il Settecento e l'Illuminismo\6 Jane Austen.typ"

= *L'età romantica* <senza_numero>

#include "_testi/5 L'età romantica\0 Introduzione.typ"

= Il romanticismo

#include "_testi/5 L'età romantica\1 Il romanticismo.typ"

= La prima generazione di poeti romantici: Wordsworth, Coleridge

#include "_testi/5 L'età romantica\2 La prima generazione di poeti romantici - Wordsworth, Coleridge.typ"

= I poeti della seconda generazione romantica: Byron, Shelley, Keats

#include "_testi/5 L'età romantica\3 I poeti della seconda generazione romantica - Byron, Shelley, Keats.typ"

= Romanzo storico e autobiografia

#include "_testi/5 L'età romantica\4 Romanzo storico e autobiografia.typ"

= *L'età vittoriana* <senza_numero>

#include "_testi/6 L'età vittoriana\0 Introduzione.typ"

= La saggistica e la storiografia

#include "_testi/6 L'età vittoriana\1 La saggistica e la storiografia.typ"

= Il romanzo vittoriano e Charles Dickens

#include "_testi/6 L'età vittoriana\2 Il romanzo vittoriano e Charles Dickens.typ"

= La poesia: Tennyson e Browning

#include "_testi/6 L'età vittoriana\3 La poesia - Tennyson e Browning.typ"

= Oscar Wilde e il movimento estetico

#include "_testi/6 L'età vittoriana\4 Il movimento estetico e Oscar Wilde.typ"

= Thomas Hardy e il romanzo tardo vittoriano

#include "_testi/6 L'età vittoriana\5 Thomas Hardy e il romanzo tardo vittoriano.typ"

= La rinascita del teatro e George Bernard Shaw

#include "_testi/6 L'età vittoriana\6 La rinascita del teatro e George Bernard Shaw.typ"

= *Il Novecento* <senza_numero>

#include "_testi/7 Il Novecento\0 Introduzione.typ"

= Il romanzo tra fine Ottocento e primo Novecento

#include "_testi/7 Il Novecento\1 Il romanzo tra fine Ottocento e primo Novecento.typ"

= Yeats e la poesia di inizio Novecento

#include "_testi/7 Il Novecento\2 Yeats e la poesia di inizio Novecento.typ"

= La rivoluzione poetica di Pound ed Eliot

#include "_testi/7 Il Novecento\3 La rivoluzione poetica di Pound ed Eliot.typ"

= James Joyce

#include "_testi/7 Il Novecento\4 James Joyce.typ"

= Il romanzo tra le due guerre mondiali

#include "_testi/7 Il Novecento\5 Il romanzo tra le due guerre mondiali.typ"

= La poesia dopo Eliot

#include "_testi/7 Il Novecento\6 La poesia dopo Eliot.typ"

= Il teatro del Novecento

#include "_testi/7 Il Novecento\7 Il teatro del Novecento.typ"

= Il romanzo nella seconda metà del Novecento

#include "_testi/7 Il Novecento\8 Il romanzo nella seconda metà del Novecento.typ"

= *Letteratura angloamericana* <senza_numero>

#include "_testi/8 Letteratura angloamericana\0 Introduzione.typ"

= Il puritanesimo delle origini

#include "_testi/8 Letteratura angloamericana\1 Il puritanesimo delle origini.typ"

= L'illuminismo

#include "_testi/8 Letteratura angloamericana\2 L'illuminismo.typ"

= La via americana alla letteratura

#include "_testi/8 Letteratura angloamericana\3 La via americana alla letteratura.typ"

= Il trascendentalismo: Emerson e Thoreau

#include "_testi/8 Letteratura angloamericana\4 Il trascendentalismo - Emerson e Thoreau.typ"

= La grande narrativa dell'Ottocento: Hawthorne, Poe, Melville

#include "_testi/8 Letteratura angloamericana\5 La grande narrativa dell'Ottocento - Hawthorne, Poe, Melville.typ"

= Whitman, Dickinson e la poesia di fine Ottocento

#include "_testi/8 Letteratura angloamericana\6 Whitman, Dickinson e la poesia di fine Ottocento.typ"

= La trasformazione di una nazione e Mark Twain

#include "_testi/8 Letteratura angloamericana\7 La trasformazione di una nazione e Mark Twain.typ"

= Realismo e naturalismo

#include "_testi/8 Letteratura angloamericana\8 Realismo e naturalismo.typ"

= La poesia degli anni Venti e Trenta

#include "_testi/8 Letteratura angloamericana\9 La poesia degli anni Venti e Trenta.typ"

= La prosa fra le due guerre

#include "_testi/8 Letteratura angloamericana\10 La prosa fra le due guerre.typ"

= Gli sviluppi del teatro

#include "_testi/8 Letteratura angloamericana\11 Gli sviluppi del teatro.typ"

= Dal secondo dopoguerra alla fine del Novecento

#include "_testi/8 Letteratura angloamericana\12 Dal secondo dopoguerra alla fine del Novecento.typ"

#pagebreak()

// Retro
#include "_retro.typ"