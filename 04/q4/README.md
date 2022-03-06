Q4
==========================================

Consider the following operation that multiplies
all of the elements in a matrix by a constant factor:

> Look at tut question 4

This operation could be rendered in C99-standard C as:

```c
void change (
	int nrows,
	int ncols,
	int M[nrows][ncols],
	int factor
) {
    for (int row = 0; row < nrows; row++) {
        for (int col = 0; col < ncols; col++) {
            M[row][col] = factor * M[row][col];
        }
    }
}
```

Write a function in MIPS assembly equivalent to the above C code.
Assume that the arguments are placed in the $a? registers in the
order given in the function definition.
e.g., the function could be called as follows in MIPS:

```asm
		li			$a0, 3
		li			$a1, 4
		li			$a2, M
		li			$a3, 2
		jal			change
```

Where `M` is defined as:

```asm
    	.data
M:  	.word 1, 2, 3, 4
    	.word 3, 4, 5, 6
    	.word 5, 6, 7, 8
```

> Go to `./change.s`
