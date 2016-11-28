section .text
	global _start
_start:
	mov eax,4 	; syscall ID: sys_write
	mov ebx,1 	; file desc for stdout
	mov ecx,string 	; string address
	mov edx,length 	; string length
	int 80h 	; sys call
	mov eax,1 	; sys call ID: sys_exit
	mov ebx,0 	; exit code 0: no error
	int 80h 	; sys call

section .data
string:  db 'Hello, world',0Ah ;output string
length: equ 13
