

	.text
	.globl main

main:
	ori 	$t0, $zero, 0
	ori 	$t1, $zero, 0
	blt 	$t0, $t1, true

	ori		$t0, $zero 0
	li 		$v0, 10
	syscall

true:
	ori 	$t1, $zero, 0
