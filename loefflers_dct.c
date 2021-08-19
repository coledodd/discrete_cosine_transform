#include <stdint.h>
#include <stdio.h>

#define reflector(a, b) { uint32_t tmp0=a; a=tmp0+b; b=tmp0-b; }
#define rotator(a, b, c0, c1, c2) { uint32_t tmp0 = c1*b + c0*(a+b); b = c2*a + c0*(a+b); a=tmp0; a=round_16(a); b=round_16(b); }
#define scale(a) a*=92682; a = round_16(a);
#define round_16(a) ((a & 0x8000) ? ((a>>16) + 1) : (a>>16))
#define round_5(a) ((a & 0b100) ? ((a >> 3) + 1) : (a >> 3))
#define reflector_1(a,b) { uint32_t tmp = a; \
						a = (tmp&0xffff0000) | (((int32_t)((int16_t)(tmp&0x0000ffff)) + (int32_t)((int16_t)(b>>16)))&0xffff); \
						b = (b&0x0000ffff) | (((int32_t)((int16_t)(tmp&0x0000ffff)) - (int32_t)((int16_t)(b>>16))) << 16); }
#define reflector_2(a,b) { uint32_t tmp = a; \
						a = (tmp&0x0000ffff) | (((int32_t)((int16_t)(tmp>>16)) + (int32_t)((int16_t)(b&0x0000ffff))) << 16); \
						b = (b&0xffff0000) | (((int32_t)((int16_t)(tmp>>16)) - (int32_t)((int16_t)(b&0x0000ffff)))&0xffff); }

void dct_round1(uint8_t x_[240][320], int16_t X_[240][320]) {
	register int32_t* x = (int32_t*)(x_[0]);
	register int32_t* X = (int32_t*)(X_[0]);
	register int i;

	for (i = 0; i < 9600; i++ ){
			int32_t r0, r1, r2, r3, r4, r5;
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
			r0 = ((int16_t)(r0& 0xffff)); //x0
			r5 = ((int16_t)(r1 >> 16)); //x3
			r1 = ((int16_t)(r1& 0xffff)); //x2

			//stage 2
			reflector(r0,r5);
			reflector(r4,r1);
			//stage 3
			reflector(r0,r4);
			rotator(r1,r5,35468,50159,-121095);   //sqrt2_c6

			r0 &= 0xffff;
			r1 &= 0xffff;
			r0 |= ((r4&0xffff) << 16); //x10
			r1 |= ((r5&0xffff) << 16); //x32

			r4 = ((int16_t)(r2 >> 16)); //x5
			r2 = ((int16_t)(r2& 0xffff)); //x4
			r5 = ((int16_t)(r3 >> 16)); //x7
			r3 = ((int16_t)(r3& 0xffff)); //x6


			//stage 2
			rotator(r2,r5,54491,-18081, -90901);  //c3
			rotator(r4,r3,64277,-51491,-77062); //c1
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
// void dct_round2(register int16_t X[240][320]) {
// 	register int i;
// 	register int j;
// 	for (i = 0; i < 240; i+=8) {
// 		for (j = 0; j < 320; j++) {
// 			int32_t r0, r1, r2, r3, r4, r5;
// 			r0 = ((X[i+1][j] & 0xffff)<<16)|(X[i+0][j] & 0xffff); //x10
// 			r1 = ((X[i+3][j] & 0xffff)<<16)|(X[i+2][j] & 0xffff); //x32
// 			r2 = ((X[i+5][j] & 0xffff)<<16)|(X[i+4][j] & 0xffff); //x54
// 			r3 = ((X[i+7][j] & 0xffff)<<16)|(X[i+6][j] & 0xffff); //x76

// 			reflector_1(r0, r3);
// 			reflector_2(r0, r3);
// 			reflector_1(r1, r2);
// 			reflector_2(r1, r2);

// 			r4 = ((int16_t)(r0 >> 16)); //x1
// 			r0 = ((int16_t)(r0& 0xffff)); //x0
// 			r5 = ((int16_t)(r1 >> 16)); //x3
// 			r1 = ((int16_t)(r1& 0xffff)); //x2
			
// 			//stage 2
// 			reflector(r0,r5);
// 			reflector(r4,r1);
			
// 			//stage 3
// 			reflector(r0,r4);
// 			rotator(r1,r5,35468,50159,-121095);   //sqrt2_c6

// 			r0 &= 0xffff;
// 			r1 &= 0xffff;
// 			r0 |= ((r4&0xffff) << 16); //x10
// 			r1 |= ((r5&0xffff) << 16); //x32

// 			r4 = ((int16_t)(r2 >> 16)); //x5
// 			r2 = ((int16_t)(r2& 0xffff)); //x4
// 			r5 = ((int16_t)(r3 >> 16)); //x7
// 			r3 = ((int16_t)(r3& 0xffff)); //x6

// 			//stage 2
// 			rotator(r2,r5,54491,-18081, -90901);  //c3
// 			rotator(r4,r3,64277,-51491,-77062); //c1

// 			//stage 3
// 			reflector(r2,r3);
// 			reflector(r5,r4);

// 			//stage 4
// 			reflector(r5,r2);
// 			scale(r4);
// 			scale(r3);

// 			X[i+0][j] = round_5(((int16_t)(r0&0xffff)));
// 			X[i+1][j] = round_5(r5);
// 			X[i+2][j] = round_5(((int16_t)(r1&0xffff)));
// 			X[i+3][j] = round_5(r4);
// 			X[i+4][j] = round_5(r0>>16);
// 			X[i+5][j] = round_5(r3);
// 			X[i+6][j] = round_5(r1>>16);
// 			X[i+7][j] = round_5(r2);	
// 		}
// 	}
// }
void dct_round2(register int16_t X_[240][320]) {
	register int i;
	register int16_t* X = (X_[0]);

	for (i = 0; i < 9600; i++) {
			int32_t r0, r1, r2, r3, r4, r5;
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
			rotator(r1,r5,35468,50159,-121095);   //sqrt2_c6

			r0 &= 0xffff;
			r1 &= 0xffff;
			r0 |= ((r4&0xffff) << 16); //x10
			r1 |= ((r5&0xffff) << 16); //x32

			r4 = ((int16_t)(r2 >> 16)); //x5
			r2 = ((int16_t)(r2& 0xffff)); //x4
			r5 = ((int16_t)(r3 >> 16)); //x7
			r3 = ((int16_t)(r3& 0xffff)); //x6

			//stage 2
			rotator(r2,r5,54491,-18081, -90901);  //c3
			rotator(r4,r3,64277,-51491,-77062); //c1

			//stage 3
			reflector(r2,r3);
			reflector(r5,r4);

			//stage 4
			reflector(r5,r2);
			scale(r4);
			scale(r3);

			X[0] = round_5(((int16_t)(r0&0xffff)));
			X[320] = round_5(r5);
			X[640] = round_5(((int16_t)(r1&0xffff)));
			X[960] = round_5(r4);
			X[1280] = round_5(r0>>16);
			X[1600] = round_5(r3);
			X[1920] = round_5(r1>>16);
			X[2240] = round_5(r2);

			X += (i+1)%320 ? 1 : 2241;
	}
}

void loeffler(uint8_t x[240][320], int16_t X[240][320]) {
	dct_round1(x, X);
	dct_round2(X);
}
