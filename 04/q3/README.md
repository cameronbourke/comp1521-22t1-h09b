Q3
==========================================

### The Classic Translation Exercise

Translate this C program to MIPS assembler.

```c
int max(int a[], int length) {
    int first_element = a[0];
    if (length == 1) {
        return first_element;
    } else {
        // find max value in rest of array
        int max_so_far = max(&a[1], length - 1);
        if (first_element > max_so_far) {
            max_so_far = first_element;
        }
        return max_so_far;
    }
}
```

```
--------------------------------------------
| Imagine there are only 2 $s regs?,       |
| how would you handle >2 local variables? |
--------------------------------------------
```

> Go to `./max.s`

### When the Stack is Spreadsheet

Okay. Now, that we are finished,
how can we visualise the stack?
Let's head back [to the spreadsheets](https://docs.google.com/spreadsheets/d/1sjvZ7dwefDgaIl3a-xvd6pArYb260kH7Ra8bzCeXZVc/edit?usp=sharing)!

### A Needle in a Haystack

Now, there appears to be a version called `max_broken.s`
floating around that doesn't appear to be working properly.
If you run:

```bash
$ 1521 mipsy max_broken.s main.s
```

it always return `1`, when the correct answer is `6`.

I think it's time to get the debugger out!
As a team, using `mipsy` try and work out what's going wrong 🕵️.

> Breakout rooms (⏳ ~10 mins)

.
.
.
.
.
.

Let's now see together how you could find it!

### Stack Allocation

The approach of using `$s` registers for any local
variables is convenient. However, what is the
drawback of this approach?

> `./01_stack_cond.c`?

"I've got 99 problems and not enough regs is one" - Nobody

```
--------------------------------------------
| Imagine there are only 2 $s regs?,       |
| how would you handle >2 local variables? |
--------------------------------------------
```

> Let's have a look at `./02_two_reg.c`

Hang on, why do we need to worry about
this contrived case? Well, the `C` compiler
has this exact problem when a function
uses more than 10 local variables!

The only difference is that the compiler
employes the help of an [algorithm](https://www.inf.ed.ac.uk/teaching/courses/copt/lecture-7.pdf) to work that out!

Enjoying the details? I think you'd like [COMP3131](https://www.handbook.unsw.edu.au/undergraduate/courses/2022/COMP3131).

