section .text
global _ft_memalloc

extern _ft_bzero
extern _malloc

; void  *ft_memalloc(size_t size);
;
; rdi -> size_t size
;
; rax -> return val

_ft_memalloc:

alloc:
    push    rdi             ;   save rdi
    call    _malloc         ;   malloc(len)
    pop     rdi             ;   restore rdi
    cmp     rax,        0   ;   if (malloc(len) == 0)
    je      return          ;       return (0);

zero:
    mov     rsi,        rdi ;   rsi = rdi; (len)
    mov     rdi,        rax ;   rdi = rax; (new malloc)
    call    _ft_bzero       ;   ft_bzero(rdi, rsi);

return:
    ret                     ;   return (rax);