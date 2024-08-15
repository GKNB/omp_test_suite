#include <stdio.h>
#include <iostream>
#include <cuda_runtime.h>
#include <cufft.h>
#include <cstdlib>
#include <cmath>
#include <complex>

#define CUFFT_SAFE_CALL(call)                                                                          \
    {                                                                                                  \
        cufftResult err = call;                                                                        \
        if (CUFFT_SUCCESS != err) {                                                                    \
            fprintf(stderr, "CUFFT error in file '%s' in line %i : %02X.\n", __FILE__, __LINE__, err); \
            exit(EXIT_FAILURE);                                                                        \
        }                                                                                              \
    }

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
  std::cout << "\n\n\n\n\n";

///////////////////////////////////////////////////////////////////////////////////////////////////

  cufftReal *xt_2 = (cufftReal*)malloc(sizeof(cufftReal) * N);
  cufftComplex *fk_2 = (cufftComplex*)malloc(sizeof(cufftComplex) * N);
  for(int i=0; i<N; i++)
  {
    xt_2[i] = pow(float(i), 3.0);
  }
  cufftReal *dxt_2;
  cudaMalloc((void**)&dxt_2, sizeof(cufftReal) * N);
  cudaMemcpy(dxt_2, xt_2, sizeof(cufftReal) * N, cudaMemcpyHostToDevice);

  cufftComplex *dfk_2;
  cudaMalloc((void**)&dfk_2, sizeof(cufftComplex) * N);

  cufftHandle plan;
  cufftPlan1d(&plan, N, CUFFT_R2C, 1);

  cufftExecR2C(plan, dxt_2, dfk_2);

  cudaMemcpy(fk_2, dfk_2, sizeof(cufftComplex) * N, cudaMemcpyDeviceToHost);

  cufftDestroy(plan);
  for(int k=0; k<N; k++)
    std::cout << "k = " << k << "\t  f[k] = " << fk_2[k].x << "\t + " << fk_2[k].y << " * i" << std::endl;
  std::cout << "\n\n\n\n\n";

///////////////////////////////////////////////////////////////////////////////////////////////////

  float *xt_3 = (float*)malloc(sizeof(float) * N);
  std::complex<float> *fk_3 = (std::complex<float>*)malloc(sizeof(std::complex<float>) * N);
  for(int i=0; i<N; i++)
  {
    xt_3[i] = pow(float(i), 3.0);
  }
  float *dxt_3;
  cudaMalloc((void**)&dxt_3, sizeof(float) * N);
  cudaMemcpy(dxt_3, xt_3, sizeof(float) * N, cudaMemcpyHostToDevice);

  std::complex<float> *dfk_3;
  cudaMalloc((void**)&dfk_3, sizeof(std::complex<float>) * N);

  cufftHandle plan2;
  cufftPlan1d(&plan2, N, CUFFT_R2C, 1);

  cufftExecR2C(plan2, (cufftReal*)dxt_3, (cufftComplex*)dfk_3);

  cudaMemcpy(fk_3, dfk_3, sizeof(std::complex<float>) * N, cudaMemcpyDeviceToHost);

  cufftDestroy(plan2);
  for(int k=0; k<N; k++)
    std::cout << "k = " << k << "\t  f[k] = " << fk_3[k] << std::endl;
  std::cout << "\n\n\n\n\n";

/////////////////////////////////////////////////////////////////////////////////////////////////

  std::cout << "Sizeof float = " << sizeof(float) << std::endl;
  std::cout << "Sizeof cufftReal = " << sizeof(cufftReal) << std::endl;
  std::cout << "Sizeof complex<float> = " << sizeof(std::complex<float>) << std::endl;
  std::cout << "Sizeof cufftComplex = " << sizeof(cufftComplex) << std::endl;

  cufftReal *xt_5 = (cufftReal*)malloc(sizeof(cufftReal) * N);
  cufftComplex *fk_5 = (cufftComplex*)malloc(sizeof(cufftComplex) * N);
  for(int i=0; i<N; i++)
  {
    xt_5[i] = pow(float(i), 3.0);
  }

  cufftHandle plan4;
  cufftPlan1d(&plan4, N, CUFFT_R2C, 1);

#pragma omp target data map(to:xt_5[0:N]) map(tofrom:fk_5[0:N])
  {
    #pragma omp target data use_device_ptr(xt_5,fk_5)
    {
      CUFFT_SAFE_CALL(cufftExecR2C(plan4, (cufftReal*)xt_5, (cufftComplex*)fk_5));
    }
  }

  cufftDestroy(plan4);
  for(int k=0; k<N; k++)
    std::cout << "k = " << k << "\t  f[k] = " << fk_5[k].x << "\t + " << fk_5[k].y << " * i" << std::endl;
  std::cout << "\n\n\n\n\n";

///////////////////////////////////////////////////////////////////////////////////////////////////

  float *xt_4 = (float*)malloc(sizeof(float) * N);
  std::complex<float> *fk_4 = (std::complex<float>*)malloc(sizeof(std::complex<float>) * N);
  for(int i=0; i<N; i++)
  {
    xt_4[i] = pow(float(i), 3.0);
  }

  cufftHandle plan3;
  cufftPlan1d(&plan3, N, CUFFT_R2C, 1);

#pragma omp target data map(to:xt_4[0:N]) map(tofrom:fk_4[0:N])
  {
    #pragma omp target data use_device_ptr(xt_4,fk_4)
    {
      cufftExecR2C(plan3, (cufftReal*)xt_4, (cufftComplex*)fk_4);
    }
  }

  cufftDestroy(plan3);
  for(int k=0; k<N; k++)
    std::cout << "k = " << k << "\t  f[k] = " << fk_4[k] << std::endl;
  std::cout << "\n\n\n\n\n";


  return 0;
}
