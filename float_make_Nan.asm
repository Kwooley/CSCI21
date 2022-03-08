	.data

	.text
	.globl main
	
main:
	li	$t0, 0
	mtc1 	$t0, $f2
	cvt.s.w $f4, $f2
	div.s 	$f9, $f4, $f4 	# f9 = f5 / f4 = 0 / 0
	li 	$v0, 2		# print service floating vlaue 
	mov.s	$f12, $f9
	syscall
	