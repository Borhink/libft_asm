section .text
global _ft_isprint


; int ft_isprint(int c);
;
; rdi -> int c
;
; rax -> return val

_ft_isprint:
    cmp     rdi,        32   ;   if (c < 32)
    jl      return_false    ;       return (0);
    cmp     rdi,        126 ;   if (c <= 126)
    jle     return_true     ;       return (1);
    jmp     return_false    ;   return (0);

return_true:
    mov     rax,        1
    ret                     ;   return (1);

return_false:
    mov     rax,        0
    ret                     ;   return (0);