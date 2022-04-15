#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>

void stat_file(char *pathname);

int main(int argc, char *argv[]) {
    for (int arg = 1; arg < argc; arg++) {
        stat_file(argv[arg]);
    }
    return 0;
}

void stat_file(char *pathname) {
    printf("stat(\"%s\", &s)\n", pathname);

    struct stat s;
    if (stat(pathname, &s) != 0) {
        perror(pathname);
        exit(1);
    }

    printf("st_ino     = %10ld # Inode number\n", s.st_ino);
    printf("st_mode    = %10o # File mode \n", s.st_mode);
    printf("st_uid     = %10u # Owner uid\n", s.st_uid);
    printf("st_gid     = %10u # Group gid\n", s.st_gid);
    printf("st_size    = %10ld # File size (bytes)\n", (long)s.st_size);
    printf("st_blksize = %10ld # Block size (bytes)\n", (long)s.st_blksize);
    printf("st_blocks  = %10ld # Number of blocks allocated\n", (long)s.st_blocks);
    printf("st_atime   = %10ld # Time of last access\n", (long)s.st_atime);
    printf("st_mtime   = %10ld # Time of last modification\n", (long)s.st_mtime);
    printf("st_ctime   = %10ld # Time of last status change\n", (long)s.st_ctime);
}
delete me
