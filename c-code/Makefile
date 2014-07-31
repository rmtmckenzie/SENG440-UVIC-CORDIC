all: profiler profiler_opt validator
arm: profiler_arm profiler_arm_opt validator_arm
asm: assembly_build

valuetester:
	gcc -Wall -pg -std=c99 -o build/valuetester valuetester.c

validator_arm:
	arm-linux-gcc -Wall --static -std=c99 -o build_arm/validate validate.c impl/int_asm.S

profiler_arm:
	arm-linux-gcc -Wall -pg --static -std=c99 -o build_arm/profile profile.c impl/int_asm.S

profiler_arm_opt:
	arm-linux-gcc -O1 -Wall -pg --static -std=c99 -o build_arm/profile_opt profile.c impl/int_asm.S

validator:
	gcc -Wall -std=c99 -o build/validate validate.c

profiler:
	gcc -Wall -pg -std=c99 -o build/profile profile.c

profiler_opt:
	gcc -Wall -O2 -pg -std=c99 -o build/profile_opt profile.c

cordic_float:
	gcc -Wall -O3 -std=c99 -g -o build/cordicfloat cordic_float.c

assembly_build:
	arm-linux-gcc -Wall -g -std=c99 -o assembly/asm_opt.o asm_opt.c
	arm-linux-objdump -d -S assembly/asm_opt.o > assembly/out.asm
	arm-linux-gcc -Wall -g -S -std=c99 -o assembly/outcode.asm asm_opt.c
	arm-linux-gcc -Wall -g -Wa,-a,-ad -std=c99 asm_opt.c > assembly/out.list
	

clean:
	rm -f cordic.o cordic.s 
	rm -f build/profile* build/value* build/gmon.out build/*.stats build/temp*
	rm -f build_arm/profile* build_arm/validate*
	rm -f assembly/*.asm assembly/*.o
