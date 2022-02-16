
	.text
main:
	la	$a0, msg
	li	$v0, 4
	syscall

	li	$v0, 0
	jr	$ra

	.data
msg:
.asciiz	"Hello World\n"
