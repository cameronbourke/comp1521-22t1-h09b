    .data
prompt:
    .asciiz "Enter a number: "

    .text    
main:
    # x = $t0
    # y = $t1
    li      $v0, 4
    la      $a0, prompt
    syscall                 # printf("Enter a number: ");

    li      $v0, 5
    syscall
    move    $t0, $v0        # scanf("%d", &x);

    mul     $t1, $t0, $t0   # y = x * x;

    li      $v0, 1
    move    $a0, $t1
    syscall

    li      $v0, 11
    li      $a0, '\n'
    syscall                 # printf("%d\n", y);

    li      $v0, 0
    jr      $ra