#include <stdio.h>

void print_array(int nums[], int nums_len, int index) {
    // base case
    if (index > (nums_len - 1)) {
        return;
    }

    // recursive case
    print_array(nums, nums_len, index + 1);
    printf("%d\n", nums[index]);
}

int main(void)
{
    int nums[] = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3};
    print_array(nums, 10, 0);
    return 0;
}