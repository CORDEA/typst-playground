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

Typst is a new markup-based typesetting system for the sciences. @typst Typst embeds a scripting language, so we can write documents with code #emoji.hands.raised

```
let hello() = {
  return "Hello World!"
}

#hello()
```

#block(
  width: 100%,
  fill: luma(240),
  inset: 8pt,
  radius: 8pt,
  align(center)[Hello World!]
)

== Primes

The definition of a prime number is as follows.

- A natural number.
- Greater than 1.
- 1 and itself are the only positive divisors.

For example, the prime numbers from 1 to 100 are as follows.

#let prime(n) = {
  if n < 2 {
    return false
  }
  if n < 4 {
    return true
  }
  if calc.rem(n, 2) == 0 {
    return false
  }
  let i = 2
  while i <= calc.sqrt(n) {
    if calc.rem(n, i) == 0 {
      return false
    }
    i += 1
  }
  return true
}

#let primes() = {
  let i = 0
  let r = ()
  while i <= 100 {
    if prime(i) {
      r.push(i)
    }
    i += 1
  }
  return r
}
#let primes = primes()

#assert.eq(primes.len(), 25)
#primes

#colbreak()

== Emirps

The definition of a emirp number is as follows.

- It becomes another prime number when its digits are reversed.

For example, the emirp numbers from 1 to 100 are as follows.

#let emirps() = {
  let r = ()
  for i in range(10, 100) {
    if prime(i) {
      let reversed = ""
      let s = str(i)
      for j in range(s.len() - 1, -1, step: -1) {
        reversed += str(s.at(j))
      }
      if s == reversed {
        continue
      }
      if prime(int(reversed)) {
        r.push(i)
      }
    }
  }
  return r
}
#let emirps = emirps()

#emirps

== Conclusion

#rotate(5deg)[
  #pad(y: 8pt, "Happy coding!")
]

#lorem(50)

#bibliography(
  "hayagriva.yml",
  full: true,
  title: [== References],
)
