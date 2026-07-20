
#import "../../template/_global/config.typ": *
#import "@preview/alchemist:0.1.9": *

// Benzene con idrogeno
#let benzene_h = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("H")
  })
  single()
  single()
  })
  },
)
}

#let CH_3a = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("CH_3")
 single(angle: 3)
  },
)
$
}

#let CH_3b = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("CH_3")
 single(angle: 4) 
  },
)
$
}

#let CH = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH")   
 single(angle: 4) 
  },
)
$
}

#let CH_2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_2")
 single(angle: 4) 
  },
)
$
}

#let CH_3c = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
  },
)
$
}

#let metilbutano2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH")
 branch({
      single(angle: 1)
      fragment("CH_3")                    
    })
 single()
 fragment("CH_2")
 single()
 fragment("CH_3")
  },
)
$
}

#let dimetilpentano23 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH")
 branch({
      single(angle: 1)
      fragment("CH_3")                    
    })
 single()
 fragment("CH")
 branch({
      single(angle: 1)
      fragment("CH_3")                    
    })
 single()
 fragment("CH_3")
  },
)
$
}

#let dimetilbutano22 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("C")
 branch({
      single(angle: 1)
      fragment("CH_3")                    
    })
 branch({
      single(angle: 3)
      fragment("CH_3")                    
    })
 single()
 fragment("CH_2")
 single()
 fragment("CH_3")
  },
)
$
}

#let metano = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_4") 
  },
)
$
}

#let etano = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH_3") 
  },
)
$
}

#let etene = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
fragment("CH_2")
double()
fragment("CH_2")
  },
)
$
}

#let cloruro_etile = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
fragment("CH_3")
single()
fragment("CH_2")
single()
fragment("Cl")
  },
)
$
}

#let butene1 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_2")
 double()
 fragment("CH")
 single()
 fragment("CH_2")
 single()
 fragment("CH_3")
  },
)
$
}

#let propene = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 double()
 fragment("CH") 
 single()
 fragment("CH_2")
  },
)
$
}

#let butene2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH") 
 double()
 fragment("CH")
 single()
 fragment("CH_3")
  },
)
$
}

#let etanolo = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH_2OH")  
  },
)
$
}

#let propano = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH_2")  
 single()
 fragment("CH_3")
  },
)
$
}

#let butano = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH_2")  
 single()
 fragment("CH_2")
 single()
 fragment("CH_3")
  },
)
$
}

#let cloropropano2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CHCl")  
 single()
 fragment("CH_3")
  },
)
$
}

#let bromopropano1 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_2Br")
 single()
 fragment("CH_2")  
 single()
 fragment("CH_3")
  },
)
$
}

#let propanolo2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CHOH")  
 single()
 fragment("CH_3")
  },
)
$
}

#let dicloropropano12 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CHCl")  
 single()
 fragment("CH_2Cl")
  },
)
$
}

#let aldeide_acetica = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("C")  
 branch({
  double(angle: 4.5)
  fragment("O")
 })
 single(angle: 3.5)
 fragment("H")
  },
)
$
}

#let aldeide_formica = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("H")
 single()
 fragment("C")  
 branch({
  double(angle: 4.5)
  fragment("O")
 })
 single(angle: 3.5)
 fragment("H")
  },
)
$
}

#let polietilene = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 parenthesis(
 l:"(", r:")", resonance: true, {
  fragment("CH_2")
  branch({
  single(angle: 2)  
 })
 single()
 fragment("CH_2")  
 single() 
  })},
)
$
}

#let etino = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH")
 triple()
 fragment("CH") 
  },
)
$
}

#let propino = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH")
 triple()
 fragment("C") 
 single()
 fragment("CH_3")
  },
)
$
}

#let butino1 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH")
 triple()
 fragment("C") 
 single()
 fragment("CH_2")
 single()
 fragment("CH_3")
  },
)
$
}

#let butino2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("C") 
 triple()
 fragment("C")
 single()
 fragment("CH_3")
  },
)
$
}

#let cloropropene2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_2")
 double()
 fragment("C") 
 branch({
 single(angle: 1)
 fragment("Cl")
 })
 single()
 fragment("CH_3")
  },
)
$
}

#let dicloropropano22 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("C") 
 branch({
 single(angle: 1)
 fragment("Cl")
 })
 branch({
 single(angle: 3)
 fragment("Cl")
 })
 single()
 fragment("CH_3")
  },
)
$
}

#let acetone = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CO") 
 single()
 fragment("CH_3")
  },
)
$
}

#let benzene = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()  
  single()
  single()
  })
  },
)
$
}

#let metilbenzene = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("CH_3")
  })
  single()
  single()
  })
  },
)
$
}

#let o_dimetilbenzene = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  branch({
  single(angle: 4.5)
  fragment("CH_3")
  })
  single()
  branch({
  single(angle: 1)
  fragment("CH_3")
  })
  single()
  single()
  })
  },
)
$
}

#let m_dimetilbenzene = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  branch({
  single(angle: 4)
  fragment("CH_3")
  })
  single()
  single()
  branch({
  single(angle: 1)
  fragment("CH_3")
  })
  single()
  single()
  })
  },
)
$
}

#let p_dimetilbenzene = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  branch({
  single(angle: 3)
  fragment("CH_3")
  })
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("CH_3")
  })
  single()
  single()
  })
  },
)
$
}

#let etenilbenzene = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()  
  single()
  single()
  branch({
  single(angle: 4.5)
  fragment("CH")
  branch({
  double(angle: 4)
  fragment("CH_2")
  })
  })
  single()
  single()
  single()
  })
  },
)
$
}

#let difenile = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()  
  single()
  single()
  branch({
  single(angle: 4.5)
  cycle(6, arc:(:), {
  single()  
  single()
  single()
  single()
  single()
  single()
  })
  })
  single()
  single()
  single()
  })
  },
)
$
}

#let naftalene = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()  
  single()
  single()
  branch({
  single(angle: 3)
  cycle(6, arc:(:), {
  single()  
  single()
  single()
  single()
  single()
  single()
  })
  })
  single()
  single()
  single()
  })
  },
)
$
}

#let antracene = {
  $
#skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()  
  single()
  single()
  branch({
  single(angle: 3)
  cycle(6, arc:(:), {
  single()  
  single()
  single()
  single()
  single()
  single()
  })
  })
  single()
  cycle(6, arc:(:), {
  single()  
  single()
  single()
  single()
  single()
  single()
  })
  single()
  single()
  })
  },
)
$
}

#let nitrobenzene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("NO_2")
  })
  single()
  single()
  })
  },
)
}

#let clorobenzene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("Cl")
  })
  single()
  single()
  })
  },
)
}

#let acido_benzensolfonico = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("SO_3H")
  })
  single()
  single()
  })
  },
)
}

#let orto_benzene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  branch({
  single(angle: 4.5)
  fragment("B")
  })
  single()
  branch({
  single(angle: 1)
  fragment("A")
  })
  single()
  single()
  })
  },
)
}

#let meta_benzene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  branch({
  single(angle: 3.5)
  fragment("B")
  })
  single()
  single()
  branch({
  single(angle: 1)
  fragment("A")
  })
  single()
  single()
  })
  },
)
}

#let para_benzene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  branch({
  single(angle: 3)
  fragment("B")
  })
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("A")
  })
  single()
  single()
  })
  },
)
}

#let metano_struttura = {
  $#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
  fragment("C")
    branch({
      single(angle: 1) 
      fragment("H")         
    })
    branch({
      single(angle: 2) 
      fragment("H")         
    })
    branch({
      single(angle: 3) 
      fragment("H")         
    })
    branch({
      single(angle: 4) 
      fragment("H")         
    })  
  })$
}

#let etano_struttura = {
  $#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
  fragment("C")
    branch({
      single(angle: 1) 
      fragment("H")         
    })
    branch({
      single(angle: 2) 
      fragment("H")         
    })
    branch({
      single(angle: 3) 
      fragment("H")         
    })
    branch({
      single(angle: 4) 
      fragment("C")
      branch({
      single(angle: 4) 
      fragment("H")         
    })
      branch({
      single(angle: 3) 
      fragment("H")         
    })
      branch({
      single(angle: 1) 
      fragment("H")         
    })            
    })  
  })$
}

#let propano_struttura = {
  $#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
  fragment("C")
    branch({
      single(angle: 1) 
      fragment("H")         
    })
    branch({
      single(angle: 2) 
      fragment("H")         
    })
    branch({
      single(angle: 3) 
      fragment("H")         
    })
    branch({
      single(angle: 4) 
      fragment("C")
      branch({
      single(angle: 4) 
      fragment("C")
        branch({
        single(angle: 3) 
        fragment("H")         
      })
      branch({
      single(angle: 1) 
      fragment("H")         
      })
      branch({
      single(angle: 4) 
      fragment("H")         
    })         
    })
      branch({
      single(angle: 3) 
      fragment("H")         
    })
      branch({
      single(angle: 1) 
      fragment("H")         
    })            
    })  
  })$
}

#let butano_struttura = {
  $#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
  fragment("C")
    branch({
      single(angle: 1) 
      fragment("H")         
    })
    branch({
      single(angle: 2) 
      fragment("H")         
    })
    branch({
      single(angle: 3) 
      fragment("H")         
    })
    branch({
      single(angle: 4) 
      fragment("C")
      branch({
      single(angle: 4) 
      fragment("C")
        branch({
        single(angle: 3) 
        fragment("H")         
      })
      branch({
      single(angle: 1) 
      fragment("H")         
      })
      branch({
      single(angle: 4) 
      fragment("C") 
      branch({
      single(angle: 1) 
      fragment("H")         
      })
      branch({
      single(angle: 3) 
      fragment("H")         
      }) 
      branch({
      single(angle: 4) 
      fragment("H")         
      })       
    })         
    })
      branch({
      single(angle: 3) 
      fragment("H")         
    })
      branch({
      single(angle: 1) 
      fragment("H")         
    })            
    })  
  })$
}

#let butadiene13 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_2")
 double()
 fragment("CH") 
 single()
 fragment("CH")
 double()
 fragment("CH_2")
  },
)
$
}

#let isoprene = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_2")
 double()
 fragment("CCH_3") 
 single()
 fragment("CH")
 double()
 fragment("CH_2")
  },
)
$
}

#let benzene_limite1 = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, {
  branch({
  single(angle: 2.3)
  fragment("H")
  })
  single()
  branch({
  single(angle: 3)
  fragment("H")
  })
  double()
  branch({
  single(angle: 3.7)
  fragment("H")
  })
  single()
  branch({
  single(angle: 4.3)
  fragment("H")
  })
  double()
  branch({
  single(angle: 1)
  fragment("H")
  })
  single()
  branch({
  single(angle: 1.6)
  fragment("H")
  })
  double()  
  })
  },
)
}

#let benzene_limite2 = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, {
  branch({
  single(angle: 2.3)
  fragment("H")
  })
  double()
  branch({
  single(angle: 3)
  fragment("H")
  })
  single()
  branch({
  single(angle: 3.7)
  fragment("H")
  })
  double()
  branch({
  single(angle: 4.3)
  fragment("H")
  })
  single()
  branch({
  single(angle: 1)
  fragment("H")
  })
  double()
  branch({
  single(angle: 1.6)
  fragment("H")
  })
  single()  
  })
  },
)
}

#let fluorobenzene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("F")
  })
  single()
  single()
  })
  },
)
}

#let bromobenzene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("Br")
  })
  single()
  single()
  })
  },
)
}

#let iodobenzene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("I")
  })
  single()
  single()
  })
  },
)
}

#let cloroetene = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_2")
 double()
 fragment("CHCl") 
  },
)
$
}

#let bromoetano1 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH_2Br") 
  },
)
$
}

#let cloropropene3 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_2Cl")
 single()
 fragment("CH")
 double()
 fragment("CH_2") 
  },
)
$
}

#let metanolo = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3OH")  
  },
)
$
}

#let metil2propanolo2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("COH")
 branch({
  single(angle: 1, from: 0)
  fragment("CH_3")
 })
 single()
 fragment("CH_3") 
  },
)
$
}

#let cloruro_propile = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH_2") 
 single()
 fragment("CH_2Cl") 
  },
)
$
}

#let propanolo1 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH_2") 
 single()
 fragment("CH_2OH") 
  },
)
$
}

#let acido_acetico = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3COOH") 
  },
)
$
}

#let acetato_etile = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3CO") 
 single(width: .5em)
 fragment("O")
 single()
 fragment("CH_2")
 single()
 fragment("CH_3") 
  },
)
$
}

#let fenolo = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("OH")
  })
  single()
  single()
  })
  },
)
}

#let pirocatecolo = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  branch({
  single(angle: .3)
  fragment("OH")
  })
  single()
  branch({
  single(angle: 1)
  fragment("OH")
  })
  single()
  single()
  })
  },
)
}

#let resorcinolo = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  branch({
  single(angle: 3.5)
  fragment("OH")
  })
  single()
  single()
  branch({
  single(angle: 1)
  fragment("OH")
  })
  single()
  single()
  })
  },
)
}

#let idrochinone = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  branch({
  single(angle: 3)
  fragment("OH")
  })
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("OH")
  })
  single()
  single()
  })
  },
)
}

#let acetato_fenile = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("O")
  branch({
  single(angle: 4)
  fragment("COCH_3")
  })
  })
  single()
  single()
  })
  },
)
}

#let para_nitrofenolo = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  branch({
  single(angle: 3)
  fragment("NO_2")
  })
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("OH")
  })
  single()
  single()
  })
  },
)
}

#let orto_nitrofenolo = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  branch({
  single(angle: 4.5)
  fragment("NO_2")
  })
  single()
  branch({
  single(angle: 1)
  fragment("OH")
  })
  single()
  single()
  })
  },
)
}

#let etere_dietilico = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3")
 single()
 fragment("CH_2")
 single()
 fragment("O")
 single()
 fragment("CH_2")
 single()
 fragment("CH_3")
  },
)
$
}

#let chetone_piccolo = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 1.5em),
  {
    //import cetz.draw: * 
 fragment("C")
 branch({
  single(angle: 1.5)
 })
 branch({
  single(angle: 2.5)
 })
 double(angle: 4, atom-sep: 2.5em)
 fragment("O")
  },
)
$
}

#let etanale = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("CH_3")
 single()
 fragment("CHO")
  },
)
$
}

#let aldeide = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1.5)
  fragment("H")
 })
 branch({
  single(angle: 2.5)
  fragment("R")
 })
 double(angle: 4)
 fragment("O")
  },
)
$
}

#let aldeideAR = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1.5)
  fragment("H")
 })
 branch({
  single(angle: 2.5)
  fragment("Ar")
 })
 double(angle: 4)
 fragment("O")
  },
)
$
}

#let etanale_struttura = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1.5)
  fragment("H")
 })
 branch({
  single(angle: 2.5)
  fragment("CH_3")
 })
 double(angle: 4)
 fragment("O")
  },
)
$
}

#let chetone = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1.5)
  fragment("R'")
 })
 branch({
  single(angle: 2.5)
  fragment("R")
 })
 double(angle: 4)
 fragment("O")
  },
)
$
}

#let chetoneRR = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1.5)
  fragment("R")
 })
 branch({
  single(angle: 2.5)
  fragment("R'")
 })
 double(angle: 4)
 fragment("O")
  },
)
$
}

#let chetoneRAr = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1.5)
  fragment("R")
 })
 branch({
  single(angle: 2.5)
  fragment("Ar")
 })
 double(angle: 4)
 fragment("O")
  },
)
$
}

#let chetoneArAr = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1.5)
  fragment("Ar")
 })
 branch({
  single(angle: 2.5)
  fragment("Ar'")
 })
 double(angle: 4)
 fragment("O")
  },
)
$
}

#let benzaldeide = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  branch({
  single(angle: .5)
  fragment("C")
  branch({
    double(angle: .5)
    fragment("O")
  })
  branch({
    single(angle: 3.5)
    fragment("H")
  })
  })
  single()
  single()
  single()
  })
  },
)
}

#let propanone_struttura = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1.5)
  fragment("CH_3")
 })
 branch({
  single(angle: 2.5)
  fragment("CH_3")
 })
 double(angle: 4)
 fragment("O")
  },
)
$
}

#let feniletanone = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  branch({
  single(angle: .5)
  fragment("C")
  branch({
    double(angle: .5)
    fragment("O")
  })
  branch({
    single(angle: 3.5)
    fragment("CH_3")
  })
  })
  single()
  single()
  single()
  })
  },
)
}

#let propanone = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("CH_3") 
 single(angle: 4)
 fragment("CO")
 single()
 fragment("CH_3")
  },
)
$
}

#let etanale_struttura2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:3.5)
  fragment("H")
 })
 branch({
  single(angle: 2)
  fragment("CH_3")
 })
 double(angle: 4.5)
 fragment("O")
  },
)
$
}

#let bromuro_alchilmagnesio = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2.5em),
  {
    //import cetz.draw: *
 fragment("CH_3")
 single()
 fragment("Mg")
 single()
 fragment("Br")
  },
)
$
}

#let etanale_bromuro = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle: 4)
  fragment("CH_3")
 })
 branch({
  single(angle:3.5)
  fragment("H")
 })
 branch({
  single(angle: 2)
  fragment("CH_3")
 })
 single(angle: 4.5)
 fragment("OMgBr")
  },
)
$
}

#let etanale_struttura3 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:3.5)
  fragment("H")
 })
 branch({
  single(angle: 2)
  fragment("C")
  branch({
    single(angle: 2)
    fragment("H")
  })
  branch({
    single(angle: 2.5)
    fragment("H")
  })
  branch({
    single(angle: 1.5)
    fragment("H")
  })
 })
 double(angle: 4.5)
 fragment("O")
  },
)
$
}

#let idrossibutanale = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("C")
 branch({
  single(angle:1)
  fragment("OH")
 })
 branch({
  single(angle: 2)
  fragment("CH_3")
 })
 branch({
  single(angle:3)
  fragment("H")
 })
 single(angle: 4)
 fragment("CH_2")
 branch({
  single(angle:3.5)
  fragment("H")
 })
 branch({
  double(angle:4.5)
  fragment("O")
 })
  },
)
$
}

#let carbossilicoR = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("R") 
 single(angle: 4)
 fragment("C")
 branch({
  single(angle:4.5)
  fragment("OH")
 })
 branch({
  double(angle:3.5)
  fragment("O")
 })
  },
)
$
}

#let carbossilicoAr = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("Ar") 
 single(angle: 4)
 fragment("C")
 branch({
  single(angle:4.5)
  fragment("OH")
 })
 branch({
  double(angle:3.5)
  fragment("O")
 })
  },
)
$
}

#let acido_etanoico_struttura = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("CH_3") 
 single(angle: 4)
 fragment("C")
 branch({
  single(angle:4.5)
  fragment("OH")
 })
 branch({
  double(angle:3.5)
  fragment("O")
 })
  },
)
$
}

#let acido_benzoico_struttura = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
   cycle(6, arc:(:), {
  single()
  single()
  single()
  branch({
  single(angle: 4)
  fragment("C")
  branch({
    single(angle:4.5)
    fragment("OH")
  })
 branch({
    double(angle:3.5)
    fragment("O")
  })
  })
  single()
  single()
  single()
  })  
  },
)
$
}

#let acido_ossalico = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("COOH") 
 single(angle: 3, from: 0)
 fragment("COOH") 
  },
)
$
}

#let acido_malonico = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("COOH") 
 single(angle: 3, from: 0)
 fragment("CH_2")
 single(angle: 3, from: 0)
 fragment("COOH")  
  },
)
$
}

#let propanonitrile = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("CH_3") 
 single()
 fragment("CH_2")
 single()
 fragment("CN")  
  },
)
$
}

#let acido_propanoico = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("CH_3") 
 single()
 fragment("CH_2")
 single()
 fragment("COOH")  
  },
)
$
}

#let estere = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("R") 
 single(angle: 4)
 fragment("C")
 branch({
  single(angle:3.5)
  fragment("OR'")
 })
 branch({
  double(angle:4.5)
  fragment("O")
 })
  },
)
$
}

#let acido = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("R") 
 single(angle: 4)
 fragment("C")
 branch({
  single(angle:3.5)
  fragment("OH")
 })
 branch({
  double(angle:4.5)
  fragment("O")
 })
  },
)
$
}

#let alcol = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
 fragment("HO") 
 single()
 fragment("R'")   
  },
)
$
}

#let acetato_etile2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3") 
 single()
 fragment("CO")
 single()
 fragment("O")
 single()
 fragment("CH_2")
 single()
 fragment("CH_3") 
  },
)
$
}

#let benzoato_metile_struttura = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *
   cycle(6, arc:(:), {
  single()
  single()
  single()
  branch({
  single(angle: 4)
  fragment("C")
  branch({
    single(angle:4.5)
    fragment("O")
    single()
    fragment("CH_3")
  })
 branch({
    double(angle:3.5)
    fragment("O")
  })
  })
  single()
  single()
  single()
  })  
  },
)
$
}

#let grignard1 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3") 
 single()
 fragment("C")
 branch({
 single()
 fragment("CH_3") 
 })
 branch({
 single(angle: 3)
 fragment("CH_3") 
 }) 
 single(angle: 1)
 fragment("OMgI")
  },
)
$
}

#let grignard2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3") 
 single()
 fragment("C")
 branch({
 single()
 fragment("CH_3") 
 })
 branch({
 single(angle: 3)
 fragment("CH_3") 
 }) 
 single(angle: 1)
 fragment("OH")
  },
)
$
}

#let ammina = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: *  
 fragment("C")
 branch({
 single()
 fragment("NH_2") 
 })
 branch({
 single(angle: 2)
  })   
 double(angle: .5)
 fragment("O")
  },
)
$
}

#let anilina = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("NH_2")
  })
  single()
  single()
  })
  },
)
}

#let Nmetilanilina = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, arc:(:), {
  single()
  single()
  single()
  single()
  branch({
  single(angle: 1)
  fragment("NH")
  branch({
    single(angle: 4)
    fragment("CH_3")
  })
  })
  single()
  single()
  })
  },
)
}

#let ammide_sostituita = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment("CH_3") 
 single()
 fragment("NH")
 single()
 fragment("COCH_3")
  },
)
$
}

#let furano = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(5, {
  single()
  fragment("O")
  single()
  double()
  single()
  double()  
  })
  },
)
}

#let tiofene = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(5, {
  single()
  fragment("S")
  single()
  double()
  single()
  double()  
  })
  },
)
}

#let pirrolo = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(5, {
  single()
  fragment("N")
  branch({
    single()
    fragment("H")
  })
  single()
  double()
  single()
  double()  
  })
  },
)
}

#let piridina = {
  skeletize(
    config: (angle-increment: 90deg, atom-sep: 2em),
    {
  cycle(6, {
  double()
  fragment("N")  
  single()
  double()
  single()
  double()  
  single()
  })
  },
)
}

#let d_glucosio = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment($attach("", bl: "1")C$) 
 branch({
  single(angle: 1.5, from: 1)
  fragment("H")
 })
 branch({
  double(angle: 4.5, from: 1)
  fragment("O")
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "2")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("H")
 })
 branch({
  single(angle: 4)
  fragment("OH")
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "3")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("H")
 })
 branch({
  single(angle: 4)
  fragment("OH")
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "4")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("H")
 })
 branch({
  single(angle: 4)
  fragment("OH")
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "5")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("H")
 })
 branch({
  single(angle: 4)
  fragment("OH", colors: (accent.chi))
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "6")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("H")
 })
 branch({
  single(angle: 4)
  fragment("OH")
 })
 single(angle: 3)
 fragment("H")
  },
)
$
}

#let d_fruttosio = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment($attach("", bl: "1") C H_(2) O H$) 
 single(angle: 3, from: 1, to: 1)
 fragment($attach("", bl: "2")C^(\*)$) 
 branch({
  double(angle: 4)
  fragment("O")
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "3")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("HO")
 })
 branch({
  single(angle: 4)
  fragment("H")
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "4")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("H")
 })
 branch({
  single(angle: 4)
  fragment("OH")
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "5")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("H")
 })
 branch({
  single(angle: 4)
  fragment("OH", colors: (accent.chi))
 })
 single(angle: 3, to: 1)
 fragment($attach("", bl: "6")C^(\*)$)
 branch({
  single(angle: 2)
  fragment("H")
 })
 branch({
  single(angle: 4)
  fragment("OH")
 })
 single(angle: 3)
 fragment("H")
  },
)
$
}

#let d_glucosio_chiusura = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment($attach("", bl: "1")C$) 
 branch({
  single(angle: 4.5, from: 1)
  fragment("H")
 })
 branch({
  double(angle: 3.5, from: 1)
  fragment("O")
 })
 cram-filled-left(angle: 2.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 fragment($attach("", bl: "2")C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)  
 })
 single(angle: 2, from: 1, to: 1, stroke: .3em, atom-sep: 5em)
 fragment($attach("", bl: "3")C$)
 branch({
  single(angle: 1)
   })
 branch({
  single(angle: 3)  
 })
 cram-filled-right(angle: 1.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 fragment($attach("", bl: "4")C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)
   })
 single(angle: 4.5, from: 1, to: 1, atom-sep: 5em)
 fragment($attach("", bl: "5")C$)
 branch({
  single(angle: 1)
  })
 branch({
  single(angle: 3)  
 })
 branch({
  single(angle: 4, atom-sep: 5em)
  fragment("OH")
 })
 single(angle: 1, from: 1, to: 1, atom-sep: 2.5em)
 fragment($attach("", bl: "6")C H_2 O H$)
 
  },
)
$
}

#let alfad_glucosio = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment($attach("", bl: "1")C$) 
 branch({
  single(angle: 1, from: 1)
  fragment("H")
 })
 branch({
  single(angle: 3, from: 1)
  fragment("OH")
 })
 cram-filled-left(angle: 2.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 fragment($attach("", bl: "2")C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)  
 })
 single(angle: 2, from: 1, to: 1, stroke: .3em, atom-sep: 5em)
 fragment($attach("", bl: "3")C$)
 branch({
  single(angle: 1)
   })
 branch({
  single(angle: 3)  
 })
 cram-filled-right(angle: 1.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 fragment($attach("", bl: "4")C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)
   })
 single(angle: 4.5, from: 1, to: 1, atom-sep: 5em)
 fragment($attach("", bl: "5")C$)
 branch({
  single(angle: 1)
  })
 branch({
  single(angle: 3)  
 })
 branch({
  single(angle: 4, atom-sep: 5em)
  fragment("O")
  single(angle: 3.5, atom-sep: 4.5em)
 })
 single(angle: 1, from: 1, to: 1, atom-sep: 2.5em)
 fragment($attach("", bl: "6")C H_2 O H$)
 
  },
)
$
}

#let betad_glucosio = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
    //import cetz.draw: * 
 fragment($attach("", bl: "1")C$) 
 branch({
  single(angle: 3, from: 1)
  fragment("H")
 })
 branch({
  single(angle: 1, from: 1)
  fragment("OH")
 })
 cram-filled-left(angle: 2.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 fragment($attach("", bl: "2")C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)  
 })
 single(angle: 2, from: 1, to: 1, stroke: .3em, atom-sep: 5em)
 fragment($attach("", bl: "3")C$)
 branch({
  single(angle: 1)
   })
 branch({
  single(angle: 3)  
 })
 cram-filled-right(angle: 1.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 fragment($attach("", bl: "4")C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)
   })
 single(angle: 4.5, from: 1, to: 1, atom-sep: 5em)
 fragment($attach("", bl: "5")C$)
 branch({
  single(angle: 1)
  })
 branch({
  single(angle: 3)  
 })
 branch({
  single(angle: 4, atom-sep: 5em)
  fragment("O")
  single(angle: 3.5, atom-sep: 4.5em)
 })
 single(angle: 1, from: 1, to: 1, atom-sep: 2.5em)
 fragment($attach("", bl: "6")C H_2 O H$)
 
  },
)
$
}

#let glicerolo_struttura = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2.5em),
  {
    //import cetz.draw: * 
  fragment("CH_2OH")
  single(angle: 3, from: 0, to: 0)
  fragment("CH_2OH")
  single(angle: 3, from: 0, to: 0)
  fragment("CH_2OH")
  },
)
$
}

#let acidi_grassi = { 
$
#move(dy: -1.3em)[
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2.5em),
  {
    //import cetz.draw: * 
  fragment("C")
  branch({
    double(angle: 1)
    fragment("O")
  })
  branch({
    single(angle: 2)
    fragment("HO")
  })
  single(angle: 4, from: 0, to: 0)
  fragment("R")
  },
)

#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2.5em),
  {
    //import cetz.draw: * 
  fragment("C")
  branch({
    double(angle: 1)
    fragment("O")
  })
  branch({
    single(angle: 2)
    fragment("HO")
  })
  single(angle: 4, from: 0, to: 0)
  fragment("R'")
  },
)



#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2.5em),
  {
    //import cetz.draw: * 
  fragment("C")
  branch({
    double(angle: 1)
    fragment("O")
  })
  branch({
    single(angle: 2)
    fragment("HO")
  })
  single(angle: 4, from: 0, to: 0)
  fragment("R''")
  },
)


]
$

}

#let trigliceride_struttura = { 
$
#move(dy: -1.3em)[
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2.5em),
  {
    //import cetz.draw: * 
  fragment("CH_2")
  branch({
    single(angle: 4)
    fragment("O")
    single()
    fragment("C")
    branch({
      double(angle: 1)
      fragment("O")
    })
    single()
    fragment("R")
  })
  single(angle: 3, from: 0, to: 0, atom-sep: 4em)
  fragment("CH")
  branch({
    single(angle: 4)
    fragment("O")
    single()
    fragment("C")
    branch({
      double(angle: 1)
      fragment("O")
    })
    single()
    fragment("R'")
  })
  single(angle: 3, from: 0, to: 0, atom-sep: 4em)
  fragment("CH_2")
  branch({
    single(angle: 4)
    fragment("O")
    single()
    fragment("C")
    branch({
      double(angle: 1)
      fragment("O")
    })
    single()
    fragment("R''")
  })
  },
)
]
$
}

#let amminoacido1 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
  //import cetz.draw: * 
  fragment("H")
  single()
  fragment("N")
  branch({
  single(angle: 3)
  fragment("H")
  }) 
  single()
  fragment("C")
  branch({
  single(angle: 3)
  fragment("H")
  }) 
  branch({
  single(angle: 1)
  fragment("R")
  }) 
  single()
  fragment("C")
  branch({
  double(angle: 3)
  fragment("O")
  }) 
  single()
  fragment("OH")
  },
)
$
}

#let amminoacido2 = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
  //import cetz.draw: * 
  fragment("H")
  single()
  fragment("N")
  branch({
  single(angle: 3)
  fragment("H")
  }) 
  single()
  fragment("C")
  branch({
  single(angle: 3)
  fragment("H")
  }) 
  branch({
  single(angle: 1)
  fragment("R'")
  }) 
  single()
  fragment("C")
  branch({
  double(angle: 3)
  fragment("O")
  }) 
  single()
  fragment("OH")
  },
)
$
}

#let legame_peptidico = { 
$
#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2em),
  {
  //import cetz.draw: * 
  fragment("H")
  single()
  fragment("N")
  branch({
  single(angle: 3)
  fragment("H")
  }) 
  single()
  fragment("C")
  branch({
  single(angle: 3)
  fragment("H")
  }) 
  branch({
  single(angle: 1)
  fragment("R")
  }) 
  single()
  fragment("C", colors: (accent.chi))
  branch({
  double(angle: 3, stroke: (accent.chi))
  fragment("O", colors: (accent.chi))
  }) 
  single(stroke: (accent.chi))  
  fragment("N", colors: (accent.chi))
  branch({
  single(angle: 3, stroke: (accent.chi))
  fragment("H", colors: (accent.chi))
  }) 
  single()
  fragment("C")
  branch({
  single(angle: 3)
  fragment("H")
  }) 
  branch({
  single(angle: 1)
  fragment("R'")
  }) 
  single()
  fragment("C")
  branch({
  double(angle: 3)
  fragment("O")
  }) 
  single()
  fragment("OH")
  },
)
$
}

#legame_peptidico 