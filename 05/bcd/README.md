BCD
=======================================================

How many digits are in the number 132?

Too easy! Three. Yes, but what about now?

0b10000100

Oh.

...


Positional notation is:
	- compact
	- efficient for arithmetic ops
	- terribly bad for finding decimal digits

### What is BCD?

BCD to the rescue!
It has the opposite properties to positional notation.
Life is about tradeoffs I suppose.

### Unpacked BCD

8 bits per BCD (4 bits are wasted)

        0x0102 == 0b 0000 0001 0000 0010
                     |-------| |-------|
                         1         2

        0x0402 == 0b 0000 0100 0000 0010
                     |-------| |-------|
                         4         2

byte: 0 -> 255
BCD: 0 -> 9

258  == 0x0102 == 0b 0000 0001 0000 0010 -> 12

1026 == 0x0402 == 0b 0000 0100 0000 0010 -> 42

### Packed BCD

4 bits per BCD (0 bits are wasted)

        0x12 == 0b 0001 0010
                   |--| |--|
                    1    2

        0x42 == 0b 0100 0010
                   |--| |--|
                    4    2
