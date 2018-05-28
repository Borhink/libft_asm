section .text
global _ft_strcat

extern _ft_strlen

; char *ft_strcat(char *dest, const char *src);
;
; rdi -> const char *dest
; rsi -> const char *src
;
; rax -> return val

_ft_strcat:
	mov     r8,         rdi
    cmp     rdi,        0           ;   if (dest == 0)
    je      return                  ;       return;
    cmp     rsi,        0           ;   if (src == 0)
    je      return                  ;       return;
    call    _ft_strlen              ;   ft_strlen(dest);
    add     rdi,        rax         ;   rdi += ft_strlen(dest);

loop:
    cmp     byte[rsi],  0
    je      endbyte
    mov     byte[rdi],  byte[rsi]
    inc     rdi
    inc     rsi
    jmp     loop
    
endbyte:
    mov     byte[rdi], 0

return:
    mov     rax,        r8
    ret
