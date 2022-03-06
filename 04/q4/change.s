	.data
M:  	.word	1, 2, 3, 4
    	.word	3, 4, 5, 6
    	.word	5, 6, 7, 8


	.text
change:


main:
	li	$a0, 3
	li	$a1, 4
	li	$a2, M
	li	$a3, 2
	jal	change

	# Use mipsy web to view data
	# segment to check whether it
	# worked or not:
	# https://cs1521.web.cse.unsw.edu.au/mipsy/
