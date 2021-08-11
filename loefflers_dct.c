float* arr;

void loeffler() {
	//stage 1
	reflector(0,7);
	reflector(1,6);
	reflector(2,5);
	reflector(3,4);	
	
	//stage 2
	reflector(0,3);
	reflector(1,2);
	rotator(1,3,4,7);
	rotator(1,1, 5,6);

	//stage 3
	reflector(0,1);
	rotator(SQRT_2, 6, 2,3);
	reflector(4,6);
	reflector(5,7);
	
	//stage 4
	reflector(4,7);
	scale_up(5);
	scale_up(6);
}
