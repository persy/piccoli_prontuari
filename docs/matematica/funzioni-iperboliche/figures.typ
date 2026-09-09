#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *

#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot


// Settore circolare AOP sulla circonferenza goniometrica
#let settore_circolare = [#figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.85pt), overshoot: 0.5))
      
      plot.plot(
        size: (2.4 * 2, 1.4 * 2),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.2, x-max: 1.2,
        y-min: -0.2, y-max: 1.2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,

        {

          // Circonferenza
          plot.add(
            domain: (0, 2 * calc.pi),
            style: (stroke: 1pt + accent.mat.lighten(50%)),
            t => (calc.cos(t), calc.sin(t))
          )       

          plot.annotate({
            circle((calc.cos(calc.pi/3), calc.sin(calc.pi/3)), radius: 1pt, fill: accent.mat, stroke: none)
            content((0.38, 0.8), [$P = (cos x, sin x)$], anchor: ("west"), padding: -15pt)
            content((0.9, 0.55), [$x$], anchor: ("west"), padding: 0pt)
            
            arc(
              (0, 0),
              start: 0deg,
              stop: 60deg,
              radius: 1,
              mode: "PIE",
              fill: accent.mat.transparentize(90%),
              anchor: "origin",
              stroke: 0.75pt + accent.mat,
            )
            })
          
        }
      )
    }),
    caption: []
  ) <settore_circolare>]

// Settore iperbolico AOP sul ramo destro dell'iperbole X^2 - Y^2 = 1
#let settore_iperbolico = [#figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: none, 
        x-min: -2, x-max: 2,
        y-min: -2, y-max: 2,
        x-label: [$x$],        
        y-label: [$y$],    
        x-grid: false,   
        y-grid: false, 
        {
          // Parametro di rotazione (0 gradi)
          let angle = 0deg
          let cos_a = calc.cos(angle)
          let sin_a = calc.sin(angle)
          
          let a = 1
          let b = 1

          // Ramo destro
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat),
            t => {
              let x_base = a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos_a - y_base * sin_a,
                x_base * sin_a + y_base * cos_a
              )
            }
          )

          // Ramo sinistro
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat),
            t => {
              let x_base = -a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos_a - y_base * sin_a,
                x_base * sin_a + y_base * cos_a
              )
            }
          )

          plot.add-fill-between(
            domain: (0, 1.5),
            style: (stroke: (thickness: 0pt, paint: accent.mat.transparentize(85%)), fill: accent.mat.transparentize(85%)),
            t => {
              let x_base = a * calc.cosh(t)
              let y_base = b * calc.sinh(t)
              (
                x_base * cos_a - y_base * sin_a,
                x_base * sin_a + y_base * cos_a
              )
            },
            x => calc.tanh(1) * x          
          )

          plot.annotate({
            
            // Vertici reali V1 e V2
            let V1 = (-a * cos_a, -a * sin_a)
            let V2 = (a * cos_a, a * sin_a)
            circle(V1, radius: 0.5pt, fill: accent.mat, stroke: accent.mat)
            circle(V2, radius: 0.5pt, fill: accent.mat, stroke: accent.mat)
            content(V2, [$A$], anchor: "south-west", padding: 2pt)
            
            circle((calc.cosh(1), calc.sinh(1)), radius: 0.5pt, fill: accent.mat, stroke: accent.mat)
            content((1.1, 1.15), [$P = (cosh x, sinh x)$], anchor: "west", padding: 1pt)

            line((0, 0), (calc.cosh(1), calc.sinh(1)), stroke: accent.mat)

            // Asintoti
            let as1_cos = calc.cos(45deg + angle)
            let as1_sin = calc.sin(45deg + angle)
            line((-2.5 * as1_cos, -2.5 * as1_sin), (2.5 * as1_cos, 2.5 * as1_sin), stroke: (paint: gray, dash: "dotted"))
            
            let as2_cos = calc.cos(-45deg + angle)
            let as2_sin = calc.sin(-45deg + angle)
            line((-2.5 * as2_cos, -2.5 * as2_sin), (2.5 * as2_cos, 2.5 * as2_sin), stroke: (paint: gray, dash: "dotted"))

            

          })
        }
      )
    }),
    caption: [],
  )  <settore_iperbolico>]


#let grafico_cosh = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2, x-max: 2,
        y-min: -1, y-max: 3,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat),
            t => calc.cosh(t),
            samples: 200
          )          

          
        }
      )
    }),
    caption: [],
  ) <grafico_cosh>
]

#let grafico_sinh = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2, x-max: 2,
        y-min: -2, y-max: 2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          
          plot.add(
            domain: (-2, 2),
            style: (stroke: 1pt + accent.mat),
            t => calc.sinh(t),
            samples: 200
          )          

          
        }
      )
    }),
    caption: [],
  ) <grafico_sinh>
]

// Grafico di tanh(x)
#let grafico_tanh = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (8, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -4, x-max: 4,
        y-min: -2, y-max: 2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          
          plot.add(
            domain: (-4, 4),
            style: (stroke: 1pt + accent.mat),
            t => calc.sinh(t)/calc.cosh(t),
            samples: 200
          ) 

          plot.add(
            domain: (-4, 4),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => 1,
            samples: 200
          )

          plot.add(
            domain: (-4, 4),
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            x => -1,
            samples: 200
          )

         
        }
      )
    }),
    caption: [],
  ) <grafico_tanh>
]

#let grafici_funzioni_iperboliche = [
#align(center)[
  #grid(columns: 2, column-gutter: 3.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_cosh][#grafico_sinh]
]]

//!
#let grafico_inversa_cosh = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: 0, x-max: 4,
        y-min: -1, y-max: 3,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          
          plot.add(
  domain: (1, 2 * calc.pi),
  style: (stroke: 1pt + accent.mat),
  x => calc.ln(x + calc.sqrt(calc.pow(x, 2) - 1)),
  samples: 200
)         

          
        }
      )
    }),
    caption: [],
  ) <grafico_inversa_cosh>
]

#let grafico_inversa_sinh = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (4, 4),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -2, x-max: 2,
        y-min: -2, y-max: 2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          
          plot.add(
  domain: (-2 * calc.pi, 2 * calc.pi),
  style: (stroke: 1pt + accent.mat),
  x => calc.ln(x + calc.sqrt(calc.pow(x, 2) + 1)),
  samples: 200
)         

          
        }
      )
    }),
    caption: [],
  ) <grafico_inversa_sinh>
]

// Grafico di tanh(x)
#let grafico_inversa_tanh = [
  #figure(
    cetz.canvas({
      import cetz.draw: *

      set-style(axes: (stroke: (thickness: 0.75pt), overshoot: 0.25))
      
      plot.plot(
        size: (3 * 1.5, 4 * 1.5),
        axis-style: "school-book",
        x-tick-step: 1,      
        y-tick-step: 1,      
        x-min: -1.5, x-max: 1.5,
        y-min: -2, y-max: 2,
        x-label: [],        
        y-label: [],    
        x-grid: none,   
        y-grid: none,
        {
          
          plot.add(
  domain: (-0.99, 0.99),
  style: (stroke: 1pt + accent.mat),
  x => 0.5 * calc.ln((1 + x) / (1 - x)),
  samples: 200
)

          plot.add-vline(            
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            1
          )

          plot.add-vline(            
            style: (stroke: (thickness: 1pt, paint: accent.mat, dash: "dotted")),
            -1
          )

         
        }
      )
    }),
    caption: [],
  ) <grafico_inversa_tanh>
]

#let grafici_funzioni_iperboliche_inverse = [
#align(center)[
  #grid(columns: 2, column-gutter: 3.5em, row-gutter: 0.5em, align: center + bottom)[#grafico_inversa_cosh][#grafico_inversa_sinh]
]]