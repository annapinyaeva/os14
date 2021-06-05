CC=gcc
CFLAGS=
LIBS=-lm

calcul: calculate.o main.o
	gcc calculate.o main.o -o calcul $(LIBS)

calculate.o: calculate.c calculate.h
	gcc -g calculate.c $(CFLAGS)

main.o :main.c $(CFLAGS)
	gcc -g main.c $(CFLAGS)
clean: 
	-rm calcul *.o*~