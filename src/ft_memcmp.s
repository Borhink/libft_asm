section .text
global _ft_memcmp

; int	ft_memcmp(const void *s1, const void *s2, size_t len);
;
; rdi -> const void *s1
; rsi -> const void *s2
; rdx -> size_t len
;
; rax -> return val

_ft_memcmp:
	mov		rax,		0           ;	rax = 0;
    cmp     rdx,        0           ;   if (len == 0)
    je      return                  ;       return;

loop:
    mov     r8b,        byte[rdi]   ;   r8b = *s1;
    cmp     r8b,        byte[rsi]   ;   if (*s1 != *s2)
    jne     end                     ;       jmp end;
    cmp     rdx,        0           ;   if (len <= 0)
    jle     end                     ;       jmp end;
    dec     rdx                     ;   --len;
    inc     rdi                     ;   ++s1;
    inc     rsi                     ;   ++s2;
    jmp     loop                    ;   jmp loop;

end:
    mov     al,        byte[rdi]   ;  rax = *s1;
    sub     al,        byte[rsi]   ;  rax -= *s2;

return:
    ret                     ;   return (rax);