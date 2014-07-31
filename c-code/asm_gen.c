
#include "defines.h"
#include "stdio.h"

#include "impl/int_opt.c"

int main(int argc, char *argv[])
{
	int x = 1000;
	int y = 1000;
	int z = 654;

	int_opt(&z, &x, &y, LOOKUP2);

	printf("val: %d\n",z);

	return 0;
}
