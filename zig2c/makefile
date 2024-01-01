UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	export MACOSX_DEPLOYMENT_TARGET=14.2.1
endif

CC = clang
LDFLAGS = -L zig-out/lib/
LIBS = -lzig2c
OBJECTS = main.o

mixed-peanuts: libzig2c.a $(OBJECTS)
	$(CC) -o mixed-peanuts $(OBJECTS) $(LDFLAGS) $(LIBS)

mixed-peanuts-zig: libzig2c.a $(OBJECTS)
	zig cc -o mixed-peanuts-zig $(OBJECTS) $(LDFLAGS) $(LIBS)

libzig2c.a:
	zig build

main.o:

.PHONY: clean
clean:
	-rm -f mixed-peanuts mixed-peanuts-zig $(OBJECTS) zig-out/lib/libzig2c.a
