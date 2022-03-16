
main:
	# prologue
	begin			# sets up stackframe

	push	$ra		# addi	$sp, -4
				# sw	$ra, 0($sp)

	push	$s0		# addi	$sp, -4
				# sw	$s0, 0($sp)

	push	$s1		# addi	$sp, -4
				# sw	$s0, 0($sp)


if_cond_t:
	# if (cond) {
	#	return 42;
	# }
	li	$v0, 42
	j	main__epilogue

main__epilogue:
	pop	$s1		# lw	$s1, 0($sp)
				# addi	$sp, 4

	pop	$s0		# lw	$s1, 0($sp)
				# addi	$sp, 4

	pop	$ra		# lw	$s1, 0($sp)
				# addi	$sp, 4

	end			# teardown stack frame

	# return 
	jr	$ra
