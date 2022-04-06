Q3-5
==========================================

[ ] What does `fopen` do? What are its parameters?

Where does one find such valuable information?

Take a leisurely two minutes to see if you can find the info! (2 mins ⌛).

> Hint: have a look at `$ man 3 fopen`.

What happens if you try and write (not append) to a file that already exists?

Why do we need to "open" a file?

```c
FILE* fp_1 = fopen("./some_file.txt");
FILE* fp_2 = fopen("./some_file.txt");

assert(fp_1 != fp_2);
```

[ ] What are some circumstances when `fopen` returns `NULL`?

Think failure cases!

> How do you print the specific reason that caused `fopen` to return `NULL`?

Let's first see an example of where things do not go to plan
in `./fopen_fail.c`.

If only life was as simple as calling `fopen()`.

> Look at "The icecream flavours problem" slide.
