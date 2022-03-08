
		.data
array: 	.space 10 	# reserve the space for 4 bytes x 25 items = 100 bytes


		.text
		.globl main

# $t0 : count

main:
		ori 	$t0, $0, 0
		slti 	$t1, $t0, 10
		beqz   	$t1, endloop



endloop:

