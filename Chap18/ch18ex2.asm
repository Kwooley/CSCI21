# Exercise 2 — Significant Bits
# With an ori instruction, initialize $8 to a bit pattern that represents a positive integer. Now the program determines how many significant bits are in the pattern. The significant bits are the leftmost one bit and all bits to its right. So the bit pattern:

# 0000 0000 0010 1001 1000 1101 0111 1101
# ... has 22 significant bits. (To load register $8 with the above pattern, 0x00298D7D, use an ori followed by a left shift followed by another ori.)

.data
mask:	.word 0x80000000
val1:	.word 0x00298D7D

	.text 
	.globl main

# $t0 : bit pattern that represents a positive integer
# $t1 : loop counter
# $t2 : the number of significant bits
# $t3 : flag
# $t4 : mask
# $t5 : address of mask
# $t6 : 32

main:
	ori	$t1, $zero, 0
	ori	$t2, $zero, 0
	ori	$t3, $zero, 0
	ori 	$t6, $zero, 32

	la 	$t5, mask 	# load address of mask
	lw 	$t4, 0($t5) 	# load word from the address $t5 

	la 	$t5, val1 	# load address of val1
	lw 	$t0, 0($t5) 	# load the bit pattern to $t0

while:
	sltiu 	$t3, $t1, 32 	# loop with 32 iterations
	sll 	$zero, $zero, 0
	bnez 	$t3, endwhile

	and 	$t3, $t0, $t4  # masking
	sgtiu 	$t3, $t3, 0
	sll 	$zero, $zero, 0
	bnez 	$t3, endwhile 
	
	srl 	$t4, $t4, 1
	addi 	$t1, $t1, 1	# increase loop counter
	j 	while


endwhile:
	subi 	$t2, $t6, $t1

	li 	$v0, 10
	syscall
	

