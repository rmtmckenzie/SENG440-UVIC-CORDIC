
#include "defines.h"

#include "impl/int_unroll2.c"

int main(int argc, char *argv[])
{
	int x = 1000;
	int y = 1000;
	int z = 654;

	int_unroll2(&x, &y, &z, LOOKUP2);
	
	return 0;
}
