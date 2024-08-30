section .text 
        global ft_strcpy

ft_strcpy:
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
        ret

section .note.GNU-stack noalloc progbits
