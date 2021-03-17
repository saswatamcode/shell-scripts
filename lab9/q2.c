#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
	int ret;
	printf("PID: %d PPID: %d of parent process.\n", getpid(), getppid());
	for (int i = 0; i < 5; i++) {
		ret = fork();
		if (ret == 0) {
			printf("PID: %d PPID: %d of child process.\n", getpid(), getppid());
			break;
		} else if (ret > 0) {
		} else {
			printf("PID: %d PPID: %d child process not created.\n", getpid(), getppid());
		}
	}
	if (ret > 0) {
		printf("PID: %d PPID: %dwaiting for all child process toexit.\n", getpid(), getppid());
	}
	wait(NULL);
	printf("PID %d PPID %d parent wait completed.\n", getpid(), getppid());
}