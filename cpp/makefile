c_obj: main.cc
	clang++ main.cc -o mixed ../shapeless.o

c_static: main.cc
	clang++ main.cc -o mixed ../libshapeless.a

c_shared: main.cc
	clang++ main.cc -o mixed -lshapeless -L.. -Wl,-rpath=".."

cpp2c: main.c slcpp.cc
	clang++ -std=c++23 -c -fPIC slcpp.cc
	clang main.c slcpp.o -o peanuts -lstdc++

clean:
	rm -f mixed peanuts *.o

.PHONY: clean
