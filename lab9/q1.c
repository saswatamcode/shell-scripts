#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
	for (int i = 0; i < 5; i++) {
		int t = fork();
		if (t == 0) {
			printf("Parentid %d and Processid %d\n", getppid(), getpid());
			exit(0);
		}
	}
	return 0;
}
