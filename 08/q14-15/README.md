Q14-15
==========================================

[ ] 14. Consider the `lseek` function 🔭.

a. What is its purpose?

b. When would it be useful?

c. What does its return value represent?


[ ] 15. Calculating offsets 🧮.

Consider a file of size `10000` bytes,
open for reading on file descriptor fd,
initially positioned at the start of the file (offset 0).

What will be the file position after each of these calls to `lseek()`?

Assume that they are executed in sequence,
and one will change the file state that the next one deals with.

> Have a look at `./seek.c`

> Step through `./seek.c` with `gbd`

[GDB cheat sheet](https://gist.github.com/rkubik/b96c23bd8ed58333de37f2b8cd052c30)
