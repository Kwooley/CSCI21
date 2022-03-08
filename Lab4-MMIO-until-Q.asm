	.text
	.globl main
main:
	addi $s0, $0, 113 		# q key
	lui $t0, 0xFFFF 		# $t0 = 0xFFFF0000;

waitloop: 
	lw $t1, 0($t0)
	andi $t1, $t1, 0x0001
	beq $t1, $zero, waitloop
	
	lw $a0, 4($t0)
	beq $a0, $s0, done
	li $v0,1
	syscall
	
	li $v0,4
	la $a0, lf
	syscall
	j waitloop

done: 
	la	$a0, msg
	syscall
	li $v0, 10 # exit
	
	.data
msg: .asciiz "q typed: program terminted\n"
lf:	.asciiz	"\n"			# linefeed
