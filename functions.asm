section .text

extern linebreak

global exit
exit:
        mov rax, 60
        xor rdi, 0
        syscall
global print
print:
        push rax
        push rsi
        call strlen
        pop rsi

        mov rdi, 1
        mov rdx, rax
        mov rax, 1
        syscall
        pop rax
        ret
global println
println:
        push rsi
        call print
        mov rsi, linebreak
        call print
        pop rsi
        ret
global strlen
strlen:
        push rbx
        mov rbx, 0
global loopstart
loopstart:
        mov rax, 0
        lodsb
        test ax,ax
        jz loopout
        inc rbx
        jmp loopstart
global loopout
loopout:
        mov rax, rbx
        pop rbx
        ret
