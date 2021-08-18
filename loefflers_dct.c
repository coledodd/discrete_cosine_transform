#include <stdint.h>
#include <stdio.h>

#define reflector(a, b) tmp0=a; a=tmp0+b; b=tmp0-b;
#define rotator(a, b, c0, c1, c2) tmp0 = c1*b + c0*(a+b); b = c2*a + c0*(a+b); a=tmp0; a=round_16(a); b=round_16(b);
#define scale(a) a*=92682; a = round_16(a);
#define round_16(a) ((a & 0x8000) ? ((a>>16) + 1) : (a>>16))
#define round_3(a) ((a & 0b10000) ? ((a >> 5) + 1) : (a >> 5))
#define reflector_1(a,b) { uint32_t tmp = a; \
						a = (tmp&0xffff0000) | ((int32_t)((int16_t)(tmp&0x0000ffff)) + (int32_t)((int16_t)(b>>16))); \
						b = (b&0x0000ffff) | (((int32_t)((int16_t)(tmp&0x0000ffff)) - (int32_t)((int16_t)(b>>16))) << 16); }
#define reflector_2(a,b) { uint32_t tmp = a; \
						a = (tmp&0x0000ffff) | (((int32_t)((int16_t)(tmp>>16)) + (int32_t)((int16_t)(b&0x0000ffff))) << 16); \
						b = (b&0xffff0000) | (((int32_t)((int16_t)(tmp>>16)) - (int32_t)((int16_t)(b&0x0000ffff)))&0xffff); }
void dct_round1(register uint8_t x[240][320], register int16_t X[240][320]) {
	register int i;
	register int j;
	for (i = 0; i < 240; i++) {
		for (j = 0; j < 320; j+=8) {
			// int32_t x3210 = ((int32_t*)(x[i]))[j+0]; //load 0 to 3
			// int32_t x7654 = ((int32_t*)(x[i]))[j+4]; //load 4 to 7
			
			// int32_t x0 = ((x3210>>0)&0xf)+((x7654>>24)&0xf);
			// int32_t x7 = ((x3210>>0)&0xf)-((x7654>>24)&0xf);
			// int32_t x1 = ((x3210>>8)&0xf)+((x7654>>16)&0xf);
			// int32_t x6 = ((x3210>>8)&0xf)-((x7654>>16)&0xf);
			// int32_t x2 = ((x3210>>16)&0xf)+((x7654>>8)&0xf);
			// int32_t x5 = ((x3210>>16)&0xf)-((x7654>>8)&0xf);
			// int32_t x3 = ((x3210>>24)&0xf)+((x7654>>0)&0xf);
			// int32_t x4 = ((x3210>>24)&0xf)-((x7654>>0)&0xf);

			
			/*********************/

			register int32_t x0 = x[i][j+0] << 2;
			register int32_t x1 = x[i][j+1] << 2;
			register int32_t x2 = x[i][j+2] << 2;
			register int32_t x3 = x[i][j+3] << 2;
			register int32_t x4 = x[i][j+4] << 2;
			register int32_t x5 = x[i][j+5] << 2;
			register int32_t x6 = x[i][j+6] << 2;
			register int32_t x7 = x[i][j+7] << 2;
			// register int32_t x0 = x[i][j+0];
			// register int32_t x1 = x[i][j+1];
			// register int32_t x2 = x[i][j+2];
			// register int32_t x3 = x[i][j+3];
			// register int32_t x4 = x[i][j+4];
			// register int32_t x5 = x[i][j+5];
			// register int32_t x6 = x[i][j+6];
			// register int32_t x7 = x[i][j+7];


			int32_t r3 = (x7<<16)|(x6&0xffff); //76
			int32_t r2 = (x5<<16)|(x4&0xffff); //76
			int32_t r1 = (x3<<16)|(x2&0xffff); //76
			int32_t r0 = (x1<<16)|(x0&0xffff); //76
			
			

			register int32_t tmp0;
			reflector_1(r0, r3);
			reflector_2(r0, r3);
			reflector_1(r1, r2);
			reflector_2(r1, r2);

			//printf("try: %d %d %d %d %d %d %d %d\n", (int16_t)(r0&0xffff), (int16_t)(r0>>16), (int16_t)(r1&0xffff), (int16_t)(r1>>16), (int16_t)(r2&0xffff), (int16_t)(r2>>16), (int16_t)(r3&0xffff), (int16_t)(r3>>16));

			int32_t r4, r5;
			r4 = (int32_t)((int16_t)(r0 >> 16)); //x1
			r0 = (int32_t)((int16_t)(r0& 0xffff)); //x0
			r5 = (int32_t)((int16_t)(r1 >> 16)); //x3
			r1 = (int32_t)((int16_t)(r1& 0xffff)); //x2


			//stage 2
			reflector(r0,r5);
			reflector(r4,r1);
			//stage 3
			reflector(r0,r4);
			rotator(r1,r5,35468,50159,-121095);   //sqrt2_c6

			r0 &= 0xffff;
			r1 &= 0xffff;
			r0 |= r4 << 16; //x10
			r1 |= r5 << 16; //x32

			r4 = (int32_t)((int16_t)(r2 >> 16)); //x5
			r2 = (int32_t)((int16_t)(r2& 0xffff)); //x4
			r5 = (int32_t)((int16_t)(r3 >> 16)); //x7
			r3 = (int32_t)((int16_t)(r3& 0xffff)); //x6


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
			
			X[i][0+j] = r0&0xffff;
			X[i][4+j] = r0>>16;
			X[i][2+j] = r1&0xffff;
			X[i][6+j] = r1>>16;
			X[i][7+j] = r2;
			X[i][3+j] = r4;
			X[i][5+j] = r3;
			X[i][1+j] = r5;
		}
	}
}
void dct_round2(register int16_t X[240][320]) {
	register int i;
	register int j;
	for (i = 0; i < 240; i+=8) {
		for (j = 0; j < 320; j++) {
			register int32_t x0 = X[i+0][j];
			register int32_t x1 = X[i+1][j];
			register int32_t x2 = X[i+2][j];
			register int32_t x3 = X[i+3][j];
			register int32_t x4 = X[i+4][j];
			register int32_t x5 = X[i+5][j];
			register int32_t x6 = X[i+6][j];
			register int32_t x7 = X[i+7][j];

			register int32_t tmp0;
			//stage 1
			reflector(x0,x7);
			reflector(x1,x6);
			reflector(x2,x5);
			reflector(x3,x4);
			//stage 2
			reflector(x0,x3);
			reflector(x1,x2);
			rotator(x4,x7,54491,-18081, -90901);  //c3
			rotator(x5,x6,64277,-51491,-77062); //c1
			//stage 3
			reflector(x0,x1);
			rotator(x2,x3,35468,50159,-121095);   //sqrt2_c6
			reflector(x4,x6);
			reflector(x7,x5);
			//stage 4
			reflector(x7,x4);
			scale(x5);
			scale(x6);
			
			X[i+0][j] = round_3(x0);
			X[i+4][j] = round_3(x1);
			X[i+2][j] = round_3(x2);
			X[i+6][j] = round_3(x3);
			X[i+7][j] = round_3(x4);
			X[i+3][j] = round_3(x5);
			X[i+5][j] = round_3(x6);
			X[i+1][j] = round_3(x7);
		}
	}
}

void loeffler(uint8_t x[240][320], int16_t X[240][320]) {
	dct_round1(x, X);
	dct_round2(X);
}
