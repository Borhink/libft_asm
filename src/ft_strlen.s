section .text
global _ft_strlen

; size_t ft_strlen(const char *str);
;
; rdi -> const char *str
;
; rax -> return val

_ft_strlen:
    mov     rax,	0		;
	mov		rcx,	-1		;
	cld						;
    repne	scasb			;
	mov		rax,	-2		;
	sub		rax,	rcx		;

return:
    ret                     ;   return (rax);
