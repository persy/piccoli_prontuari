#import "../../template_normal.typ": *
//#show: frame-style(styles.thmbox)

#evidenzia[L'espressione "scienze della Terra" è stata introdotta in tempi relativamente recenti. Fino a pochi anni fa, le diverse discipline scientifiche ora incluse in questa denominazione omnicomprensiva, come l'astronomia, la geografia fisica e la geologia, erano generalmente classificate sotto il termine "scienze naturali". Tale termine includeva anche discipline orientate allo studio degli esseri viventi, quali la biologia, la zoologia e la botanica. Le scienze della Terra si configurano oggi come un insieme di settori disciplinari dedicati allo studio dei corpi materiali non viventi, come masse d'aria, corpi idrici e ammassi rocciosi, nonché all'analisi di fenomeni naturali quali quelli meteorologici, sismici, vulcanici, geomorfologici, idrologici e oceanografici.]

La diffusione di una maggiore sensibilità ecologica e di un interesse generalizzato per questioni ambientali ha contribuito a indirizzare le scienze della Terra verso nuovi approcci focalizzati sull'ambiente. Questo concetto viene inteso sia come fonte di risorse indispensabili per l'uomo, sia come un "bene collettivo" suscettibile di subire vari impatti negativi, tra cui inquinamento, erosione, desertificazione e rischi sismici. Le scienze della Terra integrano dunque sia le storiche discipline teoriche di stampo "classico" sia quelle sviluppatesi con un intento applicativo, ovvero finalizzate a fornire strumenti utili per le attività umane, come la geologia ambientale o la geologia applicata.

Se in passato la ricerca era incentrata prevalentemente sullo studio delle singole componenti e fenomeni isolati, oggi essa abbraccia una prospettiva maggiormente sistemica. Si tende infatti a ricostruire i cosiddetti "sistemi ambientali", correlando le diverse informazioni disponibili. Tale approccio mira a interpretare i fenomeni che interessano la superficie terrestre in modo unitario, considerando la Terra, o più propriamente il "sistema Terra", come un complesso integrato di sistemi ambientali interagenti. L'indagine si avvale così delle conoscenze derivanti dai diversi ambiti della ricerca scientifica secondo un'impostazione interdisciplinare.

Il modello più generale del sistema Terra individua alcuni grandi sistemi o domini ambientali distinti: la geosfera, l'idrosfera e l'atmosfera. La geosfera comprende la parte solida del pianeta, dal nucleo fino alla crosta terrestre; l'idrosfera include tutte le forme di acqua presenti sulla Terra, siano esse superficiali (oceani, mari, laghi, fiumi, ghiacciai), sotterranee (falde acquifere) o sotto forma di vapore acqueo atmosferico; l'atmosfera rappresenta l'involucro gassoso che circonda il pianeta. Questi domini interagiscono attraverso dinamiche di scambio di energia e materia.

A completamento di questo quadro viene considerato un quarto sistema ambientale: la biosfera o ecosfera, che rappresenta l'ambito in cui si sviluppa la vita. Essa permea gli altri tre componenti del sistema Terra e vi interagisce attivamente. Lo spazio occupato dalla biosfera comprende la parte superficiale della geosfera (litosfera), le terre emerse che affiorano dalle acque, l'idrosfera e il livello più basso dell'atmosfera, ossia la troposfera.
#v(1em)
#set figure.caption(position: bottom)
#figure(
  caption: [Settori disciplinari delle scienze della Terra],
  table(
    stroke: 0.5pt + main_scienze.lighten(90%),
    fill: (x, y) => {
  if y == 0 {
    return main_scienze // Colore header
  } else if calc.even(y) {
    // Colore righe dispari
    return main_scienze.lighten(90%)
  } else {
    // Colore righe pari
    return white
  }
  },
  align: left + horizon,
  columns: (2),
  table.header[Disciplina][Oggetto di studio],
  [climatologia], [caratteristiche dei fenomeni climatici],
  [cristallografia], [forma e struttura dei cristalli],
  [cronostratigrafia], [datazione dei vari tipi di rocce e dei fenomeni geologici],
  [geochimica], [composizione chimica dei corpi geologici terrestri],
  [geofisicafisica terrestre], [campi di forze associati alla Terra (magnetico, gravitazionale, elettrico, termico...)],
  [geografia fisica],
  [fenomeni naturali dell'atmosfera e dell'idrosfera; fenomeni legati ai climi; loro rapporti ed effetti sulla superficie terrestre],
  [geologia], [comprende i campi della stratigrafia, della tettonica e della geologia],
  [geologia storica],
  [storia degli eventi geologici],
  [geomorfologia], [forme del paesaggio, loro genesi ed evoluzione],
  [geopedologia], [suoli e loro genesi],
  [glaciologia], [fenomeni naturali in cui sono coinvolti i ghiacciai],
  [idrografia], [distribuzione delle acque superficiali],
  [limnologia], [fenomeni lacustri],
  [litologia], [rocce e loro genesi],
  [mineralogia], [costituzione fisica e chimica dei minerali],
  [oceanografia], [fenomeni che hanno luogo negli oceani e nei mari],
  [paleontologia], [fossili di animali e di vegetali],
  [petrografiapetrologia], [genesi e caratteristiche delle rocce ignee, metamorfiche e sedimentarie; ambienti di sedimentazione],
  [sismologia], [terremoti],
  [stratigrafia], [rapporti cronologici tra gli eventi sedimentari],
  [tettonica], [strutture acquisite dalle masse rocciose in seguito a fenomeni deformativi],
  [vulcanologia], [fenomeni vulcanici],
  [geologia agraria], [geopedologia applicata; tecnica delle irrigazioni],
  [geologia ambientale], [aspetti di carattere geologico della realtà ambientale],
  [geologia degli idrocarburi], [giacimenti petroliferi],
  [geologia delle costruzioni], [condizioni di realizzazione delle opere ingegneristiche],
  [geomorfologia applicata], [difesa dei versanti e delle coste; difesa dai rischi naturali],
  [geotecnica], [proprietà fisiche dei depositi sciolti e delle rocce],
  [geotermia], [fluidi caldi provenienti dal sottosuolo],
  [giacimentologia], [giacimenti minerari e cave],
  [idrogeologia], [ricerche d'acqua (potabile, minerale, termale)],
  [meccanica delle rocce], [proprietà fisiche delle masse rocciose],
  [meteorologia], [fenomeni atmosferici e previsioni del tempo],
  [petrografia applicata], [proprietà delle pietre da costruzione e dei materiali naturali utilizzati nell'edilizia e nel restauro di opere d'arte],
)  
)
