## Program to represent 1.0

        .data
val1: 	.float 0.000000001
val2: 	.float 0.0000000001        



	.text
        .globl  main

main:
	li $v0, 2 	# print floating service code
	lwc1 $f12, val1
	syscall
	lwc1 $f12, val2
	syscall


## End of file