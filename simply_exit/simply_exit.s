.text

.globl _start

_start:
	movb 	$1,%al
	movb 	$0,%bl
	int 	$0x80
