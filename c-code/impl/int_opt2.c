
// memory alias disambiguation - restrict
extern inline void int_opt2(int* restrict theta, int* restrict x, int* restrict y, const int * restrict lookup)
{

    int nx, ny, nz;

    //local variables
    int lx, ly, lz;    
    lx = *x;
    ly = *y;
    lz = *theta;
    
    for(int i = 0; i != NUM_ELEMENTS; ++i) {
        if(lz & 0x80000000){
            nx = lx + (ly >> i);
            ny = ly - (lx >> i);
            nz = lz + lookup[i];
            lx = nx; ly = ny; lz = nz;
        } else {
            nx = lx - (ly >> i);
            ny = ly + (lx >> i);
            nz = lz - lookup[i];
            lx = nx; ly = ny; lz = nz;
        }
    }

    *x = lx;
    *y = ly;
    *theta = lz;
}
