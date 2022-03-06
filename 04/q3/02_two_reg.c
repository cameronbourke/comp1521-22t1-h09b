#include <stdio.h>

/*
 * Let's first translate this
 * to MIPS with ./02_two_reg.s
 */
int main(void) {
	int a = 10;
	int b = 30;
	int c = 40;
	int d = a + b;
	return d + c;
}
