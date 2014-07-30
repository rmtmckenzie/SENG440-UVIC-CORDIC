all: profiler profiler_opt validator
arm: profiler_arm profiler_arm_opt validator_arm

valuetester:
	gcc -Wall -pg -std=c99 -o build/valuetester valuetester.c

validator_arm:
	arm-linux-gcc -Wall --static -std=c99 -o build_arm/validate validate.c

profiler_arm:
	arm-linux-gcc -Wall -pg --static -std=c99 -o build_arm/profile profile.c

profiler_arm_opt:
	arm-linux-gcc -O1 -Wall -pg --static -std=c99 -o build_arm/profile_opt profile.c

validator:
	gcc -Wall -std=c99 -o build/validate validate.c

profiler:
	gcc -Wall -pg -std=c99 -o build/profile profile.c

profiler_opt:
	gcc -Wall -O2 -pg -std=c99 -o build/profile_opt profile.c

cordic_float:
	gcc -Wall -O3 -std=c99 -g -o build/cordicfloat cordic_float.c

assembly:
	arm-linux-gcc -Wall  -g -std=c99 asm_opt.c -o build_arm/asm_opt.o
	arm-linux-objdump -d -S build_arm/asm_opt.o > build_arm/out.asm

clean:
	rm -f cordic.o cordic.s 
	rm -f build/profile* build/value* build/gmon.out build/*.stats build/temp*
	rm -f build_arm/profile* 
