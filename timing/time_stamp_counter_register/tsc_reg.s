
.text
	.globl _start
	
	.type _print, @function
	
	_print:
		movl 	$0x04,%eax
		movl 	$0x01,%ebx
		int 	$0x80
		ret

	_start:
		nop
		call 	_print
		movl 	$0x01,%eax
		movl 	$0x00,%ebx
		int 	$0x80
