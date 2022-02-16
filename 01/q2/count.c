#include <stdio.h>
#include <stdlib.h>

int inc () {
	// int static n = 0;
	int n = 0;
	n++;
	return n;
}

int main () {
	for (int i = 0; i < 10; i++) {
		printf("%d\n", inc());
	}
	return 0;
}
