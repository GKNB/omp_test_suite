#include <stdio.h>
#include <iostream>
#include <cuda_runtime.h>
#include <cufft.h>
#include <cstdlib>
#include <cmath>
#include <complex>

void naive_ft(float *xt, float *fk_re, float *fk_im, const int sz)
{
  for(int k=0; k<sz; k++)
  {
    fk_re[k] = 0.0f;
    fk_im[k] = 0.0f;
    for(int t=0; t<sz; t++)
    {
      float theta = -2.0f * M_PI * k * t / sz;
      fk_re[k] += xt[t] * cos(theta);
      fk_im[k] += xt[t] * sin(theta);
    }
  }
}

int main()
{
  constexpr int N = 8;
  float *xt = (float*)malloc(sizeof(float) * N);
  float *fk_re = (float*)malloc(sizeof(float) * N);
  float *fk_im = (float*)malloc(sizeof(float) * N);
  for(int i=0; i<N; i++)
  {
    xt[i] = pow(float(i), 3.0);
  }

  naive_ft(xt, fk_re, fk_im, N);
  for(int k=0; k<N; k++)
    std::cout << "k = " << k << "\t  f[k] = " << fk_re[k] << "\t + " << fk_im[k] << " * i" << std::endl;

///////////////////////////////////////////////////////////////////////////////////////////////////

  float *xt_2 = (float*)malloc(sizeof(float) * N);
  std::complex<float> *fk_2 = (std::complex<float>*)malloc(sizeof(std::complex<float>) * N);
  for(int i=0; i<N; i++)
  {
    xt_2[i] = pow(float(i), 3.0);
  }

  cufftHandle plan;
  cufftPlan1d(&plan, N, CUFFT_R2C, 1);

#pragma omp target data map(to:xt_2[0:N]) map(tofrom:fk_2[0:N])
  {
    #pragma omp target data use_device_ptr(xt_2,fk_2)
    {
      cufftExecR2C(plan, xt_2, (cufftComplex*)fk_2);
    }
  }

  cufftDestroy(plan);
  for(int k=0; k<N; k++)
    std::cout << "k = " << k << "\t  f[k] = " << fk_2[k] << std::endl;


  return 0;
}
