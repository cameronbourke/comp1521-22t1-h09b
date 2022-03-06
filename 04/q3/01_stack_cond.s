 # What is the drawback if we simply
 # assign the local variable buffer
 # to an $s register?

	.text
main:
	addi	$sp, -8
	sw	$ra, 4($sp)
	sw	$s0, 0($sp)

	lw	$ra, 4($sp)
	lw	$s0, 0($sp)
	addi	$sp, -8

	li	$v0, 0
	jr	$ra
