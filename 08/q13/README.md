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
	FILE* fp_a = fopen(file_path, "r")

	int fd_a = open(file_path, O_RDONLY);

	// b.
	FILE* fp_b = fopen(file_path, "a")

	int fd_b = open(file_path, O_WRONLY | O_APPEND | O_CREAT);

	// c.
	fopen(file_path, "w")

	// d.
	fopen(file_path, "r+")

	// e.
	fopen(file_path, "w+")
	
	return 0;
}
```
