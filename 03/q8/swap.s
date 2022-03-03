.data
	# int numbers[10] = ...
numbers:
	.word 0,1,2,3,4,5,6,7,8,9

.text

main:
	# $t0 = i
	li	$t0, 0

main_while_cond:
	# i >= 5
	li	$t1, 5
	bge	$t0, $t1, main_while_end

	# while body
	# $t2 = x
	# $t3 = y

        # int x = numbers[i];
	# calc addr
	la	$t4, numbers
	li	$t6, 4
	#	i * 4
	mul	$t5, $t0, $t6
	#	&numbers + (i * 4)
	add	$t7, $t4, $t5
	lw	$t2, 0($t7)

	# find y
        # int y = numbers[9 - i];
	li	$t6, 9
		# 9 - i
	sub	$t5, $t6, $t0
	li	$t6, 4
		# 4 * (9 - i)
	mul	$t8, $t6, $t5
		# numbers + (4 * (9 - i))
	add	$t8, $t8, $t4
	
	lw	$t3, 0($t8)

        # numbers[i] = y;
	# &numbers[i]
	sw	$t3, 0($t7)

        # numbers[9 - i] = x;
	# &numbers[9 - i]
	sw	$t2, 0($t8)

	#move	$a0, $t3
	#li	$v0, 1
	#syscall

main_while_inc:
	# i++
	addi	$t0, 1
	j	main_while_cond

main_while_end:
	li	$v0, 0
	# return 0;
	jr	$ra











