## Program to represent 1.0

        .data
val1: 	.word 0x414A028F
val2: 	.float 12.6256256

	.text
        .globl  main

main:
	li $v0, 2 	# print floating value service code
	lwc1 $f12, val1
	syscall
	lwc1 $f12, val2
	syscall

## End of file