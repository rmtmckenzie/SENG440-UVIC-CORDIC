
assembly/asm_opt.o:     file format elf32-littlearm

Disassembly of section .init:

00008250 <_init>:
    8250:	e92d4010 	push	{r4, lr}
    8254:	eb00001d 	bl	82d0 <call_gmon_start>
    8258:	e8bd4010 	pop	{r4, lr}
    825c:	e12fff1e 	bx	lr
Disassembly of section .plt:

00008260 <.plt>:
    8260:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8264:	e59fe004 	ldr	lr, [pc, #4]	; 8270 <_init+0x20>
    8268:	e08fe00e 	add	lr, pc, lr
    826c:	e5bef008 	ldr	pc, [lr, #8]!
    8270:	00008594 	.word	0x00008594
    8274:	e28fc600 	add	ip, pc, #0	; 0x0
    8278:	e28cca08 	add	ip, ip, #32768	; 0x8000
    827c:	e5bcf594 	ldr	pc, [ip, #1428]!
    8280:	e28fc600 	add	ip, pc, #0	; 0x0
    8284:	e28cca08 	add	ip, ip, #32768	; 0x8000
    8288:	e5bcf58c 	ldr	pc, [ip, #1420]!
    828c:	e28fc600 	add	ip, pc, #0	; 0x0
    8290:	e28cca08 	add	ip, ip, #32768	; 0x8000
    8294:	e5bcf584 	ldr	pc, [ip, #1412]!
Disassembly of section .text:

00008298 <_start>:
    8298:	e59fc024 	ldr	ip, [pc, #36]	; 82c4 <_start+0x2c>
    829c:	e3a0b000 	mov	fp, #0	; 0x0
    82a0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    82a4:	e1a0200d 	mov	r2, sp
    82a8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    82ac:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    82b0:	e59f0010 	ldr	r0, [pc, #16]	; 82c8 <_start+0x30>
    82b4:	e59f3010 	ldr	r3, [pc, #16]	; 82cc <_start+0x34>
    82b8:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
    82bc:	ebffffef 	bl	8280 <_init+0x30>
    82c0:	ebffffeb 	bl	8274 <_init+0x24>
    82c4:	000085ec 	.word	0x000085ec
    82c8:	00008584 	.word	0x00008584
    82cc:	000085f0 	.word	0x000085f0

000082d0 <call_gmon_start>:
    82d0:	e59f301c 	ldr	r3, [pc, #28]	; 82f4 <call_gmon_start+0x24>
    82d4:	e59f201c 	ldr	r2, [pc, #28]	; 82f8 <call_gmon_start+0x28>
    82d8:	e08f3003 	add	r3, pc, r3
    82dc:	e7931002 	ldr	r1, [r3, r2]
    82e0:	e3510000 	cmp	r1, #0	; 0x0
    82e4:	e92d4010 	push	{r4, lr}
    82e8:	1bffffe7 	blne	828c <_init+0x3c>
    82ec:	e8bd4010 	pop	{r4, lr}
    82f0:	e12fff1e 	bx	lr
    82f4:	00008524 	.word	0x00008524
    82f8:	00000018 	.word	0x00000018

000082fc <__do_global_dtors_aux>:
    82fc:	e59f2010 	ldr	r2, [pc, #16]	; 8314 <__do_global_dtors_aux+0x18>
    8300:	e5d23000 	ldrb	r3, [r2]
    8304:	e3530000 	cmp	r3, #0	; 0x0
    8308:	02833001 	addeq	r3, r3, #1	; 0x1
    830c:	05c23000 	strbeq	r3, [r2]
    8310:	e12fff1e 	bx	lr
    8314:	00010828 	.word	0x00010828

00008318 <frame_dummy>:
    8318:	e59f0024 	ldr	r0, [pc, #36]	; 8344 <frame_dummy+0x2c>
    831c:	e5903000 	ldr	r3, [r0]
    8320:	e3530000 	cmp	r3, #0	; 0x0
    8324:	e92d4010 	push	{r4, lr}
    8328:	0a000003 	beq	833c <frame_dummy+0x24>
    832c:	e59f3014 	ldr	r3, [pc, #20]	; 8348 <frame_dummy+0x30>
    8330:	e3530000 	cmp	r3, #0	; 0x0
    8334:	11a0e00f 	movne	lr, pc
    8338:	112fff13 	bxne	r3
    833c:	e8bd4010 	pop	{r4, lr}
    8340:	e12fff1e 	bx	lr
    8344:	00010718 	.word	0x00010718
    8348:	00000000 	.word	0x00000000

0000834c <int_unroll2>:

// memory alias disambiguation - restrict
extern inline void int_unroll2(int* restrict theta, int* restrict x, int* restrict y, const int * restrict lookup)
{
    834c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8350:	e28db000 	add	fp, sp, #0	; 0x0
    8354:	e24dd034 	sub	sp, sp, #52	; 0x34
    8358:	e50b0028 	str	r0, [fp, #-40]
    835c:	e50b102c 	str	r1, [fp, #-44]
    8360:	e50b2030 	str	r2, [fp, #-48]
    8364:	e50b3034 	str	r3, [fp, #-52]

    int nx, ny, nz;

    int i = 0, j = 1;
    8368:	e3a03000 	mov	r3, #0	; 0x0
    836c:	e50b3018 	str	r3, [fp, #-24]
    8370:	e3a03001 	mov	r3, #1	; 0x1
    8374:	e50b3014 	str	r3, [fp, #-20]

    //local variables
    int lx, ly, lz;
    lx = *x;
    8378:	e51b302c 	ldr	r3, [fp, #-44]
    837c:	e5933000 	ldr	r3, [r3]
    8380:	e50b3010 	str	r3, [fp, #-16]
    ly = *y;
    8384:	e51b3030 	ldr	r3, [fp, #-48]
    8388:	e5933000 	ldr	r3, [r3]
    838c:	e50b300c 	str	r3, [fp, #-12]
    lz = *theta;
    8390:	e51b3028 	ldr	r3, [fp, #-40]
    8394:	e5933000 	ldr	r3, [r3]
    8398:	e50b3008 	str	r3, [fp, #-8]
    839c:	ea000069 	b	8548 <int_unroll2+0x1fc>
    
    for(; i < NUM_ELEMENTS; i+=2, j+=2) {
        //1
        if(lz & 0x80000000){
    83a0:	e51b3008 	ldr	r3, [fp, #-8]
    83a4:	e3530000 	cmp	r3, #0	; 0x0
    83a8:	aa000014 	bge	8400 <int_unroll2+0xb4>
            nx = lx + (ly >> i);
    83ac:	e51b200c 	ldr	r2, [fp, #-12]
    83b0:	e51b3018 	ldr	r3, [fp, #-24]
    83b4:	e1a02352 	asr	r2, r2, r3
    83b8:	e51b3010 	ldr	r3, [fp, #-16]
    83bc:	e0823003 	add	r3, r2, r3
    83c0:	e50b3024 	str	r3, [fp, #-36]
            ny = ly - (lx >> i);
    83c4:	e51b2010 	ldr	r2, [fp, #-16]
    83c8:	e51b3018 	ldr	r3, [fp, #-24]
    83cc:	e1a02352 	asr	r2, r2, r3
    83d0:	e51b300c 	ldr	r3, [fp, #-12]
    83d4:	e0623003 	rsb	r3, r2, r3
    83d8:	e50b3020 	str	r3, [fp, #-32]
            nz = lz + lookup[i];
    83dc:	e51b3018 	ldr	r3, [fp, #-24]
    83e0:	e1a02103 	lsl	r2, r3, #2
    83e4:	e51b3034 	ldr	r3, [fp, #-52]
    83e8:	e0833002 	add	r3, r3, r2
    83ec:	e5932000 	ldr	r2, [r3]
    83f0:	e51b3008 	ldr	r3, [fp, #-8]
    83f4:	e0823003 	add	r3, r2, r3
    83f8:	e50b301c 	str	r3, [fp, #-28]
    83fc:	ea000013 	b	8450 <int_unroll2+0x104>
        } else {
            nx = lx - (ly >> i);
    8400:	e51b200c 	ldr	r2, [fp, #-12]
    8404:	e51b3018 	ldr	r3, [fp, #-24]
    8408:	e1a02352 	asr	r2, r2, r3
    840c:	e51b3010 	ldr	r3, [fp, #-16]
    8410:	e0623003 	rsb	r3, r2, r3
    8414:	e50b3024 	str	r3, [fp, #-36]
            ny = ly + (lx >> i);
    8418:	e51b2010 	ldr	r2, [fp, #-16]
    841c:	e51b3018 	ldr	r3, [fp, #-24]
    8420:	e1a02352 	asr	r2, r2, r3
    8424:	e51b300c 	ldr	r3, [fp, #-12]
    8428:	e0823003 	add	r3, r2, r3
    842c:	e50b3020 	str	r3, [fp, #-32]
            nz = lz - lookup[i];
    8430:	e51b3018 	ldr	r3, [fp, #-24]
    8434:	e1a02103 	lsl	r2, r3, #2
    8438:	e51b3034 	ldr	r3, [fp, #-52]
    843c:	e0833002 	add	r3, r3, r2
    8440:	e5932000 	ldr	r2, [r3]
    8444:	e51b3008 	ldr	r3, [fp, #-8]
    8448:	e0623003 	rsb	r3, r2, r3
    844c:	e50b301c 	str	r3, [fp, #-28]
        }
        lx = nx; ly = ny; lz = nz;
    8450:	e51b3024 	ldr	r3, [fp, #-36]
    8454:	e50b3010 	str	r3, [fp, #-16]
    8458:	e51b3020 	ldr	r3, [fp, #-32]
    845c:	e50b300c 	str	r3, [fp, #-12]
    8460:	e51b301c 	ldr	r3, [fp, #-28]
    8464:	e50b3008 	str	r3, [fp, #-8]
        
        //2
        if(lz & 0x80000000){
    8468:	e51b3008 	ldr	r3, [fp, #-8]
    846c:	e3530000 	cmp	r3, #0	; 0x0
    8470:	aa000014 	bge	84c8 <int_unroll2+0x17c>
            nx = lx + (ly >> j);
    8474:	e51b200c 	ldr	r2, [fp, #-12]
    8478:	e51b3014 	ldr	r3, [fp, #-20]
    847c:	e1a02352 	asr	r2, r2, r3
    8480:	e51b3010 	ldr	r3, [fp, #-16]
    8484:	e0823003 	add	r3, r2, r3
    8488:	e50b3024 	str	r3, [fp, #-36]
            ny = ly - (lx >> j);
    848c:	e51b2010 	ldr	r2, [fp, #-16]
    8490:	e51b3014 	ldr	r3, [fp, #-20]
    8494:	e1a02352 	asr	r2, r2, r3
    8498:	e51b300c 	ldr	r3, [fp, #-12]
    849c:	e0623003 	rsb	r3, r2, r3
    84a0:	e50b3020 	str	r3, [fp, #-32]
            nz = lz + lookup[j];
    84a4:	e51b3014 	ldr	r3, [fp, #-20]
    84a8:	e1a02103 	lsl	r2, r3, #2
    84ac:	e51b3034 	ldr	r3, [fp, #-52]
    84b0:	e0833002 	add	r3, r3, r2
    84b4:	e5932000 	ldr	r2, [r3]
    84b8:	e51b3008 	ldr	r3, [fp, #-8]
    84bc:	e0823003 	add	r3, r2, r3
    84c0:	e50b301c 	str	r3, [fp, #-28]
    84c4:	ea000013 	b	8518 <int_unroll2+0x1cc>
        } else {
            nx = lx - (ly >> j);
    84c8:	e51b200c 	ldr	r2, [fp, #-12]
    84cc:	e51b3014 	ldr	r3, [fp, #-20]
    84d0:	e1a02352 	asr	r2, r2, r3
    84d4:	e51b3010 	ldr	r3, [fp, #-16]
    84d8:	e0623003 	rsb	r3, r2, r3
    84dc:	e50b3024 	str	r3, [fp, #-36]
            ny = ly + (lx >> j);
    84e0:	e51b2010 	ldr	r2, [fp, #-16]
    84e4:	e51b3014 	ldr	r3, [fp, #-20]
    84e8:	e1a02352 	asr	r2, r2, r3
    84ec:	e51b300c 	ldr	r3, [fp, #-12]
    84f0:	e0823003 	add	r3, r2, r3
    84f4:	e50b3020 	str	r3, [fp, #-32]
            nz = lz - lookup[j];
    84f8:	e51b3014 	ldr	r3, [fp, #-20]
    84fc:	e1a02103 	lsl	r2, r3, #2
    8500:	e51b3034 	ldr	r3, [fp, #-52]
    8504:	e0833002 	add	r3, r3, r2
    8508:	e5932000 	ldr	r2, [r3]
    850c:	e51b3008 	ldr	r3, [fp, #-8]
    8510:	e0623003 	rsb	r3, r2, r3
    8514:	e50b301c 	str	r3, [fp, #-28]
        }
        lx = nx; ly = ny; lz = nz;
    8518:	e51b3024 	ldr	r3, [fp, #-36]
    851c:	e50b3010 	str	r3, [fp, #-16]
    8520:	e51b3020 	ldr	r3, [fp, #-32]
    8524:	e50b300c 	str	r3, [fp, #-12]
    8528:	e51b301c 	ldr	r3, [fp, #-28]
    852c:	e50b3008 	str	r3, [fp, #-8]
    int lx, ly, lz;    
    lx = *x;
    ly = *y;
    lz = *theta;
    
    for(; i < NUM_ELEMENTS; i+=2, j+=2) {
    8530:	e51b3018 	ldr	r3, [fp, #-24]
    8534:	e2833002 	add	r3, r3, #2	; 0x2
    8538:	e50b3018 	str	r3, [fp, #-24]
    853c:	e51b3014 	ldr	r3, [fp, #-20]
    8540:	e2833002 	add	r3, r3, #2	; 0x2
    8544:	e50b3014 	str	r3, [fp, #-20]
    8548:	e51b3018 	ldr	r3, [fp, #-24]
    854c:	e353000f 	cmp	r3, #15	; 0xf
    8550:	daffff92 	ble	83a0 <int_unroll2+0x54>
        }
        lx = nx; ly = ny; lz = nz;
        
    }

    *x = lx;
    8554:	e51b202c 	ldr	r2, [fp, #-44]
    8558:	e51b3010 	ldr	r3, [fp, #-16]
    855c:	e5823000 	str	r3, [r2]
    *y = ly;
    8560:	e51b2030 	ldr	r2, [fp, #-48]
    8564:	e51b300c 	ldr	r3, [fp, #-12]
    8568:	e5823000 	str	r3, [r2]
    *theta = lz;
    856c:	e51b2028 	ldr	r2, [fp, #-40]
    8570:	e51b3008 	ldr	r3, [fp, #-8]
    8574:	e5823000 	str	r3, [r2]
}
    8578:	e28bd000 	add	sp, fp, #0	; 0x0
    857c:	e8bd0800 	pop	{fp}
    8580:	e12fff1e 	bx	lr

00008584 <main>:
#include "defines.h"

#include "impl/int_unroll2.c"

int main(int argc, char *argv[])
{
    8584:	e92d4800 	push	{fp, lr}
    8588:	e28db004 	add	fp, sp, #4	; 0x4
    858c:	e24dd018 	sub	sp, sp, #24	; 0x18
    8590:	e50b0018 	str	r0, [fp, #-24]
    8594:	e50b101c 	str	r1, [fp, #-28]
	int x = 1000;
    8598:	e3a03ffa 	mov	r3, #1000	; 0x3e8
    859c:	e50b3008 	str	r3, [fp, #-8]
	int y = 1000;
    85a0:	e3a03ffa 	mov	r3, #1000	; 0x3e8
    85a4:	e50b300c 	str	r3, [fp, #-12]
	int z = 654;
    85a8:	e3a03fa3 	mov	r3, #652	; 0x28c
    85ac:	e2833002 	add	r3, r3, #2	; 0x2
    85b0:	e50b3010 	str	r3, [fp, #-16]

	
	int_unroll2(&x, &y, &z, LOOKUP2);
    85b4:	e24b3008 	sub	r3, fp, #8	; 0x8
    85b8:	e24b200c 	sub	r2, fp, #12	; 0xc
    85bc:	e24bc010 	sub	ip, fp, #16	; 0x10
    85c0:	e1a00003 	mov	r0, r3
    85c4:	e1a01002 	mov	r1, r2
    85c8:	e1a0200c 	mov	r2, ip
    85cc:	e59f3014 	ldr	r3, [pc, #20]	; 85e8 <main+0x64>
    85d0:	ebffff5d 	bl	834c <int_unroll2>
	
	return 0;
    85d4:	e3a03000 	mov	r3, #0	; 0x0
}
    85d8:	e1a00003 	mov	r0, r3
    85dc:	e24bd004 	sub	sp, fp, #4	; 0x4
    85e0:	e8bd4800 	pop	{fp, lr}
    85e4:	e12fff1e 	bx	lr
    85e8:	000086c0 	.word	0x000086c0

000085ec <__libc_csu_fini>:
    85ec:	e12fff1e 	bx	lr

000085f0 <__libc_csu_init>:
    85f0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    85f4:	e1a08001 	mov	r8, r1
    85f8:	e1a07002 	mov	r7, r2
    85fc:	e1a0a000 	mov	sl, r0
    8600:	ebffff12 	bl	8250 <_init>
    8604:	e59f104c 	ldr	r1, [pc, #76]	; 8658 <__libc_csu_init+0x68>
    8608:	e59f304c 	ldr	r3, [pc, #76]	; 865c <__libc_csu_init+0x6c>
    860c:	e59f204c 	ldr	r2, [pc, #76]	; 8660 <__libc_csu_init+0x70>
    8610:	e0613003 	rsb	r3, r1, r3
    8614:	e08f2002 	add	r2, pc, r2
    8618:	e1b05143 	asrs	r5, r3, #2
    861c:	e0822001 	add	r2, r2, r1
    8620:	0a00000a 	beq	8650 <__libc_csu_init+0x60>
    8624:	e1a06002 	mov	r6, r2
    8628:	e3a04000 	mov	r4, #0	; 0x0
    862c:	e1a0000a 	mov	r0, sl
    8630:	e1a01008 	mov	r1, r8
    8634:	e1a02007 	mov	r2, r7
    8638:	e796c104 	ldr	ip, [r6, r4, lsl #2]
    863c:	e1a0e00f 	mov	lr, pc
    8640:	e12fff1c 	bx	ip
    8644:	e2844001 	add	r4, r4, #1	; 0x1
    8648:	e1540005 	cmp	r4, r5
    864c:	3afffff6 	bcc	862c <__libc_csu_init+0x3c>
    8650:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8654:	e12fff1e 	bx	lr
    8658:	ffffff0c 	.word	0xffffff0c
    865c:	ffffff10 	.word	0xffffff10
    8660:	000081e8 	.word	0x000081e8
Disassembly of section .fini:

00008664 <_fini>:
    8664:	e92d4010 	push	{r4, lr}
    8668:	e8bd4010 	pop	{r4, lr}
    866c:	e12fff1e 	bx	lr
