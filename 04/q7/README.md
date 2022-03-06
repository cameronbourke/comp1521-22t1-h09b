Q7
==========================================

For each of the following struct definitions,
what are the likely offset values for each field,
and the total size of the struct:

a)
```c
struct _coord {
    double x;
    double y;
};
```

b)
```c
typedef struct _node Node;
struct _node {
    int value;
    Node *next;
};
```

c)
```c
struct _enrolment {
    int stu_id;         // e.g. 5012345
    char course[9]:     // e.g. "COMP1521"
    char term[5];       // e.g. "17s2"
    char grade[3];      // e.g. "HD"
    double mark;        // e.g. 87.3
};
```

d)
```c
struct _queue {
    int nitems;     // # items currently in queue
    int head;       // index of oldest item added
    int tail;       // index of most recent item added
    int maxitems;   // size of array
    Item *items;    // malloc'd array of Items
};
```

Both the offsets and sizes should be in units of number of bytes.

