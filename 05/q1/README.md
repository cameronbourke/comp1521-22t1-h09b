Q1
=======================================

When should the types in `stdint.h` be used?

```c
#include <stdint.h>
						 // range of values for type
						 //             minimum               maximum
int8_t   i1; //                 -128                  127
uint8_t  i2; //                    0                  255
int16_t  i3; //               -32768                32767
uint16_t i4; //                    0                65535
int32_t  i5; //          -2147483648           2147483647
uint32_t i6; //                    0           4294967295
int64_t  i7; // -9223372036854775808  9223372036854775807
uint64_t i8; //                    0 18446744073709551615
```

Demonstate `./integer_types.c`

```bash
$ dcc integer_types.c -m32 -o integer_types_m32
$ dcc integer_types.c -m64 -o integer_types_m64
```
