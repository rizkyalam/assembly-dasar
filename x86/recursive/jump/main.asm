section .text
    global _start
_start:
    mov ebx, 0x1 
    mov ecx, 0x4  ; total iteration
label:
    add ebx, ebx    ; ebx += ebx
    dec ecx         ; ecx--
    cmp ecx, 0x0
    jg label        ; if (ecx > 0) goto label
    mov eax, 0x1    ; syscall exit
    int 0x80
