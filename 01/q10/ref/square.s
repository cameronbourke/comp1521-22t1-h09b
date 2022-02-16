	.data
msg:
	.asciiz	"Enter a number\n"

	.text
main:
	# x = $t0, y = $t1
	la	$a0, msg
	li	$v0, 4
	# printf("Enter a number\n");
	syscall			

	li	$v0, 5
	# scanf("%d", &x);
	syscall
	move	$t0, $v0

	mul	$t1, $t0, $t0
	# y = x * x

	move	$a0, $t1
	li	$v0, 1
	syscall
	# printf("%d", y);

	li	$a0, '\n'
	li	$v0, 11
	syscall
	# printf("\n");

	li	$v0, 0
	# return 0
	jr	$ra
