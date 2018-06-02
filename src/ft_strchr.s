section .text
global _ft_strchr

extern _ft_strlen

; char	*ft_strchr(const char *s, int c);
;
; rdi -> const char *s
; rsi -> int c
;
; rax -> return val

_ft_strchr:
	push	rdi				;	save rdi
	call	_ft_strlen		;	ft_strlen(s);
	pop		rdi				;	restore rdi
	mov		rcx,	rax		;	while (len != 0)
	mov		rax,	rsi		;	while (*s != c)
	cld						;	cld: direction flag -> ++, std: direction flag -> --
	repne	scasb			;	repeat while not equal: ++rdi, --rcx
	je		return			;	if (scasc found) return (rax);

null:
	mov		rax,	0
	ret						;	return (0);

return:
	mov		rax,	rdi
	ret						;   return (rax);
