	.data
a:	.word	42
b:	.space	4
c:	.asciiz	"abcde"
d:	.byte	1, 2, 3, 4
	.align	2 # 2^2 = 4
e:	.word	1, 2, 3, 4
f:	.space	1

	.text
main:
	li	$v0, 0
	jr	$ra		# return 0;
