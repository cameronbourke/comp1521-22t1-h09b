
.data
numbers:
	.word 1, 2, 3, 4, 5

.text

main:
	# &numbers[i] = &numbers + (i * 4)
	
	# $t0 = i
	# $t3 = x
	li	$t0, 2

	# Approach 1
	# desc: No pseudo instructions
	# number registers: 2
	# number instructions: 5
	# number real instruction: 8
	la	$t1, numbers		# $t1 = &numbers
	li	$t2, 4			# $t2 = 4
	mul	$t2, $t0, $t2		# $t2 = i * 4
	add	$t1, $t1, $t2		# $t1 = &numbers + (i * 4)
	# ------
	lw	$t3, 0($t1)		# $t3 = numbers[i]

	# Approach 2
	# desc: with psuedo instruction(s), namely multiply with immediate
	# number registers: 2
	# number instructions: 4
	# number real instruction: 7
	la	$t1, numbers		# $t1 = &numbers
	mul	$t2, $t0, 4		# $t2 = i * 4
	add	$t1, $t1, $t2		# $t1 = &numbers + (i * 4)
	# ------
	lw	$t3, 0($t1)		# $t3 = numbers[i]

	# Approach 3
	# desc: using offset
	# number registers: 1
	# number instructions: 2
	# number real instruction: 7
	mul	$t1, $t0, 4		# $t2 = i * 4
	# ------
	lw	$t3, numbers($t1)	# $t3 = numbers[i]
	
	li	$v0, 0
	jr	$ra
