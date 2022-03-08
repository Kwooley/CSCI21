	.data
val1:	.word	0x3f800000  # 1.0

	.text
	.globl main
	
main:
	l.s	$f5, val1 	# load
	li	$t0, 0
	mtc1 	$t0, $f2
	cvt.s.w $f4, $f2
	div.s 	$f9, $f5, $f4 	# f9 = f5 / f4
	li 	$v0, 2		# print service floating vlaue 
	mov.s	$f12, $f9
	syscall
	