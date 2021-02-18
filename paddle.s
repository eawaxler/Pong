	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"paddle.c"
	.text
	.align	2
	.global	drawPaddles
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPaddles, %function
drawPaddles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	mov	r4, r2
	sub	sp, sp, #8
	mov	r1, r0
	str	r2, [sp]
	ldr	r6, .L4
	mov	r3, #20
	mov	r2, #2
	mov	r0, #1
	mov	lr, pc
	bx	r6
	mov	r1, r5
	mov	r3, #20
	mov	r2, #2
	mov	r0, #237
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	drawRect
	.size	drawPaddles, .-drawPaddles
	.align	2
	.global	updatePaddles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePaddles, %function
updatePaddles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L18
	ldr	r0, .L18+4
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r2, [r0]
	subeq	r2, r2, #1
	str	lr, [sp, #-4]!
	streq	r2, [r0]
	beq	.L8
	ldrh	r3, [r3, #48]
	tst	r3, #128
	addeq	r2, r2, #1
	streq	r2, [r0]
.L8:
	ldr	ip, .L18
	ldr	r1, .L18+8
	ldrh	r3, [ip, #48]
	tst	r3, #1
	ldr	r3, [r1]
	subeq	r3, r3, #1
	streq	r3, [r1]
	beq	.L10
	ldrh	ip, [ip, #48]
	tst	ip, #2
	addeq	r3, r3, #1
	streq	r3, [r1]
.L10:
	cmp	r2, #0
	blt	.L16
	cmp	r2, #140
	movgt	lr, #140
	ldrgt	ip, .L18+12
	strgt	lr, [r0]
	strgt	r2, [ip]
	cmp	r3, #0
	blt	.L17
.L13:
	cmp	r3, #140
	movgt	r0, #140
	ldrgt	r2, .L18+16
	strgt	r0, [r1]
	strgt	r3, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L16:
	mov	lr, #0
	ldr	ip, .L18+12
	cmp	r3, #0
	str	lr, [r0]
	str	r2, [ip]
	bge	.L13
.L17:
	mov	r0, #0
	ldr	r2, .L18+16
	str	r0, [r1]
	str	r3, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	67109120
	.word	y1
	.word	y2
	.word	oldy1
	.word	oldy2
	.size	updatePaddles, .-updatePaddles
	.comm	oldy2,4,4
	.comm	oldy1,4,4
	.comm	y2,4,4
	.comm	y1,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
