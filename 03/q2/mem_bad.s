	# mipsy vs spim
	.data
a:	.word	42
b:	.space	4
c:	.asciiz	"abcde"
d:	.byte	1, 2, 3, 4
	# <-- hint
e:	.word	1, 2, 3, 4
f:	.space	1

	.text
main:
	li	$v0, 0
	jr	$ra		# return 0;
