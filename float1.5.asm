     .data
val1:    .float    1.5

	.text
        .globl  main

main:
	li $v0, 2 	# print floating service code
	lwc1 $f12, val1
	syscall
## End of file