all: profiler profiler_opt
arm: profiler_arm profiler_arm_opt

valuetester:
	gcc -Wall -pg -std=c99 -o build/valuetester valuetester.c

profiler_arm:
	arm-linux-gcc -Wall --static -std=c99 -o build_arm/profiler profile.c

profiler_arm_opt:
	arm-linux-gcc -O2 -Wall  --static -std=c99 -o build_arm/profiler_opt profile.c

profiler:
	gcc -Wall -pg -std=c99 -o build/profile profile.c

profiler_opt:
	gcc -Wall -O2 -pg -std=c99 -o build/profile_opt profile.c

cordic_float:
	gcc -Wall -O3 -std=c99 -g -o build/cordicfloat cordic_float.c

clean:
	rm -f cordic.o cordic.s build/profile* build/value* build/gmon.out build/*.stats temp*
