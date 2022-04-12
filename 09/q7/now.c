#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <spawn.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>

void spawn_and_wait(char** args);

/*
	date +%d-%m-%Y
	date +%T
	whoami
	hostname -f
	realpath .
*/
int main(void) {
	return 0;
}

void spawn_and_wait(char** args) {
}

