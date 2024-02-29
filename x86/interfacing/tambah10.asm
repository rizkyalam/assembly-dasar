global tambah10

tambah10:
    push    ebp
    mov     ebp, esp

    mov     eax, [ebp + 8]      ; first parameter
    add     dword [eax], 10     ; *eax += 10

    pop     ebp
    ret
