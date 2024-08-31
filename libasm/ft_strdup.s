section .text 
        global ft_strdup
        extern malloc
        extern ft_strlen
        extern ft_strcpy

ft_strdup:
        push rbx
        xor rax, rax
        xor rbx, rbx

        call ft_strlen
        add rax, 1
        mov rbx, rdi

        mov rdi, rax

        call malloc     WRT ..plt
        test rax, rax
        jz out
        
        mov rdi, rax
        mov rsi, rbx
        call ft_strcpy

out:
        pop rbx
        ret

section .note.GNU-stack alloc
