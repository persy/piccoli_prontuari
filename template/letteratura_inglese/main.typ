#import "../_global/template.typ": *
#import "../_global/config.typ": main_letteratura, main_color

// Copertina
#include "cover.typ"

// Colore della materia
#let selected_color = main_letteratura

// Aggiorna lo stato globale per subfile
#main_color.update(selected_color)

// 3. Applichiamo il layout del template
#show: template.with(
  title: "Letteratura inglese",
  color: selected_color,  
)

// Capitoli

= *Dalle origini al Quattrocento* <senza_numero>

#include "../../docs/letteratura_inglese/01_origini-quattrocento/00_introduzione.typ"

= Il periodo  (VI-X secolo)

#include "../../docs/letteratura_inglese/01_origini-quattrocento/01_periodo-old-english.typ"

= Il periodo  (XI-XV secolo)

#include "../../docs/letteratura_inglese/01_origini-quattrocento/02_periodo-middle-english.typ"

= Geoffrey Chaucer

#include "../../docs/letteratura_inglese/01_origini-quattrocento/03_chaucer.typ"

= *Il Rinascimento e l'età elisabettiana* <senza_numero>

#include "../../docs/letteratura_inglese/02_rinascimento-eta-elisabettiana/00_introduzione.typ"

= Umanesimo e Riforma

#include "../../docs/letteratura_inglese/02_rinascimento-eta-elisabettiana/01_umanesimo-riforma.typ"

= La poesia e la prosa

#include "../../docs/letteratura_inglese/02_rinascimento-eta-elisabettiana/02_poesia-prosa.typ"

= Il teatro elisabettiano

#include "../../docs/letteratura_inglese/02_rinascimento-eta-elisabettiana/03_teatro-elisabettiano.typ"

= William Shakespeare

#include "../../docs/letteratura_inglese/02_rinascimento-eta-elisabettiana/04_shakespeare.typ"

= John Donne e la "poetry of wit"

#include "../../docs/letteratura_inglese/02_rinascimento-eta-elisabettiana/05_donne-poetry-of-wit.typ"

= *La fine del Rinascimento e l'età della Restaurazione* <senza_numero>

#include "../../docs/letteratura_inglese/03_fine-rinascimento-restaurazione/00_introduzione.typ"

= La poesia e la prosa dal 1625 al 1660

#include "../../docs/letteratura_inglese/03_fine-rinascimento-restaurazione/01_poesia-prosa-1625-1660.typ"

= John Milton

#include "../../docs/letteratura_inglese/03_fine-rinascimento-restaurazione/02_milton.typ"

= I tratti distintivi della letteratura della Restaurazione

#include "../../docs/letteratura_inglese/03_fine-rinascimento-restaurazione/03_letteratura-restaurazione.typ"

= John Dryden

#include "../../docs/letteratura_inglese/03_fine-rinascimento-restaurazione/04_dryden.typ"

= *Il Settecento e l'Illuminismo* <senza_numero>

#include "../../docs/letteratura_inglese/04_settecento-illuminismo/00_introduzione.typ"

= La poesia

#include "../../docs/letteratura_inglese/04_settecento-illuminismo/01_poesia.typ"

= Alexander Pope

#include "../../docs/letteratura_inglese/04_settecento-illuminismo/02_pope.typ"

= La prosa saggistica e il teatro

#include "../../docs/letteratura_inglese/04_settecento-illuminismo/03_prosa-saggistica-teatro.typ"

= Jonathan Swift

#include "../../docs/letteratura_inglese/04_settecento-illuminismo/04_swift.typ"

= Il romanzo moderno

#include "../../docs/letteratura_inglese/04_settecento-illuminismo/05_romanzo-moderno.typ"

= Jane Austen

#include "../../docs/letteratura_inglese/04_settecento-illuminismo/06_austen.typ"

= *L'età romantica* <senza_numero>

#include "../../docs/letteratura_inglese/05_eta-romantica/00_introduzione.typ"

= Il romanticismo

#include "../../docs/letteratura_inglese/05_eta-romantica/01_romanticismo.typ"

= La prima generazione di poeti romantici: Wordsworth, Coleridge

#include "../../docs/letteratura_inglese/05_eta-romantica/02_wordsworth-coleridge.typ"

= I poeti della seconda generazione romantica: Byron, Shelley, Keats

#include "../../docs/letteratura_inglese/05_eta-romantica/03_byron-shelley-keats.typ"

= Romanzo storico e autobiografia

#include "../../docs/letteratura_inglese/05_eta-romantica/04_romanzo-storico-autobiografia.typ"

= *L'età vittoriana* <senza_numero>

#include "../../docs/letteratura_inglese/06_eta-vittoriana/00_introduzione.typ"

= La saggistica e la storiografia

#include "../../docs/letteratura_inglese/06_eta-vittoriana/01_saggistica-storiografia.typ"

= Il romanzo vittoriano e Charles Dickens

#include "../../docs/letteratura_inglese/06_eta-vittoriana/02_romanzo-vittoriano-dickens.typ"

= La poesia: Tennyson e Browning

#include "../../docs/letteratura_inglese/06_eta-vittoriana/03_tennyson-browning.typ"

= Oscar Wilde e il movimento estetico

#include "../../docs/letteratura_inglese/06_eta-vittoriana/04_movimento-estetico-wilde.typ"

= Thomas Hardy e il romanzo tardo vittoriano

#include "../../docs/letteratura_inglese/06_eta-vittoriana/05_hardy-romanzo-tardo-vittoriano.typ"

= La rinascita del teatro e George Bernard Shaw

#include "../../docs/letteratura_inglese/06_eta-vittoriana/06_rinascita-teatro-shaw.typ"

= *Il Novecento* <senza_numero>

#include "../../docs/letteratura_inglese/7_novecento/00_introduzione.typ"

= Il romanzo tra fine Ottocento e primo Novecento

#include "../../docs/letteratura_inglese/7_novecento/01_romanzo-ottocento-novecento.typ"

= Yeats e la poesia di inizio Novecento

#include "../../docs/letteratura_inglese/7_novecento/02_yeats.typ"

= La rivoluzione poetica di Pound ed Eliot

#include "../../docs/letteratura_inglese/7_novecento/03_pound-eliot.typ"

= James Joyce

#include "../../docs/letteratura_inglese/7_novecento/04_joyce.typ"

= Il romanzo tra le due guerre mondiali

#include "../../docs/letteratura_inglese/7_novecento/05_romanzo-guerre-mondiali.typ"

= La poesia dopo Eliot

#include "../../docs/letteratura_inglese/7_novecento/06_poesia-dopo-Eliot.typ"

= Il teatro del Novecento

#include "../../docs/letteratura_inglese/7_novecento/07_teatro-novecento.typ"

= Il romanzo nella seconda metà del Novecento

#include "../../docs/letteratura_inglese/7_novecento/08_romanzo-meta-novecento.typ"

= *Letteratura angloamericana* <senza_numero>

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/00_introduzione.typ"

= Il puritanesimo delle origini

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/01_puritanesimo-origini.typ"

= L'illuminismo

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/02_illuminismo.typ"

= La via americana alla letteratura

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/03_via-americana.typ"

= Il trascendentalismo: Emerson e Thoreau

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/04_emerson-thoreau.typ"

= La grande narrativa dell'Ottocento: Hawthorne, Poe, Melville

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/05_hawthorne-poe-melville.typ"

= Whitman, Dickinson e la poesia di fine Ottocento

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/06_whitman-dickinson.typ"

= La trasformazione di una nazione e Mark Twain

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/07_twain.typ"

= Realismo e naturalismo

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/08_realismo-naturalismo.typ"

= La poesia degli anni Venti e Trenta

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/09_poesia-venti-trenta.typ"

= La prosa fra le due guerre

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/10_prosa_guerre.typ"

= Gli sviluppi del teatro

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/11_teatro.typ"

= Dal secondo dopoguerra alla fine del Novecento

#include "../../docs/letteratura_inglese/8_letteratura-angloamericana/12_secondo-novecento.typ"

#pagebreak()

// Retro
#include "retro.typ"