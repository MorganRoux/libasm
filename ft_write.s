    global ft_write
    extern __error

    section .text
ft_write:


    mov rax, 0x2000004
    syscall

    push rbp
    call __error
    pop rbp
    mov dword [rax], 5
    mov rax, 13
    ret

