#include <stdio.h>
#include <stdlib.h>

#define MAX_LINE_LEN 1024

int main(int argc, char* argv[]) {

	if (argc <= 1) {
		printf("Usage: %s <text>\n", argv[0]);
		return EXIT_FAILURE;
	}

	char buffer[MAX_LINE_LEN];
	while (fgets(buffer, MAX_LINE_LEN, stdin)) {
		fprintf(stdout, "%s: %s", argv[1], buffer);
		// alternatives:
		// 	fputs(stdout, argv[1]); fputs(stdout, ": "); fputs(stdout, buffer);
		// 	printf("%s: %s", argv[1], buffer);
		// 	putchar in a loop
	}

	return EXIT_SUCCESS;
}
