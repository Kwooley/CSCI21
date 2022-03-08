	.data
val1:	.word	0x7f7fffff  # largest normalized positive number

	.text
	.globl main
	
main:
	l.s	$f5, val1 	# load
	li	$t0, 10000000000000000 
	mtc1 	$t0, $f2
	cvt.s.w $f4, $f2
	add.s 	$f9, $f5, $f4 	# f12 = f5 + f4
	li 	$v0, 2		# print service floating vlaue 
	mov.s	$f12, $f9
	syscall
	