# Lab 2 MMIO : Memory Mapped I/O

		.data
num:	.word	2

		.text
		.globl main

main:
		lw		$t9, num	# $t9 = Number of digits(2)
		lui		$t0, 0xffff	# load upper immediate
rd_wait:
		lw		$t1, 0($t0)
		andi 	$t1, $t1, 0x0001 	# test the Receiver control register has 1 in LSB # ready?
		beq		$t1, $zero, rd_wait # if LSB is 0, branch rd_wait
		lw		$s0, 4($t0)			# if LSB is 1, read a character from I/O device
		
		sub 	$s0, $s0, 48	# s0 = v0 - 48
		sub		$t9, $t9, 1
		beq 	$t9, $zero, readall 

		mul 	$s1, $s0, 10	# It is the first digit among two digits
		b 		rd_wait

readall:		
		add		$a0, $s1, $s0
		# print 
		li 		$v0, 1
		syscall 


		li      $v0,10              # code 10 == exit
        syscall                     # Return to OS.

