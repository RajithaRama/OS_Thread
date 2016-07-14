CFLAGS=-I./ -Wall -Wstrict-prototypes -Werror
CC=gcc

all: main

main: lib.o switch.o main.o
	gcc -c quelinked.c -o quelinked.o -m64 -static -g
	gcc main.o lib.o switch.o quelinked.o -o main -m64 -static

%.o:%.c
	$(CC) $(CFLAGS) -c $? -o $@ -m64 -static -g
%.o:%.S
	$(CC) $(CFLAGS) -c $? -o $@ -m64 -static -g

clean:
	rm -f *.o *~
