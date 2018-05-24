section .text
global _ft_isalnum

extern _ft_isdigit
extern _ft_isalpha

; int ft_isalnum(int c);
;
; rdi -> int c
;
; rax -> return val

_ft_isalnum:
    call    _ft_isdigit
    cmp     rax,        1   ;   if (ft_isdigit(c) == 1)
    je      return_true     ;       return (1);
    call    _ft_isalpha
    cmp     rax,        1   ;   if (ft_isalpha(c) == 1)
    je      return_true     ;       return (1);
    jmp     return_false    ;   return (0);

return_true:
    mov     rax,        1
    ret                     ;   return (1);

return_false:
    mov     rax,        0
    ret                     ;   return (0);