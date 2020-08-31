    global ft_strdup
    extern malloc

    section .text
ft_strdup:
	
;rdi : adresse de la string à dupliquer
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
; taille à allouer dans rdi, adresse de la mémoire allouée retournée dans rsi
; nombre d'octet alloués dans rax
    call malloc
    pop rsi

    cmp rax, 0
    je  err
    mov rdi, rax
    mov rax, -1

dup_loop:
    inc rax
    mov dl, [rsi + rax]
    mov [rdi + rax], dl
    cmp dl, 0
    jne dup_loop

end:
;on retourne l'adresse si tout se passe bien
    mov rax, rsi
    ret

;sinon on retourne zero
err:
    mov rax, 0
    ret
