#include <stdio.h>
#include "normal.h"

#define TURN_NORMAL 0
#define TURN_WIN 1
#define NULL_GUESS -1

void play_game(void);
void generate_solution(void);
int  play_turn(int turn);
void read_guess(void);
void copy_solution_into_temp(void);
int  calculate_correct_place(void);
int  calculate_incorrect_place(void);

// provided
void seed_rand(unsigned int seed);
int rand(unsigned int n);


int correct_solution[GUESS_LEN];
int current_guess[GUESS_LEN];
int solution_temp[GUESS_LEN];


int main(void) {
    printf("Guess length:\t%d\n", GUESS_LEN);
    printf("Valid guesses:\t1-%d\n", GUESS_CHOICES);
    printf("How many turns:\t%d\n\n", MAX_TURNS);

    int random_seed;
    printf("Enter a random seed: ");
    scanf("%d", &random_seed);

    seed_rand(random_seed);
    play_game();

    return 0;
}

// the main game loop
void play_game(void) {
    generate_solution();

    // play each of the turns
    for (int turn = 0; turn < MAX_TURNS; turn++) {
        int turn_status = play_turn(turn);

        if (turn_status == TURN_WIN) {
            return;
        }
    }

    // if the above for-loop didn't return, the player
    // must have run out of turns without succeeding
    printf("You lost! The secret codeword was: ");
    for (int i = 0; i < GUESS_LEN; i++) {
        printf("%d ", correct_solution[i]);
    }
    printf("\n");
}

// fill up correct_solution with random numbers
// we add 1 because rand(n) return 0 => (n - 1) (inclusive),
// but we want to start at 1 and end at n
void generate_solution(void) {
    for (int i = 0; i < GUESS_LEN; i++) {
        correct_solution[i] = rand(GUESS_CHOICES) + 1;
    }
}

// play a single turn.
// this also handles the congratulations
// message if the player wins
int play_turn(int turn) {
    printf("---[ Turn %d ]---\n", turn + 1);
    printf("Enter your guess: ");

    read_guess();
    copy_solution_into_temp();

    int correct_place   = calculate_correct_place();
    int incorrect_place = calculate_incorrect_place();

    if (correct_place == GUESS_LEN) {
        printf("You win, congratulations!\n");
        return TURN_WIN;
    }

    printf("Correct guesses in correct place:   %d\n", correct_place);
    printf("Correct guesses in incorrect place: %d\n", incorrect_place);

    return TURN_NORMAL;
}

// read the player's guess into current_guess
void read_guess(void) {
    for (int n_guess = 0; n_guess < GUESS_LEN; n_guess++) {
        // in MIPS, if read_int is given EOF as input,
        // it will put 0 in $v0, so this C is equivalent
        int guess = 0;
        scanf("%d", &guess);

        current_guess[n_guess] = guess;
    }
}

// copy the correct_solution into solution_temp
void copy_solution_into_temp(void) {
    for (int i = 0; i < GUESS_LEN; i++) {
        solution_temp[i] = correct_solution[i];
    }
}

// how many of the player's guesses
// were correct, in the correct location
// (i.e. the correct_solution)
int calculate_correct_place(void) {
    int total = 0;

    // for-each guess
    for (int guess_index = 0; guess_index < GUESS_LEN; guess_index++) {
        int guess = current_guess[guess_index];

        // if the solution has the same number as the guess
        // in the same location:
        if (solution_temp[guess_index] == guess) {
            total++;

            // we need to null out the guess in our current
            // guess and temporary solution so that we don't
            // accidentally count it again later
            current_guess[guess_index] = NULL_GUESS;
            solution_temp[guess_index] = NULL_GUESS;
        }
    }

    return total;
}

// how many of the player's guesses
// were correct, in the incorrect location
// (i.e. the correct_solution)
int calculate_incorrect_place(void) {
    int total = 0;

    // for-each guess
    for (int guess_index = 0; guess_index < GUESS_LEN; guess_index++) {
        int guess = current_guess[guess_index];

        // first, skip any null guesses -- i.e. guesses
        // that were previously counted as correct place
        if (guess != NULL_GUESS) {
            // for-each solution number
            for (int solution_index = 0; solution_index < GUESS_LEN; solution_index++) {
                // if the solution has the same number
                // as the guess at some location
                if (solution_temp[solution_index] == guess) {
                    total++;

                    // null out the solution value so that
                    // we don't accidentally count it again
                    solution_temp[solution_index] = NULL_GUESS;

                    // IMPORTANT: we break out of the *inner*
                    // loop here, because we only want to
                    // count the guess once
                    break;
                }
            }
        }
    }

    return total;
}


//////////////////////// PROVIDED CODE ////////////////////////


int random_seed;

// seed the random number generator
// with the given seed value
void seed_rand(unsigned int seed) {
    const unsigned int offline_seed = OFFLINE_SEED;
    random_seed = seed ^ offline_seed;
}

// return a random number between
// 0 and (n - 1) inclusive.
// *n must be greater than 0*
int rand(unsigned int n) {
    unsigned int rand = random_seed;
    rand *= 0x5bd1e995;
    rand += 12345;
    random_seed = rand;
    return rand % n;
}
