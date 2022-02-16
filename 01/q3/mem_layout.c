#include <stdio.h>
#include <stdlib.h>

/*
	The C compiler will see:
	1) char* s1;
	2) s1 = "abc";
*/
char* s1 = "abc";
/*
	It will first allocate sizeof(s1) bytes
	in the data section for the global variable s1.

	Then it will allocate 4 bytes in the data
	section for the string "abc".
*/

int main(void) {
	char* s2 = "def";
	/*
		It will first allocate sizeof(s2) bytes
		on the stack for the local variable s2.

		Then it will allocate 4 bytes in the data
		section for the string "def".
	*/

	printf("s1: %p\n", s1); // where "abc" lives in (mem)ory
	printf("s2: %p\n", s2); // where "def" lives in mem

	printf("&s1: %p\n", &s1); // where pointer s1 lives in mem
	printf("&s2: %p\n", &s2); // where pointer s2 lives in mem

	return EXIT_SUCCESS;
}
