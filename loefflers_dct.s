	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"loefflers_dct.c"
	.text
	.align	2
	.global	dct_round1
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	dct_round1, %function
dct_round1:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	add	fp, sp, #28
	sub	sp, sp, #32
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	ldr	r3, [fp, #-56]
	mov	ip, r3
	ldr	r10, [fp, #-60]
	mov	r3, #0
	mov	r0, r3
	b	.L2
.L19:
	mov	r3, ip
	add	r2, r3, #4
	ldr	r5, [r3]
	mov	r3, r2
	add	r2, r3, #4
	mov	ip, r2
	ldr	r4, [r3]
	lsl	r3, r5, #8
	and	r2, r3, #16711680
	uxtb	r3, r5
	orr	r9, r2, r3
	mov	r3, r5
	lsr	r3, r3, #8
	and	r2, r3, #16711680
	asr	r3, r5, #16
	uxtb	r3, r3
	orr	r3, r2, r3
	mov	r8, r3
	lsl	r3, r4, #8
	and	r2, r3, #16711680
	uxtb	r3, r4
	orr	r7, r2, r3
	mov	r3, r4
	lsr	r3, r3, #8
	and	r2, r3, #16711680
	asr	r3, r4, #16
	uxtb	r3, r3
	orr	r3, r2, r3
	mov	r6, r3
	mov	r4, r9
	mov	r3, r4
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	sxth	r2, r4
	mov	r1, r2
	asr	r2, r6, #16
	sxth	r2, r2
	add	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r9, r3
	uxth	r2, r6
	sxth	r3, r4
	mov	r1, r3
	asr	r3, r6, #16
	sxth	r3, r3
	sub	r3, r1, r3
	lsl	r3, r3, #16
	orr	r6, r2, r3
	mov	r4, r9
	uxth	r2, r4
	asr	r3, r4, #16
	sxth	r3, r3
	mov	r1, r3
	sxth	r3, r6
	add	r3, r1, r3
	lsl	r3, r3, #16
	orr	r9, r2, r3
	mov	r3, r6
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r2, r4, #16
	sxth	r2, r2
	mov	r1, r2
	sxth	r2, r6
	sub	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r6, r3
	mov	r4, r8
	mov	r3, r4
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	sxth	r2, r4
	mov	r1, r2
	asr	r2, r7, #16
	sxth	r2, r2
	add	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r8, r3
	uxth	r2, r7
	sxth	r3, r4
	mov	r1, r3
	asr	r3, r7, #16
	sxth	r3, r3
	sub	r3, r1, r3
	lsl	r3, r3, #16
	orr	r7, r2, r3
	mov	r4, r8
	uxth	r2, r4
	asr	r3, r4, #16
	sxth	r3, r3
	mov	r1, r3
	sxth	r3, r7
	add	r3, r1, r3
	lsl	r3, r3, #16
	orr	r8, r2, r3
	mov	r3, r7
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r2, r4, #16
	sxth	r2, r2
	mov	r1, r2
	sxth	r2, r7
	sub	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r7, r3
	asr	r3, r9, #16
	sxth	r3, r3
	mov	r5, r3
	sxth	r3, r9
	mov	r9, r3
	asr	r3, r8, #16
	sxth	r3, r3
	mov	r4, r3
	sxth	r3, r8
	mov	r8, r3
	mov	r3, r9
	add	r9, r3, r4
	sub	r4, r3, r4
	mov	r3, r5
	add	r5, r3, r8
	sub	r8, r3, r8
	mov	r3, r9
	add	r9, r3, r5
	sub	r5, r3, r5
	add	r3, r8, r4
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	movw	r2, #35468
	mul	r3, r2, r3
	str	r3, [fp, #-32]
	movw	r3, #50159
	mul	r3, r3, r4
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	movw	r3, #9977
	movt	r3, 65534
	mul	r4, r3, r8
	mov	r2, r4
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	mov	r4, r3
	ldr	r8, [fp, #-36]
	and	r3, r8, #32768
	cmp	r3, #0
	beq	.L3
	asr	r3, r8, #16
	add	r3, r3, #1
	b	.L4
.L3:
	asr	r3, r8, #16
.L4:
	mov	r8, r3
	and	r3, r4, #32768
	cmp	r3, #0
	beq	.L5
	asr	r3, r4, #16
	add	r3, r3, #1
	b	.L6
.L5:
	asr	r3, r4, #16
.L6:
	mov	r4, r3
	uxth	r9, r9
	uxth	r8, r8
	lsl	r3, r5, #16
	orr	r9, r9, r3
	lsl	r3, r4, #16
	orr	r8, r8, r3
	asr	r3, r7, #16
	sxth	r3, r3
	mov	r5, r3
	sxth	r3, r7
	mov	r7, r3
	asr	r3, r6, #16
	sxth	r3, r3
	mov	r4, r3
	sxth	r3, r6
	mov	r6, r3
	add	r3, r7, r4
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	movw	r2, #54491
	mul	r3, r2, r3
	str	r3, [fp, #-40]
	mov	r3, r4
	lsl	r3, r3, #3
	add	r3, r3, r4
	lsl	r3, r3, #5
	sub	r3, r3, r4
	lsl	r2, r3, #6
	sub	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	movw	r3, #40171
	movt	r3, 65534
	mul	r4, r3, r7
	mov	r2, r4
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r4, r3
	ldr	r7, [fp, #-44]
	and	r3, r7, #32768
	cmp	r3, #0
	beq	.L7
	asr	r3, r7, #16
	add	r3, r3, #1
	b	.L8
.L7:
	asr	r3, r7, #16
.L8:
	mov	r7, r3
	and	r3, r4, #32768
	cmp	r3, #0
	beq	.L9
	asr	r3, r4, #16
	add	r3, r3, #1
	b	.L10
.L9:
	asr	r3, r4, #16
.L10:
	mov	r4, r3
	add	r3, r5, r6
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	movw	r2, #64277
	mul	r3, r2, r3
	str	r3, [fp, #-48]
	movw	r3, #14045
	movt	r3, 65535
	mul	r3, r3, r6
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-52]
	movw	r3, #54010
	movt	r3, 65534
	mul	r6, r3, r5
	mov	r2, r6
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	mov	r6, r3
	ldr	r5, [fp, #-52]
	and	r3, r5, #32768
	cmp	r3, #0
	beq	.L11
	asr	r3, r5, #16
	add	r3, r3, #1
	b	.L12
.L11:
	asr	r3, r5, #16
.L12:
	mov	r5, r3
	and	r3, r6, #32768
	cmp	r3, #0
	beq	.L13
	asr	r3, r6, #16
	add	r3, r3, #1
	b	.L14
.L13:
	asr	r3, r6, #16
.L14:
	mov	r6, r3
	mov	r3, r7
	add	r7, r3, r6
	sub	r6, r3, r6
	mov	r3, r4
	add	r4, r3, r5
	sub	r5, r3, r5
	mov	r3, r4
	add	r4, r3, r7
	sub	r7, r3, r7
	movw	r3, #27146
	movt	r3, 1
	mul	r5, r3, r5
	and	r3, r5, #32768
	cmp	r3, #0
	beq	.L15
	asr	r3, r5, #16
	add	r3, r3, #1
	b	.L16
.L15:
	asr	r3, r5, #16
.L16:
	mov	r5, r3
	movw	r3, #27146
	movt	r3, 1
	mul	r6, r3, r6
	and	r3, r6, #32768
	cmp	r3, #0
	beq	.L17
	asr	r3, r6, #16
	add	r3, r3, #1
	b	.L18
.L17:
	asr	r3, r6, #16
.L18:
	mov	r6, r3
	lsl	r1, r4, #16
	uxth	r2, r9
	mov	r3, r10
	add	r10, r3, #4
	orr	r2, r1, r2
	str	r2, [r3]
	lsl	r1, r5, #16
	uxth	r2, r8
	mov	r3, r10
	add	r10, r3, #4
	orr	r2, r1, r2
	str	r2, [r3]
	lsl	r3, r6, #16
	mov	r2, r3
	mov	r3, r9
	lsr	r3, r3, #16
	orr	r2, r2, r3
	mov	r3, r10
	add	r10, r3, #4
	str	r2, [r3]
	lsl	r3, r7, #16
	mov	r2, r3
	mov	r3, r8
	lsr	r3, r3, #16
	orr	r2, r2, r3
	mov	r3, r10
	add	r10, r3, #4
	str	r2, [r3]
	mov	r3, r0
	add	r3, r3, #1
	mov	r0, r3
.L2:
	mov	r3, r0
	cmp	r3, #9600
	blt	.L19
	nop
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
	.size	dct_round1, .-dct_round1
	.align	2
	.global	dct_round2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	dct_round2, %function
dct_round2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	add	fp, sp, #28
	sub	sp, sp, #32
	str	r0, [fp, #-56]
	ldr	r7, [fp, #-56]
	mov	r3, #0
	mov	r0, r3
	b	.L21
.L56:
	add	r3, r7, #640
	ldrsh	r3, [r3]
	lsl	r2, r3, #16
	ldrsh	r3, [r7]
	uxth	r3, r3
	orr	r10, r2, r3
	add	r3, r7, #1920
	ldrsh	r3, [r3]
	lsl	r2, r3, #16
	add	r3, r7, #1280
	ldrsh	r3, [r3]
	uxth	r3, r3
	orr	r8, r2, r3
	add	r3, r7, #3200
	ldrsh	r3, [r3]
	lsl	r2, r3, #16
	add	r3, r7, #2560
	ldrsh	r3, [r3]
	uxth	r3, r3
	orr	r9, r2, r3
	add	r3, r7, #4480
	ldrsh	r3, [r3]
	lsl	r2, r3, #16
	add	r3, r7, #3840
	ldrsh	r3, [r3]
	uxth	r3, r3
	orr	r4, r2, r3
	mov	r5, r10
	mov	r3, r5
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	sxth	r2, r5
	mov	r1, r2
	asr	r2, r4, #16
	sxth	r2, r2
	add	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r10, r3
	uxth	r2, r4
	sxth	r3, r5
	mov	r1, r3
	asr	r3, r4, #16
	sxth	r3, r3
	sub	r3, r1, r3
	lsl	r3, r3, #16
	orr	r4, r2, r3
	mov	r5, r10
	uxth	r2, r5
	asr	r3, r5, #16
	sxth	r3, r3
	mov	r1, r3
	sxth	r3, r4
	add	r3, r1, r3
	lsl	r3, r3, #16
	orr	r10, r2, r3
	mov	r3, r4
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r2, r5, #16
	sxth	r2, r2
	mov	r1, r2
	sxth	r2, r4
	sub	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r4, r3
	mov	r5, r8
	mov	r3, r5
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	sxth	r2, r5
	mov	r1, r2
	asr	r2, r9, #16
	sxth	r2, r2
	add	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r8, r3
	uxth	r2, r9
	sxth	r3, r5
	mov	r1, r3
	asr	r3, r9, #16
	sxth	r3, r3
	sub	r3, r1, r3
	lsl	r3, r3, #16
	orr	r9, r2, r3
	mov	r5, r8
	uxth	r2, r5
	asr	r3, r5, #16
	sxth	r3, r3
	mov	r1, r3
	sxth	r3, r9
	add	r3, r1, r3
	lsl	r3, r3, #16
	orr	r8, r2, r3
	mov	r3, r9
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r2, r5, #16
	sxth	r2, r2
	mov	r1, r2
	sxth	r2, r9
	sub	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r9, r3
	asr	r3, r10, #16
	sxth	r3, r3
	mov	r6, r3
	sxth	r3, r10
	mov	r10, r3
	asr	r3, r8, #16
	sxth	r3, r3
	mov	r5, r3
	sxth	r3, r8
	mov	r8, r3
	mov	r3, r10
	add	r10, r3, r5
	sub	r5, r3, r5
	mov	r3, r6
	add	r6, r3, r8
	sub	r8, r3, r8
	mov	r3, r10
	add	r10, r3, r6
	sub	r6, r3, r6
	add	r3, r8, r5
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	movw	r2, #35468
	mul	r3, r2, r3
	str	r3, [fp, #-32]
	movw	r3, #50159
	mul	r3, r3, r5
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	movw	r3, #9977
	movt	r3, 65534
	mul	r5, r3, r8
	mov	r2, r5
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	mov	r5, r3
	ldr	r8, [fp, #-36]
	and	r3, r8, #32768
	cmp	r3, #0
	beq	.L22
	asr	r3, r8, #16
	add	r3, r3, #1
	b	.L23
.L22:
	asr	r3, r8, #16
.L23:
	mov	r8, r3
	and	r3, r5, #32768
	cmp	r3, #0
	beq	.L24
	asr	r3, r5, #16
	add	r3, r3, #1
	b	.L25
.L24:
	asr	r3, r5, #16
.L25:
	mov	r5, r3
	uxth	r10, r10
	uxth	r8, r8
	lsl	r3, r6, #16
	orr	r10, r10, r3
	lsl	r3, r5, #16
	orr	r8, r8, r3
	asr	r3, r9, #16
	sxth	r3, r3
	mov	r6, r3
	sxth	r3, r9
	mov	r9, r3
	asr	r3, r4, #16
	sxth	r3, r3
	mov	r5, r3
	sxth	r3, r4
	mov	r4, r3
	add	r3, r9, r5
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	movw	r2, #54491
	mul	r3, r2, r3
	str	r3, [fp, #-40]
	mov	r3, r5
	lsl	r3, r3, #3
	add	r3, r3, r5
	lsl	r3, r3, #5
	sub	r3, r3, r5
	lsl	r2, r3, #6
	sub	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	movw	r3, #40171
	movt	r3, 65534
	mul	r5, r3, r9
	mov	r2, r5
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r5, r3
	ldr	r9, [fp, #-44]
	and	r3, r9, #32768
	cmp	r3, #0
	beq	.L26
	asr	r3, r9, #16
	add	r3, r3, #1
	b	.L27
.L26:
	asr	r3, r9, #16
.L27:
	mov	r9, r3
	and	r3, r5, #32768
	cmp	r3, #0
	beq	.L28
	asr	r3, r5, #16
	add	r3, r3, #1
	b	.L29
.L28:
	asr	r3, r5, #16
.L29:
	mov	r5, r3
	add	r3, r6, r4
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	movw	r2, #64277
	mul	r3, r2, r3
	str	r3, [fp, #-48]
	movw	r3, #14045
	movt	r3, 65535
	mul	r3, r3, r4
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-52]
	movw	r3, #54010
	movt	r3, 65534
	mul	r4, r3, r6
	mov	r2, r4
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	mov	r4, r3
	ldr	r6, [fp, #-52]
	and	r3, r6, #32768
	cmp	r3, #0
	beq	.L30
	asr	r3, r6, #16
	add	r3, r3, #1
	b	.L31
.L30:
	asr	r3, r6, #16
.L31:
	mov	r6, r3
	and	r3, r4, #32768
	cmp	r3, #0
	beq	.L32
	asr	r3, r4, #16
	add	r3, r3, #1
	b	.L33
.L32:
	asr	r3, r4, #16
.L33:
	mov	r4, r3
	mov	r3, r9
	add	r9, r3, r4
	sub	r4, r3, r4
	mov	r3, r5
	add	r5, r3, r6
	sub	r6, r3, r6
	mov	r3, r5
	add	r5, r3, r9
	sub	r9, r3, r9
	movw	r3, #27146
	movt	r3, 1
	mul	r6, r3, r6
	and	r3, r6, #32768
	cmp	r3, #0
	beq	.L34
	asr	r3, r6, #16
	add	r3, r3, #1
	b	.L35
.L34:
	asr	r3, r6, #16
.L35:
	mov	r6, r3
	movw	r3, #27146
	movt	r3, 1
	mul	r4, r3, r4
	and	r3, r4, #32768
	cmp	r3, #0
	beq	.L36
	asr	r3, r4, #16
	add	r3, r3, #1
	b	.L37
.L36:
	asr	r3, r4, #16
.L37:
	mov	r4, r3
	uxth	r3, r10
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L38
	sxth	r3, r10
	asr	r3, r3, #3
	sxth	r3, r3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L39
.L38:
	sxth	r3, r10
	asr	r3, r3, #3
	sxth	r3, r3
.L39:
	strh	r3, [r7]	@ movhi
	and	r3, r5, #4
	cmp	r3, #0
	beq	.L40
	asr	r3, r5, #3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L41
.L40:
	asr	r3, r5, #3
	sxth	r3, r3
.L41:
	add	r2, r7, #640
	strh	r3, [r2]	@ movhi
	uxth	r3, r8
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L42
	sxth	r3, r8
	asr	r3, r3, #3
	sxth	r3, r3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L43
.L42:
	sxth	r3, r8
	asr	r3, r3, #3
	sxth	r3, r3
.L43:
	add	r2, r7, #1280
	strh	r3, [r2]	@ movhi
	and	r3, r6, #4
	cmp	r3, #0
	beq	.L44
	asr	r3, r6, #3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L45
.L44:
	asr	r3, r6, #3
	sxth	r3, r3
.L45:
	add	r2, r7, #1920
	strh	r3, [r2]	@ movhi
	asr	r3, r10, #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L46
	asr	r3, r10, #19
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L47
.L46:
	asr	r3, r10, #19
	sxth	r3, r3
.L47:
	add	r2, r7, #2560
	strh	r3, [r2]	@ movhi
	and	r3, r4, #4
	cmp	r3, #0
	beq	.L48
	asr	r3, r4, #3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L49
.L48:
	asr	r3, r4, #3
	sxth	r3, r3
.L49:
	add	r2, r7, #3200
	strh	r3, [r2]	@ movhi
	asr	r3, r8, #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L50
	asr	r3, r8, #19
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L51
.L50:
	asr	r3, r8, #19
	sxth	r3, r3
.L51:
	add	r2, r7, #3840
	strh	r3, [r2]	@ movhi
	and	r3, r9, #4
	cmp	r3, #0
	beq	.L52
	asr	r3, r9, #3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L53
.L52:
	asr	r3, r9, #3
	sxth	r3, r3
.L53:
	add	r2, r7, #4480
	strh	r3, [r2]	@ movhi
	mov	r3, r0
	add	r1, r3, #1
	movw	r3, #26215
	movt	r3, 26214
	smull	r2, r3, r3, r1
	asr	r2, r3, #7
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #6
	sub	r2, r1, r3
	cmp	r2, #0
	beq	.L54
	mov	r3, #2
	b	.L55
.L54:
	movw	r3, #4482
.L55:
	add	r7, r7, r3
	mov	r3, r0
	add	r3, r3, #1
	mov	r0, r3
.L21:
	mov	r3, r0
	cmp	r3, #9600
	blt	.L56
	nop
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
	.size	dct_round2, .-dct_round2
	.align	2
	.global	loeffler
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	loeffler, %function
loeffler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	dct_round1
	ldr	r0, [fp, #-12]
	bl	dct_round2
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	loeffler, .-loeffler
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
