extern _MessageBoxA@16

section .data
    msg db "Testing di windows", 0

section .text
    global _main

_main:
    push 0
    push 0
    push msg
    push 0
    call _MessageBoxA@16
