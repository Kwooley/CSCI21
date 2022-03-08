# Exercise 1 — Sum of Evens; Sum of Odds
# Write a program that computes three sums:

# 1 + 2 + 3 + 4 + ... + 99 + 100

# 1 + 3 + 5 + 7 + ... + 97 + 99

# 2 + 4 + 6 + 8 + ... + 98 + 100
# Use a register (say $8) for the sum of evens, a register (say $9) for the sum of odds, and another (say $10) for the sum of all numbers.
# Do this with one counting loop. The loop body contains logic to add the count to the proper sums.

	.text
	.globl main

# 	$t0: sum of even
#	$t1: sum of odd
#	$t2: sum of all numbers
#	$t3: loop counter
#	$t4: flag

main:
	ori 	$t0, $zero, 0
	ori 	$t1, $zero, 0
	ori 	$t2, $zero, 0
	ori 	$t3, $zero, 1

while:
	sleiu 	$t4, $t3, 100
	beqz 	$t4, endwhile
	sll	$zero, $zero, 0
	andi	$t4, $t3, 1
	bnez 	$t4, oddsum:
	sll 	$zero, $zero, 0
	add 	$t0, $t0, $t3
oddsum:
	add 	$t1, $t1, $t3
	add 	$t2, $t2, $t3
	addi 	$t3, $t3, 1
	j 	while 

endwhile: