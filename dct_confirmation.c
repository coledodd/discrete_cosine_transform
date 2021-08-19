#include <math.h>
#include <stdio.h>
#include <stdint.h>
//=================PROTOTYPES=============================
void dct(uint8_t[240][320],int16_t[240][320]);
void Q(int[8][8], int);
void dct_f(float[8][8]);
int16_t X(int,int);
float X_f(int,int);
float C(int);

//=================VARIABLES==============================
uint8_t input[8][8];
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

int16_t X(int u, int v){
  float sum = 0;
  int i = 0;
  int j = 0;
  for(i = 0; i < 8; i++){
    for(j = 0; j < 8; j++){
      sum += input[i][j] * cos((2*i+1)*M_PI*u/16) * cos((2*j+1)*M_PI*v/16);
    }
  }  
  return (sum <= 0)?  (int16_t)(round(sum * (C(u)/2) * (C(v)/2))-0.5):(int16_t)(round(sum * (C(u)/2) * (C(v)/2))+0.5);
}

void dct(uint8_t a[240][320], int16_t X_[240][320]){
  
  int16_t result[240][320];
  int i;
  int j;
  int k;
  int l;


  //for each block
  for(k = 0; k < 30; k++){
    for(l = 0; l < 40; l++){
      //getting input 8x8 for global storage
      for(i = 0; i < 8; i++){
        for(j = 0; j < 8; j++){
          input[i][j] = a[k*8+i][l*8+j];
        }
      }
      //for each pixel in block
      for(i = 0; i < 8; i++){
        for(j = 0; j < 8; j++){
          //printf("here?");
          result[k*8+i][l*8+j] = X(i,j);
        }
      }
      //printf("here?");
      for(i = 0; i < 8; i++){
        for(j = 0; j < 8; j++){
          X_[k*8+i][l*8+j] = result[k*8+i][l*8+j];
        }
      }
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

