#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
	int ret;
	printf("PID %d PPID %d of parent process.\n", getpid(), getppid());

	for (int i = 0; i < 3; i++) {
		ret = fork();
		if (ret == 0) {
			printf("PID %d PPID: %d of child process.\n", getpid(), getppid());
			continue;
		} else if (ret > 0) {
			return 0;
		} else {
			printf("PID: %d PPID: %d child process not created.\n", getpid(), getppid());
			return 0;
		}
	}

	return 0;
}