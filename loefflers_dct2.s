	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"loefflers_dct.c"
	.text
	.align	2
	.global	dct_round1
	.type	dct_round1, %function
dct_round1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #108
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	str	r0, [fp, #-72]
	ldr	r1, [fp, #-36]
	str	r1, [fp, #-68]
	mov	r2, #0
	str	r2, [fp, #-64]
	b	.L2
.L19:
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-44]
	ldr	ip, [fp, #-72]
	add	ip, ip, #4
	str	ip, [fp, #-72]
	ldr	r0, [fp, #-72]
	ldr	r0, [r0, #0]
	str	r0, [fp, #-40]
	ldr	r1, [fp, #-72]
	add	r1, r1, #4
	str	r1, [fp, #-72]
	ldr	r2, [fp, #-44]
	and	r3, r2, #65280
	mov	r2, r3, asl #8
	ldr	ip, [fp, #-44]
	and	r3, ip, #255
	orr	r2, r2, r3
	str	r2, [fp, #-60]
	ldr	r3, [fp, #-44]
	and	r3, r3, #-16777216
	mov	r2, r3, lsr #8
	ldr	r0, [fp, #-44]
	and	r3, r0, #16711680
	mov	r3, r3, asr #16
	orr	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r1, [fp, #-40]
	and	r3, r1, #65280
	mov	r2, r3, asl #8
	ldr	ip, [fp, #-40]
	and	r3, ip, #255
	orr	r2, r2, r3
	str	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	and	r3, r3, #-16777216
	mov	r2, r3, lsr #8
	ldr	r0, [fp, #-40]
	and	r3, r0, #16711680
	mov	r3, r3, asr #16
	orr	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r1, [fp, #-60]
	mov	r3, r1
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-48]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-60]
	ldr	r0, [fp, #-48]
	mov	r2, r0, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	ip, [fp, #-48]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-48]
	ldr	r1, [fp, #-60]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-48]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-60]
	ldr	r3, [fp, #-48]
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	r0, [fp, #-48]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r1, [fp, #-56]
	mov	r3, r1
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-52]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r0, [fp, #-52]
	mov	r2, r0, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	ip, [fp, #-52]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-52]
	ldr	r1, [fp, #-56]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-52]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	r0, [fp, #-52]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-52]
	ldr	r1, [fp, #-60]
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-60]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-60]
	ldr	ip, [fp, #-56]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-56]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-60]
	ldr	r1, [fp, #-40]
	add	r1, r3, r1
	str	r1, [fp, #-60]
	ldr	r2, [fp, #-40]
	rsb	r2, r2, r3
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	ldr	ip, [fp, #-56]
	add	ip, r3, ip
	str	ip, [fp, #-44]
	ldr	r0, [fp, #-56]
	rsb	r0, r0, r3
	str	r0, [fp, #-56]
	ldr	r3, [fp, #-60]
	ldr	r1, [fp, #-44]
	add	r1, r3, r1
	str	r1, [fp, #-60]
	ldr	r2, [fp, #-44]
	rsb	r2, r2, r3
	str	r2, [fp, #-44]
	ldr	ip, [fp, #-56]
	ldr	r0, [fp, #-40]
	add	r3, ip, r0
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-28]
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #4
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #6
	mov	r2, r3, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	ldr	r1, [fp, #-40]
	rsb	r3, r1, r3
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-40]
	rsb	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-56]
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	ip, [fp, #-56]
	rsb	r3, ip, r3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #6
	add	r2, r3, r2
	str	r2, [fp, #-40]
	ldr	r0, [fp, #-40]
	rsb	r0, r0, #0
	str	r0, [fp, #-40]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r1, [fp, #-24]
	str	r1, [fp, #-56]
	ldr	r2, [fp, #-56]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L3
	ldr	ip, [fp, #-56]
	mov	r3, ip, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-104]
	b	.L4
.L3:
	ldr	r0, [fp, #-56]
	mov	r0, r0, asr #16
	str	r0, [fp, #-104]
.L4:
	ldr	r1, [fp, #-104]
	str	r1, [fp, #-56]
	ldr	r2, [fp, #-40]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L5
	ldr	ip, [fp, #-40]
	mov	r3, ip, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-100]
	b	.L6
.L5:
	ldr	r0, [fp, #-40]
	mov	r0, r0, asr #16
	str	r0, [fp, #-100]
.L6:
	ldr	r1, [fp, #-100]
	str	r1, [fp, #-40]
	ldr	r2, [fp, #-60]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-60]
	ldr	ip, [fp, #-56]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-56]
	ldr	r0, [fp, #-44]
	mov	r3, r0, asl #16
	ldr	r1, [fp, #-60]
	orr	r1, r1, r3
	str	r1, [fp, #-60]
	ldr	r2, [fp, #-40]
	mov	r3, r2, asl #16
	ldr	ip, [fp, #-56]
	orr	ip, ip, r3
	str	ip, [fp, #-56]
	ldr	r0, [fp, #-52]
	mov	r3, r0, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-44]
	ldr	r1, [fp, #-52]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-48]
	mov	r3, r2, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-40]
	ldr	ip, [fp, #-48]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-48]
	ldr	r0, [fp, #-52]
	ldr	r1, [fp, #-40]
	add	r3, r0, r1
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #4
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #5
	mov	r2, r3, asl #3
	add	r3, r3, r2
	ldr	r2, [fp, #-40]
	rsb	r3, r2, r3
	mov	r2, r3, asl #6
	rsb	r3, r3, r2
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-52]
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	ip, [fp, #-52]
	add	r3, r3, ip
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	r0, [fp, #-52]
	add	r3, r3, r0
	str	r3, [fp, #-40]
	ldr	r1, [fp, #-40]
	rsb	r1, r1, #0
	str	r1, [fp, #-40]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-52]
	ldr	ip, [fp, #-52]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L7
	ldr	r0, [fp, #-52]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-96]
	b	.L8
.L7:
	ldr	r1, [fp, #-52]
	mov	r1, r1, asr #16
	str	r1, [fp, #-96]
.L8:
	ldr	r2, [fp, #-96]
	str	r2, [fp, #-52]
	ldr	ip, [fp, #-40]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L9
	ldr	r0, [fp, #-40]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L10
.L9:
	ldr	r1, [fp, #-40]
	mov	r1, r1, asr #16
	str	r1, [fp, #-92]
.L10:
	ldr	r2, [fp, #-92]
	str	r2, [fp, #-40]
	ldr	ip, [fp, #-44]
	ldr	r0, [fp, #-48]
	add	r3, ip, r0
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-12]
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #4
	add	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	r1, [fp, #-48]
	add	r3, r3, r1
	mov	r3, r3, asl #5
	ldr	r2, [fp, #-48]
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	ip, [fp, #-48]
	add	r3, r3, ip
	mov	r2, r3, asl #5
	rsb	r3, r3, r2
	rsb	r3, r3, #0
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-44]
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	ldr	r0, [fp, #-44]
	add	r3, r3, r0
	mov	r3, r3, asl #5
	ldr	r1, [fp, #-44]
	add	r3, r3, r1
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-44]
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-44]
	ldr	ip, [fp, #-44]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L11
	ldr	r0, [fp, #-44]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-88]
	b	.L12
.L11:
	ldr	r1, [fp, #-44]
	mov	r1, r1, asr #16
	str	r1, [fp, #-88]
.L12:
	ldr	r2, [fp, #-88]
	str	r2, [fp, #-44]
	ldr	ip, [fp, #-48]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L13
	ldr	r0, [fp, #-48]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L14
.L13:
	ldr	r1, [fp, #-48]
	mov	r1, r1, asr #16
	str	r1, [fp, #-84]
.L14:
	ldr	r2, [fp, #-84]
	str	r2, [fp, #-48]
	ldr	r3, [fp, #-52]
	ldr	ip, [fp, #-48]
	add	ip, r3, ip
	str	ip, [fp, #-52]
	ldr	r0, [fp, #-48]
	rsb	r0, r0, r3
	str	r0, [fp, #-48]
	ldr	r3, [fp, #-40]
	ldr	r1, [fp, #-44]
	add	r1, r3, r1
	str	r1, [fp, #-40]
	ldr	r2, [fp, #-44]
	rsb	r2, r2, r3
	str	r2, [fp, #-44]
	ldr	r3, [fp, #-40]
	ldr	ip, [fp, #-52]
	add	ip, r3, ip
	str	ip, [fp, #-40]
	ldr	r0, [fp, #-52]
	rsb	r0, r0, r3
	str	r0, [fp, #-52]
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r1, [fp, #-44]
	rsb	r3, r1, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-44]
	add	r3, r3, r2
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-44]
	ldr	ip, [fp, #-44]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L15
	ldr	r0, [fp, #-44]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-80]
	b	.L16
.L15:
	ldr	r1, [fp, #-44]
	mov	r1, r1, asr #16
	str	r1, [fp, #-80]
.L16:
	ldr	r2, [fp, #-80]
	str	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	ip, [fp, #-48]
	rsb	r3, ip, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r0, [fp, #-48]
	add	r3, r3, r0
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-48]
	ldr	r1, [fp, #-48]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L17
	ldr	r2, [fp, #-48]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-76]
	b	.L18
.L17:
	ldr	r3, [fp, #-48]
	mov	r3, r3, asr #16
	str	r3, [fp, #-76]
.L18:
	ldr	ip, [fp, #-76]
	str	ip, [fp, #-48]
	ldr	r0, [fp, #-40]
	mov	r2, r0, asl #16
	ldr	r1, [fp, #-60]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	ldr	r2, [fp, #-68]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #4
	str	r3, [fp, #-68]
	ldr	ip, [fp, #-44]
	mov	r2, ip, asl #16
	ldr	r0, [fp, #-56]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	ldr	r1, [fp, #-68]
	str	r3, [r1, #0]
	ldr	r2, [fp, #-68]
	add	r2, r2, #4
	str	r2, [fp, #-68]
	ldr	ip, [fp, #-48]
	mov	r3, ip, asl #16
	mov	r2, r3
	ldr	r3, [fp, #-60]
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	ldr	r0, [fp, #-68]
	str	r3, [r0, #0]
	ldr	r1, [fp, #-68]
	add	r1, r1, #4
	str	r1, [fp, #-68]
	ldr	r2, [fp, #-52]
	mov	r3, r2, asl #16
	mov	r2, r3
	ldr	r3, [fp, #-56]
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	ldr	ip, [fp, #-68]
	str	r3, [ip, #0]
	ldr	r0, [fp, #-68]
	add	r0, r0, #4
	str	r0, [fp, #-68]
	ldr	r1, [fp, #-64]
	add	r1, r1, #1
	str	r1, [fp, #-64]
.L2:
	mov	r3, #9536
	add	r3, r3, #63
	ldr	r2, [fp, #-64]
	cmp	r2, r3
	ble	.L19
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	dct_round1, .-dct_round1
	.align	2
	.global	dct_round2
	.type	dct_round2, %function
dct_round2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #164
	str	r0, [fp, #-32]
	ldr	r0, [fp, #-32]
	str	r0, [fp, #-64]
	mov	r1, #0
	str	r1, [fp, #-60]
	b	.L22
.L57:
	ldr	r2, [fp, #-64]
	add	r3, r2, #640
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, asl #16
	ldr	ip, [fp, #-64]
	ldrh	r3, [ip, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r2, r2, r3
	str	r2, [fp, #-56]
	ldr	r0, [fp, #-64]
	add	r3, r0, #1920
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, asl #16
	ldr	r1, [fp, #-64]
	add	r3, r1, #1280
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r2, r2, r3
	str	r2, [fp, #-52]
	ldr	r2, [fp, #-64]
	add	r3, r2, #3200
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, asl #16
	ldr	ip, [fp, #-64]
	add	r3, ip, #2560
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r2, r2, r3
	str	r2, [fp, #-48]
	ldr	r0, [fp, #-64]
	add	r3, r0, #4480
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, asl #16
	ldr	r1, [fp, #-64]
	add	r3, r1, #3840
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r2, r2, r3
	str	r2, [fp, #-44]
	ldr	r1, [fp, #-56]
	mov	r3, r1
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-44]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r0, [fp, #-44]
	mov	r2, r0, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	ip, [fp, #-44]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-44]
	ldr	r1, [fp, #-56]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-44]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-56]
	ldr	r3, [fp, #-44]
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	r0, [fp, #-44]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-48]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-52]
	ldr	r0, [fp, #-48]
	mov	r2, r0, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	ip, [fp, #-48]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-48]
	ldr	r1, [fp, #-52]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-48]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	r0, [fp, #-48]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r1, [fp, #-56]
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-56]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-56]
	ldr	ip, [fp, #-52]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-52]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-56]
	ldr	r1, [fp, #-36]
	add	r1, r3, r1
	str	r1, [fp, #-56]
	ldr	r2, [fp, #-36]
	rsb	r2, r2, r3
	str	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	ldr	ip, [fp, #-52]
	add	ip, r3, ip
	str	ip, [fp, #-40]
	ldr	r0, [fp, #-52]
	rsb	r0, r0, r3
	str	r0, [fp, #-52]
	ldr	r3, [fp, #-56]
	ldr	r1, [fp, #-40]
	add	r1, r3, r1
	str	r1, [fp, #-56]
	ldr	r2, [fp, #-40]
	rsb	r2, r2, r3
	str	r2, [fp, #-40]
	ldr	ip, [fp, #-52]
	ldr	r0, [fp, #-36]
	add	r3, ip, r0
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-28]
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #4
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #6
	mov	r2, r3, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	ldr	r1, [fp, #-36]
	rsb	r3, r1, r3
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-36]
	rsb	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	ip, [fp, #-52]
	rsb	r3, ip, r3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #6
	add	r2, r3, r2
	str	r2, [fp, #-36]
	ldr	r0, [fp, #-36]
	rsb	r0, r0, #0
	str	r0, [fp, #-36]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r1, [fp, #-24]
	str	r1, [fp, #-52]
	ldr	r2, [fp, #-52]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L23
	ldr	ip, [fp, #-52]
	mov	r3, ip, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-164]
	b	.L24
.L23:
	ldr	r0, [fp, #-52]
	mov	r0, r0, asr #16
	str	r0, [fp, #-164]
.L24:
	ldr	r1, [fp, #-164]
	str	r1, [fp, #-52]
	ldr	r2, [fp, #-36]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L25
	ldr	ip, [fp, #-36]
	mov	r3, ip, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-160]
	b	.L26
.L25:
	ldr	r0, [fp, #-36]
	mov	r0, r0, asr #16
	str	r0, [fp, #-160]
.L26:
	ldr	r1, [fp, #-160]
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-56]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-56]
	ldr	ip, [fp, #-52]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-52]
	ldr	r0, [fp, #-40]
	mov	r3, r0, asl #16
	ldr	r1, [fp, #-56]
	orr	r1, r1, r3
	str	r1, [fp, #-56]
	ldr	r2, [fp, #-36]
	mov	r3, r2, asl #16
	ldr	ip, [fp, #-52]
	orr	ip, ip, r3
	str	ip, [fp, #-52]
	ldr	r0, [fp, #-48]
	mov	r3, r0, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-40]
	ldr	r1, [fp, #-48]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-44]
	mov	r3, r2, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-36]
	ldr	ip, [fp, #-44]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-44]
	ldr	r0, [fp, #-48]
	ldr	r1, [fp, #-36]
	add	r3, r0, r1
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #4
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #5
	mov	r2, r3, asl #3
	add	r3, r3, r2
	ldr	r2, [fp, #-36]
	rsb	r3, r2, r3
	mov	r2, r3, asl #6
	rsb	r3, r3, r2
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	ip, [fp, #-48]
	add	r3, r3, ip
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	r0, [fp, #-48]
	add	r3, r3, r0
	str	r3, [fp, #-36]
	ldr	r1, [fp, #-36]
	rsb	r1, r1, #0
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-48]
	ldr	ip, [fp, #-48]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L27
	ldr	r0, [fp, #-48]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-156]
	b	.L28
.L27:
	ldr	r1, [fp, #-48]
	mov	r1, r1, asr #16
	str	r1, [fp, #-156]
.L28:
	ldr	r2, [fp, #-156]
	str	r2, [fp, #-48]
	ldr	ip, [fp, #-36]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L29
	ldr	r0, [fp, #-36]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-152]
	b	.L30
.L29:
	ldr	r1, [fp, #-36]
	mov	r1, r1, asr #16
	str	r1, [fp, #-152]
.L30:
	ldr	r2, [fp, #-152]
	str	r2, [fp, #-36]
	ldr	ip, [fp, #-40]
	ldr	r0, [fp, #-44]
	add	r3, ip, r0
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-12]
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #4
	add	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-44]
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	r1, [fp, #-44]
	add	r3, r3, r1
	mov	r3, r3, asl #5
	ldr	r2, [fp, #-44]
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	ip, [fp, #-44]
	add	r3, r3, ip
	mov	r2, r3, asl #5
	rsb	r3, r3, r2
	rsb	r3, r3, #0
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	ldr	r0, [fp, #-40]
	add	r3, r3, r0
	mov	r3, r3, asl #5
	ldr	r1, [fp, #-40]
	add	r3, r3, r1
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-40]
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-40]
	ldr	ip, [fp, #-40]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L31
	ldr	r0, [fp, #-40]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-148]
	b	.L32
.L31:
	ldr	r1, [fp, #-40]
	mov	r1, r1, asr #16
	str	r1, [fp, #-148]
.L32:
	ldr	r2, [fp, #-148]
	str	r2, [fp, #-40]
	ldr	ip, [fp, #-44]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L33
	ldr	r0, [fp, #-44]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-144]
	b	.L34
.L33:
	ldr	r1, [fp, #-44]
	mov	r1, r1, asr #16
	str	r1, [fp, #-144]
.L34:
	ldr	r2, [fp, #-144]
	str	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	ldr	ip, [fp, #-44]
	add	ip, r3, ip
	str	ip, [fp, #-48]
	ldr	r0, [fp, #-44]
	rsb	r0, r0, r3
	str	r0, [fp, #-44]
	ldr	r3, [fp, #-36]
	ldr	r1, [fp, #-40]
	add	r1, r3, r1
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	rsb	r2, r2, r3
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	ldr	ip, [fp, #-48]
	add	ip, r3, ip
	str	ip, [fp, #-36]
	ldr	r0, [fp, #-48]
	rsb	r0, r0, r3
	str	r0, [fp, #-48]
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r1, [fp, #-40]
	rsb	r3, r1, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-40]
	add	r3, r3, r2
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-40]
	ldr	ip, [fp, #-40]
	and	r3, ip, #32768
	cmp	r3, #0
	beq	.L35
	ldr	r0, [fp, #-40]
	mov	r3, r0, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-140]
	b	.L36
.L35:
	ldr	r1, [fp, #-40]
	mov	r1, r1, asr #16
	str	r1, [fp, #-140]
.L36:
	ldr	r2, [fp, #-140]
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	ip, [fp, #-44]
	rsb	r3, ip, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r0, [fp, #-44]
	add	r3, r3, r0
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-44]
	ldr	r1, [fp, #-44]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L37
	ldr	r2, [fp, #-44]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-136]
	b	.L38
.L37:
	ldr	r3, [fp, #-44]
	mov	r3, r3, asr #16
	str	r3, [fp, #-136]
.L38:
	ldr	ip, [fp, #-136]
	str	ip, [fp, #-44]
	ldr	r0, [fp, #-56]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L39
	ldr	r1, [fp, #-56]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-132]
	b	.L40
.L39:
	ldr	r2, [fp, #-56]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-132]
.L40:
	ldr	r3, [fp, #-132]
	ldr	ip, [fp, #-64]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-64]
	add	r0, r0, #640
	str	r0, [fp, #-128]
	ldr	r1, [fp, #-36]
	and	r3, r1, #4
	cmp	r3, #0
	beq	.L41
	ldr	r2, [fp, #-36]
	mov	r3, r2, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-124]
	b	.L42
.L41:
	ldr	ip, [fp, #-36]
	mov	r3, ip, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-124]
.L42:
	ldr	r0, [fp, #-124]
	ldr	r1, [fp, #-128]
	strh	r0, [r1, #0]	@ movhi
	ldr	r2, [fp, #-64]
	add	r2, r2, #1280
	str	r2, [fp, #-120]
	ldr	ip, [fp, #-52]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L43
	ldr	r0, [fp, #-52]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-116]
	b	.L44
.L43:
	ldr	r1, [fp, #-52]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-116]
.L44:
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	strh	r2, [r3, #0]	@ movhi
	ldr	ip, [fp, #-64]
	add	ip, ip, #1920
	str	ip, [fp, #-112]
	ldr	r0, [fp, #-40]
	and	r3, r0, #4
	cmp	r3, #0
	beq	.L45
	ldr	r1, [fp, #-40]
	mov	r3, r1, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-108]
	b	.L46
.L45:
	ldr	r2, [fp, #-40]
	mov	r3, r2, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-108]
.L46:
	ldr	r3, [fp, #-108]
	ldr	ip, [fp, #-112]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-64]
	add	r0, r0, #2560
	str	r0, [fp, #-104]
	ldr	r1, [fp, #-56]
	mov	r3, r1, asr #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L47
	ldr	r2, [fp, #-56]
	mov	r3, r2, asr #19
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-100]
	b	.L48
.L47:
	ldr	ip, [fp, #-56]
	mov	r3, ip, asr #19
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-100]
.L48:
	ldr	r0, [fp, #-100]
	ldr	r1, [fp, #-104]
	strh	r0, [r1, #0]	@ movhi
	ldr	r2, [fp, #-64]
	add	r2, r2, #3200
	str	r2, [fp, #-96]
	ldr	ip, [fp, #-44]
	and	r3, ip, #4
	cmp	r3, #0
	beq	.L49
	ldr	r0, [fp, #-44]
	mov	r3, r0, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-92]
	b	.L50
.L49:
	ldr	r1, [fp, #-44]
	mov	r3, r1, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-92]
.L50:
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-96]
	strh	r2, [r3, #0]	@ movhi
	ldr	ip, [fp, #-64]
	add	ip, ip, #3840
	str	ip, [fp, #-88]
	ldr	r0, [fp, #-52]
	mov	r3, r0, asr #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L51
	ldr	r1, [fp, #-52]
	mov	r3, r1, asr #19
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-84]
	b	.L52
.L51:
	ldr	r2, [fp, #-52]
	mov	r3, r2, asr #19
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-84]
.L52:
	ldr	r3, [fp, #-84]
	ldr	ip, [fp, #-88]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-64]
	add	r0, r0, #4480
	str	r0, [fp, #-80]
	ldr	r1, [fp, #-48]
	and	r3, r1, #4
	cmp	r3, #0
	beq	.L53
	ldr	r2, [fp, #-48]
	mov	r3, r2, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-76]
	b	.L54
.L53:
	ldr	ip, [fp, #-48]
	mov	r3, ip, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-76]
.L54:
	ldr	r0, [fp, #-76]
	ldr	r1, [fp, #-80]
	strh	r0, [r1, #0]	@ movhi
	ldr	r2, [fp, #-60]
	add	r1, r2, #1
	ldr	r3, .L59
	smull	ip, r3, r1, r3
	mov	r2, r3, asr #7
	mov	r3, r1, asr #31
	rsb	r3, r3, r2
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	mov	r3, r3, asl #6
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-68]
	ldr	r0, [fp, #-68]
	cmp	r0, #0
	beq	.L55
	mov	r1, #2
	str	r1, [fp, #-72]
	b	.L56
.L55:
	mov	r2, #4480
	str	r2, [fp, #-72]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
.L56:
	ldr	ip, [fp, #-64]
	ldr	r0, [fp, #-72]
	add	ip, ip, r0
	str	ip, [fp, #-64]
	ldr	r1, [fp, #-60]
	add	r1, r1, #1
	str	r1, [fp, #-60]
.L22:
	mov	r3, #9536
	add	r3, r3, #63
	ldr	r2, [fp, #-60]
	cmp	r2, r3
	ble	.L57
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L60:
	.align	2
.L59:
	.word	1717986919
	.size	dct_round2, .-dct_round2
	.align	2
	.global	loeffler
	.type	loeffler, %function
loeffler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	dct_round1
	ldr	r0, [fp, #-12]
	bl	dct_round2
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	loeffler, .-loeffler
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
