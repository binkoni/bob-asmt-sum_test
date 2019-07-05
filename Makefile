all: sum
sum: sum.o main.o
	gcc sum.o main.o -o sum
sum.o: sum.c sum.h
	gcc -c sum.c -o sum.o
main.o: main.c sum.h
	gcc -c main.c -o main.o
clean:
	rm -f *.o sum
