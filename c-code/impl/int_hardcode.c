

// memory alias disambiguation - restrict
extern inline void int_hardcode(int* restrict theta, int* restrict x, int* restrict y, const int * restrict lookup)
{
    int nx, ny, nz;

    
    //local variables
    int lx, ly, lz;    
    lx = *x;
    ly = *y;
    lz = *theta;
        
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 0);
        ny = ly + (lx >> 0);
        nz = lz - 0x6487; 
    } else {
        nx = lx + (ly >> 0);
        ny = ly - (lx >> 0);
        nz = lz + 0x6487;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 1);
        ny = ly + (lx >> 1);
        nz = lz - 0x3B58; 
    } else {
        nx = lx + (ly >> 1);
        ny = ly - (lx >> 1);
        nz = lz + 0x3B58;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 2);
        ny = ly + (lx >> 2);
        nz = lz - 0x1F5A; 
    } else {
        nx = lx + (ly >> 2);
        ny = ly - (lx >> 2);
        nz = lz + 0x1F5A;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 3);
        ny = ly + (lx >> 3);
        nz = lz - 0xFEA; 
    } else {
        nx = lx + (ly >> 3);
        ny = ly - (lx >> 3);
        nz = lz + 0xFEA;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 4);
        ny = ly + (lx >> 4);
        nz = lz - 0x7FC; 
    } else {
        nx = lx + (ly >> 4);
        ny = ly - (lx >> 4);
        nz = lz + 0x7FC;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 5);
        ny = ly + (lx >> 5);
        nz = lz - 0x3FF; 
    } else {
        nx = lx + (ly >> 5);
        ny = ly - (lx >> 5);
        nz = lz + 0x3FF;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 6);
        ny = ly + (lx >> 6);
        nz = lz - 0x1FF; 
    } else {
        nx = lx + (ly >> 6);
        ny = ly - (lx >> 6);
        nz = lz + 0x1FF;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 7);
        ny = ly + (lx >> 7);
        nz = lz - 0xFF; 
    } else {
        nx = lx + (ly >> 7);
        ny = ly - (lx >> 7);
        nz = lz + 0xFF;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 8);
        ny = ly + (lx >> 8);
        nz = lz - 0x7F; 
    } else {
        nx = lx + (ly >> 8);
        ny = ly - (lx >> 8);
        nz = lz + 0x7F;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 9);
        ny = ly + (lx >> 9);
        nz = lz - 0x3F; 
    } else {
        nx = lx + (ly >> 9);
        ny = ly - (lx >> 9);
        nz = lz + 0x3F;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 10);
        ny = ly + (lx >> 10);
        nz = lz - 0x1F; 
    } else {
        nx = lx + (ly >> 10);
        ny = ly - (lx >> 10);
        nz = lz + 0x1F;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 11);
        ny = ly + (lx >> 11);
        nz = lz - 0xF; 
    } else {
        nx = lx + (ly >> 11);
        ny = ly - (lx >> 11);
        nz = lz + 0xF;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 12);
        ny = ly + (lx >> 12);
        nz = lz - 0x7; 
    } else {
        nx = lx + (ly >> 12);
        ny = ly - (lx >> 12);
        nz = lz + 0x7;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 13);
        ny = ly + (lx >> 13);
        nz = lz - 0x3; 
    } else {
        nx = lx + (ly >> 13);
        ny = ly - (lx >> 13);
        nz = lz + 0x3;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 14);
        ny = ly + (lx >> 14);
        nz = lz - 0x1; 
    } else {
        nx = lx + (ly >> 14);
        ny = ly - (lx >> 14);
        nz = lz + 0x1;
    }
    lx = nx; ly = ny; lz = nz;
    
    if(!(lz & 0x80000000)){
        nx = lx - (ly >> 15);
        ny = ly + (lx >> 15);
        nz = lz - 0x0; 
    } else {
        nx = lx + (ly >> 15);
        ny = ly - (lx >> 15);
        nz = lz + 0x0;
    }
    lx = nx; ly = ny; lz = nz;
    
    *x = lx;
    *y = ly;
    *theta = lz;
}
