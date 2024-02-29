global _start
_start:
    mov ebx, 0x2a   ; ebx = 42
    sub ebx, 0x1d   ; ebx -= 29
    mov eax, 0x1    ; syscall exit
    int 0x80        ; call kernel to interrupt
