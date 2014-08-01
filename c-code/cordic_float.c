#include <stdio.h>
#include <string.h>
#include <math.h>


#define NUM_ELEMENTS 16


// Function does the functional computation of the CORDIC processor.
void iterationComputation(float *X, float *Y, float *Z, float theta, float shift)
{
	// Based on operation, determine whether additions or subtractions will occur.
	int mew = *Z >= 0.0 ? 1.0 : -1.0;

	// Compute new values.
	float temp = *X;

	*X = *X - ((mew) * (*Y) * (shift));
	*Y = *Y + ((mew) * (temp) * (shift));
	*Z = *Z - ((mew) * (theta));
}


int main(int argc, char *argv[])
{
	if( (argc != 4) || (strcmp(argv[1],"-help") == 0) )
	{
		printf("\nSENG 440 CORDIC PROCESSOR\n\nFormat is as follows: ./cordic [X value] [Y value] [Angle (in degrees)]\n");
		printf("Mode is Linear.\n");
		printf("Operation is rotation.\n");
		return 0;
	}
	
	// Program variables.
	float x,y,z;

	// Read command line inputs into variables.
	sscanf(argv[1],"%f",&x);
	sscanf(argv[2],"%f",&y);
	sscanf(argv[3],"%f",&z);
	
	// Print out starting values.
	printf("Starting X-value: %f\n", x);
	printf("Starting Y-value: %f\n", y);
	printf("Starting Angle: %f\n\n", z);
	
	// Lookup tables.
	float circularLookup[NUM_ELEMENTS] = {45, 26.56505, 14.03624, 7.12502, 3.57633, 1.78991, 0.89517, 0.44761, 0.22381, 0.11191, 0.055953, 0.027976, 0.0139882, 0.00699411, 0.00349706, 0.00174853};
	float powLookup[NUM_ELEMENTS] =  {1, 0.5, 0.25, 0.125, 0.0625, 0.03125, 0.015625, 0.0078125, 0.003090625, 0.001953125, 0.0009765625, 0.00048828125, 0.00024414062, 0.00012207031, 0.00006103515, 0.00003051757};



	for ( int i=0; i < NUM_ELEMENTS; i++)
	{
		printf("Before: %f , %f , %f\n", x,y,z);
		iterationComputation(&x, &y, &z, circularLookup[i], powLookup[i]);
		printf("After: %f , %f , %f\n\n", x,y,z);
	}

  
	// Print final values.
	
	x = x * 0.607252; // Pre-calculated scale factor.
	y = y * 0.607252;	

	printf("Final X-value: %f\n", x);
	printf("Final Y-value: %f\n", y);
	printf("Final Angle: %f\n", z);
	return 0;
}
