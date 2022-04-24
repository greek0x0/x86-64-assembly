;subroutine to count length of string
section .data
	text db "Hello world!",10,0
	text2 db "World?",10,0

section .text
	global _start
_start:
	mov rax, text
	call _print
	mov rax, text2
	call _print
	mov rax, 60
	mov rdi, 0
	syscall

;input: rax as pointer to string
;output: print string at rax
_print:
	push rax ; push rax to stack
	mov rbx, 0 ; use rbx to count length of string
_printLoop:
	inc rax
	inc rbx
	mov cl, [rax] ;everytime we loop hold the next vaule in the string
	cmp cl, 0 ; if 0 then end of count
	jne _printLoop

	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall
	ret

