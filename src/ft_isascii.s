section .text
global _ft_isascii


; int ft_isascii(int c);
;
; rdi -> int c
;
; rax -> return val

_ft_isascii:
    cmp     rdi,        0   ;   if (c < 0)
    jl      return_false    ;       return (0);
    cmp     rdi,        127 ;   if (c <= 127)
    jle     return_true     ;       return (1);
    jmp     return_false    ;   return (0);

return_true:
    mov     rax,        1
    ret                     ;   return (1);

return_false:
    mov     rax,        0
    ret                     ;   return (0);