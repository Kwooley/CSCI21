	.data
val1:	.word	0x00800000  # smallest normalized positive number
val2: 	.word	0x00700000  # largest denormalized positive number

	.text
	.globl main
	
main:
	lwc1	$f5, val1 	# load
	lwc1	$f7, val2 	
	sub.s 	$f12, $f5, $f7 	# f12 = f5 - f7
	li 	$v0, 2		# print service floating vlaue
	syscall
	