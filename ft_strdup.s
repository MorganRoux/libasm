    global _ft_strdup
    extern _malloc

    section .text
_ft_strdup:

    mov rcx, 0      ; pour comparaison
    cmp rcx, rdi    ; check *str1
    je  err
    mov rax, -1     ; compteur

count:
    inc rax
    cmp cl, [rdi + rax]
    jne count

alloc: 
    push rdi
    mov rdi, rax
    inc rdi
    call _malloc
    pop rsi

    cmp rax, 0
    je  err
    mov rdi, rax
    mov rax, -1

loop:
    inc rax
    mov dl, [rsi + rax]
    mov [rdi + rax], dl
    cmp dl, 0
    jne loop

end:
    mov rax, rsi
    ret
    
err:
    mov rax, 0
    ret
