CFLAGS=-I./ -Wall -Wstrict-prototypes -Werror
CC=gcc

all: main

main: switch.o lib.o main.o
	gcc -c quelinked.c -o quelinked.o -m64 -static -g
	gcc main.o lib.o switch.o quelinked.o -o main -m64 -static

%.o:%.c
	$(CC) $(CFLAGS) -c $? -o $@ -m64 -static -g
%.o:%.s
	as --gstabs+ -o $@ $?

clean:
	rm -f *.o *~
