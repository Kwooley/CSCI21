
	.text
	.globl main


#		$t0 : a
#		$t1 : b
#		$t2 : 10

main:
	ori 	$t0, $zero, 0
	ori	$t1, $zero, 0
	ori	$t2, $zero, 10

dowhile:
	add	$t1, $t0, $t1
	addi	$t0, $t0, 1
	blt	$t0, $t2, dowhile

	li		$v0, 10			# stop program
	syscall
