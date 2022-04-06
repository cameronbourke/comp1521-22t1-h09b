Q3
==========================================

Give a representation for each of the following
decimal values in `16-bit` twos-complement bit-strings.

**Positive Example**

	1000 = 0b1111101000

If the number is positive, it is no different!
Simply convert from decimal to binary as we
have been doing.

**Negative Example**

This is where things get a little more involved!

Let's say we want to find the twos complement
for the decimal value:

	-100 

	Is -100 > -2^15? Yes!

The steps are:

1. Convert the magnitude to binary

		|-100| = 100

		0b 0000 0000 0110 0100

2. Flip the bits (find the ones complement)

		0b 0000 0000 0110 0100
	  0b 1111 1111 1001 1011

3. Add one (now it's the two complement)

											 11
	  0b 1111 1111 1001 1011
	+ 										 1
		----------------------
								....  1100

	  0b 1111 1111 1001 1100 = -100

---

What is `-100000` in 16-bit twos complement?

> Have a crack at it! 2 mins ⌛
