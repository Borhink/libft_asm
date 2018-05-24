section .text
global _ft_tolower


; int ft_tolower(int c);
;
; rdi -> int c
;
; rax -> return val

_ft_tolower:
    cmp     rdi,        'A' ;   if (c < 'A')
    jl      return          ;       return (c);
    cmp     rdi,        'Z' ;   if (c <= 'Z')
    jle     upper           ;       return (c + 32);
    jmp     return          ;   return (c);

upper:
    add     rdi,        32  ;   c += 32;

return:
    mov     rax,        rdi
    ret                     ;   return (c);