    global ft_strlen

    section .text

ft_strlen:             ;calling convention : see nasm tutorial
    mov rcx, 0          ; pour comparaison
    cmp rcx, rdi
    je  end
    mov rax, -1         ; compteur
loop: 
    add rax, 1
    cmp cl, [rdi + rax]
    jne loop

end:
    ret                 ; return in rax
