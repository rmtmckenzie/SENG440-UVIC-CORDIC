
// memory alias disambiguation - restrict
extern inline void int_pipe(int* restrict theta, int* restrict x, int* restrict y, const int * restrict lookup)
{

    int nx, ny, nz;

    int lkv;    
    
    //local variables
    int lx, ly, lz;    
    lx = *x;
    ly = *y;
    lz = *theta;
    
    
    lkv = lookup[0];
    for(int i = 0; i < NUM_ELEMENTS; i++) {
        if(!(lz & 0x80000000)){
            nx = lx - (ly >> i);
            ny = ly + (lx >> i);
            nz = lz - lkv;
        } else {
            nx = lx + (ly >> i);
            ny = ly - (lx >> i);
            nz = lz + lkv;
        }
        lkv = lookup[i];
        lx = nx; ly = ny; lz = nz;
    }

    *x = lx;
    *y = ly;
    *theta = lz;
}
