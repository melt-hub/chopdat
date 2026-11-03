# ----------+ FLAGS +----------
CFLAGS = -O2 -Wall -Wextra -std=c99 -pedantic
CC = gcc

# ----------+ LINKING & COMPILING +----------
all : test

test : main.o chopdat.o
	$(CC) $(CFLAGS) main.o chopdat.o -o test

chopdat.o : chopdat.c chopdat.h
	$(CC) $(CFLAGS) -c chopdat.c -o chopdat.o

main.o : main.c chopdat.h
	$(CC) $(CFLAGS) -c main.c -o main.o
