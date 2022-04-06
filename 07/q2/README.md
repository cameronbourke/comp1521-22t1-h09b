Q2
==========================================

❓ Why is it called _twos complement_?

The idea of twos complement predates computers! 💻

Consider this. What is 15 - 11?

15 - 11 = 4. Easy!

But what if you had to use **addition**? 🤔

Subtraction with complements to the rescue!

Umm. What is a complement though?

If we are in base 10, the 10s complement of `x` is defined as:

`10^n - x`, where `n` is the number of digits.

In our example, we had `n = 2`. So the 10s complement of 11 is:

10^2 - 11 = 89

Now if we add that to 15, we have:

15 + 89 = 104

Drop the most significant digit, and wuolah!

🎉 04 🎉

But! It gets better.

Working out 10^2 - 11 (aka the 10s complement)
is tiresome, but there is a faster way!

We can write 10^2 as 99 + 1, so 10^2 - 11 becomes:

(99 + 1) - 11 = (99 - 11) + 1

This is easy now! Since no burrowing is required
using the usual method.

		99
	- 11
	----
    88

We can't forget to add back the 1, giving us 89.

Ar! So that's why we add the one at the end 😎

Checkout [0612 TV w/ NERDfirst](https://youtu.be/0SUO0eI22MU?t=310) for another example.

Twos complement is nothing special, it is the exact
same process but in base 2, not 10.

Let's try find the twos complement for: 0b01101

The twos complement, like the 10s complement, involves
subtracting each bit (binary digit) from 1 because

	[2^5]								 [(2^5 - 1) + 1]
	0b100000 - 0b01101 = (0b11111 + 0b1) - 0b01101 
										 = (0b11111 - 0b01101) + 0b1
	That is why we flip the bits! 😮
										 = (0b10010) + 0b1
	Last step is to add back 1.
										 = 0b10011

🥳 Fun Fact

10s complement was used by a mechanical calculator
that was built in the 1950s called a [Curta Calculator](https://www.youtube.com/watch?v=ZDn_DDsBWws).

---

Assume that the following hexadecimal values are 16-bit twos-complement.
Convert each to the corresponding decimal value.

**Positive Example** 

> When the number is feeling glass half full.

	0x0444 = 0b0000 0100 0100 0100 = 1092

The steps are:

Is the most sig bit set?

	If NO, convert to decimal
		Go to spreadsheet

	If YES
		i)   find ones complement (aka flip the bits)
		ii)  add one
		iii) convert to decimal
		iv)  add the negative sign

```c
printf("%d\n", (int16_t)0x0444);
```

**Negative Example**

> When the number is feeling glass half empty.

	0x8000 = 0b1000 0000 0000 0000

The steps are:

Is the most sig bit set?

	If NO, convert to decimal
		Go to spreadsheet

	If YES
		i)   find ones complement (aka flip the bits)

			   0b1000 0000 0000 0000
			   0b0111 1111 1111 1111
				
		ii)  add one

					 1111	1...			  11
			   0b0111 1111 1111 1111
			+  										 1
				----------------------
					 1000 0000 0000	0000 


		iii) convert to decimal

					 1000 0000 0000	0000 = 32768

		iv)  add the negative sign

					-32768

```c
printf("%d\n", (int16_t)0x8000);
```
