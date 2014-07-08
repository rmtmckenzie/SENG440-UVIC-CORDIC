all: cordic

cordic:
	gcc -Wall -O3 -std=c99 -g -o cordic.out cordic.c
	gcc -Wall -O3 -std=c99 -fverbose-asm -S cordic.c

clean:
	rm -f cordic.o cordic.s cordic
