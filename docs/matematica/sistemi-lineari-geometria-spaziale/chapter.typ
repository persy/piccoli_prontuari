#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

= Sistemi lineari e geometria spaziale <sistemi_lineari_geometria_spaziale> // trova un titolo migliore #TODO

#intro[/* TODO */]
