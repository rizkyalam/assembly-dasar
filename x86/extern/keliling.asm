section .text
    global keliling

keliling:
    push    ebp
    mov     ebp, esp
    
    ; keliling persegi = 2 x (panjang + lebar)
    mov     eax, [ebp + 0x8] ; first parameter (panjang)
    add     eax, [ebp + 0xc] ; eax += (lebar)
    imul    eax, 2  ; eax *= 2

    mov     esp, ebp
    pop     ebp
    ret
