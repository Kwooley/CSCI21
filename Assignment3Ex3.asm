

	.text
	.globl main

#	$t0: the previous term
#	$t1: the current term
#	$t2: the new term
#	$t3: count
#	$t4: 10

main:

	ori	$t0, $zero, 1
	ori	$t1, $zero, 1
	ori $t2, $zero, 0
	ori $t3, $zero, 0
	ori $t4, $zero, 10

while:
	add 	$t2, $t1, $t0
	move 	$t0, $t1
	move 	$t1, $t2

	addi	$t3, $t3, 1
	blt		$t3, $t4, while

	li 		$v0, 10
	syscall

