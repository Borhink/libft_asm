section .text
global _ft_memdel

extern _free

; void	ft_memdel(void **ap);
;
; rdi -> void **ap
;
; rax -> return val

_ft_memdel:
    cmp     rdi,        0       ;   if (ap == 0)
    je      return              ;       return;
    push    rdi                 ;   save rdi
    mov     rdi,        [rdi]   ;   rdi = *rdi;
    call    _free               ;   free(*ap);
    pop     rdi                 ;   restore rdi
    mov     qword[rdi], 0       ;   *ap = 0;

return:
    ret                         ;   return;