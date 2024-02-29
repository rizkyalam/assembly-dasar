section .text
    global luas

luas:
    push    ebp
    mov     ebp, esp
    
    ; luas persegi = panjang x lebar
    mov     eax, [ebp + 0x8] ; first parameter (panjang)
    imul    eax, [ebp + 0xc] ; eax *= (lebar)

    mov     esp, ebp
    pop     ebp
    ret
