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
	// register int16_t* X = (X_[0]);

	register int i;
	for (i = 0; i < 76800; i+=8 ){
			// register int32_t x0 = *(x++);
			// register int32_t x1 = *(x++);
			// register int32_t x2 = *(x++);
			// register int32_t x3 = *(x++);
			// register int32_t x4 = *(x++);
			// register int32_t x5 = *(x++);
			// register int32_t x6 = *(x++);
			// register int32_t x7 = *(x++);

			int32_t r0, r1, r2, r3, r4, r5;
			r4 = *((int32_t*) x); //3210
			x++;
			r5 = *((int32_t*) x); //7654
			x++;

			r0 = ((r4&(0x0000ff00))<<8) | ((r4&(0x000000ff)));
			r1 = ((r4&(0xff000000))>>8) | ((r4&(0x00ff0000))>>16);
			r2 = ((r5&(0x0000ff00))<<8) | ((r5&(0x000000ff)));
			r3 = ((r5&(0xff000000))>>8) | ((r5&(0x00ff0000))>>16);

			// printf("%d %d %d %d %d %d %d %d\n", r0&0x0000ffff, (r0&0xffff0000)>>16,r1&0x0000ffff, (r1&0xffff0000)>>16,r2&0x0000ffff, (r2&0xffff0000)>>16,r3&0x0000ffff, (r3&0xffff0000)>>16);
			// return;

			// int32_t r3 = (x7<<16)|(x6&0xffff); //76
			// int32_t r2 = (x5<<16)|(x4&0xffff); //54
			// int32_t r1 = (x3<<16)|(x2&0xffff); //32
			// int32_t r0 = (x1<<16)|(x0&0xffff); //10

			reflector_1(r0, r3);
			reflector_2(r0, r3);
			reflector_1(r1, r2);
			reflector_2(r1, r2);

			// int32_t r4, r5;
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
			r0 |= ((r4&0xffff) << 16); //x10
			r1 |= ((r5&0xffff) << 16); //x32

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

			// X[0+i] = r0&0xffff;
			// X[1+i] = r5;
			// X[2+i] = r1&0xffff;
			// X[3+i] = r4;
			// X[4+i] = r0>>16;
			// X[5+i] = r3;
			// X[6+i] = r1>>16;
			// X[7+i] = r2;
			// printf("%d\n", (int16_t)(r0&0xffff));
			// return;
			*X = ((r5&0xffff) << 16) | (r0&0xffff);
			X++;
			*X = ((r4&0xffff) << 16) | (r1&0xffff);
			X++;
			*X = ((r3&0xffff) << 16) | ((r0&0xffff0000)>>16);
			X++;
			*X = ((r2&0xffff) << 16) | ((r1&0xffff0000)>>16);
			X++;
		}
	}
void dct_round2(register int16_t X[240][320]) {
	register int i;
	register int j;
	for (i = 0; i < 240; i+=8) {
		for (j = 0; j < 320; j++) {
			// register int32_t x0 = X[i+0][j];
			// register int32_t x1 = X[i+1][j];
			// register int32_t x2 = X[i+2][j];
			// register int32_t x3 = X[i+3][j];
			// register int32_t x4 = X[i+4][j];
			// register int32_t x5 = X[i+5][j];
			// register int32_t x6 = X[i+6][j];
			// register int32_t x7 = X[i+7][j];

			// printf("original:\n");
			// printf("retrieval: %d %d %d %d %d %d %d %d\n", x0, x1, x2, x3, x4, x5, x6, x7);
			// // return;
			
			// // printf("stage 0 end: %d %d %d %d\n", x0, x1, x2, x3);

			// //stage 1
			// reflector(x0,x7);
			// reflector(x1,x6);
			// reflector(x2,x5);
			// reflector(x3,x4);

			// printf("stage 1 end: %d %d %d %d %d %d %d %d\n", x0, x1, x2, x3, x4, x5, x6, x7);
			// // return;

			// //printf("original:\n");

			// //stage 2
			// //printf("stage 1 end: %d %d %d %d\n", x0, x1, x2, x3);
			// // printf("%d %d %d %d\n", x4, x5, x6, x7);
			// reflector(x0,x3);
			// reflector(x1,x2);
			// rotator(x4,x7,54491,-18081, -90901);  //c3
			// rotator(x5,x6,64277,-51491,-77062); //c1

			// // printf("stage 2 end: %d %d %d %d\n", x0, x1, x2, x3);
			// printf("stage 2 end: %d %d %d %d %d %d %d %d\n", x0, x1, x2, x3, x4, x5, x6, x7);
			// // printf("%d %d %d %d\n", x4, x5, x6, x7);
			
			// //stage 3
			// reflector(x0,x1);
			// rotator(x2,x3,35468,50159,-121095);   //sqrt2_c6
			// reflector(x4,x6);
			// reflector(x7,x5);
			// printf("stage 3 end: %d %d %d %d %d %d %d %d\n", x0, x1, x2, x3, x4, x5, x6, x7);
			// // printf("%d %d %d %d\n", x4, x5, x6, x7);
			// // //stage 4
			// reflector(x7,x4);
			// scale(x5);
			// scale(x6);
			// printf("stage 4 end: %d %d %d %d %d %d %d %d\n", x0, x1, x2, x3, x4, x5, x6, x7);
			// // printf("%d %d %d %d\n", x4, x5, x6, x7);
			// // return;

			// X[i+0][j] = round_5(x0);
			// X[i+1][j] = round_5(x7);
			// X[i+2][j] = round_5(x2);
			// X[i+3][j] = round_5(x5);
			// X[i+4][j] = round_5(x1);
			// X[i+5][j] = round_5(x6);
			// X[i+6][j] = round_5(x3);
			// X[i+7][j] = round_5(x4);

			// printf("stage 5 end: %d %d %d %d %d %d %d %d\n", X[i+0][j], X[i+1][j], X[i+2][j], X[i+3][j], X[i+4][j], X[i+5][j], X[i+6][j], X[i+7][j]);
			
			/*****************************************/	

			int32_t r0, r1, r2, r3, r4, r5;
			r0 = ((X[i+1][j] & 0xffff)<<16)|(X[i+0][j] & 0xffff); //x10
			r1 = ((X[i+3][j] & 0xffff)<<16)|(X[i+2][j] & 0xffff); //x32
			r2 = ((X[i+5][j] & 0xffff)<<16)|(X[i+4][j] & 0xffff); //x54
			r3 = ((X[i+7][j] & 0xffff)<<16)|(X[i+6][j] & 0xffff); //x76

			// printf("new:\n");
			// printf("retrieval: %d %d %d %d %d %d %d %d\n", (int16_t)(r0&0x0000ffff), (int16_t)((r0&0xffff0000)>>16),(int16_t)(r1&0x0000ffff), (int16_t)((r1&0xffff0000)>>16),(int16_t)(r2&0x0000ffff), (int16_t)((r2&0xffff0000)>>16),(int16_t)(r3&0x0000ffff), (int16_t)((r3&0xffff0000)>>16));

			// printf("stage 1 end: %d %d %d %d\n", (int32_t)((int16_t)(r0& 0xffff)), (int32_t)((int16_t)(r0 >> 16)), (int32_t)((int16_t)(r1& 0xffff)), (int32_t)((int16_t)(r1 >> 16)));

			reflector_1(r0, r3);
			reflector_2(r0, r3);
			reflector_1(r1, r2);
			reflector_2(r1, r2);

			// printf("BOTH stage 1 end: %d %d %d %d %d %d %d %d\n", (int16_t)(r0&0x0000ffff), (int16_t)((r0&0xffff0000)>>16),(int16_t)(r1&0x0000ffff), (int16_t)((r1&0xffff0000)>>16),(int16_t)(r2&0x0000ffff), (int16_t)((r2&0xffff0000)>>16),(int16_t)(r3&0x0000ffff), (int16_t)((r3&0xffff0000)>>16));
			

			r4 = (int32_t)((int16_t)(r0 >> 16)); //x1
			r0 = (int32_t)((int16_t)(r0& 0xffff)); //x0
			r5 = (int32_t)((int16_t)(r1 >> 16)); //x3
			r1 = (int32_t)((int16_t)(r1& 0xffff)); //x2
			// printf("EVEN stage 1 end: %d %d %d %d\n", r0, r4, r1, r5);
			//stage 2

			reflector(r0,r5);
			reflector(r4,r1);
			// printf("EVEN stage 2 end: %d %d %d %d\n", r0, r4, r1, r5);
			
			//stage 3
			// printf("%d %d %d %d\n", r0, r1, r5, r4);
			reflector(r0,r4);
			rotator(r1,r5,35468,50159,-121095);   //sqrt2_c6
			// printf("EVEN stage 3 end: %d %d %d %d\n", r0, r4, r1, r5);
			//return;
			

			r0 &= 0xffff;
			r1 &= 0xffff;
			r0 |= ((r4&0xffff) << 16); //x10
			r1 |= ((r5&0xffff) << 16); //x32

			r4 = (int32_t)((int16_t)(r2 >> 16)); //x5
			r2 = (int32_t)((int16_t)(r2& 0xffff)); //x4
			r5 = (int32_t)((int16_t)(r3 >> 16)); //x7
			r3 = (int32_t)((int16_t)(r3& 0xffff)); //x6

			// printf("ODD stage 1 end: %d %d %d %d\n", r2, r4, r3, r5);

			//stage 2
			rotator(r2,r5,54491,-18081, -90901);  //c3
			rotator(r4,r3,64277,-51491,-77062); //c1
			// printf("ODD stage 2 end: %d %d %d %d\n", r2, r4, r3, r5);

			//stage 3
			reflector(r2,r3);
			reflector(r5,r4);
			// printf("ODD stage 3 end: %d %d %d %d\n", r2, r4, r3, r5);
			//stage 4
			reflector(r5,r2);
			scale(r4);
			scale(r3);
			// printf("ODD stage 4 end: %d %d %d %d\n", r2, r4, r3, r5);
			// return;

			// X[0+i] = r0&0xffff;
			// X[1+i] = r5;
			// X[2+i] = r1&0xffff;
			// X[3+i] = r4;
			// X[4+i] = r0>>16;
			// X[5+i] = r3;
			// X[6+i] = r1>>16;
			// X[7+i] = r2;

			X[i+0][j] = round_5((int32_t)((int16_t)(r0&0xffff)));
			X[i+1][j] = round_5(r5);
			X[i+2][j] = round_5((int32_t)((int16_t)(r1&0xffff)));
			X[i+3][j] = round_5(r4);
			X[i+4][j] = round_5(r0>>16);
			X[i+5][j] = round_5(r3);
			X[i+6][j] = round_5(r1>>16);
			X[i+7][j] = round_5(r2);	
			// printf("stage 5 end: %d %d %d %d %d %d %d %d\n", X[i+0][j], X[i+1][j], X[i+2][j], X[i+3][j], X[i+4][j], X[i+5][j], X[i+6][j], X[i+7][j]);
			
			// if (j == 3) return;


		}
	}
}

void loeffler(uint8_t x[240][320], int16_t X[240][320]) {
	dct_round1(x, X);
	dct_round2(X);
}
