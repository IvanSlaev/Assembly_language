.data
	hello: .asciz, "Hello Function!\n"
.text
	.globl _start
	
	.type _print, @function
	
	_print:
		movl 	$0x04,%eax
		movl 	$0x01,%ebx
		int 	$0x80
		ret

	_exit:
		movl    $1,%eax
		movl    $0,%ebx
		int     $0x80

	_start:
		nop
		leal 	hello, %ecx
		movl 	$0x10, %edx
		call 	_print
		call 	_exit
