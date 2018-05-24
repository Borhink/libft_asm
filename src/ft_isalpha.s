section .text
global _ft_isalpha


; int ft_isalpha(int c);
;
; rdi -> int c
;
; rax -> return val

_ft_isalpha:
    cmp     rdi,        'a' ;   if (c < 'a')
    jl      caps_test       ;       return (caps_test());
    cmp     rdi,        'z' ;   if (c <= 'z')
    jle     return_true     ;       return (1);
    jmp     return_false    ;   return (0);

caps_test:
    cmp     rdi,        'A' ;   if (c < 'A')
    jl      return_false    ;       return(0);
    cmp     rdi,        'Z' ;   if (c <= 'Z')
    jle     return_true     ;       return (1);
    jmp     return_false    ;   return (0);

return_true:
    mov     rax,        1
    ret                     ;   return (1);

return_false:
    mov     rax,        0
    ret                     ;   return (0);