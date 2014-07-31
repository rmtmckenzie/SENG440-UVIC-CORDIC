#include <stdio.h>
#include <string.h>
#include <math.h>

#include "defines.h"

#include "impl/int_basic.c"

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

    int_basic(&x, &y, &z, LOOKUP1);
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
    int_basic(&x, &y, &z, LOOKUP2);

    printf("Xout: %i\n",x);
    printf("Yout: %i\n",y);
    printf("2 X-value: %f\n", (float)x * SCALEFACTOR);
    printf("2 Y-value: %f\n", (float)y * SCALEFACTOR);
    printf("Final Angle: %i\n", z);
    return 0;
}
