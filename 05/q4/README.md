Q4
=======================================

Consider a scenario where we have the following flags
controlling access to a device.

```c
#define READING   0x01 // 0b 0000 0001
#define WRITING   0x02 // 0b 0000 0010
#define AS_BYTES  0x04 // 0b 0000 0100
#define AS_BLOCKS 0x08 // 0b 0000 1000
#define LOCKED    0x10 // 0b 0001 0000
```

The flags are contained in an `8-bit` register, defined as:

```c
unsigned char device;
```

Write `C` expressions (using bitwise operations)
to implement each of the following:

a. mark the device as **locked** for **reading** **bytes**
```c
#define READING   0x01 // 0b 0000 0001
#define WRITING   0x02 // 0b 0000 0010
#define AS_BYTES  0x04 // 0b 0000 0100
#define AS_BLOCKS 0x08 // 0b 0000 1000
#define LOCKED    0x10 // 0b 0001 0000
```
```c
device = ??
```

What is the difference between a `flag` and a `mask`?

b. mark the device as **locked** for **writing** **blocks**.
```c
#define READING   0x01 // 0b 0000 0001
#define WRITING   0x02 // 0b 0000 0010
#define AS_BYTES  0x04 // 0b 0000 0100
#define AS_BLOCKS 0x08 // 0b 0000 1000
#define LOCKED    0x10 // 0b 0001 0000
```
```c
device = ??
```

c. set the device as **locked**,
	 leaving other flags unchanged.
```c
#define READING   0x01 // 0b 0000 0001
#define WRITING   0x02 // 0b 0000 0010
#define AS_BYTES  0x04 // 0b 0000 0100
#define AS_BLOCKS 0x08 // 0b 0000 1000
#define LOCKED    0x10 // 0b 0001 0000
```
```c
device = ??
```

d. **remove** the lock on a device,
	 leaving other flags unchanged.
```c
#define READING   0x01 // 0b 0000 0001
#define WRITING   0x02 // 0b 0000 0010
#define AS_BYTES  0x04 // 0b 0000 0100
#define AS_BLOCKS 0x08 // 0b 0000 1000
#define LOCKED    0x10 // 0b 0001 0000
```
```c
device = ??
```

e. **move** the device from **reading** to **writing**,
	 leaving other flags unchanged.
```c
#define READING   0x01 // 0b 0000 0001
#define WRITING   0x02 // 0b 0000 0010
#define AS_BYTES  0x04 // 0b 0000 0100
#define AS_BLOCKS 0x08 // 0b 0000 1000
#define LOCKED    0x10 // 0b 0001 0000
```
```c
device = ??
```

f. **swap** the device between **reading** and **writing**,
	 leaving other flags unchanged.

```c
#define READING   0x01 // 0b 0000 0001
#define WRITING   0x02 // 0b 0000 0010
#define AS_BYTES  0x04 // 0b 0000 0100
#define AS_BLOCKS 0x08 // 0b 0000 1000
#define LOCKED    0x10 // 0b 0001 0000
```
```c
// Hint: x ^ 0 = x
device = ??
```

If you like all things bits, you will love [Microprocessors and Interfacing](https://www.handbook.unsw.edu.au/undergraduate/courses/2022/COMP2121?year=2022)

> Go to `bits_and_bytes/README.md`
