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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mvn	r2, #32768
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #0
	mov	r4, #80
	ldr	r6, .L4
	ldr	r0, .L4+4
	ldr	r7, .L4+8
	ldr	r3, .L4+12
	strh	r2, [r6]	@ movhi
	strh	r0, [r7]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r1, .L4+16
	ldr	r0, .L4+20
	ldr	ip, .L4+24
	ldrh	r3, [r7]
	ldrh	r2, [r6]
	str	r5, [r1]
	str	r5, [r0]
	mov	r1, r5
	mov	r0, r5
	ldr	r7, .L4+28
	str	r5, [ip]
	mov	lr, pc
	bx	r7
	ldr	r0, .L4+32
	ldr	r3, .L4+36
	ldr	lr, .L4+40
	ldr	ip, .L4+44
	mov	r1, r4
	ldrh	r2, [r6]
	str	r4, [r0]
	str	r4, [r3]
	mov	r0, r4
	ldr	r3, .L4+48
	str	r4, [lr]
	str	r4, [ip]
	mov	lr, pc
	bx	r3
	mov	r0, #120
	ldr	r3, .L4+52
	ldr	lr, .L4+56
	ldr	ip, .L4+60
	ldr	r6, .L4+64
	mov	r2, r5
	mov	r1, r4
	str	r4, [r3]
	ldr	r3, .L4+68
	str	r0, [lr]
	str	r0, [ip]
	str	r4, [r6]
	mov	lr, pc
	bx	r3
	mov	lr, #2
	mov	r0, #1
	mov	r3, #67108864
	ldr	ip, .L4+72
	ldr	r1, .L4+76
	ldr	r2, .L4+80
	str	lr, [ip]
	str	r0, [r1]
	pop	{r4, r5, r6, r7, r8, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L5:
	.align	2
.L4:
	.word	fgColor
	.word	30495
	.word	bgColor
	.word	fillScreen
	.word	time
	.word	p1
	.word	p2
	.word	drawScore
	.word	y1
	.word	y2
	.word	oldy1
	.word	oldy2
	.word	drawPaddles
	.word	oldBY
	.word	bX
	.word	oldBX
	.word	bY
	.word	drawBall
	.word	ballVX
	.word	ballVY
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L8
	ldr	r5, .L8+4
	ldr	r6, .L8+8
	ldr	r7, .L8+12
	ldr	r8, .L8+16
	ldr	r9, .L8+20
	ldrh	r2, [r4]
	ldr	r1, [r5]
	ldr	r0, [r6]
	ldr	r10, .L8+24
	mov	lr, pc
	bx	r10
	ldrh	r2, [r7]
	ldr	r1, [r8]
	ldr	r0, [r9]
	mov	lr, pc
	bx	r10
	ldr	r1, .L8+28
	ldr	r0, .L8+32
	ldr	lr, [r9]
	ldr	ip, [r8]
	ldrh	r2, [r7]
	ldrh	r3, [r4]
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r7, .L8+36
	str	lr, [r6]
	str	ip, [r5]
	mov	lr, pc
	bx	r7
	ldr	r3, .L8+40
	ldr	r1, .L8+44
	ldrh	r2, [r4]
	ldr	r0, [r3]
	ldr	r4, .L8+48
	ldr	r1, [r1]
	mov	lr, pc
	bx	r4
	ldr	r2, .L8+52
	ldr	r3, .L8+56
	ldr	r1, [r2]
	ldr	r0, [r3]
	mov	r2, #0
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	bgColor
	.word	oldy2
	.word	oldy1
	.word	fgColor
	.word	y2
	.word	y1
	.word	drawPaddles
	.word	p2
	.word	p1
	.word	drawScore
	.word	oldBX
	.word	oldBY
	.word	drawBall
	.word	bY
	.word	bX
	.size	draw, .-draw
	.align	2
	.global	score
	.syntax unified
	.arm
	.fpu softvfp
	.type	score, %function
score:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #1
	ldreq	r2, .L13
	ldrne	r2, .L13+4
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L14:
	.align	2
.L13:
	.word	p1
	.word	p2
	.size	score, .-score
	.align	2
	.global	endGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	endGame, %function
endGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L19
	ldr	r2, [r3]
	ldr	r3, .L19+4
	cmp	r2, #3
	push	{r4, lr}
	moveq	r2, #1
	movne	r2, #2
	mov	r1, #100
	mov	r0, #90
	ldrh	r3, [r3]
	ldr	r4, .L19+8
	mov	lr, pc
	bx	r4
	mov	lr, #120
	mov	r3, #0
	mov	ip, #80
	ldr	r2, .L19+12
	ldr	r0, .L19+16
	str	lr, [r2]
	ldr	r1, .L19+20
	ldr	r2, .L19+24
	str	ip, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	p1
	.word	fgColor
	.word	winner
	.word	bX
	.word	bY
	.word	ballVX
	.word	ballVY
	.size	endGame, .-endGame
	.align	2
	.global	restartGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	restartGame, %function
restartGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L25
	ldr	r3, [r4]
	ldr	r5, .L25+4
	cmp	r3, #3
	moveq	r2, #1
	movne	r2, #2
	ldrh	r3, [r5]
	mov	r1, #100
	mov	r0, #90
	ldr	r6, .L25+8
	mov	lr, pc
	bx	r6
	ldrh	r3, [r5]
	ldr	r5, .L25+12
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r4]
	ldr	r6, .L25+16
	mov	lr, pc
	bx	r6
	mov	r3, #0
	mov	ip, #2
	mov	r1, #1
	ldr	r0, .L25+20
	ldr	r2, .L25+24
	str	r3, [r5]
	str	r3, [r4]
	str	ip, [r0]
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	p1
	.word	bgColor
	.word	winner
	.word	p2
	.word	drawScore
	.word	ballVX
	.word	ballVY
	.size	restartGame, .-restartGame
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L38
	ldr	r3, .L38+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	tst	r3, #1
	beq	.L36
.L28:
	ldr	r2, .L38+8
	ldr	r2, [r2]
	add	r3, r3, #3
	cmp	r2, #3
	str	r3, [r4]
	beq	.L29
	ldr	r3, .L38+12
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L29
.L30:
	ldr	r3, .L38+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L27
	ldr	r3, .L38+20
	ldrh	r3, [r3, #48]
	tst	r3, #256
	beq	.L37
.L27:
	pop	{r4, lr}
	bx	lr
.L29:
	bl	endGame
	b	.L30
.L36:
	ldr	r3, .L38+24
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	b	.L28
.L37:
	pop	{r4, lr}
	b	restartGame
.L39:
	.align	2
.L38:
	.word	time
	.word	updatePaddles
	.word	p1
	.word	p2
	.word	ballVX
	.word	67109120
	.word	updateBall
	.size	updateGame, .-updateGame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	ldr	r3, .L43
	mov	lr, pc
	bx	r3
	ldr	r9, .L43+4
	ldr	r4, .L43+8
	ldr	r8, .L43+12
	ldr	r7, .L43+16
	ldr	r6, .L43+20
	ldr	r5, .L43+24
.L41:
	ldrh	r3, [r4]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L41
.L44:
	.align	2
.L43:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	updateGame
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.size	main, .-main
	.comm	time,4,4
	.comm	py,4,4
	.comm	p2x,4,4
	.comm	p1x,4,4
	.comm	p2,4,4
	.comm	p1,4,4
	.comm	fgColor,2,2
	.comm	bgColor,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
