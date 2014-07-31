#include <stdio.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

//clock tick stuff
#include <sys/times.h>
#include <unistd.h>

#include "defines.h"

#define RBASIC
#define ROPT
#define ROPT2
#define RUNROLL2
#define RUNROLL4
#define RPIPE
#define RPIPE2
#define RHARDCODE
#define RASM

#define MAXRANDS 1000

#include "impl/int_basic.c"
#include "impl/int_opt.c"
#include "impl/int_opt2.c"
#include "impl/int_unroll2.c"
#include "impl/int_unroll4.c"
#include "impl/int_pipe.c"
#include "impl/int_pipe2.c"
#include "impl/int_hardcode.c"
#include "impl/int_asm.h"

/* 
NOTE: compile linking impl/int_asm.S

Optimizations:
    1: Operator Strength Reduction
    2: Loop Unrolling
    3: Software Pipelining
    4: Local Variables
    5: Memory Alias Disambiguation
    6: Loop init & Exit

Implementations:
                        1 2 3 4 5 6
    int_basic       --  X
    int_opt         --  X     X X X
    int_unroll2     --  X X   X X X
    int_unroll4     --  X X   X X X
    int_hardcode    --  X X   X X X

*/

clock_t gettime() {
    struct tms t;
    times(&t);
    return t.tms_utime;
}


int main(int argc, char *argv[])
{
    int num = 9999999;
    clock_t before;

    int ticks_per_sec = sysconf(_SC_CLK_TCK);

    if(argc >= 2){
        sscanf(argv[1],"%i",&num);
    }

    printf("Running %d times.\n",num);

	volatile int i;
    int randomvals[MAXRANDS];
    int randomangles[MAXRANDS];
    for(i = 0; i < MAXRANDS; i++) {
        randomvals[i] = rand() % 10000 + 1000;
        randomangles[i] = rand() % HALFPI2;
    }

    int x, y, z;

    if( ! (!(0 & 0x80000000)
            && !(1 & 0x80000000)
            && !(100 & 0x80000000)
            && !!(-1 & 0x80000000)
            && !!(-100 & 0x80000000))) {
        printf("Your platform doesn't use 32 bit integers. Please use something else.\n");
        return(1);
    }

    

#ifdef RBASIC
    before = gettime();
    for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
        int_basic(&x, &y, &z, LOOKUP2);
    }
    printf("Basic: %f\n",(double) (gettime() - before) / sysconf(_SC_CLK_TCK));
#endif

#ifdef ROPT
    before = gettime();
    for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
        int_opt(&x, &y, &z, LOOKUP2);
    }
    printf("Opt: %f\n",(double) (gettime() - before) / ticks_per_sec);
#endif

#ifdef ROPT2
    before = gettime();
    for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
        int_opt2(&x, &y, &z, LOOKUP2);
    }
    printf("Opt2: %f\n",(double) (gettime() - before) / ticks_per_sec);
#endif

#ifdef RUNROLL2
    before = gettime();
    for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
        int_unroll2(&x, &y, &z, LOOKUP2);
    }
    printf("Unroll2: %f\n",(double) (gettime() - before) / ticks_per_sec);
#endif

#ifdef RUNROLL4
    before = gettime();
    for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
        int_unroll4(&x, &y, &z, LOOKUP2);
    }
    printf("Unroll4: %f\n",(double) (gettime() - before) / ticks_per_sec);
#endif

#ifdef RPIPE
    before = gettime();
    for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
        int_pipe(&x, &y, &z, LOOKUP2);
    }
    printf("Pipe: %f\n",(double) (gettime() - before) / ticks_per_sec);
#endif

#ifdef RPIPE2
    before = gettime();
    for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
        int_pipe2(&x, &y, &z, LOOKUP2);
    }
    printf("Pipe2: %f\n",(double) (gettime() - before) / ticks_per_sec);
#endif

#ifdef RHARDCODE
    before=gettime();
    for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
        int_hardcode(&x, &y, &z, LOOKUP2);
    }
    printf("Hardcode: %f\n",(double) (gettime() - before) / ticks_per_sec);
#endif

#ifdef RASM
	before=gettime();
	for(i = 0; i < num; i++){
        x = randomvals[i % MAXRANDS];
        y = randomvals[MAXRANDS - i % MAXRANDS];
        z = randomangles[i % MAXRANDS];
		int_asm(&x, &y, &z, LOOKUP2);
	}
	printf("Asm: %f\n",(double) (gettime() - before) / ticks_per_sec);
#endif

    return 0;
}

