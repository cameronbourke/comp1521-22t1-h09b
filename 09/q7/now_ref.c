#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <spawn.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>

void exec_and_wait(char** args);

/*
	date +%d-%m-%Y
	date +%T
	whoami
	hostname -f
	realpath .
*/
int main(void) {
	exec_and_wait((char *[]){"/bin/date", "+%d-%m-%Y", NULL});
	exec_and_wait((char *[]){"/bin/date", "+%T", NULL});
	exec_and_wait((char *[]){"/usr/bin/whoami", NULL});
	exec_and_wait((char *[]){"/bin/hostname", "-f", NULL});
	exec_and_wait((char *[]){"/usr/bin/realpath", ".", NULL});
	return 0;
}

void exec_and_wait(char** args) {
	pid_t pid;

	pid = fork();

	if (pid == -1) {
		perror("fork");
		exit(EXIT_FAILURE);
	}

	if (pid > 0) {
		int status = 0;
		// in the parent process
		if (waitpid(pid, &status, 0) == -1)
		{
			perror("waitpid");
			exit(EXIT_FAILURE);
		}
	}
	else {
		// in the child process
		if (execv(args[0], args) == -1) {
			perror("execv");
			exit(EXIT_FAILURE);
		}
	}
}

