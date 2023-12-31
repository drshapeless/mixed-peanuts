CC = clang
LDFLAGS = -L target/release/
LIBS = -lrust2c
OBJECTS = main.o

mixed-peanuts: build_static_lib $(OBJECTS)
	$(CC) -o mixed-peanuts $(OBJECTS) $(LDFLAGS) $(LIBS)

build_static_lib:
	cargo build --release

main.o:

.PHONY: clean
clean:
	-rm -f $(OBJECTS) mixed-peanuts
	cargo clean
