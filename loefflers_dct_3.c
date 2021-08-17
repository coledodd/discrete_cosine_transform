#include <stdint.h>
#include <stdio.h>

#define reflector(a, b) tmp0=a; a=tmp0+b; b=tmp0-b;
#define rotator(a, b, c0, c1, c2) tmp0 = c1*b + c0*(a+b); b = c2*a + c0*(a+b); a=tmp0; a=round_16(a); b=round_16(b);
#define scale(a) a*=92682; a = round_16(a);
#define round_16(a) ((a & 0x8000) ? ((a>>16) + 1) : (a>>16))
#define round_3(a) ((a & 0b100) ? ((a >> 3) + 1) : (a >> 3))

void dct_round1(int8_t x[240][320], int16_t X[240][320]) {
	for (int i = 0; i < 240; i++) {
		for (int j = 0; j < 320; j+=8) {
			int32_t x0 = x[i][0+j];
			int32_t x1 = x[i][1+j];
			int32_t x2 = x[i][2+j];
			int32_t x3 = x[i][3+j];
			int32_t x4 = x[i][4+j];
			int32_t x5 = x[i][5+j];
			int32_t x6 = x[i][6+j];
			int32_t x7 = x[i][7+j];

			int32_t tmp0;
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
			
			X[i][0+j] = x0;
			X[i][4+j] = x1;
			X[i][2+j] = x2;
			X[i][6+j] = x3;
			X[i][7+j] = x4;
			X[i][3+j] = x5;
			X[i][5+j] = x6;
			X[i][1+j] = x7;
		}
	}
}
void dct_round2(int16_t X[240][320]) {
	for (int i = 0; i < 240; i+=8) {
		for (int j = 0; j < 320; j++) {
			int32_t x0 = X[i+0][j];
			int32_t x1 = X[i+1][j];
			int32_t x2 = X[i+2][j];
			int32_t x3 = X[i+3][j];
			int32_t x4 = X[i+4][j];
			int32_t x5 = X[i+5][j];
			int32_t x6 = X[i+6][j];
			int32_t x7 = X[i+7][j];

			int32_t tmp0;
			//stage 1
			reflector(x0,x7);
			reflector(x1,x6);
			reflector(x2,x5);
			reflector(x3,x4);
			//stage 2
			reflector(x0,x3);
			reflector(x1,x2);
			rotator(x4,x7,13,-4,-22);  //c3
			rotator(x5,x6,16,-13,-19); //c1
			//stage 3
			reflector(x0,x1);
			rotator(x2,x3,9,12,-30);   //sqrt2_c6
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

void loeffler(int8_t x[240][320], int16_t X[240][320]) {
	dct_round1(int8_t x[240][320], int16_t X[240][320]);
	dct_round2(int16_t X[240][320]);
}
