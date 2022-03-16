#include <stdio.h>

#define READING   0x01
#define WRITING   0x02
#define AS_BYTES  0x04
#define AS_BLOCKS 0x08
#define LOCKED    0x10

void device_status(unsigned char);

int main(void) {
	unsigned char device = 0x00;
	device = (READING | AS_BYTES | LOCKED);
	device_status(device);
	return 0;
}








void device_status(unsigned char device) {
	printf("device attributes:\n");
	if ((device) == 0x00) {
		printf("\t- none\n");
		return;
	}

	if ((device & READING) != 0) {
		printf("\t- reading\n");
	}
	if ((device & WRITING) != 0) {
		printf("\t- writing\n");
	}
	if ((device & AS_BYTES) != 0) {
		printf("\t- byte addressable\n");
	}
	if ((device & AS_BLOCKS) != 0) {
		printf("\t- block addressable\n");
	}
	if ((device & LOCKED) != 0) {
		printf("\t- locked\n");
	}
}
