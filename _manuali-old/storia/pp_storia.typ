// Moduli
#import "../template_normal.typ": * // Template

// Copertina
#include "_copertina.typ"

// Template
#show: template.with(
  title: [Storia],
  authors: ("Marco Persy", "WikiBigino"),
  toc: true,
  colore: main_storia,
  full: true
)

#pagebreak(weak:true)

// Capitoli e sezioni
#set page(numbering: "1") // Da inserire dopo copertina e indice
#counter(page).update(4) // Aggiorna il numero della pagina

#set heading(numbering: (..nums) => {
  set text(fill: main_storia, weight: "bold")
      numbering("1.1.1", ..nums)
}
)

// Numeri didascalie
#set figure(numbering: (..nums) => {
  set text(fill: main_storia, font: sans-fonts)
      numbering("1.1.1", ..nums)
      
}
)

// Colore grassetto
#show strong: it => text(
  fill: main_storia
)[#it]

// // // // //

// Inizio documento

= *La preistoria e la storia antica* <senza_numero>

#include "_testi/1 Antica/0 Introduzione.typ"

= La preistoria

#include "_testi/1 Antica/1 La preistoria.typ"

= La rivoluzione del Neolitico

#include "_testi/1 Antica\2 La rivoluzione del Neolitico.typ"

= Le civiltà della Mesopotamia

#include "_testi/1 Antica\3 Le civiltà della Mesopotamia.typ"

= La civiltà egizia

#include "_testi/1 Antica\4 La civiltà egizia.typ"

= Ittiti, Ebrei e Fenici

#include "_testi/1 Antica\5 Ittiti, Ebrei e Fenici.typ"

= Assiri, Medi e Persiani

#include "_testi/1 Antica\6 Assiri, Medi e Persiani.typ"

= L'Asia Minore e le civiltà dell'Estremo Oriente

#include "_testi/1 Antica\7 Asia Minore ed Estremo Oriente.typ"

= La Grecia delle origini

#include "_testi/1 Antica\8 La Grecia delle origini.typ"

= La _polis_

#include "_testi/1 Antica\9 La polis.typ"

= Sparta e Atene

#include "_testi/1 Antica\10 Sparta e Atene.typ"

= Le guerre persiane

#include "_testi/1 Antica\11 Le guerre persiane.typ"

= Il fiorire della cultura classica

#include "_testi/1 Antica\12 Il fiorire della cultura classica.typ"

= L'Impero di Alessandro Magno

#include "_testi/1 Antica/13 L'Impero di Alessandro Magno.typ"

= L'Italia preromana

#include "_testi/1 Antica\14 L'Italia preromana.typ"

= Le origini di Roma

#include "_testi/1 Antica\15 Le origini di Roma.typ"

= La repubblica romana

#include "_testi/1 Antica\16 La repubblica romana.typ"

= Le Guerre puniche e l'espansione in Oriente

#include "_testi/1 Antica\17 Le Guerre puniche e l'Oriente.typ"

= La crisi della Repubblica

#include "_testi/1 Antica\18 La crisi della Repubblica.typ"

= Il primo e il secondo triumvirato

#include "_testi/1 Antica\19 Il primo e il secondo triumvirato.typ"

= Il principato di Augusto

#include "_testi/1 Antica\20 Il principato di Augusto.typ"

= Le dinastie Giulio-Claudia e Flavia

#include "_testi/1 Antica\21 Le dinastie Giulio-Claudia e Flavia.typ"

= Da Traiano a Diocleziano

#include "_testi/1 Antica\22 Da Traiano a Diocleziano.typ"

= Economia e società nell'Impero romano

#include "_testi/1 Antica\23 Economia e società nell'Impero romano.typ"

= Cultura e civiltà di Roma

#include "_testi/1 Antica\24 Cultura e civiltà di Roma.typ"

= La fine dell'impero romano

#include "_testi/1 Antica\25 La fine dell'impero romano.typ"

= *Il Medioevo* <senza_numero>

#include "_testi/2 Medioevo/0 Introduzione.typ"

= I regni romano-barbarici

#include "_testi/2 Medioevo\1 I regni romano-barbarici.typ"

= L'impero bizantino

#include "_testi/2 Medioevo\2 L'impero bizantino.typ"

= L'Islam e la sua diffusione

#include "_testi/2 Medioevo\3 L'Islam e la sua diffusione.typ"

= L'Italia longobarda e la nascita dello Stato della Chiesa

#include "_testi/2 Medioevo\4 L'Italia longobarda e lo Stato della Chiesa.typ"

= Carlo Magno e il Sacro romano impero

#include "_testi/2 Medioevo\5 Carlo Magno e il Sacro romano impero.typ"

= L'Europa feudale

#include "_testi/2 Medioevo\6 L'Europa feudale.typ"

= Strutture produttive e demografia nel Medioevo

#include "_testi/2 Medioevo\7 Economia e demografia nel Medioevo.typ"

= Le ultime invasioni dell'Europa

#include "_testi/2 Medioevo\8 Le ultime invasioni dell'Europa.typ"

= Le Crociate

#include "_testi/2 Medioevo\9 Le crociate.typ"

= La lotta per le investiture

#include "_testi/2 Medioevo\10 La lotta per le investiture.typ"

= Il Sacro Romano Impero germanico e gli Svevi

#include "_testi/2 Medioevo\11 Il Sacro Romano Impero germanico.typ"

= I Comuni, le Signorie e il Principato

#include "_testi/2 Medioevo\12 I Comuni, le Signorie e il Principato.typ"

= La formazione delle monarchie nazionali

#include "_testi/2 Medioevo\13 La formazione delle monarchie nazionali.typ"

= Umanesimo e Rinascimento

#include "_testi/2 Medioevo\14 Umanesimo e Rinascimento.typ"

= *L'Moderna* <senza_numero>

#include "_testi/3 Moderna/0 Introduzione.typ"

= Le scoperte geografiche e l'espansione coloniale

#include "_testi/3 Moderna/1 Le scoperte geografiche e l'espansione coloniale.typ"

= Lo sviluppo economico e demografico del Cinquecento

#include "_testi/3 Moderna\2 Economia e demografia del Cinquecento.typ"

= La formazione degli Stati nazionali

#include "_testi/3 Moderna\3 La formazione degli Stati nazionali.typ"

= La Riforma protestante e la Controriforma cattolica

#include "_testi/3 Moderna\4 La Riforma e la Controriforma.typ"

= L'Europa di Carlo V

#include "_testi/3 Moderna\5 L'Europa di Carlo V.typ"

= L'Europa nella seconda metà del Cinquecento

#include "_testi/3 Moderna\6 L'Europa nella seconda metà del Cinquecento.typ"

= La Guerra dei Trent'anni e la crisi del Seicento

#include "_testi/3 Moderna\7 La Guerra dei Trent'anni e la crisi del Seicento.typ"

= Le due Rivoluzioni inglesi e la nascita del regime parlamentare

#include "_testi/3 Moderna\8 Le due Rivoluzioni inglesi.typ"

= L'Italia nel Cinquecento e nel Seicento

#include "_testi/3 Moderna\9 L'Italia nel Cinquecento e nel Seicento.typ"

= La Francia di Luigi XIV

#include "_testi/3 Moderna\10 La Francia di Luigi XIV.typ"

= Nuovi equilibri nell'Europa del Seicento

#include "_testi/3 Moderna\11 Nuovi equilibri nell'Europa del Seicento.typ"

= Il mondo extraeuropeo

#include "_testi/3 Moderna\12 Il mondo extraeuropeo.typ"

= La rivoluzione scientifica e l'evoluzione del pensiero politico

#include "_testi/3 Moderna\13 La rivoluzione scientifica.typ"

= Le Guerre di successione

#include "_testi/3 Moderna\14 Le Guerre di successione.typ"

= Gli imperi coloniali del Sei-Settecento

#include "_testi/3 Moderna\15 Gli imperi coloniali del Sei-Settecento.typ"

= L'Illuminismo

#include "_testi/3 Moderna\16 L'Illuminismo.typ"

= L'assolutismo illuminato

#include "_testi/3 Moderna\17 L'assolutismo illuminato.typ"

= L'Italia del Settecento

#include "_testi/3 Moderna\18 L'Italia del Settecento.typ"

= La Rivoluzione americana

#include "_testi/3 Moderna\19 La Rivoluzione americana.typ"

= Le civiltà orientali

#include "_testi/3 Moderna\20 Le civiltà orientali.typ"

= L'espansione economica e sociale del Settecento

#include "_testi/3 Moderna\21 Economia e demografia del Settecento.typ"

= La crisi dell'_Ancien Régime_ e la Rivoluzione Francese

#include "_testi/3 Moderna\22 Dall'Ancien Régime alla Rivoluzione Francese.typ"

= L'età napoleonica

#include "_testi/3 Moderna\23 L'età napoleonica.typ"

= *L'Contemporanea* <senza_numero>

#include "_testi/4 Contemporanea/0 Introduzione.typ"

= Il Congresso di Vienna e la Restaurazione

#include "_testi/4 Contemporanea\1 Il Congresso di Vienna e la Restaurazione.typ"

= I moti del \'20 e del \'30

#include "_testi/4 Contemporanea\2 I moti del '20 e del '30.typ"

= La Rivoluzione industriale

#include "_testi/4 Contemporanea\3 La Rivoluzione industriale.typ"

= L'Europa del 1848

#include "_testi/4 Contemporanea\4 L'Europa del 1848.typ"

= Il Risorgimento italiano

#include "_testi/4 Contemporanea\5 Il Risorgimento italiano.typ"

= Le Guerre d'Indipendenza e l'unificazione italiana

#include "_testi/4 Contemporanea\6 Unificazione d'Italia.typ"

= Il Giappone moderno

#include "_testi/4 Contemporanea\7 Il Giappone moderno.typ"

= Europa e Stati Uniti nella seconda metà dell'Ottocento

#include "_testi/4 Contemporanea\8 Occidente seconda metà dell'Ottocento.typ"

= I movimenti socialisti

#include "_testi/4 Contemporanea\9 I movimenti socialisti.typ"

= L'espansione coloniale del XIX secolo

#include "_testi/4 Contemporanea\10 Espansione coloniale del XIX secolo.typ"

= La Seconda rivoluzione industriale

#include "_testi/4 Contemporanea\11 Seconda rivoluzione industriale.typ"

= L'Italia dall'unificazione alla Prima Guerra Mondiale

#include "_testi/4 Contemporanea\12 Dall'unificazione alla WWI.typ"

= Il mondo alla vigilia della Prima Guerra Mondiale

#include "_testi/4 Contemporanea\13 Il mondo alla vigilia della WWI.typ"

= La Prima Guerra Mondiale

#include "_testi/4 Contemporanea\14 La Prima Guerra Mondiale.typ"

= La Russia dalla Rivoluzione a Stalin

#include "_testi/4 Contemporanea\15 Dalla Rivoluzione russa a Stalin.typ"

= La situazione europea tra le due guerre

#include "_testi/4 Contemporanea\16 L'Europa tra le due guerre.typ"

= La situazione mondiale tra le due guerre

#include "_testi/4 Contemporanea\17 Il mondo tra le due guerre.typ"

= Fascismo e nazismo

#include "_testi/4 Contemporanea\18 Fascismo e nazismo.typ"

= La Seconda Guerra Mondiale

#include "_testi/4 Contemporanea\19 La Seconda Guerra Mondiale.typ"

= Il secondo dopoguerra

#include "_testi/4 Contemporanea\20 Il secondo dopoguerra.typ"

= La Rivoluzione cinese

#include "_testi/4 Contemporanea\21 La Rivoluzione cinese.typ"

= La fine del colonialismo

#include "_testi/4 Contemporanea\22 La fine del colonialismo.typ"

= L'Occidente dagli anni \'50 agli anni \'80

#include "_testi/4 Contemporanea\23 Occidente tra anni 50 e 80.typ"

= L'Italia dal dopoguerra alla crisi della prima Repubblica

#include "_testi/4 Contemporanea\24 Italia fino crisi I Rep.typ"

= Il mondo comunista da Kruscev alla _perestroijka_

#include "_testi/4 Contemporanea\25 Da Kruscev alla perestroijka.typ"

= La caduta dei regimi comunisti

#include "_testi/4 Contemporanea\26 La caduta dei regimi comunisti.typ"

= Mutamenti tecnologici e nuove dimensioni del capitalismo mondiale

#include "_testi/4 Contemporanea\27 Tecnologia e capitalismo mondiale.typ"

= Verso nuovi equilibri

#include "_testi/4 Contemporanea\28 Verso nuovi equilibri.typ"

= Tra XX e XXI secolo

#include "_testi/4 Contemporanea\29 Tra XX e XXI secolo.typ"

= *Vita quotidiana* <senza_numero>

#include "_testi/4 Contemporanea\30 Vita quotidiana.typ"

#pagebreak()

// Retro
#include "_retro.typ"