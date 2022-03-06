#include <stdio.h>

/*
 * Let's first translate this
 * to MIPS with ./01_stack_cond.s
 */
int main(void) {
	int i = 0;
	scanf("%d", &i);

	if (i > 10) {
		int buffer[1000] = { 0 };
		// What if we forget to dealloc
		// the buffer?
	}

	return 0;
}
