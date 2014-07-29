all: profiler profiler_opt

valuetester:
	gcc -Wall -pg -std=c99 -o build/valuetester valuetester.c

profiler:
	gcc -Wall -pg -std=c99 -o build/profile profile.c

profiler_opt:
	gcc -Wall -O2 -pg -std=c99 -o build/profile_opt profile.c

cordic_float:
	gcc -Wall -O3 -std=c99 -g -o build/cordicfloat cordic_float.c

clean:
	rm -f cordic.o cordic.s build/profile* build/value* build/gmon.out build/*.stats temp*
