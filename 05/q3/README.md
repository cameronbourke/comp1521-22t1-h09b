Q3
=======================================

> Poll: How do we feel about bit operators?

### Bits, bits, and only bits

Remember! When we use bitwise operations,
we treat everything as an array of bits.

In other words, bitwise operations ignore the types!

An `int` is an array of 32 bits.

A `short` looks like: 0b 0010 0001 0000 0001

A `double` is an array of 64 bits.

```c
char bits_str[9] = { '0', '0', '1', '0', '1', '1', '1', '0', '\0' }
uint8_t bits = 0xAE; // 0b10101110
```

Note, `bits_str` and `bits` store the same information.
However, `bits` is able to represent it with only
a fraction of the number of bytes (9 vs 1).

### Bits vs types

```c
uint8_t unsigned_bits = 0x89; // 0b10001001
int8_t signed_bits = unsigned_bits;
char char_bits = unsigned_bits;

printf("%hhu\n", unsigned_bits); // 137
printf("%hhd\n", char_bits);		 // -119
printf("%hhd\n", signed_bits);	 // -119

// Fun fact! `char` is actually short for `signed char` 😮

printf("%hhu\n", unsigned_bits); // 137
printf("%hhu\n", char_bits);		 // 137
printf("%hhu\n", signed_bits);	 // 137

// Yes! `printf()` will perform a type cast.
```

Now, assume that we have the following `8-bit`
variables defined and initialised.

```c
uint8_t a = 0x55, b = 0xAA;
```

Quick review! Let's take a look at the [bitwise slides](https://cgi.cse.unsw.edu.au/~cs1521/22T1/flask_tutors.cgi/topic/bitwise_operations/slides)

g. a & (b << 1)

#TODO

Hey! That expression `b << 1` looks a particular
arithmetic operation. But, which one?

> Go to `q4/README.md`
