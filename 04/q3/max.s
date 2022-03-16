# Poll: How do you feel about the stack?
	.text
max:
	# Args:
	#	$a0 = int a[],
	#	$a1 = int length
	# Returns: $v0 = int
	#
        # Frame:    TODO
	# Uses:     TODO
	# Clobbers: TODO
	#
	# Locals:
	#	$s0 = int first_element;
	#	int max_so_far
	#
	# Structure:
	#   TODO

		# prologue
	begin
	push	$ra
	push	$s0

	# Look at 3 different ways to
	# calculate &a[0]:
	# https://github.com/cameronbourke/comp1521-22t1-h09b/blob/main/03/misc/calc_addr.s 

	# int first_element = a[0];
	lw	$s0, 0($a0)

max_if_len_eq_1:
	bne	$a1, 1, max_if_len_eq_1_f

max_if_len_eq_1_t:
	move	$v0, $s0
	j	max__epilogue
	
max_if_len_eq_1_f:
	# max(&a[1], length - 1);

	addi	$a0, 4 # &a[1]
	addi	$a1, $a1, -1 # length - 1
	jal	max

	# $t0 = max_so_far
	move	$t0, $v0

max_fel_gt_msf:
	ble	$s0, $t0, max_fel_gt_msf_f

max_fel_gt_msf_t:
	# max_so_far = first_element;
	move	$t0, $s0
	# set return value
	move	$v0, $t0
	j	max__epilogue
	

max_fel_gt_msf_f:
	move	$v0, $t0

max__epilogue:
		# epilogue
	pop	$s0
	pop	$ra
	end

		# return max_so_far;
	jr	$ra
