#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
	int ret;
	printf("PID %d PPID %d of parent process.\n", getpid(), getppid());
	for (int i = 0; i < 2; i++) {
		ret = fork();
		if (ret == 0) {
			printf("PID %d PPID: %d of child process.\n", getpid(), getppid());
			i += 2;
		} else if (ret > 0) {
			break;
		} else {
			printf("PID: %d PPID: %d child process not created.\n", getpid(), getppid());
			return 0;
		}
	}
	if (ret > 0) {
		printf("PID: %d PPID: %d waiting for child process to exit.\n", getpid(), getppid());
		wait(NULL);
		printf("PID: %d PPID: %d\n", getpid(), getppid());
	}
	return 0;
}