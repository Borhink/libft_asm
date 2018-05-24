section .text
global _ft_strlen

; size_t ft_strlen(const char *str);
;
; rdi -> const char *str
;
; rax -> return val

_ft_strlen:
    mov     rax,        0

loop:
    cmp     byte[rdi],  0   ;   if (*rdi == 0)
    je      return          ;       return (rax);
    inc     rax             ;   ++rax;
    inc     rdi             ;   ++rdi;
    jmp     loop            ;   jump to label loop (while (*rdi != 0))

return:
    ret                     ;   return (rax);