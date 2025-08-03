static: shapeless.o
	ar rvs libshapeless.a shapeless.o

shared: shapeless.o
	cc -shared shapeless.o -o libshapeless.so

shapeless.o:
	cc -c -fPIC shapeless.c
