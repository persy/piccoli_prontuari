#import "config.typ": *

#let retro(body) = context {
  let accent = accent_color.get()
  let gradient = gradient_color.get()

  show link: set text(accent.darken(50%))
  set page(fill: gradient)
  
  v(5em); body; v(1em); align(center)[ 🐺]
  
}