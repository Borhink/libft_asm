section .data
   buffsize equ     128

section .bss
   buf      resb    128

section .text
global _ft_cat

%define SYS_read    0x2000003
%define SYS_write   0x2000004

; void ft_cat(int fd);
;
; rdi -> int fd

_ft_cat:
    push    r12                     ;   save r12 on the stack
    mov     r12,        rdi         ;   r12 = rdi (fd)

read:
    mov     rax,        SYS_read    ;   int read(int fd, const void *buf, size_t buffsize);
    mov     rdi,        r12         ;   read(r12,
    mov     rsi,        buf         ;         buf,
    mov     rdx,        buffsize    ;         buffsize,
    syscall                         ;   );
    jc      return                  ;   if (read fail) return;
    cmp     rax,        0           ;   if (read(r12, buf, buffsize) == 0)
    je      return                  ;       return;

write:
    mov     r8,         rax         ;
    mov     rax,        SYS_write   ;   size_t write(int fd, const void *buf, size_t count);  
    mov     rdi,        1           ;   write(1,
    mov     rsi,        buf         ;         buf,
    mov     rdx,        r8          ;         r8,
    syscall                         ;   );
    jc      return                  ;   if (write fail) return;
    jmp     read                    ;

return:
    pop     r12
    ret                             ;   return;