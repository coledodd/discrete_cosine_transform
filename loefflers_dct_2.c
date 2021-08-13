#include <stdint.h>

#define reflector (a, b) tmp0=a; a=tmp+b; b=tmp-b;
#define rotator (a, b, c0, c1, c2) a<<=4; b<<=4; tmp0 = c1*b + c0*(a+b); b = c1*b + c0*(a+b); a=tmp0; a>>=4; b>>=4;
#define scale (a) a<<=4; a*6; a>>=4;

void loeffler(uint8_t input[8], int8_t output[8]) {
	uint32_t load3210 = ((uint32_t*) input)[0];
	uint32_t load7654 = ((uint32_t*) input)[1];
	
	int32_t store3210 = 0;
	int32_t store7654 = 0;
	
	//even
	//stage 1
	int32_t x0 = ((load3210&0x000000ff)>>0) + ((load7654&0xff000000)>>24);
	int32_t x1 = ((load3210&0x0000ff00)>>8) + ((load7654&0x00ff0000)>>16);
	int32_t x2 = ((load3210&0x00ff0000)>>16) + ((load7654&0x0000ff00)>>8);
	int32_t x3 = ((load3210&0xff000000)>>24) + ((load7654&0x000000ff)>>0);
	
	int32_t tmp0;
	
	//stage 2
	reflector(x0,x3);
	reflector(x1,x2);
	
	//stage 3
	reflector(x0,x1);
	rotator(x2,x3,9,12,-30); //sqrt2_c6
	
	//stage 4
	
	//assignment
	x0 >>= 8; x1 >>= 8; x2 >>= 8; x3 >>= 8;
	store3210 |= x0;
	store3210 |= x2<<16;
	store7654 |= x1;
	store7654 |= x3<<16;
	
	//odd
	//stage 1
	int32_t x0 = ((load3210&0x000000ff)>>0) - ((load7654&0xff000000)>>24);
	int32_t x1 = ((load3210&0x0000ff00)>>8) - ((load7654&0x00ff0000)>>16);
	int32_t x2 = ((load3210&0x00ff0000)>>16) - ((load7654&0x0000ff00)>>8);
	int32_t x3 = ((load3210&0xff000000)>>24) - ((load7654&0x000000ff)>>0);
	
	//stage 2
	rotator(x0,x3,13,-4,-22);
	rotator(x1,x2,16,-13,-19);
	
	//stage 3
	reflector(x0,x2);
	reflector(x3,x1);
	
	//stage4
	reflector(x3,x0);
	scale(x1,x2);
	
	x0 >>= 8; x1 >>= 8; x2 >>= 8; x3 >>= 8;
	store7654 |= x0<<24;
	store3210 |= x1<<24;
	store7654 |= x2<<8;
	store3210 |= x3<<8;
	
	((int32_t*) output)[0] = store3210;
	((uint32_t*) output)[1] = store7654;
	
}
