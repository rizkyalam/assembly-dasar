global tambah

tambah:
    push    ebp
    mov     ebp, esp
    mov     eax, [ebp + 0x8]    ; first parameter
    add     eax, [ebp + 0xc]    ; eax += second parameter
    mov     esp, ebp
    pop     ebp
    ret
