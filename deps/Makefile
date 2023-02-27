# requires .h and .c files to exist

program: {a,b,c}.o
        cc a.o b.o c.o -o program

*.o: defs2.h

{a,b,c}.o: defs.h

[ac].o: defs3.h

?.o: defs4.h

a.o: a.c
        cc -c a.c

b.o: b.c
        cc -c b.c

c.o: c.c
        cc -c c.c

clean:
        rm *.o
