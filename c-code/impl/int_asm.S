
@ void int_asm(int* restrict , int* restrict , int* restrict , const int * restrict );
	.align	2
	.global	int_asm
	.type	int_asm, %function
int_asm:
	@ 	r0 = *x, r1 = *y, r2 = *z, r3 = *lookup;
	push	{r4-r12}		@ push to stack
	push	{fp}
	@save sp in fp
	add	fp, sp, #0
	sub	sp, sp, #52

	@store pointers to x,y,z,lookup
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]		@is this needed?

	@ r0=x, r1=y, r2=z
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]

	@ int i = 0
	mov r4, #0

	@ skip first comp as know i < 16

FORLOOP:

	@ r5 = y >> i
	mov r5, r1, asr r4
	@ r6 = x >> i
	mov r6, r0, asr r4
	@ r7 = LOOKUP[i]
	@ shift i << 2 for bytes
@	mov r7, r4, asl #2
@	add r7, r3, r7
	ldr r7, [r3]

	cmp r2, #0
	bge POS
	@ if(z < 0)

NEG:
	@ nx = x + (y >> i)

	add r5, r5, r0

	@ ny = y - (x >> i)
	rsb r6, r6, r1

	@ nz = lz + lookup[i]

	add r2, r7, r2

	b	FORCHECK
POS:
	@ else  -- z >= 0
	@ nx = x - (y >> i)
	rsb r5, r5, r0

	@ ny = y + (x >> i)
	add r6, r6, r1

	@ nz = lz - lookup[i]
	@ shift i << 2 for bytes
	rsb r2, r7, r2

FORCHECK:

	@ x = nx, y = ny
	mov r0, r5
	mov r1, r6

	@only add to i if still in loop

	cmp r4, #15
	bge ENDFOR

	@i += 1
	add r4, r4, #1

	add r3, r3, #4

	b 	FORLOOP

ENDFOR:
	
	ldr r3, [fp, #-40]
	ldr r4, [fp, #-44]

	str r0, [r3]
	str r1, [r4]

@	mov r0, r3
@	mov r1, r4
@	ldr	r2, [fp, #-48]
@	ldr	r3, [fp, #-52]

	@restore sp from fp
	add	sp, fp, #0
	pop {fp}
	pop		{r4-r12}
	bx 		lr


