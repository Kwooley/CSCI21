
	.text
	.globl main

main:
	ori 	$t0, $zero, 0
	ori		$t1, $zero, 0
	ble		$t0, $t1, true

	li 		$v0, 10
	syscall

true:
	addi	$t0, $t0, 10
