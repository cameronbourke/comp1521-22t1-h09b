Q4
=======================================

This program uses a for loop to print each element in the array.

[ ] Rewrite this program using a recursive function.

```c
#include <stdio.h>

int main(void)
{
    int nums[] = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3};
    for (int i = 0; i < 10; i++) {
        printf("%d\n", nums[i]);
    }
    return 0;
}
```

[ ] View `./print_array_itr.c`

[ ] Attempt recursive impl at `./print_array_rec.c`