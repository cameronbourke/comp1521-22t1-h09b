Q5
=======================================

> Skip to ../q6/README.md for now

Translate this C program so it uses goto rather than if/else.
Then translate it to MIPS assembler.

```c
#include <stdio.h>

int main(void) {
    int x, y;
    printf("Enter a number: ");
    scanf("%d", &x);

    if (x > 46340) {
        printf("square too big for 32 bits\n");
    } else {
        y = x * x;
        printf("%d\n", y);
    }

    return 0;
}
```

While I personally enjoy translating `C` -> `MIPS`,
it's time to let you have a go!

> ⌛ 5 mins

In groups of 3, try implementing `q6` together!

Links:

- Group 1
	https://replit.com/join/ootpwuedoa-cameronbourke1

- Group 2
	https://replit.com/join/ootpwuedoa-cameronbourke1

- Group 3
	https://replit.com/join/bibsqelzhf-cameronbourke1

- Group 4
	https://replit.com/join/bibsqelzhf-cameronbourke1

After the time has elapsed, we'll get started
with the lab, and I'll give feedback to each team!
