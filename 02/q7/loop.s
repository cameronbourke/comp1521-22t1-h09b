	.text
main:
	# x = $t0
	li	$t0, 24

main_while_cond:
	li	$t1, 42
	# x >= 42
	bge	$t0, $t1, main_while_end
	# body
	li	$v0, 1
	move	$a0, $t0
	# printf("%d",x);
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall
	# putchar('\n');

	# increment step
	# x += 3;
	addi	$t0, $t0, 3

	j	main_while_cond

main_while_end:
	li	$v0, 0
	# return 0
	jr	$ra
	
