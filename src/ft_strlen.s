section .text
global _ft_strlen

; size_t ft_strlen(const char *str);
;
; rdi -> const char *str
;
; rax -> return val

_ft_strlen:
    mov     rax,	0		;	rax = cmp value for "repne scasb" (while (*str != 0))
	mov		rcx,	-1		;	rcx = len for "repne scasb" (while (len != 0))
	cld						;	cld: direction flag -> ++, std: direction flag -> --
    repne	scasb			;	repeat while not equal: ++rdi, --rcx
	mov		rax,	-2		;	rax = -2 (rcx = -X)
	sub		rax,	rcx		;	rax = -2 - -X = -2 + X = strlen

return:
    ret                     ;   return (rax);

; repne(void* mem(rdi), int val(rax), size_t len(rcx));
; scasb = SCAn String Byte