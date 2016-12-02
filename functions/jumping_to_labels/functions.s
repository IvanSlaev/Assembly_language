.data
	hello: .asciz, "Hello Function!\n"
.text
	.globl _start
	
	_print:
		movl 	$0x04,%eax
		movl 	$0x01,%ebx
		int 	$0x80
		movl    $1,%eax
		movl    $0,%ebx
		int     $0x80

	_start:
		nop
		leal 	hello, %ecx
		movl 	$0x10, %edx
# Once you jump to _print you must exit there or you can jump to another label with exit instructions. But you cannot return to _start label
		jmp 	_print
