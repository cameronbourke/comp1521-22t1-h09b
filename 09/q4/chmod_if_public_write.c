#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

void chmod_if_needed(char* pathname);

int main(int argc, char* argv[]) {
	for (int arg = 1; arg < argc; arg++) {
		chmod_if_needed(argv[arg]);
	}
	return 0;
}

void chmod_if_needed(char* pathname) {
	struct stat s;
	// TODO
}
