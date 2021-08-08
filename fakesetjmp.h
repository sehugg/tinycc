typedef struct jmp_buf {
    int ___;
} jmp_buf;

#define setjmp(a) 0
#define longjmp(a,b) abort()

