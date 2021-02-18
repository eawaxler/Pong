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
	.file	"ball.c"
	.text
	.align	2
	.global	drawBall
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBall, %function
drawBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #3
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	ldr	r4, .L4
	mov	r2, r3
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	drawRect
	.size	drawBall, .-drawBall
	.align	2
	.global	updateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall, %function
updateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L18
	ldr	r5, .L18+4
	ldr	r0, [r4]
	ldr	r6, .L18+8
	ldr	ip, .L18+12
	ldr	r1, [r5]
	ldr	lr, .L18+16
	ldr	r3, [r6]
	add	r1, r0, r1
	ldr	r2, [ip]
	str	r0, [lr]
	ldr	r0, .L18+20
	str	r3, [r0]
	adds	r3, r3, r2
	str	r1, [r4]
	sub	sp, sp, #16
	bmi	.L16
	cmp	r3, #157
	movgt	r0, #157
	movgt	r3, r0
	rsbgt	r2, r2, #0
	strle	r3, [r6]
	strgt	r2, [ip]
	strgt	r0, [r6]
.L8:
	mov	r7, #3
	stm	sp, {r1, r3}
	ldr	r2, .L18+24
	str	r7, [sp, #12]
	str	r7, [sp, #8]
	mov	r3, #20
	ldr	r1, [r2]
	mov	r0, #1
	mov	r2, #2
	ldr	r8, .L18+28
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L10
	ldr	r3, [r5]
	rsb	r3, r3, #0
	str	r7, [r4]
	str	r3, [r5]
.L6:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L16:
	mov	r3, #0
	rsb	r2, r2, #0
	str	r2, [ip]
	str	r3, [r6]
	b	.L8
.L10:
	ldr	r2, [r6]
	ldr	r3, [r4]
	str	r7, [sp, #12]
	str	r7, [sp, #8]
	ldr	r1, .L18+32
	mov	r0, #237
	ldr	r1, [r1]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r2, #2
	mov	r3, #20
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L17
	ldr	r3, [r4]
	cmp	r3, #0
	bge	.L13
	mov	r1, #120
	mov	r2, #80
	ldr	r3, [r5]
	rsb	r3, r3, #0
	str	r3, [r5]
	mov	r0, #2
	ldr	r3, .L18+36
	str	r1, [r4]
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L13:
	cmp	r3, #237
	ble	.L6
	mov	r1, #120
	mov	r2, #80
	ldr	r3, [r5]
	rsb	r3, r3, #0
	str	r3, [r5]
	mov	r0, #1
	ldr	r3, .L18+36
	str	r1, [r4]
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L17:
	mov	r2, #234
	ldr	r3, [r5]
	rsb	r3, r3, #0
	str	r3, [r5]
	str	r2, [r4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	bX
	.word	ballVX
	.word	bY
	.word	ballVY
	.word	oldBX
	.word	oldBY
	.word	y1
	.word	collision
	.word	y2
	.word	score
	.size	updateBall, .-updateBall
	.comm	oldBY,4,4
	.comm	oldBX,4,4
	.comm	bY,4,4
	.comm	bX,4,4
	.comm	ballVY,4,4
	.comm	ballVX,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
