SENG440-UVIC-CORDIC
===================

CORDIC project including various optimizations including assembly.
Needs to be on arm system to run due to assembly code; to run on linux
comment out the include to int_asm.h, remove any code which calls
int_asm(), and don't link in int_asm.S.


.
├── c-code
│   ├── build
│   │   └── do_profile.sh
│   ├── cordic_float.c
│   ├── defines.h
│   ├── out.asm
│   ├── impl
│   │   ├── int_asm.h
│   │   ├── int_asm.S
│   │   ├── int_basic.c
│   │   ├── int_hardcode.c
│   │   ├── int_opt2.c
│   │   ├── int_opt.c
│   │   ├── int_pipe2.c
│   │   ├── int_pipe.c
│   │   ├── int_unroll2.c
│   │   └── int_unroll4.c
│   ├── Makefile
│   ├── profile.c
│   ├── validate.c
│   └── valuetester.c
├── testing
│   └── test.py
└── VHDL-Final
    ├── AddSub.vhd
    ├── ArmCommand1.png
    ├── ArmCommand2.png
    ├── Combiner.vhd
    ├── Comparator.vhd
    ├── Firmware Pseudocode.txt
    ├── Lookup_Table.vhd
    ├── Schematic.png
    ├── Shifter.vhd
    ├── SpecChart.txt
    └── Spliter.vhd





