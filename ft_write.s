    extern __errno_location
    global ft_write

    section .text
ft_write:


    mov rax, 1
    ;rdi, rsi, rdx are already set to the correct values	
    syscall
    ; rax is already set by write
    push rbp
    call __errno_location
    pop rbp
    mov dword [rax], 5
    mov rax, 14
    ret

