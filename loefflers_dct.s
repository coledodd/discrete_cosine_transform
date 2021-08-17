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
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #92
	str	r0, [fp, #-84]
	str	r1, [fp, #-88]
	mov	r1, #0
	str	r1, [fp, #-48]
	b	.L2
.L21:
	mov	r2, #0
	str	r2, [fp, #-44]
	b	.L3
.L20:
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #6
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-84]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #6
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-84]
	add	r2, r1, r3
	ldr	r1, [fp, #-44]
	add	r3, r1, #1
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #6
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-84]
	add	r2, r1, r3
	ldr	r1, [fp, #-44]
	add	r3, r1, #2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #6
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-84]
	add	r2, r1, r3
	ldr	r1, [fp, #-44]
	add	r3, r1, #3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #6
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-84]
	add	r2, r1, r3
	ldr	r1, [fp, #-44]
	add	r3, r1, #4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #6
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-84]
	add	r2, r1, r3
	ldr	r1, [fp, #-44]
	add	r3, r1, #5
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #6
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-84]
	add	r2, r1, r3
	ldr	r1, [fp, #-44]
	add	r3, r1, #6
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #6
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-84]
	add	r2, r1, r3
	ldr	r1, [fp, #-44]
	add	r3, r1, #7
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-40]
	str	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-12]
	add	r3, r3, r1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-36]
	str	r1, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-36]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-8]
	rsb	r2, r2, r1
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r1, r1, r2
	str	r1, [fp, #-32]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-8]
	rsb	r1, r1, r3
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-28]
	str	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-24]
	add	r3, r3, r1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-8]
	rsb	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-40]
	str	r1, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	str	r2, [fp, #-40]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-8]
	rsb	r2, r2, r1
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-32]
	add	r1, r1, r2
	str	r1, [fp, #-36]
	ldr	r1, [fp, #-32]
	ldr	r3, [fp, #-8]
	rsb	r1, r1, r3
	str	r1, [fp, #-32]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #5
	mov	r2, r3, asl #3
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	rsb	r3, r2, r3
	mov	r2, r3, asl #6
	rsb	r0, r3, r2
	rsb	r0, r0, #0
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	add	r1, r3, r2
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
	add	r0, r0, r3
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r1, [fp, #-24]
	add	r3, r3, r1
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r0, r3, r2
	rsb	r0, r0, #0
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	add	r1, r3, r2
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
	add	r0, r0, r3
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-24]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L4
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-80]
	b	.L5
.L4:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #16
	str	r3, [fp, #-80]
.L5:
	ldr	r1, [fp, #-80]
	str	r1, [fp, #-24]
	ldr	r2, [fp, #-12]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L6
	ldr	r1, [fp, #-12]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-76]
	b	.L7
.L6:
	ldr	r2, [fp, #-12]
	mov	r2, r2, asr #16
	str	r2, [fp, #-76]
.L7:
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	mov	r3, r3, asl #5
	ldr	r2, [fp, #-16]
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	mov	r2, r3, asl #5
	rsb	r1, r3, r2
	rsb	r1, r1, #0
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r0, r2, r3
	mov	r3, r0
	mov	r3, r3, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r0
	mov	r2, r3, asl #4
	add	r3, r3, r2
	add	r1, r1, r3
	str	r1, [fp, #-8]
	ldr	r3, [fp, #-20]
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	ldr	r1, [fp, #-20]
	add	r3, r3, r1
	mov	r3, r3, asl #5
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-20]
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r0, r3, #0
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r1, r2, r3
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #4
	add	r3, r3, r2
	add	r0, r0, r3
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-8]
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-20]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L8
	ldr	r1, [fp, #-20]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-72]
	b	.L9
.L8:
	ldr	r2, [fp, #-20]
	mov	r2, r2, asr #16
	str	r2, [fp, #-72]
.L9:
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-16]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L10
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L11
.L10:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asr #16
	str	r3, [fp, #-68]
.L11:
	ldr	r1, [fp, #-68]
	str	r1, [fp, #-16]
	ldr	r2, [fp, #-40]
	str	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-36]
	add	r3, r3, r1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-8]
	rsb	r3, r3, r2
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #6
	mov	r2, r3, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	ldr	r1, [fp, #-28]
	rsb	r3, r1, r3
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-28]
	rsb	r0, r2, r3
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	add	r1, r3, r2
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
	add	r0, r0, r3
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	r1, [fp, #-32]
	rsb	r3, r1, r3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #6
	add	r0, r3, r2
	rsb	r0, r0, #0
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r1, r2, r3
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
	add	r0, r0, r3
	str	r0, [fp, #-28]
	ldr	r1, [fp, #-8]
	str	r1, [fp, #-32]
	ldr	r2, [fp, #-32]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L12
	ldr	r1, [fp, #-32]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-64]
	b	.L13
.L12:
	ldr	r2, [fp, #-32]
	mov	r2, r2, asr #16
	str	r2, [fp, #-64]
.L13:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-32]
	ldr	r1, [fp, #-28]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L14
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-60]
	b	.L15
.L14:
	ldr	r3, [fp, #-28]
	mov	r3, r3, asr #16
	str	r3, [fp, #-60]
.L15:
	ldr	r1, [fp, #-60]
	str	r1, [fp, #-28]
	ldr	r2, [fp, #-24]
	str	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-12]
	str	r1, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	str	r2, [fp, #-12]
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-8]
	rsb	r2, r2, r1
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r1, r1, r2
	str	r1, [fp, #-12]
	ldr	r1, [fp, #-24]
	ldr	r3, [fp, #-8]
	rsb	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r2, [fp, #-20]
	rsb	r3, r2, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-20]
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L16
	ldr	r1, [fp, #-20]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-56]
	b	.L17
.L16:
	ldr	r2, [fp, #-20]
	mov	r2, r2, asr #16
	str	r2, [fp, #-56]
.L17:
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-16]
	add	r3, r3, r2
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-16]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L18
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L19
.L18:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asr #16
	str	r3, [fp, #-52]
.L19:
	ldr	r1, [fp, #-52]
	str	r1, [fp, #-16]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-88]
	add	r0, r2, r3
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-40]
	mov	r3, r1, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r2, asl #1
	add	r3, r0, r3
	strh	r1, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-88]
	add	r0, r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r3, #4
	ldr	r1, [fp, #-36]
	mov	r3, r1, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r2, asl #1
	add	r3, r0, r3
	strh	r1, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-88]
	add	r0, r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r3, #2
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r2, asl #1
	add	r3, r0, r3
	strh	r1, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-88]
	add	r0, r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r3, #6
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r2, asl #1
	add	r3, r0, r3
	strh	r1, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-88]
	add	r0, r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r3, #7
	ldr	r1, [fp, #-24]
	mov	r3, r1, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r2, asl #1
	add	r3, r0, r3
	strh	r1, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-88]
	add	r0, r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r3, #3
	ldr	r1, [fp, #-20]
	mov	r3, r1, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r2, asl #1
	add	r3, r0, r3
	strh	r1, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-88]
	add	r0, r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r3, #5
	ldr	r1, [fp, #-16]
	mov	r3, r1, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r2, asl #1
	add	r3, r0, r3
	strh	r1, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-88]
	add	r0, r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	ldr	r1, [fp, #-12]
	mov	r3, r1, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r2, asl #1
	add	r3, r0, r3
	strh	r1, [r3, #0]	@ movhi
	ldr	r2, [fp, #-44]
	add	r2, r2, #8
	str	r2, [fp, #-44]
.L3:
	mov	r3, #316
	add	r3, r3, #3
	ldr	r1, [fp, #-44]
	cmp	r1, r3
	ble	.L20
	ldr	r2, [fp, #-48]
	add	r2, r2, #1
	str	r2, [fp, #-48]
.L2:
	ldr	r3, [fp, #-48]
	cmp	r3, #239
	ble	.L21
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	dct_round1, .-dct_round1
	.align	2
	.global	dct_round2
	.type	dct_round2, %function
dct_round2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #180
	str	r0, [fp, #-180]
	mov	r1, #0
	str	r1, [fp, #-48]
	b	.L24
.L59:
	mov	r2, #0
	str	r2, [fp, #-44]
	b	.L25
.L58:
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-180]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-180]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #1280
	ldr	r1, [fp, #-180]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #1920
	ldr	r1, [fp, #-180]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #2560
	ldr	r1, [fp, #-180]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #3200
	ldr	r1, [fp, #-180]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #3840
	ldr	r1, [fp, #-180]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #4480
	ldr	r1, [fp, #-180]
	add	r2, r1, r3
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-40]
	str	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-12]
	add	r3, r3, r1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-36]
	str	r1, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-36]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-8]
	rsb	r2, r2, r1
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r1, r1, r2
	str	r1, [fp, #-32]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-8]
	rsb	r1, r1, r3
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-28]
	str	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-24]
	add	r3, r3, r1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-8]
	rsb	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-40]
	str	r1, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	str	r2, [fp, #-40]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-8]
	rsb	r2, r2, r1
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-32]
	add	r1, r1, r2
	str	r1, [fp, #-36]
	ldr	r1, [fp, #-32]
	ldr	r3, [fp, #-8]
	rsb	r1, r1, r3
	str	r1, [fp, #-32]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #5
	mov	r2, r3, asl #3
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	rsb	r3, r2, r3
	mov	r2, r3, asl #6
	rsb	r0, r3, r2
	rsb	r0, r0, #0
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	add	r1, r3, r2
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
	add	r0, r0, r3
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r1, [fp, #-24]
	add	r3, r3, r1
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r0, r3, r2
	rsb	r0, r0, #0
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	add	r1, r3, r2
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
	add	r0, r0, r3
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-24]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L26
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-176]
	b	.L27
.L26:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #16
	str	r3, [fp, #-176]
.L27:
	ldr	r1, [fp, #-176]
	str	r1, [fp, #-24]
	ldr	r2, [fp, #-12]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L28
	ldr	r1, [fp, #-12]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-172]
	b	.L29
.L28:
	ldr	r2, [fp, #-12]
	mov	r2, r2, asr #16
	str	r2, [fp, #-172]
.L29:
	ldr	r3, [fp, #-172]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	mov	r3, r3, asl #5
	ldr	r2, [fp, #-16]
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	mov	r2, r3, asl #5
	rsb	r1, r3, r2
	rsb	r1, r1, #0
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r0, r2, r3
	mov	r3, r0
	mov	r3, r3, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r0
	mov	r2, r3, asl #4
	add	r3, r3, r2
	add	r1, r1, r3
	str	r1, [fp, #-8]
	ldr	r3, [fp, #-20]
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	ldr	r1, [fp, #-20]
	add	r3, r3, r1
	mov	r3, r3, asl #5
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-20]
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r0, r3, #0
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r1, r2, r3
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #4
	add	r3, r3, r2
	add	r0, r0, r3
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-8]
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-20]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L30
	ldr	r1, [fp, #-20]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-168]
	b	.L31
.L30:
	ldr	r2, [fp, #-20]
	mov	r2, r2, asr #16
	str	r2, [fp, #-168]
.L31:
	ldr	r3, [fp, #-168]
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-16]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L32
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-164]
	b	.L33
.L32:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asr #16
	str	r3, [fp, #-164]
.L33:
	ldr	r1, [fp, #-164]
	str	r1, [fp, #-16]
	ldr	r2, [fp, #-40]
	str	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-36]
	add	r3, r3, r1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-8]
	rsb	r3, r3, r2
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #6
	mov	r2, r3, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	ldr	r1, [fp, #-28]
	rsb	r3, r1, r3
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-28]
	rsb	r0, r2, r3
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	add	r1, r3, r2
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
	add	r0, r0, r3
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	r1, [fp, #-32]
	rsb	r3, r1, r3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #6
	add	r0, r3, r2
	rsb	r0, r0, #0
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r1, r2, r3
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
	add	r0, r0, r3
	str	r0, [fp, #-28]
	ldr	r1, [fp, #-8]
	str	r1, [fp, #-32]
	ldr	r2, [fp, #-32]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L34
	ldr	r1, [fp, #-32]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-160]
	b	.L35
.L34:
	ldr	r2, [fp, #-32]
	mov	r2, r2, asr #16
	str	r2, [fp, #-160]
.L35:
	ldr	r3, [fp, #-160]
	str	r3, [fp, #-32]
	ldr	r1, [fp, #-28]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L36
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-156]
	b	.L37
.L36:
	ldr	r3, [fp, #-28]
	mov	r3, r3, asr #16
	str	r3, [fp, #-156]
.L37:
	ldr	r1, [fp, #-156]
	str	r1, [fp, #-28]
	ldr	r2, [fp, #-24]
	str	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-12]
	str	r1, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	str	r2, [fp, #-12]
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-8]
	rsb	r2, r2, r1
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r1, r1, r2
	str	r1, [fp, #-12]
	ldr	r1, [fp, #-24]
	ldr	r3, [fp, #-8]
	rsb	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r2, [fp, #-20]
	rsb	r3, r2, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-20]
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L38
	ldr	r1, [fp, #-20]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-152]
	b	.L39
.L38:
	ldr	r2, [fp, #-20]
	mov	r2, r2, asr #16
	str	r2, [fp, #-152]
.L39:
	ldr	r3, [fp, #-152]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-16]
	add	r3, r3, r2
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-16]
	and	r3, r1, #32768
	cmp	r3, #0
	beq	.L40
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-148]
	b	.L41
.L40:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asr #16
	str	r3, [fp, #-148]
.L41:
	ldr	r1, [fp, #-148]
	str	r1, [fp, #-16]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-180]
	add	r3, r2, r3
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-140]
	ldr	r1, [fp, #-40]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L42
	ldr	r2, [fp, #-40]
	mov	r3, r2, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-136]
	b	.L43
.L42:
	ldr	r1, [fp, #-40]
	mov	r3, r1, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-136]
.L43:
	ldr	r2, [fp, #-140]
	mov	r3, r2, asl #1
	ldr	r1, [fp, #-144]
	add	r3, r1, r3
	ldr	r2, [fp, #-136]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #2560
	ldr	r1, [fp, #-180]
	add	r3, r1, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-44]
	str	r2, [fp, #-128]
	ldr	r1, [fp, #-36]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L44
	ldr	r2, [fp, #-36]
	mov	r3, r2, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-124]
	b	.L45
.L44:
	ldr	r1, [fp, #-36]
	mov	r3, r1, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-124]
.L45:
	ldr	r2, [fp, #-128]
	mov	r3, r2, asl #1
	ldr	r1, [fp, #-132]
	add	r3, r1, r3
	ldr	r2, [fp, #-124]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #1280
	ldr	r1, [fp, #-180]
	add	r3, r1, r3
	str	r3, [fp, #-120]
	ldr	r2, [fp, #-44]
	str	r2, [fp, #-116]
	ldr	r1, [fp, #-32]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L46
	ldr	r2, [fp, #-32]
	mov	r3, r2, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-112]
	b	.L47
.L46:
	ldr	r1, [fp, #-32]
	mov	r3, r1, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-112]
.L47:
	ldr	r2, [fp, #-116]
	mov	r3, r2, asl #1
	ldr	r1, [fp, #-120]
	add	r3, r1, r3
	ldr	r2, [fp, #-112]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #3840
	ldr	r1, [fp, #-180]
	add	r3, r1, r3
	str	r3, [fp, #-108]
	ldr	r2, [fp, #-44]
	str	r2, [fp, #-104]
	ldr	r1, [fp, #-28]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L48
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-100]
	b	.L49
.L48:
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-100]
.L49:
	ldr	r2, [fp, #-104]
	mov	r3, r2, asl #1
	ldr	r1, [fp, #-108]
	add	r3, r1, r3
	ldr	r2, [fp, #-100]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #4480
	ldr	r1, [fp, #-180]
	add	r3, r1, r3
	str	r3, [fp, #-96]
	ldr	r2, [fp, #-44]
	str	r2, [fp, #-92]
	ldr	r1, [fp, #-24]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L50
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-88]
	b	.L51
.L50:
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-88]
.L51:
	ldr	r2, [fp, #-92]
	mov	r3, r2, asl #1
	ldr	r1, [fp, #-96]
	add	r3, r1, r3
	ldr	r2, [fp, #-88]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #1920
	ldr	r1, [fp, #-180]
	add	r3, r1, r3
	str	r3, [fp, #-84]
	ldr	r2, [fp, #-44]
	str	r2, [fp, #-80]
	ldr	r1, [fp, #-20]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L52
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-76]
	b	.L53
.L52:
	ldr	r1, [fp, #-20]
	mov	r3, r1, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-76]
.L53:
	ldr	r2, [fp, #-80]
	mov	r3, r2, asl #1
	ldr	r1, [fp, #-84]
	add	r3, r1, r3
	ldr	r2, [fp, #-76]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	add	r3, r3, #3200
	ldr	r1, [fp, #-180]
	add	r3, r1, r3
	str	r3, [fp, #-72]
	ldr	r2, [fp, #-44]
	str	r2, [fp, #-68]
	ldr	r1, [fp, #-16]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L54
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-64]
	b	.L55
.L54:
	ldr	r1, [fp, #-16]
	mov	r3, r1, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-64]
.L55:
	ldr	r2, [fp, #-68]
	mov	r3, r2, asl #1
	ldr	r1, [fp, #-72]
	add	r3, r1, r3
	ldr	r2, [fp, #-64]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	mov	r2, r3, asl #7
	mov	r3, r2, asl #2
	add	r3, r2, r3
	ldr	r1, [fp, #-180]
	add	r3, r1, r3
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-44]
	str	r2, [fp, #-56]
	ldr	r1, [fp, #-12]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L56
	ldr	r2, [fp, #-12]
	mov	r3, r2, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-52]
	b	.L57
.L56:
	ldr	r1, [fp, #-12]
	mov	r3, r1, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-52]
.L57:
	ldr	r2, [fp, #-56]
	mov	r3, r2, asl #1
	ldr	r1, [fp, #-60]
	add	r3, r1, r3
	ldr	r2, [fp, #-52]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L25:
	mov	r3, #316
	add	r3, r3, #3
	ldr	r1, [fp, #-44]
	cmp	r1, r3
	ble	.L58
	ldr	r2, [fp, #-48]
	add	r2, r2, #8
	str	r2, [fp, #-48]
.L24:
	ldr	r3, [fp, #-48]
	cmp	r3, #239
	ble	.L59
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
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
