section .data
	text1 db "What is your name?: "
	text2 db "Hello, "

section .bss
	name resb 16

section .text
	global _start

_start:

	call _print_text1
	call _get_name
	call _print_text2
	call _print_name

	mov rax, 60
	mov rdi, 0
	syscall

_print_text1:
	mov rax, 1
	mov rdi, 1
	mov rsi, text1
	mov rdx, 20
	syscall
	ret

_get_name:
	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, 16
	syscall
	ret

_print_text2:
	mov rax, 1
	mov rdi, 1
	mov rsi, text2
	mov rdx, 7
	syscall
	ret

_print_name:
	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 16
	syscall
	ret
