Q5
==========================================

The following C program attempts to say `hello` from another thread:

```c
#include <stdio.h>
#include <pthread.h>

void *thread_run(void *data) {
	printf("Hello from thread!\n");
	return NULL;
}

int main(void) {
	pthread_t thread;
	pthread_create(
		&thread,    // the pthread_t handle that will represent this thread
		NULL,       // thread-attributes -- we usually just leave this NULL
		thread_run, // the function that the thread should start executing
		NULL        // data we want to pass to the thread -- this will be
								// given in the `void *data` argument above
	);

	return 0;
}
```

However, when running this program after compiling with `clang`,
the thread doesn't say `hello`.

```bash
clang -pthread program.c -o program
./program
./program
./program
```

Why does our program exhibit such behaviour?

How can we fix it?
