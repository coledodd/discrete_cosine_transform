#include <math.h>
//=================PROTOTYPES==============================
void dct(float);
float X(int,int);
float C(int);

float input[][];

float C(int u){
  return (u == 0)? 1.0/sqrt(2):1;
}

float X(int u, int v){
  float sum = 0;
  for(int i = 0; i < 7; i++){
    for(int j = 0; j < 7; j++){
      sum = input[i][j] * cos(2*j+1)*PI*u/16 * cos(2*j+1)*PI*v/16;
    }
  }  
  return sum * (C(u)/2) * (C(v)/2);
}

void dct(float a[][]){
  input = a;
  float result[][];
    
  for(int i = 0; i < 7; i++){
    for(int j = 0; j < 7; j++){
       result[i][j] = X(i,j);
    }
  }
a = result;
}
