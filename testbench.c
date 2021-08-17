#include "loefflers_dct.h"
#include "dct_confirmation.c"
#include "test_images.c"

#include <stdio.h>
#include <stdint.h>
#include <sys/time.h>


int main(void){
  
  int16_t output[240][320];
  
  printf("original input:\n");
  int i;
  int j;
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      printf("%i ",test_image_1[i][j]);
    }
    printf("\n");
  }
  struct timeval t0, t1;
  //start timer
  gettimeofday(&t0, NULL);

  int i;
  for(i = 0; i < 100; i++){
    loeffler(test_image_1, output);
  }
  //stop timer
  gettimeofday(&t1, NULL);
  printf("\nDid %u calls in %.2g seconds\n", \
    i, t1.tv_sec - t0.tv_sec + 1E-6 * (t1.tv_usec - t0.tv_usec));


  printf("\nLoeffler output:\n");
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      printf("%i ",output[i][j]);
    }
    printf("\n");
  }
  //testbench dct
  dct(test_image_2);

  printf("\nTestbench output:\n");
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      printf("%i ",test_image_2[i][j]);
    }
    printf("\n");
  }  
}
