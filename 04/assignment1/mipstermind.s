########################################################################
# COMP1521 22T1 -- Assignment 1 -- Mipstermind!
#
#
# !!! IMPORTANT !!!
# Before starting work on the assignment, make sure you set your tab-width to 8!
# It is also suggested to indent with tabs only.
# Instructions to configure your text editor can be found here:
#   https://cgi.cse.unsw.edu.au/~cs1521/22T1/resources/mips-editors.html
# !!! IMPORTANT !!!
#
#
# This program was written by YOUR-NAME-HERE (z5555555)
# on INSERT-DATE-HERE
#
# Version 1.0 (28-02-22): Team COMP1521 <cs1521@cse.unsw.edu.au>
#
########################################################################

#![tabsize(8)]

# Constant definitions.
# DO NOT CHANGE THESE DEFINITIONS

TURN_NORMAL = 0
TURN_WIN    = 1
NULL_GUESS  = -1


########################################################################
# .DATA

# YOU DO NOT NEED TO CHANGE THE DATA SECTION

    .data

# int correct_solution[GUESS_LEN];
            .align 2
correct_solution:   .space GUESS_LEN * 4


# int current_guess[GUESS_LEN];
            .align 2
current_guess:      .space GUESS_LEN * 4


# int solution_temp[GUESS_LEN];
            .align 2
solution_temp:      .space GUESS_LEN * 4


guess_length_str:   .asciiz "Guess length:\t"
valid_guesses_str:  .asciiz "Valid guesses:\t1-"
number_turns_str:   .asciiz "How many turns:\t"
enter_seed_str:     .asciiz "Enter a random seed: "
you_lost_str:       .asciiz "You lost! The secret codeword was: "
turn_str_1:     .asciiz "---[ Turn "
turn_str_2:     .asciiz " ]---\n"
enter_guess_str:    .asciiz "Enter your guess: "
you_win_str:        .asciiz "You win, congratulations!\n"
correct_place_str:  .asciiz "Correct guesses in correct place:   "
incorrect_place_str:    .asciiz "Correct guesses in incorrect place: "

############################################################
####                                                    ####
####   Your journey begins here, intrepid adventurer!   ####
####                                                    ####
############################################################


########################################################################
#
# Implement the following 8 functions,
# and check these boxes as you finish implementing each function
#
#  - [ ] main
#  - [ ] play_game
#  - [ ] generate_solution
#  - [ ] play_turn
#  - [ ] read_guess
#  - [ ] copy_solution_into_temp
#  - [ ] calculate_correct_place
#  - [ ] calculate_incorrect_place
#  - [X] seed_rand  (provided for you)
#  - [X] rand       (provided for you)
#
########################################################################


########################################################################
# .TEXT <main>
    .text
main:
    # Args:     void
    # Returns:
    #   - $v0: int
    #
    # Frame:    [$ra, ...]
    # Uses:     [$v0, $a0, ...]
    # Clobbers: [$v0, $a0, ...]
    #
    # Locals:
    #   - [...]
    #
    # Structure:
    #   main
    #   -> [prologue]
    #   -> body
    #   -> [epilogue]

main__prologue:
    begin               # begin a new stack frame
    push    $ra         # | $ra

main__body:
    # printf("Guess length: %d\n", GUESS_LEN);
    li  $v0, 4          # syscall 4: print_string
    la  $a0, guess_length_str
    syscall             # printf("Guess length: ");

    li  $v0, 1          # syscall 1: print_int
    li  $a0, GUESS_LEN
    syscall             # printf("%d", GUESS_LEN);

    li  $v0, 11         # syscall 11: print_char
    li  $a0, '\n'
    syscall             # printf("\n");


    # printf("Valid guesses: 1-%d\n", GUESS_CHOICES);
    li  $v0, 4          # syscall 4: print_string
    la  $a0, valid_guesses_str
    syscall             # printf("Valid guesses: 1-");

    li  $v0, 1          # syscall 1: print_int
    li  $a0, GUESS_CHOICES
    syscall             # printf("%d", GUESS_CHOICES);

    li  $v0, 11         # syscall 11: print_char
    li  $a0, '\n'
    syscall             # printf("\n");


    # printf("Number of turns: %d\n\n", MAX_TURNS);
    li  $v0, 4          # syscall 4: print_string
    la  $a0, number_turns_str
    syscall             # printf("Number of turns: ");

    li  $v0, 1          # syscall 1: print_int
    li  $a0, MAX_TURNS
    syscall             # printf("%d", MAX_TURNS);

    li  $v0, 11         # syscall 11: print_char
    li  $a0, '\n'
    syscall             # printf("\n");
    syscall             # printf("\n");


    # TODO ... complete this function


main__epilogue:
    pop $ra         # | $ra
    end             # ends the current stack frame

    li  $v0, 0
    jr  $ra         # return 0;




########################################################################
# .TEXT <play_game>
    .text

play_game:
    # Args:     void
    # Returns:  void
    #
    # Frame:    [...]
    # Uses:     [...]
    # Clobbers: [...]
    #
    # Locals:
    #   - [...]
    #
    # Structure:
    #   play_game
    #   -> [prologue]
    #   -> body
    #   -> [epilogue]

play_game__prologue:
play_game__body:

    # TODO ... complete this function

play_game__epilogue:
    jr  $ra         # return;




########################################################################
# .TEXT <generate_solution>
    .text

generate_solution:
    # Args:     void
    # Returns:  void
    #
    # Frame:    [...]
    # Uses:     [...]
    # Clobbers: [...]
    #
    # Locals:
    #   - [...]
    #
    # Structure:
    #   generate_solution
    #   -> [prologue]
    #   -> body
    #   -> [epilogue]

generate_solution__prologue:
generate_solution__body:

    # TODO ... complete this function

generate_solution__epilogue:
    jr  $ra         # return;




########################################################################
# .TEXT <play_turn>
    .text

play_turn:
    # Args:
    #   - $a0: int
    # Returns:
    #   - $v0: int
    #
    # Frame:    [...]
    # Uses:     [...]
    # Clobbers: [...]
    #
    # Locals:
    #   - [...]
    #
    # Structure:
    #   play_turn
    #   -> [prologue]
    #   -> body
    #   -> [epilogue]

play_turn__prologue:
play_turn__body:

    # TODO ... complete this function

play_turn__epilogue:
    jr  $ra         # return;




########################################################################
# .TEXT <read_guess>
    .text

read_guess:
    # Args:     void
    # Returns:  void
    #
    # Frame:    [...]
    # Uses:     [...]
    # Clobbers: [...]
    #
    # Locals:
    #   - [...]
    #
    # Structure:
    #   read_guess
    #   -> [prologue]
    #   -> body
    #   -> [epilogue]

read_guess__prologue:
read_guess__body:

    # TODO ... complete this function

read_guess__epilogue:
    jr  $ra         # return;




########################################################################
# .TEXT <copy_solution_into_temp>
    .text

copy_solution_into_temp:
    # Args:     void
    # Returns:  void
    #
    # Frame:    [...]
    # Uses:     [...]
    # Clobbers: [...]
    #
    # Locals:
    #   - [...]
    #
    # Structure:
    #   copy_solution_into_temp
    #   -> [prologue]
    #   -> body
    #   -> [epilogue]

copy_solution_into_temp__prologue:
copy_solution_into_temp__body:
    # TODO ... complete this function

copy_solution_into_temp__epilogue:
    jr  $ra         # return;




########################################################################
# .TEXT <calculate_correct_place>
    .text

calculate_correct_place:
    # Args:     void
    # Returns:
    #   - $v0: int
    #
    # Frame:    [...]
    # Uses:     [...]
    # Clobbers: [...]
    #
    # Locals:
    #   - [...]
    #
    # Structure:
    #   calculate_correct_place
    #   -> [prologue]
    #   -> body
    #   -> [epilogue]

calculate_correct_place__prologue:
calculate_correct_place__body:

    # TODO ... complete this function

calculate_correct_place__epilogue:
    jr  $ra




########################################################################
# .TEXT <calculate_incorrect_place>
    .text

calculate_incorrect_place:
    # Args:     void
    # Returns:
    #   - $v0: int
    #
    # Frame:    [...]
    # Uses:     [...]
    # Clobbers: [...]
    #
    # Locals:
    #   - [...]
    #
    # Structure:
    #   calculate_incorrect_place
    #   -> [prologue]
    #   -> body
    #   -> [epilogue]

calculate_incorrect_place__prologue:
calculate_incorrect_place__body:

    # TODO ... complete this function

calculate_incorrect_place__epilogue:
    jr  $ra



########################################################################
####                                                                ####
####        STOP HERE ... YOU HAVE COMPLETED THE ASSIGNMENT!        ####
####                                                                ####
########################################################################

##
## The following are two utility functions, provided for you.
##
## You don't need to modify any of the following.
## But you may find it useful to read through.
## You'll be calling these functions from your code.
##


########################################################################
# .DATA
    .data


# int random_seed;
        .align 2
random_seed:    .space 4


########################################################################
# .TEXT <seed_rand>
        .text

# DO NOT CHANGE THIS FUNCTION

seed_rand:
    # Args:
    #   - $a0: unsigned int seed
    # Returns: void
    #
    # Frame:    []
    # Uses:     [$a0, $t0]
    # Clobbers: [$t0]
    #
    # Locals:
    # - $t0: offline_seed
    #
    # Structure:
    #   seed_rand

    li  $t0, OFFLINE_SEED     # const unsigned int offline_seed = OFFLINE_SEED;
    xor $t0, $a0        # random_seed = seed ^ offline_seed;
    sw  $t0, random_seed

    jr  $ra         # return;




########################################################################
# .TEXT <rand>
        .text

# DO NOT CHANGE THIS FUNCTION

rand:
    # Args:
    #   - $a0: unsigned int n
    # Returns:
    #   - $v0: int
    #
    # Frame:    []
    # Uses:     [$a0, $v0, $t0]
    # Clobbers: [$v0, $t0]
    #
    # Locals:
    #   - $t0: random_seed
    #
    # Structure:
    #   rand

    lw  $t0, random_seed    # unsigned int rand = random_seed;
    multu   $t0, 0x5bd1e995     # rand *= 0x5bd1e995;
    mflo    $t0
    addiu   $t0, 12345      # rand += 12345;
    sw  $t0, random_seed    # random_seed = rand;

    remu    $v0, $t0, $a0       #    rand % n
    jr  $ra         # return rand % n;
