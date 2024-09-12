BIN = mixed-peanuts
CC = clang
SC = swiftc

$(BIN): peanuts.o main.o
	$(CC) -o $(BIN) peanuts.o main.o

peanuts.o: peanuts.swift
	$(SC) -parse-as-library -c peanuts.swift

main.o: main.c
	$(CC) -c main.c

.PHONY: clean
clean:
	rm *.o $(BIN)
