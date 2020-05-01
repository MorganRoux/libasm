    global _ft_strcpy

    section .text

_ft_strcpy:
    mov rcx, 0      ; pour comparaison
    cmp rcx, rdi    ; check *dest
    je  end
    cmp rcx, rsi    ; check *src
    je  end
    mov rax, -1     ; compteur

loop:
    add rax, 1
    mov dl, [rsi + rax]
    mov [rdi + rax], dl
    cmp cl, dl
    jne loop

end:
    mov rax, rdi
    ret                 ;return dans rdi
