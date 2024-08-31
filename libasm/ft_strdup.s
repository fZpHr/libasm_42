section .text 
        global ft_strdup
        extern malloc
        extern ft_strlen
        extern ft_strcpy

ft_strdup:
        xor rax, rax
        xor r12, r12

        call ft_strlen
        add rax, 1
        mov r12, rdi

        mov rdi, rax

        call malloc     WRT ..plt
        test rax, rax
        jz out
        
        mov rdi, rax
        mov rsi, r12
        call ft_strcpy

out:
        ret

section .note.GNU-stack alloc
