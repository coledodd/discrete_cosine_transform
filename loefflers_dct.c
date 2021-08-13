#include <stdio.h>
#define SQRT_2 1.41421356237
float arr[8];

void reflector(int i1, int i2) {
	printf("ref input: %f\n", arr[i1]);
	printf("ref input: %f\n", arr[i2]);

	float o1 = arr[i1] + arr[i2];
	float o2 = arr[i1] - arr[i2];
	
	arr[i1] = o1;
	arr[i2] = o2;

	printf("ref output: %f\n", o1);
	printf("ref output: %f\n", o2);
}

// const_0, const_1, and const_2 defined such that:
//	O'  = const_1*I'' + const_0(I'+I'')
//	0'' = const_2*I'  + const_0(I'+I'')
void rotator(int i1, int i2, float const_0, float const_1, float const_2) {
	printf("rot input: %f\n", arr[i1]);
	printf("rot input: %f\n", arr[i2]);

	float sum_ = const_0*(arr[i1]+arr[i2]);
	float o1 = const_1*arr[i2] + sum_;
	float o2 = const_2*arr[i1] + sum_;
	
	arr[i1] = o1;
	arr[i2] = o2;

	printf("rot output: %f\n", o1);
	printf("rot output: %f\n", o2);
}

void c3() 	{ rotator(4, 7, 0.831469612303, -0.275899379283, -1.38703984532); }
void c1() 	{ rotator(5, 6, 0.980785280403, -0.785694958387, -1.17587560242); }
void sqrt2_c6() { rotator(2, 3, 0.541196100146, 0.76536686473, -1.84775906502); }

void scale_up(int i) {
	printf("sca input: %f\n", arr[i]);
	arr[i] *= SQRT_2;
	printf("sca output: %f\n", arr[i]);

}

void loeffler(float* input) {
	for (int i = 0; i < 8; i++)
		arr[i] = input[i];
	printf("\nstage 1\n");
	//stage 1
	reflector(0,7);
	reflector(1,6);
	reflector(2,5);
	reflector(3,4);	
	
	printf("\nstage 2\n");
	//stage 2
	reflector(0,3);
	reflector(1,2);
	c3();
	c1();

	printf("\nstage 3\n");
	//stage 3
	reflector(0,1);
	sqrt2_c6();
	reflector(4,6);
	reflector(7,5);
	
	printf("\nstage 4\n");
	//stage 4
	reflector(7,4);
	scale_up(5);
	scale_up(6);

	input[0] = arr[0];
	input[4] = arr[1];
	input[2] = arr[2];
	input[6] = arr[3];
	input[7] = arr[4];
	input[3] = arr[5];
	input[5] = arr[6];
	input[1] = arr[7];

}

int main() {
	float input[8][8] = {
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

	float input_2[8][8];

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
			printf("%f, ", input[i][j]/8);
		puts("\n");
	}
	return 0;
}
