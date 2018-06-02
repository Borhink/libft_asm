#ifndef LIBFTS_HPP
#define LIBFTS_HPP

#include <string>

extern "C"
{
    void	ft_bzero(void *mem, size_t len);
    char    *ft_strcat(char *dest, const char *src);
    int     ft_isalpha(int c);
    int     ft_isdigit(int c);
    int     ft_isalnum(int c);
    int     ft_isascii(int c);
    int     ft_isprint(int c);
    int     ft_toupper(int c);
    int     ft_tolower(int c);
    int     ft_puts(const char *str);

    size_t  ft_strlen(const char *str);
    void    *ft_memset(void *mem, int c, size_t len);
    void    *ft_memcpy(void *dest, const void *src, size_t len);
    char    *ft_strdup(const char *s);

    void    ft_cat(int fd);

    long    ft_abs(long nb);
    void	*ft_memchr(const void *s, int c, size_t len);
    char	*ft_strchr(const char *s, int c);
    int	    ft_memcmp(const void *s1, const void *s2, size_t len);
    void    *ft_memalloc(size_t size);
    void	ft_memdel(void **ap);
}

#endif
