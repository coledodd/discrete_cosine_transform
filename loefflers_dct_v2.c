#include <stdint.h>
#include <stdio.h>

#define reflector(a, b) tmp0=a; a=tmp0+b; b=tmp0-b;
#define rotator(a, b, c0, c1, c2) tmp0 = c1*b + c0*(a+b); b = c2*a + c0*(a+b); a=tmp0; a=round_16(a); b=round_16(b);
#define scale(a) a*=92682; a = round_16(a);
#define round_16(a) ((a & 0x8000) ? ((a>>16) + 1) : (a>>16))
#define round_3(a) ((a & 0b10000) ? ((a >> 5) + 1) : (a >> 5))
// #define reflector_1(a,b) { uint32_t tmp = a; a = (tmp&0xffff0000) | ((tmp&0x0000ffff) + (b>>16)); b = (b&0x0000ffff) | (((tmp&0x0000ffff) - (b>>16)) << 16); }
// #define reflector_2(a,b) { uint32_t tmp = a; a = (tmp&0x0000ffff) | (((tmp>>16) + (b&0x0000ffff)) << 16);  b = (b&0xffff0000) | ((tmp>>16) - (b&0x0000ffff)); }

int32_t butterfly(int32_t source, int N){
  printf("btrfly input I'=%d, I''=%d \n",source&0xffff0000 >> 16,source&0x0000ffff);
  //source = I'_I''
  //Mask for I' = source&0xffff0000 >> 16
  //Mask for I''= source&0x0000ffff
  //result = O'_O'' 
  int32_t c0; // = k*cos(nπ/16)
  int32_t c1; // = k*sin(nπ/16)−c0
  int32_t c2; // = -k*sin(nπ/16)+c0
  int32_t tmp0;
  int32_t result;

  switch (N) {
  	case 1://C1 
  	  c0 = 64277;
  	  c1 = -51491;
  	  c2 = -77062;
  	  break;
  	case 2://C3 
  	  c0 = 54491;
  	  c1 = -18081;
  	  c2 = -90901;
  	  break;
  	case 3://sqrt2_C6 
  	  c0 = 35468;
  	  c1 = 50159;
  	  c2 = -121095;
  	  break;
  	default:;
  }

  //O' = (c1*I'')+c0(I'+I'')
  tmp0 = c1*(source&0x0000ffff) + c0*(((source&0xffff0000) >> 16)+(source&0x0000ffff)); 
  result = ((round_16(tmp0)) << 16)&0xffff0000;
  tmp0 = 0;
  //O''= (c2*I')+c0(I'+I'')
  tmp0 = c2*((source&0xffff0000) >> 16) + c0*(((source&0xffff0000) >> 16)+(source&0x0000ffff));
  printf("btrfly ouput O'=%d, O''=%d \n",result>>16,round_16(tmp0));
  return result|(round_16(tmp0));
}


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
			
			

			register int32_t tmp0;
			//stage 1
			reflector(x0,x7);
			reflector(x1,x6);
			reflector(x2,x5);
			reflector(x3,x4);
			//stage 2
			reflector(x0,x3);
			reflector(x1,x2);
			//rotator(x4,x7,54491,-18081, -90901); //c3
			tmp0 = butterfly((x4<<16)|x7,2); //c3
			x4 = tmp0>>16;
			x7 = tmp0&0x0000ffff;
			//rotator(x5,x6,64277,-51491,-77062); //c1
			tmp0 = butterfly((x5<<16)|x6,1); //c1
			x5 = tmp0>>16;
			x6 = tmp0&0x0000ffff;
			//stage 3
			reflector(x0,x1);
			//rotator(x2,x3,35468,50159,-121095); //sqrt2_c6
			tmp0 = butterfly((x2<<16)|x3,3); //sqrt2_c6
			x2 = tmp0>>16;
			x3 = tmp0&0x0000ffff;
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
			//rotator(x4,x7,54491,-18081, -90901); //c3
			tmp0 = butterfly((x4<<16)|x7,2); //c3
			x4 = tmp0>>16;
			x7 = tmp0&0x0000ffff;
			//rotator(x5,x6,64277,-51491,-77062); //c1
			tmp0 = butterfly((x5<<16)|x6,1); //c1
			x5 = tmp0>>16;
			x6 = tmp0&0x0000ffff;
			//stage 3
			reflector(x0,x1);
			//rotator(x2,x3,35468,50159,-121095); //sqrt2_c6
			tmp0 = butterfly((x2<<16)|x3,3); //sqrt2_c6
			x2 = tmp0>>16;
			x3 = tmp0&0x0000ffff;
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

