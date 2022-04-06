#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>

int main(int argc, char* argv[]) {
	// $ dd if=/dev/zero of=exactly_10k_bytes.txt bs=10000 count=1
	int fd = open("./exactly_10k_bytes.txt", O_RDONLY);
	if (fd < 0) {
		perror(argv[1]);
		return EXIT_FAILURE;
	}

	// What will be the file position after each of these calls to lseek()?
	
	// Also, why not use the debugger while we are at it!

	// a. 
	off_t offset = lseek(fd, 0, SEEK_END);

	// b.
	offset = lseek(fd, -1000, SEEK_CUR);

	// c.
	offset = lseek(fd, 0, SEEK_SET);

	// d.
	offset = lseek(fd, -100, SEEK_SET);

	// e.
	offset = lseek(fd, 1000, SEEK_SET);

	// f.
	offset = lseek(fd, 1000, SEEK_CUR);

	printf("offset: %ld\n", offset);

	return EXIT_SUCCESS;
}
