#ifndef LIBFTS_HPP
#define LIBFTS_HPP

#include <string>

extern "C"
{
    void	ft_bzero(void *mem, size_t len);
    int     ft_isalpha(int c);
    int     ft_isdigit(int c);
    int     ft_isalnum(int c);
    int     ft_isascii(int c);
    int     ft_isprint(int c);
    int     ft_toupper(int c);
    int     ft_tolower(int c);
    int     ft_puts(const char *str);

    size_t  ft_strlen(const char *str);
}

#endif
