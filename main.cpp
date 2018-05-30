#include <iostream>
#include <fcntl.h>
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

void test_strcat(void)
{
	char *m1 = new char[10];
	char *m2 = new char[5];

	std::cout << "test ft_strcat: " << std::endl;
	for (int i = 0; i < 6; i++)
		m1[i] = 'A';
	m1[5] = '\0';
	for (int i = 0; i < 4; i++)
		m2[i] = 'B';
	m2[3] = '\0';
	std::cout << "before: m1 -> " << m1 << ", m2 -> " << m2 << std::endl;
	m1 = ft_strcat(m1, m2);
	std::cout << "after : m1 -> " << m1 << ", m2 -> " << m2 << std::endl;
	std::cout << std::endl;
	delete [] m1;
	delete [] m2;
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

void test_isascii(void)
{
	std::cout << "test ft_isascii: " << std::endl;
	std::cout << "ft_isascii(-1): " << ft_isascii(-1) << std::endl;
	std::cout << "ft_isascii(0): " << ft_isascii(0) << std::endl;
	std::cout << "ft_isascii(100): " << ft_isascii(100) << std::endl;
	std::cout << "ft_isascii(127): " << ft_isascii(127) << std::endl;
	std::cout << "ft_isascii(128): " << ft_isascii(128) << std::endl;
	std::cout << std::endl;
}

void test_isprint(void)
{
	std::cout << "test ft_isprint: " << std::endl;
	std::cout << "ft_isprint(31): " << ft_isprint(31) << std::endl;
	std::cout << "ft_isprint(32): " << ft_isprint(32) << std::endl;
	std::cout << "ft_isprint(100): " << ft_isprint(100) << std::endl;
	std::cout << "ft_isprint(126): " << ft_isprint(126) << std::endl;
	std::cout << "ft_isprint(127): " << ft_isprint(127) << std::endl;
	std::cout << std::endl;
}

void test_toupper(void)
{
	std::cout << "test ft_toupper: " << std::endl;
	std::cout << "ft_toupper('a'): " << static_cast<char>(ft_toupper('a')) << std::endl;
	std::cout << "ft_toupper('g'): " << static_cast<char>(ft_toupper('g')) << std::endl;
	std::cout << "ft_toupper('z'): " << static_cast<char>(ft_toupper('z')) << std::endl;
	std::cout << "ft_toupper('A'): " << static_cast<char>(ft_toupper('A')) << std::endl;
	std::cout << "ft_toupper('Z'): " << static_cast<char>(ft_toupper('Z')) << std::endl;
	std::cout << "ft_toupper('5'): " << static_cast<char>(ft_toupper('5')) << std::endl;
	std::cout << std::endl;
}

void test_tolower(void)
{
	std::cout << "test ft_tolower: " << std::endl;
	std::cout << "ft_tolower('A'): " << static_cast<char>(ft_tolower('A')) << std::endl;
	std::cout << "ft_tolower('G'): " << static_cast<char>(ft_tolower('G')) << std::endl;
	std::cout << "ft_tolower('Z'): " << static_cast<char>(ft_tolower('Z')) << std::endl;
	std::cout << "ft_tolower('a'): " << static_cast<char>(ft_tolower('a')) << std::endl;
	std::cout << "ft_tolower('z'): " << static_cast<char>(ft_tolower('z')) << std::endl;
	std::cout << "ft_tolower('5'): " << static_cast<char>(ft_tolower('5')) << std::endl;
	std::cout << std::endl;
}

void test_puts(void)
{
	int ret;

	std::cout << "test ft_puts: " << std::endl;
	std::cout << "ft_puts(\"\"): " << std::endl;
	ret = ft_puts("");
	std::cout << "ret: " << ret << std::endl;
	std::cout << "ft_puts(0): " << std::endl;
	ret = ft_puts(0);
	std::cout << "ret: " << ret << std::endl;
	std::cout << "ft_puts(\"0123456789\"): " << std::endl;
	ret = ft_puts("0123456789");
	std::cout << "ret: " << ret << std::endl;
	std::cout << "ft_puts(\"abcdefghijklmnopqrstuvwxyz\"): " << std::endl;
	ret = ft_puts("abcdefghijklmnopqrstuvwxyz");
	std::cout << "ret: " << ret << std::endl;
	std::cout << std::endl;
}

void test_strlen(void)
{
	std::cout << "test ft_strlen: " << std::endl;
	std::cout << "ft_strlen(\"\"): " << ft_strlen("") << std::endl;
	std::cout << "ft_strlen(\"0123456789\"): " << ft_strlen("0123456789") << std::endl;
	std::cout << "ft_strlen(\"abcdefghijklmnopqrstuvwxyz\"): " << ft_strlen("abcdefghijklmnopqrstuvwxyz") << std::endl;
	std::cout << std::endl;
}

void test_memset(void)
{
	char *mem = new char[10];

	std::cout << "test ft_memset: " << std::endl;
	for (int i = 0; i < 10; i++)
		mem[i] = 'A';
	mem[9] = '\0';
	std::cout << "mem before: " << mem << std::endl;
	ft_memset(mem, 'E', 9);
	std::cout << "mem after : " << mem << std::endl;
	std::cout << std::endl;
	delete [] mem;
}

void test_memcpy(void)
{
	char *m1 = new char[10];
	char *m2 = new char[10];

	std::cout << "test ft_memcpy: " << std::endl;
	for (int i = 0; i < 10; i++)
		m1[i] = '1';
	m1[9] = '\0';
	for (int i = 0; i < 10; i++)
		m2[i] = 'B';
	m2[9] = '\0';
	std::cout << "before: m1 -> " << m1 << ", m2 -> " << m2 << std::endl;
	ft_memcpy(m1, m2, 10);
	std::cout << "after : m1 -> " << m1 << ", m2 -> " << m2 << std::endl;
	std::cout << std::endl;
	delete [] m1;
	delete [] m2;
}

void test_strdup(void)
{
	char *mem = nullptr;

	std::cout << "test ft_strdup: " << std::endl;
	mem = ft_strdup("0123456789");
	std::cout << "after -> " << mem << std::endl;
	std::cout << std::endl;
}

void test_cat(void)
{
	std::cout << "test ft_cat: " << std::endl;
	std::cout << "ft_cat(0): " << std::endl;
	ft_cat(0);

	std::cout << "ft_cat(src/ft_cat.s): " << std::endl;
	int fd = open("src/ft_cat.s", O_RDONLY);
	ft_cat(fd);
	std::cout << std::endl;
}

void	test_abs(void)
{
	std::cout << "test ft_abs: " << std::endl;
	std::cout << "ft_abs(0): " << ft_abs(0) << std::endl;
	std::cout << "ft_abs(100): " << ft_abs(100) << std::endl;
	std::cout << "ft_abs(-256): " << ft_abs(-256) << std::endl;
	std::cout << std::endl;
}

int main(void)
{
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_puts();

	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();

	test_cat();

	test_abs();
	return (0);
}