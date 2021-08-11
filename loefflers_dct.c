float* arr;

void reflector(int i1, int i2) {
	float o1 = arr[i1] + arr[i2];
	float o2 = arr[i1] - arr[i2];
	
	arr[i1] = o1;
	arr[i2] = o2;
}

// const_0, const_1, and const_2 defined such that:
//	O'  = const_1*I'' + const_0(I'+I'')
//	0'' = const_2*I'  + const_0(I'+I'')
void rotator(int i1, int i2, float const_0, float const_1, float const_2) {
	float sum = const_0*(arr[i1]+arr[i2]);
	float o1 = const_1*arr[i2] + sum;
	float o2 = const_2*arr[i1] + sum;
	
	arr[i1] = o1;
	arr[i2] = o2;
}

void c3() 	{ rotator(4, 7, 0.831469612303, -0.275899379283, -1.38703984532); }
void c1() 	{ rotator(5, 6, 0.980785280403, -0.785694958387, -1.17587560242); }
void sqrt2_c6() { rotator(2, 3, 0.541196100146, -0.76536686473, -1.84775906502); }

void scale_up(int i) {
	arr[i] *= SQRT_2;
}

void loeffler() {
	//stage 1
	reflector(0,7);
	reflector(1,6);
	reflector(2,5);
	reflector(3,4);	
	
	//stage 2
	reflector(0,3);
	reflector(1,2);
	c3();
	c1();

	//stage 3
	reflector(0,1);
	sqrt2_c6();
	reflector(4,6);
	reflector(5,7);
	
	//stage 4
	reflector(4,7);
	scale_up(5);
	scale_up(6);
}
