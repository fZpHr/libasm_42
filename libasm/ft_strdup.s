section .text 
        global ft_strdup
        extern malloc
        extern ft_strlen
        extern ft_strcpy

ft_strdup:
        xor rax, rax
        xor rsi, rsi

        call ft_strlen
        add rax, 1
        mov rsi, rdi

        mov rdi, rax
        xor rax,rax

        call malloc
        test rax, rax
        jz out
        
        mov rdi, rax
        call ft_strcpy

out:
        ret

section .note.GNU-stack alloc
