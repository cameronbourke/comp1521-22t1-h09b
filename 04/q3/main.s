# some test code which calls max
main:
    addi $sp, $sp, -4  # create stack frame
    sw   $ra, 0($sp)   # save return address

    la   $a0, array
    li   $a1, 10
    jal   max    #

    move  $a0, $v0     # printf ("%d")
    li    $v0, 1
    syscall

    li   $a0, '\n'     # printf("%c", '\n');
    li   $v0, 11
    syscall

                       # clean up stack frame
    lw   $ra, 0($sp)   # restore $ra
    addi $sp, $sp, 4   # restore sp

    li  $v0, 0         # return 0
    jr  $ra


.data
array:
    .word 2, 3, 4, 5, 5, 6, 4, 3, 2, 1
	
