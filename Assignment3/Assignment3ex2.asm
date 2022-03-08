
	.text
	.globl main

# $t0 : count
# $t1 : sum of odd numbers
# $t2 : sum of even numbers
# $t3 : 10

main:
	ori		$t0, $zero, 0
	ori		$t1, $zero, 0
	ori		$t2, $zero, 0
	ori		$t3, $zero, 10

while: 
		addi 		$t0, $t0, 1
		andi		$t4, $t0, 1
		beq			$t4, $zero, evensum
		add 		$t1, $t1, $t0
		j 			endif
evensum:
		add 		$t2, $t2, $t0
endif:
		blt $t0, $t3, while
	
	li $v0, 10
	syscall
