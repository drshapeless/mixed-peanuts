CC = clang
CFLAGS =
LDFLAGS = -L.
LIBS = -pthread -lgo2c
OBJECTS = main.o

# All linked library would be static, including libc
static_peanuts: libgo2c.a $(OBJECTS)
	$(CC) $(OBJECTS) -o mixed-peanuts-static $(LDFLAGS) $(LIBS)

dynamic_peanuts: libgo2c.so $(OBJECTS)
	$(CC) $(OBJECTS) -o mixed-peanuts-dynamic $(LDFLAGS) $(LIBS)

main.o:

libgo2c.a:
	go build -o libgo2c.a -buildmode=c-archive *.go

libgo2c.so:
	go build -o libgo2c.so -buildmode=c-shared *.go

.PHONY: clean
clean:
	-rm -f $(OBJECTS) libgo2c.a libgo2c.h libgo2c.so mixed-peanuts-static mixed-peanuts-dynamic
