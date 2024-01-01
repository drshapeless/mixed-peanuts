CC = clang
LDFLAGS = -L target/release/
LIBS = -lrust2c
OBJECTS = main.o

mixed-peanuts: librust2c.a $(OBJECTS)
	$(CC) -o mixed-peanuts $(OBJECTS) $(LDFLAGS) $(LIBS)

librust2c.a:
	cargo build --release

main.o:

.PHONY: clean
clean:
	-rm -f $(OBJECTS) mixed-peanuts
	cargo clean
