Q7
==========================================

Translate this C program so it uses goto rather than if/else.
Then translate it to MIPS assembler.

```c
#include <stdio.h>

int main(void) {
    for (int x = 24; x < 42; x += 3) {
        printf("%d\n",x);
    }
}
```

Not sure how to tackle a `for` loop? Well, you are in luck
because we can always first convert to a `while` loop.

```c
#include <stdio.h>

int main(void) {
	// TODO
}
```

> Jump back to ../q5/README.md
