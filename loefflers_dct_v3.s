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
	.file	"loefflers_dct_v3.c"
	.text
	.align	2
	.global	dct_round1
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	dct_round1, %function
dct_round1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	add	fp, sp, #28
	sub	sp, sp, #8
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	ip, r3
	ldr	r10, [fp, #-36]
	mov	r3, #0
	mov	r0, r3
	b	.L2
.L7:
	mov	r3, ip
	add	r2, r3, #4
	ldr	r4, [r3]
	mov	r3, r2
	add	r2, r3, #4
	mov	ip, r2
	ldr	r6, [r3]
	lsl	r3, r4, #8
	and	r2, r3, #16711680
	uxtb	r3, r4
	orr	r9, r2, r3
	mov	r3, r4
	lsr	r3, r3, #8
	and	r2, r3, #16711680
	asr	r3, r4, #16
	uxtb	r3, r3
	orr	r3, r2, r3
	mov	r7, r3
	lsl	r3, r6, #8
	and	r2, r3, #16711680
	uxtb	r3, r6
	orr	r5, r2, r3
	mov	r3, r6
	lsr	r3, r3, #8
	and	r2, r3, #16711680
	asr	r3, r6, #16
	uxtb	r3, r3
	orr	r3, r2, r3
	mov	r8, r3
	mov	r4, r9
	mov	r3, r4
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	sxth	r2, r4
	mov	r1, r2
	asr	r2, r8, #16
	sxth	r2, r2
	add	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r9, r3
	uxth	r2, r8
	sxth	r3, r4
	mov	r1, r3
	asr	r3, r8, #16
	sxth	r3, r3
	sub	r3, r1, r3
	lsl	r3, r3, #16
	orr	r8, r2, r3
	mov	r4, r9
	uxth	r2, r4
	asr	r3, r4, #16
	sxth	r3, r3
	mov	r1, r3
	sxth	r3, r8
	add	r3, r1, r3
	lsl	r3, r3, #16
	orr	r9, r2, r3
	mov	r3, r8
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r2, r4, #16
	sxth	r2, r2
	mov	r1, r2
	sxth	r2, r8
	sub	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r8, r3
	mov	r4, r7
	mov	r3, r4
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	sxth	r2, r4
	mov	r1, r2
	asr	r2, r5, #16
	sxth	r2, r2
	add	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r7, r3
	uxth	r2, r5
	sxth	r3, r4
	mov	r1, r3
	asr	r3, r5, #16
	sxth	r3, r3
	sub	r3, r1, r3
	lsl	r3, r3, #16
	orr	r5, r2, r3
	mov	r4, r7
	uxth	r2, r4
	asr	r3, r4, #16
	sxth	r3, r3
	mov	r1, r3
	sxth	r3, r5
	add	r3, r1, r3
	lsl	r3, r3, #16
	orr	r7, r2, r3
	mov	r3, r5
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r2, r4, #16
	sxth	r2, r2
	mov	r1, r2
	sxth	r2, r5
	sub	r2, r1, r2
	uxth	r2, r2
	orr	r3, r3, r2
	mov	r5, r3
	asr	r3, r9, #16
	sxth	r3, r3
	mov	r4, r3
	sxth	r3, r9
	mov	r9, r3
	asr	r3, r7, #16
	sxth	r3, r3
	mov	r6, r3
	sxth	r3, r7
	mov	r7, r3
	mov	r3, r9
	add	r9, r3, r6
	sub	r6, r3, r6
	mov	r3, r4
	add	r4, r3, r7
	sub	r7, r3, r7
	mov	r3, r9
	add	r9, r3, r4
	sub	r4, r3, r4
	uxth	r7, r7
	uxth	r6, r6
	lsl	r7, r7, #16
	orr	r7, r7, r6
	mov	r3, #3
	.syntax divided
@ 75 "loefflers_dct_v3.c" 1
	btrfly r3, r7, r3
@ 0 "" 2
	.arm
	.syntax unified
	mov	r6, r3
	lsr	r7, r6, #16
	lsl	r7, r7, #16
	asr	r7, r7, #16
	sxth	r3, r7
	mov	r7, r3
	uxth	r6, r6
	sxth	r3, r6
	mov	r6, r3
	uxth	r9, r9
	uxth	r7, r7
	lsl	r3, r4, #16
	orr	r9, r9, r3
	lsl	r3, r6, #16
	orr	r7, r7, r3
	asr	r3, r5, #16
	sxth	r3, r3
	mov	r4, r3
	sxth	r3, r5
	mov	r5, r3
	asr	r3, r8, #16
	sxth	r3, r3
	mov	r6, r3
	sxth	r3, r8
	mov	r8, r3
	uxth	r5, r5
	uxth	r6, r6
	lsl	r5, r5, #16
	orr	r5, r5, r6
	mov	r3, #2
	.syntax divided
@ 88 "loefflers_dct_v3.c" 1
	btrfly r3, r5, r3
@ 0 "" 2
	.arm
	.syntax unified
	mov	r6, r3
	lsr	r5, r6, #16
	lsl	r5, r5, #16
	asr	r5, r5, #16
	sxth	r3, r5
	mov	r5, r3
	uxth	r6, r6
	sxth	r3, r6
	mov	r6, r3
	uxth	r4, r4
	uxth	r8, r8
	lsl	r4, r4, #16
	orr	r4, r4, r8
	mov	r3, #1
	.syntax divided
@ 89 "loefflers_dct_v3.c" 1
	btrfly r3, r4, r3
@ 0 "" 2
	.arm
	.syntax unified
	mov	r8, r3
	lsr	r4, r8, #16
	lsl	r4, r4, #16
	asr	r4, r4, #16
	sxth	r3, r4
	mov	r4, r3
	uxth	r8, r8
	sxth	r3, r8
	mov	r8, r3
	mov	r3, r5
	add	r5, r3, r8
	sub	r8, r3, r8
	mov	r3, r6
	add	r6, r3, r4
	sub	r4, r3, r4
	mov	r3, r6
	add	r6, r3, r5
	sub	r5, r3, r5
	movw	r3, #27146
	movt	r3, 1
	mul	r4, r3, r4
	and	r3, r4, #32768
	cmp	r3, #0
	beq	.L3
	asr	r3, r4, #16
	add	r3, r3, #1
	b	.L4
.L3:
	asr	r3, r4, #16
.L4:
	mov	r4, r3
	movw	r3, #27146
	movt	r3, 1
	mul	r8, r3, r8
	and	r3, r8, #32768
	cmp	r3, #0
	beq	.L5
	asr	r3, r8, #16
	add	r3, r3, #1
	b	.L6
.L5:
	asr	r3, r8, #16
.L6:
	mov	r8, r3
	lsl	r1, r6, #16
	uxth	r2, r9
	mov	r3, r10
	add	r10, r3, #4
	orr	r2, r1, r2
	str	r2, [r3]
	lsl	r1, r4, #16
	uxth	r2, r7
	mov	r3, r10
	add	r10, r3, #4
	orr	r2, r1, r2
	str	r2, [r3]
	lsl	r3, r8, #16
	mov	r2, r3
	mov	r3, r9
	lsr	r3, r3, #16
	orr	r2, r2, r3
	mov	r3, r10
	add	r10, r3, #4
	str	r2, [r3]
	lsl	r3, r5, #16
	mov	r2, r3
	mov	r3, r7
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
	blt	.L7
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	add	fp, sp, #28
	sub	sp, sp, #8
	str	r0, [fp, #-32]
	ldr	r8, [fp, #-32]
	mov	r3, #0
	mov	r0, r3
	b	.L9
.L32:
	add	r3, r8, #640
	ldrsh	r3, [r3]
	lsl	r2, r3, #16
	ldrsh	r3, [r8]
	uxth	r3, r3
	orr	r10, r2, r3
	add	r3, r8, #1920
	ldrsh	r3, [r3]
	lsl	r2, r3, #16
	add	r3, r8, #1280
	ldrsh	r3, [r3]
	uxth	r3, r3
	orr	r5, r2, r3
	add	r3, r8, #3200
	ldrsh	r3, [r3]
	lsl	r2, r3, #16
	add	r3, r8, #2560
	ldrsh	r3, [r3]
	uxth	r3, r3
	orr	r6, r2, r3
	add	r3, r8, #4480
	ldrsh	r3, [r3]
	lsl	r2, r3, #16
	add	r3, r8, #3840
	ldrsh	r3, [r3]
	uxth	r3, r3
	orr	r7, r2, r3
	mov	r4, r10
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
	mov	r10, r3
	uxth	r2, r7
	sxth	r3, r4
	mov	r1, r3
	asr	r3, r7, #16
	sxth	r3, r3
	sub	r3, r1, r3
	lsl	r3, r3, #16
	orr	r7, r2, r3
	mov	r4, r10
	uxth	r2, r4
	asr	r3, r4, #16
	sxth	r3, r3
	mov	r1, r3
	sxth	r3, r7
	add	r3, r1, r3
	lsl	r3, r3, #16
	orr	r10, r2, r3
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
	mov	r4, r5
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
	mov	r5, r3
	uxth	r2, r6
	sxth	r3, r4
	mov	r1, r3
	asr	r3, r6, #16
	sxth	r3, r3
	sub	r3, r1, r3
	lsl	r3, r3, #16
	orr	r6, r2, r3
	mov	r4, r5
	uxth	r2, r4
	asr	r3, r4, #16
	sxth	r3, r3
	mov	r1, r3
	sxth	r3, r6
	add	r3, r1, r3
	lsl	r3, r3, #16
	orr	r5, r2, r3
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
	asr	r3, r10, #16
	sxth	r3, r3
	mov	r4, r3
	sxth	r3, r10
	mov	r10, r3
	asr	r3, r5, #16
	sxth	r3, r3
	mov	r9, r3
	sxth	r3, r5
	mov	r5, r3
	mov	r3, r10
	add	r10, r3, r9
	sub	r9, r3, r9
	mov	r3, r4
	add	r4, r3, r5
	sub	r5, r3, r5
	mov	r3, r10
	add	r10, r3, r4
	sub	r4, r3, r4
	uxth	r5, r5
	uxth	r9, r9
	lsl	r5, r5, #16
	orr	r5, r5, r9
	mov	r3, #3
	.syntax divided
@ 137 "loefflers_dct_v3.c" 1
	btrfly r3, r5, r3
@ 0 "" 2
	.arm
	.syntax unified
	mov	r9, r3
	lsr	r5, r9, #16
	lsl	r5, r5, #16
	asr	r5, r5, #16
	sxth	r3, r5
	mov	r5, r3
	uxth	r9, r9
	sxth	r3, r9
	mov	r9, r3
	uxth	r10, r10
	uxth	r5, r5
	lsl	r3, r4, #16
	orr	r10, r10, r3
	lsl	r3, r9, #16
	orr	r5, r5, r3
	asr	r3, r6, #16
	sxth	r3, r3
	mov	r4, r3
	sxth	r3, r6
	mov	r6, r3
	asr	r3, r7, #16
	sxth	r3, r3
	mov	r9, r3
	sxth	r3, r7
	mov	r7, r3
	uxth	r6, r6
	uxth	r9, r9
	lsl	r6, r6, #16
	orr	r6, r6, r9
	mov	r3, #2
	.syntax divided
@ 150 "loefflers_dct_v3.c" 1
	btrfly r3, r6, r3
@ 0 "" 2
	.arm
	.syntax unified
	mov	r9, r3
	lsr	r6, r9, #16
	lsl	r6, r6, #16
	asr	r6, r6, #16
	sxth	r3, r6
	mov	r6, r3
	uxth	r9, r9
	sxth	r3, r9
	mov	r9, r3
	uxth	r4, r4
	uxth	r7, r7
	lsl	r4, r4, #16
	orr	r4, r4, r7
	mov	r3, #1
	.syntax divided
@ 151 "loefflers_dct_v3.c" 1
	btrfly r3, r4, r3
@ 0 "" 2
	.arm
	.syntax unified
	mov	r7, r3
	lsr	r4, r7, #16
	lsl	r4, r4, #16
	asr	r4, r4, #16
	sxth	r3, r4
	mov	r4, r3
	uxth	r7, r7
	sxth	r3, r7
	mov	r7, r3
	mov	r3, r6
	add	r6, r3, r7
	sub	r7, r3, r7
	mov	r3, r9
	add	r9, r3, r4
	sub	r4, r3, r4
	mov	r3, r9
	add	r9, r3, r6
	sub	r6, r3, r6
	movw	r3, #27146
	movt	r3, 1
	mul	r4, r3, r4
	and	r3, r4, #32768
	cmp	r3, #0
	beq	.L10
	asr	r3, r4, #16
	add	r3, r3, #1
	b	.L11
.L10:
	asr	r3, r4, #16
.L11:
	mov	r4, r3
	movw	r3, #27146
	movt	r3, 1
	mul	r7, r3, r7
	and	r3, r7, #32768
	cmp	r3, #0
	beq	.L12
	asr	r3, r7, #16
	add	r3, r3, #1
	b	.L13
.L12:
	asr	r3, r7, #16
.L13:
	mov	r7, r3
	uxth	r3, r10
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L14
	sxth	r3, r10
	asr	r3, r3, #3
	sxth	r3, r3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L15
.L14:
	sxth	r3, r10
	asr	r3, r3, #3
	sxth	r3, r3
.L15:
	strh	r3, [r8]	@ movhi
	and	r3, r9, #4
	cmp	r3, #0
	beq	.L16
	asr	r3, r9, #3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L17
.L16:
	asr	r3, r9, #3
	sxth	r3, r3
.L17:
	add	r2, r8, #640
	strh	r3, [r2]	@ movhi
	uxth	r3, r5
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L18
	sxth	r3, r5
	asr	r3, r3, #3
	sxth	r3, r3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L19
.L18:
	sxth	r3, r5
	asr	r3, r3, #3
	sxth	r3, r3
.L19:
	add	r2, r8, #1280
	strh	r3, [r2]	@ movhi
	and	r3, r4, #4
	cmp	r3, #0
	beq	.L20
	asr	r3, r4, #3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L21
.L20:
	asr	r3, r4, #3
	sxth	r3, r3
.L21:
	add	r2, r8, #1920
	strh	r3, [r2]	@ movhi
	asr	r3, r10, #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L22
	asr	r3, r10, #19
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L23
.L22:
	asr	r3, r10, #19
	sxth	r3, r3
.L23:
	add	r2, r8, #2560
	strh	r3, [r2]	@ movhi
	and	r3, r7, #4
	cmp	r3, #0
	beq	.L24
	asr	r3, r7, #3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L25
.L24:
	asr	r3, r7, #3
	sxth	r3, r3
.L25:
	add	r2, r8, #3200
	strh	r3, [r2]	@ movhi
	asr	r3, r5, #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L26
	asr	r3, r5, #19
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L27
.L26:
	asr	r3, r5, #19
	sxth	r3, r3
.L27:
	add	r2, r8, #3840
	strh	r3, [r2]	@ movhi
	and	r3, r6, #4
	cmp	r3, #0
	beq	.L28
	asr	r3, r6, #3
	uxth	r3, r3
	add	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	b	.L29
.L28:
	asr	r3, r6, #3
	sxth	r3, r3
.L29:
	add	r2, r8, #4480
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
	beq	.L30
	mov	r3, #2
	b	.L31
.L30:
	movw	r3, #4482
.L31:
	add	r8, r8, r3
	mov	r3, r0
	add	r3, r3, #1
	mov	r0, r3
.L9:
	mov	r3, r0
	cmp	r3, #9600
	blt	.L32
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
