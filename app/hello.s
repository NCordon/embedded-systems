
hello.elf:     file format elf32-littlearm


Disassembly of section .startup:

00400000 <_vector_table>:
  400000:	e59ff018 	ldr	pc, [pc, #24]	; 400020 <_excep_handlers>
  400004:	e59ff018 	ldr	pc, [pc, #24]	; 400024 <_excep_handlers+0x4>
  400008:	e59ff018 	ldr	pc, [pc, #24]	; 400028 <_excep_handlers+0x8>
  40000c:	e59ff018 	ldr	pc, [pc, #24]	; 40002c <_excep_handlers+0xc>
  400010:	e59ff018 	ldr	pc, [pc, #24]	; 400030 <_excep_handlers+0x10>
  400014:	e1a00000 	nop			; (mov r0, r0)
  400018:	e59ff018 	ldr	pc, [pc, #24]	; 400038 <_excep_handlers+0x18>
  40001c:	e59ff018 	ldr	pc, [pc, #24]	; 40003c <_excep_handlers+0x1c>

00400020 <_excep_handlers>:
  400020:	00400080 	subeq	r0, r0, r0, lsl #1
  400024:	00400084 	subeq	r0, r0, r4, lsl #1
  400028:	00400088 	subeq	r0, r0, r8, lsl #1
  40002c:	0040008c 	subeq	r0, r0, ip, lsl #1
  400030:	00400090 	umaaleq	r0, r0, r0, r0
  400034:	e1a00000 	nop			; (mov r0, r0)
  400038:	00400094 	umaaleq	r0, r0, r4, r0
  40003c:	00400098 	umaaleq	r0, r0, r8, r0
  400040:	79706f43 	ldmdbvc	r0!, {r0, r1, r6, r8, r9, sl, fp, sp, lr}^
  400044:	68676972 	stmdavs	r7!, {r1, r4, r5, r6, r8, fp, sp, lr}^
  400048:	43282074 	teqmi	r8, #116	; 0x74
  40004c:	6e552029 	cdpvs	0, 5, cr2, cr5, cr9, {1}
  400050:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
  400054:	61646973 	smcvs	18067	; 0x4693
  400058:	65642064 	strbvs	r2, [r4, #-100]!	; 0x64
  40005c:	61724720 	cmnvs	r2, r0, lsr #14
  400060:	6164616e 	cmnvs	r4, lr, ror #2
  400064:	6c41202e 	mcrrvs	0, 2, r2, r1, cr14
  400068:	6952206c 	ldmdbvs	r2, {r2, r3, r5, r6, sp}^
  40006c:	73746867 	cmnvc	r4, #6750208	; 0x670000
  400070:	73655220 	cmnvc	r5, #32, 4
  400074:	65767265 	ldrbvs	r7, [r6, #-613]!	; 0x265
  400078:	00002e64 	andeq	r2, r0, r4, ror #28
  40007c:	e1a00000 	nop			; (mov r0, r0)

00400080 <_soft_reset_handler>:
  400080:	ea00000a 	b	4000b0 <_start>

00400084 <_undef_handler>:
  400084:	eafffffe 	b	400084 <_undef_handler>

00400088 <_swi_handler>:
  400088:	eafffffe 	b	400088 <_swi_handler>

0040008c <_pabt_handler>:
  40008c:	eafffffe 	b	40008c <_pabt_handler>

00400090 <_dabt_handler>:
  400090:	eafffffe 	b	400090 <_dabt_handler>

00400094 <_irq_handler>:
  400094:	eafffffe 	b	400094 <_irq_handler>

00400098 <_fiq_handler>:
  400098:	eafffffe 	b	400098 <_fiq_handler>

0040009c <_ram_init>:
  40009c:	e1500001 	cmp	r0, r1
  4000a0:	14802004 	strne	r2, [r0], #4
  4000a4:	1afffffc 	bne	40009c <_ram_init>
  4000a8:	e1a0f00e 	mov	pc, lr
  4000ac:	e1a00000 	nop			; (mov r0, r0)

004000b0 <_start>:
  4000b0:	e59f0050 	ldr	r0, [pc, #80]	; 400108 <_start+0x58>
  4000b4:	e59f1050 	ldr	r1, [pc, #80]	; 40010c <_start+0x5c>
  4000b8:	e59f2050 	ldr	r2, [pc, #80]	; 400110 <_start+0x60>
  4000bc:	ebfffff6 	bl	40009c <_ram_init>
  4000c0:	e321f0db 	msr	CPSR_c, #219	; 0xdb
  4000c4:	e59fd048 	ldr	sp, [pc, #72]	; 400114 <_start+0x64>
  4000c8:	e321f0d7 	msr	CPSR_c, #215	; 0xd7
  4000cc:	e59fd044 	ldr	sp, [pc, #68]	; 400118 <_start+0x68>
  4000d0:	e321f0df 	msr	CPSR_c, #223	; 0xdf
  4000d4:	e59fd040 	ldr	sp, [pc, #64]	; 40011c <_start+0x6c>
  4000d8:	e321f0d1 	msr	CPSR_c, #209	; 0xd1
  4000dc:	e59fd03c 	ldr	sp, [pc, #60]	; 400120 <_start+0x70>
  4000e0:	e321f0d2 	msr	CPSR_c, #210	; 0xd2
  4000e4:	e59fd038 	ldr	sp, [pc, #56]	; 400124 <_start+0x74>
  4000e8:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  4000ec:	e59fd034 	ldr	sp, [pc, #52]	; 400128 <_start+0x78>
  4000f0:	e59fc034 	ldr	ip, [pc, #52]	; 40012c <_start+0x7c>
  4000f4:	e1a0e00f 	mov	lr, pc
  4000f8:	e12fff1c 	bx	ip
  4000fc:	e321f010 	msr	CPSR_c, #16
  400100:	ea000067 	b	4002a4 <main>
  400104:	eafffffe 	b	400104 <_start+0x54>
  400108:	004178e0 	subeq	r7, r1, r0, ror #17
  40010c:	00418000 	subeq	r8, r1, r0
  400110:	deadbeef 	cdple	14, 10, cr11, cr13, cr15, {7}
  400114:	00417e00 	subeq	r7, r1, r0, lsl #28
  400118:	00417df0 	strdeq	r7, [r1], #-208	; 0xffffff30
  40011c:	00417ce0 	subeq	r7, r1, r0, ror #25
  400120:	00418000 	subeq	r8, r1, r0
  400124:	00417f00 	subeq	r7, r1, r0, lsl #30
  400128:	00417de0 	subeq	r7, r1, r0, ror #27
  40012c:	004003b4 	strheq	r0, [r0], #-52	; 0xffffffcc

Disassembly of section .text:

00400130 <gpio_init>:
  400130:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400134:	e28db000 	add	fp, sp, #0
  400138:	e3a03112 	mov	r3, #-2147483644	; 0x80000004
  40013c:	e3a01a01 	mov	r1, #4096	; 0x1000
  400140:	e3a02a02 	mov	r2, #8192	; 0x2000
  400144:	e1812002 	orr	r2, r1, r2
  400148:	e5832000 	str	r2, [r3]
  40014c:	e3a03102 	mov	r3, #-2147483648	; 0x80000000
  400150:	e3a01302 	mov	r1, #134217728	; 0x8000000
  400154:	e3a02301 	mov	r2, #67108864	; 0x4000000
  400158:	e1812002 	orr	r2, r1, r2
  40015c:	e5832000 	str	r2, [r3]
  400160:	e59f3018 	ldr	r3, [pc, #24]	; 400180 <gpio_init+0x50>
  400164:	e3a01302 	mov	r1, #134217728	; 0x8000000
  400168:	e3a02301 	mov	r2, #67108864	; 0x4000000
  40016c:	e1812002 	orr	r2, r1, r2
  400170:	e5832000 	str	r2, [r3]
  400174:	e24bd000 	sub	sp, fp, #0
  400178:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  40017c:	e12fff1e 	bx	lr
  400180:	80000048 	andhi	r0, r0, r8, asr #32

00400184 <leds_on>:
  400184:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400188:	e28db000 	add	fp, sp, #0
  40018c:	e24dd00c 	sub	sp, sp, #12
  400190:	e50b0008 	str	r0, [fp, #-8]
  400194:	e59f3010 	ldr	r3, [pc, #16]	; 4001ac <leds_on+0x28>
  400198:	e51b2008 	ldr	r2, [fp, #-8]
  40019c:	e5832000 	str	r2, [r3]
  4001a0:	e24bd000 	sub	sp, fp, #0
  4001a4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  4001a8:	e12fff1e 	bx	lr
  4001ac:	8000004c 	andhi	r0, r0, ip, asr #32

004001b0 <leds_off>:
  4001b0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4001b4:	e28db000 	add	fp, sp, #0
  4001b8:	e24dd00c 	sub	sp, sp, #12
  4001bc:	e50b0008 	str	r0, [fp, #-8]
  4001c0:	e59f3010 	ldr	r3, [pc, #16]	; 4001d8 <leds_off+0x28>
  4001c4:	e51b2008 	ldr	r2, [fp, #-8]
  4001c8:	e5832000 	str	r2, [r3]
  4001cc:	e24bd000 	sub	sp, fp, #0
  4001d0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  4001d4:	e12fff1e 	bx	lr
  4001d8:	80000054 	andhi	r0, r0, r4, asr r0

004001dc <pause>:
  4001dc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4001e0:	e28db000 	add	fp, sp, #0
  4001e4:	e24dd00c 	sub	sp, sp, #12
  4001e8:	e3a03000 	mov	r3, #0
  4001ec:	e50b3008 	str	r3, [fp, #-8]
  4001f0:	ea000002 	b	400200 <pause+0x24>
  4001f4:	e51b3008 	ldr	r3, [fp, #-8]
  4001f8:	e2833001 	add	r3, r3, #1
  4001fc:	e50b3008 	str	r3, [fp, #-8]
  400200:	e3a03801 	mov	r3, #65536	; 0x10000
  400204:	e51b2008 	ldr	r2, [fp, #-8]
  400208:	e1520003 	cmp	r2, r3
  40020c:	3afffff8 	bcc	4001f4 <pause+0x18>
  400210:	e24bd000 	sub	sp, fp, #0
  400214:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400218:	e12fff1e 	bx	lr

0040021c <test_buttons>:
  40021c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400220:	e28db000 	add	fp, sp, #0
  400224:	e3a03122 	mov	r3, #-2147483640	; 0x80000008
  400228:	e5932000 	ldr	r2, [r3]
  40022c:	e3a03502 	mov	r3, #8388608	; 0x800000
  400230:	e0022003 	and	r2, r2, r3
  400234:	e3a03502 	mov	r3, #8388608	; 0x800000
  400238:	e1520003 	cmp	r2, r3
  40023c:	1a000006 	bne	40025c <test_buttons+0x40>
  400240:	e3a02a01 	mov	r2, #4096	; 0x1000
  400244:	e59f3050 	ldr	r3, [pc, #80]	; 40029c <test_buttons+0x80>
  400248:	e5832000 	str	r2, [r3]
  40024c:	e59f304c 	ldr	r3, [pc, #76]	; 4002a0 <test_buttons+0x84>
  400250:	e3a02a02 	mov	r2, #8192	; 0x2000
  400254:	e5832000 	str	r2, [r3]
  400258:	ea00000c 	b	400290 <test_buttons+0x74>
  40025c:	e3a03122 	mov	r3, #-2147483640	; 0x80000008
  400260:	e5932000 	ldr	r2, [r3]
  400264:	e3a03501 	mov	r3, #4194304	; 0x400000
  400268:	e0022003 	and	r2, r2, r3
  40026c:	e3a03501 	mov	r3, #4194304	; 0x400000
  400270:	e1520003 	cmp	r2, r3
  400274:	1a000005 	bne	400290 <test_buttons+0x74>
  400278:	e3a02a02 	mov	r2, #8192	; 0x2000
  40027c:	e59f3018 	ldr	r3, [pc, #24]	; 40029c <test_buttons+0x80>
  400280:	e5832000 	str	r2, [r3]
  400284:	e59f3014 	ldr	r3, [pc, #20]	; 4002a0 <test_buttons+0x84>
  400288:	e3a02a01 	mov	r2, #4096	; 0x1000
  40028c:	e5832000 	str	r2, [r3]
  400290:	e24bd000 	sub	sp, fp, #0
  400294:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400298:	e12fff1e 	bx	lr
  40029c:	00402b50 	subeq	r2, r0, r0, asr fp
  4002a0:	80000054 	andhi	r0, r0, r4, asr r0

004002a4 <main>:
  4002a4:	e92d4800 	push	{fp, lr}
  4002a8:	e28db004 	add	fp, sp, #4
  4002ac:	ebffff9f 	bl	400130 <gpio_init>
  4002b0:	e3a02a01 	mov	r2, #4096	; 0x1000
  4002b4:	e59f3034 	ldr	r3, [pc, #52]	; 4002f0 <main+0x4c>
  4002b8:	e5832000 	str	r2, [r3]
  4002bc:	26889912 	pkhbtcs	r9, r8, r2, lsl #18
  4002c0:	ebffffd5 	bl	40021c <test_buttons>
  4002c4:	e59f3024 	ldr	r3, [pc, #36]	; 4002f0 <main+0x4c>
  4002c8:	e5933000 	ldr	r3, [r3]
  4002cc:	e1a00003 	mov	r0, r3
  4002d0:	ebffffab 	bl	400184 <leds_on>
  4002d4:	ebffffc0 	bl	4001dc <pause>
  4002d8:	e59f3010 	ldr	r3, [pc, #16]	; 4002f0 <main+0x4c>
  4002dc:	e5933000 	ldr	r3, [r3]
  4002e0:	e1a00003 	mov	r0, r3
  4002e4:	ebffffb1 	bl	4001b0 <leds_off>
  4002e8:	ebffffbb 	bl	4001dc <pause>
  4002ec:	eafffff3 	b	4002c0 <main+0x1c>
  4002f0:	00402b50 	subeq	r2, r0, r0, asr fp

004002f4 <bsp_excep_init>:
  4002f4:	e92d4800 	push	{fp, lr}
  4002f8:	e28db004 	add	fp, sp, #4
  4002fc:	eb00016d 	bl	4008b8 <excep_init>
  400300:	eb0001d1 	bl	400a4c <itc_init>
  400304:	e24bd004 	sub	sp, fp, #4
  400308:	e8bd4800 	pop	{fp, lr}
  40030c:	e12fff1e 	bx	lr

00400310 <bsp_sys_init>:
  400310:	e92d4800 	push	{fp, lr}
  400314:	e28db004 	add	fp, sp, #4
  400318:	e3a00000 	mov	r0, #0
  40031c:	e59f1020 	ldr	r1, [pc, #32]	; 400344 <bsp_sys_init+0x34>
  400320:	e59f2020 	ldr	r2, [pc, #32]	; 400348 <bsp_sys_init+0x38>
  400324:	eb000214 	bl	400b7c <uart_init>
  400328:	e3a00001 	mov	r0, #1
  40032c:	e59f1010 	ldr	r1, [pc, #16]	; 400344 <bsp_sys_init+0x34>
  400330:	e59f2014 	ldr	r2, [pc, #20]	; 40034c <bsp_sys_init+0x3c>
  400334:	eb000210 	bl	400b7c <uart_init>
  400338:	e24bd004 	sub	sp, fp, #4
  40033c:	e8bd4800 	pop	{fp, lr}
  400340:	e12fff1e 	bx	lr
  400344:	0001c200 	andeq	ip, r1, r0, lsl #4
  400348:	00401cd8 	ldrdeq	r1, [r0], #-200	; 0xffffff38
  40034c:	00401ce4 	subeq	r1, r0, r4, ror #25

00400350 <bsp_io_redirect>:
  400350:	e92d4800 	push	{fp, lr}
  400354:	e28db004 	add	fp, sp, #4
  400358:	e24dd010 	sub	sp, sp, #16
  40035c:	e50b0008 	str	r0, [fp, #-8]
  400360:	e50b100c 	str	r1, [fp, #-12]
  400364:	e50b2010 	str	r2, [fp, #-16]
  400368:	e3a00000 	mov	r0, #0
  40036c:	e51b1008 	ldr	r1, [fp, #-8]
  400370:	e3a02000 	mov	r2, #0
  400374:	e59f3034 	ldr	r3, [pc, #52]	; 4003b0 <bsp_io_redirect+0x60>
  400378:	eb000124 	bl	400810 <redirect_fd>
  40037c:	e3a00001 	mov	r0, #1
  400380:	e51b100c 	ldr	r1, [fp, #-12]
  400384:	e3a02001 	mov	r2, #1
  400388:	e59f3020 	ldr	r3, [pc, #32]	; 4003b0 <bsp_io_redirect+0x60>
  40038c:	eb00011f 	bl	400810 <redirect_fd>
  400390:	e3a00002 	mov	r0, #2
  400394:	e51b1010 	ldr	r1, [fp, #-16]
  400398:	e3a02001 	mov	r2, #1
  40039c:	e59f300c 	ldr	r3, [pc, #12]	; 4003b0 <bsp_io_redirect+0x60>
  4003a0:	eb00011a 	bl	400810 <redirect_fd>
  4003a4:	e24bd004 	sub	sp, fp, #4
  4003a8:	e8bd4800 	pop	{fp, lr}
  4003ac:	e12fff1e 	bx	lr
  4003b0:	000001ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

004003b4 <bsp_init>:
  4003b4:	e92d4800 	push	{fp, lr}
  4003b8:	e28db004 	add	fp, sp, #4
  4003bc:	ebffffcc 	bl	4002f4 <bsp_excep_init>
  4003c0:	ebffffd2 	bl	400310 <bsp_sys_init>
  4003c4:	e59f0014 	ldr	r0, [pc, #20]	; 4003e0 <bsp_init+0x2c>
  4003c8:	e59f1010 	ldr	r1, [pc, #16]	; 4003e0 <bsp_init+0x2c>
  4003cc:	e59f200c 	ldr	r2, [pc, #12]	; 4003e0 <bsp_init+0x2c>
  4003d0:	ebffffde 	bl	400350 <bsp_io_redirect>
  4003d4:	e24bd004 	sub	sp, fp, #4
  4003d8:	e8bd4800 	pop	{fp, lr}
  4003dc:	e12fff1e 	bx	lr
  4003e0:	00401cd8 	ldrdeq	r1, [r0], #-200	; 0xffffff38

004003e4 <bsp_register_dev>:
  4003e4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4003e8:	e28db000 	add	fp, sp, #0
  4003ec:	e24dd01c 	sub	sp, sp, #28
  4003f0:	e50b0010 	str	r0, [fp, #-16]
  4003f4:	e50b1014 	str	r1, [fp, #-20]
  4003f8:	e50b2018 	str	r2, [fp, #-24]
  4003fc:	e50b301c 	str	r3, [fp, #-28]
  400400:	e3e03000 	mvn	r3, #0
  400404:	e50b3008 	str	r3, [fp, #-8]
  400408:	e59f31b8 	ldr	r3, [pc, #440]	; 4005c8 <bsp_register_dev+0x1e4>
  40040c:	e5933000 	ldr	r3, [r3]
  400410:	e3530007 	cmp	r3, #7
  400414:	8a000066 	bhi	4005b4 <bsp_register_dev+0x1d0>
  400418:	e59f31a8 	ldr	r3, [pc, #424]	; 4005c8 <bsp_register_dev+0x1e4>
  40041c:	e5933000 	ldr	r3, [r3]
  400420:	e50b3008 	str	r3, [fp, #-8]
  400424:	e59f319c 	ldr	r3, [pc, #412]	; 4005c8 <bsp_register_dev+0x1e4>
  400428:	e5933000 	ldr	r3, [r3]
  40042c:	e2832001 	add	r2, r3, #1
  400430:	e59f3190 	ldr	r3, [pc, #400]	; 4005c8 <bsp_register_dev+0x1e4>
  400434:	e5832000 	str	r2, [r3]
  400438:	e59f118c 	ldr	r1, [pc, #396]	; 4005cc <bsp_register_dev+0x1e8>
  40043c:	e51b2008 	ldr	r2, [fp, #-8]
  400440:	e1a03002 	mov	r3, r2
  400444:	e1a03183 	lsl	r3, r3, #3
  400448:	e0833002 	add	r3, r3, r2
  40044c:	e1a03103 	lsl	r3, r3, #2
  400450:	e0813003 	add	r3, r1, r3
  400454:	e51b2010 	ldr	r2, [fp, #-16]
  400458:	e5832000 	str	r2, [r3]
  40045c:	e59f1168 	ldr	r1, [pc, #360]	; 4005cc <bsp_register_dev+0x1e8>
  400460:	e51b2008 	ldr	r2, [fp, #-8]
  400464:	e1a03002 	mov	r3, r2
  400468:	e1a03183 	lsl	r3, r3, #3
  40046c:	e0833002 	add	r3, r3, r2
  400470:	e1a03103 	lsl	r3, r3, #2
  400474:	e0813003 	add	r3, r1, r3
  400478:	e51b2014 	ldr	r2, [fp, #-20]
  40047c:	e5832004 	str	r2, [r3, #4]
  400480:	e59f0144 	ldr	r0, [pc, #324]	; 4005cc <bsp_register_dev+0x1e8>
  400484:	e51b2008 	ldr	r2, [fp, #-8]
  400488:	e3a01008 	mov	r1, #8
  40048c:	e1a03002 	mov	r3, r2
  400490:	e1a03183 	lsl	r3, r3, #3
  400494:	e0833002 	add	r3, r3, r2
  400498:	e1a03103 	lsl	r3, r3, #2
  40049c:	e0803003 	add	r3, r0, r3
  4004a0:	e0833001 	add	r3, r3, r1
  4004a4:	e51b2018 	ldr	r2, [fp, #-24]
  4004a8:	e5832000 	str	r2, [r3]
  4004ac:	e59f0118 	ldr	r0, [pc, #280]	; 4005cc <bsp_register_dev+0x1e8>
  4004b0:	e51b2008 	ldr	r2, [fp, #-8]
  4004b4:	e3a01008 	mov	r1, #8
  4004b8:	e1a03002 	mov	r3, r2
  4004bc:	e1a03183 	lsl	r3, r3, #3
  4004c0:	e0833002 	add	r3, r3, r2
  4004c4:	e1a03103 	lsl	r3, r3, #2
  4004c8:	e0803003 	add	r3, r0, r3
  4004cc:	e0833001 	add	r3, r3, r1
  4004d0:	e51b201c 	ldr	r2, [fp, #-28]
  4004d4:	e5832004 	str	r2, [r3, #4]
  4004d8:	e59f00ec 	ldr	r0, [pc, #236]	; 4005cc <bsp_register_dev+0x1e8>
  4004dc:	e51b2008 	ldr	r2, [fp, #-8]
  4004e0:	e3a01010 	mov	r1, #16
  4004e4:	e1a03002 	mov	r3, r2
  4004e8:	e1a03183 	lsl	r3, r3, #3
  4004ec:	e0833002 	add	r3, r3, r2
  4004f0:	e1a03103 	lsl	r3, r3, #2
  4004f4:	e0803003 	add	r3, r0, r3
  4004f8:	e0833001 	add	r3, r3, r1
  4004fc:	e59b2004 	ldr	r2, [fp, #4]
  400500:	e5832000 	str	r2, [r3]
  400504:	e59f00c0 	ldr	r0, [pc, #192]	; 4005cc <bsp_register_dev+0x1e8>
  400508:	e51b2008 	ldr	r2, [fp, #-8]
  40050c:	e3a01010 	mov	r1, #16
  400510:	e1a03002 	mov	r3, r2
  400514:	e1a03183 	lsl	r3, r3, #3
  400518:	e0833002 	add	r3, r3, r2
  40051c:	e1a03103 	lsl	r3, r3, #2
  400520:	e0803003 	add	r3, r0, r3
  400524:	e0833001 	add	r3, r3, r1
  400528:	e59b2008 	ldr	r2, [fp, #8]
  40052c:	e5832004 	str	r2, [r3, #4]
  400530:	e59f0094 	ldr	r0, [pc, #148]	; 4005cc <bsp_register_dev+0x1e8>
  400534:	e51b2008 	ldr	r2, [fp, #-8]
  400538:	e3a01018 	mov	r1, #24
  40053c:	e1a03002 	mov	r3, r2
  400540:	e1a03183 	lsl	r3, r3, #3
  400544:	e0833002 	add	r3, r3, r2
  400548:	e1a03103 	lsl	r3, r3, #2
  40054c:	e0803003 	add	r3, r0, r3
  400550:	e0833001 	add	r3, r3, r1
  400554:	e59b200c 	ldr	r2, [fp, #12]
  400558:	e5832000 	str	r2, [r3]
  40055c:	e59f0068 	ldr	r0, [pc, #104]	; 4005cc <bsp_register_dev+0x1e8>
  400560:	e51b2008 	ldr	r2, [fp, #-8]
  400564:	e3a01018 	mov	r1, #24
  400568:	e1a03002 	mov	r3, r2
  40056c:	e1a03183 	lsl	r3, r3, #3
  400570:	e0833002 	add	r3, r3, r2
  400574:	e1a03103 	lsl	r3, r3, #2
  400578:	e0803003 	add	r3, r0, r3
  40057c:	e0833001 	add	r3, r3, r1
  400580:	e59b2010 	ldr	r2, [fp, #16]
  400584:	e5832004 	str	r2, [r3, #4]
  400588:	e59f003c 	ldr	r0, [pc, #60]	; 4005cc <bsp_register_dev+0x1e8>
  40058c:	e51b2008 	ldr	r2, [fp, #-8]
  400590:	e3a01020 	mov	r1, #32
  400594:	e1a03002 	mov	r3, r2
  400598:	e1a03183 	lsl	r3, r3, #3
  40059c:	e0833002 	add	r3, r3, r2
  4005a0:	e1a03103 	lsl	r3, r3, #2
  4005a4:	e0803003 	add	r3, r0, r3
  4005a8:	e0833001 	add	r3, r3, r1
  4005ac:	e59b2014 	ldr	r2, [fp, #20]
  4005b0:	e5832000 	str	r2, [r3]
  4005b4:	e51b3008 	ldr	r3, [fp, #-8]
  4005b8:	e1a00003 	mov	r0, r3
  4005bc:	e24bd000 	sub	sp, fp, #0
  4005c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  4005c4:	e12fff1e 	bx	lr
  4005c8:	00401e40 	subeq	r1, r0, r0, asr #28
  4005cc:	00401d20 	subeq	r1, r0, r0, lsr #26

004005d0 <find_dev>:
  4005d0:	e92d4800 	push	{fp, lr}
  4005d4:	e28db004 	add	fp, sp, #4
  4005d8:	e24dd010 	sub	sp, sp, #16
  4005dc:	e50b0010 	str	r0, [fp, #-16]
  4005e0:	e51b0010 	ldr	r0, [fp, #-16]
  4005e4:	eb000267 	bl	400f88 <strlen>
  4005e8:	e1a03000 	mov	r3, r0
  4005ec:	e2833001 	add	r3, r3, #1
  4005f0:	e50b300c 	str	r3, [fp, #-12]
  4005f4:	e3a03000 	mov	r3, #0
  4005f8:	e50b3008 	str	r3, [fp, #-8]
  4005fc:	ea000019 	b	400668 <find_dev+0x98>
  400600:	e59f1088 	ldr	r1, [pc, #136]	; 400690 <find_dev+0xc0>
  400604:	e51b2008 	ldr	r2, [fp, #-8]
  400608:	e1a03002 	mov	r3, r2
  40060c:	e1a03183 	lsl	r3, r3, #3
  400610:	e0833002 	add	r3, r3, r2
  400614:	e1a03103 	lsl	r3, r3, #2
  400618:	e0813003 	add	r3, r1, r3
  40061c:	e5933000 	ldr	r3, [r3]
  400620:	e1a00003 	mov	r0, r3
  400624:	e51b1010 	ldr	r1, [fp, #-16]
  400628:	e51b200c 	ldr	r2, [fp, #-12]
  40062c:	eb000228 	bl	400ed4 <memcmp>
  400630:	e1a03000 	mov	r3, r0
  400634:	e3530000 	cmp	r3, #0
  400638:	1a000007 	bne	40065c <find_dev+0x8c>
  40063c:	e51b2008 	ldr	r2, [fp, #-8]
  400640:	e1a03002 	mov	r3, r2
  400644:	e1a03183 	lsl	r3, r3, #3
  400648:	e0833002 	add	r3, r3, r2
  40064c:	e1a03103 	lsl	r3, r3, #2
  400650:	e59f2038 	ldr	r2, [pc, #56]	; 400690 <find_dev+0xc0>
  400654:	e0833002 	add	r3, r3, r2
  400658:	ea000008 	b	400680 <find_dev+0xb0>
  40065c:	e51b3008 	ldr	r3, [fp, #-8]
  400660:	e2833001 	add	r3, r3, #1
  400664:	e50b3008 	str	r3, [fp, #-8]
  400668:	e59f3024 	ldr	r3, [pc, #36]	; 400694 <find_dev+0xc4>
  40066c:	e5933000 	ldr	r3, [r3]
  400670:	e51b2008 	ldr	r2, [fp, #-8]
  400674:	e1520003 	cmp	r2, r3
  400678:	3affffe0 	bcc	400600 <find_dev+0x30>
  40067c:	e3a03000 	mov	r3, #0
  400680:	e1a00003 	mov	r0, r3
  400684:	e24bd004 	sub	sp, fp, #4
  400688:	e8bd4800 	pop	{fp, lr}
  40068c:	e12fff1e 	bx	lr
  400690:	00401d20 	subeq	r1, r0, r0, lsr #26
  400694:	00401e40 	subeq	r1, r0, r0, asr #28

00400698 <get_dev>:
  400698:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  40069c:	e28db000 	add	fp, sp, #0
  4006a0:	e24dd00c 	sub	sp, sp, #12
  4006a4:	e50b0008 	str	r0, [fp, #-8]
  4006a8:	e59f3014 	ldr	r3, [pc, #20]	; 4006c4 <get_dev+0x2c>
  4006ac:	e51b2008 	ldr	r2, [fp, #-8]
  4006b0:	e7933182 	ldr	r3, [r3, r2, lsl #3]
  4006b4:	e1a00003 	mov	r0, r3
  4006b8:	e24bd000 	sub	sp, fp, #0
  4006bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  4006c0:	e12fff1e 	bx	lr
  4006c4:	00401e44 	subeq	r1, r0, r4, asr #28

004006c8 <get_flags>:
  4006c8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4006cc:	e28db000 	add	fp, sp, #0
  4006d0:	e24dd00c 	sub	sp, sp, #12
  4006d4:	e50b0008 	str	r0, [fp, #-8]
  4006d8:	e59f1024 	ldr	r1, [pc, #36]	; 400704 <get_flags+0x3c>
  4006dc:	e51b2008 	ldr	r2, [fp, #-8]
  4006e0:	e3a03004 	mov	r3, #4
  4006e4:	e1a02182 	lsl	r2, r2, #3
  4006e8:	e0812002 	add	r2, r1, r2
  4006ec:	e0823003 	add	r3, r2, r3
  4006f0:	e5933000 	ldr	r3, [r3]
  4006f4:	e1a00003 	mov	r0, r3
  4006f8:	e24bd000 	sub	sp, fp, #0
  4006fc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400700:	e12fff1e 	bx	lr
  400704:	00401e44 	subeq	r1, r0, r4, asr #28

00400708 <get_fd>:
  400708:	e92d4800 	push	{fp, lr}
  40070c:	e28db004 	add	fp, sp, #4
  400710:	e24dd010 	sub	sp, sp, #16
  400714:	e50b0010 	str	r0, [fp, #-16]
  400718:	e50b1014 	str	r1, [fp, #-20]
  40071c:	e3a03000 	mov	r3, #0
  400720:	e50b3008 	str	r3, [fp, #-8]
  400724:	ea000015 	b	400780 <get_fd+0x78>
  400728:	e59f3080 	ldr	r3, [pc, #128]	; 4007b0 <get_fd+0xa8>
  40072c:	e51b2008 	ldr	r2, [fp, #-8]
  400730:	e7933182 	ldr	r3, [r3, r2, lsl #3]
  400734:	e3530000 	cmp	r3, #0
  400738:	1a00000d 	bne	400774 <get_fd+0x6c>
  40073c:	e59f306c 	ldr	r3, [pc, #108]	; 4007b0 <get_fd+0xa8>
  400740:	e51b2008 	ldr	r2, [fp, #-8]
  400744:	e51b1010 	ldr	r1, [fp, #-16]
  400748:	e7831182 	str	r1, [r3, r2, lsl #3]
  40074c:	e59f105c 	ldr	r1, [pc, #92]	; 4007b0 <get_fd+0xa8>
  400750:	e51b2008 	ldr	r2, [fp, #-8]
  400754:	e3a03004 	mov	r3, #4
  400758:	e1a02182 	lsl	r2, r2, #3
  40075c:	e0812002 	add	r2, r1, r2
  400760:	e0823003 	add	r3, r2, r3
  400764:	e51b2014 	ldr	r2, [fp, #-20]
  400768:	e5832000 	str	r2, [r3]
  40076c:	e51b3008 	ldr	r3, [fp, #-8]
  400770:	ea00000a 	b	4007a0 <get_fd+0x98>
  400774:	e51b3008 	ldr	r3, [fp, #-8]
  400778:	e2833001 	add	r3, r3, #1
  40077c:	e50b3008 	str	r3, [fp, #-8]
  400780:	e51b3008 	ldr	r3, [fp, #-8]
  400784:	e3530007 	cmp	r3, #7
  400788:	daffffe6 	ble	400728 <get_fd+0x20>
  40078c:	eb0001cc 	bl	400ec4 <__errno>
  400790:	e1a03000 	mov	r3, r0
  400794:	e3a02017 	mov	r2, #23
  400798:	e5832000 	str	r2, [r3]
  40079c:	e3e03000 	mvn	r3, #0
  4007a0:	e1a00003 	mov	r0, r3
  4007a4:	e24bd004 	sub	sp, fp, #4
  4007a8:	e8bd4800 	pop	{fp, lr}
  4007ac:	e12fff1e 	bx	lr
  4007b0:	00401e44 	subeq	r1, r0, r4, asr #28

004007b4 <release_fd>:
  4007b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4007b8:	e28db000 	add	fp, sp, #0
  4007bc:	e24dd00c 	sub	sp, sp, #12
  4007c0:	e50b0008 	str	r0, [fp, #-8]
  4007c4:	e51b3008 	ldr	r3, [fp, #-8]
  4007c8:	e3530002 	cmp	r3, #2
  4007cc:	9a00000b 	bls	400800 <release_fd+0x4c>
  4007d0:	e59f3034 	ldr	r3, [pc, #52]	; 40080c <release_fd+0x58>
  4007d4:	e51b2008 	ldr	r2, [fp, #-8]
  4007d8:	e3a01000 	mov	r1, #0
  4007dc:	e7831182 	str	r1, [r3, r2, lsl #3]
  4007e0:	e59f1024 	ldr	r1, [pc, #36]	; 40080c <release_fd+0x58>
  4007e4:	e51b2008 	ldr	r2, [fp, #-8]
  4007e8:	e3a03004 	mov	r3, #4
  4007ec:	e1a02182 	lsl	r2, r2, #3
  4007f0:	e0812002 	add	r2, r1, r2
  4007f4:	e0823003 	add	r3, r2, r3
  4007f8:	e3a02000 	mov	r2, #0
  4007fc:	e5832000 	str	r2, [r3]
  400800:	e24bd000 	sub	sp, fp, #0
  400804:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400808:	e12fff1e 	bx	lr
  40080c:	00401e44 	subeq	r1, r0, r4, asr #28

00400810 <redirect_fd>:
  400810:	e92d4800 	push	{fp, lr}
  400814:	e28db004 	add	fp, sp, #4
  400818:	e24dd018 	sub	sp, sp, #24
  40081c:	e50b0010 	str	r0, [fp, #-16]
  400820:	e50b1014 	str	r1, [fp, #-20]
  400824:	e50b2018 	str	r2, [fp, #-24]
  400828:	e50b301c 	str	r3, [fp, #-28]
  40082c:	e51b0014 	ldr	r0, [fp, #-20]
  400830:	e51b1018 	ldr	r1, [fp, #-24]
  400834:	e51b201c 	ldr	r2, [fp, #-28]
  400838:	eb0001ea 	bl	400fe8 <open>
  40083c:	e50b0008 	str	r0, [fp, #-8]
  400840:	e51b3008 	ldr	r3, [fp, #-8]
  400844:	e3530000 	cmp	r3, #0
  400848:	ba000016 	blt	4008a8 <redirect_fd+0x98>
  40084c:	e59f3060 	ldr	r3, [pc, #96]	; 4008b4 <redirect_fd+0xa4>
  400850:	e51b2008 	ldr	r2, [fp, #-8]
  400854:	e7931182 	ldr	r1, [r3, r2, lsl #3]
  400858:	e59f3054 	ldr	r3, [pc, #84]	; 4008b4 <redirect_fd+0xa4>
  40085c:	e51b2010 	ldr	r2, [fp, #-16]
  400860:	e7831182 	str	r1, [r3, r2, lsl #3]
  400864:	e59f1048 	ldr	r1, [pc, #72]	; 4008b4 <redirect_fd+0xa4>
  400868:	e51b2008 	ldr	r2, [fp, #-8]
  40086c:	e3a03004 	mov	r3, #4
  400870:	e1a02182 	lsl	r2, r2, #3
  400874:	e0812002 	add	r2, r1, r2
  400878:	e0823003 	add	r3, r2, r3
  40087c:	e5932000 	ldr	r2, [r3]
  400880:	e59f002c 	ldr	r0, [pc, #44]	; 4008b4 <redirect_fd+0xa4>
  400884:	e51b1010 	ldr	r1, [fp, #-16]
  400888:	e3a03004 	mov	r3, #4
  40088c:	e1a01181 	lsl	r1, r1, #3
  400890:	e0801001 	add	r1, r0, r1
  400894:	e0813003 	add	r3, r1, r3
  400898:	e5832000 	str	r2, [r3]
  40089c:	e51b3008 	ldr	r3, [fp, #-8]
  4008a0:	e1a00003 	mov	r0, r3
  4008a4:	ebffffc2 	bl	4007b4 <release_fd>
  4008a8:	e24bd004 	sub	sp, fp, #4
  4008ac:	e8bd4800 	pop	{fp, lr}
  4008b0:	e12fff1e 	bx	lr
  4008b4:	00401e44 	subeq	r1, r0, r4, asr #28

004008b8 <excep_init>:
  4008b8:	e92d4800 	push	{fp, lr}
  4008bc:	e28db004 	add	fp, sp, #4
  4008c0:	e3a00006 	mov	r0, #6
  4008c4:	e59f100c 	ldr	r1, [pc, #12]	; 4008d8 <excep_init+0x20>
  4008c8:	eb000035 	bl	4009a4 <excep_set_handler>
  4008cc:	e24bd004 	sub	sp, fp, #4
  4008d0:	e8bd4800 	pop	{fp, lr}
  4008d4:	e12fff1e 	bx	lr
  4008d8:	00400a38 	subeq	r0, r0, r8, lsr sl

004008dc <algo>:
  4008dc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4008e0:	e28db000 	add	fp, sp, #0
  4008e4:	e59f300c 	ldr	r3, [pc, #12]	; 4008f8 <algo+0x1c>
  4008e8:	e1a00003 	mov	r0, r3
  4008ec:	e24bd000 	sub	sp, fp, #0
  4008f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  4008f4:	e12fff1e 	bx	lr
  4008f8:	004008dc 	ldrdeq	r0, [r0], #-140	; 0xffffff74

004008fc <excep_disable_ints>:
  4008fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400900:	e28db000 	add	fp, sp, #0
  400904:	e3a03000 	mov	r3, #0
  400908:	e1a00003 	mov	r0, r3
  40090c:	e24bd000 	sub	sp, fp, #0
  400910:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400914:	e12fff1e 	bx	lr

00400918 <excep_disable_irq>:
  400918:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  40091c:	e28db000 	add	fp, sp, #0
  400920:	e3a03000 	mov	r3, #0
  400924:	e1a00003 	mov	r0, r3
  400928:	e24bd000 	sub	sp, fp, #0
  40092c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400930:	e12fff1e 	bx	lr

00400934 <excep_disable_fiq>:
  400934:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400938:	e28db000 	add	fp, sp, #0
  40093c:	e3a03000 	mov	r3, #0
  400940:	e1a00003 	mov	r0, r3
  400944:	e24bd000 	sub	sp, fp, #0
  400948:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  40094c:	e12fff1e 	bx	lr

00400950 <excep_restore_ints>:
  400950:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400954:	e28db000 	add	fp, sp, #0
  400958:	e24dd00c 	sub	sp, sp, #12
  40095c:	e50b0008 	str	r0, [fp, #-8]
  400960:	e24bd000 	sub	sp, fp, #0
  400964:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400968:	e12fff1e 	bx	lr

0040096c <excep_restore_irq>:
  40096c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400970:	e28db000 	add	fp, sp, #0
  400974:	e24dd00c 	sub	sp, sp, #12
  400978:	e50b0008 	str	r0, [fp, #-8]
  40097c:	e24bd000 	sub	sp, fp, #0
  400980:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400984:	e12fff1e 	bx	lr

00400988 <excep_restore_fiq>:
  400988:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  40098c:	e28db000 	add	fp, sp, #0
  400990:	e24dd00c 	sub	sp, sp, #12
  400994:	e50b0008 	str	r0, [fp, #-8]
  400998:	e24bd000 	sub	sp, fp, #0
  40099c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  4009a0:	e12fff1e 	bx	lr

004009a4 <excep_set_handler>:
  4009a4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4009a8:	e28db000 	add	fp, sp, #0
  4009ac:	e24dd00c 	sub	sp, sp, #12
  4009b0:	e1a03000 	mov	r3, r0
  4009b4:	e50b100c 	str	r1, [fp, #-12]
  4009b8:	e54b3005 	strb	r3, [fp, #-5]
  4009bc:	e55b3005 	ldrb	r3, [fp, #-5]
  4009c0:	e3530007 	cmp	r3, #7
  4009c4:	8a000003 	bhi	4009d8 <excep_set_handler+0x34>
  4009c8:	e55b2005 	ldrb	r2, [fp, #-5]
  4009cc:	e59f3010 	ldr	r3, [pc, #16]	; 4009e4 <excep_set_handler+0x40>
  4009d0:	e51b100c 	ldr	r1, [fp, #-12]
  4009d4:	e7831102 	str	r1, [r3, r2, lsl #2]
  4009d8:	e24bd000 	sub	sp, fp, #0
  4009dc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  4009e0:	e12fff1e 	bx	lr
  4009e4:	00400020 	subeq	r0, r0, r0, lsr #32

004009e8 <excep_get_handler>:
  4009e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4009ec:	e28db000 	add	fp, sp, #0
  4009f0:	e24dd014 	sub	sp, sp, #20
  4009f4:	e1a03000 	mov	r3, r0
  4009f8:	e54b300d 	strb	r3, [fp, #-13]
  4009fc:	e3a03000 	mov	r3, #0
  400a00:	e50b3008 	str	r3, [fp, #-8]
  400a04:	e55b300d 	ldrb	r3, [fp, #-13]
  400a08:	e3530007 	cmp	r3, #7
  400a0c:	8a000003 	bhi	400a20 <excep_get_handler+0x38>
  400a10:	e55b200d 	ldrb	r2, [fp, #-13]
  400a14:	e59f3018 	ldr	r3, [pc, #24]	; 400a34 <excep_get_handler+0x4c>
  400a18:	e7933102 	ldr	r3, [r3, r2, lsl #2]
  400a1c:	e50b3008 	str	r3, [fp, #-8]
  400a20:	e51b3008 	ldr	r3, [fp, #-8]
  400a24:	e1a00003 	mov	r0, r3
  400a28:	e24bd000 	sub	sp, fp, #0
  400a2c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400a30:	e12fff1e 	bx	lr
  400a34:	00400020 	subeq	r0, r0, r0, lsr #32

00400a38 <excep_nonnested_irq_handler>:
  400a38:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400a3c:	e28db000 	add	fp, sp, #0
  400a40:	e24bd000 	sub	sp, fp, #0
  400a44:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400a48:	e12fff1e 	bx	lr

00400a4c <itc_init>:
  400a4c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400a50:	e28db000 	add	fp, sp, #0
  400a54:	e24bd000 	sub	sp, fp, #0
  400a58:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400a5c:	e12fff1e 	bx	lr

00400a60 <itc_disable_ints>:
  400a60:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400a64:	e28db000 	add	fp, sp, #0
  400a68:	e24bd000 	sub	sp, fp, #0
  400a6c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400a70:	e12fff1e 	bx	lr

00400a74 <itc_restore_ints>:
  400a74:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400a78:	e28db000 	add	fp, sp, #0
  400a7c:	e24bd000 	sub	sp, fp, #0
  400a80:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400a84:	e12fff1e 	bx	lr

00400a88 <itc_set_handler>:
  400a88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400a8c:	e28db000 	add	fp, sp, #0
  400a90:	e24dd00c 	sub	sp, sp, #12
  400a94:	e1a03000 	mov	r3, r0
  400a98:	e50b100c 	str	r1, [fp, #-12]
  400a9c:	e54b3005 	strb	r3, [fp, #-5]
  400aa0:	e24bd000 	sub	sp, fp, #0
  400aa4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400aa8:	e12fff1e 	bx	lr

00400aac <itc_set_priority>:
  400aac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400ab0:	e28db000 	add	fp, sp, #0
  400ab4:	e24dd00c 	sub	sp, sp, #12
  400ab8:	e1a02000 	mov	r2, r0
  400abc:	e1a03001 	mov	r3, r1
  400ac0:	e54b2005 	strb	r2, [fp, #-5]
  400ac4:	e54b3006 	strb	r3, [fp, #-6]
  400ac8:	e24bd000 	sub	sp, fp, #0
  400acc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400ad0:	e12fff1e 	bx	lr

00400ad4 <itc_enable_interrupt>:
  400ad4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400ad8:	e28db000 	add	fp, sp, #0
  400adc:	e24dd00c 	sub	sp, sp, #12
  400ae0:	e1a03000 	mov	r3, r0
  400ae4:	e54b3005 	strb	r3, [fp, #-5]
  400ae8:	e24bd000 	sub	sp, fp, #0
  400aec:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400af0:	e12fff1e 	bx	lr

00400af4 <itc_disable_interrupt>:
  400af4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400af8:	e28db000 	add	fp, sp, #0
  400afc:	e24dd00c 	sub	sp, sp, #12
  400b00:	e1a03000 	mov	r3, r0
  400b04:	e54b3005 	strb	r3, [fp, #-5]
  400b08:	e24bd000 	sub	sp, fp, #0
  400b0c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400b10:	e12fff1e 	bx	lr

00400b14 <itc_force_interrupt>:
  400b14:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400b18:	e28db000 	add	fp, sp, #0
  400b1c:	e24dd00c 	sub	sp, sp, #12
  400b20:	e1a03000 	mov	r3, r0
  400b24:	e54b3005 	strb	r3, [fp, #-5]
  400b28:	e24bd000 	sub	sp, fp, #0
  400b2c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400b30:	e12fff1e 	bx	lr

00400b34 <itc_unforce_interrupt>:
  400b34:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400b38:	e28db000 	add	fp, sp, #0
  400b3c:	e24dd00c 	sub	sp, sp, #12
  400b40:	e1a03000 	mov	r3, r0
  400b44:	e54b3005 	strb	r3, [fp, #-5]
  400b48:	e24bd000 	sub	sp, fp, #0
  400b4c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400b50:	e12fff1e 	bx	lr

00400b54 <itc_service_normal_interrupt>:
  400b54:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400b58:	e28db000 	add	fp, sp, #0
  400b5c:	e24bd000 	sub	sp, fp, #0
  400b60:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400b64:	e12fff1e 	bx	lr

00400b68 <itc_service_fast_interrupt>:
  400b68:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400b6c:	e28db000 	add	fp, sp, #0
  400b70:	e24bd000 	sub	sp, fp, #0
  400b74:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400b78:	e12fff1e 	bx	lr

00400b7c <uart_init>:
  400b7c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400b80:	e28db000 	add	fp, sp, #0
  400b84:	e24dd014 	sub	sp, sp, #20
  400b88:	e1a03000 	mov	r3, r0
  400b8c:	e50b100c 	str	r1, [fp, #-12]
  400b90:	e50b2010 	str	r2, [fp, #-16]
  400b94:	e54b3005 	strb	r3, [fp, #-5]
  400b98:	e3a03000 	mov	r3, #0
  400b9c:	e1a00003 	mov	r0, r3
  400ba0:	e24bd000 	sub	sp, fp, #0
  400ba4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400ba8:	e12fff1e 	bx	lr

00400bac <uart_send_byte>:
  400bac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400bb0:	e28db000 	add	fp, sp, #0
  400bb4:	e24dd00c 	sub	sp, sp, #12
  400bb8:	e1a02000 	mov	r2, r0
  400bbc:	e1a03001 	mov	r3, r1
  400bc0:	e54b2005 	strb	r2, [fp, #-5]
  400bc4:	e54b3006 	strb	r3, [fp, #-6]
  400bc8:	e24bd000 	sub	sp, fp, #0
  400bcc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400bd0:	e12fff1e 	bx	lr

00400bd4 <uart_receive_byte>:
  400bd4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400bd8:	e28db000 	add	fp, sp, #0
  400bdc:	e24dd00c 	sub	sp, sp, #12
  400be0:	e1a03000 	mov	r3, r0
  400be4:	e54b3005 	strb	r3, [fp, #-5]
  400be8:	e3a03000 	mov	r3, #0
  400bec:	e1a00003 	mov	r0, r3
  400bf0:	e24bd000 	sub	sp, fp, #0
  400bf4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400bf8:	e12fff1e 	bx	lr

00400bfc <uart_send>:
  400bfc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400c00:	e28db000 	add	fp, sp, #0
  400c04:	e24dd014 	sub	sp, sp, #20
  400c08:	e50b0008 	str	r0, [fp, #-8]
  400c0c:	e50b100c 	str	r1, [fp, #-12]
  400c10:	e50b2010 	str	r2, [fp, #-16]
  400c14:	e51b3010 	ldr	r3, [fp, #-16]
  400c18:	e1a00003 	mov	r0, r3
  400c1c:	e24bd000 	sub	sp, fp, #0
  400c20:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400c24:	e12fff1e 	bx	lr

00400c28 <uart_receive>:
  400c28:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400c2c:	e28db000 	add	fp, sp, #0
  400c30:	e24dd014 	sub	sp, sp, #20
  400c34:	e50b0008 	str	r0, [fp, #-8]
  400c38:	e50b100c 	str	r1, [fp, #-12]
  400c3c:	e50b2010 	str	r2, [fp, #-16]
  400c40:	e3a03000 	mov	r3, #0
  400c44:	e1a00003 	mov	r0, r3
  400c48:	e24bd000 	sub	sp, fp, #0
  400c4c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400c50:	e12fff1e 	bx	lr

00400c54 <uart_set_receive_callback>:
  400c54:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400c58:	e28db000 	add	fp, sp, #0
  400c5c:	e24dd00c 	sub	sp, sp, #12
  400c60:	e1a03000 	mov	r3, r0
  400c64:	e50b100c 	str	r1, [fp, #-12]
  400c68:	e54b3005 	strb	r3, [fp, #-5]
  400c6c:	e3a03000 	mov	r3, #0
  400c70:	e1a00003 	mov	r0, r3
  400c74:	e24bd000 	sub	sp, fp, #0
  400c78:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400c7c:	e12fff1e 	bx	lr

00400c80 <uart_set_send_callback>:
  400c80:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400c84:	e28db000 	add	fp, sp, #0
  400c88:	e24dd00c 	sub	sp, sp, #12
  400c8c:	e1a03000 	mov	r3, r0
  400c90:	e50b100c 	str	r1, [fp, #-12]
  400c94:	e54b3005 	strb	r3, [fp, #-5]
  400c98:	e3a03000 	mov	r3, #0
  400c9c:	e1a00003 	mov	r0, r3
  400ca0:	e24bd000 	sub	sp, fp, #0
  400ca4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400ca8:	e12fff1e 	bx	lr

00400cac <uart_isr>:
  400cac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400cb0:	e28db000 	add	fp, sp, #0
  400cb4:	e24dd00c 	sub	sp, sp, #12
  400cb8:	e1a03000 	mov	r3, r0
  400cbc:	e54b3005 	strb	r3, [fp, #-5]
  400cc0:	e24bd000 	sub	sp, fp, #0
  400cc4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400cc8:	e12fff1e 	bx	lr

00400ccc <uart_1_isr>:
  400ccc:	e92d4800 	push	{fp, lr}
  400cd0:	e28db004 	add	fp, sp, #4
  400cd4:	e3a00000 	mov	r0, #0
  400cd8:	ebfffff3 	bl	400cac <uart_isr>
  400cdc:	e24bd004 	sub	sp, fp, #4
  400ce0:	e8bd4800 	pop	{fp, lr}
  400ce4:	e12fff1e 	bx	lr

00400ce8 <uart_2_isr>:
  400ce8:	e92d4800 	push	{fp, lr}
  400cec:	e28db004 	add	fp, sp, #4
  400cf0:	e3a00001 	mov	r0, #1
  400cf4:	ebffffec 	bl	400cac <uart_isr>
  400cf8:	e24bd004 	sub	sp, fp, #4
  400cfc:	e8bd4800 	pop	{fp, lr}
  400d00:	e12fff1e 	bx	lr

00400d04 <_sbrk>:
  400d04:	e92d4800 	push	{fp, lr}
  400d08:	e28db004 	add	fp, sp, #4
  400d0c:	e24dd010 	sub	sp, sp, #16
  400d10:	e50b0010 	str	r0, [fp, #-16]
  400d14:	e59f3080 	ldr	r3, [pc, #128]	; 400d9c <_sbrk+0x98>
  400d18:	e5933000 	ldr	r3, [r3]
  400d1c:	e50b3008 	str	r3, [fp, #-8]
  400d20:	ebffff4e 	bl	400a60 <itc_disable_ints>
  400d24:	e51b3010 	ldr	r3, [fp, #-16]
  400d28:	e2833003 	add	r3, r3, #3
  400d2c:	e3c33003 	bic	r3, r3, #3
  400d30:	e50b3010 	str	r3, [fp, #-16]
  400d34:	e59f3060 	ldr	r3, [pc, #96]	; 400d9c <_sbrk+0x98>
  400d38:	e5932000 	ldr	r2, [r3]
  400d3c:	e51b3010 	ldr	r3, [fp, #-16]
  400d40:	e0822003 	add	r2, r2, r3
  400d44:	e59f3054 	ldr	r3, [pc, #84]	; 400da0 <_sbrk+0x9c>
  400d48:	e1520003 	cmp	r2, r3
  400d4c:	9a000006 	bls	400d6c <_sbrk+0x68>
  400d50:	eb00005b 	bl	400ec4 <__errno>
  400d54:	e1a03000 	mov	r3, r0
  400d58:	e3a0200c 	mov	r2, #12
  400d5c:	e5832000 	str	r2, [r3]
  400d60:	e3e03000 	mvn	r3, #0
  400d64:	e50b3008 	str	r3, [fp, #-8]
  400d68:	ea000005 	b	400d84 <_sbrk+0x80>
  400d6c:	e59f3028 	ldr	r3, [pc, #40]	; 400d9c <_sbrk+0x98>
  400d70:	e5932000 	ldr	r2, [r3]
  400d74:	e51b3010 	ldr	r3, [fp, #-16]
  400d78:	e0822003 	add	r2, r2, r3
  400d7c:	e59f3018 	ldr	r3, [pc, #24]	; 400d9c <_sbrk+0x98>
  400d80:	e5832000 	str	r2, [r3]
  400d84:	ebffff3a 	bl	400a74 <itc_restore_ints>
  400d88:	e51b3008 	ldr	r3, [fp, #-8]
  400d8c:	e1a00003 	mov	r0, r3
  400d90:	e24bd004 	sub	sp, fp, #4
  400d94:	e8bd4800 	pop	{fp, lr}
  400d98:	e12fff1e 	bx	lr
  400d9c:	00401e84 	subeq	r1, r0, r4, lsl #29
  400da0:	004178e0 	subeq	r7, r1, r0, ror #17

00400da4 <_open>:
  400da4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400da8:	e28db000 	add	fp, sp, #0
  400dac:	e24dd014 	sub	sp, sp, #20
  400db0:	e50b0008 	str	r0, [fp, #-8]
  400db4:	e50b100c 	str	r1, [fp, #-12]
  400db8:	e50b2010 	str	r2, [fp, #-16]
  400dbc:	e3e03000 	mvn	r3, #0
  400dc0:	e1a00003 	mov	r0, r3
  400dc4:	e24bd000 	sub	sp, fp, #0
  400dc8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400dcc:	e12fff1e 	bx	lr

00400dd0 <_close>:
  400dd0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400dd4:	e28db000 	add	fp, sp, #0
  400dd8:	e24dd00c 	sub	sp, sp, #12
  400ddc:	e50b0008 	str	r0, [fp, #-8]
  400de0:	e3e03000 	mvn	r3, #0
  400de4:	e1a00003 	mov	r0, r3
  400de8:	e24bd000 	sub	sp, fp, #0
  400dec:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400df0:	e12fff1e 	bx	lr

00400df4 <_read>:
  400df4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400df8:	e28db000 	add	fp, sp, #0
  400dfc:	e24dd014 	sub	sp, sp, #20
  400e00:	e50b0008 	str	r0, [fp, #-8]
  400e04:	e50b100c 	str	r1, [fp, #-12]
  400e08:	e50b2010 	str	r2, [fp, #-16]
  400e0c:	e3a03000 	mov	r3, #0
  400e10:	e1a00003 	mov	r0, r3
  400e14:	e24bd000 	sub	sp, fp, #0
  400e18:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400e1c:	e12fff1e 	bx	lr

00400e20 <_write>:
  400e20:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400e24:	e28db000 	add	fp, sp, #0
  400e28:	e24dd014 	sub	sp, sp, #20
  400e2c:	e50b0008 	str	r0, [fp, #-8]
  400e30:	e50b100c 	str	r1, [fp, #-12]
  400e34:	e50b2010 	str	r2, [fp, #-16]
  400e38:	e51b3010 	ldr	r3, [fp, #-16]
  400e3c:	e1a00003 	mov	r0, r3
  400e40:	e24bd000 	sub	sp, fp, #0
  400e44:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400e48:	e12fff1e 	bx	lr

00400e4c <_lseek>:
  400e4c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400e50:	e28db000 	add	fp, sp, #0
  400e54:	e24dd014 	sub	sp, sp, #20
  400e58:	e50b0008 	str	r0, [fp, #-8]
  400e5c:	e50b100c 	str	r1, [fp, #-12]
  400e60:	e50b2010 	str	r2, [fp, #-16]
  400e64:	e3a03000 	mov	r3, #0
  400e68:	e1a00003 	mov	r0, r3
  400e6c:	e24bd000 	sub	sp, fp, #0
  400e70:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400e74:	e12fff1e 	bx	lr

00400e78 <_fstat>:
  400e78:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400e7c:	e28db000 	add	fp, sp, #0
  400e80:	e24dd00c 	sub	sp, sp, #12
  400e84:	e50b0008 	str	r0, [fp, #-8]
  400e88:	e50b100c 	str	r1, [fp, #-12]
  400e8c:	e3a03000 	mov	r3, #0
  400e90:	e1a00003 	mov	r0, r3
  400e94:	e24bd000 	sub	sp, fp, #0
  400e98:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400e9c:	e12fff1e 	bx	lr

00400ea0 <_isatty>:
  400ea0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400ea4:	e28db000 	add	fp, sp, #0
  400ea8:	e24dd00c 	sub	sp, sp, #12
  400eac:	e50b0008 	str	r0, [fp, #-8]
  400eb0:	e3a03001 	mov	r3, #1
  400eb4:	e1a00003 	mov	r0, r3
  400eb8:	e24bd000 	sub	sp, fp, #0
  400ebc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400ec0:	e12fff1e 	bx	lr

Disassembly of section .text.__errno:

00400ec4 <__errno>:
  400ec4:	e59f3004 	ldr	r3, [pc, #4]	; 400ed0 <__errno+0xc>
  400ec8:	e5930000 	ldr	r0, [r3]
  400ecc:	e12fff1e 	bx	lr
  400ed0:	004022b0 	strheq	r2, [r0], #-32	; 0xffffffe0

Disassembly of section .text.memcmp:

00400ed4 <memcmp>:
  400ed4:	e3520003 	cmp	r2, #3
  400ed8:	e92d0030 	push	{r4, r5}
  400edc:	9a000011 	bls	400f28 <memcmp+0x54>
  400ee0:	e1803001 	orr	r3, r0, r1
  400ee4:	e3130003 	tst	r3, #3
  400ee8:	1a000010 	bne	400f30 <memcmp+0x5c>
  400eec:	e1a0c001 	mov	ip, r1
  400ef0:	e1a03000 	mov	r3, r0
  400ef4:	e59c4000 	ldr	r4, [ip]
  400ef8:	e5935000 	ldr	r5, [r3]
  400efc:	e1550004 	cmp	r5, r4
  400f00:	e1a0100c 	mov	r1, ip
  400f04:	e1a00003 	mov	r0, r3
  400f08:	e28cc004 	add	ip, ip, #4
  400f0c:	e2833004 	add	r3, r3, #4
  400f10:	1a000004 	bne	400f28 <memcmp+0x54>
  400f14:	e2422004 	sub	r2, r2, #4
  400f18:	e3520003 	cmp	r2, #3
  400f1c:	e1a00003 	mov	r0, r3
  400f20:	e1a0100c 	mov	r1, ip
  400f24:	8afffff2 	bhi	400ef4 <memcmp+0x20>
  400f28:	e3520000 	cmp	r2, #0
  400f2c:	0a000013 	beq	400f80 <memcmp+0xac>
  400f30:	e5d04000 	ldrb	r4, [r0]
  400f34:	e5d1c000 	ldrb	ip, [r1]
  400f38:	e154000c 	cmp	r4, ip
  400f3c:	02422001 	subeq	r2, r2, #1
  400f40:	03a03000 	moveq	r3, #0
  400f44:	0a000005 	beq	400f60 <memcmp+0x8c>
  400f48:	ea000009 	b	400f74 <memcmp+0xa0>
  400f4c:	e5f04001 	ldrb	r4, [r0, #1]!
  400f50:	e5f1c001 	ldrb	ip, [r1, #1]!
  400f54:	e154000c 	cmp	r4, ip
  400f58:	e2833001 	add	r3, r3, #1
  400f5c:	1a000004 	bne	400f74 <memcmp+0xa0>
  400f60:	e1530002 	cmp	r3, r2
  400f64:	1afffff8 	bne	400f4c <memcmp+0x78>
  400f68:	e3a00000 	mov	r0, #0
  400f6c:	e8bd0030 	pop	{r4, r5}
  400f70:	e12fff1e 	bx	lr
  400f74:	e06c0004 	rsb	r0, ip, r4
  400f78:	e8bd0030 	pop	{r4, r5}
  400f7c:	e12fff1e 	bx	lr
  400f80:	e1a00002 	mov	r0, r2
  400f84:	eafffff8 	b	400f6c <memcmp+0x98>

Disassembly of section .text.strlen:

00400f88 <strlen>:
  400f88:	e3c01003 	bic	r1, r0, #3
  400f8c:	e2100003 	ands	r0, r0, #3
  400f90:	e2600000 	rsb	r0, r0, #0
  400f94:	e4913004 	ldr	r3, [r1], #4
  400f98:	e280c004 	add	ip, r0, #4
  400f9c:	e1a0c18c 	lsl	ip, ip, #3
  400fa0:	e3e02000 	mvn	r2, #0
  400fa4:	11833c32 	orrne	r3, r3, r2, lsr ip
  400fa8:	e3a0c001 	mov	ip, #1
  400fac:	e18cc40c 	orr	ip, ip, ip, lsl #8
  400fb0:	e18cc80c 	orr	ip, ip, ip, lsl #16
  400fb4:	e043200c 	sub	r2, r3, ip
  400fb8:	e1c22003 	bic	r2, r2, r3
  400fbc:	e012238c 	ands	r2, r2, ip, lsl #7
  400fc0:	04913004 	ldreq	r3, [r1], #4
  400fc4:	02800004 	addeq	r0, r0, #4
  400fc8:	0afffff9 	beq	400fb4 <strlen+0x2c>
  400fcc:	e31300ff 	tst	r3, #255	; 0xff
  400fd0:	12800001 	addne	r0, r0, #1
  400fd4:	13130cff 	tstne	r3, #65280	; 0xff00
  400fd8:	12800001 	addne	r0, r0, #1
  400fdc:	131308ff 	tstne	r3, #16711680	; 0xff0000
  400fe0:	12800001 	addne	r0, r0, #1
  400fe4:	e12fff1e 	bx	lr

Disassembly of section .text.open:

00400fe8 <open>:
  400fe8:	e92d000e 	push	{r1, r2, r3}
  400fec:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  400ff0:	e59f302c 	ldr	r3, [pc, #44]	; 401024 <open+0x3c>
  400ff4:	e24dd008 	sub	sp, sp, #8
  400ff8:	e28d200c 	add	r2, sp, #12
  400ffc:	e1a01000 	mov	r1, r0
  401000:	e28dc010 	add	ip, sp, #16
  401004:	e5930000 	ldr	r0, [r3]
  401008:	e892000c 	ldm	r2, {r2, r3}
  40100c:	e58dc004 	str	ip, [sp, #4]
  401010:	eb000004 	bl	401028 <_open_r>
  401014:	e28dd008 	add	sp, sp, #8
  401018:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  40101c:	e28dd00c 	add	sp, sp, #12
  401020:	e12fff1e 	bx	lr
  401024:	004022b0 	strheq	r2, [r0], #-32	; 0xffffffe0

Disassembly of section .text._open_r:

00401028 <_open_r>:
  401028:	e92d4038 	push	{r3, r4, r5, lr}
  40102c:	e59f4034 	ldr	r4, [pc, #52]	; 401068 <_open_r+0x40>
  401030:	e3a0c000 	mov	ip, #0
  401034:	e1a05000 	mov	r5, r0
  401038:	e1a00001 	mov	r0, r1
  40103c:	e1a01002 	mov	r1, r2
  401040:	e1a02003 	mov	r2, r3
  401044:	e584c000 	str	ip, [r4]
  401048:	ebffff55 	bl	400da4 <_open>
  40104c:	e3700001 	cmn	r0, #1
  401050:	1a000002 	bne	401060 <_open_r+0x38>
  401054:	e5943000 	ldr	r3, [r4]
  401058:	e3530000 	cmp	r3, #0
  40105c:	15853000 	strne	r3, [r5]
  401060:	e8bd4038 	pop	{r3, r4, r5, lr}
  401064:	e12fff1e 	bx	lr
  401068:	00402b54 	subeq	r2, r0, r4, asr fp

Disassembly of section .text.cleanup_glue:

0040106c <cleanup_glue>:
  40106c:	e92d4038 	push	{r3, r4, r5, lr}
  401070:	e1a04001 	mov	r4, r1
  401074:	e5911000 	ldr	r1, [r1]
  401078:	e3510000 	cmp	r1, #0
  40107c:	e1a05000 	mov	r5, r0
  401080:	1bfffff9 	blne	40106c <cleanup_glue>
  401084:	e1a00005 	mov	r0, r5
  401088:	e1a01004 	mov	r1, r4
  40108c:	eb000083 	bl	4012a0 <_free_r>
  401090:	e8bd4038 	pop	{r3, r4, r5, lr}
  401094:	e12fff1e 	bx	lr

Disassembly of section .text._reclaim_reent:

00401098 <_reclaim_reent>:
  401098:	e59f30fc 	ldr	r3, [pc, #252]	; 40119c <_reclaim_reent+0x104>
  40109c:	e5933000 	ldr	r3, [r3]
  4010a0:	e1500003 	cmp	r0, r3
  4010a4:	e92d4070 	push	{r4, r5, r6, lr}
  4010a8:	e1a05000 	mov	r5, r0
  4010ac:	0a00002e 	beq	40116c <_reclaim_reent+0xd4>
  4010b0:	e590204c 	ldr	r2, [r0, #76]	; 0x4c
  4010b4:	e3520000 	cmp	r2, #0
  4010b8:	0a000013 	beq	40110c <_reclaim_reent+0x74>
  4010bc:	e3a03000 	mov	r3, #0
  4010c0:	e1a06003 	mov	r6, r3
  4010c4:	e7921103 	ldr	r1, [r2, r3, lsl #2]
  4010c8:	e3510000 	cmp	r1, #0
  4010cc:	1a000001 	bne	4010d8 <_reclaim_reent+0x40>
  4010d0:	ea000006 	b	4010f0 <_reclaim_reent+0x58>
  4010d4:	e1a01004 	mov	r1, r4
  4010d8:	e5914000 	ldr	r4, [r1]
  4010dc:	e1a00005 	mov	r0, r5
  4010e0:	eb00006e 	bl	4012a0 <_free_r>
  4010e4:	e3540000 	cmp	r4, #0
  4010e8:	1afffff9 	bne	4010d4 <_reclaim_reent+0x3c>
  4010ec:	e595204c 	ldr	r2, [r5, #76]	; 0x4c
  4010f0:	e2866001 	add	r6, r6, #1
  4010f4:	e3560020 	cmp	r6, #32
  4010f8:	e1a03006 	mov	r3, r6
  4010fc:	1afffff0 	bne	4010c4 <_reclaim_reent+0x2c>
  401100:	e1a01002 	mov	r1, r2
  401104:	e1a00005 	mov	r0, r5
  401108:	eb000064 	bl	4012a0 <_free_r>
  40110c:	e5951040 	ldr	r1, [r5, #64]	; 0x40
  401110:	e3510000 	cmp	r1, #0
  401114:	11a00005 	movne	r0, r5
  401118:	1b000060 	blne	4012a0 <_free_r>
  40111c:	e5951148 	ldr	r1, [r5, #328]	; 0x148
  401120:	e3510000 	cmp	r1, #0
  401124:	0a000009 	beq	401150 <_reclaim_reent+0xb8>
  401128:	e2856f53 	add	r6, r5, #332	; 0x14c
  40112c:	e1510006 	cmp	r1, r6
  401130:	1a000001 	bne	40113c <_reclaim_reent+0xa4>
  401134:	ea000005 	b	401150 <_reclaim_reent+0xb8>
  401138:	e1a01004 	mov	r1, r4
  40113c:	e5914000 	ldr	r4, [r1]
  401140:	e1a00005 	mov	r0, r5
  401144:	eb000055 	bl	4012a0 <_free_r>
  401148:	e1560004 	cmp	r6, r4
  40114c:	1afffff9 	bne	401138 <_reclaim_reent+0xa0>
  401150:	e5951054 	ldr	r1, [r5, #84]	; 0x54
  401154:	e3510000 	cmp	r1, #0
  401158:	11a00005 	movne	r0, r5
  40115c:	1b00004f 	blne	4012a0 <_free_r>
  401160:	e5953038 	ldr	r3, [r5, #56]	; 0x38
  401164:	e3530000 	cmp	r3, #0
  401168:	1a000001 	bne	401174 <_reclaim_reent+0xdc>
  40116c:	e8bd4070 	pop	{r4, r5, r6, lr}
  401170:	e12fff1e 	bx	lr
  401174:	e1a00005 	mov	r0, r5
  401178:	e595c03c 	ldr	ip, [r5, #60]	; 0x3c
  40117c:	e1a0e00f 	mov	lr, pc
  401180:	e12fff1c 	bx	ip
  401184:	e59512e0 	ldr	r1, [r5, #736]	; 0x2e0
  401188:	e3510000 	cmp	r1, #0
  40118c:	0afffff6 	beq	40116c <_reclaim_reent+0xd4>
  401190:	e1a00005 	mov	r0, r5
  401194:	e8bd4070 	pop	{r4, r5, r6, lr}
  401198:	eaffffb3 	b	40106c <cleanup_glue>
  40119c:	004022b0 	strheq	r2, [r0], #-32	; 0xffffffe0

Disassembly of section .text._malloc_trim_r:

004011a0 <_malloc_trim_r>:
  4011a0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  4011a4:	e59f50e8 	ldr	r5, [pc, #232]	; 401294 <_malloc_trim_r+0xf4>
  4011a8:	e1a07001 	mov	r7, r1
  4011ac:	e1a04000 	mov	r4, r0
  4011b0:	eb0002a8 	bl	401c58 <__malloc_lock>
  4011b4:	e5953008 	ldr	r3, [r5, #8]
  4011b8:	e5936004 	ldr	r6, [r3, #4]
  4011bc:	e3c66003 	bic	r6, r6, #3
  4011c0:	e0677006 	rsb	r7, r7, r6
  4011c4:	e2877efe 	add	r7, r7, #4064	; 0xfe0
  4011c8:	e287700f 	add	r7, r7, #15
  4011cc:	e1a07627 	lsr	r7, r7, #12
  4011d0:	e2477001 	sub	r7, r7, #1
  4011d4:	e1a07607 	lsl	r7, r7, #12
  4011d8:	e3570a01 	cmp	r7, #4096	; 0x1000
  4011dc:	ba000006 	blt	4011fc <_malloc_trim_r+0x5c>
  4011e0:	e1a00004 	mov	r0, r4
  4011e4:	e3a01000 	mov	r1, #0
  4011e8:	eb00029c 	bl	401c60 <_sbrk_r>
  4011ec:	e5953008 	ldr	r3, [r5, #8]
  4011f0:	e0833006 	add	r3, r3, r6
  4011f4:	e1500003 	cmp	r0, r3
  4011f8:	0a000004 	beq	401210 <_malloc_trim_r+0x70>
  4011fc:	e1a00004 	mov	r0, r4
  401200:	eb000295 	bl	401c5c <__malloc_unlock>
  401204:	e3a00000 	mov	r0, #0
  401208:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
  40120c:	e12fff1e 	bx	lr
  401210:	e1a00004 	mov	r0, r4
  401214:	e2671000 	rsb	r1, r7, #0
  401218:	eb000290 	bl	401c60 <_sbrk_r>
  40121c:	e3700001 	cmn	r0, #1
  401220:	0a00000c 	beq	401258 <_malloc_trim_r+0xb8>
  401224:	e59f306c 	ldr	r3, [pc, #108]	; 401298 <_malloc_trim_r+0xf8>
  401228:	e5951008 	ldr	r1, [r5, #8]
  40122c:	e5932000 	ldr	r2, [r3]
  401230:	e0676006 	rsb	r6, r7, r6
  401234:	e3866001 	orr	r6, r6, #1
  401238:	e1a00004 	mov	r0, r4
  40123c:	e0677002 	rsb	r7, r7, r2
  401240:	e5816004 	str	r6, [r1, #4]
  401244:	e5837000 	str	r7, [r3]
  401248:	eb000283 	bl	401c5c <__malloc_unlock>
  40124c:	e3a00001 	mov	r0, #1
  401250:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
  401254:	e12fff1e 	bx	lr
  401258:	e1a00004 	mov	r0, r4
  40125c:	e3a01000 	mov	r1, #0
  401260:	eb00027e 	bl	401c60 <_sbrk_r>
  401264:	e5953008 	ldr	r3, [r5, #8]
  401268:	e0632000 	rsb	r2, r3, r0
  40126c:	e352000f 	cmp	r2, #15
  401270:	daffffe1 	ble	4011fc <_malloc_trim_r+0x5c>
  401274:	e59f1020 	ldr	r1, [pc, #32]	; 40129c <_malloc_trim_r+0xfc>
  401278:	e591c000 	ldr	ip, [r1]
  40127c:	e59f1014 	ldr	r1, [pc, #20]	; 401298 <_malloc_trim_r+0xf8>
  401280:	e3822001 	orr	r2, r2, #1
  401284:	e06c0000 	rsb	r0, ip, r0
  401288:	e5832004 	str	r2, [r3, #4]
  40128c:	e5810000 	str	r0, [r1]
  401290:	eaffffd9 	b	4011fc <_malloc_trim_r+0x5c>
  401294:	004022b4 	strheq	r2, [r0], #-36	; 0xffffffdc
  401298:	00402b64 	subeq	r2, r0, r4, ror #22
  40129c:	004026c0 	subeq	r2, r0, r0, asr #13

Disassembly of section .text._free_r:

004012a0 <_free_r>:
  4012a0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  4012a4:	e2514000 	subs	r4, r1, #0
  4012a8:	e1a06000 	mov	r6, r0
  4012ac:	0a000046 	beq	4013cc <_free_r+0x12c>
  4012b0:	eb000268 	bl	401c58 <__malloc_lock>
  4012b4:	e514e004 	ldr	lr, [r4, #-4]
  4012b8:	e59f1238 	ldr	r1, [pc, #568]	; 4014f8 <_free_r+0x258>
  4012bc:	e3ce3001 	bic	r3, lr, #1
  4012c0:	e244c008 	sub	ip, r4, #8
  4012c4:	e08c2003 	add	r2, ip, r3
  4012c8:	e5910008 	ldr	r0, [r1, #8]
  4012cc:	e5925004 	ldr	r5, [r2, #4]
  4012d0:	e1500002 	cmp	r0, r2
  4012d4:	e3c55003 	bic	r5, r5, #3
  4012d8:	0a00004a 	beq	401408 <_free_r+0x168>
  4012dc:	e21ee001 	ands	lr, lr, #1
  4012e0:	e5825004 	str	r5, [r2, #4]
  4012e4:	13a0e000 	movne	lr, #0
  4012e8:	1a000009 	bne	401314 <_free_r+0x74>
  4012ec:	e5144008 	ldr	r4, [r4, #-8]
  4012f0:	e064c00c 	rsb	ip, r4, ip
  4012f4:	e59c0008 	ldr	r0, [ip, #8]
  4012f8:	e2817008 	add	r7, r1, #8
  4012fc:	e1500007 	cmp	r0, r7
  401300:	e0833004 	add	r3, r3, r4
  401304:	159c400c 	ldrne	r4, [ip, #12]
  401308:	1580400c 	strne	r4, [r0, #12]
  40130c:	15840008 	strne	r0, [r4, #8]
  401310:	03a0e001 	moveq	lr, #1
  401314:	e0820005 	add	r0, r2, r5
  401318:	e5900004 	ldr	r0, [r0, #4]
  40131c:	e3100001 	tst	r0, #1
  401320:	1a000009 	bne	40134c <_free_r+0xac>
  401324:	e35e0000 	cmp	lr, #0
  401328:	e5920008 	ldr	r0, [r2, #8]
  40132c:	e0833005 	add	r3, r3, r5
  401330:	1a000002 	bne	401340 <_free_r+0xa0>
  401334:	e59f41c0 	ldr	r4, [pc, #448]	; 4014fc <_free_r+0x25c>
  401338:	e1500004 	cmp	r0, r4
  40133c:	0a000047 	beq	401460 <_free_r+0x1c0>
  401340:	e592200c 	ldr	r2, [r2, #12]
  401344:	e580200c 	str	r2, [r0, #12]
  401348:	e5820008 	str	r0, [r2, #8]
  40134c:	e3832001 	orr	r2, r3, #1
  401350:	e35e0000 	cmp	lr, #0
  401354:	e58c2004 	str	r2, [ip, #4]
  401358:	e78c3003 	str	r3, [ip, r3]
  40135c:	1a000018 	bne	4013c4 <_free_r+0x124>
  401360:	e3530c02 	cmp	r3, #512	; 0x200
  401364:	3a00001a 	bcc	4013d4 <_free_r+0x134>
  401368:	e1a024a3 	lsr	r2, r3, #9
  40136c:	e3520004 	cmp	r2, #4
  401370:	8a000042 	bhi	401480 <_free_r+0x1e0>
  401374:	e1a0e323 	lsr	lr, r3, #6
  401378:	e28ee038 	add	lr, lr, #56	; 0x38
  40137c:	e1a0008e 	lsl	r0, lr, #1
  401380:	e0810100 	add	r0, r1, r0, lsl #2
  401384:	e5902008 	ldr	r2, [r0, #8]
  401388:	e1520000 	cmp	r2, r0
  40138c:	e59f1164 	ldr	r1, [pc, #356]	; 4014f8 <_free_r+0x258>
  401390:	0a000044 	beq	4014a8 <_free_r+0x208>
  401394:	e5921004 	ldr	r1, [r2, #4]
  401398:	e3c11003 	bic	r1, r1, #3
  40139c:	e1530001 	cmp	r3, r1
  4013a0:	2a000002 	bcs	4013b0 <_free_r+0x110>
  4013a4:	e5922008 	ldr	r2, [r2, #8]
  4013a8:	e1500002 	cmp	r0, r2
  4013ac:	1afffff8 	bne	401394 <_free_r+0xf4>
  4013b0:	e592300c 	ldr	r3, [r2, #12]
  4013b4:	e58c300c 	str	r3, [ip, #12]
  4013b8:	e58c2008 	str	r2, [ip, #8]
  4013bc:	e583c008 	str	ip, [r3, #8]
  4013c0:	e582c00c 	str	ip, [r2, #12]
  4013c4:	e1a00006 	mov	r0, r6
  4013c8:	eb000223 	bl	401c5c <__malloc_unlock>
  4013cc:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
  4013d0:	e12fff1e 	bx	lr
  4013d4:	e5912004 	ldr	r2, [r1, #4]
  4013d8:	e1a031a3 	lsr	r3, r3, #3
  4013dc:	e1a00143 	asr	r0, r3, #2
  4013e0:	e3a0e001 	mov	lr, #1
  4013e4:	e182001e 	orr	r0, r2, lr, lsl r0
  4013e8:	e0813183 	add	r3, r1, r3, lsl #3
  4013ec:	e5932008 	ldr	r2, [r3, #8]
  4013f0:	e5810004 	str	r0, [r1, #4]
  4013f4:	e58c2008 	str	r2, [ip, #8]
  4013f8:	e58c300c 	str	r3, [ip, #12]
  4013fc:	e583c008 	str	ip, [r3, #8]
  401400:	e582c00c 	str	ip, [r2, #12]
  401404:	eaffffee 	b	4013c4 <_free_r+0x124>
  401408:	e31e0001 	tst	lr, #1
  40140c:	e0853003 	add	r3, r5, r3
  401410:	1a000006 	bne	401430 <_free_r+0x190>
  401414:	e5142008 	ldr	r2, [r4, #-8]
  401418:	e062c00c 	rsb	ip, r2, ip
  40141c:	e59c000c 	ldr	r0, [ip, #12]
  401420:	e59ce008 	ldr	lr, [ip, #8]
  401424:	e58e000c 	str	r0, [lr, #12]
  401428:	e580e008 	str	lr, [r0, #8]
  40142c:	e0833002 	add	r3, r3, r2
  401430:	e59f20c8 	ldr	r2, [pc, #200]	; 401500 <_free_r+0x260>
  401434:	e5920000 	ldr	r0, [r2]
  401438:	e3832001 	orr	r2, r3, #1
  40143c:	e1530000 	cmp	r3, r0
  401440:	e58c2004 	str	r2, [ip, #4]
  401444:	e581c008 	str	ip, [r1, #8]
  401448:	3affffdd 	bcc	4013c4 <_free_r+0x124>
  40144c:	e59f30b0 	ldr	r3, [pc, #176]	; 401504 <_free_r+0x264>
  401450:	e1a00006 	mov	r0, r6
  401454:	e5931000 	ldr	r1, [r3]
  401458:	ebffff50 	bl	4011a0 <_malloc_trim_r>
  40145c:	eaffffd8 	b	4013c4 <_free_r+0x124>
  401460:	e3832001 	orr	r2, r3, #1
  401464:	e581c014 	str	ip, [r1, #20]
  401468:	e581c010 	str	ip, [r1, #16]
  40146c:	e58c000c 	str	r0, [ip, #12]
  401470:	e58c0008 	str	r0, [ip, #8]
  401474:	e58c2004 	str	r2, [ip, #4]
  401478:	e78c3003 	str	r3, [ip, r3]
  40147c:	eaffffd0 	b	4013c4 <_free_r+0x124>
  401480:	e3520014 	cmp	r2, #20
  401484:	9282e05b 	addls	lr, r2, #91	; 0x5b
  401488:	91a0008e 	lslls	r0, lr, #1
  40148c:	9affffbb 	bls	401380 <_free_r+0xe0>
  401490:	e3520054 	cmp	r2, #84	; 0x54
  401494:	8a00000a 	bhi	4014c4 <_free_r+0x224>
  401498:	e1a0e623 	lsr	lr, r3, #12
  40149c:	e28ee06e 	add	lr, lr, #110	; 0x6e
  4014a0:	e1a0008e 	lsl	r0, lr, #1
  4014a4:	eaffffb5 	b	401380 <_free_r+0xe0>
  4014a8:	e5913004 	ldr	r3, [r1, #4]
  4014ac:	e1a0e14e 	asr	lr, lr, #2
  4014b0:	e3a00001 	mov	r0, #1
  4014b4:	e1830e10 	orr	r0, r3, r0, lsl lr
  4014b8:	e1a03002 	mov	r3, r2
  4014bc:	e5810004 	str	r0, [r1, #4]
  4014c0:	eaffffbb 	b	4013b4 <_free_r+0x114>
  4014c4:	e3520f55 	cmp	r2, #340	; 0x154
  4014c8:	91a0e7a3 	lsrls	lr, r3, #15
  4014cc:	928ee077 	addls	lr, lr, #119	; 0x77
  4014d0:	91a0008e 	lslls	r0, lr, #1
  4014d4:	9affffa9 	bls	401380 <_free_r+0xe0>
  4014d8:	e59f0028 	ldr	r0, [pc, #40]	; 401508 <_free_r+0x268>
  4014dc:	e1520000 	cmp	r2, r0
  4014e0:	91a0e923 	lsrls	lr, r3, #18
  4014e4:	928ee07c 	addls	lr, lr, #124	; 0x7c
  4014e8:	91a0008e 	lslls	r0, lr, #1
  4014ec:	83a000fc 	movhi	r0, #252	; 0xfc
  4014f0:	83a0e07e 	movhi	lr, #126	; 0x7e
  4014f4:	eaffffa1 	b	401380 <_free_r+0xe0>
  4014f8:	004022b4 	strheq	r2, [r0], #-36	; 0xffffffdc
  4014fc:	004022bc 	strheq	r2, [r0], #-44	; 0xffffffd4
  401500:	004026bc 	strheq	r2, [r0], #-108	; 0xffffff94
  401504:	00402b60 	subeq	r2, r0, r0, ror #22
  401508:	00000554 	andeq	r0, r0, r4, asr r5

Disassembly of section .text._malloc_r:

0040150c <_malloc_r>:
  40150c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  401510:	e281500b 	add	r5, r1, #11
  401514:	e3550016 	cmp	r5, #22
  401518:	83c55007 	bichi	r5, r5, #7
  40151c:	81a03fa5 	lsrhi	r3, r5, #31
  401520:	93a03000 	movls	r3, #0
  401524:	93a05010 	movls	r5, #16
  401528:	e1550001 	cmp	r5, r1
  40152c:	21a01003 	movcs	r1, r3
  401530:	33831001 	orrcc	r1, r3, #1
  401534:	e3510000 	cmp	r1, #0
  401538:	13a0300c 	movne	r3, #12
  40153c:	e24dd00c 	sub	sp, sp, #12
  401540:	e1a06000 	mov	r6, r0
  401544:	15803000 	strne	r3, [r0]
  401548:	13a04000 	movne	r4, #0
  40154c:	1a000015 	bne	4015a8 <_malloc_r+0x9c>
  401550:	eb0001c0 	bl	401c58 <__malloc_lock>
  401554:	e3550f7e 	cmp	r5, #504	; 0x1f8
  401558:	2a000016 	bcs	4015b8 <_malloc_r+0xac>
  40155c:	e59f76d8 	ldr	r7, [pc, #1752]	; 401c3c <_malloc_r+0x730>
  401560:	e1a0e1a5 	lsr	lr, r5, #3
  401564:	e087318e 	add	r3, r7, lr, lsl #3
  401568:	e593400c 	ldr	r4, [r3, #12]
  40156c:	e1540003 	cmp	r4, r3
  401570:	0a000149 	beq	401a9c <_malloc_r+0x590>
  401574:	e5943004 	ldr	r3, [r4, #4]
  401578:	e3c33003 	bic	r3, r3, #3
  40157c:	e0843003 	add	r3, r4, r3
  401580:	e593c004 	ldr	ip, [r3, #4]
  401584:	e2841008 	add	r1, r4, #8
  401588:	e8910006 	ldm	r1, {r1, r2}
  40158c:	e38cc001 	orr	ip, ip, #1
  401590:	e581200c 	str	r2, [r1, #12]
  401594:	e1a00006 	mov	r0, r6
  401598:	e5821008 	str	r1, [r2, #8]
  40159c:	e583c004 	str	ip, [r3, #4]
  4015a0:	eb0001ad 	bl	401c5c <__malloc_unlock>
  4015a4:	e2844008 	add	r4, r4, #8
  4015a8:	e1a00004 	mov	r0, r4
  4015ac:	e28dd00c 	add	sp, sp, #12
  4015b0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  4015b4:	e12fff1e 	bx	lr
  4015b8:	e1b0e4a5 	lsrs	lr, r5, #9
  4015bc:	03a0107e 	moveq	r1, #126	; 0x7e
  4015c0:	03a0e03f 	moveq	lr, #63	; 0x3f
  4015c4:	1a000061 	bne	401750 <_malloc_r+0x244>
  4015c8:	e59f766c 	ldr	r7, [pc, #1644]	; 401c3c <_malloc_r+0x730>
  4015cc:	e0871101 	add	r1, r7, r1, lsl #2
  4015d0:	e591400c 	ldr	r4, [r1, #12]
  4015d4:	e1510004 	cmp	r1, r4
  4015d8:	1a000005 	bne	4015f4 <_malloc_r+0xe8>
  4015dc:	ea00000a 	b	40160c <_malloc_r+0x100>
  4015e0:	e3530000 	cmp	r3, #0
  4015e4:	aa0000e2 	bge	401974 <_malloc_r+0x468>
  4015e8:	e594400c 	ldr	r4, [r4, #12]
  4015ec:	e1510004 	cmp	r1, r4
  4015f0:	0a000005 	beq	40160c <_malloc_r+0x100>
  4015f4:	e5942004 	ldr	r2, [r4, #4]
  4015f8:	e3c22003 	bic	r2, r2, #3
  4015fc:	e0653002 	rsb	r3, r5, r2
  401600:	e353000f 	cmp	r3, #15
  401604:	dafffff5 	ble	4015e0 <_malloc_r+0xd4>
  401608:	e24ee001 	sub	lr, lr, #1
  40160c:	e28ee001 	add	lr, lr, #1
  401610:	e59f3624 	ldr	r3, [pc, #1572]	; 401c3c <_malloc_r+0x730>
  401614:	e5974010 	ldr	r4, [r7, #16]
  401618:	e2838008 	add	r8, r3, #8
  40161c:	e1540008 	cmp	r4, r8
  401620:	05931004 	ldreq	r1, [r3, #4]
  401624:	0a000016 	beq	401684 <_malloc_r+0x178>
  401628:	e5942004 	ldr	r2, [r4, #4]
  40162c:	e3c22003 	bic	r2, r2, #3
  401630:	e0651002 	rsb	r1, r5, r2
  401634:	e351000f 	cmp	r1, #15
  401638:	ca000105 	bgt	401a54 <_malloc_r+0x548>
  40163c:	e3510000 	cmp	r1, #0
  401640:	e5838014 	str	r8, [r3, #20]
  401644:	e5838010 	str	r8, [r3, #16]
  401648:	aa000046 	bge	401768 <_malloc_r+0x25c>
  40164c:	e3520c02 	cmp	r2, #512	; 0x200
  401650:	2a0000e0 	bcs	4019d8 <_malloc_r+0x4cc>
  401654:	e5930004 	ldr	r0, [r3, #4]
  401658:	e1a021a2 	lsr	r2, r2, #3
  40165c:	e1a01142 	asr	r1, r2, #2
  401660:	e3a0c001 	mov	ip, #1
  401664:	e180111c 	orr	r1, r0, ip, lsl r1
  401668:	e0832182 	add	r2, r3, r2, lsl #3
  40166c:	e5920008 	ldr	r0, [r2, #8]
  401670:	e5831004 	str	r1, [r3, #4]
  401674:	e5840008 	str	r0, [r4, #8]
  401678:	e584200c 	str	r2, [r4, #12]
  40167c:	e5824008 	str	r4, [r2, #8]
  401680:	e580400c 	str	r4, [r0, #12]
  401684:	e1a0314e 	asr	r3, lr, #2
  401688:	e3a00001 	mov	r0, #1
  40168c:	e1a00310 	lsl	r0, r0, r3
  401690:	e1500001 	cmp	r0, r1
  401694:	8a00003e 	bhi	401794 <_malloc_r+0x288>
  401698:	e1110000 	tst	r1, r0
  40169c:	1a000008 	bne	4016c4 <_malloc_r+0x1b8>
  4016a0:	e1a00080 	lsl	r0, r0, #1
  4016a4:	e3cee003 	bic	lr, lr, #3
  4016a8:	e1110000 	tst	r1, r0
  4016ac:	e28ee004 	add	lr, lr, #4
  4016b0:	1a000003 	bne	4016c4 <_malloc_r+0x1b8>
  4016b4:	e1a00080 	lsl	r0, r0, #1
  4016b8:	e1110000 	tst	r1, r0
  4016bc:	e28ee004 	add	lr, lr, #4
  4016c0:	0afffffb 	beq	4016b4 <_malloc_r+0x1a8>
  4016c4:	e087418e 	add	r4, r7, lr, lsl #3
  4016c8:	e1a0c004 	mov	ip, r4
  4016cc:	e1a0900e 	mov	r9, lr
  4016d0:	e59c300c 	ldr	r3, [ip, #12]
  4016d4:	e15c0003 	cmp	ip, r3
  4016d8:	1a000005 	bne	4016f4 <_malloc_r+0x1e8>
  4016dc:	ea0000e9 	b	401a88 <_malloc_r+0x57c>
  4016e0:	e3520000 	cmp	r2, #0
  4016e4:	aa0000f2 	bge	401ab4 <_malloc_r+0x5a8>
  4016e8:	e593300c 	ldr	r3, [r3, #12]
  4016ec:	e15c0003 	cmp	ip, r3
  4016f0:	0a0000e4 	beq	401a88 <_malloc_r+0x57c>
  4016f4:	e5931004 	ldr	r1, [r3, #4]
  4016f8:	e3c11003 	bic	r1, r1, #3
  4016fc:	e0652001 	rsb	r2, r5, r1
  401700:	e352000f 	cmp	r2, #15
  401704:	dafffff5 	ble	4016e0 <_malloc_r+0x1d4>
  401708:	e1a04003 	mov	r4, r3
  40170c:	e5b4c008 	ldr	ip, [r4, #8]!
  401710:	e593100c 	ldr	r1, [r3, #12]
  401714:	e3859001 	orr	r9, r5, #1
  401718:	e382e001 	orr	lr, r2, #1
  40171c:	e0835005 	add	r5, r3, r5
  401720:	e5839004 	str	r9, [r3, #4]
  401724:	e1a00006 	mov	r0, r6
  401728:	e58c100c 	str	r1, [ip, #12]
  40172c:	e581c008 	str	ip, [r1, #8]
  401730:	e5875014 	str	r5, [r7, #20]
  401734:	e5875010 	str	r5, [r7, #16]
  401738:	e585800c 	str	r8, [r5, #12]
  40173c:	e5858008 	str	r8, [r5, #8]
  401740:	e585e004 	str	lr, [r5, #4]
  401744:	e7852002 	str	r2, [r5, r2]
  401748:	eb000143 	bl	401c5c <__malloc_unlock>
  40174c:	eaffff95 	b	4015a8 <_malloc_r+0x9c>
  401750:	e35e0004 	cmp	lr, #4
  401754:	8a000095 	bhi	4019b0 <_malloc_r+0x4a4>
  401758:	e1a0e325 	lsr	lr, r5, #6
  40175c:	e28ee038 	add	lr, lr, #56	; 0x38
  401760:	e1a0108e 	lsl	r1, lr, #1
  401764:	eaffff97 	b	4015c8 <_malloc_r+0xbc>
  401768:	e0842002 	add	r2, r4, r2
  40176c:	e5923004 	ldr	r3, [r2, #4]
  401770:	e3833001 	orr	r3, r3, #1
  401774:	e1a00006 	mov	r0, r6
  401778:	e5823004 	str	r3, [r2, #4]
  40177c:	eb000136 	bl	401c5c <__malloc_unlock>
  401780:	e2844008 	add	r4, r4, #8
  401784:	e1a00004 	mov	r0, r4
  401788:	e28dd00c 	add	sp, sp, #12
  40178c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  401790:	e12fff1e 	bx	lr
  401794:	e5974008 	ldr	r4, [r7, #8]
  401798:	e5949004 	ldr	r9, [r4, #4]
  40179c:	e3c99003 	bic	r9, r9, #3
  4017a0:	e1550009 	cmp	r5, r9
  4017a4:	8a000002 	bhi	4017b4 <_malloc_r+0x2a8>
  4017a8:	e0653009 	rsb	r3, r5, r9
  4017ac:	e353000f 	cmp	r3, #15
  4017b0:	ca000062 	bgt	401940 <_malloc_r+0x434>
  4017b4:	e59fc484 	ldr	ip, [pc, #1156]	; 401c40 <_malloc_r+0x734>
  4017b8:	e59f2484 	ldr	r2, [pc, #1156]	; 401c44 <_malloc_r+0x738>
  4017bc:	e59c3000 	ldr	r3, [ip]
  4017c0:	e592b000 	ldr	fp, [r2]
  4017c4:	e3730001 	cmn	r3, #1
  4017c8:	e085b00b 	add	fp, r5, fp
  4017cc:	128bba01 	addne	fp, fp, #4096	; 0x1000
  4017d0:	128bb00f 	addne	fp, fp, #15
  4017d4:	13cbbeff 	bicne	fp, fp, #4080	; 0xff0
  4017d8:	028bb010 	addeq	fp, fp, #16
  4017dc:	13cbb00f 	bicne	fp, fp, #15
  4017e0:	e0842009 	add	r2, r4, r9
  4017e4:	e1a00006 	mov	r0, r6
  4017e8:	e1a0100b 	mov	r1, fp
  4017ec:	e58d2004 	str	r2, [sp, #4]
  4017f0:	e58dc000 	str	ip, [sp]
  4017f4:	eb000119 	bl	401c60 <_sbrk_r>
  4017f8:	e3700001 	cmn	r0, #1
  4017fc:	e1a08000 	mov	r8, r0
  401800:	e59d2004 	ldr	r2, [sp, #4]
  401804:	e59dc000 	ldr	ip, [sp]
  401808:	0a0000bb 	beq	401afc <_malloc_r+0x5f0>
  40180c:	e1520000 	cmp	r2, r0
  401810:	8a0000b7 	bhi	401af4 <_malloc_r+0x5e8>
  401814:	e59fa42c 	ldr	sl, [pc, #1068]	; 401c48 <_malloc_r+0x73c>
  401818:	e59a3000 	ldr	r3, [sl]
  40181c:	e1520008 	cmp	r2, r8
  401820:	e08b3003 	add	r3, fp, r3
  401824:	e58a3000 	str	r3, [sl]
  401828:	0a0000e8 	beq	401bd0 <_malloc_r+0x6c4>
  40182c:	e59c1000 	ldr	r1, [ip]
  401830:	e3710001 	cmn	r1, #1
  401834:	10622008 	rsbne	r2, r2, r8
  401838:	e59f1400 	ldr	r1, [pc, #1024]	; 401c40 <_malloc_r+0x734>
  40183c:	10833002 	addne	r3, r3, r2
  401840:	05818000 	streq	r8, [r1]
  401844:	158a3000 	strne	r3, [sl]
  401848:	e2183007 	ands	r3, r8, #7
  40184c:	12632008 	rsbne	r2, r3, #8
  401850:	10888002 	addne	r8, r8, r2
  401854:	12633a01 	rsbne	r3, r3, #4096	; 0x1000
  401858:	12832008 	addne	r2, r3, #8
  40185c:	e088300b 	add	r3, r8, fp
  401860:	03a02a01 	moveq	r2, #4096	; 0x1000
  401864:	e1a03a03 	lsl	r3, r3, #20
  401868:	e042ba23 	sub	fp, r2, r3, lsr #20
  40186c:	e1a0100b 	mov	r1, fp
  401870:	e1a00006 	mov	r0, r6
  401874:	eb0000f9 	bl	401c60 <_sbrk_r>
  401878:	e3700001 	cmn	r0, #1
  40187c:	10682000 	rsbne	r2, r8, r0
  401880:	e59a3000 	ldr	r3, [sl]
  401884:	108b2002 	addne	r2, fp, r2
  401888:	03a0b000 	moveq	fp, #0
  40188c:	13822001 	orrne	r2, r2, #1
  401890:	03a02001 	moveq	r2, #1
  401894:	e08b3003 	add	r3, fp, r3
  401898:	e1540007 	cmp	r4, r7
  40189c:	e5878008 	str	r8, [r7, #8]
  4018a0:	e58a3000 	str	r3, [sl]
  4018a4:	e5882004 	str	r2, [r8, #4]
  4018a8:	e59fa398 	ldr	sl, [pc, #920]	; 401c48 <_malloc_r+0x73c>
  4018ac:	0a00000d 	beq	4018e8 <_malloc_r+0x3dc>
  4018b0:	e359000f 	cmp	r9, #15
  4018b4:	9a0000b1 	bls	401b80 <_malloc_r+0x674>
  4018b8:	e5940004 	ldr	r0, [r4, #4]
  4018bc:	e249200c 	sub	r2, r9, #12
  4018c0:	e3c22007 	bic	r2, r2, #7
  4018c4:	e2000001 	and	r0, r0, #1
  4018c8:	e1820000 	orr	r0, r2, r0
  4018cc:	e3a01005 	mov	r1, #5
  4018d0:	e352000f 	cmp	r2, #15
  4018d4:	e0842002 	add	r2, r4, r2
  4018d8:	e5840004 	str	r0, [r4, #4]
  4018dc:	e5821004 	str	r1, [r2, #4]
  4018e0:	e5821008 	str	r1, [r2, #8]
  4018e4:	8a0000c0 	bhi	401bec <_malloc_r+0x6e0>
  4018e8:	e59f235c 	ldr	r2, [pc, #860]	; 401c4c <_malloc_r+0x740>
  4018ec:	e5921000 	ldr	r1, [r2]
  4018f0:	e1530001 	cmp	r3, r1
  4018f4:	85823000 	strhi	r3, [r2]
  4018f8:	e59f2350 	ldr	r2, [pc, #848]	; 401c50 <_malloc_r+0x744>
  4018fc:	e5921000 	ldr	r1, [r2]
  401900:	e5974008 	ldr	r4, [r7, #8]
  401904:	e1530001 	cmp	r3, r1
  401908:	95943004 	ldrls	r3, [r4, #4]
  40190c:	85941004 	ldrhi	r1, [r4, #4]
  401910:	85823000 	strhi	r3, [r2]
  401914:	93c33003 	bicls	r3, r3, #3
  401918:	83c13003 	bichi	r3, r1, #3
  40191c:	e1550003 	cmp	r5, r3
  401920:	e0653003 	rsb	r3, r5, r3
  401924:	8a000001 	bhi	401930 <_malloc_r+0x424>
  401928:	e353000f 	cmp	r3, #15
  40192c:	ca000003 	bgt	401940 <_malloc_r+0x434>
  401930:	e1a00006 	mov	r0, r6
  401934:	eb0000c8 	bl	401c5c <__malloc_unlock>
  401938:	e3a04000 	mov	r4, #0
  40193c:	eaffff19 	b	4015a8 <_malloc_r+0x9c>
  401940:	e3852001 	orr	r2, r5, #1
  401944:	e3833001 	orr	r3, r3, #1
  401948:	e0845005 	add	r5, r4, r5
  40194c:	e5842004 	str	r2, [r4, #4]
  401950:	e1a00006 	mov	r0, r6
  401954:	e5875008 	str	r5, [r7, #8]
  401958:	e5853004 	str	r3, [r5, #4]
  40195c:	eb0000be 	bl	401c5c <__malloc_unlock>
  401960:	e2844008 	add	r4, r4, #8
  401964:	e1a00004 	mov	r0, r4
  401968:	e28dd00c 	add	sp, sp, #12
  40196c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  401970:	e12fff1e 	bx	lr
  401974:	e0842002 	add	r2, r4, r2
  401978:	e592c004 	ldr	ip, [r2, #4]
  40197c:	e2841008 	add	r1, r4, #8
  401980:	e891000a 	ldm	r1, {r1, r3}
  401984:	e38cc001 	orr	ip, ip, #1
  401988:	e581300c 	str	r3, [r1, #12]
  40198c:	e1a00006 	mov	r0, r6
  401990:	e5831008 	str	r1, [r3, #8]
  401994:	e582c004 	str	ip, [r2, #4]
  401998:	eb0000af 	bl	401c5c <__malloc_unlock>
  40199c:	e2844008 	add	r4, r4, #8
  4019a0:	e1a00004 	mov	r0, r4
  4019a4:	e28dd00c 	add	sp, sp, #12
  4019a8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  4019ac:	e12fff1e 	bx	lr
  4019b0:	e35e0014 	cmp	lr, #20
  4019b4:	928ee05b 	addls	lr, lr, #91	; 0x5b
  4019b8:	91a0108e 	lslls	r1, lr, #1
  4019bc:	9affff01 	bls	4015c8 <_malloc_r+0xbc>
  4019c0:	e35e0054 	cmp	lr, #84	; 0x54
  4019c4:	8a000067 	bhi	401b68 <_malloc_r+0x65c>
  4019c8:	e1a0e625 	lsr	lr, r5, #12
  4019cc:	e28ee06e 	add	lr, lr, #110	; 0x6e
  4019d0:	e1a0108e 	lsl	r1, lr, #1
  4019d4:	eafffefb 	b	4015c8 <_malloc_r+0xbc>
  4019d8:	e1a034a2 	lsr	r3, r2, #9
  4019dc:	e3530004 	cmp	r3, #4
  4019e0:	9a00003f 	bls	401ae4 <_malloc_r+0x5d8>
  4019e4:	e3530014 	cmp	r3, #20
  4019e8:	9283105b 	addls	r1, r3, #91	; 0x5b
  4019ec:	91a00081 	lslls	r0, r1, #1
  4019f0:	9a000004 	bls	401a08 <_malloc_r+0x4fc>
  4019f4:	e3530054 	cmp	r3, #84	; 0x54
  4019f8:	8a000080 	bhi	401c00 <_malloc_r+0x6f4>
  4019fc:	e1a01622 	lsr	r1, r2, #12
  401a00:	e281106e 	add	r1, r1, #110	; 0x6e
  401a04:	e1a00081 	lsl	r0, r1, #1
  401a08:	e0870100 	add	r0, r7, r0, lsl #2
  401a0c:	e5903008 	ldr	r3, [r0, #8]
  401a10:	e1530000 	cmp	r3, r0
  401a14:	e59fc220 	ldr	ip, [pc, #544]	; 401c3c <_malloc_r+0x730>
  401a18:	0a00005d 	beq	401b94 <_malloc_r+0x688>
  401a1c:	e5931004 	ldr	r1, [r3, #4]
  401a20:	e3c11003 	bic	r1, r1, #3
  401a24:	e1520001 	cmp	r2, r1
  401a28:	2a000002 	bcs	401a38 <_malloc_r+0x52c>
  401a2c:	e5933008 	ldr	r3, [r3, #8]
  401a30:	e1500003 	cmp	r0, r3
  401a34:	1afffff8 	bne	401a1c <_malloc_r+0x510>
  401a38:	e593200c 	ldr	r2, [r3, #12]
  401a3c:	e5971004 	ldr	r1, [r7, #4]
  401a40:	e584200c 	str	r2, [r4, #12]
  401a44:	e5843008 	str	r3, [r4, #8]
  401a48:	e5824008 	str	r4, [r2, #8]
  401a4c:	e583400c 	str	r4, [r3, #12]
  401a50:	eaffff0b 	b	401684 <_malloc_r+0x178>
  401a54:	e385c001 	orr	ip, r5, #1
  401a58:	e3812001 	orr	r2, r1, #1
  401a5c:	e0845005 	add	r5, r4, r5
  401a60:	e584c004 	str	ip, [r4, #4]
  401a64:	e1a00006 	mov	r0, r6
  401a68:	e5835014 	str	r5, [r3, #20]
  401a6c:	e5835010 	str	r5, [r3, #16]
  401a70:	e585800c 	str	r8, [r5, #12]
  401a74:	e9850104 	stmib	r5, {r2, r8}
  401a78:	e7851001 	str	r1, [r5, r1]
  401a7c:	e2844008 	add	r4, r4, #8
  401a80:	eb000075 	bl	401c5c <__malloc_unlock>
  401a84:	eafffec7 	b	4015a8 <_malloc_r+0x9c>
  401a88:	e2899001 	add	r9, r9, #1
  401a8c:	e3190003 	tst	r9, #3
  401a90:	e28cc008 	add	ip, ip, #8
  401a94:	1affff0d 	bne	4016d0 <_malloc_r+0x1c4>
  401a98:	ea00001f 	b	401b1c <_malloc_r+0x610>
  401a9c:	e2843008 	add	r3, r4, #8
  401aa0:	e5944014 	ldr	r4, [r4, #20]
  401aa4:	e1530004 	cmp	r3, r4
  401aa8:	028ee002 	addeq	lr, lr, #2
  401aac:	0afffed7 	beq	401610 <_malloc_r+0x104>
  401ab0:	eafffeaf 	b	401574 <_malloc_r+0x68>
  401ab4:	e0831001 	add	r1, r3, r1
  401ab8:	e591c004 	ldr	ip, [r1, #4]
  401abc:	e1a04003 	mov	r4, r3
  401ac0:	e5b42008 	ldr	r2, [r4, #8]!
  401ac4:	e593300c 	ldr	r3, [r3, #12]
  401ac8:	e38cc001 	orr	ip, ip, #1
  401acc:	e581c004 	str	ip, [r1, #4]
  401ad0:	e1a00006 	mov	r0, r6
  401ad4:	e582300c 	str	r3, [r2, #12]
  401ad8:	e5832008 	str	r2, [r3, #8]
  401adc:	eb00005e 	bl	401c5c <__malloc_unlock>
  401ae0:	eafffeb0 	b	4015a8 <_malloc_r+0x9c>
  401ae4:	e1a01322 	lsr	r1, r2, #6
  401ae8:	e2811038 	add	r1, r1, #56	; 0x38
  401aec:	e1a00081 	lsl	r0, r1, #1
  401af0:	eaffffc4 	b	401a08 <_malloc_r+0x4fc>
  401af4:	e1540007 	cmp	r4, r7
  401af8:	0affff45 	beq	401814 <_malloc_r+0x308>
  401afc:	e5974008 	ldr	r4, [r7, #8]
  401b00:	e5943004 	ldr	r3, [r4, #4]
  401b04:	e3c33003 	bic	r3, r3, #3
  401b08:	eaffff83 	b	40191c <_malloc_r+0x410>
  401b0c:	e5944000 	ldr	r4, [r4]
  401b10:	e1540003 	cmp	r4, r3
  401b14:	e24ee001 	sub	lr, lr, #1
  401b18:	1a000045 	bne	401c34 <_malloc_r+0x728>
  401b1c:	e31e0003 	tst	lr, #3
  401b20:	e2443008 	sub	r3, r4, #8
  401b24:	1afffff8 	bne	401b0c <_malloc_r+0x600>
  401b28:	e5973004 	ldr	r3, [r7, #4]
  401b2c:	e1c33000 	bic	r3, r3, r0
  401b30:	e5873004 	str	r3, [r7, #4]
  401b34:	e1a00080 	lsl	r0, r0, #1
  401b38:	e1500003 	cmp	r0, r3
  401b3c:	8affff14 	bhi	401794 <_malloc_r+0x288>
  401b40:	e3500000 	cmp	r0, #0
  401b44:	0affff12 	beq	401794 <_malloc_r+0x288>
  401b48:	e1130000 	tst	r3, r0
  401b4c:	e1a0e009 	mov	lr, r9
  401b50:	1afffedb 	bne	4016c4 <_malloc_r+0x1b8>
  401b54:	e1a00080 	lsl	r0, r0, #1
  401b58:	e1130000 	tst	r3, r0
  401b5c:	e28ee004 	add	lr, lr, #4
  401b60:	0afffffb 	beq	401b54 <_malloc_r+0x648>
  401b64:	eafffed6 	b	4016c4 <_malloc_r+0x1b8>
  401b68:	e35e0f55 	cmp	lr, #340	; 0x154
  401b6c:	8a00000f 	bhi	401bb0 <_malloc_r+0x6a4>
  401b70:	e1a0e7a5 	lsr	lr, r5, #15
  401b74:	e28ee077 	add	lr, lr, #119	; 0x77
  401b78:	e1a0108e 	lsl	r1, lr, #1
  401b7c:	eafffe91 	b	4015c8 <_malloc_r+0xbc>
  401b80:	e3a03001 	mov	r3, #1
  401b84:	e5883004 	str	r3, [r8, #4]
  401b88:	e1a04008 	mov	r4, r8
  401b8c:	e3a03000 	mov	r3, #0
  401b90:	eaffff61 	b	40191c <_malloc_r+0x410>
  401b94:	e59c2004 	ldr	r2, [ip, #4]
  401b98:	e1a01141 	asr	r1, r1, #2
  401b9c:	e3a00001 	mov	r0, #1
  401ba0:	e1821110 	orr	r1, r2, r0, lsl r1
  401ba4:	e1a02003 	mov	r2, r3
  401ba8:	e58c1004 	str	r1, [ip, #4]
  401bac:	eaffffa3 	b	401a40 <_malloc_r+0x534>
  401bb0:	e59f309c 	ldr	r3, [pc, #156]	; 401c54 <_malloc_r+0x748>
  401bb4:	e15e0003 	cmp	lr, r3
  401bb8:	91a0e925 	lsrls	lr, r5, #18
  401bbc:	928ee07c 	addls	lr, lr, #124	; 0x7c
  401bc0:	91a0108e 	lslls	r1, lr, #1
  401bc4:	83a010fc 	movhi	r1, #252	; 0xfc
  401bc8:	83a0e07e 	movhi	lr, #126	; 0x7e
  401bcc:	eafffe7d 	b	4015c8 <_malloc_r+0xbc>
  401bd0:	e1b01a02 	lsls	r1, r2, #20
  401bd4:	1affff14 	bne	40182c <_malloc_r+0x320>
  401bd8:	e08b1009 	add	r1, fp, r9
  401bdc:	e5972008 	ldr	r2, [r7, #8]
  401be0:	e3811001 	orr	r1, r1, #1
  401be4:	e5821004 	str	r1, [r2, #4]
  401be8:	eaffff3e 	b	4018e8 <_malloc_r+0x3dc>
  401bec:	e2841008 	add	r1, r4, #8
  401bf0:	e1a00006 	mov	r0, r6
  401bf4:	ebfffda9 	bl	4012a0 <_free_r>
  401bf8:	e59a3000 	ldr	r3, [sl]
  401bfc:	eaffff39 	b	4018e8 <_malloc_r+0x3dc>
  401c00:	e3530f55 	cmp	r3, #340	; 0x154
  401c04:	91a017a2 	lsrls	r1, r2, #15
  401c08:	92811077 	addls	r1, r1, #119	; 0x77
  401c0c:	91a00081 	lslls	r0, r1, #1
  401c10:	9affff7c 	bls	401a08 <_malloc_r+0x4fc>
  401c14:	e59f1038 	ldr	r1, [pc, #56]	; 401c54 <_malloc_r+0x748>
  401c18:	e1530001 	cmp	r3, r1
  401c1c:	91a01922 	lsrls	r1, r2, #18
  401c20:	9281107c 	addls	r1, r1, #124	; 0x7c
  401c24:	91a00081 	lslls	r0, r1, #1
  401c28:	83a000fc 	movhi	r0, #252	; 0xfc
  401c2c:	83a0107e 	movhi	r1, #126	; 0x7e
  401c30:	eaffff74 	b	401a08 <_malloc_r+0x4fc>
  401c34:	e5973004 	ldr	r3, [r7, #4]
  401c38:	eaffffbd 	b	401b34 <_malloc_r+0x628>
  401c3c:	004022b4 	strheq	r2, [r0], #-36	; 0xffffffdc
  401c40:	004026c0 	subeq	r2, r0, r0, asr #13
  401c44:	00402b60 	subeq	r2, r0, r0, ror #22
  401c48:	00402b64 	subeq	r2, r0, r4, ror #22
  401c4c:	00402b5c 	subeq	r2, r0, ip, asr fp
  401c50:	00402b58 	subeq	r2, r0, r8, asr fp
  401c54:	00000554 	andeq	r0, r0, r4, asr r5

Disassembly of section .text.__malloc_lock:

00401c58 <__malloc_lock>:
  401c58:	e12fff1e 	bx	lr

Disassembly of section .text.__malloc_unlock:

00401c5c <__malloc_unlock>:
  401c5c:	e12fff1e 	bx	lr

Disassembly of section .text._sbrk_r:

00401c60 <_sbrk_r>:
  401c60:	e92d4038 	push	{r3, r4, r5, lr}
  401c64:	e59f4034 	ldr	r4, [pc, #52]	; 401ca0 <_sbrk_r+0x40>
  401c68:	e3a03000 	mov	r3, #0
  401c6c:	e1a05000 	mov	r5, r0
  401c70:	e1a00001 	mov	r0, r1
  401c74:	e5843000 	str	r3, [r4]
  401c78:	ebfffc21 	bl	400d04 <_sbrk>
  401c7c:	e3700001 	cmn	r0, #1
  401c80:	0a000001 	beq	401c8c <_sbrk_r+0x2c>
  401c84:	e8bd4038 	pop	{r3, r4, r5, lr}
  401c88:	e12fff1e 	bx	lr
  401c8c:	e5943000 	ldr	r3, [r4]
  401c90:	e3530000 	cmp	r3, #0
  401c94:	15853000 	strne	r3, [r5]
  401c98:	e8bd4038 	pop	{r3, r4, r5, lr}
  401c9c:	e12fff1e 	bx	lr
  401ca0:	00402b54 	subeq	r2, r0, r4, asr fp

Disassembly of section .rodata:

00401ca4 <reg_gpio_pad_dir0>:
  401ca4:	80000000 	andhi	r0, r0, r0

00401ca8 <reg_gpio_pad_dir1>:
  401ca8:	80000004 	andhi	r0, r0, r4

00401cac <reg_gpio_data_set0>:
  401cac:	80000048 	andhi	r0, r0, r8, asr #32

00401cb0 <reg_gpio_data_set1>:
  401cb0:	8000004c 	andhi	r0, r0, ip, asr #32

00401cb4 <reg_gpio_data_reset1>:
  401cb4:	80000054 	andhi	r0, r0, r4, asr r0

00401cb8 <reg_gpio_data0>:
  401cb8:	80000008 	andhi	r0, r0, r8

00401cbc <led_red_mask>:
  401cbc:	00001000 	andeq	r1, r0, r0

00401cc0 <led_green_mask>:
  401cc0:	00002000 	andeq	r2, r0, r0

00401cc4 <in_s2>:
  401cc4:	00800000 	addeq	r0, r0, r0

00401cc8 <in_s3>:
  401cc8:	00400000 	subeq	r0, r0, r0

00401ccc <out_s2>:
  401ccc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>

00401cd0 <out_s3>:
  401cd0:	04000000 	streq	r0, [r0], #-0

00401cd4 <delay>:
  401cd4:	00010000 	andeq	r0, r1, r0
  401cd8:	7665642f 	strbtvc	r6, [r5], -pc, lsr #8
  401cdc:	7261752f 	rsbvc	r7, r1, #197132288	; 0xbc00000
  401ce0:	00003174 	andeq	r3, r0, r4, ror r1
  401ce4:	7665642f 	strbtvc	r6, [r5], -pc, lsr #8
  401ce8:	7261752f 	rsbvc	r7, r1, #197132288	; 0xbc00000
  401cec:	00003274 	andeq	r3, r0, r4, ror r2
  401cf0:	7665642f 	strbtvc	r6, [r5], -pc, lsr #8
  401cf4:	6c756e2f 	ldclvs	14, cr6, [r5], #-188	; 0xffffff44
  401cf8:	0000006c 	andeq	r0, r0, ip, rrx

00401cfc <itc_regs>:
  401cfc:	80020000 	andhi	r0, r2, r0

00401d00 <uart_regs>:
  401d00:	80005000 	andhi	r5, r0, r0
  401d04:	8000b000 	andhi	fp, r0, r0

00401d08 <uart_pins>:
  401d08:	11100f0e 	tstne	r0, lr, lsl #30
  401d0c:	15141312 	ldrne	r1, [r4, #-786]	; 0x312

00401d10 <uart_irq_handlers>:
  401d10:	00400ccc 	subeq	r0, r0, ip, asr #25
  401d14:	00400ce8 	subeq	r0, r0, r8, ror #25
  401d18:	00000043 	andeq	r0, r0, r3, asr #32

00401d1c <_global_impure_ptr>:
  401d1c:	00401e88 	subeq	r1, r0, r8, lsl #29

Disassembly of section .data:

00401d20 <bsp_dev_list>:
  401d20:	00401cf0 	strdeq	r1, [r0], #-192	; 0xffffff40
	...

00401e40 <bsp_next_dev>:
  401e40:	00000001 	andeq	r0, r0, r1

00401e44 <bsp_fd_list>:
  401e44:	00401d20 	subeq	r1, r0, r0, lsr #26
  401e48:	00000000 	andeq	r0, r0, r0
  401e4c:	00401d20 	subeq	r1, r0, r0, lsr #26
  401e50:	00000000 	andeq	r0, r0, r0
  401e54:	00401d20 	subeq	r1, r0, r0, lsr #26
	...

00401e84 <current_break.4856>:
  401e84:	00402b58 	subeq	r2, r0, r8, asr fp

Disassembly of section .data.impure_data:

00401e88 <impure_data>:
  401e88:	00000000 	andeq	r0, r0, r0
  401e8c:	00402174 	subeq	r2, r0, r4, ror r1
  401e90:	004021dc 	ldrdeq	r2, [r0], #-28	; 0xffffffe4
  401e94:	00402244 	subeq	r2, r0, r4, asr #4
	...
  401ebc:	00401d18 	subeq	r1, r0, r8, lsl sp
	...
  401f30:	00000001 	andeq	r0, r0, r1
  401f34:	00000000 	andeq	r0, r0, r0
  401f38:	abcd330e 	blge	ff74eb78 <_STACK_FILLER+0x20c72c89>
  401f3c:	e66d1234 			; <UNDEFINED> instruction: 0xe66d1234
  401f40:	0005deec 	andeq	sp, r5, ip, ror #29
  401f44:	0000000b 	andeq	r0, r0, fp
	...

Disassembly of section .data._impure_ptr:

004022b0 <_impure_ptr>:
  4022b0:	00401e88 	subeq	r1, r0, r8, lsl #29

Disassembly of section .data.__malloc_av_:

004022b4 <__malloc_av_>:
	...
  4022bc:	004022b4 	strheq	r2, [r0], #-36	; 0xffffffdc
  4022c0:	004022b4 	strheq	r2, [r0], #-36	; 0xffffffdc
  4022c4:	004022bc 	strheq	r2, [r0], #-44	; 0xffffffd4
  4022c8:	004022bc 	strheq	r2, [r0], #-44	; 0xffffffd4
  4022cc:	004022c4 	subeq	r2, r0, r4, asr #5
  4022d0:	004022c4 	subeq	r2, r0, r4, asr #5
  4022d4:	004022cc 	subeq	r2, r0, ip, asr #5
  4022d8:	004022cc 	subeq	r2, r0, ip, asr #5
  4022dc:	004022d4 	ldrdeq	r2, [r0], #-36	; 0xffffffdc
  4022e0:	004022d4 	ldrdeq	r2, [r0], #-36	; 0xffffffdc
  4022e4:	004022dc 	ldrdeq	r2, [r0], #-44	; 0xffffffd4
  4022e8:	004022dc 	ldrdeq	r2, [r0], #-44	; 0xffffffd4
  4022ec:	004022e4 	subeq	r2, r0, r4, ror #5
  4022f0:	004022e4 	subeq	r2, r0, r4, ror #5
  4022f4:	004022ec 	subeq	r2, r0, ip, ror #5
  4022f8:	004022ec 	subeq	r2, r0, ip, ror #5
  4022fc:	004022f4 	strdeq	r2, [r0], #-36	; 0xffffffdc
  402300:	004022f4 	strdeq	r2, [r0], #-36	; 0xffffffdc
  402304:	004022fc 	strdeq	r2, [r0], #-44	; 0xffffffd4
  402308:	004022fc 	strdeq	r2, [r0], #-44	; 0xffffffd4
  40230c:	00402304 	subeq	r2, r0, r4, lsl #6
  402310:	00402304 	subeq	r2, r0, r4, lsl #6
  402314:	0040230c 	subeq	r2, r0, ip, lsl #6
  402318:	0040230c 	subeq	r2, r0, ip, lsl #6
  40231c:	00402314 	subeq	r2, r0, r4, lsl r3
  402320:	00402314 	subeq	r2, r0, r4, lsl r3
  402324:	0040231c 	subeq	r2, r0, ip, lsl r3
  402328:	0040231c 	subeq	r2, r0, ip, lsl r3
  40232c:	00402324 	subeq	r2, r0, r4, lsr #6
  402330:	00402324 	subeq	r2, r0, r4, lsr #6
  402334:	0040232c 	subeq	r2, r0, ip, lsr #6
  402338:	0040232c 	subeq	r2, r0, ip, lsr #6
  40233c:	00402334 	subeq	r2, r0, r4, lsr r3
  402340:	00402334 	subeq	r2, r0, r4, lsr r3
  402344:	0040233c 	subeq	r2, r0, ip, lsr r3
  402348:	0040233c 	subeq	r2, r0, ip, lsr r3
  40234c:	00402344 	subeq	r2, r0, r4, asr #6
  402350:	00402344 	subeq	r2, r0, r4, asr #6
  402354:	0040234c 	subeq	r2, r0, ip, asr #6
  402358:	0040234c 	subeq	r2, r0, ip, asr #6
  40235c:	00402354 	subeq	r2, r0, r4, asr r3
  402360:	00402354 	subeq	r2, r0, r4, asr r3
  402364:	0040235c 	subeq	r2, r0, ip, asr r3
  402368:	0040235c 	subeq	r2, r0, ip, asr r3
  40236c:	00402364 	subeq	r2, r0, r4, ror #6
  402370:	00402364 	subeq	r2, r0, r4, ror #6
  402374:	0040236c 	subeq	r2, r0, ip, ror #6
  402378:	0040236c 	subeq	r2, r0, ip, ror #6
  40237c:	00402374 	subeq	r2, r0, r4, ror r3
  402380:	00402374 	subeq	r2, r0, r4, ror r3
  402384:	0040237c 	subeq	r2, r0, ip, ror r3
  402388:	0040237c 	subeq	r2, r0, ip, ror r3
  40238c:	00402384 	subeq	r2, r0, r4, lsl #7
  402390:	00402384 	subeq	r2, r0, r4, lsl #7
  402394:	0040238c 	subeq	r2, r0, ip, lsl #7
  402398:	0040238c 	subeq	r2, r0, ip, lsl #7
  40239c:	00402394 	umaaleq	r2, r0, r4, r3
  4023a0:	00402394 	umaaleq	r2, r0, r4, r3
  4023a4:	0040239c 	umaaleq	r2, r0, ip, r3
  4023a8:	0040239c 	umaaleq	r2, r0, ip, r3
  4023ac:	004023a4 	subeq	r2, r0, r4, lsr #7
  4023b0:	004023a4 	subeq	r2, r0, r4, lsr #7
  4023b4:	004023ac 	subeq	r2, r0, ip, lsr #7
  4023b8:	004023ac 	subeq	r2, r0, ip, lsr #7
  4023bc:	004023b4 	strheq	r2, [r0], #-52	; 0xffffffcc
  4023c0:	004023b4 	strheq	r2, [r0], #-52	; 0xffffffcc
  4023c4:	004023bc 	strheq	r2, [r0], #-60	; 0xffffffc4
  4023c8:	004023bc 	strheq	r2, [r0], #-60	; 0xffffffc4
  4023cc:	004023c4 	subeq	r2, r0, r4, asr #7
  4023d0:	004023c4 	subeq	r2, r0, r4, asr #7
  4023d4:	004023cc 	subeq	r2, r0, ip, asr #7
  4023d8:	004023cc 	subeq	r2, r0, ip, asr #7
  4023dc:	004023d4 	ldrdeq	r2, [r0], #-52	; 0xffffffcc
  4023e0:	004023d4 	ldrdeq	r2, [r0], #-52	; 0xffffffcc
  4023e4:	004023dc 	ldrdeq	r2, [r0], #-60	; 0xffffffc4
  4023e8:	004023dc 	ldrdeq	r2, [r0], #-60	; 0xffffffc4
  4023ec:	004023e4 	subeq	r2, r0, r4, ror #7
  4023f0:	004023e4 	subeq	r2, r0, r4, ror #7
  4023f4:	004023ec 	subeq	r2, r0, ip, ror #7
  4023f8:	004023ec 	subeq	r2, r0, ip, ror #7
  4023fc:	004023f4 	strdeq	r2, [r0], #-52	; 0xffffffcc
  402400:	004023f4 	strdeq	r2, [r0], #-52	; 0xffffffcc
  402404:	004023fc 	strdeq	r2, [r0], #-60	; 0xffffffc4
  402408:	004023fc 	strdeq	r2, [r0], #-60	; 0xffffffc4
  40240c:	00402404 	subeq	r2, r0, r4, lsl #8
  402410:	00402404 	subeq	r2, r0, r4, lsl #8
  402414:	0040240c 	subeq	r2, r0, ip, lsl #8
  402418:	0040240c 	subeq	r2, r0, ip, lsl #8
  40241c:	00402414 	subeq	r2, r0, r4, lsl r4
  402420:	00402414 	subeq	r2, r0, r4, lsl r4
  402424:	0040241c 	subeq	r2, r0, ip, lsl r4
  402428:	0040241c 	subeq	r2, r0, ip, lsl r4
  40242c:	00402424 	subeq	r2, r0, r4, lsr #8
  402430:	00402424 	subeq	r2, r0, r4, lsr #8
  402434:	0040242c 	subeq	r2, r0, ip, lsr #8
  402438:	0040242c 	subeq	r2, r0, ip, lsr #8
  40243c:	00402434 	subeq	r2, r0, r4, lsr r4
  402440:	00402434 	subeq	r2, r0, r4, lsr r4
  402444:	0040243c 	subeq	r2, r0, ip, lsr r4
  402448:	0040243c 	subeq	r2, r0, ip, lsr r4
  40244c:	00402444 	subeq	r2, r0, r4, asr #8
  402450:	00402444 	subeq	r2, r0, r4, asr #8
  402454:	0040244c 	subeq	r2, r0, ip, asr #8
  402458:	0040244c 	subeq	r2, r0, ip, asr #8
  40245c:	00402454 	subeq	r2, r0, r4, asr r4
  402460:	00402454 	subeq	r2, r0, r4, asr r4
  402464:	0040245c 	subeq	r2, r0, ip, asr r4
  402468:	0040245c 	subeq	r2, r0, ip, asr r4
  40246c:	00402464 	subeq	r2, r0, r4, ror #8
  402470:	00402464 	subeq	r2, r0, r4, ror #8
  402474:	0040246c 	subeq	r2, r0, ip, ror #8
  402478:	0040246c 	subeq	r2, r0, ip, ror #8
  40247c:	00402474 	subeq	r2, r0, r4, ror r4
  402480:	00402474 	subeq	r2, r0, r4, ror r4
  402484:	0040247c 	subeq	r2, r0, ip, ror r4
  402488:	0040247c 	subeq	r2, r0, ip, ror r4
  40248c:	00402484 	subeq	r2, r0, r4, lsl #9
  402490:	00402484 	subeq	r2, r0, r4, lsl #9
  402494:	0040248c 	subeq	r2, r0, ip, lsl #9
  402498:	0040248c 	subeq	r2, r0, ip, lsl #9
  40249c:	00402494 	umaaleq	r2, r0, r4, r4
  4024a0:	00402494 	umaaleq	r2, r0, r4, r4
  4024a4:	0040249c 	umaaleq	r2, r0, ip, r4
  4024a8:	0040249c 	umaaleq	r2, r0, ip, r4
  4024ac:	004024a4 	subeq	r2, r0, r4, lsr #9
  4024b0:	004024a4 	subeq	r2, r0, r4, lsr #9
  4024b4:	004024ac 	subeq	r2, r0, ip, lsr #9
  4024b8:	004024ac 	subeq	r2, r0, ip, lsr #9
  4024bc:	004024b4 	strheq	r2, [r0], #-68	; 0xffffffbc
  4024c0:	004024b4 	strheq	r2, [r0], #-68	; 0xffffffbc
  4024c4:	004024bc 	strheq	r2, [r0], #-76	; 0xffffffb4
  4024c8:	004024bc 	strheq	r2, [r0], #-76	; 0xffffffb4
  4024cc:	004024c4 	subeq	r2, r0, r4, asr #9
  4024d0:	004024c4 	subeq	r2, r0, r4, asr #9
  4024d4:	004024cc 	subeq	r2, r0, ip, asr #9
  4024d8:	004024cc 	subeq	r2, r0, ip, asr #9
  4024dc:	004024d4 	ldrdeq	r2, [r0], #-68	; 0xffffffbc
  4024e0:	004024d4 	ldrdeq	r2, [r0], #-68	; 0xffffffbc
  4024e4:	004024dc 	ldrdeq	r2, [r0], #-76	; 0xffffffb4
  4024e8:	004024dc 	ldrdeq	r2, [r0], #-76	; 0xffffffb4
  4024ec:	004024e4 	subeq	r2, r0, r4, ror #9
  4024f0:	004024e4 	subeq	r2, r0, r4, ror #9
  4024f4:	004024ec 	subeq	r2, r0, ip, ror #9
  4024f8:	004024ec 	subeq	r2, r0, ip, ror #9
  4024fc:	004024f4 	strdeq	r2, [r0], #-68	; 0xffffffbc
  402500:	004024f4 	strdeq	r2, [r0], #-68	; 0xffffffbc
  402504:	004024fc 	strdeq	r2, [r0], #-76	; 0xffffffb4
  402508:	004024fc 	strdeq	r2, [r0], #-76	; 0xffffffb4
  40250c:	00402504 	subeq	r2, r0, r4, lsl #10
  402510:	00402504 	subeq	r2, r0, r4, lsl #10
  402514:	0040250c 	subeq	r2, r0, ip, lsl #10
  402518:	0040250c 	subeq	r2, r0, ip, lsl #10
  40251c:	00402514 	subeq	r2, r0, r4, lsl r5
  402520:	00402514 	subeq	r2, r0, r4, lsl r5
  402524:	0040251c 	subeq	r2, r0, ip, lsl r5
  402528:	0040251c 	subeq	r2, r0, ip, lsl r5
  40252c:	00402524 	subeq	r2, r0, r4, lsr #10
  402530:	00402524 	subeq	r2, r0, r4, lsr #10
  402534:	0040252c 	subeq	r2, r0, ip, lsr #10
  402538:	0040252c 	subeq	r2, r0, ip, lsr #10
  40253c:	00402534 	subeq	r2, r0, r4, lsr r5
  402540:	00402534 	subeq	r2, r0, r4, lsr r5
  402544:	0040253c 	subeq	r2, r0, ip, lsr r5
  402548:	0040253c 	subeq	r2, r0, ip, lsr r5
  40254c:	00402544 	subeq	r2, r0, r4, asr #10
  402550:	00402544 	subeq	r2, r0, r4, asr #10
  402554:	0040254c 	subeq	r2, r0, ip, asr #10
  402558:	0040254c 	subeq	r2, r0, ip, asr #10
  40255c:	00402554 	subeq	r2, r0, r4, asr r5
  402560:	00402554 	subeq	r2, r0, r4, asr r5
  402564:	0040255c 	subeq	r2, r0, ip, asr r5
  402568:	0040255c 	subeq	r2, r0, ip, asr r5
  40256c:	00402564 	subeq	r2, r0, r4, ror #10
  402570:	00402564 	subeq	r2, r0, r4, ror #10
  402574:	0040256c 	subeq	r2, r0, ip, ror #10
  402578:	0040256c 	subeq	r2, r0, ip, ror #10
  40257c:	00402574 	subeq	r2, r0, r4, ror r5
  402580:	00402574 	subeq	r2, r0, r4, ror r5
  402584:	0040257c 	subeq	r2, r0, ip, ror r5
  402588:	0040257c 	subeq	r2, r0, ip, ror r5
  40258c:	00402584 	subeq	r2, r0, r4, lsl #11
  402590:	00402584 	subeq	r2, r0, r4, lsl #11
  402594:	0040258c 	subeq	r2, r0, ip, lsl #11
  402598:	0040258c 	subeq	r2, r0, ip, lsl #11
  40259c:	00402594 	umaaleq	r2, r0, r4, r5
  4025a0:	00402594 	umaaleq	r2, r0, r4, r5
  4025a4:	0040259c 	umaaleq	r2, r0, ip, r5
  4025a8:	0040259c 	umaaleq	r2, r0, ip, r5
  4025ac:	004025a4 	subeq	r2, r0, r4, lsr #11
  4025b0:	004025a4 	subeq	r2, r0, r4, lsr #11
  4025b4:	004025ac 	subeq	r2, r0, ip, lsr #11
  4025b8:	004025ac 	subeq	r2, r0, ip, lsr #11
  4025bc:	004025b4 	strheq	r2, [r0], #-84	; 0xffffffac
  4025c0:	004025b4 	strheq	r2, [r0], #-84	; 0xffffffac
  4025c4:	004025bc 	strheq	r2, [r0], #-92	; 0xffffffa4
  4025c8:	004025bc 	strheq	r2, [r0], #-92	; 0xffffffa4
  4025cc:	004025c4 	subeq	r2, r0, r4, asr #11
  4025d0:	004025c4 	subeq	r2, r0, r4, asr #11
  4025d4:	004025cc 	subeq	r2, r0, ip, asr #11
  4025d8:	004025cc 	subeq	r2, r0, ip, asr #11
  4025dc:	004025d4 	ldrdeq	r2, [r0], #-84	; 0xffffffac
  4025e0:	004025d4 	ldrdeq	r2, [r0], #-84	; 0xffffffac
  4025e4:	004025dc 	ldrdeq	r2, [r0], #-92	; 0xffffffa4
  4025e8:	004025dc 	ldrdeq	r2, [r0], #-92	; 0xffffffa4
  4025ec:	004025e4 	subeq	r2, r0, r4, ror #11
  4025f0:	004025e4 	subeq	r2, r0, r4, ror #11
  4025f4:	004025ec 	subeq	r2, r0, ip, ror #11
  4025f8:	004025ec 	subeq	r2, r0, ip, ror #11
  4025fc:	004025f4 	strdeq	r2, [r0], #-84	; 0xffffffac
  402600:	004025f4 	strdeq	r2, [r0], #-84	; 0xffffffac
  402604:	004025fc 	strdeq	r2, [r0], #-92	; 0xffffffa4
  402608:	004025fc 	strdeq	r2, [r0], #-92	; 0xffffffa4
  40260c:	00402604 	subeq	r2, r0, r4, lsl #12
  402610:	00402604 	subeq	r2, r0, r4, lsl #12
  402614:	0040260c 	subeq	r2, r0, ip, lsl #12
  402618:	0040260c 	subeq	r2, r0, ip, lsl #12
  40261c:	00402614 	subeq	r2, r0, r4, lsl r6
  402620:	00402614 	subeq	r2, r0, r4, lsl r6
  402624:	0040261c 	subeq	r2, r0, ip, lsl r6
  402628:	0040261c 	subeq	r2, r0, ip, lsl r6
  40262c:	00402624 	subeq	r2, r0, r4, lsr #12
  402630:	00402624 	subeq	r2, r0, r4, lsr #12
  402634:	0040262c 	subeq	r2, r0, ip, lsr #12
  402638:	0040262c 	subeq	r2, r0, ip, lsr #12
  40263c:	00402634 	subeq	r2, r0, r4, lsr r6
  402640:	00402634 	subeq	r2, r0, r4, lsr r6
  402644:	0040263c 	subeq	r2, r0, ip, lsr r6
  402648:	0040263c 	subeq	r2, r0, ip, lsr r6
  40264c:	00402644 	subeq	r2, r0, r4, asr #12
  402650:	00402644 	subeq	r2, r0, r4, asr #12
  402654:	0040264c 	subeq	r2, r0, ip, asr #12
  402658:	0040264c 	subeq	r2, r0, ip, asr #12
  40265c:	00402654 	subeq	r2, r0, r4, asr r6
  402660:	00402654 	subeq	r2, r0, r4, asr r6
  402664:	0040265c 	subeq	r2, r0, ip, asr r6
  402668:	0040265c 	subeq	r2, r0, ip, asr r6
  40266c:	00402664 	subeq	r2, r0, r4, ror #12
  402670:	00402664 	subeq	r2, r0, r4, ror #12
  402674:	0040266c 	subeq	r2, r0, ip, ror #12
  402678:	0040266c 	subeq	r2, r0, ip, ror #12
  40267c:	00402674 	subeq	r2, r0, r4, ror r6
  402680:	00402674 	subeq	r2, r0, r4, ror r6
  402684:	0040267c 	subeq	r2, r0, ip, ror r6
  402688:	0040267c 	subeq	r2, r0, ip, ror r6
  40268c:	00402684 	subeq	r2, r0, r4, lsl #13
  402690:	00402684 	subeq	r2, r0, r4, lsl #13
  402694:	0040268c 	subeq	r2, r0, ip, lsl #13
  402698:	0040268c 	subeq	r2, r0, ip, lsl #13
  40269c:	00402694 	umaaleq	r2, r0, r4, r6
  4026a0:	00402694 	umaaleq	r2, r0, r4, r6
  4026a4:	0040269c 	umaaleq	r2, r0, ip, r6
  4026a8:	0040269c 	umaaleq	r2, r0, ip, r6
  4026ac:	004026a4 	subeq	r2, r0, r4, lsr #13
  4026b0:	004026a4 	subeq	r2, r0, r4, lsr #13
  4026b4:	004026ac 	subeq	r2, r0, ip, lsr #13
  4026b8:	004026ac 	subeq	r2, r0, ip, lsr #13

Disassembly of section .data.__malloc_trim_threshold:

004026bc <__malloc_trim_threshold>:
  4026bc:	00020000 	andeq	r0, r2, r0

Disassembly of section .data.__malloc_sbrk_base:

004026c0 <__malloc_sbrk_base>:
  4026c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

Disassembly of section .bss:

004026c4 <_bss_start>:
	...

004026f0 <uart_rx_buffers>:
	...

004028f0 <uart_tx_buffers>:
	...

00402af0 <uart_circular_rx_buffers>:
	...

00402b18 <uart_circular_tx_buffers>:
	...

00402b40 <uart_callbacks>:
	...

00402b50 <the_led>:
  402b50:	00000000 	andeq	r0, r0, r0

00402b54 <errno>:
  402b54:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss.__malloc_max_total_mem:

00402b58 <__malloc_max_total_mem>:
  402b58:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss.__malloc_max_sbrked_mem:

00402b5c <__malloc_max_sbrked_mem>:
  402b5c:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss.__malloc_top_pad:

00402b60 <__malloc_top_pad>:
  402b60:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss.__malloc_current_mallinfo:

00402b64 <__malloc_current_mallinfo>:
	...

Disassembly of section .stacks:

004178e0 <_stacks_bottom>:
	...

00417ce0 <_sys_stack_top>:
	...

00417de0 <_svc_stack_top>:
	...

00417df0 <_abt_stack_top>:
	...

00417e00 <_und_stack_top>:
	...

00417f00 <_irq_stack_top>:
	...

Disassembly of section .heap:

00402b58 <_heap_start>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000230 	andeq	r0, r0, r0, lsr r2
       4:	00000004 	andeq	r0, r0, r4
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	00000085 	andeq	r0, r0, r5, lsl #1
      10:	00001501 	andeq	r1, r0, r1, lsl #10
      14:	0000b000 	andeq	fp, r0, r0
      18:	40013000 	andmi	r3, r1, r0
      1c:	0001c400 	andeq	ip, r1, r0, lsl #8
      20:	00000000 	andeq	r0, r0, r0
      24:	06010200 	streq	r0, [r1], -r0, lsl #4
      28:	0000004b 	andeq	r0, r0, fp, asr #32
      2c:	49080102 	stmdbmi	r8, {r1, r8}
      30:	02000000 	andeq	r0, r0, #0
      34:	019b0502 	orrseq	r0, fp, r2, lsl #10
      38:	02020000 	andeq	r0, r2, #0
      3c:	00007207 	andeq	r7, r0, r7, lsl #4
      40:	05040200 	streq	r0, [r4, #-512]	; 0x200
      44:	00000175 	andeq	r0, r0, r5, ror r1
      48:	00010903 	andeq	r0, r1, r3, lsl #18
      4c:	53410200 	movtpl	r0, #4608	; 0x1200
      50:	02000000 	andeq	r0, r0, #0
      54:	00310704 	eorseq	r0, r1, r4, lsl #14
      58:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
      5c:	00017005 	andeq	r7, r1, r5
      60:	07080200 	streq	r0, [r8, -r0, lsl #4]
      64:	0000002c 	andeq	r0, r0, ip, lsr #32
      68:	69050404 	stmdbvs	r5, {r2, sl}
      6c:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
      70:	00360704 	eorseq	r0, r6, r4, lsl #14
      74:	0b030000 	bleq	c007c <_stacks_size+0xbf95c>
      78:	03000001 	movweq	r0, #1
      7c:	00004842 	andeq	r4, r0, r2, asr #16
      80:	07040200 	streq	r0, [r4, -r0, lsl #4]
      84:	00000167 	andeq	r0, r0, r7, ror #2
      88:	52080102 	andpl	r0, r8, #-2147483648	; 0x80000000
      8c:	05000000 	streq	r0, [r0, #-0]
      90:	0000017e 	andeq	r0, r0, lr, ror r1
      94:	01304401 	teqeq	r0, r1, lsl #8
      98:	00540040 	subseq	r0, r4, r0, asr #32
      9c:	9c010000 	stcls	0, cr0, [r1], {-0}
      a0:	0001ab06 	andeq	sl, r1, r6, lsl #22
      a4:	84520100 	ldrbhi	r0, [r2], #-256	; 0x100
      a8:	2c004001 	stccs	0, cr4, [r0], {1}
      ac:	01000000 	mrseq	r0, (UNDEF: 0)
      b0:	0000c49c 	muleq	r0, ip, r4
      b4:	005f0700 	subseq	r0, pc, r0, lsl #14
      b8:	52010000 	andpl	r0, r1, #0
      bc:	00000076 	andeq	r0, r0, r6, ror r0
      c0:	00749102 	rsbseq	r9, r4, r2, lsl #2
      c4:	0001bf06 	andeq	fp, r1, r6, lsl #30
      c8:	b05e0100 	subslt	r0, lr, r0, lsl #2
      cc:	2c004001 	stccs	0, cr4, [r0], {1}
      d0:	01000000 	mrseq	r0, (UNDEF: 0)
      d4:	0000e89c 	muleq	r0, ip, r8
      d8:	005f0700 	subseq	r0, pc, r0, lsl #14
      dc:	5e010000 	cdppl	0, 0, cr0, cr1, cr0, {0}
      e0:	00000076 	andeq	r0, r0, r6, ror r0
      e4:	00749102 	rsbseq	r9, r4, r2, lsl #2
      e8:	0001a506 	andeq	sl, r1, r6, lsl #10
      ec:	dc690100 	stflee	f0, [r9], #-0
      f0:	40004001 	andmi	r4, r0, r1
      f4:	01000000 	mrseq	r0, (UNDEF: 0)
      f8:	00010a9c 	muleq	r1, ip, sl
      fc:	00690800 	rsbeq	r0, r9, r0, lsl #16
     100:	00766a01 	rsbseq	r6, r6, r1, lsl #20
     104:	91020000 	mrsls	r0, (UNDEF: 2)
     108:	a3090074 	movwge	r0, #36980	; 0x9074
     10c:	01000000 	mrseq	r0, (UNDEF: 0)
     110:	40021c6f 	andmi	r1, r2, pc, ror #24
     114:	00008800 	andeq	r8, r0, r0, lsl #16
     118:	0a9c0100 	beq	fe700520 <_STACK_FILLER+0x1fc24631>
     11c:	00000114 	andeq	r0, r0, r4, lsl r1
     120:	00688001 	rsbeq	r8, r8, r1
     124:	02a40000 	adceq	r0, r4, #0
     128:	00500040 	subseq	r0, r0, r0, asr #32
     12c:	9c010000 	stcls	0, cr0, [r1], {-0}
     130:	0001210b 	andeq	r2, r1, fp, lsl #2
     134:	41120100 	tstmi	r2, r0, lsl #2
     138:	05000001 	streq	r0, [r0, #-1]
     13c:	401ca403 	andsmi	sl, ip, r3, lsl #8
     140:	01460c00 	cmpeq	r6, r0, lsl #24
     144:	040d0000 	streq	r0, [sp], #-0
     148:	0000014c 	andeq	r0, r0, ip, asr #2
     14c:	0000760e 	andeq	r7, r0, lr, lsl #12
     150:	01330b00 	teqeq	r3, r0, lsl #22
     154:	15010000 	strne	r0, [r1, #-0]
     158:	00000141 	andeq	r0, r0, r1, asr #2
     15c:	1ca80305 	stcne	3, cr0, [r8], #20
     160:	450b0040 	strmi	r0, [fp, #-64]	; 0x40
     164:	01000001 	tsteq	r0, r1
     168:	00014118 	andeq	r4, r1, r8, lsl r1
     16c:	ac030500 	cfstr32ge	mvfx0, [r3], {-0}
     170:	0b00401c 	bleq	101e8 <_stacks_size+0xfac8>
     174:	00000188 	andeq	r0, r0, r8, lsl #3
     178:	01411b01 	cmpeq	r1, r1, lsl #22
     17c:	03050000 	movweq	r0, #20480	; 0x5000
     180:	00401cb0 	strheq	r1, [r0], #-192	; 0xffffff40
     184:	0000000b 	andeq	r0, r0, fp
     188:	411e0100 	tstmi	lr, r0, lsl #2
     18c:	05000001 	streq	r0, [r0, #-1]
     190:	401cb403 	andsmi	fp, ip, r3, lsl #8
     194:	01580b00 	cmpeq	r8, r0, lsl #22
     198:	21010000 	mrscs	r0, (UNDEF: 1)
     19c:	00000141 	andeq	r0, r0, r1, asr #2
     1a0:	1cb80305 	ldcne	3, cr0, [r8], #20
     1a4:	570b0040 	strpl	r0, [fp, -r0, asr #32]
     1a8:	01000000 	mrseq	r0, (UNDEF: 0)
     1ac:	0001b724 	andeq	fp, r1, r4, lsr #14
     1b0:	bc030500 	cfstr32lt	mvfx0, [r3], {-0}
     1b4:	0c00401c 	stceq	0, cr4, [r0], {28}
     1b8:	00000076 	andeq	r0, r0, r6, ror r0
     1bc:	00001d0b 	andeq	r1, r0, fp, lsl #26
     1c0:	b7250100 	strlt	r0, [r5, -r0, lsl #2]!
     1c4:	05000001 	streq	r0, [r0, #-1]
     1c8:	401cc003 	andsmi	ip, ip, r3
     1cc:	01b30b00 			; <UNDEFINED> instruction: 0x01b30b00
     1d0:	26010000 	strcs	r0, [r1], -r0
     1d4:	000001b7 			; <UNDEFINED> instruction: 0x000001b7
     1d8:	1cc40305 	stclne	3, cr0, [r4], {5}
     1dc:	b90b0040 	stmdblt	fp, {r6}
     1e0:	01000001 	tsteq	r0, r1
     1e4:	0001b727 	andeq	fp, r1, r7, lsr #14
     1e8:	c8030500 	stmdagt	r3, {r8, sl}
     1ec:	0b00401c 	bleq	10264 <_stacks_size+0xfb44>
     1f0:	00000064 	andeq	r0, r0, r4, rrx
     1f4:	01b72801 			; <UNDEFINED> instruction: 0x01b72801
     1f8:	03050000 	movweq	r0, #20480	; 0x5000
     1fc:	00401ccc 	subeq	r1, r0, ip, asr #25
     200:	00006b0b 	andeq	r6, r0, fp, lsl #22
     204:	b7290100 	strlt	r0, [r9, -r0, lsl #2]!
     208:	05000001 	streq	r0, [r0, #-1]
     20c:	401cd003 	andsmi	sp, ip, r3
     210:	00430b00 	subeq	r0, r3, r0, lsl #22
     214:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
     218:	000001b7 			; <UNDEFINED> instruction: 0x000001b7
     21c:	1cd40305 	ldclne	3, cr0, [r4], {5}
     220:	190b0040 	stmdbne	fp, {r6}
     224:	01000001 	tsteq	r0, r1
     228:	00007634 	andeq	r7, r0, r4, lsr r6
     22c:	50030500 	andpl	r0, r3, r0, lsl #10
     230:	0000402b 	andeq	r4, r0, fp, lsr #32
     234:	0000010f 	andeq	r0, r0, pc, lsl #2
     238:	00dd0004 	sbcseq	r0, sp, r4
     23c:	01040000 	mrseq	r0, (UNDEF: 4)
     240:	00000085 	andeq	r0, r0, r5, lsl #1
     244:	00021e01 	andeq	r1, r2, r1, lsl #28
     248:	00024300 	andeq	r4, r2, r0, lsl #6
     24c:	4002f400 	andmi	pc, r2, r0, lsl #8
     250:	0000f000 	andeq	pc, r0, r0
     254:	0000cf00 	andeq	ip, r0, r0, lsl #30
     258:	06010200 	streq	r0, [r1], -r0, lsl #4
     25c:	0000004b 	andeq	r0, r0, fp, asr #32
     260:	49080102 	stmdbmi	r8, {r1, r8}
     264:	02000000 	andeq	r0, r0, #0
     268:	019b0502 	orrseq	r0, fp, r2, lsl #10
     26c:	02020000 	andeq	r0, r2, #0
     270:	00007207 	andeq	r7, r0, r7, lsl #4
     274:	05040200 	streq	r0, [r4, #-512]	; 0x200
     278:	00000175 	andeq	r0, r0, r5, ror r1
     27c:	31070402 	tstcc	r7, r2, lsl #8
     280:	02000000 	andeq	r0, r0, #0
     284:	01700508 	cmneq	r0, r8, lsl #10
     288:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     28c:	00002c07 	andeq	r2, r0, r7, lsl #24
     290:	05040300 	streq	r0, [r4, #-768]	; 0x300
     294:	00746e69 	rsbseq	r6, r4, r9, ror #28
     298:	36070402 	strcc	r0, [r7], -r2, lsl #8
     29c:	02000000 	andeq	r0, r0, #0
     2a0:	01670704 	cmneq	r7, r4, lsl #14
     2a4:	01020000 	mrseq	r0, (UNDEF: 2)
     2a8:	00005208 	andeq	r5, r0, r8, lsl #4
     2ac:	7f040400 	svcvc	0x00040400
     2b0:	05000000 	streq	r0, [r0, #-0]
     2b4:	00000072 	andeq	r0, r0, r2, ror r0
     2b8:	12020106 	andne	r0, r2, #-2147483647	; 0x80000001
     2bc:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     2c0:	0001f607 	andeq	pc, r1, r7, lsl #12
     2c4:	fd070000 	stc2	0, cr0, [r7, #-0]
     2c8:	01000001 	tsteq	r0, r1
     2cc:	0001ed07 	andeq	lr, r1, r7, lsl #26
     2d0:	08000200 	stmdaeq	r0, {r9}
     2d4:	0000020f 	andeq	r0, r0, pc, lsl #4
     2d8:	02f40f01 	rscseq	r0, r4, #1, 30
     2dc:	001c0040 	andseq	r0, ip, r0, asr #32
     2e0:	9c010000 	stcls	0, cr0, [r1], {-0}
     2e4:	00022d08 	andeq	r2, r2, r8, lsl #26
     2e8:	101e0100 	andsne	r0, lr, r0, lsl #2
     2ec:	40004003 	andmi	r4, r0, r3
     2f0:	01000000 	mrseq	r0, (UNDEF: 0)
     2f4:	01c8099c 			; <UNDEFINED> instruction: 0x01c8099c
     2f8:	30010000 	andcc	r0, r1, r0
     2fc:	00400350 	subeq	r0, r0, r0, asr r3
     300:	00000064 	andeq	r0, r0, r4, rrx
     304:	01019c01 	tsteq	r1, r1, lsl #24
     308:	e30a0000 	movw	r0, #40960	; 0xa000
     30c:	01000001 	tsteq	r0, r1
     310:	00007930 	andeq	r7, r0, r0, lsr r9
     314:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     318:	0002040a 	andeq	r0, r2, sl, lsl #8
     31c:	79300100 	ldmdbvc	r0!, {r8}
     320:	02000000 	andeq	r0, r0, #0
     324:	d80a7091 	stmdale	sl, {r0, r4, r7, ip, sp, lr}
     328:	01000001 	tsteq	r0, r1
     32c:	00007930 	andeq	r7, r0, r0, lsr r9
     330:	6c910200 	lfmvs	f0, 4, [r1], {0}
     334:	023a0b00 	eorseq	r0, sl, #0, 22
     338:	40010000 	andmi	r0, r1, r0
     33c:	004003b4 	strheq	r0, [r0], #-52	; 0xffffffcc
     340:	00000030 	andeq	r0, r0, r0, lsr r0
     344:	cc009c01 	stcgt	12, cr9, [r0], {1}
     348:	04000005 	streq	r0, [r0], #-5
     34c:	00018200 	andeq	r8, r1, r0, lsl #4
     350:	85010400 	strhi	r0, [r1, #-1024]	; 0x400
     354:	01000000 	mrseq	r0, (UNDEF: 0)
     358:	000003ef 	andeq	r0, r0, pc, ror #7
     35c:	00000243 	andeq	r0, r0, r3, asr #4
     360:	004003e4 	subeq	r0, r0, r4, ror #7
     364:	000004d4 	ldrdeq	r0, [r0], -r4
     368:	00000138 	andeq	r0, r0, r8, lsr r1
     36c:	4b060102 	blmi	18077c <_stacks_size+0x18005c>
     370:	02000000 	andeq	r0, r0, #0
     374:	00490801 	subeq	r0, r9, r1, lsl #16
     378:	02020000 	andeq	r0, r2, #0
     37c:	00019b05 	andeq	r9, r1, r5, lsl #22
     380:	07020200 	streq	r0, [r2, -r0, lsl #4]
     384:	00000072 	andeq	r0, r0, r2, ror r0
     388:	0003d003 	andeq	sp, r3, r3
     38c:	4c3f0200 	lfmmi	f0, 4, [pc], #-0	; 394 <_fiq_stack_size+0x294>
     390:	02000000 	andeq	r0, r0, #0
     394:	01750504 	cmneq	r5, r4, lsl #10
     398:	09030000 	stmdbeq	r3, {}	; <UNPREDICTABLE>
     39c:	02000001 	andeq	r0, r0, #1
     3a0:	00005e41 	andeq	r5, r0, r1, asr #28
     3a4:	07040200 	streq	r0, [r4, -r0, lsl #4]
     3a8:	00000031 	andeq	r0, r0, r1, lsr r0
     3ac:	70050802 	andvc	r0, r5, r2, lsl #16
     3b0:	02000001 	andeq	r0, r0, #1
     3b4:	002c0708 	eoreq	r0, ip, r8, lsl #14
     3b8:	04040000 	streq	r0, [r4], #-0
     3bc:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
     3c0:	07040200 	streq	r0, [r4, -r0, lsl #4]
     3c4:	00000036 	andeq	r0, r0, r6, lsr r0
     3c8:	00041303 	andeq	r1, r4, r3, lsl #6
     3cc:	7ad40300 	bvc	ff500fd4 <_STACK_FILLER+0x20a250e5>
     3d0:	03000000 	movweq	r0, #0
     3d4:	000002ae 	andeq	r0, r0, lr, lsr #5
     3d8:	004c1004 	subeq	r1, ip, r4
     3dc:	c8030000 	stmdagt	r3, {}	; <UNPREDICTABLE>
     3e0:	04000003 	streq	r0, [r0], #-3
     3e4:	00003314 	andeq	r3, r0, r4, lsl r3
     3e8:	03f90300 	mvnseq	r0, #0, 6
     3ec:	18040000 	stmdane	r4, {}	; <UNPREDICTABLE>
     3f0:	0000003a 	andeq	r0, r0, sl, lsr r0
     3f4:	00040903 	andeq	r0, r4, r3, lsl #18
     3f8:	3a1b0400 	bcc	6c1400 <_ram_limit+0x2a9400>
     3fc:	03000000 	movweq	r0, #0
     400:	00000411 	andeq	r0, r0, r1, lsl r4
     404:	00733704 	rsbseq	r3, r3, r4, lsl #14
     408:	04020000 	streq	r0, [r2], #-0
     40c:	00016707 	andeq	r6, r1, r7, lsl #14
     410:	02e50300 	rsceq	r0, r5, #0, 6
     414:	7a050000 	bvc	14041c <_stacks_size+0x13fcfc>
     418:	0000004c 	andeq	r0, r0, ip, asr #32
     41c:	00db0405 	sbcseq	r0, fp, r5, lsl #8
     420:	01020000 	mrseq	r0, (UNDEF: 2)
     424:	00005208 	andeq	r5, r0, r8, lsl #4
     428:	02fe0300 	rscseq	r0, lr, #0, 6
     42c:	9b050000 	blls	140434 <_stacks_size+0x13fd14>
     430:	0000003a 	andeq	r0, r0, sl, lsr r0
     434:	0002af03 	andeq	sl, r2, r3, lsl #30
     438:	8cb80500 	cfldr32hi	mvfx0, [r8]
     43c:	03000000 	movweq	r0, #0
     440:	000003ca 	andeq	r0, r0, sl, asr #7
     444:	0097b905 	addseq	fp, r7, r5, lsl #18
     448:	fb030000 	blx	c0452 <_stacks_size+0xbfd32>
     44c:	05000003 	streq	r0, [r0, #-3]
     450:	0000a2ba 			; <UNDEFINED> instruction: 0x0000a2ba
     454:	040b0300 	streq	r0, [fp], #-768	; 0x300
     458:	bb050000 	bllt	140460 <_stacks_size+0x13fd40>
     45c:	000000ad 	andeq	r0, r0, sp, lsr #1
     460:	00041203 	andeq	r1, r4, r3, lsl #4
     464:	b8cb0500 	stmialt	fp, {r8, sl}^
     468:	03000000 	movweq	r0, #0
     46c:	000002a7 	andeq	r0, r0, r7, lsr #5
     470:	007ad905 	rsbseq	sp, sl, r5, lsl #18
     474:	6f030000 	svcvs	0x00030000
     478:	05000003 	streq	r0, [r0, #-3]
     47c:	00003ade 	ldrdeq	r3, [r0], -lr
     480:	40040500 	andmi	r0, r4, r0, lsl #10
     484:	06000001 	streq	r0, [r0], -r1
     488:	000000db 	ldrdeq	r0, [r0], -fp
     48c:	0016a407 	andseq	sl, r6, r7, lsl #8
     490:	1a063c00 	bne	18f498 <_stacks_size+0x18ed78>
     494:	0000021e 	andeq	r0, r0, lr, lsl r2
     498:	0002c308 	andeq	ip, r2, r8, lsl #6
     49c:	f81c0600 			; <UNDEFINED> instruction: 0xf81c0600
     4a0:	00000000 	andeq	r0, r0, r0
     4a4:	00033508 	andeq	r3, r3, r8, lsl #10
     4a8:	e21d0600 	ands	r0, sp, #0, 12
     4ac:	02000000 	andeq	r0, r0, #0
     4b0:	00040108 	andeq	r0, r4, r8, lsl #2
     4b4:	241e0600 	ldrcs	r0, [lr], #-1536	; 0x600
     4b8:	04000001 	streq	r0, [r0], #-1
     4bc:	0002ca08 	andeq	ip, r2, r8, lsl #20
     4c0:	2f1f0600 	svccs	0x001f0600
     4c4:	08000001 	stmdaeq	r0, {r0}
     4c8:	00035e08 	andeq	r5, r3, r8, lsl #28
     4cc:	03200600 	teqeq	r0, #0, 12
     4d0:	0a000001 	beq	4dc <_sys_stack_size+0xdc>
     4d4:	0002f708 	andeq	pc, r2, r8, lsl #14
     4d8:	0e210600 	cfmadda32eq	mvax0, mvax0, mvfx1, mvfx0
     4dc:	0c000001 	stceq	0, cr0, [r0], {1}
     4e0:	0002d308 	andeq	sp, r2, r8, lsl #6
     4e4:	f8220600 			; <UNDEFINED> instruction: 0xf8220600
     4e8:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     4ec:	00037e08 	andeq	r7, r3, r8, lsl #28
     4f0:	ed230600 	stc	6, cr0, [r3, #-0]
     4f4:	10000000 	andne	r0, r0, r0
     4f8:	00030d08 	andeq	r0, r3, r8, lsl #26
     4fc:	ca310600 	bgt	c41d04 <_ram_limit+0x829d04>
     500:	14000000 	strne	r0, [r0], #-0
     504:	00032b08 	andeq	r2, r3, r8, lsl #22
     508:	4c320600 	ldcmi	6, cr0, [r2], #-0
     50c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     510:	00035508 	andeq	r5, r3, r8, lsl #10
     514:	ca330600 	bgt	cc1d1c <_ram_limit+0x8a9d1c>
     518:	1c000000 	stcne	0, cr0, [r0], {-0}
     51c:	00038f08 	andeq	r8, r3, r8, lsl #30
     520:	4c340600 	ldcmi	6, cr0, [r4], #-0
     524:	20000000 	andcs	r0, r0, r0
     528:	0002ba08 	andeq	fp, r2, r8, lsl #20
     52c:	ca350600 	bgt	d41d34 <_ram_limit+0x929d34>
     530:	24000000 	strcs	r0, [r0], #-0
     534:	00039908 	andeq	r9, r3, r8, lsl #18
     538:	4c360600 	ldcmi	6, cr0, [r6], #-0
     53c:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
     540:	0002ec08 	andeq	lr, r2, r8, lsl #24
     544:	4c370600 	ldcmi	6, cr0, [r7], #-0
     548:	2c000000 	stccs	0, cr0, [r0], {-0}
     54c:	00036508 	andeq	r6, r3, r8, lsl #10
     550:	4c380600 	ldcmi	6, cr0, [r8], #-0
     554:	30000000 	andcc	r0, r0, r0
     558:	0003a308 	andeq	sl, r3, r8, lsl #6
     55c:	1e390600 	cfmsuba32ne	mvax0, mvax0, mvfx9, mvfx0
     560:	34000002 	strcc	r0, [r0], #-2
     564:	004c0900 	subeq	r0, ip, r0, lsl #18
     568:	022e0000 	eoreq	r0, lr, #0
     56c:	c30a0000 	movwgt	r0, #40960	; 0xa000
     570:	01000000 	mrseq	r0, (UNDEF: 0)
     574:	03d20300 	bicseq	r0, r2, #0, 6
     578:	41070000 	mrsmi	r0, (UNDEF: 7)
     57c:	00000041 	andeq	r0, r0, r1, asr #32
     580:	00010b03 	andeq	r0, r1, r3, lsl #22
     584:	53420700 	movtpl	r0, #9984	; 0x2700
     588:	0b000000 	bleq	590 <_sys_stack_size+0x190>
     58c:	b8110824 	ldmdalt	r1, {r2, r5, fp}
     590:	08000002 	stmdaeq	r0, {r1}
     594:	0000038a 	andeq	r0, r0, sl, lsl #7
     598:	013a1308 	teqeq	sl, r8, lsl #6
     59c:	0c000000 	stceq	0, cr0, [r0], {-0}
     5a0:	08006469 	stmdaeq	r0, {r0, r3, r5, r6, sl, sp, lr}
     5a4:	00023914 	andeq	r3, r2, r4, lsl r9
     5a8:	f1080400 			; <UNDEFINED> instruction: 0xf1080400
     5ac:	08000012 	stmdaeq	r0, {r1, r4}
     5b0:	0002d118 	andeq	sp, r2, r8, lsl r1
     5b4:	fd080800 	stc2	8, cr0, [r8, #-0]
     5b8:	0800000d 	stmdaeq	r0, {r0, r2, r3}
     5bc:	0002e619 	andeq	lr, r2, r9, lsl r6
     5c0:	20080c00 	andcs	r0, r8, r0, lsl #24
     5c4:	0800000e 	stmdaeq	r0, {r1, r2, r3}
     5c8:	0003051a 	andeq	r0, r3, sl, lsl r5
     5cc:	ae081000 	cdpge	0, 0, cr1, cr8, cr0, {0}
     5d0:	0800000c 	stmdaeq	r0, {r2, r3}
     5d4:	0003051b 	andeq	r0, r3, fp, lsl r5
     5d8:	8e081400 	cfcpyshi	mvf1, mvf8
     5dc:	08000016 	stmdaeq	r0, {r1, r2, r4}
     5e0:	0003241c 	andeq	r2, r3, ip, lsl r4
     5e4:	a3081800 	movwge	r1, #34816	; 0x8800
     5e8:	08000016 	stmdaeq	r0, {r1, r2, r4}
     5ec:	0003441d 	andeq	r4, r3, sp, lsl r4
     5f0:	c0081c00 	andgt	r1, r8, r0, lsl #24
     5f4:	08000016 	stmdaeq	r0, {r1, r2, r4}
     5f8:	0002e61e 	andeq	lr, r2, lr, lsl r6
     5fc:	0d002000 	stceq	0, cr2, [r0, #-0]
     600:	00000073 	andeq	r0, r0, r3, ror r0
     604:	000002d1 	ldrdeq	r0, [r0], -r1
     608:	0002390e 	andeq	r3, r2, lr, lsl #18
     60c:	00730e00 	rsbseq	r0, r3, r0, lsl #28
     610:	240e0000 	strcs	r0, [lr], #-0
     614:	00000001 	andeq	r0, r0, r1
     618:	02b80405 	adcseq	r0, r8, #83886080	; 0x5000000
     61c:	730d0000 	movwvc	r0, #53248	; 0xd000
     620:	e6000000 	str	r0, [r0], -r0
     624:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
     628:	00000239 	andeq	r0, r0, r9, lsr r2
     62c:	d7040500 	strle	r0, [r4, -r0, lsl #10]
     630:	0d000002 	stceq	0, cr0, [r0, #-8]
     634:	00000119 	andeq	r0, r0, r9, lsl r1
     638:	00000305 	andeq	r0, r0, r5, lsl #6
     63c:	0002390e 	andeq	r3, r2, lr, lsl #18
     640:	00d50e00 	sbcseq	r0, r5, r0, lsl #28
     644:	810e0000 	mrshi	r0, (UNDEF: 14)
     648:	00000000 	andeq	r0, r0, r0
     64c:	02ec0405 	rsceq	r0, ip, #83886080	; 0x5000000
     650:	ed0d0000 	stc	0, cr0, [sp, #-0]
     654:	24000000 	strcs	r0, [r0], #-0
     658:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
     65c:	00000239 	andeq	r0, r0, r9, lsr r2
     660:	0000ed0e 	andeq	lr, r0, lr, lsl #26
     664:	00730e00 	rsbseq	r0, r3, r0, lsl #28
     668:	05000000 	streq	r0, [r0, #-0]
     66c:	00030b04 	andeq	r0, r3, r4, lsl #22
     670:	00730d00 	rsbseq	r0, r3, r0, lsl #26
     674:	033e0000 	teqeq	lr, #0
     678:	390e0000 	stmdbcc	lr, {}	; <UNPREDICTABLE>
     67c:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
     680:	0000033e 	andeq	r0, r0, lr, lsr r3
     684:	45040500 	strmi	r0, [r4, #-1280]	; 0x500
     688:	05000001 	streq	r0, [r0, #-1]
     68c:	00032a04 	andeq	r2, r3, r4, lsl #20
     690:	02db0300 	sbcseq	r0, fp, #0, 6
     694:	1f080000 	svcne	0x00080000
     698:	00000244 	andeq	r0, r0, r4, asr #4
     69c:	2608080b 	strcs	r0, [r8], -fp, lsl #16
     6a0:	00000376 	andeq	r0, r0, r6, ror r3
     6a4:	7665640c 	strbtvc	r6, [r5], -ip, lsl #8
     6a8:	76280800 	strtvc	r0, [r8], -r0, lsl #16
     6ac:	00000003 	andeq	r0, r0, r3
     6b0:	0003c208 	andeq	ip, r3, r8, lsl #4
     6b4:	73290800 	teqvc	r9, #0, 16
     6b8:	04000000 	streq	r0, [r0], #-0
     6bc:	4a040500 	bmi	101ac4 <_stacks_size+0x1013a4>
     6c0:	03000003 	movweq	r0, #3
     6c4:	00000322 	andeq	r0, r0, r2, lsr #6
     6c8:	03552a08 	cmpeq	r5, #8, 20	; 0x8000
     6cc:	ad0f0000 	stcge	0, cr0, [pc, #-0]	; 6d4 <_sys_stack_size+0x2d4>
     6d0:	01000003 	tsteq	r0, r3
     6d4:	00022e4b 	andeq	r2, r2, fp, asr #28
     6d8:	4003e400 	andmi	lr, r3, r0, lsl #8
     6dc:	0001ec00 	andeq	lr, r1, r0, lsl #24
     6e0:	2c9c0100 	ldfcss	f0, [ip], {0}
     6e4:	10000004 	andne	r0, r0, r4
     6e8:	0000038a 	andeq	r0, r0, sl, lsl #7
     6ec:	013a4b01 	teqeq	sl, r1, lsl #22
     6f0:	91020000 	mrsls	r0, (UNDEF: 2)
     6f4:	6469116c 	strbtvs	r1, [r9], #-364	; 0x16c
     6f8:	394c0100 	stmdbcc	ip, {r8}^
     6fc:	02000002 	andeq	r0, r0, #2
     700:	f1106891 			; <UNDEFINED> instruction: 0xf1106891
     704:	01000012 	tsteq	r0, r2, lsl r0
     708:	0002d14d 	andeq	sp, r2, sp, asr #2
     70c:	64910200 	ldrvs	r0, [r1], #512	; 0x200
     710:	000dfd10 	andeq	pc, sp, r0, lsl sp	; <UNPREDICTABLE>
     714:	e64e0100 	strb	r0, [lr], -r0, lsl #2
     718:	02000002 	andeq	r0, r0, #2
     71c:	20106091 	mulscs	r0, r1, r0
     720:	0100000e 	tsteq	r0, lr
     724:	0003054f 	andeq	r0, r3, pc, asr #10
     728:	00910200 	addseq	r0, r1, r0, lsl #4
     72c:	000cae10 	andeq	sl, ip, r0, lsl lr
     730:	05500100 	ldrbeq	r0, [r0, #-256]	; 0x100
     734:	02000003 	andeq	r0, r0, #3
     738:	8e100491 	cfcmpshi	r0, mvf0, mvf1
     73c:	01000016 	tsteq	r0, r6, lsl r0
     740:	00032451 	andeq	r2, r3, r1, asr r4
     744:	08910200 	ldmeq	r1, {r9}
     748:	0016a310 	andseq	sl, r6, r0, lsl r3
     74c:	44520100 	ldrbmi	r0, [r2], #-256	; 0x100
     750:	02000003 	andeq	r0, r0, #3
     754:	c0100c91 	mulsgt	r0, r1, ip
     758:	01000016 	tsteq	r0, r6, lsl r0
     75c:	0002e653 	andeq	lr, r2, r3, asr r6
     760:	10910200 	addsne	r0, r1, r0, lsl #4
     764:	00152d12 	andseq	r2, r5, r2, lsl sp
     768:	2e550100 	rdfcss	f0, f5, f0
     76c:	02000002 	andeq	r0, r0, #2
     770:	13007491 	movwne	r7, #1169	; 0x491
     774:	00000304 	andeq	r0, r0, r4, lsl #6
     778:	03766f01 	cmneq	r6, #1, 30
     77c:	05d00000 	ldrbeq	r0, [r0]
     780:	00c80040 	sbceq	r0, r8, r0, asr #32
     784:	9c010000 	stcls	0, cr0, [r1], {-0}
     788:	0000046e 	andeq	r0, r0, lr, ror #8
     78c:	00038610 	andeq	r8, r3, r0, lsl r6
     790:	3a6f0100 	bcc	1bc0b98 <_ram_limit+0x17a8b98>
     794:	02000001 	andeq	r0, r0, #1
     798:	69146c91 	ldmdbvs	r4, {r0, r4, r7, sl, fp, sp, lr}
     79c:	39710100 	ldmdbcc	r1!, {r8}^
     7a0:	02000002 	andeq	r0, r0, #2
     7a4:	6c147491 	cfldrsvs	mvf7, [r4], {145}	; 0x91
     7a8:	01006e65 	tsteq	r0, r5, ror #28
     7ac:	00023972 	andeq	r3, r2, r2, ror r9
     7b0:	70910200 	addsvc	r0, r1, r0, lsl #4
     7b4:	03da0f00 	bicseq	r0, sl, #0, 30
     7b8:	82010000 	andhi	r0, r1, #0
     7bc:	00000376 	andeq	r0, r0, r6, ror r3
     7c0:	00400698 	umaaleq	r0, r0, r8, r6
     7c4:	00000030 	andeq	r0, r0, r0, lsr r0
     7c8:	04959c01 	ldreq	r9, [r5], #3073	; 0xc01
     7cc:	66110000 	ldrvs	r0, [r1], -r0
     7d0:	82010064 	andhi	r0, r1, #100	; 0x64
     7d4:	00000239 	andeq	r0, r0, r9, lsr r2
     7d8:	00749102 	rsbseq	r9, r4, r2, lsl #2
     7dc:	0003be0f 	andeq	fp, r3, pc, lsl #28
     7e0:	738d0100 	orrvc	r0, sp, #0, 2
     7e4:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
     7e8:	40004006 	andmi	r4, r0, r6
     7ec:	01000000 	mrseq	r0, (UNDEF: 0)
     7f0:	0004bc9c 	muleq	r4, ip, ip
     7f4:	64661100 	strbtvs	r1, [r6], #-256	; 0x100
     7f8:	398d0100 	stmibcc	sp, {r8}
     7fc:	02000002 	andeq	r0, r0, #2
     800:	13007491 	movwne	r7, #1169	; 0x491
     804:	00000377 	andeq	r0, r0, r7, ror r3
     808:	022e9b01 	eoreq	r9, lr, #1024	; 0x400
     80c:	07080000 	streq	r0, [r8, -r0]
     810:	00ac0040 	adceq	r0, ip, r0, asr #32
     814:	9c010000 	stcls	0, cr0, [r1], {-0}
     818:	000004fe 	strdeq	r0, [r0], -lr
     81c:	76656411 			; <UNDEFINED> instruction: 0x76656411
     820:	769b0100 	ldrvc	r0, [fp], r0, lsl #2
     824:	02000003 	andeq	r0, r0, #3
     828:	c2106c91 	andsgt	r6, r0, #37120	; 0x9100
     82c:	01000003 	tsteq	r0, r3
     830:	0000739b 	muleq	r0, fp, r3
     834:	68910200 	ldmvs	r1, {r9}
     838:	01006914 	tsteq	r0, r4, lsl r9
     83c:	00022e9d 	muleq	r2, sp, lr
     840:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     844:	029c1500 	addseq	r1, ip, #0, 10
     848:	b6010000 	strlt	r0, [r1], -r0
     84c:	004007b4 	strheq	r0, [r0], #-116	; 0xffffff8c
     850:	0000005c 	andeq	r0, r0, ip, asr r0
     854:	05219c01 	streq	r9, [r1, #-3073]!	; 0xc01
     858:	66110000 	ldrvs	r0, [r1], -r0
     85c:	b6010064 	strlt	r0, [r1], -r4, rrx
     860:	00000239 	andeq	r0, r0, r9, lsr r2
     864:	00749102 	rsbseq	r9, r4, r2, lsl #2
     868:	00031616 	andeq	r1, r3, r6, lsl r6
     86c:	10ca0100 	sbcne	r0, sl, r0, lsl #2
     870:	a8004008 	stmdage	r0, {r3, lr}
     874:	01000000 	mrseq	r0, (UNDEF: 0)
     878:	00057c9c 	muleq	r5, ip, ip
     87c:	64661100 	strbtvs	r1, [r6], #-256	; 0x100
     880:	39ca0100 	stmibcc	sl, {r8}^
     884:	02000002 	andeq	r0, r0, #2
     888:	8a106c91 	bhi	41bad4 <_ram_limit+0x3ad4>
     88c:	01000003 	tsteq	r0, r3
     890:	00013aca 	andeq	r3, r1, sl, asr #21
     894:	68910200 	ldmvs	r1, {r9}
     898:	0003c210 	andeq	ip, r3, r0, lsl r2
     89c:	73ca0100 	bicvc	r0, sl, #0, 2
     8a0:	02000000 	andeq	r0, r0, #0
     8a4:	04106491 	ldreq	r6, [r0], #-1169	; 0x491
     8a8:	01000004 	tsteq	r0, r4
     8ac:	000124ca 	andeq	r2, r1, sl, asr #9
     8b0:	60910200 	addsvs	r0, r1, r0, lsl #4
     8b4:	0002b512 	andeq	fp, r2, r2, lsl r5
     8b8:	73cc0100 	bicvc	r0, ip, #0, 2
     8bc:	02000000 	andeq	r0, r0, #0
     8c0:	09007491 	stmdbeq	r0, {r0, r4, r7, sl, ip, sp, lr}
     8c4:	0000034a 	andeq	r0, r0, sl, asr #6
     8c8:	0000058c 	andeq	r0, r0, ip, lsl #11
     8cc:	0000c30a 	andeq	ip, r0, sl, lsl #6
     8d0:	12000700 	andne	r0, r0, #0, 14
     8d4:	00000348 	andeq	r0, r0, r8, asr #6
     8d8:	057c1301 	ldrbeq	r1, [ip, #-769]!	; 0x301
     8dc:	03050000 	movweq	r0, #20480	; 0x5000
     8e0:	00401d20 	subeq	r1, r0, r0, lsr #26
     8e4:	0003e212 	andeq	lr, r3, r2, lsl r2
     8e8:	392a0100 	stmdbcc	sl!, {r8}
     8ec:	05000002 	streq	r0, [r0, #-2]
     8f0:	401e4003 	andsmi	r4, lr, r3
     8f4:	037c0900 	cmneq	ip, #0, 18
     8f8:	05be0000 	ldreq	r0, [lr, #0]!
     8fc:	c30a0000 	movwgt	r0, #40960	; 0xa000
     900:	07000000 	streq	r0, [r0, -r0]
     904:	033c1200 	teqeq	ip, #0, 4
     908:	34010000 	strcc	r0, [r1], #-0
     90c:	000005ae 	andeq	r0, r0, lr, lsr #11
     910:	1e440305 	cdpne	3, 4, cr0, cr4, cr5, {0}
     914:	52000040 	andpl	r0, r0, #64	; 0x40
     918:	04000002 	streq	r0, [r0], #-2
     91c:	0002cf00 	andeq	ip, r2, r0, lsl #30
     920:	85010400 	strhi	r0, [r1, #-1024]	; 0x400
     924:	01000000 	mrseq	r0, (UNDEF: 0)
     928:	0000054b 	andeq	r0, r0, fp, asr #10
     92c:	00000243 	andeq	r0, r0, r3, asr #4
     930:	004008b8 	strheq	r0, [r0], #-136	; 0xffffff78
     934:	00000194 	muleq	r0, r4, r1
     938:	0000029d 	muleq	r0, sp, r2
     93c:	4b060102 	blmi	180d4c <_stacks_size+0x18062c>
     940:	02000000 	andeq	r0, r0, #0
     944:	00490801 	subeq	r0, r9, r1, lsl #16
     948:	02020000 	andeq	r0, r2, #0
     94c:	00019b05 	andeq	r9, r1, r5, lsl #22
     950:	07020200 	streq	r0, [r2, -r0, lsl #4]
     954:	00000072 	andeq	r0, r0, r2, ror r0
     958:	75050402 	strvc	r0, [r5, #-1026]	; 0x402
     95c:	03000001 	movweq	r0, #1
     960:	00000109 	andeq	r0, r0, r9, lsl #2
     964:	00534102 	subseq	r4, r3, r2, lsl #2
     968:	04020000 	streq	r0, [r2], #-0
     96c:	00003107 	andeq	r3, r0, r7, lsl #2
     970:	05080200 	streq	r0, [r8, #-512]	; 0x200
     974:	00000170 	andeq	r0, r0, r0, ror r1
     978:	2c070802 	stccs	8, cr0, [r7], {2}
     97c:	04000000 	streq	r0, [r0], #-0
     980:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     984:	04020074 	streq	r0, [r2], #-116	; 0x74
     988:	00003607 	andeq	r3, r0, r7, lsl #12
     98c:	010b0300 	mrseq	r0, (UNDEF: 59)
     990:	42030000 	andmi	r0, r3, #0
     994:	00000048 	andeq	r0, r0, r8, asr #32
     998:	11040105 	tstne	r4, r5, lsl #2
     99c:	000000c0 	andeq	r0, r0, r0, asr #1
     9a0:	00055d06 	andeq	r5, r5, r6, lsl #26
     9a4:	4d060000 	stcmi	0, cr0, [r6, #-0]
     9a8:	01000004 	tsteq	r0, r4
     9ac:	00051c06 	andeq	r1, r5, r6, lsl #24
     9b0:	f0060200 			; <UNDEFINED> instruction: 0xf0060200
     9b4:	03000004 	movweq	r0, #4
     9b8:	00042a06 	andeq	r2, r4, r6, lsl #20
     9bc:	9a060400 	bls	1819c4 <_stacks_size+0x1812a4>
     9c0:	05000004 	streq	r0, [r0, #-4]
     9c4:	00051206 	andeq	r1, r5, r6, lsl #4
     9c8:	69060600 	stmdbvs	r6, {r9, sl}
     9cc:	07000005 	streq	r0, [r0, -r5]
     9d0:	00044306 	andeq	r4, r4, r6, lsl #6
     9d4:	03000800 	movweq	r0, #2048	; 0x800
     9d8:	0000043b 	andeq	r0, r0, fp, lsr r4
     9dc:	00811b04 	addeq	r1, r1, r4, lsl #22
     9e0:	1a030000 	bne	c09e8 <_stacks_size+0xc02c8>
     9e4:	04000004 	streq	r0, [r0], #-4
     9e8:	0000d622 	andeq	sp, r0, r2, lsr #12
     9ec:	dc040700 	stcle	7, cr0, [r4], {-0}
     9f0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     9f4:	67070402 	strvs	r0, [r7, -r2, lsl #8]
     9f8:	02000001 	andeq	r0, r0, #1
     9fc:	00520801 	subseq	r0, r2, r1, lsl #16
     a00:	13090000 	movwne	r0, #36864	; 0x9000
     a04:	01000002 	tsteq	r0, r2
     a08:	4008b815 	andmi	fp, r8, r5, lsl r8
     a0c:	00002400 	andeq	r2, r0, r0, lsl #8
     a10:	0a9c0100 	beq	fe700e18 <_STACK_FILLER+0x1fc24f29>
     a14:	0000050d 	andeq	r0, r0, sp, lsl #10
     a18:	00681901 	rsbeq	r1, r8, r1, lsl #18
     a1c:	08dc0000 	ldmeq	ip, {}^	; <UNPREDICTABLE>
     a20:	00200040 	eoreq	r0, r0, r0, asr #32
     a24:	9c010000 	stcls	0, cr0, [r1], {-0}
     a28:	0004750a 	andeq	r7, r4, sl, lsl #10
     a2c:	76290100 	strtvc	r0, [r9], -r0, lsl #2
     a30:	fc000000 	stc2	0, cr0, [r0], {-0}
     a34:	1c004008 	stcne	0, cr4, [r0], {8}
     a38:	01000000 	mrseq	r0, (UNDEF: 0)
     a3c:	04fb0a9c 	ldrbteq	r0, [fp], #2716	; 0xa9c
     a40:	38010000 	stmdacc	r1, {}	; <UNPREDICTABLE>
     a44:	00000076 	andeq	r0, r0, r6, ror r0
     a48:	00400918 	subeq	r0, r0, r8, lsl r9
     a4c:	0000001c 	andeq	r0, r0, ip, lsl r0
     a50:	cc0a9c01 	stcgt	12, cr9, [sl], {1}
     a54:	01000004 	tsteq	r0, r4
     a58:	00007647 	andeq	r7, r0, r7, asr #12
     a5c:	40093400 	andmi	r3, r9, r0, lsl #8
     a60:	00001c00 	andeq	r1, r0, r0, lsl #24
     a64:	0b9c0100 	bleq	fe700e6c <_STACK_FILLER+0x1fc24f7d>
     a68:	00000538 	andeq	r0, r0, r8, lsr r5
     a6c:	09505801 	ldmdbeq	r0, {r0, fp, ip, lr}^
     a70:	001c0040 	andseq	r0, ip, r0, asr #32
     a74:	9c010000 	stcls	0, cr0, [r1], {-0}
     a78:	00000174 	andeq	r0, r0, r4, ror r1
     a7c:	0005730c 	andeq	r7, r5, ip, lsl #6
     a80:	76580100 	ldrbvc	r0, [r8], -r0, lsl #2
     a84:	02000000 	andeq	r0, r0, #0
     a88:	0b007491 	bleq	1dcd4 <_stacks_size+0x1d5b4>
     a8c:	00000488 	andeq	r0, r0, r8, lsl #9
     a90:	096c6601 	stmdbeq	ip!, {r0, r9, sl, sp, lr}^
     a94:	001c0040 	andseq	r0, ip, r0, asr #32
     a98:	9c010000 	stcls	0, cr0, [r1], {-0}
     a9c:	00000198 	muleq	r0, r8, r1
     aa0:	0005570c 	andeq	r5, r5, ip, lsl #14
     aa4:	76660100 	strbtvc	r0, [r6], -r0, lsl #2
     aa8:	02000000 	andeq	r0, r0, #0
     aac:	0b007491 	bleq	1dcf8 <_stacks_size+0x1d5d8>
     ab0:	000004ba 			; <UNDEFINED> instruction: 0x000004ba
     ab4:	09887501 	stmibeq	r8, {r0, r8, sl, ip, sp, lr}
     ab8:	001c0040 	andseq	r0, ip, r0, asr #32
     abc:	9c010000 	stcls	0, cr0, [r1], {-0}
     ac0:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
     ac4:	0004350c 	andeq	r3, r4, ip, lsl #10
     ac8:	76750100 	ldrbtvc	r0, [r5], -r0, lsl #2
     acc:	02000000 	andeq	r0, r0, #0
     ad0:	0b007491 	bleq	1dd1c <_stacks_size+0x1d5fc>
     ad4:	00000526 	andeq	r0, r0, r6, lsr #10
     ad8:	09a48001 	stmibeq	r4!, {r0, pc}
     adc:	00440040 	subeq	r0, r4, r0, asr #32
     ae0:	9c010000 	stcls	0, cr0, [r1], {-0}
     ae4:	000001ee 	andeq	r0, r0, lr, ror #3
     ae8:	0004a40c 	andeq	sl, r4, ip, lsl #8
     aec:	c0800100 	addgt	r0, r0, r0, lsl #2
     af0:	02000000 	andeq	r0, r0, #0
     af4:	6d0c7791 	stcvs	7, cr7, [ip, #-580]	; 0xfffffdbc
     af8:	01000004 	tsteq	r0, r4
     afc:	0000cb80 	andeq	ip, r0, r0, lsl #23
     b00:	70910200 	addsvc	r0, r1, r0, lsl #4
     b04:	04de0d00 	ldrbeq	r0, [lr], #3328	; 0xd00
     b08:	8b010000 	blhi	40b10 <_stacks_size+0x403f0>
     b0c:	000000cb 	andeq	r0, r0, fp, asr #1
     b10:	004009e8 	subeq	r0, r0, r8, ror #19
     b14:	00000050 	andeq	r0, r0, r0, asr r0
     b18:	02249c01 	eoreq	r9, r4, #256	; 0x100
     b1c:	a40c0000 	strge	r0, [ip], #-0
     b20:	01000004 	tsteq	r0, r4
     b24:	0000c08b 	andeq	ip, r0, fp, lsl #1
     b28:	6f910200 	svcvs	0x00910200
     b2c:	000fcb0e 	andeq	ip, pc, lr, lsl #22
     b30:	cb8c0100 	blgt	fe300f38 <_STACK_FILLER+0x1f825049>
     b34:	02000000 	andeq	r0, r0, #0
     b38:	0f007491 	svceq	0x00007491
     b3c:	00000459 	andeq	r0, r0, r9, asr r4
     b40:	0a389d01 	beq	e27f4c <_ram_limit+0xa0ff4c>
     b44:	00140040 	andseq	r0, r4, r0, asr #32
     b48:	9c010000 	stcls	0, cr0, [r1], {-0}
     b4c:	0000cb10 	andeq	ip, r0, r0, lsl fp
     b50:	00024500 	andeq	r4, r2, r0, lsl #10
     b54:	00dd1100 	sbcseq	r1, sp, r0, lsl #2
     b58:	00070000 	andeq	r0, r7, r0
     b5c:	0004aa12 	andeq	sl, r4, r2, lsl sl
     b60:	500e0100 	andpl	r0, lr, r0, lsl #2
     b64:	13000002 	movwne	r0, #2
     b68:	00000235 	andeq	r0, r0, r5, lsr r2
     b6c:	0002a400 	andeq	sl, r2, r0, lsl #8
     b70:	ee000400 	cfcpys	mvf0, mvf0
     b74:	04000003 	streq	r0, [r0], #-3
     b78:	00008501 	andeq	r8, r0, r1, lsl #10
     b7c:	062e0100 	strteq	r0, [lr], -r0, lsl #2
     b80:	02430000 	subeq	r0, r3, #0
     b84:	0a4c0000 	beq	1300b8c <_ram_limit+0xee8b8c>
     b88:	01300040 	teqeq	r0, r0, asr #32
     b8c:	036d0000 	cmneq	sp, #0
     b90:	01020000 	mrseq	r0, (UNDEF: 2)
     b94:	00004b06 	andeq	r4, r0, r6, lsl #22
     b98:	08010200 	stmdaeq	r1, {r9}
     b9c:	00000049 	andeq	r0, r0, r9, asr #32
     ba0:	9b050202 	blls	1413b0 <_stacks_size+0x140c90>
     ba4:	02000001 	andeq	r0, r0, #1
     ba8:	00720702 	rsbseq	r0, r2, r2, lsl #14
     bac:	04020000 	streq	r0, [r2], #-0
     bb0:	00017505 	andeq	r7, r1, r5, lsl #10
     bb4:	07040200 	streq	r0, [r4, -r0, lsl #4]
     bb8:	00000031 	andeq	r0, r0, r1, lsr r0
     bbc:	70050802 	andvc	r0, r5, r2, lsl #16
     bc0:	02000001 	andeq	r0, r0, #1
     bc4:	002c0708 	eoreq	r0, ip, r8, lsl #14
     bc8:	04030000 	streq	r0, [r3], #-0
     bcc:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
     bd0:	07040200 	streq	r0, [r4, -r0, lsl #4]
     bd4:	00000036 	andeq	r0, r0, r6, lsr r0
     bd8:	00710404 	rsbseq	r0, r1, r4, lsl #8
     bdc:	02050000 	andeq	r0, r5, #0
     be0:	01670704 	cmneq	r7, r4, lsl #14
     be4:	01020000 	mrseq	r0, (UNDEF: 2)
     be8:	00005208 	andeq	r5, r0, r8, lsl #4
     bec:	02010600 	andeq	r0, r1, #0, 12
     bf0:	0000d111 	andeq	sp, r0, r1, lsl r1
     bf4:	070e0700 	streq	r0, [lr, -r0, lsl #14]
     bf8:	07000000 	streq	r0, [r0, -r0]
     bfc:	0000063c 	andeq	r0, r0, ip, lsr r6
     c00:	064a0701 	strbeq	r0, [sl], -r1, lsl #14
     c04:	07020000 	streq	r0, [r2, -r0]
     c08:	0000076b 	andeq	r0, r0, fp, ror #14
     c0c:	05de0703 	ldrbeq	r0, [lr, #1795]	; 0x703
     c10:	07040000 	streq	r0, [r4, -r0]
     c14:	000005f9 	strdeq	r0, [r0], -r9
     c18:	06050705 	streq	r0, [r5], -r5, lsl #14
     c1c:	07060000 	streq	r0, [r6, -r0]
     c20:	0000068e 	andeq	r0, r0, lr, lsl #13
     c24:	057b0707 	ldrbeq	r0, [fp, #-1799]!	; 0x707
     c28:	07080000 	streq	r0, [r8, -r0]
     c2c:	0000071a 	andeq	r0, r0, sl, lsl r7
     c30:	073a0709 	ldreq	r0, [sl, -r9, lsl #14]!
     c34:	070a0000 	streq	r0, [sl, -r0]
     c38:	00000612 	andeq	r0, r0, r2, lsl r6
     c3c:	6908000b 	stmdbvs	r8, {r0, r1, r3}
     c40:	02000006 	andeq	r0, r0, #6
     c44:	0000801e 	andeq	r8, r0, lr, lsl r0
     c48:	02010600 	andeq	r0, r1, #0, 12
     c4c:	0000f726 	andeq	pc, r0, r6, lsr #14
     c50:	07460700 	strbeq	r0, [r6, -r0, lsl #14]
     c54:	07000000 	streq	r0, [r0, -r0]
     c58:	000006c2 	andeq	r0, r0, r2, asr #13
     c5c:	06580701 	ldrbeq	r0, [r8], -r1, lsl #14
     c60:	00020000 	andeq	r0, r2, r0
     c64:	0005ea08 	andeq	lr, r5, r8, lsl #20
     c68:	dc2a0200 	sfmle	f0, 4, [sl], #-0
     c6c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     c70:	00000587 	andeq	r0, r0, r7, lsl #11
     c74:	006b3102 	rsbeq	r3, fp, r2, lsl #2
     c78:	00090000 	andeq	r0, r9, r0
     c7c:	26080d01 	strcs	r0, [r8], -r1, lsl #26
     c80:	01000007 	tsteq	r0, r7
     c84:	00010d10 	andeq	r0, r1, r0, lsl sp
     c88:	05c80a00 	strbeq	r0, [r8, #2560]	; 0xa00
     c8c:	21010000 	mrscs	r0, (UNDEF: 1)
     c90:	00400a4c 	subeq	r0, r0, ip, asr #20
     c94:	00000014 	andeq	r0, r0, r4, lsl r0
     c98:	d40a9c01 	strle	r9, [sl], #-3073	; 0xc01
     c9c:	01000006 	tsteq	r0, r6
     ca0:	400a602c 	andmi	r6, sl, ip, lsr #32
     ca4:	00001400 	andeq	r1, r0, r0, lsl #8
     ca8:	0a9c0100 	beq	fe7010b0 <_STACK_FILLER+0x1fc251c1>
     cac:	000006b1 			; <UNDEFINED> instruction: 0x000006b1
     cb0:	0a743701 	beq	1d0e8bc <_ram_limit+0x18f68bc>
     cb4:	00140040 	andseq	r0, r4, r0, asr #32
     cb8:	9c010000 	stcls	0, cr0, [r1], {-0}
     cbc:	00061e0b 	andeq	r1, r6, fp, lsl #28
     cc0:	88430100 	stmdahi	r3, {r8}^
     cc4:	2400400a 	strcs	r4, [r0], #-10
     cc8:	01000000 	mrseq	r0, (UNDEF: 0)
     ccc:	0001819c 	muleq	r1, ip, r1
     cd0:	72730c00 	rsbsvc	r0, r3, #0, 24
     cd4:	43010063 	movwmi	r0, #4195	; 0x1063
     cd8:	000000d1 	ldrdeq	r0, [r0], -r1
     cdc:	0d779102 	ldfeqp	f1, [r7, #-8]!
     ce0:	0000046d 	andeq	r0, r0, sp, ror #8
     ce4:	01024301 	tsteq	r2, r1, lsl #6
     ce8:	91020000 	mrsls	r0, (UNDEF: 2)
     cec:	5a0b0070 	bpl	2c0eb4 <_stacks_size+0x2c0794>
     cf0:	01000007 	tsteq	r0, r7
     cf4:	400aac4f 	andmi	sl, sl, pc, asr #24
     cf8:	00002800 	andeq	r2, r0, r0, lsl #16
     cfc:	b39c0100 	orrslt	r0, ip, #0, 2
     d00:	0c000001 	stceq	0, cr0, [r0], {1}
     d04:	00637273 	rsbeq	r7, r3, r3, ror r2
     d08:	00d14f01 	sbcseq	r4, r1, r1, lsl #30
     d0c:	91020000 	mrsls	r0, (UNDEF: 2)
     d10:	07620d77 			; <UNDEFINED> instruction: 0x07620d77
     d14:	4f010000 	svcmi	0x00010000
     d18:	000000f7 	strdeq	r0, [r0], -r7
     d1c:	00769102 	rsbseq	r9, r6, r2, lsl #2
     d20:	0006f90b 	andeq	pc, r6, fp, lsl #18
     d24:	d45a0100 	ldrble	r0, [sl], #-256	; 0x100
     d28:	2000400a 	andcs	r4, r0, sl
     d2c:	01000000 	mrseq	r0, (UNDEF: 0)
     d30:	0001d79c 	muleq	r1, ip, r7
     d34:	72730c00 	rsbsvc	r0, r3, #0, 24
     d38:	5a010063 	bpl	40ecc <_stacks_size+0x407ac>
     d3c:	000000d1 	ldrdeq	r0, [r0], -r1
     d40:	00779102 	rsbseq	r9, r7, r2, lsl #2
     d44:	00069b0b 	andeq	r9, r6, fp, lsl #22
     d48:	f4650100 	vld4.8	{d16,d18,d20,d22}, [r5], r0
     d4c:	2000400a 	andcs	r4, r0, sl
     d50:	01000000 	mrseq	r0, (UNDEF: 0)
     d54:	0001fb9c 	muleq	r1, ip, fp
     d58:	72730c00 	rsbsvc	r0, r3, #0, 24
     d5c:	65010063 	strvs	r0, [r1, #-99]	; 0x63
     d60:	000000d1 	ldrdeq	r0, [r0], -r1
     d64:	00779102 	rsbseq	r9, r7, r2, lsl #2
     d68:	0006e50b 	andeq	lr, r6, fp, lsl #10
     d6c:	14700100 	ldrbtne	r0, [r0], #-256	; 0x100
     d70:	2000400b 	andcs	r4, r0, fp
     d74:	01000000 	mrseq	r0, (UNDEF: 0)
     d78:	00021f9c 	muleq	r2, ip, pc	; <UNPREDICTABLE>
     d7c:	72730c00 	rsbsvc	r0, r3, #0, 24
     d80:	70010063 	andvc	r0, r1, r3, rrx
     d84:	000000d1 	ldrdeq	r0, [r0], -r1
     d88:	00779102 	rsbseq	r9, r7, r2, lsl #2
     d8c:	0005950b 	andeq	r9, r5, fp, lsl #10
     d90:	347b0100 	ldrbtcc	r0, [fp], #-256	; 0x100
     d94:	2000400b 	andcs	r4, r0, fp
     d98:	01000000 	mrseq	r0, (UNDEF: 0)
     d9c:	0002439c 	muleq	r2, ip, r3
     da0:	72730c00 	rsbsvc	r0, r3, #0, 24
     da4:	7b010063 	blvc	40f38 <_stacks_size+0x40818>
     da8:	000000d1 	ldrdeq	r0, [r0], -r1
     dac:	00779102 	rsbseq	r9, r7, r2, lsl #2
     db0:	0005ab0a 	andeq	sl, r5, sl, lsl #22
     db4:	54880100 	strpl	r0, [r8], #256	; 0x100
     db8:	1400400b 	strne	r4, [r0], #-11
     dbc:	01000000 	mrseq	r0, (UNDEF: 0)
     dc0:	06730a9c 			; <UNDEFINED> instruction: 0x06730a9c
     dc4:	92010000 	andls	r0, r1, #0
     dc8:	00400b68 	subeq	r0, r0, r8, ror #22
     dcc:	00000014 	andeq	r0, r0, r4, lsl r0
     dd0:	310e9c01 	tstcc	lr, r1, lsl #24
     dd4:	01000007 	tsteq	r0, r7
     dd8:	00027612 	andeq	r7, r2, r2, lsl r6
     ddc:	fc030500 	stc2	5, cr0, [r3], {-0}
     de0:	0f00401c 	svceq	0x0000401c
     de4:	0000027b 	andeq	r0, r0, fp, ror r2
     de8:	02810404 	addeq	r0, r1, #4, 8	; 0x4000000
     dec:	11100000 	tstne	r0, r0
     df0:	11000001 	tstne	r0, r1
     df4:	00000102 	andeq	r0, r0, r2, lsl #2
     df8:	00000296 	muleq	r0, r6, r2
     dfc:	00007212 	andeq	r7, r0, r2, lsl r2
     e00:	0e000a00 	vmlaeq.f32	s0, s0, s0
     e04:	000005d1 	ldrdeq	r0, [r0], -r1
     e08:	02861701 	addeq	r1, r6, #262144	; 0x40000
     e0c:	03050000 	movweq	r0, #20480	; 0x5000
     e10:	004026c4 	subeq	r2, r0, r4, asr #13
     e14:	00069100 	andeq	r9, r6, r0, lsl #2
     e18:	d3000400 	movwle	r0, #1024	; 0x400
     e1c:	04000004 	streq	r0, [r0], #-4
     e20:	00008501 	andeq	r8, r0, r1, lsl #10
     e24:	0bce0100 	bleq	ff38122c <_STACK_FILLER+0x208a533d>
     e28:	02430000 	subeq	r0, r3, #0
     e2c:	0b7c0000 	bleq	1f00e34 <_ram_limit+0x1ae8e34>
     e30:	01880040 	orreq	r0, r8, r0, asr #32
     e34:	03e40000 	mvneq	r0, #0
     e38:	01020000 	mrseq	r0, (UNDEF: 2)
     e3c:	00004b06 	andeq	r4, r0, r6, lsl #22
     e40:	0ac70300 	beq	ff1c1a48 <_STACK_FILLER+0x206e5b59>
     e44:	1d020000 	stcne	0, cr0, [r2, #-0]
     e48:	00000037 	andeq	r0, r0, r7, lsr r0
     e4c:	49080102 	stmdbmi	r8, {r1, r8}
     e50:	02000000 	andeq	r0, r0, #0
     e54:	019b0502 	orrseq	r0, fp, r2, lsl #10
     e58:	02020000 	andeq	r0, r2, #0
     e5c:	00007207 	andeq	r7, r0, r7, lsl #4
     e60:	03d00300 	bicseq	r0, r0, #0, 6
     e64:	3f020000 	svccc	0x00020000
     e68:	00000057 	andeq	r0, r0, r7, asr r0
     e6c:	75050402 	strvc	r0, [r5, #-1026]	; 0x402
     e70:	03000001 	movweq	r0, #1
     e74:	00000109 	andeq	r0, r0, r9, lsl #2
     e78:	00694102 	rsbeq	r4, r9, r2, lsl #2
     e7c:	04020000 	streq	r0, [r2], #-0
     e80:	00003107 	andeq	r3, r0, r7, lsl #2
     e84:	05080200 	streq	r0, [r8, #-512]	; 0x200
     e88:	00000170 	andeq	r0, r0, r0, ror r1
     e8c:	2c070802 	stccs	8, cr0, [r7], {2}
     e90:	04000000 	streq	r0, [r0], #-0
     e94:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     e98:	04020074 	streq	r0, [r2], #-116	; 0x74
     e9c:	00003607 	andeq	r3, r0, r7, lsl #12
     ea0:	04130300 	ldreq	r0, [r3], #-768	; 0x300
     ea4:	d4030000 	strle	r0, [r3], #-0
     ea8:	00000085 	andeq	r0, r0, r5, lsl #1
     eac:	00041103 	andeq	r1, r4, r3, lsl #2
     eb0:	7e370400 	cfabssvc	mvf0, mvf7
     eb4:	02000000 	andeq	r0, r0, #0
     eb8:	01670704 	cmneq	r7, r4, lsl #14
     ebc:	04050000 	streq	r0, [r5], #-0
     ec0:	000000af 	andeq	r0, r0, pc, lsr #1
     ec4:	52080102 	andpl	r0, r8, #-2147483648	; 0x80000000
     ec8:	03000000 	movweq	r0, #0
     ecc:	00000412 	andeq	r0, r0, r2, lsl r4
     ed0:	0097cb05 	addseq	ip, r7, r5, lsl #22
     ed4:	04050000 	streq	r0, [r5], #-0
     ed8:	000000c7 	andeq	r0, r0, r7, asr #1
     edc:	ce040506 	cfsh32gt	mvfx0, mvfx4, #6
     ee0:	07000000 	streq	r0, [r0, -r0]
     ee4:	000000af 	andeq	r0, r0, pc, lsr #1
     ee8:	000ac903 	andeq	ip, sl, r3, lsl #18
     eec:	2c2a0600 	stccs	6, cr0, [sl], #-0
     ef0:	03000000 	movweq	r0, #0
     ef4:	000003d2 	ldrdeq	r0, [r0], -r2
     ef8:	004c4106 	subeq	r4, ip, r6, lsl #2
     efc:	0b030000 	bleq	c0f04 <_stacks_size+0xc07e4>
     f00:	06000001 	streq	r0, [r0], -r1
     f04:	00005e42 	andeq	r5, r0, r2, asr #28
     f08:	05870300 	streq	r0, [r7, #768]	; 0x300
     f0c:	31070000 	mrscc	r0, (UNDEF: 7)
     f10:	000000c1 	andeq	r0, r0, r1, asr #1
     f14:	36080108 	strcc	r0, [r8], -r8, lsl #2
     f18:	0000028f 	andeq	r0, r0, pc, lsl #5
     f1c:	000ad109 	andeq	sp, sl, r9, lsl #2
     f20:	dc090000 	stcle	0, cr0, [r9], {-0}
     f24:	0100000a 	tsteq	r0, sl
     f28:	000ae709 	andeq	lr, sl, r9, lsl #14
     f2c:	f2090200 	vhsub.s8	d0, d9, d0
     f30:	0300000a 	movweq	r0, #10
     f34:	000afd09 	andeq	pc, sl, r9, lsl #26
     f38:	08090400 	stmdaeq	r9, {sl}
     f3c:	0500000b 	streq	r0, [r0, #-11]
     f40:	000b1309 	andeq	r1, fp, r9, lsl #6
     f44:	1e090600 	cfmadd32ne	mvax0, mvfx0, mvfx9, mvfx0
     f48:	0700000b 	streq	r0, [r0, -fp]
     f4c:	000b2909 	andeq	r2, fp, r9, lsl #18
     f50:	34090800 	strcc	r0, [r9], #-2048	; 0x800
     f54:	0900000b 	stmdbeq	r0, {r0, r1, r3}
     f58:	00088a09 	andeq	r8, r8, r9, lsl #20
     f5c:	96090a00 	strls	r0, [r9], -r0, lsl #20
     f60:	0b000008 	bleq	f88 <_stacks_size+0x868>
     f64:	0008a209 	andeq	sl, r8, r9, lsl #4
     f68:	ae090c00 	cdpge	12, 0, cr0, cr9, cr0, {0}
     f6c:	0d000008 	stceq	0, cr0, [r0, #-32]	; 0xffffffe0
     f70:	0008ba09 	andeq	fp, r8, r9, lsl #20
     f74:	c6090e00 	strgt	r0, [r9], -r0, lsl #28
     f78:	0f000008 	svceq	0x00000008
     f7c:	0008d209 	andeq	sp, r8, r9, lsl #4
     f80:	de091000 	cdple	0, 0, cr1, cr9, cr0, {0}
     f84:	11000008 	tstne	r0, r8
     f88:	0008ea09 	andeq	lr, r8, r9, lsl #20
     f8c:	f6091200 			; <UNDEFINED> instruction: 0xf6091200
     f90:	13000008 	movwne	r0, #8
     f94:	00092509 	andeq	r2, r9, r9, lsl #10
     f98:	31091400 	tstcc	r9, r0, lsl #8
     f9c:	15000009 	strne	r0, [r0, #-9]
     fa0:	00093d09 	andeq	r3, r9, r9, lsl #26
     fa4:	49091600 	stmdbmi	r9, {r9, sl, ip}
     fa8:	17000009 	strne	r0, [r0, -r9]
     fac:	00095509 	andeq	r5, r9, r9, lsl #10
     fb0:	61091800 	tstvs	r9, r0, lsl #16
     fb4:	19000009 	stmdbne	r0, {r0, r3}
     fb8:	00096d09 	andeq	r6, r9, r9, lsl #26
     fbc:	79091a00 	stmdbvc	r9, {r9, fp, ip}
     fc0:	1b000009 	blne	fec <_stacks_size+0x8cc>
     fc4:	00098509 	andeq	r8, r9, r9, lsl #10
     fc8:	91091c00 	tstls	r9, r0, lsl #24
     fcc:	1d000009 	stcne	0, cr0, [r0, #-36]	; 0xffffffdc
     fd0:	00099d09 	andeq	r9, r9, r9, lsl #26
     fd4:	a9091e00 	stmdbge	r9, {r9, sl, fp, ip}
     fd8:	1f000009 	svcne	0x00000009
     fdc:	0009b509 	andeq	fp, r9, r9, lsl #10
     fe0:	c1092000 	mrsgt	r2, (UNDEF: 9)
     fe4:	21000009 	tstcs	r0, r9
     fe8:	0009cd09 	andeq	ip, r9, r9, lsl #26
     fec:	d9092200 	stmdble	r9, {r9, sp}
     ff0:	23000009 	movwcs	r0, #9
     ff4:	0009e509 	andeq	lr, r9, r9, lsl #10
     ff8:	f1092400 			; <UNDEFINED> instruction: 0xf1092400
     ffc:	25000009 	strcs	r0, [r0, #-9]
    1000:	0009fd09 	andeq	pc, r9, r9, lsl #26
    1004:	09092600 	stmdbeq	r9, {r9, sl, sp}
    1008:	2700000a 	strcs	r0, [r0, -sl]
    100c:	000a3609 	andeq	r3, sl, r9, lsl #12
    1010:	42092800 	andmi	r2, r9, #0, 16
    1014:	2900000a 	stmdbcs	r0, {r1, r3}
    1018:	000a4e09 	andeq	r4, sl, r9, lsl #28
    101c:	5a092a00 	bpl	24b824 <_stacks_size+0x24b104>
    1020:	2b00000a 	blcs	1050 <_stacks_size+0x930>
    1024:	000a6609 	andeq	r6, sl, r9, lsl #12
    1028:	72092c00 	andvc	r2, r9, #0, 24
    102c:	2d00000a 	stccs	0, cr0, [r0, #-40]	; 0xffffffd8
    1030:	000a7e09 	andeq	r7, sl, r9, lsl #28
    1034:	8a092e00 	bhi	24c83c <_stacks_size+0x24c11c>
    1038:	2f00000a 	svccs	0x0000000a
    103c:	000a9609 	andeq	r9, sl, r9, lsl #12
    1040:	a2093000 	andge	r3, r9, #0
    1044:	3100000a 	tstcc	r0, sl
    1048:	000b4b09 	andeq	r4, fp, r9, lsl #22
    104c:	57093200 	strpl	r3, [r9, -r0, lsl #4]
    1050:	3300000b 	movwcc	r0, #11
    1054:	000b6309 	andeq	r6, fp, r9, lsl #6
    1058:	6f093400 	svcvs	0x00093400
    105c:	3500000b 	strcc	r0, [r0, #-11]
    1060:	000b7b09 	andeq	r7, fp, r9, lsl #22
    1064:	87093600 	strhi	r3, [r9, -r0, lsl #12]
    1068:	3700000b 	strcc	r0, [r0, -fp]
    106c:	000b9309 	andeq	r9, fp, r9, lsl #6
    1070:	9f093800 	svcls	0x00093800
    1074:	3900000b 	stmdbcc	r0, {r0, r1, r3}
    1078:	000bab09 	andeq	sl, fp, r9, lsl #22
    107c:	b7093a00 	strlt	r3, [r9, -r0, lsl #20]
    1080:	3b00000b 	blcc	10b4 <_stacks_size+0x994>
    1084:	000bed09 	andeq	lr, fp, r9, lsl #26
    1088:	f9093c00 			; <UNDEFINED> instruction: 0xf9093c00
    108c:	3d00000b 	stccc	0, cr0, [r0, #-44]	; 0xffffffd4
    1090:	000c0509 	andeq	r0, ip, r9, lsl #10
    1094:	11093e00 	tstne	r9, r0, lsl #28
    1098:	3f00000c 	svccc	0x0000000c
    109c:	00084609 	andeq	r4, r8, r9, lsl #12
    10a0:	0000c000 	andeq	ip, r0, r0
    10a4:	000bc303 	andeq	ip, fp, r3, lsl #6
    10a8:	ff400800 			; <UNDEFINED> instruction: 0xff400800
    10ac:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    10b0:	b5120901 	ldrlt	r0, [r2, #-2305]	; 0x901
    10b4:	09000002 	stmdbeq	r0, {r1}
    10b8:	000001f6 	strdeq	r0, [r0], -r6
    10bc:	01fd0900 	mvnseq	r0, r0, lsl #18
    10c0:	09010000 	stmdbeq	r1, {}	; <UNPREDICTABLE>
    10c4:	000001ed 	andeq	r0, r0, sp, ror #3
    10c8:	8e030002 	cdphi	0, 0, cr0, cr3, cr2, {0}
    10cc:	09000007 	stmdbeq	r0, {r0, r1, r2}
    10d0:	00029a16 	andeq	r9, r2, r6, lsl sl
    10d4:	07bf0300 	ldreq	r0, [pc, r0, lsl #6]!
    10d8:	1d090000 	stcne	0, cr0, [r9, #-0]
    10dc:	000000c1 	andeq	r0, r0, r1, asr #1
    10e0:	100a140a 	andne	r1, sl, sl, lsl #8
    10e4:	00000310 	andeq	r0, r0, r0, lsl r3
    10e8:	0010670b 	andseq	r6, r0, fp, lsl #14
    10ec:	10120a00 	andsne	r0, r2, r0, lsl #20
    10f0:	00000003 	andeq	r0, r0, r3
    10f4:	0015880b 	andseq	r8, r5, fp, lsl #16
    10f8:	e9130a00 	ldmdb	r3, {r9, fp}
    10fc:	04000000 	streq	r0, [r0], #-0
    1100:	0016cd0b 	andseq	ip, r6, fp, lsl #26
    1104:	e9140a00 	ldmdb	r4, {r9, fp}
    1108:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    110c:	646e650c 	strbtvs	r6, [lr], #-1292	; 0x50c
    1110:	e9150a00 	ldmdb	r5, {r9, fp}
    1114:	0c000000 	stceq	0, cr0, [r0], {-0}
    1118:	000d090b 	andeq	r0, sp, fp, lsl #18
    111c:	e9160a00 	ldmdb	r6, {r9, fp}
    1120:	10000000 	andne	r0, r0, r0
    1124:	d3040500 	movwle	r0, #17664	; 0x4500
    1128:	03000000 	movweq	r0, #0
    112c:	000007ad 	andeq	r0, r0, sp, lsr #15
    1130:	02cb170a 	sbceq	r1, fp, #2621440	; 0x280000
    1134:	000d0000 	andeq	r0, sp, r0
    1138:	7e031101 	adfvcs	f1, f3, f1
    113c:	01000008 	tsteq	r0, r8
    1140:	00032114 	andeq	r2, r3, r4, lsl r1
    1144:	01040a00 	tsteq	r4, r0, lsl #20
    1148:	0003671b 	andeq	r6, r3, fp, lsl r7
    114c:	78740c00 	ldmdavc	r4!, {sl, fp}^
    1150:	8f1d0100 	svchi	0x001d0100
    1154:	00000002 	andeq	r0, r0, r2
    1158:	0078720c 	rsbseq	r7, r8, ip, lsl #4
    115c:	028f1d01 	addeq	r1, pc, #1, 26	; 0x40
    1160:	0c010000 	stceq	0, cr0, [r1], {-0}
    1164:	00737463 	rsbseq	r7, r3, r3, ror #8
    1168:	028f1d01 	addeq	r1, pc, #1, 26	; 0x40
    116c:	0c020000 	stceq	0, cr0, [r2], {-0}
    1170:	00737472 	rsbseq	r7, r3, r2, ror r4
    1174:	028f1d01 	addeq	r1, pc, #1, 26	; 0x40
    1178:	00030000 	andeq	r0, r3, r0
    117c:	000c1d03 	andeq	r1, ip, r3, lsl #26
    1180:	301e0100 	andscc	r0, lr, r0, lsl #2
    1184:	0a000003 	beq	1198 <_stacks_size+0xa78>
    1188:	93420108 	movtls	r0, #8456	; 0x2108
    118c:	0b000003 	bleq	11a0 <_stacks_size+0xa80>
    1190:	00000b3f 	andeq	r0, r0, pc, lsr fp
    1194:	02c04401 	sbceq	r4, r0, #16777216	; 0x1000000
    1198:	0b000000 	bleq	11a0 <_stacks_size+0xa80>
    119c:	000007e1 	andeq	r0, r0, r1, ror #15
    11a0:	02c04501 	sbceq	r4, r0, #4194304	; 0x400000
    11a4:	00040000 	andeq	r0, r4, r0
    11a8:	00086d03 	andeq	r6, r8, r3, lsl #26
    11ac:	72460100 	subvc	r0, r6, #0, 2
    11b0:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
    11b4:	00000a2c 	andeq	r0, r0, ip, lsr #20
    11b8:	00de5401 	sbcseq	r5, lr, r1, lsl #8
    11bc:	0b7c0000 	bleq	1f011c4 <_ram_limit+0x1ae91c4>
    11c0:	00300040 	eorseq	r0, r0, r0, asr #32
    11c4:	9c010000 	stcls	0, cr0, [r1], {-0}
    11c8:	000003e1 	andeq	r0, r0, r1, ror #7
    11cc:	0007890f 	andeq	r8, r7, pc, lsl #18
    11d0:	b5540100 	ldrblt	r0, [r4, #-256]	; 0x100
    11d4:	02000002 	andeq	r0, r0, #2
    11d8:	62107791 	andsvs	r7, r0, #38010880	; 0x2440000
    11dc:	54010072 	strpl	r0, [r1], #-114	; 0x72
    11e0:	000000e9 	andeq	r0, r0, r9, ror #1
    11e4:	0f709102 	svceq	0x00709102
    11e8:	0000038a 	andeq	r0, r0, sl, lsl #7
    11ec:	00c85401 	sbceq	r5, r8, r1, lsl #8
    11f0:	91020000 	mrsls	r0, (UNDEF: 2)
    11f4:	5311006c 	tstpl	r1, #108	; 0x6c
    11f8:	01000008 	tsteq	r0, r8
    11fc:	400bac63 	andmi	sl, fp, r3, ror #24
    1200:	00002800 	andeq	r2, r0, r0, lsl #16
    1204:	119c0100 	orrsne	r0, ip, r0, lsl #2
    1208:	0f000004 	svceq	0x00000004
    120c:	00000789 	andeq	r0, r0, r9, lsl #15
    1210:	02b56301 	adcseq	r6, r5, #67108864	; 0x4000000
    1214:	91020000 	mrsls	r0, (UNDEF: 2)
    1218:	00631077 	rsbeq	r1, r3, r7, ror r0
    121c:	00d36301 	sbcseq	r6, r3, r1, lsl #6
    1220:	91020000 	mrsls	r0, (UNDEF: 2)
    1224:	cf0e0076 	svcgt	0x000e0076
    1228:	01000007 	tsteq	r0, r7
    122c:	0000d370 	andeq	sp, r0, r0, ror r3
    1230:	400bd400 	andmi	sp, fp, r0, lsl #8
    1234:	00002800 	andeq	r2, r0, r0, lsl #16
    1238:	399c0100 	ldmibcc	ip, {r8}
    123c:	0f000004 	svceq	0x00000004
    1240:	00000789 	andeq	r0, r0, r9, lsl #15
    1244:	02b57001 	adcseq	r7, r5, #1
    1248:	91020000 	mrsls	r0, (UNDEF: 2)
    124c:	2c0e0077 	stccs	0, cr0, [lr], {119}	; 0x77
    1250:	01000008 	tsteq	r0, r8
    1254:	0000b682 	andeq	fp, r0, r2, lsl #13
    1258:	400bfc00 	andmi	pc, fp, r0, lsl #24
    125c:	00002c00 	andeq	r2, r0, r0, lsl #24
    1260:	7d9c0100 	ldfvcs	f0, [ip]
    1264:	0f000004 	svceq	0x00000004
    1268:	00000789 	andeq	r0, r0, r9, lsl #15
    126c:	00e98201 	rsceq	r8, r9, r1, lsl #4
    1270:	91020000 	mrsls	r0, (UNDEF: 2)
    1274:	75621074 	strbvc	r1, [r2, #-116]!	; 0x74
    1278:	82010066 	andhi	r0, r1, #102	; 0x66
    127c:	000000a9 	andeq	r0, r0, r9, lsr #1
    1280:	0f709102 	svceq	0x00709102
    1284:	00000d09 	andeq	r0, r0, r9, lsl #26
    1288:	008c8201 	addeq	r8, ip, r1, lsl #4
    128c:	91020000 	mrsls	r0, (UNDEF: 2)
    1290:	1f0e006c 	svcne	0x000e006c
    1294:	01000008 	tsteq	r0, r8
    1298:	0000b694 	muleq	r0, r4, r6
    129c:	400c2800 	andmi	r2, ip, r0, lsl #16
    12a0:	00002c00 	andeq	r2, r0, r0, lsl #24
    12a4:	c19c0100 	orrsgt	r0, ip, r0, lsl #2
    12a8:	0f000004 	svceq	0x00000004
    12ac:	00000789 	andeq	r0, r0, r9, lsl #15
    12b0:	00e99401 	rsceq	r9, r9, r1, lsl #8
    12b4:	91020000 	mrsls	r0, (UNDEF: 2)
    12b8:	75621074 	strbvc	r1, [r2, #-116]!	; 0x74
    12bc:	94010066 	strls	r0, [r1], #-102	; 0x66
    12c0:	000000a9 	andeq	r0, r0, r9, lsr #1
    12c4:	0f709102 	svceq	0x00709102
    12c8:	00000d09 	andeq	r0, r0, r9, lsl #26
    12cc:	008c9401 	addeq	r9, ip, r1, lsl #8
    12d0:	91020000 	mrsls	r0, (UNDEF: 2)
    12d4:	0b0e006c 	bleq	38148c <_stacks_size+0x380d6c>
    12d8:	01000009 	tsteq	r0, r9
    12dc:	0000dea3 	andeq	sp, r0, r3, lsr #29
    12e0:	400c5400 	andmi	r5, ip, r0, lsl #8
    12e4:	00002c00 	andeq	r2, r0, r0, lsl #24
    12e8:	f79c0100 			; <UNDEFINED> instruction: 0xf79c0100
    12ec:	0f000004 	svceq	0x00000004
    12f0:	00000789 	andeq	r0, r0, r9, lsl #15
    12f4:	02b5a301 	adcseq	sl, r5, #67108864	; 0x4000000
    12f8:	91020000 	mrsls	r0, (UNDEF: 2)
    12fc:	0d930f77 	ldceq	15, cr0, [r3, #476]	; 0x1dc
    1300:	a3010000 	movwge	r0, #4096	; 0x1000
    1304:	000002c0 	andeq	r0, r0, r0, asr #5
    1308:	00709102 	rsbseq	r9, r0, r2, lsl #2
    130c:	000a150e 	andeq	r1, sl, lr, lsl #10
    1310:	deb20100 	frdles	f0, f2, f0
    1314:	80000000 	andhi	r0, r0, r0
    1318:	2c00400c 	stccs	0, cr4, [r0], {12}
    131c:	01000000 	mrseq	r0, (UNDEF: 0)
    1320:	00052d9c 	muleq	r5, ip, sp
    1324:	07890f00 	streq	r0, [r9, r0, lsl #30]
    1328:	b2010000 	andlt	r0, r1, #0
    132c:	000002b5 			; <UNDEFINED> instruction: 0x000002b5
    1330:	0f779102 	svceq	0x00779102
    1334:	00000d93 	muleq	r0, r3, sp
    1338:	02c0b201 	sbceq	fp, r0, #268435456	; 0x10000000
    133c:	91020000 	mrsls	r0, (UNDEF: 2)
    1340:	02120070 	andseq	r0, r2, #112	; 0x70
    1344:	01000009 	tsteq	r0, r9
    1348:	400cacc1 	andmi	sl, ip, r1, asr #25
    134c:	00002000 	andeq	r2, r0, r0
    1350:	519c0100 	orrspl	r0, ip, r0, lsl #2
    1354:	0f000005 	svceq	0x00000005
    1358:	00000789 	andeq	r0, r0, r9, lsl #15
    135c:	02b5c101 	adcseq	ip, r5, #1073741824	; 0x40000000
    1360:	91020000 	mrsls	r0, (UNDEF: 2)
    1364:	62130077 	andsvs	r0, r3, #119	; 0x77
    1368:	01000008 	tsteq	r0, r8
    136c:	400ccccb 	andmi	ip, ip, fp, asr #25
    1370:	00001c00 	andeq	r1, r0, r0, lsl #24
    1374:	139c0100 	orrsne	r0, ip, #0, 2
    1378:	000007a2 	andeq	r0, r0, r2, lsr #15
    137c:	0ce8d501 	cfstr64eq	mvdx13, [r8], #4
    1380:	001c0040 	andseq	r0, ip, r0, asr #32
    1384:	9c010000 	stcls	0, cr0, [r1], {-0}
    1388:	00058314 	andeq	r8, r5, r4, lsl r3
    138c:	00058300 	andeq	r8, r5, r0, lsl #6
    1390:	00a21500 	adceq	r1, r2, r0, lsl #10
    1394:	00010000 	andeq	r0, r1, r0
    1398:	05890405 	streq	r0, [r9, #1029]	; 0x405
    139c:	25160000 	ldrcs	r0, [r6, #-0]
    13a0:	17000003 	strne	r0, [r0, -r3]
    13a4:	000007fc 	strdeq	r0, [r0], -ip
    13a8:	059f2501 	ldreq	r2, [pc, #1281]	; 18b1 <_stacks_size+0x1191>
    13ac:	03050000 	movweq	r0, #20480	; 0x5000
    13b0:	00401d00 	subeq	r1, r0, r0, lsl #26
    13b4:	00057307 	andeq	r7, r5, r7, lsl #6
    13b8:	03671400 	cmneq	r7, #0, 8
    13bc:	05b40000 	ldreq	r0, [r4, #0]!
    13c0:	a2150000 	andsge	r0, r5, #0
    13c4:	01000000 	mrseq	r0, (UNDEF: 0)
    13c8:	07981700 	ldreq	r1, [r8, r0, lsl #14]
    13cc:	27010000 	strcs	r0, [r1, -r0]
    13d0:	000005c5 	andeq	r0, r0, r5, asr #11
    13d4:	1d080305 	stcne	3, cr0, [r8, #-20]	; 0xffffffec
    13d8:	a4070040 	strge	r0, [r7], #-64	; 0x40
    13dc:	14000005 	strne	r0, [r0], #-5
    13e0:	000000f4 	strdeq	r0, [r0], -r4
    13e4:	000005da 	ldrdeq	r0, [r0], -sl
    13e8:	0000a215 	andeq	sl, r0, r5, lsl r2
    13ec:	17000100 	strne	r0, [r0, -r0, lsl #2]
    13f0:	00000777 	andeq	r0, r0, r7, ror r7
    13f4:	05eb2d01 	strbeq	r2, [fp, #3329]!	; 0xd01
    13f8:	03050000 	movweq	r0, #20480	; 0x5000
    13fc:	00401d10 	subeq	r1, r0, r0, lsl sp
    1400:	0005ca07 	andeq	ip, r5, r7, lsl #20
    1404:	00d31400 	sbcseq	r1, r3, r0, lsl #8
    1408:	06060000 	streq	r0, [r6], -r0
    140c:	a2150000 	andsge	r0, r5, #0
    1410:	01000000 	mrseq	r0, (UNDEF: 0)
    1414:	0000a215 	andeq	sl, r0, r5, lsl r2
    1418:	1700ff00 	strne	pc, [r0, -r0, lsl #30]
    141c:	00000836 	andeq	r0, r0, r6, lsr r8
    1420:	06173601 	ldreq	r3, [r7], -r1, lsl #12
    1424:	03050000 	movweq	r0, #20480	; 0x5000
    1428:	004026f0 	strdeq	r2, [r0], #-96	; 0xffffffa0
    142c:	0005f016 	andeq	pc, r5, r6, lsl r0	; <UNPREDICTABLE>
    1430:	0bdd1700 	bleq	ff747038 <_STACK_FILLER+0x20c6b149>
    1434:	37010000 	strcc	r0, [r1, -r0]
    1438:	0000062d 	andeq	r0, r0, sp, lsr #12
    143c:	28f00305 	ldmcs	r0!, {r0, r2, r8, r9}^
    1440:	f0160040 			; <UNDEFINED> instruction: 0xf0160040
    1444:	14000005 	strne	r0, [r0], #-5
    1448:	00000316 	andeq	r0, r0, r6, lsl r3
    144c:	00000642 	andeq	r0, r0, r2, asr #12
    1450:	0000a215 	andeq	sl, r0, r5, lsl r2
    1454:	17000100 	strne	r0, [r0, -r0, lsl #2]
    1458:	00000806 	andeq	r0, r0, r6, lsl #16
    145c:	06533901 	ldrbeq	r3, [r3], -r1, lsl #18
    1460:	03050000 	movweq	r0, #20480	; 0x5000
    1464:	00402af0 	strdeq	r2, [r0], #-160	; 0xffffff60
    1468:	00063216 	andeq	r3, r6, r6, lsl r2
    146c:	0aae1700 	beq	feb87074 <_STACK_FILLER+0x200ab185>
    1470:	3a010000 	bcc	41478 <_stacks_size+0x40d58>
    1474:	00000669 	andeq	r0, r0, r9, ror #12
    1478:	2b180305 	blcs	602094 <_ram_limit+0x1ea094>
    147c:	32160040 	andscc	r0, r6, #64	; 0x40
    1480:	14000006 	strne	r0, [r0], #-6
    1484:	00000393 	muleq	r0, r3, r3
    1488:	0000067e 	andeq	r0, r0, lr, ror r6
    148c:	0000a215 	andeq	sl, r0, r5, lsl r2
    1490:	17000100 	strne	r0, [r0, -r0, lsl #2]
    1494:	000007ed 	andeq	r0, r0, sp, ror #15
    1498:	068f4801 	streq	r4, [pc], r1, lsl #16
    149c:	03050000 	movweq	r0, #20480	; 0x5000
    14a0:	00402b40 	subeq	r2, r0, r0, asr #22
    14a4:	00066e16 	andeq	r6, r6, r6, lsl lr
    14a8:	08850000 	stmeq	r5, {}	; <UNPREDICTABLE>
    14ac:	00040000 	andeq	r0, r4, r0
    14b0:	00000617 	andeq	r0, r0, r7, lsl r6
    14b4:	0cc30104 	stfeqe	f0, [r3], {4}
    14b8:	3b010000 	blcc	414c0 <_stacks_size+0x40da0>
    14bc:	9200000e 	andls	r0, r0, #14
    14c0:	0000000e 	andeq	r0, r0, lr
    14c4:	00000000 	andeq	r0, r0, r0
    14c8:	3a000000 	bcc	14d0 <_stacks_size+0xdb0>
    14cc:	02000005 	andeq	r0, r0, #5
    14d0:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    14d4:	04030074 	streq	r0, [r3], #-116	; 0x74
    14d8:	00003607 	andeq	r3, r0, r7, lsl #12
    14dc:	06010300 	streq	r0, [r1], -r0, lsl #6
    14e0:	0000004b 	andeq	r0, r0, fp, asr #32
    14e4:	49080103 	stmdbmi	r8, {r0, r1, r8}
    14e8:	03000000 	movweq	r0, #0
    14ec:	019b0502 	orrseq	r0, fp, r2, lsl #10
    14f0:	02030000 	andeq	r0, r3, #0
    14f4:	00007207 	andeq	r7, r0, r7, lsl #4
    14f8:	05040300 	streq	r0, [r4, #-768]	; 0x300
    14fc:	00000175 	andeq	r0, r0, r5, ror r1
    1500:	31070403 	tstcc	r7, r3, lsl #8
    1504:	03000000 	movweq	r0, #0
    1508:	01700508 	cmneq	r0, r8, lsl #10
    150c:	08030000 	stmdaeq	r3, {}	; <UNPREDICTABLE>
    1510:	00002c07 	andeq	r2, r0, r7, lsl #24
    1514:	0d580400 	cfldrdeq	mvd0, [r8, #-0]
    1518:	07020000 	streq	r0, [r2, -r0]
    151c:	00000025 	andeq	r0, r0, r5, lsr #32
    1520:	0002ae04 	andeq	sl, r2, r4, lsl #28
    1524:	4f100300 	svcmi	0x00100300
    1528:	04000000 	streq	r0, [r0], #-0
    152c:	00000df4 	strdeq	r0, [r0], -r4
    1530:	004f2703 	subeq	r2, pc, r3, lsl #14
    1534:	39050000 	stmdbcc	r5, {}	; <UNPREDICTABLE>
    1538:	0400000f 	streq	r0, [r0], #-15
    153c:	002c0161 	eoreq	r0, ip, r1, ror #2
    1540:	04060000 	streq	r0, [r6], #-0
    1544:	00b74a03 	adcseq	r4, r7, r3, lsl #20
    1548:	5b070000 	blpl	1c1550 <_stacks_size+0x1c0e30>
    154c:	0300000c 	movweq	r0, #12
    1550:	00008c4c 	andeq	r8, r0, ip, asr #24
    1554:	0e340700 	cdpeq	7, 3, cr0, cr4, cr0, {0}
    1558:	4d030000 	stcmi	0, cr0, [r3, #-0]
    155c:	000000b7 	strheq	r0, [r0], -r7
    1560:	003a0800 	eorseq	r0, sl, r0, lsl #16
    1564:	00c70000 	sbceq	r0, r7, r0
    1568:	c7090000 	strgt	r0, [r9, -r0]
    156c:	03000000 	movweq	r0, #0
    1570:	07040300 	streq	r0, [r4, -r0, lsl #6]
    1574:	00000167 	andeq	r0, r0, r7, ror #2
    1578:	4703080a 	strmi	r0, [r3, -sl, lsl #16]
    157c:	000000ef 	andeq	r0, r0, pc, ror #1
    1580:	000d070b 	andeq	r0, sp, fp, lsl #14
    1584:	25490300 	strbcs	r0, [r9, #-768]	; 0x300
    1588:	00000000 	andeq	r0, r0, r0
    158c:	000c6a0b 	andeq	r6, ip, fp, lsl #20
    1590:	984e0300 	stmdals	lr, {r8, r9}^
    1594:	04000000 	streq	r0, [r0], #-0
    1598:	0f720400 	svceq	0x00720400
    159c:	4f030000 	svcmi	0x00030000
    15a0:	000000ce 	andeq	r0, r0, lr, asr #1
    15a4:	000e0304 	andeq	r0, lr, r4, lsl #6
    15a8:	6b530300 	blvs	14c21b0 <_ram_limit+0x10aa1b0>
    15ac:	0c000000 	stceq	0, cr0, [r0], {-0}
    15b0:	0fbc0404 	svceq	0x00bc0404
    15b4:	16050000 	strne	r0, [r5], -r0
    15b8:	00000056 	andeq	r0, r0, r6, asr r0
    15bc:	000f7d0d 	andeq	r7, pc, sp, lsl #26
    15c0:	2d051800 	stccs	8, cr1, [r5, #-0]
    15c4:	00000165 	andeq	r0, r0, r5, ror #2
    15c8:	0010140b 	andseq	r1, r0, fp, lsl #8
    15cc:	652f0500 	strvs	r0, [pc, #-1280]!	; 10d4 <_stacks_size+0x9b4>
    15d0:	00000001 	andeq	r0, r0, r1
    15d4:	006b5f0e 	rsbeq	r5, fp, lr, lsl #30
    15d8:	00253005 	eoreq	r3, r5, r5
    15dc:	0b040000 	bleq	1015e4 <_stacks_size+0x100ec4>
    15e0:	00000f85 	andeq	r0, r0, r5, lsl #31
    15e4:	00253005 	eoreq	r3, r5, r5
    15e8:	0b080000 	bleq	2015f0 <_stacks_size+0x200ed0>
    15ec:	00001009 	andeq	r1, r0, r9
    15f0:	00253005 	eoreq	r3, r5, r5
    15f4:	0b0c0000 	bleq	3015fc <_stacks_size+0x300edc>
    15f8:	00000f19 	andeq	r0, r0, r9, lsl pc
    15fc:	00253005 	eoreq	r3, r5, r5
    1600:	0e100000 	cdpeq	0, 1, cr0, cr0, cr0, {0}
    1604:	0500785f 	streq	r7, [r0, #-2143]	; 0x85f
    1608:	00016b31 	andeq	r6, r1, r1, lsr fp
    160c:	0f001400 	svceq	0x00001400
    1610:	00011204 	andeq	r1, r1, r4, lsl #4
    1614:	01070800 	tsteq	r7, r0, lsl #16
    1618:	017b0000 	cmneq	fp, r0
    161c:	c7090000 	strgt	r0, [r9, -r0]
    1620:	00000000 	andeq	r0, r0, r0
    1624:	0f1e0d00 	svceq	0x001e0d00
    1628:	05240000 	streq	r0, [r4, #-0]!
    162c:	0001f435 	andeq	pc, r1, r5, lsr r4	; <UNPREDICTABLE>
    1630:	0e0c0b00 	vmlaeq.f64	d0, d12, d0
    1634:	37050000 	strcc	r0, [r5, -r0]
    1638:	00000025 	andeq	r0, r0, r5, lsr #32
    163c:	0d850b00 	vstreq	d0, [r5]
    1640:	38050000 	stmdacc	r5, {}	; <UNPREDICTABLE>
    1644:	00000025 	andeq	r0, r0, r5, lsr #32
    1648:	0e150b04 	vnmlseq.f64	d0, d5, d4
    164c:	39050000 	stmdbcc	r5, {}	; <UNPREDICTABLE>
    1650:	00000025 	andeq	r0, r0, r5, lsr #32
    1654:	0d0f0b08 	vstreq	d0, [pc, #-32]	; 163c <_stacks_size+0xf1c>
    1658:	3a050000 	bcc	141660 <_stacks_size+0x140f40>
    165c:	00000025 	andeq	r0, r0, r5, lsr #32
    1660:	0fd20b0c 	svceq	0x00d20b0c
    1664:	3b050000 	blcc	14166c <_stacks_size+0x140f4c>
    1668:	00000025 	andeq	r0, r0, r5, lsr #32
    166c:	0f8d0b10 	svceq	0x008d0b10
    1670:	3c050000 	stccc	0, cr0, [r5], {-0}
    1674:	00000025 	andeq	r0, r0, r5, lsr #32
    1678:	0db90b14 	ldceq	11, cr0, [r9, #80]!	; 0x50
    167c:	3d050000 	stccc	0, cr0, [r5, #-0]
    1680:	00000025 	andeq	r0, r0, r5, lsr #32
    1684:	0fb20b18 	svceq	0x00b20b18
    1688:	3e050000 	cdpcc	0, 0, cr0, cr5, cr0, {0}
    168c:	00000025 	andeq	r0, r0, r5, lsr #32
    1690:	0dd70b1c 	vldreq	d16, [r7, #112]	; 0x70
    1694:	3f050000 	svccc	0x00050000
    1698:	00000025 	andeq	r0, r0, r5, lsr #32
    169c:	75100020 	ldrvc	r0, [r0, #-32]
    16a0:	0800000e 	stmdaeq	r0, {r1, r2, r3}
    16a4:	34480501 	strbcc	r0, [r8], #-1281	; 0x501
    16a8:	0b000002 	bleq	16b8 <_stacks_size+0xf98>
    16ac:	00000c83 	andeq	r0, r0, r3, lsl #25
    16b0:	02344905 	eorseq	r4, r4, #81920	; 0x14000
    16b4:	0b000000 	bleq	16bc <_stacks_size+0xf9c>
    16b8:	00000ff8 	strdeq	r0, [r0], -r8
    16bc:	02344a05 	eorseq	r4, r4, #20480	; 0x5000
    16c0:	11800000 	orrne	r0, r0, r0
    16c4:	00000deb 	andeq	r0, r0, fp, ror #27
    16c8:	01074c05 	tsteq	r7, r5, lsl #24
    16cc:	01000000 	mrseq	r0, (UNDEF: 0)
    16d0:	000f6011 	andeq	r6, pc, r1, lsl r0	; <UNPREDICTABLE>
    16d4:	074f0500 	strbeq	r0, [pc, -r0, lsl #10]
    16d8:	04000001 	streq	r0, [r0], #-1
    16dc:	05080001 	streq	r0, [r8, #-1]
    16e0:	44000001 	strmi	r0, [r0], #-1
    16e4:	09000002 	stmdbeq	r0, {r1}
    16e8:	000000c7 	andeq	r0, r0, r7, asr #1
    16ec:	3710001f 			; <UNDEFINED> instruction: 0x3710001f
    16f0:	9000000d 	andls	r0, r0, sp
    16f4:	825b0501 	subshi	r0, fp, #4194304	; 0x400000
    16f8:	0b000002 	bleq	1708 <_stacks_size+0xfe8>
    16fc:	00001014 	andeq	r1, r0, r4, lsl r0
    1700:	02825c05 	addeq	r5, r2, #1280	; 0x500
    1704:	0b000000 	bleq	170c <_stacks_size+0xfec>
    1708:	00000fe5 	andeq	r0, r0, r5, ror #31
    170c:	00255d05 	eoreq	r5, r5, r5, lsl #26
    1710:	0b040000 	bleq	101718 <_stacks_size+0x100ff8>
    1714:	00000dab 	andeq	r0, r0, fp, lsr #27
    1718:	02885f05 	addeq	r5, r8, #5, 30
    171c:	0b080000 	bleq	201724 <_stacks_size+0x201004>
    1720:	00000e75 	andeq	r0, r0, r5, ror lr
    1724:	01f46005 	mvnseq	r6, r5
    1728:	00880000 	addeq	r0, r8, r0
    172c:	0244040f 	subeq	r0, r4, #251658240	; 0xf000000
    1730:	98080000 	stmdals	r8, {}	; <UNPREDICTABLE>
    1734:	98000002 	stmdals	r0, {r1}
    1738:	09000002 	stmdbeq	r0, {r1}
    173c:	000000c7 	andeq	r0, r0, r7, asr #1
    1740:	040f001f 	streq	r0, [pc], #-31	; 1748 <_stacks_size+0x1028>
    1744:	0000029e 	muleq	r0, lr, r2
    1748:	0c720d12 	ldcleq	13, cr0, [r2], #-72	; 0xffffffb8
    174c:	05080000 	streq	r0, [r8, #-0]
    1750:	0002c473 	andeq	ip, r2, r3, ror r4
    1754:	150f0b00 	strne	r0, [pc, #-2816]	; c5c <_stacks_size+0x53c>
    1758:	74050000 	strvc	r0, [r5], #-0
    175c:	000002c4 	andeq	r0, r0, r4, asr #5
    1760:	15870b00 	strne	r0, [r7, #2816]	; 0xb00
    1764:	75050000 	strvc	r0, [r5, #-0]
    1768:	00000025 	andeq	r0, r0, r5, lsr #32
    176c:	040f0004 	streq	r0, [pc], #-4	; 1774 <_stacks_size+0x1054>
    1770:	0000003a 	andeq	r0, r0, sl, lsr r0
    1774:	0010530d 	andseq	r5, r0, sp, lsl #6
    1778:	b3056800 	movwlt	r6, #22528	; 0x5800
    177c:	000003f4 	strdeq	r0, [r0], -r4
    1780:	00705f0e 	rsbseq	r5, r0, lr, lsl #30
    1784:	02c4b405 	sbceq	fp, r4, #83886080	; 0x5000000
    1788:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    178c:	0500725f 	streq	r7, [r0, #-607]	; 0x25f
    1790:	000025b5 			; <UNDEFINED> instruction: 0x000025b5
    1794:	5f0e0400 	svcpl	0x000e0400
    1798:	b6050077 			; <UNDEFINED> instruction: 0xb6050077
    179c:	00000025 	andeq	r0, r0, r5, lsr #32
    17a0:	03c10b08 	biceq	r0, r1, #8, 22	; 0x2000
    17a4:	b7050000 	strlt	r0, [r5, -r0]
    17a8:	00000041 	andeq	r0, r0, r1, asr #32
    17ac:	0ef70b0c 	vmoveq.f64	d16, #124	; 0x7c
    17b0:	b8050000 	stmdalt	r5, {}	; <UNPREDICTABLE>
    17b4:	00000041 	andeq	r0, r0, r1, asr #32
    17b8:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
    17bc:	b9050066 	stmdblt	r5, {r1, r2, r5, r6}
    17c0:	0000029f 	muleq	r0, pc, r2	; <UNPREDICTABLE>
    17c4:	0c610b10 	stcleq	11, cr0, [r1], #-64	; 0xffffffc0
    17c8:	ba050000 	blt	1417d0 <_stacks_size+0x1410b0>
    17cc:	00000025 	andeq	r0, r0, r5, lsr #32
    17d0:	0eef0b18 	vdupeq.8	<illegal reg q7.5>, r0
    17d4:	c1050000 	mrsgt	r0, (UNDEF: 5)
    17d8:	00000105 	andeq	r0, r0, r5, lsl #2
    17dc:	0e1f0b1c 	vmoveq.32	r0, d15[0]
    17e0:	c3050000 	movwgt	r0, #20480	; 0x5000
    17e4:	00000557 	andeq	r0, r0, r7, asr r5
    17e8:	0cad0b20 	vstmiaeq	sp!, {d0-d15}
    17ec:	c5050000 	strgt	r0, [r5, #-0]
    17f0:	00000586 	andeq	r0, r0, r6, lsl #11
    17f4:	0fc40b24 	svceq	0x00c40b24
    17f8:	c8050000 	stmdagt	r5, {}	; <UNPREDICTABLE>
    17fc:	000005aa 	andeq	r0, r0, sl, lsr #11
    1800:	0dfc0b28 	ldcleq	11, cr0, [ip, #160]!	; 0xa0
    1804:	c9050000 	stmdbgt	r5, {}	; <UNPREDICTABLE>
    1808:	000005c4 	andeq	r0, r0, r4, asr #11
    180c:	755f0e2c 	ldrbvc	r0, [pc, #-3628]	; 9e8 <_stacks_size+0x2c8>
    1810:	cc050062 	stcgt	0, cr0, [r5], {98}	; 0x62
    1814:	0000029f 	muleq	r0, pc, r2	; <UNPREDICTABLE>
    1818:	755f0e30 	ldrbvc	r0, [pc, #-3632]	; 9f0 <_stacks_size+0x2d0>
    181c:	cd050070 	stcgt	0, cr0, [r5, #-448]	; 0xfffffe40
    1820:	000002c4 	andeq	r0, r0, r4, asr #5
    1824:	755f0e38 	ldrbvc	r0, [pc, #-3640]	; 9f4 <_stacks_size+0x2d4>
    1828:	ce050072 	mcrgt	0, 0, r0, cr5, cr2, {3}
    182c:	00000025 	andeq	r0, r0, r5, lsr #32
    1830:	10400b3c 	subne	r0, r0, ip, lsr fp
    1834:	d1050000 	mrsle	r0, (UNDEF: 5)
    1838:	000005ca 	andeq	r0, r0, sl, asr #11
    183c:	0d520b40 	vldreq	d16, [r2, #-256]	; 0xffffff00
    1840:	d2050000 	andle	r0, r5, #0
    1844:	000005da 	ldrdeq	r0, [r0], -sl
    1848:	6c5f0e43 	mrrcvs	14, 4, r0, pc, cr3	; <UNPREDICTABLE>
    184c:	d5050062 	strle	r0, [r5, #-98]	; 0x62
    1850:	0000029f 	muleq	r0, pc, r2	; <UNPREDICTABLE>
    1854:	02ee0b44 	rsceq	r0, lr, #68, 22	; 0x11000
    1858:	d8050000 	stmdale	r5, {}	; <UNPREDICTABLE>
    185c:	00000025 	andeq	r0, r0, r5, lsr #32
    1860:	0c3c0b4c 	ldceq	11, cr0, [ip], #-304	; 0xfffffed0
    1864:	d9050000 	stmdble	r5, {}	; <UNPREDICTABLE>
    1868:	00000076 	andeq	r0, r0, r6, ror r0
    186c:	10660b50 	rsbne	r0, r6, r0, asr fp
    1870:	dc050000 	stcle	0, cr0, [r5], {-0}
    1874:	00000412 	andeq	r0, r0, r2, lsl r4
    1878:	14070b54 	strne	r0, [r7], #-2900	; 0xb54
    187c:	e0050000 	and	r0, r5, r0
    1880:	000000fa 	strdeq	r0, [r0], -sl
    1884:	0db00b58 	ldceq	11, cr0, [r0, #352]!	; 0x160
    1888:	e2050000 	and	r0, r5, #0
    188c:	000000ef 	andeq	r0, r0, pc, ror #1
    1890:	0dc30b5c 	vstreq	d16, [r3, #368]	; 0x170
    1894:	e3050000 	movw	r0, #20480	; 0x5000
    1898:	00000025 	andeq	r0, r0, r5, lsr #32
    189c:	25130064 	ldrcs	r0, [r3, #-100]	; 0x64
    18a0:	12000000 	andne	r0, r0, #0
    18a4:	14000004 	strne	r0, [r0], #-4
    18a8:	00000412 	andeq	r0, r0, r2, lsl r4
    18ac:	00010514 	andeq	r0, r1, r4, lsl r5
    18b0:	054a1400 	strbeq	r1, [sl, #-1024]	; 0x400
    18b4:	25140000 	ldrcs	r0, [r4, #-0]
    18b8:	00000000 	andeq	r0, r0, r0
    18bc:	0418040f 	ldreq	r0, [r8], #-1039	; 0x40f
    18c0:	4c150000 	ldcmi	0, cr0, [r5], {-0}
    18c4:	28000013 	stmdacs	r0, {r0, r1, r4}
    18c8:	02390504 	eorseq	r0, r9, #4, 10	; 0x1000000
    18cc:	0000054a 	andeq	r0, r0, sl, asr #10
    18d0:	000c2a16 	andeq	r2, ip, r6, lsl sl
    18d4:	023b0500 	eorseq	r0, fp, #0, 10
    18d8:	00000025 	andeq	r0, r0, r5, lsr #32
    18dc:	101a1600 	andsne	r1, sl, r0, lsl #12
    18e0:	40050000 	andmi	r0, r5, r0
    18e4:	00063102 	andeq	r3, r6, r2, lsl #2
    18e8:	2f160400 	svccs	0x00160400
    18ec:	0500000d 	streq	r0, [r0, #-13]
    18f0:	06310240 	ldrteq	r0, [r1], -r0, asr #4
    18f4:	16080000 	strne	r0, [r8], -r0
    18f8:	00000e2c 	andeq	r0, r0, ip, lsr #28
    18fc:	31024005 	tstcc	r2, r5
    1900:	0c000006 	stceq	0, cr0, [r0], {6}
    1904:	000fe016 	andeq	lr, pc, r6, lsl r0	; <UNPREDICTABLE>
    1908:	02420500 	subeq	r0, r2, #0, 10
    190c:	00000025 	andeq	r0, r0, r5, lsr #32
    1910:	0d3f1610 	ldceq	6, cr1, [pc, #-64]!	; 18d8 <_stacks_size+0x11b8>
    1914:	43050000 	movwmi	r0, #20480	; 0x5000
    1918:	00081302 	andeq	r1, r8, r2, lsl #6
    191c:	4e161400 	cfmulsmi	mvf1, mvf6, mvf0
    1920:	0500000f 	streq	r0, [r0, #-15]
    1924:	00250245 	eoreq	r0, r5, r5, asr #4
    1928:	16300000 	ldrtne	r0, [r0], -r0
    192c:	00001021 	andeq	r1, r0, r1, lsr #32
    1930:	7b024605 	blvc	9314c <_stacks_size+0x92a2c>
    1934:	34000005 	strcc	r0, [r0], #-5
    1938:	000c3116 	andeq	r3, ip, r6, lsl r1
    193c:	02480500 	subeq	r0, r8, #0, 10
    1940:	00000025 	andeq	r0, r0, r5, lsr #32
    1944:	0f681638 	svceq	0x00681638
    1948:	4a050000 	bmi	141950 <_stacks_size+0x141230>
    194c:	00082e02 	andeq	r2, r8, r2, lsl #28
    1950:	ca163c00 	bgt	590958 <_ram_limit+0x178958>
    1954:	0500000f 	streq	r0, [r0, #-15]
    1958:	0165024d 	cmneq	r5, sp, asr #4
    195c:	16400000 	strbne	r0, [r0], -r0
    1960:	00000c79 	andeq	r0, r0, r9, ror ip
    1964:	25024e05 	strcs	r4, [r2, #-3589]	; 0xe05
    1968:	44000000 	strmi	r0, [r0], #-0
    196c:	00100416 	andseq	r0, r0, r6, lsl r4
    1970:	024f0500 	subeq	r0, pc, #0, 10
    1974:	00000165 	andeq	r0, r0, r5, ror #2
    1978:	0da11648 	stceq	6, cr1, [r1, #288]!	; 0x120
    197c:	50050000 	andpl	r0, r5, r0
    1980:	00083402 	andeq	r3, r8, r2, lsl #8
    1984:	4a164c00 	bmi	59498c <_ram_limit+0x17c98c>
    1988:	0500000d 	streq	r0, [r0, #-13]
    198c:	00250253 	eoreq	r0, r5, r3, asr r2
    1990:	16500000 	ldrbne	r0, [r0], -r0
    1994:	00000ee7 	andeq	r0, r0, r7, ror #29
    1998:	4a025405 	bmi	969b4 <_stacks_size+0x96294>
    199c:	54000005 	strpl	r0, [r0], #-5
    19a0:	00105b16 	andseq	r5, r0, r6, lsl fp
    19a4:	02770500 	rsbseq	r0, r7, #0, 10
    19a8:	000007f1 	strdeq	r0, [r0], -r1
    19ac:	0d371758 	ldceq	7, cr1, [r7, #-352]!	; 0xfffffea0
    19b0:	7b050000 	blvc	1419b8 <_stacks_size+0x141298>
    19b4:	00028202 	andeq	r8, r2, r2, lsl #4
    19b8:	17014800 	strne	r4, [r1, -r0, lsl #16]
    19bc:	00000de2 	andeq	r0, r0, r2, ror #27
    19c0:	44027c05 	strmi	r7, [r2], #-3077	; 0xc05
    19c4:	4c000002 	stcmi	0, cr0, [r0], {2}
    19c8:	0d8e1701 	stceq	7, cr1, [lr, #4]
    19cc:	80050000 	andhi	r0, r5, r0
    19d0:	00084502 	andeq	r4, r8, r2, lsl #10
    19d4:	1702dc00 	strne	sp, [r2, -r0, lsl #24]
    19d8:	00000e6d 	andeq	r0, r0, sp, ror #28
    19dc:	f6028505 			; <UNDEFINED> instruction: 0xf6028505
    19e0:	e0000005 	and	r0, r0, r5
    19e4:	0c8b1702 	stceq	7, cr1, [fp], {2}
    19e8:	86050000 	strhi	r0, [r5], -r0
    19ec:	00085102 	andeq	r5, r8, r2, lsl #2
    19f0:	0002ec00 	andeq	lr, r2, r0, lsl #24
    19f4:	0550040f 	ldrbeq	r0, [r0, #-1039]	; 0x40f
    19f8:	01030000 	mrseq	r0, (UNDEF: 3)
    19fc:	00005208 	andeq	r5, r0, r8, lsl #4
    1a00:	f4040f00 			; <UNDEFINED> instruction: 0xf4040f00
    1a04:	13000003 	movwne	r0, #3
    1a08:	00000025 	andeq	r0, r0, r5, lsr #32
    1a0c:	0000057b 	andeq	r0, r0, fp, ror r5
    1a10:	00041214 	andeq	r1, r4, r4, lsl r2
    1a14:	01051400 	tsteq	r5, r0, lsl #8
    1a18:	7b140000 	blvc	501a20 <_ram_limit+0xe9a20>
    1a1c:	14000005 	strne	r0, [r0], #-5
    1a20:	00000025 	andeq	r0, r0, r5, lsr #32
    1a24:	81040f00 	tsthi	r4, r0, lsl #30
    1a28:	18000005 	stmdane	r0, {r0, r2}
    1a2c:	00000550 	andeq	r0, r0, r0, asr r5
    1a30:	055d040f 	ldrbeq	r0, [sp, #-1039]	; 0x40f
    1a34:	81130000 	tsthi	r3, r0
    1a38:	aa000000 	bge	1a40 <_stacks_size+0x1320>
    1a3c:	14000005 	strne	r0, [r0], #-5
    1a40:	00000412 	andeq	r0, r0, r2, lsl r4
    1a44:	00010514 	andeq	r0, r1, r4, lsl r5
    1a48:	00811400 	addeq	r1, r1, r0, lsl #8
    1a4c:	25140000 	ldrcs	r0, [r4, #-0]
    1a50:	00000000 	andeq	r0, r0, r0
    1a54:	058c040f 	streq	r0, [ip, #1039]	; 0x40f
    1a58:	25130000 	ldrcs	r0, [r3, #-0]
    1a5c:	c4000000 	strgt	r0, [r0], #-0
    1a60:	14000005 	strne	r0, [r0], #-5
    1a64:	00000412 	andeq	r0, r0, r2, lsl r4
    1a68:	00010514 	andeq	r0, r1, r4, lsl r5
    1a6c:	040f0000 	streq	r0, [pc], #-0	; 1a74 <_stacks_size+0x1354>
    1a70:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    1a74:	00003a08 	andeq	r3, r0, r8, lsl #20
    1a78:	0005da00 	andeq	sp, r5, r0, lsl #20
    1a7c:	00c70900 	sbceq	r0, r7, r0, lsl #18
    1a80:	00020000 	andeq	r0, r2, r0
    1a84:	00003a08 	andeq	r3, r0, r8, lsl #20
    1a88:	0005ea00 	andeq	lr, r5, r0, lsl #20
    1a8c:	00c70900 	sbceq	r0, r7, r0, lsl #18
    1a90:	00000000 	andeq	r0, r0, r0
    1a94:	000d7105 	andeq	r7, sp, r5, lsl #2
    1a98:	011d0500 	tsteq	sp, r0, lsl #10
    1a9c:	000002ca 	andeq	r0, r0, sl, asr #5
    1aa0:	00130519 	andseq	r0, r3, r9, lsl r5
    1aa4:	21050c00 	tstcs	r5, r0, lsl #24
    1aa8:	00062b01 	andeq	r2, r6, r1, lsl #22
    1aac:	10141600 	andsne	r1, r4, r0, lsl #12
    1ab0:	23050000 	movwcs	r0, #20480	; 0x5000
    1ab4:	00062b01 	andeq	r2, r6, r1, lsl #22
    1ab8:	6a160000 	bvs	581ac0 <_ram_limit+0x169ac0>
    1abc:	0500000d 	streq	r0, [r0, #-13]
    1ac0:	00250124 	eoreq	r0, r5, r4, lsr #2
    1ac4:	16040000 	strne	r0, [r4], -r0
    1ac8:	00000dcb 	andeq	r0, r0, fp, asr #27
    1acc:	31012505 	tstcc	r1, r5, lsl #10
    1ad0:	08000006 	stmdaeq	r0, {r1, r2}
    1ad4:	f6040f00 			; <UNDEFINED> instruction: 0xf6040f00
    1ad8:	0f000005 	svceq	0x00000005
    1adc:	0005ea04 	andeq	lr, r5, r4, lsl #20
    1ae0:	0faa1900 	svceq	0x00aa1900
    1ae4:	050e0000 	streq	r0, [lr, #-0]
    1ae8:	066c013d 			; <UNDEFINED> instruction: 0x066c013d
    1aec:	a4160000 	ldrge	r0, [r6], #-0
    1af0:	0500000f 	streq	r0, [r0, #-15]
    1af4:	066c013e 			; <UNDEFINED> instruction: 0x066c013e
    1af8:	16000000 	strne	r0, [r0], -r0
    1afc:	00000dd1 	ldrdeq	r0, [r0], -r1
    1b00:	6c013f05 	stcvs	15, cr3, [r1], {5}
    1b04:	06000006 	streq	r0, [r0], -r6
    1b08:	000fdb16 	andeq	sp, pc, r6, lsl fp	; <UNPREDICTABLE>
    1b0c:	01400500 	cmpeq	r0, r0, lsl #10
    1b10:	00000048 	andeq	r0, r0, r8, asr #32
    1b14:	4808000c 	stmdami	r8, {r2, r3}
    1b18:	7c000000 	stcvc	0, cr0, [r0], {-0}
    1b1c:	09000006 	stmdbeq	r0, {r1, r2}
    1b20:	000000c7 	andeq	r0, r0, r7, asr #1
    1b24:	d01a0002 	andsle	r0, sl, r2
    1b28:	7d025805 	stcvc	8, cr5, [r2, #-20]	; 0xffffffec
    1b2c:	16000007 	strne	r0, [r0], -r7
    1b30:	00000f0c 	andeq	r0, r0, ip, lsl #30
    1b34:	2c025a05 	stccs	10, cr5, [r2], {5}
    1b38:	00000000 	andeq	r0, r0, r0
    1b3c:	000f9716 	andeq	r9, pc, r6, lsl r7	; <UNPREDICTABLE>
    1b40:	025b0500 	subseq	r0, fp, #0, 10
    1b44:	0000054a 	andeq	r0, r0, sl, asr #10
    1b48:	10461604 	subne	r1, r6, r4, lsl #12
    1b4c:	5c050000 	stcpl	0, cr0, [r5], {-0}
    1b50:	00077d02 	andeq	r7, r7, r2, lsl #26
    1b54:	b4160800 	ldrlt	r0, [r6], #-2048	; 0x800
    1b58:	0500000c 	streq	r0, [r0, #-12]
    1b5c:	017b025d 	cmneq	fp, sp, asr r2
    1b60:	16240000 	strtne	r0, [r4], -r0
    1b64:	00000efd 	strdeq	r0, [r0], -sp
    1b68:	25025e05 	strcs	r5, [r2, #-3589]	; 0xe05
    1b6c:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
    1b70:	00100f16 	andseq	r0, r0, r6, lsl pc
    1b74:	025f0500 	subseq	r0, pc, #0, 10
    1b78:	00000064 	andeq	r0, r0, r4, rrx
    1b7c:	0d2a1650 	stceq	6, cr1, [sl, #-320]!	; 0xfffffec0
    1b80:	60050000 	andvs	r0, r5, r0
    1b84:	00063702 	andeq	r3, r6, r2, lsl #14
    1b88:	44165800 	ldrmi	r5, [r6], #-2048	; 0x800
    1b8c:	0500000c 	streq	r0, [r0, #-12]
    1b90:	00ef0261 	rsceq	r0, pc, r1, ror #4
    1b94:	16680000 	strbtne	r0, [r8], -r0
    1b98:	00000f2b 	andeq	r0, r0, fp, lsr #30
    1b9c:	ef026205 	svc	0x00026205
    1ba0:	70000000 	andvc	r0, r0, r0
    1ba4:	000fea16 	andeq	lr, pc, r6, lsl sl	; <UNPREDICTABLE>
    1ba8:	02630500 	rsbeq	r0, r3, #0, 10
    1bac:	000000ef 	andeq	r0, r0, pc, ror #1
    1bb0:	0c511678 	mrrceq	6, 7, r1, r1, cr8	; <UNPREDICTABLE>
    1bb4:	64050000 	strvs	r0, [r5], #-0
    1bb8:	00078d02 	andeq	r8, r7, r2, lsl #26
    1bbc:	90168000 	andsls	r8, r6, r0
    1bc0:	0500000c 	streq	r0, [r0, #-12]
    1bc4:	079d0265 	ldreq	r0, [sp, r5, ror #4]
    1bc8:	16880000 	strne	r0, [r8], r0
    1bcc:	00000d78 	andeq	r0, r0, r8, ror sp
    1bd0:	25026605 	strcs	r6, [r2, #-1541]	; 0x605
    1bd4:	a0000000 	andge	r0, r0, r0
    1bd8:	000f4016 	andeq	r4, pc, r6, lsl r0	; <UNPREDICTABLE>
    1bdc:	02670500 	rsbeq	r0, r7, #0, 10
    1be0:	000000ef 	andeq	r0, r0, pc, ror #1
    1be4:	0e8316a4 	cdpeq	6, 8, cr1, cr3, cr4, {5}
    1be8:	68050000 	stmdavs	r5, {}	; <UNPREDICTABLE>
    1bec:	0000ef02 	andeq	lr, r0, r2, lsl #30
    1bf0:	1916ac00 	ldmdbne	r6, {sl, fp, sp, pc}
    1bf4:	0500000d 	streq	r0, [r0, #-13]
    1bf8:	00ef0269 	rsceq	r0, pc, r9, ror #4
    1bfc:	16b40000 	ldrtne	r0, [r4], r0
    1c00:	00001031 	andeq	r1, r0, r1, lsr r0
    1c04:	ef026a05 	svc	0x00026a05
    1c08:	bc000000 	stclt	0, cr0, [r0], {-0}
    1c0c:	000c9c16 	andeq	r9, ip, r6, lsl ip
    1c10:	026b0500 	rsbeq	r0, fp, #0, 10
    1c14:	000000ef 	andeq	r0, r0, pc, ror #1
    1c18:	0e6416c4 	cdpeq	6, 6, cr1, cr4, cr4, {6}
    1c1c:	6c050000 	stcvs	0, cr0, [r5], {-0}
    1c20:	00002502 	andeq	r2, r0, r2, lsl #10
    1c24:	0800cc00 	stmdaeq	r0, {sl, fp, lr, pc}
    1c28:	00000550 	andeq	r0, r0, r0, asr r5
    1c2c:	0000078d 	andeq	r0, r0, sp, lsl #15
    1c30:	0000c709 	andeq	ip, r0, r9, lsl #14
    1c34:	08001900 	stmdaeq	r0, {r8, fp, ip}
    1c38:	00000550 	andeq	r0, r0, r0, asr r5
    1c3c:	0000079d 	muleq	r0, sp, r7
    1c40:	0000c709 	andeq	ip, r0, r9, lsl #14
    1c44:	08000700 	stmdaeq	r0, {r8, r9, sl}
    1c48:	00000550 	andeq	r0, r0, r0, asr r5
    1c4c:	000007ad 	andeq	r0, r0, sp, lsr #15
    1c50:	0000c709 	andeq	ip, r0, r9, lsl #14
    1c54:	1a001700 	bne	785c <_stacks_size+0x713c>
    1c58:	027105f0 	rsbseq	r0, r1, #240, 10	; 0x3c000000
    1c5c:	000007d1 	ldrdeq	r0, [r0], -r1
    1c60:	000e2516 	andeq	r2, lr, r6, lsl r5
    1c64:	02740500 	rsbseq	r0, r4, #0, 10
    1c68:	000007d1 	ldrdeq	r0, [r0], -r1
    1c6c:	0d981600 	ldceq	6, cr1, [r8]
    1c70:	75050000 	strvc	r0, [r5, #-0]
    1c74:	0007e102 	andeq	lr, r7, r2, lsl #2
    1c78:	08007800 	stmdaeq	r0, {fp, ip, sp, lr}
    1c7c:	000002c4 	andeq	r0, r0, r4, asr #5
    1c80:	000007e1 	andeq	r0, r0, r1, ror #15
    1c84:	0000c709 	andeq	ip, r0, r9, lsl #14
    1c88:	08001d00 	stmdaeq	r0, {r8, sl, fp, ip}
    1c8c:	0000002c 	andeq	r0, r0, ip, lsr #32
    1c90:	000007f1 	strdeq	r0, [r0], -r1
    1c94:	0000c709 	andeq	ip, r0, r9, lsl #14
    1c98:	1b001d00 	blne	90a0 <_stacks_size+0x8980>
    1c9c:	025605f0 	subseq	r0, r6, #240, 10	; 0x3c000000
    1ca0:	00000813 	andeq	r0, r0, r3, lsl r8
    1ca4:	00134c1c 	andseq	r4, r3, ip, lsl ip
    1ca8:	026d0500 	rsbeq	r0, sp, #0, 10
    1cac:	0000067c 	andeq	r0, r0, ip, ror r6
    1cb0:	000f231c 	andeq	r2, pc, ip, lsl r3	; <UNPREDICTABLE>
    1cb4:	02760500 	rsbseq	r0, r6, #0, 10
    1cb8:	000007ad 	andeq	r0, r0, sp, lsr #15
    1cbc:	05500800 	ldrbeq	r0, [r0, #-2048]	; 0x800
    1cc0:	08230000 	stmdaeq	r3!, {}	; <UNPREDICTABLE>
    1cc4:	c7090000 	strgt	r0, [r9, -r0]
    1cc8:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    1ccc:	082e1d00 	stmdaeq	lr!, {r8, sl, fp, ip}
    1cd0:	12140000 	andsne	r0, r4, #0
    1cd4:	00000004 	andeq	r0, r0, r4
    1cd8:	0823040f 	stmdaeq	r3!, {r0, r1, r2, r3, sl}
    1cdc:	040f0000 	streq	r0, [pc], #-0	; 1ce4 <_stacks_size+0x15c4>
    1ce0:	00000165 	andeq	r0, r0, r5, ror #2
    1ce4:	0008451d 	andeq	r4, r8, sp, lsl r5
    1ce8:	00251400 	eoreq	r1, r5, r0, lsl #8
    1cec:	0f000000 	svceq	0x00000000
    1cf0:	00084b04 	andeq	r4, r8, r4, lsl #22
    1cf4:	3a040f00 	bcc	1058fc <_stacks_size+0x1051dc>
    1cf8:	08000008 	stmdaeq	r0, {r3}
    1cfc:	000005ea 	andeq	r0, r0, sl, ror #11
    1d00:	00000861 	andeq	r0, r0, r1, ror #16
    1d04:	0000c709 	andeq	ip, r0, r9, lsl #14
    1d08:	1e000200 	cdpne	2, 0, cr0, cr0, cr0, {0}
    1d0c:	00000c29 	andeq	r0, r0, r9, lsr #24
    1d10:	08760f06 	ldmdaeq	r6!, {r1, r2, r8, r9, sl, fp}^
    1d14:	0ec40000 	cdpeq	0, 12, cr0, cr4, cr0, {0}
    1d18:	00100040 	andseq	r0, r0, r0, asr #32
    1d1c:	9c010000 	stcls	0, cr0, [r1], {-0}
    1d20:	0025040f 	eoreq	r0, r5, pc, lsl #8
    1d24:	c81f0000 	ldmdagt	pc, {}	; <UNPREDICTABLE>
    1d28:	05000010 	streq	r0, [r0, #-16]
    1d2c:	041202fa 	ldreq	r0, [r2], #-762	; 0x2fa
    1d30:	90000000 	andls	r0, r0, r0
    1d34:	04000008 	streq	r0, [r0], #-8
    1d38:	0007a600 	andeq	sl, r7, r0, lsl #12
    1d3c:	c3010400 	movwgt	r0, #5120	; 0x1400
    1d40:	0100000c 	tsteq	r0, ip
    1d44:	000010d4 	ldrdeq	r1, [r0], -r4
    1d48:	0000106c 	andeq	r1, r0, ip, rrx
    1d4c:	0000063a 	andeq	r0, r0, sl, lsr r6
    1d50:	69050402 	stmdbvs	r5, {r1, sl}
    1d54:	0300746e 	movweq	r7, #1134	; 0x46e
    1d58:	00360704 	eorseq	r0, r6, r4, lsl #14
    1d5c:	01030000 	mrseq	r0, (UNDEF: 3)
    1d60:	00004b06 	andeq	r4, r0, r6, lsl #22
    1d64:	08010300 	stmdaeq	r1, {r8, r9}
    1d68:	00000049 	andeq	r0, r0, r9, asr #32
    1d6c:	9b050203 	blls	142580 <_stacks_size+0x141e60>
    1d70:	03000001 	movweq	r0, #1
    1d74:	00720702 	rsbseq	r0, r2, r2, lsl #14
    1d78:	04030000 	streq	r0, [r3], #-0
    1d7c:	00017505 	andeq	r7, r1, r5, lsl #10
    1d80:	07040300 	streq	r0, [r4, -r0, lsl #6]
    1d84:	00000031 	andeq	r0, r0, r1, lsr r0
    1d88:	70050803 	andvc	r0, r5, r3, lsl #16
    1d8c:	03000001 	movweq	r0, #1
    1d90:	002c0708 	eoreq	r0, ip, r8, lsl #14
    1d94:	58040000 	stmdapl	r4, {}	; <UNPREDICTABLE>
    1d98:	0100000d 	tsteq	r0, sp
    1d9c:	00001d07 	andeq	r1, r0, r7, lsl #26
    1da0:	02ae0400 	adceq	r0, lr, #0, 8
    1da4:	10020000 	andne	r0, r2, r0
    1da8:	00000047 	andeq	r0, r0, r7, asr #32
    1dac:	000df404 	andeq	pc, sp, r4, lsl #8
    1db0:	47270200 	strmi	r0, [r7, -r0, lsl #4]!
    1db4:	05000000 	streq	r0, [r0, #-0]
    1db8:	00000f39 	andeq	r0, r0, r9, lsr pc
    1dbc:	24016103 	strcs	r6, [r1], #-259	; 0x103
    1dc0:	06000000 	streq	r0, [r0], -r0
    1dc4:	af4a0204 	svcge	0x004a0204
    1dc8:	07000000 	streq	r0, [r0, -r0]
    1dcc:	00000c5b 	andeq	r0, r0, fp, asr ip
    1dd0:	00844c02 	addeq	r4, r4, r2, lsl #24
    1dd4:	34070000 	strcc	r0, [r7], #-0
    1dd8:	0200000e 	andeq	r0, r0, #14
    1ddc:	0000af4d 	andeq	sl, r0, sp, asr #30
    1de0:	32080000 	andcc	r0, r8, #0
    1de4:	bf000000 	svclt	0x00000000
    1de8:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    1dec:	000000bf 	strheq	r0, [r0], -pc	; <UNPREDICTABLE>
    1df0:	04030003 	streq	r0, [r3], #-3
    1df4:	00016707 	andeq	r6, r1, r7, lsl #14
    1df8:	02080a00 	andeq	r0, r8, #0, 20
    1dfc:	0000e747 	andeq	lr, r0, r7, asr #14
    1e00:	0d070b00 	vstreq	d0, [r7, #-0]
    1e04:	49020000 	stmdbmi	r2, {}	; <UNPREDICTABLE>
    1e08:	0000001d 	andeq	r0, r0, sp, lsl r0
    1e0c:	0c6a0b00 	stcleq	11, cr0, [sl], #-0
    1e10:	4e020000 	cdpmi	0, 0, cr0, cr2, cr0, {0}
    1e14:	00000090 	muleq	r0, r0, r0
    1e18:	72040004 	andvc	r0, r4, #4
    1e1c:	0200000f 	andeq	r0, r0, #15
    1e20:	0000c64f 	andeq	ip, r0, pc, asr #12
    1e24:	0e030400 	cfcpyseq	mvf0, mvf3
    1e28:	53020000 	movwpl	r0, #8192	; 0x2000
    1e2c:	00000063 	andeq	r0, r0, r3, rrx
    1e30:	bc04040c 	cfstrslt	mvf0, [r4], {12}
    1e34:	0400000f 	streq	r0, [r0], #-15
    1e38:	00004e16 	andeq	r4, r0, r6, lsl lr
    1e3c:	0f7d0d00 	svceq	0x007d0d00
    1e40:	04180000 	ldreq	r0, [r8], #-0
    1e44:	00015d2d 	andeq	r5, r1, sp, lsr #26
    1e48:	10140b00 	andsne	r0, r4, r0, lsl #22
    1e4c:	2f040000 	svccs	0x00040000
    1e50:	0000015d 	andeq	r0, r0, sp, asr r1
    1e54:	6b5f0e00 	blvs	17c565c <_ram_limit+0x13ad65c>
    1e58:	1d300400 	cfldrsne	mvf0, [r0, #-0]
    1e5c:	04000000 	streq	r0, [r0], #-0
    1e60:	000f850b 	andeq	r8, pc, fp, lsl #10
    1e64:	1d300400 	cfldrsne	mvf0, [r0, #-0]
    1e68:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    1e6c:	0010090b 	andseq	r0, r0, fp, lsl #18
    1e70:	1d300400 	cfldrsne	mvf0, [r0, #-0]
    1e74:	0c000000 	stceq	0, cr0, [r0], {-0}
    1e78:	000f190b 	andeq	r1, pc, fp, lsl #18
    1e7c:	1d300400 	cfldrsne	mvf0, [r0, #-0]
    1e80:	10000000 	andne	r0, r0, r0
    1e84:	00785f0e 	rsbseq	r5, r8, lr, lsl #30
    1e88:	01633104 	cmneq	r3, r4, lsl #2
    1e8c:	00140000 	andseq	r0, r4, r0
    1e90:	010a040f 	tsteq	sl, pc, lsl #8
    1e94:	ff080000 			; <UNDEFINED> instruction: 0xff080000
    1e98:	73000000 	movwvc	r0, #0
    1e9c:	09000001 	stmdbeq	r0, {r0}
    1ea0:	000000bf 	strheq	r0, [r0], -pc	; <UNPREDICTABLE>
    1ea4:	1e0d0000 	cdpne	0, 0, cr0, cr13, cr0, {0}
    1ea8:	2400000f 	strcs	r0, [r0], #-15
    1eac:	01ec3504 	mvneq	r3, r4, lsl #10
    1eb0:	0c0b0000 	stceq	0, cr0, [fp], {-0}
    1eb4:	0400000e 	streq	r0, [r0], #-14
    1eb8:	00001d37 	andeq	r1, r0, r7, lsr sp
    1ebc:	850b0000 	strhi	r0, [fp, #-0]
    1ec0:	0400000d 	streq	r0, [r0], #-13
    1ec4:	00001d38 	andeq	r1, r0, r8, lsr sp
    1ec8:	150b0400 	strne	r0, [fp, #-1024]	; 0x400
    1ecc:	0400000e 	streq	r0, [r0], #-14
    1ed0:	00001d39 	andeq	r1, r0, r9, lsr sp
    1ed4:	0f0b0800 	svceq	0x000b0800
    1ed8:	0400000d 	streq	r0, [r0], #-13
    1edc:	00001d3a 	andeq	r1, r0, sl, lsr sp
    1ee0:	d20b0c00 	andle	r0, fp, #0, 24
    1ee4:	0400000f 	streq	r0, [r0], #-15
    1ee8:	00001d3b 	andeq	r1, r0, fp, lsr sp
    1eec:	8d0b1000 	stchi	0, cr1, [fp, #-0]
    1ef0:	0400000f 	streq	r0, [r0], #-15
    1ef4:	00001d3c 	andeq	r1, r0, ip, lsr sp
    1ef8:	b90b1400 	stmdblt	fp, {sl, ip}
    1efc:	0400000d 	streq	r0, [r0], #-13
    1f00:	00001d3d 	andeq	r1, r0, sp, lsr sp
    1f04:	b20b1800 	andlt	r1, fp, #0, 16
    1f08:	0400000f 	streq	r0, [r0], #-15
    1f0c:	00001d3e 	andeq	r1, r0, lr, lsr sp
    1f10:	d70b1c00 	strle	r1, [fp, -r0, lsl #24]
    1f14:	0400000d 	streq	r0, [r0], #-13
    1f18:	00001d3f 	andeq	r1, r0, pc, lsr sp
    1f1c:	10002000 	andne	r2, r0, r0
    1f20:	00000e75 	andeq	r0, r0, r5, ror lr
    1f24:	48040108 	stmdami	r4, {r3, r8}
    1f28:	0000022c 	andeq	r0, r0, ip, lsr #4
    1f2c:	000c830b 	andeq	r8, ip, fp, lsl #6
    1f30:	2c490400 	cfstrdcs	mvd0, [r9], {-0}
    1f34:	00000002 	andeq	r0, r0, r2
    1f38:	000ff80b 	andeq	pc, pc, fp, lsl #16
    1f3c:	2c4a0400 	cfstrdcs	mvd0, [sl], {-0}
    1f40:	80000002 	andhi	r0, r0, r2
    1f44:	000deb11 	andeq	lr, sp, r1, lsl fp
    1f48:	ff4c0400 			; <UNDEFINED> instruction: 0xff4c0400
    1f4c:	00000000 	andeq	r0, r0, r0
    1f50:	0f601101 	svceq	0x00601101
    1f54:	4f040000 	svcmi	0x00040000
    1f58:	000000ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    1f5c:	08000104 	stmdaeq	r0, {r2, r8}
    1f60:	000000fd 	strdeq	r0, [r0], -sp
    1f64:	0000023c 	andeq	r0, r0, ip, lsr r2
    1f68:	0000bf09 	andeq	fp, r0, r9, lsl #30
    1f6c:	10001f00 	andne	r1, r0, r0, lsl #30
    1f70:	00000d37 	andeq	r0, r0, r7, lsr sp
    1f74:	5b040190 	blpl	1025bc <_stacks_size+0x101e9c>
    1f78:	0000027a 	andeq	r0, r0, sl, ror r2
    1f7c:	0010140b 	andseq	r1, r0, fp, lsl #8
    1f80:	7a5c0400 	bvc	1702f88 <_ram_limit+0x12eaf88>
    1f84:	00000002 	andeq	r0, r0, r2
    1f88:	000fe50b 	andeq	lr, pc, fp, lsl #10
    1f8c:	1d5d0400 	cfldrdne	mvd0, [sp, #-0]
    1f90:	04000000 	streq	r0, [r0], #-0
    1f94:	000dab0b 	andeq	sl, sp, fp, lsl #22
    1f98:	805f0400 	subshi	r0, pc, r0, lsl #8
    1f9c:	08000002 	stmdaeq	r0, {r1}
    1fa0:	000e750b 	andeq	r7, lr, fp, lsl #10
    1fa4:	ec600400 	cfstrd	mvd0, [r0], #-0
    1fa8:	88000001 	stmdahi	r0, {r0}
    1fac:	3c040f00 	stccc	15, cr0, [r4], {-0}
    1fb0:	08000002 	stmdaeq	r0, {r1}
    1fb4:	00000290 	muleq	r0, r0, r2
    1fb8:	00000290 	muleq	r0, r0, r2
    1fbc:	0000bf09 	andeq	fp, r0, r9, lsl #30
    1fc0:	0f001f00 	svceq	0x00001f00
    1fc4:	00029604 	andeq	r9, r2, r4, lsl #12
    1fc8:	720d1200 	andvc	r1, sp, #0, 4
    1fcc:	0800000c 	stmdaeq	r0, {r2, r3}
    1fd0:	02bc7304 	adcseq	r7, ip, #4, 6	; 0x10000000
    1fd4:	0f0b0000 	svceq	0x000b0000
    1fd8:	04000015 	streq	r0, [r0], #-21
    1fdc:	0002bc74 	andeq	fp, r2, r4, ror ip
    1fe0:	870b0000 	strhi	r0, [fp, -r0]
    1fe4:	04000015 	streq	r0, [r0], #-21
    1fe8:	00001d75 	andeq	r1, r0, r5, ror sp
    1fec:	0f000400 	svceq	0x00000400
    1ff0:	00003204 	andeq	r3, r0, r4, lsl #4
    1ff4:	10530d00 	subsne	r0, r3, r0, lsl #26
    1ff8:	04680000 	strbteq	r0, [r8], #-0
    1ffc:	0003ecb3 			; <UNDEFINED> instruction: 0x0003ecb3
    2000:	705f0e00 	subsvc	r0, pc, r0, lsl #28
    2004:	bcb40400 	cfldrslt	mvf0, [r4]
    2008:	00000002 	andeq	r0, r0, r2
    200c:	00725f0e 	rsbseq	r5, r2, lr, lsl #30
    2010:	001db504 	andseq	fp, sp, r4, lsl #10
    2014:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    2018:	0400775f 	streq	r7, [r0], #-1887	; 0x75f
    201c:	00001db6 			; <UNDEFINED> instruction: 0x00001db6
    2020:	c10b0800 	tstgt	fp, r0, lsl #16
    2024:	04000003 	streq	r0, [r0], #-3
    2028:	000039b7 			; <UNDEFINED> instruction: 0x000039b7
    202c:	f70b0c00 			; <UNDEFINED> instruction: 0xf70b0c00
    2030:	0400000e 	streq	r0, [r0], #-14
    2034:	000039b8 			; <UNDEFINED> instruction: 0x000039b8
    2038:	5f0e0e00 	svcpl	0x000e0e00
    203c:	04006662 	streq	r6, [r0], #-1634	; 0x662
    2040:	000297b9 			; <UNDEFINED> instruction: 0x000297b9
    2044:	610b1000 	mrsvs	r1, (UNDEF: 11)
    2048:	0400000c 	streq	r0, [r0], #-12
    204c:	00001dba 			; <UNDEFINED> instruction: 0x00001dba
    2050:	ef0b1800 	svc	0x000b1800
    2054:	0400000e 	streq	r0, [r0], #-14
    2058:	0000fdc1 	andeq	pc, r0, r1, asr #27
    205c:	1f0b1c00 	svcne	0x000b1c00
    2060:	0400000e 	streq	r0, [r0], #-14
    2064:	00054fc3 	andeq	r4, r5, r3, asr #31
    2068:	ad0b2000 	stcge	0, cr2, [fp, #-0]
    206c:	0400000c 	streq	r0, [r0], #-12
    2070:	00057ec5 	andeq	r7, r5, r5, asr #29
    2074:	c40b2400 	strgt	r2, [fp], #-1024	; 0x400
    2078:	0400000f 	streq	r0, [r0], #-15
    207c:	0005a2c8 	andeq	sl, r5, r8, asr #5
    2080:	fc0b2800 	stc2	8, cr2, [fp], {-0}
    2084:	0400000d 	streq	r0, [r0], #-13
    2088:	0005bcc9 	andeq	fp, r5, r9, asr #25
    208c:	5f0e2c00 	svcpl	0x000e2c00
    2090:	04006275 	streq	r6, [r0], #-629	; 0x275
    2094:	000297cc 	andeq	r9, r2, ip, asr #15
    2098:	5f0e3000 	svcpl	0x000e3000
    209c:	04007075 	streq	r7, [r0], #-117	; 0x75
    20a0:	0002bccd 	andeq	fp, r2, sp, asr #25
    20a4:	5f0e3800 	svcpl	0x000e3800
    20a8:	04007275 	streq	r7, [r0], #-629	; 0x275
    20ac:	00001dce 	andeq	r1, r0, lr, asr #27
    20b0:	400b3c00 	andmi	r3, fp, r0, lsl #24
    20b4:	04000010 	streq	r0, [r0], #-16
    20b8:	0005c2d1 	ldrdeq	ip, [r5], -r1
    20bc:	520b4000 	andpl	r4, fp, #0
    20c0:	0400000d 	streq	r0, [r0], #-13
    20c4:	0005d2d2 	ldrdeq	sp, [r5], -r2
    20c8:	5f0e4300 	svcpl	0x000e4300
    20cc:	0400626c 	streq	r6, [r0], #-620	; 0x26c
    20d0:	000297d5 	ldrdeq	r9, [r2], -r5
    20d4:	ee0b4400 	cfcpys	mvf4, mvf11
    20d8:	04000002 	streq	r0, [r0], #-2
    20dc:	00001dd8 	ldrdeq	r1, [r0], -r8
    20e0:	3c0b4c00 	stccc	12, cr4, [fp], {-0}
    20e4:	0400000c 	streq	r0, [r0], #-12
    20e8:	00006ed9 	ldrdeq	r6, [r0], -r9
    20ec:	660b5000 	strvs	r5, [fp], -r0
    20f0:	04000010 	streq	r0, [r0], #-16
    20f4:	00040adc 	ldrdeq	r0, [r4], -ip
    20f8:	070b5400 	streq	r5, [fp, -r0, lsl #8]
    20fc:	04000014 	streq	r0, [r0], #-20
    2100:	0000f2e0 	andeq	pc, r0, r0, ror #5
    2104:	b00b5800 	andlt	r5, fp, r0, lsl #16
    2108:	0400000d 	streq	r0, [r0], #-13
    210c:	0000e7e2 	andeq	lr, r0, r2, ror #15
    2110:	c30b5c00 	movwgt	r5, #48128	; 0xbc00
    2114:	0400000d 	streq	r0, [r0], #-13
    2118:	00001de3 	andeq	r1, r0, r3, ror #27
    211c:	13006400 	movwne	r6, #1024	; 0x400
    2120:	0000001d 	andeq	r0, r0, sp, lsl r0
    2124:	0000040a 	andeq	r0, r0, sl, lsl #8
    2128:	00040a14 	andeq	r0, r4, r4, lsl sl
    212c:	00fd1400 	rscseq	r1, sp, r0, lsl #8
    2130:	42140000 	andsmi	r0, r4, #0
    2134:	14000005 	strne	r0, [r0], #-5
    2138:	0000001d 	andeq	r0, r0, sp, lsl r0
    213c:	10040f00 	andne	r0, r4, r0, lsl #30
    2140:	15000004 	strne	r0, [r0, #-4]
    2144:	0000134c 	andeq	r1, r0, ip, asr #6
    2148:	39040428 	stmdbcc	r4, {r3, r5, sl}
    214c:	00054202 	andeq	r4, r5, r2, lsl #4
    2150:	0c2a1600 	stceq	6, cr1, [sl], #-0
    2154:	3b040000 	blcc	10215c <_stacks_size+0x101a3c>
    2158:	00001d02 	andeq	r1, r0, r2, lsl #26
    215c:	1a160000 	bne	582164 <_ram_limit+0x16a164>
    2160:	04000010 	streq	r0, [r0], #-16
    2164:	06290240 	strteq	r0, [r9], -r0, asr #4
    2168:	16040000 	strne	r0, [r4], -r0
    216c:	00000d2f 	andeq	r0, r0, pc, lsr #26
    2170:	29024004 	stmdbcs	r2, {r2, lr}
    2174:	08000006 	stmdaeq	r0, {r1, r2}
    2178:	000e2c16 	andeq	r2, lr, r6, lsl ip
    217c:	02400400 	subeq	r0, r0, #0, 8
    2180:	00000629 	andeq	r0, r0, r9, lsr #12
    2184:	0fe0160c 	svceq	0x00e0160c
    2188:	42040000 	andmi	r0, r4, #0
    218c:	00001d02 	andeq	r1, r0, r2, lsl #26
    2190:	3f161000 	svccc	0x00161000
    2194:	0400000d 	streq	r0, [r0], #-13
    2198:	080b0243 	stmdaeq	fp, {r0, r1, r6, r9}
    219c:	16140000 	ldrne	r0, [r4], -r0
    21a0:	00000f4e 	andeq	r0, r0, lr, asr #30
    21a4:	1d024504 	cfstr32ne	mvfx4, [r2, #-16]
    21a8:	30000000 	andcc	r0, r0, r0
    21ac:	00102116 	andseq	r2, r0, r6, lsl r1
    21b0:	02460400 	subeq	r0, r6, #0, 8
    21b4:	00000573 	andeq	r0, r0, r3, ror r5
    21b8:	0c311634 	ldceq	6, cr1, [r1], #-208	; 0xffffff30
    21bc:	48040000 	stmdami	r4, {}	; <UNPREDICTABLE>
    21c0:	00001d02 	andeq	r1, r0, r2, lsl #26
    21c4:	68163800 	ldmdavs	r6, {fp, ip, sp}
    21c8:	0400000f 	streq	r0, [r0], #-15
    21cc:	0826024a 	stmdaeq	r6!, {r1, r3, r6, r9}
    21d0:	163c0000 	ldrtne	r0, [ip], -r0
    21d4:	00000fca 	andeq	r0, r0, sl, asr #31
    21d8:	5d024d04 	stcpl	13, cr4, [r2, #-16]
    21dc:	40000001 	andmi	r0, r0, r1
    21e0:	000c7916 	andeq	r7, ip, r6, lsl r9
    21e4:	024e0400 	subeq	r0, lr, #0, 8
    21e8:	0000001d 	andeq	r0, r0, sp, lsl r0
    21ec:	10041644 	andne	r1, r4, r4, asr #12
    21f0:	4f040000 	svcmi	0x00040000
    21f4:	00015d02 	andeq	r5, r1, r2, lsl #26
    21f8:	a1164800 	tstge	r6, r0, lsl #16
    21fc:	0400000d 	streq	r0, [r0], #-13
    2200:	082c0250 	stmdaeq	ip!, {r4, r6, r9}
    2204:	164c0000 	strbne	r0, [ip], -r0
    2208:	00000d4a 	andeq	r0, r0, sl, asr #26
    220c:	1d025304 	stcne	3, cr5, [r2, #-16]
    2210:	50000000 	andpl	r0, r0, r0
    2214:	000ee716 	andeq	lr, lr, r6, lsl r7
    2218:	02540400 	subseq	r0, r4, #0, 8
    221c:	00000542 	andeq	r0, r0, r2, asr #10
    2220:	105b1654 	subsne	r1, fp, r4, asr r6
    2224:	77040000 	strvc	r0, [r4, -r0]
    2228:	0007e902 	andeq	lr, r7, r2, lsl #18
    222c:	37175800 	ldrcc	r5, [r7, -r0, lsl #16]
    2230:	0400000d 	streq	r0, [r0], #-13
    2234:	027a027b 	rsbseq	r0, sl, #-1342177273	; 0xb0000007
    2238:	01480000 	mrseq	r0, (UNDEF: 72)
    223c:	000de217 	andeq	lr, sp, r7, lsl r2
    2240:	027c0400 	rsbseq	r0, ip, #0, 8
    2244:	0000023c 	andeq	r0, r0, ip, lsr r2
    2248:	8e17014c 	mufhism	f0, f7, #4.0
    224c:	0400000d 	streq	r0, [r0], #-13
    2250:	083d0280 	ldmdaeq	sp!, {r7, r9}
    2254:	02dc0000 	sbcseq	r0, ip, #0
    2258:	000e6d17 	andeq	r6, lr, r7, lsl sp
    225c:	02850400 	addeq	r0, r5, #0, 8
    2260:	000005ee 	andeq	r0, r0, lr, ror #11
    2264:	8b1702e0 	blhi	5c2dec <_ram_limit+0x1aadec>
    2268:	0400000c 	streq	r0, [r0], #-12
    226c:	08490286 	stmdaeq	r9, {r1, r2, r7, r9}^
    2270:	02ec0000 	rsceq	r0, ip, #0
    2274:	48040f00 	stmdami	r4, {r8, r9, sl, fp}
    2278:	03000005 	movweq	r0, #5
    227c:	00520801 	subseq	r0, r2, r1, lsl #16
    2280:	040f0000 	streq	r0, [pc], #-0	; 2288 <_stacks_size+0x1b68>
    2284:	000003ec 	andeq	r0, r0, ip, ror #7
    2288:	00001d13 	andeq	r1, r0, r3, lsl sp
    228c:	00057300 	andeq	r7, r5, r0, lsl #6
    2290:	040a1400 	streq	r1, [sl], #-1024	; 0x400
    2294:	fd140000 	ldc2	0, cr0, [r4, #-0]
    2298:	14000000 	strne	r0, [r0], #-0
    229c:	00000573 	andeq	r0, r0, r3, ror r5
    22a0:	00001d14 	andeq	r1, r0, r4, lsl sp
    22a4:	040f0000 	streq	r0, [pc], #-0	; 22ac <_stacks_size+0x1b8c>
    22a8:	00000579 	andeq	r0, r0, r9, ror r5
    22ac:	00054818 	andeq	r4, r5, r8, lsl r8
    22b0:	55040f00 	strpl	r0, [r4, #-3840]	; 0xf00
    22b4:	13000005 	movwne	r0, #5
    22b8:	00000079 	andeq	r0, r0, r9, ror r0
    22bc:	000005a2 	andeq	r0, r0, r2, lsr #11
    22c0:	00040a14 	andeq	r0, r4, r4, lsl sl
    22c4:	00fd1400 	rscseq	r1, sp, r0, lsl #8
    22c8:	79140000 	ldmdbvc	r4, {}	; <UNPREDICTABLE>
    22cc:	14000000 	strne	r0, [r0], #-0
    22d0:	0000001d 	andeq	r0, r0, sp, lsl r0
    22d4:	84040f00 	strhi	r0, [r4], #-3840	; 0xf00
    22d8:	13000005 	movwne	r0, #5
    22dc:	0000001d 	andeq	r0, r0, sp, lsl r0
    22e0:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
    22e4:	00040a14 	andeq	r0, r4, r4, lsl sl
    22e8:	00fd1400 	rscseq	r1, sp, r0, lsl #8
    22ec:	0f000000 	svceq	0x00000000
    22f0:	0005a804 	andeq	sl, r5, r4, lsl #16
    22f4:	00320800 	eorseq	r0, r2, r0, lsl #16
    22f8:	05d20000 	ldrbeq	r0, [r2]
    22fc:	bf090000 	svclt	0x00090000
    2300:	02000000 	andeq	r0, r0, #0
    2304:	00320800 	eorseq	r0, r2, r0, lsl #16
    2308:	05e20000 	strbeq	r0, [r2, #0]!
    230c:	bf090000 	svclt	0x00090000
    2310:	00000000 	andeq	r0, r0, r0
    2314:	0d710500 	cfldr64eq	mvdx0, [r1, #-0]
    2318:	1d040000 	stcne	0, cr0, [r4, #-0]
    231c:	0002c201 	andeq	ip, r2, r1, lsl #4
    2320:	13051900 	movwne	r1, #22784	; 0x5900
    2324:	040c0000 	streq	r0, [ip], #-0
    2328:	06230121 	strteq	r0, [r3], -r1, lsr #2
    232c:	14160000 	ldrne	r0, [r6], #-0
    2330:	04000010 	streq	r0, [r0], #-16
    2334:	06230123 	strteq	r0, [r3], -r3, lsr #2
    2338:	16000000 	strne	r0, [r0], -r0
    233c:	00000d6a 	andeq	r0, r0, sl, ror #26
    2340:	1d012404 	cfstrsne	mvf2, [r1, #-16]
    2344:	04000000 	streq	r0, [r0], #-0
    2348:	000dcb16 	andeq	ip, sp, r6, lsl fp
    234c:	01250400 	teqeq	r5, r0, lsl #8
    2350:	00000629 	andeq	r0, r0, r9, lsr #12
    2354:	040f0008 	streq	r0, [pc], #-8	; 235c <_stacks_size+0x1c3c>
    2358:	000005ee 	andeq	r0, r0, lr, ror #11
    235c:	05e2040f 	strbeq	r0, [r2, #1039]!	; 0x40f
    2360:	aa190000 	bge	642368 <_ram_limit+0x22a368>
    2364:	0e00000f 	cdpeq	0, 0, cr0, cr0, cr15, {0}
    2368:	64013d04 	strvs	r3, [r1], #-3332	; 0xd04
    236c:	16000006 	strne	r0, [r0], -r6
    2370:	00000fa4 	andeq	r0, r0, r4, lsr #31
    2374:	64013e04 	strvs	r3, [r1], #-3588	; 0xe04
    2378:	00000006 	andeq	r0, r0, r6
    237c:	000dd116 	andeq	sp, sp, r6, lsl r1
    2380:	013f0400 	teqeq	pc, r0, lsl #8
    2384:	00000664 	andeq	r0, r0, r4, ror #12
    2388:	0fdb1606 	svceq	0x00db1606
    238c:	40040000 	andmi	r0, r4, r0
    2390:	00004001 	andeq	r4, r0, r1
    2394:	08000c00 	stmdaeq	r0, {sl, fp}
    2398:	00000040 	andeq	r0, r0, r0, asr #32
    239c:	00000674 	andeq	r0, r0, r4, ror r6
    23a0:	0000bf09 	andeq	fp, r0, r9, lsl #30
    23a4:	1a000200 	bne	2bac <_stacks_size+0x248c>
    23a8:	025804d0 	subseq	r0, r8, #208, 8	; 0xd0000000
    23ac:	00000775 	andeq	r0, r0, r5, ror r7
    23b0:	000f0c16 	andeq	r0, pc, r6, lsl ip	; <UNPREDICTABLE>
    23b4:	025a0400 	subseq	r0, sl, #0, 8
    23b8:	00000024 	andeq	r0, r0, r4, lsr #32
    23bc:	0f971600 	svceq	0x00971600
    23c0:	5b040000 	blpl	1023c8 <_stacks_size+0x101ca8>
    23c4:	00054202 	andeq	r4, r5, r2, lsl #4
    23c8:	46160400 	ldrmi	r0, [r6], -r0, lsl #8
    23cc:	04000010 	streq	r0, [r0], #-16
    23d0:	0775025c 			; <UNDEFINED> instruction: 0x0775025c
    23d4:	16080000 	strne	r0, [r8], -r0
    23d8:	00000cb4 			; <UNDEFINED> instruction: 0x00000cb4
    23dc:	73025d04 	movwvc	r5, #11524	; 0x2d04
    23e0:	24000001 	strcs	r0, [r0], #-1
    23e4:	000efd16 	andeq	pc, lr, r6, lsl sp	; <UNPREDICTABLE>
    23e8:	025e0400 	subseq	r0, lr, #0, 8
    23ec:	0000001d 	andeq	r0, r0, sp, lsl r0
    23f0:	100f1648 	andne	r1, pc, r8, asr #12
    23f4:	5f040000 	svcpl	0x00040000
    23f8:	00005c02 	andeq	r5, r0, r2, lsl #24
    23fc:	2a165000 	bcs	596404 <_ram_limit+0x17e404>
    2400:	0400000d 	streq	r0, [r0], #-13
    2404:	062f0260 	strteq	r0, [pc], -r0, ror #4
    2408:	16580000 	ldrbne	r0, [r8], -r0
    240c:	00000c44 	andeq	r0, r0, r4, asr #24
    2410:	e7026104 	str	r6, [r2, -r4, lsl #2]
    2414:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    2418:	000f2b16 	andeq	r2, pc, r6, lsl fp	; <UNPREDICTABLE>
    241c:	02620400 	rsbeq	r0, r2, #0, 8
    2420:	000000e7 	andeq	r0, r0, r7, ror #1
    2424:	0fea1670 	svceq	0x00ea1670
    2428:	63040000 	movwvs	r0, #16384	; 0x4000
    242c:	0000e702 	andeq	lr, r0, r2, lsl #14
    2430:	51167800 	tstpl	r6, r0, lsl #16
    2434:	0400000c 	streq	r0, [r0], #-12
    2438:	07850264 	streq	r0, [r5, r4, ror #4]
    243c:	16800000 	strne	r0, [r0], r0
    2440:	00000c90 	muleq	r0, r0, ip
    2444:	95026504 	strls	r6, [r2, #-1284]	; 0x504
    2448:	88000007 	stmdahi	r0, {r0, r1, r2}
    244c:	000d7816 	andeq	r7, sp, r6, lsl r8
    2450:	02660400 	rsbeq	r0, r6, #0, 8
    2454:	0000001d 	andeq	r0, r0, sp, lsl r0
    2458:	0f4016a0 	svceq	0x004016a0
    245c:	67040000 	strvs	r0, [r4, -r0]
    2460:	0000e702 	andeq	lr, r0, r2, lsl #14
    2464:	8316a400 	tsthi	r6, #0, 8
    2468:	0400000e 	streq	r0, [r0], #-14
    246c:	00e70268 	rsceq	r0, r7, r8, ror #4
    2470:	16ac0000 	strtne	r0, [ip], r0
    2474:	00000d19 	andeq	r0, r0, r9, lsl sp
    2478:	e7026904 	str	r6, [r2, -r4, lsl #18]
    247c:	b4000000 	strlt	r0, [r0], #-0
    2480:	00103116 	andseq	r3, r0, r6, lsl r1
    2484:	026a0400 	rsbeq	r0, sl, #0, 8
    2488:	000000e7 	andeq	r0, r0, r7, ror #1
    248c:	0c9c16bc 	ldceq	6, cr1, [ip], {188}	; 0xbc
    2490:	6b040000 	blvs	102498 <_stacks_size+0x101d78>
    2494:	0000e702 	andeq	lr, r0, r2, lsl #14
    2498:	6416c400 	ldrvs	ip, [r6], #-1024	; 0x400
    249c:	0400000e 	streq	r0, [r0], #-14
    24a0:	001d026c 	andseq	r0, sp, ip, ror #4
    24a4:	00cc0000 	sbceq	r0, ip, r0
    24a8:	00054808 	andeq	r4, r5, r8, lsl #16
    24ac:	00078500 	andeq	r8, r7, r0, lsl #10
    24b0:	00bf0900 	adcseq	r0, pc, r0, lsl #18
    24b4:	00190000 	andseq	r0, r9, r0
    24b8:	00054808 	andeq	r4, r5, r8, lsl #16
    24bc:	00079500 	andeq	r9, r7, r0, lsl #10
    24c0:	00bf0900 	adcseq	r0, pc, r0, lsl #18
    24c4:	00070000 	andeq	r0, r7, r0
    24c8:	00054808 	andeq	r4, r5, r8, lsl #16
    24cc:	0007a500 	andeq	sl, r7, r0, lsl #10
    24d0:	00bf0900 	adcseq	r0, pc, r0, lsl #18
    24d4:	00170000 	andseq	r0, r7, r0
    24d8:	7104f01a 	tstvc	r4, sl, lsl r0
    24dc:	0007c902 	andeq	ip, r7, r2, lsl #18
    24e0:	0e251600 	cfmadda32eq	mvax0, mvax1, mvfx5, mvfx0
    24e4:	74040000 	strvc	r0, [r4], #-0
    24e8:	0007c902 	andeq	ip, r7, r2, lsl #18
    24ec:	98160000 	ldmdals	r6, {}	; <UNPREDICTABLE>
    24f0:	0400000d 	streq	r0, [r0], #-13
    24f4:	07d90275 			; <UNDEFINED> instruction: 0x07d90275
    24f8:	00780000 	rsbseq	r0, r8, r0
    24fc:	0002bc08 	andeq	fp, r2, r8, lsl #24
    2500:	0007d900 	andeq	sp, r7, r0, lsl #18
    2504:	00bf0900 	adcseq	r0, pc, r0, lsl #18
    2508:	001d0000 	andseq	r0, sp, r0
    250c:	00002408 	andeq	r2, r0, r8, lsl #8
    2510:	0007e900 	andeq	lr, r7, r0, lsl #18
    2514:	00bf0900 	adcseq	r0, pc, r0, lsl #18
    2518:	001d0000 	andseq	r0, sp, r0
    251c:	5604f01b 			; <UNDEFINED> instruction: 0x5604f01b
    2520:	00080b02 	andeq	r0, r8, r2, lsl #22
    2524:	134c1c00 	movtne	r1, #52224	; 0xcc00
    2528:	6d040000 	stcvs	0, cr0, [r4, #-0]
    252c:	00067402 	andeq	r7, r6, r2, lsl #8
    2530:	0f231c00 	svceq	0x00231c00
    2534:	76040000 	strvc	r0, [r4], -r0
    2538:	0007a502 	andeq	sl, r7, r2, lsl #10
    253c:	48080000 	stmdami	r8, {}	; <UNPREDICTABLE>
    2540:	1b000005 	blne	255c <_stacks_size+0x1e3c>
    2544:	09000008 	stmdbeq	r0, {r3}
    2548:	000000bf 	strheq	r0, [r0], -pc	; <UNPREDICTABLE>
    254c:	261d0018 			; <UNDEFINED> instruction: 0x261d0018
    2550:	14000008 	strne	r0, [r0], #-8
    2554:	0000040a 	andeq	r0, r0, sl, lsl #8
    2558:	1b040f00 	blne	106160 <_stacks_size+0x105a40>
    255c:	0f000008 	svceq	0x00000008
    2560:	00015d04 	andeq	r5, r1, r4, lsl #26
    2564:	083d1d00 	ldmdaeq	sp!, {r8, sl, fp, ip}
    2568:	1d140000 	ldcne	0, cr0, [r4, #-0]
    256c:	00000000 	andeq	r0, r0, r0
    2570:	0843040f 	stmdaeq	r3, {r0, r1, r2, r3, sl}^
    2574:	040f0000 	streq	r0, [pc], #-0	; 257c <_stacks_size+0x1e5c>
    2578:	00000832 	andeq	r0, r0, r2, lsr r8
    257c:	0005e208 	andeq	lr, r5, r8, lsl #4
    2580:	00085900 	andeq	r5, r8, r0, lsl #18
    2584:	00bf0900 	adcseq	r0, pc, r0, lsl #18
    2588:	00020000 	andeq	r0, r2, r0
    258c:	0010601e 	andseq	r6, r0, lr, lsl r0
    2590:	10170500 	andsne	r0, r7, r0, lsl #10
    2594:	05000004 	streq	r0, [r0, #-4]
    2598:	401e8803 	andsmi	r8, lr, r3, lsl #16
    259c:	10c81f00 	sbcne	r1, r8, r0, lsl #30
    25a0:	fa040000 	blx	1025a8 <_stacks_size+0x101e88>
    25a4:	00040a02 	andeq	r0, r4, r2, lsl #20
    25a8:	b0030500 	andlt	r0, r3, r0, lsl #10
    25ac:	1f004022 	svcne	0x00004022
    25b0:	000010c1 	andeq	r1, r0, r1, asr #1
    25b4:	8e02fb04 	vmlahi.f64	d15, d2, d4
    25b8:	05000008 	streq	r0, [r0, #-8]
    25bc:	401d1c03 	andsmi	r1, sp, r3, lsl #24
    25c0:	040a1800 	streq	r1, [sl], #-2048	; 0x800
    25c4:	0f000000 	svceq	0x00000000
    25c8:	04000001 	streq	r0, [r0], #-1
    25cc:	00092600 	andeq	r2, r9, r0, lsl #12
    25d0:	c3010400 	movwgt	r0, #5120	; 0x1400
    25d4:	0100000c 	tsteq	r0, ip
    25d8:	0000115b 	andeq	r1, r0, fp, asr r1
    25dc:	00001105 	andeq	r1, r0, r5, lsl #2
    25e0:	00000010 	andeq	r0, r0, r0, lsl r0
    25e4:	00000000 	andeq	r0, r0, r0
    25e8:	0000071f 	andeq	r0, r0, pc, lsl r7
    25ec:	69050402 	stmdbvs	r5, {r1, sl}
    25f0:	0300746e 	movweq	r7, #1134	; 0x46e
    25f4:	00000413 	andeq	r0, r0, r3, lsl r4
    25f8:	0037d402 	eorseq	sp, r7, r2, lsl #8
    25fc:	04040000 	streq	r0, [r4], #-0
    2600:	00003607 	andeq	r3, r0, r7, lsl #12
    2604:	06010400 	streq	r0, [r1], -r0, lsl #8
    2608:	0000004b 	andeq	r0, r0, fp, asr #32
    260c:	49080104 	stmdbmi	r8, {r2, r8}
    2610:	04000000 	streq	r0, [r0], #-0
    2614:	019b0502 	orrseq	r0, fp, r2, lsl #10
    2618:	02040000 	andeq	r0, r4, #0
    261c:	00007207 	andeq	r7, r0, r7, lsl #4
    2620:	05040400 	streq	r0, [r4, #-1024]	; 0x400
    2624:	00000175 	andeq	r0, r0, r5, ror r1
    2628:	31070404 	tstcc	r7, r4, lsl #8
    262c:	04000000 	streq	r0, [r0], #-0
    2630:	01700508 	cmneq	r0, r8, lsl #10
    2634:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
    2638:	00002c07 	andeq	r2, r0, r7, lsl #24
    263c:	07040400 	streq	r0, [r4, -r0, lsl #8]
    2640:	00000167 	andeq	r0, r0, r7, ror #2
    2644:	00450405 	subeq	r0, r5, r5, lsl #8
    2648:	01040000 	mrseq	r0, (UNDEF: 4)
    264c:	00005208 	andeq	r5, r0, r8, lsl #4
    2650:	10fe0600 	rscsne	r0, lr, r0, lsl #12
    2654:	16030000 	strne	r0, [r3], -r0
    2658:	00000025 	andeq	r0, r0, r5, lsr #32
    265c:	00400ed4 	ldrdeq	r0, [r0], #-228	; 0xffffff1c
    2660:	000000b4 	strheq	r0, [r0], -r4
    2664:	01059c01 	tsteq	r5, r1, lsl #24
    2668:	6d070000 	stcvs	0, cr0, [r7, #-0]
    266c:	35010031 	strcc	r0, [r1, #-49]	; 0x31
    2670:	00000105 	andeq	r0, r0, r5, lsl #2
    2674:	00000000 	andeq	r0, r0, r0
    2678:	00326d07 	eorseq	r6, r2, r7, lsl #26
    267c:	01053501 	tsteq	r5, r1, lsl #10
    2680:	00210000 	eoreq	r0, r1, r0
    2684:	6e070000 	cdpvs	0, 0, cr0, cr7, cr0, {0}
    2688:	2c350100 	ldfcss	f0, [r5], #-0
    268c:	42000000 	andmi	r0, r0, #0
    2690:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    2694:	01003173 	tsteq	r0, r3, ror r1
    2698:	00007d49 	andeq	r7, r0, r9, asr #26
    269c:	00005500 	andeq	r5, r0, r0, lsl #10
    26a0:	32730800 	rsbscc	r0, r3, #0, 16
    26a4:	7d4a0100 	stfvce	f0, [sl, #-0]
    26a8:	73000000 	movwvc	r0, #0
    26ac:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    26b0:	01003161 	tsteq	r0, r1, ror #2
    26b4:	00010c4b 	andeq	r0, r1, fp, asr #24
    26b8:	0000a700 	andeq	sl, r0, r0, lsl #14
    26bc:	32610800 	rsbcc	r0, r1, #0, 16
    26c0:	0c4c0100 	stfeqe	f0, [ip], {-0}
    26c4:	c5000001 	strgt	r0, [r0, #-1]
    26c8:	00000000 	andeq	r0, r0, r0
    26cc:	010b0405 	tsteq	fp, r5, lsl #8
    26d0:	05090000 	streq	r0, [r9, #-0]
    26d4:	00006104 	andeq	r6, r0, r4, lsl #2
    26d8:	00b10000 	adcseq	r0, r1, r0
    26dc:	00040000 	andeq	r0, r4, r0
    26e0:	000009a5 	andeq	r0, r0, r5, lsr #19
    26e4:	0cc30104 	stfeqe	f0, [r3], {4}
    26e8:	8d010000 	stchi	0, cr0, [r1, #-0]
    26ec:	c0000011 	andgt	r0, r0, r1, lsl r0
    26f0:	20000011 	andcs	r0, r0, r1, lsl r0
    26f4:	00000000 	andeq	r0, r0, r0
    26f8:	25000000 	strcs	r0, [r0, #-0]
    26fc:	02000008 	andeq	r0, r0, #8
    2700:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    2704:	13030074 	movwne	r0, #12404	; 0x3074
    2708:	02000004 	andeq	r0, r0, #4
    270c:	000037d4 	ldrdeq	r3, [r0], -r4
    2710:	07040400 	streq	r0, [r4, -r0, lsl #8]
    2714:	00000036 	andeq	r0, r0, r6, lsr r0
    2718:	4b060104 	blmi	182b30 <_stacks_size+0x182410>
    271c:	04000000 	streq	r0, [r0], #-0
    2720:	00490801 	subeq	r0, r9, r1, lsl #16
    2724:	02040000 	andeq	r0, r4, #0
    2728:	00019b05 	andeq	r9, r1, r5, lsl #22
    272c:	07020400 	streq	r0, [r2, -r0, lsl #8]
    2730:	00000072 	andeq	r0, r0, r2, ror r0
    2734:	75050404 	strvc	r0, [r5, #-1028]	; 0x404
    2738:	04000001 	streq	r0, [r0], #-1
    273c:	00310704 	eorseq	r0, r1, r4, lsl #14
    2740:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
    2744:	00017005 	andeq	r7, r1, r5
    2748:	07080400 	streq	r0, [r8, -r0, lsl #8]
    274c:	0000002c 	andeq	r0, r0, ip, lsr #32
    2750:	67070404 	strvs	r0, [r7, -r4, lsl #8]
    2754:	04000001 	streq	r0, [r0], #-1
    2758:	00520801 	subseq	r0, r2, r1, lsl #16
    275c:	04050000 	streq	r0, [r5], #-0
    2760:	0000008a 	andeq	r0, r0, sl, lsl #1
    2764:	00007d06 	andeq	r7, r0, r6, lsl #26
    2768:	11860700 	orrne	r0, r6, r0, lsl #14
    276c:	21030000 	mrscs	r0, (UNDEF: 3)
    2770:	0000002c 	andeq	r0, r0, ip, lsr #32
    2774:	00400f88 	subeq	r0, r0, r8, lsl #31
    2778:	00000060 	andeq	r0, r0, r0, rrx
    277c:	73089c01 	movwvc	r9, #35841	; 0x8c01
    2780:	01007274 	tsteq	r0, r4, ror r2
    2784:	00008442 	andeq	r8, r0, r2, asr #8
    2788:	0000e300 	andeq	lr, r0, r0, lsl #6
    278c:	21000000 	mrscs	r0, (UNDEF: 0)
    2790:	04000009 	streq	r0, [r0], #-9
    2794:	000a1500 	andeq	r1, sl, r0, lsl #10
    2798:	c3010400 	movwgt	r0, #5120	; 0x1400
    279c:	0100000c 	tsteq	r0, ip
    27a0:	00001234 	andeq	r1, r0, r4, lsr r2
    27a4:	00001262 	andeq	r1, r0, r2, ror #4
    27a8:	00000030 	andeq	r0, r0, r0, lsr r0
    27ac:	00000000 	andeq	r0, r0, r0
    27b0:	0000090b 	andeq	r0, r0, fp, lsl #18
    27b4:	69050402 	stmdbvs	r5, {r1, sl}
    27b8:	0300746e 	movweq	r7, #1134	; 0x46e
    27bc:	00360704 	eorseq	r0, r6, r4, lsl #14
    27c0:	01030000 	mrseq	r0, (UNDEF: 3)
    27c4:	00004b06 	andeq	r4, r0, r6, lsl #22
    27c8:	08010300 	stmdaeq	r1, {r8, r9}
    27cc:	00000049 	andeq	r0, r0, r9, asr #32
    27d0:	9b050203 	blls	142fe4 <_stacks_size+0x1428c4>
    27d4:	03000001 	movweq	r0, #1
    27d8:	00720702 	rsbseq	r0, r2, r2, lsl #14
    27dc:	04030000 	streq	r0, [r3], #-0
    27e0:	00017505 	andeq	r7, r1, r5, lsl #10
    27e4:	07040300 	streq	r0, [r4, -r0, lsl #6]
    27e8:	00000031 	andeq	r0, r0, r1, lsr r0
    27ec:	70050803 	andvc	r0, r5, r3, lsl #16
    27f0:	03000001 	movweq	r0, #1
    27f4:	002c0708 	eoreq	r0, ip, r8, lsl #14
    27f8:	58040000 	stmdapl	r4, {}	; <UNPREDICTABLE>
    27fc:	0200000d 	andeq	r0, r0, #13
    2800:	00002507 	andeq	r2, r0, r7, lsl #10
    2804:	02ae0400 	adceq	r0, lr, #0, 8
    2808:	10030000 	andne	r0, r3, r0
    280c:	0000004f 	andeq	r0, r0, pc, asr #32
    2810:	000df404 	andeq	pc, sp, r4, lsl #8
    2814:	4f270300 	svcmi	0x00270300
    2818:	05000000 	streq	r0, [r0, #-0]
    281c:	00000f39 	andeq	r0, r0, r9, lsr pc
    2820:	2c016104 	stfcss	f6, [r1], {4}
    2824:	06000000 	streq	r0, [r0], -r0
    2828:	b74a0304 	strblt	r0, [sl, -r4, lsl #6]
    282c:	07000000 	streq	r0, [r0, -r0]
    2830:	00000c5b 	andeq	r0, r0, fp, asr ip
    2834:	008c4c03 	addeq	r4, ip, r3, lsl #24
    2838:	34070000 	strcc	r0, [r7], #-0
    283c:	0300000e 	movweq	r0, #14
    2840:	0000b74d 	andeq	fp, r0, sp, asr #14
    2844:	3a080000 	bcc	20284c <_stacks_size+0x20212c>
    2848:	c7000000 	strgt	r0, [r0, -r0]
    284c:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    2850:	000000c7 	andeq	r0, r0, r7, asr #1
    2854:	04030003 	streq	r0, [r3], #-3
    2858:	00016707 	andeq	r6, r1, r7, lsl #14
    285c:	03080a00 	movweq	r0, #35328	; 0x8a00
    2860:	0000ef47 	andeq	lr, r0, r7, asr #30
    2864:	0d070b00 	vstreq	d0, [r7, #-0]
    2868:	49030000 	stmdbmi	r3, {}	; <UNPREDICTABLE>
    286c:	00000025 	andeq	r0, r0, r5, lsr #32
    2870:	0c6a0b00 	stcleq	11, cr0, [sl], #-0
    2874:	4e030000 	cdpmi	0, 0, cr0, cr3, cr0, {0}
    2878:	00000098 	muleq	r0, r8, r0
    287c:	72040004 	andvc	r0, r4, #4
    2880:	0300000f 	movweq	r0, #15
    2884:	0000ce4f 	andeq	ip, r0, pc, asr #28
    2888:	0e030400 	cfcpyseq	mvf0, mvf3
    288c:	53030000 	movwpl	r0, #12288	; 0x3000
    2890:	0000006b 	andeq	r0, r0, fp, rrx
    2894:	bc04040c 	cfstrslt	mvf0, [r4], {12}
    2898:	0500000f 	streq	r0, [r0, #-15]
    289c:	00005616 	andeq	r5, r0, r6, lsl r6
    28a0:	0f7d0d00 	svceq	0x007d0d00
    28a4:	05180000 	ldreq	r0, [r8, #-0]
    28a8:	0001652d 	andeq	r6, r1, sp, lsr #10
    28ac:	10140b00 	andsne	r0, r4, r0, lsl #22
    28b0:	2f050000 	svccs	0x00050000
    28b4:	00000165 	andeq	r0, r0, r5, ror #2
    28b8:	6b5f0e00 	blvs	17c60c0 <_ram_limit+0x13ae0c0>
    28bc:	25300500 	ldrcs	r0, [r0, #-1280]!	; 0x500
    28c0:	04000000 	streq	r0, [r0], #-0
    28c4:	000f850b 	andeq	r8, pc, fp, lsl #10
    28c8:	25300500 	ldrcs	r0, [r0, #-1280]!	; 0x500
    28cc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    28d0:	0010090b 	andseq	r0, r0, fp, lsl #18
    28d4:	25300500 	ldrcs	r0, [r0, #-1280]!	; 0x500
    28d8:	0c000000 	stceq	0, cr0, [r0], {-0}
    28dc:	000f190b 	andeq	r1, pc, fp, lsl #18
    28e0:	25300500 	ldrcs	r0, [r0, #-1280]!	; 0x500
    28e4:	10000000 	andne	r0, r0, r0
    28e8:	00785f0e 	rsbseq	r5, r8, lr, lsl #30
    28ec:	016b3105 	cmneq	fp, r5, lsl #2
    28f0:	00140000 	andseq	r0, r4, r0
    28f4:	0112040f 	tsteq	r2, pc, lsl #8
    28f8:	07080000 	streq	r0, [r8, -r0]
    28fc:	7b000001 	blvc	2908 <_stacks_size+0x21e8>
    2900:	09000001 	stmdbeq	r0, {r0}
    2904:	000000c7 	andeq	r0, r0, r7, asr #1
    2908:	1e0d0000 	cdpne	0, 0, cr0, cr13, cr0, {0}
    290c:	2400000f 	strcs	r0, [r0], #-15
    2910:	01f43505 	mvnseq	r3, r5, lsl #10
    2914:	0c0b0000 	stceq	0, cr0, [fp], {-0}
    2918:	0500000e 	streq	r0, [r0, #-14]
    291c:	00002537 	andeq	r2, r0, r7, lsr r5
    2920:	850b0000 	strhi	r0, [fp, #-0]
    2924:	0500000d 	streq	r0, [r0, #-13]
    2928:	00002538 	andeq	r2, r0, r8, lsr r5
    292c:	150b0400 	strne	r0, [fp, #-1024]	; 0x400
    2930:	0500000e 	streq	r0, [r0, #-14]
    2934:	00002539 	andeq	r2, r0, r9, lsr r5
    2938:	0f0b0800 	svceq	0x000b0800
    293c:	0500000d 	streq	r0, [r0, #-13]
    2940:	0000253a 	andeq	r2, r0, sl, lsr r5
    2944:	d20b0c00 	andle	r0, fp, #0, 24
    2948:	0500000f 	streq	r0, [r0, #-15]
    294c:	0000253b 	andeq	r2, r0, fp, lsr r5
    2950:	8d0b1000 	stchi	0, cr1, [fp, #-0]
    2954:	0500000f 	streq	r0, [r0, #-15]
    2958:	0000253c 	andeq	r2, r0, ip, lsr r5
    295c:	b90b1400 	stmdblt	fp, {sl, ip}
    2960:	0500000d 	streq	r0, [r0, #-13]
    2964:	0000253d 	andeq	r2, r0, sp, lsr r5
    2968:	b20b1800 	andlt	r1, fp, #0, 16
    296c:	0500000f 	streq	r0, [r0, #-15]
    2970:	0000253e 	andeq	r2, r0, lr, lsr r5
    2974:	d70b1c00 	strle	r1, [fp, -r0, lsl #24]
    2978:	0500000d 	streq	r0, [r0, #-13]
    297c:	0000253f 	andeq	r2, r0, pc, lsr r5
    2980:	10002000 	andne	r2, r0, r0
    2984:	00000e75 	andeq	r0, r0, r5, ror lr
    2988:	48050108 	stmdami	r5, {r3, r8}
    298c:	00000234 	andeq	r0, r0, r4, lsr r2
    2990:	000c830b 	andeq	r8, ip, fp, lsl #6
    2994:	34490500 	strbcc	r0, [r9], #-1280	; 0x500
    2998:	00000002 	andeq	r0, r0, r2
    299c:	000ff80b 	andeq	pc, pc, fp, lsl #16
    29a0:	344a0500 	strbcc	r0, [sl], #-1280	; 0x500
    29a4:	80000002 	andhi	r0, r0, r2
    29a8:	000deb11 	andeq	lr, sp, r1, lsl fp
    29ac:	074c0500 	strbeq	r0, [ip, -r0, lsl #10]
    29b0:	00000001 	andeq	r0, r0, r1
    29b4:	0f601101 	svceq	0x00601101
    29b8:	4f050000 	svcmi	0x00050000
    29bc:	00000107 	andeq	r0, r0, r7, lsl #2
    29c0:	08000104 	stmdaeq	r0, {r2, r8}
    29c4:	00000105 	andeq	r0, r0, r5, lsl #2
    29c8:	00000244 	andeq	r0, r0, r4, asr #4
    29cc:	0000c709 	andeq	ip, r0, r9, lsl #14
    29d0:	10001f00 	andne	r1, r0, r0, lsl #30
    29d4:	00000d37 	andeq	r0, r0, r7, lsr sp
    29d8:	5b050190 	blpl	143020 <_stacks_size+0x142900>
    29dc:	00000282 	andeq	r0, r0, r2, lsl #5
    29e0:	0010140b 	andseq	r1, r0, fp, lsl #8
    29e4:	825c0500 	subshi	r0, ip, #0, 10
    29e8:	00000002 	andeq	r0, r0, r2
    29ec:	000fe50b 	andeq	lr, pc, fp, lsl #10
    29f0:	255d0500 	ldrbcs	r0, [sp, #-1280]	; 0x500
    29f4:	04000000 	streq	r0, [r0], #-0
    29f8:	000dab0b 	andeq	sl, sp, fp, lsl #22
    29fc:	885f0500 	ldmdahi	pc, {r8, sl}^	; <UNPREDICTABLE>
    2a00:	08000002 	stmdaeq	r0, {r1}
    2a04:	000e750b 	andeq	r7, lr, fp, lsl #10
    2a08:	f4600500 	vld3.8	{d16,d18,d20}, [r0], r0
    2a0c:	88000001 	stmdahi	r0, {r0}
    2a10:	44040f00 	strmi	r0, [r4], #-3840	; 0xf00
    2a14:	08000002 	stmdaeq	r0, {r1}
    2a18:	00000298 	muleq	r0, r8, r2
    2a1c:	00000298 	muleq	r0, r8, r2
    2a20:	0000c709 	andeq	ip, r0, r9, lsl #14
    2a24:	0f001f00 	svceq	0x00001f00
    2a28:	00029e04 	andeq	r9, r2, r4, lsl #28
    2a2c:	720d1200 	andvc	r1, sp, #0, 4
    2a30:	0800000c 	stmdaeq	r0, {r2, r3}
    2a34:	02c47305 	sbceq	r7, r4, #335544320	; 0x14000000
    2a38:	0f0b0000 	svceq	0x000b0000
    2a3c:	05000015 	streq	r0, [r0, #-21]
    2a40:	0002c474 	andeq	ip, r2, r4, ror r4
    2a44:	870b0000 	strhi	r0, [fp, -r0]
    2a48:	05000015 	streq	r0, [r0, #-21]
    2a4c:	00002575 	andeq	r2, r0, r5, ror r5
    2a50:	0f000400 	svceq	0x00000400
    2a54:	00003a04 	andeq	r3, r0, r4, lsl #20
    2a58:	10530d00 	subsne	r0, r3, r0, lsl #26
    2a5c:	05680000 	strbeq	r0, [r8, #-0]!
    2a60:	0003f4b3 			; <UNDEFINED> instruction: 0x0003f4b3
    2a64:	705f0e00 	subsvc	r0, pc, r0, lsl #28
    2a68:	c4b40500 	ldrtgt	r0, [r4], #1280	; 0x500
    2a6c:	00000002 	andeq	r0, r0, r2
    2a70:	00725f0e 	rsbseq	r5, r2, lr, lsl #30
    2a74:	0025b505 	eoreq	fp, r5, r5, lsl #10
    2a78:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    2a7c:	0500775f 	streq	r7, [r0, #-1887]	; 0x75f
    2a80:	000025b6 			; <UNDEFINED> instruction: 0x000025b6
    2a84:	c10b0800 	tstgt	fp, r0, lsl #16
    2a88:	05000003 	streq	r0, [r0, #-3]
    2a8c:	000041b7 			; <UNDEFINED> instruction: 0x000041b7
    2a90:	f70b0c00 			; <UNDEFINED> instruction: 0xf70b0c00
    2a94:	0500000e 	streq	r0, [r0, #-14]
    2a98:	000041b8 			; <UNDEFINED> instruction: 0x000041b8
    2a9c:	5f0e0e00 	svcpl	0x000e0e00
    2aa0:	05006662 	streq	r6, [r0, #-1634]	; 0x662
    2aa4:	00029fb9 			; <UNDEFINED> instruction: 0x00029fb9
    2aa8:	610b1000 	mrsvs	r1, (UNDEF: 11)
    2aac:	0500000c 	streq	r0, [r0, #-12]
    2ab0:	000025ba 			; <UNDEFINED> instruction: 0x000025ba
    2ab4:	ef0b1800 	svc	0x000b1800
    2ab8:	0500000e 	streq	r0, [r0, #-14]
    2abc:	000105c1 	andeq	r0, r1, r1, asr #11
    2ac0:	1f0b1c00 	svcne	0x000b1c00
    2ac4:	0500000e 	streq	r0, [r0, #-14]
    2ac8:	000557c3 	andeq	r5, r5, r3, asr #15
    2acc:	ad0b2000 	stcge	0, cr2, [fp, #-0]
    2ad0:	0500000c 	streq	r0, [r0, #-12]
    2ad4:	000586c5 	andeq	r8, r5, r5, asr #13
    2ad8:	c40b2400 	strgt	r2, [fp], #-1024	; 0x400
    2adc:	0500000f 	streq	r0, [r0, #-15]
    2ae0:	0005aac8 	andeq	sl, r5, r8, asr #21
    2ae4:	fc0b2800 	stc2	8, cr2, [fp], {-0}
    2ae8:	0500000d 	streq	r0, [r0, #-13]
    2aec:	0005c4c9 	andeq	ip, r5, r9, asr #9
    2af0:	5f0e2c00 	svcpl	0x000e2c00
    2af4:	05006275 	streq	r6, [r0, #-629]	; 0x275
    2af8:	00029fcc 	andeq	r9, r2, ip, asr #31
    2afc:	5f0e3000 	svcpl	0x000e3000
    2b00:	05007075 	streq	r7, [r0, #-117]	; 0x75
    2b04:	0002c4cd 	andeq	ip, r2, sp, asr #9
    2b08:	5f0e3800 	svcpl	0x000e3800
    2b0c:	05007275 	streq	r7, [r0, #-629]	; 0x275
    2b10:	000025ce 	andeq	r2, r0, lr, asr #11
    2b14:	400b3c00 	andmi	r3, fp, r0, lsl #24
    2b18:	05000010 	streq	r0, [r0, #-16]
    2b1c:	0005cad1 	ldrdeq	ip, [r5], -r1
    2b20:	520b4000 	andpl	r4, fp, #0
    2b24:	0500000d 	streq	r0, [r0, #-13]
    2b28:	0005dad2 	ldrdeq	sp, [r5], -r2
    2b2c:	5f0e4300 	svcpl	0x000e4300
    2b30:	0500626c 	streq	r6, [r0, #-620]	; 0x26c
    2b34:	00029fd5 	ldrdeq	r9, [r2], -r5
    2b38:	ee0b4400 	cfcpys	mvf4, mvf11
    2b3c:	05000002 	streq	r0, [r0, #-2]
    2b40:	000025d8 	ldrdeq	r2, [r0], -r8
    2b44:	3c0b4c00 	stccc	12, cr4, [fp], {-0}
    2b48:	0500000c 	streq	r0, [r0, #-12]
    2b4c:	000076d9 	ldrdeq	r7, [r0], -r9
    2b50:	660b5000 	strvs	r5, [fp], -r0
    2b54:	05000010 	streq	r0, [r0, #-16]
    2b58:	000412dc 	ldrdeq	r1, [r4], -ip
    2b5c:	070b5400 	streq	r5, [fp, -r0, lsl #8]
    2b60:	05000014 	streq	r0, [r0, #-20]
    2b64:	0000fae0 	andeq	pc, r0, r0, ror #21
    2b68:	b00b5800 	andlt	r5, fp, r0, lsl #16
    2b6c:	0500000d 	streq	r0, [r0, #-13]
    2b70:	0000efe2 	andeq	lr, r0, r2, ror #31
    2b74:	c30b5c00 	movwgt	r5, #48128	; 0xbc00
    2b78:	0500000d 	streq	r0, [r0, #-13]
    2b7c:	000025e3 	andeq	r2, r0, r3, ror #11
    2b80:	13006400 	movwne	r6, #1024	; 0x400
    2b84:	00000025 	andeq	r0, r0, r5, lsr #32
    2b88:	00000412 	andeq	r0, r0, r2, lsl r4
    2b8c:	00041214 	andeq	r1, r4, r4, lsl r2
    2b90:	01051400 	tsteq	r5, r0, lsl #8
    2b94:	4a140000 	bmi	502b9c <_ram_limit+0xeab9c>
    2b98:	14000005 	strne	r0, [r0], #-5
    2b9c:	00000025 	andeq	r0, r0, r5, lsr #32
    2ba0:	18040f00 	stmdane	r4, {r8, r9, sl, fp}
    2ba4:	15000004 	strne	r0, [r0, #-4]
    2ba8:	0000134c 	andeq	r1, r0, ip, asr #6
    2bac:	39050428 	stmdbcc	r5, {r3, r5, sl}
    2bb0:	00054a02 	andeq	r4, r5, r2, lsl #20
    2bb4:	0c2a1600 	stceq	6, cr1, [sl], #-0
    2bb8:	3b050000 	blcc	142bc0 <_stacks_size+0x1424a0>
    2bbc:	00002502 	andeq	r2, r0, r2, lsl #10
    2bc0:	1a160000 	bne	582bc8 <_ram_limit+0x16abc8>
    2bc4:	05000010 	streq	r0, [r0, #-16]
    2bc8:	06310240 	ldrteq	r0, [r1], -r0, asr #4
    2bcc:	16040000 	strne	r0, [r4], -r0
    2bd0:	00000d2f 	andeq	r0, r0, pc, lsr #26
    2bd4:	31024005 	tstcc	r2, r5
    2bd8:	08000006 	stmdaeq	r0, {r1, r2}
    2bdc:	000e2c16 	andeq	r2, lr, r6, lsl ip
    2be0:	02400500 	subeq	r0, r0, #0, 10
    2be4:	00000631 	andeq	r0, r0, r1, lsr r6
    2be8:	0fe0160c 	svceq	0x00e0160c
    2bec:	42050000 	andmi	r0, r5, #0
    2bf0:	00002502 	andeq	r2, r0, r2, lsl #10
    2bf4:	3f161000 	svccc	0x00161000
    2bf8:	0500000d 	streq	r0, [r0, #-13]
    2bfc:	08130243 	ldmdaeq	r3, {r0, r1, r6, r9}
    2c00:	16140000 	ldrne	r0, [r4], -r0
    2c04:	00000f4e 	andeq	r0, r0, lr, asr #30
    2c08:	25024505 	strcs	r4, [r2, #-1285]	; 0x505
    2c0c:	30000000 	andcc	r0, r0, r0
    2c10:	00102116 	andseq	r2, r0, r6, lsl r1
    2c14:	02460500 	subeq	r0, r6, #0, 10
    2c18:	0000057b 	andeq	r0, r0, fp, ror r5
    2c1c:	0c311634 	ldceq	6, cr1, [r1], #-208	; 0xffffff30
    2c20:	48050000 	stmdami	r5, {}	; <UNPREDICTABLE>
    2c24:	00002502 	andeq	r2, r0, r2, lsl #10
    2c28:	68163800 	ldmdavs	r6, {fp, ip, sp}
    2c2c:	0500000f 	streq	r0, [r0, #-15]
    2c30:	082e024a 	stmdaeq	lr!, {r1, r3, r6, r9}
    2c34:	163c0000 	ldrtne	r0, [ip], -r0
    2c38:	00000fca 	andeq	r0, r0, sl, asr #31
    2c3c:	65024d05 	strvs	r4, [r2, #-3333]	; 0xd05
    2c40:	40000001 	andmi	r0, r0, r1
    2c44:	000c7916 	andeq	r7, ip, r6, lsl r9
    2c48:	024e0500 	subeq	r0, lr, #0, 10
    2c4c:	00000025 	andeq	r0, r0, r5, lsr #32
    2c50:	10041644 	andne	r1, r4, r4, asr #12
    2c54:	4f050000 	svcmi	0x00050000
    2c58:	00016502 	andeq	r6, r1, r2, lsl #10
    2c5c:	a1164800 	tstge	r6, r0, lsl #16
    2c60:	0500000d 	streq	r0, [r0, #-13]
    2c64:	08340250 	ldmdaeq	r4!, {r4, r6, r9}
    2c68:	164c0000 	strbne	r0, [ip], -r0
    2c6c:	00000d4a 	andeq	r0, r0, sl, asr #26
    2c70:	25025305 	strcs	r5, [r2, #-773]	; 0x305
    2c74:	50000000 	andpl	r0, r0, r0
    2c78:	000ee716 	andeq	lr, lr, r6, lsl r7
    2c7c:	02540500 	subseq	r0, r4, #0, 10
    2c80:	0000054a 	andeq	r0, r0, sl, asr #10
    2c84:	105b1654 	subsne	r1, fp, r4, asr r6
    2c88:	77050000 	strvc	r0, [r5, -r0]
    2c8c:	0007f102 	andeq	pc, r7, r2, lsl #2
    2c90:	37175800 	ldrcc	r5, [r7, -r0, lsl #16]
    2c94:	0500000d 	streq	r0, [r0, #-13]
    2c98:	0282027b 	addeq	r0, r2, #-1342177273	; 0xb0000007
    2c9c:	01480000 	mrseq	r0, (UNDEF: 72)
    2ca0:	000de217 	andeq	lr, sp, r7, lsl r2
    2ca4:	027c0500 	rsbseq	r0, ip, #0, 10
    2ca8:	00000244 	andeq	r0, r0, r4, asr #4
    2cac:	8e17014c 	mufhism	f0, f7, #4.0
    2cb0:	0500000d 	streq	r0, [r0, #-13]
    2cb4:	08450280 	stmdaeq	r5, {r7, r9}^
    2cb8:	02dc0000 	sbcseq	r0, ip, #0
    2cbc:	000e6d17 	andeq	r6, lr, r7, lsl sp
    2cc0:	02850500 	addeq	r0, r5, #0, 10
    2cc4:	000005f6 	strdeq	r0, [r0], -r6
    2cc8:	8b1702e0 	blhi	5c3850 <_ram_limit+0x1ab850>
    2ccc:	0500000c 	streq	r0, [r0, #-12]
    2cd0:	08510286 	ldmdaeq	r1, {r1, r2, r7, r9}^
    2cd4:	02ec0000 	rsceq	r0, ip, #0
    2cd8:	50040f00 	andpl	r0, r4, r0, lsl #30
    2cdc:	03000005 	movweq	r0, #5
    2ce0:	00520801 	subseq	r0, r2, r1, lsl #16
    2ce4:	040f0000 	streq	r0, [pc], #-0	; 2cec <_stacks_size+0x25cc>
    2ce8:	000003f4 	strdeq	r0, [r0], -r4
    2cec:	00002513 	andeq	r2, r0, r3, lsl r5
    2cf0:	00057b00 	andeq	r7, r5, r0, lsl #22
    2cf4:	04121400 	ldreq	r1, [r2], #-1024	; 0x400
    2cf8:	05140000 	ldreq	r0, [r4, #-0]
    2cfc:	14000001 	strne	r0, [r0], #-1
    2d00:	0000057b 	andeq	r0, r0, fp, ror r5
    2d04:	00002514 	andeq	r2, r0, r4, lsl r5
    2d08:	040f0000 	streq	r0, [pc], #-0	; 2d10 <_stacks_size+0x25f0>
    2d0c:	00000581 	andeq	r0, r0, r1, lsl #11
    2d10:	00055018 	andeq	r5, r5, r8, lsl r0
    2d14:	5d040f00 	stcpl	15, cr0, [r4, #-0]
    2d18:	13000005 	movwne	r0, #5
    2d1c:	00000081 	andeq	r0, r0, r1, lsl #1
    2d20:	000005aa 	andeq	r0, r0, sl, lsr #11
    2d24:	00041214 	andeq	r1, r4, r4, lsl r2
    2d28:	01051400 	tsteq	r5, r0, lsl #8
    2d2c:	81140000 	tsthi	r4, r0
    2d30:	14000000 	strne	r0, [r0], #-0
    2d34:	00000025 	andeq	r0, r0, r5, lsr #32
    2d38:	8c040f00 	stchi	15, cr0, [r4], {-0}
    2d3c:	13000005 	movwne	r0, #5
    2d40:	00000025 	andeq	r0, r0, r5, lsr #32
    2d44:	000005c4 	andeq	r0, r0, r4, asr #11
    2d48:	00041214 	andeq	r1, r4, r4, lsl r2
    2d4c:	01051400 	tsteq	r5, r0, lsl #8
    2d50:	0f000000 	svceq	0x00000000
    2d54:	0005b004 	andeq	fp, r5, r4
    2d58:	003a0800 	eorseq	r0, sl, r0, lsl #16
    2d5c:	05da0000 	ldrbeq	r0, [sl]
    2d60:	c7090000 	strgt	r0, [r9, -r0]
    2d64:	02000000 	andeq	r0, r0, #0
    2d68:	003a0800 	eorseq	r0, sl, r0, lsl #16
    2d6c:	05ea0000 	strbeq	r0, [sl, #0]!
    2d70:	c7090000 	strgt	r0, [r9, -r0]
    2d74:	00000000 	andeq	r0, r0, r0
    2d78:	0d710500 	cfldr64eq	mvdx0, [r1, #-0]
    2d7c:	1d050000 	stcne	0, cr0, [r5, #-0]
    2d80:	0002ca01 	andeq	ip, r2, r1, lsl #20
    2d84:	13051900 	movwne	r1, #22784	; 0x5900
    2d88:	050c0000 	streq	r0, [ip, #-0]
    2d8c:	062b0121 	strteq	r0, [fp], -r1, lsr #2
    2d90:	14160000 	ldrne	r0, [r6], #-0
    2d94:	05000010 	streq	r0, [r0, #-16]
    2d98:	062b0123 	strteq	r0, [fp], -r3, lsr #2
    2d9c:	16000000 	strne	r0, [r0], -r0
    2da0:	00000d6a 	andeq	r0, r0, sl, ror #26
    2da4:	25012405 	strcs	r2, [r1, #-1029]	; 0x405
    2da8:	04000000 	streq	r0, [r0], #-0
    2dac:	000dcb16 	andeq	ip, sp, r6, lsl fp
    2db0:	01250500 	teqeq	r5, r0, lsl #10
    2db4:	00000631 	andeq	r0, r0, r1, lsr r6
    2db8:	040f0008 	streq	r0, [pc], #-8	; 2dc0 <_stacks_size+0x26a0>
    2dbc:	000005f6 	strdeq	r0, [r0], -r6
    2dc0:	05ea040f 	strbeq	r0, [sl, #1039]!	; 0x40f
    2dc4:	aa190000 	bge	642dcc <_ram_limit+0x22adcc>
    2dc8:	0e00000f 	cdpeq	0, 0, cr0, cr0, cr15, {0}
    2dcc:	6c013d05 	stcvs	13, cr3, [r1], {5}
    2dd0:	16000006 	strne	r0, [r0], -r6
    2dd4:	00000fa4 	andeq	r0, r0, r4, lsr #31
    2dd8:	6c013e05 	stcvs	14, cr3, [r1], {5}
    2ddc:	00000006 	andeq	r0, r0, r6
    2de0:	000dd116 	andeq	sp, sp, r6, lsl r1
    2de4:	013f0500 	teqeq	pc, r0, lsl #10
    2de8:	0000066c 	andeq	r0, r0, ip, ror #12
    2dec:	0fdb1606 	svceq	0x00db1606
    2df0:	40050000 	andmi	r0, r5, r0
    2df4:	00004801 	andeq	r4, r0, r1, lsl #16
    2df8:	08000c00 	stmdaeq	r0, {sl, fp}
    2dfc:	00000048 	andeq	r0, r0, r8, asr #32
    2e00:	0000067c 	andeq	r0, r0, ip, ror r6
    2e04:	0000c709 	andeq	ip, r0, r9, lsl #14
    2e08:	1a000200 	bne	3610 <_stacks_size+0x2ef0>
    2e0c:	025805d0 	subseq	r0, r8, #208, 10	; 0x34000000
    2e10:	0000077d 	andeq	r0, r0, sp, ror r7
    2e14:	000f0c16 	andeq	r0, pc, r6, lsl ip	; <UNPREDICTABLE>
    2e18:	025a0500 	subseq	r0, sl, #0, 10
    2e1c:	0000002c 	andeq	r0, r0, ip, lsr #32
    2e20:	0f971600 	svceq	0x00971600
    2e24:	5b050000 	blpl	142e2c <_stacks_size+0x14270c>
    2e28:	00054a02 	andeq	r4, r5, r2, lsl #20
    2e2c:	46160400 	ldrmi	r0, [r6], -r0, lsl #8
    2e30:	05000010 	streq	r0, [r0, #-16]
    2e34:	077d025c 			; <UNDEFINED> instruction: 0x077d025c
    2e38:	16080000 	strne	r0, [r8], -r0
    2e3c:	00000cb4 			; <UNDEFINED> instruction: 0x00000cb4
    2e40:	7b025d05 	blvc	9a25c <_stacks_size+0x99b3c>
    2e44:	24000001 	strcs	r0, [r0], #-1
    2e48:	000efd16 	andeq	pc, lr, r6, lsl sp	; <UNPREDICTABLE>
    2e4c:	025e0500 	subseq	r0, lr, #0, 10
    2e50:	00000025 	andeq	r0, r0, r5, lsr #32
    2e54:	100f1648 	andne	r1, pc, r8, asr #12
    2e58:	5f050000 	svcpl	0x00050000
    2e5c:	00006402 	andeq	r6, r0, r2, lsl #8
    2e60:	2a165000 	bcs	596e68 <_ram_limit+0x17ee68>
    2e64:	0500000d 	streq	r0, [r0, #-13]
    2e68:	06370260 	ldrteq	r0, [r7], -r0, ror #4
    2e6c:	16580000 	ldrbne	r0, [r8], -r0
    2e70:	00000c44 	andeq	r0, r0, r4, asr #24
    2e74:	ef026105 	svc	0x00026105
    2e78:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    2e7c:	000f2b16 	andeq	r2, pc, r6, lsl fp	; <UNPREDICTABLE>
    2e80:	02620500 	rsbeq	r0, r2, #0, 10
    2e84:	000000ef 	andeq	r0, r0, pc, ror #1
    2e88:	0fea1670 	svceq	0x00ea1670
    2e8c:	63050000 	movwvs	r0, #20480	; 0x5000
    2e90:	0000ef02 	andeq	lr, r0, r2, lsl #30
    2e94:	51167800 	tstpl	r6, r0, lsl #16
    2e98:	0500000c 	streq	r0, [r0, #-12]
    2e9c:	078d0264 	streq	r0, [sp, r4, ror #4]
    2ea0:	16800000 	strne	r0, [r0], r0
    2ea4:	00000c90 	muleq	r0, r0, ip
    2ea8:	9d026505 	cfstr32ls	mvfx6, [r2, #-20]	; 0xffffffec
    2eac:	88000007 	stmdahi	r0, {r0, r1, r2}
    2eb0:	000d7816 	andeq	r7, sp, r6, lsl r8
    2eb4:	02660500 	rsbeq	r0, r6, #0, 10
    2eb8:	00000025 	andeq	r0, r0, r5, lsr #32
    2ebc:	0f4016a0 	svceq	0x004016a0
    2ec0:	67050000 	strvs	r0, [r5, -r0]
    2ec4:	0000ef02 	andeq	lr, r0, r2, lsl #30
    2ec8:	8316a400 	tsthi	r6, #0, 8
    2ecc:	0500000e 	streq	r0, [r0, #-14]
    2ed0:	00ef0268 	rsceq	r0, pc, r8, ror #4
    2ed4:	16ac0000 	strtne	r0, [ip], r0
    2ed8:	00000d19 	andeq	r0, r0, r9, lsl sp
    2edc:	ef026905 	svc	0x00026905
    2ee0:	b4000000 	strlt	r0, [r0], #-0
    2ee4:	00103116 	andseq	r3, r0, r6, lsl r1
    2ee8:	026a0500 	rsbeq	r0, sl, #0, 10
    2eec:	000000ef 	andeq	r0, r0, pc, ror #1
    2ef0:	0c9c16bc 	ldceq	6, cr1, [ip], {188}	; 0xbc
    2ef4:	6b050000 	blvs	142efc <_stacks_size+0x1427dc>
    2ef8:	0000ef02 	andeq	lr, r0, r2, lsl #30
    2efc:	6416c400 	ldrvs	ip, [r6], #-1024	; 0x400
    2f00:	0500000e 	streq	r0, [r0, #-14]
    2f04:	0025026c 	eoreq	r0, r5, ip, ror #4
    2f08:	00cc0000 	sbceq	r0, ip, r0
    2f0c:	00055008 	andeq	r5, r5, r8
    2f10:	00078d00 	andeq	r8, r7, r0, lsl #26
    2f14:	00c70900 	sbceq	r0, r7, r0, lsl #18
    2f18:	00190000 	andseq	r0, r9, r0
    2f1c:	00055008 	andeq	r5, r5, r8
    2f20:	00079d00 	andeq	r9, r7, r0, lsl #26
    2f24:	00c70900 	sbceq	r0, r7, r0, lsl #18
    2f28:	00070000 	andeq	r0, r7, r0
    2f2c:	00055008 	andeq	r5, r5, r8
    2f30:	0007ad00 	andeq	sl, r7, r0, lsl #26
    2f34:	00c70900 	sbceq	r0, r7, r0, lsl #18
    2f38:	00170000 	andseq	r0, r7, r0
    2f3c:	7105f01a 	tstvc	r5, sl, lsl r0
    2f40:	0007d102 	andeq	sp, r7, r2, lsl #2
    2f44:	0e251600 	cfmadda32eq	mvax0, mvax1, mvfx5, mvfx0
    2f48:	74050000 	strvc	r0, [r5], #-0
    2f4c:	0007d102 	andeq	sp, r7, r2, lsl #2
    2f50:	98160000 	ldmdals	r6, {}	; <UNPREDICTABLE>
    2f54:	0500000d 	streq	r0, [r0, #-13]
    2f58:	07e10275 			; <UNDEFINED> instruction: 0x07e10275
    2f5c:	00780000 	rsbseq	r0, r8, r0
    2f60:	0002c408 	andeq	ip, r2, r8, lsl #8
    2f64:	0007e100 	andeq	lr, r7, r0, lsl #2
    2f68:	00c70900 	sbceq	r0, r7, r0, lsl #18
    2f6c:	001d0000 	andseq	r0, sp, r0
    2f70:	00002c08 	andeq	r2, r0, r8, lsl #24
    2f74:	0007f100 	andeq	pc, r7, r0, lsl #2
    2f78:	00c70900 	sbceq	r0, r7, r0, lsl #18
    2f7c:	001d0000 	andseq	r0, sp, r0
    2f80:	5605f01b 			; <UNDEFINED> instruction: 0x5605f01b
    2f84:	00081302 	andeq	r1, r8, r2, lsl #6
    2f88:	134c1c00 	movtne	r1, #52224	; 0xcc00
    2f8c:	6d050000 	stcvs	0, cr0, [r5, #-0]
    2f90:	00067c02 	andeq	r7, r6, r2, lsl #24
    2f94:	0f231c00 	svceq	0x00231c00
    2f98:	76050000 	strvc	r0, [r5], -r0
    2f9c:	0007ad02 	andeq	sl, r7, r2, lsl #26
    2fa0:	50080000 	andpl	r0, r8, r0
    2fa4:	23000005 	movwcs	r0, #5
    2fa8:	09000008 	stmdbeq	r0, {r3}
    2fac:	000000c7 	andeq	r0, r0, r7, asr #1
    2fb0:	2e1d0018 	mrccs	0, 0, r0, cr13, cr8, {0}
    2fb4:	14000008 	strne	r0, [r0], #-8
    2fb8:	00000412 	andeq	r0, r0, r2, lsl r4
    2fbc:	23040f00 	movwcs	r0, #20224	; 0x4f00
    2fc0:	0f000008 	svceq	0x00000008
    2fc4:	00016504 	andeq	r6, r1, r4, lsl #10
    2fc8:	08451d00 	stmdaeq	r5, {r8, sl, fp, ip}^
    2fcc:	25140000 	ldrcs	r0, [r4, #-0]
    2fd0:	00000000 	andeq	r0, r0, r0
    2fd4:	084b040f 	stmdaeq	fp, {r0, r1, r2, r3, sl}^
    2fd8:	040f0000 	streq	r0, [pc], #-0	; 2fe0 <_stacks_size+0x28c0>
    2fdc:	0000083a 	andeq	r0, r0, sl, lsr r8
    2fe0:	0005ea08 	andeq	lr, r5, r8, lsl #20
    2fe4:	00086100 	andeq	r6, r8, r0, lsl #2
    2fe8:	00c70900 	sbceq	r0, r7, r0, lsl #18
    2fec:	00020000 	andeq	r0, r2, r0
    2ff0:	00122504 	andseq	r2, r2, r4, lsl #10
    2ff4:	6c280600 	stcvs	6, cr0, [r8], #-0
    2ff8:	0d000008 	stceq	0, cr0, [r0, #-32]	; 0xffffffe0
    2ffc:	0000121b 	andeq	r1, r0, fp, lsl r2
    3000:	83000704 	movwhi	r0, #1796	; 0x704
    3004:	1e000008 	cdpne	0, 0, cr0, cr0, cr8, {0}
    3008:	000012c2 	andeq	r1, r0, r2, asr #5
    300c:	00000105 	andeq	r0, r0, r5, lsl #2
    3010:	1d040000 	stcne	0, cr0, [r4, #-0]
    3014:	06000012 			; <UNDEFINED> instruction: 0x06000012
    3018:	00086162 	andeq	r6, r8, r2, ror #2
    301c:	12f11f00 	rscsne	r1, r1, #0, 30
    3020:	be080000 	cdplt	0, 0, cr0, cr8, cr0, {0}
    3024:	00000025 	andeq	r0, r0, r5, lsr #32
    3028:	00400fe8 	subeq	r0, r0, r8, ror #31
    302c:	00000040 	andeq	r0, r0, r0, asr #32
    3030:	08f89c01 	ldmeq	r8!, {r0, sl, fp, ip, pc}^
    3034:	f8200000 			; <UNDEFINED> instruction: 0xf8200000
    3038:	0100000e 	tsteq	r0, lr
    303c:	00057b0d 	andeq	r7, r5, sp, lsl #22
    3040:	00010400 	andeq	r0, r1, r0, lsl #8
    3044:	03c22100 	biceq	r2, r2, #0, 2
    3048:	0d010000 	stceq	0, cr0, [r1, #-0]
    304c:	00000025 	andeq	r0, r0, r5, lsr #32
    3050:	22749102 	rsbscs	r9, r4, #-2147483648	; 0x80000000
    3054:	00706123 	rsbseq	r6, r0, r3, lsr #2
    3058:	08831101 	stmeq	r3, {r0, r8, ip}
    305c:	91020000 	mrsls	r0, (UNDEF: 2)
    3060:	6572236c 	ldrbvs	r2, [r2, #-876]!	; 0x36c
    3064:	12010074 	andne	r0, r1, #116	; 0x74
    3068:	00000025 	andeq	r0, r0, r5, lsr #32
    306c:	14245001 	strtne	r5, [r4], #-1
    3070:	04004010 	streq	r4, [r0], #-16
    3074:	25000009 	strcs	r0, [r0, #-9]
    3078:	91035201 	tstls	r3, r1, lsl #4
    307c:	01250654 	teqeq	r5, r4, asr r6
    3080:	01f30351 	mvnseq	r0, r1, asr r3
    3084:	26000050 			; <UNDEFINED> instruction: 0x26000050
    3088:	000010c8 	andeq	r1, r0, r8, asr #1
    308c:	1202fa05 	andne	pc, r2, #20480	; 0x5000
    3090:	27000004 	strcs	r0, [r0, -r4]
    3094:	000012ba 			; <UNDEFINED> instruction: 0x000012ba
    3098:	00259709 	eoreq	r9, r5, r9, lsl #14
    309c:	12140000 	andsne	r0, r4, #0
    30a0:	14000004 	strne	r0, [r0], #-4
    30a4:	0000057b 	andeq	r0, r0, fp, ror r5
    30a8:	00002514 	andeq	r2, r0, r4, lsl r5
    30ac:	00251400 	eoreq	r1, r5, r0, lsl #8
    30b0:	00000000 	andeq	r0, r0, r0
    30b4:	00000909 	andeq	r0, r0, r9, lsl #18
    30b8:	0c0f0004 	stceq	0, cr0, [pc], {4}
    30bc:	01040000 	mrseq	r0, (UNDEF: 4)
    30c0:	00000cc3 	andeq	r0, r0, r3, asr #25
    30c4:	0012c701 	andseq	ip, r2, r1, lsl #14
    30c8:	00106c00 	andseq	r6, r0, r0, lsl #24
    30cc:	00004000 	andeq	r4, r0, r0
    30d0:	00000000 	andeq	r0, r0, r0
    30d4:	000a8800 	andeq	r8, sl, r0, lsl #16
    30d8:	05040200 	streq	r0, [r4, #-512]	; 0x200
    30dc:	00746e69 	rsbseq	r6, r4, r9, ror #28
    30e0:	36070403 	strcc	r0, [r7], -r3, lsl #8
    30e4:	03000000 	movweq	r0, #0
    30e8:	004b0601 	subeq	r0, fp, r1, lsl #12
    30ec:	01030000 	mrseq	r0, (UNDEF: 3)
    30f0:	00004908 	andeq	r4, r0, r8, lsl #18
    30f4:	05020300 	streq	r0, [r2, #-768]	; 0x300
    30f8:	0000019b 	muleq	r0, fp, r1
    30fc:	72070203 	andvc	r0, r7, #805306368	; 0x30000000
    3100:	03000000 	movweq	r0, #0
    3104:	01750504 	cmneq	r5, r4, lsl #10
    3108:	04030000 	streq	r0, [r3], #-0
    310c:	00003107 	andeq	r3, r0, r7, lsl #2
    3110:	05080300 	streq	r0, [r8, #-768]	; 0x300
    3114:	00000170 	andeq	r0, r0, r0, ror r1
    3118:	2c070803 	stccs	8, cr0, [r7], {3}
    311c:	04000000 	streq	r0, [r0], #-0
    3120:	00000d58 	andeq	r0, r0, r8, asr sp
    3124:	00250702 	eoreq	r0, r5, r2, lsl #14
    3128:	ae040000 	cdpge	0, 0, cr0, cr4, cr0, {0}
    312c:	03000002 	movweq	r0, #2
    3130:	00004f10 	andeq	r4, r0, r0, lsl pc
    3134:	0df40400 	cfldrdeq	mvd0, [r4]
    3138:	27030000 	strcs	r0, [r3, -r0]
    313c:	0000004f 	andeq	r0, r0, pc, asr #32
    3140:	000f3905 	andeq	r3, pc, r5, lsl #18
    3144:	01610400 	cmneq	r1, r0, lsl #8
    3148:	0000002c 	andeq	r0, r0, ip, lsr #32
    314c:	4a030406 	bmi	c416c <_stacks_size+0xc3a4c>
    3150:	000000b7 	strheq	r0, [r0], -r7
    3154:	000c5b07 	andeq	r5, ip, r7, lsl #22
    3158:	8c4c0300 	mcrrhi	3, 0, r0, ip, cr0
    315c:	07000000 	streq	r0, [r0, -r0]
    3160:	00000e34 	andeq	r0, r0, r4, lsr lr
    3164:	00b74d03 	adcseq	r4, r7, r3, lsl #26
    3168:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    316c:	0000003a 	andeq	r0, r0, sl, lsr r0
    3170:	000000c7 	andeq	r0, r0, r7, asr #1
    3174:	0000c709 	andeq	ip, r0, r9, lsl #14
    3178:	03000300 	movweq	r0, #768	; 0x300
    317c:	01670704 	cmneq	r7, r4, lsl #14
    3180:	080a0000 	stmdaeq	sl, {}	; <UNPREDICTABLE>
    3184:	00ef4703 	rsceq	r4, pc, r3, lsl #14
    3188:	070b0000 	streq	r0, [fp, -r0]
    318c:	0300000d 	movweq	r0, #13
    3190:	00002549 	andeq	r2, r0, r9, asr #10
    3194:	6a0b0000 	bvs	2c319c <_stacks_size+0x2c2a7c>
    3198:	0300000c 	movweq	r0, #12
    319c:	0000984e 	andeq	r9, r0, lr, asr #16
    31a0:	04000400 	streq	r0, [r0], #-1024	; 0x400
    31a4:	00000f72 	andeq	r0, r0, r2, ror pc
    31a8:	00ce4f03 	sbceq	r4, lr, r3, lsl #30
    31ac:	03040000 	movweq	r0, #16384	; 0x4000
    31b0:	0300000e 	movweq	r0, #14
    31b4:	00006b53 	andeq	r6, r0, r3, asr fp
    31b8:	04040c00 	streq	r0, [r4], #-3072	; 0xc00
    31bc:	00000fbc 			; <UNDEFINED> instruction: 0x00000fbc
    31c0:	00561605 	subseq	r1, r6, r5, lsl #12
    31c4:	7d0d0000 	stcvc	0, cr0, [sp, #-0]
    31c8:	1800000f 	stmdane	r0, {r0, r1, r2, r3}
    31cc:	01652d05 	cmneq	r5, r5, lsl #26
    31d0:	140b0000 	strne	r0, [fp], #-0
    31d4:	05000010 	streq	r0, [r0, #-16]
    31d8:	0001652f 	andeq	r6, r1, pc, lsr #10
    31dc:	5f0e0000 	svcpl	0x000e0000
    31e0:	3005006b 	andcc	r0, r5, fp, rrx
    31e4:	00000025 	andeq	r0, r0, r5, lsr #32
    31e8:	0f850b04 	svceq	0x00850b04
    31ec:	30050000 	andcc	r0, r5, r0
    31f0:	00000025 	andeq	r0, r0, r5, lsr #32
    31f4:	10090b08 	andne	r0, r9, r8, lsl #22
    31f8:	30050000 	andcc	r0, r5, r0
    31fc:	00000025 	andeq	r0, r0, r5, lsr #32
    3200:	0f190b0c 	svceq	0x00190b0c
    3204:	30050000 	andcc	r0, r5, r0
    3208:	00000025 	andeq	r0, r0, r5, lsr #32
    320c:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
    3210:	6b310500 	blvs	c44618 <_ram_limit+0x82c618>
    3214:	14000001 	strne	r0, [r0], #-1
    3218:	12040f00 	andne	r0, r4, #0, 30
    321c:	08000001 	stmdaeq	r0, {r0}
    3220:	00000107 	andeq	r0, r0, r7, lsl #2
    3224:	0000017b 	andeq	r0, r0, fp, ror r1
    3228:	0000c709 	andeq	ip, r0, r9, lsl #14
    322c:	0d000000 	stceq	0, cr0, [r0, #-0]
    3230:	00000f1e 	andeq	r0, r0, lr, lsl pc
    3234:	f4350524 			; <UNDEFINED> instruction: 0xf4350524
    3238:	0b000001 	bleq	3244 <_stacks_size+0x2b24>
    323c:	00000e0c 	andeq	r0, r0, ip, lsl #28
    3240:	00253705 	eoreq	r3, r5, r5, lsl #14
    3244:	0b000000 	bleq	324c <_stacks_size+0x2b2c>
    3248:	00000d85 	andeq	r0, r0, r5, lsl #27
    324c:	00253805 	eoreq	r3, r5, r5, lsl #16
    3250:	0b040000 	bleq	103258 <_stacks_size+0x102b38>
    3254:	00000e15 	andeq	r0, r0, r5, lsl lr
    3258:	00253905 	eoreq	r3, r5, r5, lsl #18
    325c:	0b080000 	bleq	203264 <_stacks_size+0x202b44>
    3260:	00000d0f 	andeq	r0, r0, pc, lsl #26
    3264:	00253a05 	eoreq	r3, r5, r5, lsl #20
    3268:	0b0c0000 	bleq	303270 <_stacks_size+0x302b50>
    326c:	00000fd2 	ldrdeq	r0, [r0], -r2
    3270:	00253b05 	eoreq	r3, r5, r5, lsl #22
    3274:	0b100000 	bleq	40327c <__malloc_current_mallinfo+0x718>
    3278:	00000f8d 	andeq	r0, r0, sp, lsl #31
    327c:	00253c05 	eoreq	r3, r5, r5, lsl #24
    3280:	0b140000 	bleq	503288 <_ram_limit+0xeb288>
    3284:	00000db9 			; <UNDEFINED> instruction: 0x00000db9
    3288:	00253d05 	eoreq	r3, r5, r5, lsl #26
    328c:	0b180000 	bleq	603294 <_ram_limit+0x1eb294>
    3290:	00000fb2 			; <UNDEFINED> instruction: 0x00000fb2
    3294:	00253e05 	eoreq	r3, r5, r5, lsl #28
    3298:	0b1c0000 	bleq	7032a0 <_ram_limit+0x2eb2a0>
    329c:	00000dd7 	ldrdeq	r0, [r0], -r7
    32a0:	00253f05 	eoreq	r3, r5, r5, lsl #30
    32a4:	00200000 	eoreq	r0, r0, r0
    32a8:	000e7510 	andeq	r7, lr, r0, lsl r5
    32ac:	05010800 	streq	r0, [r1, #-2048]	; 0x800
    32b0:	00023448 	andeq	r3, r2, r8, asr #8
    32b4:	0c830b00 	vstmiaeq	r3, {d0-d-1}
    32b8:	49050000 	stmdbmi	r5, {}	; <UNPREDICTABLE>
    32bc:	00000234 	andeq	r0, r0, r4, lsr r2
    32c0:	0ff80b00 	svceq	0x00f80b00
    32c4:	4a050000 	bmi	1432cc <_stacks_size+0x142bac>
    32c8:	00000234 	andeq	r0, r0, r4, lsr r2
    32cc:	0deb1180 	stfeqe	f1, [fp, #512]!	; 0x200
    32d0:	4c050000 	stcmi	0, cr0, [r5], {-0}
    32d4:	00000107 	andeq	r0, r0, r7, lsl #2
    32d8:	60110100 	andsvs	r0, r1, r0, lsl #2
    32dc:	0500000f 	streq	r0, [r0, #-15]
    32e0:	0001074f 	andeq	r0, r1, pc, asr #14
    32e4:	00010400 	andeq	r0, r1, r0, lsl #8
    32e8:	00010508 	andeq	r0, r1, r8, lsl #10
    32ec:	00024400 	andeq	r4, r2, r0, lsl #8
    32f0:	00c70900 	sbceq	r0, r7, r0, lsl #18
    32f4:	001f0000 	andseq	r0, pc, r0
    32f8:	000d3710 	andeq	r3, sp, r0, lsl r7
    32fc:	05019000 	streq	r9, [r1, #-0]
    3300:	0002825b 	andeq	r8, r2, fp, asr r2
    3304:	10140b00 	andsne	r0, r4, r0, lsl #22
    3308:	5c050000 	stcpl	0, cr0, [r5], {-0}
    330c:	00000282 	andeq	r0, r0, r2, lsl #5
    3310:	0fe50b00 	svceq	0x00e50b00
    3314:	5d050000 	stcpl	0, cr0, [r5, #-0]
    3318:	00000025 	andeq	r0, r0, r5, lsr #32
    331c:	0dab0b04 	stceq	11, cr0, [fp, #16]!
    3320:	5f050000 	svcpl	0x00050000
    3324:	00000288 	andeq	r0, r0, r8, lsl #5
    3328:	0e750b08 	vaddeq.f64	d16, d5, d8
    332c:	60050000 	andvs	r0, r5, r0
    3330:	000001f4 	strdeq	r0, [r0], -r4
    3334:	040f0088 	streq	r0, [pc], #-136	; 333c <_stacks_size+0x2c1c>
    3338:	00000244 	andeq	r0, r0, r4, asr #4
    333c:	00029808 	andeq	r9, r2, r8, lsl #16
    3340:	00029800 	andeq	r9, r2, r0, lsl #16
    3344:	00c70900 	sbceq	r0, r7, r0, lsl #18
    3348:	001f0000 	andseq	r0, pc, r0
    334c:	029e040f 	addseq	r0, lr, #251658240	; 0xf000000
    3350:	0d120000 	ldceq	0, cr0, [r2, #-0]
    3354:	00000c72 	andeq	r0, r0, r2, ror ip
    3358:	c4730508 	ldrbtgt	r0, [r3], #-1288	; 0x508
    335c:	0b000002 	bleq	336c <_stacks_size+0x2c4c>
    3360:	0000150f 	andeq	r1, r0, pc, lsl #10
    3364:	02c47405 	sbceq	r7, r4, #83886080	; 0x5000000
    3368:	0b000000 	bleq	3370 <_stacks_size+0x2c50>
    336c:	00001587 	andeq	r1, r0, r7, lsl #11
    3370:	00257505 	eoreq	r7, r5, r5, lsl #10
    3374:	00040000 	andeq	r0, r4, r0
    3378:	003a040f 	eorseq	r0, sl, pc, lsl #8
    337c:	530d0000 	movwpl	r0, #53248	; 0xd000
    3380:	68000010 	stmdavs	r0, {r4}
    3384:	03f4b305 	mvnseq	fp, #335544320	; 0x14000000
    3388:	5f0e0000 	svcpl	0x000e0000
    338c:	b4050070 	strlt	r0, [r5], #-112	; 0x70
    3390:	000002c4 	andeq	r0, r0, r4, asr #5
    3394:	725f0e00 	subsvc	r0, pc, #0, 28
    3398:	25b50500 	ldrcs	r0, [r5, #1280]!	; 0x500
    339c:	04000000 	streq	r0, [r0], #-0
    33a0:	00775f0e 	rsbseq	r5, r7, lr, lsl #30
    33a4:	0025b605 	eoreq	fp, r5, r5, lsl #12
    33a8:	0b080000 	bleq	2033b0 <_stacks_size+0x202c90>
    33ac:	000003c1 	andeq	r0, r0, r1, asr #7
    33b0:	0041b705 	subeq	fp, r1, r5, lsl #14
    33b4:	0b0c0000 	bleq	3033bc <_stacks_size+0x302c9c>
    33b8:	00000ef7 	strdeq	r0, [r0], -r7
    33bc:	0041b805 	subeq	fp, r1, r5, lsl #16
    33c0:	0e0e0000 	cdpeq	0, 0, cr0, cr14, cr0, {0}
    33c4:	0066625f 	rsbeq	r6, r6, pc, asr r2
    33c8:	029fb905 	addseq	fp, pc, #81920	; 0x14000
    33cc:	0b100000 	bleq	4033d4 <__malloc_current_mallinfo+0x870>
    33d0:	00000c61 	andeq	r0, r0, r1, ror #24
    33d4:	0025ba05 	eoreq	fp, r5, r5, lsl #20
    33d8:	0b180000 	bleq	6033e0 <_ram_limit+0x1eb3e0>
    33dc:	00000eef 	andeq	r0, r0, pc, ror #29
    33e0:	0105c105 	tsteq	r5, r5, lsl #2
    33e4:	0b1c0000 	bleq	7033ec <_ram_limit+0x2eb3ec>
    33e8:	00000e1f 	andeq	r0, r0, pc, lsl lr
    33ec:	0557c305 	ldrbeq	ip, [r7, #-773]	; 0x305
    33f0:	0b200000 	bleq	8033f8 <_ram_limit+0x3eb3f8>
    33f4:	00000cad 	andeq	r0, r0, sp, lsr #25
    33f8:	0586c505 	streq	ip, [r6, #1285]	; 0x505
    33fc:	0b240000 	bleq	903404 <_ram_limit+0x4eb404>
    3400:	00000fc4 	andeq	r0, r0, r4, asr #31
    3404:	05aac805 	streq	ip, [sl, #2053]!	; 0x805
    3408:	0b280000 	bleq	a03410 <_ram_limit+0x5eb410>
    340c:	00000dfc 	strdeq	r0, [r0], -ip
    3410:	05c4c905 	strbeq	ip, [r4, #2309]	; 0x905
    3414:	0e2c0000 	cdpeq	0, 2, cr0, cr12, cr0, {0}
    3418:	0062755f 	rsbeq	r7, r2, pc, asr r5
    341c:	029fcc05 	addseq	ip, pc, #1280	; 0x500
    3420:	0e300000 	cdpeq	0, 3, cr0, cr0, cr0, {0}
    3424:	0070755f 	rsbseq	r7, r0, pc, asr r5
    3428:	02c4cd05 	sbceq	ip, r4, #320	; 0x140
    342c:	0e380000 	cdpeq	0, 3, cr0, cr8, cr0, {0}
    3430:	0072755f 	rsbseq	r7, r2, pc, asr r5
    3434:	0025ce05 	eoreq	ip, r5, r5, lsl #28
    3438:	0b3c0000 	bleq	f03440 <_ram_limit+0xaeb440>
    343c:	00001040 	andeq	r1, r0, r0, asr #32
    3440:	05cad105 	strbeq	sp, [sl, #261]	; 0x105
    3444:	0b400000 	bleq	100344c <_ram_limit+0xbeb44c>
    3448:	00000d52 	andeq	r0, r0, r2, asr sp
    344c:	05dad205 	ldrbeq	sp, [sl, #517]	; 0x205
    3450:	0e430000 	cdpeq	0, 4, cr0, cr3, cr0, {0}
    3454:	00626c5f 	rsbeq	r6, r2, pc, asr ip
    3458:	029fd505 	addseq	sp, pc, #20971520	; 0x1400000
    345c:	0b440000 	bleq	1103464 <_ram_limit+0xceb464>
    3460:	000002ee 	andeq	r0, r0, lr, ror #5
    3464:	0025d805 	eoreq	sp, r5, r5, lsl #16
    3468:	0b4c0000 	bleq	1303470 <_ram_limit+0xeeb470>
    346c:	00000c3c 	andeq	r0, r0, ip, lsr ip
    3470:	0076d905 	rsbseq	sp, r6, r5, lsl #18
    3474:	0b500000 	bleq	140347c <_ram_limit+0xfeb47c>
    3478:	00001066 	andeq	r1, r0, r6, rrx
    347c:	0412dc05 	ldreq	sp, [r2], #-3077	; 0xc05
    3480:	0b540000 	bleq	1503488 <_ram_limit+0x10eb488>
    3484:	00001407 	andeq	r1, r0, r7, lsl #8
    3488:	00fae005 	rscseq	lr, sl, r5
    348c:	0b580000 	bleq	1603494 <_ram_limit+0x11eb494>
    3490:	00000db0 			; <UNDEFINED> instruction: 0x00000db0
    3494:	00efe205 	rsceq	lr, pc, r5, lsl #4
    3498:	0b5c0000 	bleq	17034a0 <_ram_limit+0x12eb4a0>
    349c:	00000dc3 	andeq	r0, r0, r3, asr #27
    34a0:	0025e305 	eoreq	lr, r5, r5, lsl #6
    34a4:	00640000 	rsbeq	r0, r4, r0
    34a8:	00002513 	andeq	r2, r0, r3, lsl r5
    34ac:	00041200 	andeq	r1, r4, r0, lsl #4
    34b0:	04121400 	ldreq	r1, [r2], #-1024	; 0x400
    34b4:	05140000 	ldreq	r0, [r4, #-0]
    34b8:	14000001 	strne	r0, [r0], #-1
    34bc:	0000054a 	andeq	r0, r0, sl, asr #10
    34c0:	00002514 	andeq	r2, r0, r4, lsl r5
    34c4:	040f0000 	streq	r0, [pc], #-0	; 34cc <_stacks_size+0x2dac>
    34c8:	00000418 	andeq	r0, r0, r8, lsl r4
    34cc:	00134c15 	andseq	r4, r3, r5, lsl ip
    34d0:	05042800 	streq	r2, [r4, #-2048]	; 0x800
    34d4:	054a0239 	strbeq	r0, [sl, #-569]	; 0x239
    34d8:	2a160000 	bcs	5834e0 <_ram_limit+0x16b4e0>
    34dc:	0500000c 	streq	r0, [r0, #-12]
    34e0:	0025023b 	eoreq	r0, r5, fp, lsr r2
    34e4:	16000000 	strne	r0, [r0], -r0
    34e8:	0000101a 	andeq	r1, r0, sl, lsl r0
    34ec:	31024005 	tstcc	r2, r5
    34f0:	04000006 	streq	r0, [r0], #-6
    34f4:	000d2f16 	andeq	r2, sp, r6, lsl pc
    34f8:	02400500 	subeq	r0, r0, #0, 10
    34fc:	00000631 	andeq	r0, r0, r1, lsr r6
    3500:	0e2c1608 	cfmadda32eq	mvax0, mvax1, mvfx12, mvfx8
    3504:	40050000 	andmi	r0, r5, r0
    3508:	00063102 	andeq	r3, r6, r2, lsl #2
    350c:	e0160c00 	ands	r0, r6, r0, lsl #24
    3510:	0500000f 	streq	r0, [r0, #-15]
    3514:	00250242 	eoreq	r0, r5, r2, asr #4
    3518:	16100000 	ldrne	r0, [r0], -r0
    351c:	00000d3f 	andeq	r0, r0, pc, lsr sp
    3520:	13024305 	movwne	r4, #8965	; 0x2305
    3524:	14000008 	strne	r0, [r0], #-8
    3528:	000f4e16 	andeq	r4, pc, r6, lsl lr	; <UNPREDICTABLE>
    352c:	02450500 	subeq	r0, r5, #0, 10
    3530:	00000025 	andeq	r0, r0, r5, lsr #32
    3534:	10211630 	eorne	r1, r1, r0, lsr r6
    3538:	46050000 	strmi	r0, [r5], -r0
    353c:	00057b02 	andeq	r7, r5, r2, lsl #22
    3540:	31163400 	tstcc	r6, r0, lsl #8
    3544:	0500000c 	streq	r0, [r0, #-12]
    3548:	00250248 	eoreq	r0, r5, r8, asr #4
    354c:	16380000 	ldrtne	r0, [r8], -r0
    3550:	00000f68 	andeq	r0, r0, r8, ror #30
    3554:	2e024a05 	vmlacs.f32	s8, s4, s10
    3558:	3c000008 	stccc	0, cr0, [r0], {8}
    355c:	000fca16 	andeq	ip, pc, r6, lsl sl	; <UNPREDICTABLE>
    3560:	024d0500 	subeq	r0, sp, #0, 10
    3564:	00000165 	andeq	r0, r0, r5, ror #2
    3568:	0c791640 	ldcleq	6, cr1, [r9], #-256	; 0xffffff00
    356c:	4e050000 	cdpmi	0, 0, cr0, cr5, cr0, {0}
    3570:	00002502 	andeq	r2, r0, r2, lsl #10
    3574:	04164400 	ldreq	r4, [r6], #-1024	; 0x400
    3578:	05000010 	streq	r0, [r0, #-16]
    357c:	0165024f 	cmneq	r5, pc, asr #4
    3580:	16480000 	strbne	r0, [r8], -r0
    3584:	00000da1 	andeq	r0, r0, r1, lsr #27
    3588:	34025005 	strcc	r5, [r2], #-5
    358c:	4c000008 	stcmi	0, cr0, [r0], {8}
    3590:	000d4a16 	andeq	r4, sp, r6, lsl sl
    3594:	02530500 	subseq	r0, r3, #0, 10
    3598:	00000025 	andeq	r0, r0, r5, lsr #32
    359c:	0ee71650 	mcreq	6, 7, r1, cr7, cr0, {2}
    35a0:	54050000 	strpl	r0, [r5], #-0
    35a4:	00054a02 	andeq	r4, r5, r2, lsl #20
    35a8:	5b165400 	blpl	5985b0 <_ram_limit+0x1805b0>
    35ac:	05000010 	streq	r0, [r0, #-16]
    35b0:	07f10277 			; <UNDEFINED> instruction: 0x07f10277
    35b4:	17580000 	ldrbne	r0, [r8, -r0]
    35b8:	00000d37 	andeq	r0, r0, r7, lsr sp
    35bc:	82027b05 	andhi	r7, r2, #5120	; 0x1400
    35c0:	48000002 	stmdami	r0, {r1}
    35c4:	0de21701 	stcleq	7, cr1, [r2, #4]!
    35c8:	7c050000 	stcvc	0, cr0, [r5], {-0}
    35cc:	00024402 	andeq	r4, r2, r2, lsl #8
    35d0:	17014c00 	strne	r4, [r1, -r0, lsl #24]
    35d4:	00000d8e 	andeq	r0, r0, lr, lsl #27
    35d8:	45028005 	strmi	r8, [r2, #-5]
    35dc:	dc000008 	stcle	0, cr0, [r0], {8}
    35e0:	0e6d1702 	cdpeq	7, 6, cr1, cr13, cr2, {0}
    35e4:	85050000 	strhi	r0, [r5, #-0]
    35e8:	0005f602 	andeq	pc, r5, r2, lsl #12
    35ec:	1702e000 	strne	lr, [r2, -r0]
    35f0:	00000c8b 	andeq	r0, r0, fp, lsl #25
    35f4:	51028605 	tstpl	r2, r5, lsl #12
    35f8:	ec000008 	stc	0, cr0, [r0], {8}
    35fc:	040f0002 	streq	r0, [pc], #-2	; 3604 <_stacks_size+0x2ee4>
    3600:	00000550 	andeq	r0, r0, r0, asr r5
    3604:	52080103 	andpl	r0, r8, #-1073741824	; 0xc0000000
    3608:	0f000000 	svceq	0x00000000
    360c:	0003f404 	andeq	pc, r3, r4, lsl #8
    3610:	00251300 	eoreq	r1, r5, r0, lsl #6
    3614:	057b0000 	ldrbeq	r0, [fp, #-0]!
    3618:	12140000 	andsne	r0, r4, #0
    361c:	14000004 	strne	r0, [r0], #-4
    3620:	00000105 	andeq	r0, r0, r5, lsl #2
    3624:	00057b14 	andeq	r7, r5, r4, lsl fp
    3628:	00251400 	eoreq	r1, r5, r0, lsl #8
    362c:	0f000000 	svceq	0x00000000
    3630:	00058104 	andeq	r8, r5, r4, lsl #2
    3634:	05501800 	ldrbeq	r1, [r0, #-2048]	; 0x800
    3638:	040f0000 	streq	r0, [pc], #-0	; 3640 <_stacks_size+0x2f20>
    363c:	0000055d 	andeq	r0, r0, sp, asr r5
    3640:	00008113 	andeq	r8, r0, r3, lsl r1
    3644:	0005aa00 	andeq	sl, r5, r0, lsl #20
    3648:	04121400 	ldreq	r1, [r2], #-1024	; 0x400
    364c:	05140000 	ldreq	r0, [r4, #-0]
    3650:	14000001 	strne	r0, [r0], #-1
    3654:	00000081 	andeq	r0, r0, r1, lsl #1
    3658:	00002514 	andeq	r2, r0, r4, lsl r5
    365c:	040f0000 	streq	r0, [pc], #-0	; 3664 <_stacks_size+0x2f44>
    3660:	0000058c 	andeq	r0, r0, ip, lsl #11
    3664:	00002513 	andeq	r2, r0, r3, lsl r5
    3668:	0005c400 	andeq	ip, r5, r0, lsl #8
    366c:	04121400 	ldreq	r1, [r2], #-1024	; 0x400
    3670:	05140000 	ldreq	r0, [r4, #-0]
    3674:	00000001 	andeq	r0, r0, r1
    3678:	05b0040f 	ldreq	r0, [r0, #1039]!	; 0x40f
    367c:	3a080000 	bcc	203684 <_stacks_size+0x202f64>
    3680:	da000000 	ble	3688 <_stacks_size+0x2f68>
    3684:	09000005 	stmdbeq	r0, {r0, r2}
    3688:	000000c7 	andeq	r0, r0, r7, asr #1
    368c:	3a080002 	bcc	20369c <_stacks_size+0x202f7c>
    3690:	ea000000 	b	3698 <_stacks_size+0x2f78>
    3694:	09000005 	stmdbeq	r0, {r0, r2}
    3698:	000000c7 	andeq	r0, r0, r7, asr #1
    369c:	71050000 	mrsvc	r0, (UNDEF: 5)
    36a0:	0500000d 	streq	r0, [r0, #-13]
    36a4:	02ca011d 	sbceq	r0, sl, #1073741831	; 0x40000007
    36a8:	05190000 	ldreq	r0, [r9, #-0]
    36ac:	0c000013 	stceq	0, cr0, [r0], {19}
    36b0:	2b012105 	blcs	4bacc <_stacks_size+0x4b3ac>
    36b4:	16000006 	strne	r0, [r0], -r6
    36b8:	00001014 	andeq	r1, r0, r4, lsl r0
    36bc:	2b012305 	blcs	4c2d8 <_stacks_size+0x4bbb8>
    36c0:	00000006 	andeq	r0, r0, r6
    36c4:	000d6a16 	andeq	r6, sp, r6, lsl sl
    36c8:	01240500 	teqeq	r4, r0, lsl #10
    36cc:	00000025 	andeq	r0, r0, r5, lsr #32
    36d0:	0dcb1604 	stcleq	6, cr1, [fp, #16]
    36d4:	25050000 	strcs	r0, [r5, #-0]
    36d8:	00063101 	andeq	r3, r6, r1, lsl #2
    36dc:	0f000800 	svceq	0x00000800
    36e0:	0005f604 	andeq	pc, r5, r4, lsl #12
    36e4:	ea040f00 	b	1072ec <_stacks_size+0x106bcc>
    36e8:	19000005 	stmdbne	r0, {r0, r2}
    36ec:	00000faa 	andeq	r0, r0, sl, lsr #31
    36f0:	013d050e 	teqeq	sp, lr, lsl #10
    36f4:	0000066c 	andeq	r0, r0, ip, ror #12
    36f8:	000fa416 	andeq	sl, pc, r6, lsl r4	; <UNPREDICTABLE>
    36fc:	013e0500 	teqeq	lr, r0, lsl #10
    3700:	0000066c 	andeq	r0, r0, ip, ror #12
    3704:	0dd11600 	ldcleq	6, cr1, [r1]
    3708:	3f050000 	svccc	0x00050000
    370c:	00066c01 	andeq	r6, r6, r1, lsl #24
    3710:	db160600 	blle	584f18 <_ram_limit+0x16cf18>
    3714:	0500000f 	streq	r0, [r0, #-15]
    3718:	00480140 	subeq	r0, r8, r0, asr #2
    371c:	000c0000 	andeq	r0, ip, r0
    3720:	00004808 	andeq	r4, r0, r8, lsl #16
    3724:	00067c00 	andeq	r7, r6, r0, lsl #24
    3728:	00c70900 	sbceq	r0, r7, r0, lsl #18
    372c:	00020000 	andeq	r0, r2, r0
    3730:	5805d01a 	stmdapl	r5, {r1, r3, r4, ip, lr, pc}
    3734:	00077d02 	andeq	r7, r7, r2, lsl #26
    3738:	0f0c1600 	svceq	0x000c1600
    373c:	5a050000 	bpl	143744 <_stacks_size+0x143024>
    3740:	00002c02 	andeq	r2, r0, r2, lsl #24
    3744:	97160000 	ldrls	r0, [r6, -r0]
    3748:	0500000f 	streq	r0, [r0, #-15]
    374c:	054a025b 	strbeq	r0, [sl, #-603]	; 0x25b
    3750:	16040000 	strne	r0, [r4], -r0
    3754:	00001046 	andeq	r1, r0, r6, asr #32
    3758:	7d025c05 	stcvc	12, cr5, [r2, #-20]	; 0xffffffec
    375c:	08000007 	stmdaeq	r0, {r0, r1, r2}
    3760:	000cb416 	andeq	fp, ip, r6, lsl r4
    3764:	025d0500 	subseq	r0, sp, #0, 10
    3768:	0000017b 	andeq	r0, r0, fp, ror r1
    376c:	0efd1624 	cdpeq	6, 15, cr1, cr13, cr4, {1}
    3770:	5e050000 	cdppl	0, 0, cr0, cr5, cr0, {0}
    3774:	00002502 	andeq	r2, r0, r2, lsl #10
    3778:	0f164800 	svceq	0x00164800
    377c:	05000010 	streq	r0, [r0, #-16]
    3780:	0064025f 	rsbeq	r0, r4, pc, asr r2
    3784:	16500000 	ldrbne	r0, [r0], -r0
    3788:	00000d2a 	andeq	r0, r0, sl, lsr #26
    378c:	37026005 	strcc	r6, [r2, -r5]
    3790:	58000006 	stmdapl	r0, {r1, r2}
    3794:	000c4416 	andeq	r4, ip, r6, lsl r4
    3798:	02610500 	rsbeq	r0, r1, #0, 10
    379c:	000000ef 	andeq	r0, r0, pc, ror #1
    37a0:	0f2b1668 	svceq	0x002b1668
    37a4:	62050000 	andvs	r0, r5, #0
    37a8:	0000ef02 	andeq	lr, r0, r2, lsl #30
    37ac:	ea167000 	b	59f7b4 <_ram_limit+0x1877b4>
    37b0:	0500000f 	streq	r0, [r0, #-15]
    37b4:	00ef0263 	rsceq	r0, pc, r3, ror #4
    37b8:	16780000 	ldrbtne	r0, [r8], -r0
    37bc:	00000c51 	andeq	r0, r0, r1, asr ip
    37c0:	8d026405 	cfstrshi	mvf6, [r2, #-20]	; 0xffffffec
    37c4:	80000007 	andhi	r0, r0, r7
    37c8:	000c9016 	andeq	r9, ip, r6, lsl r0
    37cc:	02650500 	rsbeq	r0, r5, #0, 10
    37d0:	0000079d 	muleq	r0, sp, r7
    37d4:	0d781688 	ldcleq	6, cr1, [r8, #-544]!	; 0xfffffde0
    37d8:	66050000 	strvs	r0, [r5], -r0
    37dc:	00002502 	andeq	r2, r0, r2, lsl #10
    37e0:	4016a000 	andsmi	sl, r6, r0
    37e4:	0500000f 	streq	r0, [r0, #-15]
    37e8:	00ef0267 	rsceq	r0, pc, r7, ror #4
    37ec:	16a40000 	strtne	r0, [r4], r0
    37f0:	00000e83 	andeq	r0, r0, r3, lsl #29
    37f4:	ef026805 	svc	0x00026805
    37f8:	ac000000 	stcge	0, cr0, [r0], {-0}
    37fc:	000d1916 	andeq	r1, sp, r6, lsl r9
    3800:	02690500 	rsbeq	r0, r9, #0, 10
    3804:	000000ef 	andeq	r0, r0, pc, ror #1
    3808:	103116b4 	ldrhtne	r1, [r1], -r4
    380c:	6a050000 	bvs	143814 <_stacks_size+0x1430f4>
    3810:	0000ef02 	andeq	lr, r0, r2, lsl #30
    3814:	9c16bc00 	ldcls	12, cr11, [r6], {-0}
    3818:	0500000c 	streq	r0, [r0, #-12]
    381c:	00ef026b 	rsceq	r0, pc, fp, ror #4
    3820:	16c40000 	strbne	r0, [r4], r0
    3824:	00000e64 	andeq	r0, r0, r4, ror #28
    3828:	25026c05 	strcs	r6, [r2, #-3077]	; 0xc05
    382c:	cc000000 	stcgt	0, cr0, [r0], {-0}
    3830:	05500800 	ldrbeq	r0, [r0, #-2048]	; 0x800
    3834:	078d0000 	streq	r0, [sp, r0]
    3838:	c7090000 	strgt	r0, [r9, -r0]
    383c:	19000000 	stmdbne	r0, {}	; <UNPREDICTABLE>
    3840:	05500800 	ldrbeq	r0, [r0, #-2048]	; 0x800
    3844:	079d0000 	ldreq	r0, [sp, r0]
    3848:	c7090000 	strgt	r0, [r9, -r0]
    384c:	07000000 	streq	r0, [r0, -r0]
    3850:	05500800 	ldrbeq	r0, [r0, #-2048]	; 0x800
    3854:	07ad0000 	streq	r0, [sp, r0]!
    3858:	c7090000 	strgt	r0, [r9, -r0]
    385c:	17000000 	strne	r0, [r0, -r0]
    3860:	05f01a00 	ldrbeq	r1, [r0, #2560]!	; 0xa00
    3864:	07d10271 			; <UNDEFINED> instruction: 0x07d10271
    3868:	25160000 	ldrcs	r0, [r6, #-0]
    386c:	0500000e 	streq	r0, [r0, #-14]
    3870:	07d10274 			; <UNDEFINED> instruction: 0x07d10274
    3874:	16000000 	strne	r0, [r0], -r0
    3878:	00000d98 	muleq	r0, r8, sp
    387c:	e1027505 	tst	r2, r5, lsl #10
    3880:	78000007 	stmdavc	r0, {r0, r1, r2}
    3884:	02c40800 	sbceq	r0, r4, #0, 16
    3888:	07e10000 	strbeq	r0, [r1, r0]!
    388c:	c7090000 	strgt	r0, [r9, -r0]
    3890:	1d000000 	stcne	0, cr0, [r0, #-0]
    3894:	002c0800 	eoreq	r0, ip, r0, lsl #16
    3898:	07f10000 	ldrbeq	r0, [r1, r0]!
    389c:	c7090000 	strgt	r0, [r9, -r0]
    38a0:	1d000000 	stcne	0, cr0, [r0, #-0]
    38a4:	05f01b00 	ldrbeq	r1, [r0, #2816]!	; 0xb00
    38a8:	08130256 	ldmdaeq	r3, {r1, r2, r4, r6, r9}
    38ac:	4c1c0000 	ldcmi	0, cr0, [ip], {-0}
    38b0:	05000013 	streq	r0, [r0, #-19]
    38b4:	067c026d 	ldrbteq	r0, [ip], -sp, ror #4
    38b8:	231c0000 	tstcs	ip, #0
    38bc:	0500000f 	streq	r0, [r0, #-15]
    38c0:	07ad0276 			; <UNDEFINED> instruction: 0x07ad0276
    38c4:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    38c8:	00000550 	andeq	r0, r0, r0, asr r5
    38cc:	00000823 	andeq	r0, r0, r3, lsr #16
    38d0:	0000c709 	andeq	ip, r0, r9, lsl #14
    38d4:	1d001800 	stcne	8, cr1, [r0, #-0]
    38d8:	0000082e 	andeq	r0, r0, lr, lsr #16
    38dc:	00041214 	andeq	r1, r4, r4, lsl r2
    38e0:	040f0000 	streq	r0, [pc], #-0	; 38e8 <_stacks_size+0x31c8>
    38e4:	00000823 	andeq	r0, r0, r3, lsr #16
    38e8:	0165040f 	cmneq	r5, pc, lsl #8
    38ec:	451d0000 	ldrmi	r0, [sp, #-0]
    38f0:	14000008 	strne	r0, [r0], #-8
    38f4:	00000025 	andeq	r0, r0, r5, lsr #32
    38f8:	4b040f00 	blmi	107500 <_stacks_size+0x106de0>
    38fc:	0f000008 	svceq	0x00000008
    3900:	00083a04 	andeq	r3, r8, r4, lsl #20
    3904:	05ea0800 	strbeq	r0, [sl, #2048]!	; 0x800
    3908:	08610000 	stmdaeq	r1!, {}^	; <UNPREDICTABLE>
    390c:	c7090000 	strgt	r0, [r9, -r0]
    3910:	02000000 	andeq	r0, r0, #0
    3914:	12ba1e00 	adcsne	r1, sl, #0, 28
    3918:	97060000 	strls	r0, [r6, -r0]
    391c:	00000025 	andeq	r0, r0, r5, lsr #32
    3920:	00401028 	subeq	r1, r0, r8, lsr #32
    3924:	00000044 	andeq	r0, r0, r4, asr #32
    3928:	08f49c01 	ldmeq	r4!, {r0, sl, fp, ip, pc}^
    392c:	701f0000 	andsvc	r0, pc, r0
    3930:	01007274 	tsteq	r0, r4, ror r2
    3934:	00041232 	andeq	r1, r4, r2, lsr r2
    3938:	00013000 	andeq	r3, r1, r0
    393c:	0ef82000 	cdpeq	0, 15, cr2, cr8, cr0, {0}
    3940:	32010000 	andcc	r0, r1, #0
    3944:	0000057b 	andeq	r0, r0, fp, ror r5
    3948:	0000015c 	andeq	r0, r0, ip, asr r1
    394c:	0003c220 	andeq	ip, r3, r0, lsr #4
    3950:	25320100 	ldrcs	r0, [r2, #-256]!	; 0x100
    3954:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
    3958:	20000001 	andcs	r0, r0, r1
    395c:	00000404 	andeq	r0, r0, r4, lsl #8
    3960:	00253201 	eoreq	r3, r5, r1, lsl #4
    3964:	01b40000 			; <UNDEFINED> instruction: 0x01b40000
    3968:	72210000 	eorvc	r0, r1, #0
    396c:	01007465 	tsteq	r0, r5, ror #8
    3970:	00002538 	andeq	r2, r0, r8, lsr r5
    3974:	22500100 	subscs	r0, r0, #0, 2
    3978:	000012f0 	strdeq	r1, [r0], -r0
    397c:	00253b01 	eoreq	r3, r5, r1, lsl #22
    3980:	08d40000 	ldmeq	r4, {}^	; <UNPREDICTABLE>
    3984:	00230000 	eoreq	r0, r3, r0
    3988:	40104c24 	andsmi	r4, r0, r4, lsr #24
    398c:	0008ff00 	andeq	pc, r8, r0, lsl #30
    3990:	52012500 	andpl	r2, r1, #0, 10
    3994:	5301f303 	movwpl	pc, #4867	; 0x1303	; <UNPREDICTABLE>
    3998:	03510125 	cmpeq	r1, #1073741833	; 0x40000009
    399c:	255201f3 	ldrbcs	r0, [r2, #-499]	; 0x1f3
    39a0:	f3035001 	vhadd.u8	d5, d3, d1
    39a4:	00005101 	andeq	r5, r0, r1, lsl #2
    39a8:	000ee126 	andeq	lr, lr, r6, lsr #2
    39ac:	25150100 	ldrcs	r0, [r5, #-256]	; 0x100
    39b0:	27000000 	strcs	r0, [r0, -r0]
    39b4:	000012f0 	strdeq	r1, [r0], -r0
    39b8:	00253b01 	eoreq	r3, r5, r1, lsl #22
    39bc:	00230000 	eoreq	r0, r3, r0
    39c0:	0009f500 	andeq	pc, r9, r0, lsl #10
    39c4:	0d000400 	cfstrseq	mvf0, [r0, #-0]
    39c8:	0400000e 	streq	r0, [r0], #-14
    39cc:	000cc301 	andeq	ip, ip, r1, lsl #6
    39d0:	130b0100 	movwne	r0, #45312	; 0xb100
    39d4:	106c0000 	rsbne	r0, ip, r0
    39d8:	00680000 	rsbeq	r0, r8, r0
    39dc:	00000000 	andeq	r0, r0, r0
    39e0:	0bdb0000 	bleq	ff6c39e8 <_STACK_FILLER+0x20be7af9>
    39e4:	04020000 	streq	r0, [r2], #-0
    39e8:	00003607 	andeq	r3, r0, r7, lsl #12
    39ec:	05040300 	streq	r0, [r4, #-768]	; 0x300
    39f0:	00746e69 	rsbseq	r6, r4, r9, ror #28
    39f4:	4b060102 	blmi	183e04 <_stacks_size+0x1836e4>
    39f8:	02000000 	andeq	r0, r0, #0
    39fc:	00490801 	subeq	r0, r9, r1, lsl #16
    3a00:	02020000 	andeq	r0, r2, #0
    3a04:	00019b05 	andeq	r9, r1, r5, lsl #22
    3a08:	07020200 	streq	r0, [r2, -r0, lsl #4]
    3a0c:	00000072 	andeq	r0, r0, r2, ror r0
    3a10:	75050402 	strvc	r0, [r5, #-1026]	; 0x402
    3a14:	02000001 	andeq	r0, r0, #1
    3a18:	00310704 	eorseq	r0, r1, r4, lsl #14
    3a1c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    3a20:	00017005 	andeq	r7, r1, r5
    3a24:	07080200 	streq	r0, [r8, -r0, lsl #4]
    3a28:	0000002c 	andeq	r0, r0, ip, lsr #32
    3a2c:	000d5804 	andeq	r5, sp, r4, lsl #16
    3a30:	2c070200 	sfmcs	f0, 4, [r7], {-0}
    3a34:	04000000 	streq	r0, [r0], #-0
    3a38:	000002ae 	andeq	r0, r0, lr, lsr #5
    3a3c:	004f1003 	subeq	r1, pc, r3
    3a40:	f4040000 	vst4.8	{d0-d3}, [r4], r0
    3a44:	0300000d 	movweq	r0, #13
    3a48:	00004f27 	andeq	r4, r0, r7, lsr #30
    3a4c:	0f390500 	svceq	0x00390500
    3a50:	61040000 	mrsvs	r0, (UNDEF: 4)
    3a54:	00002501 	andeq	r2, r0, r1, lsl #10
    3a58:	03040600 	movweq	r0, #17920	; 0x4600
    3a5c:	0000b74a 	andeq	fp, r0, sl, asr #14
    3a60:	0c5b0700 	mrrceq	7, 0, r0, fp, cr0
    3a64:	4c030000 	stcmi	0, cr0, [r3], {-0}
    3a68:	0000008c 	andeq	r0, r0, ip, lsl #1
    3a6c:	000e3407 	andeq	r3, lr, r7, lsl #8
    3a70:	b74d0300 	strblt	r0, [sp, -r0, lsl #6]
    3a74:	00000000 	andeq	r0, r0, r0
    3a78:	00003a08 	andeq	r3, r0, r8, lsl #20
    3a7c:	0000c700 	andeq	ip, r0, r0, lsl #14
    3a80:	00c70900 	sbceq	r0, r7, r0, lsl #18
    3a84:	00030000 	andeq	r0, r3, r0
    3a88:	67070402 	strvs	r0, [r7, -r2, lsl #8]
    3a8c:	0a000001 	beq	3a98 <_stacks_size+0x3378>
    3a90:	ef470308 	svc	0x00470308
    3a94:	0b000000 	bleq	3a9c <_stacks_size+0x337c>
    3a98:	00000d07 	andeq	r0, r0, r7, lsl #26
    3a9c:	002c4903 	eoreq	r4, ip, r3, lsl #18
    3aa0:	0b000000 	bleq	3aa8 <_stacks_size+0x3388>
    3aa4:	00000c6a 	andeq	r0, r0, sl, ror #24
    3aa8:	00984e03 	addseq	r4, r8, r3, lsl #28
    3aac:	00040000 	andeq	r0, r4, r0
    3ab0:	000f7204 	andeq	r7, pc, r4, lsl #4
    3ab4:	ce4f0300 	cdpgt	3, 4, cr0, cr15, cr0, {0}
    3ab8:	04000000 	streq	r0, [r0], #-0
    3abc:	00000e03 	andeq	r0, r0, r3, lsl #28
    3ac0:	006b5303 	rsbeq	r5, fp, r3, lsl #6
    3ac4:	040c0000 	streq	r0, [ip], #-0
    3ac8:	000fbc04 	andeq	fp, pc, r4, lsl #24
    3acc:	56160500 	ldrpl	r0, [r6], -r0, lsl #10
    3ad0:	0d000000 	stceq	0, cr0, [r0, #-0]
    3ad4:	00000f7d 	andeq	r0, r0, sp, ror pc
    3ad8:	652d0518 	strvs	r0, [sp, #-1304]!	; 0x518
    3adc:	0b000001 	bleq	3ae8 <_stacks_size+0x33c8>
    3ae0:	00001014 	andeq	r1, r0, r4, lsl r0
    3ae4:	01652f05 	cmneq	r5, r5, lsl #30
    3ae8:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    3aec:	05006b5f 	streq	r6, [r0, #-2911]	; 0xb5f
    3af0:	00002c30 	andeq	r2, r0, r0, lsr ip
    3af4:	850b0400 	strhi	r0, [fp, #-1024]	; 0x400
    3af8:	0500000f 	streq	r0, [r0, #-15]
    3afc:	00002c30 	andeq	r2, r0, r0, lsr ip
    3b00:	090b0800 	stmdbeq	fp, {fp}
    3b04:	05000010 	streq	r0, [r0, #-16]
    3b08:	00002c30 	andeq	r2, r0, r0, lsr ip
    3b0c:	190b0c00 	stmdbne	fp, {sl, fp}
    3b10:	0500000f 	streq	r0, [r0, #-15]
    3b14:	00002c30 	andeq	r2, r0, r0, lsr ip
    3b18:	5f0e1000 	svcpl	0x000e1000
    3b1c:	31050078 	tstcc	r5, r8, ror r0
    3b20:	0000016b 	andeq	r0, r0, fp, ror #2
    3b24:	040f0014 	streq	r0, [pc], #-20	; 3b2c <_stacks_size+0x340c>
    3b28:	00000112 	andeq	r0, r0, r2, lsl r1
    3b2c:	00010708 	andeq	r0, r1, r8, lsl #14
    3b30:	00017b00 	andeq	r7, r1, r0, lsl #22
    3b34:	00c70900 	sbceq	r0, r7, r0, lsl #18
    3b38:	00000000 	andeq	r0, r0, r0
    3b3c:	000f1e0d 	andeq	r1, pc, sp, lsl #28
    3b40:	35052400 	strcc	r2, [r5, #-1024]	; 0x400
    3b44:	000001f4 	strdeq	r0, [r0], -r4
    3b48:	000e0c0b 	andeq	r0, lr, fp, lsl #24
    3b4c:	2c370500 	cfldr32cs	mvfx0, [r7], #-0
    3b50:	00000000 	andeq	r0, r0, r0
    3b54:	000d850b 	andeq	r8, sp, fp, lsl #10
    3b58:	2c380500 	cfldr32cs	mvfx0, [r8], #-0
    3b5c:	04000000 	streq	r0, [r0], #-0
    3b60:	000e150b 	andeq	r1, lr, fp, lsl #10
    3b64:	2c390500 	cfldr32cs	mvfx0, [r9], #-0
    3b68:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    3b6c:	000d0f0b 	andeq	r0, sp, fp, lsl #30
    3b70:	2c3a0500 	cfldr32cs	mvfx0, [sl], #-0
    3b74:	0c000000 	stceq	0, cr0, [r0], {-0}
    3b78:	000fd20b 	andeq	sp, pc, fp, lsl #4
    3b7c:	2c3b0500 	cfldr32cs	mvfx0, [fp], #-0
    3b80:	10000000 	andne	r0, r0, r0
    3b84:	000f8d0b 	andeq	r8, pc, fp, lsl #26
    3b88:	2c3c0500 	cfldr32cs	mvfx0, [ip], #-0
    3b8c:	14000000 	strne	r0, [r0], #-0
    3b90:	000db90b 	andeq	fp, sp, fp, lsl #18
    3b94:	2c3d0500 	cfldr32cs	mvfx0, [sp], #-0
    3b98:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    3b9c:	000fb20b 	andeq	fp, pc, fp, lsl #4
    3ba0:	2c3e0500 	cfldr32cs	mvfx0, [lr], #-0
    3ba4:	1c000000 	stcne	0, cr0, [r0], {-0}
    3ba8:	000dd70b 	andeq	sp, sp, fp, lsl #14
    3bac:	2c3f0500 	cfldr32cs	mvfx0, [pc], #-0	; 3bb4 <_stacks_size+0x3494>
    3bb0:	20000000 	andcs	r0, r0, r0
    3bb4:	0e751000 	cdpeq	0, 7, cr1, cr5, cr0, {0}
    3bb8:	01080000 	mrseq	r0, (UNDEF: 8)
    3bbc:	02344805 	eorseq	r4, r4, #327680	; 0x50000
    3bc0:	830b0000 	movwhi	r0, #45056	; 0xb000
    3bc4:	0500000c 	streq	r0, [r0, #-12]
    3bc8:	00023449 	andeq	r3, r2, r9, asr #8
    3bcc:	f80b0000 			; <UNDEFINED> instruction: 0xf80b0000
    3bd0:	0500000f 	streq	r0, [r0, #-15]
    3bd4:	0002344a 	andeq	r3, r2, sl, asr #8
    3bd8:	eb118000 	bl	463be0 <_ram_limit+0x4bbe0>
    3bdc:	0500000d 	streq	r0, [r0, #-13]
    3be0:	0001074c 	andeq	r0, r1, ip, asr #14
    3be4:	11010000 	mrsne	r0, (UNDEF: 1)
    3be8:	00000f60 	andeq	r0, r0, r0, ror #30
    3bec:	01074f05 	tsteq	r7, r5, lsl #30
    3bf0:	01040000 	mrseq	r0, (UNDEF: 4)
    3bf4:	01050800 	tsteq	r5, r0, lsl #16
    3bf8:	02440000 	subeq	r0, r4, #0
    3bfc:	c7090000 	strgt	r0, [r9, -r0]
    3c00:	1f000000 	svcne	0x00000000
    3c04:	0d371000 	ldceq	0, cr1, [r7, #-0]
    3c08:	01900000 	orrseq	r0, r0, r0
    3c0c:	02825b05 	addeq	r5, r2, #5120	; 0x1400
    3c10:	140b0000 	strne	r0, [fp], #-0
    3c14:	05000010 	streq	r0, [r0, #-16]
    3c18:	0002825c 	andeq	r8, r2, ip, asr r2
    3c1c:	e50b0000 	str	r0, [fp, #-0]
    3c20:	0500000f 	streq	r0, [r0, #-15]
    3c24:	00002c5d 	andeq	r2, r0, sp, asr ip
    3c28:	ab0b0400 	blge	2c4c30 <_stacks_size+0x2c4510>
    3c2c:	0500000d 	streq	r0, [r0, #-13]
    3c30:	0002885f 	andeq	r8, r2, pc, asr r8
    3c34:	750b0800 	strvc	r0, [fp, #-2048]	; 0x800
    3c38:	0500000e 	streq	r0, [r0, #-14]
    3c3c:	0001f460 	andeq	pc, r1, r0, ror #8
    3c40:	0f008800 	svceq	0x00008800
    3c44:	00024404 	andeq	r4, r2, r4, lsl #8
    3c48:	02980800 	addseq	r0, r8, #0, 16
    3c4c:	02980000 	addseq	r0, r8, #0
    3c50:	c7090000 	strgt	r0, [r9, -r0]
    3c54:	1f000000 	svcne	0x00000000
    3c58:	9e040f00 	cdpls	15, 0, cr0, cr4, cr0, {0}
    3c5c:	12000002 	andne	r0, r0, #2
    3c60:	000c720d 	andeq	r7, ip, sp, lsl #4
    3c64:	73050800 	movwvc	r0, #22528	; 0x5800
    3c68:	000002c4 	andeq	r0, r0, r4, asr #5
    3c6c:	00150f0b 	andseq	r0, r5, fp, lsl #30
    3c70:	c4740500 	ldrbtgt	r0, [r4], #-1280	; 0x500
    3c74:	00000002 	andeq	r0, r0, r2
    3c78:	0015870b 	andseq	r8, r5, fp, lsl #14
    3c7c:	2c750500 	cfldr64cs	mvdx0, [r5], #-0
    3c80:	04000000 	streq	r0, [r0], #-0
    3c84:	3a040f00 	bcc	10788c <_stacks_size+0x10716c>
    3c88:	0d000000 	stceq	0, cr0, [r0, #-0]
    3c8c:	00001053 	andeq	r1, r0, r3, asr r0
    3c90:	f4b30568 			; <UNDEFINED> instruction: 0xf4b30568
    3c94:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
    3c98:	0500705f 	streq	r7, [r0, #-95]	; 0x5f
    3c9c:	0002c4b4 			; <UNDEFINED> instruction: 0x0002c4b4
    3ca0:	5f0e0000 	svcpl	0x000e0000
    3ca4:	b5050072 	strlt	r0, [r5, #-114]	; 0x72
    3ca8:	0000002c 	andeq	r0, r0, ip, lsr #32
    3cac:	775f0e04 	ldrbvc	r0, [pc, -r4, lsl #28]
    3cb0:	2cb60500 	cfldr32cs	mvfx0, [r6]
    3cb4:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    3cb8:	0003c10b 	andeq	ip, r3, fp, lsl #2
    3cbc:	41b70500 			; <UNDEFINED> instruction: 0x41b70500
    3cc0:	0c000000 	stceq	0, cr0, [r0], {-0}
    3cc4:	000ef70b 	andeq	pc, lr, fp, lsl #14
    3cc8:	41b80500 			; <UNDEFINED> instruction: 0x41b80500
    3ccc:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    3cd0:	66625f0e 	strbtvs	r5, [r2], -lr, lsl #30
    3cd4:	9fb90500 	svcls	0x00b90500
    3cd8:	10000002 	andne	r0, r0, r2
    3cdc:	000c610b 	andeq	r6, ip, fp, lsl #2
    3ce0:	2cba0500 	cfldr32cs	mvfx0, [sl]
    3ce4:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    3ce8:	000eef0b 	andeq	lr, lr, fp, lsl #30
    3cec:	05c10500 	strbeq	r0, [r1, #1280]	; 0x500
    3cf0:	1c000001 	stcne	0, cr0, [r0], {1}
    3cf4:	000e1f0b 	andeq	r1, lr, fp, lsl #30
    3cf8:	57c30500 	strbpl	r0, [r3, r0, lsl #10]
    3cfc:	20000005 	andcs	r0, r0, r5
    3d00:	000cad0b 	andeq	sl, ip, fp, lsl #26
    3d04:	86c50500 	strbhi	r0, [r5], r0, lsl #10
    3d08:	24000005 	strcs	r0, [r0], #-5
    3d0c:	000fc40b 	andeq	ip, pc, fp, lsl #8
    3d10:	aac80500 	bge	ff205118 <_STACK_FILLER+0x20729229>
    3d14:	28000005 	stmdacs	r0, {r0, r2}
    3d18:	000dfc0b 	andeq	pc, sp, fp, lsl #24
    3d1c:	c4c90500 	strbgt	r0, [r9], #1280	; 0x500
    3d20:	2c000005 	stccs	0, cr0, [r0], {5}
    3d24:	62755f0e 	rsbsvs	r5, r5, #14, 30	; 0x38
    3d28:	9fcc0500 	svcls	0x00cc0500
    3d2c:	30000002 	andcc	r0, r0, r2
    3d30:	70755f0e 	rsbsvc	r5, r5, lr, lsl #30
    3d34:	c4cd0500 	strbgt	r0, [sp], #1280	; 0x500
    3d38:	38000002 	stmdacc	r0, {r1}
    3d3c:	72755f0e 	rsbsvc	r5, r5, #14, 30	; 0x38
    3d40:	2cce0500 	cfstr64cs	mvdx0, [lr], {0}
    3d44:	3c000000 	stccc	0, cr0, [r0], {-0}
    3d48:	0010400b 	andseq	r4, r0, fp
    3d4c:	cad10500 	bgt	ff445154 <_STACK_FILLER+0x20969265>
    3d50:	40000005 	andmi	r0, r0, r5
    3d54:	000d520b 	andeq	r5, sp, fp, lsl #4
    3d58:	dad20500 	ble	ff485160 <_STACK_FILLER+0x209a9271>
    3d5c:	43000005 	movwmi	r0, #5
    3d60:	626c5f0e 	rsbvs	r5, ip, #14, 30	; 0x38
    3d64:	9fd50500 	svcls	0x00d50500
    3d68:	44000002 	strmi	r0, [r0], #-2
    3d6c:	0002ee0b 	andeq	lr, r2, fp, lsl #28
    3d70:	2cd80500 	cfldr64cs	mvdx0, [r8], {0}
    3d74:	4c000000 	stcmi	0, cr0, [r0], {-0}
    3d78:	000c3c0b 	andeq	r3, ip, fp, lsl #24
    3d7c:	76d90500 	ldrbvc	r0, [r9], r0, lsl #10
    3d80:	50000000 	andpl	r0, r0, r0
    3d84:	0010660b 	andseq	r6, r0, fp, lsl #12
    3d88:	12dc0500 	sbcsne	r0, ip, #0, 10
    3d8c:	54000004 	strpl	r0, [r0], #-4
    3d90:	0014070b 	andseq	r0, r4, fp, lsl #14
    3d94:	fae00500 	blx	ff80519c <_STACK_FILLER+0x20d292ad>
    3d98:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
    3d9c:	000db00b 	andeq	fp, sp, fp
    3da0:	efe20500 	svc	0x00e20500
    3da4:	5c000000 	stcpl	0, cr0, [r0], {-0}
    3da8:	000dc30b 	andeq	ip, sp, fp, lsl #6
    3dac:	2ce30500 	cfstr64cs	mvdx0, [r3]
    3db0:	64000000 	strvs	r0, [r0], #-0
    3db4:	002c1300 	eoreq	r1, ip, r0, lsl #6
    3db8:	04120000 	ldreq	r0, [r2], #-0
    3dbc:	12140000 	andsne	r0, r4, #0
    3dc0:	14000004 	strne	r0, [r0], #-4
    3dc4:	00000105 	andeq	r0, r0, r5, lsl #2
    3dc8:	00054a14 	andeq	r4, r5, r4, lsl sl
    3dcc:	002c1400 	eoreq	r1, ip, r0, lsl #8
    3dd0:	0f000000 	svceq	0x00000000
    3dd4:	00041804 	andeq	r1, r4, r4, lsl #16
    3dd8:	134c1500 	movtne	r1, #50432	; 0xc500
    3ddc:	04280000 	strteq	r0, [r8], #-0
    3de0:	4a023905 	bmi	921fc <_stacks_size+0x91adc>
    3de4:	16000005 	strne	r0, [r0], -r5
    3de8:	00000c2a 	andeq	r0, r0, sl, lsr #24
    3dec:	2c023b05 	stccs	11, cr3, [r2], {5}
    3df0:	00000000 	andeq	r0, r0, r0
    3df4:	00101a16 	andseq	r1, r0, r6, lsl sl
    3df8:	02400500 	subeq	r0, r0, #0, 10
    3dfc:	00000631 	andeq	r0, r0, r1, lsr r6
    3e00:	0d2f1604 	stceq	6, cr1, [pc, #-16]!	; 3df8 <_stacks_size+0x36d8>
    3e04:	40050000 	andmi	r0, r5, r0
    3e08:	00063102 	andeq	r3, r6, r2, lsl #2
    3e0c:	2c160800 	ldccs	8, cr0, [r6], {-0}
    3e10:	0500000e 	streq	r0, [r0, #-14]
    3e14:	06310240 	ldrteq	r0, [r1], -r0, asr #4
    3e18:	160c0000 	strne	r0, [ip], -r0
    3e1c:	00000fe0 	andeq	r0, r0, r0, ror #31
    3e20:	2c024205 	sfmcs	f4, 4, [r2], {5}
    3e24:	10000000 	andne	r0, r0, r0
    3e28:	000d3f16 	andeq	r3, sp, r6, lsl pc
    3e2c:	02430500 	subeq	r0, r3, #0, 10
    3e30:	00000813 	andeq	r0, r0, r3, lsl r8
    3e34:	0f4e1614 	svceq	0x004e1614
    3e38:	45050000 	strmi	r0, [r5, #-0]
    3e3c:	00002c02 	andeq	r2, r0, r2, lsl #24
    3e40:	21163000 	tstcs	r6, r0
    3e44:	05000010 	streq	r0, [r0, #-16]
    3e48:	057b0246 	ldrbeq	r0, [fp, #-582]!	; 0x246
    3e4c:	16340000 	ldrtne	r0, [r4], -r0
    3e50:	00000c31 	andeq	r0, r0, r1, lsr ip
    3e54:	2c024805 	stccs	8, cr4, [r2], {5}
    3e58:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    3e5c:	000f6816 	andeq	r6, pc, r6, lsl r8	; <UNPREDICTABLE>
    3e60:	024a0500 	subeq	r0, sl, #0, 10
    3e64:	0000082e 	andeq	r0, r0, lr, lsr #16
    3e68:	0fca163c 	svceq	0x00ca163c
    3e6c:	4d050000 	stcmi	0, cr0, [r5, #-0]
    3e70:	00016502 	andeq	r6, r1, r2, lsl #10
    3e74:	79164000 	ldmdbvc	r6, {lr}
    3e78:	0500000c 	streq	r0, [r0, #-12]
    3e7c:	002c024e 	eoreq	r0, ip, lr, asr #4
    3e80:	16440000 	strbne	r0, [r4], -r0
    3e84:	00001004 	andeq	r1, r0, r4
    3e88:	65024f05 	strvs	r4, [r2, #-3845]	; 0xf05
    3e8c:	48000001 	stmdami	r0, {r0}
    3e90:	000da116 	andeq	sl, sp, r6, lsl r1
    3e94:	02500500 	subseq	r0, r0, #0, 10
    3e98:	00000834 	andeq	r0, r0, r4, lsr r8
    3e9c:	0d4a164c 	stcleq	6, cr1, [sl, #-304]	; 0xfffffed0
    3ea0:	53050000 	movwpl	r0, #20480	; 0x5000
    3ea4:	00002c02 	andeq	r2, r0, r2, lsl #24
    3ea8:	e7165000 	ldr	r5, [r6, -r0]
    3eac:	0500000e 	streq	r0, [r0, #-14]
    3eb0:	054a0254 	strbeq	r0, [sl, #-596]	; 0x254
    3eb4:	16540000 	ldrbne	r0, [r4], -r0
    3eb8:	0000105b 	andeq	r1, r0, fp, asr r0
    3ebc:	f1027705 			; <UNDEFINED> instruction: 0xf1027705
    3ec0:	58000007 	stmdapl	r0, {r0, r1, r2}
    3ec4:	000d3717 	andeq	r3, sp, r7, lsl r7
    3ec8:	027b0500 	rsbseq	r0, fp, #0, 10
    3ecc:	00000282 	andeq	r0, r0, r2, lsl #5
    3ed0:	e2170148 	ands	r0, r7, #72, 2
    3ed4:	0500000d 	streq	r0, [r0, #-13]
    3ed8:	0244027c 	subeq	r0, r4, #124, 4	; 0xc0000007
    3edc:	014c0000 	mrseq	r0, (UNDEF: 76)
    3ee0:	000d8e17 	andeq	r8, sp, r7, lsl lr
    3ee4:	02800500 	addeq	r0, r0, #0, 10
    3ee8:	00000845 	andeq	r0, r0, r5, asr #16
    3eec:	6d1702dc 	lfmvs	f0, 4, [r7, #-880]	; 0xfffffc90
    3ef0:	0500000e 	streq	r0, [r0, #-14]
    3ef4:	05f60285 	ldrbeq	r0, [r6, #645]!	; 0x285
    3ef8:	02e00000 	rsceq	r0, r0, #0
    3efc:	000c8b17 	andeq	r8, ip, r7, lsl fp
    3f00:	02860500 	addeq	r0, r6, #0, 10
    3f04:	00000851 	andeq	r0, r0, r1, asr r8
    3f08:	0f0002ec 	svceq	0x000002ec
    3f0c:	00055004 	andeq	r5, r5, r4
    3f10:	08010200 	stmdaeq	r1, {r9}
    3f14:	00000052 	andeq	r0, r0, r2, asr r0
    3f18:	03f4040f 	mvnseq	r0, #251658240	; 0xf000000
    3f1c:	2c130000 	ldccs	0, cr0, [r3], {-0}
    3f20:	7b000000 	blvc	3f28 <_stacks_size+0x3808>
    3f24:	14000005 	strne	r0, [r0], #-5
    3f28:	00000412 	andeq	r0, r0, r2, lsl r4
    3f2c:	00010514 	andeq	r0, r1, r4, lsl r5
    3f30:	057b1400 	ldrbeq	r1, [fp, #-1024]!	; 0x400
    3f34:	2c140000 	ldccs	0, cr0, [r4], {-0}
    3f38:	00000000 	andeq	r0, r0, r0
    3f3c:	0581040f 	streq	r0, [r1, #1039]	; 0x40f
    3f40:	50180000 	andspl	r0, r8, r0
    3f44:	0f000005 	svceq	0x00000005
    3f48:	00055d04 	andeq	r5, r5, r4, lsl #26
    3f4c:	00811300 	addeq	r1, r1, r0, lsl #6
    3f50:	05aa0000 	streq	r0, [sl, #0]!
    3f54:	12140000 	andsne	r0, r4, #0
    3f58:	14000004 	strne	r0, [r0], #-4
    3f5c:	00000105 	andeq	r0, r0, r5, lsl #2
    3f60:	00008114 	andeq	r8, r0, r4, lsl r1
    3f64:	002c1400 	eoreq	r1, ip, r0, lsl #8
    3f68:	0f000000 	svceq	0x00000000
    3f6c:	00058c04 	andeq	r8, r5, r4, lsl #24
    3f70:	002c1300 	eoreq	r1, ip, r0, lsl #6
    3f74:	05c40000 	strbeq	r0, [r4]
    3f78:	12140000 	andsne	r0, r4, #0
    3f7c:	14000004 	strne	r0, [r0], #-4
    3f80:	00000105 	andeq	r0, r0, r5, lsl #2
    3f84:	b0040f00 	andlt	r0, r4, r0, lsl #30
    3f88:	08000005 	stmdaeq	r0, {r0, r2}
    3f8c:	0000003a 	andeq	r0, r0, sl, lsr r0
    3f90:	000005da 	ldrdeq	r0, [r0], -sl
    3f94:	0000c709 	andeq	ip, r0, r9, lsl #14
    3f98:	08000200 	stmdaeq	r0, {r9}
    3f9c:	0000003a 	andeq	r0, r0, sl, lsr r0
    3fa0:	000005ea 	andeq	r0, r0, sl, ror #11
    3fa4:	0000c709 	andeq	ip, r0, r9, lsl #14
    3fa8:	05000000 	streq	r0, [r0, #-0]
    3fac:	00000d71 	andeq	r0, r0, r1, ror sp
    3fb0:	ca011d05 	bgt	4b3cc <_stacks_size+0x4acac>
    3fb4:	19000002 	stmdbne	r0, {r1}
    3fb8:	00001305 	andeq	r1, r0, r5, lsl #6
    3fbc:	0121050c 	teqeq	r1, ip, lsl #10
    3fc0:	0000062b 	andeq	r0, r0, fp, lsr #12
    3fc4:	00101416 	andseq	r1, r0, r6, lsl r4
    3fc8:	01230500 	teqeq	r3, r0, lsl #10
    3fcc:	0000062b 	andeq	r0, r0, fp, lsr #12
    3fd0:	0d6a1600 	stcleq	6, cr1, [sl, #-0]
    3fd4:	24050000 	strcs	r0, [r5], #-0
    3fd8:	00002c01 	andeq	r2, r0, r1, lsl #24
    3fdc:	cb160400 	blgt	584fe4 <_ram_limit+0x16cfe4>
    3fe0:	0500000d 	streq	r0, [r0, #-13]
    3fe4:	06310125 	ldrteq	r0, [r1], -r5, lsr #2
    3fe8:	00080000 	andeq	r0, r8, r0
    3fec:	05f6040f 	ldrbeq	r0, [r6, #1039]!	; 0x40f
    3ff0:	040f0000 	streq	r0, [pc], #-0	; 3ff8 <_stacks_size+0x38d8>
    3ff4:	000005ea 	andeq	r0, r0, sl, ror #11
    3ff8:	000faa19 	andeq	sl, pc, r9, lsl sl	; <UNPREDICTABLE>
    3ffc:	3d050e00 	stccc	14, cr0, [r5, #-0]
    4000:	00066c01 	andeq	r6, r6, r1, lsl #24
    4004:	0fa41600 	svceq	0x00a41600
    4008:	3e050000 	cdpcc	0, 0, cr0, cr5, cr0, {0}
    400c:	00066c01 	andeq	r6, r6, r1, lsl #24
    4010:	d1160000 	tstle	r6, r0
    4014:	0500000d 	streq	r0, [r0, #-13]
    4018:	066c013f 			; <UNDEFINED> instruction: 0x066c013f
    401c:	16060000 	strne	r0, [r6], -r0
    4020:	00000fdb 	ldrdeq	r0, [r0], -fp
    4024:	48014005 	stmdami	r1, {r0, r2, lr}
    4028:	0c000000 	stceq	0, cr0, [r0], {-0}
    402c:	00480800 	subeq	r0, r8, r0, lsl #16
    4030:	067c0000 	ldrbteq	r0, [ip], -r0
    4034:	c7090000 	strgt	r0, [r9, -r0]
    4038:	02000000 	andeq	r0, r0, #0
    403c:	05d01a00 	ldrbeq	r1, [r0, #2560]	; 0xa00
    4040:	077d0258 			; <UNDEFINED> instruction: 0x077d0258
    4044:	0c160000 	ldceq	0, cr0, [r6], {-0}
    4048:	0500000f 	streq	r0, [r0, #-15]
    404c:	0025025a 	eoreq	r0, r5, sl, asr r2
    4050:	16000000 	strne	r0, [r0], -r0
    4054:	00000f97 	muleq	r0, r7, pc	; <UNPREDICTABLE>
    4058:	4a025b05 	bmi	9ac74 <_stacks_size+0x9a554>
    405c:	04000005 	streq	r0, [r0], #-5
    4060:	00104616 	andseq	r4, r0, r6, lsl r6
    4064:	025c0500 	subseq	r0, ip, #0, 10
    4068:	0000077d 	andeq	r0, r0, sp, ror r7
    406c:	0cb41608 	ldceq	6, cr1, [r4], #32
    4070:	5d050000 	stcpl	0, cr0, [r5, #-0]
    4074:	00017b02 	andeq	r7, r1, r2, lsl #22
    4078:	fd162400 	ldc2	4, cr2, [r6, #-0]
    407c:	0500000e 	streq	r0, [r0, #-14]
    4080:	002c025e 	eoreq	r0, ip, lr, asr r2
    4084:	16480000 	strbne	r0, [r8], -r0
    4088:	0000100f 	andeq	r1, r0, pc
    408c:	64025f05 	strvs	r5, [r2], #-3845	; 0xf05
    4090:	50000000 	andpl	r0, r0, r0
    4094:	000d2a16 	andeq	r2, sp, r6, lsl sl
    4098:	02600500 	rsbeq	r0, r0, #0, 10
    409c:	00000637 	andeq	r0, r0, r7, lsr r6
    40a0:	0c441658 	mcrreq	6, 5, r1, r4, cr8
    40a4:	61050000 	mrsvs	r0, (UNDEF: 5)
    40a8:	0000ef02 	andeq	lr, r0, r2, lsl #30
    40ac:	2b166800 	blcs	59e0b4 <_ram_limit+0x1860b4>
    40b0:	0500000f 	streq	r0, [r0, #-15]
    40b4:	00ef0262 	rsceq	r0, pc, r2, ror #4
    40b8:	16700000 	ldrbtne	r0, [r0], -r0
    40bc:	00000fea 	andeq	r0, r0, sl, ror #31
    40c0:	ef026305 	svc	0x00026305
    40c4:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    40c8:	000c5116 	andeq	r5, ip, r6, lsl r1
    40cc:	02640500 	rsbeq	r0, r4, #0, 10
    40d0:	0000078d 	andeq	r0, r0, sp, lsl #15
    40d4:	0c901680 	ldceq	6, cr1, [r0], {128}	; 0x80
    40d8:	65050000 	strvs	r0, [r5, #-0]
    40dc:	00079d02 	andeq	r9, r7, r2, lsl #26
    40e0:	78168800 	ldmdavc	r6, {fp, pc}
    40e4:	0500000d 	streq	r0, [r0, #-13]
    40e8:	002c0266 	eoreq	r0, ip, r6, ror #4
    40ec:	16a00000 	strtne	r0, [r0], r0
    40f0:	00000f40 	andeq	r0, r0, r0, asr #30
    40f4:	ef026705 	svc	0x00026705
    40f8:	a4000000 	strge	r0, [r0], #-0
    40fc:	000e8316 	andeq	r8, lr, r6, lsl r3
    4100:	02680500 	rsbeq	r0, r8, #0, 10
    4104:	000000ef 	andeq	r0, r0, pc, ror #1
    4108:	0d1916ac 	ldceq	6, cr1, [r9, #-688]	; 0xfffffd50
    410c:	69050000 	stmdbvs	r5, {}	; <UNPREDICTABLE>
    4110:	0000ef02 	andeq	lr, r0, r2, lsl #30
    4114:	3116b400 	tstcc	r6, r0, lsl #8
    4118:	05000010 	streq	r0, [r0, #-16]
    411c:	00ef026a 	rsceq	r0, pc, sl, ror #4
    4120:	16bc0000 	ldrtne	r0, [ip], r0
    4124:	00000c9c 	muleq	r0, ip, ip
    4128:	ef026b05 	svc	0x00026b05
    412c:	c4000000 	strgt	r0, [r0], #-0
    4130:	000e6416 	andeq	r6, lr, r6, lsl r4
    4134:	026c0500 	rsbeq	r0, ip, #0, 10
    4138:	0000002c 	andeq	r0, r0, ip, lsr #32
    413c:	500800cc 	andpl	r0, r8, ip, asr #1
    4140:	8d000005 	stchi	0, cr0, [r0, #-20]	; 0xffffffec
    4144:	09000007 	stmdbeq	r0, {r0, r1, r2}
    4148:	000000c7 	andeq	r0, r0, r7, asr #1
    414c:	50080019 	andpl	r0, r8, r9, lsl r0
    4150:	9d000005 	stcls	0, cr0, [r0, #-20]	; 0xffffffec
    4154:	09000007 	stmdbeq	r0, {r0, r1, r2}
    4158:	000000c7 	andeq	r0, r0, r7, asr #1
    415c:	50080007 	andpl	r0, r8, r7
    4160:	ad000005 	stcge	0, cr0, [r0, #-20]	; 0xffffffec
    4164:	09000007 	stmdbeq	r0, {r0, r1, r2}
    4168:	000000c7 	andeq	r0, r0, r7, asr #1
    416c:	f01a0017 			; <UNDEFINED> instruction: 0xf01a0017
    4170:	d1027105 	tstle	r2, r5, lsl #2
    4174:	16000007 	strne	r0, [r0], -r7
    4178:	00000e25 	andeq	r0, r0, r5, lsr #28
    417c:	d1027405 	tstle	r2, r5, lsl #8
    4180:	00000007 	andeq	r0, r0, r7
    4184:	000d9816 	andeq	r9, sp, r6, lsl r8
    4188:	02750500 	rsbseq	r0, r5, #0, 10
    418c:	000007e1 	andeq	r0, r0, r1, ror #15
    4190:	c4080078 	strgt	r0, [r8], #-120	; 0x78
    4194:	e1000002 	tst	r0, r2
    4198:	09000007 	stmdbeq	r0, {r0, r1, r2}
    419c:	000000c7 	andeq	r0, r0, r7, asr #1
    41a0:	2508001d 	strcs	r0, [r8, #-29]
    41a4:	f1000000 	cps	#0
    41a8:	09000007 	stmdbeq	r0, {r0, r1, r2}
    41ac:	000000c7 	andeq	r0, r0, r7, asr #1
    41b0:	f01b001d 			; <UNDEFINED> instruction: 0xf01b001d
    41b4:	13025605 	movwne	r5, #9733	; 0x2605
    41b8:	1c000008 	stcne	0, cr0, [r0], {8}
    41bc:	0000134c 	andeq	r1, r0, ip, asr #6
    41c0:	7c026d05 	stcvc	13, cr6, [r2], {5}
    41c4:	1c000006 	stcne	0, cr0, [r0], {6}
    41c8:	00000f23 	andeq	r0, r0, r3, lsr #30
    41cc:	ad027605 	stcge	6, cr7, [r2, #-20]	; 0xffffffec
    41d0:	00000007 	andeq	r0, r0, r7
    41d4:	00055008 	andeq	r5, r5, r8
    41d8:	00082300 	andeq	r2, r8, r0, lsl #6
    41dc:	00c70900 	sbceq	r0, r7, r0, lsl #18
    41e0:	00180000 	andseq	r0, r8, r0
    41e4:	00082e1d 	andeq	r2, r8, sp, lsl lr
    41e8:	04121400 	ldreq	r1, [r2], #-1024	; 0x400
    41ec:	0f000000 	svceq	0x00000000
    41f0:	00082304 	andeq	r2, r8, r4, lsl #6
    41f4:	65040f00 	strvs	r0, [r4, #-3840]	; 0xf00
    41f8:	1d000001 	stcne	0, cr0, [r0, #-4]
    41fc:	00000845 	andeq	r0, r0, r5, asr #16
    4200:	00002c14 	andeq	r2, r0, r4, lsl ip
    4204:	040f0000 	streq	r0, [pc], #-0	; 420c <_stacks_size+0x3aec>
    4208:	0000084b 	andeq	r0, r0, fp, asr #16
    420c:	083a040f 	ldmdaeq	sl!, {r0, r1, r2, r3, sl}
    4210:	ea080000 	b	204218 <_stacks_size+0x203af8>
    4214:	61000005 	tstvs	r0, r5
    4218:	09000008 	stmdbeq	r0, {r3}
    421c:	000000c7 	andeq	r0, r0, r7, asr #1
    4220:	fe1e0002 	cdp2	0, 1, cr0, cr14, cr2, {0}
    4224:	01000012 	tsteq	r0, r2, lsl r0
    4228:	40106c21 	andsmi	r6, r0, r1, lsr #24
    422c:	00002c00 	andeq	r2, r0, r0, lsl #24
    4230:	bf9c0100 	svclt	0x009c0100
    4234:	1f000008 	svcne	0x00000008
    4238:	00727470 	rsbseq	r7, r2, r0, ror r4
    423c:	04122101 	ldreq	r2, [r2], #-257	; 0x101
    4240:	01d50000 	bicseq	r0, r5, r0
    4244:	06200000 	strteq	r0, [r0], -r0
    4248:	01000013 	tsteq	r0, r3, lsl r0
    424c:	00062b21 	andeq	r2, r6, r1, lsr #22
    4250:	00020100 	andeq	r0, r2, r0, lsl #2
    4254:	10842100 	addne	r2, r4, r0, lsl #2
    4258:	08610040 	stmdaeq	r1!, {r6}^
    425c:	08a80000 	stmiaeq	r8!, {}	; <UNPREDICTABLE>
    4260:	01220000 	teqeq	r2, r0
    4264:	00750250 	rsbseq	r0, r5, r0, asr r2
    4268:	10902300 	addsne	r2, r0, r0, lsl #6
    426c:	09e60040 	stmibeq	r6!, {r6}^
    4270:	01220000 	teqeq	r2, r0
    4274:	00740251 	rsbseq	r0, r4, r1, asr r2
    4278:	02500122 	subseq	r0, r0, #-2147483640	; 0x80000008
    427c:	00000075 	andeq	r0, r0, r5, ror r0
    4280:	00134424 	andseq	r4, r3, r4, lsr #8
    4284:	02fd0500 	rscseq	r0, sp, #0, 10
    4288:	00401098 	umaaleq	r1, r0, r8, r0
    428c:	00000108 	andeq	r0, r0, r8, lsl #2
    4290:	09c99c01 	stmibeq	r9, {r0, sl, fp, ip, pc}^
    4294:	701f0000 	andsvc	r0, pc, r0
    4298:	01007274 	tsteq	r0, r4, ror r2
    429c:	0004122d 	andeq	r1, r4, sp, lsr #4
    42a0:	00022d00 	andeq	r2, r2, r0, lsl #26
    42a4:	00502500 	subseq	r2, r0, r0, lsl #10
    42a8:	09470000 	stmdbeq	r7, {}^	; <UNPREDICTABLE>
    42ac:	69260000 	stmdbvs	r6!, {}	; <UNPREDICTABLE>
    42b0:	2c390100 	ldfcss	f0, [r9], #-0
    42b4:	7d000000 	stcvc	0, cr0, [r0, #-0]
    42b8:	27000002 	strcs	r0, [r0, -r2]
    42bc:	004010c4 	subeq	r1, r0, r4, asr #1
    42c0:	0000002c 	andeq	r0, r0, ip, lsr #32
    42c4:	00000936 	andeq	r0, r0, r6, lsr r9
    42c8:	00133c28 	andseq	r3, r3, r8, lsr #24
    42cc:	653c0100 	ldrvs	r0, [ip, #-256]!	; 0x100
    42d0:	90000001 	andls	r0, r0, r1
    42d4:	28000002 	stmdacs	r0, {r1}
    42d8:	000012f6 	strdeq	r1, [r0], -r6
    42dc:	01653c01 	cmneq	r5, r1, lsl #24
    42e0:	02a30000 	adceq	r0, r3, #0
    42e4:	e4230000 	strt	r0, [r3], #-0
    42e8:	e6004010 			; <UNDEFINED> instruction: 0xe6004010
    42ec:	22000009 	andcs	r0, r0, #9
    42f0:	75025001 	strvc	r5, [r2, #-1]
    42f4:	23000000 	movwcs	r0, #0
    42f8:	0040110c 	subeq	r1, r0, ip, lsl #2
    42fc:	000009e6 	andeq	r0, r0, r6, ror #19
    4300:	02500122 	subseq	r0, r0, #-2147483640	; 0x80000008
    4304:	00000075 	andeq	r0, r0, r5, ror r0
    4308:	40113827 	andsmi	r3, r1, r7, lsr #16
    430c:	00001800 	andeq	r1, r0, r0, lsl #16
    4310:	00097f00 	andeq	r7, r9, r0, lsl #30
    4314:	00702600 	rsbseq	r2, r0, r0, lsl #12
    4318:	02826801 	addeq	r6, r2, #65536	; 0x10000
    431c:	02d70000 	sbcseq	r0, r7, #0
    4320:	71260000 	teqvc	r6, r0
    4324:	82680100 	rsbhi	r0, r8, #0, 2
    4328:	00000002 	andeq	r0, r0, r2
    432c:	23000003 	movwcs	r0, #3
    4330:	00401148 	subeq	r1, r0, r8, asr #2
    4334:	000009e6 	andeq	r0, r0, r6, ror #19
    4338:	02500122 	subseq	r0, r0, #-2147483640	; 0x80000008
    433c:	00000075 	andeq	r0, r0, r5, ror r0
    4340:	40111c21 	andsmi	r1, r1, r1, lsr #24
    4344:	0009e600 	andeq	lr, r9, r0, lsl #12
    4348:	00099300 	andeq	r9, r9, r0, lsl #6
    434c:	50012200 	andpl	r2, r1, r0, lsl #4
    4350:	00007502 	andeq	r7, r0, r2, lsl #10
    4354:	40116021 	andsmi	r6, r1, r1, lsr #32
    4358:	0009e600 	andeq	lr, r9, r0, lsl #12
    435c:	0009a700 	andeq	sl, r9, r0, lsl #14
    4360:	50012200 	andpl	r2, r1, r0, lsl #4
    4364:	00007502 	andeq	r7, r0, r2, lsl #10
    4368:	40118429 	andsmi	r8, r1, r9, lsr #8
    436c:	0009b700 	andeq	fp, r9, r0, lsl #14
    4370:	50012200 	andpl	r2, r1, r0, lsl #4
    4374:	00007502 	andeq	r7, r0, r2, lsl #10
    4378:	40119c2a 	andsmi	r9, r1, sl, lsr #24
    437c:	00086100 	andeq	r6, r8, r0, lsl #2
    4380:	50012200 	andpl	r2, r1, r0, lsl #4
    4384:	5001f303 	andpl	pc, r1, r3, lsl #6
    4388:	c82b0000 	stmdagt	fp!, {}	; <UNPREDICTABLE>
    438c:	05000010 	streq	r0, [r0, #-16]
    4390:	041202fa 	ldreq	r0, [r2], #-762	; 0x2fa
    4394:	e12c0000 	teq	ip, r0
    4398:	0100000e 	tsteq	r0, lr
    439c:	00002c1a 	andeq	r2, r0, sl, lsl ip
    43a0:	54030500 	strpl	r0, [r3], #-1280	; 0x500
    43a4:	2d00402b 	stccs	0, cr4, [r0, #-172]	; 0xffffff54
    43a8:	00001334 	andeq	r1, r0, r4, lsr r3
    43ac:	1214e106 	andsne	lr, r4, #-2147483647	; 0x80000001
    43b0:	14000004 	strne	r0, [r0], #-4
    43b4:	00000105 	andeq	r0, r0, r5, lsl #2
    43b8:	0c020000 	stceq	0, cr0, [r2], {-0}
    43bc:	00040000 	andeq	r0, r4, r0
    43c0:	00001065 	andeq	r1, r0, r5, rrx
    43c4:	0cc30104 	stfeqe	f0, [r3], {4}
    43c8:	20010000 	andcs	r0, r1, r0
    43cc:	a3000014 	movwge	r0, #20
    43d0:	80000013 	andhi	r0, r0, r3, lsl r0
    43d4:	00000000 	andeq	r0, r0, r0
    43d8:	63000000 	movwvs	r0, #0
    43dc:	0200000d 	andeq	r0, r0, #13
    43e0:	0000140d 	andeq	r1, r0, sp, lsl #8
    43e4:	00309302 	eorseq	r9, r0, r2, lsl #6
    43e8:	04030000 	streq	r0, [r3], #-0
    43ec:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
    43f0:	04130200 	ldreq	r0, [r3], #-512	; 0x200
    43f4:	d4020000 	strle	r0, [r2], #-0
    43f8:	00000042 	andeq	r0, r0, r2, asr #32
    43fc:	36070404 	strcc	r0, [r7], -r4, lsl #8
    4400:	04000000 	streq	r0, [r0], #-0
    4404:	004b0601 	subeq	r0, fp, r1, lsl #12
    4408:	01040000 	mrseq	r0, (UNDEF: 4)
    440c:	00004908 	andeq	r4, r0, r8, lsl #18
    4410:	05020400 	streq	r0, [r2, #-1024]	; 0x400
    4414:	0000019b 	muleq	r0, fp, r1
    4418:	72070204 	andvc	r0, r7, #4, 4	; 0x40000000
    441c:	04000000 	streq	r0, [r0], #-0
    4420:	01750504 	cmneq	r5, r4, lsl #10
    4424:	04040000 	streq	r0, [r4], #-0
    4428:	00003107 	andeq	r3, r0, r7, lsl #2
    442c:	05080400 	streq	r0, [r8, #-1024]	; 0x400
    4430:	00000170 	andeq	r0, r0, r0, ror r1
    4434:	2c070804 	stccs	8, cr0, [r7], {4}
    4438:	05000000 	streq	r0, [r0, #-0]
    443c:	0d580204 	lfmeq	f0, 2, [r8, #-16]
    4440:	07030000 	streq	r0, [r3, -r0]
    4444:	00000030 	andeq	r0, r0, r0, lsr r0
    4448:	0002ae02 	andeq	sl, r2, r2, lsl #28
    444c:	65100400 	ldrvs	r0, [r0, #-1024]	; 0x400
    4450:	02000000 	andeq	r0, r0, #0
    4454:	00000df4 	strdeq	r0, [r0], -r4
    4458:	00652704 	rsbeq	r2, r5, r4, lsl #14
    445c:	39060000 	stmdbcc	r6, {}	; <UNPREDICTABLE>
    4460:	0200000f 	andeq	r0, r0, #15
    4464:	00420161 	subeq	r0, r2, r1, ror #2
    4468:	04070000 	streq	r0, [r7], #-0
    446c:	00cf4a04 	sbceq	r4, pc, r4, lsl #20
    4470:	5b080000 	blpl	204478 <_stacks_size+0x203d58>
    4474:	0400000c 	streq	r0, [r0], #-12
    4478:	0000a44c 	andeq	sl, r0, ip, asr #8
    447c:	0e340800 	cdpeq	8, 3, cr0, cr4, cr0, {0}
    4480:	4d040000 	stcmi	0, cr0, [r4, #-0]
    4484:	000000cf 	andeq	r0, r0, pc, asr #1
    4488:	00500900 	subseq	r0, r0, r0, lsl #18
    448c:	00df0000 	sbcseq	r0, pc, r0
    4490:	df0a0000 	svcle	0x000a0000
    4494:	03000000 	movweq	r0, #0
    4498:	07040400 	streq	r0, [r4, -r0, lsl #8]
    449c:	00000167 	andeq	r0, r0, r7, ror #2
    44a0:	4704080b 	strmi	r0, [r4, -fp, lsl #16]
    44a4:	00000107 	andeq	r0, r0, r7, lsl #2
    44a8:	000d070c 	andeq	r0, sp, ip, lsl #14
    44ac:	30490400 	subcc	r0, r9, r0, lsl #8
    44b0:	00000000 	andeq	r0, r0, r0
    44b4:	000c6a0c 	andeq	r6, ip, ip, lsl #20
    44b8:	b04e0400 	sublt	r0, lr, r0, lsl #8
    44bc:	04000000 	streq	r0, [r0], #-0
    44c0:	0f720200 	svceq	0x00720200
    44c4:	4f040000 	svcmi	0x00040000
    44c8:	000000e6 	andeq	r0, r0, r6, ror #1
    44cc:	000e0302 	andeq	r0, lr, r2, lsl #6
    44d0:	83530400 	cmphi	r3, #0, 8
    44d4:	02000000 	andeq	r0, r0, #0
    44d8:	00000fbc 			; <UNDEFINED> instruction: 0x00000fbc
    44dc:	006c1605 	rsbeq	r1, ip, r5, lsl #12
    44e0:	7d0d0000 	stcvc	0, cr0, [sp, #-0]
    44e4:	1800000f 	stmdane	r0, {r0, r1, r2, r3}
    44e8:	017b2d05 	cmneq	fp, r5, lsl #26
    44ec:	140c0000 	strne	r0, [ip], #-0
    44f0:	05000010 	streq	r0, [r0, #-16]
    44f4:	00017b2f 	andeq	r7, r1, pc, lsr #22
    44f8:	5f0e0000 	svcpl	0x000e0000
    44fc:	3005006b 	andcc	r0, r5, fp, rrx
    4500:	00000030 	andeq	r0, r0, r0, lsr r0
    4504:	0f850c04 	svceq	0x00850c04
    4508:	30050000 	andcc	r0, r5, r0
    450c:	00000030 	andeq	r0, r0, r0, lsr r0
    4510:	10090c08 	andne	r0, r9, r8, lsl #24
    4514:	30050000 	andcc	r0, r5, r0
    4518:	00000030 	andeq	r0, r0, r0, lsr r0
    451c:	0f190c0c 	svceq	0x00190c0c
    4520:	30050000 	andcc	r0, r5, r0
    4524:	00000030 	andeq	r0, r0, r0, lsr r0
    4528:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
    452c:	81310500 	teqhi	r1, r0, lsl #10
    4530:	14000001 	strne	r0, [r0], #-1
    4534:	28040f00 	stmdacs	r4, {r8, r9, sl, fp}
    4538:	09000001 	stmdbeq	r0, {r0}
    453c:	0000011d 	andeq	r0, r0, sp, lsl r1
    4540:	00000191 	muleq	r0, r1, r1
    4544:	0000df0a 	andeq	sp, r0, sl, lsl #30
    4548:	0d000000 	stceq	0, cr0, [r0, #-0]
    454c:	00000f1e 	andeq	r0, r0, lr, lsl pc
    4550:	0a350524 	beq	d459e8 <_ram_limit+0x92d9e8>
    4554:	0c000002 	stceq	0, cr0, [r0], {2}
    4558:	00000e0c 	andeq	r0, r0, ip, lsl #28
    455c:	00303705 	eorseq	r3, r0, r5, lsl #14
    4560:	0c000000 	stceq	0, cr0, [r0], {-0}
    4564:	00000d85 	andeq	r0, r0, r5, lsl #27
    4568:	00303805 	eorseq	r3, r0, r5, lsl #16
    456c:	0c040000 	stceq	0, cr0, [r4], {-0}
    4570:	00000e15 	andeq	r0, r0, r5, lsl lr
    4574:	00303905 	eorseq	r3, r0, r5, lsl #18
    4578:	0c080000 	stceq	0, cr0, [r8], {-0}
    457c:	00000d0f 	andeq	r0, r0, pc, lsl #26
    4580:	00303a05 	eorseq	r3, r0, r5, lsl #20
    4584:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    4588:	00000fd2 	ldrdeq	r0, [r0], -r2
    458c:	00303b05 	eorseq	r3, r0, r5, lsl #22
    4590:	0c100000 	ldceq	0, cr0, [r0], {-0}
    4594:	00000f8d 	andeq	r0, r0, sp, lsl #31
    4598:	00303c05 	eorseq	r3, r0, r5, lsl #24
    459c:	0c140000 	ldceq	0, cr0, [r4], {-0}
    45a0:	00000db9 			; <UNDEFINED> instruction: 0x00000db9
    45a4:	00303d05 	eorseq	r3, r0, r5, lsl #26
    45a8:	0c180000 	ldceq	0, cr0, [r8], {-0}
    45ac:	00000fb2 			; <UNDEFINED> instruction: 0x00000fb2
    45b0:	00303e05 	eorseq	r3, r0, r5, lsl #28
    45b4:	0c1c0000 	ldceq	0, cr0, [ip], {-0}
    45b8:	00000dd7 	ldrdeq	r0, [r0], -r7
    45bc:	00303f05 	eorseq	r3, r0, r5, lsl #30
    45c0:	00200000 	eoreq	r0, r0, r0
    45c4:	000e7510 	andeq	r7, lr, r0, lsl r5
    45c8:	05010800 	streq	r0, [r1, #-2048]	; 0x800
    45cc:	00024a48 	andeq	r4, r2, r8, asr #20
    45d0:	0c830c00 	stceq	12, cr0, [r3], {0}
    45d4:	49050000 	stmdbmi	r5, {}	; <UNPREDICTABLE>
    45d8:	0000024a 	andeq	r0, r0, sl, asr #4
    45dc:	0ff80c00 	svceq	0x00f80c00
    45e0:	4a050000 	bmi	1445e8 <_stacks_size+0x143ec8>
    45e4:	0000024a 	andeq	r0, r0, sl, asr #4
    45e8:	0deb1180 	stfeqe	f1, [fp, #512]!	; 0x200
    45ec:	4c050000 	stcmi	0, cr0, [r5], {-0}
    45f0:	0000011d 	andeq	r0, r0, sp, lsl r1
    45f4:	60110100 	andsvs	r0, r1, r0, lsl #2
    45f8:	0500000f 	streq	r0, [r0, #-15]
    45fc:	00011d4f 	andeq	r1, r1, pc, asr #26
    4600:	00010400 	andeq	r0, r1, r0, lsl #8
    4604:	00008109 	andeq	r8, r0, r9, lsl #2
    4608:	00025a00 	andeq	r5, r2, r0, lsl #20
    460c:	00df0a00 	sbcseq	r0, pc, r0, lsl #20
    4610:	001f0000 	andseq	r0, pc, r0
    4614:	000d3710 	andeq	r3, sp, r0, lsl r7
    4618:	05019000 	streq	r9, [r1, #-0]
    461c:	0002985b 	andeq	r9, r2, fp, asr r8
    4620:	10140c00 	andsne	r0, r4, r0, lsl #24
    4624:	5c050000 	stcpl	0, cr0, [r5], {-0}
    4628:	00000298 	muleq	r0, r8, r2
    462c:	0fe50c00 	svceq	0x00e50c00
    4630:	5d050000 	stcpl	0, cr0, [r5, #-0]
    4634:	00000030 	andeq	r0, r0, r0, lsr r0
    4638:	0dab0c04 	stceq	12, cr0, [fp, #16]!
    463c:	5f050000 	svcpl	0x00050000
    4640:	0000029e 	muleq	r0, lr, r2
    4644:	0e750c08 	cdpeq	12, 7, cr0, cr5, cr8, {0}
    4648:	60050000 	andvs	r0, r5, r0
    464c:	0000020a 	andeq	r0, r0, sl, lsl #4
    4650:	040f0088 	streq	r0, [pc], #-136	; 4658 <_stacks_size+0x3f38>
    4654:	0000025a 	andeq	r0, r0, sl, asr r2
    4658:	0002ae09 	andeq	sl, r2, r9, lsl #28
    465c:	0002ae00 	andeq	sl, r2, r0, lsl #28
    4660:	00df0a00 	sbcseq	r0, pc, r0, lsl #20
    4664:	001f0000 	andseq	r0, pc, r0
    4668:	02b4040f 	adcseq	r0, r4, #251658240	; 0xf000000
    466c:	0d120000 	ldceq	0, cr0, [r2, #-0]
    4670:	00000c72 	andeq	r0, r0, r2, ror ip
    4674:	da730508 	ble	1cc5a9c <_ram_limit+0x18ada9c>
    4678:	0c000002 	stceq	0, cr0, [r0], {2}
    467c:	0000150f 	andeq	r1, r0, pc, lsl #10
    4680:	02da7405 	sbcseq	r7, sl, #83886080	; 0x5000000
    4684:	0c000000 	stceq	0, cr0, [r0], {-0}
    4688:	00001587 	andeq	r1, r0, r7, lsl #11
    468c:	00307505 	eorseq	r7, r0, r5, lsl #10
    4690:	00040000 	andeq	r0, r4, r0
    4694:	0050040f 	subseq	r0, r0, pc, lsl #8
    4698:	530d0000 	movwpl	r0, #53248	; 0xd000
    469c:	68000010 	stmdavs	r0, {r4}
    46a0:	040ab305 	streq	fp, [sl], #-773	; 0x305
    46a4:	5f0e0000 	svcpl	0x000e0000
    46a8:	b4050070 	strlt	r0, [r5], #-112	; 0x70
    46ac:	000002da 	ldrdeq	r0, [r0], -sl
    46b0:	725f0e00 	subsvc	r0, pc, #0, 28
    46b4:	30b50500 	adcscc	r0, r5, r0, lsl #10
    46b8:	04000000 	streq	r0, [r0], #-0
    46bc:	00775f0e 	rsbseq	r5, r7, lr, lsl #30
    46c0:	0030b605 	eorseq	fp, r0, r5, lsl #12
    46c4:	0c080000 	stceq	0, cr0, [r8], {-0}
    46c8:	000003c1 	andeq	r0, r0, r1, asr #7
    46cc:	0057b705 	subseq	fp, r7, r5, lsl #14
    46d0:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    46d4:	00000ef7 	strdeq	r0, [r0], -r7
    46d8:	0057b805 	subseq	fp, r7, r5, lsl #16
    46dc:	0e0e0000 	cdpeq	0, 0, cr0, cr14, cr0, {0}
    46e0:	0066625f 	rsbeq	r6, r6, pc, asr r2
    46e4:	02b5b905 	adcseq	fp, r5, #81920	; 0x14000
    46e8:	0c100000 	ldceq	0, cr0, [r0], {-0}
    46ec:	00000c61 	andeq	r0, r0, r1, ror #24
    46f0:	0030ba05 	eorseq	fp, r0, r5, lsl #20
    46f4:	0c180000 	ldceq	0, cr0, [r8], {-0}
    46f8:	00000eef 	andeq	r0, r0, pc, ror #29
    46fc:	0081c105 	addeq	ip, r1, r5, lsl #2
    4700:	0c1c0000 	ldceq	0, cr0, [ip], {-0}
    4704:	00000e1f 	andeq	r0, r0, pc, lsl lr
    4708:	056dc305 	strbeq	ip, [sp, #-773]!	; 0x305
    470c:	0c200000 	stceq	0, cr0, [r0], #-0
    4710:	00000cad 	andeq	r0, r0, sp, lsr #25
    4714:	059cc505 	ldreq	ip, [ip, #1285]	; 0x505
    4718:	0c240000 	stceq	0, cr0, [r4], #-0
    471c:	00000fc4 	andeq	r0, r0, r4, asr #31
    4720:	05c0c805 	strbeq	ip, [r0, #2053]	; 0x805
    4724:	0c280000 	stceq	0, cr0, [r8], #-0
    4728:	00000dfc 	strdeq	r0, [r0], -ip
    472c:	05dac905 	ldrbeq	ip, [sl, #2309]	; 0x905
    4730:	0e2c0000 	cdpeq	0, 2, cr0, cr12, cr0, {0}
    4734:	0062755f 	rsbeq	r7, r2, pc, asr r5
    4738:	02b5cc05 	adcseq	ip, r5, #1280	; 0x500
    473c:	0e300000 	cdpeq	0, 3, cr0, cr0, cr0, {0}
    4740:	0070755f 	rsbseq	r7, r0, pc, asr r5
    4744:	02dacd05 	sbcseq	ip, sl, #320	; 0x140
    4748:	0e380000 	cdpeq	0, 3, cr0, cr8, cr0, {0}
    474c:	0072755f 	rsbseq	r7, r2, pc, asr r5
    4750:	0030ce05 	eorseq	ip, r0, r5, lsl #28
    4754:	0c3c0000 	ldceq	0, cr0, [ip], #-0
    4758:	00001040 	andeq	r1, r0, r0, asr #32
    475c:	05e0d105 	strbeq	sp, [r0, #261]!	; 0x105
    4760:	0c400000 	mareq	acc0, r0, r0
    4764:	00000d52 	andeq	r0, r0, r2, asr sp
    4768:	05f0d205 	ldrbeq	sp, [r0, #517]!	; 0x205
    476c:	0e430000 	cdpeq	0, 4, cr0, cr3, cr0, {0}
    4770:	00626c5f 	rsbeq	r6, r2, pc, asr ip
    4774:	02b5d505 	adcseq	sp, r5, #20971520	; 0x1400000
    4778:	0c440000 	mareq	acc0, r0, r4
    477c:	000002ee 	andeq	r0, r0, lr, ror #5
    4780:	0030d805 	eorseq	sp, r0, r5, lsl #16
    4784:	0c4c0000 	mareq	acc0, r0, ip
    4788:	00000c3c 	andeq	r0, r0, ip, lsr ip
    478c:	008ed905 	addeq	sp, lr, r5, lsl #18
    4790:	0c500000 	mraeq	r0, r0, acc0
    4794:	00001066 	andeq	r1, r0, r6, rrx
    4798:	0428dc05 	strteq	sp, [r8], #-3077	; 0xc05
    479c:	0c540000 	mraeq	r0, r4, acc0
    47a0:	00001407 	andeq	r1, r0, r7, lsl #8
    47a4:	0112e005 	tsteq	r2, r5
    47a8:	0c580000 	mraeq	r0, r8, acc0
    47ac:	00000db0 			; <UNDEFINED> instruction: 0x00000db0
    47b0:	0107e205 	tsteq	r7, r5, lsl #4
    47b4:	0c5c0000 	mraeq	r0, ip, acc0
    47b8:	00000dc3 	andeq	r0, r0, r3, asr #27
    47bc:	0030e305 	eorseq	lr, r0, r5, lsl #6
    47c0:	00640000 	rsbeq	r0, r4, r0
    47c4:	00003013 	andeq	r3, r0, r3, lsl r0
    47c8:	00042800 	andeq	r2, r4, r0, lsl #16
    47cc:	04281400 	strteq	r1, [r8], #-1024	; 0x400
    47d0:	81140000 	tsthi	r4, r0
    47d4:	14000000 	strne	r0, [r0], #-0
    47d8:	00000560 	andeq	r0, r0, r0, ror #10
    47dc:	00003014 	andeq	r3, r0, r4, lsl r0
    47e0:	040f0000 	streq	r0, [pc], #-0	; 47e8 <_stacks_size+0x40c8>
    47e4:	0000042e 	andeq	r0, r0, lr, lsr #8
    47e8:	00134c15 	andseq	r4, r3, r5, lsl ip
    47ec:	05042800 	streq	r2, [r4, #-2048]	; 0x800
    47f0:	05600239 	strbeq	r0, [r0, #-569]!	; 0x239
    47f4:	2a160000 	bcs	5847fc <_ram_limit+0x16c7fc>
    47f8:	0500000c 	streq	r0, [r0, #-12]
    47fc:	0030023b 	eorseq	r0, r0, fp, lsr r2
    4800:	16000000 	strne	r0, [r0], -r0
    4804:	0000101a 	andeq	r1, r0, sl, lsl r0
    4808:	47024005 	strmi	r4, [r2, -r5]
    480c:	04000006 	streq	r0, [r0], #-6
    4810:	000d2f16 	andeq	r2, sp, r6, lsl pc
    4814:	02400500 	subeq	r0, r0, #0, 10
    4818:	00000647 	andeq	r0, r0, r7, asr #12
    481c:	0e2c1608 	cfmadda32eq	mvax0, mvax1, mvfx12, mvfx8
    4820:	40050000 	andmi	r0, r5, r0
    4824:	00064702 	andeq	r4, r6, r2, lsl #14
    4828:	e0160c00 	ands	r0, r6, r0, lsl #24
    482c:	0500000f 	streq	r0, [r0, #-15]
    4830:	00300242 	eorseq	r0, r0, r2, asr #4
    4834:	16100000 	ldrne	r0, [r0], -r0
    4838:	00000d3f 	andeq	r0, r0, pc, lsr sp
    483c:	29024305 	stmdbcs	r2, {r0, r2, r8, r9, lr}
    4840:	14000008 	strne	r0, [r0], #-8
    4844:	000f4e16 	andeq	r4, pc, r6, lsl lr	; <UNPREDICTABLE>
    4848:	02450500 	subeq	r0, r5, #0, 10
    484c:	00000030 	andeq	r0, r0, r0, lsr r0
    4850:	10211630 	eorne	r1, r1, r0, lsr r6
    4854:	46050000 	strmi	r0, [r5], -r0
    4858:	00059102 	andeq	r9, r5, r2, lsl #2
    485c:	31163400 	tstcc	r6, r0, lsl #8
    4860:	0500000c 	streq	r0, [r0, #-12]
    4864:	00300248 	eorseq	r0, r0, r8, asr #4
    4868:	16380000 	ldrtne	r0, [r8], -r0
    486c:	00000f68 	andeq	r0, r0, r8, ror #30
    4870:	44024a05 	strmi	r4, [r2], #-2565	; 0xa05
    4874:	3c000008 	stccc	0, cr0, [r0], {8}
    4878:	000fca16 	andeq	ip, pc, r6, lsl sl	; <UNPREDICTABLE>
    487c:	024d0500 	subeq	r0, sp, #0, 10
    4880:	0000017b 	andeq	r0, r0, fp, ror r1
    4884:	0c791640 	ldcleq	6, cr1, [r9], #-256	; 0xffffff00
    4888:	4e050000 	cdpmi	0, 0, cr0, cr5, cr0, {0}
    488c:	00003002 	andeq	r3, r0, r2
    4890:	04164400 	ldreq	r4, [r6], #-1024	; 0x400
    4894:	05000010 	streq	r0, [r0, #-16]
    4898:	017b024f 	cmneq	fp, pc, asr #4
    489c:	16480000 	strbne	r0, [r8], -r0
    48a0:	00000da1 	andeq	r0, r0, r1, lsr #27
    48a4:	4a025005 	bmi	988c0 <_stacks_size+0x981a0>
    48a8:	4c000008 	stcmi	0, cr0, [r0], {8}
    48ac:	000d4a16 	andeq	r4, sp, r6, lsl sl
    48b0:	02530500 	subseq	r0, r3, #0, 10
    48b4:	00000030 	andeq	r0, r0, r0, lsr r0
    48b8:	0ee71650 	mcreq	6, 7, r1, cr7, cr0, {2}
    48bc:	54050000 	strpl	r0, [r5], #-0
    48c0:	00056002 	andeq	r6, r5, r2
    48c4:	5b165400 	blpl	5998cc <_ram_limit+0x1818cc>
    48c8:	05000010 	streq	r0, [r0, #-16]
    48cc:	08070277 	stmdaeq	r7, {r0, r1, r2, r4, r5, r6, r9}
    48d0:	17580000 	ldrbne	r0, [r8, -r0]
    48d4:	00000d37 	andeq	r0, r0, r7, lsr sp
    48d8:	98027b05 	stmdals	r2, {r0, r2, r8, r9, fp, ip, sp, lr}
    48dc:	48000002 	stmdami	r0, {r1}
    48e0:	0de21701 	stcleq	7, cr1, [r2, #4]!
    48e4:	7c050000 	stcvc	0, cr0, [r5], {-0}
    48e8:	00025a02 	andeq	r5, r2, r2, lsl #20
    48ec:	17014c00 	strne	r4, [r1, -r0, lsl #24]
    48f0:	00000d8e 	andeq	r0, r0, lr, lsl #27
    48f4:	5b028005 	blpl	a4910 <_stacks_size+0xa41f0>
    48f8:	dc000008 	stcle	0, cr0, [r0], {8}
    48fc:	0e6d1702 	cdpeq	7, 6, cr1, cr13, cr2, {0}
    4900:	85050000 	strhi	r0, [r5, #-0]
    4904:	00060c02 	andeq	r0, r6, r2, lsl #24
    4908:	1702e000 	strne	lr, [r2, -r0]
    490c:	00000c8b 	andeq	r0, r0, fp, lsl #25
    4910:	67028605 	strvs	r8, [r2, -r5, lsl #12]
    4914:	ec000008 	stc	0, cr0, [r0], {8}
    4918:	040f0002 	streq	r0, [pc], #-2	; 4920 <_stacks_size+0x4200>
    491c:	00000566 	andeq	r0, r0, r6, ror #10
    4920:	52080104 	andpl	r0, r8, #4, 2
    4924:	0f000000 	svceq	0x00000000
    4928:	00040a04 	andeq	r0, r4, r4, lsl #20
    492c:	00301300 	eorseq	r1, r0, r0, lsl #6
    4930:	05910000 	ldreq	r0, [r1]
    4934:	28140000 	ldmdacs	r4, {}	; <UNPREDICTABLE>
    4938:	14000004 	strne	r0, [r0], #-4
    493c:	00000081 	andeq	r0, r0, r1, lsl #1
    4940:	00059114 	andeq	r9, r5, r4, lsl r1
    4944:	00301400 	eorseq	r1, r0, r0, lsl #8
    4948:	0f000000 	svceq	0x00000000
    494c:	00059704 	andeq	r9, r5, r4, lsl #14
    4950:	05661800 	strbeq	r1, [r6, #-2048]!	; 0x800
    4954:	040f0000 	streq	r0, [pc], #-0	; 495c <_stacks_size+0x423c>
    4958:	00000573 	andeq	r0, r0, r3, ror r5
    495c:	00009913 	andeq	r9, r0, r3, lsl r9
    4960:	0005c000 	andeq	ip, r5, r0
    4964:	04281400 	strteq	r1, [r8], #-1024	; 0x400
    4968:	81140000 	tsthi	r4, r0
    496c:	14000000 	strne	r0, [r0], #-0
    4970:	00000099 	muleq	r0, r9, r0
    4974:	00003014 	andeq	r3, r0, r4, lsl r0
    4978:	040f0000 	streq	r0, [pc], #-0	; 4980 <_stacks_size+0x4260>
    497c:	000005a2 	andeq	r0, r0, r2, lsr #11
    4980:	00003013 	andeq	r3, r0, r3, lsl r0
    4984:	0005da00 	andeq	sp, r5, r0, lsl #20
    4988:	04281400 	strteq	r1, [r8], #-1024	; 0x400
    498c:	81140000 	tsthi	r4, r0
    4990:	00000000 	andeq	r0, r0, r0
    4994:	05c6040f 	strbeq	r0, [r6, #1039]	; 0x40f
    4998:	50090000 	andpl	r0, r9, r0
    499c:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
    49a0:	0a000005 	beq	49bc <_stacks_size+0x429c>
    49a4:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    49a8:	50090002 	andpl	r0, r9, r2
    49ac:	00000000 	andeq	r0, r0, r0
    49b0:	0a000006 	beq	49d0 <_stacks_size+0x42b0>
    49b4:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    49b8:	71060000 	mrsvc	r0, (UNDEF: 6)
    49bc:	0500000d 	streq	r0, [r0, #-13]
    49c0:	02e0011d 	rsceq	r0, r0, #1073741831	; 0x40000007
    49c4:	05190000 	ldreq	r0, [r9, #-0]
    49c8:	0c000013 	stceq	0, cr0, [r0], {19}
    49cc:	41012105 	tstmi	r1, r5, lsl #2
    49d0:	16000006 	strne	r0, [r0], -r6
    49d4:	00001014 	andeq	r1, r0, r4, lsl r0
    49d8:	41012305 	tstmi	r1, r5, lsl #6
    49dc:	00000006 	andeq	r0, r0, r6
    49e0:	000d6a16 	andeq	r6, sp, r6, lsl sl
    49e4:	01240500 	teqeq	r4, r0, lsl #10
    49e8:	00000030 	andeq	r0, r0, r0, lsr r0
    49ec:	0dcb1604 	stcleq	6, cr1, [fp, #16]
    49f0:	25050000 	strcs	r0, [r5, #-0]
    49f4:	00064701 	andeq	r4, r6, r1, lsl #14
    49f8:	0f000800 	svceq	0x00000800
    49fc:	00060c04 	andeq	r0, r6, r4, lsl #24
    4a00:	00040f00 	andeq	r0, r4, r0, lsl #30
    4a04:	19000006 	stmdbne	r0, {r1, r2}
    4a08:	00000faa 	andeq	r0, r0, sl, lsr #31
    4a0c:	013d050e 	teqeq	sp, lr, lsl #10
    4a10:	00000682 	andeq	r0, r0, r2, lsl #13
    4a14:	000fa416 	andeq	sl, pc, r6, lsl r4	; <UNPREDICTABLE>
    4a18:	013e0500 	teqeq	lr, r0, lsl #10
    4a1c:	00000682 	andeq	r0, r0, r2, lsl #13
    4a20:	0dd11600 	ldcleq	6, cr1, [r1]
    4a24:	3f050000 	svccc	0x00050000
    4a28:	00068201 	andeq	r8, r6, r1, lsl #4
    4a2c:	db160600 	blle	586234 <_ram_limit+0x16e234>
    4a30:	0500000f 	streq	r0, [r0, #-15]
    4a34:	005e0140 	subseq	r0, lr, r0, asr #2
    4a38:	000c0000 	andeq	r0, ip, r0
    4a3c:	00005e09 	andeq	r5, r0, r9, lsl #28
    4a40:	00069200 	andeq	r9, r6, r0, lsl #4
    4a44:	00df0a00 	sbcseq	r0, pc, r0, lsl #20
    4a48:	00020000 	andeq	r0, r2, r0
    4a4c:	5805d01a 	stmdapl	r5, {r1, r3, r4, ip, lr, pc}
    4a50:	00079302 	andeq	r9, r7, r2, lsl #6
    4a54:	0f0c1600 	svceq	0x000c1600
    4a58:	5a050000 	bpl	144a60 <_stacks_size+0x144340>
    4a5c:	00004202 	andeq	r4, r0, r2, lsl #4
    4a60:	97160000 	ldrls	r0, [r6, -r0]
    4a64:	0500000f 	streq	r0, [r0, #-15]
    4a68:	0560025b 	strbeq	r0, [r0, #-603]!	; 0x25b
    4a6c:	16040000 	strne	r0, [r4], -r0
    4a70:	00001046 	andeq	r1, r0, r6, asr #32
    4a74:	93025c05 	movwls	r5, #11269	; 0x2c05
    4a78:	08000007 	stmdaeq	r0, {r0, r1, r2}
    4a7c:	000cb416 	andeq	fp, ip, r6, lsl r4
    4a80:	025d0500 	subseq	r0, sp, #0, 10
    4a84:	00000191 	muleq	r0, r1, r1
    4a88:	0efd1624 	cdpeq	6, 15, cr1, cr13, cr4, {1}
    4a8c:	5e050000 	cdppl	0, 0, cr0, cr5, cr0, {0}
    4a90:	00003002 	andeq	r3, r0, r2
    4a94:	0f164800 	svceq	0x00164800
    4a98:	05000010 	streq	r0, [r0, #-16]
    4a9c:	007a025f 	rsbseq	r0, sl, pc, asr r2
    4aa0:	16500000 	ldrbne	r0, [r0], -r0
    4aa4:	00000d2a 	andeq	r0, r0, sl, lsr #26
    4aa8:	4d026005 	stcmi	0, cr6, [r2, #-20]	; 0xffffffec
    4aac:	58000006 	stmdapl	r0, {r1, r2}
    4ab0:	000c4416 	andeq	r4, ip, r6, lsl r4
    4ab4:	02610500 	rsbeq	r0, r1, #0, 10
    4ab8:	00000107 	andeq	r0, r0, r7, lsl #2
    4abc:	0f2b1668 	svceq	0x002b1668
    4ac0:	62050000 	andvs	r0, r5, #0
    4ac4:	00010702 	andeq	r0, r1, r2, lsl #14
    4ac8:	ea167000 	b	5a0ad0 <_ram_limit+0x188ad0>
    4acc:	0500000f 	streq	r0, [r0, #-15]
    4ad0:	01070263 	tsteq	r7, r3, ror #4
    4ad4:	16780000 	ldrbtne	r0, [r8], -r0
    4ad8:	00000c51 	andeq	r0, r0, r1, asr ip
    4adc:	a3026405 	movwge	r6, #9221	; 0x2405
    4ae0:	80000007 	andhi	r0, r0, r7
    4ae4:	000c9016 	andeq	r9, ip, r6, lsl r0
    4ae8:	02650500 	rsbeq	r0, r5, #0, 10
    4aec:	000007b3 			; <UNDEFINED> instruction: 0x000007b3
    4af0:	0d781688 	ldcleq	6, cr1, [r8, #-544]!	; 0xfffffde0
    4af4:	66050000 	strvs	r0, [r5], -r0
    4af8:	00003002 	andeq	r3, r0, r2
    4afc:	4016a000 	andsmi	sl, r6, r0
    4b00:	0500000f 	streq	r0, [r0, #-15]
    4b04:	01070267 	tsteq	r7, r7, ror #4
    4b08:	16a40000 	strtne	r0, [r4], r0
    4b0c:	00000e83 	andeq	r0, r0, r3, lsl #29
    4b10:	07026805 	streq	r6, [r2, -r5, lsl #16]
    4b14:	ac000001 	stcge	0, cr0, [r0], {1}
    4b18:	000d1916 	andeq	r1, sp, r6, lsl r9
    4b1c:	02690500 	rsbeq	r0, r9, #0, 10
    4b20:	00000107 	andeq	r0, r0, r7, lsl #2
    4b24:	103116b4 	ldrhtne	r1, [r1], -r4
    4b28:	6a050000 	bvs	144b30 <_stacks_size+0x144410>
    4b2c:	00010702 	andeq	r0, r1, r2, lsl #14
    4b30:	9c16bc00 	ldcls	12, cr11, [r6], {-0}
    4b34:	0500000c 	streq	r0, [r0, #-12]
    4b38:	0107026b 	tsteq	r7, fp, ror #4
    4b3c:	16c40000 	strbne	r0, [r4], r0
    4b40:	00000e64 	andeq	r0, r0, r4, ror #28
    4b44:	30026c05 	andcc	r6, r2, r5, lsl #24
    4b48:	cc000000 	stcgt	0, cr0, [r0], {-0}
    4b4c:	05660900 	strbeq	r0, [r6, #-2304]!	; 0x900
    4b50:	07a30000 	streq	r0, [r3, r0]!
    4b54:	df0a0000 	svcle	0x000a0000
    4b58:	19000000 	stmdbne	r0, {}	; <UNPREDICTABLE>
    4b5c:	05660900 	strbeq	r0, [r6, #-2304]!	; 0x900
    4b60:	07b30000 	ldreq	r0, [r3, r0]!
    4b64:	df0a0000 	svcle	0x000a0000
    4b68:	07000000 	streq	r0, [r0, -r0]
    4b6c:	05660900 	strbeq	r0, [r6, #-2304]!	; 0x900
    4b70:	07c30000 	strbeq	r0, [r3, r0]
    4b74:	df0a0000 	svcle	0x000a0000
    4b78:	17000000 	strne	r0, [r0, -r0]
    4b7c:	05f01a00 	ldrbeq	r1, [r0, #2560]!	; 0xa00
    4b80:	07e70271 			; <UNDEFINED> instruction: 0x07e70271
    4b84:	25160000 	ldrcs	r0, [r6, #-0]
    4b88:	0500000e 	streq	r0, [r0, #-14]
    4b8c:	07e70274 			; <UNDEFINED> instruction: 0x07e70274
    4b90:	16000000 	strne	r0, [r0], -r0
    4b94:	00000d98 	muleq	r0, r8, sp
    4b98:	f7027505 			; <UNDEFINED> instruction: 0xf7027505
    4b9c:	78000007 	stmdavc	r0, {r0, r1, r2}
    4ba0:	02da0900 	sbcseq	r0, sl, #0, 18
    4ba4:	07f70000 	ldrbeq	r0, [r7, r0]!
    4ba8:	df0a0000 	svcle	0x000a0000
    4bac:	1d000000 	stcne	0, cr0, [r0, #-0]
    4bb0:	00420900 	subeq	r0, r2, r0, lsl #18
    4bb4:	08070000 	stmdaeq	r7, {}	; <UNPREDICTABLE>
    4bb8:	df0a0000 	svcle	0x000a0000
    4bbc:	1d000000 	stcne	0, cr0, [r0, #-0]
    4bc0:	05f01b00 	ldrbeq	r1, [r0, #2816]!	; 0xb00
    4bc4:	08290256 	stmdaeq	r9!, {r1, r2, r4, r6, r9}
    4bc8:	4c1c0000 	ldcmi	0, cr0, [ip], {-0}
    4bcc:	05000013 	streq	r0, [r0, #-19]
    4bd0:	0692026d 	ldreq	r0, [r2], sp, ror #4
    4bd4:	231c0000 	tstcs	ip, #0
    4bd8:	0500000f 	streq	r0, [r0, #-15]
    4bdc:	07c30276 			; <UNDEFINED> instruction: 0x07c30276
    4be0:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    4be4:	00000566 	andeq	r0, r0, r6, ror #10
    4be8:	00000839 	andeq	r0, r0, r9, lsr r8
    4bec:	0000df0a 	andeq	sp, r0, sl, lsl #30
    4bf0:	1d001800 	stcne	8, cr1, [r0, #-0]
    4bf4:	00000844 	andeq	r0, r0, r4, asr #16
    4bf8:	00042814 	andeq	r2, r4, r4, lsl r8
    4bfc:	040f0000 	streq	r0, [pc], #-0	; 4c04 <_stacks_size+0x44e4>
    4c00:	00000839 	andeq	r0, r0, r9, lsr r8
    4c04:	017b040f 	cmneq	fp, pc, lsl #8
    4c08:	5b1d0000 	blpl	744c10 <_ram_limit+0x32cc10>
    4c0c:	14000008 	strne	r0, [r0], #-8
    4c10:	00000030 	andeq	r0, r0, r0, lsr r0
    4c14:	61040f00 	tstvs	r4, r0, lsl #30
    4c18:	0f000008 	svceq	0x00000008
    4c1c:	00085004 	andeq	r5, r8, r4
    4c20:	06000900 	streq	r0, [r0], -r0, lsl #18
    4c24:	08770000 	ldmdaeq	r7!, {}^	; <UNPREDICTABLE>
    4c28:	df0a0000 	svcle	0x000a0000
    4c2c:	02000000 	andeq	r0, r0, #0
    4c30:	14aa1900 	strtne	r1, [sl], #2304	; 0x900
    4c34:	01280000 	teqeq	r8, r0
    4c38:	090702d8 	stmdbeq	r7, {r3, r4, r6, r7, r9}
    4c3c:	74160000 	ldrvc	r0, [r6], #-0
    4c40:	01000013 	tsteq	r0, r3, lsl r0
    4c44:	003002d9 	ldrsbteq	r0, [r0], -r9
    4c48:	16000000 	strne	r0, [r0], -r0
    4c4c:	0000139b 	muleq	r0, fp, r3
    4c50:	3002da01 	andcc	sp, r2, r1, lsl #20
    4c54:	04000000 	streq	r0, [r0], #-0
    4c58:	00144d16 	andseq	r4, r4, r6, lsl sp
    4c5c:	02db0100 	sbcseq	r0, fp, #0, 2
    4c60:	00000030 	andeq	r0, r0, r0, lsr r0
    4c64:	136e1608 	cmnne	lr, #8, 12	; 0x800000
    4c68:	dc010000 	stcle	0, cr0, [r1], {-0}
    4c6c:	00003002 	andeq	r3, r0, r2
    4c70:	15160c00 	ldrne	r0, [r6, #-3072]	; 0xc00
    4c74:	01000015 	tsteq	r0, r5, lsl r0
    4c78:	003002dd 	ldrsbteq	r0, [r0], -sp
    4c7c:	16100000 	ldrne	r0, [r0], -r0
    4c80:	00001479 	andeq	r1, r0, r9, ror r4
    4c84:	3002de01 	andcc	sp, r2, r1, lsl #28
    4c88:	14000000 	strne	r0, [r0], #-0
    4c8c:	00144c16 	andseq	r4, r4, r6, lsl ip
    4c90:	02df0100 	sbcseq	r0, pc, #0, 2
    4c94:	00000030 	andeq	r0, r0, r0, lsr r0
    4c98:	14171618 	ldrne	r1, [r7], #-1560	; 0x618
    4c9c:	e0010000 	and	r0, r1, r0
    4ca0:	00003002 	andeq	r3, r0, r2
    4ca4:	9a161c00 	bls	58bcac <_ram_limit+0x173cac>
    4ca8:	01000013 	tsteq	r0, r3, lsl r0
    4cac:	003002e1 	eorseq	r0, r0, r1, ror #5
    4cb0:	16200000 	strtne	r0, [r0], -r0
    4cb4:	000014f9 	strdeq	r1, [r0], -r9
    4cb8:	3002e201 	andcc	lr, r2, r1, lsl #4
    4cbc:	24000000 	strcs	r0, [r0], #-0
    4cc0:	14541900 	ldrbne	r1, [r4], #-2304	; 0x900
    4cc4:	01100000 	tsteq	r0, r0
    4cc8:	094704e9 	stmdbeq	r7, {r0, r3, r5, r6, r7, sl}^
    4ccc:	53160000 	tstpl	r6, #0
    4cd0:	01000013 	tsteq	r0, r3, lsl r0
    4cd4:	003704eb 	eorseq	r0, r7, fp, ror #9
    4cd8:	16000000 	strne	r0, [r0], -r0
    4cdc:	00001588 	andeq	r1, r0, r8, lsl #11
    4ce0:	3704ec01 	strcc	lr, [r4, -r1, lsl #24]
    4ce4:	04000000 	streq	r0, [r0], #-0
    4ce8:	0064661e 	rsbeq	r6, r4, lr, lsl r6
    4cec:	4704ed01 	strmi	lr, [r4, -r1, lsl #26]
    4cf0:	08000009 	stmdaeq	r0, {r0, r3}
    4cf4:	006b621e 	rsbeq	r6, fp, lr, lsl r2
    4cf8:	4704ee01 	strmi	lr, [r4, -r1, lsl #28]
    4cfc:	0c000009 	stceq	0, cr0, [r0], {9}
    4d00:	07040f00 	streq	r0, [r4, -r0, lsl #30]
    4d04:	06000009 	streq	r0, [r0], -r9
    4d08:	000014ef 	andeq	r1, r0, pc, ror #9
    4d0c:	4704f101 	strmi	pc, [r4, -r1, lsl #2]
    4d10:	06000009 	streq	r0, [r0], -r9
    4d14:	0000138a 	andeq	r1, r0, sl, lsl #7
    4d18:	47061d01 	strmi	r1, [r6, -r1, lsl #26]
    4d1c:	1f000009 	svcne	0x00000009
    4d20:	000014d8 	ldrdeq	r1, [r0], -r8
    4d24:	300ce901 	andcc	lr, ip, r1, lsl #18
    4d28:	a0000000 	andge	r0, r0, r0
    4d2c:	00004011 	andeq	r4, r0, r1, lsl r0
    4d30:	01000001 	tsteq	r0, r1
    4d34:	000a739c 	muleq	sl, ip, r3
    4d38:	14ce2000 	strbne	r2, [lr], #0
    4d3c:	e9010000 	stmdb	r1, {}	; <UNPREDICTABLE>
    4d40:	0004280c 	andeq	r2, r4, ip, lsl #16
    4d44:	00031300 	andeq	r1, r3, r0, lsl #6
    4d48:	61702100 	cmnvs	r0, r0, lsl #2
    4d4c:	e9010064 	stmdb	r1, {r2, r5, r6}
    4d50:	0000370c 	andeq	r3, r0, ip, lsl #14
    4d54:	00036300 	andeq	r6, r3, r0, lsl #6
    4d58:	15f72200 	ldrbne	r2, [r7, #512]!	; 0x200
    4d5c:	ee010000 	cdp	0, 0, cr0, cr1, cr0, {0}
    4d60:	0000650c 	andeq	r6, r0, ip, lsl #10
    4d64:	00038f00 	andeq	r8, r3, r0, lsl #30
    4d68:	13f92200 	mvnsne	r2, #0, 4
    4d6c:	ef010000 	svc	0x00010000
    4d70:	0000650c 	andeq	r6, r0, ip, lsl #10
    4d74:	0003d300 	andeq	sp, r3, r0, lsl #6
    4d78:	148d2200 	strne	r2, [sp], #512	; 0x200
    4d7c:	f0010000 			; <UNDEFINED> instruction: 0xf0010000
    4d80:	0005600c 	andeq	r6, r5, ip
    4d84:	0003fc00 	andeq	pc, r3, r0, lsl #24
    4d88:	13922200 	orrsne	r2, r2, #0, 4
    4d8c:	f1010000 	setend	le
    4d90:	0005600c 	andeq	r6, r5, ip
    4d94:	00042500 	andeq	r2, r4, r0, lsl #10
    4d98:	14862300 	strne	r2, [r6], #768	; 0x300
    4d9c:	f3010000 	vhadd.u8	d0, d1, d0
    4da0:	00006c0c 	andeq	r6, r0, ip, lsl #24
    4da4:	24100000 	ldrcs	r0, [r0], #-0
    4da8:	004011b4 	strheq	r1, [r0], #-20	; 0xffffffec
    4dac:	00000bcb 	andeq	r0, r0, fp, asr #23
    4db0:	00000a01 	andeq	r0, r0, r1, lsl #20
    4db4:	02500125 	subseq	r0, r0, #1073741833	; 0x40000009
    4db8:	24000074 	strcs	r0, [r0], #-116	; 0x74
    4dbc:	004011ec 	subeq	r1, r0, ip, ror #3
    4dc0:	00000bdd 	ldrdeq	r0, [r0], -sp
    4dc4:	00000a1a 	andeq	r0, r0, sl, lsl sl
    4dc8:	01510125 	cmpeq	r1, r5, lsr #2
    4dcc:	50012530 	andpl	r2, r1, r0, lsr r5
    4dd0:	00007402 	andeq	r7, r0, r2, lsl #8
    4dd4:	40120424 	andsmi	r0, r2, r4, lsr #8
    4dd8:	000bf700 	andeq	pc, fp, r0, lsl #14
    4ddc:	000a2e00 	andeq	r2, sl, r0, lsl #28
    4de0:	50012500 	andpl	r2, r1, r0, lsl #10
    4de4:	00007402 	andeq	r7, r0, r2, lsl #8
    4de8:	40121c24 	andsmi	r1, r2, r4, lsr #24
    4dec:	000bdd00 	andeq	sp, fp, r0, lsl #26
    4df0:	000a4900 	andeq	r4, sl, r0, lsl #18
    4df4:	51012500 	tstpl	r1, r0, lsl #10
    4df8:	1f007703 	svcne	0x00007703
    4dfc:	02500125 	subseq	r0, r0, #1073741833	; 0x40000009
    4e00:	24000074 	strcs	r0, [r0], #-116	; 0x74
    4e04:	0040124c 	subeq	r1, r0, ip, asr #4
    4e08:	00000bf7 	strdeq	r0, [r0], -r7
    4e0c:	00000a5d 	andeq	r0, r0, sp, asr sl
    4e10:	02500125 	subseq	r0, r0, #1073741833	; 0x40000009
    4e14:	26000074 			; <UNDEFINED> instruction: 0x26000074
    4e18:	00401264 	subeq	r1, r0, r4, ror #4
    4e1c:	00000bdd 	ldrdeq	r0, [r0], -sp
    4e20:	01510125 	cmpeq	r1, r5, lsr #2
    4e24:	50012530 	andpl	r2, r1, r0, lsr r5
    4e28:	00007402 	andeq	r7, r0, r2, lsl #8
    4e2c:	13342700 	teqne	r4, #0, 14
    4e30:	3e010000 	cdpcc	0, 0, cr0, cr1, cr0, {0}
    4e34:	4012a00a 	andsmi	sl, r2, sl
    4e38:	00026c00 	andeq	r6, r2, r0, lsl #24
    4e3c:	7e9c0100 	fmlvce	f0, f4, f0
    4e40:	2000000b 	andcs	r0, r0, fp
    4e44:	000014ce 	andeq	r1, r0, lr, asr #9
    4e48:	280a3e01 	stmdacs	sl, {r0, r9, sl, fp, ip, sp}
    4e4c:	43000004 	movwmi	r0, #4
    4e50:	21000004 	tstcs	r0, r4
    4e54:	006d656d 	rsbeq	r6, sp, sp, ror #10
    4e58:	810a3e01 	tsthi	sl, r1, lsl #28
    4e5c:	7a000000 	bvc	4e64 <_stacks_size+0x4744>
    4e60:	28000004 	stmdacs	r0, {r2}
    4e64:	49010070 	stmdbmi	r1, {r4, r5, r6}
    4e68:	00094d0a 	andeq	r4, r9, sl, lsl #26
    4e6c:	0004cc00 	andeq	ip, r4, r0, lsl #24
    4e70:	64682800 	strbtvs	r2, [r8], #-2048	; 0x800
    4e74:	0a4a0100 	beq	128527c <_ram_limit+0xe6d27c>
    4e78:	00000037 	andeq	r0, r0, r7, lsr r0
    4e7c:	000004f5 	strdeq	r0, [r0], -r5
    4e80:	007a7328 	rsbseq	r7, sl, r8, lsr #6
    4e84:	370a4b01 	strcc	r4, [sl, -r1, lsl #22]
    4e88:	2b000000 	blcs	4e90 <_stacks_size+0x4770>
    4e8c:	28000005 	stmdacs	r0, {r0, r2}
    4e90:	00786469 	rsbseq	r6, r8, r9, ror #8
    4e94:	300a4c01 	andcc	r4, sl, r1, lsl #24
    4e98:	6a000000 	bvs	4ea0 <_stacks_size+0x4780>
    4e9c:	22000005 	andcs	r0, r0, #5
    4ea0:	00001015 	andeq	r1, r0, r5, lsl r0
    4ea4:	4d0a4d01 	stcmi	13, cr4, [sl, #-4]
    4ea8:	93000009 	movwls	r0, #9
    4eac:	22000005 	andcs	r0, r0, #5
    4eb0:	000014b3 			; <UNDEFINED> instruction: 0x000014b3
    4eb4:	370a4e01 	strcc	r4, [sl, -r1, lsl #28]
    4eb8:	fa000000 	blx	4ec0 <_stacks_size+0x47a0>
    4ebc:	22000005 	andcs	r0, r0, #5
    4ec0:	000014c7 	andeq	r1, r0, r7, asr #9
    4ec4:	370a4f01 	strcc	r4, [sl, -r1, lsl #30]
    4ec8:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    4ecc:	28000006 	stmdacs	r0, {r1, r2}
    4ed0:	006b6362 	rsbeq	r6, fp, r2, ror #6
    4ed4:	4d0a5001 	stcmi	0, cr5, [sl, #-4]
    4ed8:	45000009 	strmi	r0, [r0, #-9]
    4edc:	28000006 	stmdacs	r0, {r1, r2}
    4ee0:	00647766 	rsbeq	r7, r4, r6, ror #14
    4ee4:	4d0a5101 	stfmis	f5, [sl, #-4]
    4ee8:	8f000009 	svchi	0x00000009
    4eec:	22000006 	andcs	r0, r0, #6
    4ef0:	00001481 	andeq	r1, r0, r1, lsl #9
    4ef4:	300a5201 	andcc	r5, sl, r1, lsl #4
    4ef8:	ce000000 	cdpgt	0, 0, cr0, cr0, cr0, {0}
    4efc:	24000006 	strcs	r0, [r0], #-6
    4f00:	004012b4 	strheq	r1, [r0], #-36	; 0xffffffdc
    4f04:	00000bcb 	andeq	r0, r0, fp, asr #23
    4f08:	00000b59 	andeq	r0, r0, r9, asr fp
    4f0c:	02500125 	subseq	r0, r0, #1073741833	; 0x40000009
    4f10:	24000076 	strcs	r0, [r0], #-118	; 0x76
    4f14:	004013cc 	subeq	r1, r0, ip, asr #7
    4f18:	00000bf7 	strdeq	r0, [r0], -r7
    4f1c:	00000b6d 	andeq	r0, r0, sp, ror #22
    4f20:	02500125 	subseq	r0, r0, #1073741833	; 0x40000009
    4f24:	26000076 			; <UNDEFINED> instruction: 0x26000076
    4f28:	0040145c 	subeq	r1, r0, ip, asr r4
    4f2c:	00000965 	andeq	r0, r0, r5, ror #18
    4f30:	02500125 	subseq	r0, r0, #1073741833	; 0x40000009
    4f34:	00000076 	andeq	r0, r0, r6, ror r0
    4f38:	00095909 	andeq	r5, r9, r9, lsl #18
    4f3c:	000b8f00 	andeq	r8, fp, r0, lsl #30
    4f40:	00df2900 	sbcseq	r2, pc, r0, lsl #18
    4f44:	01010000 	mrseq	r0, (UNDEF: 1)
    4f48:	14ba2a00 	ldrtne	r2, [sl], #2560	; 0xa00
    4f4c:	51010000 	mrspl	r0, (UNDEF: 1)
    4f50:	000b7e06 	andeq	r7, fp, r6, lsl #28
    4f54:	14612a00 	strbtne	r2, [r1], #-2560	; 0xa00
    4f58:	c8010000 	stmdagt	r1, {}	; <UNPREDICTABLE>
    4f5c:	00006c06 	andeq	r6, r0, r6, lsl #24
    4f60:	135d2a00 	cmpne	sp, #0, 20
    4f64:	c9010000 	stmdbgt	r1, {}	; <UNPREDICTABLE>
    4f68:	00006c06 	andeq	r6, r0, r6, lsl #24
    4f6c:	15022a00 	strne	r2, [r2, #-2560]	; 0xa00
    4f70:	ce010000 	cdpgt	0, 0, cr0, cr1, cr0, {0}
    4f74:	00056006 	andeq	r6, r5, r6
    4f78:	14992a00 	ldrne	r2, [r9], #2560	; 0xa00
    4f7c:	d1010000 	mrsle	r0, (UNDEF: 1)
    4f80:	00087706 	andeq	r7, r8, r6, lsl #14
    4f84:	13ff2b00 	mvnsne	r2, #0, 22
    4f88:	48010000 	stmdami	r1, {}	; <UNPREDICTABLE>
    4f8c:	000bdd01 	andeq	sp, fp, r1, lsl #26
    4f90:	04281400 	strteq	r1, [r8], #-1024	; 0x400
    4f94:	2c000000 	stccs	0, cr0, [r0], {-0}
    4f98:	000014e7 	andeq	r1, r0, r7, ror #9
    4f9c:	00819a06 	addeq	r9, r1, r6, lsl #20
    4fa0:	0bf70000 	bleq	ffdc4fa8 <_STACK_FILLER+0x212e90b9>
    4fa4:	28140000 	ldmdacs	r4, {}	; <UNPREDICTABLE>
    4fa8:	14000004 	strne	r0, [r0], #-4
    4fac:	00000025 	andeq	r0, r0, r5, lsr #32
    4fb0:	137a2d00 	cmnne	sl, #0, 26
    4fb4:	49010000 	stmdbmi	r1, {}	; <UNPREDICTABLE>
    4fb8:	04281401 	strteq	r1, [r8], #-1025	; 0x401
    4fbc:	00000000 	andeq	r0, r0, r0
    4fc0:	00000d7d 	andeq	r0, r0, sp, ror sp
    4fc4:	12d00004 	sbcsne	r0, r0, #4
    4fc8:	01040000 	mrseq	r0, (UNDEF: 4)
    4fcc:	00000cc3 	andeq	r0, r0, r3, asr #25
    4fd0:	00142001 	andseq	r2, r4, r1
    4fd4:	0013a300 	andseq	sl, r3, r0, lsl #6
    4fd8:	0000c000 	andeq	ip, r0, r0
    4fdc:	00000000 	andeq	r0, r0, r0
    4fe0:	000f8d00 	andeq	r8, pc, r0, lsl #26
    4fe4:	140d0200 	strne	r0, [sp], #-512	; 0x200
    4fe8:	93020000 	movwls	r0, #8192	; 0x2000
    4fec:	00000030 	andeq	r0, r0, r0, lsr r0
    4ff0:	69050403 	stmdbvs	r5, {r0, r1, sl}
    4ff4:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    4ff8:	00000413 	andeq	r0, r0, r3, lsl r4
    4ffc:	0042d402 	subeq	sp, r2, r2, lsl #8
    5000:	04040000 	streq	r0, [r4], #-0
    5004:	00003607 	andeq	r3, r0, r7, lsl #12
    5008:	06010400 	streq	r0, [r1], -r0, lsl #8
    500c:	0000004b 	andeq	r0, r0, fp, asr #32
    5010:	49080104 	stmdbmi	r8, {r2, r8}
    5014:	04000000 	streq	r0, [r0], #-0
    5018:	019b0502 	orrseq	r0, fp, r2, lsl #10
    501c:	02040000 	andeq	r0, r4, #0
    5020:	00007207 	andeq	r7, r0, r7, lsl #4
    5024:	05040400 	streq	r0, [r4, #-1024]	; 0x400
    5028:	00000175 	andeq	r0, r0, r5, ror r1
    502c:	31070404 	tstcc	r7, r4, lsl #8
    5030:	04000000 	streq	r0, [r0], #-0
    5034:	01700508 	cmneq	r0, r8, lsl #10
    5038:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
    503c:	00002c07 	andeq	r2, r0, r7, lsl #24
    5040:	02040500 	andeq	r0, r4, #0, 10
    5044:	00000d58 	andeq	r0, r0, r8, asr sp
    5048:	00300703 	eorseq	r0, r0, r3, lsl #14
    504c:	ae020000 	cdpge	0, 0, cr0, cr2, cr0, {0}
    5050:	04000002 	streq	r0, [r0], #-2
    5054:	00006510 	andeq	r6, r0, r0, lsl r5
    5058:	0df40200 	lfmeq	f0, 2, [r4]
    505c:	27040000 	strcs	r0, [r4, -r0]
    5060:	00000065 	andeq	r0, r0, r5, rrx
    5064:	000f3906 	andeq	r3, pc, r6, lsl #18
    5068:	01610200 	cmneq	r1, r0, lsl #4
    506c:	00000042 	andeq	r0, r0, r2, asr #32
    5070:	4a040407 	bmi	106094 <_stacks_size+0x105974>
    5074:	000000cf 	andeq	r0, r0, pc, asr #1
    5078:	000c5b08 	andeq	r5, ip, r8, lsl #22
    507c:	a44c0400 	strbge	r0, [ip], #-1024	; 0x400
    5080:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    5084:	00000e34 	andeq	r0, r0, r4, lsr lr
    5088:	00cf4d04 	sbceq	r4, pc, r4, lsl #26
    508c:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    5090:	00000050 	andeq	r0, r0, r0, asr r0
    5094:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    5098:	0000df0a 	andeq	sp, r0, sl, lsl #30
    509c:	04000300 	streq	r0, [r0], #-768	; 0x300
    50a0:	01670704 	cmneq	r7, r4, lsl #14
    50a4:	080b0000 	stmdaeq	fp, {}	; <UNPREDICTABLE>
    50a8:	01074704 	tsteq	r7, r4, lsl #14
    50ac:	070c0000 	streq	r0, [ip, -r0]
    50b0:	0400000d 	streq	r0, [r0], #-13
    50b4:	00003049 	andeq	r3, r0, r9, asr #32
    50b8:	6a0c0000 	bvs	3050c0 <_stacks_size+0x3049a0>
    50bc:	0400000c 	streq	r0, [r0], #-12
    50c0:	0000b04e 	andeq	fp, r0, lr, asr #32
    50c4:	02000400 	andeq	r0, r0, #0, 8
    50c8:	00000f72 	andeq	r0, r0, r2, ror pc
    50cc:	00e64f04 	rsceq	r4, r6, r4, lsl #30
    50d0:	03020000 	movweq	r0, #8192	; 0x2000
    50d4:	0400000e 	streq	r0, [r0], #-14
    50d8:	00008353 	andeq	r8, r0, r3, asr r3
    50dc:	0fbc0200 	svceq	0x00bc0200
    50e0:	16050000 	strne	r0, [r5], -r0
    50e4:	0000006c 	andeq	r0, r0, ip, rrx
    50e8:	000f7d0d 	andeq	r7, pc, sp, lsl #26
    50ec:	2d051800 	stccs	8, cr1, [r5, #-0]
    50f0:	0000017b 	andeq	r0, r0, fp, ror r1
    50f4:	0010140c 	andseq	r1, r0, ip, lsl #8
    50f8:	7b2f0500 	blvc	bc6500 <_ram_limit+0x7ae500>
    50fc:	00000001 	andeq	r0, r0, r1
    5100:	006b5f0e 	rsbeq	r5, fp, lr, lsl #30
    5104:	00303005 	eorseq	r3, r0, r5
    5108:	0c040000 	stceq	0, cr0, [r4], {-0}
    510c:	00000f85 	andeq	r0, r0, r5, lsl #31
    5110:	00303005 	eorseq	r3, r0, r5
    5114:	0c080000 	stceq	0, cr0, [r8], {-0}
    5118:	00001009 	andeq	r1, r0, r9
    511c:	00303005 	eorseq	r3, r0, r5
    5120:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    5124:	00000f19 	andeq	r0, r0, r9, lsl pc
    5128:	00303005 	eorseq	r3, r0, r5
    512c:	0e100000 	cdpeq	0, 1, cr0, cr0, cr0, {0}
    5130:	0500785f 	streq	r7, [r0, #-2143]	; 0x85f
    5134:	00018131 	andeq	r8, r1, r1, lsr r1
    5138:	0f001400 	svceq	0x00001400
    513c:	00012804 	andeq	r2, r1, r4, lsl #16
    5140:	011d0900 	tsteq	sp, r0, lsl #18
    5144:	01910000 	orrseq	r0, r1, r0
    5148:	df0a0000 	svcle	0x000a0000
    514c:	00000000 	andeq	r0, r0, r0
    5150:	0f1e0d00 	svceq	0x001e0d00
    5154:	05240000 	streq	r0, [r4, #-0]!
    5158:	00020a35 	andeq	r0, r2, r5, lsr sl
    515c:	0e0c0c00 	cdpeq	12, 0, cr0, cr12, cr0, {0}
    5160:	37050000 	strcc	r0, [r5, -r0]
    5164:	00000030 	andeq	r0, r0, r0, lsr r0
    5168:	0d850c00 	stceq	12, cr0, [r5]
    516c:	38050000 	stmdacc	r5, {}	; <UNPREDICTABLE>
    5170:	00000030 	andeq	r0, r0, r0, lsr r0
    5174:	0e150c04 	cdpeq	12, 1, cr0, cr5, cr4, {0}
    5178:	39050000 	stmdbcc	r5, {}	; <UNPREDICTABLE>
    517c:	00000030 	andeq	r0, r0, r0, lsr r0
    5180:	0d0f0c08 	stceq	12, cr0, [pc, #-32]	; 5168 <_stacks_size+0x4a48>
    5184:	3a050000 	bcc	14518c <_stacks_size+0x144a6c>
    5188:	00000030 	andeq	r0, r0, r0, lsr r0
    518c:	0fd20c0c 	svceq	0x00d20c0c
    5190:	3b050000 	blcc	145198 <_stacks_size+0x144a78>
    5194:	00000030 	andeq	r0, r0, r0, lsr r0
    5198:	0f8d0c10 	svceq	0x008d0c10
    519c:	3c050000 	stccc	0, cr0, [r5], {-0}
    51a0:	00000030 	andeq	r0, r0, r0, lsr r0
    51a4:	0db90c14 	ldceq	12, cr0, [r9, #80]!	; 0x50
    51a8:	3d050000 	stccc	0, cr0, [r5, #-0]
    51ac:	00000030 	andeq	r0, r0, r0, lsr r0
    51b0:	0fb20c18 	svceq	0x00b20c18
    51b4:	3e050000 	cdpcc	0, 0, cr0, cr5, cr0, {0}
    51b8:	00000030 	andeq	r0, r0, r0, lsr r0
    51bc:	0dd70c1c 	ldcleq	12, cr0, [r7, #112]	; 0x70
    51c0:	3f050000 	svccc	0x00050000
    51c4:	00000030 	andeq	r0, r0, r0, lsr r0
    51c8:	75100020 	ldrvc	r0, [r0, #-32]
    51cc:	0800000e 	stmdaeq	r0, {r1, r2, r3}
    51d0:	4a480501 	bmi	12065dc <_ram_limit+0xdee5dc>
    51d4:	0c000002 	stceq	0, cr0, [r0], {2}
    51d8:	00000c83 	andeq	r0, r0, r3, lsl #25
    51dc:	024a4905 	subeq	r4, sl, #81920	; 0x14000
    51e0:	0c000000 	stceq	0, cr0, [r0], {-0}
    51e4:	00000ff8 	strdeq	r0, [r0], -r8
    51e8:	024a4a05 	subeq	r4, sl, #20480	; 0x5000
    51ec:	11800000 	orrne	r0, r0, r0
    51f0:	00000deb 	andeq	r0, r0, fp, ror #27
    51f4:	011d4c05 	tsteq	sp, r5, lsl #24
    51f8:	01000000 	mrseq	r0, (UNDEF: 0)
    51fc:	000f6011 	andeq	r6, pc, r1, lsl r0	; <UNPREDICTABLE>
    5200:	1d4f0500 	cfstr64ne	mvdx0, [pc, #-0]	; 5208 <_stacks_size+0x4ae8>
    5204:	04000001 	streq	r0, [r0], #-1
    5208:	81090001 	tsthi	r9, r1
    520c:	5a000000 	bpl	5214 <_stacks_size+0x4af4>
    5210:	0a000002 	beq	5220 <_stacks_size+0x4b00>
    5214:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    5218:	3710001f 			; <UNDEFINED> instruction: 0x3710001f
    521c:	9000000d 	andls	r0, r0, sp
    5220:	985b0501 	ldmdals	fp, {r0, r8, sl}^
    5224:	0c000002 	stceq	0, cr0, [r0], {2}
    5228:	00001014 	andeq	r1, r0, r4, lsl r0
    522c:	02985c05 	addseq	r5, r8, #1280	; 0x500
    5230:	0c000000 	stceq	0, cr0, [r0], {-0}
    5234:	00000fe5 	andeq	r0, r0, r5, ror #31
    5238:	00305d05 	eorseq	r5, r0, r5, lsl #26
    523c:	0c040000 	stceq	0, cr0, [r4], {-0}
    5240:	00000dab 	andeq	r0, r0, fp, lsr #27
    5244:	029e5f05 	addseq	r5, lr, #5, 30
    5248:	0c080000 	stceq	0, cr0, [r8], {-0}
    524c:	00000e75 	andeq	r0, r0, r5, ror lr
    5250:	020a6005 	andeq	r6, sl, #5
    5254:	00880000 	addeq	r0, r8, r0
    5258:	025a040f 	subseq	r0, sl, #251658240	; 0xf000000
    525c:	ae090000 	cdpge	0, 0, cr0, cr9, cr0, {0}
    5260:	ae000002 	cdpge	0, 0, cr0, cr0, cr2, {0}
    5264:	0a000002 	beq	5274 <_stacks_size+0x4b54>
    5268:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    526c:	040f001f 	streq	r0, [pc], #-31	; 5274 <_stacks_size+0x4b54>
    5270:	000002b4 			; <UNDEFINED> instruction: 0x000002b4
    5274:	0c720d12 	ldcleq	13, cr0, [r2], #-72	; 0xffffffb8
    5278:	05080000 	streq	r0, [r8, #-0]
    527c:	0002da73 	andeq	sp, r2, r3, ror sl
    5280:	150f0c00 	strne	r0, [pc, #-3072]	; 4688 <_stacks_size+0x3f68>
    5284:	74050000 	strvc	r0, [r5], #-0
    5288:	000002da 	ldrdeq	r0, [r0], -sl
    528c:	15870c00 	strne	r0, [r7, #3072]	; 0xc00
    5290:	75050000 	strvc	r0, [r5, #-0]
    5294:	00000030 	andeq	r0, r0, r0, lsr r0
    5298:	040f0004 	streq	r0, [pc], #-4	; 52a0 <_stacks_size+0x4b80>
    529c:	00000050 	andeq	r0, r0, r0, asr r0
    52a0:	0010530d 	andseq	r5, r0, sp, lsl #6
    52a4:	b3056800 	movwlt	r6, #22528	; 0x5800
    52a8:	0000040a 	andeq	r0, r0, sl, lsl #8
    52ac:	00705f0e 	rsbseq	r5, r0, lr, lsl #30
    52b0:	02dab405 	sbcseq	fp, sl, #83886080	; 0x5000000
    52b4:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    52b8:	0500725f 	streq	r7, [r0, #-607]	; 0x25f
    52bc:	000030b5 	strheq	r3, [r0], -r5
    52c0:	5f0e0400 	svcpl	0x000e0400
    52c4:	b6050077 			; <UNDEFINED> instruction: 0xb6050077
    52c8:	00000030 	andeq	r0, r0, r0, lsr r0
    52cc:	03c10c08 	biceq	r0, r1, #8, 24	; 0x800
    52d0:	b7050000 	strlt	r0, [r5, -r0]
    52d4:	00000057 	andeq	r0, r0, r7, asr r0
    52d8:	0ef70c0c 	cdpeq	12, 15, cr0, cr7, cr12, {0}
    52dc:	b8050000 	stmdalt	r5, {}	; <UNPREDICTABLE>
    52e0:	00000057 	andeq	r0, r0, r7, asr r0
    52e4:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
    52e8:	b9050066 	stmdblt	r5, {r1, r2, r5, r6}
    52ec:	000002b5 			; <UNDEFINED> instruction: 0x000002b5
    52f0:	0c610c10 	stcleq	12, cr0, [r1], #-64	; 0xffffffc0
    52f4:	ba050000 	blt	1452fc <_stacks_size+0x144bdc>
    52f8:	00000030 	andeq	r0, r0, r0, lsr r0
    52fc:	0eef0c18 	mcreq	12, 7, r0, cr15, cr8, {0}
    5300:	c1050000 	mrsgt	r0, (UNDEF: 5)
    5304:	00000081 	andeq	r0, r0, r1, lsl #1
    5308:	0e1f0c1c 	mrceq	12, 0, r0, cr15, cr12, {0}
    530c:	c3050000 	movwgt	r0, #20480	; 0x5000
    5310:	0000056d 	andeq	r0, r0, sp, ror #10
    5314:	0cad0c20 	stceq	12, cr0, [sp], #128	; 0x80
    5318:	c5050000 	strgt	r0, [r5, #-0]
    531c:	0000059c 	muleq	r0, ip, r5
    5320:	0fc40c24 	svceq	0x00c40c24
    5324:	c8050000 	stmdagt	r5, {}	; <UNPREDICTABLE>
    5328:	000005c0 	andeq	r0, r0, r0, asr #11
    532c:	0dfc0c28 	ldcleq	12, cr0, [ip, #160]!	; 0xa0
    5330:	c9050000 	stmdbgt	r5, {}	; <UNPREDICTABLE>
    5334:	000005da 	ldrdeq	r0, [r0], -sl
    5338:	755f0e2c 	ldrbvc	r0, [pc, #-3628]	; 4514 <_stacks_size+0x3df4>
    533c:	cc050062 	stcgt	0, cr0, [r5], {98}	; 0x62
    5340:	000002b5 			; <UNDEFINED> instruction: 0x000002b5
    5344:	755f0e30 	ldrbvc	r0, [pc, #-3632]	; 451c <_stacks_size+0x3dfc>
    5348:	cd050070 	stcgt	0, cr0, [r5, #-448]	; 0xfffffe40
    534c:	000002da 	ldrdeq	r0, [r0], -sl
    5350:	755f0e38 	ldrbvc	r0, [pc, #-3640]	; 4520 <_stacks_size+0x3e00>
    5354:	ce050072 	mcrgt	0, 0, r0, cr5, cr2, {3}
    5358:	00000030 	andeq	r0, r0, r0, lsr r0
    535c:	10400c3c 	subne	r0, r0, ip, lsr ip
    5360:	d1050000 	mrsle	r0, (UNDEF: 5)
    5364:	000005e0 	andeq	r0, r0, r0, ror #11
    5368:	0d520c40 	ldcleq	12, cr0, [r2, #-256]	; 0xffffff00
    536c:	d2050000 	andle	r0, r5, #0
    5370:	000005f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    5374:	6c5f0e43 	mrrcvs	14, 4, r0, pc, cr3	; <UNPREDICTABLE>
    5378:	d5050062 	strle	r0, [r5, #-98]	; 0x62
    537c:	000002b5 			; <UNDEFINED> instruction: 0x000002b5
    5380:	02ee0c44 	rsceq	r0, lr, #68, 24	; 0x4400
    5384:	d8050000 	stmdale	r5, {}	; <UNPREDICTABLE>
    5388:	00000030 	andeq	r0, r0, r0, lsr r0
    538c:	0c3c0c4c 	ldceq	12, cr0, [ip], #-304	; 0xfffffed0
    5390:	d9050000 	stmdble	r5, {}	; <UNPREDICTABLE>
    5394:	0000008e 	andeq	r0, r0, lr, lsl #1
    5398:	10660c50 	rsbne	r0, r6, r0, asr ip
    539c:	dc050000 	stcle	0, cr0, [r5], {-0}
    53a0:	00000428 	andeq	r0, r0, r8, lsr #8
    53a4:	14070c54 	strne	r0, [r7], #-3156	; 0xc54
    53a8:	e0050000 	and	r0, r5, r0
    53ac:	00000112 	andeq	r0, r0, r2, lsl r1
    53b0:	0db00c58 	ldceq	12, cr0, [r0, #352]!	; 0x160
    53b4:	e2050000 	and	r0, r5, #0
    53b8:	00000107 	andeq	r0, r0, r7, lsl #2
    53bc:	0dc30c5c 	stcleq	12, cr0, [r3, #368]	; 0x170
    53c0:	e3050000 	movw	r0, #20480	; 0x5000
    53c4:	00000030 	andeq	r0, r0, r0, lsr r0
    53c8:	30130064 	andscc	r0, r3, r4, rrx
    53cc:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    53d0:	14000004 	strne	r0, [r0], #-4
    53d4:	00000428 	andeq	r0, r0, r8, lsr #8
    53d8:	00008114 	andeq	r8, r0, r4, lsl r1
    53dc:	05601400 	strbeq	r1, [r0, #-1024]!	; 0x400
    53e0:	30140000 	andscc	r0, r4, r0
    53e4:	00000000 	andeq	r0, r0, r0
    53e8:	042e040f 	strteq	r0, [lr], #-1039	; 0x40f
    53ec:	4c150000 	ldcmi	0, cr0, [r5], {-0}
    53f0:	28000013 	stmdacs	r0, {r0, r1, r4}
    53f4:	02390504 	eorseq	r0, r9, #4, 10	; 0x1000000
    53f8:	00000560 	andeq	r0, r0, r0, ror #10
    53fc:	000c2a16 	andeq	r2, ip, r6, lsl sl
    5400:	023b0500 	eorseq	r0, fp, #0, 10
    5404:	00000030 	andeq	r0, r0, r0, lsr r0
    5408:	101a1600 	andsne	r1, sl, r0, lsl #12
    540c:	40050000 	andmi	r0, r5, r0
    5410:	00064702 	andeq	r4, r6, r2, lsl #14
    5414:	2f160400 	svccs	0x00160400
    5418:	0500000d 	streq	r0, [r0, #-13]
    541c:	06470240 	strbeq	r0, [r7], -r0, asr #4
    5420:	16080000 	strne	r0, [r8], -r0
    5424:	00000e2c 	andeq	r0, r0, ip, lsr #28
    5428:	47024005 	strmi	r4, [r2, -r5]
    542c:	0c000006 	stceq	0, cr0, [r0], {6}
    5430:	000fe016 	andeq	lr, pc, r6, lsl r0	; <UNPREDICTABLE>
    5434:	02420500 	subeq	r0, r2, #0, 10
    5438:	00000030 	andeq	r0, r0, r0, lsr r0
    543c:	0d3f1610 	ldceq	6, cr1, [pc, #-64]!	; 5404 <_stacks_size+0x4ce4>
    5440:	43050000 	movwmi	r0, #20480	; 0x5000
    5444:	00082902 	andeq	r2, r8, r2, lsl #18
    5448:	4e161400 	cfmulsmi	mvf1, mvf6, mvf0
    544c:	0500000f 	streq	r0, [r0, #-15]
    5450:	00300245 	eorseq	r0, r0, r5, asr #4
    5454:	16300000 	ldrtne	r0, [r0], -r0
    5458:	00001021 	andeq	r1, r0, r1, lsr #32
    545c:	91024605 	tstls	r2, r5, lsl #12
    5460:	34000005 	strcc	r0, [r0], #-5
    5464:	000c3116 	andeq	r3, ip, r6, lsl r1
    5468:	02480500 	subeq	r0, r8, #0, 10
    546c:	00000030 	andeq	r0, r0, r0, lsr r0
    5470:	0f681638 	svceq	0x00681638
    5474:	4a050000 	bmi	14547c <_stacks_size+0x144d5c>
    5478:	00084402 	andeq	r4, r8, r2, lsl #8
    547c:	ca163c00 	bgt	594484 <_ram_limit+0x17c484>
    5480:	0500000f 	streq	r0, [r0, #-15]
    5484:	017b024d 	cmneq	fp, sp, asr #4
    5488:	16400000 	strbne	r0, [r0], -r0
    548c:	00000c79 	andeq	r0, r0, r9, ror ip
    5490:	30024e05 	andcc	r4, r2, r5, lsl #28
    5494:	44000000 	strmi	r0, [r0], #-0
    5498:	00100416 	andseq	r0, r0, r6, lsl r4
    549c:	024f0500 	subeq	r0, pc, #0, 10
    54a0:	0000017b 	andeq	r0, r0, fp, ror r1
    54a4:	0da11648 	stceq	6, cr1, [r1, #288]!	; 0x120
    54a8:	50050000 	andpl	r0, r5, r0
    54ac:	00084a02 	andeq	r4, r8, r2, lsl #20
    54b0:	4a164c00 	bmi	5984b8 <_ram_limit+0x1804b8>
    54b4:	0500000d 	streq	r0, [r0, #-13]
    54b8:	00300253 	eorseq	r0, r0, r3, asr r2
    54bc:	16500000 	ldrbne	r0, [r0], -r0
    54c0:	00000ee7 	andeq	r0, r0, r7, ror #29
    54c4:	60025405 	andvs	r5, r2, r5, lsl #8
    54c8:	54000005 	strpl	r0, [r0], #-5
    54cc:	00105b16 	andseq	r5, r0, r6, lsl fp
    54d0:	02770500 	rsbseq	r0, r7, #0, 10
    54d4:	00000807 	andeq	r0, r0, r7, lsl #16
    54d8:	0d371758 	ldceq	7, cr1, [r7, #-352]!	; 0xfffffea0
    54dc:	7b050000 	blvc	1454e4 <_stacks_size+0x144dc4>
    54e0:	00029802 	andeq	r9, r2, r2, lsl #16
    54e4:	17014800 	strne	r4, [r1, -r0, lsl #16]
    54e8:	00000de2 	andeq	r0, r0, r2, ror #27
    54ec:	5a027c05 	bpl	a4508 <_stacks_size+0xa3de8>
    54f0:	4c000002 	stcmi	0, cr0, [r0], {2}
    54f4:	0d8e1701 	stceq	7, cr1, [lr, #4]
    54f8:	80050000 	andhi	r0, r5, r0
    54fc:	00085b02 	andeq	r5, r8, r2, lsl #22
    5500:	1702dc00 	strne	sp, [r2, -r0, lsl #24]
    5504:	00000e6d 	andeq	r0, r0, sp, ror #28
    5508:	0c028505 	cfstr32eq	mvfx8, [r2], {5}
    550c:	e0000006 	and	r0, r0, r6
    5510:	0c8b1702 	stceq	7, cr1, [fp], {2}
    5514:	86050000 	strhi	r0, [r5], -r0
    5518:	00086702 	andeq	r6, r8, r2, lsl #14
    551c:	0002ec00 	andeq	lr, r2, r0, lsl #24
    5520:	0566040f 	strbeq	r0, [r6, #-1039]!	; 0x40f
    5524:	01040000 	mrseq	r0, (UNDEF: 4)
    5528:	00005208 	andeq	r5, r0, r8, lsl #4
    552c:	0a040f00 	beq	109134 <_stacks_size+0x108a14>
    5530:	13000004 	movwne	r0, #4
    5534:	00000030 	andeq	r0, r0, r0, lsr r0
    5538:	00000591 	muleq	r0, r1, r5
    553c:	00042814 	andeq	r2, r4, r4, lsl r8
    5540:	00811400 	addeq	r1, r1, r0, lsl #8
    5544:	91140000 	tstls	r4, r0
    5548:	14000005 	strne	r0, [r0], #-5
    554c:	00000030 	andeq	r0, r0, r0, lsr r0
    5550:	97040f00 	strls	r0, [r4, -r0, lsl #30]
    5554:	18000005 	stmdane	r0, {r0, r2}
    5558:	00000566 	andeq	r0, r0, r6, ror #10
    555c:	0573040f 	ldrbeq	r0, [r3, #-1039]!	; 0x40f
    5560:	99130000 	ldmdbls	r3, {}	; <UNPREDICTABLE>
    5564:	c0000000 	andgt	r0, r0, r0
    5568:	14000005 	strne	r0, [r0], #-5
    556c:	00000428 	andeq	r0, r0, r8, lsr #8
    5570:	00008114 	andeq	r8, r0, r4, lsl r1
    5574:	00991400 	addseq	r1, r9, r0, lsl #8
    5578:	30140000 	andscc	r0, r4, r0
    557c:	00000000 	andeq	r0, r0, r0
    5580:	05a2040f 	streq	r0, [r2, #1039]!	; 0x40f
    5584:	30130000 	andscc	r0, r3, r0
    5588:	da000000 	ble	5590 <_stacks_size+0x4e70>
    558c:	14000005 	strne	r0, [r0], #-5
    5590:	00000428 	andeq	r0, r0, r8, lsr #8
    5594:	00008114 	andeq	r8, r0, r4, lsl r1
    5598:	040f0000 	streq	r0, [pc], #-0	; 55a0 <_stacks_size+0x4e80>
    559c:	000005c6 	andeq	r0, r0, r6, asr #11
    55a0:	00005009 	andeq	r5, r0, r9
    55a4:	0005f000 	andeq	pc, r5, r0
    55a8:	00df0a00 	sbcseq	r0, pc, r0, lsl #20
    55ac:	00020000 	andeq	r0, r2, r0
    55b0:	00005009 	andeq	r5, r0, r9
    55b4:	00060000 	andeq	r0, r6, r0
    55b8:	00df0a00 	sbcseq	r0, pc, r0, lsl #20
    55bc:	00000000 	andeq	r0, r0, r0
    55c0:	000d7106 	andeq	r7, sp, r6, lsl #2
    55c4:	011d0500 	tsteq	sp, r0, lsl #10
    55c8:	000002e0 	andeq	r0, r0, r0, ror #5
    55cc:	00130519 	andseq	r0, r3, r9, lsl r5
    55d0:	21050c00 	tstcs	r5, r0, lsl #24
    55d4:	00064101 	andeq	r4, r6, r1, lsl #2
    55d8:	10141600 	andsne	r1, r4, r0, lsl #12
    55dc:	23050000 	movwcs	r0, #20480	; 0x5000
    55e0:	00064101 	andeq	r4, r6, r1, lsl #2
    55e4:	6a160000 	bvs	5855ec <_ram_limit+0x16d5ec>
    55e8:	0500000d 	streq	r0, [r0, #-13]
    55ec:	00300124 	eorseq	r0, r0, r4, lsr #2
    55f0:	16040000 	strne	r0, [r4], -r0
    55f4:	00000dcb 	andeq	r0, r0, fp, asr #27
    55f8:	47012505 	strmi	r2, [r1, -r5, lsl #10]
    55fc:	08000006 	stmdaeq	r0, {r1, r2}
    5600:	0c040f00 	stceq	15, cr0, [r4], {-0}
    5604:	0f000006 	svceq	0x00000006
    5608:	00060004 	andeq	r0, r6, r4
    560c:	0faa1900 	svceq	0x00aa1900
    5610:	050e0000 	streq	r0, [lr, #-0]
    5614:	0682013d 			; <UNDEFINED> instruction: 0x0682013d
    5618:	a4160000 	ldrge	r0, [r6], #-0
    561c:	0500000f 	streq	r0, [r0, #-15]
    5620:	0682013e 			; <UNDEFINED> instruction: 0x0682013e
    5624:	16000000 	strne	r0, [r0], -r0
    5628:	00000dd1 	ldrdeq	r0, [r0], -r1
    562c:	82013f05 	andhi	r3, r1, #5, 30
    5630:	06000006 	streq	r0, [r0], -r6
    5634:	000fdb16 	andeq	sp, pc, r6, lsl fp	; <UNPREDICTABLE>
    5638:	01400500 	cmpeq	r0, r0, lsl #10
    563c:	0000005e 	andeq	r0, r0, lr, asr r0
    5640:	5e09000c 	cdppl	0, 0, cr0, cr9, cr12, {0}
    5644:	92000000 	andls	r0, r0, #0
    5648:	0a000006 	beq	5668 <_stacks_size+0x4f48>
    564c:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    5650:	d01a0002 	andsle	r0, sl, r2
    5654:	93025805 	movwls	r5, #10245	; 0x2805
    5658:	16000007 	strne	r0, [r0], -r7
    565c:	00000f0c 	andeq	r0, r0, ip, lsl #30
    5660:	42025a05 	andmi	r5, r2, #20480	; 0x5000
    5664:	00000000 	andeq	r0, r0, r0
    5668:	000f9716 	andeq	r9, pc, r6, lsl r7	; <UNPREDICTABLE>
    566c:	025b0500 	subseq	r0, fp, #0, 10
    5670:	00000560 	andeq	r0, r0, r0, ror #10
    5674:	10461604 	subne	r1, r6, r4, lsl #12
    5678:	5c050000 	stcpl	0, cr0, [r5], {-0}
    567c:	00079302 	andeq	r9, r7, r2, lsl #6
    5680:	b4160800 	ldrlt	r0, [r6], #-2048	; 0x800
    5684:	0500000c 	streq	r0, [r0, #-12]
    5688:	0191025d 	orrseq	r0, r1, sp, asr r2
    568c:	16240000 	strtne	r0, [r4], -r0
    5690:	00000efd 	strdeq	r0, [r0], -sp
    5694:	30025e05 	andcc	r5, r2, r5, lsl #28
    5698:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
    569c:	00100f16 	andseq	r0, r0, r6, lsl pc
    56a0:	025f0500 	subseq	r0, pc, #0, 10
    56a4:	0000007a 	andeq	r0, r0, sl, ror r0
    56a8:	0d2a1650 	stceq	6, cr1, [sl, #-320]!	; 0xfffffec0
    56ac:	60050000 	andvs	r0, r5, r0
    56b0:	00064d02 	andeq	r4, r6, r2, lsl #26
    56b4:	44165800 	ldrmi	r5, [r6], #-2048	; 0x800
    56b8:	0500000c 	streq	r0, [r0, #-12]
    56bc:	01070261 	tsteq	r7, r1, ror #4
    56c0:	16680000 	strbtne	r0, [r8], -r0
    56c4:	00000f2b 	andeq	r0, r0, fp, lsr #30
    56c8:	07026205 	streq	r6, [r2, -r5, lsl #4]
    56cc:	70000001 	andvc	r0, r0, r1
    56d0:	000fea16 	andeq	lr, pc, r6, lsl sl	; <UNPREDICTABLE>
    56d4:	02630500 	rsbeq	r0, r3, #0, 10
    56d8:	00000107 	andeq	r0, r0, r7, lsl #2
    56dc:	0c511678 	mrrceq	6, 7, r1, r1, cr8	; <UNPREDICTABLE>
    56e0:	64050000 	strvs	r0, [r5], #-0
    56e4:	0007a302 	andeq	sl, r7, r2, lsl #6
    56e8:	90168000 	andsls	r8, r6, r0
    56ec:	0500000c 	streq	r0, [r0, #-12]
    56f0:	07b30265 	ldreq	r0, [r3, r5, ror #4]!
    56f4:	16880000 	strne	r0, [r8], r0
    56f8:	00000d78 	andeq	r0, r0, r8, ror sp
    56fc:	30026605 	andcc	r6, r2, r5, lsl #12
    5700:	a0000000 	andge	r0, r0, r0
    5704:	000f4016 	andeq	r4, pc, r6, lsl r0	; <UNPREDICTABLE>
    5708:	02670500 	rsbeq	r0, r7, #0, 10
    570c:	00000107 	andeq	r0, r0, r7, lsl #2
    5710:	0e8316a4 	cdpeq	6, 8, cr1, cr3, cr4, {5}
    5714:	68050000 	stmdavs	r5, {}	; <UNPREDICTABLE>
    5718:	00010702 	andeq	r0, r1, r2, lsl #14
    571c:	1916ac00 	ldmdbne	r6, {sl, fp, sp, pc}
    5720:	0500000d 	streq	r0, [r0, #-13]
    5724:	01070269 	tsteq	r7, r9, ror #4
    5728:	16b40000 	ldrtne	r0, [r4], r0
    572c:	00001031 	andeq	r1, r0, r1, lsr r0
    5730:	07026a05 	streq	r6, [r2, -r5, lsl #20]
    5734:	bc000001 	stclt	0, cr0, [r0], {1}
    5738:	000c9c16 	andeq	r9, ip, r6, lsl ip
    573c:	026b0500 	rsbeq	r0, fp, #0, 10
    5740:	00000107 	andeq	r0, r0, r7, lsl #2
    5744:	0e6416c4 	cdpeq	6, 6, cr1, cr4, cr4, {6}
    5748:	6c050000 	stcvs	0, cr0, [r5], {-0}
    574c:	00003002 	andeq	r3, r0, r2
    5750:	0900cc00 	stmdbeq	r0, {sl, fp, lr, pc}
    5754:	00000566 	andeq	r0, r0, r6, ror #10
    5758:	000007a3 	andeq	r0, r0, r3, lsr #15
    575c:	0000df0a 	andeq	sp, r0, sl, lsl #30
    5760:	09001900 	stmdbeq	r0, {r8, fp, ip}
    5764:	00000566 	andeq	r0, r0, r6, ror #10
    5768:	000007b3 			; <UNDEFINED> instruction: 0x000007b3
    576c:	0000df0a 	andeq	sp, r0, sl, lsl #30
    5770:	09000700 	stmdbeq	r0, {r8, r9, sl}
    5774:	00000566 	andeq	r0, r0, r6, ror #10
    5778:	000007c3 	andeq	r0, r0, r3, asr #15
    577c:	0000df0a 	andeq	sp, r0, sl, lsl #30
    5780:	1a001700 	bne	b388 <_stacks_size+0xac68>
    5784:	027105f0 	rsbseq	r0, r1, #240, 10	; 0x3c000000
    5788:	000007e7 	andeq	r0, r0, r7, ror #15
    578c:	000e2516 	andeq	r2, lr, r6, lsl r5
    5790:	02740500 	rsbseq	r0, r4, #0, 10
    5794:	000007e7 	andeq	r0, r0, r7, ror #15
    5798:	0d981600 	ldceq	6, cr1, [r8]
    579c:	75050000 	strvc	r0, [r5, #-0]
    57a0:	0007f702 	andeq	pc, r7, r2, lsl #14
    57a4:	09007800 	stmdbeq	r0, {fp, ip, sp, lr}
    57a8:	000002da 	ldrdeq	r0, [r0], -sl
    57ac:	000007f7 	strdeq	r0, [r0], -r7
    57b0:	0000df0a 	andeq	sp, r0, sl, lsl #30
    57b4:	09001d00 	stmdbeq	r0, {r8, sl, fp, ip}
    57b8:	00000042 	andeq	r0, r0, r2, asr #32
    57bc:	00000807 	andeq	r0, r0, r7, lsl #16
    57c0:	0000df0a 	andeq	sp, r0, sl, lsl #30
    57c4:	1b001d00 	blne	cbcc <_stacks_size+0xc4ac>
    57c8:	025605f0 	subseq	r0, r6, #240, 10	; 0x3c000000
    57cc:	00000829 	andeq	r0, r0, r9, lsr #16
    57d0:	00134c1c 	andseq	r4, r3, ip, lsl ip
    57d4:	026d0500 	rsbeq	r0, sp, #0, 10
    57d8:	00000692 	muleq	r0, r2, r6
    57dc:	000f231c 	andeq	r2, pc, ip, lsl r3	; <UNPREDICTABLE>
    57e0:	02760500 	rsbseq	r0, r6, #0, 10
    57e4:	000007c3 	andeq	r0, r0, r3, asr #15
    57e8:	05660900 	strbeq	r0, [r6, #-2304]!	; 0x900
    57ec:	08390000 	ldmdaeq	r9!, {}	; <UNPREDICTABLE>
    57f0:	df0a0000 	svcle	0x000a0000
    57f4:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    57f8:	08441d00 	stmdaeq	r4, {r8, sl, fp, ip}^
    57fc:	28140000 	ldmdacs	r4, {}	; <UNPREDICTABLE>
    5800:	00000004 	andeq	r0, r0, r4
    5804:	0839040f 	ldmdaeq	r9!, {r0, r1, r2, r3, sl}
    5808:	040f0000 	streq	r0, [pc], #-0	; 5810 <_stacks_size+0x50f0>
    580c:	0000017b 	andeq	r0, r0, fp, ror r1
    5810:	00085b1d 	andeq	r5, r8, sp, lsl fp
    5814:	00301400 	eorseq	r1, r0, r0, lsl #8
    5818:	0f000000 	svceq	0x00000000
    581c:	00086104 	andeq	r6, r8, r4, lsl #2
    5820:	50040f00 	andpl	r0, r4, r0, lsl #30
    5824:	09000008 	stmdbeq	r0, {r3}
    5828:	00000600 	andeq	r0, r0, r0, lsl #12
    582c:	00000877 	andeq	r0, r0, r7, ror r8
    5830:	0000df0a 	andeq	sp, r0, sl, lsl #30
    5834:	19000200 	stmdbne	r0, {r9}
    5838:	000014aa 	andeq	r1, r0, sl, lsr #9
    583c:	02d80128 	sbcseq	r0, r8, #40, 2
    5840:	00000907 	andeq	r0, r0, r7, lsl #18
    5844:	00137416 	andseq	r7, r3, r6, lsl r4
    5848:	02d90100 	sbcseq	r0, r9, #0, 2
    584c:	00000030 	andeq	r0, r0, r0, lsr r0
    5850:	139b1600 	orrsne	r1, fp, #0, 12
    5854:	da010000 	ble	4585c <_stacks_size+0x4513c>
    5858:	00003002 	andeq	r3, r0, r2
    585c:	4d160400 	cfldrsmi	mvf0, [r6, #-0]
    5860:	01000014 	tsteq	r0, r4, lsl r0
    5864:	003002db 	ldrsbteq	r0, [r0], -fp
    5868:	16080000 	strne	r0, [r8], -r0
    586c:	0000136e 	andeq	r1, r0, lr, ror #6
    5870:	3002dc01 	andcc	sp, r2, r1, lsl #24
    5874:	0c000000 	stceq	0, cr0, [r0], {-0}
    5878:	00151516 	andseq	r1, r5, r6, lsl r5
    587c:	02dd0100 	sbcseq	r0, sp, #0, 2
    5880:	00000030 	andeq	r0, r0, r0, lsr r0
    5884:	14791610 	ldrbtne	r1, [r9], #-1552	; 0x610
    5888:	de010000 	cdple	0, 0, cr0, cr1, cr0, {0}
    588c:	00003002 	andeq	r3, r0, r2
    5890:	4c161400 	cfldrsmi	mvf1, [r6], {-0}
    5894:	01000014 	tsteq	r0, r4, lsl r0
    5898:	003002df 	ldrsbteq	r0, [r0], -pc
    589c:	16180000 	ldrne	r0, [r8], -r0
    58a0:	00001417 	andeq	r1, r0, r7, lsl r4
    58a4:	3002e001 	andcc	lr, r2, r1
    58a8:	1c000000 	stcne	0, cr0, [r0], {-0}
    58ac:	00139a16 	andseq	r9, r3, r6, lsl sl
    58b0:	02e10100 	rsceq	r0, r1, #0, 2
    58b4:	00000030 	andeq	r0, r0, r0, lsr r0
    58b8:	14f91620 	ldrbtne	r1, [r9], #1568	; 0x620
    58bc:	e2010000 	and	r0, r1, #0
    58c0:	00003002 	andeq	r3, r0, r2
    58c4:	19002400 	stmdbne	r0, {sl, sp}
    58c8:	00001454 	andeq	r1, r0, r4, asr r4
    58cc:	04e90110 	strbteq	r0, [r9], #272	; 0x110
    58d0:	00000947 	andeq	r0, r0, r7, asr #18
    58d4:	00135316 	andseq	r5, r3, r6, lsl r3
    58d8:	04eb0100 	strbteq	r0, [fp], #256	; 0x100
    58dc:	00000037 	andeq	r0, r0, r7, lsr r0
    58e0:	15881600 	strne	r1, [r8, #1536]	; 0x600
    58e4:	ec010000 	stc	0, cr0, [r1], {-0}
    58e8:	00003704 	andeq	r3, r0, r4, lsl #14
    58ec:	661e0400 	ldrvs	r0, [lr], -r0, lsl #8
    58f0:	ed010064 	stc	0, cr0, [r1, #-400]	; 0xfffffe70
    58f4:	00094704 	andeq	r4, r9, r4, lsl #14
    58f8:	621e0800 	andsvs	r0, lr, #0, 16
    58fc:	ee01006b 	cdp	0, 0, cr0, cr1, cr11, {3}
    5900:	00094704 	andeq	r4, r9, r4, lsl #14
    5904:	0f000c00 	svceq	0x00000c00
    5908:	00090704 	andeq	r0, r9, r4, lsl #14
    590c:	14ef0600 	strbtne	r0, [pc], #1536	; 5914 <_stacks_size+0x51f4>
    5910:	f1010000 	setend	le
    5914:	00094704 	andeq	r4, r9, r4, lsl #14
    5918:	138a0600 	orrne	r0, sl, #0, 12
    591c:	1d010000 	stcne	0, cr0, [r1, #-0]
    5920:	00094706 	andeq	r4, r9, r6, lsl #14
    5924:	15621f00 	strbne	r1, [r2, #-3840]!	; 0xf00
    5928:	59010000 	stmdbpl	r1, {}	; <UNPREDICTABLE>
    592c:	0a0e0108 	beq	385d54 <_stacks_size+0x385634>
    5930:	ce200000 	cdpgt	0, 2, cr0, cr0, cr0, {0}
    5934:	01000014 	tsteq	r0, r4, lsl r0
    5938:	04280859 	strteq	r0, [r8], #-2137	; 0x859
    593c:	6e210000 	cdpvs	0, 2, cr0, cr1, cr0, {0}
    5940:	59010062 	stmdbpl	r1, {r1, r5, r6}
    5944:	00003708 	andeq	r3, r0, r8, lsl #14
    5948:	72622200 	rsbvc	r2, r2, #0, 4
    594c:	5e01006b 	cdppl	0, 0, cr0, cr1, cr11, {3}
    5950:	00056008 	andeq	r6, r5, r8
    5954:	15742300 	ldrbne	r2, [r4, #-768]!	; 0x300
    5958:	5f010000 	svcpl	0x00010000
    595c:	00003708 	andeq	r3, r0, r8, lsl #14
    5960:	16002300 	strne	r2, [r0], -r0, lsl #6
    5964:	60010000 	andvs	r0, r1, r0
    5968:	00003708 	andeq	r3, r0, r8, lsl #14
    596c:	15e12300 	strbne	r2, [r1, #768]!	; 0x300
    5970:	61010000 	mrsvs	r0, (UNDEF: 1)
    5974:	00003008 	andeq	r3, r0, r8
    5978:	13922300 	orrsne	r2, r2, #0, 6
    597c:	62010000 	andvs	r0, r1, #0
    5980:	00056008 	andeq	r6, r5, r8
    5984:	15f72300 	ldrbne	r2, [r7, #768]!	; 0x300
    5988:	63010000 	movwvs	r0, #4096	; 0x1000
    598c:	00003708 	andeq	r3, r0, r8, lsl #14
    5990:	15c12300 	strbne	r2, [r1, #768]	; 0x300
    5994:	65010000 	strvs	r0, [r1, #-0]
    5998:	00094d08 	andeq	r4, r9, r8, lsl #26
    599c:	15f32300 	ldrbne	r2, [r3, #768]!	; 0x300
    59a0:	66010000 	strvs	r0, [r1], -r0
    59a4:	00003708 	andeq	r3, r0, r8, lsl #14
    59a8:	15482300 	strbne	r2, [r8, #-768]	; 0x300
    59ac:	67010000 	strvs	r0, [r1, -r0]
    59b0:	00056008 	andeq	r6, r5, r8
    59b4:	15832300 	strne	r2, [r3, #768]	; 0x300
    59b8:	6b010000 	blvs	459c0 <_stacks_size+0x452a0>
    59bc:	00003708 	andeq	r3, r0, r8, lsl #14
    59c0:	14862300 	strne	r2, [r6], #768	; 0x300
    59c4:	6c010000 	stcvs	0, cr0, [r1], {-0}
    59c8:	00006c08 	andeq	r6, r0, r8, lsl #24
    59cc:	ad240000 	stcge	0, cr0, [r4, #-0]
    59d0:	01000015 	tsteq	r0, r5, lsl r0
    59d4:	00810914 	addeq	r0, r1, r4, lsl r9
    59d8:	150c0000 	strne	r0, [ip, #-0]
    59dc:	074c0040 	strbeq	r0, [ip, -r0, asr #32]
    59e0:	9c010000 	stcls	0, cr0, [r1], {-0}
    59e4:	00000ca0 	andeq	r0, r0, r0, lsr #25
    59e8:	0014ce25 	andseq	ip, r4, r5, lsr #28
    59ec:	09140100 	ldmdbeq	r4, {r8}
    59f0:	00000428 	andeq	r0, r0, r8, lsr #8
    59f4:	0000070f 	andeq	r0, r0, pc, lsl #14
    59f8:	00153325 	andseq	r3, r5, r5, lsr #6
    59fc:	09140100 	ldmdbeq	r4, {r8}
    5a00:	00000037 	andeq	r0, r0, r7, lsr r0
    5a04:	00000791 	muleq	r0, r1, r7
    5a08:	00151c26 	andseq	r1, r5, r6, lsr #24
    5a0c:	091f0100 	ldmdbeq	pc, {r8}	; <UNPREDICTABLE>
    5a10:	0000094d 	andeq	r0, r0, sp, asr #18
    5a14:	000007b2 			; <UNDEFINED> instruction: 0x000007b2
    5a18:	00155626 	andseq	r5, r5, r6, lsr #12
    5a1c:	09200100 	stmdbeq	r0!, {r8}
    5a20:	00000037 	andeq	r0, r0, r7, lsr r0
    5a24:	000008be 			; <UNDEFINED> instruction: 0x000008be
    5a28:	78646927 	stmdavc	r4!, {r0, r1, r2, r5, r8, fp, sp, lr}^
    5a2c:	09210100 	stmdbeq	r1!, {r8}
    5a30:	00000030 	andeq	r0, r0, r0, lsr r0
    5a34:	00000a0a 	andeq	r0, r0, sl, lsl #20
    5a38:	6e696227 	cdpvs	2, 6, cr6, cr9, cr7, {1}
    5a3c:	09220100 	stmdbeq	r2!, {r8}
    5a40:	00000959 	andeq	r0, r0, r9, asr r9
    5a44:	00000af8 	strdeq	r0, [r0], -r8
    5a48:	0015b726 	andseq	fp, r5, r6, lsr #14
    5a4c:	09230100 	stmdbeq	r3!, {r8}
    5a50:	0000094d 	andeq	r0, r0, sp, asr #18
    5a54:	00000b58 	andeq	r0, r0, r8, asr fp
    5a58:	00153926 	andseq	r3, r5, r6, lsr #18
    5a5c:	09240100 	stmdbeq	r4!, {r8}
    5a60:	00000065 	andeq	r0, r0, r5, rrx
    5a64:	00000b76 	andeq	r0, r0, r6, ror fp
    5a68:	00152326 	andseq	r2, r5, r6, lsr #6
    5a6c:	09250100 	stmdbeq	r5!, {r8}
    5a70:	00000030 	andeq	r0, r0, r0, lsr r0
    5a74:	00000d20 	andeq	r0, r0, r0, lsr #26
    5a78:	00155026 	andseq	r5, r5, r6, lsr #32
    5a7c:	09260100 	stmdbeq	r6!, {r8}
    5a80:	0000006c 	andeq	r0, r0, ip, rrx
    5a84:	00000d5c 	andeq	r0, r0, ip, asr sp
    5a88:	0015a426 	andseq	sl, r5, r6, lsr #8
    5a8c:	09270100 	stmdbeq	r7!, {r8}
    5a90:	00000030 	andeq	r0, r0, r0, lsr r0
    5a94:	00000dd6 	ldrdeq	r0, [r0], -r6
    5a98:	64776627 	ldrbtvs	r6, [r7], #-1575	; 0x627
    5a9c:	09280100 	stmdbeq	r8!, {r8}
    5aa0:	0000094d 	andeq	r0, r0, sp, asr #18
    5aa4:	00000e15 	andeq	r0, r0, r5, lsl lr
    5aa8:	6b636227 	blvs	18de34c <_ram_limit+0x14c634c>
    5aac:	09290100 	stmdbeq	r9!, {r8}
    5ab0:	0000094d 	andeq	r0, r0, sp, asr #18
    5ab4:	00000e6a 	andeq	r0, r0, sl, ror #28
    5ab8:	01007127 	tsteq	r0, r7, lsr #2
    5abc:	0959092a 	ldmdbeq	r9, {r1, r3, r5, r8, fp}^
    5ac0:	0eb40000 	cdpeq	0, 11, cr0, cr4, cr0, {0}
    5ac4:	6e270000 	cdpvs	0, 2, cr0, cr7, cr0, {0}
    5ac8:	2c010062 	stccs	0, cr0, [r1], {98}	; 0x62
    5acc:	00003709 	andeq	r3, r0, r9, lsl #14
    5ad0:	000f5000 	andeq	r5, pc, r0
    5ad4:	09652800 	stmdbeq	r5!, {fp, sp}^
    5ad8:	17b40000 	ldrne	r0, [r4, r0]!
    5adc:	00980040 	addseq	r0, r8, r0, asr #32
    5ae0:	0f010000 	svceq	0x00010000
    5ae4:	000bef0a 	andeq	lr, fp, sl, lsl #30
    5ae8:	097e2900 	ldmdbeq	lr!, {r8, fp, sp}^
    5aec:	112b0000 	teqne	fp, r0
    5af0:	72290000 	eorvc	r0, r9, #0
    5af4:	5f000009 	svcpl	0x00000009
    5af8:	2a000011 	bcs	5b44 <_stacks_size+0x5424>
    5afc:	00000098 	muleq	r0, r8, r0
    5b00:	0009892b 	andeq	r8, r9, fp, lsr #18
    5b04:	00119300 	andseq	r9, r1, r0, lsl #6
    5b08:	09952b00 	ldmibeq	r5, {r8, r9, fp, sp}
    5b0c:	11dd0000 	bicsne	r0, sp, r0
    5b10:	a12b0000 	teqge	fp, r0
    5b14:	0e000009 	cdpeq	0, 0, cr0, cr0, cr9, {0}
    5b18:	2b000012 	blcs	5b68 <_stacks_size+0x5448>
    5b1c:	000009ad 	andeq	r0, r0, sp, lsr #19
    5b20:	00001246 	andeq	r1, r0, r6, asr #4
    5b24:	0009b92b 	andeq	fp, r9, fp, lsr #18
    5b28:	00127e00 	andseq	r7, r2, r0, lsl #28
    5b2c:	09c52b00 	stmibeq	r5, {r8, r9, fp, sp}^
    5b30:	12910000 	addsne	r0, r1, #0
    5b34:	d12b0000 	teqle	fp, r0
    5b38:	c4000009 	strgt	r0, [r0], #-9
    5b3c:	2b000012 	blcs	5b8c <_stacks_size+0x546c>
    5b40:	000009dd 	ldrdeq	r0, [r0], -sp
    5b44:	000012f8 	strdeq	r1, [r0], -r8
    5b48:	0009e92b 	andeq	lr, r9, fp, lsr #18
    5b4c:	00135700 	andseq	r5, r3, r0, lsl #14
    5b50:	09f52b00 	ldmibeq	r5!, {r8, r9, fp, sp}^
    5b54:	13aa0000 			; <UNDEFINED> instruction: 0x13aa0000
    5b58:	012b0000 	teqeq	fp, r0
    5b5c:	d300000a 	movwle	r0, #10
    5b60:	2c000013 	stccs	0, cr0, [r0], {19}
    5b64:	004017f8 	strdeq	r1, [r0], #-120	; 0xffffff88
    5b68:	00000d2f 	andeq	r0, r0, pc, lsr #26
    5b6c:	00000bbd 			; <UNDEFINED> instruction: 0x00000bbd
    5b70:	0251012d 	subseq	r0, r1, #1073741835	; 0x4000000b
    5b74:	012d007b 	teqeq	sp, fp, ror r0
    5b78:	00760250 	rsbseq	r0, r6, r0, asr r2
    5b7c:	18782c00 	ldmdane	r8!, {sl, fp, sp}^
    5b80:	0d2f0040 	stceq	0, cr0, [pc, #-256]!	; 5a88 <_stacks_size+0x5368>
    5b84:	0bd70000 	bleq	ff5c5b8c <_STACK_FILLER+0x20ae9c9d>
    5b88:	012d0000 	teqeq	sp, r0
    5b8c:	007b0251 	rsbseq	r0, fp, r1, asr r2
    5b90:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5b94:	2e000076 	mcrcs	0, 0, r0, cr0, cr6, {3}
    5b98:	00401bf8 	strdeq	r1, [r0], #-184	; 0xffffff48
    5b9c:	00000d49 	andeq	r0, r0, r9, asr #26
    5ba0:	0251012d 	subseq	r0, r1, #1073741835	; 0x4000000b
    5ba4:	012d0874 	teqeq	sp, r4, ror r8
    5ba8:	00760250 	rsbseq	r0, r6, r0, asr r2
    5bac:	2c000000 	stccs	0, cr0, [r0], {-0}
    5bb0:	00401554 	subeq	r1, r0, r4, asr r5
    5bb4:	00000d60 	andeq	r0, r0, r0, ror #26
    5bb8:	00000c03 	andeq	r0, r0, r3, lsl #24
    5bbc:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5bc0:	2c000076 	stccs	0, cr0, [r0], {118}	; 0x76
    5bc4:	004015a4 	subeq	r1, r0, r4, lsr #11
    5bc8:	00000d72 	andeq	r0, r0, r2, ror sp
    5bcc:	00000c17 	andeq	r0, r0, r7, lsl ip
    5bd0:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5bd4:	2c000076 	stccs	0, cr0, [r0], {118}	; 0x76
    5bd8:	0040174c 	subeq	r1, r0, ip, asr #14
    5bdc:	00000d72 	andeq	r0, r0, r2, ror sp
    5be0:	00000c2b 	andeq	r0, r0, fp, lsr #24
    5be4:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5be8:	2c000076 	stccs	0, cr0, [r0], {118}	; 0x76
    5bec:	00401780 	subeq	r1, r0, r0, lsl #15
    5bf0:	00000d72 	andeq	r0, r0, r2, ror sp
    5bf4:	00000c3f 	andeq	r0, r0, pc, lsr ip
    5bf8:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5bfc:	2c000076 	stccs	0, cr0, [r0], {118}	; 0x76
    5c00:	00401938 	subeq	r1, r0, r8, lsr r9
    5c04:	00000d72 	andeq	r0, r0, r2, ror sp
    5c08:	00000c53 	andeq	r0, r0, r3, asr ip
    5c0c:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5c10:	2c000076 	stccs	0, cr0, [r0], {118}	; 0x76
    5c14:	00401960 	subeq	r1, r0, r0, ror #18
    5c18:	00000d72 	andeq	r0, r0, r2, ror sp
    5c1c:	00000c67 	andeq	r0, r0, r7, ror #24
    5c20:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5c24:	2c000076 	stccs	0, cr0, [r0], {118}	; 0x76
    5c28:	0040199c 	umaaleq	r1, r0, ip, r9
    5c2c:	00000d72 	andeq	r0, r0, r2, ror sp
    5c30:	00000c7b 	andeq	r0, r0, fp, ror ip
    5c34:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5c38:	2c000076 	stccs	0, cr0, [r0], {118}	; 0x76
    5c3c:	00401a84 	subeq	r1, r0, r4, lsl #21
    5c40:	00000d72 	andeq	r0, r0, r2, ror sp
    5c44:	00000c8f 	andeq	r0, r0, pc, lsl #25
    5c48:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5c4c:	2e000076 	mcrcs	0, 0, r0, cr0, cr6, {3}
    5c50:	00401ae0 	subeq	r1, r0, r0, ror #21
    5c54:	00000d72 	andeq	r0, r0, r2, ror sp
    5c58:	0250012d 	subseq	r0, r0, #1073741835	; 0x4000000b
    5c5c:	00000076 	andeq	r0, r0, r6, ror r0
    5c60:	00095909 	andeq	r5, r9, r9, lsl #18
    5c64:	000cb100 	andeq	fp, ip, r0, lsl #2
    5c68:	00df2f00 	sbcseq	r2, pc, r0, lsl #30
    5c6c:	01010000 	mrseq	r0, (UNDEF: 1)
    5c70:	14ba3000 	ldrtne	r3, [sl], #0
    5c74:	3d010000 	stccc	0, cr0, [r1, #-0]
    5c78:	000ca006 	andeq	sl, ip, r6
    5c7c:	b4030500 	strlt	r0, [r3], #-1280	; 0x500
    5c80:	30004022 	andcc	r4, r0, r2, lsr #32
    5c84:	00001461 	andeq	r1, r0, r1, ror #8
    5c88:	6c06a801 	stcvs	8, cr10, [r6], {1}
    5c8c:	05000000 	streq	r0, [r0, #-0]
    5c90:	4026bc03 	eormi	fp, r6, r3, lsl #24
    5c94:	135d3000 	cmpne	sp, #0
    5c98:	a9010000 	stmdbge	r1, {}	; <UNPREDICTABLE>
    5c9c:	00006c06 	andeq	r6, r0, r6, lsl #24
    5ca0:	60030500 	andvs	r0, r3, r0, lsl #10
    5ca4:	3000402b 	andcc	r4, r0, fp, lsr #32
    5ca8:	00001502 	andeq	r1, r0, r2, lsl #10
    5cac:	6006b001 	andvs	fp, r6, r1
    5cb0:	05000005 	streq	r0, [r0, #-5]
    5cb4:	4026c003 	eormi	ip, r6, r3
    5cb8:	15c93000 	strbne	r3, [r9]
    5cbc:	b3010000 	movwlt	r0, #4096	; 0x1000
    5cc0:	00006c06 	andeq	r6, r0, r6, lsl #24
    5cc4:	5c030500 	cfstr32pl	mvfx0, [r3], {-0}
    5cc8:	3000402b 	andcc	r4, r0, fp, lsr #32
    5ccc:	0000158d 	andeq	r1, r0, sp, lsl #11
    5cd0:	6c06b601 	stcvs	6, cr11, [r6], {1}
    5cd4:	05000000 	streq	r0, [r0, #-0]
    5cd8:	402b5803 	eormi	r5, fp, r3, lsl #16
    5cdc:	14993000 	ldrne	r3, [r9], #0
    5ce0:	b9010000 	stmdblt	r1, {}	; <UNPREDICTABLE>
    5ce4:	00087706 	andeq	r7, r8, r6, lsl #14
    5ce8:	64030500 	strvs	r0, [r3], #-1280	; 0x500
    5cec:	3100402b 	tstcc	r0, fp, lsr #32
    5cf0:	000014e7 	andeq	r1, r0, r7, ror #9
    5cf4:	00819a06 	addeq	r9, r1, r6, lsl #20
    5cf8:	0d490000 	stcleq	0, cr0, [r9, #-0]
    5cfc:	28140000 	ldmdacs	r4, {}	; <UNPREDICTABLE>
    5d00:	14000004 	strne	r0, [r0], #-4
    5d04:	00000025 	andeq	r0, r0, r5, lsr #32
    5d08:	13343200 	teqne	r4, #0, 4
    5d0c:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
    5d10:	000d6004 	andeq	r6, sp, r4
    5d14:	04281400 	strteq	r1, [r8], #-1024	; 0x400
    5d18:	81140000 	tsthi	r4, r0
    5d1c:	00000000 	andeq	r0, r0, r0
    5d20:	0013ff32 	andseq	pc, r3, r2, lsr pc	; <UNPREDICTABLE>
    5d24:	01480100 	mrseq	r0, (UNDEF: 88)
    5d28:	00000d72 	andeq	r0, r0, r2, ror sp
    5d2c:	00042814 	andeq	r2, r4, r4, lsl r8
    5d30:	7a330000 	bvc	cc5d38 <_ram_limit+0x8add38>
    5d34:	01000013 	tsteq	r0, r3, lsl r0
    5d38:	28140149 	ldmdacs	r4, {r0, r3, r6, r8}
    5d3c:	00000004 	andeq	r0, r0, r4
    5d40:	0008b000 	andeq	fp, r8, r0
    5d44:	72000400 	andvc	r0, r0, #0, 8
    5d48:	04000015 	streq	r0, [r0], #-21
    5d4c:	000cc301 	andeq	ip, ip, r1, lsl #6
    5d50:	16200100 	strtne	r0, [r0], -r0, lsl #2
    5d54:	13a30000 			; <UNDEFINED> instruction: 0x13a30000
    5d58:	00d00000 	sbcseq	r0, r0, r0
    5d5c:	00000000 	andeq	r0, r0, r0
    5d60:	12d10000 	sbcsne	r0, r1, #0
    5d64:	04020000 	streq	r0, [r2], #-0
    5d68:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
    5d6c:	07040300 	streq	r0, [r4, -r0, lsl #6]
    5d70:	00000036 	andeq	r0, r0, r6, lsr r0
    5d74:	4b060103 	blmi	186188 <_stacks_size+0x185a68>
    5d78:	03000000 	movweq	r0, #0
    5d7c:	00490801 	subeq	r0, r9, r1, lsl #16
    5d80:	02030000 	andeq	r0, r3, #0
    5d84:	00019b05 	andeq	r9, r1, r5, lsl #22
    5d88:	07020300 	streq	r0, [r2, -r0, lsl #6]
    5d8c:	00000072 	andeq	r0, r0, r2, ror r0
    5d90:	75050403 	strvc	r0, [r5, #-1027]	; 0x403
    5d94:	03000001 	movweq	r0, #1
    5d98:	00310704 	eorseq	r0, r1, r4, lsl #14
    5d9c:	08030000 	stmdaeq	r3, {}	; <UNPREDICTABLE>
    5da0:	00017005 	andeq	r7, r1, r5
    5da4:	07080300 	streq	r0, [r8, -r0, lsl #6]
    5da8:	0000002c 	andeq	r0, r0, ip, lsr #32
    5dac:	000d5804 	andeq	r5, sp, r4, lsl #16
    5db0:	25070200 	strcs	r0, [r7, #-512]	; 0x200
    5db4:	04000000 	streq	r0, [r0], #-0
    5db8:	000002ae 	andeq	r0, r0, lr, lsr #5
    5dbc:	004f1003 	subeq	r1, pc, r3
    5dc0:	f4040000 	vst4.8	{d0-d3}, [r4], r0
    5dc4:	0300000d 	movweq	r0, #13
    5dc8:	00004f27 	andeq	r4, r0, r7, lsr #30
    5dcc:	0f390500 	svceq	0x00390500
    5dd0:	61040000 	mrsvs	r0, (UNDEF: 4)
    5dd4:	00002c01 	andeq	r2, r0, r1, lsl #24
    5dd8:	03040600 	movweq	r0, #17920	; 0x4600
    5ddc:	0000b74a 	andeq	fp, r0, sl, asr #14
    5de0:	0c5b0700 	mrrceq	7, 0, r0, fp, cr0
    5de4:	4c030000 	stcmi	0, cr0, [r3], {-0}
    5de8:	0000008c 	andeq	r0, r0, ip, lsl #1
    5dec:	000e3407 	andeq	r3, lr, r7, lsl #8
    5df0:	b74d0300 	strblt	r0, [sp, -r0, lsl #6]
    5df4:	00000000 	andeq	r0, r0, r0
    5df8:	00003a08 	andeq	r3, r0, r8, lsl #20
    5dfc:	0000c700 	andeq	ip, r0, r0, lsl #14
    5e00:	00c70900 	sbceq	r0, r7, r0, lsl #18
    5e04:	00030000 	andeq	r0, r3, r0
    5e08:	67070403 	strvs	r0, [r7, -r3, lsl #8]
    5e0c:	0a000001 	beq	5e18 <_stacks_size+0x56f8>
    5e10:	ef470308 	svc	0x00470308
    5e14:	0b000000 	bleq	5e1c <_stacks_size+0x56fc>
    5e18:	00000d07 	andeq	r0, r0, r7, lsl #26
    5e1c:	00254903 	eoreq	r4, r5, r3, lsl #18
    5e20:	0b000000 	bleq	5e28 <_stacks_size+0x5708>
    5e24:	00000c6a 	andeq	r0, r0, sl, ror #24
    5e28:	00984e03 	addseq	r4, r8, r3, lsl #28
    5e2c:	00040000 	andeq	r0, r4, r0
    5e30:	000f7204 	andeq	r7, pc, r4, lsl #4
    5e34:	ce4f0300 	cdpgt	3, 4, cr0, cr15, cr0, {0}
    5e38:	04000000 	streq	r0, [r0], #-0
    5e3c:	00000e03 	andeq	r0, r0, r3, lsl #28
    5e40:	006b5303 	rsbeq	r5, fp, r3, lsl #6
    5e44:	040c0000 	streq	r0, [ip], #-0
    5e48:	000fbc04 	andeq	fp, pc, r4, lsl #24
    5e4c:	56160500 	ldrpl	r0, [r6], -r0, lsl #10
    5e50:	0d000000 	stceq	0, cr0, [r0, #-0]
    5e54:	00000f7d 	andeq	r0, r0, sp, ror pc
    5e58:	652d0518 	strvs	r0, [sp, #-1304]!	; 0x518
    5e5c:	0b000001 	bleq	5e68 <_stacks_size+0x5748>
    5e60:	00001014 	andeq	r1, r0, r4, lsl r0
    5e64:	01652f05 	cmneq	r5, r5, lsl #30
    5e68:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    5e6c:	05006b5f 	streq	r6, [r0, #-2911]	; 0xb5f
    5e70:	00002530 	andeq	r2, r0, r0, lsr r5
    5e74:	850b0400 	strhi	r0, [fp, #-1024]	; 0x400
    5e78:	0500000f 	streq	r0, [r0, #-15]
    5e7c:	00002530 	andeq	r2, r0, r0, lsr r5
    5e80:	090b0800 	stmdbeq	fp, {fp}
    5e84:	05000010 	streq	r0, [r0, #-16]
    5e88:	00002530 	andeq	r2, r0, r0, lsr r5
    5e8c:	190b0c00 	stmdbne	fp, {sl, fp}
    5e90:	0500000f 	streq	r0, [r0, #-15]
    5e94:	00002530 	andeq	r2, r0, r0, lsr r5
    5e98:	5f0e1000 	svcpl	0x000e1000
    5e9c:	31050078 	tstcc	r5, r8, ror r0
    5ea0:	0000016b 	andeq	r0, r0, fp, ror #2
    5ea4:	040f0014 	streq	r0, [pc], #-20	; 5eac <_stacks_size+0x578c>
    5ea8:	00000112 	andeq	r0, r0, r2, lsl r1
    5eac:	00010708 	andeq	r0, r1, r8, lsl #14
    5eb0:	00017b00 	andeq	r7, r1, r0, lsl #22
    5eb4:	00c70900 	sbceq	r0, r7, r0, lsl #18
    5eb8:	00000000 	andeq	r0, r0, r0
    5ebc:	000f1e0d 	andeq	r1, pc, sp, lsl #28
    5ec0:	35052400 	strcc	r2, [r5, #-1024]	; 0x400
    5ec4:	000001f4 	strdeq	r0, [r0], -r4
    5ec8:	000e0c0b 	andeq	r0, lr, fp, lsl #24
    5ecc:	25370500 	ldrcs	r0, [r7, #-1280]!	; 0x500
    5ed0:	00000000 	andeq	r0, r0, r0
    5ed4:	000d850b 	andeq	r8, sp, fp, lsl #10
    5ed8:	25380500 	ldrcs	r0, [r8, #-1280]!	; 0x500
    5edc:	04000000 	streq	r0, [r0], #-0
    5ee0:	000e150b 	andeq	r1, lr, fp, lsl #10
    5ee4:	25390500 	ldrcs	r0, [r9, #-1280]!	; 0x500
    5ee8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    5eec:	000d0f0b 	andeq	r0, sp, fp, lsl #30
    5ef0:	253a0500 	ldrcs	r0, [sl, #-1280]!	; 0x500
    5ef4:	0c000000 	stceq	0, cr0, [r0], {-0}
    5ef8:	000fd20b 	andeq	sp, pc, fp, lsl #4
    5efc:	253b0500 	ldrcs	r0, [fp, #-1280]!	; 0x500
    5f00:	10000000 	andne	r0, r0, r0
    5f04:	000f8d0b 	andeq	r8, pc, fp, lsl #26
    5f08:	253c0500 	ldrcs	r0, [ip, #-1280]!	; 0x500
    5f0c:	14000000 	strne	r0, [r0], #-0
    5f10:	000db90b 	andeq	fp, sp, fp, lsl #18
    5f14:	253d0500 	ldrcs	r0, [sp, #-1280]!	; 0x500
    5f18:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    5f1c:	000fb20b 	andeq	fp, pc, fp, lsl #4
    5f20:	253e0500 	ldrcs	r0, [lr, #-1280]!	; 0x500
    5f24:	1c000000 	stcne	0, cr0, [r0], {-0}
    5f28:	000dd70b 	andeq	sp, sp, fp, lsl #14
    5f2c:	253f0500 	ldrcs	r0, [pc, #-1280]!	; 5a34 <_stacks_size+0x5314>
    5f30:	20000000 	andcs	r0, r0, r0
    5f34:	0e751000 	cdpeq	0, 7, cr1, cr5, cr0, {0}
    5f38:	01080000 	mrseq	r0, (UNDEF: 8)
    5f3c:	02344805 	eorseq	r4, r4, #327680	; 0x50000
    5f40:	830b0000 	movwhi	r0, #45056	; 0xb000
    5f44:	0500000c 	streq	r0, [r0, #-12]
    5f48:	00023449 	andeq	r3, r2, r9, asr #8
    5f4c:	f80b0000 			; <UNDEFINED> instruction: 0xf80b0000
    5f50:	0500000f 	streq	r0, [r0, #-15]
    5f54:	0002344a 	andeq	r3, r2, sl, asr #8
    5f58:	eb118000 	bl	465f60 <_ram_limit+0x4df60>
    5f5c:	0500000d 	streq	r0, [r0, #-13]
    5f60:	0001074c 	andeq	r0, r1, ip, asr #14
    5f64:	11010000 	mrsne	r0, (UNDEF: 1)
    5f68:	00000f60 	andeq	r0, r0, r0, ror #30
    5f6c:	01074f05 	tsteq	r7, r5, lsl #30
    5f70:	01040000 	mrseq	r0, (UNDEF: 4)
    5f74:	01050800 	tsteq	r5, r0, lsl #16
    5f78:	02440000 	subeq	r0, r4, #0
    5f7c:	c7090000 	strgt	r0, [r9, -r0]
    5f80:	1f000000 	svcne	0x00000000
    5f84:	0d371000 	ldceq	0, cr1, [r7, #-0]
    5f88:	01900000 	orrseq	r0, r0, r0
    5f8c:	02825b05 	addeq	r5, r2, #5120	; 0x1400
    5f90:	140b0000 	strne	r0, [fp], #-0
    5f94:	05000010 	streq	r0, [r0, #-16]
    5f98:	0002825c 	andeq	r8, r2, ip, asr r2
    5f9c:	e50b0000 	str	r0, [fp, #-0]
    5fa0:	0500000f 	streq	r0, [r0, #-15]
    5fa4:	0000255d 	andeq	r2, r0, sp, asr r5
    5fa8:	ab0b0400 	blge	2c6fb0 <_stacks_size+0x2c6890>
    5fac:	0500000d 	streq	r0, [r0, #-13]
    5fb0:	0002885f 	andeq	r8, r2, pc, asr r8
    5fb4:	750b0800 	strvc	r0, [fp, #-2048]	; 0x800
    5fb8:	0500000e 	streq	r0, [r0, #-14]
    5fbc:	0001f460 	andeq	pc, r1, r0, ror #8
    5fc0:	0f008800 	svceq	0x00008800
    5fc4:	00024404 	andeq	r4, r2, r4, lsl #8
    5fc8:	02980800 	addseq	r0, r8, #0, 16
    5fcc:	02980000 	addseq	r0, r8, #0
    5fd0:	c7090000 	strgt	r0, [r9, -r0]
    5fd4:	1f000000 	svcne	0x00000000
    5fd8:	9e040f00 	cdpls	15, 0, cr0, cr4, cr0, {0}
    5fdc:	12000002 	andne	r0, r0, #2
    5fe0:	000c720d 	andeq	r7, ip, sp, lsl #4
    5fe4:	73050800 	movwvc	r0, #22528	; 0x5800
    5fe8:	000002c4 	andeq	r0, r0, r4, asr #5
    5fec:	00150f0b 	andseq	r0, r5, fp, lsl #30
    5ff0:	c4740500 	ldrbtgt	r0, [r4], #-1280	; 0x500
    5ff4:	00000002 	andeq	r0, r0, r2
    5ff8:	0015870b 	andseq	r8, r5, fp, lsl #14
    5ffc:	25750500 	ldrbcs	r0, [r5, #-1280]!	; 0x500
    6000:	04000000 	streq	r0, [r0], #-0
    6004:	3a040f00 	bcc	109c0c <_stacks_size+0x1094ec>
    6008:	0d000000 	stceq	0, cr0, [r0, #-0]
    600c:	00001053 	andeq	r1, r0, r3, asr r0
    6010:	f4b30568 			; <UNDEFINED> instruction: 0xf4b30568
    6014:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
    6018:	0500705f 	streq	r7, [r0, #-95]	; 0x5f
    601c:	0002c4b4 			; <UNDEFINED> instruction: 0x0002c4b4
    6020:	5f0e0000 	svcpl	0x000e0000
    6024:	b5050072 	strlt	r0, [r5, #-114]	; 0x72
    6028:	00000025 	andeq	r0, r0, r5, lsr #32
    602c:	775f0e04 	ldrbvc	r0, [pc, -r4, lsl #28]
    6030:	25b60500 	ldrcs	r0, [r6, #1280]!	; 0x500
    6034:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    6038:	0003c10b 	andeq	ip, r3, fp, lsl #2
    603c:	41b70500 			; <UNDEFINED> instruction: 0x41b70500
    6040:	0c000000 	stceq	0, cr0, [r0], {-0}
    6044:	000ef70b 	andeq	pc, lr, fp, lsl #14
    6048:	41b80500 			; <UNDEFINED> instruction: 0x41b80500
    604c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    6050:	66625f0e 	strbtvs	r5, [r2], -lr, lsl #30
    6054:	9fb90500 	svcls	0x00b90500
    6058:	10000002 	andne	r0, r0, r2
    605c:	000c610b 	andeq	r6, ip, fp, lsl #2
    6060:	25ba0500 	ldrcs	r0, [sl, #1280]!	; 0x500
    6064:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    6068:	000eef0b 	andeq	lr, lr, fp, lsl #30
    606c:	05c10500 	strbeq	r0, [r1, #1280]	; 0x500
    6070:	1c000001 	stcne	0, cr0, [r0], {1}
    6074:	000e1f0b 	andeq	r1, lr, fp, lsl #30
    6078:	57c30500 	strbpl	r0, [r3, r0, lsl #10]
    607c:	20000005 	andcs	r0, r0, r5
    6080:	000cad0b 	andeq	sl, ip, fp, lsl #26
    6084:	86c50500 	strbhi	r0, [r5], r0, lsl #10
    6088:	24000005 	strcs	r0, [r0], #-5
    608c:	000fc40b 	andeq	ip, pc, fp, lsl #8
    6090:	aac80500 	bge	ff207498 <_STACK_FILLER+0x2072b5a9>
    6094:	28000005 	stmdacs	r0, {r0, r2}
    6098:	000dfc0b 	andeq	pc, sp, fp, lsl #24
    609c:	c4c90500 	strbgt	r0, [r9], #1280	; 0x500
    60a0:	2c000005 	stccs	0, cr0, [r0], {5}
    60a4:	62755f0e 	rsbsvs	r5, r5, #14, 30	; 0x38
    60a8:	9fcc0500 	svcls	0x00cc0500
    60ac:	30000002 	andcc	r0, r0, r2
    60b0:	70755f0e 	rsbsvc	r5, r5, lr, lsl #30
    60b4:	c4cd0500 	strbgt	r0, [sp], #1280	; 0x500
    60b8:	38000002 	stmdacc	r0, {r1}
    60bc:	72755f0e 	rsbsvc	r5, r5, #14, 30	; 0x38
    60c0:	25ce0500 	strbcs	r0, [lr, #1280]	; 0x500
    60c4:	3c000000 	stccc	0, cr0, [r0], {-0}
    60c8:	0010400b 	andseq	r4, r0, fp
    60cc:	cad10500 	bgt	ff4474d4 <_STACK_FILLER+0x2096b5e5>
    60d0:	40000005 	andmi	r0, r0, r5
    60d4:	000d520b 	andeq	r5, sp, fp, lsl #4
    60d8:	dad20500 	ble	ff4874e0 <_STACK_FILLER+0x209ab5f1>
    60dc:	43000005 	movwmi	r0, #5
    60e0:	626c5f0e 	rsbvs	r5, ip, #14, 30	; 0x38
    60e4:	9fd50500 	svcls	0x00d50500
    60e8:	44000002 	strmi	r0, [r0], #-2
    60ec:	0002ee0b 	andeq	lr, r2, fp, lsl #28
    60f0:	25d80500 	ldrbcs	r0, [r8, #1280]	; 0x500
    60f4:	4c000000 	stcmi	0, cr0, [r0], {-0}
    60f8:	000c3c0b 	andeq	r3, ip, fp, lsl #24
    60fc:	76d90500 	ldrbvc	r0, [r9], r0, lsl #10
    6100:	50000000 	andpl	r0, r0, r0
    6104:	0010660b 	andseq	r6, r0, fp, lsl #12
    6108:	12dc0500 	sbcsne	r0, ip, #0, 10
    610c:	54000004 	strpl	r0, [r0], #-4
    6110:	0014070b 	andseq	r0, r4, fp, lsl #14
    6114:	fae00500 	blx	ff80751c <_STACK_FILLER+0x20d2b62d>
    6118:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
    611c:	000db00b 	andeq	fp, sp, fp
    6120:	efe20500 	svc	0x00e20500
    6124:	5c000000 	stcpl	0, cr0, [r0], {-0}
    6128:	000dc30b 	andeq	ip, sp, fp, lsl #6
    612c:	25e30500 	strbcs	r0, [r3, #1280]!	; 0x500
    6130:	64000000 	strvs	r0, [r0], #-0
    6134:	00251300 	eoreq	r1, r5, r0, lsl #6
    6138:	04120000 	ldreq	r0, [r2], #-0
    613c:	12140000 	andsne	r0, r4, #0
    6140:	14000004 	strne	r0, [r0], #-4
    6144:	00000105 	andeq	r0, r0, r5, lsl #2
    6148:	00054a14 	andeq	r4, r5, r4, lsl sl
    614c:	00251400 	eoreq	r1, r5, r0, lsl #8
    6150:	0f000000 	svceq	0x00000000
    6154:	00041804 	andeq	r1, r4, r4, lsl #16
    6158:	134c1500 	movtne	r1, #50432	; 0xc500
    615c:	04280000 	strteq	r0, [r8], #-0
    6160:	4a023905 	bmi	9457c <_stacks_size+0x93e5c>
    6164:	16000005 	strne	r0, [r0], -r5
    6168:	00000c2a 	andeq	r0, r0, sl, lsr #24
    616c:	25023b05 	strcs	r3, [r2, #-2821]	; 0xb05
    6170:	00000000 	andeq	r0, r0, r0
    6174:	00101a16 	andseq	r1, r0, r6, lsl sl
    6178:	02400500 	subeq	r0, r0, #0, 10
    617c:	00000631 	andeq	r0, r0, r1, lsr r6
    6180:	0d2f1604 	stceq	6, cr1, [pc, #-16]!	; 6178 <_stacks_size+0x5a58>
    6184:	40050000 	andmi	r0, r5, r0
    6188:	00063102 	andeq	r3, r6, r2, lsl #2
    618c:	2c160800 	ldccs	8, cr0, [r6], {-0}
    6190:	0500000e 	streq	r0, [r0, #-14]
    6194:	06310240 	ldrteq	r0, [r1], -r0, asr #4
    6198:	160c0000 	strne	r0, [ip], -r0
    619c:	00000fe0 	andeq	r0, r0, r0, ror #31
    61a0:	25024205 	strcs	r4, [r2, #-517]	; 0x205
    61a4:	10000000 	andne	r0, r0, r0
    61a8:	000d3f16 	andeq	r3, sp, r6, lsl pc
    61ac:	02430500 	subeq	r0, r3, #0, 10
    61b0:	00000813 	andeq	r0, r0, r3, lsl r8
    61b4:	0f4e1614 	svceq	0x004e1614
    61b8:	45050000 	strmi	r0, [r5, #-0]
    61bc:	00002502 	andeq	r2, r0, r2, lsl #10
    61c0:	21163000 	tstcs	r6, r0
    61c4:	05000010 	streq	r0, [r0, #-16]
    61c8:	057b0246 	ldrbeq	r0, [fp, #-582]!	; 0x246
    61cc:	16340000 	ldrtne	r0, [r4], -r0
    61d0:	00000c31 	andeq	r0, r0, r1, lsr ip
    61d4:	25024805 	strcs	r4, [r2, #-2053]	; 0x805
    61d8:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    61dc:	000f6816 	andeq	r6, pc, r6, lsl r8	; <UNPREDICTABLE>
    61e0:	024a0500 	subeq	r0, sl, #0, 10
    61e4:	0000082e 	andeq	r0, r0, lr, lsr #16
    61e8:	0fca163c 	svceq	0x00ca163c
    61ec:	4d050000 	stcmi	0, cr0, [r5, #-0]
    61f0:	00016502 	andeq	r6, r1, r2, lsl #10
    61f4:	79164000 	ldmdbvc	r6, {lr}
    61f8:	0500000c 	streq	r0, [r0, #-12]
    61fc:	0025024e 	eoreq	r0, r5, lr, asr #4
    6200:	16440000 	strbne	r0, [r4], -r0
    6204:	00001004 	andeq	r1, r0, r4
    6208:	65024f05 	strvs	r4, [r2, #-3845]	; 0xf05
    620c:	48000001 	stmdami	r0, {r0}
    6210:	000da116 	andeq	sl, sp, r6, lsl r1
    6214:	02500500 	subseq	r0, r0, #0, 10
    6218:	00000834 	andeq	r0, r0, r4, lsr r8
    621c:	0d4a164c 	stcleq	6, cr1, [sl, #-304]	; 0xfffffed0
    6220:	53050000 	movwpl	r0, #20480	; 0x5000
    6224:	00002502 	andeq	r2, r0, r2, lsl #10
    6228:	e7165000 	ldr	r5, [r6, -r0]
    622c:	0500000e 	streq	r0, [r0, #-14]
    6230:	054a0254 	strbeq	r0, [sl, #-596]	; 0x254
    6234:	16540000 	ldrbne	r0, [r4], -r0
    6238:	0000105b 	andeq	r1, r0, fp, asr r0
    623c:	f1027705 			; <UNDEFINED> instruction: 0xf1027705
    6240:	58000007 	stmdapl	r0, {r0, r1, r2}
    6244:	000d3717 	andeq	r3, sp, r7, lsl r7
    6248:	027b0500 	rsbseq	r0, fp, #0, 10
    624c:	00000282 	andeq	r0, r0, r2, lsl #5
    6250:	e2170148 	ands	r0, r7, #72, 2
    6254:	0500000d 	streq	r0, [r0, #-13]
    6258:	0244027c 	subeq	r0, r4, #124, 4	; 0xc0000007
    625c:	014c0000 	mrseq	r0, (UNDEF: 76)
    6260:	000d8e17 	andeq	r8, sp, r7, lsl lr
    6264:	02800500 	addeq	r0, r0, #0, 10
    6268:	00000845 	andeq	r0, r0, r5, asr #16
    626c:	6d1702dc 	lfmvs	f0, 4, [r7, #-880]	; 0xfffffc90
    6270:	0500000e 	streq	r0, [r0, #-14]
    6274:	05f60285 	ldrbeq	r0, [r6, #645]!	; 0x285
    6278:	02e00000 	rsceq	r0, r0, #0
    627c:	000c8b17 	andeq	r8, ip, r7, lsl fp
    6280:	02860500 	addeq	r0, r6, #0, 10
    6284:	00000851 	andeq	r0, r0, r1, asr r8
    6288:	0f0002ec 	svceq	0x000002ec
    628c:	00055004 	andeq	r5, r5, r4
    6290:	08010300 	stmdaeq	r1, {r8, r9}
    6294:	00000052 	andeq	r0, r0, r2, asr r0
    6298:	03f4040f 	mvnseq	r0, #251658240	; 0xf000000
    629c:	25130000 	ldrcs	r0, [r3, #-0]
    62a0:	7b000000 	blvc	62a8 <_stacks_size+0x5b88>
    62a4:	14000005 	strne	r0, [r0], #-5
    62a8:	00000412 	andeq	r0, r0, r2, lsl r4
    62ac:	00010514 	andeq	r0, r1, r4, lsl r5
    62b0:	057b1400 	ldrbeq	r1, [fp, #-1024]!	; 0x400
    62b4:	25140000 	ldrcs	r0, [r4, #-0]
    62b8:	00000000 	andeq	r0, r0, r0
    62bc:	0581040f 	streq	r0, [r1, #1039]	; 0x40f
    62c0:	50180000 	andspl	r0, r8, r0
    62c4:	0f000005 	svceq	0x00000005
    62c8:	00055d04 	andeq	r5, r5, r4, lsl #26
    62cc:	00811300 	addeq	r1, r1, r0, lsl #6
    62d0:	05aa0000 	streq	r0, [sl, #0]!
    62d4:	12140000 	andsne	r0, r4, #0
    62d8:	14000004 	strne	r0, [r0], #-4
    62dc:	00000105 	andeq	r0, r0, r5, lsl #2
    62e0:	00008114 	andeq	r8, r0, r4, lsl r1
    62e4:	00251400 	eoreq	r1, r5, r0, lsl #8
    62e8:	0f000000 	svceq	0x00000000
    62ec:	00058c04 	andeq	r8, r5, r4, lsl #24
    62f0:	00251300 	eoreq	r1, r5, r0, lsl #6
    62f4:	05c40000 	strbeq	r0, [r4]
    62f8:	12140000 	andsne	r0, r4, #0
    62fc:	14000004 	strne	r0, [r0], #-4
    6300:	00000105 	andeq	r0, r0, r5, lsl #2
    6304:	b0040f00 	andlt	r0, r4, r0, lsl #30
    6308:	08000005 	stmdaeq	r0, {r0, r2}
    630c:	0000003a 	andeq	r0, r0, sl, lsr r0
    6310:	000005da 	ldrdeq	r0, [r0], -sl
    6314:	0000c709 	andeq	ip, r0, r9, lsl #14
    6318:	08000200 	stmdaeq	r0, {r9}
    631c:	0000003a 	andeq	r0, r0, sl, lsr r0
    6320:	000005ea 	andeq	r0, r0, sl, ror #11
    6324:	0000c709 	andeq	ip, r0, r9, lsl #14
    6328:	05000000 	streq	r0, [r0, #-0]
    632c:	00000d71 	andeq	r0, r0, r1, ror sp
    6330:	ca011d05 	bgt	4d74c <_stacks_size+0x4d02c>
    6334:	19000002 	stmdbne	r0, {r1}
    6338:	00001305 	andeq	r1, r0, r5, lsl #6
    633c:	0121050c 	teqeq	r1, ip, lsl #10
    6340:	0000062b 	andeq	r0, r0, fp, lsr #12
    6344:	00101416 	andseq	r1, r0, r6, lsl r4
    6348:	01230500 	teqeq	r3, r0, lsl #10
    634c:	0000062b 	andeq	r0, r0, fp, lsr #12
    6350:	0d6a1600 	stcleq	6, cr1, [sl, #-0]
    6354:	24050000 	strcs	r0, [r5], #-0
    6358:	00002501 	andeq	r2, r0, r1, lsl #10
    635c:	cb160400 	blgt	587364 <_ram_limit+0x16f364>
    6360:	0500000d 	streq	r0, [r0, #-13]
    6364:	06310125 	ldrteq	r0, [r1], -r5, lsr #2
    6368:	00080000 	andeq	r0, r8, r0
    636c:	05f6040f 	ldrbeq	r0, [r6, #1039]!	; 0x40f
    6370:	040f0000 	streq	r0, [pc], #-0	; 6378 <_stacks_size+0x5c58>
    6374:	000005ea 	andeq	r0, r0, sl, ror #11
    6378:	000faa19 	andeq	sl, pc, r9, lsl sl	; <UNPREDICTABLE>
    637c:	3d050e00 	stccc	14, cr0, [r5, #-0]
    6380:	00066c01 	andeq	r6, r6, r1, lsl #24
    6384:	0fa41600 	svceq	0x00a41600
    6388:	3e050000 	cdpcc	0, 0, cr0, cr5, cr0, {0}
    638c:	00066c01 	andeq	r6, r6, r1, lsl #24
    6390:	d1160000 	tstle	r6, r0
    6394:	0500000d 	streq	r0, [r0, #-13]
    6398:	066c013f 			; <UNDEFINED> instruction: 0x066c013f
    639c:	16060000 	strne	r0, [r6], -r0
    63a0:	00000fdb 	ldrdeq	r0, [r0], -fp
    63a4:	48014005 	stmdami	r1, {r0, r2, lr}
    63a8:	0c000000 	stceq	0, cr0, [r0], {-0}
    63ac:	00480800 	subeq	r0, r8, r0, lsl #16
    63b0:	067c0000 	ldrbteq	r0, [ip], -r0
    63b4:	c7090000 	strgt	r0, [r9, -r0]
    63b8:	02000000 	andeq	r0, r0, #0
    63bc:	05d01a00 	ldrbeq	r1, [r0, #2560]	; 0xa00
    63c0:	077d0258 			; <UNDEFINED> instruction: 0x077d0258
    63c4:	0c160000 	ldceq	0, cr0, [r6], {-0}
    63c8:	0500000f 	streq	r0, [r0, #-15]
    63cc:	002c025a 	eoreq	r0, ip, sl, asr r2
    63d0:	16000000 	strne	r0, [r0], -r0
    63d4:	00000f97 	muleq	r0, r7, pc	; <UNPREDICTABLE>
    63d8:	4a025b05 	bmi	9cff4 <_stacks_size+0x9c8d4>
    63dc:	04000005 	streq	r0, [r0], #-5
    63e0:	00104616 	andseq	r4, r0, r6, lsl r6
    63e4:	025c0500 	subseq	r0, ip, #0, 10
    63e8:	0000077d 	andeq	r0, r0, sp, ror r7
    63ec:	0cb41608 	ldceq	6, cr1, [r4], #32
    63f0:	5d050000 	stcpl	0, cr0, [r5, #-0]
    63f4:	00017b02 	andeq	r7, r1, r2, lsl #22
    63f8:	fd162400 	ldc2	4, cr2, [r6, #-0]
    63fc:	0500000e 	streq	r0, [r0, #-14]
    6400:	0025025e 	eoreq	r0, r5, lr, asr r2
    6404:	16480000 	strbne	r0, [r8], -r0
    6408:	0000100f 	andeq	r1, r0, pc
    640c:	64025f05 	strvs	r5, [r2], #-3845	; 0xf05
    6410:	50000000 	andpl	r0, r0, r0
    6414:	000d2a16 	andeq	r2, sp, r6, lsl sl
    6418:	02600500 	rsbeq	r0, r0, #0, 10
    641c:	00000637 	andeq	r0, r0, r7, lsr r6
    6420:	0c441658 	mcrreq	6, 5, r1, r4, cr8
    6424:	61050000 	mrsvs	r0, (UNDEF: 5)
    6428:	0000ef02 	andeq	lr, r0, r2, lsl #30
    642c:	2b166800 	blcs	5a0434 <_ram_limit+0x188434>
    6430:	0500000f 	streq	r0, [r0, #-15]
    6434:	00ef0262 	rsceq	r0, pc, r2, ror #4
    6438:	16700000 	ldrbtne	r0, [r0], -r0
    643c:	00000fea 	andeq	r0, r0, sl, ror #31
    6440:	ef026305 	svc	0x00026305
    6444:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    6448:	000c5116 	andeq	r5, ip, r6, lsl r1
    644c:	02640500 	rsbeq	r0, r4, #0, 10
    6450:	0000078d 	andeq	r0, r0, sp, lsl #15
    6454:	0c901680 	ldceq	6, cr1, [r0], {128}	; 0x80
    6458:	65050000 	strvs	r0, [r5, #-0]
    645c:	00079d02 	andeq	r9, r7, r2, lsl #26
    6460:	78168800 	ldmdavc	r6, {fp, pc}
    6464:	0500000d 	streq	r0, [r0, #-13]
    6468:	00250266 	eoreq	r0, r5, r6, ror #4
    646c:	16a00000 	strtne	r0, [r0], r0
    6470:	00000f40 	andeq	r0, r0, r0, asr #30
    6474:	ef026705 	svc	0x00026705
    6478:	a4000000 	strge	r0, [r0], #-0
    647c:	000e8316 	andeq	r8, lr, r6, lsl r3
    6480:	02680500 	rsbeq	r0, r8, #0, 10
    6484:	000000ef 	andeq	r0, r0, pc, ror #1
    6488:	0d1916ac 	ldceq	6, cr1, [r9, #-688]	; 0xfffffd50
    648c:	69050000 	stmdbvs	r5, {}	; <UNPREDICTABLE>
    6490:	0000ef02 	andeq	lr, r0, r2, lsl #30
    6494:	3116b400 	tstcc	r6, r0, lsl #8
    6498:	05000010 	streq	r0, [r0, #-16]
    649c:	00ef026a 	rsceq	r0, pc, sl, ror #4
    64a0:	16bc0000 	ldrtne	r0, [ip], r0
    64a4:	00000c9c 	muleq	r0, ip, ip
    64a8:	ef026b05 	svc	0x00026b05
    64ac:	c4000000 	strgt	r0, [r0], #-0
    64b0:	000e6416 	andeq	r6, lr, r6, lsl r4
    64b4:	026c0500 	rsbeq	r0, ip, #0, 10
    64b8:	00000025 	andeq	r0, r0, r5, lsr #32
    64bc:	500800cc 	andpl	r0, r8, ip, asr #1
    64c0:	8d000005 	stchi	0, cr0, [r0, #-20]	; 0xffffffec
    64c4:	09000007 	stmdbeq	r0, {r0, r1, r2}
    64c8:	000000c7 	andeq	r0, r0, r7, asr #1
    64cc:	50080019 	andpl	r0, r8, r9, lsl r0
    64d0:	9d000005 	stcls	0, cr0, [r0, #-20]	; 0xffffffec
    64d4:	09000007 	stmdbeq	r0, {r0, r1, r2}
    64d8:	000000c7 	andeq	r0, r0, r7, asr #1
    64dc:	50080007 	andpl	r0, r8, r7
    64e0:	ad000005 	stcge	0, cr0, [r0, #-20]	; 0xffffffec
    64e4:	09000007 	stmdbeq	r0, {r0, r1, r2}
    64e8:	000000c7 	andeq	r0, r0, r7, asr #1
    64ec:	f01a0017 			; <UNDEFINED> instruction: 0xf01a0017
    64f0:	d1027105 	tstle	r2, r5, lsl #2
    64f4:	16000007 	strne	r0, [r0], -r7
    64f8:	00000e25 	andeq	r0, r0, r5, lsr #28
    64fc:	d1027405 	tstle	r2, r5, lsl #8
    6500:	00000007 	andeq	r0, r0, r7
    6504:	000d9816 	andeq	r9, sp, r6, lsl r8
    6508:	02750500 	rsbseq	r0, r5, #0, 10
    650c:	000007e1 	andeq	r0, r0, r1, ror #15
    6510:	c4080078 	strgt	r0, [r8], #-120	; 0x78
    6514:	e1000002 	tst	r0, r2
    6518:	09000007 	stmdbeq	r0, {r0, r1, r2}
    651c:	000000c7 	andeq	r0, r0, r7, asr #1
    6520:	2c08001d 	stccs	0, cr0, [r8], {29}
    6524:	f1000000 	cps	#0
    6528:	09000007 	stmdbeq	r0, {r0, r1, r2}
    652c:	000000c7 	andeq	r0, r0, r7, asr #1
    6530:	f01b001d 			; <UNDEFINED> instruction: 0xf01b001d
    6534:	13025605 	movwne	r5, #9733	; 0x2605
    6538:	1c000008 	stcne	0, cr0, [r0], {8}
    653c:	0000134c 	andeq	r1, r0, ip, asr #6
    6540:	7c026d05 	stcvc	13, cr6, [r2], {5}
    6544:	1c000006 	stcne	0, cr0, [r0], {6}
    6548:	00000f23 	andeq	r0, r0, r3, lsr #30
    654c:	ad027605 	stcge	6, cr7, [r2, #-20]	; 0xffffffec
    6550:	00000007 	andeq	r0, r0, r7
    6554:	00055008 	andeq	r5, r5, r8
    6558:	00082300 	andeq	r2, r8, r0, lsl #6
    655c:	00c70900 	sbceq	r0, r7, r0, lsl #18
    6560:	00180000 	andseq	r0, r8, r0
    6564:	00082e1d 	andeq	r2, r8, sp, lsl lr
    6568:	04121400 	ldreq	r1, [r2], #-1024	; 0x400
    656c:	0f000000 	svceq	0x00000000
    6570:	00082304 	andeq	r2, r8, r4, lsl #6
    6574:	65040f00 	strvs	r0, [r4, #-3840]	; 0xf00
    6578:	1d000001 	stcne	0, cr0, [r0, #-4]
    657c:	00000845 	andeq	r0, r0, r5, asr #16
    6580:	00002514 	andeq	r2, r0, r4, lsl r5
    6584:	040f0000 	streq	r0, [pc], #-0	; 658c <_stacks_size+0x5e6c>
    6588:	0000084b 	andeq	r0, r0, fp, asr #16
    658c:	083a040f 	ldmdaeq	sl!, {r0, r1, r2, r3, sl}
    6590:	ea080000 	b	206598 <_stacks_size+0x205e78>
    6594:	61000005 	tstvs	r0, r5
    6598:	09000008 	stmdbeq	r0, {r3}
    659c:	000000c7 	andeq	r0, r0, r7, asr #1
    65a0:	ff1e0002 			; <UNDEFINED> instruction: 0xff1e0002
    65a4:	01000013 	tsteq	r0, r3, lsl r0
    65a8:	401c582f 	andsmi	r5, ip, pc, lsr #16
    65ac:	00000400 	andeq	r0, r0, r0, lsl #8
    65b0:	849c0100 	ldrhi	r0, [ip], #256	; 0x100
    65b4:	1f000008 	svcne	0x00000008
    65b8:	00727470 	rsbseq	r7, r2, r0, ror r4
    65bc:	04123001 	ldreq	r3, [r2], #-1
    65c0:	50010000 	andpl	r0, r1, r0
    65c4:	137a1e00 	cmnne	sl, #0, 28
    65c8:	38010000 	stmdacc	r1, {}	; <UNPREDICTABLE>
    65cc:	00401c5c 	subeq	r1, r0, ip, asr ip
    65d0:	00000004 	andeq	r0, r0, r4
    65d4:	08a79c01 	stmiaeq	r7!, {r0, sl, fp, ip, pc}
    65d8:	701f0000 	andsvc	r0, pc, r0
    65dc:	01007274 	tsteq	r0, r4, ror r2
    65e0:	00041239 	andeq	r1, r4, r9, lsr r2
    65e4:	00500100 	subseq	r0, r0, r0, lsl #2
    65e8:	00160b20 	andseq	r0, r6, r0, lsr #22
    65ec:	252b0100 	strcs	r0, [fp, #-256]!	; 0x100
    65f0:	00000000 	andeq	r0, r0, r0
    65f4:	0008f000 	andeq	pc, r8, r0
    65f8:	0c000400 	cfstrseq	mvf0, [r0], {-0}
    65fc:	04000017 	streq	r0, [r0], #-23
    6600:	000cc301 	andeq	ip, ip, r1, lsl #6
    6604:	164f0100 	strbne	r0, [pc], -r0, lsl #2
    6608:	106c0000 	rsbne	r0, ip, r0
    660c:	00e80000 	rsceq	r0, r8, r0
    6610:	00000000 	andeq	r0, r0, r0
    6614:	13d40000 	bicsne	r0, r4, #0
    6618:	0d020000 	stceq	0, cr0, [r2, #-0]
    661c:	02000014 	andeq	r0, r0, #20
    6620:	00003093 	muleq	r0, r3, r0
    6624:	05040300 	streq	r0, [r4, #-768]	; 0x300
    6628:	00746e69 	rsbseq	r6, r4, r9, ror #28
    662c:	36070404 	strcc	r0, [r7], -r4, lsl #8
    6630:	04000000 	streq	r0, [r0], #-0
    6634:	004b0601 	subeq	r0, fp, r1, lsl #12
    6638:	01040000 	mrseq	r0, (UNDEF: 4)
    663c:	00004908 	andeq	r4, r0, r8, lsl #18
    6640:	05020400 	streq	r0, [r2, #-1024]	; 0x400
    6644:	0000019b 	muleq	r0, fp, r1
    6648:	72070204 	andvc	r0, r7, #4, 4	; 0x40000000
    664c:	04000000 	streq	r0, [r0], #-0
    6650:	01750504 	cmneq	r5, r4, lsl #10
    6654:	04040000 	streq	r0, [r4], #-0
    6658:	00003107 	andeq	r3, r0, r7, lsl #2
    665c:	05080400 	streq	r0, [r8, #-1024]	; 0x400
    6660:	00000170 	andeq	r0, r0, r0, ror r1
    6664:	2c070804 	stccs	8, cr0, [r7], {4}
    6668:	02000000 	andeq	r0, r0, #0
    666c:	00000d58 	andeq	r0, r0, r8, asr sp
    6670:	00300703 	eorseq	r0, r0, r3, lsl #14
    6674:	ae020000 	cdpge	0, 0, cr0, cr2, cr0, {0}
    6678:	04000002 	streq	r0, [r0], #-2
    667c:	00005a10 	andeq	r5, r0, r0, lsl sl
    6680:	0df40200 	lfmeq	f0, 2, [r4]
    6684:	27040000 	strcs	r0, [r4, -r0]
    6688:	0000005a 	andeq	r0, r0, sl, asr r0
    668c:	000f3905 	andeq	r3, pc, r5, lsl #18
    6690:	01610200 	cmneq	r1, r0, lsl #4
    6694:	00000037 	andeq	r0, r0, r7, lsr r0
    6698:	4a040406 	bmi	1076b8 <_stacks_size+0x106f98>
    669c:	000000c2 	andeq	r0, r0, r2, asr #1
    66a0:	000c5b07 	andeq	r5, ip, r7, lsl #22
    66a4:	974c0400 	strbls	r0, [ip, -r0, lsl #8]
    66a8:	07000000 	streq	r0, [r0, -r0]
    66ac:	00000e34 	andeq	r0, r0, r4, lsr lr
    66b0:	00c24d04 	sbceq	r4, r2, r4, lsl #26
    66b4:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    66b8:	00000045 	andeq	r0, r0, r5, asr #32
    66bc:	000000d2 	ldrdeq	r0, [r0], -r2
    66c0:	0000d209 	andeq	sp, r0, r9, lsl #4
    66c4:	04000300 	streq	r0, [r0], #-768	; 0x300
    66c8:	01670704 	cmneq	r7, r4, lsl #14
    66cc:	080a0000 	stmdaeq	sl, {}	; <UNPREDICTABLE>
    66d0:	00fa4704 	rscseq	r4, sl, r4, lsl #14
    66d4:	070b0000 	streq	r0, [fp, -r0]
    66d8:	0400000d 	streq	r0, [r0], #-13
    66dc:	00003049 	andeq	r3, r0, r9, asr #32
    66e0:	6a0b0000 	bvs	2c66e8 <_stacks_size+0x2c5fc8>
    66e4:	0400000c 	streq	r0, [r0], #-12
    66e8:	0000a34e 	andeq	sl, r0, lr, asr #6
    66ec:	02000400 	andeq	r0, r0, #0, 8
    66f0:	00000f72 	andeq	r0, r0, r2, ror pc
    66f4:	00d94f04 	sbcseq	r4, r9, r4, lsl #30
    66f8:	03020000 	movweq	r0, #8192	; 0x2000
    66fc:	0400000e 	streq	r0, [r0], #-14
    6700:	00007653 	andeq	r7, r0, r3, asr r6
    6704:	02040c00 	andeq	r0, r4, #0, 24
    6708:	00000fbc 			; <UNDEFINED> instruction: 0x00000fbc
    670c:	00611605 	rsbeq	r1, r1, r5, lsl #12
    6710:	7d0d0000 	stcvc	0, cr0, [sp, #-0]
    6714:	1800000f 	stmdane	r0, {r0, r1, r2, r3}
    6718:	01702d05 	cmneq	r0, r5, lsl #26
    671c:	140b0000 	strne	r0, [fp], #-0
    6720:	05000010 	streq	r0, [r0, #-16]
    6724:	0001702f 	andeq	r7, r1, pc, lsr #32
    6728:	5f0e0000 	svcpl	0x000e0000
    672c:	3005006b 	andcc	r0, r5, fp, rrx
    6730:	00000030 	andeq	r0, r0, r0, lsr r0
    6734:	0f850b04 	svceq	0x00850b04
    6738:	30050000 	andcc	r0, r5, r0
    673c:	00000030 	andeq	r0, r0, r0, lsr r0
    6740:	10090b08 	andne	r0, r9, r8, lsl #22
    6744:	30050000 	andcc	r0, r5, r0
    6748:	00000030 	andeq	r0, r0, r0, lsr r0
    674c:	0f190b0c 	svceq	0x00190b0c
    6750:	30050000 	andcc	r0, r5, r0
    6754:	00000030 	andeq	r0, r0, r0, lsr r0
    6758:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
    675c:	76310500 	ldrtvc	r0, [r1], -r0, lsl #10
    6760:	14000001 	strne	r0, [r0], #-1
    6764:	1d040f00 	stcne	15, cr0, [r4, #-0]
    6768:	08000001 	stmdaeq	r0, {r0}
    676c:	00000112 	andeq	r0, r0, r2, lsl r1
    6770:	00000186 	andeq	r0, r0, r6, lsl #3
    6774:	0000d209 	andeq	sp, r0, r9, lsl #4
    6778:	0d000000 	stceq	0, cr0, [r0, #-0]
    677c:	00000f1e 	andeq	r0, r0, lr, lsl pc
    6780:	ff350524 			; <UNDEFINED> instruction: 0xff350524
    6784:	0b000001 	bleq	6790 <_stacks_size+0x6070>
    6788:	00000e0c 	andeq	r0, r0, ip, lsl #28
    678c:	00303705 	eorseq	r3, r0, r5, lsl #14
    6790:	0b000000 	bleq	6798 <_stacks_size+0x6078>
    6794:	00000d85 	andeq	r0, r0, r5, lsl #27
    6798:	00303805 	eorseq	r3, r0, r5, lsl #16
    679c:	0b040000 	bleq	1067a4 <_stacks_size+0x106084>
    67a0:	00000e15 	andeq	r0, r0, r5, lsl lr
    67a4:	00303905 	eorseq	r3, r0, r5, lsl #18
    67a8:	0b080000 	bleq	2067b0 <_stacks_size+0x206090>
    67ac:	00000d0f 	andeq	r0, r0, pc, lsl #26
    67b0:	00303a05 	eorseq	r3, r0, r5, lsl #20
    67b4:	0b0c0000 	bleq	3067bc <_stacks_size+0x30609c>
    67b8:	00000fd2 	ldrdeq	r0, [r0], -r2
    67bc:	00303b05 	eorseq	r3, r0, r5, lsl #22
    67c0:	0b100000 	bleq	4067c8 <__malloc_current_mallinfo+0x3c64>
    67c4:	00000f8d 	andeq	r0, r0, sp, lsl #31
    67c8:	00303c05 	eorseq	r3, r0, r5, lsl #24
    67cc:	0b140000 	bleq	5067d4 <_ram_limit+0xee7d4>
    67d0:	00000db9 			; <UNDEFINED> instruction: 0x00000db9
    67d4:	00303d05 	eorseq	r3, r0, r5, lsl #26
    67d8:	0b180000 	bleq	6067e0 <_ram_limit+0x1ee7e0>
    67dc:	00000fb2 			; <UNDEFINED> instruction: 0x00000fb2
    67e0:	00303e05 	eorseq	r3, r0, r5, lsl #28
    67e4:	0b1c0000 	bleq	7067ec <_ram_limit+0x2ee7ec>
    67e8:	00000dd7 	ldrdeq	r0, [r0], -r7
    67ec:	00303f05 	eorseq	r3, r0, r5, lsl #30
    67f0:	00200000 	eoreq	r0, r0, r0
    67f4:	000e7510 	andeq	r7, lr, r0, lsl r5
    67f8:	05010800 	streq	r0, [r1, #-2048]	; 0x800
    67fc:	00023f48 	andeq	r3, r2, r8, asr #30
    6800:	0c830b00 	vstmiaeq	r3, {d0-d-1}
    6804:	49050000 	stmdbmi	r5, {}	; <UNPREDICTABLE>
    6808:	0000023f 	andeq	r0, r0, pc, lsr r2
    680c:	0ff80b00 	svceq	0x00f80b00
    6810:	4a050000 	bmi	146818 <_stacks_size+0x1460f8>
    6814:	0000023f 	andeq	r0, r0, pc, lsr r2
    6818:	0deb1180 	stfeqe	f1, [fp, #512]!	; 0x200
    681c:	4c050000 	stcmi	0, cr0, [r5], {-0}
    6820:	00000112 	andeq	r0, r0, r2, lsl r1
    6824:	60110100 	andsvs	r0, r1, r0, lsl #2
    6828:	0500000f 	streq	r0, [r0, #-15]
    682c:	0001124f 	andeq	r1, r1, pc, asr #4
    6830:	00010400 	andeq	r0, r1, r0, lsl #8
    6834:	00011008 	andeq	r1, r1, r8
    6838:	00024f00 	andeq	r4, r2, r0, lsl #30
    683c:	00d20900 	sbcseq	r0, r2, r0, lsl #18
    6840:	001f0000 	andseq	r0, pc, r0
    6844:	000d3710 	andeq	r3, sp, r0, lsl r7
    6848:	05019000 	streq	r9, [r1, #-0]
    684c:	00028d5b 	andeq	r8, r2, fp, asr sp
    6850:	10140b00 	andsne	r0, r4, r0, lsl #22
    6854:	5c050000 	stcpl	0, cr0, [r5], {-0}
    6858:	0000028d 	andeq	r0, r0, sp, lsl #5
    685c:	0fe50b00 	svceq	0x00e50b00
    6860:	5d050000 	stcpl	0, cr0, [r5, #-0]
    6864:	00000030 	andeq	r0, r0, r0, lsr r0
    6868:	0dab0b04 	stceq	11, cr0, [fp, #16]!
    686c:	5f050000 	svcpl	0x00050000
    6870:	00000293 	muleq	r0, r3, r2
    6874:	0e750b08 	vaddeq.f64	d16, d5, d8
    6878:	60050000 	andvs	r0, r5, r0
    687c:	000001ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    6880:	040f0088 	streq	r0, [pc], #-136	; 6888 <_stacks_size+0x6168>
    6884:	0000024f 	andeq	r0, r0, pc, asr #4
    6888:	0002a308 	andeq	sl, r2, r8, lsl #6
    688c:	0002a300 	andeq	sl, r2, r0, lsl #6
    6890:	00d20900 	sbcseq	r0, r2, r0, lsl #18
    6894:	001f0000 	andseq	r0, pc, r0
    6898:	02a9040f 	adceq	r0, r9, #251658240	; 0xf000000
    689c:	0d120000 	ldceq	0, cr0, [r2, #-0]
    68a0:	00000c72 	andeq	r0, r0, r2, ror ip
    68a4:	cf730508 	svcgt	0x00730508
    68a8:	0b000002 	bleq	68b8 <_stacks_size+0x6198>
    68ac:	0000150f 	andeq	r1, r0, pc, lsl #10
    68b0:	02cf7405 	sbceq	r7, pc, #83886080	; 0x5000000
    68b4:	0b000000 	bleq	68bc <_stacks_size+0x619c>
    68b8:	00001587 	andeq	r1, r0, r7, lsl #11
    68bc:	00307505 	eorseq	r7, r0, r5, lsl #10
    68c0:	00040000 	andeq	r0, r4, r0
    68c4:	0045040f 	subeq	r0, r5, pc, lsl #8
    68c8:	530d0000 	movwpl	r0, #53248	; 0xd000
    68cc:	68000010 	stmdavs	r0, {r4}
    68d0:	03ffb305 	mvnseq	fp, #335544320	; 0x14000000
    68d4:	5f0e0000 	svcpl	0x000e0000
    68d8:	b4050070 	strlt	r0, [r5], #-112	; 0x70
    68dc:	000002cf 	andeq	r0, r0, pc, asr #5
    68e0:	725f0e00 	subsvc	r0, pc, #0, 28
    68e4:	30b50500 	adcscc	r0, r5, r0, lsl #10
    68e8:	04000000 	streq	r0, [r0], #-0
    68ec:	00775f0e 	rsbseq	r5, r7, lr, lsl #30
    68f0:	0030b605 	eorseq	fp, r0, r5, lsl #12
    68f4:	0b080000 	bleq	2068fc <_stacks_size+0x2061dc>
    68f8:	000003c1 	andeq	r0, r0, r1, asr #7
    68fc:	004cb705 	subeq	fp, ip, r5, lsl #14
    6900:	0b0c0000 	bleq	306908 <_stacks_size+0x3061e8>
    6904:	00000ef7 	strdeq	r0, [r0], -r7
    6908:	004cb805 	subeq	fp, ip, r5, lsl #16
    690c:	0e0e0000 	cdpeq	0, 0, cr0, cr14, cr0, {0}
    6910:	0066625f 	rsbeq	r6, r6, pc, asr r2
    6914:	02aab905 	adceq	fp, sl, #81920	; 0x14000
    6918:	0b100000 	bleq	406920 <__malloc_current_mallinfo+0x3dbc>
    691c:	00000c61 	andeq	r0, r0, r1, ror #24
    6920:	0030ba05 	eorseq	fp, r0, r5, lsl #20
    6924:	0b180000 	bleq	60692c <_ram_limit+0x1ee92c>
    6928:	00000eef 	andeq	r0, r0, pc, ror #29
    692c:	0110c105 	tsteq	r0, r5, lsl #2
    6930:	0b1c0000 	bleq	706938 <_ram_limit+0x2ee938>
    6934:	00000e1f 	andeq	r0, r0, pc, lsl lr
    6938:	0562c305 	strbeq	ip, [r2, #-773]!	; 0x305
    693c:	0b200000 	bleq	806944 <_ram_limit+0x3ee944>
    6940:	00000cad 	andeq	r0, r0, sp, lsr #25
    6944:	0591c505 	ldreq	ip, [r1, #1285]	; 0x505
    6948:	0b240000 	bleq	906950 <_ram_limit+0x4ee950>
    694c:	00000fc4 	andeq	r0, r0, r4, asr #31
    6950:	05b5c805 	ldreq	ip, [r5, #2053]!	; 0x805
    6954:	0b280000 	bleq	a0695c <_ram_limit+0x5ee95c>
    6958:	00000dfc 	strdeq	r0, [r0], -ip
    695c:	05cfc905 	strbeq	ip, [pc, #2309]	; 7269 <_stacks_size+0x6b49>
    6960:	0e2c0000 	cdpeq	0, 2, cr0, cr12, cr0, {0}
    6964:	0062755f 	rsbeq	r7, r2, pc, asr r5
    6968:	02aacc05 	adceq	ip, sl, #1280	; 0x500
    696c:	0e300000 	cdpeq	0, 3, cr0, cr0, cr0, {0}
    6970:	0070755f 	rsbseq	r7, r0, pc, asr r5
    6974:	02cfcd05 	sbceq	ip, pc, #320	; 0x140
    6978:	0e380000 	cdpeq	0, 3, cr0, cr8, cr0, {0}
    697c:	0072755f 	rsbseq	r7, r2, pc, asr r5
    6980:	0030ce05 	eorseq	ip, r0, r5, lsl #28
    6984:	0b3c0000 	bleq	f0698c <_ram_limit+0xaee98c>
    6988:	00001040 	andeq	r1, r0, r0, asr #32
    698c:	05d5d105 	ldrbeq	sp, [r5, #261]	; 0x105
    6990:	0b400000 	bleq	1006998 <_ram_limit+0xbee998>
    6994:	00000d52 	andeq	r0, r0, r2, asr sp
    6998:	05e5d205 	strbeq	sp, [r5, #517]!	; 0x205
    699c:	0e430000 	cdpeq	0, 4, cr0, cr3, cr0, {0}
    69a0:	00626c5f 	rsbeq	r6, r2, pc, asr ip
    69a4:	02aad505 	adceq	sp, sl, #20971520	; 0x1400000
    69a8:	0b440000 	bleq	11069b0 <_ram_limit+0xcee9b0>
    69ac:	000002ee 	andeq	r0, r0, lr, ror #5
    69b0:	0030d805 	eorseq	sp, r0, r5, lsl #16
    69b4:	0b4c0000 	bleq	13069bc <_ram_limit+0xeee9bc>
    69b8:	00000c3c 	andeq	r0, r0, ip, lsr ip
    69bc:	0081d905 	addeq	sp, r1, r5, lsl #18
    69c0:	0b500000 	bleq	14069c8 <_ram_limit+0xfee9c8>
    69c4:	00001066 	andeq	r1, r0, r6, rrx
    69c8:	041ddc05 	ldreq	sp, [sp], #-3077	; 0xc05
    69cc:	0b540000 	bleq	15069d4 <_ram_limit+0x10ee9d4>
    69d0:	00001407 	andeq	r1, r0, r7, lsl #8
    69d4:	0105e005 	tsteq	r5, r5
    69d8:	0b580000 	bleq	16069e0 <_ram_limit+0x11ee9e0>
    69dc:	00000db0 			; <UNDEFINED> instruction: 0x00000db0
    69e0:	00fae205 	rscseq	lr, sl, r5, lsl #4
    69e4:	0b5c0000 	bleq	17069ec <_ram_limit+0x12ee9ec>
    69e8:	00000dc3 	andeq	r0, r0, r3, asr #27
    69ec:	0030e305 	eorseq	lr, r0, r5, lsl #6
    69f0:	00640000 	rsbeq	r0, r4, r0
    69f4:	00003013 	andeq	r3, r0, r3, lsl r0
    69f8:	00041d00 	andeq	r1, r4, r0, lsl #26
    69fc:	041d1400 	ldreq	r1, [sp], #-1024	; 0x400
    6a00:	10140000 	andsne	r0, r4, r0
    6a04:	14000001 	strne	r0, [r0], #-1
    6a08:	00000555 	andeq	r0, r0, r5, asr r5
    6a0c:	00003014 	andeq	r3, r0, r4, lsl r0
    6a10:	040f0000 	streq	r0, [pc], #-0	; 6a18 <_stacks_size+0x62f8>
    6a14:	00000423 	andeq	r0, r0, r3, lsr #8
    6a18:	00134c15 	andseq	r4, r3, r5, lsl ip
    6a1c:	05042800 	streq	r2, [r4, #-2048]	; 0x800
    6a20:	05550239 	ldrbeq	r0, [r5, #-569]	; 0x239
    6a24:	2a160000 	bcs	586a2c <_ram_limit+0x16ea2c>
    6a28:	0500000c 	streq	r0, [r0, #-12]
    6a2c:	0030023b 	eorseq	r0, r0, fp, lsr r2
    6a30:	16000000 	strne	r0, [r0], -r0
    6a34:	0000101a 	andeq	r1, r0, sl, lsl r0
    6a38:	3c024005 	stccc	0, cr4, [r2], {5}
    6a3c:	04000006 	streq	r0, [r0], #-6
    6a40:	000d2f16 	andeq	r2, sp, r6, lsl pc
    6a44:	02400500 	subeq	r0, r0, #0, 10
    6a48:	0000063c 	andeq	r0, r0, ip, lsr r6
    6a4c:	0e2c1608 	cfmadda32eq	mvax0, mvax1, mvfx12, mvfx8
    6a50:	40050000 	andmi	r0, r5, r0
    6a54:	00063c02 	andeq	r3, r6, r2, lsl #24
    6a58:	e0160c00 	ands	r0, r6, r0, lsl #24
    6a5c:	0500000f 	streq	r0, [r0, #-15]
    6a60:	00300242 	eorseq	r0, r0, r2, asr #4
    6a64:	16100000 	ldrne	r0, [r0], -r0
    6a68:	00000d3f 	andeq	r0, r0, pc, lsr sp
    6a6c:	1e024305 	cdpne	3, 0, cr4, cr2, cr5, {0}
    6a70:	14000008 	strne	r0, [r0], #-8
    6a74:	000f4e16 	andeq	r4, pc, r6, lsl lr	; <UNPREDICTABLE>
    6a78:	02450500 	subeq	r0, r5, #0, 10
    6a7c:	00000030 	andeq	r0, r0, r0, lsr r0
    6a80:	10211630 	eorne	r1, r1, r0, lsr r6
    6a84:	46050000 	strmi	r0, [r5], -r0
    6a88:	00058602 	andeq	r8, r5, r2, lsl #12
    6a8c:	31163400 	tstcc	r6, r0, lsl #8
    6a90:	0500000c 	streq	r0, [r0, #-12]
    6a94:	00300248 	eorseq	r0, r0, r8, asr #4
    6a98:	16380000 	ldrtne	r0, [r8], -r0
    6a9c:	00000f68 	andeq	r0, r0, r8, ror #30
    6aa0:	39024a05 	stmdbcc	r2, {r0, r2, r9, fp, lr}
    6aa4:	3c000008 	stccc	0, cr0, [r0], {8}
    6aa8:	000fca16 	andeq	ip, pc, r6, lsl sl	; <UNPREDICTABLE>
    6aac:	024d0500 	subeq	r0, sp, #0, 10
    6ab0:	00000170 	andeq	r0, r0, r0, ror r1
    6ab4:	0c791640 	ldcleq	6, cr1, [r9], #-256	; 0xffffff00
    6ab8:	4e050000 	cdpmi	0, 0, cr0, cr5, cr0, {0}
    6abc:	00003002 	andeq	r3, r0, r2
    6ac0:	04164400 	ldreq	r4, [r6], #-1024	; 0x400
    6ac4:	05000010 	streq	r0, [r0, #-16]
    6ac8:	0170024f 	cmneq	r0, pc, asr #4
    6acc:	16480000 	strbne	r0, [r8], -r0
    6ad0:	00000da1 	andeq	r0, r0, r1, lsr #27
    6ad4:	3f025005 	svccc	0x00025005
    6ad8:	4c000008 	stcmi	0, cr0, [r0], {8}
    6adc:	000d4a16 	andeq	r4, sp, r6, lsl sl
    6ae0:	02530500 	subseq	r0, r3, #0, 10
    6ae4:	00000030 	andeq	r0, r0, r0, lsr r0
    6ae8:	0ee71650 	mcreq	6, 7, r1, cr7, cr0, {2}
    6aec:	54050000 	strpl	r0, [r5], #-0
    6af0:	00055502 	andeq	r5, r5, r2, lsl #10
    6af4:	5b165400 	blpl	59bafc <_ram_limit+0x183afc>
    6af8:	05000010 	streq	r0, [r0, #-16]
    6afc:	07fc0277 			; <UNDEFINED> instruction: 0x07fc0277
    6b00:	17580000 	ldrbne	r0, [r8, -r0]
    6b04:	00000d37 	andeq	r0, r0, r7, lsr sp
    6b08:	8d027b05 	vstrhi	d7, [r2, #-20]	; 0xffffffec
    6b0c:	48000002 	stmdami	r0, {r1}
    6b10:	0de21701 	stcleq	7, cr1, [r2, #4]!
    6b14:	7c050000 	stcvc	0, cr0, [r5], {-0}
    6b18:	00024f02 	andeq	r4, r2, r2, lsl #30
    6b1c:	17014c00 	strne	r4, [r1, -r0, lsl #24]
    6b20:	00000d8e 	andeq	r0, r0, lr, lsl #27
    6b24:	50028005 	andpl	r8, r2, r5
    6b28:	dc000008 	stcle	0, cr0, [r0], {8}
    6b2c:	0e6d1702 	cdpeq	7, 6, cr1, cr13, cr2, {0}
    6b30:	85050000 	strhi	r0, [r5, #-0]
    6b34:	00060102 	andeq	r0, r6, r2, lsl #2
    6b38:	1702e000 	strne	lr, [r2, -r0]
    6b3c:	00000c8b 	andeq	r0, r0, fp, lsl #25
    6b40:	5c028605 	stcpl	6, cr8, [r2], {5}
    6b44:	ec000008 	stc	0, cr0, [r0], {8}
    6b48:	040f0002 	streq	r0, [pc], #-2	; 6b50 <_stacks_size+0x6430>
    6b4c:	0000055b 	andeq	r0, r0, fp, asr r5
    6b50:	52080104 	andpl	r0, r8, #4, 2
    6b54:	0f000000 	svceq	0x00000000
    6b58:	0003ff04 	andeq	pc, r3, r4, lsl #30
    6b5c:	00301300 	eorseq	r1, r0, r0, lsl #6
    6b60:	05860000 	streq	r0, [r6]
    6b64:	1d140000 	ldcne	0, cr0, [r4, #-0]
    6b68:	14000004 	strne	r0, [r0], #-4
    6b6c:	00000110 	andeq	r0, r0, r0, lsl r1
    6b70:	00058614 	andeq	r8, r5, r4, lsl r6
    6b74:	00301400 	eorseq	r1, r0, r0, lsl #8
    6b78:	0f000000 	svceq	0x00000000
    6b7c:	00058c04 	andeq	r8, r5, r4, lsl #24
    6b80:	055b1800 	ldrbeq	r1, [fp, #-2048]	; 0x800
    6b84:	040f0000 	streq	r0, [pc], #-0	; 6b8c <_stacks_size+0x646c>
    6b88:	00000568 	andeq	r0, r0, r8, ror #10
    6b8c:	00008c13 	andeq	r8, r0, r3, lsl ip
    6b90:	0005b500 	andeq	fp, r5, r0, lsl #10
    6b94:	041d1400 	ldreq	r1, [sp], #-1024	; 0x400
    6b98:	10140000 	andsne	r0, r4, r0
    6b9c:	14000001 	strne	r0, [r0], #-1
    6ba0:	0000008c 	andeq	r0, r0, ip, lsl #1
    6ba4:	00003014 	andeq	r3, r0, r4, lsl r0
    6ba8:	040f0000 	streq	r0, [pc], #-0	; 6bb0 <_stacks_size+0x6490>
    6bac:	00000597 	muleq	r0, r7, r5
    6bb0:	00003013 	andeq	r3, r0, r3, lsl r0
    6bb4:	0005cf00 	andeq	ip, r5, r0, lsl #30
    6bb8:	041d1400 	ldreq	r1, [sp], #-1024	; 0x400
    6bbc:	10140000 	andsne	r0, r4, r0
    6bc0:	00000001 	andeq	r0, r0, r1
    6bc4:	05bb040f 	ldreq	r0, [fp, #1039]!	; 0x40f
    6bc8:	45080000 	strmi	r0, [r8, #-0]
    6bcc:	e5000000 	str	r0, [r0, #-0]
    6bd0:	09000005 	stmdbeq	r0, {r0, r2}
    6bd4:	000000d2 	ldrdeq	r0, [r0], -r2
    6bd8:	45080002 	strmi	r0, [r8, #-2]
    6bdc:	f5000000 			; <UNDEFINED> instruction: 0xf5000000
    6be0:	09000005 	stmdbeq	r0, {r0, r2}
    6be4:	000000d2 	ldrdeq	r0, [r0], -r2
    6be8:	71050000 	mrsvc	r0, (UNDEF: 5)
    6bec:	0500000d 	streq	r0, [r0, #-13]
    6bf0:	02d5011d 	sbcseq	r0, r5, #1073741831	; 0x40000007
    6bf4:	05190000 	ldreq	r0, [r9, #-0]
    6bf8:	0c000013 	stceq	0, cr0, [r0], {19}
    6bfc:	36012105 	strcc	r2, [r1], -r5, lsl #2
    6c00:	16000006 	strne	r0, [r0], -r6
    6c04:	00001014 	andeq	r1, r0, r4, lsl r0
    6c08:	36012305 	strcc	r2, [r1], -r5, lsl #6
    6c0c:	00000006 	andeq	r0, r0, r6
    6c10:	000d6a16 	andeq	r6, sp, r6, lsl sl
    6c14:	01240500 	teqeq	r4, r0, lsl #10
    6c18:	00000030 	andeq	r0, r0, r0, lsr r0
    6c1c:	0dcb1604 	stcleq	6, cr1, [fp, #16]
    6c20:	25050000 	strcs	r0, [r5, #-0]
    6c24:	00063c01 	andeq	r3, r6, r1, lsl #24
    6c28:	0f000800 	svceq	0x00000800
    6c2c:	00060104 	andeq	r0, r6, r4, lsl #2
    6c30:	f5040f00 			; <UNDEFINED> instruction: 0xf5040f00
    6c34:	19000005 	stmdbne	r0, {r0, r2}
    6c38:	00000faa 	andeq	r0, r0, sl, lsr #31
    6c3c:	013d050e 	teqeq	sp, lr, lsl #10
    6c40:	00000677 	andeq	r0, r0, r7, ror r6
    6c44:	000fa416 	andeq	sl, pc, r6, lsl r4	; <UNPREDICTABLE>
    6c48:	013e0500 	teqeq	lr, r0, lsl #10
    6c4c:	00000677 	andeq	r0, r0, r7, ror r6
    6c50:	0dd11600 	ldcleq	6, cr1, [r1]
    6c54:	3f050000 	svccc	0x00050000
    6c58:	00067701 	andeq	r7, r6, r1, lsl #14
    6c5c:	db160600 	blle	588464 <_ram_limit+0x170464>
    6c60:	0500000f 	streq	r0, [r0, #-15]
    6c64:	00530140 	subseq	r0, r3, r0, asr #2
    6c68:	000c0000 	andeq	r0, ip, r0
    6c6c:	00005308 	andeq	r5, r0, r8, lsl #6
    6c70:	00068700 	andeq	r8, r6, r0, lsl #14
    6c74:	00d20900 	sbcseq	r0, r2, r0, lsl #18
    6c78:	00020000 	andeq	r0, r2, r0
    6c7c:	5805d01a 	stmdapl	r5, {r1, r3, r4, ip, lr, pc}
    6c80:	00078802 	andeq	r8, r7, r2, lsl #16
    6c84:	0f0c1600 	svceq	0x000c1600
    6c88:	5a050000 	bpl	146c90 <_stacks_size+0x146570>
    6c8c:	00003702 	andeq	r3, r0, r2, lsl #14
    6c90:	97160000 	ldrls	r0, [r6, -r0]
    6c94:	0500000f 	streq	r0, [r0, #-15]
    6c98:	0555025b 	ldrbeq	r0, [r5, #-603]	; 0x25b
    6c9c:	16040000 	strne	r0, [r4], -r0
    6ca0:	00001046 	andeq	r1, r0, r6, asr #32
    6ca4:	88025c05 	stmdahi	r2, {r0, r2, sl, fp, ip, lr}
    6ca8:	08000007 	stmdaeq	r0, {r0, r1, r2}
    6cac:	000cb416 	andeq	fp, ip, r6, lsl r4
    6cb0:	025d0500 	subseq	r0, sp, #0, 10
    6cb4:	00000186 	andeq	r0, r0, r6, lsl #3
    6cb8:	0efd1624 	cdpeq	6, 15, cr1, cr13, cr4, {1}
    6cbc:	5e050000 	cdppl	0, 0, cr0, cr5, cr0, {0}
    6cc0:	00003002 	andeq	r3, r0, r2
    6cc4:	0f164800 	svceq	0x00164800
    6cc8:	05000010 	streq	r0, [r0, #-16]
    6ccc:	006f025f 	rsbeq	r0, pc, pc, asr r2	; <UNPREDICTABLE>
    6cd0:	16500000 	ldrbne	r0, [r0], -r0
    6cd4:	00000d2a 	andeq	r0, r0, sl, lsr #26
    6cd8:	42026005 	andmi	r6, r2, #5
    6cdc:	58000006 	stmdapl	r0, {r1, r2}
    6ce0:	000c4416 	andeq	r4, ip, r6, lsl r4
    6ce4:	02610500 	rsbeq	r0, r1, #0, 10
    6ce8:	000000fa 	strdeq	r0, [r0], -sl
    6cec:	0f2b1668 	svceq	0x002b1668
    6cf0:	62050000 	andvs	r0, r5, #0
    6cf4:	0000fa02 	andeq	pc, r0, r2, lsl #20
    6cf8:	ea167000 	b	5a2d00 <_ram_limit+0x18ad00>
    6cfc:	0500000f 	streq	r0, [r0, #-15]
    6d00:	00fa0263 	rscseq	r0, sl, r3, ror #4
    6d04:	16780000 	ldrbtne	r0, [r8], -r0
    6d08:	00000c51 	andeq	r0, r0, r1, asr ip
    6d0c:	98026405 	stmdals	r2, {r0, r2, sl, sp, lr}
    6d10:	80000007 	andhi	r0, r0, r7
    6d14:	000c9016 	andeq	r9, ip, r6, lsl r0
    6d18:	02650500 	rsbeq	r0, r5, #0, 10
    6d1c:	000007a8 	andeq	r0, r0, r8, lsr #15
    6d20:	0d781688 	ldcleq	6, cr1, [r8, #-544]!	; 0xfffffde0
    6d24:	66050000 	strvs	r0, [r5], -r0
    6d28:	00003002 	andeq	r3, r0, r2
    6d2c:	4016a000 	andsmi	sl, r6, r0
    6d30:	0500000f 	streq	r0, [r0, #-15]
    6d34:	00fa0267 	rscseq	r0, sl, r7, ror #4
    6d38:	16a40000 	strtne	r0, [r4], r0
    6d3c:	00000e83 	andeq	r0, r0, r3, lsl #29
    6d40:	fa026805 	blx	a0d5c <_stacks_size+0xa063c>
    6d44:	ac000000 	stcge	0, cr0, [r0], {-0}
    6d48:	000d1916 	andeq	r1, sp, r6, lsl r9
    6d4c:	02690500 	rsbeq	r0, r9, #0, 10
    6d50:	000000fa 	strdeq	r0, [r0], -sl
    6d54:	103116b4 	ldrhtne	r1, [r1], -r4
    6d58:	6a050000 	bvs	146d60 <_stacks_size+0x146640>
    6d5c:	0000fa02 	andeq	pc, r0, r2, lsl #20
    6d60:	9c16bc00 	ldcls	12, cr11, [r6], {-0}
    6d64:	0500000c 	streq	r0, [r0, #-12]
    6d68:	00fa026b 	rscseq	r0, sl, fp, ror #4
    6d6c:	16c40000 	strbne	r0, [r4], r0
    6d70:	00000e64 	andeq	r0, r0, r4, ror #28
    6d74:	30026c05 	andcc	r6, r2, r5, lsl #24
    6d78:	cc000000 	stcgt	0, cr0, [r0], {-0}
    6d7c:	055b0800 	ldrbeq	r0, [fp, #-2048]	; 0x800
    6d80:	07980000 	ldreq	r0, [r8, r0]
    6d84:	d2090000 	andle	r0, r9, #0
    6d88:	19000000 	stmdbne	r0, {}	; <UNPREDICTABLE>
    6d8c:	055b0800 	ldrbeq	r0, [fp, #-2048]	; 0x800
    6d90:	07a80000 	streq	r0, [r8, r0]!
    6d94:	d2090000 	andle	r0, r9, #0
    6d98:	07000000 	streq	r0, [r0, -r0]
    6d9c:	055b0800 	ldrbeq	r0, [fp, #-2048]	; 0x800
    6da0:	07b80000 	ldreq	r0, [r8, r0]!
    6da4:	d2090000 	andle	r0, r9, #0
    6da8:	17000000 	strne	r0, [r0, -r0]
    6dac:	05f01a00 	ldrbeq	r1, [r0, #2560]!	; 0xa00
    6db0:	07dc0271 			; <UNDEFINED> instruction: 0x07dc0271
    6db4:	25160000 	ldrcs	r0, [r6, #-0]
    6db8:	0500000e 	streq	r0, [r0, #-14]
    6dbc:	07dc0274 			; <UNDEFINED> instruction: 0x07dc0274
    6dc0:	16000000 	strne	r0, [r0], -r0
    6dc4:	00000d98 	muleq	r0, r8, sp
    6dc8:	ec027505 	cfstr32	mvfx7, [r2], {5}
    6dcc:	78000007 	stmdavc	r0, {r0, r1, r2}
    6dd0:	02cf0800 	sbceq	r0, pc, #0, 16
    6dd4:	07ec0000 	strbeq	r0, [ip, r0]!
    6dd8:	d2090000 	andle	r0, r9, #0
    6ddc:	1d000000 	stcne	0, cr0, [r0, #-0]
    6de0:	00370800 	eorseq	r0, r7, r0, lsl #16
    6de4:	07fc0000 	ldrbeq	r0, [ip, r0]!
    6de8:	d2090000 	andle	r0, r9, #0
    6dec:	1d000000 	stcne	0, cr0, [r0, #-0]
    6df0:	05f01b00 	ldrbeq	r1, [r0, #2816]!	; 0xb00
    6df4:	081e0256 	ldmdaeq	lr, {r1, r2, r4, r6, r9}
    6df8:	4c1c0000 	ldcmi	0, cr0, [ip], {-0}
    6dfc:	05000013 	streq	r0, [r0, #-19]
    6e00:	0687026d 	streq	r0, [r7], sp, ror #4
    6e04:	231c0000 	tstcs	ip, #0
    6e08:	0500000f 	streq	r0, [r0, #-15]
    6e0c:	07b80276 			; <UNDEFINED> instruction: 0x07b80276
    6e10:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    6e14:	0000055b 	andeq	r0, r0, fp, asr r5
    6e18:	0000082e 	andeq	r0, r0, lr, lsr #16
    6e1c:	0000d209 	andeq	sp, r0, r9, lsl #4
    6e20:	1d001800 	stcne	8, cr1, [r0, #-0]
    6e24:	00000839 	andeq	r0, r0, r9, lsr r8
    6e28:	00041d14 	andeq	r1, r4, r4, lsl sp
    6e2c:	040f0000 	streq	r0, [pc], #-0	; 6e34 <_stacks_size+0x6714>
    6e30:	0000082e 	andeq	r0, r0, lr, lsr #16
    6e34:	0170040f 	cmneq	r0, pc, lsl #8
    6e38:	501d0000 	andspl	r0, sp, r0
    6e3c:	14000008 	strne	r0, [r0], #-8
    6e40:	00000030 	andeq	r0, r0, r0, lsr r0
    6e44:	56040f00 	strpl	r0, [r4], -r0, lsl #30
    6e48:	0f000008 	svceq	0x00000008
    6e4c:	00084504 	andeq	r4, r8, r4, lsl #10
    6e50:	05f50800 	ldrbeq	r0, [r5, #2048]!	; 0x800
    6e54:	086c0000 	stmdaeq	ip!, {}^	; <UNPREDICTABLE>
    6e58:	d2090000 	andle	r0, r9, #0
    6e5c:	02000000 	andeq	r0, r0, #0
    6e60:	14e71e00 	strbtne	r1, [r7], #3584	; 0xe00
    6e64:	9a060000 	bls	186e6c <_stacks_size+0x18674c>
    6e68:	00000110 	andeq	r0, r0, r0, lsl r1
    6e6c:	00401c60 	subeq	r1, r0, r0, ror #24
    6e70:	00000044 	andeq	r0, r0, r4, asr #32
    6e74:	08d79c01 	ldmeq	r7, {r0, sl, fp, ip, pc}^
    6e78:	701f0000 	andsvc	r0, pc, r0
    6e7c:	01007274 	tsteq	r0, r4, ror r2
    6e80:	00041d32 	andeq	r1, r4, r2, lsr sp
    6e84:	00141300 	andseq	r1, r4, r0, lsl #6
    6e88:	164a2000 	strbne	r2, [sl], -r0
    6e8c:	32010000 	andcc	r0, r1, #0
    6e90:	00000025 	andeq	r0, r0, r5, lsr #32
    6e94:	00001458 	andeq	r1, r0, r8, asr r4
    6e98:	74657221 	strbtvc	r7, [r5], #-545	; 0x221
    6e9c:	55360100 	ldrpl	r0, [r6, #-256]!	; 0x100
    6ea0:	01000005 	tsteq	r0, r5
    6ea4:	16782250 			; <UNDEFINED> instruction: 0x16782250
    6ea8:	37010000 	strcc	r0, [r1, -r0]
    6eac:	00000110 	andeq	r0, r0, r0, lsl r1
    6eb0:	000008c5 	andeq	r0, r0, r5, asr #17
    6eb4:	00002514 	andeq	r2, r0, r4, lsl r5
    6eb8:	7c230000 	stcvc	0, cr0, [r3], #-0
    6ebc:	e200401c 	and	r4, r0, #28
    6ec0:	24000008 	strcs	r0, [r0], #-8
    6ec4:	f3035001 	vhadd.u8	d5, d3, d1
    6ec8:	00005101 	andeq	r5, r0, r1, lsl #2
    6ecc:	000ee125 	andeq	lr, lr, r5, lsr #2
    6ed0:	30180100 	andscc	r0, r8, r0, lsl #2
    6ed4:	26000000 	strcs	r0, [r0], -r0
    6ed8:	00001678 	andeq	r1, r0, r8, ror r6
    6edc:	01103701 	tsteq	r0, r1, lsl #14
    6ee0:	25140000 	ldrcs	r0, [r4, #-0]
    6ee4:	00000000 	andeq	r0, r0, r0
    6ee8:	00041800 	andeq	r1, r4, r0, lsl #16
    6eec:	09000400 	stmdbeq	r0, {sl}
    6ef0:	04000019 	streq	r0, [r0], #-25
    6ef4:	00008501 	andeq	r8, r0, r1, lsl #10
    6ef8:	167e0100 	ldrbtne	r0, [lr], -r0, lsl #2
    6efc:	02430000 	subeq	r0, r3, #0
    6f00:	0d040000 	stceq	0, cr0, [r4, #-0]
    6f04:	01c00040 	biceq	r0, r0, r0, asr #32
    6f08:	152a0000 	strne	r0, [sl, #-0]!
    6f0c:	01020000 	mrseq	r0, (UNDEF: 2)
    6f10:	00004b06 	andeq	r4, r0, r6, lsl #22
    6f14:	08010200 	stmdaeq	r1, {r9}
    6f18:	00000049 	andeq	r0, r0, r9, asr #32
    6f1c:	9b050202 	blls	14772c <_stacks_size+0x14700c>
    6f20:	02000001 	andeq	r0, r0, #1
    6f24:	00720702 	rsbseq	r0, r2, r2, lsl #14
    6f28:	04020000 	streq	r0, [r2], #-0
    6f2c:	00017505 	andeq	r7, r1, r5, lsl #10
    6f30:	07040200 	streq	r0, [r4, -r0, lsl #4]
    6f34:	00000031 	andeq	r0, r0, r1, lsr r0
    6f38:	70050802 	andvc	r0, r5, r2, lsl #16
    6f3c:	02000001 	andeq	r0, r0, #1
    6f40:	002c0708 	eoreq	r0, ip, r8, lsl #14
    6f44:	a9030000 	stmdbge	r3, {}	; <UNPREDICTABLE>
    6f48:	02000016 	andeq	r0, r0, #22
    6f4c:	000068c8 	andeq	r6, r0, r8, asr #17
    6f50:	05040400 	streq	r0, [r4, #-1024]	; 0x400
    6f54:	00746e69 	rsbseq	r6, r4, r9, ror #28
    6f58:	36070402 	strcc	r0, [r7], -r2, lsl #8
    6f5c:	03000000 	movweq	r0, #0
    6f60:	000002ae 	andeq	r0, r0, lr, lsr #5
    6f64:	00411003 	subeq	r1, r1, r3
    6f68:	c8030000 	stmdagt	r3, {}	; <UNPREDICTABLE>
    6f6c:	03000003 	movweq	r0, #3
    6f70:	00003314 	andeq	r3, r0, r4, lsl r3
    6f74:	03f90300 	mvnseq	r0, #0, 6
    6f78:	18030000 	stmdane	r3, {}	; <UNPREDICTABLE>
    6f7c:	0000003a 	andeq	r0, r0, sl, lsr r0
    6f80:	00040903 	andeq	r0, r4, r3, lsl #18
    6f84:	3a1b0300 	bcc	6c7b8c <_ram_limit+0x2afb8c>
    6f88:	03000000 	movweq	r0, #0
    6f8c:	00000411 	andeq	r0, r0, r1, lsl r4
    6f90:	00683703 	rsbeq	r3, r8, r3, lsl #14
    6f94:	04020000 	streq	r0, [r2], #-0
    6f98:	00016707 	andeq	r6, r1, r7, lsl #14
    6f9c:	03040500 	movweq	r0, #17664	; 0x4500
    6fa0:	00000413 	andeq	r0, r0, r3, lsl r4
    6fa4:	006fd404 	rsbeq	sp, pc, r4, lsl #8
    6fa8:	e5030000 	str	r0, [r3, #-0]
    6fac:	05000002 	streq	r0, [r0, #-2]
    6fb0:	0000417a 	andeq	r4, r0, sl, ror r1
    6fb4:	d2040600 	andle	r0, r4, #0, 12
    6fb8:	02000000 	andeq	r0, r0, #0
    6fbc:	00520801 	subseq	r0, r2, r1, lsl #16
    6fc0:	fe030000 	cdp2	0, 0, cr0, cr3, cr0, {0}
    6fc4:	05000002 	streq	r0, [r0, #-2]
    6fc8:	00003a9b 	muleq	r0, fp, sl
    6fcc:	02af0300 	adceq	r0, pc, #0, 6
    6fd0:	b8050000 	stmdalt	r5, {}	; <UNPREDICTABLE>
    6fd4:	00000076 	andeq	r0, r0, r6, ror r0
    6fd8:	0003ca03 	andeq	ip, r3, r3, lsl #20
    6fdc:	81b90500 			; <UNDEFINED> instruction: 0x81b90500
    6fe0:	03000000 	movweq	r0, #0
    6fe4:	000003fb 	strdeq	r0, [r0], -fp
    6fe8:	008cba05 	addeq	fp, ip, r5, lsl #20
    6fec:	0b030000 	bleq	c6ff4 <_stacks_size+0xc68d4>
    6ff0:	05000004 	streq	r0, [r0, #-4]
    6ff4:	000097bb 			; <UNDEFINED> instruction: 0x000097bb
    6ff8:	04120300 	ldreq	r0, [r2], #-768	; 0x300
    6ffc:	cb050000 	blgt	147004 <_stacks_size+0x1468e4>
    7000:	000000a2 	andeq	r0, r0, r2, lsr #1
    7004:	0002a703 	andeq	sl, r2, r3, lsl #14
    7008:	6fd90500 	svcvs	0x00d90500
    700c:	03000000 	movweq	r0, #0
    7010:	0000036f 	andeq	r0, r0, pc, ror #6
    7014:	003ade05 	eorseq	sp, sl, r5, lsl #28
    7018:	04060000 	streq	r0, [r6], #-0
    701c:	00000137 	andeq	r0, r0, r7, lsr r1
    7020:	0000d207 	andeq	sp, r0, r7, lsl #4
    7024:	16ab0300 	strtne	r0, [fp], r0, lsl #6
    7028:	be060000 	cdplt	0, 0, cr0, cr6, cr0, {0}
    702c:	0000005d 	andeq	r0, r0, sp, asr r0
    7030:	0016a408 	andseq	sl, r6, r8, lsl #8
    7034:	1a073c00 	bne	1d603c <_stacks_size+0x1d591c>
    7038:	00000220 	andeq	r0, r0, r0, lsr #4
    703c:	0002c309 	andeq	ip, r2, r9, lsl #6
    7040:	ef1c0700 	svc	0x001c0700
    7044:	00000000 	andeq	r0, r0, r0
    7048:	00033509 	andeq	r3, r3, r9, lsl #10
    704c:	d91d0700 	ldmdble	sp, {r8, r9, sl}
    7050:	02000000 	andeq	r0, r0, #0
    7054:	00040109 	andeq	r0, r4, r9, lsl #2
    7058:	1b1e0700 	blne	788c60 <_ram_limit+0x370c60>
    705c:	04000001 	streq	r0, [r0], #-1
    7060:	0002ca09 	andeq	ip, r2, r9, lsl #20
    7064:	261f0700 	ldrcs	r0, [pc], -r0, lsl #14
    7068:	08000001 	stmdaeq	r0, {r0}
    706c:	00035e09 	andeq	r5, r3, r9, lsl #28
    7070:	fa200700 	blx	808c78 <_ram_limit+0x3f0c78>
    7074:	0a000000 	beq	707c <_stacks_size+0x695c>
    7078:	0002f709 	andeq	pc, r2, r9, lsl #14
    707c:	05210700 	streq	r0, [r1, #-1792]!	; 0x700
    7080:	0c000001 	stceq	0, cr0, [r0], {1}
    7084:	0002d309 	andeq	sp, r2, r9, lsl #6
    7088:	ef220700 	svc	0x00220700
    708c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    7090:	00037e09 	andeq	r7, r3, r9, lsl #28
    7094:	e4230700 	strt	r0, [r3], #-1792	; 0x700
    7098:	10000000 	andne	r0, r0, r0
    709c:	00030d09 	andeq	r0, r3, r9, lsl #26
    70a0:	c1310700 	teqgt	r1, r0, lsl #14
    70a4:	14000000 	strne	r0, [r0], #-0
    70a8:	00032b09 	andeq	r2, r3, r9, lsl #22
    70ac:	41320700 	teqmi	r2, r0, lsl #14
    70b0:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    70b4:	00035509 	andeq	r5, r3, r9, lsl #10
    70b8:	c1330700 	teqgt	r3, r0, lsl #14
    70bc:	1c000000 	stcne	0, cr0, [r0], {-0}
    70c0:	00038f09 	andeq	r8, r3, r9, lsl #30
    70c4:	41340700 	teqmi	r4, r0, lsl #14
    70c8:	20000000 	andcs	r0, r0, r0
    70cc:	0002ba09 	andeq	fp, r2, r9, lsl #20
    70d0:	c1350700 	teqgt	r5, r0, lsl #14
    70d4:	24000000 	strcs	r0, [r0], #-0
    70d8:	00039909 	andeq	r9, r3, r9, lsl #18
    70dc:	41360700 	teqmi	r6, r0, lsl #14
    70e0:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    70e4:	0002ec09 	andeq	lr, r2, r9, lsl #24
    70e8:	41370700 	teqmi	r7, r0, lsl #14
    70ec:	2c000000 	stccs	0, cr0, [r0], {-0}
    70f0:	00036509 	andeq	r6, r3, r9, lsl #10
    70f4:	41380700 	teqmi	r8, r0, lsl #14
    70f8:	30000000 	andcc	r0, r0, r0
    70fc:	0003a309 	andeq	sl, r3, r9, lsl #6
    7100:	20390700 	eorscs	r0, r9, r0, lsl #14
    7104:	34000002 	strcc	r0, [r0], #-2
    7108:	00410a00 	subeq	r0, r1, r0, lsl #20
    710c:	02300000 	eorseq	r0, r0, #0
    7110:	ad0b0000 	stcge	0, cr0, [fp, #-0]
    7114:	01000000 	mrseq	r0, (UNDEF: 0)
    7118:	47040600 	strmi	r0, [r4, -r0, lsl #12]
    711c:	0c000001 	stceq	0, cr0, [r0], {1}
    7120:	00001678 	andeq	r1, r0, r8, ror r6
    7124:	00b41d01 	adcseq	r1, r4, r1, lsl #26
    7128:	0d040000 	stceq	0, cr0, [r4, #-0]
    712c:	00a00040 	adceq	r0, r0, r0, asr #32
    7130:	9c010000 	stcls	0, cr0, [r1], {-0}
    7134:	0000027d 	andeq	r0, r0, sp, ror r2
    7138:	00164a0d 	andseq	r4, r6, sp, lsl #20
    713c:	3c1d0100 	ldfccs	f0, [sp], {-0}
    7140:	02000001 	andeq	r0, r0, #1
    7144:	940e6c91 	strls	r6, [lr], #-3217	; 0xc91
    7148:	01000016 	tsteq	r0, r6, lsl r0
    714c:	0000b41f 	andeq	fp, r0, pc, lsl r4
    7150:	84030500 	strhi	r0, [r3], #-1280	; 0x500
    7154:	0e00401e 	mcreq	0, 0, r4, cr0, cr14, {0}
    7158:	000016b4 			; <UNDEFINED> instruction: 0x000016b4
    715c:	00b42001 	adcseq	r2, r4, r1
    7160:	91020000 	mrsls	r0, (UNDEF: 2)
    7164:	f00f0074 			; <UNDEFINED> instruction: 0xf00f0074
    7168:	01000012 	tsteq	r0, r2, lsl r0
    716c:	00006846 	andeq	r6, r0, r6, asr #16
    7170:	400da400 	andmi	sl, sp, r0, lsl #8
    7174:	00002c00 	andeq	r2, r0, r0, lsl #24
    7178:	c19c0100 	orrsgt	r0, ip, r0, lsl #2
    717c:	0d000002 	stceq	0, cr0, [r0, #-8]
    7180:	00000386 	andeq	r0, r0, r6, lsl #7
    7184:	01314601 	teqeq	r1, r1, lsl #12
    7188:	91020000 	mrsls	r0, (UNDEF: 2)
    718c:	03c20d74 	biceq	r0, r2, #116, 26	; 0x1d00
    7190:	46010000 	strmi	r0, [r1], -r0
    7194:	00000068 	andeq	r0, r0, r8, rrx
    7198:	0d709102 	ldfeqp	f1, [r0, #-8]!
    719c:	00000404 	andeq	r0, r0, r4, lsl #8
    71a0:	011b4601 	tsteq	fp, r1, lsl #12
    71a4:	91020000 	mrsls	r0, (UNDEF: 2)
    71a8:	fc0f006c 	stc2	0, cr0, [pc], {108}	; 0x6c
    71ac:	0100000d 	tsteq	r0, sp
    71b0:	00006855 	andeq	r6, r0, r5, asr r8
    71b4:	400dd000 	andmi	sp, sp, r0
    71b8:	00002400 	andeq	r2, r0, r0, lsl #8
    71bc:	e89c0100 	ldm	ip, {r8}
    71c0:	10000002 	andne	r0, r0, r2
    71c4:	01006466 	tsteq	r0, r6, ror #8
    71c8:	00006855 	andeq	r6, r0, r5, asr r8
    71cc:	74910200 	ldrvc	r0, [r1], #512	; 0x200
    71d0:	0e1f0f00 	cdpeq	15, 1, cr0, cr15, cr0, {0}
    71d4:	65010000 	strvs	r0, [r1, #-0]
    71d8:	00000110 	andeq	r0, r0, r0, lsl r1
    71dc:	00400df4 	strdeq	r0, [r0], #-212	; 0xffffff2c
    71e0:	0000002c 	andeq	r0, r0, ip, lsr #32
    71e4:	032b9c01 	teqeq	fp, #256	; 0x100
    71e8:	66100000 	ldrvs	r0, [r0], -r0
    71ec:	65010064 	strvs	r0, [r1, #-100]	; 0x64
    71f0:	00000068 	andeq	r0, r0, r8, rrx
    71f4:	10749102 	rsbsne	r9, r4, r2, lsl #2
    71f8:	00667562 	rsbeq	r7, r6, r2, ror #10
    71fc:	00cc6501 	sbceq	r6, ip, r1, lsl #10
    7200:	91020000 	mrsls	r0, (UNDEF: 2)
    7204:	0d090d70 	stceq	13, cr0, [r9, #-448]	; 0xfffffe40
    7208:	65010000 	strvs	r0, [r1, #-0]
    720c:	000000b6 	strheq	r0, [r0], -r6
    7210:	006c9102 	rsbeq	r9, ip, r2, lsl #2
    7214:	000cad0f 	andeq	sl, ip, pc, lsl #26
    7218:	10750100 	rsbsne	r0, r5, r0, lsl #2
    721c:	20000001 	andcs	r0, r0, r1
    7220:	2c00400e 	stccs	0, cr4, [r0], {14}
    7224:	01000000 	mrseq	r0, (UNDEF: 0)
    7228:	00036e9c 	muleq	r3, ip, lr
    722c:	64661000 	strbtvs	r1, [r6], #-0
    7230:	68750100 	ldmdavs	r5!, {r8}^
    7234:	02000000 	andeq	r0, r0, #0
    7238:	62107491 	andsvs	r7, r0, #-1862270976	; 0x91000000
    723c:	01006675 	tsteq	r0, r5, ror r6
    7240:	0000cc75 	andeq	ip, r0, r5, ror ip
    7244:	70910200 	addsvc	r0, r1, r0, lsl #4
    7248:	000d090d 	andeq	r0, sp, sp, lsl #18
    724c:	b6750100 	ldrbtlt	r0, [r5], -r0, lsl #2
    7250:	02000000 	andeq	r0, r0, #0
    7254:	0f006c91 	svceq	0x00006c91
    7258:	0000168d 	andeq	r1, r0, sp, lsl #13
    725c:	00e48501 	rsceq	r8, r4, r1, lsl #10
    7260:	0e4c0000 	cdpeq	0, 4, cr0, cr12, cr0, {0}
    7264:	002c0040 	eoreq	r0, ip, r0, asr #32
    7268:	9c010000 	stcls	0, cr0, [r1], {-0}
    726c:	000003b1 			; <UNDEFINED> instruction: 0x000003b1
    7270:	00646610 	rsbeq	r6, r4, r0, lsl r6
    7274:	00688501 	rsbeq	r8, r8, r1, lsl #10
    7278:	91020000 	mrsls	r0, (UNDEF: 2)
    727c:	0c3d0d74 	ldceq	13, cr0, [sp], #-464	; 0xfffffe30
    7280:	85010000 	strhi	r0, [r1, #-0]
    7284:	000000e4 	andeq	r0, r0, r4, ror #1
    7288:	0d709102 	ldfeqp	f1, [r0, #-8]!
    728c:	000016dd 	ldrdeq	r1, [r0], -sp
    7290:	00688501 	rsbeq	r8, r8, r1, lsl #10
    7294:	91020000 	mrsls	r0, (UNDEF: 2)
    7298:	a20f006c 	andge	r0, pc, #108	; 0x6c
    729c:	01000016 	tsteq	r0, r6, lsl r0
    72a0:	00006894 	muleq	r0, r4, r8
    72a4:	400e7800 	andmi	r7, lr, r0, lsl #16
    72a8:	00002800 	andeq	r2, r0, r0, lsl #16
    72ac:	e69c0100 	ldr	r0, [ip], r0, lsl #2
    72b0:	10000003 	andne	r0, r0, r3
    72b4:	01006466 	tsteq	r0, r6, ror #8
    72b8:	00006894 	muleq	r0, r4, r8
    72bc:	74910200 	ldrvc	r0, [r1], #512	; 0x200
    72c0:	66756210 			; <UNDEFINED> instruction: 0x66756210
    72c4:	30940100 	addscc	r0, r4, r0, lsl #2
    72c8:	02000002 	andeq	r0, r0, #2
    72cc:	0f007091 	svceq	0x00007091
    72d0:	000016bf 			; <UNDEFINED> instruction: 0x000016bf
    72d4:	0068a201 	rsbeq	sl, r8, r1, lsl #4
    72d8:	0ea00000 	cdpeq	0, 10, cr0, cr0, cr0, {0}
    72dc:	00240040 	eoreq	r0, r4, r0, asr #32
    72e0:	9c010000 	stcls	0, cr0, [r1], {-0}
    72e4:	0000040d 	andeq	r0, r0, sp, lsl #8
    72e8:	00646610 	rsbeq	r6, r4, r0, lsl r6
    72ec:	0068a201 	rsbeq	sl, r8, r1, lsl #4
    72f0:	91020000 	mrsls	r0, (UNDEF: 2)
    72f4:	c7110074 			; <UNDEFINED> instruction: 0xc7110074
    72f8:	01000016 	tsteq	r0, r6, lsl r0
    72fc:	16d31111 			; <UNDEFINED> instruction: 0x16d31111
    7300:	11010000 	mrsne	r0, (UNDEF: 1)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
       0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
       4:	030b130e 	movweq	r1, #45838	; 0xb30e
       8:	110e1b0e 	tstne	lr, lr, lsl #22
       c:	10061201 	andne	r1, r6, r1, lsl #4
      10:	02000017 	andeq	r0, r0, #23
      14:	0b0b0024 	bleq	2c00ac <_stacks_size+0x2bf98c>
      18:	0e030b3e 	vmoveq.16	d3[0], r0
      1c:	16030000 	strne	r0, [r3], -r0
      20:	3a0e0300 	bcc	380c28 <_stacks_size+0x380508>
      24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
      28:	04000013 	streq	r0, [r0], #-19
      2c:	0b0b0024 	bleq	2c00c4 <_stacks_size+0x2bf9a4>
      30:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
      34:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
      38:	03193f00 	tsteq	r9, #0, 30
      3c:	3b0b3a0e 	blcc	2ce87c <_stacks_size+0x2ce15c>
      40:	1119270b 	tstne	r9, fp, lsl #14
      44:	40061201 	andmi	r1, r6, r1, lsl #4
      48:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
      4c:	2e060000 	cdpcs	0, 0, cr0, cr6, cr0, {0}
      50:	03193f01 	tsteq	r9, #1, 30
      54:	3b0b3a0e 	blcc	2ce894 <_stacks_size+0x2ce174>
      58:	1119270b 	tstne	r9, fp, lsl #14
      5c:	40061201 	andmi	r1, r6, r1, lsl #4
      60:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
      64:	00001301 	andeq	r1, r0, r1, lsl #6
      68:	03000507 	movweq	r0, #1287	; 0x507
      6c:	3b0b3a0e 	blcc	2ce8ac <_stacks_size+0x2ce18c>
      70:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
      74:	08000018 	stmdaeq	r0, {r3, r4}
      78:	08030034 	stmdaeq	r3, {r2, r4, r5}
      7c:	0b3b0b3a 	bleq	ec2d6c <_ram_limit+0xaaad6c>
      80:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
      84:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
      88:	03193f00 	tsteq	r9, #0, 30
      8c:	3b0b3a0e 	blcc	2ce8cc <_stacks_size+0x2ce1ac>
      90:	1201110b 	andne	r1, r1, #-1073741822	; 0xc0000002
      94:	97184006 	ldrls	r4, [r8, -r6]
      98:	00001942 	andeq	r1, r0, r2, asr #18
      9c:	3f002e0a 	svccc	0x00002e0a
      a0:	3a0e0319 	bcc	380d0c <_stacks_size+0x3805ec>
      a4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
      a8:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
      ac:	96184006 	ldrls	r4, [r8], -r6
      b0:	00001942 	andeq	r1, r0, r2, asr #18
      b4:	0300340b 	movweq	r3, #1035	; 0x40b
      b8:	3b0b3a0e 	blcc	2ce8f8 <_stacks_size+0x2ce1d8>
      bc:	3f13490b 	svccc	0x0013490b
      c0:	00180219 	andseq	r0, r8, r9, lsl r2
      c4:	00260c00 	eoreq	r0, r6, r0, lsl #24
      c8:	00001349 	andeq	r1, r0, r9, asr #6
      cc:	0b000f0d 	bleq	3d08 <_stacks_size+0x35e8>
      d0:	0013490b 	andseq	r4, r3, fp, lsl #18
      d4:	00350e00 	eorseq	r0, r5, r0, lsl #28
      d8:	00001349 	andeq	r1, r0, r9, asr #6
      dc:	01110100 	tsteq	r1, r0, lsl #2
      e0:	0b130e25 	bleq	4c397c <_ram_limit+0xab97c>
      e4:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
      e8:	06120111 			; <UNDEFINED> instruction: 0x06120111
      ec:	00001710 	andeq	r1, r0, r0, lsl r7
      f0:	0b002402 	bleq	9100 <_stacks_size+0x89e0>
      f4:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
      f8:	0300000e 	movweq	r0, #14
      fc:	0b0b0024 	bleq	2c0194 <_stacks_size+0x2bfa74>
     100:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     104:	0f040000 	svceq	0x00040000
     108:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
     10c:	05000013 	streq	r0, [r0, #-19]
     110:	13490026 	movtne	r0, #36902	; 0x9026
     114:	04060000 	streq	r0, [r6], #-0
     118:	3a0b0b01 	bcc	2c2d24 <_stacks_size+0x2c2604>
     11c:	010b3b0b 	tsteq	fp, fp, lsl #22
     120:	07000013 	smladeq	r0, r3, r0, r0
     124:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
     128:	00000d1c 	andeq	r0, r0, ip, lsl sp
     12c:	03002e08 	movweq	r2, #3592	; 0xe08
     130:	3b0b3a0e 	blcc	2ce970 <_stacks_size+0x2ce250>
     134:	1119270b 	tstne	r9, fp, lsl #14
     138:	40061201 	andmi	r1, r6, r1, lsl #4
     13c:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
     140:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
     144:	3a0e0301 	bcc	380d50 <_stacks_size+0x380630>
     148:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     14c:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
     150:	96184006 	ldrls	r4, [r8], -r6
     154:	13011942 	movwne	r1, #6466	; 0x1942
     158:	050a0000 	streq	r0, [sl, #-0]
     15c:	3a0e0300 	bcc	380d64 <_stacks_size+0x380644>
     160:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     164:	00180213 	andseq	r0, r8, r3, lsl r2
     168:	002e0b00 	eoreq	r0, lr, r0, lsl #22
     16c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
     170:	0b3b0b3a 	bleq	ec2e60 <_ram_limit+0xaaae60>
     174:	01111927 	tsteq	r1, r7, lsr #18
     178:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     17c:	00194296 	mulseq	r9, r6, r2
     180:	11010000 	mrsne	r0, (UNDEF: 1)
     184:	130e2501 	movwne	r2, #58625	; 0xe501
     188:	1b0e030b 	blne	380dbc <_stacks_size+0x38069c>
     18c:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
     190:	00171006 	andseq	r1, r7, r6
     194:	00240200 	eoreq	r0, r4, r0, lsl #4
     198:	0b3e0b0b 	bleq	f82dcc <_ram_limit+0xb6adcc>
     19c:	00000e03 	andeq	r0, r0, r3, lsl #28
     1a0:	03001603 	movweq	r1, #1539	; 0x603
     1a4:	3b0b3a0e 	blcc	2ce9e4 <_stacks_size+0x2ce2c4>
     1a8:	0013490b 	andseq	r4, r3, fp, lsl #18
     1ac:	00240400 	eoreq	r0, r4, r0, lsl #8
     1b0:	0b3e0b0b 	bleq	f82de4 <_ram_limit+0xb6ade4>
     1b4:	00000803 	andeq	r0, r0, r3, lsl #16
     1b8:	0b000f05 	bleq	3dd4 <_stacks_size+0x36b4>
     1bc:	0013490b 	andseq	r4, r3, fp, lsl #18
     1c0:	00260600 	eoreq	r0, r6, r0, lsl #12
     1c4:	00001349 	andeq	r1, r0, r9, asr #6
     1c8:	03011307 	movweq	r1, #4871	; 0x1307
     1cc:	3a0b0b0e 	bcc	2c2e0c <_stacks_size+0x2c26ec>
     1d0:	010b3b0b 	tsteq	fp, fp, lsl #22
     1d4:	08000013 	stmdaeq	r0, {r0, r1, r4}
     1d8:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     1dc:	0b3b0b3a 	bleq	ec2ecc <_ram_limit+0xaaaecc>
     1e0:	0b381349 	bleq	e04f0c <_ram_limit+0x9ecf0c>
     1e4:	01090000 	mrseq	r0, (UNDEF: 9)
     1e8:	01134901 	tsteq	r3, r1, lsl #18
     1ec:	0a000013 	beq	240 <_fiq_stack_size+0x140>
     1f0:	13490021 	movtne	r0, #36897	; 0x9021
     1f4:	00000b2f 	andeq	r0, r0, pc, lsr #22
     1f8:	0b01130b 	bleq	44e2c <_stacks_size+0x4470c>
     1fc:	3b0b3a0b 	blcc	2cea30 <_stacks_size+0x2ce310>
     200:	0013010b 	andseq	r0, r3, fp, lsl #2
     204:	000d0c00 	andeq	r0, sp, r0, lsl #24
     208:	0b3a0803 	bleq	e8221c <_ram_limit+0xa6a21c>
     20c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     210:	00000b38 	andeq	r0, r0, r8, lsr fp
     214:	2701150d 	strcs	r1, [r1, -sp, lsl #10]
     218:	01134919 	tsteq	r3, r9, lsl r9
     21c:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
     220:	13490005 	movtne	r0, #36869	; 0x9005
     224:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
     228:	03193f01 	tsteq	r9, #1, 30
     22c:	3b0b3a0e 	blcc	2cea6c <_stacks_size+0x2ce34c>
     230:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
     234:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     238:	97184006 	ldrls	r4, [r8, -r6]
     23c:	13011942 	movwne	r1, #6466	; 0x1942
     240:	05100000 	ldreq	r0, [r0, #-0]
     244:	3a0e0300 	bcc	380e4c <_stacks_size+0x38072c>
     248:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     24c:	00180213 	andseq	r0, r8, r3, lsl r2
     250:	00051100 	andeq	r1, r5, r0, lsl #2
     254:	0b3a0803 	bleq	e82268 <_ram_limit+0xa6a268>
     258:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     25c:	00001802 	andeq	r1, r0, r2, lsl #16
     260:	03003412 	movweq	r3, #1042	; 0x412
     264:	3b0b3a0e 	blcc	2ceaa4 <_stacks_size+0x2ce384>
     268:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     26c:	13000018 	movwne	r0, #24
     270:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     274:	0b3a0e03 	bleq	e83a88 <_ram_limit+0xa6ba88>
     278:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
     27c:	01111349 	tsteq	r1, r9, asr #6
     280:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     284:	01194296 			; <UNDEFINED> instruction: 0x01194296
     288:	14000013 	strne	r0, [r0], #-19
     28c:	08030034 	stmdaeq	r3, {r2, r4, r5}
     290:	0b3b0b3a 	bleq	ec2f80 <_ram_limit+0xaaaf80>
     294:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     298:	2e150000 	cdpcs	0, 1, cr0, cr5, cr0, {0}
     29c:	03193f01 	tsteq	r9, #1, 30
     2a0:	3b0b3a0e 	blcc	2ceae0 <_stacks_size+0x2ce3c0>
     2a4:	1119270b 	tstne	r9, fp, lsl #14
     2a8:	40061201 	andmi	r1, r6, r1, lsl #4
     2ac:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     2b0:	00001301 	andeq	r1, r0, r1, lsl #6
     2b4:	3f012e16 	svccc	0x00012e16
     2b8:	3a0e0319 	bcc	380f24 <_stacks_size+0x380804>
     2bc:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     2c0:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
     2c4:	96184006 	ldrls	r4, [r8], -r6
     2c8:	13011942 	movwne	r1, #6466	; 0x1942
     2cc:	01000000 	mrseq	r0, (UNDEF: 0)
     2d0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
     2d4:	0e030b13 	vmoveq.32	d3[0], r0
     2d8:	01110e1b 	tsteq	r1, fp, lsl lr
     2dc:	17100612 			; <UNDEFINED> instruction: 0x17100612
     2e0:	24020000 	strcs	r0, [r2], #-0
     2e4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     2e8:	000e030b 	andeq	r0, lr, fp, lsl #6
     2ec:	00160300 	andseq	r0, r6, r0, lsl #6
     2f0:	0b3a0e03 	bleq	e83b04 <_ram_limit+0xa6bb04>
     2f4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     2f8:	24040000 	strcs	r0, [r4], #-0
     2fc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     300:	0008030b 	andeq	r0, r8, fp, lsl #6
     304:	01040500 	tsteq	r4, r0, lsl #10
     308:	0b3a0b0b 	bleq	e82f3c <_ram_limit+0xa6af3c>
     30c:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     310:	28060000 	stmdacs	r6, {}	; <UNPREDICTABLE>
     314:	1c0e0300 	stcne	3, cr0, [lr], {-0}
     318:	0700000d 	streq	r0, [r0, -sp]
     31c:	0b0b000f 	bleq	2c0360 <_stacks_size+0x2bfc40>
     320:	00001349 	andeq	r1, r0, r9, asr #6
     324:	27001508 	strcs	r1, [r0, -r8, lsl #10]
     328:	09000019 	stmdbeq	r0, {r0, r3, r4}
     32c:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
     330:	0b3a0e03 	bleq	e83b44 <_ram_limit+0xa6bb44>
     334:	01110b3b 	tsteq	r1, fp, lsr fp
     338:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     33c:	00194296 	mulseq	r9, r6, r2
     340:	002e0a00 	eoreq	r0, lr, r0, lsl #20
     344:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
     348:	0b3b0b3a 	bleq	ec3038 <_ram_limit+0xaab038>
     34c:	01111349 	tsteq	r1, r9, asr #6
     350:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     354:	00194297 	mulseq	r9, r7, r2
     358:	012e0b00 	teqeq	lr, r0, lsl #22
     35c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
     360:	0b3b0b3a 	bleq	ec3050 <_ram_limit+0xaab050>
     364:	01111927 	tsteq	r1, r7, lsr #18
     368:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     36c:	01194297 			; <UNDEFINED> instruction: 0x01194297
     370:	0c000013 	stceq	0, cr0, [r0], {19}
     374:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
     378:	0b3b0b3a 	bleq	ec3068 <_ram_limit+0xaab068>
     37c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     380:	2e0d0000 	cdpcs	0, 0, cr0, cr13, cr0, {0}
     384:	03193f01 	tsteq	r9, #1, 30
     388:	3b0b3a0e 	blcc	2cebc8 <_stacks_size+0x2ce4a8>
     38c:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
     390:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     394:	97184006 	ldrls	r4, [r8, -r6]
     398:	13011942 	movwne	r1, #6466	; 0x1942
     39c:	340e0000 	strcc	r0, [lr], #-0
     3a0:	3a0e0300 	bcc	380fa8 <_stacks_size+0x380888>
     3a4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     3a8:	00180213 	andseq	r0, r8, r3, lsl r2
     3ac:	002e0f00 	eoreq	r0, lr, r0, lsl #30
     3b0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
     3b4:	0b3b0b3a 	bleq	ec30a4 <_ram_limit+0xaab0a4>
     3b8:	06120111 			; <UNDEFINED> instruction: 0x06120111
     3bc:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     3c0:	10000019 	andne	r0, r0, r9, lsl r0
     3c4:	13490101 	movtne	r0, #37121	; 0x9101
     3c8:	00001301 	andeq	r1, r0, r1, lsl #6
     3cc:	49002111 	stmdbmi	r0, {r0, r4, r8, sp}
     3d0:	000b2f13 	andeq	r2, fp, r3, lsl pc
     3d4:	00341200 	eorseq	r1, r4, r0, lsl #4
     3d8:	0b3a0e03 	bleq	e83bec <_ram_limit+0xa6bbec>
     3dc:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     3e0:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     3e4:	35130000 	ldrcc	r0, [r3, #-0]
     3e8:	00134900 	andseq	r4, r3, r0, lsl #18
     3ec:	11010000 	mrsne	r0, (UNDEF: 1)
     3f0:	130e2501 	movwne	r2, #58625	; 0xe501
     3f4:	1b0e030b 	blne	381028 <_stacks_size+0x380908>
     3f8:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
     3fc:	00171006 	andseq	r1, r7, r6
     400:	00240200 	eoreq	r0, r4, r0, lsl #4
     404:	0b3e0b0b 	bleq	f83038 <_ram_limit+0xb6b038>
     408:	00000e03 	andeq	r0, r0, r3, lsl #28
     40c:	0b002403 	bleq	9420 <_stacks_size+0x8d00>
     410:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     414:	04000008 	streq	r0, [r0], #-8
     418:	0b0b000f 	bleq	2c045c <_stacks_size+0x2bfd3c>
     41c:	00001349 	andeq	r1, r0, r9, asr #6
     420:	27001505 	strcs	r1, [r0, -r5, lsl #10]
     424:	06000019 			; <UNDEFINED> instruction: 0x06000019
     428:	0b0b0104 	bleq	2c0840 <_stacks_size+0x2c0120>
     42c:	0b3b0b3a 	bleq	ec311c <_ram_limit+0xaab11c>
     430:	00001301 	andeq	r1, r0, r1, lsl #6
     434:	03002807 	movweq	r2, #2055	; 0x807
     438:	000d1c0e 	andeq	r1, sp, lr, lsl #24
     43c:	00160800 	andseq	r0, r6, r0, lsl #16
     440:	0b3a0e03 	bleq	e83c54 <_ram_limit+0xa6bc54>
     444:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     448:	13090000 	movwne	r0, #36864	; 0x9000
     44c:	3a0b0b00 	bcc	2c3054 <_stacks_size+0x2c2934>
     450:	000b3b0b 	andeq	r3, fp, fp, lsl #22
     454:	002e0a00 	eoreq	r0, lr, r0, lsl #20
     458:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
     45c:	0b3b0b3a 	bleq	ec314c <_ram_limit+0xaab14c>
     460:	06120111 			; <UNDEFINED> instruction: 0x06120111
     464:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     468:	0b000019 	bleq	4d4 <_sys_stack_size+0xd4>
     46c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     470:	0b3a0e03 	bleq	e83c84 <_ram_limit+0xa6bc84>
     474:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
     478:	06120111 			; <UNDEFINED> instruction: 0x06120111
     47c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     480:	00130119 	andseq	r0, r3, r9, lsl r1
     484:	00050c00 	andeq	r0, r5, r0, lsl #24
     488:	0b3a0803 	bleq	e8249c <_ram_limit+0xa6a49c>
     48c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     490:	00001802 	andeq	r1, r0, r2, lsl #16
     494:	0300050d 	movweq	r0, #1293	; 0x50d
     498:	3b0b3a0e 	blcc	2cecd8 <_stacks_size+0x2ce5b8>
     49c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     4a0:	0e000018 	mcreq	0, 0, r0, cr0, cr8, {0}
     4a4:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     4a8:	0b3b0b3a 	bleq	ec3198 <_ram_limit+0xaab198>
     4ac:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     4b0:	260f0000 	strcs	r0, [pc], -r0
     4b4:	00134900 	andseq	r4, r3, r0, lsl #18
     4b8:	00351000 	eorseq	r1, r5, r0
     4bc:	00001349 	andeq	r1, r0, r9, asr #6
     4c0:	49010111 	stmdbmi	r1, {r0, r4, r8}
     4c4:	00130113 	andseq	r0, r3, r3, lsl r1
     4c8:	00211200 	eoreq	r1, r1, r0, lsl #4
     4cc:	0b2f1349 	bleq	bc51f8 <_ram_limit+0x7ad1f8>
     4d0:	01000000 	mrseq	r0, (UNDEF: 0)
     4d4:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
     4d8:	0e030b13 	vmoveq.32	d3[0], r0
     4dc:	01110e1b 	tsteq	r1, fp, lsl lr
     4e0:	17100612 			; <UNDEFINED> instruction: 0x17100612
     4e4:	24020000 	strcs	r0, [r2], #-0
     4e8:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     4ec:	000e030b 	andeq	r0, lr, fp, lsl #6
     4f0:	00160300 	andseq	r0, r6, r0, lsl #6
     4f4:	0b3a0e03 	bleq	e83d08 <_ram_limit+0xa6bd08>
     4f8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     4fc:	24040000 	strcs	r0, [r4], #-0
     500:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     504:	0008030b 	andeq	r0, r8, fp, lsl #6
     508:	000f0500 	andeq	r0, pc, r0, lsl #10
     50c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
     510:	15060000 	strne	r0, [r6, #-0]
     514:	00192700 	andseq	r2, r9, r0, lsl #14
     518:	00260700 	eoreq	r0, r6, r0, lsl #14
     51c:	00001349 	andeq	r1, r0, r9, asr #6
     520:	0b010408 	bleq	41548 <_stacks_size+0x40e28>
     524:	3b0b3a0b 	blcc	2ced58 <_stacks_size+0x2ce638>
     528:	0013010b 	andseq	r0, r3, fp, lsl #2
     52c:	00280900 	eoreq	r0, r8, r0, lsl #18
     530:	0d1c0e03 	ldceq	14, cr0, [ip, #-12]
     534:	130a0000 	movwne	r0, #40960	; 0xa000
     538:	3a0b0b01 	bcc	2c3144 <_stacks_size+0x2c2a24>
     53c:	010b3b0b 	tsteq	fp, fp, lsl #22
     540:	0b000013 	bleq	594 <_sys_stack_size+0x194>
     544:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     548:	0b3b0b3a 	bleq	ec3238 <_ram_limit+0xaab238>
     54c:	0b381349 	bleq	e05278 <_ram_limit+0x9ed278>
     550:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     554:	3a080300 	bcc	20115c <_stacks_size+0x200a3c>
     558:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     55c:	000b3813 	andeq	r3, fp, r3, lsl r8
     560:	00130d00 	andseq	r0, r3, r0, lsl #26
     564:	0b3a0b0b 	bleq	e83198 <_ram_limit+0xa6b198>
     568:	00000b3b 	andeq	r0, r0, fp, lsr fp
     56c:	3f012e0e 	svccc	0x00012e0e
     570:	3a0e0319 	bcc	3811dc <_stacks_size+0x380abc>
     574:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     578:	11134919 	tstne	r3, r9, lsl r9
     57c:	40061201 	andmi	r1, r6, r1, lsl #4
     580:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     584:	00001301 	andeq	r1, r0, r1, lsl #6
     588:	0300050f 	movweq	r0, #1295	; 0x50f
     58c:	3b0b3a0e 	blcc	2cedcc <_stacks_size+0x2ce6ac>
     590:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     594:	10000018 	andne	r0, r0, r8, lsl r0
     598:	08030005 	stmdaeq	r3, {r0, r2}
     59c:	0b3b0b3a 	bleq	ec328c <_ram_limit+0xaab28c>
     5a0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     5a4:	2e110000 	cdpcs	0, 1, cr0, cr1, cr0, {0}
     5a8:	03193f01 	tsteq	r9, #1, 30
     5ac:	3b0b3a0e 	blcc	2cedec <_stacks_size+0x2ce6cc>
     5b0:	1119270b 	tstne	r9, fp, lsl #14
     5b4:	40061201 	andmi	r1, r6, r1, lsl #4
     5b8:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     5bc:	00001301 	andeq	r1, r0, r1, lsl #6
     5c0:	03012e12 	movweq	r2, #7698	; 0x1e12
     5c4:	3b0b3a0e 	blcc	2cee04 <_stacks_size+0x2ce6e4>
     5c8:	1119270b 	tstne	r9, fp, lsl #14
     5cc:	40061201 	andmi	r1, r6, r1, lsl #4
     5d0:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     5d4:	00001301 	andeq	r1, r0, r1, lsl #6
     5d8:	03002e13 	movweq	r2, #3603	; 0xe13
     5dc:	3b0b3a0e 	blcc	2cee1c <_stacks_size+0x2ce6fc>
     5e0:	1119270b 	tstne	r9, fp, lsl #14
     5e4:	40061201 	andmi	r1, r6, r1, lsl #4
     5e8:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
     5ec:	01140000 	tsteq	r4, r0
     5f0:	01134901 	tsteq	r3, r1, lsl #18
     5f4:	15000013 	strne	r0, [r0, #-19]
     5f8:	13490021 	movtne	r0, #36897	; 0x9021
     5fc:	00000b2f 	andeq	r0, r0, pc, lsr #22
     600:	49003516 	stmdbmi	r0, {r1, r2, r4, r8, sl, ip, sp}
     604:	17000013 	smladne	r0, r3, r0, r0
     608:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     60c:	0b3b0b3a 	bleq	ec32fc <_ram_limit+0xaab2fc>
     610:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     614:	01000000 	mrseq	r0, (UNDEF: 0)
     618:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
     61c:	0e030b13 	vmoveq.32	d3[0], r0
     620:	17550e1b 	smmlane	r5, fp, lr, r0
     624:	17100111 			; <UNDEFINED> instruction: 0x17100111
     628:	24020000 	strcs	r0, [r2], #-0
     62c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     630:	0008030b 	andeq	r0, r8, fp, lsl #6
     634:	00240300 	eoreq	r0, r4, r0, lsl #6
     638:	0b3e0b0b 	bleq	f8326c <_ram_limit+0xb6b26c>
     63c:	00000e03 	andeq	r0, r0, r3, lsl #28
     640:	03001604 	movweq	r1, #1540	; 0x604
     644:	3b0b3a0e 	blcc	2cee84 <_stacks_size+0x2ce764>
     648:	0013490b 	andseq	r4, r3, fp, lsl #18
     64c:	00160500 	andseq	r0, r6, r0, lsl #10
     650:	0b3a0e03 	bleq	e83e64 <_ram_limit+0xa6be64>
     654:	1349053b 	movtne	r0, #38203	; 0x953b
     658:	17060000 	strne	r0, [r6, -r0]
     65c:	3a0b0b01 	bcc	2c3268 <_stacks_size+0x2c2b48>
     660:	010b3b0b 	tsteq	fp, fp, lsl #22
     664:	07000013 	smladeq	r0, r3, r0, r0
     668:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     66c:	0b3b0b3a 	bleq	ec335c <_ram_limit+0xaab35c>
     670:	00001349 	andeq	r1, r0, r9, asr #6
     674:	49010108 	stmdbmi	r1, {r3, r8}
     678:	00130113 	andseq	r0, r3, r3, lsl r1
     67c:	00210900 	eoreq	r0, r1, r0, lsl #18
     680:	0b2f1349 	bleq	bc53ac <_ram_limit+0x7ad3ac>
     684:	130a0000 	movwne	r0, #40960	; 0xa000
     688:	3a0b0b01 	bcc	2c3294 <_stacks_size+0x2c2b74>
     68c:	010b3b0b 	tsteq	fp, fp, lsl #22
     690:	0b000013 	bleq	6e4 <_sys_stack_size+0x2e4>
     694:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     698:	0b3b0b3a 	bleq	ec3388 <_ram_limit+0xaab388>
     69c:	0b381349 	bleq	e053c8 <_ram_limit+0x9ed3c8>
     6a0:	0f0c0000 	svceq	0x000c0000
     6a4:	000b0b00 	andeq	r0, fp, r0, lsl #22
     6a8:	01130d00 	tsteq	r3, r0, lsl #26
     6ac:	0b0b0e03 	bleq	2c3ec0 <_stacks_size+0x2c37a0>
     6b0:	0b3b0b3a 	bleq	ec33a0 <_ram_limit+0xaab3a0>
     6b4:	00001301 	andeq	r1, r0, r1, lsl #6
     6b8:	03000d0e 	movweq	r0, #3342	; 0xd0e
     6bc:	3b0b3a08 	blcc	2ceee4 <_stacks_size+0x2ce7c4>
     6c0:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     6c4:	0f00000b 	svceq	0x0000000b
     6c8:	0b0b000f 	bleq	2c070c <_stacks_size+0x2bffec>
     6cc:	00001349 	andeq	r1, r0, r9, asr #6
     6d0:	03011310 	movweq	r1, #4880	; 0x1310
     6d4:	3a050b0e 	bcc	143314 <_stacks_size+0x142bf4>
     6d8:	010b3b0b 	tsteq	fp, fp, lsl #22
     6dc:	11000013 	tstne	r0, r3, lsl r0
     6e0:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     6e4:	0b3b0b3a 	bleq	ec33d4 <_ram_limit+0xaab3d4>
     6e8:	05381349 	ldreq	r1, [r8, #-841]!	; 0x349
     6ec:	15120000 	ldrne	r0, [r2, #-0]
     6f0:	00192700 	andseq	r2, r9, r0, lsl #14
     6f4:	01151300 	tsteq	r5, r0, lsl #6
     6f8:	13491927 	movtne	r1, #39207	; 0x9927
     6fc:	00001301 	andeq	r1, r0, r1, lsl #6
     700:	49000514 	stmdbmi	r0, {r2, r4, r8, sl}
     704:	15000013 	strne	r0, [r0, #-19]
     708:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     70c:	0b3a050b 	bleq	e81b40 <_ram_limit+0xa69b40>
     710:	1301053b 	movwne	r0, #5435	; 0x153b
     714:	0d160000 	ldceq	0, cr0, [r6, #-0]
     718:	3a0e0300 	bcc	381320 <_stacks_size+0x380c00>
     71c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     720:	000b3813 	andeq	r3, fp, r3, lsl r8
     724:	000d1700 	andeq	r1, sp, r0, lsl #14
     728:	0b3a0e03 	bleq	e83f3c <_ram_limit+0xa6bf3c>
     72c:	1349053b 	movtne	r0, #38203	; 0x953b
     730:	00000538 	andeq	r0, r0, r8, lsr r5
     734:	49002618 	stmdbmi	r0, {r3, r4, r9, sl, sp}
     738:	19000013 	stmdbne	r0, {r0, r1, r4}
     73c:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     740:	0b3a0b0b 	bleq	e83374 <_ram_limit+0xa6b374>
     744:	1301053b 	movwne	r0, #5435	; 0x153b
     748:	131a0000 	tstne	sl, #0
     74c:	3a0b0b01 	bcc	2c3358 <_stacks_size+0x2c2c38>
     750:	01053b0b 	tsteq	r5, fp, lsl #22
     754:	1b000013 	blne	7a8 <_stacks_size+0x88>
     758:	0b0b0117 	bleq	2c0bbc <_stacks_size+0x2c049c>
     75c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     760:	00001301 	andeq	r1, r0, r1, lsl #6
     764:	03000d1c 	movweq	r0, #3356	; 0xd1c
     768:	3b0b3a0e 	blcc	2cefa8 <_stacks_size+0x2ce888>
     76c:	00134905 	andseq	r4, r3, r5, lsl #18
     770:	01151d00 	tsteq	r5, r0, lsl #26
     774:	13011927 	movwne	r1, #6439	; 0x1927
     778:	2e1e0000 	cdpcs	0, 1, cr0, cr14, cr0, {0}
     77c:	03193f00 	tsteq	r9, #0, 30
     780:	3b0b3a0e 	blcc	2cefc0 <_stacks_size+0x2ce8a0>
     784:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
     788:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     78c:	97184006 	ldrls	r4, [r8, -r6]
     790:	00001942 	andeq	r1, r0, r2, asr #18
     794:	0300341f 	movweq	r3, #1055	; 0x41f
     798:	3b0b3a0e 	blcc	2cefd8 <_stacks_size+0x2ce8b8>
     79c:	3f134905 	svccc	0x00134905
     7a0:	00193c19 	andseq	r3, r9, r9, lsl ip
     7a4:	11010000 	mrsne	r0, (UNDEF: 1)
     7a8:	130e2501 	movwne	r2, #58625	; 0xe501
     7ac:	1b0e030b 	blne	3813e0 <_stacks_size+0x380cc0>
     7b0:	0017100e 	andseq	r1, r7, lr
     7b4:	00240200 	eoreq	r0, r4, r0, lsl #4
     7b8:	0b3e0b0b 	bleq	f833ec <_ram_limit+0xb6b3ec>
     7bc:	00000803 	andeq	r0, r0, r3, lsl #16
     7c0:	0b002403 	bleq	97d4 <_stacks_size+0x90b4>
     7c4:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     7c8:	0400000e 	streq	r0, [r0], #-14
     7cc:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
     7d0:	0b3b0b3a 	bleq	ec34c0 <_ram_limit+0xaab4c0>
     7d4:	00001349 	andeq	r1, r0, r9, asr #6
     7d8:	03001605 	movweq	r1, #1541	; 0x605
     7dc:	3b0b3a0e 	blcc	2cf01c <_stacks_size+0x2ce8fc>
     7e0:	00134905 	andseq	r4, r3, r5, lsl #18
     7e4:	01170600 	tsteq	r7, r0, lsl #12
     7e8:	0b3a0b0b 	bleq	e8341c <_ram_limit+0xa6b41c>
     7ec:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     7f0:	0d070000 	stceq	0, cr0, [r7, #-0]
     7f4:	3a0e0300 	bcc	3813fc <_stacks_size+0x380cdc>
     7f8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     7fc:	08000013 	stmdaeq	r0, {r0, r1, r4}
     800:	13490101 	movtne	r0, #37121	; 0x9101
     804:	00001301 	andeq	r1, r0, r1, lsl #6
     808:	49002109 	stmdbmi	r0, {r0, r3, r8, sp}
     80c:	000b2f13 	andeq	r2, fp, r3, lsl pc
     810:	01130a00 	tsteq	r3, r0, lsl #20
     814:	0b3a0b0b 	bleq	e83448 <_ram_limit+0xa6b448>
     818:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     81c:	0d0b0000 	stceq	0, cr0, [fp, #-0]
     820:	3a0e0300 	bcc	381428 <_stacks_size+0x380d08>
     824:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     828:	000b3813 	andeq	r3, fp, r3, lsl r8
     82c:	000f0c00 	andeq	r0, pc, r0, lsl #24
     830:	00000b0b 	andeq	r0, r0, fp, lsl #22
     834:	0301130d 	movweq	r1, #4877	; 0x130d
     838:	3a0b0b0e 	bcc	2c3478 <_stacks_size+0x2c2d58>
     83c:	010b3b0b 	tsteq	fp, fp, lsl #22
     840:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
     844:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     848:	0b3b0b3a 	bleq	ec3538 <_ram_limit+0xaab538>
     84c:	0b381349 	bleq	e05578 <_ram_limit+0x9ed578>
     850:	0f0f0000 	svceq	0x000f0000
     854:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
     858:	10000013 	andne	r0, r0, r3, lsl r0
     85c:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     860:	0b3a050b 	bleq	e81c94 <_ram_limit+0xa69c94>
     864:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     868:	0d110000 	ldceq	0, cr0, [r1, #-0]
     86c:	3a0e0300 	bcc	381474 <_stacks_size+0x380d54>
     870:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     874:	00053813 	andeq	r3, r5, r3, lsl r8
     878:	00151200 	andseq	r1, r5, r0, lsl #4
     87c:	00001927 	andeq	r1, r0, r7, lsr #18
     880:	27011513 	smladcs	r1, r3, r5, r1
     884:	01134919 	tsteq	r3, r9, lsl r9
     888:	14000013 	strne	r0, [r0], #-19
     88c:	13490005 	movtne	r0, #36869	; 0x9005
     890:	13150000 	tstne	r5, #0
     894:	0b0e0301 	bleq	3814a0 <_stacks_size+0x380d80>
     898:	3b0b3a05 	blcc	2cf0b4 <_stacks_size+0x2ce994>
     89c:	00130105 	andseq	r0, r3, r5, lsl #2
     8a0:	000d1600 	andeq	r1, sp, r0, lsl #12
     8a4:	0b3a0e03 	bleq	e840b8 <_ram_limit+0xa6c0b8>
     8a8:	1349053b 	movtne	r0, #38203	; 0x953b
     8ac:	00000b38 	andeq	r0, r0, r8, lsr fp
     8b0:	03000d17 	movweq	r0, #3351	; 0xd17
     8b4:	3b0b3a0e 	blcc	2cf0f4 <_stacks_size+0x2ce9d4>
     8b8:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     8bc:	18000005 	stmdane	r0, {r0, r2}
     8c0:	13490026 	movtne	r0, #36902	; 0x9026
     8c4:	13190000 	tstne	r9, #0
     8c8:	0b0e0301 	bleq	3814d4 <_stacks_size+0x380db4>
     8cc:	3b0b3a0b 	blcc	2cf100 <_stacks_size+0x2ce9e0>
     8d0:	00130105 	andseq	r0, r3, r5, lsl #2
     8d4:	01131a00 	tsteq	r3, r0, lsl #20
     8d8:	0b3a0b0b 	bleq	e8350c <_ram_limit+0xa6b50c>
     8dc:	1301053b 	movwne	r0, #5435	; 0x153b
     8e0:	171b0000 	ldrne	r0, [fp, -r0]
     8e4:	3a0b0b01 	bcc	2c34f0 <_stacks_size+0x2c2dd0>
     8e8:	01053b0b 	tsteq	r5, fp, lsl #22
     8ec:	1c000013 	stcne	0, cr0, [r0], {19}
     8f0:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     8f4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     8f8:	00001349 	andeq	r1, r0, r9, asr #6
     8fc:	2701151d 	smladcs	r1, sp, r5, r1
     900:	00130119 	andseq	r0, r3, r9, lsl r1
     904:	00341e00 	eorseq	r1, r4, r0, lsl #28
     908:	0b3a0e03 	bleq	e8411c <_ram_limit+0xa6c11c>
     90c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     910:	00001802 	andeq	r1, r0, r2, lsl #16
     914:	0300341f 	movweq	r3, #1055	; 0x41f
     918:	3b0b3a0e 	blcc	2cf158 <_stacks_size+0x2cea38>
     91c:	3f134905 	svccc	0x00134905
     920:	00180219 	andseq	r0, r8, r9, lsl r2
     924:	11010000 	mrsne	r0, (UNDEF: 1)
     928:	130e2501 	movwne	r2, #58625	; 0xe501
     92c:	1b0e030b 	blne	381560 <_stacks_size+0x380e40>
     930:	1117550e 	tstne	r7, lr, lsl #10
     934:	00171001 	andseq	r1, r7, r1
     938:	00240200 	eoreq	r0, r4, r0, lsl #4
     93c:	0b3e0b0b 	bleq	f83570 <_ram_limit+0xb6b570>
     940:	00000803 	andeq	r0, r0, r3, lsl #16
     944:	03001603 	movweq	r1, #1539	; 0x603
     948:	3b0b3a0e 	blcc	2cf188 <_stacks_size+0x2cea68>
     94c:	0013490b 	andseq	r4, r3, fp, lsl #18
     950:	00240400 	eoreq	r0, r4, r0, lsl #8
     954:	0b3e0b0b 	bleq	f83588 <_ram_limit+0xb6b588>
     958:	00000e03 	andeq	r0, r0, r3, lsl #28
     95c:	0b000f05 	bleq	4578 <_stacks_size+0x3e58>
     960:	0013490b 	andseq	r4, r3, fp, lsl #18
     964:	012e0600 	teqeq	lr, r0, lsl #12
     968:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
     96c:	0b3b0b3a 	bleq	ec365c <_ram_limit+0xaab65c>
     970:	13491927 	movtne	r1, #39207	; 0x9927
     974:	06120111 			; <UNDEFINED> instruction: 0x06120111
     978:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     97c:	00130119 	andseq	r0, r3, r9, lsl r1
     980:	00050700 	andeq	r0, r5, r0, lsl #14
     984:	0b3a0803 	bleq	e82998 <_ram_limit+0xa6a998>
     988:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     98c:	00001702 	andeq	r1, r0, r2, lsl #14
     990:	03003408 	movweq	r3, #1032	; 0x408
     994:	3b0b3a08 	blcc	2cf1bc <_stacks_size+0x2cea9c>
     998:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     99c:	09000017 	stmdbeq	r0, {r0, r1, r2, r4}
     9a0:	00000026 	andeq	r0, r0, r6, lsr #32
     9a4:	01110100 	tsteq	r1, r0, lsl #2
     9a8:	0b130e25 	bleq	4c4244 <_ram_limit+0xac244>
     9ac:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
     9b0:	01111755 	tsteq	r1, r5, asr r7
     9b4:	00001710 	andeq	r1, r0, r0, lsl r7
     9b8:	0b002402 	bleq	99c8 <_stacks_size+0x92a8>
     9bc:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     9c0:	03000008 	movweq	r0, #8
     9c4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
     9c8:	0b3b0b3a 	bleq	ec36b8 <_ram_limit+0xaab6b8>
     9cc:	00001349 	andeq	r1, r0, r9, asr #6
     9d0:	0b002404 	bleq	99e8 <_stacks_size+0x92c8>
     9d4:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     9d8:	0500000e 	streq	r0, [r0, #-14]
     9dc:	0b0b000f 	bleq	2c0a20 <_stacks_size+0x2c0300>
     9e0:	00001349 	andeq	r1, r0, r9, asr #6
     9e4:	49002606 	stmdbmi	r0, {r1, r2, r9, sl, sp}
     9e8:	07000013 	smladeq	r0, r3, r0, r0
     9ec:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     9f0:	0b3a0e03 	bleq	e84204 <_ram_limit+0xa6c204>
     9f4:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
     9f8:	01111349 	tsteq	r1, r9, asr #6
     9fc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     a00:	00194297 	mulseq	r9, r7, r2
     a04:	00050800 	andeq	r0, r5, r0, lsl #16
     a08:	0b3a0803 	bleq	e82a1c <_ram_limit+0xa6aa1c>
     a0c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     a10:	00001702 	andeq	r1, r0, r2, lsl #14
     a14:	01110100 	tsteq	r1, r0, lsl #2
     a18:	0b130e25 	bleq	4c42b4 <_ram_limit+0xac2b4>
     a1c:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
     a20:	01111755 	tsteq	r1, r5, asr r7
     a24:	00001710 	andeq	r1, r0, r0, lsl r7
     a28:	0b002402 	bleq	9a38 <_stacks_size+0x9318>
     a2c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     a30:	03000008 	movweq	r0, #8
     a34:	0b0b0024 	bleq	2c0acc <_stacks_size+0x2c03ac>
     a38:	0e030b3e 	vmoveq.16	d3[0], r0
     a3c:	16040000 	strne	r0, [r4], -r0
     a40:	3a0e0300 	bcc	381648 <_stacks_size+0x380f28>
     a44:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     a48:	05000013 	streq	r0, [r0, #-19]
     a4c:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
     a50:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     a54:	00001349 	andeq	r1, r0, r9, asr #6
     a58:	0b011706 	bleq	46678 <_stacks_size+0x45f58>
     a5c:	3b0b3a0b 	blcc	2cf290 <_stacks_size+0x2ceb70>
     a60:	0013010b 	andseq	r0, r3, fp, lsl #2
     a64:	000d0700 	andeq	r0, sp, r0, lsl #14
     a68:	0b3a0e03 	bleq	e8427c <_ram_limit+0xa6c27c>
     a6c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     a70:	01080000 	mrseq	r0, (UNDEF: 8)
     a74:	01134901 	tsteq	r3, r1, lsl #18
     a78:	09000013 	stmdbeq	r0, {r0, r1, r4}
     a7c:	13490021 	movtne	r0, #36897	; 0x9021
     a80:	00000b2f 	andeq	r0, r0, pc, lsr #22
     a84:	0b01130a 	bleq	456b4 <_stacks_size+0x44f94>
     a88:	3b0b3a0b 	blcc	2cf2bc <_stacks_size+0x2ceb9c>
     a8c:	0013010b 	andseq	r0, r3, fp, lsl #2
     a90:	000d0b00 	andeq	r0, sp, r0, lsl #22
     a94:	0b3a0e03 	bleq	e842a8 <_ram_limit+0xa6c2a8>
     a98:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     a9c:	00000b38 	andeq	r0, r0, r8, lsr fp
     aa0:	0b000f0c 	bleq	46d8 <_stacks_size+0x3fb8>
     aa4:	0d00000b 	stceq	0, cr0, [r0, #-44]	; 0xffffffd4
     aa8:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     aac:	0b3a0b0b 	bleq	e836e0 <_ram_limit+0xa6b6e0>
     ab0:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     ab4:	0d0e0000 	stceq	0, cr0, [lr, #-0]
     ab8:	3a080300 	bcc	2016c0 <_stacks_size+0x200fa0>
     abc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     ac0:	000b3813 	andeq	r3, fp, r3, lsl r8
     ac4:	000f0f00 	andeq	r0, pc, r0, lsl #30
     ac8:	13490b0b 	movtne	r0, #39691	; 0x9b0b
     acc:	13100000 	tstne	r0, #0
     ad0:	0b0e0301 	bleq	3816dc <_stacks_size+0x380fbc>
     ad4:	3b0b3a05 	blcc	2cf2f0 <_stacks_size+0x2cebd0>
     ad8:	0013010b 	andseq	r0, r3, fp, lsl #2
     adc:	000d1100 	andeq	r1, sp, r0, lsl #2
     ae0:	0b3a0e03 	bleq	e842f4 <_ram_limit+0xa6c2f4>
     ae4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     ae8:	00000538 	andeq	r0, r0, r8, lsr r5
     aec:	27001512 	smladcs	r0, r2, r5, r1
     af0:	13000019 	movwne	r0, #25
     af4:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
     af8:	13011349 	movwne	r1, #4937	; 0x1349
     afc:	05140000 	ldreq	r0, [r4, #-0]
     b00:	00134900 	andseq	r4, r3, r0, lsl #18
     b04:	01131500 	tsteq	r3, r0, lsl #10
     b08:	050b0e03 	streq	r0, [fp, #-3587]	; 0xe03
     b0c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     b10:	00001301 	andeq	r1, r0, r1, lsl #6
     b14:	03000d16 	movweq	r0, #3350	; 0xd16
     b18:	3b0b3a0e 	blcc	2cf358 <_stacks_size+0x2cec38>
     b1c:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     b20:	1700000b 	strne	r0, [r0, -fp]
     b24:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     b28:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     b2c:	05381349 	ldreq	r1, [r8, #-841]!	; 0x349
     b30:	26180000 	ldrcs	r0, [r8], -r0
     b34:	00134900 	andseq	r4, r3, r0, lsl #18
     b38:	01131900 	tsteq	r3, r0, lsl #18
     b3c:	0b0b0e03 	bleq	2c4350 <_stacks_size+0x2c3c30>
     b40:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     b44:	00001301 	andeq	r1, r0, r1, lsl #6
     b48:	0b01131a 	bleq	457b8 <_stacks_size+0x45098>
     b4c:	3b0b3a0b 	blcc	2cf380 <_stacks_size+0x2cec60>
     b50:	00130105 	andseq	r0, r3, r5, lsl #2
     b54:	01171b00 	tsteq	r7, r0, lsl #22
     b58:	0b3a0b0b 	bleq	e8378c <_ram_limit+0xa6b78c>
     b5c:	1301053b 	movwne	r0, #5435	; 0x153b
     b60:	0d1c0000 	ldceq	0, cr0, [ip, #-0]
     b64:	3a0e0300 	bcc	38176c <_stacks_size+0x38104c>
     b68:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     b6c:	1d000013 	stcne	0, cr0, [r0, #-76]	; 0xffffffb4
     b70:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
     b74:	00001301 	andeq	r1, r0, r1, lsl #6
     b78:	03000d1e 	movweq	r0, #3358	; 0xd1e
     b7c:	3813490e 	ldmdacc	r3, {r1, r2, r3, r8, fp, lr}
     b80:	0019340b 	andseq	r3, r9, fp, lsl #8
     b84:	012e1f00 	teqeq	lr, r0, lsl #30
     b88:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
     b8c:	0b3b0b3a 	bleq	ec387c <_ram_limit+0xaab87c>
     b90:	13491927 	movtne	r1, #39207	; 0x9927
     b94:	06120111 			; <UNDEFINED> instruction: 0x06120111
     b98:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     b9c:	00130119 	andseq	r0, r3, r9, lsl r1
     ba0:	00052000 	andeq	r2, r5, r0
     ba4:	0b3a0e03 	bleq	e843b8 <_ram_limit+0xa6c3b8>
     ba8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     bac:	00001702 	andeq	r1, r0, r2, lsl #14
     bb0:	03000521 	movweq	r0, #1313	; 0x521
     bb4:	3b0b3a0e 	blcc	2cf3f4 <_stacks_size+0x2cecd4>
     bb8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     bbc:	22000018 	andcs	r0, r0, #24
     bc0:	00000018 	andeq	r0, r0, r8, lsl r0
     bc4:	03003423 	movweq	r3, #1059	; 0x423
     bc8:	3b0b3a08 	blcc	2cf3f0 <_stacks_size+0x2cecd0>
     bcc:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     bd0:	24000018 	strcs	r0, [r0], #-24
     bd4:	01018289 	smlabbeq	r1, r9, r2, r8
     bd8:	13310111 	teqne	r1, #1073741828	; 0x40000004
     bdc:	8a250000 	bhi	940be4 <_ram_limit+0x528be4>
     be0:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
     be4:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
     be8:	34260000 	strtcc	r0, [r6], #-0
     bec:	3a0e0300 	bcc	3817f4 <_stacks_size+0x3810d4>
     bf0:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     bf4:	3c193f13 	ldccc	15, cr3, [r9], {19}
     bf8:	27000019 	smladcs	r0, r9, r0, r0
     bfc:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     c00:	0b3a0e03 	bleq	e84414 <_ram_limit+0xa6c414>
     c04:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
     c08:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
     c0c:	01000000 	mrseq	r0, (UNDEF: 0)
     c10:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
     c14:	0e030b13 	vmoveq.32	d3[0], r0
     c18:	17550e1b 	smmlane	r5, fp, lr, r0
     c1c:	17100111 			; <UNDEFINED> instruction: 0x17100111
     c20:	24020000 	strcs	r0, [r2], #-0
     c24:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     c28:	0008030b 	andeq	r0, r8, fp, lsl #6
     c2c:	00240300 	eoreq	r0, r4, r0, lsl #6
     c30:	0b3e0b0b 	bleq	f83864 <_ram_limit+0xb6b864>
     c34:	00000e03 	andeq	r0, r0, r3, lsl #28
     c38:	03001604 	movweq	r1, #1540	; 0x604
     c3c:	3b0b3a0e 	blcc	2cf47c <_stacks_size+0x2ced5c>
     c40:	0013490b 	andseq	r4, r3, fp, lsl #18
     c44:	00160500 	andseq	r0, r6, r0, lsl #10
     c48:	0b3a0e03 	bleq	e8445c <_ram_limit+0xa6c45c>
     c4c:	1349053b 	movtne	r0, #38203	; 0x953b
     c50:	17060000 	strne	r0, [r6, -r0]
     c54:	3a0b0b01 	bcc	2c3860 <_stacks_size+0x2c3140>
     c58:	010b3b0b 	tsteq	fp, fp, lsl #22
     c5c:	07000013 	smladeq	r0, r3, r0, r0
     c60:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     c64:	0b3b0b3a 	bleq	ec3954 <_ram_limit+0xaab954>
     c68:	00001349 	andeq	r1, r0, r9, asr #6
     c6c:	49010108 	stmdbmi	r1, {r3, r8}
     c70:	00130113 	andseq	r0, r3, r3, lsl r1
     c74:	00210900 	eoreq	r0, r1, r0, lsl #18
     c78:	0b2f1349 	bleq	bc59a4 <_ram_limit+0x7ad9a4>
     c7c:	130a0000 	movwne	r0, #40960	; 0xa000
     c80:	3a0b0b01 	bcc	2c388c <_stacks_size+0x2c316c>
     c84:	010b3b0b 	tsteq	fp, fp, lsl #22
     c88:	0b000013 	bleq	cdc <_stacks_size+0x5bc>
     c8c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     c90:	0b3b0b3a 	bleq	ec3980 <_ram_limit+0xaab980>
     c94:	0b381349 	bleq	e059c0 <_ram_limit+0x9ed9c0>
     c98:	0f0c0000 	svceq	0x000c0000
     c9c:	000b0b00 	andeq	r0, fp, r0, lsl #22
     ca0:	01130d00 	tsteq	r3, r0, lsl #26
     ca4:	0b0b0e03 	bleq	2c44b8 <_stacks_size+0x2c3d98>
     ca8:	0b3b0b3a 	bleq	ec3998 <_ram_limit+0xaab998>
     cac:	00001301 	andeq	r1, r0, r1, lsl #6
     cb0:	03000d0e 	movweq	r0, #3342	; 0xd0e
     cb4:	3b0b3a08 	blcc	2cf4dc <_stacks_size+0x2cedbc>
     cb8:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     cbc:	0f00000b 	svceq	0x0000000b
     cc0:	0b0b000f 	bleq	2c0d04 <_stacks_size+0x2c05e4>
     cc4:	00001349 	andeq	r1, r0, r9, asr #6
     cc8:	03011310 	movweq	r1, #4880	; 0x1310
     ccc:	3a050b0e 	bcc	14390c <_stacks_size+0x1431ec>
     cd0:	010b3b0b 	tsteq	fp, fp, lsl #22
     cd4:	11000013 	tstne	r0, r3, lsl r0
     cd8:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     cdc:	0b3b0b3a 	bleq	ec39cc <_ram_limit+0xaab9cc>
     ce0:	05381349 	ldreq	r1, [r8, #-841]!	; 0x349
     ce4:	15120000 	ldrne	r0, [r2, #-0]
     ce8:	00192700 	andseq	r2, r9, r0, lsl #14
     cec:	01151300 	tsteq	r5, r0, lsl #6
     cf0:	13491927 	movtne	r1, #39207	; 0x9927
     cf4:	00001301 	andeq	r1, r0, r1, lsl #6
     cf8:	49000514 	stmdbmi	r0, {r2, r4, r8, sl}
     cfc:	15000013 	strne	r0, [r0, #-19]
     d00:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     d04:	0b3a050b 	bleq	e82138 <_ram_limit+0xa6a138>
     d08:	1301053b 	movwne	r0, #5435	; 0x153b
     d0c:	0d160000 	ldceq	0, cr0, [r6, #-0]
     d10:	3a0e0300 	bcc	381918 <_stacks_size+0x3811f8>
     d14:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     d18:	000b3813 	andeq	r3, fp, r3, lsl r8
     d1c:	000d1700 	andeq	r1, sp, r0, lsl #14
     d20:	0b3a0e03 	bleq	e84534 <_ram_limit+0xa6c534>
     d24:	1349053b 	movtne	r0, #38203	; 0x953b
     d28:	00000538 	andeq	r0, r0, r8, lsr r5
     d2c:	49002618 	stmdbmi	r0, {r3, r4, r9, sl, sp}
     d30:	19000013 	stmdbne	r0, {r0, r1, r4}
     d34:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     d38:	0b3a0b0b 	bleq	e8396c <_ram_limit+0xa6b96c>
     d3c:	1301053b 	movwne	r0, #5435	; 0x153b
     d40:	131a0000 	tstne	sl, #0
     d44:	3a0b0b01 	bcc	2c3950 <_stacks_size+0x2c3230>
     d48:	01053b0b 	tsteq	r5, fp, lsl #22
     d4c:	1b000013 	blne	da0 <_stacks_size+0x680>
     d50:	0b0b0117 	bleq	2c11b4 <_stacks_size+0x2c0a94>
     d54:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     d58:	00001301 	andeq	r1, r0, r1, lsl #6
     d5c:	03000d1c 	movweq	r0, #3356	; 0xd1c
     d60:	3b0b3a0e 	blcc	2cf5a0 <_stacks_size+0x2cee80>
     d64:	00134905 	andseq	r4, r3, r5, lsl #18
     d68:	01151d00 	tsteq	r5, r0, lsl #26
     d6c:	13011927 	movwne	r1, #6439	; 0x1927
     d70:	2e1e0000 	cdpcs	0, 1, cr0, cr14, cr0, {0}
     d74:	03193f01 	tsteq	r9, #1, 30
     d78:	3b0b3a0e 	blcc	2cf5b8 <_stacks_size+0x2cee98>
     d7c:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
     d80:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     d84:	97184006 	ldrls	r4, [r8, -r6]
     d88:	13011942 	movwne	r1, #6466	; 0x1942
     d8c:	051f0000 	ldreq	r0, [pc, #-0]	; d94 <_stacks_size+0x674>
     d90:	3a080300 	bcc	201998 <_stacks_size+0x201278>
     d94:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     d98:	00170213 	andseq	r0, r7, r3, lsl r2
     d9c:	00052000 	andeq	r2, r5, r0
     da0:	0b3a0e03 	bleq	e845b4 <_ram_limit+0xa6c5b4>
     da4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     da8:	00001702 	andeq	r1, r0, r2, lsl #14
     dac:	03003421 	movweq	r3, #1057	; 0x421
     db0:	3b0b3a08 	blcc	2cf5d8 <_stacks_size+0x2ceeb8>
     db4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     db8:	22000018 	andcs	r0, r0, #24
     dbc:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     dc0:	0b3a0e03 	bleq	e845d4 <_ram_limit+0xa6c5d4>
     dc4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     dc8:	1301193c 	movwne	r1, #6460	; 0x193c
     dcc:	18230000 	stmdane	r3!, {}	; <UNPREDICTABLE>
     dd0:	24000000 	strcs	r0, [r0], #-0
     dd4:	01018289 	smlabbeq	r1, r9, r2, r8
     dd8:	13310111 	teqne	r1, #1073741828	; 0x40000004
     ddc:	8a250000 	bhi	940de4 <_ram_limit+0x528de4>
     de0:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
     de4:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
     de8:	34260000 	strtcc	r0, [r6], #-0
     dec:	3a0e0300 	bcc	3819f4 <_stacks_size+0x3812d4>
     df0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     df4:	3c193f13 	ldccc	15, cr3, [r9], {19}
     df8:	27000019 	smladcs	r0, r9, r0, r0
     dfc:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     e00:	0b3a0e03 	bleq	e84614 <_ram_limit+0xa6c614>
     e04:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     e08:	0000193c 	andeq	r1, r0, ip, lsr r9
     e0c:	01110100 	tsteq	r1, r0, lsl #2
     e10:	0b130e25 	bleq	4c46ac <_ram_limit+0xac6ac>
     e14:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
     e18:	01111755 	tsteq	r1, r5, asr r7
     e1c:	00001710 	andeq	r1, r0, r0, lsl r7
     e20:	0b002402 	bleq	9e30 <_stacks_size+0x9710>
     e24:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     e28:	0300000e 	movweq	r0, #14
     e2c:	0b0b0024 	bleq	2c0ec4 <_stacks_size+0x2c07a4>
     e30:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     e34:	16040000 	strne	r0, [r4], -r0
     e38:	3a0e0300 	bcc	381a40 <_stacks_size+0x381320>
     e3c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     e40:	05000013 	streq	r0, [r0, #-19]
     e44:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
     e48:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     e4c:	00001349 	andeq	r1, r0, r9, asr #6
     e50:	0b011706 	bleq	46a70 <_stacks_size+0x46350>
     e54:	3b0b3a0b 	blcc	2cf688 <_stacks_size+0x2cef68>
     e58:	0013010b 	andseq	r0, r3, fp, lsl #2
     e5c:	000d0700 	andeq	r0, sp, r0, lsl #14
     e60:	0b3a0e03 	bleq	e84674 <_ram_limit+0xa6c674>
     e64:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     e68:	01080000 	mrseq	r0, (UNDEF: 8)
     e6c:	01134901 	tsteq	r3, r1, lsl #18
     e70:	09000013 	stmdbeq	r0, {r0, r1, r4}
     e74:	13490021 	movtne	r0, #36897	; 0x9021
     e78:	00000b2f 	andeq	r0, r0, pc, lsr #22
     e7c:	0b01130a 	bleq	45aac <_stacks_size+0x4538c>
     e80:	3b0b3a0b 	blcc	2cf6b4 <_stacks_size+0x2cef94>
     e84:	0013010b 	andseq	r0, r3, fp, lsl #2
     e88:	000d0b00 	andeq	r0, sp, r0, lsl #22
     e8c:	0b3a0e03 	bleq	e846a0 <_ram_limit+0xa6c6a0>
     e90:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     e94:	00000b38 	andeq	r0, r0, r8, lsr fp
     e98:	0b000f0c 	bleq	4ad0 <_stacks_size+0x43b0>
     e9c:	0d00000b 	stceq	0, cr0, [r0, #-44]	; 0xffffffd4
     ea0:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     ea4:	0b3a0b0b 	bleq	e83ad8 <_ram_limit+0xa6bad8>
     ea8:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     eac:	0d0e0000 	stceq	0, cr0, [lr, #-0]
     eb0:	3a080300 	bcc	201ab8 <_stacks_size+0x201398>
     eb4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     eb8:	000b3813 	andeq	r3, fp, r3, lsl r8
     ebc:	000f0f00 	andeq	r0, pc, r0, lsl #30
     ec0:	13490b0b 	movtne	r0, #39691	; 0x9b0b
     ec4:	13100000 	tstne	r0, #0
     ec8:	0b0e0301 	bleq	381ad4 <_stacks_size+0x3813b4>
     ecc:	3b0b3a05 	blcc	2cf6e8 <_stacks_size+0x2cefc8>
     ed0:	0013010b 	andseq	r0, r3, fp, lsl #2
     ed4:	000d1100 	andeq	r1, sp, r0, lsl #2
     ed8:	0b3a0e03 	bleq	e846ec <_ram_limit+0xa6c6ec>
     edc:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     ee0:	00000538 	andeq	r0, r0, r8, lsr r5
     ee4:	27001512 	smladcs	r0, r2, r5, r1
     ee8:	13000019 	movwne	r0, #25
     eec:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
     ef0:	13011349 	movwne	r1, #4937	; 0x1349
     ef4:	05140000 	ldreq	r0, [r4, #-0]
     ef8:	00134900 	andseq	r4, r3, r0, lsl #18
     efc:	01131500 	tsteq	r3, r0, lsl #10
     f00:	050b0e03 	streq	r0, [fp, #-3587]	; 0xe03
     f04:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     f08:	00001301 	andeq	r1, r0, r1, lsl #6
     f0c:	03000d16 	movweq	r0, #3350	; 0xd16
     f10:	3b0b3a0e 	blcc	2cf750 <_stacks_size+0x2cf030>
     f14:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     f18:	1700000b 	strne	r0, [r0, -fp]
     f1c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     f20:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     f24:	05381349 	ldreq	r1, [r8, #-841]!	; 0x349
     f28:	26180000 	ldrcs	r0, [r8], -r0
     f2c:	00134900 	andseq	r4, r3, r0, lsl #18
     f30:	01131900 	tsteq	r3, r0, lsl #18
     f34:	0b0b0e03 	bleq	2c4748 <_stacks_size+0x2c4028>
     f38:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
     f3c:	00001301 	andeq	r1, r0, r1, lsl #6
     f40:	0b01131a 	bleq	45bb0 <_stacks_size+0x45490>
     f44:	3b0b3a0b 	blcc	2cf778 <_stacks_size+0x2cf058>
     f48:	00130105 	andseq	r0, r3, r5, lsl #2
     f4c:	01171b00 	tsteq	r7, r0, lsl #22
     f50:	0b3a0b0b 	bleq	e83b84 <_ram_limit+0xa6bb84>
     f54:	1301053b 	movwne	r0, #5435	; 0x153b
     f58:	0d1c0000 	ldceq	0, cr0, [ip, #-0]
     f5c:	3a0e0300 	bcc	381b64 <_stacks_size+0x381444>
     f60:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     f64:	1d000013 	stcne	0, cr0, [r0, #-76]	; 0xffffffb4
     f68:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
     f6c:	00001301 	andeq	r1, r0, r1, lsl #6
     f70:	3f012e1e 	svccc	0x00012e1e
     f74:	3a0e0319 	bcc	381be0 <_stacks_size+0x3814c0>
     f78:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     f7c:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
     f80:	97184006 	ldrls	r4, [r8, -r6]
     f84:	13011942 	movwne	r1, #6466	; 0x1942
     f88:	051f0000 	ldreq	r0, [pc, #-0]	; f90 <_stacks_size+0x870>
     f8c:	3a080300 	bcc	201b94 <_stacks_size+0x201474>
     f90:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     f94:	00170213 	andseq	r0, r7, r3, lsl r2
     f98:	00052000 	andeq	r2, r5, r0
     f9c:	0b3a0e03 	bleq	e847b0 <_ram_limit+0xa6c7b0>
     fa0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     fa4:	00001702 	andeq	r1, r0, r2, lsl #14
     fa8:	01828921 	orreq	r8, r2, r1, lsr #18
     fac:	31011101 	tstcc	r1, r1, lsl #2
     fb0:	00130113 	andseq	r0, r3, r3, lsl r1
     fb4:	828a2200 	addhi	r2, sl, #0, 4
     fb8:	18020001 	stmdane	r2, {r0}
     fbc:	00184291 	mulseq	r8, r1, r2
     fc0:	82892300 	addhi	r2, r9, #0, 6
     fc4:	01110101 	tsteq	r1, r1, lsl #2
     fc8:	00001331 	andeq	r1, r0, r1, lsr r3
     fcc:	3f012e24 	svccc	0x00012e24
     fd0:	3a0e0319 	bcc	381c3c <_stacks_size+0x38151c>
     fd4:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
     fd8:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
     fdc:	97184006 	ldrls	r4, [r8, -r6]
     fe0:	13011942 	movwne	r1, #6466	; 0x1942
     fe4:	0b250000 	bleq	940fec <_ram_limit+0x528fec>
     fe8:	01175501 	tsteq	r7, r1, lsl #10
     fec:	26000013 			; <UNDEFINED> instruction: 0x26000013
     ff0:	08030034 	stmdaeq	r3, {r2, r4, r5}
     ff4:	0b3b0b3a 	bleq	ec3ce4 <_ram_limit+0xaabce4>
     ff8:	17021349 	strne	r1, [r2, -r9, asr #6]
     ffc:	0b270000 	bleq	9c1004 <_ram_limit+0x5a9004>
    1000:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
    1004:	00130106 	andseq	r0, r3, r6, lsl #2
    1008:	00342800 	eorseq	r2, r4, r0, lsl #16
    100c:	0b3a0e03 	bleq	e84820 <_ram_limit+0xa6c820>
    1010:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    1014:	00001702 	andeq	r1, r0, r2, lsl #14
    1018:	01828929 	orreq	r8, r2, r9, lsr #18
    101c:	01011101 	tsteq	r1, r1, lsl #2
    1020:	2a000013 	bcs	1074 <_stacks_size+0x954>
    1024:	01018289 	smlabbeq	r1, r9, r2, r8
    1028:	42950111 	addsmi	r0, r5, #1073741828	; 0x40000004
    102c:	00133119 	andseq	r3, r3, r9, lsl r1
    1030:	00342b00 	eorseq	r2, r4, r0, lsl #22
    1034:	0b3a0e03 	bleq	e84848 <_ram_limit+0xa6c848>
    1038:	1349053b 	movtne	r0, #38203	; 0x953b
    103c:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
    1040:	342c0000 	strtcc	r0, [ip], #-0
    1044:	3a0e0300 	bcc	381c4c <_stacks_size+0x38152c>
    1048:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    104c:	02193f13 	andseq	r3, r9, #19, 30	; 0x4c
    1050:	2d000018 	stccs	0, cr0, [r0, #-96]	; 0xffffffa0
    1054:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
    1058:	0b3a0e03 	bleq	e8486c <_ram_limit+0xa6c86c>
    105c:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
    1060:	0000193c 	andeq	r1, r0, ip, lsr r9
    1064:	01110100 	tsteq	r1, r0, lsl #2
    1068:	0b130e25 	bleq	4c4904 <_ram_limit+0xac904>
    106c:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
    1070:	01111755 	tsteq	r1, r5, asr r7
    1074:	00001710 	andeq	r1, r0, r0, lsl r7
    1078:	03001602 	movweq	r1, #1538	; 0x602
    107c:	3b0b3a0e 	blcc	2cf8bc <_stacks_size+0x2cf19c>
    1080:	0013490b 	andseq	r4, r3, fp, lsl #18
    1084:	00240300 	eoreq	r0, r4, r0, lsl #6
    1088:	0b3e0b0b 	bleq	f83cbc <_ram_limit+0xb6bcbc>
    108c:	00000803 	andeq	r0, r0, r3, lsl #16
    1090:	0b002404 	bleq	a0a8 <_stacks_size+0x9988>
    1094:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    1098:	0500000e 	streq	r0, [r0, #-14]
    109c:	0b0b000f 	bleq	2c10e0 <_stacks_size+0x2c09c0>
    10a0:	16060000 	strne	r0, [r6], -r0
    10a4:	3a0e0300 	bcc	381cac <_stacks_size+0x38158c>
    10a8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    10ac:	07000013 	smladeq	r0, r3, r0, r0
    10b0:	0b0b0117 	bleq	2c1514 <_stacks_size+0x2c0df4>
    10b4:	0b3b0b3a 	bleq	ec3da4 <_ram_limit+0xaabda4>
    10b8:	00001301 	andeq	r1, r0, r1, lsl #6
    10bc:	03000d08 	movweq	r0, #3336	; 0xd08
    10c0:	3b0b3a0e 	blcc	2cf900 <_stacks_size+0x2cf1e0>
    10c4:	0013490b 	andseq	r4, r3, fp, lsl #18
    10c8:	01010900 	tsteq	r1, r0, lsl #18
    10cc:	13011349 	movwne	r1, #4937	; 0x1349
    10d0:	210a0000 	mrscs	r0, (UNDEF: 10)
    10d4:	2f134900 	svccs	0x00134900
    10d8:	0b00000b 	bleq	110c <_stacks_size+0x9ec>
    10dc:	0b0b0113 	bleq	2c1530 <_stacks_size+0x2c0e10>
    10e0:	0b3b0b3a 	bleq	ec3dd0 <_ram_limit+0xaabdd0>
    10e4:	00001301 	andeq	r1, r0, r1, lsl #6
    10e8:	03000d0c 	movweq	r0, #3340	; 0xd0c
    10ec:	3b0b3a0e 	blcc	2cf92c <_stacks_size+0x2cf20c>
    10f0:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    10f4:	0d00000b 	stceq	0, cr0, [r0, #-44]	; 0xffffffd4
    10f8:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    10fc:	0b3a0b0b 	bleq	e83d30 <_ram_limit+0xa6bd30>
    1100:	13010b3b 	movwne	r0, #6971	; 0x1b3b
    1104:	0d0e0000 	stceq	0, cr0, [lr, #-0]
    1108:	3a080300 	bcc	201d10 <_stacks_size+0x2015f0>
    110c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1110:	000b3813 	andeq	r3, fp, r3, lsl r8
    1114:	000f0f00 	andeq	r0, pc, r0, lsl #30
    1118:	13490b0b 	movtne	r0, #39691	; 0x9b0b
    111c:	13100000 	tstne	r0, #0
    1120:	0b0e0301 	bleq	381d2c <_stacks_size+0x38160c>
    1124:	3b0b3a05 	blcc	2cf940 <_stacks_size+0x2cf220>
    1128:	0013010b 	andseq	r0, r3, fp, lsl #2
    112c:	000d1100 	andeq	r1, sp, r0, lsl #2
    1130:	0b3a0e03 	bleq	e84944 <_ram_limit+0xa6c944>
    1134:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    1138:	00000538 	andeq	r0, r0, r8, lsr r5
    113c:	27001512 	smladcs	r0, r2, r5, r1
    1140:	13000019 	movwne	r0, #25
    1144:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
    1148:	13011349 	movwne	r1, #4937	; 0x1349
    114c:	05140000 	ldreq	r0, [r4, #-0]
    1150:	00134900 	andseq	r4, r3, r0, lsl #18
    1154:	01131500 	tsteq	r3, r0, lsl #10
    1158:	050b0e03 	streq	r0, [fp, #-3587]	; 0xe03
    115c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    1160:	00001301 	andeq	r1, r0, r1, lsl #6
    1164:	03000d16 	movweq	r0, #3350	; 0xd16
    1168:	3b0b3a0e 	blcc	2cf9a8 <_stacks_size+0x2cf288>
    116c:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
    1170:	1700000b 	strne	r0, [r0, -fp]
    1174:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    1178:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    117c:	05381349 	ldreq	r1, [r8, #-841]!	; 0x349
    1180:	26180000 	ldrcs	r0, [r8], -r0
    1184:	00134900 	andseq	r4, r3, r0, lsl #18
    1188:	01131900 	tsteq	r3, r0, lsl #18
    118c:	0b0b0e03 	bleq	2c49a0 <_stacks_size+0x2c4280>
    1190:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    1194:	00001301 	andeq	r1, r0, r1, lsl #6
    1198:	0b01131a 	bleq	45e08 <_stacks_size+0x456e8>
    119c:	3b0b3a0b 	blcc	2cf9d0 <_stacks_size+0x2cf2b0>
    11a0:	00130105 	andseq	r0, r3, r5, lsl #2
    11a4:	01171b00 	tsteq	r7, r0, lsl #22
    11a8:	0b3a0b0b 	bleq	e83ddc <_ram_limit+0xa6bddc>
    11ac:	1301053b 	movwne	r0, #5435	; 0x153b
    11b0:	0d1c0000 	ldceq	0, cr0, [ip, #-0]
    11b4:	3a0e0300 	bcc	381dbc <_stacks_size+0x38169c>
    11b8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    11bc:	1d000013 	stcne	0, cr0, [r0, #-76]	; 0xffffffb4
    11c0:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
    11c4:	00001301 	andeq	r1, r0, r1, lsl #6
    11c8:	03000d1e 	movweq	r0, #3358	; 0xd1e
    11cc:	3b0b3a08 	blcc	2cf9f4 <_stacks_size+0x2cf2d4>
    11d0:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
    11d4:	1f00000b 	svcne	0x0000000b
    11d8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
    11dc:	0b3a0e03 	bleq	e849f0 <_ram_limit+0xa6c9f0>
    11e0:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
    11e4:	01111349 	tsteq	r1, r9, asr #6
    11e8:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
    11ec:	01194297 			; <UNDEFINED> instruction: 0x01194297
    11f0:	20000013 	andcs	r0, r0, r3, lsl r0
    11f4:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
    11f8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    11fc:	17021349 	strne	r1, [r2, -r9, asr #6]
    1200:	05210000 	streq	r0, [r1, #-0]!
    1204:	3a080300 	bcc	201e0c <_stacks_size+0x2016ec>
    1208:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    120c:	00170213 	andseq	r0, r7, r3, lsl r2
    1210:	00342200 	eorseq	r2, r4, r0, lsl #4
    1214:	0b3a0e03 	bleq	e84a28 <_ram_limit+0xa6ca28>
    1218:	1349053b 	movtne	r0, #38203	; 0x953b
    121c:	00001702 	andeq	r1, r0, r2, lsl #14
    1220:	03003423 	movweq	r3, #1059	; 0x423
    1224:	3b0b3a0e 	blcc	2cfa64 <_stacks_size+0x2cf344>
    1228:	1c134905 	ldcne	9, cr4, [r3], {5}
    122c:	24000005 	strcs	r0, [r0], #-5
    1230:	01018289 	smlabbeq	r1, r9, r2, r8
    1234:	13310111 	teqne	r1, #1073741828	; 0x40000004
    1238:	00001301 	andeq	r1, r0, r1, lsl #6
    123c:	01828a25 	orreq	r8, r2, r5, lsr #20
    1240:	91180200 	tstls	r8, r0, lsl #4
    1244:	00001842 	andeq	r1, r0, r2, asr #16
    1248:	01828926 	orreq	r8, r2, r6, lsr #18
    124c:	31011101 	tstcc	r1, r1, lsl #2
    1250:	27000013 	smladcs	r0, r3, r0, r0
    1254:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
    1258:	0b3a0e03 	bleq	e84a6c <_ram_limit+0xa6ca6c>
    125c:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
    1260:	06120111 			; <UNDEFINED> instruction: 0x06120111
    1264:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
    1268:	00130119 	andseq	r0, r3, r9, lsl r1
    126c:	00342800 	eorseq	r2, r4, r0, lsl #16
    1270:	0b3a0803 	bleq	e83284 <_ram_limit+0xa6b284>
    1274:	1349053b 	movtne	r0, #38203	; 0x953b
    1278:	00001702 	andeq	r1, r0, r2, lsl #14
    127c:	49002129 	stmdbmi	r0, {r0, r3, r5, r8, sp}
    1280:	00052f13 	andeq	r2, r5, r3, lsl pc
    1284:	00342a00 	eorseq	r2, r4, r0, lsl #20
    1288:	0b3a0e03 	bleq	e84a9c <_ram_limit+0xa6ca9c>
    128c:	1349053b 	movtne	r0, #38203	; 0x953b
    1290:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
    1294:	2e2b0000 	cdpcs	0, 2, cr0, cr11, cr0, {0}
    1298:	03193f01 	tsteq	r9, #1, 30
    129c:	3b0b3a0e 	blcc	2cfadc <_stacks_size+0x2cf3bc>
    12a0:	3c192705 	ldccc	7, cr2, [r9], {5}
    12a4:	00130119 	andseq	r0, r3, r9, lsl r1
    12a8:	012e2c00 	teqeq	lr, r0, lsl #24
    12ac:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
    12b0:	0b3b0b3a 	bleq	ec3fa0 <_ram_limit+0xaabfa0>
    12b4:	13491927 	movtne	r1, #39207	; 0x9927
    12b8:	1301193c 	movwne	r1, #6460	; 0x193c
    12bc:	2e2d0000 	cdpcs	0, 2, cr0, cr13, cr0, {0}
    12c0:	03193f01 	tsteq	r9, #1, 30
    12c4:	3b0b3a0e 	blcc	2cfb04 <_stacks_size+0x2cf3e4>
    12c8:	3c192705 	ldccc	7, cr2, [r9], {5}
    12cc:	00000019 	andeq	r0, r0, r9, lsl r0
    12d0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
    12d4:	030b130e 	movweq	r1, #45838	; 0xb30e
    12d8:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xb0e
    12dc:	10011117 	andne	r1, r1, r7, lsl r1
    12e0:	02000017 	andeq	r0, r0, #23
    12e4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
    12e8:	0b3b0b3a 	bleq	ec3fd8 <_ram_limit+0xaabfd8>
    12ec:	00001349 	andeq	r1, r0, r9, asr #6
    12f0:	0b002403 	bleq	a304 <_stacks_size+0x9be4>
    12f4:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    12f8:	04000008 	streq	r0, [r0], #-8
    12fc:	0b0b0024 	bleq	2c1394 <_stacks_size+0x2c0c74>
    1300:	0e030b3e 	vmoveq.16	d3[0], r0
    1304:	0f050000 	svceq	0x00050000
    1308:	000b0b00 	andeq	r0, fp, r0, lsl #22
    130c:	00160600 	andseq	r0, r6, r0, lsl #12
    1310:	0b3a0e03 	bleq	e84b24 <_ram_limit+0xa6cb24>
    1314:	1349053b 	movtne	r0, #38203	; 0x953b
    1318:	17070000 	strne	r0, [r7, -r0]
    131c:	3a0b0b01 	bcc	2c3f28 <_stacks_size+0x2c3808>
    1320:	010b3b0b 	tsteq	fp, fp, lsl #22
    1324:	08000013 	stmdaeq	r0, {r0, r1, r4}
    1328:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    132c:	0b3b0b3a 	bleq	ec401c <_ram_limit+0xaac01c>
    1330:	00001349 	andeq	r1, r0, r9, asr #6
    1334:	49010109 	stmdbmi	r1, {r0, r3, r8}
    1338:	00130113 	andseq	r0, r3, r3, lsl r1
    133c:	00210a00 	eoreq	r0, r1, r0, lsl #20
    1340:	0b2f1349 	bleq	bc606c <_ram_limit+0x7ae06c>
    1344:	130b0000 	movwne	r0, #45056	; 0xb000
    1348:	3a0b0b01 	bcc	2c3f54 <_stacks_size+0x2c3834>
    134c:	010b3b0b 	tsteq	fp, fp, lsl #22
    1350:	0c000013 	stceq	0, cr0, [r0], {19}
    1354:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    1358:	0b3b0b3a 	bleq	ec4048 <_ram_limit+0xaac048>
    135c:	0b381349 	bleq	e06088 <_ram_limit+0x9ee088>
    1360:	130d0000 	movwne	r0, #53248	; 0xd000
    1364:	0b0e0301 	bleq	381f70 <_stacks_size+0x381850>
    1368:	3b0b3a0b 	blcc	2cfb9c <_stacks_size+0x2cf47c>
    136c:	0013010b 	andseq	r0, r3, fp, lsl #2
    1370:	000d0e00 	andeq	r0, sp, r0, lsl #28
    1374:	0b3a0803 	bleq	e83388 <_ram_limit+0xa6b388>
    1378:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    137c:	00000b38 	andeq	r0, r0, r8, lsr fp
    1380:	0b000f0f 	bleq	4fc4 <_stacks_size+0x48a4>
    1384:	0013490b 	andseq	r4, r3, fp, lsl #18
    1388:	01131000 	tsteq	r3, r0
    138c:	050b0e03 	streq	r0, [fp, #-3587]	; 0xe03
    1390:	0b3b0b3a 	bleq	ec4080 <_ram_limit+0xaac080>
    1394:	00001301 	andeq	r1, r0, r1, lsl #6
    1398:	03000d11 	movweq	r0, #3345	; 0xd11
    139c:	3b0b3a0e 	blcc	2cfbdc <_stacks_size+0x2cf4bc>
    13a0:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    13a4:	12000005 	andne	r0, r0, #5
    13a8:	19270015 	stmdbne	r7!, {r0, r2, r4}
    13ac:	15130000 	ldrne	r0, [r3, #-0]
    13b0:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
    13b4:	00130113 	andseq	r0, r3, r3, lsl r1
    13b8:	00051400 	andeq	r1, r5, r0, lsl #8
    13bc:	00001349 	andeq	r1, r0, r9, asr #6
    13c0:	03011315 	movweq	r1, #4885	; 0x1315
    13c4:	3a050b0e 	bcc	144004 <_stacks_size+0x1438e4>
    13c8:	01053b0b 	tsteq	r5, fp, lsl #22
    13cc:	16000013 			; <UNDEFINED> instruction: 0x16000013
    13d0:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    13d4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    13d8:	0b381349 	bleq	e06104 <_ram_limit+0x9ee104>
    13dc:	0d170000 	ldceq	0, cr0, [r7, #-0]
    13e0:	3a0e0300 	bcc	381fe8 <_stacks_size+0x3818c8>
    13e4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    13e8:	00053813 	andeq	r3, r5, r3, lsl r8
    13ec:	00261800 	eoreq	r1, r6, r0, lsl #16
    13f0:	00001349 	andeq	r1, r0, r9, asr #6
    13f4:	03011319 	movweq	r1, #4889	; 0x1319
    13f8:	3a0b0b0e 	bcc	2c4038 <_stacks_size+0x2c3918>
    13fc:	01053b0b 	tsteq	r5, fp, lsl #22
    1400:	1a000013 	bne	1454 <_stacks_size+0xd34>
    1404:	0b0b0113 	bleq	2c1858 <_stacks_size+0x2c1138>
    1408:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    140c:	00001301 	andeq	r1, r0, r1, lsl #6
    1410:	0b01171b 	bleq	47084 <_stacks_size+0x46964>
    1414:	3b0b3a0b 	blcc	2cfc48 <_stacks_size+0x2cf528>
    1418:	00130105 	andseq	r0, r3, r5, lsl #2
    141c:	000d1c00 	andeq	r1, sp, r0, lsl #24
    1420:	0b3a0e03 	bleq	e84c34 <_ram_limit+0xa6cc34>
    1424:	1349053b 	movtne	r0, #38203	; 0x953b
    1428:	151d0000 	ldrne	r0, [sp, #-0]
    142c:	01192701 	tsteq	r9, r1, lsl #14
    1430:	1e000013 	mcrne	0, 0, r0, cr0, cr3, {0}
    1434:	0803000d 	stmdaeq	r3, {r0, r2, r3}
    1438:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    143c:	0b381349 	bleq	e06168 <_ram_limit+0x9ee168>
    1440:	2e1f0000 	cdpcs	0, 1, cr0, cr15, cr0, {0}
    1444:	3a0e0301 	bcc	382050 <_stacks_size+0x381930>
    1448:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
    144c:	010b2019 	tsteq	fp, r9, lsl r0
    1450:	20000013 	andcs	r0, r0, r3, lsl r0
    1454:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
    1458:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    145c:	00001349 	andeq	r1, r0, r9, asr #6
    1460:	03000521 	movweq	r0, #1313	; 0x521
    1464:	3b0b3a08 	blcc	2cfc8c <_stacks_size+0x2cf56c>
    1468:	00134905 	andseq	r4, r3, r5, lsl #18
    146c:	00342200 	eorseq	r2, r4, r0, lsl #4
    1470:	0b3a0803 	bleq	e83484 <_ram_limit+0xa6b484>
    1474:	1349053b 	movtne	r0, #38203	; 0x953b
    1478:	34230000 	strtcc	r0, [r3], #-0
    147c:	3a0e0300 	bcc	382084 <_stacks_size+0x381964>
    1480:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    1484:	24000013 	strcs	r0, [r0], #-19
    1488:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
    148c:	0b3a0e03 	bleq	e84ca0 <_ram_limit+0xa6cca0>
    1490:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
    1494:	01111349 	tsteq	r1, r9, asr #6
    1498:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
    149c:	01194297 			; <UNDEFINED> instruction: 0x01194297
    14a0:	25000013 	strcs	r0, [r0, #-19]
    14a4:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
    14a8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    14ac:	17021349 	strne	r1, [r2, -r9, asr #6]
    14b0:	34260000 	strtcc	r0, [r6], #-0
    14b4:	3a0e0300 	bcc	3820bc <_stacks_size+0x38199c>
    14b8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    14bc:	00170213 	andseq	r0, r7, r3, lsl r2
    14c0:	00342700 	eorseq	r2, r4, r0, lsl #14
    14c4:	0b3a0803 	bleq	e834d8 <_ram_limit+0xa6b4d8>
    14c8:	1349053b 	movtne	r0, #38203	; 0x953b
    14cc:	00001702 	andeq	r1, r0, r2, lsl #14
    14d0:	31011d28 	tstcc	r1, r8, lsr #26
    14d4:	55015213 	strpl	r5, [r1, #-531]	; 0x213
    14d8:	590b5817 	stmdbpl	fp, {r0, r1, r2, r4, fp, ip, lr}
    14dc:	00130105 	andseq	r0, r3, r5, lsl #2
    14e0:	00052900 	andeq	r2, r5, r0, lsl #18
    14e4:	17021331 	smladxne	r2, r1, r3, r1
    14e8:	0b2a0000 	bleq	a814f0 <_ram_limit+0x6694f0>
    14ec:	00175501 	andseq	r5, r7, r1, lsl #10
    14f0:	00342b00 	eorseq	r2, r4, r0, lsl #22
    14f4:	17021331 	smladxne	r2, r1, r3, r1
    14f8:	892c0000 	stmdbhi	ip!, {}	; <UNPREDICTABLE>
    14fc:	11010182 	smlabbne	r1, r2, r1, r0
    1500:	01133101 	tsteq	r3, r1, lsl #2
    1504:	2d000013 	stccs	0, cr0, [r0, #-76]	; 0xffffffb4
    1508:	0001828a 	andeq	r8, r1, sl, lsl #5
    150c:	42911802 	addsmi	r1, r1, #131072	; 0x20000
    1510:	2e000018 	mcrcs	0, 0, r0, cr0, cr8, {0}
    1514:	01018289 	smlabbeq	r1, r9, r2, r8
    1518:	13310111 	teqne	r1, #1073741828	; 0x40000004
    151c:	212f0000 	teqcs	pc, r0
    1520:	2f134900 	svccs	0x00134900
    1524:	30000005 	andcc	r0, r0, r5
    1528:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    152c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    1530:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
    1534:	00001802 	andeq	r1, r0, r2, lsl #16
    1538:	3f012e31 	svccc	0x00012e31
    153c:	3a0e0319 	bcc	3821a8 <_stacks_size+0x381a88>
    1540:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
    1544:	3c134919 	ldccc	9, cr4, [r3], {25}
    1548:	00130119 	andseq	r0, r3, r9, lsl r1
    154c:	012e3200 	teqeq	lr, r0, lsl #4
    1550:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
    1554:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    1558:	193c1927 	ldmdbne	ip!, {r0, r1, r2, r5, r8, fp, ip}
    155c:	00001301 	andeq	r1, r0, r1, lsl #6
    1560:	3f012e33 	svccc	0x00012e33
    1564:	3a0e0319 	bcc	3821d0 <_stacks_size+0x381ab0>
    1568:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
    156c:	00193c19 	andseq	r3, r9, r9, lsl ip
    1570:	11010000 	mrsne	r0, (UNDEF: 1)
    1574:	130e2501 	movwne	r2, #58625	; 0xe501
    1578:	1b0e030b 	blne	3821ac <_stacks_size+0x381a8c>
    157c:	1117550e 	tstne	r7, lr, lsl #10
    1580:	00171001 	andseq	r1, r7, r1
    1584:	00240200 	eoreq	r0, r4, r0, lsl #4
    1588:	0b3e0b0b 	bleq	f841bc <_ram_limit+0xb6c1bc>
    158c:	00000803 	andeq	r0, r0, r3, lsl #16
    1590:	0b002403 	bleq	a5a4 <_stacks_size+0x9e84>
    1594:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    1598:	0400000e 	streq	r0, [r0], #-14
    159c:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
    15a0:	0b3b0b3a 	bleq	ec4290 <_ram_limit+0xaac290>
    15a4:	00001349 	andeq	r1, r0, r9, asr #6
    15a8:	03001605 	movweq	r1, #1541	; 0x605
    15ac:	3b0b3a0e 	blcc	2cfdec <_stacks_size+0x2cf6cc>
    15b0:	00134905 	andseq	r4, r3, r5, lsl #18
    15b4:	01170600 	tsteq	r7, r0, lsl #12
    15b8:	0b3a0b0b 	bleq	e841ec <_ram_limit+0xa6c1ec>
    15bc:	13010b3b 	movwne	r0, #6971	; 0x1b3b
    15c0:	0d070000 	stceq	0, cr0, [r7, #-0]
    15c4:	3a0e0300 	bcc	3821cc <_stacks_size+0x381aac>
    15c8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    15cc:	08000013 	stmdaeq	r0, {r0, r1, r4}
    15d0:	13490101 	movtne	r0, #37121	; 0x9101
    15d4:	00001301 	andeq	r1, r0, r1, lsl #6
    15d8:	49002109 	stmdbmi	r0, {r0, r3, r8, sp}
    15dc:	000b2f13 	andeq	r2, fp, r3, lsl pc
    15e0:	01130a00 	tsteq	r3, r0, lsl #20
    15e4:	0b3a0b0b 	bleq	e84218 <_ram_limit+0xa6c218>
    15e8:	13010b3b 	movwne	r0, #6971	; 0x1b3b
    15ec:	0d0b0000 	stceq	0, cr0, [fp, #-0]
    15f0:	3a0e0300 	bcc	3821f8 <_stacks_size+0x381ad8>
    15f4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    15f8:	000b3813 	andeq	r3, fp, r3, lsl r8
    15fc:	000f0c00 	andeq	r0, pc, r0, lsl #24
    1600:	00000b0b 	andeq	r0, r0, fp, lsl #22
    1604:	0301130d 	movweq	r1, #4877	; 0x130d
    1608:	3a0b0b0e 	bcc	2c4248 <_stacks_size+0x2c3b28>
    160c:	010b3b0b 	tsteq	fp, fp, lsl #22
    1610:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
    1614:	0803000d 	stmdaeq	r3, {r0, r2, r3}
    1618:	0b3b0b3a 	bleq	ec4308 <_ram_limit+0xaac308>
    161c:	0b381349 	bleq	e06348 <_ram_limit+0x9ee348>
    1620:	0f0f0000 	svceq	0x000f0000
    1624:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
    1628:	10000013 	andne	r0, r0, r3, lsl r0
    162c:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    1630:	0b3a050b 	bleq	e82a64 <_ram_limit+0xa6aa64>
    1634:	13010b3b 	movwne	r0, #6971	; 0x1b3b
    1638:	0d110000 	ldceq	0, cr0, [r1, #-0]
    163c:	3a0e0300 	bcc	382244 <_stacks_size+0x381b24>
    1640:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1644:	00053813 	andeq	r3, r5, r3, lsl r8
    1648:	00151200 	andseq	r1, r5, r0, lsl #4
    164c:	00001927 	andeq	r1, r0, r7, lsr #18
    1650:	27011513 	smladcs	r1, r3, r5, r1
    1654:	01134919 	tsteq	r3, r9, lsl r9
    1658:	14000013 	strne	r0, [r0], #-19
    165c:	13490005 	movtne	r0, #36869	; 0x9005
    1660:	13150000 	tstne	r5, #0
    1664:	0b0e0301 	bleq	382270 <_stacks_size+0x381b50>
    1668:	3b0b3a05 	blcc	2cfe84 <_stacks_size+0x2cf764>
    166c:	00130105 	andseq	r0, r3, r5, lsl #2
    1670:	000d1600 	andeq	r1, sp, r0, lsl #12
    1674:	0b3a0e03 	bleq	e84e88 <_ram_limit+0xa6ce88>
    1678:	1349053b 	movtne	r0, #38203	; 0x953b
    167c:	00000b38 	andeq	r0, r0, r8, lsr fp
    1680:	03000d17 	movweq	r0, #3351	; 0xd17
    1684:	3b0b3a0e 	blcc	2cfec4 <_stacks_size+0x2cf7a4>
    1688:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
    168c:	18000005 	stmdane	r0, {r0, r2}
    1690:	13490026 	movtne	r0, #36902	; 0x9026
    1694:	13190000 	tstne	r9, #0
    1698:	0b0e0301 	bleq	3822a4 <_stacks_size+0x381b84>
    169c:	3b0b3a0b 	blcc	2cfed0 <_stacks_size+0x2cf7b0>
    16a0:	00130105 	andseq	r0, r3, r5, lsl #2
    16a4:	01131a00 	tsteq	r3, r0, lsl #20
    16a8:	0b3a0b0b 	bleq	e842dc <_ram_limit+0xa6c2dc>
    16ac:	1301053b 	movwne	r0, #5435	; 0x153b
    16b0:	171b0000 	ldrne	r0, [fp, -r0]
    16b4:	3a0b0b01 	bcc	2c42c0 <_stacks_size+0x2c3ba0>
    16b8:	01053b0b 	tsteq	r5, fp, lsl #22
    16bc:	1c000013 	stcne	0, cr0, [r0], {19}
    16c0:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    16c4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    16c8:	00001349 	andeq	r1, r0, r9, asr #6
    16cc:	2701151d 	smladcs	r1, sp, r5, r1
    16d0:	00130119 	andseq	r0, r3, r9, lsl r1
    16d4:	012e1e00 	teqeq	lr, r0, lsl #28
    16d8:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
    16dc:	0b3b0b3a 	bleq	ec43cc <_ram_limit+0xaac3cc>
    16e0:	06120111 			; <UNDEFINED> instruction: 0x06120111
    16e4:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
    16e8:	00130119 	andseq	r0, r3, r9, lsl r1
    16ec:	00051f00 	andeq	r1, r5, r0, lsl #30
    16f0:	0b3a0803 	bleq	e83704 <_ram_limit+0xa6b704>
    16f4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    16f8:	00001802 	andeq	r1, r0, r2, lsl #16
    16fc:	03003420 	movweq	r3, #1056	; 0x420
    1700:	3b0b3a0e 	blcc	2cff40 <_stacks_size+0x2cf820>
    1704:	1c13490b 	ldcne	9, cr4, [r3], {11}
    1708:	0000000b 	andeq	r0, r0, fp
    170c:	25011101 	strcs	r1, [r1, #-257]	; 0x101
    1710:	030b130e 	movweq	r1, #45838	; 0xb30e
    1714:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xb0e
    1718:	10011117 	andne	r1, r1, r7, lsl r1
    171c:	02000017 	andeq	r0, r0, #23
    1720:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
    1724:	0b3b0b3a 	bleq	ec4414 <_ram_limit+0xaac414>
    1728:	00001349 	andeq	r1, r0, r9, asr #6
    172c:	0b002403 	bleq	a740 <_stacks_size+0xa020>
    1730:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    1734:	04000008 	streq	r0, [r0], #-8
    1738:	0b0b0024 	bleq	2c17d0 <_stacks_size+0x2c10b0>
    173c:	0e030b3e 	vmoveq.16	d3[0], r0
    1740:	16050000 	strne	r0, [r5], -r0
    1744:	3a0e0300 	bcc	38234c <_stacks_size+0x381c2c>
    1748:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    174c:	06000013 			; <UNDEFINED> instruction: 0x06000013
    1750:	0b0b0117 	bleq	2c1bb4 <_stacks_size+0x2c1494>
    1754:	0b3b0b3a 	bleq	ec4444 <_ram_limit+0xaac444>
    1758:	00001301 	andeq	r1, r0, r1, lsl #6
    175c:	03000d07 	movweq	r0, #3335	; 0xd07
    1760:	3b0b3a0e 	blcc	2cffa0 <_stacks_size+0x2cf880>
    1764:	0013490b 	andseq	r4, r3, fp, lsl #18
    1768:	01010800 	tsteq	r1, r0, lsl #16
    176c:	13011349 	movwne	r1, #4937	; 0x1349
    1770:	21090000 	mrscs	r0, (UNDEF: 9)
    1774:	2f134900 	svccs	0x00134900
    1778:	0a00000b 	beq	17ac <_stacks_size+0x108c>
    177c:	0b0b0113 	bleq	2c1bd0 <_stacks_size+0x2c14b0>
    1780:	0b3b0b3a 	bleq	ec4470 <_ram_limit+0xaac470>
    1784:	00001301 	andeq	r1, r0, r1, lsl #6
    1788:	03000d0b 	movweq	r0, #3339	; 0xd0b
    178c:	3b0b3a0e 	blcc	2cffcc <_stacks_size+0x2cf8ac>
    1790:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    1794:	0c00000b 	stceq	0, cr0, [r0], {11}
    1798:	0b0b000f 	bleq	2c17dc <_stacks_size+0x2c10bc>
    179c:	130d0000 	movwne	r0, #53248	; 0xd000
    17a0:	0b0e0301 	bleq	3823ac <_stacks_size+0x381c8c>
    17a4:	3b0b3a0b 	blcc	2cffd8 <_stacks_size+0x2cf8b8>
    17a8:	0013010b 	andseq	r0, r3, fp, lsl #2
    17ac:	000d0e00 	andeq	r0, sp, r0, lsl #28
    17b0:	0b3a0803 	bleq	e837c4 <_ram_limit+0xa6b7c4>
    17b4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    17b8:	00000b38 	andeq	r0, r0, r8, lsr fp
    17bc:	0b000f0f 	bleq	5400 <_stacks_size+0x4ce0>
    17c0:	0013490b 	andseq	r4, r3, fp, lsl #18
    17c4:	01131000 	tsteq	r3, r0
    17c8:	050b0e03 	streq	r0, [fp, #-3587]	; 0xe03
    17cc:	0b3b0b3a 	bleq	ec44bc <_ram_limit+0xaac4bc>
    17d0:	00001301 	andeq	r1, r0, r1, lsl #6
    17d4:	03000d11 	movweq	r0, #3345	; 0xd11
    17d8:	3b0b3a0e 	blcc	2d0018 <_stacks_size+0x2cf8f8>
    17dc:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    17e0:	12000005 	andne	r0, r0, #5
    17e4:	19270015 	stmdbne	r7!, {r0, r2, r4}
    17e8:	15130000 	ldrne	r0, [r3, #-0]
    17ec:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
    17f0:	00130113 	andseq	r0, r3, r3, lsl r1
    17f4:	00051400 	andeq	r1, r5, r0, lsl #8
    17f8:	00001349 	andeq	r1, r0, r9, asr #6
    17fc:	03011315 	movweq	r1, #4885	; 0x1315
    1800:	3a050b0e 	bcc	144440 <_stacks_size+0x143d20>
    1804:	01053b0b 	tsteq	r5, fp, lsl #22
    1808:	16000013 			; <UNDEFINED> instruction: 0x16000013
    180c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    1810:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    1814:	0b381349 	bleq	e06540 <_ram_limit+0x9ee540>
    1818:	0d170000 	ldceq	0, cr0, [r7, #-0]
    181c:	3a0e0300 	bcc	382424 <_stacks_size+0x381d04>
    1820:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    1824:	00053813 	andeq	r3, r5, r3, lsl r8
    1828:	00261800 	eoreq	r1, r6, r0, lsl #16
    182c:	00001349 	andeq	r1, r0, r9, asr #6
    1830:	03011319 	movweq	r1, #4889	; 0x1319
    1834:	3a0b0b0e 	bcc	2c4474 <_stacks_size+0x2c3d54>
    1838:	01053b0b 	tsteq	r5, fp, lsl #22
    183c:	1a000013 	bne	1890 <_stacks_size+0x1170>
    1840:	0b0b0113 	bleq	2c1c94 <_stacks_size+0x2c1574>
    1844:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
    1848:	00001301 	andeq	r1, r0, r1, lsl #6
    184c:	0b01171b 	bleq	474c0 <_stacks_size+0x46da0>
    1850:	3b0b3a0b 	blcc	2d0084 <_stacks_size+0x2cf964>
    1854:	00130105 	andseq	r0, r3, r5, lsl #2
    1858:	000d1c00 	andeq	r1, sp, r0, lsl #24
    185c:	0b3a0e03 	bleq	e85070 <_ram_limit+0xa6d070>
    1860:	1349053b 	movtne	r0, #38203	; 0x953b
    1864:	151d0000 	ldrne	r0, [sp, #-0]
    1868:	01192701 	tsteq	r9, r1, lsl #14
    186c:	1e000013 	mcrne	0, 0, r0, cr0, cr3, {0}
    1870:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
    1874:	0b3a0e03 	bleq	e85088 <_ram_limit+0xa6d088>
    1878:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
    187c:	01111349 	tsteq	r1, r9, asr #6
    1880:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
    1884:	01194297 			; <UNDEFINED> instruction: 0x01194297
    1888:	1f000013 	svcne	0x00000013
    188c:	08030005 	stmdaeq	r3, {r0, r2}
    1890:	0b3b0b3a 	bleq	ec4580 <_ram_limit+0xaac580>
    1894:	17021349 	strne	r1, [r2, -r9, asr #6]
    1898:	05200000 	streq	r0, [r0, #-0]!
    189c:	3a0e0300 	bcc	3824a4 <_stacks_size+0x381d84>
    18a0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    18a4:	00170213 	andseq	r0, r7, r3, lsl r2
    18a8:	00342100 	eorseq	r2, r4, r0, lsl #2
    18ac:	0b3a0803 	bleq	e838c0 <_ram_limit+0xa6b8c0>
    18b0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    18b4:	00001802 	andeq	r1, r0, r2, lsl #16
    18b8:	3f012e22 	svccc	0x00012e22
    18bc:	3a0e0319 	bcc	382528 <_stacks_size+0x381e08>
    18c0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
    18c4:	3c134919 	ldccc	9, cr4, [r3], {25}
    18c8:	00130119 	andseq	r0, r3, r9, lsl r1
    18cc:	82892300 	addhi	r2, r9, #0, 6
    18d0:	01110101 	tsteq	r1, r1, lsl #2
    18d4:	00001331 	andeq	r1, r0, r1, lsr r3
    18d8:	01828a24 	orreq	r8, r2, r4, lsr #20
    18dc:	91180200 	tstls	r8, r0, lsl #4
    18e0:	00001842 	andeq	r1, r0, r2, asr #16
    18e4:	03003425 	movweq	r3, #1061	; 0x425
    18e8:	3b0b3a0e 	blcc	2d0128 <_stacks_size+0x2cfa08>
    18ec:	3f13490b 	svccc	0x0013490b
    18f0:	00193c19 	andseq	r3, r9, r9, lsl ip
    18f4:	012e2600 	teqeq	lr, r0, lsl #12
    18f8:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
    18fc:	0b3b0b3a 	bleq	ec45ec <_ram_limit+0xaac5ec>
    1900:	13491927 	movtne	r1, #39207	; 0x9927
    1904:	0000193c 	andeq	r1, r0, ip, lsr r9
    1908:	01110100 	tsteq	r1, r0, lsl #2
    190c:	0b130e25 	bleq	4c51a8 <_ram_limit+0xad1a8>
    1910:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
    1914:	06120111 			; <UNDEFINED> instruction: 0x06120111
    1918:	00001710 	andeq	r1, r0, r0, lsl r7
    191c:	0b002402 	bleq	a92c <_stacks_size+0xa20c>
    1920:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    1924:	0300000e 	movweq	r0, #14
    1928:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
    192c:	0b3b0b3a 	bleq	ec461c <_ram_limit+0xaac61c>
    1930:	00001349 	andeq	r1, r0, r9, asr #6
    1934:	0b002404 	bleq	a94c <_stacks_size+0xa22c>
    1938:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    193c:	05000008 	streq	r0, [r0, #-8]
    1940:	0b0b000f 	bleq	2c1984 <_stacks_size+0x2c1264>
    1944:	0f060000 	svceq	0x00060000
    1948:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
    194c:	07000013 	smladeq	r0, r3, r0, r0
    1950:	13490026 	movtne	r0, #36902	; 0x9026
    1954:	13080000 	movwne	r0, #32768	; 0x8000
    1958:	0b0e0301 	bleq	382564 <_stacks_size+0x381e44>
    195c:	3b0b3a0b 	blcc	2d0190 <_stacks_size+0x2cfa70>
    1960:	0013010b 	andseq	r0, r3, fp, lsl #2
    1964:	000d0900 	andeq	r0, sp, r0, lsl #18
    1968:	0b3a0e03 	bleq	e8517c <_ram_limit+0xa6d17c>
    196c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    1970:	00000b38 	andeq	r0, r0, r8, lsr fp
    1974:	4901010a 	stmdbmi	r1, {r1, r3, r8}
    1978:	00130113 	andseq	r0, r3, r3, lsl r1
    197c:	00210b00 	eoreq	r0, r1, r0, lsl #22
    1980:	0b2f1349 	bleq	bc66ac <_ram_limit+0x7ae6ac>
    1984:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
    1988:	03193f01 	tsteq	r9, #1, 30
    198c:	3b0b3a0e 	blcc	2d01cc <_stacks_size+0x2cfaac>
    1990:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
    1994:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
    1998:	96184006 	ldrls	r4, [r8], -r6
    199c:	13011942 	movwne	r1, #6466	; 0x1942
    19a0:	050d0000 	streq	r0, [sp, #-0]
    19a4:	3a0e0300 	bcc	3825ac <_stacks_size+0x381e8c>
    19a8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    19ac:	00180213 	andseq	r0, r8, r3, lsl r2
    19b0:	00340e00 	eorseq	r0, r4, r0, lsl #28
    19b4:	0b3a0e03 	bleq	e851c8 <_ram_limit+0xa6d1c8>
    19b8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    19bc:	00001802 	andeq	r1, r0, r2, lsl #16
    19c0:	3f012e0f 	svccc	0x00012e0f
    19c4:	3a0e0319 	bcc	382630 <_stacks_size+0x381f10>
    19c8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
    19cc:	11134919 	tstne	r3, r9, lsl r9
    19d0:	40061201 	andmi	r1, r6, r1, lsl #4
    19d4:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
    19d8:	00001301 	andeq	r1, r0, r1, lsl #6
    19dc:	03000510 	movweq	r0, #1296	; 0x510
    19e0:	3b0b3a08 	blcc	2d0208 <_stacks_size+0x2cfae8>
    19e4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    19e8:	11000018 	tstne	r0, r8, lsl r0
    19ec:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    19f0:	0b3b0b3a 	bleq	ec46e0 <_ram_limit+0xaac6e0>
    19f4:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
    19f8:	Address 0x00000000000019f8 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00400130 	subeq	r0, r0, r0, lsr r1
  14:	000001c4 	andeq	r0, r0, r4, asr #3
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	02340002 	eorseq	r0, r4, #2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	004002f4 	strdeq	r0, [r0], #-36	; 0xffffffdc
  34:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	03470002 	movteq	r0, #28674	; 0x7002
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	004003e4 	subeq	r0, r0, r4, ror #7
  54:	000004d4 	ldrdeq	r0, [r0], -r4
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	09170002 	ldmdbeq	r7, {r1}
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	004008b8 	strheq	r0, [r0], #-136	; 0xffffff78
  74:	00000194 	muleq	r0, r4, r1
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	0b6d0002 	bleq	1b40094 <_ram_limit+0x1728094>
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	00400a4c 	subeq	r0, r0, ip, asr #20
  94:	00000130 	andeq	r0, r0, r0, lsr r1
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	0e150002 	cdpeq	0, 1, cr0, cr5, cr2, {0}
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00400b7c 	subeq	r0, r0, ip, ror fp
  b4:	00000188 	andeq	r0, r0, r8, lsl #3
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	14aa0002 	strtne	r0, [sl], #2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00400ec4 	subeq	r0, r0, r4, asr #29
  d4:	00000010 	andeq	r0, r0, r0, lsl r0
	...
  e0:	00000014 	andeq	r0, r0, r4, lsl r0
  e4:	1d330002 	ldcne	0, cr0, [r3, #-8]!
  e8:	00040000 	andeq	r0, r4, r0
	...
  f8:	0000001c 	andeq	r0, r0, ip, lsl r0
  fc:	25c70002 	strbcs	r0, [r7, #2]
 100:	00040000 	andeq	r0, r4, r0
 104:	00000000 	andeq	r0, r0, r0
 108:	00400ed4 	ldrdeq	r0, [r0], #-228	; 0xffffff1c
 10c:	000000b4 	strheq	r0, [r0], -r4
	...
 118:	0000001c 	andeq	r0, r0, ip, lsl r0
 11c:	26da0002 	ldrbcs	r0, [sl], r2
 120:	00040000 	andeq	r0, r4, r0
 124:	00000000 	andeq	r0, r0, r0
 128:	00400f88 	subeq	r0, r0, r8, lsl #31
 12c:	00000060 	andeq	r0, r0, r0, rrx
	...
 138:	0000001c 	andeq	r0, r0, ip, lsl r0
 13c:	278f0002 	strcs	r0, [pc, r2]
 140:	00040000 	andeq	r0, r4, r0
 144:	00000000 	andeq	r0, r0, r0
 148:	00400fe8 	subeq	r0, r0, r8, ror #31
 14c:	00000040 	andeq	r0, r0, r0, asr #32
	...
 158:	0000001c 	andeq	r0, r0, ip, lsl r0
 15c:	30b40002 	adcscc	r0, r4, r2
 160:	00040000 	andeq	r0, r4, r0
 164:	00000000 	andeq	r0, r0, r0
 168:	00401028 	subeq	r1, r0, r8, lsr #32
 16c:	00000044 	andeq	r0, r0, r4, asr #32
	...
 178:	00000024 	andeq	r0, r0, r4, lsr #32
 17c:	39c10002 	stmibcc	r1, {r1}^
 180:	00040000 	andeq	r0, r4, r0
 184:	00000000 	andeq	r0, r0, r0
 188:	0040106c 	subeq	r1, r0, ip, rrx
 18c:	0000002c 	andeq	r0, r0, ip, lsr #32
 190:	00401098 	umaaleq	r1, r0, r8, r0
 194:	00000108 	andeq	r0, r0, r8, lsl #2
	...
 1a0:	00000024 	andeq	r0, r0, r4, lsr #32
 1a4:	43ba0002 			; <UNDEFINED> instruction: 0x43ba0002
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	004011a0 	subeq	r1, r0, r0, lsr #3
 1b4:	00000100 	andeq	r0, r0, r0, lsl #2
 1b8:	004012a0 	subeq	r1, r0, r0, lsr #5
 1bc:	0000026c 	andeq	r0, r0, ip, ror #4
	...
 1c8:	0000001c 	andeq	r0, r0, ip, lsl r0
 1cc:	4fc00002 	svcmi	0x00c00002
 1d0:	00040000 	andeq	r0, r4, r0
 1d4:	00000000 	andeq	r0, r0, r0
 1d8:	0040150c 	subeq	r1, r0, ip, lsl #10
 1dc:	0000074c 	andeq	r0, r0, ip, asr #14
	...
 1e8:	00000024 	andeq	r0, r0, r4, lsr #32
 1ec:	5d410002 	stclpl	0, cr0, [r1, #-8]
 1f0:	00040000 	andeq	r0, r4, r0
 1f4:	00000000 	andeq	r0, r0, r0
 1f8:	00401c58 	subeq	r1, r0, r8, asr ip
 1fc:	00000004 	andeq	r0, r0, r4
 200:	00401c5c 	subeq	r1, r0, ip, asr ip
 204:	00000004 	andeq	r0, r0, r4
	...
 210:	0000001c 	andeq	r0, r0, ip, lsl r0
 214:	65f50002 	ldrbvs	r0, [r5, #2]!
 218:	00040000 	andeq	r0, r4, r0
 21c:	00000000 	andeq	r0, r0, r0
 220:	00401c60 	subeq	r1, r0, r0, ror #24
 224:	00000044 	andeq	r0, r0, r4, asr #32
	...
 230:	0000001c 	andeq	r0, r0, ip, lsl r0
 234:	6ee90002 	cdpvs	0, 14, cr0, cr9, cr2, {0}
 238:	00040000 	andeq	r0, r4, r0
 23c:	00000000 	andeq	r0, r0, r0
 240:	00400d04 	subeq	r0, r0, r4, lsl #26
 244:	000001c0 	andeq	r0, r0, r0, asr #3
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	000000cb 	andeq	r0, r0, fp, asr #1
       4:	006e0002 	rsbeq	r0, lr, r2
       8:	01020000 	mrseq	r0, (UNDEF: 2)
       c:	000d0efb 	strdeq	r0, [sp], -fp
      10:	01010101 	tsteq	r1, r1, lsl #2
      14:	01000000 	mrseq	r0, (UNDEF: 0)
      18:	2f010000 	svccs	0x00010000
      1c:	2f727375 	svccs	0x00727375
      20:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
      24:	2f656475 	svccs	0x00656475
      28:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
      2c:	6d2f6269 	sfmvs	f6, 4, [pc, #-420]!	; fffffe90 <_STACK_FILLER+0x21523fa1>
      30:	69686361 	stmdbvs	r8!, {r0, r5, r6, r8, r9, sp, lr}^
      34:	2f00656e 	svccs	0x0000656e
      38:	2f727375 	svccs	0x00727375
      3c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
      40:	2f656475 	svccs	0x00656475
      44:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
      48:	00006269 	andeq	r6, r0, r9, ror #4
      4c:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416	; 0xfffffe60
      50:	00632e6f 	rsbeq	r2, r3, pc, ror #28
      54:	5f000000 	svcpl	0x00000000
      58:	61666564 	cmnvs	r6, r4, ror #10
      5c:	5f746c75 	svcpl	0x00746c75
      60:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
      64:	00682e73 	rsbeq	r2, r8, r3, ror lr
      68:	73000001 	movwvc	r0, #1
      6c:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
      70:	00682e74 	rsbeq	r2, r8, r4, ror lr
      74:	00000002 	andeq	r0, r0, r2
      78:	30020500 	andcc	r0, r2, r0, lsl #10
      7c:	03004001 	movweq	r4, #1
      80:	4c0100c3 	stcmi	0, cr0, [r1], {195}	; 0xc3
      84:	039f9fa0 	orrseq	r9, pc, #160, 30	; 0x280
      88:	67848209 	strvs	r8, [r4, r9, lsl #4]
      8c:	84820903 	strhi	r0, [r2], #2307	; 0x903
      90:	00688967 	rsbeq	r8, r8, r7, ror #18
      94:	06020402 	streq	r0, [r2], -r2, lsl #8
      98:	04020066 	streq	r0, [r2], #-102	; 0x66
      9c:	83066601 	movwhi	r6, #26113	; 0x6601
      a0:	67d74c69 	ldrbvs	r4, [r7, r9, ror #24]
      a4:	6967d784 	stmdbvs	r7!, {r2, r7, r8, r9, sl, ip, lr, pc}^
      a8:	892f4ba4 	stmdbhi	pc!, {r2, r5, r7, r8, r9, fp, lr}	; <UNPREDICTABLE>
      ac:	01040200 	mrseq	r0, R12_usr
      b0:	04020015 	streq	r0, [r2], #-21
      b4:	02002f01 	andeq	r2, r0, #1, 30
      b8:	00830104 	addeq	r0, r3, r4, lsl #2
      bc:	2f010402 	svccs	0x00010402
      c0:	01040200 	mrseq	r0, R12_usr
      c4:	04020083 	streq	r0, [r2], #-131	; 0x83
      c8:	04022f01 	streq	r2, [r2], #-3841	; 0xf01
      cc:	65010100 	strvs	r0, [r1, #-256]	; 0x100
      d0:	02000000 	andeq	r0, r0, #0
      d4:	00003900 	andeq	r3, r0, r0, lsl #18
      d8:	fb010200 	blx	408e2 <_stacks_size+0x401c2>
      dc:	01000d0e 	tsteq	r0, lr, lsl #26
      e0:	00010101 	andeq	r0, r1, r1, lsl #2
      e4:	00010000 	andeq	r0, r1, r0
      e8:	61680100 	cmnvs	r8, r0, lsl #2
      ec:	2f2e006c 	svccs	0x002e006c
      f0:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
      f4:	00656475 	rsbeq	r6, r5, r5, ror r4
      f8:	70736200 	rsbsvc	r6, r3, r0, lsl #4
      fc:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
     100:	00632e74 	rsbeq	r2, r3, r4, ror lr
     104:	75000001 	strvc	r0, [r0, #-1]
     108:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
     10c:	00020068 	andeq	r0, r2, r8, rrx
     110:	05000000 	streq	r0, [r0, #-0]
     114:	4002f402 	andmi	pc, r2, r2, lsl #8
     118:	010f0300 	mrseq	r0, SP_hyp
     11c:	032f314c 	teqeq	pc, #76, 2
     120:	834c6609 	movthi	r6, #50697	; 0xc609
     124:	ba0e0383 	blt	380f38 <_stacks_size+0x380818>
     128:	9f9f9fbc 	svcls	0x009f9fbc
     12c:	4c820b03 	fstmiaxmi	r2, {d0}	;@ Deprecated
     130:	02843431 	addeq	r3, r4, #822083584	; 0x31000000
     134:	01010008 	tsteq	r1, r8
     138:	00000161 	andeq	r0, r0, r1, ror #2
     13c:	00ef0002 	rsceq	r0, pc, r2
     140:	01020000 	mrseq	r0, (UNDEF: 2)
     144:	000d0efb 	strdeq	r0, [sp], -fp
     148:	01010101 	tsteq	r1, r1, lsl #2
     14c:	01000000 	mrseq	r0, (UNDEF: 0)
     150:	68010000 	stmdavs	r1, {}	; <UNPREDICTABLE>
     154:	2f006c61 	svccs	0x00006c61
     158:	2f727375 	svccs	0x00727375
     15c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     160:	2f656475 	svccs	0x00656475
     164:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     168:	6d2f6269 	sfmvs	f6, 4, [pc, #-420]!	; ffffffcc <_STACK_FILLER+0x215240dd>
     16c:	69686361 	stmdbvs	r8!, {r0, r5, r6, r8, r9, sp, lr}^
     170:	2f00656e 	svccs	0x0000656e
     174:	2f727375 	svccs	0x00727375
     178:	2f62696c 	svccs	0x0062696c
     17c:	2f636367 	svccs	0x00636367
     180:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     184:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xf6e
     188:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     18c:	2e342f69 	cdpcs	15, 3, cr2, cr4, cr9, {3}
     190:	6e692f38 	mcrvs	15, 3, r2, cr9, cr8, {1}
     194:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
     198:	752f0065 	strvc	r0, [pc, #-101]!	; 13b <_fiq_stack_size+0x3b>
     19c:	692f7273 	stmdbvs	pc!, {r0, r1, r4, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
     1a0:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     1a4:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
     1a8:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     1ac:	79732f62 	ldmdbvc	r3!, {r1, r5, r6, r8, r9, sl, fp, sp}^
     1b0:	752f0073 	strvc	r0, [pc, #-115]!	; 145 <_fiq_stack_size+0x45>
     1b4:	692f7273 	stmdbvs	pc!, {r0, r1, r4, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
     1b8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     1bc:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
     1c0:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     1c4:	2f2e0062 	svccs	0x002e0062
     1c8:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     1cc:	00656475 	rsbeq	r6, r5, r5, ror r4
     1d0:	76656400 	strbtvc	r6, [r5], -r0, lsl #8
     1d4:	0100632e 	tsteq	r0, lr, lsr #6
     1d8:	645f0000 	ldrbvs	r0, [pc], #-0	; 1e0 <_fiq_stack_size+0xe0>
     1dc:	75616665 	strbvc	r6, [r1, #-1637]!	; 0x665
     1e0:	745f746c 	ldrbvc	r7, [pc], #-1132	; 1e8 <_fiq_stack_size+0xe8>
     1e4:	73657079 	cmnvc	r5, #121	; 0x79
     1e8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     1ec:	74730000 	ldrbtvc	r0, [r3], #-0
     1f0:	66656464 	strbtvs	r6, [r5], -r4, ror #8
     1f4:	0300682e 	movweq	r6, #2094	; 0x82e
     1f8:	745f0000 	ldrbvc	r0, [pc], #-0	; 200 <_fiq_stack_size+0x100>
     1fc:	73657079 	cmnvc	r5, #121	; 0x79
     200:	0400682e 	streq	r6, [r0], #-2094	; 0x82e
     204:	79740000 	ldmdbvc	r4!, {}^	; <UNPREDICTABLE>
     208:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
     20c:	00040068 	andeq	r0, r4, r8, rrx
     210:	61747300 	cmnvs	r4, r0, lsl #6
     214:	00682e74 	rsbeq	r2, r8, r4, ror lr
     218:	73000004 	movwvc	r0, #4
     21c:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
     220:	00682e74 	rsbeq	r2, r8, r4, ror lr
     224:	64000005 	strvs	r0, [r0], #-5
     228:	682e7665 	stmdavs	lr!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}
     22c:	00000600 	andeq	r0, r0, r0, lsl #12
     230:	02050000 	andeq	r0, r5, #0
     234:	004003e4 	subeq	r0, r0, r4, ror #7
     238:	0100d303 	tsteq	r0, r3, lsl #6
     23c:	67844bd7 			; <UNDEFINED> instruction: 0x67844bd7
     240:	082108a0 	stmdaeq	r1!, {r5, r7, fp}
     244:	08590821 	ldmdaeq	r9, {r0, r5, fp}^
     248:	08590859 	ldmdaeq	r9, {r0, r3, r4, r6, fp}^
     24c:	08590859 	ldmdaeq	r9, {r0, r3, r4, r6, fp}^
     250:	2f5b0859 	svccs	0x005b0859
     254:	84ba0903 	ldrthi	r0, [sl], #2307	; 0x903
     258:	c90867a1 	stmdbgt	r8, {r0, r5, r7, r8, r9, sl, sp, lr}
     25c:	040200f0 	streq	r0, [r2], #-240	; 0xf0
     260:	06660601 	strbteq	r0, [r6], -r1, lsl #12
     264:	09032fa2 	stmdbeq	r3, {r1, r5, r7, r8, r9, sl, fp, sp}
     268:	036783ba 	cmneq	r7, #-402653182	; 0xe8000002
     26c:	d7839e09 	strle	r9, [r3, r9, lsl #28]
     270:	a19e0c03 	orrsge	r0, lr, r3, lsl #24
     274:	f383a069 	vmla.i<illegal width 8>	q5, <illegal reg q1.5>, d1[6]
     278:	004a7903 	subeq	r7, sl, r3, lsl #18
     27c:	06010402 	streq	r0, [r1], -r2, lsl #8
     280:	0c030666 	stceq	6, cr0, [r3], {102}	; 0x66
     284:	032f8366 	teqeq	pc, #-1744830463	; 0x98000001
     288:	68839e0a 	stmvs	r3, {r1, r3, r9, sl, fp, ip, pc}
     28c:	0e03f483 	cdpeq	4, 0, cr15, cr3, cr3, {4}
     290:	68a0d982 	stmiavs	r0!, {r1, r7, r8, fp, ip, lr, pc}
     294:	68ae08bb 	stmiavs	lr!, {r0, r1, r3, r4, r5, r7, fp}
     298:	01000802 	tsteq	r0, r2, lsl #16
     29c:	0000cc01 	andeq	ip, r0, r1, lsl #24
     2a0:	87000200 	strhi	r0, [r0, -r0, lsl #4]
     2a4:	02000000 	andeq	r0, r0, #0
     2a8:	0d0efb01 	vstreq	d15, [lr, #-4]
     2ac:	01010100 	mrseq	r0, (UNDEF: 17)
     2b0:	00000001 	andeq	r0, r0, r1
     2b4:	01000001 	tsteq	r0, r1
     2b8:	006c6168 	rsbeq	r6, ip, r8, ror #2
     2bc:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     2c0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     2c4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     2c8:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     2cc:	2f62696c 	svccs	0x0062696c
     2d0:	6863616d 	stmdavs	r3!, {r0, r2, r3, r5, r6, r8, sp, lr}^
     2d4:	00656e69 	rsbeq	r6, r5, r9, ror #28
     2d8:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     2dc:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     2e0:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     2e4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     2e8:	0062696c 	rsbeq	r6, r2, ip, ror #18
     2ec:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
     2f0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
     2f4:	65000065 	strvs	r0, [r0, #-101]	; 0x65
     2f8:	70656378 	rsbvc	r6, r5, r8, ror r3
     2fc:	0100632e 	tsteq	r0, lr, lsr #6
     300:	645f0000 	ldrbvs	r0, [pc], #-0	; 308 <_fiq_stack_size+0x208>
     304:	75616665 	strbvc	r6, [r1, #-1637]!	; 0x665
     308:	745f746c 	ldrbvc	r7, [pc], #-1132	; 310 <_fiq_stack_size+0x210>
     30c:	73657079 	cmnvc	r5, #121	; 0x79
     310:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     314:	74730000 	ldrbtvc	r0, [r3], #-0
     318:	746e6964 	strbtvc	r6, [lr], #-2404	; 0x964
     31c:	0300682e 	movweq	r6, #2094	; 0x82e
     320:	78650000 	stmdavc	r5!, {}^	; <UNPREDICTABLE>
     324:	2e706563 	cdpcs	5, 7, cr6, cr0, cr3, {3}
     328:	00040068 	andeq	r0, r4, r8, rrx
     32c:	05000000 	streq	r0, [r0, #-0]
     330:	4008b802 	andmi	fp, r8, r2, lsl #16
     334:	01140300 	tsteq	r4, r0, lsl #6
     338:	4b84674b 	blmi	fe11a06c <_STACK_FILLER+0x1f63e17d>
     33c:	9e0e032f 	cdpls	3, 0, cr0, cr14, cr15, {1}
     340:	0c032f4c 	stceq	15, cr2, [r3], {76}	; 0x4c
     344:	032f4c82 	teqeq	pc, #33280	; 0x8200
     348:	2f4c820c 	svccs	0x004c820c
     34c:	84820e03 	strhi	r0, [r2], #3587	; 0xe03
     350:	84660d03 	strbthi	r0, [r6], #-3331	; 0xd03
     354:	84660c03 	strbthi	r0, [r6], #-3075	; 0xc03
     358:	bb660903 	bllt	198276c <_ram_limit+0x156a76c>
     35c:	9f8a8367 	svcls	0x008a8367
     360:	2f84674c 	svccs	0x0084674c
     364:	4c9e0b03 	fldmiaxmi	lr, {d0}	;@ Deprecated
     368:	01000602 	tsteq	r0, r2, lsl #12
     36c:	00007301 	andeq	r7, r0, r1, lsl #6
     370:	37000200 	strcc	r0, [r0, -r0, lsl #4]
     374:	02000000 	andeq	r0, r0, #0
     378:	0d0efb01 	vstreq	d15, [lr, #-4]
     37c:	01010100 	mrseq	r0, (UNDEF: 17)
     380:	00000001 	andeq	r0, r0, r1
     384:	01000001 	tsteq	r0, r1
     388:	76697264 	strbtvc	r7, [r9], -r4, ror #4
     38c:	00737265 	rsbseq	r7, r3, r5, ror #4
     390:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
     394:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
     398:	69000065 	stmdbvs	r0, {r0, r2, r5, r6}
     39c:	632e6374 	teqvs	lr, #116, 6	; 0xd0000001
     3a0:	00000100 	andeq	r0, r0, r0, lsl #2
     3a4:	2e637469 	cdpcs	4, 6, cr7, cr3, cr9, {3}
     3a8:	00020068 	andeq	r0, r2, r8, rrx
     3ac:	05000000 	streq	r0, [r0, #-0]
     3b0:	400a4c02 	andmi	r4, sl, r2, lsl #24
     3b4:	01210300 	teqeq	r1, r0, lsl #6
     3b8:	6609034c 	strvs	r0, [r9], -ip, asr #6
     3bc:	6609034c 	strvs	r0, [r9], -ip, asr #6
     3c0:	660a034c 	strvs	r0, [sl], -ip, asr #6
     3c4:	660a03bc 			; <UNDEFINED> instruction: 0x660a03bc
     3c8:	660903d8 			; <UNDEFINED> instruction: 0x660903d8
     3cc:	660903a0 	strvs	r0, [r9], -r0, lsr #7
     3d0:	660903a0 	strvs	r0, [r9], -r0, lsr #7
     3d4:	660903a0 	strvs	r0, [r9], -r0, lsr #7
     3d8:	660b03a0 	strvs	r0, [fp], -r0, lsr #7
     3dc:	024c6e4c 	subeq	r6, ip, #76, 28	; 0x4c0
     3e0:	01010006 	tsteq	r1, r6
     3e4:	00000152 	andeq	r0, r0, r2, asr r1
     3e8:	01130002 	tsteq	r3, r2
     3ec:	01020000 	mrseq	r0, (UNDEF: 2)
     3f0:	000d0efb 	strdeq	r0, [sp], -fp
     3f4:	01010101 	tsteq	r1, r1, lsl #2
     3f8:	01000000 	mrseq	r0, (UNDEF: 0)
     3fc:	64010000 	strvs	r0, [r1], #-0
     400:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0x972
     404:	2f007372 	svccs	0x00007372
     408:	2f727375 	svccs	0x00727375
     40c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     410:	2f656475 	svccs	0x00656475
     414:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     418:	6d2f6269 	sfmvs	f6, 4, [pc, #-420]!	; 27c <_fiq_stack_size+0x17c>
     41c:	69686361 	stmdbvs	r8!, {r0, r5, r6, r8, r9, sp, lr}^
     420:	2f00656e 	svccs	0x0000656e
     424:	2f727375 	svccs	0x00727375
     428:	2f62696c 	svccs	0x0062696c
     42c:	2f636367 	svccs	0x00636367
     430:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     434:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xf6e
     438:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     43c:	2e342f69 	cdpcs	15, 3, cr2, cr4, cr9, {3}
     440:	6e692f38 	mcrvs	15, 3, r2, cr9, cr8, {1}
     444:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
     448:	752f0065 	strvc	r0, [pc, #-101]!	; 3eb <_fiq_stack_size+0x2eb>
     44c:	692f7273 	stmdbvs	pc!, {r0, r1, r4, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
     450:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     454:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
     458:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     45c:	79732f62 	ldmdbvc	r3!, {r1, r5, r6, r8, r9, sl, fp, sp}^
     460:	752f0073 	strvc	r0, [pc, #-115]!	; 3f5 <_fiq_stack_size+0x2f5>
     464:	692f7273 	stmdbvs	pc!, {r0, r1, r4, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
     468:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     46c:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
     470:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     474:	2f2e0062 	svccs	0x002e0062
     478:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     47c:	00656475 	rsbeq	r6, r5, r5, ror r4
     480:	72617500 	rsbvc	r7, r1, #0, 10
     484:	00632e74 	rsbeq	r2, r3, r4, ror lr
     488:	5f000001 	svcpl	0x00000001
     48c:	61666564 	cmnvs	r6, r4, ror #10
     490:	5f746c75 	svcpl	0x00746c75
     494:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
     498:	00682e73 	rsbeq	r2, r8, r3, ror lr
     49c:	73000002 	movwvc	r0, #2
     4a0:	65646474 	strbvs	r6, [r4, #-1140]!	; 0x474
     4a4:	00682e66 	rsbeq	r2, r8, r6, ror #28
     4a8:	5f000003 	svcpl	0x00000003
     4ac:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
     4b0:	00682e73 	rsbeq	r2, r8, r3, ror lr
     4b4:	74000004 	strvc	r0, [r0], #-4
     4b8:	73657079 	cmnvc	r5, #121	; 0x79
     4bc:	0400682e 	streq	r6, [r0], #-2094	; 0x82e
     4c0:	74730000 	ldrbtvc	r0, [r3], #-0
     4c4:	746e6964 	strbtvc	r6, [lr], #-2404	; 0x964
     4c8:	0500682e 	streq	r6, [r0, #-2094]	; 0x82e
     4cc:	74690000 	strbtvc	r0, [r9], #-0
     4d0:	00682e63 	rsbeq	r2, r8, r3, ror #28
     4d4:	67000006 	strvs	r0, [r0, -r6]
     4d8:	2e6f6970 	mcrcs	9, 3, r6, cr15, cr0, {3}
     4dc:	00060068 	andeq	r0, r6, r8, rrx
     4e0:	72617500 	rsbvc	r7, r1, #0, 10
     4e4:	00682e74 	rsbeq	r2, r8, r4, ror lr
     4e8:	63000006 	movwvs	r0, #6
     4ec:	75637269 	strbvc	r7, [r3, #-617]!	; 0x269
     4f0:	5f72616c 	svcpl	0x0072616c
     4f4:	66667562 	strbtvs	r7, [r6], -r2, ror #10
     4f8:	682e7265 	stmdavs	lr!, {r0, r2, r5, r6, r9, ip, sp, lr}
     4fc:	00000600 	andeq	r0, r0, r0, lsl #12
     500:	02050000 	andeq	r0, r5, #0
     504:	00400b7c 	subeq	r0, r0, ip, ror fp
     508:	0100d403 	tsteq	r0, r3, lsl #8
     50c:	0b032fd9 	bleq	cc478 <_stacks_size+0xcbd58>
     510:	0b03d882 	bleq	f6720 <_stacks_size+0xf6000>
     514:	032fa066 	teqeq	pc, #102	; 0x66
     518:	2fbc820f 	svccs	0x00bc820f
     51c:	bc820f03 	stclt	15, cr0, [r2], {3}
     520:	820c032f 	andhi	r0, ip, #-1140850688	; 0xbc000000
     524:	0c032fbc 	stceq	15, cr2, [r3], {188}	; 0xbc
     528:	032fbc82 	teqeq	pc, #33280	; 0x8200
     52c:	6ea0820c 	cdpvs	2, 10, cr8, cr0, cr12, {0}
     530:	4b6e4b4b 	blmi	1b93264 <_ram_limit+0x177b264>
     534:	0006024b 	andeq	r0, r6, fp, asr #4
     538:	00fc0101 	rscseq	r0, ip, r1, lsl #2
     53c:	00020000 	andeq	r0, r2, r0
     540:	000000e5 	andeq	r0, r0, r5, ror #1
     544:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     548:	0101000d 	tsteq	r1, sp
     54c:	00000101 	andeq	r0, r0, r1, lsl #2
     550:	00000100 	andeq	r0, r0, r0, lsl #2
     554:	2f2e2e01 	svccs	0x002e2e01
     558:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     55c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     560:	2f2e2e2f 	svccs	0x002e2e2f
     564:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     568:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 3cc <_fiq_stack_size+0x2cc>
     56c:	2f636269 	svccs	0x00636269
     570:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
     574:	622f006f 	eorvs	r0, pc, #111	; 0x6f
     578:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
     57c:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     580:	2f64646c 	svccs	0x0064646c
     584:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     588:	322d6269 	eorcc	r6, sp, #-1879048186	; 0x90000006
     58c:	302e312e 	eorcc	r3, lr, lr, lsr #2
     590:	7469672b 	strbtvc	r6, [r9], #-1835	; 0x72b
     594:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
     598:	38313830 	ldmdacc	r1!, {r4, r5, fp, ip, sp}
     59c:	3861312e 	stmdacc	r1!, {r1, r2, r3, r5, r8, ip, sp}^
     5a0:	62333233 	eorsvs	r3, r3, #805306371	; 0x30000003
     5a4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     5a8:	2f62696c 	svccs	0x0062696c
     5ac:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     5b0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     5b4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     5b8:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
     5bc:	73752f00 	cmnvc	r5, #0, 30
     5c0:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
     5c4:	63672f62 	cmnvs	r7, #392	; 0x188
     5c8:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
     5cc:	6f6e2d6d 	svcvs	0x006e2d6d
     5d0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0x56e
     5d4:	2f696261 	svccs	0x00696261
     5d8:	2f382e34 	svccs	0x00382e34
     5dc:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     5e0:	00656475 	rsbeq	r6, r5, r5, ror r4
     5e4:	72726500 	rsbsvc	r6, r2, #0, 10
     5e8:	632e6f6e 	teqvs	lr, #440	; 0x1b8
     5ec:	00000100 	andeq	r0, r0, r0, lsl #2
     5f0:	6b636f6c 	blvs	18dc3a8 <_ram_limit+0x14c43a8>
     5f4:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     5f8:	745f0000 	ldrbvc	r0, [pc], #-0	; 600 <_sys_stack_size+0x200>
     5fc:	73657079 	cmnvc	r5, #121	; 0x79
     600:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     604:	74730000 	ldrbtvc	r0, [r3], #-0
     608:	66656464 	strbtvs	r6, [r5], -r4, ror #8
     60c:	0300682e 	movweq	r6, #2094	; 0x82e
     610:	65720000 	ldrbvs	r0, [r2, #-0]!
     614:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
     618:	00020068 	andeq	r0, r2, r8, rrx
     61c:	72726500 	rsbsvc	r6, r2, #0, 10
     620:	682e6f6e 	stmdavs	lr!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}
     624:	00000200 	andeq	r0, r0, r0, lsl #4
     628:	02050000 	andeq	r0, r5, #0
     62c:	00400ec4 	subeq	r0, r0, r4, asr #29
     630:	13010b03 	movwne	r0, #6915	; 0x1b03
     634:	0006022f 	andeq	r0, r6, pc, lsr #4
     638:	00e10101 	rsceq	r0, r1, r1, lsl #2
     63c:	00020000 	andeq	r0, r2, r0
     640:	000000db 	ldrdeq	r0, [r0], -fp
     644:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     648:	0101000d 	tsteq	r1, sp
     64c:	00000101 	andeq	r0, r0, r1, lsl #2
     650:	00000100 	andeq	r0, r0, r0, lsl #2
     654:	75622f01 	strbvc	r2, [r2, #-3841]!	; 0xf01
     658:	2f646c69 	svccs	0x00646c69
     65c:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     660:	6e2f6464 	cdpvs	4, 2, cr6, cr15, cr4, {3}
     664:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     668:	2e322d62 	cdpcs	13, 3, cr2, cr2, cr2, {3}
     66c:	2b302e31 	blcs	c0bf38 <_ram_limit+0x7f3f38>
     670:	32746967 	rsbscc	r6, r4, #1687552	; 0x19c000
     674:	30343130 	eorscc	r3, r4, r0, lsr r1
     678:	2e383138 	mrccs	1, 1, r3, cr8, cr8, {1}
     67c:	33386131 	teqcc	r8, #1073741836	; 0x4000000c
     680:	2f623332 	svccs	0x00623332
     684:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     688:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 4ec <_sys_stack_size+0xec>
     68c:	2f636269 	svccs	0x00636269
     690:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     694:	2f656475 	svccs	0x00656475
     698:	00737973 	rsbseq	r7, r3, r3, ror r9
     69c:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     6a0:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     6a4:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
     6a8:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     6ac:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     6b0:	61652d65 	cmnvs	r5, r5, ror #26
     6b4:	342f6962 	strtcc	r6, [pc], #-2402	; 6bc <_sys_stack_size+0x2bc>
     6b8:	692f382e 	stmdbvs	pc!, {r1, r2, r3, r5, fp, ip, sp}	; <UNPREDICTABLE>
     6bc:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     6c0:	2e006564 	cfsh32cs	mvfx6, mvfx0, #52
     6c4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     6c8:	2f2e2e2f 	svccs	0x002e2e2f
     6cc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     6d0:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
     6d4:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     6d8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     6dc:	65722f63 	ldrbvs	r2, [r2, #-3939]!	; 0xf63
     6e0:	00746e65 	rsbseq	r6, r4, r5, ror #28
     6e4:	636f6c00 	cmnvs	pc, #0, 24
     6e8:	00682e6b 	rsbeq	r2, r8, fp, ror #28
     6ec:	5f000001 	svcpl	0x00000001
     6f0:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
     6f4:	00682e73 	rsbeq	r2, r8, r3, ror lr
     6f8:	73000001 	movwvc	r0, #1
     6fc:	65646474 	strbvs	r6, [r4, #-1140]!	; 0x474
     700:	00682e66 	rsbeq	r2, r8, r6, ror #28
     704:	72000002 	andvc	r0, r0, #2
     708:	746e6565 	strbtvc	r6, [lr], #-1381	; 0x565
     70c:	0100682e 	tsteq	r0, lr, lsr #16
     710:	6d690000 	stclvs	0, cr0, [r9, #-0]
     714:	65727570 	ldrbvs	r7, [r2, #-1392]!	; 0x570
     718:	0300632e 	movweq	r6, #814	; 0x32e
     71c:	02000000 	andeq	r0, r0, #0
     720:	02000001 	andeq	r0, r0, #1
     724:	0000c300 	andeq	ip, r0, r0, lsl #6
     728:	fb010200 	blx	40f32 <_stacks_size+0x40812>
     72c:	01000d0e 	tsteq	r0, lr, lsl #26
     730:	00010101 	andeq	r0, r1, r1, lsl #2
     734:	00010000 	andeq	r0, r1, r0
     738:	2e2e0100 	sufcse	f0, f6, f0
     73c:	2f2e2e2f 	svccs	0x002e2e2f
     740:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     744:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     748:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     74c:	2f62696c 	svccs	0x0062696c
     750:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     754:	7274732f 	rsbsvc	r7, r4, #-1140850688	; 0xbc000000
     758:	00676e69 	rsbeq	r6, r7, r9, ror #28
     75c:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     760:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     764:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
     768:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     76c:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     770:	61652d65 	cmnvs	r5, r5, ror #26
     774:	342f6962 	strtcc	r6, [pc], #-2402	; 77c <_stacks_size+0x5c>
     778:	692f382e 	stmdbvs	pc!, {r1, r2, r3, r5, fp, ip, sp}	; <UNPREDICTABLE>
     77c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     780:	2f006564 	svccs	0x00006564
     784:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     788:	75622f64 	strbvc	r2, [r2, #-3940]!	; 0xf64
     78c:	64646c69 	strbtvs	r6, [r4], #-3177	; 0xc69
     790:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     794:	2d62696c 	stclcs	9, cr6, [r2, #-432]!	; 0xfffffe50
     798:	2e312e32 	mrccs	14, 1, r2, cr1, cr2, {1}
     79c:	69672b30 	stmdbvs	r7!, {r4, r5, r8, r9, fp, sp}^
     7a0:	31303274 	teqcc	r0, r4, ror r2
     7a4:	31383034 	teqcc	r8, r4, lsr r0
     7a8:	61312e38 	teqvs	r1, r8, lsr lr
     7ac:	33323338 	teqcc	r2, #56, 6	; 0xe0000000
     7b0:	656e2f62 	strbvs	r2, [lr, #-3938]!	; 0xf62
     7b4:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     7b8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     7bc:	6e692f63 	cdpvs	15, 6, cr2, cr9, cr3, {3}
     7c0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
     7c4:	6d000065 	stcvs	0, cr0, [r0, #-404]	; 0xfffffe6c
     7c8:	6d636d65 	stclvs	13, cr6, [r3, #-404]!	; 0xfffffe6c
     7cc:	00632e70 	rsbeq	r2, r3, r0, ror lr
     7d0:	73000001 	movwvc	r0, #1
     7d4:	65646474 	strbvs	r6, [r4, #-1140]!	; 0x474
     7d8:	00682e66 	rsbeq	r2, r8, r6, ror #28
     7dc:	73000002 	movwvc	r0, #2
     7e0:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
     7e4:	00682e67 	rsbeq	r2, r8, r7, ror #28
     7e8:	00000003 	andeq	r0, r0, r3
     7ec:	d4020500 	strle	r0, [r2], #-1280	; 0x500
     7f0:	0300400e 	movweq	r4, #14
     7f4:	18030138 	stmdane	r3, {r3, r4, r5, r8}
     7f8:	2e680301 	cdpcs	3, 6, cr0, cr8, cr1, {0}
     7fc:	002e1803 	eoreq	r1, lr, r3, lsl #16
     800:	06010402 	streq	r0, [r1], -r2, lsl #8
     804:	5206662e 	andpl	r6, r6, #48234496	; 0x2e00000
     808:	2e7a03f6 	mrccs	3, 3, r0, cr10, cr6, {7}
     80c:	00292f32 	eoreq	r2, r9, r2, lsr pc
     810:	03010402 	movweq	r0, #5122	; 0x1402
     814:	084c2e0f 	stmdaeq	ip, {r0, r1, r2, r3, r9, sl, fp, sp}^
     818:	03305272 	teqeq	r0, #536870919	; 0x20000007
     81c:	48354a79 	ldmdami	r5!, {r0, r3, r4, r5, r6, r9, fp, lr}
     820:	01000402 	tsteq	r0, r2, lsl #8
     824:	0000e201 	andeq	lr, r0, r1, lsl #4
     828:	cb000200 	blgt	1030 <_stacks_size+0x910>
     82c:	02000000 	andeq	r0, r0, #0
     830:	0d0efb01 	vstreq	d15, [lr, #-4]
     834:	01010100 	mrseq	r0, (UNDEF: 17)
     838:	00000001 	andeq	r0, r0, r1
     83c:	01000001 	tsteq	r0, r1
     840:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     844:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     848:	2f2e2e2f 	svccs	0x002e2e2f
     84c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     850:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
     854:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     858:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     85c:	616d2f63 	cmnvs	sp, r3, ror #30
     860:	6e696863 	cdpvs	8, 6, cr6, cr9, cr3, {3}
     864:	72612f65 	rsbvc	r2, r1, #404	; 0x194
     868:	752f006d 	strvc	r0, [pc, #-109]!	; 803 <_stacks_size+0xe3>
     86c:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; 6a8 <_sys_stack_size+0x2a8>
     870:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
     874:	612f6363 	teqvs	pc, r3, ror #6
     878:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     87c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     880:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     884:	382e342f 	stmdacc	lr!, {r0, r1, r2, r3, r5, sl, ip, sp}
     888:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     88c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     890:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xf00
     894:	2f646c69 	svccs	0x00646c69
     898:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     89c:	6e2f6464 	cdpvs	4, 2, cr6, cr15, cr4, {3}
     8a0:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     8a4:	2e322d62 	cdpcs	13, 3, cr2, cr2, cr2, {3}
     8a8:	2b302e31 	blcs	c0c174 <_ram_limit+0x7f4174>
     8ac:	32746967 	rsbscc	r6, r4, #1687552	; 0x19c000
     8b0:	30343130 	eorscc	r3, r4, r0, lsr r1
     8b4:	2e383138 	mrccs	1, 1, r3, cr8, cr8, {1}
     8b8:	33386131 	teqcc	r8, #1073741836	; 0x4000000c
     8bc:	2f623332 	svccs	0x00623332
     8c0:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     8c4:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 728 <_stacks_size+0x8>
     8c8:	2f636269 	svccs	0x00636269
     8cc:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     8d0:	00656475 	rsbeq	r6, r5, r5, ror r4
     8d4:	72747300 	rsbsvc	r7, r4, #0, 6
     8d8:	2e6e656c 	cdpcs	5, 6, cr6, cr14, cr12, {3}
     8dc:	00010063 	andeq	r0, r1, r3, rrx
     8e0:	64747300 	ldrbtvs	r7, [r4], #-768	; 0x300
     8e4:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
     8e8:	00020068 	andeq	r0, r2, r8, rrx
     8ec:	72747300 	rsbsvc	r7, r4, #0, 6
     8f0:	2e676e69 	cdpcs	14, 6, cr6, cr7, cr9, {3}
     8f4:	00030068 	andeq	r0, r3, r8, rrx
     8f8:	05000000 	streq	r0, [r0, #-0]
     8fc:	400f8802 	andmi	r8, pc, r2, lsl #16
     900:	00c20300 	sbceq	r0, r2, r0, lsl #6
     904:	30021301 	andcc	r1, r2, r1, lsl #6
     908:	79010100 	stmdbvc	r1, {r8}
     90c:	02000001 	andeq	r0, r0, #1
     910:	00015b00 	andeq	r5, r1, r0, lsl #22
     914:	fb010200 	blx	4111e <_stacks_size+0x409fe>
     918:	01000d0e 	tsteq	r0, lr, lsl #26
     91c:	00010101 	andeq	r0, r1, r1, lsl #2
     920:	00010000 	andeq	r0, r1, r0
     924:	2e2e0100 	sufcse	f0, f6, f0
     928:	2f2e2e2f 	svccs	0x002e2e2f
     92c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     930:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     934:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     938:	2f62696c 	svccs	0x0062696c
     93c:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     940:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
     944:	6c6c6163 	stfvse	f6, [ip], #-396	; 0xfffffe74
     948:	622f0073 	eorvs	r0, pc, #115	; 0x73
     94c:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
     950:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     954:	2f64646c 	svccs	0x0064646c
     958:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     95c:	322d6269 	eorcc	r6, sp, #-1879048186	; 0x90000006
     960:	302e312e 	eorcc	r3, lr, lr, lsr #2
     964:	7469672b 	strbtvc	r6, [r9], #-1835	; 0x72b
     968:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
     96c:	38313830 	ldmdacc	r1!, {r4, r5, fp, ip, sp}
     970:	3861312e 	stmdacc	r1!, {r1, r2, r3, r5, r8, ip, sp}^
     974:	62333233 	eorsvs	r3, r3, #805306371	; 0x30000003
     978:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     97c:	2f62696c 	svccs	0x0062696c
     980:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     984:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     988:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     98c:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
     990:	73752f00 	cmnvc	r5, #0, 30
     994:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
     998:	63672f62 	cmnvs	r7, #392	; 0x188
     99c:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
     9a0:	6f6e2d6d 	svcvs	0x006e2d6d
     9a4:	652d656e 	strvs	r6, [sp, #-1390]!	; 0x56e
     9a8:	2f696261 	svccs	0x00696261
     9ac:	2f382e34 	svccs	0x00382e34
     9b0:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     9b4:	00656475 	rsbeq	r6, r5, r5, ror r4
     9b8:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     9bc:	622f646c 	eorvs	r6, pc, #108, 8	; 0x6c000000
     9c0:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
     9c4:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xf64
     9c8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     9cc:	312e322d 	teqcc	lr, sp, lsr #4
     9d0:	672b302e 	strvs	r3, [fp, -lr, lsr #32]!
     9d4:	30327469 	eorscc	r7, r2, r9, ror #8
     9d8:	38303431 	ldmdacc	r0!, {r0, r4, r5, sl, ip, sp}
     9dc:	312e3831 	teqcc	lr, r1, lsr r8
     9e0:	32333861 	eorscc	r3, r3, #6356992	; 0x610000
     9e4:	6e2f6233 	mcrvs	2, 1, r6, cr15, cr3, {1}
     9e8:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     9ec:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
     9f0:	692f6362 	stmdbvs	pc!, {r1, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
     9f4:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     9f8:	00006564 	andeq	r6, r0, r4, ror #10
     9fc:	6f737973 	svcvs	0x00737973
     a00:	2e6e6570 	mcrcs	5, 3, r6, cr14, cr0, {3}
     a04:	00010063 	andeq	r0, r1, r3, rrx
     a08:	636f6c00 	cmnvs	pc, #0, 24
     a0c:	00682e6b 	rsbeq	r2, r8, fp, ror #28
     a10:	5f000002 	svcpl	0x00000002
     a14:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
     a18:	00682e73 	rsbeq	r2, r8, r3, ror lr
     a1c:	73000002 	movwvc	r0, #2
     a20:	65646474 	strbvs	r6, [r4, #-1140]!	; 0x474
     a24:	00682e66 	rsbeq	r2, r8, r6, ror #28
     a28:	72000003 	andvc	r0, r0, #3
     a2c:	746e6565 	strbtvc	r6, [lr], #-1381	; 0x565
     a30:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     a34:	74730000 	ldrbtvc	r0, [r3], #-0
     a38:	67726164 	ldrbvs	r6, [r2, -r4, ror #2]!
     a3c:	0300682e 	movweq	r6, #2094	; 0x82e
     a40:	623c0000 	eorsvs	r0, ip, #0
     a44:	746c6975 	strbtvc	r6, [ip], #-2421	; 0x975
     a48:	3e6e692d 	cdpcc	9, 6, cr6, cr14, cr13, {1}
     a4c:	00000000 	andeq	r0, r0, r0
     a50:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
     a54:	746c7561 	strbtvc	r7, [ip], #-1377	; 0x561
     a58:	6e63665f 	mcrvs	6, 3, r6, cr3, cr15, {2}
     a5c:	682e6c74 	stmdavs	lr!, {r2, r4, r5, r6, sl, fp, sp, lr}
     a60:	00000200 	andeq	r0, r0, r0, lsl #4
     a64:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
     a68:	00682e74 	rsbeq	r2, r8, r4, ror lr
     a6c:	00000004 	andeq	r0, r0, r4
     a70:	e8020500 	stmda	r2, {r8, sl}
     a74:	0300400f 	movweq	r4, #15
     a78:	294f010f 	stmdbcs	pc, {r0, r1, r2, r3, r8}^	; <UNPREDICTABLE>
     a7c:	2f322933 	svccs	0x00322933
     a80:	02312f49 	eorseq	r2, r1, #292	; 0x124
     a84:	0101000a 	tsteq	r1, sl
     a88:	0000014f 	andeq	r0, r0, pc, asr #2
     a8c:	01280002 	teqeq	r8, r2
     a90:	01020000 	mrseq	r0, (UNDEF: 2)
     a94:	000d0efb 	strdeq	r0, [sp], -fp
     a98:	01010101 	tsteq	r1, r1, lsl #2
     a9c:	01000000 	mrseq	r0, (UNDEF: 0)
     aa0:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
     aa4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     aa8:	2f2e2e2f 	svccs	0x002e2e2f
     aac:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     ab0:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
     ab4:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     ab8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     abc:	65722f63 	ldrbvs	r2, [r2, #-3939]!	; 0xf63
     ac0:	00746e65 	rsbseq	r6, r4, r5, ror #28
     ac4:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     ac8:	622f646c 	eorvs	r6, pc, #108, 8	; 0x6c000000
     acc:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
     ad0:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xf64
     ad4:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     ad8:	312e322d 	teqcc	lr, sp, lsr #4
     adc:	672b302e 	strvs	r3, [fp, -lr, lsr #32]!
     ae0:	30327469 	eorscc	r7, r2, r9, ror #8
     ae4:	38303431 	ldmdacc	r0!, {r0, r4, r5, sl, ip, sp}
     ae8:	312e3831 	teqcc	lr, r1, lsr r8
     aec:	32333861 	eorscc	r3, r3, #6356992	; 0x610000
     af0:	6e2f6233 	mcrvs	2, 1, r6, cr15, cr3, {1}
     af4:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     af8:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
     afc:	692f6362 	stmdbvs	pc!, {r1, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
     b00:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     b04:	732f6564 	teqvc	pc, #100, 10	; 0x19000000
     b08:	2f007379 	svccs	0x00007379
     b0c:	2f727375 	svccs	0x00727375
     b10:	2f62696c 	svccs	0x0062696c
     b14:	2f636367 	svccs	0x00636367
     b18:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     b1c:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xf6e
     b20:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     b24:	2e342f69 	cdpcs	15, 3, cr2, cr4, cr9, {3}
     b28:	6e692f38 	mcrvs	15, 3, r2, cr9, cr8, {1}
     b2c:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
     b30:	622f0065 	eorvs	r0, pc, #101	; 0x65
     b34:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
     b38:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     b3c:	2f64646c 	svccs	0x0064646c
     b40:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     b44:	322d6269 	eorcc	r6, sp, #-1879048186	; 0x90000006
     b48:	302e312e 	eorcc	r3, lr, lr, lsr #2
     b4c:	7469672b 	strbtvc	r6, [r9], #-1835	; 0x72b
     b50:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
     b54:	38313830 	ldmdacc	r1!, {r4, r5, fp, ip, sp}
     b58:	3861312e 	stmdacc	r1!, {r1, r2, r3, r5, r8, ip, sp}^
     b5c:	62333233 	eorsvs	r3, r3, #805306371	; 0x30000003
     b60:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     b64:	2f62696c 	svccs	0x0062696c
     b68:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     b6c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     b70:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     b74:	706f0000 	rsbvc	r0, pc, r0
     b78:	2e726e65 	cdpcs	14, 7, cr6, cr2, cr5, {3}
     b7c:	00010063 	andeq	r0, r1, r3, rrx
     b80:	636f6c00 	cmnvs	pc, #0, 24
     b84:	00682e6b 	rsbeq	r2, r8, fp, ror #28
     b88:	5f000002 	svcpl	0x00000002
     b8c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
     b90:	00682e73 	rsbeq	r2, r8, r3, ror lr
     b94:	73000002 	movwvc	r0, #2
     b98:	65646474 	strbvs	r6, [r4, #-1140]!	; 0x474
     b9c:	00682e66 	rsbeq	r2, r8, r6, ror #28
     ba0:	72000003 	andvc	r0, r0, #3
     ba4:	746e6565 	strbtvc	r6, [lr], #-1381	; 0x565
     ba8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     bac:	65720000 	ldrbvs	r0, [r2, #-0]!
     bb0:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
     bb4:	00040068 	andeq	r0, r4, r8, rrx
     bb8:	05000000 	streq	r0, [r0, #-0]
     bbc:	40102802 	andsmi	r2, r0, r2, lsl #16
     bc0:	01360300 	teqeq	r6, r0, lsl #6
     bc4:	65324731 	ldrvs	r4, [r2, #-1841]!	; 0x731
     bc8:	0402002f 	streq	r0, [r2], #-47	; 0x2f
     bcc:	00660601 	rsbeq	r0, r6, r1, lsl #12
     bd0:	06010402 	streq	r0, [r1], -r2, lsl #8
     bd4:	0602304b 	streq	r3, [r2], -fp, asr #32
     bd8:	84010100 	strhi	r0, [r1], #-256	; 0x100
     bdc:	02000001 	andeq	r0, r0, #1
     be0:	00012900 	andeq	r2, r1, r0, lsl #18
     be4:	fb010200 	blx	413ee <_stacks_size+0x40cce>
     be8:	01000d0e 	tsteq	r0, lr, lsl #26
     bec:	00010101 	andeq	r0, r1, r1, lsl #2
     bf0:	00010000 	andeq	r0, r1, r0
     bf4:	2e2e0100 	sufcse	f0, f6, f0
     bf8:	2f2e2e2f 	svccs	0x002e2e2f
     bfc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     c00:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     c04:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     c08:	2f62696c 	svccs	0x0062696c
     c0c:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     c10:	6565722f 	strbvs	r7, [r5, #-559]!	; 0x22f
     c14:	2f00746e 	svccs	0x0000746e
     c18:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     c1c:	75622f64 	strbvc	r2, [r2, #-3940]!	; 0xf64
     c20:	64646c69 	strbtvs	r6, [r4], #-3177	; 0xc69
     c24:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     c28:	2d62696c 	stclcs	9, cr6, [r2, #-432]!	; 0xfffffe50
     c2c:	2e312e32 	mrccs	14, 1, r2, cr1, cr2, {1}
     c30:	69672b30 	stmdbvs	r7!, {r4, r5, r8, r9, fp, sp}^
     c34:	31303274 	teqcc	r0, r4, ror r2
     c38:	31383034 	teqcc	r8, r4, lsr r0
     c3c:	61312e38 	teqvs	r1, r8, lsr lr
     c40:	33323338 	teqcc	r2, #56, 6	; 0xe0000000
     c44:	656e2f62 	strbvs	r2, [lr, #-3938]!	; 0xf62
     c48:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     c4c:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     c50:	6e692f63 	cdpvs	15, 6, cr2, cr9, cr3, {3}
     c54:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
     c58:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
     c5c:	752f0073 	strvc	r0, [pc, #-115]!	; bf1 <_stacks_size+0x4d1>
     c60:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; a9c <_stacks_size+0x37c>
     c64:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
     c68:	612f6363 	teqvs	pc, r3, ror #6
     c6c:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     c70:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     c74:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     c78:	382e342f 	stmdacc	lr!, {r0, r1, r2, r3, r5, sl, ip, sp}
     c7c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     c80:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     c84:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xf00
     c88:	2f646c69 	svccs	0x00646c69
     c8c:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     c90:	6e2f6464 	cdpvs	4, 2, cr6, cr15, cr4, {3}
     c94:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     c98:	2e322d62 	cdpcs	13, 3, cr2, cr2, cr2, {3}
     c9c:	2b302e31 	blcs	c0c568 <_ram_limit+0x7f4568>
     ca0:	32746967 	rsbscc	r6, r4, #1687552	; 0x19c000
     ca4:	30343130 	eorscc	r3, r4, r0, lsr r1
     ca8:	2e383138 	mrccs	1, 1, r3, cr8, cr8, {1}
     cac:	33386131 	teqcc	r8, #1073741836	; 0x4000000c
     cb0:	2f623332 	svccs	0x00623332
     cb4:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     cb8:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; b1c <_stacks_size+0x3fc>
     cbc:	2f636269 	svccs	0x00636269
     cc0:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     cc4:	00656475 	rsbeq	r6, r5, r5, ror r4
     cc8:	65657200 	strbvs	r7, [r5, #-512]!	; 0x200
     ccc:	632e746e 	teqvs	lr, #1845493760	; 0x6e000000
     cd0:	00000100 	andeq	r0, r0, r0, lsl #2
     cd4:	6b636f6c 	blvs	18dca8c <_ram_limit+0x14c4a8c>
     cd8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     cdc:	745f0000 	ldrbvc	r0, [pc], #-0	; ce4 <_stacks_size+0x5c4>
     ce0:	73657079 	cmnvc	r5, #121	; 0x79
     ce4:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     ce8:	74730000 	ldrbtvc	r0, [r3], #-0
     cec:	66656464 	strbtvs	r6, [r5], -r4, ror #8
     cf0:	0300682e 	movweq	r6, #2094	; 0x82e
     cf4:	65720000 	ldrbvs	r0, [r2, #-0]!
     cf8:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
     cfc:	00020068 	andeq	r0, r2, r8, rrx
     d00:	64747300 	ldrbtvs	r7, [r4], #-768	; 0x300
     d04:	2e62696c 	cdpcs	9, 6, cr6, cr2, cr12, {3}
     d08:	00040068 	andeq	r0, r4, r8, rrx
     d0c:	05000000 	streq	r0, [r0, #-0]
     d10:	40106c02 	andsmi	r6, r0, r2, lsl #24
     d14:	01230300 	teqeq	r3, r0, lsl #6
     d18:	3048302e 	subcc	r3, r8, lr, lsr #32
     d1c:	02673013 	rsbeq	r3, r7, #19
     d20:	01010004 	tsteq	r1, r4
     d24:	98020500 	stmdals	r2, {r8, sl}
     d28:	03004010 	movweq	r4, #16
     d2c:	6513012e 	ldrvs	r0, [r3, #-302]	; 0x12e
     d30:	69352f2e 	ldmdbvs	r5!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}
     d34:	692f352b 	stmdbvs	pc!, {r0, r1, r3, r5, r8, sl, ip, sp}	; <UNPREDICTABLE>
     d38:	0361464b 	cmneq	r1, #78643200	; 0x4b00000
     d3c:	4b68820d 	blmi	1a21578 <_ram_limit+0x1609578>
     d40:	004a1c03 	subeq	r1, sl, r3, lsl #24
     d44:	06010402 	streq	r0, [r1], -r2, lsl #8
     d48:	4b880666 	blmi	fe2026e8 <_STACK_FILLER+0x1f7267f9>
     d4c:	4a0a0346 	bmi	281a6c <_stacks_size+0x28134c>
     d50:	0d03514b 	stfeqs	f5, [r3, #-300]	; 0xfffffed4
     d54:	4a770366 	bmi	1dc1af4 <_ram_limit+0x19a9af4>
     d58:	03346784 	teqeq	r4, #132, 14	; 0x2100000
     d5c:	04022e7a 	streq	r2, [r2], #-3706	; 0xe7a
     d60:	26010100 	strcs	r0, [r1], -r0, lsl #2
     d64:	02000002 	andeq	r0, r0, #2
     d68:	00012b00 	andeq	r2, r1, r0, lsl #22
     d6c:	fb010200 	blx	41576 <_stacks_size+0x40e56>
     d70:	01000d0e 	tsteq	r0, lr, lsl #26
     d74:	00010101 	andeq	r0, r1, r1, lsl #2
     d78:	00010000 	andeq	r0, r1, r0
     d7c:	2e2e0100 	sufcse	f0, f6, f0
     d80:	2f2e2e2f 	svccs	0x002e2e2f
     d84:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     d88:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     d8c:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     d90:	2f62696c 	svccs	0x0062696c
     d94:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     d98:	6474732f 	ldrbtvs	r7, [r4], #-815	; 0x32f
     d9c:	0062696c 	rsbeq	r6, r2, ip, ror #18
     da0:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     da4:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     da8:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
     dac:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     db0:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     db4:	61652d65 	cmnvs	r5, r5, ror #26
     db8:	342f6962 	strtcc	r6, [pc], #-2402	; dc0 <_stacks_size+0x6a0>
     dbc:	692f382e 	stmdbvs	pc!, {r1, r2, r3, r5, fp, ip, sp}	; <UNPREDICTABLE>
     dc0:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
     dc4:	2f006564 	svccs	0x00006564
     dc8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     dcc:	75622f64 	strbvc	r2, [r2, #-3940]!	; 0xf64
     dd0:	64646c69 	strbtvs	r6, [r4], #-3177	; 0xc69
     dd4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     dd8:	2d62696c 	stclcs	9, cr6, [r2, #-432]!	; 0xfffffe50
     ddc:	2e312e32 	mrccs	14, 1, r2, cr1, cr2, {1}
     de0:	69672b30 	stmdbvs	r7!, {r4, r5, r8, r9, fp, sp}^
     de4:	31303274 	teqcc	r0, r4, ror r2
     de8:	31383034 	teqcc	r8, r4, lsr r0
     dec:	61312e38 	teqvs	r1, r8, lsr lr
     df0:	33323338 	teqcc	r2, #56, 6	; 0xe0000000
     df4:	656e2f62 	strbvs	r2, [lr, #-3938]!	; 0xf62
     df8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     dfc:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     e00:	6e692f63 	cdpvs	15, 6, cr2, cr9, cr3, {3}
     e04:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
     e08:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
     e0c:	622f0073 	eorvs	r0, pc, #115	; 0x73
     e10:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
     e14:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     e18:	2f64646c 	svccs	0x0064646c
     e1c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     e20:	322d6269 	eorcc	r6, sp, #-1879048186	; 0x90000006
     e24:	302e312e 	eorcc	r3, lr, lr, lsr #2
     e28:	7469672b 	strbtvc	r6, [r9], #-1835	; 0x72b
     e2c:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
     e30:	38313830 	ldmdacc	r1!, {r4, r5, fp, ip, sp}
     e34:	3861312e 	stmdacc	r1!, {r1, r2, r3, r5, r8, ip, sp}^
     e38:	62333233 	eorsvs	r3, r3, #805306371	; 0x30000003
     e3c:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     e40:	2f62696c 	svccs	0x0062696c
     e44:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     e48:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     e4c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     e50:	616d0000 	cmnvs	sp, r0
     e54:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
     e58:	00632e72 	rsbeq	r2, r3, r2, ror lr
     e5c:	73000001 	movwvc	r0, #1
     e60:	65646474 	strbvs	r6, [r4, #-1140]!	; 0x474
     e64:	00682e66 	rsbeq	r2, r8, r6, ror #28
     e68:	6c000002 	stcvs	0, cr0, [r0], {2}
     e6c:	2e6b636f 	cdpcs	3, 6, cr6, cr11, cr15, {3}
     e70:	00030068 	andeq	r0, r3, r8, rrx
     e74:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
     e78:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
     e7c:	00030068 	andeq	r0, r3, r8, rrx
     e80:	65657200 	strbvs	r7, [r5, #-512]!	; 0x200
     e84:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
     e88:	00000300 	andeq	r0, r0, r0, lsl #6
     e8c:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
     e90:	00682e74 	rsbeq	r2, r8, r4, ror lr
     e94:	00000004 	andeq	r0, r0, r4
     e98:	a0020500 	andge	r0, r2, r0, lsl #10
     e9c:	03004011 	movweq	r4, #17
     ea0:	030119ec 	movweq	r1, #6636	; 0x19ec
     ea4:	76032e0a 	strvc	r2, [r3], -sl, lsl #28
     ea8:	6730522e 	ldrvs	r5, [r0, -lr, lsr #4]!
     eac:	4a0903bc 	bmi	241da4 <_stacks_size+0x241684>
     eb0:	82780367 	rsbshi	r0, r8, #-1677721599	; 0x9c000001
     eb4:	2e2b034b 	cdpcs	3, 2, cr0, cr11, cr11, {2}
     eb8:	684a6403 	stmdavs	sl, {r0, r1, sl, sp, lr}^
     ebc:	2d4a1303 	stclcs	3, cr1, [sl, #-12]
     ec0:	2c4d2d2f 	mcrrcs	13, 2, r2, sp, cr15
     ec4:	2f302f2d 	svccs	0x00302f2d
     ec8:	4a690332 	bmi	1a41b98 <_ram_limit+0x1629b98>
     ecc:	674c4b67 	strbvs	r4, [ip, -r7, ror #22]
     ed0:	022d2f2d 	eoreq	r2, sp, #45, 30	; 0xb4
     ed4:	0101000a 	tsteq	r1, sl
     ed8:	a0020500 	andge	r0, r2, r0, lsl #10
     edc:	03004012 	movweq	r4, #18
     ee0:	030114c1 	movweq	r1, #5313	; 0x14c1
     ee4:	6e032e12 	mcrvs	14, 0, r2, cr3, cr2, {0}
     ee8:	2e12032e 	cdpcs	3, 1, cr0, cr2, cr14, {1}
     eec:	11033131 	tstne	r3, r1, lsr r1
     ef0:	72032a2e 	andvc	r2, r3, #188416	; 0x2e000
     ef4:	2e0f032e 	cdpcs	3, 0, cr0, cr15, cr14, {1}
     ef8:	2c302c31 	ldccs	12, cr2, [r0], #-196	; 0xffffff3c
     efc:	2e180330 	mrccs	3, 0, r0, cr8, cr0, {1}
     f00:	3030302a 	eorscc	r3, r0, sl, lsr #32
     f04:	3364312f 	cmncc	r4, #-1073741813	; 0xc000000b
     f08:	48863364 	stmmi	r6, {r2, r5, r6, r8, r9, ip, sp}
     f0c:	04020030 	streq	r0, [r2], #-48	; 0x30
     f10:	062e0601 	strteq	r0, [lr], -r1, lsl #12
     f14:	2c306a6c 	ldccs	10, cr6, [r0], #-432	; 0xfffffe50
     f18:	002f2f2f 	eoreq	r2, pc, pc, lsr #30
     f1c:	06020402 	streq	r0, [r2], -r2, lsl #8
     f20:	0402004a 	streq	r0, [r2], #-74	; 0x4a
     f24:	02006603 	andeq	r6, r0, #3145728	; 0x300000
     f28:	00661204 	rsbeq	r1, r6, r4, lsl #4
     f2c:	9e020402 	cdpls	4, 0, cr0, cr2, cr2, {0}
     f30:	01040200 	mrseq	r0, R12_usr
     f34:	04020082 	streq	r0, [r2], #-130	; 0x82
     f38:	02006603 	andeq	r6, r0, #3145728	; 0x300000
     f3c:	062e0104 	strteq	r0, [lr], -r4, lsl #2
     f40:	03825b03 	orreq	r5, r2, #3072	; 0xc00
     f44:	02004a2a 	andeq	r4, r0, #172032	; 0x2a000
     f48:	03450104 	movteq	r0, #20740	; 0x5104
     f4c:	2c90084f 	ldccs	8, cr0, [r0], {79}	; 0x4f
     f50:	302f3030 	eorcc	r3, pc, r0, lsr r0	; <UNPREDICTABLE>
     f54:	30483481 	subcc	r3, r8, r1, lsl #9
     f58:	2f2f2f2c 	svccs	0x002f2f2c
     f5c:	039e2303 	orrseq	r2, lr, #201326592	; 0xc000000
     f60:	2f892e79 	svccs	0x00892e79
     f64:	04040200 	streq	r0, [r4], #-512	; 0x200
     f68:	0402004c 	streq	r0, [r2], #-76	; 0x4c
     f6c:	00820606 	addeq	r0, r2, r6, lsl #12
     f70:	4a070402 	bmi	1c1f80 <_stacks_size+0x1c1860>
     f74:	01040200 	mrseq	r0, R12_usr
     f78:	04020082 	streq	r0, [r2], #-130	; 0x82
     f7c:	0200d608 	andeq	sp, r0, #8, 12	; 0x800000
     f80:	002e0904 	eoreq	r0, lr, r4, lsl #18
     f84:	820a0402 	andhi	r0, sl, #33554432	; 0x2000000
     f88:	01001a02 	tsteq	r0, r2, lsl #20
     f8c:	00034001 	andeq	r4, r3, r1
     f90:	2b000200 	blcs	1798 <_stacks_size+0x1078>
     f94:	02000001 	andeq	r0, r0, #1
     f98:	0d0efb01 	vstreq	d15, [lr, #-4]
     f9c:	01010100 	mrseq	r0, (UNDEF: 17)
     fa0:	00000001 	andeq	r0, r0, r1
     fa4:	01000001 	tsteq	r0, r1
     fa8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     fac:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     fb0:	2f2e2e2f 	svccs	0x002e2e2f
     fb4:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
     fb8:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     fbc:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
     fc0:	732f6362 	teqvc	pc, #-2013265919	; 0x88000001
     fc4:	696c6474 	stmdbvs	ip!, {r2, r4, r5, r6, sl, sp, lr}^
     fc8:	752f0062 	strvc	r0, [pc, #-98]!	; f6e <_stacks_size+0x84e>
     fcc:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; e08 <_stacks_size+0x6e8>
     fd0:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
     fd4:	612f6363 	teqvs	pc, r3, ror #6
     fd8:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     fdc:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     fe0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     fe4:	382e342f 	stmdacc	lr!, {r0, r1, r2, r3, r5, sl, ip, sp}
     fe8:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     fec:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
     ff0:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xf00
     ff4:	2f646c69 	svccs	0x00646c69
     ff8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     ffc:	6e2f6464 	cdpvs	4, 2, cr6, cr15, cr4, {3}
    1000:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1004:	2e322d62 	cdpcs	13, 3, cr2, cr2, cr2, {3}
    1008:	2b302e31 	blcs	c0c8d4 <_ram_limit+0x7f48d4>
    100c:	32746967 	rsbscc	r6, r4, #1687552	; 0x19c000
    1010:	30343130 	eorscc	r3, r4, r0, lsr r1
    1014:	2e383138 	mrccs	1, 1, r3, cr8, cr8, {1}
    1018:	33386131 	teqcc	r8, #1073741836	; 0x4000000c
    101c:	2f623332 	svccs	0x00623332
    1020:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1024:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; e88 <_stacks_size+0x768>
    1028:	2f636269 	svccs	0x00636269
    102c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    1030:	2f656475 	svccs	0x00656475
    1034:	00737973 	rsbseq	r7, r3, r3, ror r9
    1038:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    103c:	622f646c 	eorvs	r6, pc, #108, 8	; 0x6c000000
    1040:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
    1044:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xf64
    1048:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    104c:	312e322d 	teqcc	lr, sp, lsr #4
    1050:	672b302e 	strvs	r3, [fp, -lr, lsr #32]!
    1054:	30327469 	eorscc	r7, r2, r9, ror #8
    1058:	38303431 	ldmdacc	r0!, {r0, r4, r5, sl, ip, sp}
    105c:	312e3831 	teqcc	lr, r1, lsr r8
    1060:	32333861 	eorscc	r3, r3, #6356992	; 0x610000
    1064:	6e2f6233 	mcrvs	2, 1, r6, cr15, cr3, {1}
    1068:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    106c:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    1070:	692f6362 	stmdbvs	pc!, {r1, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
    1074:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
    1078:	00006564 	andeq	r6, r0, r4, ror #10
    107c:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    1080:	2e72636f 	cdpcs	3, 7, cr6, cr2, cr15, {3}
    1084:	00010063 	andeq	r0, r1, r3, rrx
    1088:	64747300 	ldrbtvs	r7, [r4], #-768	; 0x300
    108c:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
    1090:	00020068 	andeq	r0, r2, r8, rrx
    1094:	636f6c00 	cmnvs	pc, #0, 24
    1098:	00682e6b 	rsbeq	r2, r8, fp, ror #28
    109c:	5f000003 	svcpl	0x00000003
    10a0:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
    10a4:	00682e73 	rsbeq	r2, r8, r3, ror lr
    10a8:	72000003 	andvc	r0, r0, #3
    10ac:	746e6565 	strbtvc	r6, [lr], #-1381	; 0x565
    10b0:	0300682e 	movweq	r6, #2094	; 0x82e
    10b4:	65720000 	ldrbvs	r0, [r2, #-0]!
    10b8:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    10bc:	00040068 	andeq	r0, r4, r8, rrx
    10c0:	05000000 	streq	r0, [r0, #-0]
    10c4:	40150c02 	andsmi	r0, r5, r2, lsl #24
    10c8:	12970300 	addsne	r0, r7, #0, 6
    10cc:	2e140301 	cdpcs	3, 1, cr0, cr4, cr1, {0}
    10d0:	670384bd 			; <UNDEFINED> instruction: 0x670384bd
    10d4:	19032e2e 	stmdbne	r3, {r1, r2, r3, r5, r9, sl, fp, sp}
    10d8:	342b2f2e 	strtcc	r2, [fp], #-3886	; 0xf2e
    10dc:	322a5032 	eorcc	r5, sl, #50	; 0x32
    10e0:	4c52322f 	lfmmi	f3, 2, [r2], {47}	; 0x2f
    10e4:	312d4b49 	teqcc	sp, r9, asr #22
    10e8:	2f302f2b 	svccs	0x00302f2b
    10ec:	2e01d003 	cdpcs	0, 0, cr13, cr1, cr3, {0}
    10f0:	827eb803 	rsbshi	fp, lr, #196608	; 0x30000
    10f4:	12040200 	andne	r0, r4, #0, 4
    10f8:	04020083 	streq	r0, [r2], #-131	; 0x83
    10fc:	0b034c12 	bleq	d414c <_stacks_size+0xd3a2c>
    1100:	4a750382 	bmi	1d41f10 <_ram_limit+0x1929f10>
    1104:	4c304b68 	ldcmi	11, cr4, [r0], #-416	; 0xfffffe60
    1108:	342e0e03 	strtcc	r0, [lr], #-3587	; 0xe03
    110c:	03304bbc 	teqeq	r0, #188, 22	; 0x2f000
    1110:	4c2c4a0e 	stcmi	10, cr4, [ip], #-56	; 0xffffffc8
    1114:	002e0a03 	eoreq	r0, lr, r3, lsl #20
    1118:	06010402 	streq	r0, [r1], -r2, lsl #8
    111c:	7c08064a 	stcvc	6, cr0, [r8], {74}	; 0x4a
    1120:	302d4ea3 	eorcc	r4, sp, r3, lsr #29
    1124:	2b31302c 	blcs	c4d1dc <_ram_limit+0x8351dc>
    1128:	0b032c30 	bleq	cc1f0 <_stacks_size+0xcbad0>
    112c:	12036d2e 	andne	r6, r3, #2944	; 0xb80
    1130:	4a6e0382 	bmi	1b81f40 <_ram_limit+0x1769f40>
    1134:	4e304b68 	vsubmi.f64	d4, d0, d24
    1138:	2f2a3165 	svccs	0x002a3165
    113c:	834b2934 	movthi	r2, #47412	; 0xb934
    1140:	002f302f 	eoreq	r3, pc, pc, lsr #32
    1144:	03020402 	movweq	r0, #9218	; 0x2402
    1148:	002e7f92 	mlaeq	lr, r2, pc, r7	; <UNPREDICTABLE>
    114c:	06030402 	streq	r0, [r3], -r2, lsl #8
    1150:	3303064a 	movwcc	r0, #13898	; 0x364a
    1154:	302c6882 	eorcc	r6, ip, r2, lsl #17
    1158:	0192032f 	orrseq	r0, r2, pc, lsr #6
    115c:	825f032e 	subshi	r0, pc, #-1207959552	; 0xb8000000
    1160:	04020067 	streq	r0, [r2], #-103	; 0x67
    1164:	02004901 	andeq	r4, r0, #16384	; 0x4000
    1168:	032f0104 	teqeq	pc, #4, 2
    116c:	034a7cf1 	movteq	r7, #44273	; 0xacf1
    1170:	03352e79 	teqeq	r5, #1936	; 0x790
    1174:	03352e79 	teqeq	r5, #1936	; 0x790
    1178:	03362e79 	teqeq	r6, #1936	; 0x790
    117c:	03366678 	teqeq	r6, #120, 12	; 0x7800000
    1180:	0e032e74 	mcreq	14, 0, r2, cr3, cr4, {3}
    1184:	312ba12e 	teqcc	fp, lr, lsr #2
    1188:	4c2c4ca2 	stcmi	12, cr4, [ip], #-648	; 0xfffffd78
    118c:	4d2e0903 	stcmi	9, cr0, [lr, #-12]!
    1190:	302c312b 	eorcc	r3, ip, fp, lsr #2
    1194:	6c2f3032 	stcvs	0, cr3, [pc], #-200	; 10d4 <_stacks_size+0x9b4>
    1198:	032e7703 	teqeq	lr, #786432	; 0xc0000
    119c:	674d2e09 	strbvs	r2, [sp, -r9, lsl #28]
    11a0:	35484551 	strbcc	r4, [r8, #-1361]	; 0x551
    11a4:	322c2a34 	eorcc	r2, ip, #52, 20	; 0x34000
    11a8:	5235342a 	eorspl	r3, r5, #704643072	; 0x2a000000
    11ac:	334b4b2d 	movtcc	r4, #47917	; 0xbb2d
    11b0:	302f2d29 	eorcc	r2, pc, r9, lsr #26
    11b4:	33673331 	cmncc	r7, #-1006632960	; 0xc4000000
    11b8:	02c803bb 	sbceq	r0, r8, #-335544318	; 0xec000002
    11bc:	002f2d66 	eoreq	r2, pc, r6, ror #26
    11c0:	06010402 	streq	r0, [r1], -r2, lsl #8
    11c4:	4b4c062e 	blmi	1302a84 <_ram_limit+0xeeaa84>
    11c8:	2d2d304f 	stccs	0, cr3, [sp, #-316]!	; 0xfffffec4
    11cc:	302f2b32 	eorcc	r2, pc, r2, lsr fp	; <UNPREDICTABLE>
    11d0:	c903312f 	stmdbgt	r3, {r0, r1, r2, r3, r5, r8, ip, sp}
    11d4:	4b49827e 	blmi	1261bd4 <_ram_limit+0xe49bd4>
    11d8:	2f2b312d 	svccs	0x002b312d
    11dc:	b4032f30 	strlt	r2, [r3], #-3888	; 0xf30
    11e0:	02002e01 	andeq	r2, r0, #1, 28
    11e4:	b8030404 	stmdalt	r3, {r2, sl}
    11e8:	0200827e 	andeq	r8, r0, #-536870905	; 0xe0000007
    11ec:	82060604 	andhi	r0, r6, #4, 12	; 0x400000
    11f0:	07040200 	streq	r0, [r4, -r0, lsl #4]
    11f4:	0402004a 	streq	r0, [r2], #-74	; 0x4a
    11f8:	3b030602 	blcc	c2a08 <_stacks_size+0xc22e8>
    11fc:	04020082 	streq	r0, [r2], #-130	; 0x82
    1200:	00660604 	rsbeq	r0, r6, r4, lsl #12
    1204:	82060402 	andhi	r0, r6, #33554432	; 0x2000000
    1208:	07040200 	streq	r0, [r4, -r0, lsl #4]
    120c:	0402004a 	streq	r0, [r2], #-74	; 0x4a
    1210:	02006612 	andeq	r6, r0, #18874368	; 0x1200000
    1214:	009e0204 	addseq	r0, lr, r4, lsl #4
    1218:	82010402 	andhi	r0, r1, #33554432	; 0x2000000
    121c:	03040200 	movweq	r0, #16896	; 0x4200
    1220:	04020066 	streq	r0, [r2], #-102	; 0x66
    1224:	03064a01 	movweq	r4, #27137	; 0x6a01
    1228:	2b309e6b 	blcs	c28bdc <_ram_limit+0x810bdc>
    122c:	672a332f 	strvs	r3, [sl, -pc, lsr #6]!
    1230:	2f2d312f 	svccs	0x002d312f
    1234:	2e00d903 	cdpcs	9, 0, cr13, cr0, cr3, {0}
    1238:	034a7703 	movteq	r7, #42755	; 0xa703
    123c:	e8032e09 	stmda	r3, {r0, r3, r9, sl, fp, sp}
    1240:	312f4a7e 	teqcc	pc, lr, ror sl	; <UNPREDICTABLE>
    1244:	032e0a03 	teqeq	lr, #12288	; 0x3000
    1248:	82032e76 	andhi	r2, r3, #1888	; 0x760
    124c:	654b4a01 	strbvs	r4, [fp, #-2561]	; 0xa01
    1250:	2f4c2c4d 	svccs	0x004c2c4d
    1254:	03040200 	movweq	r0, #16896	; 0x4200
    1258:	032e4403 	teqeq	lr, #50331648	; 0x3000000
    125c:	03827de5 	orreq	r7, r2, #14656	; 0x3940
    1260:	48ba02f2 	ldmmi	sl!, {r1, r4, r5, r6, r7, r9}
    1264:	2e790330 	mrccs	3, 3, r0, cr9, cr0, {1}
    1268:	2e7a0334 	mrccs	3, 3, r0, cr10, cr4, {1}
    126c:	66090330 			; <UNDEFINED> instruction: 0x66090330
    1270:	01040200 	mrseq	r0, R12_usr
    1274:	02006606 	andeq	r6, r0, #6291456	; 0x600000
    1278:	4c060104 	stfmis	f0, [r6], {4}
    127c:	01040200 	mrseq	r0, R12_usr
    1280:	002e6d03 	eoreq	r6, lr, r3, lsl #26
    1284:	03010402 	movweq	r0, #5122	; 0x1402
    1288:	2b312e13 	blcs	c4cadc <_ram_limit+0x834adc>
    128c:	02002c30 	andeq	r2, r0, #48, 24	; 0x3000
    1290:	e8030804 	stmda	r3, {r2, fp}
    1294:	02004a7e 	andeq	r4, r0, #516096	; 0x7e000
    1298:	4a060904 	bmi	1836b0 <_stacks_size+0x182f90>
    129c:	7ed80306 	cdpvc	3, 13, cr0, cr8, cr6, {0}
    12a0:	04020082 	streq	r0, [r2], #-130	; 0x82
    12a4:	01e30301 	mvneq	r0, r1, lsl #6
    12a8:	0402009e 	streq	r0, [r2], #-158	; 0x9e
    12ac:	d645030a 	strble	r0, [r5], -sl, lsl #6
    12b0:	f27ea703 	vabd.s<illegal width 64>	d26, d14, d3
    12b4:	3b032f4c 	blcc	ccfec <_stacks_size+0xcc8cc>
    12b8:	04020082 	streq	r0, [r2], #-130	; 0x82
    12bc:	01d60308 	bicseq	r0, r6, r8, lsl #6
    12c0:	0402009e 	streq	r0, [r2], #-158	; 0x9e
    12c4:	002e0609 	eoreq	r0, lr, r9, lsl #12
    12c8:	820a0402 	andhi	r0, sl, #33554432	; 0x2000000
    12cc:	01002202 	tsteq	r0, r2, lsl #4
    12d0:	0000ff01 	andeq	pc, r0, r1, lsl #30
    12d4:	db000200 	blle	1adc <_stacks_size+0x13bc>
    12d8:	02000000 	andeq	r0, r0, #0
    12dc:	0d0efb01 	vstreq	d15, [lr, #-4]
    12e0:	01010100 	mrseq	r0, (UNDEF: 17)
    12e4:	00000001 	andeq	r0, r0, r1
    12e8:	01000001 	tsteq	r0, r1
    12ec:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    12f0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    12f4:	2f2e2e2f 	svccs	0x002e2e2f
    12f8:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
    12fc:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1300:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    1304:	732f6362 	teqvc	pc, #-2013265919	; 0x88000001
    1308:	696c6474 	stmdbvs	ip!, {r2, r4, r5, r6, sl, sp, lr}^
    130c:	622f0062 	eorvs	r0, pc, #98	; 0x62
    1310:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
    1314:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1318:	2f64646c 	svccs	0x0064646c
    131c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1320:	322d6269 	eorcc	r6, sp, #-1879048186	; 0x90000006
    1324:	302e312e 	eorcc	r3, lr, lr, lsr #2
    1328:	7469672b 	strbtvc	r6, [r9], #-1835	; 0x72b
    132c:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
    1330:	38313830 	ldmdacc	r1!, {r4, r5, fp, ip, sp}
    1334:	3861312e 	stmdacc	r1!, {r1, r2, r3, r5, r8, ip, sp}^
    1338:	62333233 	eorsvs	r3, r3, #805306371	; 0x30000003
    133c:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1340:	2f62696c 	svccs	0x0062696c
    1344:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
    1348:	636e692f 	cmnvs	lr, #770048	; 0xbc000
    134c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
    1350:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
    1354:	73752f00 	cmnvc	r5, #0, 30
    1358:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
    135c:	63672f62 	cmnvs	r7, #392	; 0x188
    1360:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
    1364:	6f6e2d6d 	svcvs	0x006e2d6d
    1368:	652d656e 	strvs	r6, [sp, #-1390]!	; 0x56e
    136c:	2f696261 	svccs	0x00696261
    1370:	2f382e34 	svccs	0x00382e34
    1374:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    1378:	00656475 	rsbeq	r6, r5, r5, ror r4
    137c:	6f6c6d00 	svcvs	0x006c6d00
    1380:	632e6b63 	teqvs	lr, #101376	; 0x18c00
    1384:	00000100 	andeq	r0, r0, r0, lsl #2
    1388:	6b636f6c 	blvs	18dd140 <_ram_limit+0x14c5140>
    138c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
    1390:	745f0000 	ldrbvc	r0, [pc], #-0	; 1398 <_stacks_size+0xc78>
    1394:	73657079 	cmnvc	r5, #121	; 0x79
    1398:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
    139c:	74730000 	ldrbtvc	r0, [r3], #-0
    13a0:	66656464 	strbtvs	r6, [r5], -r4, ror #8
    13a4:	0300682e 	movweq	r6, #2094	; 0x82e
    13a8:	65720000 	ldrbvs	r0, [r2, #-0]!
    13ac:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    13b0:	00020068 	andeq	r0, r2, r8, rrx
    13b4:	05000000 	streq	r0, [r0, #-0]
    13b8:	401c5802 	andsmi	r5, ip, r2, lsl #16
    13bc:	01300300 	teqeq	r0, r0, lsl #6
    13c0:	01000202 	tsteq	r0, r2, lsl #4
    13c4:	02050001 	andeq	r0, r5, #1
    13c8:	00401c5c 	subeq	r1, r0, ip, asr ip
    13cc:	02013903 	andeq	r3, r1, #49152	; 0xc000
    13d0:	01010002 	tsteq	r1, r2
    13d4:	00000152 	andeq	r0, r0, r2, asr r1
    13d8:	01280002 	teqeq	r8, r2
    13dc:	01020000 	mrseq	r0, (UNDEF: 2)
    13e0:	000d0efb 	strdeq	r0, [sp], -fp
    13e4:	01010101 	tsteq	r1, r1, lsl #2
    13e8:	01000000 	mrseq	r0, (UNDEF: 0)
    13ec:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
    13f0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    13f4:	2f2e2e2f 	svccs	0x002e2e2f
    13f8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    13fc:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
    1400:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1404:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1408:	65722f63 	ldrbvs	r2, [r2, #-3939]!	; 0xf63
    140c:	00746e65 	rsbseq	r6, r4, r5, ror #28
    1410:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
    1414:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1418:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    141c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1420:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1424:	61652d65 	cmnvs	r5, r5, ror #26
    1428:	342f6962 	strtcc	r6, [pc], #-2402	; 1430 <_stacks_size+0xd10>
    142c:	692f382e 	stmdbvs	pc!, {r1, r2, r3, r5, fp, ip, sp}	; <UNPREDICTABLE>
    1430:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
    1434:	2f006564 	svccs	0x00006564
    1438:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    143c:	75622f64 	strbvc	r2, [r2, #-3940]!	; 0xf64
    1440:	64646c69 	strbtvs	r6, [r4], #-3177	; 0xc69
    1444:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1448:	2d62696c 	stclcs	9, cr6, [r2, #-432]!	; 0xfffffe50
    144c:	2e312e32 	mrccs	14, 1, r2, cr1, cr2, {1}
    1450:	69672b30 	stmdbvs	r7!, {r4, r5, r8, r9, fp, sp}^
    1454:	31303274 	teqcc	r0, r4, ror r2
    1458:	31383034 	teqcc	r8, r4, lsr r0
    145c:	61312e38 	teqvs	r1, r8, lsr lr
    1460:	33323338 	teqcc	r2, #56, 6	; 0xe0000000
    1464:	656e2f62 	strbvs	r2, [lr, #-3938]!	; 0xf62
    1468:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    146c:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1470:	6e692f63 	cdpvs	15, 6, cr2, cr9, cr3, {3}
    1474:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
    1478:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
    147c:	622f0073 	eorvs	r0, pc, #115	; 0x73
    1480:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
    1484:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1488:	2f64646c 	svccs	0x0064646c
    148c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1490:	322d6269 	eorcc	r6, sp, #-1879048186	; 0x90000006
    1494:	302e312e 	eorcc	r3, lr, lr, lsr #2
    1498:	7469672b 	strbtvc	r6, [r9], #-1835	; 0x72b
    149c:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
    14a0:	38313830 	ldmdacc	r1!, {r4, r5, fp, ip, sp}
    14a4:	3861312e 	stmdacc	r1!, {r1, r2, r3, r5, r8, ip, sp}^
    14a8:	62333233 	eorsvs	r3, r3, #805306371	; 0x30000003
    14ac:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    14b0:	2f62696c 	svccs	0x0062696c
    14b4:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
    14b8:	636e692f 	cmnvs	lr, #770048	; 0xbc000
    14bc:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
    14c0:	62730000 	rsbsvs	r0, r3, #0
    14c4:	2e726b72 	vmovcs.s8	r6, d2[7]
    14c8:	00010063 	andeq	r0, r1, r3, rrx
    14cc:	64747300 	ldrbtvs	r7, [r4], #-768	; 0x300
    14d0:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
    14d4:	00020068 	andeq	r0, r2, r8, rrx
    14d8:	636f6c00 	cmnvs	pc, #0, 24
    14dc:	00682e6b 	rsbeq	r2, r8, fp, ror #28
    14e0:	5f000003 	svcpl	0x00000003
    14e4:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
    14e8:	00682e73 	rsbeq	r2, r8, r3, ror lr
    14ec:	72000003 	andvc	r0, r0, #3
    14f0:	746e6565 	strbtvc	r6, [lr], #-1381	; 0x565
    14f4:	0300682e 	movweq	r6, #2094	; 0x82e
    14f8:	65720000 	ldrbvs	r0, [r2, #-0]!
    14fc:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    1500:	00040068 	andeq	r0, r4, r8, rrx
    1504:	05000000 	streq	r0, [r0, #-0]
    1508:	401c6002 	andsmi	r6, ip, r2
    150c:	01340300 	teqeq	r4, r0, lsl #6
    1510:	2d334632 	ldccs	6, cr4, [r3, #-200]!	; 0xffffff38
    1514:	0200692f 	andeq	r6, r0, #770048	; 0xbc000
    1518:	00470104 	subeq	r0, r7, r4, lsl #2
    151c:	4b010402 	blmi	4252c <_stacks_size+0x41e0c>
    1520:	01040200 	mrseq	r0, R12_usr
    1524:	00060230 	andeq	r0, r6, r0, lsr r2
    1528:	01230101 	teqeq	r3, r1, lsl #2
    152c:	00020000 	andeq	r0, r2, r0
    1530:	000000e1 	andeq	r0, r0, r1, ror #1
    1534:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
    1538:	0101000d 	tsteq	r1, sp
    153c:	00000101 	andeq	r0, r0, r1, lsl #2
    1540:	00000100 	andeq	r0, r0, r0, lsl #2
    1544:	6c616801 	stclvs	8, cr6, [r1], #-4
    1548:	73752f00 	cmnvc	r5, #0, 30
    154c:	6e692f72 	mcrvs	15, 3, r2, cr9, cr2, {3}
    1550:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
    1554:	656e2f65 	strbvs	r2, [lr, #-3941]!	; 0xf65
    1558:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    155c:	63616d2f 	cmnvs	r1, #3008	; 0xbc0
    1560:	656e6968 	strbvs	r6, [lr, #-2408]!	; 0x968
    1564:	73752f00 	cmnvc	r5, #0, 30
    1568:	6e692f72 	mcrvs	15, 3, r2, cr9, cr2, {3}
    156c:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
    1570:	656e2f65 	strbvs	r2, [lr, #-3941]!	; 0xf65
    1574:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1578:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
    157c:	73752f00 	cmnvc	r5, #0, 30
    1580:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
    1584:	63672f62 	cmnvs	r7, #392	; 0x188
    1588:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
    158c:	6f6e2d6d 	svcvs	0x006e2d6d
    1590:	652d656e 	strvs	r6, [sp, #-1390]!	; 0x56e
    1594:	2f696261 	svccs	0x00696261
    1598:	2f382e34 	svccs	0x00382e34
    159c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    15a0:	00656475 	rsbeq	r6, r5, r5, ror r4
    15a4:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
    15a8:	636e692f 	cmnvs	lr, #770048	; 0xbc000
    15ac:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
    15b0:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    15b4:	0062696c 	rsbeq	r6, r2, ip, ror #18
    15b8:	73797300 	cmnvc	r9, #0, 6
    15bc:	6c6c6163 	stfvse	f6, [ip], #-396	; 0xfffffe74
    15c0:	00632e73 	rsbeq	r2, r3, r3, ror lr
    15c4:	5f000001 	svcpl	0x00000001
    15c8:	61666564 	cmnvs	r6, r4, ror #10
    15cc:	5f746c75 	svcpl	0x00746c75
    15d0:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
    15d4:	00682e73 	rsbeq	r2, r8, r3, ror lr
    15d8:	5f000002 	svcpl	0x00000002
    15dc:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
    15e0:	00682e73 	rsbeq	r2, r8, r3, ror lr
    15e4:	73000003 	movwvc	r0, #3
    15e8:	65646474 	strbvs	r6, [r4, #-1140]!	; 0x474
    15ec:	00682e66 	rsbeq	r2, r8, r6, ror #28
    15f0:	74000004 	strvc	r0, [r0], #-4
    15f4:	73657079 	cmnvc	r5, #121	; 0x79
    15f8:	0300682e 	movweq	r6, #2094	; 0x82e
    15fc:	74730000 	ldrbtvc	r0, [r3], #-0
    1600:	746e6964 	strbtvc	r6, [lr], #-2404	; 0x964
    1604:	0500682e 	streq	r6, [r0, #-2094]	; 0x82e
    1608:	74730000 	ldrbtvc	r0, [r3], #-0
    160c:	682e7461 	stmdavs	lr!, {r0, r5, r6, sl, ip, sp, lr}
    1610:	00000300 	andeq	r0, r0, r0, lsl #6
    1614:	02050000 	andeq	r0, r5, #0
    1618:	00400d04 	subeq	r0, r0, r4, lsl #26
    161c:	84011d03 	strhi	r1, [r1], #-3331	; 0xd03
    1620:	d885316a 	stmle	r5, {r1, r3, r5, r6, r8, ip, sp}
    1624:	30bf6b83 	adcscc	r6, pc, r3, lsl #23
    1628:	ba0d032f 	blt	3422ec <_stacks_size+0x341bcc>
    162c:	0b032fbd 	bleq	cd528 <_stacks_size+0xcce08>
    1630:	032f8482 	teqeq	pc, #-2113929216	; 0x82000000
    1634:	2fbc820d 	svccs	0x00bc820d
    1638:	bc820d03 	stclt	13, cr0, [r2], {3}
    163c:	820d032f 	andhi	r0, sp, #-1140850688	; 0xbc000000
    1640:	0c032fbc 	stceq	15, cr2, [r3], {188}	; 0xbc
    1644:	032fa082 	teqeq	pc, #130	; 0x82
    1648:	2f84820b 	svccs	0x0084820b
    164c:	01000802 	tsteq	r0, r2, lsl #16
    1650:	Address 0x0000000000001650 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
       0:	5f676572 	svcpl	0x00676572
       4:	6f697067 	svcvs	0x00697067
       8:	7461645f 	strbtvc	r6, [r1], #-1119	; 0x45f
       c:	65725f61 	ldrbvs	r5, [r2, #-3937]!	; 0xf61
      10:	31746573 	cmncc	r4, r3, ror r5
      14:	6c656800 	stclvs	8, cr6, [r5], #-0
      18:	632e6f6c 	teqvs	lr, #108, 30	; 0x1b0
      1c:	64656c00 	strbtvs	r6, [r5], #-3072	; 0xc00
      20:	6572675f 	ldrbvs	r6, [r2, #-1887]!	; 0x75f
      24:	6d5f6e65 	ldclvs	14, cr6, [pc, #-404]	; fffffe98 <_STACK_FILLER+0x21523fa9>
      28:	006b7361 	rsbeq	r7, fp, r1, ror #6
      2c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
      30:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
      34:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
      38:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
      3c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
      40:	6400746e 	strvs	r7, [r0], #-1134	; 0x46e
      44:	79616c65 	stmdbvc	r1!, {r0, r2, r5, r6, sl, fp, sp, lr}^
      48:	736e7500 	cmnvc	lr, #0, 10
      4c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0x769
      50:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
      54:	6c007261 	sfmvs	f7, 4, [r0], {97}	; 0x61
      58:	725f6465 	subsvc	r6, pc, #1694498816	; 0x65000000
      5c:	6d5f6465 	cfldrdvs	mvd6, [pc, #-404]	; fffffed0 <_STACK_FILLER+0x21523fe1>
      60:	006b7361 	rsbeq	r7, fp, r1, ror #6
      64:	5f74756f 	svcpl	0x0074756f
      68:	6f003273 	svcvs	0x00003273
      6c:	735f7475 	cmpvc	pc, #1962934272	; 0x75000000
      70:	68730033 	ldmdavs	r3!, {r0, r1, r4, r5}^
      74:	2074726f 	rsbscs	r7, r4, pc, ror #4
      78:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
      7c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xe67
      80:	746e6920 	strbtvc	r6, [lr], #-2336	; 0x920
      84:	554e4700 	strbpl	r4, [lr, #-1792]	; 0x700
      88:	34204320 	strtcc	r4, [r0], #-800	; 0x320
      8c:	332e382e 	teqcc	lr, #3014656	; 0x2e0000
      90:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
      94:	613d7570 	teqvs	sp, r0, ror r5
      98:	74376d72 	ldrtvc	r6, [r7], #-3442	; 0xd72
      9c:	20696d64 	rsbcs	r6, r9, r4, ror #26
      a0:	7400672d 	strvc	r6, [r0], #-1837	; 0x72d
      a4:	5f747365 	svcpl	0x00747365
      a8:	74747562 	ldrbtvc	r7, [r4], #-1378	; 0x562
      ac:	00736e6f 	rsbseq	r6, r3, pc, ror #28
      b0:	746e6d2f 	strbtvc	r6, [lr], #-3375	; 0xd2f
      b4:	3038352f 	eorscc	r3, r8, pc, lsr #10
      b8:	35323646 	ldrcc	r3, [r2, #-1606]!	; 0x646
      bc:	39383043 	ldmdbcc	r8!, {r0, r1, r6, ip, sp}
      c0:	45323242 	ldrmi	r3, [r2, #-578]!	; 0x242
      c4:	6e552f30 	mrcvs	15, 2, r2, cr5, cr0, {1}
      c8:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
      cc:	61646973 	smcvs	18067	; 0x4693
      d0:	2f352f64 	svccs	0x00352f64
      d4:	74617543 	strbtvc	r7, [r1], #-1347	; 0x543
      d8:	656d6972 	strbvs	r6, [sp, #-2418]!	; 0x972
      dc:	65727473 	ldrbvs	r7, [r2, #-1139]!	; 0x473
      e0:	69532f49 	ldmdbvs	r3, {r0, r3, r6, r8, r9, sl, fp, sp}^
      e4:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
      e8:	65207361 	strvs	r7, [r0, #-865]!	; 0x361
      ec:	746f706d 	strbtvc	r7, [pc], #-109	; f4 <_IRQ_DISABLE+0x74>
      f0:	6f646172 	svcvs	0x00646172
      f4:	72702f73 	rsbsvc	r2, r0, #460	; 0x1cc
      f8:	69746361 	ldmdbvs	r4!, {r0, r5, r6, r8, r9, sp, lr}^
      fc:	2f736163 	svccs	0x00736163
     100:	6f706552 	svcvs	0x00706552
     104:	7070612f 	rsbsvc	r6, r0, pc, lsr #2
     108:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff210 <_STACK_FILLER+0x21523321>
     10c:	33746e69 	cmncc	r4, #1680	; 0x690
     110:	00745f32 	rsbseq	r5, r4, r2, lsr pc
     114:	6e69616d 	powvsez	f6, f1, #5.0
     118:	65687400 	strbvs	r7, [r8, #-1024]!	; 0x400
     11c:	64656c5f 	strbtvs	r6, [r5], #-3167	; 0xc5f
     120:	67657200 	strbvs	r7, [r5, -r0, lsl #4]!
     124:	6970675f 	ldmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, sp, lr}^
     128:	61705f6f 	cmnvs	r0, pc, ror #30
     12c:	69645f64 	stmdbvs	r4!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
     130:	72003072 	andvc	r3, r0, #114	; 0x72
     134:	675f6765 	ldrbvs	r6, [pc, -r5, ror #14]
     138:	5f6f6970 	svcpl	0x006f6970
     13c:	5f646170 	svcpl	0x00646170
     140:	31726964 	cmncc	r2, r4, ror #18
     144:	67657200 	strbvs	r7, [r5, -r0, lsl #4]!
     148:	6970675f 	ldmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, sp, lr}^
     14c:	61645f6f 	cmnvs	r4, pc, ror #30
     150:	735f6174 	cmpvc	pc, #116, 2
     154:	00307465 	eorseq	r7, r0, r5, ror #8
     158:	5f676572 	svcpl	0x00676572
     15c:	6f697067 	svcvs	0x00697067
     160:	7461645f 	strbtvc	r6, [r1], #-1119	; 0x45f
     164:	73003061 	movwvc	r3, #97	; 0x61
     168:	74657a69 	strbtvc	r7, [r5], #-2665	; 0xa69
     16c:	00657079 	rsbeq	r7, r5, r9, ror r0
     170:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
     174:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     178:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
     17c:	70670074 	rsbvc	r0, r7, r4, ror r0
     180:	695f6f69 	ldmdbvs	pc, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
     184:	0074696e 	rsbseq	r6, r4, lr, ror #18
     188:	5f676572 	svcpl	0x00676572
     18c:	6f697067 	svcvs	0x00697067
     190:	7461645f 	strbtvc	r6, [r1], #-1119	; 0x45f
     194:	65735f61 	ldrbvs	r5, [r3, #-3937]!	; 0xf61
     198:	73003174 	movwvc	r3, #372	; 0x174
     19c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xf68
     1a0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0x920
     1a4:	75617000 	strbvc	r7, [r1, #-0]!
     1a8:	6c006573 	cfstr32vs	mvfx6, [r0], {115}	; 0x73
     1ac:	5f736465 	svcpl	0x00736465
     1b0:	69006e6f 	stmdbvs	r0, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}
     1b4:	32735f6e 	rsbscc	r5, r3, #440	; 0x1b8
     1b8:	5f6e6900 	svcpl	0x006e6900
     1bc:	6c003373 	stcvs	3, cr3, [r0], {115}	; 0x73
     1c0:	5f736465 	svcpl	0x00736465
     1c4:	0066666f 	rsbeq	r6, r6, pc, ror #12
     1c8:	5f707362 	svcpl	0x00707362
     1cc:	725f6f69 	subsvc	r6, pc, #420	; 0x1a4
     1d0:	72696465 	rsbvc	r6, r9, #1694498816	; 0x65000000
     1d4:	00746365 	rsbseq	r6, r4, r5, ror #6
     1d8:	65647473 	strbvs	r7, [r4, #-1139]!	; 0x473
     1dc:	645f7272 	ldrbvs	r7, [pc], #-626	; 1e4 <_fiq_stack_size+0xe4>
     1e0:	73007665 	movwvc	r7, #1637	; 0x665
     1e4:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
     1e8:	7665645f 			; <UNDEFINED> instruction: 0x7665645f
     1ec:	72617500 	rsbvc	r7, r1, #0, 10
     1f0:	616d5f74 	smcvs	54772	; 0xd5f4
     1f4:	61750078 	cmnvs	r5, r8, ror r0
     1f8:	315f7472 	cmpcc	pc, r2, ror r4	; <UNPREDICTABLE>
     1fc:	72617500 	rsbvc	r7, r1, #0, 10
     200:	00325f74 	eorseq	r5, r2, r4, ror pc
     204:	6f647473 	svcvs	0x00647473
     208:	645f7475 	ldrbvs	r7, [pc], #-1141	; 210 <_fiq_stack_size+0x110>
     20c:	62007665 	andvs	r7, r0, #105906176	; 0x6500000
     210:	655f7073 	ldrbvs	r7, [pc, #-115]	; 1a5 <_fiq_stack_size+0xa5>
     214:	70656378 	rsbvc	r6, r5, r8, ror r3
     218:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
     21c:	61680074 	smcvs	32772	; 0x8004
     220:	73622f6c 	cmnvc	r2, #108, 30	; 0x1b0
     224:	6e695f70 	mcrvs	15, 3, r5, cr9, cr0, {3}
     228:	632e7469 	teqvs	lr, #1761607680	; 0x69000000
     22c:	70736200 	rsbsvc	r6, r3, r0, lsl #4
     230:	7379735f 	cmnvc	r9, #2080374785	; 0x7c000001
     234:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
     238:	73620074 	cmnvc	r2, #116	; 0x74
     23c:	6e695f70 	mcrvs	15, 3, r5, cr9, cr0, {3}
     240:	2f007469 	svccs	0x00007469
     244:	2f746e6d 	svccs	0x00746e6d
     248:	46303835 			; <UNDEFINED> instruction: 0x46303835
     24c:	43353236 	teqmi	r5, #1610612739	; 0x60000003
     250:	42393830 	eorsmi	r3, r9, #48, 16	; 0x300000
     254:	30453232 	subcc	r3, r5, r2, lsr r2
     258:	696e552f 	stmdbvs	lr!, {r0, r1, r2, r3, r5, r8, sl, ip, lr}^
     25c:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
     260:	64616469 	strbtvs	r6, [r1], #-1129	; 0x469
     264:	432f352f 	teqmi	pc, #197132288	; 0xbc00000
     268:	72746175 	rsbsvc	r6, r4, #1073741853	; 0x4000001d
     26c:	73656d69 	cmnvc	r5, #6720	; 0x1a40
     270:	49657274 	stmdbmi	r5!, {r2, r4, r5, r6, r9, ip, sp, lr}^
     274:	7369532f 	cmnvc	r9, #-1140850688	; 0xbc000000
     278:	616d6574 	smcvs	54868	; 0xd654
     27c:	6d652073 	stclvs	0, cr2, [r5, #-460]!	; 0xfffffe34
     280:	72746f70 	rsbsvc	r6, r4, #112, 30	; 0x1c0
     284:	736f6461 	cmnvc	pc, #1627389952	; 0x61000000
     288:	6172702f 	cmnvs	r2, pc, lsr #32
     28c:	63697463 	cmnvs	r9, #1660944384	; 0x63000000
     290:	522f7361 	eorpl	r7, pc, #-2080374783	; 0x84000001
     294:	2f6f7065 	svccs	0x006f7065
     298:	00707362 	rsbseq	r7, r0, r2, ror #6
     29c:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0x572
     2a0:	5f657361 	svcpl	0x00657361
     2a4:	6d006466 	cfstrsvs	mvf6, [r0, #-408]	; 0xfffffe68
     2a8:	5f65646f 	svcpl	0x0065646f
     2ac:	6f5f0074 	svcvs	0x005f0074
     2b0:	745f6666 	ldrbvc	r6, [pc], #-1638	; 2b8 <_fiq_stack_size+0x1b8>
     2b4:	6d657400 	cfstrdvs	mvd7, [r5, #-0]
     2b8:	74730070 	ldrbtvc	r0, [r3], #-112	; 0x70
     2bc:	6974635f 	ldmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sp, lr}^
     2c0:	7300656d 	movwvc	r6, #1389	; 0x56d
     2c4:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xf74
     2c8:	74730076 	ldrbtvc	r0, [r3], #-118	; 0x76
     2cc:	696c6e5f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r9, sl, fp, sp, lr}^
     2d0:	73006b6e 	movwvc	r6, #2926	; 0xb6e
     2d4:	64725f74 	ldrbtvs	r5, [r2], #-3956	; 0xf74
     2d8:	62007665 	andvs	r7, r0, #105906176	; 0x6500000
     2dc:	645f7073 	ldrbvs	r7, [pc], #-115	; 2e4 <_fiq_stack_size+0x1e4>
     2e0:	745f7665 	ldrbvc	r7, [pc], #-1637	; 2e8 <_fiq_stack_size+0x1e8>
     2e4:	6d697400 	cfstrdvs	mvd7, [r9, #-0]
     2e8:	00745f65 	rsbseq	r5, r4, r5, ror #30
     2ec:	625f7473 	subsvs	r7, pc, #1929379840	; 0x73000000
     2f0:	69736b6c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, r9, fp, sp, lr}^
     2f4:	7300657a 	movwvc	r6, #1402	; 0x57a
     2f8:	69675f74 	stmdbvs	r7!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
     2fc:	6e690064 	cdpvs	0, 6, cr0, cr9, cr4, {3}
     300:	00745f6f 	rsbseq	r5, r4, pc, ror #30
     304:	646e6966 	strbtvs	r6, [lr], #-2406	; 0x966
     308:	7665645f 			; <UNDEFINED> instruction: 0x7665645f
     30c:	5f747300 	svcpl	0x00747300
     310:	6d697461 	cfstrdvs	mvd7, [r9, #-388]!	; 0xfffffe7c
     314:	65720065 	ldrbvs	r0, [r2, #-101]!	; 0x65
     318:	65726964 	ldrbvs	r6, [r2, #-2404]!	; 0x964
     31c:	665f7463 	ldrbvs	r7, [pc], -r3, ror #8
     320:	73620064 	cmnvc	r2, #100	; 0x64
     324:	64665f70 	strbtvs	r5, [r6], #-3952	; 0xf70
     328:	7300745f 	movwvc	r7, #1119	; 0x45f
     32c:	70735f74 	rsbsvc	r5, r3, r4, ror pc
     330:	31657261 	cmncc	r5, r1, ror #4
     334:	5f747300 	svcpl	0x00747300
     338:	006f6e69 	rsbeq	r6, pc, r9, ror #28
     33c:	5f707362 	svcpl	0x00707362
     340:	6c5f6466 	cfldrdvs	mvd6, [pc], {102}	; 0x66
     344:	00747369 	rsbseq	r7, r4, r9, ror #6
     348:	5f707362 	svcpl	0x00707362
     34c:	5f766564 	svcpl	0x00766564
     350:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0x96c
     354:	5f747300 	svcpl	0x00747300
     358:	6d69746d 	cfstrdvs	mvd7, [r9, #-436]!	; 0xfffffe4c
     35c:	74730065 	ldrbtvc	r0, [r3], #-101	; 0x65
     360:	6469755f 	strbtvs	r7, [r9], #-1375	; 0x55f
     364:	5f747300 	svcpl	0x00747300
     368:	636f6c62 	cmnvs	pc, #25088	; 0x6200
     36c:	6e00736b 	cdpvs	3, 0, cr7, cr0, cr11, {3}
     370:	6b6e696c 	blvs	1b9a928 <_ram_limit+0x1782928>
     374:	6700745f 	smlsdvs	r0, pc, r4, r7	; <UNPREDICTABLE>
     378:	665f7465 	ldrbvs	r7, [pc], -r5, ror #8
     37c:	74730064 	ldrbtvc	r0, [r3], #-100	; 0x64
     380:	7a69735f 	bvc	1a5d104 <_ram_limit+0x1645104>
     384:	61700065 	cmnvs	r0, r5, rrx
     388:	616e6874 	smcvs	59012	; 0xe684
     38c:	7300656d 	movwvc	r6, #1389	; 0x56d
     390:	70735f74 	rsbsvc	r5, r3, r4, ror pc
     394:	32657261 	rsbcc	r7, r5, #268435462	; 0x10000006
     398:	5f747300 	svcpl	0x00747300
     39c:	72617073 	rsbvc	r7, r1, #115	; 0x73
     3a0:	73003365 	movwvc	r3, #869	; 0x365
     3a4:	70735f74 	rsbsvc	r5, r3, r4, ror pc
     3a8:	34657261 	strbtcc	r7, [r5], #-609	; 0x261
     3ac:	70736200 	rsbsvc	r6, r3, r0, lsl #4
     3b0:	6765725f 			; <UNDEFINED> instruction: 0x6765725f
     3b4:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0x369
     3b8:	65645f72 	strbvs	r5, [r4, #-3954]!	; 0xf72
     3bc:	65670076 	strbvs	r0, [r7, #-118]!	; 0x76
     3c0:	6c665f74 	stclvs	15, cr5, [r6], #-464	; 0xfffffe30
     3c4:	00736761 	rsbseq	r6, r3, r1, ror #14
     3c8:	65645f5f 	strbvs	r5, [r4, #-3935]!	; 0xf5f
     3cc:	00745f76 	rsbseq	r5, r4, r6, ror pc
     3d0:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
     3d4:	5f323374 	svcpl	0x00323374
     3d8:	65670074 	strbvs	r0, [r7, #-116]!	; 0x74
     3dc:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xf74
     3e0:	73620076 	cmnvc	r2, #118	; 0x76
     3e4:	656e5f70 	strbvs	r5, [lr, #-3952]!	; 0xf70
     3e8:	645f7478 	ldrbvs	r7, [pc], #-1144	; 3f0 <_fiq_stack_size+0x2f0>
     3ec:	68007665 	stmdavs	r0, {r0, r2, r5, r6, r9, sl, ip, sp, lr}
     3f0:	642f6c61 	strtvs	r6, [pc], #-3169	; 3f8 <_fiq_stack_size+0x2f8>
     3f4:	632e7665 	teqvs	lr, #105906176	; 0x6500000
     3f8:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff500 <_STACK_FILLER+0x21523611>
     3fc:	745f6469 	ldrbvc	r6, [pc], #-1129	; 404 <_sys_stack_size+0x4>
     400:	5f747300 	svcpl	0x00747300
     404:	65646f6d 	strbvs	r6, [r4, #-3949]!	; 0xf6d
     408:	675f5f00 	ldrbvs	r5, [pc, -r0, lsl #30]
     40c:	745f6469 	ldrbvc	r6, [pc], #-1129	; 414 <_sys_stack_size+0x14>
     410:	73735f00 	cmnvc	r3, #0, 30
     414:	5f657a69 	svcpl	0x00657a69
     418:	78650074 	stmdavc	r5!, {r2, r4, r5, r6}^
     41c:	5f706563 	svcpl	0x00706563
     420:	646e6168 	strbtvs	r6, [lr], #-360	; 0x168
     424:	5f72656c 	svcpl	0x0072656c
     428:	78650074 	stmdavc	r5!, {r2, r4, r5, r6}^
     42c:	5f706563 	svcpl	0x00706563
     430:	74626164 	strbtvc	r6, [r2], #-356	; 0x164
     434:	625f6600 	subsvs	r6, pc, #0, 12
     438:	65007469 	strvs	r7, [r0, #-1129]	; 0x469
     43c:	70656378 	rsbvc	r6, r5, r8, ror r3
     440:	6500745f 	strvs	r7, [r0, #-1119]	; 0x45f
     444:	70656378 	rsbvc	r6, r5, r8, ror r3
     448:	78616d5f 	stmdavc	r1!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
     44c:	63786500 	cmnvs	r8, #0, 10
     450:	755f7065 	ldrbvc	r7, [pc, #-101]	; 3f3 <_fiq_stack_size+0x2f3>
     454:	6665646e 	strbtvs	r6, [r5], -lr, ror #8
     458:	63786500 	cmnvs	r8, #0, 10
     45c:	6e5f7065 	cdpvs	0, 5, cr7, cr15, cr5, {3}
     460:	656e6e6f 	strbvs	r6, [lr, #-3695]!	; 0xe6f
     464:	64657473 	strbtvs	r7, [r5], #-1139	; 0x473
     468:	7172695f 	cmnvc	r2, pc, asr r9
     46c:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
     470:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
     474:	63786500 	cmnvs	r8, #0, 10
     478:	645f7065 	ldrbvs	r7, [pc], #-101	; 480 <_sys_stack_size+0x80>
     47c:	62617369 	rsbvs	r7, r1, #-1543503871	; 0xa4000001
     480:	695f656c 	ldmdbvs	pc, {r2, r3, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
     484:	0073746e 	rsbseq	r7, r3, lr, ror #8
     488:	65637865 	strbvs	r7, [r3, #-2149]!	; 0x865
     48c:	65725f70 	ldrbvs	r5, [r2, #-3952]!	; 0xf70
     490:	726f7473 	rsbvc	r7, pc, #1929379840	; 0x73000000
     494:	72695f65 	rsbvc	r5, r9, #404	; 0x194
     498:	78650071 	stmdavc	r5!, {r0, r4, r5, r6}^
     49c:	5f706563 	svcpl	0x00706563
     4a0:	00767372 	rsbseq	r7, r6, r2, ror r3
     4a4:	65637865 	strbvs	r7, [r3, #-2149]!	; 0x865
     4a8:	655f0070 	ldrbvs	r0, [pc, #-112]	; 440 <_sys_stack_size+0x40>
     4ac:	70656378 	rsbvc	r6, r5, r8, ror r3
     4b0:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
     4b4:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
     4b8:	78650073 	stmdavc	r5!, {r0, r1, r4, r5, r6}^
     4bc:	5f706563 	svcpl	0x00706563
     4c0:	74736572 	ldrbtvc	r6, [r3], #-1394	; 0x572
     4c4:	5f65726f 	svcpl	0x0065726f
     4c8:	00716966 	rsbseq	r6, r1, r6, ror #18
     4cc:	65637865 	strbvs	r7, [r3, #-2149]!	; 0x865
     4d0:	69645f70 	stmdbvs	r4!, {r4, r5, r6, r8, r9, sl, fp, ip, lr}^
     4d4:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
     4d8:	69665f65 	stmdbvs	r6!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
     4dc:	78650071 	stmdavc	r5!, {r0, r4, r5, r6}^
     4e0:	5f706563 	svcpl	0x00706563
     4e4:	5f746567 	svcpl	0x00746567
     4e8:	646e6168 	strbtvs	r6, [lr], #-360	; 0x168
     4ec:	0072656c 	rsbseq	r6, r2, ip, ror #10
     4f0:	65637865 	strbvs	r7, [r3, #-2149]!	; 0x865
     4f4:	61705f70 	cmnvs	r0, r0, ror pc
     4f8:	65007462 	strvs	r7, [r0, #-1122]	; 0x462
     4fc:	70656378 	rsbvc	r6, r5, r8, ror r3
     500:	7369645f 	cmnvc	r9, #1593835520	; 0x5f000000
     504:	656c6261 	strbvs	r6, [ip, #-609]!	; 0x261
     508:	7172695f 	cmnvc	r2, pc, asr r9
     50c:	676c6100 	strbvs	r6, [ip, -r0, lsl #2]!
     510:	7865006f 	stmdavc	r5!, {r0, r1, r2, r3, r5, r6}^
     514:	5f706563 	svcpl	0x00706563
     518:	00717269 	rsbseq	r7, r1, r9, ror #4
     51c:	65637865 	strbvs	r7, [r3, #-2149]!	; 0x865
     520:	77735f70 			; <UNDEFINED> instruction: 0x77735f70
     524:	78650069 	stmdavc	r5!, {r0, r3, r5, r6}^
     528:	5f706563 	svcpl	0x00706563
     52c:	5f746573 	svcpl	0x00746573
     530:	646e6168 	strbtvs	r6, [lr], #-360	; 0x168
     534:	0072656c 	rsbseq	r6, r2, ip, ror #10
     538:	65637865 	strbvs	r7, [r3, #-2149]!	; 0x865
     53c:	65725f70 	ldrbvs	r5, [r2, #-3952]!	; 0xf70
     540:	726f7473 	rsbvc	r7, pc, #1929379840	; 0x73000000
     544:	6e695f65 	cdpvs	15, 6, cr5, cr9, cr5, {3}
     548:	68007374 	stmdavs	r0, {r2, r4, r5, r6, r8, r9, ip, sp, lr}
     54c:	652f6c61 	strvs	r6, [pc, #-3169]!	; fffff8f3 <_STACK_FILLER+0x21523a04>
     550:	70656378 	rsbvc	r6, r5, r8, ror r3
     554:	6900632e 	stmdbvs	r0, {r1, r2, r3, r5, r8, r9, sp, lr}
     558:	7469625f 	strbtvc	r6, [r9], #-607	; 0x25f
     55c:	63786500 	cmnvs	r8, #0, 10
     560:	725f7065 	subsvc	r7, pc, #101	; 0x65
     564:	74657365 	strbtvc	r7, [r5], #-869	; 0x365
     568:	63786500 	cmnvs	r8, #0, 10
     56c:	665f7065 	ldrbvs	r7, [pc], -r5, rrx
     570:	69007169 	stmdbvs	r0, {r0, r3, r5, r6, r8, ip, sp, lr}
     574:	69625f66 	stmdbvs	r2!, {r1, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
     578:	69007374 	stmdbvs	r0, {r2, r4, r5, r6, r8, r9, ip, sp, lr}
     57c:	735f6374 	cmpvc	pc, #116, 6	; 0xd0000001
     580:	735f6372 	cmpvc	pc, #-939524095	; 0xc8000001
     584:	69006973 	stmdbvs	r0, {r0, r1, r4, r5, r6, r8, fp, sp, lr}
     588:	685f6374 	ldmdavs	pc, {r2, r4, r5, r6, r8, r9, sp, lr}^	; <UNPREDICTABLE>
     58c:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
     590:	745f7265 	ldrbvc	r7, [pc], #-613	; 598 <_sys_stack_size+0x198>
     594:	63746900 	cmnvs	r4, #0, 18
     598:	666e755f 			; <UNDEFINED> instruction: 0x666e755f
     59c:	6563726f 	strbvs	r7, [r3, #-623]!	; 0x26f
     5a0:	746e695f 	strbtvc	r6, [lr], #-2399	; 0x95f
     5a4:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0x265
     5a8:	69007470 	stmdbvs	r0, {r4, r5, r6, sl, ip, sp, lr}
     5ac:	735f6374 	cmpvc	pc, #116, 6	; 0xd0000001
     5b0:	69767265 	ldmdbvs	r6!, {r0, r2, r5, r6, r9, ip, sp, lr}^
     5b4:	6e5f6563 	cdpvs	5, 5, cr6, cr15, cr3, {3}
     5b8:	616d726f 	cmnvs	sp, pc, ror #4
     5bc:	6e695f6c 	cdpvs	15, 6, cr5, cr9, cr12, {3}
     5c0:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
     5c4:	00747075 	rsbseq	r7, r4, r5, ror r0
     5c8:	5f637469 	svcpl	0x00637469
     5cc:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xe69
     5d0:	63746900 	cmnvs	r4, #0, 18
     5d4:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
     5d8:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
     5dc:	74690073 	strbtvc	r0, [r9], #-115	; 0x73
     5e0:	72735f63 	rsbsvc	r5, r3, #396	; 0x18c
     5e4:	32695f63 	rsbcc	r5, r9, #396	; 0x18c
     5e8:	74690063 	strbtvc	r0, [r9], #-99	; 0x63
     5ec:	72705f63 	rsbsvc	r5, r0, #396	; 0x18c
     5f0:	69726f69 	ldmdbvs	r2!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
     5f4:	745f7974 	ldrbvc	r7, [pc], #-2420	; 5fc <_sys_stack_size+0x1fc>
     5f8:	63746900 	cmnvs	r4, #0, 18
     5fc:	6372735f 	cmnvs	r2, #2080374785	; 0x7c000001
     600:	726d745f 	rsbvc	r7, sp, #1593835520	; 0x5f000000
     604:	63746900 	cmnvs	r4, #0, 18
     608:	6372735f 	cmnvs	r2, #2080374785	; 0x7c000001
     60c:	6970735f 	ldmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
     610:	74690066 	strbtvc	r0, [r9], #-102	; 0x66
     614:	72735f63 	rsbsvc	r5, r3, #396	; 0x18c
     618:	616d5f63 	cmnvs	sp, r3, ror #30
     61c:	74690078 	strbtvc	r0, [r9], #-120	; 0x78
     620:	65735f63 	ldrbvs	r5, [r3, #-3939]!	; 0xf63
     624:	61685f74 	smcvs	34292	; 0x85f4
     628:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0x46e
     62c:	72640072 	rsbvc	r0, r4, #114	; 0x72
     630:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
     634:	74692f73 	strbtvc	r2, [r9], #-3955	; 0xf73
     638:	00632e63 	rsbeq	r2, r3, r3, ror #28
     63c:	5f637469 	svcpl	0x00637469
     640:	5f637273 	svcpl	0x00637273
     644:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
     648:	74690031 	strbtvc	r0, [r9], #-49	; 0x31
     64c:	72735f63 	rsbsvc	r5, r3, #396	; 0x18c
     650:	61755f63 	cmnvs	r5, r3, ror #30
     654:	00327472 	eorseq	r7, r2, r2, ror r4
     658:	5f637469 	svcpl	0x00637469
     65c:	6f697270 	svcvs	0x00697270
     660:	79746972 	ldmdbvc	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
     664:	78616d5f 	stmdavc	r1!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
     668:	63746900 	cmnvs	r4, #0, 18
     66c:	6372735f 	cmnvs	r2, #2080374785	; 0x7c000001
     670:	6900745f 	stmdbvs	r0, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
     674:	735f6374 	cmpvc	pc, #116, 6	; 0xd0000001
     678:	69767265 	ldmdbvs	r6!, {r0, r2, r5, r6, r9, ip, sp, lr}^
     67c:	665f6563 	ldrbvs	r6, [pc], -r3, ror #10
     680:	5f747361 	svcpl	0x00747361
     684:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xe69
     688:	70757272 	rsbsvc	r7, r5, r2, ror r2
     68c:	74690074 	strbtvc	r0, [r9], #-116	; 0x74
     690:	72735f63 	rsbsvc	r5, r3, #396	; 0x18c
     694:	616d5f63 	cmnvs	sp, r3, ror #30
     698:	69006163 	stmdbvs	r0, {r0, r1, r5, r6, r8, sp, lr}
     69c:	645f6374 	ldrbvs	r6, [pc], #-884	; 6a4 <_sys_stack_size+0x2a4>
     6a0:	62617369 	rsbvs	r7, r1, #-1543503871	; 0xa4000001
     6a4:	695f656c 	ldmdbvs	pc, {r2, r3, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
     6a8:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
     6ac:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0x572
     6b0:	63746900 	cmnvs	r4, #0, 18
     6b4:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
     6b8:	65726f74 	ldrbvs	r6, [r2, #-3956]!	; 0xf74
     6bc:	746e695f 	strbtvc	r6, [lr], #-2399	; 0x95f
     6c0:	74690073 	strbtvc	r0, [r9], #-115	; 0x73
     6c4:	72705f63 	rsbsvc	r5, r0, #396	; 0x18c
     6c8:	69726f69 	ldmdbvs	r2!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
     6cc:	665f7974 			; <UNDEFINED> instruction: 0x665f7974
     6d0:	00747361 	rsbseq	r7, r4, r1, ror #6
     6d4:	5f637469 	svcpl	0x00637469
     6d8:	61736964 	cmnvs	r3, r4, ror #18
     6dc:	5f656c62 	svcpl	0x00656c62
     6e0:	73746e69 	cmnvc	r4, #1680	; 0x690
     6e4:	63746900 	cmnvs	r4, #0, 18
     6e8:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
     6ec:	695f6563 	ldmdbvs	pc, {r0, r1, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
     6f0:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
     6f4:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0x572
     6f8:	63746900 	cmnvs	r4, #0, 18
     6fc:	616e655f 	cmnvs	lr, pc, asr r5
     700:	5f656c62 	svcpl	0x00656c62
     704:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xe69
     708:	70757272 	rsbsvc	r7, r5, r2, ror r2
     70c:	74690074 	strbtvc	r0, [r9], #-116	; 0x74
     710:	72735f63 	rsbsvc	r5, r3, #396	; 0x18c
     714:	73615f63 	cmnvc	r1, #396	; 0x18c
     718:	7469006d 	strbtvc	r0, [r9], #-109	; 0x6d
     71c:	72735f63 	rsbsvc	r5, r3, #396	; 0x18c
     720:	64615f63 	strbtvs	r5, [r1], #-3939	; 0xf63
     724:	74690063 	strbtvc	r0, [r9], #-99	; 0x63
     728:	65725f63 	ldrbvs	r5, [r2, #-3939]!	; 0xf63
     72c:	745f7367 	ldrbvc	r7, [pc], #-871	; 734 <_stacks_size+0x14>
     730:	63746900 	cmnvs	r4, #0, 18
     734:	6765725f 			; <UNDEFINED> instruction: 0x6765725f
     738:	74690073 	strbtvc	r0, [r9], #-115	; 0x73
     73c:	72735f63 	rsbsvc	r5, r3, #396	; 0x18c
     740:	70735f63 	rsbsvc	r5, r3, r3, ror #30
     744:	74690069 	strbtvc	r0, [r9], #-105	; 0x69
     748:	72705f63 	rsbsvc	r5, r0, #396	; 0x18c
     74c:	69726f69 	ldmdbvs	r2!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
     750:	6e5f7974 	mrcvs	9, 2, r7, cr15, cr4, {3}
     754:	616d726f 	cmnvs	sp, pc, ror #4
     758:	7469006c 	strbtvc	r0, [r9], #-108	; 0x6c
     75c:	65735f63 	ldrbvs	r5, [r3, #-3939]!	; 0xf63
     760:	72705f74 	rsbsvc	r5, r0, #116, 30	; 0x1d0
     764:	69726f69 	ldmdbvs	r2!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
     768:	69007974 	stmdbvs	r0, {r2, r4, r5, r6, r8, fp, ip, sp, lr}
     76c:	735f6374 	cmpvc	pc, #116, 6	; 0xd0000001
     770:	635f6372 	cmpvs	pc, #-939524095	; 0xc8000001
     774:	75006d72 	strvc	r6, [r0, #-3442]	; 0xd72
     778:	5f747261 	svcpl	0x00747261
     77c:	5f717269 	svcpl	0x00717269
     780:	646e6168 	strbtvs	r6, [lr], #-360	; 0x168
     784:	7372656c 	cmnvc	r2, #108, 10	; 0x1b000000
     788:	72617500 	rsbvc	r7, r1, #0, 10
     78c:	61750074 	cmnvs	r5, r4, ror r0
     790:	695f7472 	ldmdbvs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
     794:	00745f64 	rsbseq	r5, r4, r4, ror #30
     798:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
     79c:	6e69705f 	mcrvs	0, 3, r7, cr9, cr15, {2}
     7a0:	61750073 	cmnvs	r5, r3, ror r0
     7a4:	325f7472 	subscc	r7, pc, #1912602624	; 0x72000000
     7a8:	7273695f 	rsbsvc	r6, r3, #1556480	; 0x17c000
     7ac:	72696300 	rsbvc	r6, r9, #0, 6
     7b0:	616c7563 	cmnvs	ip, r3, ror #10
     7b4:	75625f72 	strbvc	r5, [r2, #-3954]!	; 0xf72
     7b8:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
     7bc:	7500745f 	strvc	r7, [r0, #-1119]	; 0x45f
     7c0:	5f747261 	svcpl	0x00747261
     7c4:	6c6c6163 	stfvse	f6, [ip], #-396	; 0xfffffe74
     7c8:	6b636162 	blvs	18d8d58 <_ram_limit+0x14c0d58>
     7cc:	7500745f 	strvc	r7, [r0, #-1119]	; 0x45f
     7d0:	5f747261 	svcpl	0x00747261
     7d4:	65636572 	strbvs	r6, [r3, #-1394]!	; 0x572
     7d8:	5f657669 	svcpl	0x00657669
     7dc:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0x962
     7e0:	5f787200 	svcpl	0x00787200
     7e4:	6c6c6163 	stfvse	f6, [ip], #-396	; 0xfffffe74
     7e8:	6b636162 	blvs	18d8d78 <_ram_limit+0x14c0d78>
     7ec:	72617500 	rsbvc	r7, r1, #0, 10
     7f0:	61635f74 	smcvs	13812	; 0x35f4
     7f4:	61626c6c 	cmnvs	r2, ip, ror #24
     7f8:	00736b63 	rsbseq	r6, r3, r3, ror #22
     7fc:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
     800:	6765725f 			; <UNDEFINED> instruction: 0x6765725f
     804:	61750073 	cmnvs	r5, r3, ror r0
     808:	635f7472 	cmpvs	pc, #1912602624	; 0x72000000
     80c:	75637269 	strbvc	r7, [r3, #-617]!	; 0x269
     810:	5f72616c 	svcpl	0x0072616c
     814:	625f7872 	subsvs	r7, pc, #7471104	; 0x720000
     818:	65666675 	strbvs	r6, [r6, #-1653]!	; 0x675
     81c:	75007372 	strvc	r7, [r0, #-882]	; 0x372
     820:	5f747261 	svcpl	0x00747261
     824:	65636572 	strbvs	r6, [r3, #-1394]!	; 0x572
     828:	00657669 	rsbeq	r7, r5, r9, ror #12
     82c:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
     830:	6e65735f 	mcrvs	3, 3, r7, cr5, cr15, {2}
     834:	61750064 	cmnvs	r5, r4, rrx
     838:	725f7472 	subsvc	r7, pc, #1912602624	; 0x72000000
     83c:	75625f78 	strbvc	r5, [r2, #-3960]!	; 0xf78
     840:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
     844:	70670073 	rsbvc	r0, r7, r3, ror r0
     848:	705f6f69 	subsvc	r6, pc, r9, ror #30
     84c:	6d5f6e69 	ldclvs	14, cr6, [pc, #-420]	; 6b0 <_sys_stack_size+0x2b0>
     850:	75007861 	strvc	r7, [r0, #-2145]	; 0x861
     854:	5f747261 	svcpl	0x00747261
     858:	646e6573 	strbtvs	r6, [lr], #-1395	; 0x573
     85c:	7479625f 	ldrbtvc	r6, [r9], #-607	; 0x25f
     860:	61750065 	cmnvs	r5, r5, rrx
     864:	315f7472 	cmpcc	pc, r2, ror r4	; <UNPREDICTABLE>
     868:	7273695f 	rsbsvc	r6, r3, #1556480	; 0x17c000
     86c:	72617500 	rsbvc	r7, r1, #0, 10
     870:	61635f74 	smcvs	13812	; 0x35f4
     874:	61626c6c 	cmnvs	r2, ip, ror #24
     878:	5f736b63 	svcpl	0x00736b63
     87c:	61750074 	cmnvs	r5, r4, ror r0
     880:	725f7472 	subsvc	r7, pc, #1912602624	; 0x72000000
     884:	5f736765 	svcpl	0x00736765
     888:	70670074 	rsbvc	r0, r7, r4, ror r0
     88c:	705f6f69 	subsvc	r6, pc, r9, ror #30
     890:	315f6e69 	cmpcc	pc, r9, ror #28
     894:	70670030 	rsbvc	r0, r7, r0, lsr r0
     898:	705f6f69 	subsvc	r6, pc, r9, ror #30
     89c:	315f6e69 	cmpcc	pc, r9, ror #28
     8a0:	70670031 	rsbvc	r0, r7, r1, lsr r0
     8a4:	705f6f69 	subsvc	r6, pc, r9, ror #30
     8a8:	315f6e69 	cmpcc	pc, r9, ror #28
     8ac:	70670032 	rsbvc	r0, r7, r2, lsr r0
     8b0:	705f6f69 	subsvc	r6, pc, r9, ror #30
     8b4:	315f6e69 	cmpcc	pc, r9, ror #28
     8b8:	70670033 	rsbvc	r0, r7, r3, lsr r0
     8bc:	705f6f69 	subsvc	r6, pc, r9, ror #30
     8c0:	315f6e69 	cmpcc	pc, r9, ror #28
     8c4:	70670034 	rsbvc	r0, r7, r4, lsr r0
     8c8:	705f6f69 	subsvc	r6, pc, r9, ror #30
     8cc:	315f6e69 	cmpcc	pc, r9, ror #28
     8d0:	70670035 	rsbvc	r0, r7, r5, lsr r0
     8d4:	705f6f69 	subsvc	r6, pc, r9, ror #30
     8d8:	315f6e69 	cmpcc	pc, r9, ror #28
     8dc:	70670036 	rsbvc	r0, r7, r6, lsr r0
     8e0:	705f6f69 	subsvc	r6, pc, r9, ror #30
     8e4:	315f6e69 	cmpcc	pc, r9, ror #28
     8e8:	70670037 	rsbvc	r0, r7, r7, lsr r0
     8ec:	705f6f69 	subsvc	r6, pc, r9, ror #30
     8f0:	315f6e69 	cmpcc	pc, r9, ror #28
     8f4:	70670038 	rsbvc	r0, r7, r8, lsr r0
     8f8:	705f6f69 	subsvc	r6, pc, r9, ror #30
     8fc:	315f6e69 	cmpcc	pc, r9, ror #28
     900:	61750039 	cmnvs	r5, r9, lsr r0
     904:	695f7472 	ldmdbvs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
     908:	75007273 	strvc	r7, [r0, #-627]	; 0x273
     90c:	5f747261 	svcpl	0x00747261
     910:	5f746573 	svcpl	0x00746573
     914:	65636572 	strbvs	r6, [r3, #-1394]!	; 0x572
     918:	5f657669 	svcpl	0x00657669
     91c:	6c6c6163 	stfvse	f6, [ip], #-396	; 0xfffffe74
     920:	6b636162 	blvs	18d8eb0 <_ram_limit+0x14c0eb0>
     924:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     928:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     92c:	30325f6e 	eorscc	r5, r2, lr, ror #30
     930:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     934:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     938:	31325f6e 	teqcc	r2, lr, ror #30
     93c:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     940:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     944:	32325f6e 	eorscc	r5, r2, #440	; 0x1b8
     948:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     94c:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     950:	33325f6e 	teqcc	r2, #440	; 0x1b8
     954:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     958:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     95c:	34325f6e 	ldrtcc	r5, [r2], #-3950	; 0xf6e
     960:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     964:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     968:	35325f6e 	ldrcc	r5, [r2, #-3950]!	; 0xf6e
     96c:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     970:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     974:	36325f6e 	ldrtcc	r5, [r2], -lr, ror #30
     978:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     97c:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     980:	37325f6e 	ldrcc	r5, [r2, -lr, ror #30]!
     984:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     988:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     98c:	38325f6e 	ldmdacc	r2!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}
     990:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     994:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     998:	39325f6e 	ldmdbcc	r2!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}
     99c:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     9a0:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     9a4:	30335f6e 	eorscc	r5, r3, lr, ror #30
     9a8:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     9ac:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     9b0:	31335f6e 	teqcc	r3, lr, ror #30
     9b4:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     9b8:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     9bc:	32335f6e 	eorscc	r5, r3, #440	; 0x1b8
     9c0:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     9c4:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     9c8:	33335f6e 	teqcc	r3, #440	; 0x1b8
     9cc:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     9d0:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     9d4:	34335f6e 	ldrtcc	r5, [r3], #-3950	; 0xf6e
     9d8:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     9dc:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     9e0:	35335f6e 	ldrcc	r5, [r3, #-3950]!	; 0xf6e
     9e4:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     9e8:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     9ec:	36335f6e 	ldrtcc	r5, [r3], -lr, ror #30
     9f0:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     9f4:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     9f8:	37335f6e 	ldrcc	r5, [r3, -lr, ror #30]!
     9fc:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     a00:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     a04:	38335f6e 	ldmdacc	r3!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}
     a08:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     a0c:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     a10:	39335f6e 	ldmdbcc	r3!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}
     a14:	72617500 	rsbvc	r7, r1, #0, 10
     a18:	65735f74 	ldrbvs	r5, [r3, #-3956]!	; 0xf74
     a1c:	65735f74 	ldrbvs	r5, [r3, #-3956]!	; 0xf74
     a20:	635f646e 	cmpvs	pc, #1845493760	; 0x6e000000
     a24:	626c6c61 	rsbvs	r6, ip, #24832	; 0x6100
     a28:	006b6361 	rsbeq	r6, fp, r1, ror #6
     a2c:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
     a30:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
     a34:	70670074 	rsbvc	r0, r7, r4, ror r0
     a38:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a3c:	345f6e69 	ldrbcc	r6, [pc], #-3689	; a44 <_stacks_size+0x324>
     a40:	70670030 	rsbvc	r0, r7, r0, lsr r0
     a44:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a48:	345f6e69 	ldrbcc	r6, [pc], #-3689	; a50 <_stacks_size+0x330>
     a4c:	70670031 	rsbvc	r0, r7, r1, lsr r0
     a50:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a54:	345f6e69 	ldrbcc	r6, [pc], #-3689	; a5c <_stacks_size+0x33c>
     a58:	70670032 	rsbvc	r0, r7, r2, lsr r0
     a5c:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a60:	345f6e69 	ldrbcc	r6, [pc], #-3689	; a68 <_stacks_size+0x348>
     a64:	70670033 	rsbvc	r0, r7, r3, lsr r0
     a68:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a6c:	345f6e69 	ldrbcc	r6, [pc], #-3689	; a74 <_stacks_size+0x354>
     a70:	70670034 	rsbvc	r0, r7, r4, lsr r0
     a74:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a78:	345f6e69 	ldrbcc	r6, [pc], #-3689	; a80 <_stacks_size+0x360>
     a7c:	70670035 	rsbvc	r0, r7, r5, lsr r0
     a80:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a84:	345f6e69 	ldrbcc	r6, [pc], #-3689	; a8c <_stacks_size+0x36c>
     a88:	70670036 	rsbvc	r0, r7, r6, lsr r0
     a8c:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a90:	345f6e69 	ldrbcc	r6, [pc], #-3689	; a98 <_stacks_size+0x378>
     a94:	70670037 	rsbvc	r0, r7, r7, lsr r0
     a98:	705f6f69 	subsvc	r6, pc, r9, ror #30
     a9c:	345f6e69 	ldrbcc	r6, [pc], #-3689	; aa4 <_stacks_size+0x384>
     aa0:	70670038 	rsbvc	r0, r7, r8, lsr r0
     aa4:	705f6f69 	subsvc	r6, pc, r9, ror #30
     aa8:	345f6e69 	ldrbcc	r6, [pc], #-3689	; ab0 <_stacks_size+0x390>
     aac:	61750039 	cmnvs	r5, r9, lsr r0
     ab0:	635f7472 	cmpvs	pc, #1912602624	; 0x72000000
     ab4:	75637269 	strbvc	r7, [r3, #-617]!	; 0x269
     ab8:	5f72616c 	svcpl	0x0072616c
     abc:	625f7874 	subsvs	r7, pc, #116, 16	; 0x740000
     ac0:	65666675 	strbvs	r6, [r6, #-1653]!	; 0x675
     ac4:	5f007372 	svcpl	0x00007372
     ac8:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
     acc:	745f3874 	ldrbvc	r3, [pc], #-2164	; ad4 <_stacks_size+0x3b4>
     ad0:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     ad4:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     ad8:	00305f6e 	eorseq	r5, r0, lr, ror #30
     adc:	6f697067 	svcvs	0x00697067
     ae0:	6e69705f 	mcrvs	0, 3, r7, cr9, cr15, {2}
     ae4:	6700315f 	smlsdvs	r0, pc, r1, r3	; <UNPREDICTABLE>
     ae8:	5f6f6970 	svcpl	0x006f6970
     aec:	5f6e6970 	svcpl	0x006e6970
     af0:	70670032 	rsbvc	r0, r7, r2, lsr r0
     af4:	705f6f69 	subsvc	r6, pc, r9, ror #30
     af8:	335f6e69 	cmpcc	pc, #1680	; 0x690
     afc:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     b00:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     b04:	00345f6e 	eorseq	r5, r4, lr, ror #30
     b08:	6f697067 	svcvs	0x00697067
     b0c:	6e69705f 	mcrvs	0, 3, r7, cr9, cr15, {2}
     b10:	6700355f 	smlsdvs	r0, pc, r5, r3	; <UNPREDICTABLE>
     b14:	5f6f6970 	svcpl	0x006f6970
     b18:	5f6e6970 	svcpl	0x006e6970
     b1c:	70670036 	rsbvc	r0, r7, r6, lsr r0
     b20:	705f6f69 	subsvc	r6, pc, r9, ror #30
     b24:	375f6e69 	ldrbcc	r6, [pc, -r9, ror #28]
     b28:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     b2c:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     b30:	00385f6e 	eorseq	r5, r8, lr, ror #30
     b34:	6f697067 	svcvs	0x00697067
     b38:	6e69705f 	mcrvs	0, 3, r7, cr9, cr15, {2}
     b3c:	7400395f 	strvc	r3, [r0], #-2399	; 0x95f
     b40:	61635f78 	smcvs	13816	; 0x35f8
     b44:	61626c6c 	cmnvs	r2, ip, ror #24
     b48:	67006b63 	strvs	r6, [r0, -r3, ror #22]
     b4c:	5f6f6970 	svcpl	0x006f6970
     b50:	5f6e6970 	svcpl	0x006e6970
     b54:	67003035 	smladxvs	r0, r5, r0, r3
     b58:	5f6f6970 	svcpl	0x006f6970
     b5c:	5f6e6970 	svcpl	0x006e6970
     b60:	67003135 	smladxvs	r0, r5, r1, r3
     b64:	5f6f6970 	svcpl	0x006f6970
     b68:	5f6e6970 	svcpl	0x006e6970
     b6c:	67003235 	smladxvs	r0, r5, r2, r3
     b70:	5f6f6970 	svcpl	0x006f6970
     b74:	5f6e6970 	svcpl	0x006e6970
     b78:	67003335 	smladxvs	r0, r5, r3, r3
     b7c:	5f6f6970 	svcpl	0x006f6970
     b80:	5f6e6970 	svcpl	0x006e6970
     b84:	67003435 	smladxvs	r0, r5, r4, r3
     b88:	5f6f6970 	svcpl	0x006f6970
     b8c:	5f6e6970 	svcpl	0x006e6970
     b90:	67003535 	smladxvs	r0, r5, r5, r3
     b94:	5f6f6970 	svcpl	0x006f6970
     b98:	5f6e6970 	svcpl	0x006e6970
     b9c:	67003635 	smladxvs	r0, r5, r6, r3
     ba0:	5f6f6970 	svcpl	0x006f6970
     ba4:	5f6e6970 	svcpl	0x006e6970
     ba8:	67003735 	smladxvs	r0, r5, r7, r3
     bac:	5f6f6970 	svcpl	0x006f6970
     bb0:	5f6e6970 	svcpl	0x006e6970
     bb4:	67003835 	smladxvs	r0, r5, r8, r3
     bb8:	5f6f6970 	svcpl	0x006f6970
     bbc:	5f6e6970 	svcpl	0x006e6970
     bc0:	67003935 	smladxvs	r0, r5, r9, r3
     bc4:	5f6f6970 	svcpl	0x006f6970
     bc8:	5f6e6970 	svcpl	0x006e6970
     bcc:	72640074 	rsbvc	r0, r4, #116	; 0x74
     bd0:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
     bd4:	61752f73 	cmnvs	r5, r3, ror pc
     bd8:	632e7472 	teqvs	lr, #1912602624	; 0x72000000
     bdc:	72617500 	rsbvc	r7, r1, #0, 10
     be0:	78745f74 	ldmdavc	r4!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
     be4:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
     be8:	73726566 	cmnvc	r2, #427819008	; 0x19800000
     bec:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     bf0:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     bf4:	30365f6e 	eorscc	r5, r6, lr, ror #30
     bf8:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     bfc:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     c00:	31365f6e 	teqcc	r6, lr, ror #30
     c04:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     c08:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     c0c:	32365f6e 	eorscc	r5, r6, #440	; 0x1b8
     c10:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
     c14:	69705f6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     c18:	33365f6e 	teqcc	r6, #440	; 0x1b8
     c1c:	72617500 	rsbvc	r7, r1, #0, 10
     c20:	69705f74 	ldmdbvs	r0!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
     c24:	745f736e 	ldrbvc	r7, [pc], #-878	; c2c <_stacks_size+0x50c>
     c28:	655f5f00 	ldrbvs	r5, [pc, #-3840]	; fffffd30 <_STACK_FILLER+0x21523e41>
     c2c:	6f6e7272 	svcvs	0x006e7272
     c30:	735f5f00 	cmpvc	pc, #0, 30
     c34:	69646964 	stmdbvs	r4!, {r2, r5, r6, r8, fp, sp, lr}^
     c38:	0074696e 	rsbseq	r6, r4, lr, ror #18
     c3c:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
     c40:	00746573 	rsbseq	r6, r4, r3, ror r5
     c44:	6c626d5f 	stclvs	13, cr6, [r2], #-380	; 0xfffffe84
     c48:	735f6e65 	cmpvc	pc, #1616	; 0x650
     c4c:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0x174
     c50:	366c5f00 	strbtcc	r5, [ip], -r0, lsl #30
     c54:	625f6134 	subsvs	r6, pc, #52, 2
     c58:	5f006675 	svcpl	0x00006675
     c5c:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
     c60:	626c5f00 	rsbvs	r5, ip, #0, 30
     c64:	7a697366 	bvc	1a5da04 <_ram_limit+0x1645a04>
     c68:	5f5f0065 	svcpl	0x005f0065
     c6c:	756c6176 	strbvc	r6, [ip, #-374]!	; 0x176
     c70:	5f5f0065 	svcpl	0x005f0065
     c74:	66756273 			; <UNDEFINED> instruction: 0x66756273
     c78:	65725f00 	ldrbvs	r5, [r2, #-3840]!	; 0xf00
     c7c:	746c7573 	strbtvc	r7, [ip], #-1395	; 0x573
     c80:	5f006b5f 	svcpl	0x00006b5f
     c84:	72616e66 	rsbvc	r6, r1, #1632	; 0x660
     c88:	5f007367 	svcpl	0x00007367
     c8c:	0066735f 	rsbeq	r7, r6, pc, asr r3
     c90:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
     c94:	5f6c616e 	svcpl	0x006c616e
     c98:	00667562 	rsbeq	r7, r6, r2, ror #10
     c9c:	7363775f 	cmnvc	r3, #24903680	; 0x17c0000
     ca0:	6d6f7472 	cfstrdvs	mvd7, [pc, #-456]!	; ae0 <_stacks_size+0x3c0>
     ca4:	735f7362 	cmpvc	pc, #-2013265919	; 0x88000001
     ca8:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0x174
     cac:	72775f00 	rsbsvc	r5, r7, #0, 30
     cb0:	00657469 	rsbeq	r7, r5, r9, ror #8
     cb4:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
     cb8:	69746c61 	ldmdbvs	r4!, {r0, r5, r6, sl, fp, sp, lr}^
     cbc:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
     cc0:	47006675 	smlsdxmi	r0, r5, r6, r6
     cc4:	4320554e 	teqmi	r0, #327155712	; 0x13800000
     cc8:	382e3420 	stmdacc	lr!, {r5, sl, ip, sp}
     ccc:	2d20332e 	stccs	3, cr3, [r0, #-184]!	; 0xffffff48
     cd0:	4f2d2067 	svcmi	0x002d2067
     cd4:	662d2032 			; <UNDEFINED> instruction: 0x662d2032
     cd8:	622d6f6e 	eorvs	r6, sp, #440	; 0x1b8
     cdc:	746c6975 	strbtvc	r6, [ip], #-2421	; 0x975
     ce0:	2d206e69 	stccs	14, cr6, [r0, #-420]!	; 0xfffffe5c
     ce4:	6e756666 	cdpvs	6, 7, cr6, cr5, cr6, {3}
     ce8:	6f697463 	svcvs	0x00697463
     cec:	65732d6e 	ldrbvs	r2, [r3, #-3438]!	; 0xd6e
     cf0:	6f697463 	svcvs	0x00697463
     cf4:	2d20736e 	stccs	3, cr7, [r0, #-440]!	; 0xfffffe48
     cf8:	74616466 	strbtvc	r6, [r1], #-1126	; 0x466
     cfc:	65732d61 	ldrbvs	r2, [r3, #-3425]!	; 0xd61
     d00:	6f697463 	svcvs	0x00697463
     d04:	5f00736e 	svcpl	0x0000736e
     d08:	756f635f 	strbvc	r6, [pc, #-863]!	; 9b1 <_stacks_size+0x291>
     d0c:	5f00746e 	svcpl	0x0000746e
     d10:	5f6d745f 	svcpl	0x006d745f
     d14:	7961646d 	stmdbvc	r1!, {r0, r2, r3, r5, r6, sl, sp, lr}^
     d18:	626d5f00 	rsbvs	r5, sp, #0, 30
     d1c:	6f747273 	svcvs	0x00747273
     d20:	5f736377 	svcpl	0x00736377
     d24:	74617473 	strbtvc	r7, [r1], #-1139	; 0x473
     d28:	725f0065 	subsvc	r0, pc, #101	; 0x65
     d2c:	5f003834 	svcpl	0x00003834
     d30:	6f647473 	svcvs	0x00647473
     d34:	5f007475 	svcpl	0x00007475
     d38:	78657461 	stmdavc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
     d3c:	5f007469 	svcpl	0x00007469
     d40:	72656d65 	rsbvc	r6, r5, #6464	; 0x1940
     d44:	636e6567 	cmnvs	lr, #432013312	; 0x19c00000
     d48:	635f0079 	cmpvs	pc, #121	; 0x79
     d4c:	656c7476 	strbvs	r7, [ip, #-1142]!	; 0x476
     d50:	6e5f006e 	cdpvs	0, 5, cr0, cr15, cr14, {3}
     d54:	00667562 	rsbeq	r7, r6, r2, ror #10
     d58:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
     d5c:	45525f4b 	ldrbmi	r5, [r2, #-3915]	; 0xf4b
     d60:	53525543 	cmppl	r2, #281018368	; 0x10c00000
     d64:	5f455649 	svcpl	0x00455649
     d68:	6e5f0054 	mrcvs	0, 2, r0, cr15, cr4, {2}
     d6c:	73626f69 	cmnvc	r2, #420	; 0x1a4
     d70:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     d74:	00454c49 	subeq	r4, r5, r9, asr #24
     d78:	7465675f 	strbtvc	r6, [r5], #-1887	; 0x75f
     d7c:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0x164
     d80:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
     d84:	745f5f00 	ldrbvc	r5, [pc], #-3840	; d8c <_stacks_size+0x66c>
     d88:	696d5f6d 	stmdbvs	sp!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     d8c:	735f006e 	cmpvc	pc, #110	; 0x6e
     d90:	665f6769 	ldrbvs	r6, [pc], -r9, ror #14
     d94:	00636e75 	rsbeq	r6, r3, r5, ror lr
     d98:	616d6e5f 	cmnvs	sp, pc, asr lr
     d9c:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
     da0:	72665f00 	rsbvc	r5, r6, #0, 30
     da4:	696c6565 	stmdbvs	ip!, {r0, r2, r5, r6, r8, sl, sp, lr}^
     da8:	5f007473 	svcpl	0x00007473
     dac:	00736e66 	rsbseq	r6, r3, r6, ror #28
     db0:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
     db4:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0x174
     db8:	745f5f00 	ldrbvc	r5, [pc], #-3840	; dc0 <_stacks_size+0x6a0>
     dbc:	64775f6d 	ldrbtvs	r5, [r7], #-3949	; 0xf6d
     dc0:	5f007961 	svcpl	0x00007961
     dc4:	67616c66 	strbvs	r6, [r1, -r6, ror #24]!
     dc8:	5f003273 	svcpl	0x00003273
     dcc:	73626f69 	cmnvc	r2, #420	; 0x1a4
     dd0:	756d5f00 	strbvc	r5, [sp, #-3840]!	; 0xf00
     dd4:	5f00746c 	svcpl	0x0000746c
     dd8:	5f6d745f 	svcpl	0x006d745f
     ddc:	73647369 	cmnvc	r4, #-1543503871	; 0xa4000001
     de0:	615f0074 	cmpvs	pc, r4, ror r0	; <UNPREDICTABLE>
     de4:	69786574 	ldmdbvs	r8!, {r2, r4, r5, r6, r8, sl, sp, lr}^
     de8:	5f003074 	svcpl	0x00003074
     dec:	79746e66 	ldmdbvc	r4!, {r1, r2, r5, r6, r9, sl, fp, sp, lr}^
     df0:	00736570 	rsbseq	r6, r3, r0, ror r5
     df4:	6f70665f 	svcvs	0x0070665f
     df8:	00745f73 	rsbseq	r5, r4, r3, ror pc
     dfc:	6f6c635f 	svcvs	0x006c635f
     e00:	5f006573 	svcpl	0x00006573
     e04:	636f6c66 	cmnvs	pc, #26112	; 0x6600
     e08:	00745f6b 	rsbseq	r5, r4, fp, ror #30
     e0c:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
     e10:	6365735f 	cmnvs	r5, #2080374785	; 0x7c000001
     e14:	745f5f00 	ldrbvc	r5, [pc], #-3840	; e1c <_stacks_size+0x6fc>
     e18:	6f685f6d 	svcvs	0x00685f6d
     e1c:	5f007275 	svcpl	0x00007275
     e20:	64616572 	strbtvs	r6, [r1], #-1394	; 0x572
     e24:	656e5f00 	strbvs	r5, [lr, #-3840]!	; 0xf00
     e28:	00667478 	rsbeq	r7, r6, r8, ror r4
     e2c:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0x35f
     e30:	00727265 	rsbseq	r7, r2, r5, ror #4
     e34:	63775f5f 	cmnvs	r7, #380	; 0x17c
     e38:	2e006268 	cdpcs	2, 0, cr6, cr0, cr8, {3}
     e3c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     e40:	2f2e2e2f 	svccs	0x002e2e2f
     e44:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     e48:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
     e4c:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     e50:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     e54:	72652f63 	rsbvc	r2, r5, #396	; 0x18c
     e58:	2f6f6e72 	svccs	0x006f6e72
     e5c:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
     e60:	00632e6f 	rsbeq	r2, r3, pc, ror #28
     e64:	655f685f 	ldrbvs	r6, [pc, #-2143]	; 60d <_sys_stack_size+0x20d>
     e68:	6f6e7272 	svcvs	0x006e7272
     e6c:	735f5f00 	cmpvc	pc, #0, 30
     e70:	65756c67 	ldrbvs	r6, [r5, #-3175]!	; 0xc67
     e74:	6e6f5f00 	cdpvs	15, 6, cr5, cr15, cr0, {0}
     e78:	6978655f 	ldmdbvs	r8!, {r0, r1, r2, r3, r4, r6, r8, sl, sp, lr}^
     e7c:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
     e80:	5f007367 	svcpl	0x00007367
     e84:	7472626d 	ldrbtvc	r6, [r2], #-621	; 0x26d
     e88:	5f63776f 	svcpl	0x0063776f
     e8c:	74617473 	strbtvc	r7, [r1], #-1139	; 0x473
     e90:	622f0065 	eorvs	r0, pc, #101	; 0x65
     e94:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
     e98:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     e9c:	2f64646c 	svccs	0x0064646c
     ea0:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     ea4:	322d6269 	eorcc	r6, sp, #-1879048186	; 0x90000006
     ea8:	302e312e 	eorcc	r3, lr, lr, lsr #2
     eac:	7469672b 	strbtvc	r6, [r9], #-1835	; 0x72b
     eb0:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
     eb4:	38313830 	ldmdacc	r1!, {r4, r5, fp, ip, sp}
     eb8:	3861312e 	stmdacc	r1!, {r1, r2, r3, r5, r8, ip, sp}^
     ebc:	62333233 	eorsvs	r3, r3, #805306371	; 0x30000003
     ec0:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     ec4:	612f646c 	teqvs	pc, ip, ror #8
     ec8:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     ecc:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     ed0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     ed4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     ed8:	2f62696c 	svccs	0x0062696c
     edc:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     ee0:	7272652f 	rsbsvc	r6, r2, #197132288	; 0xbc00000
     ee4:	5f006f6e 	svcpl	0x00006f6e
     ee8:	62747663 	rsbsvs	r7, r4, #103809024	; 0x6300000
     eec:	5f006675 	svcpl	0x00006675
     ef0:	6b6f6f63 	blvs	1bdcc84 <_ram_limit+0x17c4c84>
     ef4:	5f006569 	svcpl	0x00006569
     ef8:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0x966
     efc:	61675f00 	cmnvs	r7, r0, lsl #30
     f00:	5f616d6d 	svcpl	0x00616d6d
     f04:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
     f08:	006d6167 	rsbeq	r6, sp, r7, ror #2
     f0c:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0x55f
     f10:	5f646573 	svcpl	0x00646573
     f14:	646e6172 	strbtvs	r6, [lr], #-370	; 0x172
     f18:	64775f00 	ldrbtvs	r5, [r7], #-3840	; 0xf00
     f1c:	5f5f0073 	svcpl	0x005f0073
     f20:	5f006d74 	svcpl	0x00006d74
     f24:	73756e75 	cmnvc	r5, #1872	; 0x750
     f28:	5f006465 	svcpl	0x00006465
     f2c:	6f74626d 	svcvs	0x0074626d
     f30:	735f6377 	cmpvc	pc, #-603979775	; 0xdc000001
     f34:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0x174
     f38:	6e697700 	cdpvs	7, 6, cr7, cr9, cr0, {0}
     f3c:	00745f74 	rsbseq	r5, r4, r4, ror pc
     f40:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
     f44:	5f6e656c 	svcpl	0x006e656c
     f48:	74617473 	strbtvc	r7, [r1], #-1139	; 0x473
     f4c:	635f0065 	cmpvs	pc, #101	; 0x65
     f50:	65727275 	ldrbvs	r7, [r2, #-629]!	; 0x275
     f54:	635f746e 	cmpvs	pc, #1845493760	; 0x6e000000
     f58:	67657461 	strbvs	r7, [r5, -r1, ror #8]!
     f5c:	0079726f 	rsbseq	r7, r9, pc, ror #4
     f60:	5f73695f 	svcpl	0x0073695f
     f64:	00617863 	rsbeq	r7, r1, r3, ror #16
     f68:	6c635f5f 	stclvs	15, cr5, [r3], #-380	; 0xfffffe84
     f6c:	756e6165 	strbvc	r6, [lr, #-357]!	; 0x165
     f70:	6d5f0070 	ldclvs	0, cr0, [pc, #-448]	; db8 <_stacks_size+0x698>
     f74:	61747362 	cmnvs	r4, r2, ror #6
     f78:	745f6574 	ldrbvc	r6, [pc], #-1396	; f80 <_stacks_size+0x860>
     f7c:	69425f00 	stmdbvs	r2, {r8, r9, sl, fp, ip, lr}^
     f80:	746e6967 	strbtvc	r6, [lr], #-2407	; 0x967
     f84:	616d5f00 	cmnvs	sp, r0, lsl #30
     f88:	73647778 	cmnvc	r4, #120, 14	; 0x1e00000
     f8c:	745f5f00 	ldrbvc	r5, [pc], #-3840	; f94 <_stacks_size+0x874>
     f90:	65795f6d 	ldrbvs	r5, [r9, #-3949]!	; 0xf6d
     f94:	5f007261 	svcpl	0x00007261
     f98:	74727473 	ldrbtvc	r7, [r2], #-1139	; 0x473
     f9c:	6c5f6b6f 	mrrcvs	11, 6, r6, pc, cr15	; <UNPREDICTABLE>
     fa0:	00747361 	rsbseq	r7, r4, r1, ror #6
     fa4:	6565735f 	strbvs	r7, [r5, #-863]!	; 0x35f
     fa8:	725f0064 	subsvc	r0, pc, #100	; 0x64
     fac:	34646e61 	strbtcc	r6, [r4], #-3681	; 0xe61
     fb0:	5f5f0038 	svcpl	0x005f0038
     fb4:	795f6d74 	ldmdbvc	pc, {r2, r4, r5, r6, r8, sl, fp, sp, lr}^	; <UNPREDICTABLE>
     fb8:	00796164 	rsbseq	r6, r9, r4, ror #2
     fbc:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     fc0:	00676e6f 	rsbeq	r6, r7, pc, ror #28
     fc4:	6565735f 	strbvs	r7, [r5, #-863]!	; 0x35f
     fc8:	725f006b 	subsvc	r0, pc, #107	; 0x6b
     fcc:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
     fd0:	5f5f0074 	svcpl	0x005f0074
     fd4:	6d5f6d74 	ldclvs	13, cr6, [pc, #-464]	; e0c <_stacks_size+0x6ec>
     fd8:	5f006e6f 	svcpl	0x00006e6f
     fdc:	00646461 	rsbeq	r6, r4, r1, ror #8
     fe0:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
     fe4:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
     fe8:	775f0064 	ldrbvc	r0, [pc, -r4, rrx]
     fec:	6d6f7463 	cfstrdvs	mvd7, [pc, #-396]!	; e68 <_stacks_size+0x748>
     ff0:	74735f62 	ldrbtvc	r5, [r3], #-3938	; 0xf62
     ff4:	00657461 	rsbeq	r7, r5, r1, ror #8
     ff8:	6f73645f 	svcvs	0x0073645f
     ffc:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
    1000:	00656c64 	rsbeq	r6, r5, r4, ror #24
    1004:	7335705f 	teqvc	r5, #95	; 0x5f
    1008:	69735f00 	ldmdbvs	r3!, {r8, r9, sl, fp, ip, lr}^
    100c:	5f006e67 	svcpl	0x00006e67
    1010:	646e6172 	strbtvs	r6, [lr], #-370	; 0x172
    1014:	78656e5f 	stmdavc	r5!, {r0, r1, r2, r3, r4, r6, r9, sl, fp, sp, lr}^
    1018:	735f0074 	cmpvc	pc, #116	; 0x74
    101c:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
    1020:	75635f00 	strbvc	r5, [r3, #-3840]!	; 0xf00
    1024:	6e657272 	mcrvs	2, 3, r7, cr5, cr2, {3}
    1028:	6f6c5f74 	svcvs	0x006c5f74
    102c:	656c6163 	strbvs	r6, [ip, #-355]!	; 0x163
    1030:	63775f00 	cmnvs	r7, #0, 30
    1034:	6d6f7472 	cfstrdvs	mvd7, [pc, #-456]!	; e74 <_stacks_size+0x754>
    1038:	74735f62 	ldrbtvc	r5, [r3], #-3938	; 0xf62
    103c:	00657461 	rsbeq	r7, r5, r1, ror #8
    1040:	7562755f 	strbvc	r7, [r2, #-1375]!	; 0x55f
    1044:	615f0066 	cmpvs	pc, r6, rrx
    1048:	69746373 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, r9, sp, lr}^
    104c:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
    1050:	5f006675 	svcpl	0x00006675
    1054:	4946735f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
    1058:	5f00454c 	svcpl	0x0000454c
    105c:	0077656e 	rsbseq	r6, r7, lr, ror #10
    1060:	75706d69 	ldrbvc	r6, [r0, #-3433]!	; 0xd69
    1064:	645f6572 	ldrbvs	r6, [pc], #-1394	; 106c <_stacks_size+0x94c>
    1068:	00617461 	rsbeq	r7, r1, r1, ror #8
    106c:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1070:	622f646c 	eorvs	r6, pc, #108, 8	; 0x6c000000
    1074:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
    1078:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xf64
    107c:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1080:	312e322d 	teqcc	lr, sp, lsr #4
    1084:	672b302e 	strvs	r3, [fp, -lr, lsr #32]!
    1088:	30327469 	eorscc	r7, r2, r9, ror #8
    108c:	38303431 	ldmdacc	r0!, {r0, r4, r5, sl, ip, sp}
    1090:	312e3831 	teqcc	lr, r1, lsr r8
    1094:	32333861 	eorscc	r3, r3, #6356992	; 0x610000
    1098:	622f6233 	eorvs	r6, pc, #805306371	; 0x30000003
    109c:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
    10a0:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    10a4:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    10a8:	61652d65 	cmnvs	r5, r5, ror #26
    10ac:	6e2f6962 	cdpvs	9, 2, cr6, cr15, cr2, {3}
    10b0:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    10b4:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    10b8:	722f6362 	eorvc	r6, pc, #-2013265919	; 0x88000001
    10bc:	746e6565 	strbtvc	r6, [lr], #-1381	; 0x565
    10c0:	6c675f00 	stclvs	15, cr5, [r7], #-0
    10c4:	6c61626f 	sfmvs	f6, 2, [r1], #-444	; 0xfffffe44
    10c8:	706d695f 	rsbvc	r6, sp, pc, asr r9
    10cc:	5f657275 	svcpl	0x00657275
    10d0:	00727470 	rsbseq	r7, r2, r0, ror r4
    10d4:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    10d8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    10dc:	2f2e2e2f 	svccs	0x002e2e2f
    10e0:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
    10e4:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    10e8:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    10ec:	722f6362 	eorvc	r6, pc, #-2013265919	; 0x88000001
    10f0:	746e6565 	strbtvc	r6, [lr], #-1381	; 0x565
    10f4:	706d692f 	rsbvc	r6, sp, pc, lsr #18
    10f8:	2e657275 	mcrcs	2, 3, r7, cr5, cr5, {3}
    10fc:	656d0063 	strbvs	r0, [sp, #-99]!	; 0x63
    1100:	706d636d 	rsbvc	r6, sp, sp, ror #6
    1104:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xf00
    1108:	2f646c69 	svccs	0x00646c69
    110c:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1110:	6e2f6464 	cdpvs	4, 2, cr6, cr15, cr4, {3}
    1114:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1118:	2e322d62 	cdpcs	13, 3, cr2, cr2, cr2, {3}
    111c:	2b302e31 	blcs	c0c9e8 <_ram_limit+0x7f49e8>
    1120:	32746967 	rsbscc	r6, r4, #1687552	; 0x19c000
    1124:	30343130 	eorscc	r3, r4, r0, lsr r1
    1128:	2e383138 	mrccs	1, 1, r3, cr8, cr8, {1}
    112c:	33386131 	teqcc	r8, #1073741836	; 0x4000000c
    1130:	2f623332 	svccs	0x00623332
    1134:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1138:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
    113c:	6f6e2d6d 	svcvs	0x006e2d6d
    1140:	652d656e 	strvs	r6, [sp, #-1390]!	; 0x56e
    1144:	2f696261 	svccs	0x00696261
    1148:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    114c:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; fb0 <_stacks_size+0x890>
    1150:	2f636269 	svccs	0x00636269
    1154:	69727473 	ldmdbvs	r2!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    1158:	2e00676e 	cdpcs	7, 0, cr6, cr0, cr14, {3}
    115c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1160:	2f2e2e2f 	svccs	0x002e2e2f
    1164:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1168:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
    116c:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1170:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1174:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xf63
    1178:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
    117c:	6d656d2f 	stclvs	13, cr6, [r5, #-188]!	; 0xffffff44
    1180:	2e706d63 	cdpcs	13, 7, cr6, cr0, cr3, {3}
    1184:	74730063 	ldrbtvc	r0, [r3], #-99	; 0x63
    1188:	6e656c72 	mcrvs	12, 3, r6, cr5, cr2, {3}
    118c:	2f2e2e00 	svccs	0x002e2e00
    1190:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1194:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1198:	2f2e2e2f 	svccs	0x002e2e2f
    119c:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
    11a0:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    11a4:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    11a8:	6d2f6362 	stcvs	3, cr6, [pc, #-392]!	; 1028 <_stacks_size+0x908>
    11ac:	69686361 	stmdbvs	r8!, {r0, r5, r6, r8, r9, sp, lr}^
    11b0:	612f656e 	teqvs	pc, lr, ror #10
    11b4:	732f6d72 	teqvc	pc, #7296	; 0x1c80
    11b8:	656c7274 	strbvs	r7, [ip, #-628]!	; 0x274
    11bc:	00632e6e 	rsbeq	r2, r3, lr, ror #28
    11c0:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    11c4:	622f646c 	eorvs	r6, pc, #108, 8	; 0x6c000000
    11c8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
    11cc:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xf64
    11d0:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    11d4:	312e322d 	teqcc	lr, sp, lsr #4
    11d8:	672b302e 	strvs	r3, [fp, -lr, lsr #32]!
    11dc:	30327469 	eorscc	r7, r2, r9, ror #8
    11e0:	38303431 	ldmdacc	r0!, {r0, r4, r5, sl, ip, sp}
    11e4:	312e3831 	teqcc	lr, r1, lsr r8
    11e8:	32333861 	eorscc	r3, r3, #6356992	; 0x610000
    11ec:	622f6233 	eorvs	r6, pc, #805306371	; 0x30000003
    11f0:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
    11f4:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    11f8:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    11fc:	61652d65 	cmnvs	r5, r5, ror #26
    1200:	6e2f6962 	cdpvs	9, 2, cr6, cr15, cr2, {3}
    1204:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1208:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    120c:	6d2f6362 	stcvs	3, cr6, [pc, #-392]!	; 108c <_stacks_size+0x96c>
    1210:	69686361 	stmdbvs	r8!, {r0, r5, r6, r8, r9, sp, lr}^
    1214:	612f656e 	teqvs	pc, lr, ror #10
    1218:	5f006d72 	svcpl	0x00006d72
    121c:	5f61765f 	svcpl	0x0061765f
    1220:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0x96c
    1224:	675f5f00 	ldrbvs	r5, [pc, -r0, lsl #30]
    1228:	5f63756e 	svcpl	0x0063756e
    122c:	6c5f6176 	ldfvse	f6, [pc], {118}	; 0x76
    1230:	00747369 	rsbseq	r7, r4, r9, ror #6
    1234:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1238:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    123c:	2f2e2e2f 	svccs	0x002e2e2f
    1240:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
    1244:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1248:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    124c:	732f6362 	teqvc	pc, #-2013265919	; 0x88000001
    1250:	61637379 	smcvs	14137	; 0x3739
    1254:	2f736c6c 	svccs	0x00736c6c
    1258:	6f737973 	svcvs	0x00737973
    125c:	2e6e6570 	mcrcs	5, 3, r6, cr14, cr0, {3}
    1260:	622f0063 	eorvs	r0, pc, #99	; 0x63
    1264:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
    1268:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    126c:	2f64646c 	svccs	0x0064646c
    1270:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1274:	322d6269 	eorcc	r6, sp, #-1879048186	; 0x90000006
    1278:	302e312e 	eorcc	r3, lr, lr, lsr #2
    127c:	7469672b 	strbtvc	r6, [r9], #-1835	; 0x72b
    1280:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
    1284:	38313830 	ldmdacc	r1!, {r4, r5, fp, ip, sp}
    1288:	3861312e 	stmdacc	r1!, {r1, r2, r3, r5, r8, ip, sp}^
    128c:	62333233 	eorsvs	r3, r3, #805306371	; 0x30000003
    1290:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1294:	612f646c 	teqvs	pc, ip, ror #8
    1298:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    129c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    12a0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    12a4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    12a8:	2f62696c 	svccs	0x0062696c
    12ac:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
    12b0:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
    12b4:	6c6c6163 	stfvse	f6, [ip], #-396	; 0xfffffe74
    12b8:	6f5f0073 	svcvs	0x005f0073
    12bc:	5f6e6570 	svcpl	0x006e6570
    12c0:	5f5f0072 	svcpl	0x005f0072
    12c4:	2e007061 	cdpcs	0, 0, cr7, cr0, cr1, {3}
    12c8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    12cc:	2f2e2e2f 	svccs	0x002e2e2f
    12d0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    12d4:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
    12d8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    12dc:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    12e0:	65722f63 	ldrbvs	r2, [r2, #-3939]!	; 0xf63
    12e4:	2f746e65 	svccs	0x00746e65
    12e8:	6e65706f 	cdpvs	0, 6, cr7, cr5, cr15, {3}
    12ec:	00632e72 	rsbeq	r2, r3, r2, ror lr
    12f0:	65706f5f 	ldrbvs	r6, [r0, #-3935]!	; 0xf5f
    12f4:	656e006e 	strbvs	r0, [lr, #-110]!	; 0x6e
    12f8:	6e6f7478 	mcrvs	4, 3, r7, cr15, cr8, {3}
    12fc:	6c630065 	stclvs	0, cr0, [r3], #-404	; 0xfffffe6c
    1300:	756e6165 	strbvc	r6, [lr, #-357]!	; 0x165
    1304:	6c675f70 	stclvs	15, cr5, [r7], #-448	; 0xfffffe40
    1308:	2e006575 	cfrshl64cs	mvdx0, mvdx5, r6
    130c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1310:	2f2e2e2f 	svccs	0x002e2e2f
    1314:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1318:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
    131c:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1320:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1324:	65722f63 	ldrbvs	r2, [r2, #-3939]!	; 0xf63
    1328:	2f746e65 	svccs	0x00746e65
    132c:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    1330:	00632e74 	rsbeq	r2, r3, r4, ror lr
    1334:	6572665f 	ldrbvs	r6, [r2, #-1631]!	; 0x65f
    1338:	00725f65 	rsbseq	r5, r2, r5, ror #30
    133c:	73696874 	cmnvc	r9, #116, 16	; 0x740000
    1340:	00656e6f 	rsbeq	r6, r5, pc, ror #28
    1344:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    1348:	6d69616c 	stfvse	f6, [r9, #-432]!	; 0xfffffe50
    134c:	6565725f 	strbvs	r7, [r5, #-607]!	; 0x25f
    1350:	7000746e 	andvc	r7, r0, lr, ror #8
    1354:	5f766572 	svcpl	0x00766572
    1358:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0x973
    135c:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 1364 <_stacks_size+0xc44>
    1360:	6f6c6c61 	svcvs	0x006c6c61
    1364:	6f745f63 	svcvs	0x00745f63
    1368:	61705f70 	cmnvs	r0, r0, ror pc
    136c:	62680064 	rsbvs	r0, r8, #100	; 0x64
    1370:	00736b6c 	rsbseq	r6, r3, ip, ror #22
    1374:	6e657261 	cdpvs	2, 6, cr7, cr5, cr1, {3}
    1378:	5f5f0061 	svcpl	0x005f0061
    137c:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    1380:	755f636f 	ldrbvc	r6, [pc, #-879]	; 1019 <_stacks_size+0x8f9>
    1384:	636f6c6e 	cmnvs	pc, #28160	; 0x6e00
    1388:	626d006b 	rsbvs	r0, sp, #107	; 0x6b
    138c:	74706e69 	ldrbtvc	r6, [r0], #-3689	; 0xe69
    1390:	656e0072 	strbvs	r0, [lr, #-114]!	; 0x72
    1394:	72625f77 	rsbvc	r5, r2, #476	; 0x1dc
    1398:	6f66006b 	svcvs	0x0066006b
    139c:	6c626472 	cfstrdvs	mvd6, [r2], #-456	; 0xfffffe38
    13a0:	2f00736b 	svccs	0x0000736b
    13a4:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    13a8:	75622f64 	strbvc	r2, [r2, #-3940]!	; 0xf64
    13ac:	64646c69 	strbtvs	r6, [r4], #-3177	; 0xc69
    13b0:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    13b4:	2d62696c 	stclcs	9, cr6, [r2, #-432]!	; 0xfffffe50
    13b8:	2e312e32 	mrccs	14, 1, r2, cr1, cr2, {1}
    13bc:	69672b30 	stmdbvs	r7!, {r4, r5, r8, r9, fp, sp}^
    13c0:	31303274 	teqcc	r0, r4, ror r2
    13c4:	31383034 	teqcc	r8, r4, lsr r0
    13c8:	61312e38 	teqvs	r1, r8, lsr lr
    13cc:	33323338 	teqcc	r2, #56, 6	; 0xe0000000
    13d0:	75622f62 	strbvc	r2, [r2, #-3938]!	; 0xf62
    13d4:	2f646c69 	svccs	0x00646c69
    13d8:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    13dc:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xf6e
    13e0:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    13e4:	656e2f69 	strbvs	r2, [lr, #-3945]!	; 0xf69
    13e8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    13ec:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    13f0:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xf63
    13f4:	62696c64 	rsbvs	r6, r9, #100, 24	; 0x6400
    13f8:	74786500 	ldrbtvc	r6, [r8], #-1280	; 0x500
    13fc:	5f006172 	svcpl	0x00006172
    1400:	6c616d5f 	stclvs	13, cr6, [r1], #-380	; 0xfffffe84
    1404:	5f636f6c 	svcpl	0x00636f6c
    1408:	6b636f6c 	blvs	18dd1c0 <_ram_limit+0x14c51c0>
    140c:	72747000 	rsbsvc	r7, r4, #0
    1410:	66666964 	strbtvs	r6, [r6], -r4, ror #18
    1414:	7500745f 	strvc	r7, [r0, #-1119]	; 0x45f
    1418:	6264726f 	rsbvs	r7, r4, #-268435450	; 0xf0000006
    141c:	00736b6c 	rsbseq	r6, r3, ip, ror #22
    1420:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1424:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1428:	2f2e2e2f 	svccs	0x002e2e2f
    142c:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
    1430:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1434:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    1438:	732f6362 	teqvc	pc, #-2013265919	; 0x88000001
    143c:	696c6474 	stmdbvs	ip!, {r2, r4, r5, r6, sl, sp, lr}^
    1440:	616d2f62 	cmnvs	sp, r2, ror #30
    1444:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    1448:	00632e72 	rsbeq	r2, r3, r2, ror lr
    144c:	626d7366 	rsbvs	r7, sp, #-1744830463	; 0x98000001
    1450:	00736b6c 	rsbseq	r6, r3, ip, ror #22
    1454:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    1458:	635f636f 	cmpvs	pc, #-1140850687	; 0xbc000001
    145c:	6b6e7568 	blvs	1b9ea04 <_ram_limit+0x1786a04>
    1460:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 1468 <_stacks_size+0xd48>
    1464:	6f6c6c61 	svcvs	0x006c6c61
    1468:	72745f63 	rsbsvc	r5, r4, #396	; 0x18c
    146c:	745f6d69 	ldrbvc	r6, [pc], #-3433	; 1474 <_stacks_size+0xd54>
    1470:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    1474:	646c6f68 	strbtvs	r6, [ip], #-3944	; 0xf68
    1478:	6d737500 	cfldr64vs	mvdx7, [r3, #-0]
    147c:	736b6c62 	cmnvc	fp, #25088	; 0x6200
    1480:	6c736900 	ldclvs	9, cr6, [r3], #-0
    1484:	61700072 	cmnvs	r0, r2, ror r0
    1488:	7a736567 	bvc	1cdaa2c <_ram_limit+0x18c2a2c>
    148c:	72756300 	rsbsvc	r6, r5, #0, 6
    1490:	746e6572 	strbtvc	r6, [lr], #-1394	; 0x572
    1494:	6b72625f 	blvs	1c99e18 <_ram_limit+0x1881e18>
    1498:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 14a0 <_stacks_size+0xd80>
    149c:	6f6c6c61 	svcvs	0x006c6c61
    14a0:	75635f63 	strbvc	r5, [r3, #-3939]!	; 0xf63
    14a4:	6e657272 	mcrvs	2, 3, r7, cr5, cr2, {3}
    14a8:	616d5f74 	smcvs	54772	; 0xd5f4
    14ac:	6e696c6c 	cdpvs	12, 6, cr6, cr9, cr12, {3}
    14b0:	6e006f66 	cdpvs	15, 0, cr6, cr0, cr6, {3}
    14b4:	73747865 	cmnvc	r4, #6619136	; 0x650000
    14b8:	5f5f007a 	svcpl	0x005f007a
    14bc:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    14c0:	615f636f 	cmpvs	pc, pc, ror #6
    14c4:	70005f76 	andvc	r5, r0, r6, ror pc
    14c8:	73766572 	cmnvc	r6, #478150656	; 0x1c800000
    14cc:	6572007a 	ldrbvs	r0, [r2, #-122]!	; 0x7a
    14d0:	5f746e65 	svcpl	0x00746e65
    14d4:	00727470 	rsbseq	r7, r2, r0, ror r4
    14d8:	6c616d5f 	stclvs	13, cr6, [r1], #-380	; 0xfffffe84
    14dc:	5f636f6c 	svcpl	0x00636f6c
    14e0:	6d697274 	sfmvs	f7, 2, [r9, #-464]!	; 0xfffffe30
    14e4:	5f00725f 	svcpl	0x0000725f
    14e8:	6b726273 	blvs	1c99ebc <_ram_limit+0x1881ebc>
    14ec:	6d00725f 	sfmvs	f7, 4, [r0, #-380]	; 0xfffffe84
    14f0:	6e756863 	cdpvs	8, 7, cr6, cr5, cr3, {3}
    14f4:	7274706b 	rsbsvc	r7, r4, #107	; 0x6b
    14f8:	65656b00 	strbvs	r6, [r5, #-2816]!	; 0xb00
    14fc:	736f6370 	cmnvc	pc, #112, 6	; 0xc0000001
    1500:	5f5f0074 	svcpl	0x005f0074
    1504:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    1508:	735f636f 	cmpvc	pc, #-1140850687	; 0xbc000001
    150c:	5f6b7262 	svcpl	0x006b7262
    1510:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0x162
    1514:	6c626800 	stclvs	8, cr6, [r2], #-0
    1518:	0064686b 	rsbeq	r6, r4, fp, ror #16
    151c:	74636976 	strbtvc	r6, [r3], #-2422	; 0x976
    1520:	72006d69 	andvc	r6, r0, #6720	; 0x1a40
    1524:	69616d65 	stmdbvs	r1!, {r0, r2, r5, r6, r8, sl, fp, sp, lr}^
    1528:	7265646e 	rsbvc	r6, r5, #1845493760	; 0x6e000000
    152c:	646e695f 	strbtvs	r6, [lr], #-2399	; 0x95f
    1530:	62007865 	andvs	r7, r0, #6619136	; 0x650000
    1534:	73657479 	cmnvc	r5, #2030043136	; 0x79000000
    1538:	6d657200 	sfmvs	f7, 2, [r5, #-0]
    153c:	646e6961 	strbtvs	r6, [lr], #-2401	; 0x961
    1540:	735f7265 	cmpvc	pc, #1342177286	; 0x50000006
    1544:	00657a69 	rsbeq	r7, r5, r9, ror #20
    1548:	5f646c6f 	svcpl	0x00646c6f
    154c:	00646e65 	rsbeq	r6, r4, r5, ror #28
    1550:	636f6c62 	cmnvs	pc, #25088	; 0x6200
    1554:	6976006b 	ldmdbvs	r6!, {r0, r1, r3, r5, r6}^
    1558:	6d697463 	cfstrdvs	mvd7, [r9, #-396]!	; 0xfffffe74
    155c:	7a69735f 	bvc	1a5e2e0 <_ram_limit+0x16462e0>
    1560:	616d0065 	cmnvs	sp, r5, rrx
    1564:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    1568:	7478655f 	ldrbtvc	r6, [r8], #-1375	; 0x55f
    156c:	5f646e65 	svcpl	0x00646e65
    1570:	00706f74 	rsbseq	r6, r0, r4, ror pc
    1574:	6e6f7266 	cdpvs	2, 6, cr7, cr15, cr6, {3}
    1578:	696d5f74 	stmdbvs	sp!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    157c:	696c6173 	stmdbvs	ip!, {r0, r1, r4, r5, r6, r8, sp, lr}^
    1580:	73006e67 	movwvc	r6, #3687	; 0xe67
    1584:	5f6b7262 	svcpl	0x006b7262
    1588:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0x973
    158c:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 1594 <_stacks_size+0xe74>
    1590:	6f6c6c61 	svcvs	0x006c6c61
    1594:	616d5f63 	cmnvs	sp, r3, ror #30
    1598:	6f745f78 	svcvs	0x00745f78
    159c:	5f6c6174 	svcpl	0x006c6174
    15a0:	006d656d 	rsbeq	r6, sp, sp, ror #10
    15a4:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
    15a8:	78646974 	stmdavc	r4!, {r2, r4, r5, r6, r8, fp, sp, lr}^
    15ac:	616d5f00 	cmnvs	sp, r0, lsl #30
    15b0:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    15b4:	7200725f 	andvc	r7, r0, #-268435451	; 0xf0000005
    15b8:	69616d65 	stmdbvs	r1!, {r0, r2, r5, r6, r8, sl, fp, sp, lr}^
    15bc:	7265646e 	rsbvc	r6, r5, #1845493760	; 0x6e000000
    15c0:	646c6f00 	strbtvs	r6, [ip], #-3840	; 0xf00
    15c4:	706f745f 	rsbvc	r7, pc, pc, asr r4	; <UNPREDICTABLE>
    15c8:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 15d0 <_stacks_size+0xeb0>
    15cc:	6f6c6c61 	svcvs	0x006c6c61
    15d0:	616d5f63 	cmnvs	sp, r3, ror #30
    15d4:	62735f78 	rsbsvs	r5, r3, #120, 30	; 0x1e0
    15d8:	64656b72 	strbtvs	r6, [r5], #-2930	; 0xb72
    15dc:	6d656d5f 	stclvs	13, cr6, [r5, #-380]!	; 0xfffffe84
    15e0:	726f6300 	rsbvc	r6, pc, #0, 6
    15e4:	74636572 	strbtvc	r6, [r3], #-1394	; 0x572
    15e8:	5f6e6f69 	svcpl	0x006e6f69
    15ec:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    15f0:	6f006465 	svcvs	0x00006465
    15f4:	745f646c 	ldrbvc	r6, [pc], #-1132	; 15fc <_stacks_size+0xedc>
    15f8:	735f706f 	cmpvc	pc, #111	; 0x6f
    15fc:	00657a69 	rsbeq	r7, r5, r9, ror #20
    1600:	72726f63 	rsbsvc	r6, r2, #396	; 0x18c
    1604:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
    1608:	5f006e6f 	svcpl	0x00006e6f
    160c:	6c616d5f 	stclvs	13, cr6, [r1], #-380	; 0xfffffe84
    1610:	5f636f6c 	svcpl	0x00636f6c
    1614:	6b636f6c 	blvs	18dd3cc <_ram_limit+0x14c53cc>
    1618:	6a626f5f 	bvs	189d39c <_ram_limit+0x148539c>
    161c:	00746365 	rsbseq	r6, r4, r5, ror #6
    1620:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1624:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1628:	2f2e2e2f 	svccs	0x002e2e2f
    162c:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
    1630:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1634:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    1638:	732f6362 	teqvc	pc, #-2013265919	; 0x88000001
    163c:	696c6474 	stmdbvs	ip!, {r2, r4, r5, r6, sl, sp, lr}^
    1640:	6c6d2f62 	stclvs	15, cr2, [sp], #-392	; 0xfffffe78
    1644:	2e6b636f 	cdpcs	3, 6, cr6, cr11, cr15, {3}
    1648:	6e690063 	cdpvs	0, 6, cr0, cr9, cr3, {3}
    164c:	2e007263 	cdpcs	2, 0, cr7, cr0, cr3, {3}
    1650:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1654:	2f2e2e2f 	svccs	0x002e2e2f
    1658:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    165c:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xf2e
    1660:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1664:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1668:	65722f63 	ldrbvs	r2, [r2, #-3939]!	; 0xf63
    166c:	2f746e65 	svccs	0x00746e65
    1670:	6b726273 	blvs	1c9a044 <_ram_limit+0x1882044>
    1674:	00632e72 	rsbeq	r2, r3, r2, ror lr
    1678:	7262735f 	rsbvc	r7, r2, #2080374785	; 0x7c000001
    167c:	6168006b 	cmnvs	r8, fp, rrx
    1680:	79732f6c 	ldmdbvc	r3!, {r2, r3, r5, r6, r8, r9, sl, fp, sp}^
    1684:	6c616373 	stclvs	3, cr6, [r1], #-460	; 0xfffffe34
    1688:	632e736c 	teqvs	lr, #108, 6	; 0xb0000001
    168c:	736c5f00 	cmnvc	ip, #0, 30
    1690:	006b6565 	rsbeq	r6, fp, r5, ror #10
    1694:	72727563 	rsbsvc	r7, r2, #415236096	; 0x18c00000
    1698:	5f746e65 	svcpl	0x00746e65
    169c:	61657262 	cmnvs	r5, r2, ror #4
    16a0:	665f006b 	ldrbvs	r0, [pc], -fp, rrx
    16a4:	74617473 	strbtvc	r7, [r1], #-1139	; 0x473
    16a8:	695f5f00 	ldmdbvs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    16ac:	7470746e 	ldrbtvc	r7, [r0], #-1134	; 0x46e
    16b0:	00745f72 	rsbseq	r5, r4, r2, ror pc
    16b4:	7473616c 	ldrbtvc	r6, [r3], #-364	; 0x16c
    16b8:	6572625f 	ldrbvs	r6, [r2, #-607]!	; 0x25f
    16bc:	5f006b61 	svcpl	0x00006b61
    16c0:	74617369 	strbtvc	r7, [r1], #-873	; 0x369
    16c4:	5f007974 	svcpl	0x00007974
    16c8:	70616568 	rsbvc	r6, r1, r8, ror #10
    16cc:	6174735f 	cmnvs	r4, pc, asr r3
    16d0:	5f007472 	svcpl	0x00007472
    16d4:	70616568 	rsbvc	r6, r1, r8, ror #10
    16d8:	646e655f 	strbtvs	r6, [lr], #-1375	; 0x55f
    16dc:	65687700 	strbvs	r7, [r8, #-1792]!	; 0x700
    16e0:	0065636e 	rsbeq	r6, r5, lr, ror #6

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_ram_limit+0xcb8d24>
   4:	2e342820 	cdpcs	8, 3, cr2, cr4, cr0, {1}
   8:	2d332e38 	ldccs	14, cr2, [r3, #-224]!	; 0xffffff20
   c:	62753831 	rsbsvs	r3, r5, #3211264	; 0x310000
  10:	75746e75 	ldrbvc	r6, [r4, #-3701]!	; 0xe75
  14:	32312b32 	eorscc	r2, r1, #51200	; 0xc800
  18:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  1c:	00332e38 	eorseq	r2, r3, r8, lsr lr
  20:	3a434347 	bcc	10d0d44 <_ram_limit+0xcb8d44>
  24:	2e342820 	cdpcs	8, 3, cr2, cr4, cr0, {1}
  28:	2d332e38 	ldccs	14, cr2, [r3, #-224]!	; 0xffffff20
  2c:	75627537 	strbvc	r7, [r2, #-1335]!	; 0x537
  30:	3175746e 	cmncc	r5, lr, ror #8
  34:	2930312b 	ldmdbcs	r0!, {r0, r1, r3, r5, r8, ip, sp}
  38:	382e3420 	stmdacc	lr!, {r5, sl, ip, sp}
  3c:	Address 0x000000000000003c is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002d41 	andeq	r2, r0, r1, asr #26
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000023 	andeq	r0, r0, r3, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	02060049 	andeq	r0, r6, #73	; 0x49
  1c:	01090108 	tsteq	r9, r8, lsl #2
  20:	01140412 	tsteq	r4, r2, lsl r4
  24:	03170115 	tsteq	r7, #1073741829	; 0x40000005
  28:	011a0118 	tsteq	sl, r8, lsl r1
  2c:	Address 0x000000000000002c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000014 	andeq	r0, r0, r4, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00400130 	subeq	r0, r0, r0, lsr r1
  1c:	00000054 	andeq	r0, r0, r4, asr r0
  20:	8b040e42 	blhi	103930 <_stacks_size+0x103210>
  24:	0b0d4201 	bleq	350830 <_stacks_size+0x350110>
  28:	00000014 	andeq	r0, r0, r4, lsl r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00400184 	subeq	r0, r0, r4, lsl #3
  34:	0000002c 	andeq	r0, r0, ip, lsr #32
  38:	8b040e42 	blhi	103948 <_stacks_size+0x103228>
  3c:	0b0d4201 	bleq	350848 <_stacks_size+0x350128>
  40:	00000014 	andeq	r0, r0, r4, lsl r0
  44:	00000000 	andeq	r0, r0, r0
  48:	004001b0 	strheq	r0, [r0], #-16
  4c:	0000002c 	andeq	r0, r0, ip, lsr #32
  50:	8b040e42 	blhi	103960 <_stacks_size+0x103240>
  54:	0b0d4201 	bleq	350860 <_stacks_size+0x350140>
  58:	00000014 	andeq	r0, r0, r4, lsl r0
  5c:	00000000 	andeq	r0, r0, r0
  60:	004001dc 	ldrdeq	r0, [r0], #-28	; 0xffffffe4
  64:	00000040 	andeq	r0, r0, r0, asr #32
  68:	8b040e42 	blhi	103978 <_stacks_size+0x103258>
  6c:	0b0d4201 	bleq	350878 <_stacks_size+0x350158>
  70:	00000014 	andeq	r0, r0, r4, lsl r0
  74:	00000000 	andeq	r0, r0, r0
  78:	0040021c 	subeq	r0, r0, ip, lsl r2
  7c:	00000088 	andeq	r0, r0, r8, lsl #1
  80:	8b040e42 	blhi	103990 <_stacks_size+0x103270>
  84:	0b0d4201 	bleq	350890 <_stacks_size+0x350170>
  88:	00000018 	andeq	r0, r0, r8, lsl r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	004002a4 	subeq	r0, r0, r4, lsr #5
  94:	00000050 	andeq	r0, r0, r0, asr r0
  98:	8b080e42 	blhi	2039a8 <_stacks_size+0x203288>
  9c:	42018e02 	andmi	r8, r1, #2, 28
  a0:	00040b0c 	andeq	r0, r4, ip, lsl #22
  a4:	0000000c 	andeq	r0, r0, ip
  a8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  ac:	7c020001 	stcvc	0, cr0, [r2], {1}
  b0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  b4:	00000018 	andeq	r0, r0, r8, lsl r0
  b8:	000000a4 	andeq	r0, r0, r4, lsr #1
  bc:	004002f4 	strdeq	r0, [r0], #-36	; 0xffffffdc
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	8b080e42 	blhi	2039d4 <_stacks_size+0x2032b4>
  c8:	42018e02 	andmi	r8, r1, #2, 28
  cc:	00040b0c 	andeq	r0, r4, ip, lsl #22
  d0:	00000018 	andeq	r0, r0, r8, lsl r0
  d4:	000000a4 	andeq	r0, r0, r4, lsr #1
  d8:	00400310 	subeq	r0, r0, r0, lsl r3
  dc:	00000040 	andeq	r0, r0, r0, asr #32
  e0:	8b080e42 	blhi	2039f0 <_stacks_size+0x2032d0>
  e4:	42018e02 	andmi	r8, r1, #2, 28
  e8:	00040b0c 	andeq	r0, r4, ip, lsl #22
  ec:	00000018 	andeq	r0, r0, r8, lsl r0
  f0:	000000a4 	andeq	r0, r0, r4, lsr #1
  f4:	00400350 	subeq	r0, r0, r0, asr r3
  f8:	00000064 	andeq	r0, r0, r4, rrx
  fc:	8b080e42 	blhi	203a0c <_stacks_size+0x2032ec>
 100:	42018e02 	andmi	r8, r1, #2, 28
 104:	00040b0c 	andeq	r0, r4, ip, lsl #22
 108:	00000018 	andeq	r0, r0, r8, lsl r0
 10c:	000000a4 	andeq	r0, r0, r4, lsr #1
 110:	004003b4 	strheq	r0, [r0], #-52	; 0xffffffcc
 114:	00000030 	andeq	r0, r0, r0, lsr r0
 118:	8b080e42 	blhi	203a28 <_stacks_size+0x203308>
 11c:	42018e02 	andmi	r8, r1, #2, 28
 120:	00040b0c 	andeq	r0, r4, ip, lsl #22
 124:	0000000c 	andeq	r0, r0, ip
 128:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 12c:	7c020001 	stcvc	0, cr0, [r2], {1}
 130:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 134:	00000014 	andeq	r0, r0, r4, lsl r0
 138:	00000124 	andeq	r0, r0, r4, lsr #2
 13c:	004003e4 	subeq	r0, r0, r4, ror #7
 140:	000001ec 	andeq	r0, r0, ip, ror #3
 144:	8b040e42 	blhi	103a54 <_stacks_size+0x103334>
 148:	0b0d4201 	bleq	350954 <_stacks_size+0x350234>
 14c:	00000018 	andeq	r0, r0, r8, lsl r0
 150:	00000124 	andeq	r0, r0, r4, lsr #2
 154:	004005d0 	ldrdeq	r0, [r0], #-80	; 0xffffffb0
 158:	000000c8 	andeq	r0, r0, r8, asr #1
 15c:	8b080e42 	blhi	203a6c <_stacks_size+0x20334c>
 160:	42018e02 	andmi	r8, r1, #2, 28
 164:	00040b0c 	andeq	r0, r4, ip, lsl #22
 168:	00000014 	andeq	r0, r0, r4, lsl r0
 16c:	00000124 	andeq	r0, r0, r4, lsr #2
 170:	00400698 	umaaleq	r0, r0, r8, r6
 174:	00000030 	andeq	r0, r0, r0, lsr r0
 178:	8b040e42 	blhi	103a88 <_stacks_size+0x103368>
 17c:	0b0d4201 	bleq	350988 <_stacks_size+0x350268>
 180:	00000014 	andeq	r0, r0, r4, lsl r0
 184:	00000124 	andeq	r0, r0, r4, lsr #2
 188:	004006c8 	subeq	r0, r0, r8, asr #13
 18c:	00000040 	andeq	r0, r0, r0, asr #32
 190:	8b040e42 	blhi	103aa0 <_stacks_size+0x103380>
 194:	0b0d4201 	bleq	3509a0 <_stacks_size+0x350280>
 198:	00000018 	andeq	r0, r0, r8, lsl r0
 19c:	00000124 	andeq	r0, r0, r4, lsr #2
 1a0:	00400708 	subeq	r0, r0, r8, lsl #14
 1a4:	000000ac 	andeq	r0, r0, ip, lsr #1
 1a8:	8b080e42 	blhi	203ab8 <_stacks_size+0x203398>
 1ac:	42018e02 	andmi	r8, r1, #2, 28
 1b0:	00040b0c 	andeq	r0, r4, ip, lsl #22
 1b4:	00000014 	andeq	r0, r0, r4, lsl r0
 1b8:	00000124 	andeq	r0, r0, r4, lsr #2
 1bc:	004007b4 	strheq	r0, [r0], #-116	; 0xffffff8c
 1c0:	0000005c 	andeq	r0, r0, ip, asr r0
 1c4:	8b040e42 	blhi	103ad4 <_stacks_size+0x1033b4>
 1c8:	0b0d4201 	bleq	3509d4 <_stacks_size+0x3502b4>
 1cc:	00000018 	andeq	r0, r0, r8, lsl r0
 1d0:	00000124 	andeq	r0, r0, r4, lsr #2
 1d4:	00400810 	subeq	r0, r0, r0, lsl r8
 1d8:	000000a8 	andeq	r0, r0, r8, lsr #1
 1dc:	8b080e42 	blhi	203aec <_stacks_size+0x2033cc>
 1e0:	42018e02 	andmi	r8, r1, #2, 28
 1e4:	00040b0c 	andeq	r0, r4, ip, lsl #22
 1e8:	0000000c 	andeq	r0, r0, ip
 1ec:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1f0:	7c020001 	stcvc	0, cr0, [r2], {1}
 1f4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1f8:	00000018 	andeq	r0, r0, r8, lsl r0
 1fc:	000001e8 	andeq	r0, r0, r8, ror #3
 200:	004008b8 	strheq	r0, [r0], #-136	; 0xffffff78
 204:	00000024 	andeq	r0, r0, r4, lsr #32
 208:	8b080e42 	blhi	203b18 <_stacks_size+0x2033f8>
 20c:	42018e02 	andmi	r8, r1, #2, 28
 210:	00040b0c 	andeq	r0, r4, ip, lsl #22
 214:	00000014 	andeq	r0, r0, r4, lsl r0
 218:	000001e8 	andeq	r0, r0, r8, ror #3
 21c:	004008dc 	ldrdeq	r0, [r0], #-140	; 0xffffff74
 220:	00000020 	andeq	r0, r0, r0, lsr #32
 224:	8b040e42 	blhi	103b34 <_stacks_size+0x103414>
 228:	0b0d4201 	bleq	350a34 <_stacks_size+0x350314>
 22c:	00000014 	andeq	r0, r0, r4, lsl r0
 230:	000001e8 	andeq	r0, r0, r8, ror #3
 234:	004008fc 	strdeq	r0, [r0], #-140	; 0xffffff74
 238:	0000001c 	andeq	r0, r0, ip, lsl r0
 23c:	8b040e42 	blhi	103b4c <_stacks_size+0x10342c>
 240:	0b0d4201 	bleq	350a4c <_stacks_size+0x35032c>
 244:	00000014 	andeq	r0, r0, r4, lsl r0
 248:	000001e8 	andeq	r0, r0, r8, ror #3
 24c:	00400918 	subeq	r0, r0, r8, lsl r9
 250:	0000001c 	andeq	r0, r0, ip, lsl r0
 254:	8b040e42 	blhi	103b64 <_stacks_size+0x103444>
 258:	0b0d4201 	bleq	350a64 <_stacks_size+0x350344>
 25c:	00000014 	andeq	r0, r0, r4, lsl r0
 260:	000001e8 	andeq	r0, r0, r8, ror #3
 264:	00400934 	subeq	r0, r0, r4, lsr r9
 268:	0000001c 	andeq	r0, r0, ip, lsl r0
 26c:	8b040e42 	blhi	103b7c <_stacks_size+0x10345c>
 270:	0b0d4201 	bleq	350a7c <_stacks_size+0x35035c>
 274:	00000014 	andeq	r0, r0, r4, lsl r0
 278:	000001e8 	andeq	r0, r0, r8, ror #3
 27c:	00400950 	subeq	r0, r0, r0, asr r9
 280:	0000001c 	andeq	r0, r0, ip, lsl r0
 284:	8b040e42 	blhi	103b94 <_stacks_size+0x103474>
 288:	0b0d4201 	bleq	350a94 <_stacks_size+0x350374>
 28c:	00000014 	andeq	r0, r0, r4, lsl r0
 290:	000001e8 	andeq	r0, r0, r8, ror #3
 294:	0040096c 	subeq	r0, r0, ip, ror #18
 298:	0000001c 	andeq	r0, r0, ip, lsl r0
 29c:	8b040e42 	blhi	103bac <_stacks_size+0x10348c>
 2a0:	0b0d4201 	bleq	350aac <_stacks_size+0x35038c>
 2a4:	00000014 	andeq	r0, r0, r4, lsl r0
 2a8:	000001e8 	andeq	r0, r0, r8, ror #3
 2ac:	00400988 	subeq	r0, r0, r8, lsl #19
 2b0:	0000001c 	andeq	r0, r0, ip, lsl r0
 2b4:	8b040e42 	blhi	103bc4 <_stacks_size+0x1034a4>
 2b8:	0b0d4201 	bleq	350ac4 <_stacks_size+0x3503a4>
 2bc:	00000014 	andeq	r0, r0, r4, lsl r0
 2c0:	000001e8 	andeq	r0, r0, r8, ror #3
 2c4:	004009a4 	subeq	r0, r0, r4, lsr #19
 2c8:	00000044 	andeq	r0, r0, r4, asr #32
 2cc:	8b040e42 	blhi	103bdc <_stacks_size+0x1034bc>
 2d0:	0b0d4201 	bleq	350adc <_stacks_size+0x3503bc>
 2d4:	00000014 	andeq	r0, r0, r4, lsl r0
 2d8:	000001e8 	andeq	r0, r0, r8, ror #3
 2dc:	004009e8 	subeq	r0, r0, r8, ror #19
 2e0:	00000050 	andeq	r0, r0, r0, asr r0
 2e4:	8b040e42 	blhi	103bf4 <_stacks_size+0x1034d4>
 2e8:	0b0d4201 	bleq	350af4 <_stacks_size+0x3503d4>
 2ec:	00000014 	andeq	r0, r0, r4, lsl r0
 2f0:	000001e8 	andeq	r0, r0, r8, ror #3
 2f4:	00400a38 	subeq	r0, r0, r8, lsr sl
 2f8:	00000014 	andeq	r0, r0, r4, lsl r0
 2fc:	8b040e42 	blhi	103c0c <_stacks_size+0x1034ec>
 300:	0b0d4201 	bleq	350b0c <_stacks_size+0x3503ec>
 304:	0000000c 	andeq	r0, r0, ip
 308:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 30c:	7c020001 	stcvc	0, cr0, [r2], {1}
 310:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 314:	00000014 	andeq	r0, r0, r4, lsl r0
 318:	00000304 	andeq	r0, r0, r4, lsl #6
 31c:	00400a4c 	subeq	r0, r0, ip, asr #20
 320:	00000014 	andeq	r0, r0, r4, lsl r0
 324:	8b040e42 	blhi	103c34 <_stacks_size+0x103514>
 328:	0b0d4201 	bleq	350b34 <_stacks_size+0x350414>
 32c:	00000014 	andeq	r0, r0, r4, lsl r0
 330:	00000304 	andeq	r0, r0, r4, lsl #6
 334:	00400a60 	subeq	r0, r0, r0, ror #20
 338:	00000014 	andeq	r0, r0, r4, lsl r0
 33c:	8b040e42 	blhi	103c4c <_stacks_size+0x10352c>
 340:	0b0d4201 	bleq	350b4c <_stacks_size+0x35042c>
 344:	00000014 	andeq	r0, r0, r4, lsl r0
 348:	00000304 	andeq	r0, r0, r4, lsl #6
 34c:	00400a74 	subeq	r0, r0, r4, ror sl
 350:	00000014 	andeq	r0, r0, r4, lsl r0
 354:	8b040e42 	blhi	103c64 <_stacks_size+0x103544>
 358:	0b0d4201 	bleq	350b64 <_stacks_size+0x350444>
 35c:	00000014 	andeq	r0, r0, r4, lsl r0
 360:	00000304 	andeq	r0, r0, r4, lsl #6
 364:	00400a88 	subeq	r0, r0, r8, lsl #21
 368:	00000024 	andeq	r0, r0, r4, lsr #32
 36c:	8b040e42 	blhi	103c7c <_stacks_size+0x10355c>
 370:	0b0d4201 	bleq	350b7c <_stacks_size+0x35045c>
 374:	00000014 	andeq	r0, r0, r4, lsl r0
 378:	00000304 	andeq	r0, r0, r4, lsl #6
 37c:	00400aac 	subeq	r0, r0, ip, lsr #21
 380:	00000028 	andeq	r0, r0, r8, lsr #32
 384:	8b040e42 	blhi	103c94 <_stacks_size+0x103574>
 388:	0b0d4201 	bleq	350b94 <_stacks_size+0x350474>
 38c:	00000014 	andeq	r0, r0, r4, lsl r0
 390:	00000304 	andeq	r0, r0, r4, lsl #6
 394:	00400ad4 	ldrdeq	r0, [r0], #-164	; 0xffffff5c
 398:	00000020 	andeq	r0, r0, r0, lsr #32
 39c:	8b040e42 	blhi	103cac <_stacks_size+0x10358c>
 3a0:	0b0d4201 	bleq	350bac <_stacks_size+0x35048c>
 3a4:	00000014 	andeq	r0, r0, r4, lsl r0
 3a8:	00000304 	andeq	r0, r0, r4, lsl #6
 3ac:	00400af4 	strdeq	r0, [r0], #-164	; 0xffffff5c
 3b0:	00000020 	andeq	r0, r0, r0, lsr #32
 3b4:	8b040e42 	blhi	103cc4 <_stacks_size+0x1035a4>
 3b8:	0b0d4201 	bleq	350bc4 <_stacks_size+0x3504a4>
 3bc:	00000014 	andeq	r0, r0, r4, lsl r0
 3c0:	00000304 	andeq	r0, r0, r4, lsl #6
 3c4:	00400b14 	subeq	r0, r0, r4, lsl fp
 3c8:	00000020 	andeq	r0, r0, r0, lsr #32
 3cc:	8b040e42 	blhi	103cdc <_stacks_size+0x1035bc>
 3d0:	0b0d4201 	bleq	350bdc <_stacks_size+0x3504bc>
 3d4:	00000014 	andeq	r0, r0, r4, lsl r0
 3d8:	00000304 	andeq	r0, r0, r4, lsl #6
 3dc:	00400b34 	subeq	r0, r0, r4, lsr fp
 3e0:	00000020 	andeq	r0, r0, r0, lsr #32
 3e4:	8b040e42 	blhi	103cf4 <_stacks_size+0x1035d4>
 3e8:	0b0d4201 	bleq	350bf4 <_stacks_size+0x3504d4>
 3ec:	00000014 	andeq	r0, r0, r4, lsl r0
 3f0:	00000304 	andeq	r0, r0, r4, lsl #6
 3f4:	00400b54 	subeq	r0, r0, r4, asr fp
 3f8:	00000014 	andeq	r0, r0, r4, lsl r0
 3fc:	8b040e42 	blhi	103d0c <_stacks_size+0x1035ec>
 400:	0b0d4201 	bleq	350c0c <_stacks_size+0x3504ec>
 404:	00000014 	andeq	r0, r0, r4, lsl r0
 408:	00000304 	andeq	r0, r0, r4, lsl #6
 40c:	00400b68 	subeq	r0, r0, r8, ror #22
 410:	00000014 	andeq	r0, r0, r4, lsl r0
 414:	8b040e42 	blhi	103d24 <_stacks_size+0x103604>
 418:	0b0d4201 	bleq	350c24 <_stacks_size+0x350504>
 41c:	0000000c 	andeq	r0, r0, ip
 420:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 424:	7c020001 	stcvc	0, cr0, [r2], {1}
 428:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 42c:	00000014 	andeq	r0, r0, r4, lsl r0
 430:	0000041c 	andeq	r0, r0, ip, lsl r4
 434:	00400b7c 	subeq	r0, r0, ip, ror fp
 438:	00000030 	andeq	r0, r0, r0, lsr r0
 43c:	8b040e42 	blhi	103d4c <_stacks_size+0x10362c>
 440:	0b0d4201 	bleq	350c4c <_stacks_size+0x35052c>
 444:	00000014 	andeq	r0, r0, r4, lsl r0
 448:	0000041c 	andeq	r0, r0, ip, lsl r4
 44c:	00400bac 	subeq	r0, r0, ip, lsr #23
 450:	00000028 	andeq	r0, r0, r8, lsr #32
 454:	8b040e42 	blhi	103d64 <_stacks_size+0x103644>
 458:	0b0d4201 	bleq	350c64 <_stacks_size+0x350544>
 45c:	00000014 	andeq	r0, r0, r4, lsl r0
 460:	0000041c 	andeq	r0, r0, ip, lsl r4
 464:	00400bd4 	ldrdeq	r0, [r0], #-180	; 0xffffff4c
 468:	00000028 	andeq	r0, r0, r8, lsr #32
 46c:	8b040e42 	blhi	103d7c <_stacks_size+0x10365c>
 470:	0b0d4201 	bleq	350c7c <_stacks_size+0x35055c>
 474:	00000014 	andeq	r0, r0, r4, lsl r0
 478:	0000041c 	andeq	r0, r0, ip, lsl r4
 47c:	00400bfc 	strdeq	r0, [r0], #-188	; 0xffffff44
 480:	0000002c 	andeq	r0, r0, ip, lsr #32
 484:	8b040e42 	blhi	103d94 <_stacks_size+0x103674>
 488:	0b0d4201 	bleq	350c94 <_stacks_size+0x350574>
 48c:	00000014 	andeq	r0, r0, r4, lsl r0
 490:	0000041c 	andeq	r0, r0, ip, lsl r4
 494:	00400c28 	subeq	r0, r0, r8, lsr #24
 498:	0000002c 	andeq	r0, r0, ip, lsr #32
 49c:	8b040e42 	blhi	103dac <_stacks_size+0x10368c>
 4a0:	0b0d4201 	bleq	350cac <_stacks_size+0x35058c>
 4a4:	00000014 	andeq	r0, r0, r4, lsl r0
 4a8:	0000041c 	andeq	r0, r0, ip, lsl r4
 4ac:	00400c54 	subeq	r0, r0, r4, asr ip
 4b0:	0000002c 	andeq	r0, r0, ip, lsr #32
 4b4:	8b040e42 	blhi	103dc4 <_stacks_size+0x1036a4>
 4b8:	0b0d4201 	bleq	350cc4 <_stacks_size+0x3505a4>
 4bc:	00000014 	andeq	r0, r0, r4, lsl r0
 4c0:	0000041c 	andeq	r0, r0, ip, lsl r4
 4c4:	00400c80 	subeq	r0, r0, r0, lsl #25
 4c8:	0000002c 	andeq	r0, r0, ip, lsr #32
 4cc:	8b040e42 	blhi	103ddc <_stacks_size+0x1036bc>
 4d0:	0b0d4201 	bleq	350cdc <_stacks_size+0x3505bc>
 4d4:	00000014 	andeq	r0, r0, r4, lsl r0
 4d8:	0000041c 	andeq	r0, r0, ip, lsl r4
 4dc:	00400cac 	subeq	r0, r0, ip, lsr #25
 4e0:	00000020 	andeq	r0, r0, r0, lsr #32
 4e4:	8b040e42 	blhi	103df4 <_stacks_size+0x1036d4>
 4e8:	0b0d4201 	bleq	350cf4 <_stacks_size+0x3505d4>
 4ec:	00000018 	andeq	r0, r0, r8, lsl r0
 4f0:	0000041c 	andeq	r0, r0, ip, lsl r4
 4f4:	00400ccc 	subeq	r0, r0, ip, asr #25
 4f8:	0000001c 	andeq	r0, r0, ip, lsl r0
 4fc:	8b080e42 	blhi	203e0c <_stacks_size+0x2036ec>
 500:	42018e02 	andmi	r8, r1, #2, 28
 504:	00040b0c 	andeq	r0, r4, ip, lsl #22
 508:	00000018 	andeq	r0, r0, r8, lsl r0
 50c:	0000041c 	andeq	r0, r0, ip, lsl r4
 510:	00400ce8 	subeq	r0, r0, r8, ror #25
 514:	0000001c 	andeq	r0, r0, ip, lsl r0
 518:	8b080e42 	blhi	203e28 <_stacks_size+0x203708>
 51c:	42018e02 	andmi	r8, r1, #2, 28
 520:	00040b0c 	andeq	r0, r4, ip, lsl #22
 524:	0000000c 	andeq	r0, r0, ip
 528:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 52c:	7c020001 	stcvc	0, cr0, [r2], {1}
 530:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 534:	0000000c 	andeq	r0, r0, ip
 538:	00000524 	andeq	r0, r0, r4, lsr #10
 53c:	00400ec4 	subeq	r0, r0, r4, asr #29
 540:	00000010 	andeq	r0, r0, r0, lsl r0
 544:	0000000c 	andeq	r0, r0, ip
 548:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 54c:	7c020001 	stcvc	0, cr0, [r2], {1}
 550:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 554:	00000014 	andeq	r0, r0, r4, lsl r0
 558:	00000544 	andeq	r0, r0, r4, asr #10
 55c:	00400ed4 	ldrdeq	r0, [r0], #-228	; 0xffffff1c
 560:	000000b4 	strheq	r0, [r0], -r4
 564:	84080e44 	strhi	r0, [r8], #-3652	; 0xe44
 568:	00018502 	andeq	r8, r1, r2, lsl #10
 56c:	0000000c 	andeq	r0, r0, ip
 570:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 574:	7c020001 	stcvc	0, cr0, [r2], {1}
 578:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 57c:	0000000c 	andeq	r0, r0, ip
 580:	0000056c 	andeq	r0, r0, ip, ror #10
 584:	00400f88 	subeq	r0, r0, r8, lsl #31
 588:	00000060 	andeq	r0, r0, r0, rrx
 58c:	0000000c 	andeq	r0, r0, ip
 590:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 594:	7c020001 	stcvc	0, cr0, [r2], {1}
 598:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 59c:	00000020 	andeq	r0, r0, r0, lsr #32
 5a0:	0000058c 	andeq	r0, r0, ip, lsl #11
 5a4:	00400fe8 	subeq	r0, r0, r8, ror #31
 5a8:	00000040 	andeq	r0, r0, r0, asr #32
 5ac:	810c0e42 	tsthi	ip, r2, asr #28
 5b0:	83028203 	movwhi	r8, #8707	; 0x2203
 5b4:	100e4201 	andne	r4, lr, r1, lsl #4
 5b8:	0e44048e 	cdpeq	4, 4, cr0, cr4, cr14, {4}
 5bc:	00000018 	andeq	r0, r0, r8, lsl r0
 5c0:	0000000c 	andeq	r0, r0, ip
 5c4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5c8:	7c020001 	stcvc	0, cr0, [r2], {1}
 5cc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5d0:	00000018 	andeq	r0, r0, r8, lsl r0
 5d4:	000005c0 	andeq	r0, r0, r0, asr #11
 5d8:	00401028 	subeq	r1, r0, r8, lsr #32
 5dc:	00000044 	andeq	r0, r0, r4, asr #32
 5e0:	83100e42 	tsthi	r0, #1056	; 0x420
 5e4:	85038404 	strhi	r8, [r3, #-1028]	; 0x404
 5e8:	00018e02 	andeq	r8, r1, r2, lsl #28
 5ec:	0000000c 	andeq	r0, r0, ip
 5f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5f4:	7c020001 	stcvc	0, cr0, [r2], {1}
 5f8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5fc:	00000018 	andeq	r0, r0, r8, lsl r0
 600:	000005ec 	andeq	r0, r0, ip, ror #11
 604:	0040106c 	subeq	r1, r0, ip, rrx
 608:	0000002c 	andeq	r0, r0, ip, lsr #32
 60c:	83100e42 	tsthi	r0, #1056	; 0x420
 610:	85038404 	strhi	r8, [r3, #-1028]	; 0x404
 614:	00018e02 	andeq	r8, r1, r2, lsl #28
 618:	00000018 	andeq	r0, r0, r8, lsl r0
 61c:	000005ec 	andeq	r0, r0, ip, ror #11
 620:	00401098 	umaaleq	r1, r0, r8, r0
 624:	00000108 	andeq	r0, r0, r8, lsl #2
 628:	84100e48 	ldrhi	r0, [r0], #-3656	; 0xe48
 62c:	86038504 	strhi	r8, [r3], -r4, lsl #10
 630:	00018e02 	andeq	r8, r1, r2, lsl #28
 634:	0000000c 	andeq	r0, r0, ip
 638:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 63c:	7c020001 	stcvc	0, cr0, [r2], {1}
 640:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 644:	0000001c 	andeq	r0, r0, ip, lsl r0
 648:	00000634 	andeq	r0, r0, r4, lsr r6
 64c:	004011a0 	subeq	r1, r0, r0, lsr #3
 650:	00000100 	andeq	r0, r0, r0, lsl #2
 654:	83180e42 	tsthi	r8, #1056	; 0x420
 658:	85058406 	strhi	r8, [r5, #-1030]	; 0x406
 65c:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 660:	00018e02 	andeq	r8, r1, r2, lsl #28
 664:	0000001c 	andeq	r0, r0, ip, lsl r0
 668:	00000634 	andeq	r0, r0, r4, lsr r6
 66c:	004012a0 	subeq	r1, r0, r0, lsr #5
 670:	0000026c 	andeq	r0, r0, ip, ror #4
 674:	83180e42 	tsthi	r8, #1056	; 0x420
 678:	85058406 	strhi	r8, [r5, #-1030]	; 0x406
 67c:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 680:	00018e02 	andeq	r8, r1, r2, lsl #28
 684:	0000000c 	andeq	r0, r0, ip
 688:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 68c:	7c020001 	stcvc	0, cr0, [r2], {1}
 690:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 694:	00000024 	andeq	r0, r0, r4, lsr #32
 698:	00000684 	andeq	r0, r0, r4, lsl #13
 69c:	0040150c 	subeq	r1, r0, ip, lsl #10
 6a0:	0000074c 	andeq	r0, r0, ip, asr #14
 6a4:	84240e42 	strthi	r0, [r4], #-3650	; 0xe42
 6a8:	86088509 	strhi	r8, [r8], -r9, lsl #10
 6ac:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 6b0:	8a048905 	bhi	122acc <_stacks_size+0x1223ac>
 6b4:	8e028b03 	vmlahi.f64	d8, d2, d3
 6b8:	300e5801 	andcc	r5, lr, r1, lsl #16
 6bc:	0000000c 	andeq	r0, r0, ip
 6c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 6c4:	7c020001 	stcvc	0, cr0, [r2], {1}
 6c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 6cc:	0000000c 	andeq	r0, r0, ip
 6d0:	000006bc 			; <UNDEFINED> instruction: 0x000006bc
 6d4:	00401c58 	subeq	r1, r0, r8, asr ip
 6d8:	00000004 	andeq	r0, r0, r4
 6dc:	0000000c 	andeq	r0, r0, ip
 6e0:	000006bc 			; <UNDEFINED> instruction: 0x000006bc
 6e4:	00401c5c 	subeq	r1, r0, ip, asr ip
 6e8:	00000004 	andeq	r0, r0, r4
 6ec:	0000000c 	andeq	r0, r0, ip
 6f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 6f4:	7c020001 	stcvc	0, cr0, [r2], {1}
 6f8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 6fc:	00000018 	andeq	r0, r0, r8, lsl r0
 700:	000006ec 	andeq	r0, r0, ip, ror #13
 704:	00401c60 	subeq	r1, r0, r0, ror #24
 708:	00000044 	andeq	r0, r0, r4, asr #32
 70c:	83100e42 	tsthi	r0, #1056	; 0x420
 710:	85038404 	strhi	r8, [r3, #-1028]	; 0x404
 714:	00018e02 	andeq	r8, r1, r2, lsl #28
 718:	0000000c 	andeq	r0, r0, ip
 71c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 720:	7c020001 	stcvc	0, cr0, [r2], {1}
 724:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 728:	00000018 	andeq	r0, r0, r8, lsl r0
 72c:	00000718 	andeq	r0, r0, r8, lsl r7
 730:	00400d04 	subeq	r0, r0, r4, lsl #26
 734:	000000a0 	andeq	r0, r0, r0, lsr #1
 738:	8b080e42 	blhi	204048 <_stacks_size+0x203928>
 73c:	42018e02 	andmi	r8, r1, #2, 28
 740:	00040b0c 	andeq	r0, r4, ip, lsl #22
 744:	00000014 	andeq	r0, r0, r4, lsl r0
 748:	00000718 	andeq	r0, r0, r8, lsl r7
 74c:	00400da4 	subeq	r0, r0, r4, lsr #27
 750:	0000002c 	andeq	r0, r0, ip, lsr #32
 754:	8b040e42 	blhi	104064 <_stacks_size+0x103944>
 758:	0b0d4201 	bleq	350f64 <_stacks_size+0x350844>
 75c:	00000014 	andeq	r0, r0, r4, lsl r0
 760:	00000718 	andeq	r0, r0, r8, lsl r7
 764:	00400dd0 	ldrdeq	r0, [r0], #-208	; 0xffffff30
 768:	00000024 	andeq	r0, r0, r4, lsr #32
 76c:	8b040e42 	blhi	10407c <_stacks_size+0x10395c>
 770:	0b0d4201 	bleq	350f7c <_stacks_size+0x35085c>
 774:	00000014 	andeq	r0, r0, r4, lsl r0
 778:	00000718 	andeq	r0, r0, r8, lsl r7
 77c:	00400df4 	strdeq	r0, [r0], #-212	; 0xffffff2c
 780:	0000002c 	andeq	r0, r0, ip, lsr #32
 784:	8b040e42 	blhi	104094 <_stacks_size+0x103974>
 788:	0b0d4201 	bleq	350f94 <_stacks_size+0x350874>
 78c:	00000014 	andeq	r0, r0, r4, lsl r0
 790:	00000718 	andeq	r0, r0, r8, lsl r7
 794:	00400e20 	subeq	r0, r0, r0, lsr #28
 798:	0000002c 	andeq	r0, r0, ip, lsr #32
 79c:	8b040e42 	blhi	1040ac <_stacks_size+0x10398c>
 7a0:	0b0d4201 	bleq	350fac <_stacks_size+0x35088c>
 7a4:	00000014 	andeq	r0, r0, r4, lsl r0
 7a8:	00000718 	andeq	r0, r0, r8, lsl r7
 7ac:	00400e4c 	subeq	r0, r0, ip, asr #28
 7b0:	0000002c 	andeq	r0, r0, ip, lsr #32
 7b4:	8b040e42 	blhi	1040c4 <_stacks_size+0x1039a4>
 7b8:	0b0d4201 	bleq	350fc4 <_stacks_size+0x3508a4>
 7bc:	00000014 	andeq	r0, r0, r4, lsl r0
 7c0:	00000718 	andeq	r0, r0, r8, lsl r7
 7c4:	00400e78 	subeq	r0, r0, r8, ror lr
 7c8:	00000028 	andeq	r0, r0, r8, lsr #32
 7cc:	8b040e42 	blhi	1040dc <_stacks_size+0x1039bc>
 7d0:	0b0d4201 	bleq	350fdc <_stacks_size+0x3508bc>
 7d4:	00000014 	andeq	r0, r0, r4, lsl r0
 7d8:	00000718 	andeq	r0, r0, r8, lsl r7
 7dc:	00400ea0 	subeq	r0, r0, r0, lsr #29
 7e0:	00000024 	andeq	r0, r0, r4, lsr #32
 7e4:	8b040e42 	blhi	1040f4 <_stacks_size+0x1039d4>
 7e8:	0b0d4201 	bleq	350ff4 <_stacks_size+0x3508d4>

Disassembly of section .stab:

00000000 <.stab>:
   0:	00000001 	andeq	r0, r0, r1
   4:	002b0000 	eoreq	r0, fp, r0
   8:	0000000c 	andeq	r0, r0, ip
   c:	00000001 	andeq	r0, r0, r1
  10:	00000064 	andeq	r0, r0, r4, rrx
  14:	004002f4 	strdeq	r0, [r0], #-36	; 0xffffffdc
  18:	00000000 	andeq	r0, r0, r0
  1c:	001f0044 	andseq	r0, pc, r4, asr #32
  20:	00400000 	subeq	r0, r0, r0
  24:	00000000 	andeq	r0, r0, r0
  28:	00200044 	eoreq	r0, r0, r4, asr #32
  2c:	00400004 	subeq	r0, r0, r4
  30:	00000000 	andeq	r0, r0, r0
  34:	00210044 	eoreq	r0, r1, r4, asr #32
  38:	00400008 	subeq	r0, r0, r8
  3c:	00000000 	andeq	r0, r0, r0
  40:	00220044 	eoreq	r0, r2, r4, asr #32
  44:	0040000c 	subeq	r0, r0, ip
  48:	00000000 	andeq	r0, r0, r0
  4c:	00230044 	eoreq	r0, r3, r4, asr #32
  50:	00400010 	subeq	r0, r0, r0, lsl r0
  54:	00000000 	andeq	r0, r0, r0
  58:	00240044 	eoreq	r0, r4, r4, asr #32
  5c:	00400014 	subeq	r0, r0, r4, lsl r0
  60:	00000000 	andeq	r0, r0, r0
  64:	00250044 	eoreq	r0, r5, r4, asr #32
  68:	00400018 	subeq	r0, r0, r8, lsl r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	00260044 	eoreq	r0, r6, r4, asr #32
  74:	0040001c 	subeq	r0, r0, ip, lsl r0
  78:	00000000 	andeq	r0, r0, r0
  7c:	00330044 	eorseq	r0, r3, r4, asr #32
  80:	00400034 	subeq	r0, r0, r4, lsr r0
  84:	00000000 	andeq	r0, r0, r0
  88:	00430044 	subeq	r0, r3, r4, asr #32
  8c:	00400080 	subeq	r0, r0, r0, lsl #1
  90:	00000000 	andeq	r0, r0, r0
  94:	00450044 	subeq	r0, r5, r4, asr #32
  98:	00400084 	subeq	r0, r0, r4, lsl #1
  9c:	00000000 	andeq	r0, r0, r0
  a0:	00470044 	subeq	r0, r7, r4, asr #32
  a4:	00400088 	subeq	r0, r0, r8, lsl #1
  a8:	00000000 	andeq	r0, r0, r0
  ac:	00490044 	subeq	r0, r9, r4, asr #32
  b0:	0040008c 	subeq	r0, r0, ip, lsl #1
  b4:	00000000 	andeq	r0, r0, r0
  b8:	004b0044 	subeq	r0, fp, r4, asr #32
  bc:	00400090 	umaaleq	r0, r0, r0, r0
  c0:	00000000 	andeq	r0, r0, r0
  c4:	004d0044 	subeq	r0, sp, r4, asr #32
  c8:	00400094 	umaaleq	r0, r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	004f0044 	subeq	r0, pc, r4, asr #32
  d4:	00400098 	umaaleq	r0, r0, r8, r0
  d8:	00000000 	andeq	r0, r0, r0
  dc:	00540044 	subseq	r0, r4, r4, asr #32
  e0:	0040009c 	umaaleq	r0, r0, ip, r0
  e4:	00000000 	andeq	r0, r0, r0
  e8:	00550044 	subseq	r0, r5, r4, asr #32
  ec:	004000a0 	subeq	r0, r0, r0, lsr #1
  f0:	00000000 	andeq	r0, r0, r0
  f4:	00560044 	subseq	r0, r6, r4, asr #32
  f8:	004000a4 	subeq	r0, r0, r4, lsr #1
  fc:	00000000 	andeq	r0, r0, r0
 100:	00570044 	subseq	r0, r7, r4, asr #32
 104:	004000a8 	subeq	r0, r0, r8, lsr #1
 108:	00000000 	andeq	r0, r0, r0
 10c:	00680044 	rsbeq	r0, r8, r4, asr #32
 110:	004000b0 	strheq	r0, [r0], #-0
 114:	00000000 	andeq	r0, r0, r0
 118:	00690044 	rsbeq	r0, r9, r4, asr #32
 11c:	004000b4 	strheq	r0, [r0], #-4
 120:	00000000 	andeq	r0, r0, r0
 124:	006a0044 	rsbeq	r0, sl, r4, asr #32
 128:	004000b8 	strheq	r0, [r0], #-8
 12c:	00000000 	andeq	r0, r0, r0
 130:	006b0044 	rsbeq	r0, fp, r4, asr #32
 134:	004000bc 	strheq	r0, [r0], #-12
 138:	00000000 	andeq	r0, r0, r0
 13c:	00710044 	rsbseq	r0, r1, r4, asr #32
 140:	004000c0 	subeq	r0, r0, r0, asr #1
 144:	00000000 	andeq	r0, r0, r0
 148:	00720044 	rsbseq	r0, r2, r4, asr #32
 14c:	004000c4 	subeq	r0, r0, r4, asr #1
 150:	00000000 	andeq	r0, r0, r0
 154:	00730044 	rsbseq	r0, r3, r4, asr #32
 158:	004000c8 	subeq	r0, r0, r8, asr #1
 15c:	00000000 	andeq	r0, r0, r0
 160:	00740044 	rsbseq	r0, r4, r4, asr #32
 164:	004000cc 	subeq	r0, r0, ip, asr #1
 168:	00000000 	andeq	r0, r0, r0
 16c:	00750044 	rsbseq	r0, r5, r4, asr #32
 170:	004000d0 	ldrdeq	r0, [r0], #-0
 174:	00000000 	andeq	r0, r0, r0
 178:	00760044 	rsbseq	r0, r6, r4, asr #32
 17c:	004000d4 	ldrdeq	r0, [r0], #-4
 180:	00000000 	andeq	r0, r0, r0
 184:	00770044 	rsbseq	r0, r7, r4, asr #32
 188:	004000d8 	ldrdeq	r0, [r0], #-8
 18c:	00000000 	andeq	r0, r0, r0
 190:	00780044 	rsbseq	r0, r8, r4, asr #32
 194:	004000dc 	ldrdeq	r0, [r0], #-12
 198:	00000000 	andeq	r0, r0, r0
 19c:	00790044 	rsbseq	r0, r9, r4, asr #32
 1a0:	004000e0 	subeq	r0, r0, r0, ror #1
 1a4:	00000000 	andeq	r0, r0, r0
 1a8:	007a0044 	rsbseq	r0, sl, r4, asr #32
 1ac:	004000e4 	subeq	r0, r0, r4, ror #1
 1b0:	00000000 	andeq	r0, r0, r0
 1b4:	007b0044 	rsbseq	r0, fp, r4, asr #32
 1b8:	004000e8 	subeq	r0, r0, r8, ror #1
 1bc:	00000000 	andeq	r0, r0, r0
 1c0:	007c0044 	rsbseq	r0, ip, r4, asr #32
 1c4:	004000ec 	subeq	r0, r0, ip, ror #1
 1c8:	00000000 	andeq	r0, r0, r0
 1cc:	00860044 	addeq	r0, r6, r4, asr #32
 1d0:	004000f0 	strdeq	r0, [r0], #-0
 1d4:	00000000 	andeq	r0, r0, r0
 1d8:	00870044 	addeq	r0, r7, r4, asr #32
 1dc:	004000f4 	strdeq	r0, [r0], #-4
 1e0:	00000000 	andeq	r0, r0, r0
 1e4:	00880044 	addeq	r0, r8, r4, asr #32
 1e8:	004000f8 	strdeq	r0, [r0], #-8
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	008e0044 	addeq	r0, lr, r4, asr #32
 1f4:	004000fc 	strdeq	r0, [r0], #-12
 1f8:	00000000 	andeq	r0, r0, r0
 1fc:	00950044 	addseq	r0, r5, r4, asr #32
 200:	00400100 	subeq	r0, r0, r0, lsl #2
 204:	00000000 	andeq	r0, r0, r0
 208:	00990044 	addseq	r0, r9, r4, asr #32
 20c:	00400104 	subeq	r0, r0, r4, lsl #2

Disassembly of section .stabstr:

00000000 <.stabstr>:
   0:	6c616800 	stclvs	8, cr6, [r1], #-0
   4:	7472632f 	ldrbtvc	r6, [r2], #-815	; 0x32f
   8:	00732e30 	rsbseq	r2, r3, r0, lsr lr

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	00400ec4 	subeq	r0, r0, r4, asr #29
   4:	00400ed4 	ldrdeq	r0, [r0], #-228	; 0xffffff1c
	...
  10:	00400ed4 	ldrdeq	r0, [r0], #-228	; 0xffffff1c
  14:	00400f88 	subeq	r0, r0, r8, lsl #31
	...
  20:	00400f88 	subeq	r0, r0, r8, lsl #31
  24:	00400fe8 	subeq	r0, r0, r8, ror #31
	...
  30:	00400fe8 	subeq	r0, r0, r8, ror #31
  34:	00401028 	subeq	r1, r0, r8, lsr #32
	...
  40:	00401028 	subeq	r1, r0, r8, lsr #32
  44:	0040106c 	subeq	r1, r0, ip, rrx
	...
  50:	004010bc 	strheq	r1, [r0], #-12
  54:	004010c0 	subeq	r1, r0, r0, asr #1
  58:	004010c4 	subeq	r1, r0, r4, asr #1
  5c:	0040110c 	subeq	r1, r0, ip, lsl #2
	...
  68:	0040106c 	subeq	r1, r0, ip, rrx
  6c:	00401098 	umaaleq	r1, r0, r8, r0
  70:	00401098 	umaaleq	r1, r0, r8, r0
  74:	004011a0 	subeq	r1, r0, r0, lsr #3
	...
  80:	004011a0 	subeq	r1, r0, r0, lsr #3
  84:	004012a0 	subeq	r1, r0, r0, lsr #5
  88:	004012a0 	subeq	r1, r0, r0, lsr #5
  8c:	0040150c 	subeq	r1, r0, ip, lsl #10
	...
  98:	004017b4 	strheq	r1, [r0], #-116	; 0xffffff8c
  9c:	0040191c 	subeq	r1, r0, ip, lsl r9
  a0:	00401af4 	strdeq	r1, [r0], #-164	; 0xffffff5c
  a4:	00401b0c 	subeq	r1, r0, ip, lsl #22
  a8:	00401b80 	subeq	r1, r0, r0, lsl #23
  ac:	00401b94 	umaaleq	r1, r0, r4, fp
  b0:	00401bd0 	ldrdeq	r1, [r0], #-176	; 0xffffff50
  b4:	00401c00 	subeq	r1, r0, r0, lsl #24
	...
  c0:	0040150c 	subeq	r1, r0, ip, lsl #10
  c4:	00401c58 	subeq	r1, r0, r8, asr ip
	...
  d0:	00401c58 	subeq	r1, r0, r8, asr ip
  d4:	00401c5c 	subeq	r1, r0, ip, asr ip
  d8:	00401c5c 	subeq	r1, r0, ip, asr ip
  dc:	00401c60 	subeq	r1, r0, r0, ror #24
	...
  e8:	00401c60 	subeq	r1, r0, r0, ror #24
  ec:	00401ca4 	subeq	r1, r0, r4, lsr #25
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
       0:	00400ed4 	ldrdeq	r0, [r0], #-228	; 0xffffff1c
       4:	00400ef4 	strdeq	r0, [r0], #-228	; 0xffffff1c
       8:	f4500001 			; <UNDEFINED> instruction: 0xf4500001
       c:	8800400e 	stmdahi	r0, {r1, r2, r3, lr}
      10:	0400400f 	streq	r4, [r0], #-15
      14:	5001f300 	andpl	pc, r1, r0, lsl #6
      18:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
      1c:	00000000 	andeq	r0, r0, r0
      20:	400ed400 	andmi	sp, lr, r0, lsl #8
      24:	400ef400 	andmi	pc, lr, r0, lsl #8
      28:	51000100 	mrspl	r0, (UNDEF: 16)
      2c:	00400ef4 	strdeq	r0, [r0], #-228	; 0xffffff1c
      30:	00400f88 	subeq	r0, r0, r8, lsl #31
      34:	01f30004 	mvnseq	r0, r4
      38:	00009f51 	andeq	r9, r0, r1, asr pc
      3c:	00000000 	andeq	r0, r0, r0
      40:	0ed40000 	cdpeq	0, 13, cr0, cr4, cr0, {0}
      44:	0ef40040 	cdpeq	0, 15, cr0, cr4, cr0, {2}
      48:	00010040 	andeq	r0, r1, r0, asr #32
      4c:	00000052 	andeq	r0, r0, r2, asr r0
      50:	00000000 	andeq	r0, r0, r0
      54:	400ed800 	andmi	sp, lr, r0, lsl #16
      58:	400f1000 	andmi	r1, pc, r0
      5c:	50000100 	andpl	r0, r0, r0, lsl #2
      60:	00400f10 	subeq	r0, r0, r0, lsl pc
      64:	00400f28 	subeq	r0, r0, r8, lsr #30
      68:	00530001 	subseq	r0, r3, r1
      6c:	00000000 	andeq	r0, r0, r0
      70:	d8000000 	stmdale	r0, {}	; <UNPREDICTABLE>
      74:	2000400e 	andcs	r4, r0, lr
      78:	0100400f 	tsteq	r0, pc
      7c:	0f205100 	svceq	0x00205100
      80:	0f280040 	svceq	0x00280040
      84:	00010040 	andeq	r0, r1, r0, asr #32
      88:	400f285c 	andmi	r2, pc, ip, asr r8	; <UNPREDICTABLE>
      8c:	400f4c00 	andmi	r4, pc, r0, lsl #24
      90:	51000100 	mrspl	r0, (UNDEF: 16)
      94:	00400f80 	subeq	r0, r0, r0, lsl #31
      98:	00400f88 	subeq	r0, r0, r8, lsl #31
      9c:	00510001 	subseq	r0, r1, r1
      a0:	00000000 	andeq	r0, r0, r0
      a4:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
      a8:	1000400f 	andne	r4, r0, pc
      ac:	0100400f 	tsteq	r0, pc
      b0:	0f105000 	svceq	0x00105000
      b4:	0f280040 	svceq	0x00280040
      b8:	00010040 	andeq	r0, r1, r0, asr #32
      bc:	00000053 	andeq	r0, r0, r3, asr r0
      c0:	00000000 	andeq	r0, r0, r0
      c4:	400f0800 	andmi	r0, pc, r0, lsl #16
      c8:	400f2000 	andmi	r2, pc, r0
      cc:	51000100 	mrspl	r0, (UNDEF: 16)
      d0:	00400f20 	subeq	r0, r0, r0, lsr #30
      d4:	00400f28 	subeq	r0, r0, r8, lsr #30
      d8:	005c0001 	subseq	r0, ip, r1
      dc:	00000000 	andeq	r0, r0, r0
      e0:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
      e4:	e800400f 	stmda	r0, {r0, r1, r2, r3, lr}
      e8:	0100400f 	tsteq	r0, pc
      ec:	0fe85000 	svceq	0x00e85000
      f0:	0fe80040 	svceq	0x00e80040
      f4:	00040040 	andeq	r0, r4, r0, asr #32
      f8:	9f5001f3 	svcls	0x005001f3
	...
     104:	00400fe8 	subeq	r0, r0, r8, ror #31
     108:	00401008 	subeq	r1, r0, r8
     10c:	08500001 	ldmdaeq	r0, {r0}^
     110:	13004010 	movwne	r4, #16
     114:	01004010 	tsteq	r0, r0, lsl r0
     118:	10135100 	andsne	r5, r3, r0, lsl #2
     11c:	10280040 	eorne	r0, r8, r0, asr #32
     120:	00040040 	andeq	r0, r4, r0, asr #32
     124:	9f5001f3 	svcls	0x005001f3
	...
     130:	00401028 	subeq	r1, r0, r8, lsr #32
     134:	0040103c 	subeq	r1, r0, ip, lsr r0
     138:	3c500001 	mrrccc	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
     13c:	64004010 	strvs	r4, [r0], #-16
     140:	01004010 	tsteq	r0, r0, lsl r0
     144:	10645500 	rsbne	r5, r4, r0, lsl #10
     148:	106c0040 	rsbne	r0, ip, r0, asr #32
     14c:	00040040 	andeq	r0, r4, r0, asr #32
     150:	9f5001f3 	svcls	0x005001f3
	...
     15c:	00401028 	subeq	r1, r0, r8, lsr #32
     160:	00401040 	subeq	r1, r0, r0, asr #32
     164:	40510001 	subsmi	r0, r1, r1
     168:	4b004010 	blmi	101b0 <_stacks_size+0xfa90>
     16c:	01004010 	tsteq	r0, r0, lsl r0
     170:	104b5000 	subne	r5, fp, r0
     174:	106c0040 	rsbne	r0, ip, r0, asr #32
     178:	00040040 	andeq	r0, r4, r0, asr #32
     17c:	9f5101f3 	svcls	0x005101f3
	...
     188:	00401028 	subeq	r1, r0, r8, lsr #32
     18c:	00401044 	subeq	r1, r0, r4, asr #32
     190:	44520001 	ldrbmi	r0, [r2], #-1
     194:	4b004010 	blmi	101dc <_stacks_size+0xfabc>
     198:	01004010 	tsteq	r0, r0, lsl r0
     19c:	104b5100 	subne	r5, fp, r0, lsl #2
     1a0:	106c0040 	rsbne	r0, ip, r0, asr #32
     1a4:	00040040 	andeq	r0, r4, r0, asr #32
     1a8:	9f5201f3 	svcls	0x005201f3
	...
     1b4:	00401028 	subeq	r1, r0, r8, lsr #32
     1b8:	0040104b 	subeq	r1, r0, fp, asr #32
     1bc:	4b530001 	blmi	14c01c8 <_ram_limit+0x10a81c8>
     1c0:	6c004010 	stcvs	0, cr4, [r0], {16}
     1c4:	04004010 	streq	r4, [r0], #-16
     1c8:	5301f300 	movwpl	pc, #4864	; 0x1300	; <UNPREDICTABLE>
     1cc:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     1d0:	00000000 	andeq	r0, r0, r0
     1d4:	40106c00 	andsmi	r6, r0, r0, lsl #24
     1d8:	40108300 	andsmi	r8, r0, r0, lsl #6
     1dc:	50000100 	andpl	r0, r0, r0, lsl #2
     1e0:	00401083 	subeq	r1, r0, r3, lsl #1
     1e4:	00401094 	umaaleq	r1, r0, r4, r0
     1e8:	94550001 	ldrbls	r0, [r5], #-1
     1ec:	98004010 	stmdals	r0, {r4, lr}
     1f0:	04004010 	streq	r4, [r0], #-16
     1f4:	5001f300 	andpl	pc, r1, r0, lsl #6
     1f8:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     1fc:	00000000 	andeq	r0, r0, r0
     200:	40106c00 	andsmi	r6, r0, r0, lsl #24
     204:	40107800 	andsmi	r7, r0, r0, lsl #16
     208:	51000100 	mrspl	r0, (UNDEF: 16)
     20c:	00401078 	subeq	r1, r0, r8, ror r0
     210:	00401094 	umaaleq	r1, r0, r4, r0
     214:	94540001 	ldrbls	r0, [r4], #-1
     218:	98004010 	stmdals	r0, {r4, lr}
     21c:	04004010 	streq	r4, [r0], #-16
     220:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
     224:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     228:	00000000 	andeq	r0, r0, r0
     22c:	40109800 	andsmi	r9, r0, r0, lsl #16
     230:	4010c400 	andsmi	ip, r0, r0, lsl #8
     234:	50000100 	andpl	r0, r0, r0, lsl #2
     238:	004010c4 	subeq	r1, r0, r4, asr #1
     23c:	00401170 	subeq	r1, r0, r0, ror r1
     240:	70550001 	subsvc	r0, r5, r1
     244:	74004011 	strvc	r4, [r0], #-17
     248:	04004011 	streq	r4, [r0], #-17
     24c:	5001f300 	andpl	pc, r1, r0, lsl #6
     250:	4011749f 	mulsmi	r1, pc, r4	; <UNPREDICTABLE>
     254:	40119800 	andsmi	r9, r1, r0, lsl #16
     258:	55000100 	strpl	r0, [r0, #-256]	; 0x100
     25c:	00401198 	umaaleq	r1, r0, r8, r1
     260:	0040119b 	umaaleq	r1, r0, fp, r1
     264:	9b500001 	blls	1400270 <_ram_limit+0xfe8270>
     268:	a0004011 	andge	r4, r0, r1, lsl r0
     26c:	04004011 	streq	r4, [r0], #-17
     270:	5001f300 	andpl	pc, r1, r0, lsl #6
     274:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     278:	00000000 	andeq	r0, r0, r0
     27c:	4010c400 	andsmi	ip, r0, r0, lsl #8
     280:	40110c00 	andsmi	r0, r1, r0, lsl #24
     284:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
     290:	004010d8 	ldrdeq	r1, [r0], #-8
     294:	004010e3 	subeq	r1, r0, r3, ror #1
     298:	00510001 	subseq	r0, r1, r1
     29c:	00000000 	andeq	r0, r0, r0
     2a0:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
     2a4:	d4004010 	strle	r4, [r0], #-16
     2a8:	01004010 	tsteq	r0, r0, lsl r0
     2ac:	10d45100 	sbcsne	r5, r4, r0, lsl #2
     2b0:	10d80040 	sbcsne	r0, r8, r0, asr #32
     2b4:	00010040 	andeq	r0, r1, r0, asr #32
     2b8:	4010d854 	andsmi	sp, r0, r4, asr r8
     2bc:	4010dc00 	andsmi	sp, r0, r0, lsl #24
     2c0:	51000100 	mrspl	r0, (UNDEF: 16)
     2c4:	004010dc 	ldrdeq	r1, [r0], #-12
     2c8:	004010f0 	strdeq	r1, [r0], #-0
     2cc:	00540001 	subseq	r0, r4, r1
     2d0:	00000000 	andeq	r0, r0, r0
     2d4:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
     2d8:	3c004011 	stccc	0, cr4, [r0], {17}
     2dc:	01004011 	tsteq	r0, r1, lsl r0
     2e0:	113c5400 	teqne	ip, r0, lsl #8
     2e4:	11400040 	cmpne	r0, r0, asr #32
     2e8:	00010040 	andeq	r0, r1, r0, asr #32
     2ec:	40114051 	andsmi	r4, r1, r1, asr r0
     2f0:	40115000 	andsmi	r5, r1, r0
     2f4:	54000100 	strpl	r0, [r0], #-256	; 0x100
	...
     300:	0040113c 	subeq	r1, r0, ip, lsr r1
     304:	00401147 	subeq	r1, r0, r7, asr #2
     308:	00510001 	subseq	r0, r1, r1
     30c:	00000000 	andeq	r0, r0, r0
     310:	a0000000 	andge	r0, r0, r0
     314:	b3004011 	movwlt	r4, #17
     318:	01004011 	tsteq	r0, r1, lsl r0
     31c:	11b35000 			; <UNDEFINED> instruction: 0x11b35000
     320:	120c0040 	andne	r0, ip, #64	; 0x40
     324:	00010040 	andeq	r0, r1, r0, asr #32
     328:	40120c54 	andsmi	r0, r2, r4, asr ip
     32c:	40121000 	andsmi	r1, r2, r0
     330:	f3000400 	vshl.u8	d0, d0, d0
     334:	109f5001 	addsne	r5, pc, r1
     338:	54004012 	strpl	r4, [r0], #-18
     33c:	01004012 	tsteq	r0, r2, lsl r0
     340:	12545400 	subsne	r5, r4, #0, 8
     344:	12580040 	subsne	r0, r8, #64	; 0x40
     348:	00040040 	andeq	r0, r4, r0, asr #32
     34c:	9f5001f3 	svcls	0x005001f3
     350:	00401258 	subeq	r1, r0, r8, asr r2
     354:	004012a0 	subeq	r1, r0, r0, lsr #5
     358:	00540001 	subseq	r0, r4, r1
     35c:	00000000 	andeq	r0, r0, r0
     360:	a0000000 	andge	r0, r0, r0
     364:	b3004011 	movwlt	r4, #17
     368:	01004011 	tsteq	r0, r1, lsl r0
     36c:	11b35100 			; <UNDEFINED> instruction: 0x11b35100
     370:	11c40040 	bicne	r0, r4, r0, asr #32
     374:	00010040 	andeq	r0, r1, r0, asr #32
     378:	4011c457 	andsmi	ip, r1, r7, asr r4
     37c:	4012a000 	andsmi	sl, r2, r0
     380:	f3000400 	vshl.u8	d0, d0, d0
     384:	009f5101 	addseq	r5, pc, r1, lsl #2
     388:	00000000 	andeq	r0, r0, r0
     38c:	c0000000 	andgt	r0, r0, r0
     390:	fc004011 	stc2	0, cr4, [r0], {17}
     394:	01004011 	tsteq	r0, r1, lsl r0
     398:	12105600 	andsne	r5, r0, #0, 12
     39c:	12340040 	eorsne	r0, r4, #64	; 0x40
     3a0:	00010040 	andeq	r0, r1, r0, asr #32
     3a4:	40125856 	andsmi	r5, r2, r6, asr r8
     3a8:	40126c00 	andsmi	r6, r2, r0, lsl #24
     3ac:	56000100 	strpl	r0, [r0], -r0, lsl #2
     3b0:	0040126c 	subeq	r1, r0, ip, ror #4
     3b4:	00401284 	subeq	r1, r0, r4, lsl #5
     3b8:	84520001 	ldrbhi	r0, [r2], #-1
     3bc:	88004012 	stmdahi	r0, {r1, r4, lr}
     3c0:	06004012 			; <UNDEFINED> instruction: 0x06004012
     3c4:	73007000 	movwvc	r7, #0
     3c8:	009f1c00 	addseq	r1, pc, r0, lsl #24
     3cc:	00000000 	andeq	r0, r0, r0
     3d0:	d8000000 	stmdale	r0, {}	; <UNPREDICTABLE>
     3d4:	0c004011 	stceq	0, cr4, [r0], {17}
     3d8:	01004012 	tsteq	r0, r2, lsl r0
     3dc:	12105700 	andsne	r5, r0, #0, 14
     3e0:	12400040 	subne	r0, r0, #64	; 0x40
     3e4:	00010040 	andeq	r0, r1, r0, asr #32
     3e8:	40125857 	andsmi	r5, r2, r7, asr r8
     3ec:	4012a000 	andsmi	sl, r2, r0
     3f0:	57000100 	strpl	r0, [r0, -r0, lsl #2]
	...
     3fc:	004011ec 	subeq	r1, r0, ip, ror #3
     400:	004011fc 	strdeq	r1, [r0], #-28	; 0xffffffe4
     404:	10500001 	subsne	r0, r0, r1
     408:	14004012 	strne	r4, [r0], #-18
     40c:	01004012 	tsteq	r0, r2, lsl r0
     410:	12645000 	rsbne	r5, r4, #0
     414:	12880040 	addne	r0, r8, #64	; 0x40
     418:	00010040 	andeq	r0, r1, r0, asr #32
     41c:	00000050 	andeq	r0, r0, r0, asr r0
     420:	00000000 	andeq	r0, r0, r0
     424:	40121c00 	andsmi	r1, r2, r0, lsl #24
     428:	40123c00 	andsmi	r3, r2, r0, lsl #24
     42c:	50000100 	andpl	r0, r0, r0, lsl #2
     430:	00401258 	subeq	r1, r0, r8, asr r2
     434:	0040125c 	subeq	r1, r0, ip, asr r2
     438:	00500001 	subseq	r0, r0, r1
     43c:	00000000 	andeq	r0, r0, r0
     440:	a0000000 	andge	r0, r0, r0
     444:	b3004012 	movwlt	r4, #18
     448:	01004012 	tsteq	r0, r2, lsl r0
     44c:	12b35000 	adcsne	r5, r3, #0
     450:	13d00040 	bicsne	r0, r0, #64	; 0x40
     454:	00010040 	andeq	r0, r1, r0, asr #32
     458:	4013d056 	andsmi	sp, r3, r6, asr r0
     45c:	4013d400 	andsmi	sp, r3, r0, lsl #8
     460:	f3000400 	vshl.u8	d0, d0, d0
     464:	d49f5001 	ldrle	r5, [pc], #1	; 46c <_sys_stack_size+0x6c>
     468:	0c004013 	stceq	0, cr4, [r0], {19}
     46c:	01004015 	tsteq	r0, r5, lsl r0
     470:	00005600 	andeq	r5, r0, r0, lsl #12
     474:	00000000 	andeq	r0, r0, r0
     478:	12a00000 	adcne	r0, r0, #0
     47c:	12b30040 	adcsne	r0, r3, #64	; 0x40
     480:	00010040 	andeq	r0, r1, r0, asr #32
     484:	4012b351 	andsmi	fp, r2, r1, asr r3
     488:	4012f000 	andsmi	pc, r2, r0
     48c:	54000100 	strpl	r0, [r0], #-256	; 0x100
     490:	004012f0 	strdeq	r1, [r0], #-32	; 0xffffffe0
     494:	004012f4 	strdeq	r1, [r0], #-36	; 0xffffffdc
     498:	087c0003 	ldmdaeq	ip!, {r0, r1}^
     49c:	4012f49f 	mulsmi	r2, pc, r4	; <UNPREDICTABLE>
     4a0:	40140800 	andsmi	r0, r4, r0, lsl #16
     4a4:	f3000400 	vshl.u8	d0, d0, d0
     4a8:	089f5101 	ldmeq	pc, {r0, r8, ip, lr}	; <UNPREDICTABLE>
     4ac:	60004014 	andvs	r4, r0, r4, lsl r0
     4b0:	01004014 	tsteq	r0, r4, lsl r0
     4b4:	14605400 	strbtne	r5, [r0], #-1024	; 0x400
     4b8:	150c0040 	strne	r0, [ip, #-64]	; 0x40
     4bc:	00040040 	andeq	r0, r4, r0, asr #32
     4c0:	9f5101f3 	svcls	0x005101f3
	...
     4cc:	004012c4 	subeq	r1, r0, r4, asr #5
     4d0:	004013c4 	subeq	r1, r0, r4, asr #7
     4d4:	d45c0001 	ldrble	r0, [ip], #-1
     4d8:	5b004013 	blpl	1052c <_stacks_size+0xfe0c>
     4dc:	01004014 	tsteq	r0, r4, lsl r0
     4e0:	14605c00 	strbtne	r5, [r0], #-3072	; 0xc00
     4e4:	150c0040 	strne	r0, [ip, #-64]	; 0x40
     4e8:	00010040 	andeq	r0, r1, r0, asr #32
     4ec:	0000005c 	andeq	r0, r0, ip, asr r0
     4f0:	00000000 	andeq	r0, r0, r0
     4f4:	4012c400 	andsmi	ip, r2, r0, lsl #8
     4f8:	4012e000 	andsmi	lr, r2, r0
     4fc:	5e000100 	adfpls	f0, f0, f0
     500:	004012e0 	subeq	r1, r0, r0, ror #5
     504:	004012e4 	subeq	r1, r0, r4, ror #5
     508:	7c740002 	ldclvc	0, cr0, [r4], #-8
     50c:	00401408 	subeq	r1, r0, r8, lsl #8
     510:	00401424 	subeq	r1, r0, r4, lsr #8
     514:	245e0001 	ldrbcs	r0, [lr], #-1
     518:	44004014 	strmi	r4, [r0], #-20
     51c:	02004014 	andeq	r4, r0, #20
     520:	007c7400 	rsbseq	r7, ip, r0, lsl #8
     524:	00000000 	andeq	r0, r0, r0
     528:	c4000000 	strgt	r0, [r0], #-0
     52c:	b4004012 	strlt	r4, [r0], #-18
     530:	01004013 	tsteq	r0, r3, lsl r0
     534:	13d45300 	bicsne	r5, r4, #0, 6
     538:	13dc0040 	bicsne	r0, ip, #64	; 0x40
     53c:	00010040 	andeq	r0, r1, r0, asr #32
     540:	40140853 	andsmi	r0, r4, r3, asr r8
     544:	40145000 	andsmi	r5, r4, r0
     548:	53000100 	movwpl	r0, #256	; 0x100
     54c:	00401460 	subeq	r1, r0, r0, ror #8
     550:	004014ac 	subeq	r1, r0, ip, lsr #9
     554:	c4530001 	ldrbgt	r0, [r3], #-1
     558:	0c004014 	stceq	0, cr4, [r0], {20}
     55c:	01004015 	tsteq	r0, r5, lsl r0
     560:	00005300 	andeq	r5, r0, r0, lsl #6
     564:	00000000 	andeq	r0, r0, r0
     568:	13800000 	orrne	r0, r0, #0
     56c:	13b40040 			; <UNDEFINED> instruction: 0x13b40040
     570:	00010040 	andeq	r0, r1, r0, asr #32
     574:	4013dc5e 	andsmi	sp, r3, lr, asr ip
     578:	4013ec00 	andsmi	lr, r3, r0, lsl #24
     57c:	53000100 	movwpl	r0, #256	; 0x100
     580:	004014a8 	subeq	r1, r0, r8, lsr #9
     584:	004014b0 	strheq	r1, [r0], #-64	; 0xffffffc0
     588:	005e0001 	subseq	r0, lr, r1
     58c:	00000000 	andeq	r0, r0, r0
     590:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
     594:	44004012 	strmi	r4, [r0], #-18
     598:	01004013 	tsteq	r0, r3, lsl r0
     59c:	14085200 	strne	r5, [r8], #-512	; 0x200
     5a0:	14180040 	ldrne	r0, [r8], #-64	; 0x40
     5a4:	00010040 	andeq	r0, r1, r0, asr #32
     5a8:	40141852 	andsmi	r1, r4, r2, asr r8
     5ac:	40141c00 	andsmi	r1, r4, r0, lsl #24
     5b0:	7e000900 	cdpvc	9, 0, cr0, cr0, cr0, {0}
     5b4:	1afe0900 	bne	fff829bc <_STACK_FILLER+0x214a6acd>
     5b8:	9f22007c 	svcls	0x0022007c
     5bc:	0040141c 	subeq	r1, r0, ip, lsl r4
     5c0:	00401424 	subeq	r1, r0, r4, lsr #8
     5c4:	007e000b 	rsbseq	r0, lr, fp
     5c8:	741afe09 	ldrvc	pc, [sl], #-3593	; 0xe09
     5cc:	1c382200 	lfmne	f2, 4, [r8], #-0
     5d0:	4014249f 	mulsmi	r4, pc, r4	; <UNPREDICTABLE>
     5d4:	40144400 	andsmi	r4, r4, r0, lsl #8
     5d8:	74000c00 	strvc	r0, [r0], #-3072	; 0xc00
     5dc:	fe09067c 	mcr2	6, 0, r0, cr9, cr12, {3}
     5e0:	2200741a 	andcs	r7, r0, #436207616	; 0x1a000000
     5e4:	609f1c38 	addsvs	r1, pc, r8, lsr ip	; <UNPREDICTABLE>
     5e8:	64004014 	strvs	r4, [r0], #-20
     5ec:	01004014 	tsteq	r0, r4, lsl r0
     5f0:	00005200 	andeq	r5, r0, r0, lsl #4
     5f4:	00000000 	andeq	r0, r0, r0
     5f8:	12d80000 	sbcsne	r0, r8, #0
     5fc:	13cc0040 	bicne	r0, ip, #64	; 0x40
     600:	00010040 	andeq	r0, r1, r0, asr #32
     604:	4013d455 	andsmi	sp, r3, r5, asr r4
     608:	40150c00 	andsmi	r0, r5, r0, lsl #24
     60c:	55000100 	strpl	r0, [r0, #-256]	; 0x100
	...
     618:	004012f0 	strdeq	r1, [r0], #-32	; 0xffffffe0
     61c:	00401308 	subeq	r1, r0, r8, lsl #6
     620:	08540001 	ldmdaeq	r4, {r0}^
     624:	14004013 	strne	r4, [r0], #-19
     628:	05004013 	streq	r4, [r0, #-19]
     62c:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
     630:	14181c38 	ldrne	r1, [r8], #-3128	; 0xc38
     634:	14300040 	ldrtne	r0, [r0], #-64	; 0x40
     638:	00010040 	andeq	r0, r1, r0, asr #32
     63c:	00000052 	andeq	r0, r0, r2, asr r0
     640:	00000000 	andeq	r0, r0, r0
     644:	40130800 	andsmi	r0, r3, r0, lsl #16
     648:	40131400 	andsmi	r1, r3, r0, lsl #8
     64c:	54000100 	strpl	r0, [r0], #-256	; 0x100
     650:	00401344 	subeq	r1, r0, r4, asr #6
     654:	0040134c 	subeq	r1, r0, ip, asr #6
     658:	84520001 	ldrbhi	r0, [r2], #-1
     65c:	b4004013 	strlt	r4, [r0], #-19
     660:	01004013 	tsteq	r0, r3, lsl r0
     664:	13b45000 			; <UNDEFINED> instruction: 0x13b45000
     668:	13c40040 	bicne	r0, r4, #64	; 0x40
     66c:	00010040 	andeq	r0, r1, r0, asr #32
     670:	4013ec53 	andsmi	lr, r3, r3, asr ip
     674:	40140800 	andsmi	r0, r4, r0, lsl #16
     678:	53000100 	movwpl	r0, #256	; 0x100
     67c:	004014a8 	subeq	r1, r0, r8, lsr #9
     680:	004014b4 	strheq	r1, [r0], #-68	; 0xffffffbc
     684:	00500001 	subseq	r0, r0, r1
     688:	00000000 	andeq	r0, r0, r0
     68c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     690:	14004013 	strne	r4, [r0], #-19
     694:	01004013 	tsteq	r0, r3, lsl r0
     698:	13445000 	movtne	r5, #16384	; 0x4000
     69c:	134c0040 	movtne	r0, #49216	; 0xc040
     6a0:	00010040 	andeq	r0, r1, r0, asr #32
     6a4:	40138850 	andsmi	r8, r3, r0, asr r8
     6a8:	4013c400 	andsmi	ip, r3, r0, lsl #8
     6ac:	52000100 	andpl	r0, r0, #0, 2
     6b0:	004013f0 	strdeq	r1, [r0], #-48	; 0xffffffd0
     6b4:	00401408 	subeq	r1, r0, r8, lsl #8
     6b8:	a8520001 	ldmdage	r2, {r0}^
     6bc:	c4004014 	strgt	r4, [r0], #-20
     6c0:	01004014 	tsteq	r0, r4, lsl r0
     6c4:	00005200 	andeq	r5, r0, r0, lsl #4
     6c8:	00000000 	andeq	r0, r0, r0
     6cc:	12e40000 	rscne	r0, r4, #0
     6d0:	13140040 	tstne	r4, #64	; 0x40
     6d4:	00020040 	andeq	r0, r2, r0, asr #32
     6d8:	13149f30 	tstne	r4, #48, 30	; 0xc0
     6dc:	13780040 	cmnne	r8, #64	; 0x40
     6e0:	00010040 	andeq	r0, r1, r0, asr #32
     6e4:	4013d45e 	andsmi	sp, r3, lr, asr r4
     6e8:	4013e400 	andsmi	lr, r3, r0, lsl #8
     6ec:	5e000100 	adfpls	f0, f0, f0
     6f0:	00401460 	subeq	r1, r0, r0, ror #8
     6f4:	00401480 	subeq	r1, r0, r0, lsl #9
     6f8:	9f310002 	svcls	0x00310002
     6fc:	00401480 	subeq	r1, r0, r0, lsl #9
     700:	00401488 	subeq	r1, r0, r8, lsl #9
     704:	005e0001 	subseq	r0, lr, r1
     708:	00000000 	andeq	r0, r0, r0
     70c:	0c000000 	stceq	0, cr0, [r0], {-0}
     710:	53004015 	movwpl	r4, #21
     714:	01004015 	tsteq	r0, r5, lsl r0
     718:	15535000 	ldrbne	r5, [r3, #-0]
     71c:	15b40040 	ldrne	r0, [r4, #64]!	; 0x40
     720:	00010040 	andeq	r0, r1, r0, asr #32
     724:	4015b456 	andsmi	fp, r5, r6, asr r4
     728:	4015b800 	andsmi	fp, r5, r0, lsl #16
     72c:	f3000400 	vshl.u8	d0, d0, d0
     730:	b89f5001 	ldmlt	pc, {r0, ip, lr}	; <UNPREDICTABLE>
     734:	90004015 	andls	r4, r0, r5, lsl r0
     738:	01004017 	tsteq	r0, r7, lsl r0
     73c:	17905600 	ldrne	r5, [r0, r0, lsl #12]
     740:	17940040 	ldrne	r0, [r4, r0, asr #32]
     744:	00040040 	andeq	r0, r4, r0, asr #32
     748:	9f5001f3 	svcls	0x005001f3
     74c:	00401794 	umaaleq	r1, r0, r4, r7
     750:	00401970 	subeq	r1, r0, r0, ror r9
     754:	70560001 	subsvc	r0, r6, r1
     758:	74004019 	strvc	r4, [r0], #-25
     75c:	04004019 	streq	r4, [r0], #-25
     760:	5001f300 	andpl	pc, r1, r0, lsl #6
     764:	4019749f 	mulsmi	r9, pc, r4	; <UNPREDICTABLE>
     768:	4019ac00 	andsmi	sl, r9, r0, lsl #24
     76c:	56000100 	strpl	r0, [r0], -r0, lsl #2
     770:	004019ac 	subeq	r1, r0, ip, lsr #19
     774:	004019b0 	strheq	r1, [r0], #-144	; 0xffffff70
     778:	01f30004 	mvnseq	r0, r4
     77c:	19b09f50 	ldmibne	r0!, {r4, r6, r8, r9, sl, fp, ip, pc}
     780:	1c580040 	mrrcne	0, 4, r0, r8, cr0
     784:	00010040 	andeq	r0, r1, r0, asr #32
     788:	00000056 	andeq	r0, r0, r6, asr r0
     78c:	00000000 	andeq	r0, r0, r0
     790:	40150c00 	andsmi	r0, r5, r0, lsl #24
     794:	40153400 	andsmi	r3, r5, r0, lsl #8
     798:	51000100 	mrspl	r0, (UNDEF: 16)
     79c:	00401534 	subeq	r1, r0, r4, lsr r5
     7a0:	00401c58 	subeq	r1, r0, r8, asr ip
     7a4:	01f30004 	mvnseq	r0, r4
     7a8:	00009f51 	andeq	r9, r0, r1, asr pc
     7ac:	00000000 	andeq	r0, r0, r0
     7b0:	156c0000 	strbne	r0, [ip, #-0]!
     7b4:	15a80040 	strne	r0, [r8, #64]!	; 0x40
     7b8:	00010040 	andeq	r0, r1, r0, asr #32
     7bc:	4015d454 	andsmi	sp, r5, r4, asr r4
     7c0:	4016c400 	andsmi	ip, r6, r0, lsl #8
     7c4:	54000100 	strpl	r0, [r0], #-256	; 0x100
     7c8:	004016d4 	ldrdeq	r1, [r0], #-100	; 0xffffff9c
     7cc:	0040174b 	subeq	r1, r0, fp, asr #14
     7d0:	4b530001 	blmi	14c07dc <_ram_limit+0x10a87dc>
     7d4:	50004017 	andpl	r4, r0, r7, lsl r0
     7d8:	03004017 	movweq	r4, #23
     7dc:	9f787400 	svcls	0x00787400
     7e0:	00401768 	subeq	r1, r0, r8, ror #14
     7e4:	00401784 	subeq	r1, r0, r4, lsl #15
     7e8:	84540001 	ldrbhi	r0, [r4], #-1
     7ec:	90004017 	andls	r4, r0, r7, lsl r0
     7f0:	03004017 	movweq	r4, #23
     7f4:	9f787400 	svcls	0x00787400
     7f8:	00401790 	umaaleq	r1, r0, r0, r7
     7fc:	00401794 	umaaleq	r1, r0, r4, r7
     800:	78700003 	ldmdavc	r0!, {r0, r1}^
     804:	4019409f 	mulsmi	r9, pc, r0	; <UNPREDICTABLE>
     808:	40196400 	andsmi	r6, r9, r0, lsl #8
     80c:	54000100 	strpl	r0, [r0], #-256	; 0x100
     810:	00401964 	subeq	r1, r0, r4, ror #18
     814:	00401970 	subeq	r1, r0, r0, ror r9
     818:	78740003 	ldmdavc	r4!, {r0, r1}^
     81c:	4019709f 	mulsmi	r9, pc, r0	; <UNPREDICTABLE>
     820:	40197400 	andsmi	r7, r9, r0, lsl #8
     824:	70000300 	andvc	r0, r0, r0, lsl #6
     828:	19749f78 	ldmdbne	r4!, {r3, r4, r5, r6, r8, r9, sl, fp, ip, pc}^
     82c:	19a00040 	stmibne	r0!, {r6}
     830:	00010040 	andeq	r0, r1, r0, asr #32
     834:	4019a054 	andsmi	sl, r9, r4, asr r0
     838:	4019ac00 	andsmi	sl, r9, r0, lsl #24
     83c:	74000300 	strvc	r0, [r0], #-768	; 0x300
     840:	19ac9f78 	stmibne	ip!, {r3, r4, r5, r6, r8, r9, sl, fp, ip, pc}
     844:	19b00040 	ldmibne	r0!, {r6}
     848:	00030040 	andeq	r0, r3, r0, asr #32
     84c:	d89f7870 	ldmle	pc, {r4, r5, r6, fp, ip, sp, lr}	; <UNPREDICTABLE>
     850:	80004019 	andhi	r4, r0, r9, lsl r0
     854:	0100401a 	tsteq	r0, sl, lsl r0
     858:	1a805400 	bne	fe015860 <_STACK_FILLER+0x1f539971>
     85c:	1a880040 	bne	fe200964 <_STACK_FILLER+0x1f724a75>
     860:	00030040 	andeq	r0, r3, r0, asr #32
     864:	889f7874 	ldmhi	pc, {r2, r4, r5, r6, fp, ip, sp, lr}	; <UNPREDICTABLE>
     868:	9c00401a 	stcls	0, cr4, [r0], {26}
     86c:	0100401a 	tsteq	r0, sl, lsl r0
     870:	1a9c5300 	bne	fe715478 <_STACK_FILLER+0x1fc39589>
     874:	1ab40040 	bne	fed0097c <_STACK_FILLER+0x20224a8d>
     878:	00010040 	andeq	r0, r1, r0, asr #32
     87c:	401ab454 	andsmi	fp, sl, r4, asr r4
     880:	401ac800 	andsmi	ip, sl, r0, lsl #16
     884:	53000100 	movwpl	r0, #256	; 0x100
     888:	00401ac8 	subeq	r1, r0, r8, asr #21
     88c:	00401ae4 	subeq	r1, r0, r4, ror #21
     890:	78740003 	ldmdavc	r4!, {r0, r1}^
     894:	401ae49f 	mulsmi	sl, pc, r4	; <UNPREDICTABLE>
     898:	401af400 	andsmi	pc, sl, r0, lsl #8
     89c:	54000100 	strpl	r0, [r0], #-256	; 0x100
     8a0:	00401b94 	umaaleq	r1, r0, r4, fp
     8a4:	00401bb0 	strheq	r1, [r0], #-176	; 0xffffff50
     8a8:	00540001 	subseq	r0, r4, r1
     8ac:	3400401c 	strcc	r4, [r0], #-28
     8b0:	0100401c 	tsteq	r0, ip, lsl r0
     8b4:	00005400 	andeq	r5, r0, r0, lsl #8
     8b8:	00000000 	andeq	r0, r0, r0
     8bc:	157c0000 	ldrbne	r0, [ip, #-0]!
     8c0:	15800040 	strne	r0, [r0, #64]	; 0x40
     8c4:	00010040 	andeq	r0, r1, r0, asr #32
     8c8:	40158053 	andsmi	r8, r5, r3, asr r0
     8cc:	4015a000 	andsmi	sl, r5, r0
     8d0:	74000700 	strvc	r0, [r0], #-1792	; 0x700
     8d4:	fc090604 	stc2	6, cr0, [r9], {4}
     8d8:	15e09f1a 	strbne	r9, [r0, #3866]!	; 0xf1a
     8dc:	15f40040 	ldrbne	r0, [r4, #64]!	; 0x40
     8e0:	00010040 	andeq	r0, r1, r0, asr #32
     8e4:	4015fc52 	andsmi	pc, r5, r2, asr ip	; <UNPREDICTABLE>
     8e8:	40160c00 	andsmi	r0, r6, r0, lsl #24
     8ec:	52000100 	andpl	r0, r0, #0, 2
     8f0:	00401630 	subeq	r1, r0, r0, lsr r6
     8f4:	0040165c 	subeq	r1, r0, ip, asr r6
     8f8:	5c520001 	mrrcpl	0, 0, r0, r2, cr1
     8fc:	74004016 	strvc	r4, [r0], #-22
     900:	07004016 	smladeq	r0, r6, r0, r4
     904:	06047400 	streq	r7, [r4], -r0, lsl #8
     908:	9f1afc09 	svcls	0x001afc09
     90c:	004016e0 	subeq	r1, r0, r0, ror #13
     910:	004016f4 	strdeq	r1, [r0], #-100	; 0xffffff9c
     914:	fc510001 	mrrc2	0, 0, r0, r1, cr1
     918:	14004016 	strne	r4, [r0], #-22
     91c:	01004017 	tsteq	r0, r7, lsl r0
     920:	17145100 	ldrne	r5, [r4, -r0, lsl #2]
     924:	17240040 	strne	r0, [r4, -r0, asr #32]!
     928:	00070040 	andeq	r0, r7, r0, asr #32
     92c:	09060473 	stmdbeq	r6, {r0, r1, r4, r5, r6, sl}
     930:	689f1afc 	ldmvs	pc, {r2, r3, r4, r5, r6, r7, r9, fp, ip}	; <UNPREDICTABLE>
     934:	6c004017 	stcvs	0, cr4, [r0], {23}
     938:	01004017 	tsteq	r0, r7, lsl r0
     93c:	176c5200 	strbne	r5, [ip, -r0, lsl #4]!
     940:	177c0040 	ldrbne	r0, [ip, -r0, asr #32]!
     944:	00070040 	andeq	r0, r7, r0, asr #32
     948:	09060474 	stmdbeq	r6, {r2, r4, r5, r6, sl}
     94c:	749f1afc 	ldrvc	r1, [pc], #2812	; 954 <_stacks_size+0x234>
     950:	78004019 	stmdavc	r0, {r0, r3, r4, lr}
     954:	01004019 	tsteq	r0, r9, lsl r0
     958:	19785200 	ldmdbne	r8!, {r9, ip, lr}^
     95c:	19980040 	ldmibne	r8, {r6}
     960:	00070040 	andeq	r0, r7, r0, asr #32
     964:	09060474 	stmdbeq	r6, {r2, r4, r5, r6, sl}
     968:	d89f1afc 	ldmle	pc, {r2, r3, r4, r5, r6, r7, r9, fp, ip}	; <UNPREDICTABLE>
     96c:	3c004019 	stccc	0, cr4, [r0], {25}
     970:	0100401a 	tsteq	r0, sl, lsl r0
     974:	1a3c5200 	bne	f1517c <_ram_limit+0xafd17c>
     978:	1a400040 	bne	1000a80 <_ram_limit+0xbe8a80>
     97c:	00070040 	andeq	r0, r7, r0, asr #32
     980:	09060474 	stmdbeq	r6, {r2, r4, r5, r6, sl}
     984:	549f1afc 	ldrpl	r1, [pc], #2812	; 98c <_stacks_size+0x26c>
     988:	5c00401a 	stcpl	0, cr4, [r0], {26}
     98c:	0100401a 	tsteq	r0, sl, lsl r0
     990:	1a5c5200 	bne	1715198 <_ram_limit+0x12fd198>
     994:	1a640040 	bne	1900a9c <_ram_limit+0x14e8a9c>
     998:	00070040 	andeq	r0, r7, r0, asr #32
     99c:	09060474 	stmdbeq	r6, {r2, r4, r5, r6, sl}
     9a0:	b49f1afc 	ldrlt	r1, [pc], #2812	; 9a8 <_stacks_size+0x288>
     9a4:	b800401a 	stmdalt	r0, {r1, r3, r4, lr}
     9a8:	0100401a 	tsteq	r0, sl, lsl r0
     9ac:	1ab85100 	bne	fee14db4 <_STACK_FILLER+0x20338ec5>
     9b0:	1ac80040 	bne	ff200ab8 <_STACK_FILLER+0x20724bc9>
     9b4:	00070040 	andeq	r0, r7, r0, asr #32
     9b8:	09060473 	stmdbeq	r6, {r0, r1, r4, r5, r6, sl}
     9bc:	c89f1afc 	ldmgt	pc, {r2, r3, r4, r5, r6, r7, r9, fp, ip}	; <UNPREDICTABLE>
     9c0:	d000401a 	andle	r4, r0, sl, lsl r0
     9c4:	0700401a 	smladeq	r0, sl, r0, r4
     9c8:	067c7400 	ldrbteq	r7, [ip], -r0, lsl #8
     9cc:	9f1afc09 	svcls	0x001afc09
     9d0:	00401ae4 	subeq	r1, r0, r4, ror #21
     9d4:	00401af4 	strdeq	r1, [r0], #-164	; 0xffffff5c
     9d8:	94520001 	ldrbls	r0, [r2], #-1
     9dc:	9800401b 	stmdals	r0, {r0, r1, r3, r4, lr}
     9e0:	0100401b 	tsteq	r0, fp, lsl r0
     9e4:	1b985200 	blne	fe6151ec <_STACK_FILLER+0x1fb392fd>
     9e8:	1bac0040 	blne	feb00af0 <_STACK_FILLER+0x20024c01>
     9ec:	00070040 	andeq	r0, r7, r0, asr #32
     9f0:	09060474 	stmdbeq	r6, {r2, r4, r5, r6, sl}
     9f4:	009f1afc 			; <UNDEFINED> instruction: 0x009f1afc
     9f8:	3400401c 	strcc	r4, [r0], #-28
     9fc:	0100401c 	tsteq	r0, ip, lsl r0
     a00:	00005200 	andeq	r5, r0, r0, lsl #4
     a04:	00000000 	andeq	r0, r0, r0
     a08:	15640000 	strbne	r0, [r4, #-0]!
     a0c:	15740040 	ldrbne	r0, [r4, #-64]!	; 0x40
     a10:	00010040 	andeq	r0, r1, r0, asr #32
     a14:	4015745e 	andsmi	r7, r5, lr, asr r4
     a18:	4015a800 	andsmi	sl, r5, r0, lsl #16
     a1c:	75000500 	strvc	r0, [r0, #-1280]	; 0x500
     a20:	9f253300 	svcls	0x00253300
     a24:	004015c8 	subeq	r1, r0, r8, asr #11
     a28:	004016a8 	subeq	r1, r0, r8, lsr #13
     a2c:	b05e0001 	subslt	r0, lr, r1
     a30:	d0004016 	andle	r4, r0, r6, lsl r0
     a34:	01004016 	tsteq	r0, r6, lsl r0
     a38:	16d05e00 	ldrbne	r5, [r0], r0, lsl #28
     a3c:	17180040 	ldrne	r0, [r8, -r0, asr #32]
     a40:	00010040 	andeq	r0, r1, r0, asr #32
     a44:	40176859 	andsmi	r6, r7, r9, asr r8
     a48:	40177f00 	andsmi	r7, r7, r0, lsl #30
     a4c:	5e000100 	adfpls	f0, f0, f0
     a50:	00401974 	subeq	r1, r0, r4, ror r9
     a54:	0040199b 	umaaleq	r1, r0, fp, r9
     a58:	d85e0001 	ldmdale	lr, {r0}^
     a5c:	83004019 	movwhi	r4, #25
     a60:	0100401a 	tsteq	r0, sl, lsl r0
     a64:	1a885e00 	bne	fe21826c <_STACK_FILLER+0x1f73c37d>
     a68:	1a8c0040 	bne	fe300b70 <_STACK_FILLER+0x1f824c81>
     a6c:	00010040 	andeq	r0, r1, r0, asr #32
     a70:	401a8c59 	andsmi	r8, sl, r9, asr ip
     a74:	401a9400 	andsmi	r9, sl, r0, lsl #8
     a78:	79000300 	stmdbvc	r0, {r8, r9}
     a7c:	1a949f7f 	bne	fe528880 <_STACK_FILLER+0x1fa4c991>
     a80:	1a9c0040 	bne	fe700b88 <_STACK_FILLER+0x1fc24c99>
     a84:	00010040 	andeq	r0, r1, r0, asr #32
     a88:	401a9c59 	andsmi	r9, sl, r9, asr ip
     a8c:	401aac00 	andsmi	sl, sl, r0, lsl #24
     a90:	5e000100 	adfpls	f0, f0, f0
     a94:	00401aac 	subeq	r1, r0, ip, lsr #21
     a98:	00401ab4 	strheq	r1, [r0], #-164	; 0xffffff5c
     a9c:	00750005 	rsbseq	r0, r5, r5
     aa0:	b49f2533 	ldrlt	r2, [pc], #1331	; aa8 <_stacks_size+0x388>
     aa4:	e400401a 	str	r4, [r0], #-26
     aa8:	0100401a 	tsteq	r0, sl, lsl r0
     aac:	1ae45900 	bne	ff916eb4 <_STACK_FILLER+0x20e3afc5>
     ab0:	1af40040 	bne	ffd00bb8 <_STACK_FILLER+0x21224cc9>
     ab4:	00010040 	andeq	r0, r1, r0, asr #32
     ab8:	401b0c5e 	andsmi	r0, fp, lr, asr ip
     abc:	401b5400 	andsmi	r5, fp, r0, lsl #8
     ac0:	59000100 	stmdbpl	r0, {r8}
     ac4:	00401b54 	subeq	r1, r0, r4, asr fp
     ac8:	00401b68 	subeq	r1, r0, r8, ror #22
     acc:	945e0001 	ldrbls	r0, [lr], #-1
     ad0:	b000401b 	andlt	r4, r0, fp, lsl r0
     ad4:	0100401b 	tsteq	r0, fp, lsl r0
     ad8:	1c005e00 	stcne	14, cr5, [r0], {-0}
     adc:	1c340040 	ldcne	0, cr0, [r4], #-256	; 0xffffff00
     ae0:	00010040 	andeq	r0, r1, r0, asr #32
     ae4:	401c345e 	andsmi	r3, ip, lr, asr r4
     ae8:	401c5800 	andsmi	r5, ip, r0, lsl #16
     aec:	59000100 	stmdbpl	r0, {r8}
	...
     af8:	004015d0 	ldrdeq	r1, [r0], #-80	; 0xffffffb0
     afc:	00401610 	subeq	r1, r0, r0, lsl r6
     b00:	c8510001 	ldmdagt	r1, {r0}^
     b04:	d0004016 	andle	r4, r0, r6, lsl r0
     b08:	01004016 	tsteq	r0, r6, lsl r0
     b0c:	16d05400 	ldrbne	r5, [r0], r0, lsl #8
     b10:	17100040 	ldrne	r0, [r0, -r0, asr #32]
     b14:	00010040 	andeq	r0, r1, r0, asr #32
     b18:	4019745c 	andsmi	r7, r9, ip, asr r4
     b1c:	40198000 	andsmi	r8, r9, r0
     b20:	51000100 	mrspl	r0, (UNDEF: 16)
     b24:	00401a88 	subeq	r1, r0, r8, lsl #21
     b28:	00401a9c 	umaaleq	r1, r0, ip, sl
     b2c:	b45c0001 	ldrblt	r0, [ip], #-1
     b30:	bc00401a 	stclt	0, cr4, [r0], {26}
     b34:	0100401a 	tsteq	r0, sl, lsl r0
     b38:	1b0c5c00 	blne	317b40 <_stacks_size+0x317420>
     b3c:	1b680040 	blne	1a00c44 <_ram_limit+0x15e8c44>
     b40:	00010040 	andeq	r0, r1, r0, asr #32
     b44:	401c345c 	andsmi	r3, ip, ip, asr r4
     b48:	401c5800 	andsmi	r5, ip, r0, lsl #16
     b4c:	5c000100 	stfpls	f0, [r0], {-0}
	...
     b58:	00401720 	subeq	r1, r0, r0, lsr #14
     b5c:	00401750 	subeq	r1, r0, r0, asr r7
     b60:	60550001 	subsvs	r0, r5, r1
     b64:	8800401a 	stmdahi	r0, {r1, r3, r4, lr}
     b68:	0100401a 	tsteq	r0, sl, lsl r0
     b6c:	00005500 	andeq	r5, r0, r0, lsl #10
     b70:	00000000 	andeq	r0, r0, r0
     b74:	15e00000 	strbne	r0, [r0, #0]!
     b78:	15e80040 	strbne	r0, [r8, #64]!	; 0x40
     b7c:	00010040 	andeq	r0, r1, r0, asr #32
     b80:	40160053 	andsmi	r0, r6, r3, asr r0
     b84:	40160c00 	andsmi	r0, r6, r0, lsl #24
     b88:	53000100 	movwpl	r0, #256	; 0x100
     b8c:	00401634 	subeq	r1, r0, r4, lsr r6
     b90:	00401660 	subeq	r1, r0, r0, ror #12
     b94:	60510001 	subsvs	r0, r1, r1
     b98:	74004016 	strvc	r4, [r0], #-22
     b9c:	0a004016 	beq	10bfc <_stacks_size+0x104dc>
     ba0:	06047400 	streq	r7, [r4], -r0, lsl #8
     ba4:	751afc09 	ldrvc	pc, [sl, #-3081]	; 0xc09
     ba8:	e09f1c00 	adds	r1, pc, r0, lsl #24
     bac:	f4004016 	vst4.8	{d4-d7}, [r0 :64], r6
     bb0:	01004016 	tsteq	r0, r6, lsl r0
     bb4:	17005200 	strne	r5, [r0, -r0, lsl #4]
     bb8:	174b0040 	strbne	r0, [fp, -r0, asr #32]
     bbc:	00010040 	andeq	r0, r1, r0, asr #32
     bc0:	40176852 	andsmi	r6, r7, r2, asr r8
     bc4:	40177f00 	andsmi	r7, r7, r0, lsl #30
     bc8:	51000100 	mrspl	r0, (UNDEF: 16)
     bcc:	004017a0 	subeq	r1, r0, r0, lsr #15
     bd0:	004017ac 	subeq	r1, r0, ip, lsr #15
     bd4:	00790006 	rsbseq	r0, r9, r6
     bd8:	9f1c0075 	svcls	0x001c0075
     bdc:	004017ac 	subeq	r1, r0, ip, lsr #15
     be0:	004017b4 	strheq	r1, [r0], #-116	; 0xffffff8c
     be4:	b4530001 	ldrblt	r0, [r3], #-1
     be8:	24004017 	strcs	r4, [r0], #-23
     bec:	06004019 			; <UNDEFINED> instruction: 0x06004019
     bf0:	75007900 	strvc	r7, [r0, #-2304]	; 0x900
     bf4:	249f1c00 	ldrcs	r1, [pc], #3072	; bfc <_stacks_size+0x4dc>
     bf8:	37004019 	smladcc	r0, r9, r0, r4
     bfc:	01004019 	tsteq	r0, r9, lsl r0
     c00:	19405300 	stmdbne	r0, {r8, r9, ip, lr}^
     c04:	19480040 	stmdbne	r8, {r6}^
     c08:	00010040 	andeq	r0, r1, r0, asr #32
     c0c:	40197453 	andsmi	r7, r9, r3, asr r4
     c10:	40198400 	andsmi	r8, r9, r0, lsl #8
     c14:	53000100 	movwpl	r0, #256	; 0x100
     c18:	00401984 	subeq	r1, r0, r4, lsl #19
     c1c:	00401998 	umaaleq	r1, r0, r8, r9
     c20:	0474000a 	ldrbteq	r0, [r4], #-10
     c24:	1afc0906 	bne	fff03044 <_STACK_FILLER+0x21427155>
     c28:	9f1c0075 	svcls	0x001c0075
     c2c:	004019d8 	ldrdeq	r1, [r0], #-152	; 0xffffff68
     c30:	004019ec 	subeq	r1, r0, ip, ror #19
     c34:	ec510001 	mrrc	0, 0, r0, r1, cr1
     c38:	3c004019 	stccc	0, cr4, [r0], {25}
     c3c:	0600401a 			; <UNDEFINED> instruction: 0x0600401a
     c40:	75007200 	strvc	r7, [r0, #-512]	; 0x200
     c44:	3c9f1c00 	ldccc	12, cr1, [pc], {0}
     c48:	4000401a 	andmi	r4, r0, sl, lsl r0
     c4c:	0a00401a 	beq	10cbc <_stacks_size+0x1059c>
     c50:	06047400 	streq	r7, [r4], -r0, lsl #8
     c54:	751afc09 	ldrvc	pc, [sl, #-3081]	; 0xc09
     c58:	549f1c00 	ldrpl	r1, [pc], #3072	; c60 <_stacks_size+0x540>
     c5c:	8300401a 	movwhi	r4, #26
     c60:	0100401a 	tsteq	r0, sl, lsl r0
     c64:	1ab45100 	bne	fed1506c <_STACK_FILLER+0x2023917d>
     c68:	1ac40040 	bne	ff100d70 <_STACK_FILLER+0x20624e81>
     c6c:	00010040 	andeq	r0, r1, r0, asr #32
     c70:	401ac452 	andsmi	ip, sl, r2, asr r4
     c74:	401ac800 	andsmi	ip, sl, r0, lsl #16
     c78:	73000a00 	movwvc	r0, #2560	; 0xa00
     c7c:	fc090604 	stc2	6, cr0, [r9], {4}
     c80:	1c00751a 	cfstr32ne	mvfx7, [r0], {26}
     c84:	401ac89f 	mulsmi	sl, pc, r8	; <UNPREDICTABLE>
     c88:	401ad000 	andsmi	sp, sl, r0
     c8c:	74000a00 	strvc	r0, [r0], #-2560	; 0xa00
     c90:	fc09067c 	stc2	6, cr0, [r9], {124}	; 0x7c
     c94:	1c00751a 	cfstr32ne	mvfx7, [r0], {26}
     c98:	401ae49f 	mulsmi	sl, pc, r4	; <UNPREDICTABLE>
     c9c:	401ae800 	andsmi	lr, sl, r0, lsl #16
     ca0:	51000100 	mrspl	r0, (UNDEF: 16)
     ca4:	00401ae8 	subeq	r1, r0, r8, ror #21
     ca8:	00401af4 	strdeq	r1, [r0], #-164	; 0xffffff5c
     cac:	00720006 	rsbseq	r0, r2, r6
     cb0:	9f1c0075 	svcls	0x001c0075
     cb4:	00401af4 	strdeq	r1, [r0], #-164	; 0xffffff5c
     cb8:	00401b0c 	subeq	r1, r0, ip, lsl #22
     cbc:	00790006 	rsbseq	r0, r9, r6
     cc0:	9f1c0075 	svcls	0x001c0075
     cc4:	00401b80 	subeq	r1, r0, r0, lsl #23
     cc8:	00401b94 	umaaleq	r1, r0, r4, fp
     ccc:	00790006 	rsbseq	r0, r9, r6
     cd0:	9f1c0075 	svcls	0x001c0075
     cd4:	00401b94 	umaaleq	r1, r0, r4, fp
     cd8:	00401b98 	umaaleq	r1, r0, r8, fp
     cdc:	00720006 	rsbseq	r0, r2, r6
     ce0:	9f1c0075 	svcls	0x001c0075
     ce4:	00401b98 	umaaleq	r1, r0, r8, fp
     ce8:	00401bac 	subeq	r1, r0, ip, lsr #23
     cec:	0474000a 	ldrbteq	r0, [r4], #-10
     cf0:	1afc0906 	bne	fff03110 <_STACK_FILLER+0x21427221>
     cf4:	9f1c0075 	svcls	0x001c0075
     cf8:	00401bd0 	ldrdeq	r1, [r0], #-176	; 0xffffff50
     cfc:	00401c00 	subeq	r1, r0, r0, lsl #24
     d00:	00790006 	rsbseq	r0, r9, r6
     d04:	9f1c0075 	svcls	0x001c0075
     d08:	00401c00 	subeq	r1, r0, r0, lsl #24
     d0c:	00401c34 	subeq	r1, r0, r4, lsr ip
     d10:	00720006 	rsbseq	r0, r2, r6
     d14:	9f1c0075 	svcls	0x001c0075
	...
     d20:	0040165c 	subeq	r1, r0, ip, asr r6
     d24:	0040166c 	subeq	r1, r0, ip, ror #12
     d28:	6c520001 	mrrcvs	0, 0, r0, r2, cr1
     d2c:	74004016 	strvc	r4, [r0], #-22
     d30:	09004016 	stmdbeq	r0, {r1, r2, r4, lr}
     d34:	06047400 	streq	r7, [r4], -r0, lsl #8
     d38:	331afc09 	tstcc	sl, #2304	; 0x900
     d3c:	1a089f25 	bne	2289d8 <_stacks_size+0x2282b8>
     d40:	1a1c0040 	bne	700e48 <_ram_limit+0x2e8e48>
     d44:	00010040 	andeq	r0, r1, r0, asr #32
     d48:	401b9451 	andsmi	r9, fp, r1, asr r4
     d4c:	401b9c00 	andsmi	r9, fp, r0, lsl #24
     d50:	51000100 	mrspl	r0, (UNDEF: 16)
	...
     d5c:	00401690 	umaaleq	r1, r0, r0, r6
     d60:	004016a4 	subeq	r1, r0, r4, lsr #13
     d64:	a4500001 	ldrbge	r0, [r0], #-1
     d68:	b0004016 	andlt	r4, r0, r6, lsl r0
     d6c:	05004016 	streq	r4, [r0, #-22]
     d70:	00733100 	rsbseq	r3, r3, r0, lsl #2
     d74:	16b09f24 	ldrtne	r9, [r0], r4, lsr #30
     d78:	16b80040 	ldrtne	r0, [r8], r0, asr #32
     d7c:	00010040 	andeq	r0, r1, r0, asr #32
     d80:	4016c050 	andsmi	ip, r6, r0, asr r0
     d84:	40172800 	andsmi	r2, r7, r0, lsl #16
     d88:	50000100 	andpl	r0, r0, r0, lsl #2
     d8c:	00401794 	umaaleq	r1, r0, r4, r7
     d90:	004017e8 	subeq	r1, r0, r8, ror #15
     d94:	88500001 	ldmdahi	r0, {r0}^
     d98:	9c00401a 	stcls	0, cr4, [r0], {26}
     d9c:	0100401a 	tsteq	r0, sl, lsl r0
     da0:	1ab45000 	bne	fed14da8 <_STACK_FILLER+0x20238eb9>
     da4:	1ad40040 	bne	ff500eac <_STACK_FILLER+0x20a24fbd>
     da8:	00010040 	andeq	r0, r1, r0, asr #32
     dac:	401b0c50 	andsmi	r0, fp, r0, asr ip
     db0:	401b5800 	andsmi	r5, fp, r0, lsl #16
     db4:	50000100 	andpl	r0, r0, r0, lsl #2
     db8:	00401b60 	subeq	r1, r0, r0, ror #22
     dbc:	00401b68 	subeq	r1, r0, r8, ror #22
     dc0:	34500001 	ldrbcc	r0, [r0], #-1
     dc4:	5800401c 	stmdapl	r0, {r2, r3, r4, lr}
     dc8:	0100401c 	tsteq	r0, ip, lsl r0
     dcc:	00005000 	andeq	r5, r0, r0
     dd0:	00000000 	andeq	r0, r0, r0
     dd4:	16c40000 	strbne	r0, [r4], r0
     dd8:	171c0040 	ldrne	r0, [ip, -r0, asr #32]
     ddc:	00010040 	andeq	r0, r1, r0, asr #32
     de0:	401a885e 	andsmi	r8, sl, lr, asr r8
     de4:	401a9c00 	andsmi	r9, sl, r0, lsl #24
     de8:	5e000100 	adfpls	f0, f0, f0
     dec:	00401ab4 	strheq	r1, [r0], #-164	; 0xffffff5c
     df0:	00401adf 	ldrdeq	r1, [r0], #-175	; 0xffffff51
     df4:	0c5e0001 	mrrceq	0, 0, r0, lr, cr1
     df8:	5000401b 	andpl	r4, r0, fp, lsl r0
     dfc:	0100401b 	tsteq	r0, fp, lsl r0
     e00:	1c345e00 	ldcne	14, cr5, [r4], #-0
     e04:	1c580040 	mrrcne	0, 4, r0, r8, cr0
     e08:	00010040 	andeq	r0, r1, r0, asr #32
     e0c:	0000005e 	andeq	r0, r0, lr, asr r0
     e10:	00000000 	andeq	r0, r0, r0
     e14:	40158c00 	andsmi	r8, r5, r0, lsl #24
     e18:	4015a300 	andsmi	sl, r5, r0, lsl #6
     e1c:	51000100 	mrspl	r0, (UNDEF: 16)
     e20:	00401670 	subeq	r1, r0, r0, ror r6
     e24:	00401684 	subeq	r1, r0, r4, lsl #13
     e28:	20500001 	subscs	r0, r0, r1
     e2c:	4b004017 	blmi	10e90 <_stacks_size+0x10770>
     e30:	01004017 	tsteq	r0, r7, lsl r0
     e34:	19845c00 	stmibne	r4, {sl, fp, ip, lr}
     e38:	199b0040 	ldmibne	fp, {r6}
     e3c:	00010040 	andeq	r0, r1, r0, asr #32
     e40:	401a1051 	andsmi	r1, sl, r1, asr r0
     e44:	401a5400 	andsmi	r5, sl, r0, lsl #8
     e48:	53000100 	movwpl	r0, #256	; 0x100
     e4c:	00401ac8 	subeq	r1, r0, r8, asr #21
     e50:	00401adf 	ldrdeq	r1, [r0], #-175	; 0xffffff51
     e54:	94520001 	ldrbls	r0, [r2], #-1
     e58:	b000401b 	andlt	r4, r0, fp, lsl r0
     e5c:	0100401b 	tsteq	r0, fp, lsl r0
     e60:	00005300 	andeq	r5, r0, r0, lsl #6
     e64:	00000000 	andeq	r0, r0, r0
     e68:	166c0000 	strbtne	r0, [ip], -r0
     e6c:	16840040 	strne	r0, [r4], r0, asr #32
     e70:	00010040 	andeq	r0, r1, r0, asr #32
     e74:	40172052 	andsmi	r2, r7, r2, asr r0
     e78:	40174b00 	andsmi	r4, r7, r0, lsl #22
     e7c:	51000100 	mrspl	r0, (UNDEF: 16)
     e80:	00401a0c 	subeq	r1, r0, ip, lsl #20
     e84:	00401a3c 	subeq	r1, r0, ip, lsr sl
     e88:	3c500001 	mrrccc	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
     e8c:	5400401a 	strpl	r4, [r0], #-26
     e90:	0100401a 	tsteq	r0, sl, lsl r0
     e94:	1ac85200 	bne	ff21569c <_STACK_FILLER+0x207397ad>
     e98:	1adf0040 	bne	ff7c0fa0 <_STACK_FILLER+0x20ce50b1>
     e9c:	00010040 	andeq	r0, r1, r0, asr #32
     ea0:	401b9453 	andsmi	r9, fp, r3, asr r4
     ea4:	401ba000 	andsmi	sl, fp, r0
     ea8:	50000100 	andpl	r0, r0, r0, lsl #2
	...
     eb4:	00401568 	subeq	r1, r0, r8, ror #10
     eb8:	00401574 	subeq	r1, r0, r4, ror r5
     ebc:	c8530001 	ldmdagt	r3, {r0}^
     ec0:	0c004016 	stceq	0, cr4, [r0], {22}
     ec4:	01004017 	tsteq	r0, r7, lsl r0
     ec8:	170c5400 	strne	r5, [ip, -r0, lsl #8]
     ecc:	171c0040 	ldrne	r0, [ip, -r0, asr #32]
     ed0:	00080040 	andeq	r0, r8, r0, asr #32
     ed4:	2433007e 	ldrtcs	r0, [r3], #-126	; 0x7e
     ed8:	9f220077 	svcls	0x00220077
     edc:	00401a88 	subeq	r1, r0, r8, lsl #21
     ee0:	00401a9c 	umaaleq	r1, r0, ip, sl
     ee4:	9c540001 	mrrcls	0, 0, r0, r4, cr1
     ee8:	b400401a 	strlt	r4, [r0], #-26
     eec:	0100401a 	tsteq	r0, sl, lsl r0
     ef0:	1ab45300 	bne	fed15af8 <_STACK_FILLER+0x20239c09>
     ef4:	1ac00040 	bne	ff000ffc <_STACK_FILLER+0x2052510d>
     ef8:	00010040 	andeq	r0, r1, r0, asr #32
     efc:	401ac054 	andsmi	ip, sl, r4, asr r0
     f00:	401adf00 	andsmi	sp, sl, r0, lsl #30
     f04:	7e000800 	cdpvc	8, 0, cr0, cr0, cr0, {0}
     f08:	77243300 	strvc	r3, [r4, -r0, lsl #6]!
     f0c:	0c9f2200 	lfmeq	f2, 4, [pc], {0}
     f10:	1000401b 	andne	r4, r0, fp, lsl r0
     f14:	0100401b 	tsteq	r0, fp, lsl r0
     f18:	1b105400 	blne	415f20 <__malloc_current_mallinfo+0x133bc>
     f1c:	1b180040 	blne	601024 <_ram_limit+0x1e9024>
     f20:	00030040 	andeq	r0, r3, r0, asr #32
     f24:	189f0873 	ldmne	pc, {r0, r1, r4, r5, r6, fp}	; <UNPREDICTABLE>
     f28:	1c00401b 	stcne	0, cr4, [r0], {27}
     f2c:	0100401b 	tsteq	r0, fp, lsl r0
     f30:	1b1c5300 	blne	715b38 <_ram_limit+0x2fdb38>
     f34:	1b340040 	blne	d0103c <_ram_limit+0x8e903c>
     f38:	00010040 	andeq	r0, r1, r0, asr #32
     f3c:	401c3454 	andsmi	r3, ip, r4, asr r4
     f40:	401c3800 	andsmi	r3, ip, r0, lsl #16
     f44:	53000100 	movwpl	r0, #256	; 0x100
	...
     f50:	00401528 	subeq	r1, r0, r8, lsr #10
     f54:	004015a8 	subeq	r1, r0, r8, lsr #11
     f58:	a8550001 	ldmdage	r5, {r0}^
     f5c:	b8004015 	stmdalt	r0, {r0, r2, r4, lr}
     f60:	37004015 	smladcc	r0, r5, r0, r4
     f64:	01f34000 	mvnseq	r4, r0
     f68:	090b2351 	stmdbeq	fp, {r0, r4, r6, r8, r9, sp}
     f6c:	01f31af8 	ldrsheq	r1, [r3, #168]!	; 0xa8
     f70:	f30b2351 	vcge.u8	q1, <illegal reg q5.5>, <illegal reg q0.5>
     f74:	0b235101 	bleq	8d5380 <_ram_limit+0x4bd380>
     f78:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
     f7c:	0000160c 	andeq	r1, r0, ip, lsl #12
     f80:	01282b80 	smlawbeq	r8, r0, fp, r2
     f84:	f3131600 	vmax.u16	d1, d3, d0
     f88:	0b235101 	bleq	8d5394 <_ram_limit+0x4bd394>
     f8c:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
     f90:	0000160c 	andeq	r1, r0, ip, lsl #12
     f94:	01282c80 	smlawbeq	r8, r0, ip, r2
     f98:	9f131600 	svcls	0x00131600
     f9c:	004015b8 	strheq	r1, [r0], #-88	; 0xffffffa8
     fa0:	00401720 	subeq	r1, r0, r0, lsr #14
     fa4:	20550001 	subscs	r0, r5, r1
     fa8:	50004017 	andpl	r4, r0, r7, lsl r0
     fac:	37004017 	smladcc	r0, r7, r0, r4
     fb0:	01f34000 	mvnseq	r4, r0
     fb4:	090b2351 	stmdbeq	fp, {r0, r4, r6, r8, r9, sp}
     fb8:	01f31af8 	ldrsheq	r1, [r3, #168]!	; 0xa8
     fbc:	f30b2351 	vcge.u8	q1, <illegal reg q5.5>, <illegal reg q0.5>
     fc0:	0b235101 	bleq	8d53cc <_ram_limit+0x4bd3cc>
     fc4:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
     fc8:	0000160c 	andeq	r1, r0, ip, lsl #12
     fcc:	01282b80 	smlawbeq	r8, r0, fp, r2
     fd0:	f3131600 	vmax.u16	d1, d3, d0
     fd4:	0b235101 	bleq	8d53e0 <_ram_limit+0x4bd3e0>
     fd8:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
     fdc:	0000160c 	andeq	r1, r0, ip, lsl #12
     fe0:	01282c80 	smlawbeq	r8, r0, ip, r2
     fe4:	9f131600 	svcls	0x00131600
     fe8:	00401750 	subeq	r1, r0, r0, asr r7
     fec:	00401790 	umaaleq	r1, r0, r0, r7
     ff0:	90550001 	subsls	r0, r5, r1
     ff4:	94004017 	strls	r4, [r0], #-23
     ff8:	37004017 	smladcc	r0, r7, r0, r4
     ffc:	01f34000 	mvnseq	r4, r0
    1000:	090b2351 	stmdbeq	fp, {r0, r4, r6, r8, r9, sp}
    1004:	01f31af8 	ldrsheq	r1, [r3, #168]!	; 0xa8
    1008:	f30b2351 	vcge.u8	q1, <illegal reg q5.5>, <illegal reg q0.5>
    100c:	0b235101 	bleq	8d5418 <_ram_limit+0x4bd418>
    1010:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
    1014:	0000160c 	andeq	r1, r0, ip, lsl #12
    1018:	01282b80 	smlawbeq	r8, r0, fp, r2
    101c:	f3131600 	vmax.u16	d1, d3, d0
    1020:	0b235101 	bleq	8d542c <_ram_limit+0x4bd42c>
    1024:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
    1028:	0000160c 	andeq	r1, r0, ip, lsl #12
    102c:	01282c80 	smlawbeq	r8, r0, ip, r2
    1030:	9f131600 	svcls	0x00131600
    1034:	00401794 	umaaleq	r1, r0, r4, r7
    1038:	0040194c 	subeq	r1, r0, ip, asr #18
    103c:	4c550001 	mrrcmi	0, 0, r0, r5, cr1
    1040:	74004019 	strvc	r4, [r0], #-25
    1044:	37004019 	smladcc	r0, r9, r0, r4
    1048:	01f34000 	mvnseq	r4, r0
    104c:	090b2351 	stmdbeq	fp, {r0, r4, r6, r8, r9, sp}
    1050:	01f31af8 	ldrsheq	r1, [r3, #168]!	; 0xa8
    1054:	f30b2351 	vcge.u8	q1, <illegal reg q5.5>, <illegal reg q0.5>
    1058:	0b235101 	bleq	8d5464 <_ram_limit+0x4bd464>
    105c:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
    1060:	0000160c 	andeq	r1, r0, ip, lsl #12
    1064:	01282b80 	smlawbeq	r8, r0, fp, r2
    1068:	f3131600 	vmax.u16	d1, d3, d0
    106c:	0b235101 	bleq	8d5478 <_ram_limit+0x4bd478>
    1070:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
    1074:	0000160c 	andeq	r1, r0, ip, lsl #12
    1078:	01282c80 	smlawbeq	r8, r0, ip, r2
    107c:	9f131600 	svcls	0x00131600
    1080:	00401974 	subeq	r1, r0, r4, ror r9
    1084:	004019ac 	subeq	r1, r0, ip, lsr #19
    1088:	ac550001 	mrrcge	0, 0, r0, r5, cr1
    108c:	b0004019 	andlt	r4, r0, r9, lsl r0
    1090:	37004019 	smladcc	r0, r9, r0, r4
    1094:	01f34000 	mvnseq	r4, r0
    1098:	090b2351 	stmdbeq	fp, {r0, r4, r6, r8, r9, sp}
    109c:	01f31af8 	ldrsheq	r1, [r3, #168]!	; 0xa8
    10a0:	f30b2351 	vcge.u8	q1, <illegal reg q5.5>, <illegal reg q0.5>
    10a4:	0b235101 	bleq	8d54b0 <_ram_limit+0x4bd4b0>
    10a8:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
    10ac:	0000160c 	andeq	r1, r0, ip, lsl #12
    10b0:	01282b80 	smlawbeq	r8, r0, fp, r2
    10b4:	f3131600 	vmax.u16	d1, d3, d0
    10b8:	0b235101 	bleq	8d54c4 <_ram_limit+0x4bd4c4>
    10bc:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
    10c0:	0000160c 	andeq	r1, r0, ip, lsl #12
    10c4:	01282c80 	smlawbeq	r8, r0, ip, r2
    10c8:	9f131600 	svcls	0x00131600
    10cc:	004019b0 	strheq	r1, [r0], #-144	; 0xffffff70
    10d0:	00401a60 	subeq	r1, r0, r0, ror #20
    10d4:	60550001 	subsvs	r0, r5, r1
    10d8:	8800401a 	stmdahi	r0, {r1, r3, r4, lr}
    10dc:	3700401a 	smladcc	r0, sl, r0, r4
    10e0:	01f34000 	mvnseq	r4, r0
    10e4:	090b2351 	stmdbeq	fp, {r0, r4, r6, r8, r9, sp}
    10e8:	01f31af8 	ldrsheq	r1, [r3, #168]!	; 0xa8
    10ec:	f30b2351 	vcge.u8	q1, <illegal reg q5.5>, <illegal reg q0.5>
    10f0:	0b235101 	bleq	8d54fc <_ram_limit+0x4bd4fc>
    10f4:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
    10f8:	0000160c 	andeq	r1, r0, ip, lsl #12
    10fc:	01282b80 	smlawbeq	r8, r0, fp, r2
    1100:	f3131600 	vmax.u16	d1, d3, d0
    1104:	0b235101 	bleq	8d5510 <_ram_limit+0x4bd510>
    1108:	22244b40 	eorcs	r4, r4, #64, 22	; 0x10000
    110c:	0000160c 	andeq	r1, r0, ip, lsl #12
    1110:	01282c80 	smlawbeq	r8, r0, ip, r2
    1114:	9f131600 	svcls	0x00131600
    1118:	00401a88 	subeq	r1, r0, r8, lsl #21
    111c:	00401c58 	subeq	r1, r0, r8, asr ip
    1120:	00550001 	subseq	r0, r5, r1
    1124:	00000000 	andeq	r0, r0, r0
    1128:	b4000000 	strlt	r0, [r0], #-0
    112c:	40004017 	andmi	r4, r0, r7, lsl r0
    1130:	01004019 	tsteq	r0, r9, lsl r0
    1134:	1af45500 	bne	ffd1653c <_STACK_FILLER+0x2123a64d>
    1138:	1b0c0040 	blne	301240 <_stacks_size+0x300b20>
    113c:	00010040 	andeq	r0, r1, r0, asr #32
    1140:	401b8055 	andsmi	r8, fp, r5, asr r0
    1144:	401b9400 	andsmi	r9, fp, r0, lsl #8
    1148:	55000100 	strpl	r0, [r0, #-256]	; 0x100
    114c:	00401bd0 	ldrdeq	r1, [r0], #-176	; 0xffffff50
    1150:	00401c00 	subeq	r1, r0, r0, lsl #24
    1154:	00550001 	subseq	r0, r5, r1
    1158:	00000000 	andeq	r0, r0, r0
    115c:	b4000000 	strlt	r0, [r0], #-0
    1160:	40004017 	andmi	r4, r0, r7, lsl r0
    1164:	01004019 	tsteq	r0, r9, lsl r0
    1168:	1af45600 	bne	ffd16970 <_STACK_FILLER+0x2123aa81>
    116c:	1b0c0040 	blne	301274 <_stacks_size+0x300b54>
    1170:	00010040 	andeq	r0, r1, r0, asr #32
    1174:	401b8056 	andsmi	r8, fp, r6, asr r0
    1178:	401b9400 	andsmi	r9, fp, r0, lsl #8
    117c:	56000100 	strpl	r0, [r0], -r0, lsl #2
    1180:	00401bd0 	ldrdeq	r1, [r0], #-176	; 0xffffff50
    1184:	00401c00 	subeq	r1, r0, r0, lsl #24
    1188:	00560001 	subseq	r0, r6, r1
	...
    1194:	54004018 	strpl	r4, [r0], #-24
    1198:	01004018 	tsteq	r0, r8, lsl r0
    119c:	18545000 	ldmdane	r4, {ip, lr}^
    11a0:	19400040 	stmdbne	r0, {r6}^
    11a4:	00010040 	andeq	r0, r1, r0, asr #32
    11a8:	401af458 	andsmi	pc, sl, r8, asr r4	; <UNPREDICTABLE>
    11ac:	401b0c00 	andsmi	r0, fp, r0, lsl #24
    11b0:	50000100 	andpl	r0, r0, r0, lsl #2
    11b4:	00401b80 	subeq	r1, r0, r0, lsl #23
    11b8:	00401b94 	umaaleq	r1, r0, r4, fp
    11bc:	d0580001 	subsle	r0, r8, r1
    11c0:	ec00401b 	stc	0, cr4, [r0], {27}
    11c4:	0100401b 	tsteq	r0, fp, lsl r0
    11c8:	1bec5000 	blne	ffb151d0 <_STACK_FILLER+0x210392e1>
    11cc:	1c000040 	stcne	0, cr0, [r0], {64}	; 0x40
    11d0:	00010040 	andeq	r0, r1, r0, asr #32
    11d4:	00000058 	andeq	r0, r0, r8, asr r0
    11d8:	00000000 	andeq	r0, r0, r0
    11dc:	40182c00 	andsmi	r2, r8, r0, lsl #24
    11e0:	40184c00 	andsmi	r4, r8, r0, lsl #24
    11e4:	70000500 	andvc	r0, r0, r0, lsl #10
    11e8:	9f1a3700 	svcls	0x001a3700
    11ec:	0040184c 	subeq	r1, r0, ip, asr #16
    11f0:	00401858 	subeq	r1, r0, r8, asr r8
    11f4:	58530001 	ldmdapl	r3, {r0}^
    11f8:	74004018 	strvc	r4, [r0], #-24
    11fc:	05004018 	streq	r4, [r0, #-24]
    1200:	37007000 	strcc	r7, [r0, -r0]
    1204:	00009f1a 	andeq	r9, r0, sl, lsl pc
    1208:	00000000 	andeq	r0, r0, r0
    120c:	184c0000 	stmdane	ip, {}^	; <UNPREDICTABLE>
    1210:	18540040 	ldmdane	r4, {r6}^
    1214:	00050040 	andeq	r0, r5, r0, asr #32
    1218:	1c007338 	stcne	3, cr7, [r0], {56}	; 0x38
    121c:	40186c9f 	mulsmi	r8, pc, ip	; <UNPREDICTABLE>
    1220:	4018e800 	andsmi	lr, r8, r0, lsl #16
    1224:	5b000100 	blpl	162c <_stacks_size+0xf0c>
    1228:	00401b80 	subeq	r1, r0, r0, lsl #23
    122c:	00401b94 	umaaleq	r1, r0, r4, fp
    1230:	ec5b0001 	mrrc	0, 0, r0, fp, cr1
    1234:	0000401b 	andeq	r4, r0, fp, lsl r0
    1238:	0100401c 	tsteq	r0, ip, lsl r0
    123c:	00005b00 	andeq	r5, r0, r0, lsl #22
    1240:	00000000 	andeq	r0, r0, r0
    1244:	17b40000 	ldrne	r0, [r4, r0]!
    1248:	19400040 	stmdbne	r0, {r6}^
    124c:	00020040 	andeq	r0, r2, r0, asr #32
    1250:	1af49f30 	bne	ffd28f18 <_STACK_FILLER+0x2124d029>
    1254:	1b0c0040 	blne	30135c <_stacks_size+0x300c3c>
    1258:	00020040 	andeq	r0, r2, r0, asr #32
    125c:	1b809f30 	blne	fe028f24 <_STACK_FILLER+0x1f54d035>
    1260:	1b940040 	blne	fe501368 <_STACK_FILLER+0x1fa25479>
    1264:	00020040 	andeq	r0, r2, r0, asr #32
    1268:	1bd09f30 	blne	ff428f30 <_STACK_FILLER+0x2094d041>
    126c:	1c000040 	stcne	0, cr0, [r0], {64}	; 0x40
    1270:	00020040 	andeq	r0, r2, r0, asr #32
    1274:	00009f30 	andeq	r9, r0, r0, lsr pc
    1278:	00000000 	andeq	r0, r0, r0
    127c:	18780000 	ldmdane	r8!, {}^	; <UNPREDICTABLE>
    1280:	188c0040 	stmne	ip, {r6}
    1284:	00010040 	andeq	r0, r1, r0, asr #32
    1288:	00000050 	andeq	r0, r0, r0, asr r0
    128c:	00000000 	andeq	r0, r0, r0
    1290:	401bd800 	andsmi	sp, fp, r0, lsl #16
    1294:	401bdc00 	andsmi	sp, fp, r0, lsl #24
    1298:	7b000600 	blvc	2aa0 <_stacks_size+0x2380>
    129c:	22007900 	andcs	r7, r0, #0, 18
    12a0:	401bdc9f 	mulsmi	fp, pc, ip	; <UNPREDICTABLE>
    12a4:	401be400 	andsmi	lr, fp, r0, lsl #8
    12a8:	51000100 	mrspl	r0, (UNDEF: 16)
    12ac:	00401be4 	subeq	r1, r0, r4, ror #23
    12b0:	00401bec 	subeq	r1, r0, ip, ror #23
    12b4:	007b0006 	rsbseq	r0, fp, r6
    12b8:	9f220079 	svcls	0x00220079
	...
    12c4:	004017b4 	strheq	r1, [r0], #-116	; 0xffffff8c
    12c8:	00401904 	subeq	r1, r0, r4, lsl #18
    12cc:	f4540001 			; <UNDEFINED> instruction: 0xf4540001
    12d0:	0000401a 	andeq	r4, r0, sl, lsl r0
    12d4:	0100401b 	tsteq	r0, fp, lsl r0
    12d8:	1b805400 	blne	fe0162e0 <_STACK_FILLER+0x1f53a3f1>
    12dc:	1b8c0040 	blne	fe3013e4 <_STACK_FILLER+0x1f8254f5>
    12e0:	00010040 	andeq	r0, r1, r0, asr #32
    12e4:	401bd054 	andsmi	sp, fp, r4, asr r0
    12e8:	401c0000 	andsmi	r0, ip, r0
    12ec:	54000100 	strpl	r0, [r0], #-256	; 0x100
	...
    12f8:	004017b4 	strheq	r1, [r0], #-116	; 0xffffff8c
    12fc:	004018c4 	subeq	r1, r0, r4, asr #17
    1300:	c4590001 	ldrbgt	r0, [r9], #-1
    1304:	d8004018 	stmdale	r0, {r3, r4, lr}
    1308:	01004018 	tsteq	r0, r8, lsl r0
    130c:	18d85200 	ldmne	r8, {r9, ip, lr}^
    1310:	18e80040 	stmiane	r8!, {r6}^
    1314:	00060040 	andeq	r0, r6, r0, asr #32
    1318:	f8097479 			; <UNDEFINED> instruction: 0xf8097479
    131c:	1af49f1a 	bne	ffd28f8c <_STACK_FILLER+0x2124d09d>
    1320:	1b0c0040 	blne	301428 <_stacks_size+0x300d08>
    1324:	00010040 	andeq	r0, r1, r0, asr #32
    1328:	401b8059 	andsmi	r8, fp, r9, asr r0
    132c:	401b9400 	andsmi	r9, fp, r0, lsl #8
    1330:	59000100 	stmdbpl	r0, {r8}
    1334:	00401bd0 	ldrdeq	r1, [r0], #-176	; 0xffffff50
    1338:	00401bec 	subeq	r1, r0, ip, ror #23
    133c:	ec590001 	mrrc	0, 0, r0, r9, cr1
    1340:	0000401b 	andeq	r4, r0, fp, lsl r0
    1344:	0600401c 			; <UNDEFINED> instruction: 0x0600401c
    1348:	09747900 	ldmdbeq	r4!, {r8, fp, ip, sp, lr}^
    134c:	009f1af8 			; <UNDEFINED> instruction: 0x009f1af8
    1350:	00000000 	andeq	r0, r0, r0
    1354:	e4000000 	str	r0, [r0], #-0
    1358:	f7004017 			; <UNDEFINED> instruction: 0xf7004017
    135c:	01004017 	tsteq	r0, r7, lsl r0
    1360:	17f75200 	ldrbne	r5, [r7, r0, lsl #4]!
    1364:	19040040 	stmdbne	r4, {r6}
    1368:	00060040 	andeq	r0, r6, r0, asr #32
    136c:	00790074 	rsbseq	r0, r9, r4, ror r0
    1370:	1af49f22 	bne	ffd29000 <_STACK_FILLER+0x2124d111>
    1374:	1b000040 	blne	147c <_stacks_size+0xd5c>
    1378:	00060040 	andeq	r0, r6, r0, asr #32
    137c:	00790074 	rsbseq	r0, r9, r4, ror r0
    1380:	1b809f22 	blne	fe029010 <_STACK_FILLER+0x1f54d121>
    1384:	1b8c0040 	blne	fe30148c <_STACK_FILLER+0x1f82559d>
    1388:	00060040 	andeq	r0, r6, r0, asr #32
    138c:	00790074 	rsbseq	r0, r9, r4, ror r0
    1390:	1bd09f22 	blne	ff429020 <_STACK_FILLER+0x2094d131>
    1394:	1c000040 	stcne	0, cr0, [r0], {64}	; 0x40
    1398:	00060040 	andeq	r0, r6, r0, asr #32
    139c:	00790074 	rsbseq	r0, r9, r4, ror r0
    13a0:	00009f22 	andeq	r9, r0, r2, lsr #30
    13a4:	00000000 	andeq	r0, r0, r0
    13a8:	17e40000 	strbne	r0, [r4, r0]!
    13ac:	186c0040 	stmdane	ip!, {r6}^
    13b0:	00010040 	andeq	r0, r1, r0, asr #32
    13b4:	401af45b 	andsmi	pc, sl, fp, asr r4	; <UNPREDICTABLE>
    13b8:	401b0c00 	andsmi	r0, fp, r0, lsl #24
    13bc:	5b000100 	blpl	17c4 <_stacks_size+0x10a4>
    13c0:	00401bd0 	ldrdeq	r1, [r0], #-176	; 0xffffff50
    13c4:	00401bec 	subeq	r1, r0, ip, ror #23
    13c8:	005b0001 	subseq	r0, fp, r1
    13cc:	00000000 	andeq	r0, r0, r0
    13d0:	e4000000 	str	r0, [r0], #-0
    13d4:	40004017 	andmi	r4, r0, r7, lsl r0
    13d8:	04004019 	streq	r4, [r0], #-25
    13dc:	10000a00 	andne	r0, r0, r0, lsl #20
    13e0:	401af49f 	mulsmi	sl, pc, r4	; <UNPREDICTABLE>
    13e4:	401b0c00 	andsmi	r0, fp, r0, lsl #24
    13e8:	0a000400 	beq	23f0 <_stacks_size+0x1cd0>
    13ec:	809f1000 	addshi	r1, pc, r0
    13f0:	9400401b 	strls	r4, [r0], #-27
    13f4:	0400401b 	streq	r4, [r0], #-27
    13f8:	10000a00 	andne	r0, r0, r0, lsl #20
    13fc:	401bd09f 	mulsmi	fp, pc, r0	; <UNPREDICTABLE>
    1400:	401c0000 	andsmi	r0, ip, r0
    1404:	0a000400 	beq	240c <_stacks_size+0x1cec>
    1408:	009f1000 	addseq	r1, pc, r0
    140c:	00000000 	andeq	r0, r0, r0
    1410:	60000000 	andvs	r0, r0, r0
    1414:	7400401c 	strvc	r4, [r0], #-28
    1418:	0100401c 	tsteq	r0, ip, lsl r0
    141c:	1c745000 	ldclne	0, cr5, [r4], #-0
    1420:	1c880040 	stcne	0, cr0, [r8], {64}	; 0x40
    1424:	00010040 	andeq	r0, r1, r0, asr #32
    1428:	401c8855 	andsmi	r8, ip, r5, asr r8
    142c:	401c8c00 	andsmi	r8, ip, r0, lsl #24
    1430:	f3000400 	vshl.u8	d0, d0, d0
    1434:	8c9f5001 	ldchi	0, cr5, [pc], {1}
    1438:	9c00401c 	stcls	0, cr4, [r0], {28}
    143c:	0100401c 	tsteq	r0, ip, lsl r0
    1440:	1c9c5500 	cfldr32ne	mvfx5, [ip], {0}
    1444:	1ca40040 	stcne	0, cr0, [r4], #256	; 0x100
    1448:	00040040 	andeq	r0, r4, r0, asr #32
    144c:	9f5001f3 	svcls	0x005001f3
	...
    1458:	00401c60 	subeq	r1, r0, r0, ror #24
    145c:	00401c7b 	subeq	r1, r0, fp, ror ip
    1460:	7b510001 	blvc	144146c <_ram_limit+0x102946c>
    1464:	a400401c 	strge	r4, [r0], #-28
    1468:	0400401c 	streq	r4, [r0], #-28
    146c:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
    1470:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
    1474:	00000000 	andeq	r0, r0, r0
	...
