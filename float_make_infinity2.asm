	.data
val1:	.word	0x7f7fffff  # largest normalized positive number
val2: 	.float 	1.0e3

	.text
	.globl main
	
main:
	l.s	$f5, val1 	# load
	l.s	$f7, val2
	mul.s 	$f9, $f5, $f7 	# f9 = f5 * f7
	li 	$v0, 2		# print service floating vlaue 
	mov.s	$f12, $f9
	syscall

