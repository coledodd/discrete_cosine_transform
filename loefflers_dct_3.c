#include <stdint.h>
#include <stdio.h>

#define reflector(a, b) tmp0=a; a=tmp0+b; b=tmp0-b;
#define rotator(a, b, c0, c1, c2) tmp0 = c1*b + c0*(a+b); b = c2*b + c0*(a+b); a=tmp0; a = a & 0xf ? (a>>4) | 1 : a>>4; b = b & 0xf ? (b>>4) | 1 : b>>4;
#define scale(a)a = a & 0xf ? (a>>4) | 1 : a>>4;

void loeffler(int16_t x[8]) {
	int32_t x0 = x[0];
	int32_t x1 = x[1];
	int32_t x2 = x[2];
	int32_t x3 = x[3];
	int32_t x4 = x[4];
	int32_t x5 = x[5];
	int32_t x6 = x[6];
	int32_t x7 = x[7];

	int32_t tmp0;
	
	reflector(x0,x7);
	reflector(x1,x6);
	reflector(x2,x5);
	reflector(x3,x4);
	
	reflector(x0,x3);
	reflector(x1,x2);
	rotator(x4,x7,13,-4,-22);
	rotator(x5,x6,16,-13,-19);
	
	reflector(x0,x1);
	rotator(x2,x3,9,12,-30); //sqrt2_c6
	reflector(x4,x6);
	reflector(x7,x5);
	
	reflector(x7,x4);
	scale(x5);
	scale(x6);
	
	x[0] = x0;
	x[4] = x1;
	x[2] = x2;
	x[6] = x3;
	x[7] = x4;
	x[3] = x5;
	x[5] = x6;
	x[1] = x7;
}
int main() {
	int16_t input[8][8] = {
		{1,2,3,4,5,6,7,8},
		{1,2,3,4,5,6,7,8},
		{1,2,3,4,5,6,7,8},
		{1,2,3,4,5,6,7,8},
		{1,2,3,4,5,6,7,8},
		{1,2,3,4,5,6,7,8},
		{1,2,3,4,5,6,7,8},
		{1,2,3,4,5,6,7,8}
	};

	for (int i = 0; i < 8; i++)
		loeffler(input[i]);

	int16_t input_2[8][8];

	for (int i = 0; i < 8; i++)
		for (int j = 0; j < 8; j++)
			input_2[i][j] = input[j][i];

	printf("\n transposed \n");
	for (int i = 0; i < 8; i++)
		loeffler(input_2[i]);

	for (int i = 0; i < 8; i++)
		for (int j = 0; j < 8; j++)
			input[i][j] = input_2[j][i];

	for (int i = 0; i < 8; i++) {
		for (int j = 0; j < 8; j++)
			printf("%d, ", input[i][j] & 0b111 ? (input[i][j] >> 3) | 1 : (input[i][j] >> 3));
		puts("\n");
	}
	return 0;
}
