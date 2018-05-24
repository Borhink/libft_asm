section .text
global _ft_bzero

; void ft_bzero(void *mem, size_t len);
;
; rdi -> void *mem
; rsi -> size_t len

_ft_bzero:

loop:
    cmp     rsi,        0   ;   if (len == 0)
    je      return          ;       return;     (jump to 'return' label)
    mov     byte[rdi],  0   ;   *mem = 0;       (byte = 8-bit, word = 16-bit, dword = 32-bit, qword = 64-bit)
    dec     rsi             ;   --len;
    inc     rdi             ;   ++mem;
    jmp     loop            ;                   (jump to the beginning of the loop)

return:
    ret                     ;   return;