section .text
global _ft_memchr

; void	*ft_memchr(const void *s, int c, size_t len);
;
; rdi -> const void *mem
; rsi -> int c
; rdx -> size_t len
;
; rax -> return val

_ft_memchr:
    mov		rax,	rsi		;	while (*mem != c)
	mov		rcx,	rdx		;	while (len != 0)
	cld						;	cld: direction flag -> ++, std: direction flag -> --
    repne	scasb			;	repeat while not equal: ++rdi, --rcx
	cmp		byte[rdi],	rdx	;	if (*mem == c)
	je		return			;		return (rax);

null:
	mov		rax,	0
	ret						;	return (0);

return:
	mov		rax,	rdi
    ret                     ;   return (rax);
