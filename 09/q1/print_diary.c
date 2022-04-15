#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <stdint.h>
#include <string.h>

// $ cat $HOME/.diary
/*
	1. Get the value for the env var `$HOME`
	2. Construct a filepath by joining together `$HOME` and `/.diary`.
	3. Open the file `$HOME/.diary`.
	3. Read a byte of `$HOME/.diary`.
	4. Write a byte to `stdout`.
	5. Repeat steps 3-4 until no bytes left.
 */

int main(void) {
	char* home_path = getenv("HOME");
	if (home_path == NULL) {
		perror("getenv");
		return 1;
	}

	printf("%s\n", home_path);
	char* basename = ".dairy";

	// len of $HOME/.diary
	int diary_path_len = strlen(home_path) + 1 + strlen(basename) + 1;

	char diary_path[diary_path_len];
	
	snprintf(diary_path, diary_path_len, "%s/%s", home_path, basename);

	printf("%s\n", diary_path);

	FILE* stream = fopen(diary_path, "r");


	if (stream == NULL) {
		perror("fopen");
		return 1;
	}

	int byte;

	while ((byte = fgetc(stream)) != EOF) {
		fputc(byte, stdout);
	}

	fclose(stream);

	return 0;
}
