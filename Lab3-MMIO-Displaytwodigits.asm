# Lab 2 MMIO : Memory Mapped I/O ; Display two digits
# 

		.data
num:	.word	2
uint:	.word 	10
value: 	.word 	42 	# this decimal value will be displayed with MMIO

		.text
		.globl main

main:
		lw		$t9, num	# $t9 = Number of digits(2)
		lui		$t0, 0xffff	# load upper immediate
		lw		$v1, value	# v1 = 42
		lw		$t7, uint

wr_wait:
		lw		$t1, 8($t0)
		andi	$t1, $t1, 0x0001
		beq		$t1, $zero, wr_wait

		sub 	$t9, $t9, 1
		beq		$t9, $zero, lastdigit
		div		$v1, $t7	# 42 / 10 ; Hi contains the remainder, Lo contains quotient
		mflo	$v0			# quotient moved into $v0
		add		$v0, $v0, 48
		sw		$v0, 12($t0)
		b 		wr_wait

lastdigit:
		div		$v1, $t7 	# 42 / 4 ; Hi contains the remainder, Lo contains quotient
		mfhi	$v0			# the remainder moved into $v0
		add		$v0, $v0, 48
		sw		$v0, 12($t0)

		li      $v0,10              # code 10 == exit
        syscall                     # Return to OS.

