Q1
==========================================

Write a C program, `print_diary.c`,
which prints the contents of the file `$HOME/.diary`
to `stdout`. The lecture example `getstatus.c` shows how
to get the value of an environment variable.

> `snprintf` is a convenient function for constructing
	the pathname of the diary file.

```c
#include <stdio.h>
#include <stdlib.h>

// simple example of accessing an environment variable
int main(void) {
    // print value of environment variable STATUS
    char* value = getenv("STATUS");
    printf("Environment variable 'STATUS' has value '%s'\n", value);
    return 0;
}
```

Sometimes it is easier to think to solve the problem
in `bash`, and then convert to `C` from there!

In this case, we could solve the problem by running:

```bash
$ cat ~/.diary
```

Is that it? Yep! Only 12 characters needed. If only
it was the same when we implement this in C 😄.

We can expand the `~` symbol to reveal a little bit
more of the work that is required of us.

```bash
$ cat $HOME/.diary
```

Okay, perfect! So we need to:

1. Get the value for the env var `$HOME`
2. Construct a filepath by joining together `$HOME` and `/.diary`.
3. Open the file `$HOME/.diary`.
3. Read a byte of `$HOME/.diary`.
4. Write a byte to `stdout`.
5. Repeat steps 3-4 until no bytes left.

> Trivia: what does the `cat` command stand for?
