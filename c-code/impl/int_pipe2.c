
// memory alias disambiguation - restrict
void int_pipe2(int* restrict theta, int* restrict x, int* restrict y, const int * restrict lookup)
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
            lx = nx; ly = ny; lz = nz;
            lkv = lookup[i];
        } else {
            nx = lx + (ly >> i);
            ny = ly - (lx >> i);
            nz = lz + lkv;
            lx = nx; ly = ny; lz = nz;
            lkv = lookup[i];
        }
    }

    *x = lx;
    *y = ly;
    *theta = lz;
}
