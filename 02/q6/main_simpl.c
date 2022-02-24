#include <stdio.h>

// Turn into "Simplified" C

int main(void) {
    int x = 0;
    printf("Enter a number: ");
    scanf("%d", &x);

		// ~(x > 100 && x < 1000)
		// ~(x > 100) || ~(x < 1000)
		// x <= 100   || x >= 1000
		if (x <= 100) goto small_big;
		if (x >= 1000) goto small_big;
			printf("medium\n");
			goto end;
		small_big:
			printf("small/big\n");

		end:

		return 0;
}
