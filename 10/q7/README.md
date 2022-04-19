Q7
==========================================

The following C program attempts to increment a
global variable in two different threads, 5000 times each.

```c
#include <stdio.h>
#include <pthread.h>

int global_total = 0;

void *add_5000_to_counter(void *data) {
    for (int i = 0; i < 5000; i++) {
        // sleep for 1 nanosecond
        nanosleep (&(struct timespec){.tv_nsec = 1}, NULL);
        
        // increment the global total by 1
        global_total++;
    }

    return NULL;
}

int main(void) {
    pthread_t thread1;
    pthread_create(&thread1, NULL, add_5000_to_counter, NULL);

    pthread_t thread2;
    pthread_create(&thread2, NULL, add_5000_to_counter, NULL);

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);

    // if program works correctly, should print 10000
    printf("Final total: %d\n", global_total);
}
```

Since the global starts at 0, one may reasonably assume
the value would total to 10000.

However, when running this program, it often gives differing
values each individual execution:

> Run `$ for i in {0..10}; do ./bin/global_counter; done`

What is the issue here?

😂 https://memegenerator.net/img/instances/85253865.jpg

Look at [Compiler Explorer](https://godbolt.org/)

In what scenario(s) would the global variable `global_total`:
	- equal `5000`?
	- equal `10000`?

Q8
==========================================

How can we use "mutual exclusion" to fix the previous program?

Q9
==========================================

How can we use atomic types to fix the previous program?

> Go to "Final Words" slide

