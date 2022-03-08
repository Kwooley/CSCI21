
	.data
pr1:	.asciiz "Enter a Farenheit Degree\n"
lf:		.asciiz	"\n"
val1:	.float	32.0
val2:	.float 	5.0
val3: 	.float  9.0


	.text
	.globl main
main:
	li	$v0, 4
	la	$a0, pr1 		# print the prompt message
	syscall

	li 	$v0, 5			# Get an integer value from User
	syscall

	mtc1	$v0, $f3
	cvt.s.w $f4, $f3	# $f4 = converted floating number 

	l.s 	$f5, val1
	l.s 	$f7, val2
	l.s 	$f9, val3

	div.s 	$f7, $f7, $f9	# f7 = 5.0 / 9.0 
	sub.s 	$f5, $f4, $f5	# $f5 = input - 32
	mul.s 	$f12, $f7, $f5

	li 	$v0, 2			# print the float
	syscall
