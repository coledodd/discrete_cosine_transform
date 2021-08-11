#include <math.h>
#include <stdio.h>
//=================PROTOTYPES==============================
void dct(float[8][8]);
float X(int,int);
float C(int);

float (*input)[8];

float C(int u){
  return (u == 0)? 1.0/sqrt(2):1;
}

float X(int u, int v){
  float sum = 0;
  for(int i = 0; i < 7; i++){
    for(int j = 0; j < 7; j++){
      sum = input[i][j] * cos((double)(2*j+1))*M_PI*u/16 * cos((double)(2*j+1))*M_PI*v/16;
    }
  }  
  return sum * (C(u)/2) * (C(v)/2);
}

void dct(float a[8][8]){
  input = a;
  float result[8][8];
    
  for(int i = 0; i < 7; i++){
    for(int j = 0; j < 7; j++){
       result[i][j] = X(i,j);
    }
  }
  
  for(int i = 0; i < 7; i++){
    for(int j = 0; j < 7; j++){
      a[i][j]=result[i][j];
    }
  }
}

int main(){
  float image[8][8] = {
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8}
  };
  
  printf("original input:\n"); 
  for(int i = 0; i < 7; i++){
    for(int j = 0; j < 7; j++){
      printf("%f ",image[i][j]);
    }
    printf("\n");
  }

  dct(image);
  
  printf("\n\nafter DCT:\n");
  for(int i = 0; i < 7; i++){
    for(int j = 0; j < 7; j++){
      printf("%f ",image[i][j]);
    }
    printf("\n");
  }  

}
