Q7
==========================================

Write a C program, now.c, which prints the following information:

The current date.
The current time.
The current user.
The current hostname.
The current working directory.

```bash
$ gcc now.c -o now
$ ./now
29-02-2022
03:59:60
cs1521
zappa.orchestra.cse.unsw.EDU.AU
/home/cs1521/lab08
```

Hint, the following commands may be useful:
```bash
$ date +%d-%m-%Y
$ date +%T
$ whoami
$ hostname -f
$ realpath .
```
