%include 'functions.asm'


SECTION .data 
msg1 db 'Hello, brave new world!',0h
msg2 db 'This is how we recycle in NASM',0h

SECTION .text
global _start

_start:


	mov rax, msg1
	call sprintLF

	mov rax, msg2
	call sprintLF

	call quit



