#include <iostream>
#include "libfts.h"

int main(void)
{
	char *mem = new char[10];

	for (int i = 0; i < 10; i++)
		mem[i] = 'A';
	mem[9] = '\0';
	std::cout << mem << std::endl;
	ft_bzero(mem, 10);
	std::cout << mem << std::endl;
	delete [] mem;
	return (0);
}