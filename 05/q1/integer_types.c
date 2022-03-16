#include <stdio.h>
#include <limits.h>
#include <stdint.h>

int main(void) {

    char c;
    signed char sc;
    unsigned char uc;
    short s;
    unsigned short us;
    int i;
    unsigned int ui;
    long l;
    unsigned long ul;
    long long ll;
    unsigned long long ull;

		/*
 		 * We should use "%zu" to print the variables of size_t length.
 		 * We can use "%d" also to print size_t variables, it will not show any error.
 		 * The correct way to print size_t variables is use of "%zu".
 		 * In "%zu" format, z is a length modifier and u stand for unsigned type.
 		 *
 		 * source: https://www.tutorialspoint.com/what-is-the-correct-way-to-use-printf-to-print-a-size-t-in-c-cplusplus#:~:text=We%20should%20use%20%E2%80%9C%25zu%E2%80%9D,u%20stand%20for%20unsigned%20type.
 		*/

    printf("%18s %5s %4s\n", "Type", "Bytes", "Bits");
    printf("%18s %5zu %4zu\n", "char", sizeof c, 8 * sizeof c);
    printf("%18s %5zu %4zu\n", "signed char", sizeof sc, 8 * sizeof sc);
    printf("%18s %5zu %4zu\n", "unsigned char", sizeof uc, 8 * sizeof uc);

    printf("%18s %5zu %4zu\n", "short", sizeof s, 8 * sizeof s);
    printf("%18s %5zu %4zu\n", "unsigned short", sizeof us, 8 * sizeof us);

    printf("%18s %5zu %4zu\n", "int", sizeof i, 8 * sizeof i);
    printf("%18s %5zu %4zu\n", "unsigned int", sizeof ui, 8 * sizeof ui);

    printf("%18s %5zu %4zu\n", "long", sizeof l, 8 * sizeof l);
    printf("%18s %5zu %4zu\n", "unsigned long", sizeof ul, 8 * sizeof ul);

    printf("%18s %5zu %4zu\n", "long long", sizeof ll, 8 * sizeof ll);
    printf("%18s %5zu %4zu\n", "unsigned long long", sizeof ull, 8 * sizeof ull);

    return 0;
}
