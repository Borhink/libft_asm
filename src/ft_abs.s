section .text
global _ft_abs

; long ft_abs(long nb);
;
; rdi -> long nb
;
; rax -> return val

_ft_abs:
    cmp     rdi,        0       ;   if (nb > 0)
    jge     return              ;       return (nb);
    mov     r8,         0       ;
    sub     r8,         rdi     ;   r8 -= rdi = 0 - -X = 0 + X
    mov     rdi,        r8      ;   rdi = r8

return:
    mov     rax,    rdi
    ret                             ;   return (nb);
