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
	je		return			;	if (scasc found) return (rax);

null:
	mov		rax,	0
	ret						;	return (0);

return:
	dec		rdi				; back on the first occurence of c
	mov		rax,	rdi
    ret                     ;   return (rax);
