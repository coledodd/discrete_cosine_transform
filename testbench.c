#include <loefflers_dct.h>
#include <dct_confirmation.c>
#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <test_images.c>

int image_1[8][8] = {
  {1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8}
};

int image_2[8][8] = {
	{21, 21, 21, 22, 22, 22, 22, 22},
	{21, 21, 21, 21, 21, 21, 21, 21},
	{21, 21, 21, 21, 21, 21, 21, 21},
	{21, 21, 21, 21, 21, 20, 20, 20},
 	{22, 22, 22, 22, 21, 21, 21, 21},
 	{24, 24, 24, 23, 23, 22, 22, 22},
 	{26, 26, 25, 25, 24, 24, 24, 23},
 	{27, 27, 27, 26, 25, 25, 25, 24}
}; 

int16_t input_3[8][8] = {{0, 0, 0, 0, 0, 0, 0, 0}, 
  {255, 255, 255, 255, 255, 255, 255, 255}, 
	{0, 0, 0, 0, 0, 0, 0, 0}, 
	{255, 255, 255, 255, 255, 255, 255, 255}, 
	{0, 0, 0, 0, 0, 0, 0, 0}, 
	{255, 255, 255, 255, 255, 255, 255, 255}, 
	{0, 0, 0, 0, 0, 0, 0, 0}, 
	{255, 255, 255, 255, 255, 255, 255, 255}
};

float image_f[8][8] = {
  {1,2,3,4,5,6,7,8},
  {1,2,3,4,5,6,7,8},
  {1,2,3,4,5,6,7,8},
  {1,2,3,4,5,6,7,8},
  {1,2,3,4,5,6,7,8},
  {1,2,3,4,5,6,7,8},
  {1,2,3,4,5,6,7,8},
  {1,2,3,4,5,6,7,8}
};
int main(void){
  
  int16_t output[240][320]
  
  printf("original input int:\n"); 
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      printf("%i ",input_1[i][j]);
    }
    printf("\n");
  }
  //start timer
	clock_t start_clk = clock();
  
  loeffler(test_image_1,output)
  
  //stop timer
  printf("Processor time used by testbench: %lg sec.\n", \
    (clock() - start_clk) / (long double) CLOCKS_PER_SEC);

  printf("\nLoeffler output:\n");
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      printf("%i ",output[i][j]);
    }
    printf("\n");
  }
  
  dct(input_3);
  printf("\nTestbench output:\n");
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      printf("%i ",input_3[i][j]);
    }
    printf("\n");
  }  


}
