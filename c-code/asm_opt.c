
#include "defines.h"
#include "stdio.h"

#include "impl/int_asm.h"

int main(int argc, char *argv[])
{
	int x = 1000;
	int y = 1000;
	int z = 654;

	int_asm(&z, &x, &y, LOOKUP2);

	printf("val: %d\n",z);
	
	return 0;
}
