	.text
main:
		# prologue
	addi	$sp, -16
	sw	$ra, 12($sp)
	sw	$s0, 8($sp)
	sw	$s1, 4($sp)

		# epilogue
	lw	$ra, 12($sp)
	lw	$s0, 8($sp)
	lw	$s1, 4($sp)
	addi	$sp, 16

		# return 0
	li	$v0, 0
	jr	$ra
	
