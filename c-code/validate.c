#include <stdio.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

//clock tick stuff
#include <sys/times.h>
#include <unistd.h>

#include "defines.h"

#define MAXRANDS 1000

#include "impl/int_basic.c"
#include "impl/int_opt.c"
#include "impl/int_opt2.c"
#include "impl/int_unroll2.c"
#include "impl/int_unroll4.c"
#include "impl/int_pipe.c"
#include "impl/int_pipe2.c"
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

void check(char* type, int bx, int by, int bz, int x, int y, int z) {
    if(bx != x || by != y || bz != z) {
        printf("%s: ",type);
        if(bx != x)
            printf("bx: %d, x: %d ",bx,x);
        if(by != y)
            printf("by: %d, y: %d ",by,y);
        if(bz != z)
            printf("bz: %d, z: %d ",bz,z);
        printf("\n");
    }
}


int main(int argc, char *argv[])
{
    int num = 5;


    if(argc >= 2){
        sscanf(argv[1],"%i",&num);
    }

    printf("Running %d times.\n",num);

    int randomvals[MAXRANDS];
    int randomangles[MAXRANDS];
    for(int i = 0; i < MAXRANDS; i++) {
        randomvals[i] = rand() % 10000 + 1000;
        randomangles[i] = rand() % HALFPI2;
    }

    int x, y, z;
    int bx, by, bz;
    int ix, iy, iz;

    if( ! (!(0 & 0x80000000)
            && !(1 & 0x80000000)
            && !(100 & 0x80000000)
            && !!(-1 & 0x80000000)
            && !!(-100 & 0x80000000))) {
        printf("Your platform doesn't use 32 bit integers. Please use something else.\n");
        return(1);
    }

    for(int i = 0; i < num; i++){
        ix = randomvals[i % MAXRANDS];
        iy = randomvals[MAXRANDS - i % MAXRANDS];
        iz = randomangles[i % MAXRANDS];
        
        printf("IX: %d IY: %d YZ: %d\n",ix,iy,iz);

        bx = ix; by = iy; bz = iz;
        int_basic(&bx, &by, &bz, LOOKUP2);
        
        x = ix; y = iy; z = iz;
        int_opt(&x, &y, &z, LOOKUP2);
        check("opt",bx,by,bz,x,y,z);
        
        x = ix; y = iy; z = iz;
        int_opt2(&x, &y, &z, LOOKUP2);
        check("opt2",bx,by,bz,x,y,z);

        x = ix; y = iy; z = iz;
        int_unroll2(&x, &y, &z, LOOKUP2);
        check("unroll2",bx,by,bz,x,y,z);

        x = ix; y = iy; z = iz;
        int_unroll4(&x, &y, &z, LOOKUP2);
        check("unroll4",bx,by,bz,x,y,z);

        x = ix; y = iy; z = iz;
        int_pipe(&x, &y, &z, LOOKUP2);
        check("pipe",bx,by,bz,x,y,z);

        x = ix; y = iy; z = iz;
        int_pipe2(&x, &y, &z, LOOKUP2);
        check("pipe2",bx,by,bz,x,y,z);

        x = ix; y = iy; z = iz;
        int_hardcode(&x, &y, &z, LOOKUP2);
        check("pipe",bx,by,bz,x,y,z);

    }

    return 0;
}
