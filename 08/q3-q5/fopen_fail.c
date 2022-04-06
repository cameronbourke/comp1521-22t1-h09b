#include <stdio.h>

int main(void) {
	FILE* f = fopen("./does_not_exist.fun", "r");
	if (f == NULL) {
		// Damn! I swear ./does_not_exist.fun was a file 😥
		// Oh well. What was the error?
		
		// Could we somehow trick perror?
		// For inspo, let's look at: $ errno -ls
	}
}
