#include <stdio.h>
#include <string.h>
#include <math.h>


#define N_ELEMENTS(array) (sizeof(array)/sizeof((array)[0]))


// Function does the functional computation of the CORDIC processor.
void iterationComputation(float *X, float *Y, float *Z, float theta, int mode, int op, float shift)
{
    // Based on operation, determine whether additions or subtractions will occur.
    int mew = 0; // If comparison value is zero, no modification of all values will occur.
    switch (op)
    {
        case 0: // Vectoring operation.
            if ( *Y > 0 )
            {
                mew = -1;
            }
            else if ( *Y < 0 )
            {
                mew = 1;
            }
            break;
            
        case 1: // Rotation operation.
            if ( *Z > 0 )
            {
                mew = 1;
            }
            else if ( *Z < 0 )
            {
                mew = -1;
            }
            break;
    }
    
    // Compute new values.
    *X = *X - (mode * mew * *Y * shift);
    *Y = *Y + (mew * *X * shift);
    *Z = *Z - (mew * theta);
}


int main(int argc, char *argv[])
{
    if( (argc != 6) || (strcmp(argv[1],"-help") == 0) )
    {
        printf("\nSENG 440 CORDIC PROCESSOR\n\nFormat is as follows: ./cordic [mode] [operation] [X value] [Y value] [Angle (in degrees)]\n");
        printf("Mode:\n    0 = linear\n    1 = circular\n   -1 = hyperbolic\n");
        printf("Operation:\n    0 = vector\n    1 = rotation\n");
        printf("\nA vector operation will translate the Y coordinate up or down by the value given for the Y value input.\n");
        printf("A rotation operation will rotate the vector (X,Y) clockwise by the angle given for the angle input.\n\n\n");
        return 0;
    }
    
    // Program variables.
    float x,y,z;
    int mode, operation;
    float shift = 1;
    
    
    // Read command line inputs into variables.
    sscanf(argv[1],"%i",&mode);
    sscanf(argv[2],"%i",&operation);
    sscanf(argv[3],"%f",&x);
    sscanf(argv[4],"%f",&y);
    sscanf(argv[5],"%f",&z);
    
    // Print out starting values.
    printf("Starting X-value: %f\n", x);
    printf("Starting Y-value: %f\n", y);
    printf("Starting Angle: %f\n\n", z);
    
    // Lookup tables.
    float circularLookup[16] = {45, 27, 14, 7.1, 3.6, 1.8, 0.9, 0.45, 0.22, 0.11, 0.056, 0.028, 0.014, 0.007, 0.0035, 0.0017};
    float hyperbolicLookup[15] = {0.55, 0.26, 0.13, 0.063, 0.031, 0.016, 0.0078, 0.0039, 0.002, 0.00098, 0.00049, 0.00024, 0.00012, 0.000061, 0.000031};
    // tanh^1(2^-1) is infinity. so iteration 0 is skipped in hyperbolic. Better accuracy required.

    // Perform iterations based on mode.
    switch (mode)
    {
        case 0: // Linear
        case 1: // Circular
            for ( int i=0; i < N_ELEMENTS(circularLookup); i++)
            {
                shift = pow(2, -i);
                iterationComputation(&x, &y, &z, circularLookup[i], mode, operation, shift);
            }
            break;
            
        case -1: // Hyperbolic
            for ( int i=0; i < N_ELEMENTS(hyperbolicLookup); i++)
            {
                shift = pow(2, -(i+1));
                iterationComputation(&x, &y, &z, hyperbolicLookup[i], mode, operation, shift);
            }
            break;
    }
    
    // Print final values.
    printf("Final X-value: %f\n", x);
    printf("Final Y-value: %f\n", y);
    printf("Final Angle: %f\n", z);
    return 0;
}
