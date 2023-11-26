#set page(paper: "a4")

#show heading.where(level: 1): set text(20pt)
#show heading.where(level: 2): set text(12pt)

#align(center)[
  = Typst Playground
]
#align(center)[
  Yoshihiro Tanaka \
  contact\@cordea.jp
]

#show: rest => columns(2, rest)

== Typst

Typst is a new markup-based typesetting system for the sciences. Typst embeds a scripting language, so we can write documents with code #emoji.hands.raised

```
let hello() = {
  return "Hello World!"
}

#hello()
```
