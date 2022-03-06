	.text
main:
	addi	$sp, -20
	sw	$ra, 12($sp)
	sw	$s0, 8($sp)
	sw	$s1, 4($sp)

		# int a = 10
	li	$s0, 10
		# $s0 = a

		# int b = 30
	li	$s1, 30
		# $s1 = b

		# push a onto the stack
	addi	$sp, -4
	sw	$s0, 0($sp)
		# int c = 40
	li	$s0, 40
		# $s0 = c

		# push c onto the stack
	addi	$sp, -4
	sw	$s0, 0($sp)

		# load a from stack
	lw	$s0, 4($sp)
		# $s0 = a
		# $s1 = b
	add	$s0, $s0, $s1
		# $s0 = a + b
		# $s0 = d

		# pop c from stack
	lw	$s1, 0($sp)
	addi	$sp, 4

		# $s0 = d
		# $s1 = c
	add	$v0, $s0, $s1
		# $v0 = d + c

		# still have a on stack
		# so pop a from stack
	addi	$sp, 4

main_return:
	lw	$ra, 12($sp)
	lw	$s0, 8($sp)
	lw	$s1, 4($sp)
	addi	$sp, 16

	jr	$ra
	
