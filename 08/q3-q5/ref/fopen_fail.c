#include <stdio.h>
#include <errno.h>
#include <string.h>

int main(void) {
	FILE* f = fopen("./does_not_exist.fun", "r");
	if (f == NULL) {
		// Damn! I swear ./does_not_exist.fun was file 😥
		// Oh well. What was the error?
		printf("errno: %d\n", errno);
		printf("[fopen_fail]: %s\n", strerror(errno));
		// Could we somehow trick perror?
		// For inspo, let's look at: $ errno -ls
		errno = ENONET;
		perror("[fopen_fail]");
	}
}
