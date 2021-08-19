#include <stdint.h>
#include <stdio.h>

#define reflector(a, b) { register int32_t tmp=a; a=tmp+b; b=tmp-b; }

#define sqrt2_c6(i1, i2) rotator(i1,i2,35468,50159,-121095);
#define c3(i1, i2) rotator(i1,i2,54491,-18081, -90901);
#define c1(i1, i2) rotator(r4,r3,64277,-51491,-77062);

#define rotator(a, b, c0, c1, c2) { \
			uint32_t tmp0, tmp1; \
			tmp0 = a+b; \
			tmp0 *= c0; \
			tmp1 = c1*b; \
			tmp1 += tmp0; \
			b = c2*a; \
			b += tmp0; \
			a=tmp1; \
			} \
			a=round_16(a); \
			b=round_16(b);

#define scale(a) a*=92682; a = round_16(a);
#define round_16(a) ((a & 0x8000) ? ((a>>16) + 1) : (a>>16))
#define round_3(a) ((a & 0b100) ? ((a >> 3) + 1) : (a >> 3))
#define reflector_1(a,b) { register int32_t tmp = a; \
						a = (tmp&0xffff0000) | ((((int16_t)(tmp&0x0000ffff)) + ((int16_t)(b>>16)))&0xffff); \
						b = (b&0x0000ffff) | ((((int16_t)(tmp&0x0000ffff)) - ((int16_t)(b>>16))) << 16); }
#define reflector_2(a,b) { register int32_t tmp = a; \
						a = (tmp&0x0000ffff) | ((((int16_t)(tmp>>16)) + ((int16_t)(b&0x0000ffff))) << 16); \
						b = (b&0xffff0000) | ((((int16_t)(tmp>>16)) - ((int16_t)(b&0x0000ffff)))&0xffff); }



void dct_round1(uint8_t x_[240][320], int16_t X_[240][320]) {
	register int32_t* x = (int32_t*)(x_[0]);
	register int32_t* X = (int32_t*)(X_[0]);
	register int i;
	register int32_t r0;
	register int32_t r1;
	register int32_t r2;
	register int32_t r3;
	register int32_t r4;
	register int32_t r5;

	for (i = 0; i < 9600; i++ ){
		r4 = *x++; //3210
		r5 = *x++; //7654

		r0 = ((r4&(0x0000ff00))<<8) | ((r4&(0x000000ff)));
		r1 = ((r4&(0xff000000))>>8) | ((r4&(0x00ff0000))>>16);
		r2 = ((r5&(0x0000ff00))<<8) | ((r5&(0x000000ff)));
		r3 = ((r5&(0xff000000))>>8) | ((r5&(0x00ff0000))>>16);

		reflector_1(r0, r3);
		reflector_2(r0, r3);
		reflector_1(r1, r2);
		reflector_2(r1, r2);

		r4 = ((int16_t)(r0 >> 16)); //x1
		r0 = ((int16_t)(r0&0xffff)); //x0
		r5 = ((int16_t)(r1 >> 16)); //x3
		r1 = ((int16_t)(r1& 0xffff)); //x2

		//stage 2
		reflector(r0,r5);
		reflector(r4,r1);
		//stage 3
		reflector(r0,r4);
		sqrt2_c6(r1,r5);   //sqrt2_c6

		r0 &= 0xffff;
		r1 &= 0xffff;
		r0 |= ((r4&0xffff) << 16); //x10
		r1 |= ((r5&0xffff) << 16); //x32

		r4 = ((int16_t)(r2 >> 16)); //x5
		r2 = ((int16_t)(r2& 0xffff)); //x4
		r5 = ((int16_t)(r3 >> 16)); //x7
		r3 = ((int16_t)(r3& 0xffff)); //x6

		//stage 2
		c3(r2,r5);  //c3
		c1(r4,r3); //c1

		//stage 3
		reflector(r2,r3);
		reflector(r5,r4);
		//stage 4
		reflector(r5,r2);
		scale(r4);
		scale(r3);

		*X++ = ((r5&0xffff) << 16) | (r0&0xffff);
		*X++ = ((r4&0xffff) << 16) | (r1&0xffff);
		*X++ = ((r3&0xffff) << 16) | ((r0&0xffff0000)>>16);
		*X++ = ((r2&0xffff) << 16) | ((r1&0xffff0000)>>16);
	}
	}
void dct_round2(int16_t X_[240][320]) {
	register int16_t* X = (X_[0]);
	register int i;
	register int32_t r0;
	register int32_t r1;
	register int32_t r2;
	register int32_t r3;
	register int32_t r4;
	register int32_t r5;

	for (i = 0; i < 9600; i++) {
		r0 = ((X[320] & 0xffff)<<16)|(X[0] & 0xffff); //x10
		r1 = ((X[960] & 0xffff)<<16)|(X[640] & 0xffff); //x32
		r2 = ((X[1600] & 0xffff)<<16)|(X[1280] & 0xffff); //x54
		r3 = ((X[2240] & 0xffff)<<16)|(X[1920] & 0xffff); //x76

		reflector_1(r0, r3);
		reflector_2(r0, r3);
		reflector_1(r1, r2);
		reflector_2(r1, r2);

		r4 = ((int16_t)(r0 >> 16)); //x1
		r0 = ((int16_t)(r0& 0xffff)); //x0
		r5 = ((int16_t)(r1 >> 16)); //x3
		r1 = ((int16_t)(r1& 0xffff)); //x2

		//stage 2
		reflector(r0,r5);
		reflector(r4,r1);

		//stage 3
		reflector(r0,r4);
		sqrt2_c6(r1,r5);   //sqrt2_c6

		r0 &= 0xffff;
		r1 &= 0xffff;
		r0 |= ((r4&0xffff) << 16); //x10
		r1 |= ((r5&0xffff) << 16); //x32

		r4 = ((int16_t)(r2 >> 16)); //x5
		r2 = ((int16_t)(r2& 0xffff)); //x4
		r5 = ((int16_t)(r3 >> 16)); //x7
		r3 = ((int16_t)(r3& 0xffff)); //x6

		//stage 2
		c3(r2,r5);  //c3
		c1(r4,r3); //c1

		//stage 3
		reflector(r2,r3);
		reflector(r5,r4);

		//stage 4
		reflector(r5,r2);
		scale(r4);
		scale(r3);

		X[0] = round_3(((int16_t)(r0&0xffff)));
		X[320] = round_3(r5);
		X[640] = round_3(((int16_t)(r1&0xffff)));
		X[960] = round_3(r4);
		X[1280] = round_3(r0>>16);
		X[1600] = round_3(r3);
		X[1920] = round_3(r1>>16);
		X[2240] = round_3(r2);

		X += (i+1)%320 ? 1 : 2241;
	}
}

void loeffler(uint8_t x[240][320], int16_t X[240][320]) {
	dct_round1(x, X);
	dct_round2(X);
}
