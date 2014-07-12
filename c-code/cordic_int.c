#include <stdio.h>
#include <string.h>
#include <math.h>

#define NUM_ELEMENTS 16

const int INANGLE = 90;

const int HALFPI1 = 0x6487;
const int LOOKUP1[NUM_ELEMENTS] = {0x3243, 0x1DAB, 0xFAD, 0x7F4, 0x3FE, 0x1FF, 0xFF, 0x7F, 0x3F, 0x1F, 0xF, 0x7, 0x3, 0x1, 0x0, 0x0};

const int HALFPI2 = 0xC90F;
const int LOOKUP2[NUM_ELEMENTS] = {0x6487, 0x3B58, 0x1F5A, 0xFEA, 0x7FC, 0x3FF, 0x1FF, 0xFF, 0x7F, 0x3F, 0x1F, 0xF, 0x7, 0x3, 0x1, 0x0};

const float SCALEFACTOR = 0.607252;

void cordic(int *theta, int *x, int *y, const int *lookup)
{
    int sign;
    int lx, ly, lz;
    int nx, ny, nz;
    
    lx = *x;
    ly = *y;
    lz = *theta;
    

    for(int i = 0; i < NUM_ELEMENTS; i++) {
        sign = lz >= 0 ? 1 : 0;
        if(sign){
            nx = lx - (ly >> i);
            ny = ly + (lx >> i);
            nz = lz - lookup[i];
        } else {
            nx = lx + (ly >> i);
            ny = ly - (lx >> i);
            nz = lz + lookup[i];
        }
        lx = nx; ly = ny; lz = nz;
    }

    *x = lx;
    *y = ly;
    *theta = lz;
}


int main(int argc, char *argv[])
{
    if( (argc != 4) || (strcmp(argv[1],"-help") == 0) )
    {
        printf("\nSENG 440 CORDIC PROCESSOR\n\nFormat is as follows: ./cordic [X value] [Y value] [Angle (in degrees, -90 < a < 90)]\n");
        printf("Mode is Linear.\n");
        printf("Operation is rotation.\n");
        return 0;
    }
    
    // Program variables.
    int xin,x,yin,y,zin,z;

	// Read command line inputs into variables.
	sscanf(argv[1],"%i",&xin);
    sscanf(argv[2],"%i",&yin);
    sscanf(argv[3],"%i",&zin);

    printf("Starting (degrees) Angle: %i\n\n",z);

    z = zin * HALFPI1 / INANGLE;
    x = xin;
    y = yin;
    
    // Print out starting values.
    printf("Starting X-value: %i\n", x);
    printf("Starting Y-value: %i\n", y);

    printf("Method 1:\n");
    printf("Starting Angle: %i\n\n", z);

    cordic(&z, &x, &y, LOOKUP1);
    // Print final values.

    printf("Xout: %i\n",x);
    printf("Yout: %i\n",y);
    printf("1 X-value: %f\n", (float)x * SCALEFACTOR);
    printf("1 Y-value: %f\n", (float)y * SCALEFACTOR);
    printf("Final Angle: %i\n", z);

    z = zin * HALFPI2 / INANGLE;
    x = xin;
    y = yin;

    printf("Method 2:\n");
    printf("Starting Angle: %i\n\n", z);
    cordic(&z, &x, &y, LOOKUP2);

    printf("Xout: %i\n",x);
    printf("Yout: %i\n",y);
    printf("2 X-value: %f\n", (float)x * SCALEFACTOR);
    printf("2 Y-value: %f\n", (float)y * SCALEFACTOR);
    printf("Final Angle: %i\n", z);
    return 0;
}
