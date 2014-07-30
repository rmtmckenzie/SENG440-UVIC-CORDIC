
// memory alias disambiguation - restrict
extern inline void int_unroll2(int* restrict theta, int* restrict x, int* restrict y, const int * restrict lookup)
{

    int nx, ny, nz;

    int i = 0, j = 1;

    //local variables
    int lx, ly, lz;    
    lx = *x;
    ly = *y;
    lz = *theta;
    
    for(; i < NUM_ELEMENTS; i++, j++) {
        //1
        if(!(lz & 0x80000000)){
            nx = lx - (ly >> i);
            ny = ly + (lx >> i);
            nz = lz - lookup[i];
        } else {
            nx = lx + (ly >> i);
            ny = ly - (lx >> i);
            nz = lz + lookup[i];
        }
        lx = nx; ly = ny; lz = nz;
        
        //2
        if(!(lz & 0x80000000)){
            nx = lx - (ly >> j);
            ny = ly + (lx >> j);
            nz = lz - lookup[j];
        } else {
            nx = lx + (ly >> j);
            ny = ly - (lx >> j);
            nz = lz + lookup[j];
        }
        lx = nx; ly = ny; lz = nz;
        
    }

    *x = lx;
    *y = ly;
    *theta = lz;
}
