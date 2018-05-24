section .text
global _ft_toupper


; int ft_toupper(int c);
;
; rdi -> int c
;
; rax -> return val

_ft_toupper:
    cmp     rdi,        'a' ;   if (c < 'a')
    jl      return          ;       return (c);
    cmp     rdi,        'z' ;   if (c <= 'z')
    jle     upper           ;       return (c - 32);
    jmp     return          ;   return (c);

upper:
    sub     rdi,        32  ;   c -= 32;

return:
    mov     rax,        rdi
    ret                     ;   return (c);