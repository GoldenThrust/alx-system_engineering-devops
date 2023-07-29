#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * infinite_while - run an infinite while loop
 * Return: 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - creates five zombie processes
 *
 * Return: 0
 */
int main(void)
{
	pid_t pid;

	int proc = 0;

	while (proc < 5)
	{
		pid = fork();

		if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);

			proc++;
		}
		else
			exit(0);
	}

	infinite_while();

	return (EXIT_SUCCESS);
}
