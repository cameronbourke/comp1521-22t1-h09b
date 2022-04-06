Bits & Bytes
=======================================

### Bits
How do we check if the `ith` bit is set or not?

```c
uint16_t value = 0xAA; // 0b10101010

is_bit_set(5, value) // true or false (1 or 0)

bool is_bit_set(int i, uint16_t value) {
	uint16_t res = value & (1u << i);
	return (res != 0);
}

set_bit(2, value); // return an uint16_t

uint16_t set_bit(int i, uint16_t value) {
	return (value | (1u << i));
}
```

### Bytes
How do we get the `ith` byte from an `int`?

```c
int value = 0x12345678;

ith_byte(0, value); // 0x78
ith_byte(1, value); // 0x56
ith_byte(2, value); // 0x34
ith_byte(3, value); // 0x12

uint8_t ith_byte(int i, int value) {
	int mask = 0xFF << (8 * i);
	int res = value & mask;
	return (res >> (8 * i));
}
```

> Go to `bcd/README.md`
