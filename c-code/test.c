#include "stdio.h"

int main() {
    int x;

    x = -1;
    printf("%d\n",!(x & 0x80000000));
//    printf("%d\n",!((x & 0x80000000) >> 31 | !x));
    x = 0;
    printf("%d\n",!(x & 0x80000000));
//    printf("%d\n",!((x & 0x80000000) >> 31 | !x));
    x = 100;
    printf("%d\n",!(x & 0x80000000));
//    printf("%d\n",!((x & 0x80000000) >> 31 | !x));
    x = -100;
    printf("%d\n",!(x & 0x80000000));
//    printf("%d\n",!((x & 0x80000000) >> 31 | !x));
    x = -10000;
    printf("%d\n",!(x & 0x80000000));
//    printf("%d\n",!((x & 0x80000000) >> 31 | !x));

    return 0;
}
