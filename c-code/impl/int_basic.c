extern inline void int_basic(int *x, int *y, int *z, const int *lookup)
{
    int sign;

    int t;

    for(int i = 0; i < NUM_ELEMENTS; i++) {
        sign = *z >= 0 ? 1 : 0;
        if(sign){
            //operator strength reduction - shifts and lookups
            //instead of multiplication and addition.
            t = *x - (*y >> i);
            *y = *y + (*x >> i);
            *x = t;
            *z = *z - lookup[i];
        } else {
            t = *x + (*y >> i);
            *y = *y - (*x >> i);
            *x = t;
            *z = *z + lookup[i];
        }
    }
}
