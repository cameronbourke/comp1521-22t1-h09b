	.text
max:
		# prologue
	addi	$sp, $sp, -20
	sw	$ra, 16($sp)
		# $s0 = a[]
	sw	$s0, 12($sp)	
		# $s1 = length
	sw	$s1, 8($sp)	
		# $s2 = first_element
	sw	$s2, 4($sp)	
		# $s3 = max_so_far
	sw	$s3, 0($sp)

	move	$s0, $a0
	move	$s1, $a1

		# first_element = a[0]
	lw	$s2, ($s0)	

max_if_len_eq_1:
		# if (length == 1)
	bne	$s1, 1, max_if_len_eq_1_f 
	move	$v0, $s2
		# return first_element;
	j	max_return
		# }

max_if_len_eq_1_f:				
		# calculate &a[1]
	addi	$a0, $s0, 4
		# length - 1
	addi	$a1, $s1, -1	
		# max(&a[1], length - 1);
	jal	max		
		# max_so_far = max(&a[1], length - 1);
	move	$s3, $v0	

max_if_fel_gt_msf:
		# if (first_element > max_so_far) {
	ble	$s2, $s3, max_if_fel_gt_msf_f

max_if_fel_gt_msf_t:
		# max_so_far = first_element
	move	$s3, $s2
	move	$v0, $s3
	j	max_return

max_if_fel_gt_msf_f:
	move	$v0, $s3

max_return:
		# epilogue
	lw	$ra, 16($sp)
	lw	$s0, 12($sp)	
	lw	$s1, 8($sp)	
	lw	$s2, 4($sp)	
	lw	$s3, 0($sp)
	addi	$sp, $sp, 20
	jr	$ra
