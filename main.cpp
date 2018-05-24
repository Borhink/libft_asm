#include <iostream>
#include "libfts.h"

void test_bzero(void)
{
	char *mem = new char[10];

	std::cout << "test ft_bzero: " << std::endl;
	for (int i = 0; i < 10; i++)
		mem[i] = 'A';
	mem[9] = '\0';
	std::cout << "mem before: " << mem << std::endl;
	ft_bzero(mem, 10);
	std::cout << "mem after : " << mem << std::endl;
	std::cout << std::endl;
	delete [] mem;
}

void test_isalpha(void)
{
	std::cout << "test ft_isalpha: " << std::endl;
	std::cout << "ft_isalpha('1'): " << ft_isalpha('1') << std::endl;
	std::cout << "ft_isalpha('a'): " << ft_isalpha('a') << std::endl;
	std::cout << "ft_isalpha('z'): " << ft_isalpha('z') << std::endl;
	std::cout << "ft_isalpha('A'): " << ft_isalpha('A') << std::endl;
	std::cout << "ft_isalpha('Z'): " << ft_isalpha('Z') << std::endl;
	std::cout << "ft_isalpha('A' - 1): " << ft_isalpha('A' - 1) << std::endl;
	std::cout << "ft_isalpha('z' + 1): " << ft_isalpha('z' + 1) << std::endl;
	std::cout << "ft_isalpha('a' - 1): " << ft_isalpha('a' - 1) << std::endl;
	std::cout << "ft_isalpha('Z' + 1): " << ft_isalpha('Z' + 1) << std::endl;
	std::cout << "ft_isalpha('Z' + 7): " << ft_isalpha('Z' + 7) << std::endl;
	std::cout << std::endl;
}

void test_isdigit(void)
{
	std::cout << "test ft_isdigit: " << std::endl;
	std::cout << "ft_isdigit('a'): " << ft_isdigit('a') << std::endl;
	std::cout << "ft_isdigit('0'): " << ft_isdigit('0') << std::endl;
	std::cout << "ft_isdigit('5'): " << ft_isdigit('5') << std::endl;
	std::cout << "ft_isdigit('9'): " << ft_isdigit('9') << std::endl;
	std::cout << "ft_isdigit('9' + 1): " << ft_isdigit('9' + 1) << std::endl;
	std::cout << "ft_isdigit('0' - 1): " << ft_isdigit('0' - 1) << std::endl;
	std::cout << std::endl;
}

void test_isalnum(void)
{
	std::cout << "test ft_isalnum: " << std::endl;
	std::cout << "ft_isalnum('-'): " << ft_isalnum('-') << std::endl;
	std::cout << "ft_isalnum('('): " << ft_isalnum('(') << std::endl;
	std::cout << "ft_isalnum('a'): " << ft_isalnum('a') << std::endl;
	std::cout << "ft_isalnum('z'): " << ft_isalnum('z') << std::endl;
	std::cout << "ft_isalnum('A'): " << ft_isalnum('A') << std::endl;
	std::cout << "ft_isalnum('Z'): " << ft_isalnum('Z') << std::endl;
	std::cout << "ft_isalnum('A' - 1): " << ft_isalnum('A' - 1) << std::endl;
	std::cout << "ft_isalnum('z' + 1): " << ft_isalnum('z' + 1) << std::endl;
	std::cout << "ft_isalnum('a' - 1): " << ft_isalnum('a' - 1) << std::endl;
	std::cout << "ft_isalnum('Z' + 1): " << ft_isalnum('Z' + 1) << std::endl;
	std::cout << "ft_isalnum('Z' + 7): " << ft_isalnum('Z' + 7) << std::endl;
	std::cout << "ft_isalnum('0'): " << ft_isalnum('0') << std::endl;
	std::cout << "ft_isalnum('5'): " << ft_isalnum('5') << std::endl;
	std::cout << "ft_isalnum('9'): " << ft_isalnum('9') << std::endl;
	std::cout << "ft_isalnum('9' + 1): " << ft_isalnum('9' + 1) << std::endl;
	std::cout << "ft_isalnum('0' - 1): " << ft_isalnum('0' - 1) << std::endl;
	std::cout << std::endl;
}

int main(void)
{
	test_bzero();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	return (0);
}
