section .text
global _ft_isdigit


; int ft_isdigit(int c);
;
; rdi -> int c
;
; rax -> return val

_ft_isdigit:
    cmp     rdi,        '0' ;   if (c < '0')
    jl      return_false    ;       return (0);
    cmp     rdi,        '9' ;   if (c <= '9')
    jle     return_true     ;       return (1);
    jmp     return_false    ;   return (0);

return_true:
    mov     rax,        1
    ret                     ;   return (1);

return_false:
    mov     rax,        0
    ret                     ;   return (0);