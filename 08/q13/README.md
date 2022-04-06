Q14-15
==========================================

For each of the following calls to the `fopen()` library function,
give an `open()` system call that has equivalent semantics
relative to the state of the file.

```c
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(void) {
	char file_path[] = "/usr/bin/cat";

	// See $ man fopen

	// a. 
	fopen(file_path, "r")

	// b.
	fopen(file_path, "a")

	// c.
	fopen(file_path, "w")

	// d.
	fopen(file_path, "r+")

	// e.
	fopen(file_path, "w+")
	
	return 0;
}
```
