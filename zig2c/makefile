CC = clang
LDFLAGS = -L zig-out/lib/
LIBS = -lzig2c
OBJECTS = main.o

mixed-peanuts: libzig2c.a $(OBJECTS)
	$(CC) -o mixed-peanuts $(OBJECTS) $(LDFLAGS) $(LIBS)

libzig2c.a:
	zig build

main.o:

.PHONY: clean
clean:
	-rm -f mixed-peanuts $(OBJECTS) zig-out/lib/libzig2c.a
