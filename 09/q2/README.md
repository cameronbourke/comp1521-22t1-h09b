Q2
==========================================

The `stat()` and `lstat()` functions both take an argument
which is a pointer to a struct stat object,
and fill it with the meta-data for a named file.

On Linux, a struct stat contains the following fields
(among others, which have omitted for simplicity):

```c
struct stat {
    ino_t st_ino;         /* inode number */
    mode_t st_mode;       /* protection */
    uid_t st_uid;         /* user ID of owner */
    gid_t st_gid;         /* group ID of owner */
    off_t st_size;        /* total size, in bytes */
    blksize_t st_blksize; /* blocksize for filesystem I/O */
    blkcnt_t st_blocks;   /* number of 512B blocks allocated */
    time_t st_atime;      /* time of last access */
    time_t st_mtime;      /* time of last modification */
    time_t st_ctime;      /* time of last status change */
};
```

Explain what each of the fields represents.

> Look and run `./stat.c`

```
$ ./bin/stat stat.c
```

But! We can also save ourselves the trouble of
writing a `C` program and use the `stat` command!

```bash
$ stat stat.c
```

### Questions 🕺
- How to find the `inode` number for `stat.c`?
- How to change the `mode` (permissions) of `stat.c`? 
	- Namely, how to give the group write permission?
		- How about using `octal` instead?
- How to create a new user and assign them as the owner of `stat.c`?
- How to create a new group and assign it as the group? 
- How to change `atime` w/o changing `mtime` or `ctime`?
- How to change `mtime` w/o changing `atime` or `ctime`?
- How to change `ctime` w/o changing `atime` or `mtime`?

> Trivia: In what year will Unix time run out?
