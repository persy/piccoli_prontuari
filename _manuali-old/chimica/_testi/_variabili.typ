// Variabili usate nei documenti (chimica, biologia, fisica)

#import "../../template_normal.typ": *

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
  molecule("H")
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
 molecule("CH_3")
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
 molecule("CH_3")
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
 molecule("CH")   
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
 molecule("CH_2")
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
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("CH")
 branch({
      single(angle: 1)
      molecule("CH_3")                    
    })
 single()
 molecule("CH_2")
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("CH")
 branch({
      single(angle: 1)
      molecule("CH_3")                    
    })
 single()
 molecule("CH")
 branch({
      single(angle: 1)
      molecule("CH_3")                    
    })
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("C")
 branch({
      single(angle: 1)
      molecule("CH_3")                    
    })
 branch({
      single(angle: 3)
      molecule("CH_3")                    
    })
 single()
 molecule("CH_2")
 single()
 molecule("CH_3")
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
 molecule("CH_4") 
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
 molecule("CH_3")
 single()
 molecule("CH_3") 
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
molecule("CH_2")
double()
molecule("CH_2")
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
molecule("CH_3")
single()
molecule("CH_2")
single()
molecule("Cl")
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
 molecule("CH_2")
 double()
 molecule("CH")
 single()
 molecule("CH_2")
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 double()
 molecule("CH") 
 single()
 molecule("CH_2")
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
 molecule("CH_3")
 single()
 molecule("CH") 
 double()
 molecule("CH")
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("CH_2OH")  
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
 molecule("CH_3")
 single()
 molecule("CH_2")  
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("CH_2")  
 single()
 molecule("CH_2")
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("CHCl")  
 single()
 molecule("CH_3")
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
 molecule("CH_2Br")
 single()
 molecule("CH_2")  
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("CHOH")  
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("CHCl")  
 single()
 molecule("CH_2Cl")
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
 molecule("CH_3")
 single()
 molecule("C")  
 branch({
  double(angle: 4.5)
  molecule("O")
 })
 single(angle: 3.5)
 molecule("H")
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
 molecule("H")
 single()
 molecule("C")  
 branch({
  double(angle: 4.5)
  molecule("O")
 })
 single(angle: 3.5)
 molecule("H")
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
  molecule("CH_2")
  branch({
  single(angle: 2)  
 })
 single()
 molecule("CH_2")  
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
 molecule("CH")
 triple()
 molecule("CH") 
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
 molecule("CH")
 triple()
 molecule("C") 
 single()
 molecule("CH_3")
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
 molecule("CH")
 triple()
 molecule("C") 
 single()
 molecule("CH_2")
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("C") 
 triple()
 molecule("C")
 single()
 molecule("CH_3")
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
 molecule("CH_2")
 double()
 molecule("C") 
 branch({
 single(angle: 1)
 molecule("Cl")
 })
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("C") 
 branch({
 single(angle: 1)
 molecule("Cl")
 })
 branch({
 single(angle: 3)
 molecule("Cl")
 })
 single()
 molecule("CH_3")
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
 molecule("CH_3")
 single()
 molecule("CO") 
 single()
 molecule("CH_3")
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
  molecule("CH_3")
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
  molecule("CH_3")
  })
  single()
  branch({
  single(angle: 1)
  molecule("CH_3")
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
  molecule("CH_3")
  })
  single()
  single()
  branch({
  single(angle: 1)
  molecule("CH_3")
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
  molecule("CH_3")
  })
  single()
  single()
  single()
  branch({
  single(angle: 1)
  molecule("CH_3")
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
  molecule("CH")
  branch({
  double(angle: 4)
  molecule("CH_2")
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
  molecule("NO_2")
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
  molecule("Cl")
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
  molecule("SO_3H")
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
  molecule("B")
  })
  single()
  branch({
  single(angle: 1)
  molecule("A")
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
  molecule("B")
  })
  single()
  single()
  branch({
  single(angle: 1)
  molecule("A")
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
  molecule("B")
  })
  single()
  single()
  single()
  branch({
  single(angle: 1)
  molecule("A")
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
 molecule("CH_2")
 double()
 molecule("CH") 
 single()
 molecule("CH")
 double()
 molecule("CH_2")
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
 molecule("CH_2")
 double()
 molecule("CCH_3") 
 single()
 molecule("CH")
 double()
 molecule("CH_2")
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
  molecule("H")
  })
  single()
  branch({
  single(angle: 3)
  molecule("H")
  })
  double()
  branch({
  single(angle: 3.7)
  molecule("H")
  })
  single()
  branch({
  single(angle: 4.3)
  molecule("H")
  })
  double()
  branch({
  single(angle: 1)
  molecule("H")
  })
  single()
  branch({
  single(angle: 1.6)
  molecule("H")
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
  molecule("H")
  })
  double()
  branch({
  single(angle: 3)
  molecule("H")
  })
  single()
  branch({
  single(angle: 3.7)
  molecule("H")
  })
  double()
  branch({
  single(angle: 4.3)
  molecule("H")
  })
  single()
  branch({
  single(angle: 1)
  molecule("H")
  })
  double()
  branch({
  single(angle: 1.6)
  molecule("H")
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
  molecule("F")
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
  molecule("Br")
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
  molecule("I")
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
 molecule("CH_2")
 double()
 molecule("CHCl") 
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
 molecule("CH_3")
 single()
 molecule("CH_2Br") 
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
 molecule("CH_2Cl")
 single()
 molecule("CH")
 double()
 molecule("CH_2") 
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
 molecule("CH_3OH")  
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
 molecule("CH_3")
 single()
 molecule("COH")
 branch({
  single(angle: 1, from: 0)
  molecule("CH_3")
 })
 single()
 molecule("CH_3") 
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
 molecule("CH_3")
 single()
 molecule("CH_2") 
 single()
 molecule("CH_2Cl") 
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
 molecule("CH_3")
 single()
 molecule("CH_2") 
 single()
 molecule("CH_2OH") 
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
 molecule("CH_3COOH") 
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
 molecule("CH_3CO") 
 single(width: .5em)
 molecule("O")
 single()
 molecule("CH_2")
 single()
 molecule("CH_3") 
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
  molecule("OH")
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
  molecule("OH")
  })
  single()
  branch({
  single(angle: 1)
  molecule("OH")
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
  molecule("OH")
  })
  single()
  single()
  branch({
  single(angle: 1)
  molecule("OH")
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
  molecule("OH")
  })
  single()
  single()
  single()
  branch({
  single(angle: 1)
  molecule("OH")
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
  molecule("O")
  branch({
  single(angle: 4)
  molecule("COCH_3")
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
  molecule("NO_2")
  })
  single()
  single()
  single()
  branch({
  single(angle: 1)
  molecule("OH")
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
  molecule("NO_2")
  })
  single()
  branch({
  single(angle: 1)
  molecule("OH")
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
 molecule("CH_3")
 single()
 molecule("CH_2")
 single()
 molecule("O")
 single()
 molecule("CH_2")
 single()
 molecule("CH_3")
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
 molecule("C")
 branch({
  single(angle: 1.5)
 })
 branch({
  single(angle: 2.5)
 })
 double(angle: 4, atom-sep: 2.5em)
 molecule("O")
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
 molecule("CH_3")
 single()
 molecule("CHO")
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
 molecule("C")
 branch({
  single(angle:1.5)
  molecule("H")
 })
 branch({
  single(angle: 2.5)
  molecule("R")
 })
 double(angle: 4)
 molecule("O")
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
 molecule("C")
 branch({
  single(angle:1.5)
  molecule("H")
 })
 branch({
  single(angle: 2.5)
  molecule("Ar")
 })
 double(angle: 4)
 molecule("O")
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
 molecule("C")
 branch({
  single(angle:1.5)
  molecule("H")
 })
 branch({
  single(angle: 2.5)
  molecule("CH_3")
 })
 double(angle: 4)
 molecule("O")
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
 molecule("C")
 branch({
  single(angle:1.5)
  molecule("R'")
 })
 branch({
  single(angle: 2.5)
  molecule("R")
 })
 double(angle: 4)
 molecule("O")
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
 molecule("C")
 branch({
  single(angle:1.5)
  molecule("R")
 })
 branch({
  single(angle: 2.5)
  molecule("R'")
 })
 double(angle: 4)
 molecule("O")
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
 molecule("C")
 branch({
  single(angle:1.5)
  molecule("R")
 })
 branch({
  single(angle: 2.5)
  molecule("Ar")
 })
 double(angle: 4)
 molecule("O")
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
 molecule("C")
 branch({
  single(angle:1.5)
  molecule("Ar")
 })
 branch({
  single(angle: 2.5)
  molecule("Ar'")
 })
 double(angle: 4)
 molecule("O")
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
  molecule("C")
  branch({
    double(angle: .5)
    molecule("O")
  })
  branch({
    single(angle: 3.5)
    molecule("H")
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
 molecule("C")
 branch({
  single(angle:1.5)
  molecule("CH_3")
 })
 branch({
  single(angle: 2.5)
  molecule("CH_3")
 })
 double(angle: 4)
 molecule("O")
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
  molecule("C")
  branch({
    double(angle: .5)
    molecule("O")
  })
  branch({
    single(angle: 3.5)
    molecule("CH_3")
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
 molecule("CH_3") 
 single(angle: 4)
 molecule("CO")
 single()
 molecule("CH_3")
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
 molecule("C")
 branch({
  single(angle:3.5)
  molecule("H")
 })
 branch({
  single(angle: 2)
  molecule("CH_3")
 })
 double(angle: 4.5)
 molecule("O")
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
 molecule("CH_3")
 single()
 molecule("Mg")
 single()
 molecule("Br")
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
 molecule("C")
 branch({
  single(angle: 4)
  molecule("CH_3")
 })
 branch({
  single(angle:3.5)
  molecule("H")
 })
 branch({
  single(angle: 2)
  molecule("CH_3")
 })
 single(angle: 4.5)
 molecule("OMgBr")
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
 molecule("C")
 branch({
  single(angle:3.5)
  molecule("H")
 })
 branch({
  single(angle: 2)
  molecule("C")
  branch({
    single(angle: 2)
    molecule("H")
  })
  branch({
    single(angle: 2.5)
    molecule("H")
  })
  branch({
    single(angle: 1.5)
    molecule("H")
  })
 })
 double(angle: 4.5)
 molecule("O")
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
 molecule("C")
 branch({
  single(angle:1)
  molecule("OH")
 })
 branch({
  single(angle: 2)
  molecule("CH_3")
 })
 branch({
  single(angle:3)
  molecule("H")
 })
 single(angle: 4)
 molecule("CH_2")
 branch({
  single(angle:3.5)
  molecule("H")
 })
 branch({
  double(angle:4.5)
  molecule("O")
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
 molecule("R") 
 single(angle: 4)
 molecule("C")
 branch({
  single(angle:4.5)
  molecule("OH")
 })
 branch({
  double(angle:3.5)
  molecule("O")
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
 molecule("Ar") 
 single(angle: 4)
 molecule("C")
 branch({
  single(angle:4.5)
  molecule("OH")
 })
 branch({
  double(angle:3.5)
  molecule("O")
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
 molecule("CH_3") 
 single(angle: 4)
 molecule("C")
 branch({
  single(angle:4.5)
  molecule("OH")
 })
 branch({
  double(angle:3.5)
  molecule("O")
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
  molecule("C")
  branch({
    single(angle:4.5)
    molecule("OH")
  })
 branch({
    double(angle:3.5)
    molecule("O")
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
 molecule("COOH") 
 single(angle: 3, from: 0)
 molecule("COOH") 
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
 molecule("COOH") 
 single(angle: 3, from: 0)
 molecule("CH_2")
 single(angle: 3, from: 0)
 molecule("COOH")  
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
 molecule("CH_3") 
 single()
 molecule("CH_2")
 single()
 molecule("CN")  
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
 molecule("CH_3") 
 single()
 molecule("CH_2")
 single()
 molecule("COOH")  
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
 molecule("R") 
 single(angle: 4)
 molecule("C")
 branch({
  single(angle:3.5)
  molecule("OR'")
 })
 branch({
  double(angle:4.5)
  molecule("O")
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
 molecule("R") 
 single(angle: 4)
 molecule("C")
 branch({
  single(angle:3.5)
  molecule("OH")
 })
 branch({
  double(angle:4.5)
  molecule("O")
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
 molecule("HO") 
 single()
 molecule("R'")   
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
 molecule("CH_3") 
 single()
 molecule("CO")
 single()
 molecule("O")
 single()
 molecule("CH_2")
 single()
 molecule("CH_3") 
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
  molecule("C")
  branch({
    single(angle:4.5)
    molecule("O")
    single()
    molecule("CH_3")
  })
 branch({
    double(angle:3.5)
    molecule("O")
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
 molecule("CH_3") 
 single()
 molecule("C")
 branch({
 single()
 molecule("CH_3") 
 })
 branch({
 single(angle: 3)
 molecule("CH_3") 
 }) 
 single(angle: 1)
 molecule("OMgI")
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
 molecule("CH_3") 
 single()
 molecule("C")
 branch({
 single()
 molecule("CH_3") 
 })
 branch({
 single(angle: 3)
 molecule("CH_3") 
 }) 
 single(angle: 1)
 molecule("OH")
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
 molecule("C")
 branch({
 single()
 molecule("NH_2") 
 })
 branch({
 single(angle: 2)
  })   
 double(angle: .5)
 molecule("O")
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
  molecule("NH_2")
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
  molecule("NH")
  branch({
    single(angle: 4)
    molecule("CH_3")
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
 molecule("CH_3") 
 single()
 molecule("NH")
 single()
 molecule("COCH_3")
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
  molecule("O")
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
  molecule("S")
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
  molecule("N")
  branch({
    single()
    molecule("H")
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
  molecule("N")  
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
 molecule($#hide[]_1C$) 
 branch({
  single(angle: 1.5, from: 1)
  molecule("H")
 })
 branch({
  double(angle: 4.5, from: 1)
  molecule("O")
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_2C^(\*)$)
 branch({
  single(angle: 2)
  molecule("H")
 })
 branch({
  single(angle: 4)
  molecule("OH")
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_3C^(\*)$)
 branch({
  single(angle: 2)
  molecule("H")
 })
 branch({
  single(angle: 4)
  molecule("OH")
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_4C^(\*)$)
 branch({
  single(angle: 2)
  molecule("H")
 })
 branch({
  single(angle: 4)
  molecule("OH")
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_5C^(\*)$)
 branch({
  single(angle: 2)
  molecule("H")
 })
 branch({
  single(angle: 4)
  fragment("OH", colors: (main_tecnologia))
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_6C^(\*)$)
 branch({
  single(angle: 2)
  molecule("H")
 })
 branch({
  single(angle: 4)
  molecule("OH")
 })
 single(angle: 3)
 molecule("H")
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
 molecule($#hide[]_1 C H_(2) O H$) 
 single(angle: 3, from: 1, to: 1)
 molecule($#hide[]_2C^(\*)$) 
 branch({
  double(angle: 4)
  molecule("O")
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_3C^(\*)$)
 branch({
  single(angle: 2)
  molecule("HO")
 })
 branch({
  single(angle: 4)
  molecule("H")
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_4C^(\*)$)
 branch({
  single(angle: 2)
  molecule("H")
 })
 branch({
  single(angle: 4)
  molecule("OH")
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_5C^(\*)$)
 branch({
  single(angle: 2)
  molecule("H")
 })
 branch({
  single(angle: 4)
  fragment("OH", colors: (main_tecnologia))
 })
 single(angle: 3, to: 1)
 molecule($#hide[]_6C^(\*)$)
 branch({
  single(angle: 2)
  molecule("H")
 })
 branch({
  single(angle: 4)
  molecule("OH")
 })
 single(angle: 3)
 molecule("H")
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
 molecule($#hide[]_1C$) 
 branch({
  single(angle: 4.5, from: 1)
  molecule("H")
 })
 branch({
  double(angle: 3.5, from: 1)
  molecule("O")
 })
 cram-filled-left(angle: 2.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 molecule($#hide[]_2C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)  
 })
 single(angle: 2, from: 1, to: 1, stroke: .3em, atom-sep: 5em)
 molecule($#hide[]_3C$)
 branch({
  single(angle: 1)
   })
 branch({
  single(angle: 3)  
 })
 cram-filled-right(angle: 1.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 molecule($#hide[]_4C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)
   })
 single(angle: 4.5, from: 1, to: 1, atom-sep: 5em)
 molecule($#hide[]_5C$)
 branch({
  single(angle: 1)
  })
 branch({
  single(angle: 3)  
 })
 branch({
  single(angle: 4, atom-sep: 5em)
  molecule("OH")
 })
 single(angle: 1, from: 1, to: 1, atom-sep: 2.5em)
 molecule($#hide[]_6C H_2 O H$)
 
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
 molecule($#hide[]_1C$) 
 branch({
  single(angle: 1, from: 1)
  molecule("H")
 })
 branch({
  single(angle: 3, from: 1)
  molecule("OH")
 })
 cram-filled-left(angle: 2.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 molecule($#hide[]_2C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)  
 })
 single(angle: 2, from: 1, to: 1, stroke: .3em, atom-sep: 5em)
 molecule($#hide[]_3C$)
 branch({
  single(angle: 1)
   })
 branch({
  single(angle: 3)  
 })
 cram-filled-right(angle: 1.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 molecule($#hide[]_4C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)
   })
 single(angle: 4.5, from: 1, to: 1, atom-sep: 5em)
 molecule($#hide[]_5C$)
 branch({
  single(angle: 1)
  })
 branch({
  single(angle: 3)  
 })
 branch({
  single(angle: 4, atom-sep: 5em)
  molecule("O")
  single(angle: 3.5, atom-sep: 4.5em)
 })
 single(angle: 1, from: 1, to: 1, atom-sep: 2.5em)
 molecule($#hide[]_6C H_2 O H$)
 
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
 molecule($#hide[]_1C$) 
 branch({
  single(angle: 3, from: 1)
  molecule("H")
 })
 branch({
  single(angle: 1, from: 1)
  molecule("OH")
 })
 cram-filled-left(angle: 2.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 molecule($#hide[]_2C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)  
 })
 single(angle: 2, from: 1, to: 1, stroke: .3em, atom-sep: 5em)
 molecule($#hide[]_3C$)
 branch({
  single(angle: 1)
   })
 branch({
  single(angle: 3)  
 })
 cram-filled-right(angle: 1.5, from: 1, to: 1, base-length: .3em, atom-sep: 5em)
 molecule($#hide[]_4C$)
 branch({
  single(angle: 1)  
 })
 branch({
  single(angle: 3)
   })
 single(angle: 4.5, from: 1, to: 1, atom-sep: 5em)
 molecule($#hide[]_5C$)
 branch({
  single(angle: 1)
  })
 branch({
  single(angle: 3)  
 })
 branch({
  single(angle: 4, atom-sep: 5em)
  molecule("O")
  single(angle: 3.5, atom-sep: 4.5em)
 })
 single(angle: 1, from: 1, to: 1, atom-sep: 2.5em)
 molecule($#hide[]_6C H_2 O H$)
 
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
  molecule("CH_2OH")
  single(angle: 3, from: 0, to: 0)
  molecule("CH_2OH")
  single(angle: 3, from: 0, to: 0)
  molecule("CH_2OH")
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
  molecule("C")
  branch({
    double(angle: 1)
    molecule("O")
  })
  branch({
    single(angle: 2)
    molecule("HO")
  })
  single(angle: 4, from: 0, to: 0)
  molecule("R")
  },
)

#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2.5em),
  {
    //import cetz.draw: * 
  molecule("C")
  branch({
    double(angle: 1)
    molecule("O")
  })
  branch({
    single(angle: 2)
    molecule("HO")
  })
  single(angle: 4, from: 0, to: 0)
  molecule("R'")
  },
)



#skeletize(
  config: (angle-increment: 90deg, atom-sep: 2.5em),
  {
    //import cetz.draw: * 
  molecule("C")
  branch({
    double(angle: 1)
    molecule("O")
  })
  branch({
    single(angle: 2)
    molecule("HO")
  })
  single(angle: 4, from: 0, to: 0)
  molecule("R''")
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
  molecule("CH_2")
  branch({
    single(angle: 4)
    molecule("O")
    single()
    molecule("C")
    branch({
      double(angle: 1)
      molecule("O")
    })
    single()
    molecule("R")
  })
  single(angle: 3, from: 0, to: 0, atom-sep: 4em)
  molecule("CH")
  branch({
    single(angle: 4)
    molecule("O")
    single()
    molecule("C")
    branch({
      double(angle: 1)
      molecule("O")
    })
    single()
    molecule("R'")
  })
  single(angle: 3, from: 0, to: 0, atom-sep: 4em)
  molecule("CH_2")
  branch({
    single(angle: 4)
    molecule("O")
    single()
    molecule("C")
    branch({
      double(angle: 1)
      molecule("O")
    })
    single()
    molecule("R''")
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
  molecule("H")
  single()
  molecule("N")
  branch({
  single(angle: 3)
  molecule("H")
  }) 
  single()
  molecule("C")
  branch({
  single(angle: 3)
  molecule("H")
  }) 
  branch({
  single(angle: 1)
  molecule("R")
  }) 
  single()
  molecule("C")
  branch({
  double(angle: 3)
  molecule("O")
  }) 
  single()
  molecule("OH")
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
  molecule("H")
  single()
  molecule("N")
  branch({
  single(angle: 3)
  molecule("H")
  }) 
  single()
  molecule("C")
  branch({
  single(angle: 3)
  molecule("H")
  }) 
  branch({
  single(angle: 1)
  molecule("R'")
  }) 
  single()
  molecule("C")
  branch({
  double(angle: 3)
  molecule("O")
  }) 
  single()
  molecule("OH")
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
  molecule("H")
  single()
  molecule("N")
  branch({
  single(angle: 3)
  molecule("H")
  }) 
  single()
  molecule("C")
  branch({
  single(angle: 3)
  molecule("H")
  }) 
  branch({
  single(angle: 1)
  molecule("R")
  }) 
  single()
  fragment("C", colors: (main_tecnologia))
  branch({
  double(angle: 3, stroke: (main_tecnologia))
  fragment("O", colors: (main_tecnologia))
  }) 
  single(stroke: (main_tecnologia))  
  fragment("N", colors: (main_tecnologia))
  branch({
  single(angle: 3, stroke: (main_tecnologia))
  fragment("H", colors: (main_tecnologia))
  }) 
  single()
  molecule("C")
  branch({
  single(angle: 3)
  molecule("H")
  }) 
  branch({
  single(angle: 1)
  molecule("R'")
  }) 
  single()
  molecule("C")
  branch({
  double(angle: 3)
  molecule("O")
  }) 
  single()
  molecule("OH")
  },
)
$
}

#legame_peptidico 