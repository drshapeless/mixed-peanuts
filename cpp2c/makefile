CC = clang
CXX = clang++
CXXFLAGS = -stdlib=libc++
LDFLAGS = -L.
LIBS = -lcpp2c -lc++
OBJECTS = main.o

mixed-peanuts: libcpp2c.a $(OBJECTS)
	$(CC) -o mixed-peanuts $(OBJECTS) $(LDFLAGS) $(LIBS)

libcpp2c.a: cpp2c.o
	ar rvs libcpp2c.a cpp2c.o

cpp2c.o:

.PHONY:
clean:
	-rm -f mixed-peanuts cpp2c.o libcpp2c.a $(OBJECTS)
