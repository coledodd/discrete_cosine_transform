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
	.file	"loefflers_dct_v3.c"
	.text
	.align	2
	.global	dct_round1
	.type	dct_round1, %function
dct_round1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #60
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	str	r0, [fp, #-48]
	ldr	r1, [fp, #-12]
	str	r1, [fp, #-44]
	mov	r2, #0
	str	r2, [fp, #-40]
	b	.L2
.L7:
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	ip, [fp, #-48]
	add	ip, ip, #4
	str	ip, [fp, #-48]
	ldr	r0, [fp, #-48]
	ldr	r0, [r0, #0]
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-48]
	add	r1, r1, #4
	str	r1, [fp, #-48]
	ldr	r2, [fp, #-20]
	and	r3, r2, #65280
	mov	r2, r3, asl #8
	ldr	ip, [fp, #-20]
	and	r3, ip, #255
	orr	r2, r2, r3
	str	r2, [fp, #-36]
	ldr	r3, [fp, #-20]
	and	r3, r3, #-16777216
	mov	r2, r3, lsr #8
	ldr	r0, [fp, #-20]
	and	r3, r0, #16711680
	mov	r3, r3, asr #16
	orr	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r1, [fp, #-16]
	and	r3, r1, #65280
	mov	r2, r3, asl #8
	ldr	ip, [fp, #-16]
	and	r3, ip, #255
	orr	r2, r2, r3
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-16]
	and	r3, r3, #-16777216
	mov	r2, r3, lsr #8
	ldr	r0, [fp, #-16]
	and	r3, r0, #16711680
	mov	r3, r3, asr #16
	orr	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	mov	r3, r1
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-24]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-24]
	mov	r2, r0, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	ip, [fp, #-24]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r1, [fp, #-36]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-24]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	r0, [fp, #-24]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-32]
	mov	r3, r1
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-28]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-28]
	mov	r2, r0, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	ip, [fp, #-28]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-28]
	ldr	r1, [fp, #-32]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-28]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	r0, [fp, #-28]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-36]
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-36]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-36]
	ldr	ip, [fp, #-32]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-32]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-36]
	ldr	r1, [fp, #-16]
	add	r1, r3, r1
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-16]
	rsb	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	ldr	ip, [fp, #-32]
	add	ip, r3, ip
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-32]
	rsb	r0, r0, r3
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-36]
	ldr	r1, [fp, #-20]
	add	r1, r3, r1
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-20]
	rsb	r2, r2, r3
	str	r2, [fp, #-20]
	ldr	ip, [fp, #-32]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-16]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-32]
	mov	r1, r1, asl #16
	str	r1, [fp, #-32]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-16]
	orr	r2, r2, r3
	str	r2, [fp, #-32]
	mov	r3, #3
	ldr	ip, [fp, #-32]
#APP
@ 75 "loefflers_dct_v3.c" 1
	btrfly ip, ip, r3
@ 0 "" 2
	str	ip, [fp, #-16]
	ldr	r0, [fp, #-16]
	mov	r0, r0, lsr #16
	str	r0, [fp, #-32]
	ldr	r1, [fp, #-32]
	mov	r1, r1, asl #16
	str	r1, [fp, #-32]
	ldr	r2, [fp, #-32]
	mov	r2, r2, asr #16
	str	r2, [fp, #-32]
	ldr	ip, [fp, #-32]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-16]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-16]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-36]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-36]
	ldr	ip, [fp, #-32]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-20]
	mov	r3, r0, asl #16
	ldr	r1, [fp, #-36]
	orr	r1, r1, r3
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-16]
	mov	r3, r2, asl #16
	ldr	ip, [fp, #-32]
	orr	ip, ip, r3
	str	ip, [fp, #-32]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-16]
	ldr	ip, [fp, #-24]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-16]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r2, r2, asl #16
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldr	ip, [fp, #-16]
	orr	r3, r3, ip
	str	r3, [fp, #-28]
	mov	r3, #2
	ldr	r0, [fp, #-28]
#APP
@ 88 "loefflers_dct_v3.c" 1
	btrfly r0, r0, r3
@ 0 "" 2
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-16]
	mov	r1, r1, lsr #16
	str	r1, [fp, #-28]
	ldr	r2, [fp, #-28]
	mov	r2, r2, asl #16
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r3, r3, asr #16
	str	r3, [fp, #-28]
	ldr	ip, [fp, #-28]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-16]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-16]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-20]
	ldr	ip, [fp, #-24]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-20]
	mov	r0, r0, asl #16
	str	r0, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-24]
	orr	r1, r1, r2
	str	r1, [fp, #-20]
	mov	r3, #1
	ldr	ip, [fp, #-20]
#APP
@ 89 "loefflers_dct_v3.c" 1
	btrfly ip, ip, r3
@ 0 "" 2
	str	ip, [fp, #-24]
	ldr	r0, [fp, #-24]
	mov	r0, r0, lsr #16
	str	r0, [fp, #-20]
	ldr	r1, [fp, #-20]
	mov	r1, r1, asl #16
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-20]
	mov	r2, r2, asr #16
	str	r2, [fp, #-20]
	ldr	ip, [fp, #-20]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	add	r2, r3, r2
	str	r2, [fp, #-28]
	ldr	ip, [fp, #-24]
	rsb	ip, ip, r3
	str	ip, [fp, #-24]
	ldr	r3, [fp, #-16]
	ldr	r0, [fp, #-20]
	add	r0, r3, r0
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	rsb	r1, r1, r3
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	ip, [fp, #-28]
	rsb	ip, ip, r3
	str	ip, [fp, #-28]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r0, [fp, #-20]
	rsb	r3, r0, r3
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
	beq	.L3
	ldr	ip, [fp, #-20]
	mov	r3, ip, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-56]
	b	.L4
.L3:
	ldr	r0, [fp, #-20]
	mov	r0, r0, asr #16
	str	r0, [fp, #-56]
.L4:
	ldr	r1, [fp, #-56]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r2, [fp, #-24]
	rsb	r3, r2, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-24]
	and	r3, r0, #32768
	cmp	r3, #0
	beq	.L5
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L6
.L5:
	ldr	r2, [fp, #-24]
	mov	r2, r2, asr #16
	str	r2, [fp, #-52]
.L6:
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-24]
	ldr	ip, [fp, #-16]
	mov	r2, ip, asl #16
	ldr	r0, [fp, #-36]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	ldr	r1, [fp, #-44]
	str	r3, [r1, #0]
	ldr	r2, [fp, #-44]
	add	r2, r2, #4
	str	r2, [fp, #-44]
	ldr	r3, [fp, #-20]
	mov	r2, r3, asl #16
	ldr	ip, [fp, #-32]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	ldr	r0, [fp, #-44]
	str	r3, [r0, #0]
	ldr	r1, [fp, #-44]
	add	r1, r1, #4
	str	r1, [fp, #-44]
	ldr	r2, [fp, #-24]
	mov	r3, r2, asl #16
	mov	r2, r3
	ldr	r3, [fp, #-36]
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	ldr	ip, [fp, #-44]
	str	r3, [ip, #0]
	ldr	r0, [fp, #-44]
	add	r0, r0, #4
	str	r0, [fp, #-44]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r2, r3
	ldr	r3, [fp, #-32]
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	ldr	r2, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #4
	str	r3, [fp, #-44]
	ldr	ip, [fp, #-40]
	add	ip, ip, #1
	str	ip, [fp, #-40]
.L2:
	mov	r3, #9536
	add	r3, r3, #63
	ldr	r0, [fp, #-40]
	cmp	r0, r3
	ble	.L7
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	dct_round1, .-dct_round1
	.align	2
	.global	dct_round2
	.type	dct_round2, %function
dct_round2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #116
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	str	r0, [fp, #-40]
	mov	r1, #0
	str	r1, [fp, #-36]
	b	.L10
.L33:
	ldr	r2, [fp, #-40]
	add	r3, r2, #640
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, asl #16
	ldr	ip, [fp, #-40]
	ldrh	r3, [ip, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r2, r2, r3
	str	r2, [fp, #-32]
	ldr	r0, [fp, #-40]
	add	r3, r0, #1920
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, asl #16
	ldr	r1, [fp, #-40]
	add	r3, r1, #1280
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r2, r2, r3
	str	r2, [fp, #-28]
	ldr	r2, [fp, #-40]
	add	r3, r2, #3200
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, asl #16
	ldr	ip, [fp, #-40]
	add	r3, ip, #2560
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-40]
	add	r3, r0, #4480
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, asl #16
	ldr	r1, [fp, #-40]
	add	r3, r1, #3840
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r2, r2, r3
	str	r2, [fp, #-20]
	ldr	r1, [fp, #-32]
	mov	r3, r1
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-20]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-20]
	mov	r2, r0, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	ip, [fp, #-20]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-20]
	ldr	r1, [fp, #-32]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-20]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	r0, [fp, #-20]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-24]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r2, r0, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	ip, [fp, #-24]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r1, [fp, #-28]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldr	ip, [fp, #-24]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r0, r3
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r2, r3, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, asr #16
	ldr	r0, [fp, #-24]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-32]
	mov	r3, r1, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-32]
	ldr	ip, [fp, #-28]
	mov	r3, ip, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-12]
	add	r1, r3, r1
	str	r1, [fp, #-32]
	ldr	r2, [fp, #-12]
	rsb	r2, r2, r3
	str	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	ldr	ip, [fp, #-28]
	add	ip, r3, ip
	str	ip, [fp, #-16]
	ldr	r0, [fp, #-28]
	rsb	r0, r0, r3
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-16]
	add	r1, r3, r1
	str	r1, [fp, #-32]
	ldr	r2, [fp, #-16]
	rsb	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	ip, [fp, #-28]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-12]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-28]
	mov	r1, r1, asl #16
	str	r1, [fp, #-28]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	orr	r2, r2, r3
	str	r2, [fp, #-28]
	mov	r3, #3
	ldr	ip, [fp, #-28]
#APP
@ 137 "loefflers_dct_v3.c" 1
	btrfly ip, ip, r3
@ 0 "" 2
	str	ip, [fp, #-12]
	ldr	r0, [fp, #-12]
	mov	r0, r0, lsr #16
	str	r0, [fp, #-28]
	ldr	r1, [fp, #-28]
	mov	r1, r1, asl #16
	str	r1, [fp, #-28]
	ldr	r2, [fp, #-28]
	mov	r2, r2, asr #16
	str	r2, [fp, #-28]
	ldr	ip, [fp, #-28]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-12]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-12]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-32]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	ldr	ip, [fp, #-28]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-16]
	mov	r3, r0, asl #16
	ldr	r1, [fp, #-32]
	orr	r1, r1, r3
	str	r1, [fp, #-32]
	ldr	r2, [fp, #-12]
	mov	r3, r2, asl #16
	ldr	ip, [fp, #-28]
	orr	ip, ip, r3
	str	ip, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-12]
	ldr	ip, [fp, #-20]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-12]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	mov	r2, r2, asl #16
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	ip, [fp, #-12]
	orr	r3, r3, ip
	str	r3, [fp, #-24]
	mov	r3, #2
	ldr	r0, [fp, #-24]
#APP
@ 150 "loefflers_dct_v3.c" 1
	btrfly r0, r0, r3
@ 0 "" 2
	str	r0, [fp, #-12]
	ldr	r1, [fp, #-12]
	mov	r1, r1, lsr #16
	str	r1, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r2, r2, asl #16
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #16
	str	r3, [fp, #-24]
	ldr	ip, [fp, #-24]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-12]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-12]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-16]
	ldr	ip, [fp, #-20]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-16]
	mov	r0, r0, asl #16
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	orr	r1, r1, r2
	str	r1, [fp, #-16]
	mov	r3, #1
	ldr	ip, [fp, #-16]
#APP
@ 151 "loefflers_dct_v3.c" 1
	btrfly ip, ip, r3
@ 0 "" 2
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-20]
	mov	r0, r0, lsr #16
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-16]
	mov	r1, r1, asl #16
	str	r1, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r2, r2, asr #16
	str	r2, [fp, #-16]
	ldr	ip, [fp, #-16]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-20]
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	ip, [fp, #-20]
	rsb	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r3, [fp, #-12]
	ldr	r0, [fp, #-16]
	add	r0, r3, r0
	str	r0, [fp, #-12]
	ldr	r1, [fp, #-16]
	rsb	r1, r1, r3
	str	r1, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	add	r2, r3, r2
	str	r2, [fp, #-12]
	ldr	ip, [fp, #-24]
	rsb	ip, ip, r3
	str	ip, [fp, #-24]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	and	r3, r2, #32768
	cmp	r3, #0
	beq	.L11
	ldr	ip, [fp, #-16]
	mov	r3, ip, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-116]
	b	.L12
.L11:
	ldr	r0, [fp, #-16]
	mov	r0, r0, asr #16
	str	r0, [fp, #-116]
.L12:
	ldr	r1, [fp, #-116]
	str	r1, [fp, #-16]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	ldr	r2, [fp, #-20]
	rsb	r3, r2, r3
	mov	r2, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	ip, [fp, #-20]
	add	r3, r3, ip
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-20]
	and	r3, r0, #32768
	cmp	r3, #0
	beq	.L13
	ldr	r1, [fp, #-20]
	mov	r3, r1, asr #16
	add	r3, r3, #1
	str	r3, [fp, #-112]
	b	.L14
.L13:
	ldr	r2, [fp, #-20]
	mov	r2, r2, asr #16
	str	r2, [fp, #-112]
.L14:
	ldr	r3, [fp, #-112]
	str	r3, [fp, #-20]
	ldr	ip, [fp, #-32]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L15
	ldr	r0, [fp, #-32]
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
	str	r3, [fp, #-108]
	b	.L16
.L15:
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-108]
.L16:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-40]
	strh	r2, [r3, #0]	@ movhi
	ldr	ip, [fp, #-40]
	add	ip, ip, #640
	str	ip, [fp, #-104]
	ldr	r0, [fp, #-12]
	and	r3, r0, #4
	cmp	r3, #0
	beq	.L17
	ldr	r1, [fp, #-12]
	mov	r3, r1, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-100]
	b	.L18
.L17:
	ldr	r2, [fp, #-12]
	mov	r3, r2, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-100]
.L18:
	ldr	r3, [fp, #-100]
	ldr	ip, [fp, #-104]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-40]
	add	r0, r0, #1280
	str	r0, [fp, #-96]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L19
	ldr	r2, [fp, #-28]
	mov	r3, r2, asl #16
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
	str	r3, [fp, #-92]
	b	.L20
.L19:
	ldr	ip, [fp, #-28]
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-92]
.L20:
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-96]
	strh	r0, [r1, #0]	@ movhi
	ldr	r2, [fp, #-40]
	add	r2, r2, #1920
	str	r2, [fp, #-88]
	ldr	ip, [fp, #-16]
	and	r3, ip, #4
	cmp	r3, #0
	beq	.L21
	ldr	r0, [fp, #-16]
	mov	r3, r0, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-84]
	b	.L22
.L21:
	ldr	r1, [fp, #-16]
	mov	r3, r1, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-84]
.L22:
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-88]
	strh	r2, [r3, #0]	@ movhi
	ldr	ip, [fp, #-40]
	add	ip, ip, #2560
	str	ip, [fp, #-80]
	ldr	r0, [fp, #-32]
	mov	r3, r0, asr #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L23
	ldr	r1, [fp, #-32]
	mov	r3, r1, asr #19
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-76]
	b	.L24
.L23:
	ldr	r2, [fp, #-32]
	mov	r3, r2, asr #19
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-76]
.L24:
	ldr	r3, [fp, #-76]
	ldr	ip, [fp, #-80]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-40]
	add	r0, r0, #3200
	str	r0, [fp, #-72]
	ldr	r1, [fp, #-20]
	and	r3, r1, #4
	cmp	r3, #0
	beq	.L25
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-68]
	b	.L26
.L25:
	ldr	ip, [fp, #-20]
	mov	r3, ip, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-68]
.L26:
	ldr	r0, [fp, #-68]
	ldr	r1, [fp, #-72]
	strh	r0, [r1, #0]	@ movhi
	ldr	r2, [fp, #-40]
	add	r2, r2, #3840
	str	r2, [fp, #-64]
	ldr	ip, [fp, #-28]
	mov	r3, ip, asr #16
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L27
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #19
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-60]
	b	.L28
.L27:
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #19
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-60]
.L28:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	strh	r2, [r3, #0]	@ movhi
	ldr	ip, [fp, #-40]
	add	ip, ip, #4480
	str	ip, [fp, #-56]
	ldr	r0, [fp, #-24]
	and	r3, r0, #4
	cmp	r3, #0
	beq	.L29
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-52]
	b	.L30
.L29:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-52]
.L30:
	ldr	r3, [fp, #-52]
	ldr	ip, [fp, #-56]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-36]
	add	r1, r0, #1
	ldr	r3, .L35
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #7
	mov	r3, r1, asr #31
	rsb	r3, r3, r2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #6
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L31
	mov	ip, #2
	str	ip, [fp, #-48]
	b	.L32
.L31:
	mov	r0, #4480
	str	r0, [fp, #-48]
	ldr	r1, [fp, #-48]
	add	r1, r1, #2
	str	r1, [fp, #-48]
.L32:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-48]
	add	r2, r2, r3
	str	r2, [fp, #-40]
	ldr	ip, [fp, #-36]
	add	ip, ip, #1
	str	ip, [fp, #-36]
.L10:
	mov	r3, #9536
	add	r3, r3, #63
	ldr	r0, [fp, #-36]
	cmp	r0, r3
	ble	.L33
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L36:
	.align	2
.L35:
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
