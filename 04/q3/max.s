# Poll: How do you feel about the stack?
	.text
max:
	# Args:
	#	TODO
	# Returns: TODO
	#
        # Frame:    TODO
	# Uses:     TODO
	# Clobbers: TODO
	#
	# Locals:
	#	TODO
	#
	# Structure:
	#   TODO

		# prologue
	begin
	push	$ra

	# Look at 3 different ways to
	# calculate &a[0]:
	# https://github.com/cameronbourke/comp1521-22t1-h09b/blob/main/03/misc/calc_addr.s 

		# epilogue
	pop	$ra
	end

		# return max_so_far;
	li	$v0, #TODO
	jr	$ra
