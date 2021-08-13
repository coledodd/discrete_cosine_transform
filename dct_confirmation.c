#include <math.h>
#include <stdio.h>
//=================PROTOTYPES==============================
void dct(int[8][8]);
void dct_f(float[8][8]);
int X(int,int);
float X_f(int,int);
float C(int);

int (*input)[8];
float (*input_f)[8];

float C(int u){
  return (u == 0)? 1.0/sqrt(2.0):1;
}

int X(int u, int v){
  float sum = 0;
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      sum += input[i][j] * cos((2*i+1)*M_PI*u/16) * cos((2*j+1)*M_PI*v/16);
    }
  }  
  return (sum <= 0)?  (int)(round(sum * (C(u)/2) * (C(v)/2))-0.5):(int)(round(sum * (C(u)/2) * (C(v)/2))+0.5);
}

float X_f(int u, int v){
  float sum = 0;
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      sum += input_f[i][j] * cos((2*i+1)*M_PI*u/16) * cos((2*j+1)*M_PI*v/16);
    }
  }
  return sum * (C(u)/2) * (C(v)/2);
}

void dct(int a[8][8]){
  input = a;
  int result[8][8];
    
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
       result[i][j] = X(i,j);
    }
  }
  
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      a[i][j] = result[i][j];
    }
  }
}

void dct_f(float a[8][8]){
  input_f = a;
  float result[8][8];

  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
       result[i][j] = X_f(i,j);
    }
  }

  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      a[i][j] = result[i][j];
    }
  }
}

int main(){
  int image[8][8] = {
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,8}
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
  printf("original input int:\n"); 
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      printf("%i ",image[i][j]);
    }
    printf("\n");
  }

  dct(image);
  
  printf("\n\nafter DCT int:\n");
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      printf("%i ",image[i][j]);
    }
    printf("\n");
  }  

  printf("\n\noriginal input float:\n");
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      printf("%f ",image_f[i][j]);
    }
    printf("\n");
  }

  dct_f(image_f);

  printf("\n\nafter DCT float:\n");
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      printf("%f ",image_f[i][j]);
    }
    printf("\n");
  }
}
