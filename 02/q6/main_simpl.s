	.data
prompt:
	.asciiz "Enter a number: "
msg_med:
	.asciiz "medium\n"
msg_small_big:
	.asciiz "small/big\n"

	.text
main:
	# $t0 = x
	# int x = 0
	li	$t0, 0

	li	$v0, 4
	la	$a0, prompt
	# printf("Enter a number: ");
	syscall

	li	$v0, 5
	syscall
	# scanf("%d", &x);
	move $t0, $v0

	
	li	$t1, 100	
	# if (x <= 100) goto small_big
	ble	$t0, $t1, small_big

	li	$t1, 1000
	# if (x >= 1000) goto small_big
	bge	$t0, $t1, small_big

	li	$v0, 4
	la	$a0, msg_med
	# printf("medium\n");
	syscall

	# goto end;
	j	end

small_big:
	li	$v0, 4
	la	$a0, msg_small_big
	# printf("small/big\n");
	syscall

end:
	jr	$ra
	

	
	
	
