    global _ft_write
    extern ___error

    section .text
_ft_write:


    mov rax, 0x2000004
    syscall

    push rbp
    call ___error
    pop rbp
    mov dword [rax], 5
    mov rax, 13
    ret

