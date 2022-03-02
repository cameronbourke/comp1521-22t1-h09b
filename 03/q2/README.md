Q2
==========================================

> See "Byte Ordering" slide.

If the data segment of a particular MIPS program starts
at the address `0x10010000`, then what addresses are the
following labels associated with, and what value
is stored in each 4-byte memory cell?

> Note, tut says `0x10000020`, but let's copy `mipsy`!

```asm
		.data
a:  .word   42
b:  .space  4
c:  .asciiz "abcde"
    # .align  2 <-- ignore this for now!
d:  .byte   1, 2, 3, 4
e:  .word   1, 2, 3, 4
f:  .space  1
```

Well, why not just ask `mipsy`!

Sure, but that would be cheating. Let's do it ourselves
first and let `mipsy` do the double checking!

- [Spreadsheet time!] (https://docs.google.com/spreadsheets/d/1KnmTlxj7GlesMI3jkuFKEoQRxnnubM8_VR5B3IrsKjA)

👷 Can we break it? Yes, we can!

How can we use `.align` to align a word **not**
on a 4 byte boundary?

> Show hint in `./mem_bad.s`

> Discuss in breakout rooms (⌛ 4mins)
