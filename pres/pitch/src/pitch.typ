#import "@preview/diatypst:0.9.3": *

#let accent = blue.darken(60%)

#show: slides.with(
  title: "Net utils",
  subtitle: "Pitch",
  date: "09/21/2026",
  authors: ("Brendan Moore, etc..."),

  ratio: 16/9,
  layout: "medium",
  title-color: accent,
  toc: true,
  count: "dot-section",  // num dots per section
)

// reusable formatting objects

#let mid(body) = {
  v(0.5fr)
  align(center, body)
  v(1fr)
}

#let midlist(body, width: 74%) = {
  v(0.3fr)
  align(center, block(width: width, align(left, body)))
  v(1fr)
}

#let punch(body) = mid(
  block(width: 80%, align(center, text(1.7em, weight: "bold", fill: accent, body)))
)

#let card(body, title: none) = block(
  width: 100%,
  inset: 12pt,
  radius: 6pt,
  fill: accent.lighten(92%),
  stroke: (left: 3pt + accent),
)[
  #if title != none [#text(weight: "bold", fill: accent, title) #linebreak()]
  #body
]

#let two(a, b, gutter: 1.5em) = grid(
  columns: (1fr, 1fr),
  column-gutter: gutter,
  a, b,
)

#let flow(..steps) = {
  let items = steps.pos()
  set text(0.8em)
  grid(
    columns: (1fr,) * items.len(),
    column-gutter: 0.5em,
    align: horizon,
    ..items.map(s => block(
      width: 100%,
      inset: 7pt,
      radius: 4pt,
      fill: accent.lighten(90%),
      stroke: 0.6pt + accent.lighten(40%),
      align(center, strong(s)),
    )),
  )
}

// conent slides

= Who are we

== Idea

#midlist[
]

== Next

#midlist[
] 

== The End

#mid[
  #text(1.6em, weight: "bold", fill: accent)[Thank you]

  #v(1em)

  #text(1em)[Questions, comments, suggestions, and ideas are all welcome.]
]
