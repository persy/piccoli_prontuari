#import "template.typ": *
#import "config.typ": accent, accent_color

// ==========================================
// CONFIGURAZIONE UNICA DEL LIBRO
// ==========================================

#accent_color.update(accent.bio)
#gradient_color.update(gradient.bio)

// ==========================================

// Copertina
#include "cover.typ"

// Layout del template
#show: template.with(
  title: "Biologia",
)

#pagebreak()

// Capitoli
= Introduzione <senza_numero>
#include "chapter1.typ"

#pagebreak()

// Retro
#include "retro.typ"