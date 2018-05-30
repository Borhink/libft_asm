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
    sub     rdi,        1           ;   rdi += ft_strlen(dest);

loop:
    cmp     byte[rsi],  0           ;   if (*src == 0)
    je      endbyte                 ;       jmp endbyte;
    mov     r9,         [rsi]       ;   r9 = *src;
    mov     byte[rdi],  r9b         ;   *dest = r9;
    inc     rdi                     ;   ++dest;
    inc     rsi                     ;   ++src;
    jmp     loop                    ;   jmp loop;
    
endbyte:
    mov     byte[rdi], 0            ;   *dest = '\0';

return:
    mov     rax,        r8
    ret                             ;   return(mem);
