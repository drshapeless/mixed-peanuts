CC = clang
CFLAGS =
LDFLAGS = -L.
LIBS = -pthread -lgo2c
OBJECTS = main.o

# All linked library would be static, including libc
static_peanuts: build_static_lib $(OBJECTS)
	$(CC) -static $(OBJECTS) -o static-peanuts $(LDFLAGS) $(LIBS)

static_go_peanuts: build_static_lib $(OBJECTS)
	$(CC) $(OBJECTS) -o static-go-peanuts $(LDFLAGS) -pthread libgo2c.a

dynamic_peanuts: build_dynamic_lib $(OBJECTS)
	$(CC) $(OBJECTS) -o dynamic-peanuts $(LDFLAGS) $(LIBS)

main.o:

build_static_lib:
	go build -o libgo2c.a -buildmode=c-archive *.go

build_dynamic_lib:
	go build -o libgo2c.so -buildmode=c-shared *.go

.PHONY: clean
clean:
	-rm -f $(OBJECTS) libgo2c.a libgo2c.h libgo2c.so static-peanuts static-go-peanuts dynamic-peanuts
