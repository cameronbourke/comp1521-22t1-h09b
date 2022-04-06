Q4
==========================================

### Floating Points

This kind of [Floating Points?](https://www.youtube.com/watch?v=WezWspsKgpM)

No, if only...

> Poll: Have we watched the lecture on floating points?

Integers vs Floating Point 🥊

[Floating point spacing along the real line](https://www.researchgate.net/figure/An-illustration-of-how-the-representable-floating-point-numbers-are-spaced-with_fig1_331274253)

Takeaway: floating point representation is only a _representation_.

### IEEE => Decimal

What decimal numbers do the following single-precision
`IEEE 754-encoded` bit-strings represent?

Here _single-precision_ refers to `32 bits`.
Whereas _double-precision_ is `64 bits`.

```c
	// single-precision
	printf("sizeof(float): %zu\n", sizeof(float));   // 4
	// double-precision
	printf("sizeof(double): %zu\n", sizeof(double)); // 8
```

```
	31  30 -- 23 22 ------------------ 0
	s   eeeeeeee fffffffffffffffffffffff

	sign = 0bs
	exp  = 0beeeeeeee
  frac = 0bfffffffffffffffffffffff

	decimal = -1^sign x (1 + frac) x 2^(exp - 127)

```

Note, _frac_ can also be called _mantissa_.

> Why use a _biased_ exponent? Why not 2s complement?

It has to do with the following question.

In twos complement, which is smaller? `0b10101110` or `0b11101100`

a. `0 00000000 00000000000000000000000`

+0

b. `1 00000000 00000000000000000000000`

-0

- What jumps out about `a` and `b`?

c. `0 01111111 10000000000000000000000`

- Is `c` positive or negative?

sign = 0b0					= 0
exp  = 0b01111111	  = 127
frac = 0b10000....  = 0.5

	-1^0 x (1 + 0.5) x 2^(127 - 127)
= 1 x (1.5) x 1
= 1.5 x 1
= 1.5




d. `0 01111110 00000000000000000000000`

- Is `d` less than or greater than 1?

e. `0 01111110 11111111111111111111111`

Too much arithmetic for Thursday morning.
Let's try and use [float-toy](https://evanw.github.io/float-toy/)
or [this visualiser](https://bartaz.github.io/ieee754-visualization/) by bartoszopka

f. `0 10000000 01100000000000000000000`

sign = 0b         = 0
exp  = 0b10000000 = 128
frac = 0b0110.... = 0.375

		-1^0 x (1 + 0.375) x 2^(128 - 127)
	= 1 x (1.375) x 2^1
	= 1.375 x 2

decimal = -1^sign x (1 + frac) x 2^(exp - 127)

g. `0 10010100 10000000000000000000000`

> Have a crack at it! 4 mins ⌛

h. `0 01101110 10100000101000001010000`

Okay, but what about these so called _special_
values that are lingering around in the lab?

Aka `NaN`, `+Infinity`, `-Infinity`, `Zero`.

Let's just ask [this visualiser](/ieee754-visualization/) by bartoszopka

🚿 Floating Point Trivia

> Trivia: What percentage of floating points
					are in the range `[-1, 1]`?

> Trivia: How many (F)loating (P)oint (O)perations (P)er (S)econd
					can Fugaku, one of the best supercomputers in the word,
					achieve?

### Decimal => IEEE

This one is a little more finicky.
Be prepared for mistakes! 👀

Convert the following decimal numbers into
IEEE 754-encoded bit-strings:

a. `2.5`

> Have a crack at it! 4 mins ⌛

b. `0.375`

c. `27.5`

27 = 16 + 8 + 3
	 = 2^4 + 2^3 + 2^1 + 2^0
	 = 0b11011

.5 = 0b0.1 = 2^-1

1. decimal => binary

27.5 = 0b11011.1

2. normalisation

	0b11011.1 x 2^0
= 0b1101.11 x 2^1
= 0b110.111 x 2^2
= 0b11.0111 x 2^3
= 0b1.10111 x 2^4

3. components

sign = 0						 =  0b0
exp  = 131 - 127 = 4 =  0b10000011
frac = 									0b101110....

s eeeeeeee fffffffffffffffffffffff
0 10000011 10111000000000000000000







d. `100.0`

🥙 Food for thought.

- What is the largest _integer_ that single
	precision floating point can represent?
- Why does `0.1` + `0.2` not equal exactly `3.0`?

Love floating point numbers? ❤❤❤❤❤

Check out denormal (aka subnormal) numbers!

0612 TV w/ NERDfirst has a [great explainer here](https://www.youtube.com/watch?v=b2FgF2sUoS8)

A fun challenge is to think of the smallest number
that can be represented with single precision
floating point?
