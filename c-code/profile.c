#include <stdio.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

#include "defines.h"

//#define RBASIC
//#define ROPT
#define ROPT2
//#define RUNROLL2
//#define RUNROLL4
#define RPIPE

#include "impl/int_basic.c"
#include "impl/int_opt.c"
#include "impl/int_opt2.c"
#include "impl/int_unroll2.c"
#include "impl/int_unroll4.c"
#include "impl/int_pipe.c"
#include "impl/int_hardcode.c"

/* 
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



int main(int argc, char *argv[])
{
    int num = 9999999;
    clock_t before;

    if(argc >= 2){
        sscanf(argv[1],"%i",&num);
    }

    printf("Running %d times.\n",num);


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
    before = clock();
    for(int i = 0; i < num; i++,
            x = rand() % 10000 + 1000,
            y = rand() % 10000 + 1000,
            z = rand() % HALFPI2)
        int_basic   (&x, &y, &z, LOOKUP2);
    printf("Basic: %f\n",(double) (clock() - before) / CLOCKS_PER_SEC);
#endif

#ifdef ROPT
    before = clock();
    for(int i = 0; i < num; i++,
            x = rand() % 10000 + 1000,
            y = rand() % 10000 + 1000,
            z = rand() % HALFPI2)
        int_opt     (&x, &y, &z, LOOKUP2);
    printf("Opt: %f\n",(double) (clock() - before) / CLOCKS_PER_SEC);
#endif

#ifdef ROPT2
    before = clock();
    for(int i = 0; i < num; i++, 
            x = rand() % 10000 + 1000, 
            y = rand() % 10000 + 1000, 
            z = rand() % HALFPI2)
        int_opt2    (&x, &y, &z, LOOKUP2);
    printf("Opt2: %f\n",(double) (clock() - before) / CLOCKS_PER_SEC);
#endif

#ifdef RUNROLL2
    before = clock();
    for(int i = 0; i < num; i++, 
            x = rand() % 10000 + 1000, 
            y = rand() % 10000 + 1000, 
            z = rand() % HALFPI2)
        int_unroll2 (&x, &y, &z, LOOKUP2);
    printf("Unroll2: %f\n",(double) (clock() - before) / CLOCKS_PER_SEC);
#endif

#ifdef RUNROLL4
    before = clock();
    for(int i = 0; i < num; i++, 
            x = rand() % 10000 + 1000, 
            y = rand() % 10000 + 1000, 
            z = rand() % HALFPI2)
        int_unroll4 (&x, &y, &z, LOOKUP2);
    printf("Unroll4: %f\n",(double) (clock() - before) / CLOCKS_PER_SEC);
#endif

#ifdef RPIPE
    before = clock();
    for(int i = 0; i < num; i++,
            x = rand() % 10000 + 1000,
            y = rand() % 10000 + 1000,
            z = rand() % HALFPI2)
        int_pipe    (&x, &y, &z, LOOKUP2);
    printf("Pipe: %f\n",(double) (clock() - before) / CLOCKS_PER_SEC);
#endif

    return 0;
}
