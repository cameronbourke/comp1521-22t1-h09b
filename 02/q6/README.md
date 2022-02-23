Q6
==========================================

Translate this C program so it uses goto rather than if/else.
Then translate it to MIPS assembler.

```c
#include <stdio.h>

int main(void) {
    int x;
    printf("Enter a number: ");
    scanf("%d", &x);

    if (x > 100 && x < 1000) {
        printf("medium\n");
    } else {
        printf("small/big\n");
    }
}
```

Now consider this alternative version:

```c
#include <stdio.h>

int main(void) {
    int x;
    printf("Enter a number: ");
    scanf("%d", &x);

    char* message = "small/big\n";
    if (x > 100 && x < 1000) {
        message = "medium";
    }

    printf("%s", message);
}
```
