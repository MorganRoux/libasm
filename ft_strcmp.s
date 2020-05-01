    global _ft_strcmp

    section .text

_ft_strcmp:
    mov rcx, 0      ; pour comparaison
    cmp rcx, rdi    ; check *str1
    je  end
    cmp rcx, rsi    ; check *str2
    je  end
    mov rax, -1     ; compteur
    mov rdx, 0

loop:
    inc rax
    mov dl, [rdi + rax]
    mov cl, [rsi + rax]
    sub rdx, rcx
    jne end
    cmp rcx, 0
    jne loop

end:
    mov rax, rdx
    ret             ; return in rax
