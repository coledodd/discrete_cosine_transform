#include <math.h>
#include <stdio.h>
//=================PROTOTYPES=============================
void dct(int[8][8]);
void Q(int[8][8], int);
void dct_f(float[8][8]);
int X(int,int);
float X_f(int,int);
float C(int);

//=================VARIABLES==============================
int (*input)[8];
float (*input_f)[8];

//=================HELPER FUNCTIONS=======================
//code adapted from here
//https://stackoverflow.com/questions/1903954/is-there-a-standard-sign-function-signum-sgn-in-c-c
int sign(int val) {
    return (0 < val) - (val < 0);
}

//=================DCT CODE==============================
float C(int u){
  return (u == 0)? 1.0/sqrt(2.0):1;
}

int X(int u, int v){
  float sum = 0;
  int i = 0;
  int j = 0;
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      sum += input[i][j] * cos((2*i+1)*M_PI*u/16) * cos((2*j+1)*M_PI*v/16);
    }
  }  
  return (sum <= 0)?  (int)(round(sum * (C(u)/2) * (C(v)/2))-0.5):(int)(round(sum * (C(u)/2) * (C(v)/2))+0.5);
}

void dct(int a[8][8]){
  input = a;
  int result[8][8];
  int i;
  int j;
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
       result[i][j] = X(i,j);
    }
  }

  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      a[i][j] = result[i][j];
    }
  }
}
//=================QUANTIZATION==============================
void Q(int a[8][8], int q_scale){
  int result[8][8];
  //quatization table
  int q[8][8] = {
	{16,  11,  10,  16,  24,  40,  51,  61},
	{12,  12,  14,  19,  26,  58,  60,  55},
	{14,  13,  16,  24,  40,  57,  69,  56},
	{14,  17,  22,  29,  51,  87,  80,  62},
	{18,  22,  37,  56,  68, 109, 103,  77},
	{24,  35,  55,  64,  81, 104, 113,  92},
	{49,  64,  78,  87, 103, 121, 120, 101},
	{72,  92,  95,  98, 112, 100, 103,  99}
  };
  int i;
  int j;
  //quantization
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
       result[i][j] = ((16*a[i][j]) + sign(a[i][j])*q_scale*q[i][j]) / (2*q_scale*q[i][j]);
    }
  }

  //changing input array to output
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      a[i][j] = result[i][j];
    }
  }
}

//=================DCT CODE FOR FLOATS==============================
float X_f(int u, int v){
  float sum = 0;
  int i;
  int j;
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      sum += input_f[i][j] * cos((2*i+1)*M_PI*u/16) * cos((2*j+1)*M_PI*v/16);
    }
  }
  return sum * (C(u)/2) * (C(v)/2);
}
 
void dct_f(float a[8][8]){
  input_f = a;
  float result[8][8];
  int i;
  int j;
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
       result[i][j] = X_f(i,j);
    }
  }

  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      a[i][j] = result[i][j];
    }
  }
}

