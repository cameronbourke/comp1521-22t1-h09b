#include <stdio.h>
#include <stdlib.h>

#define MAX_LINE_LEN 1024

int main(int argc, char* argv[]) {

	if (argc <= 1) {
		printf("Usage: %s <filename>\n", argv[0]);
		return EXIT_FAILURE;
	}

	FILE* f = fopen(argv[1], "r");
	if (f == NULL) {
		perror(argv[1]);
		return EXIT_FAILURE;
	}

	char buffer[MAX_LINE_LEN];
	while (fgets(buffer, MAX_LINE_LEN, f)) {
		fprintf(stdout, "%s", buffer);
		// alternatives:
		// 	fputs(stdout, buffer);
		// 	printf("%s", buffer);
		// 	putchar in a loop
	}

	fclose(f);
	return EXIT_SUCCESS;
}
