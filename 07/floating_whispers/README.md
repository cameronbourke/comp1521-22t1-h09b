Floating Whispers
=====================================

> See slides

Dec => Bin

12.75 -> 0b1100.11

12 = 0b1100
.75 = 0b0.11

.75 = 0.5 + 0.25 // 0.5 = 2^-1, 0.25 = 2^-2

0b1100.11 = 0b1.10011 x 2^3

sign = 0
exp  = 130 (- 127 = 3)
frac = 0b.10011

0 10000010 10011000000...

Bin => Dec

0b 0 10000000 01100000000000000000000

sign = 0
exp  = 128 - 127 = 1
frac = 0b1.011

0b1.011 x 2^1 = 0b10.11

0b10.11 in decimal

2.75

Special Patterns

> See [Float Toy](https://evanw.github.io/float-toy/)

> Trivia: What percentage of floating point numbers
  are in the range `[-1, 1]`?

> Why is a `k-basis` representation used for the exponent
  as opposed to twos complement?
