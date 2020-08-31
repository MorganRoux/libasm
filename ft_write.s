    global ft_write
    extern _error

    section .text
ft_write:


    mov rax, 1
    ;rdi, rsi, rdx are already set to the correct values	
    syscall
    ; rax is already set by write
    push rbp
    call _error
    pop rbp
    mov dword [rax], 5
    mov rax, 13
    ret

