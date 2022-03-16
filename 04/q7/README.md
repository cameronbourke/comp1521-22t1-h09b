Q7
==========================================

For each of the following struct definitions,
what are the likely offset values for each field,
and the total size of the struct:

a)
```c
struct _coord {
    double x; // 0
    double y; // 8
};
```



b)
```c
typedef struct _node Node;
struct _node {
    int value;	// 0
    Node* next; // 4
};
```

c)
```c
struct _enrolment {
    int stu_id;         // 0
    char course[9]:     // 4
    char term[5];       // 13
    char grade[3];      // 18
    double mark;        // 24
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

