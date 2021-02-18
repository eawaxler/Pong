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
	.file	"characters.c"
	.text
	.align	2
	.global	drawZero
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawZero, %function
drawZero:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r2
	mov	r5, r0
	mov	r7, r1
	sub	sp, sp, #12
	add	r8, r0, #1
	ldr	r6, .L4
	add	r9, r1, r3
	mov	r0, r8
	str	r2, [sp]
	mov	r2, #4
	mov	lr, pc
	bx	r6
	mov	r1, r9
	mov	r0, r5
	mov	r3, #5
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, r9
	add	r0, r5, #4
	mov	r3, #5
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r8
	mov	r3, #1
	mov	r2, #4
	str	r4, [sp]
	add	r1, r7, #6
	mov	lr, pc
	bx	r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	drawRect
	.size	drawZero, .-drawZero
	.align	2
	.global	drawOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawOne, %function
drawOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, r2
	mov	r6, r1
	sub	sp, sp, #12
	str	r2, [sp]
	ldr	r7, .L8
	mov	r3, #6
	mov	r2, #2
	add	r0, r0, #1
	mov	lr, pc
	bx	r7
	mov	r2, r5
	mov	r0, r4
	add	r1, r6, #1
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	mov	r0, r4
	mov	r3, #1
	mov	r2, #4
	str	r5, [sp]
	add	r1, r6, #6
	mov	lr, pc
	bx	r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	drawRect
	.word	setPixel
	.size	drawOne, .-drawOne
	.align	2
	.global	drawTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTwo, %function
drawTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r2
	mov	r5, r0
	sub	sp, sp, #12
	add	r8, r0, #1
	ldr	r6, .L12
	add	r9, r1, r3
	mov	r0, r8
	str	r2, [sp]
	mov	r2, #4
	mov	r7, r1
	mov	lr, pc
	bx	r6
	mov	r1, r9
	mov	r0, r5
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #2
	mov	r1, r9
	mov	r2, r3
	add	r0, r5, #4
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r7, #3
	add	r0, r5, #2
	mov	r3, #1
	mov	r2, #3
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r8
	add	r1, r7, #4
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r5
	add	r1, r7, #5
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r3, #1
	mov	r2, #6
	str	r4, [sp]
	add	r1, r7, #6
	mov	lr, pc
	bx	r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	drawRect
	.size	drawTwo, .-drawTwo
	.align	2
	.global	drawThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawThree, %function
drawThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r2
	mov	r7, r0
	sub	sp, sp, #8
	add	r8, r0, #1
	ldr	r5, .L16
	add	r10, r1, r3
	mov	r0, r8
	str	r2, [sp]
	mov	r2, #4
	mov	r6, r1
	mov	lr, pc
	bx	r5
	mov	r1, r10
	mov	r0, r7
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #2
	add	r9, r7, #4
	mov	r1, r10
	mov	r0, r9
	mov	r2, r3
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	r1, r6, #3
	add	r0, r7, #2
	mov	r3, #1
	mov	r2, #3
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #2
	mov	r0, r9
	mov	r2, r3
	add	r1, r6, #4
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r7
	add	r1, r6, #5
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r8
	mov	r3, #1
	mov	r2, #4
	str	r4, [sp]
	add	r1, r6, #6
	mov	lr, pc
	bx	r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	drawRect
	.size	drawThree, .-drawThree
	.align	2
	.global	wins
	.syntax unified
	.arm
	.fpu softvfp
	.type	wins, %function
wins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r1
	sub	sp, sp, #28
	mov	r4, r2
	ldr	r6, .L20
	str	r2, [sp]
	mov	r3, #6
	mov	r2, #1
	mov	r5, r0
	mov	lr, pc
	bx	r6
	add	r3, r7, #4
	mov	r8, r3
	mov	r1, r7
	add	r0, r5, #4
	mov	r3, #6
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	add	r9, r7, #6
	mov	r3, #2
	mov	r1, r8
	add	r0, r5, #2
	mov	r2, #1
	str	r4, [sp]
	str	r8, [sp, #16]
	ldr	r8, .L20+4
	mov	lr, pc
	bx	r6
	mov	r1, r9
	mov	r2, r4
	add	r0, r5, #1
	mov	lr, pc
	bx	r8
	add	r10, r5, #6
	mov	r2, r4
	mov	r1, r9
	add	r0, r5, #3
	mov	lr, pc
	bx	r8
	mov	r0, r10
	mov	r1, r7
	mov	r3, #1
	mov	r2, #3
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	add	r3, r7, #1
	mov	fp, r3
	mov	r0, r10
	mov	r1, r9
	mov	r3, #1
	mov	r2, #3
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, fp
	add	r0, r5, #7
	mov	r3, #5
	mov	r2, #1
	str	r4, [sp]
	str	fp, [sp, #12]
	mov	lr, pc
	bx	r6
	mov	r1, r7
	add	r0, r5, #10
	mov	r3, #7
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, r7
	mov	r3, #7
	add	r0, r5, #13
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	add	fp, r7, #3
	mov	r2, r4
	add	r1, r7, #2
	add	r0, r5, #11
	mov	lr, pc
	bx	r8
	add	r3, r5, #15
	mov	r1, fp
	mov	r2, r4
	add	r0, r5, #12
	add	r10, r5, #16
	str	r3, [sp, #20]
	mov	lr, pc
	bx	r8
	ldr	r1, [sp, #12]
	add	r0, r5, #15
	mov	r3, #2
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r10
	mov	r1, r7
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, fp
	mov	r0, r10
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	add	fp, r5, #18
	mov	r0, r10
	mov	r1, r9
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #2
	mov	r0, fp
	ldr	r1, [sp, #16]
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r0, fp
	ldr	r1, [sp, #12]
	mov	lr, pc
	bx	r8
	add	r5, r5, #20
	mov	r2, r4
	ldr	r0, [sp, #20]
	add	r1, r7, #5
	mov	lr, pc
	bx	r8
	mov	r1, r7
	mov	r0, r5
	mov	r3, #5
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r1, r9
	mov	r0, r5
	mov	lr, pc
	bx	r8
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	drawRect
	.word	setPixel
	.size	wins, .-wins
	.align	2
	.global	winner
	.syntax unified
	.arm
	.fpu softvfp
	.type	winner, %function
winner:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	mov	r4, r3
	str	r3, [sp]
	mov	r3, #1
	mov	r6, r0
	mov	r7, r1
	ldr	r5, .L27
	add	r8, r1, r3
	str	r2, [sp, #12]
	mov	r2, #3
	mov	lr, pc
	bx	r5
	mov	r1, r8
	mov	r0, r6
	mov	r3, #6
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	r9, r7, #3
	mov	r1, r8
	mov	r3, #2
	mov	r2, #1
	add	r0, r6, #3
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	r10, r6, #5
	mov	r1, r9
	mov	r3, #1
	mov	r2, #2
	add	r0, r6, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r10
	mov	r1, r7
	mov	r3, #6
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	fp, r6, #11
	mov	r0, r10
	mov	r3, #1
	mov	r2, #4
	add	r1, r7, #6
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, fp
	mov	r1, r7
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r8
	mov	r3, #6
	mov	r2, #1
	add	r0, r6, #10
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r8
	mov	r3, #6
	mov	r2, #1
	add	r0, r6, #13
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	r10, r6, #15
	mov	r0, fp
	mov	r1, r9
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r10
	mov	r1, r7
	mov	r3, #3
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	fp, r6, #16
	mov	r1, r7
	mov	r3, #6
	mov	r2, #1
	add	r0, r6, #18
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, fp
	mov	r1, r9
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, fp
	add	fp, r7, #6
	mov	r1, fp
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r10
	mov	r2, r4
	add	r10, r6, #20
	ldr	r3, .L27+4
	add	r1, r7, #5
	mov	lr, pc
	bx	r3
	mov	r0, r10
	mov	r1, r7
	mov	r3, #6
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r10
	mov	r1, r7
	mov	r3, #1
	mov	r2, #4
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, fp
	mov	r0, r10
	mov	r3, #1
	mov	r2, #4
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	fp, r6, #26
	mov	r0, r10
	mov	r1, r9
	mov	r3, #1
	mov	r2, #3
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, fp
	mov	r1, r7
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	r10, r6, #28
	mov	r1, r8
	mov	r3, #6
	mov	r2, #1
	add	r0, r6, #25
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r8
	mov	r0, r10
	mov	r3, #2
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r10
	mov	r3, #3
	mov	r2, #1
	add	r1, r7, #4
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r9
	mov	r0, fp
	mov	r3, #1
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #12]
	cmp	r3, #1
	mov	r2, r4
	mov	r1, r7
	add	r0, r6, #34
	beq	.L26
	bl	drawTwo
	mov	r2, r4
	mov	r1, r7
	add	r0, r6, #44
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	wins
.L26:
	bl	drawOne
	mov	r2, r4
	mov	r1, r7
	add	r0, r6, #43
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	wins
.L28:
	.align	2
.L27:
	.word	drawRect
	.word	setPixel
	.size	winner, .-winner
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	mov	r5, r2
	mov	r6, r3
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L30
.L32:
	.word	.L35
	.word	.L34
	.word	.L33
	.word	.L31
.L35:
	ldr	r3, .L43
	ldr	r1, [r3]
	ldr	r0, [r3, #4]
	bl	drawZero
.L30:
	cmp	r4, #3
	ldrls	pc, [pc, r4, asl #2]
	b	.L29
.L38:
	.word	.L41
	.word	.L40
	.word	.L39
	.word	.L37
.L37:
	ldr	r4, .L43
	mov	r2, r6
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
	bl	drawTwo
	mov	r2, r5
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawThree
.L39:
	ldr	r4, .L43
	mov	r2, r6
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
	bl	drawOne
	mov	r2, r5
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawTwo
.L40:
	ldr	r4, .L43
	mov	r2, r6
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
	bl	drawZero
	mov	r2, r5
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawOne
.L41:
	ldr	r3, .L43
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, [r3, #8]
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawZero
.L31:
	ldr	r7, .L43
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	drawTwo
	mov	r2, r5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	drawThree
	b	.L30
.L34:
	ldr	r7, .L43
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	drawZero
	mov	r2, r5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	drawOne
	b	.L30
.L33:
	ldr	r7, .L43
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	drawOne
	mov	r2, r5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	drawTwo
	b	.L30
.L29:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
	.size	drawScore, .-drawScore
	.global	py
	.global	p2x
	.global	p1x
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	py, %object
	.size	py, 4
py:
	.word	30
	.type	p1x, %object
	.size	p1x, 4
p1x:
	.word	60
	.type	p2x, %object
	.size	p2x, 4
p2x:
	.word	180
	.ident	"GCC: (devkitARM release 53) 9.1.0"
