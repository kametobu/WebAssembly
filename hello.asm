section .text
global main

extern helloworld
extern javascript
extern println
extern exit
extern array_frases
extern eprintf
extern allocate
extern deallocate
extern indexhtml
extern lendoarquivo
extern abrirarquivo
extern lerdados
endereco:
	db `endereco do malloc eh %p\n`, 0
main:
	;mov rsi, helloworld
	;call println
	;mov rsi, javascript
    ;call println
	;mov rsi, [array_frases]
	;call println
	;mov rsi, [array_frases + 8]
	;call println
	mov rdi, 16
	call allocate

	mov [tempend], rax
	mov rax,0

	mov rdi, endereco
	mov rsi, [tempend]
	mov rax, 0
	call eprintf

	push rsi
	push rdx
	mov rdi, [array_frases]
	mov rsi, 100
	mov rdx, helloworld
	mov rax, 0
	call eprintf
	pop rsi
	pop rdx

	mov rdi, [tempend]
	call deallocate

	mov rdi, lendoarquivo
	mov rax, 0
	mov rsi, indexhtml
	call eprintf

	mov rdi, indexhtml
	call abrirarquivo

	mov [arquivoaberto], rax
	mov rax, 0

	mov rdi, 1024
	call allocate
	mov [tempend], rax

	mov rdi, [tempend]
	mov rsi, 1023
	mov rdx, [arquivoaberto]
	call lerdados

	mov rdi, [tempend]
	mov rsi, 0
	mov rax, 0
	call eprintf
	
	call exit

section .data
tempend:
	dq 0
arquivoaberto:
	dq 0