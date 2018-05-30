section .text
global _ft_memcpy

; void    *ft_memcpy(void *dest, const void *src, size_t len);
;
; rdi -> void *dest
; rsi -> void *src
; rdx -> size_t len
;
; rax -> return val

_ft_memcpy:
    cmp     rdx,        0   ;   if (len == 0)
    je      return          ;       return;
	mov		r8,			rdi	;	r8 = rdi (void *mem)

cpy:
    mov     rcx,    rdx		;	rcx = rdx (size_t len)
    cld						;	cld: direction flag -> ++, std: direction flag -> --
    rep		movsb			;	repeat *rdi = *rsi, ++rdi, ++rsi

return:
	mov		rax,	r8
    ret                     ;   return(mem);

; movsb = MOVe String Byte