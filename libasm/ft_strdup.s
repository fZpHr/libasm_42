section .text 
        global ft_dup
        extern malloc
        extern ft_strlen
        extern ft_strcpy

ft_dup:
        push rbx
        xor rax, rax
        xor rdx, rdx
        xor rcx, rcx
        
        mov rax, rdi
loop:
        cmp BYTE [rsi + rdx], 0
        je out
        mov cl, [rsi + rdx]
        mov [rdi + rdx], cl
        inc rdx
        jmp loop
out:
        mov BYTE [rdi + rdx], 0
        pop rbx
        ret

section .note.GNU-stack noalloc progbits
