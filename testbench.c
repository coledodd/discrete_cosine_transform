#include "dct.h"
#include "dct_confirmation.c"


#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/time.h>


int main(void){
  
  int16_t output[240][320];
  int16_t output_confirm[240][320];
  uint8_t test_image[240][320];
  int i;
  int j;
  for(i = 0; i < 240; i++){
    for(j = 0; j < 320; j++){
      test_image[i][j] = rand()%256;
    }
  }


  printf("original input:\n");

  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      printf("%i ",test_image[i][j]);
    }
    printf("\n");
  }
  struct timeval t0, t1;
  //start timer
  gettimeofday(&t0, NULL);

  for(i = 0; i < 100; i++){
    loeffler(test_image, output);
  }
  //stop timer
  gettimeofday(&t1, NULL);
  printf("\nDid %u calls in %.2g seconds\n", \
    i, t1.tv_sec - t0.tv_sec + 1E-6 * (t1.tv_usec - t0.tv_usec));
  
  //testbench dct
  dct(test_image,output_confirm);
  //check for incosistencies
  int count = 0;
  for(i = 0; i < 240; i++){
    for(j = 0; j < 320; j++){
      switch(output[i][j]-output_confirm[i][j]) {
        case -1: case 0: case 1: break;
        default: count++; break;
      }
    }
  }

  printf("\nerror count:%d\n",count);
  printf("\nLoeffler output:\n");
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      printf("%i ",output[i][j]);
    }
    printf("\n");
  }
  printf("\nTestbench output:\n");
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      printf("%i ",output_confirm[i][j]);
    }
    printf("\n");
  }  
}
