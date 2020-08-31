    global ft_write
    extern __error

    section .text
ft_write:


    mov rax, 1
    ;rdi, rsi, rdx are already set to the correct values	
    syscall
    ; rax is already set by write
    ret

