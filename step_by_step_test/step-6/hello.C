#include <stdio.h>
#include <iostream>
#include <cublas_v2.h>
#include <cstdlib>
#include <cuda.h>
#include <cuda_runtime.h>

int main()
{
  float *x = (float*)malloc(sizeof(float) * 1000);
  float *y = (float*)malloc(sizeof(float) * 1000);
  for(int i=0; i<1000; i++)
  {
    x[i] = float(i);
    y[i] = 3.0f * float(i);
  }

  float *dx;
  float *dy;
  cudaMalloc(&dx, sizeof(float) * 1000);
  cudaMalloc(&dy, sizeof(float) * 1000);

  cudaMemcpy(dx, x, sizeof(float) * 1000, cudaMemcpyHostToDevice);
  cudaMemcpy(dy, y, sizeof(float) * 1000, cudaMemcpyHostToDevice);

  float aa = 1.5f;

  cublasStatus_t stat;
  cublasHandle_t handle;
  stat = cublasCreate(&handle);

  stat = cublasSaxpy(handle, 1000, &aa, dx, 1, dy, 1);

  cudaMemcpy(y, dy, sizeof(float) * 1000, cudaMemcpyDeviceToHost);

  std::cout << "y[0] = " << y[0] << "\ny[45] = " << y[45] << "\ny[999] = " << y[999] << std::endl;

/////////////////////////////////////////////////////////////////////////////////////////////////////

  int N = 1000000;
  int *a = (int *)malloc(N * sizeof(int));
  int *b = (int *)malloc(N * sizeof(int));
  int *c = (int *)malloc(N * sizeof(int));
  for(int i=0; i<N; i++)
  {
    a[i] = i;
    b[i] = N - i;
    c[i] = 0;
  }
#pragma omp target teams distribute parallel for \
                                             map(tofrom:a[0:N])  \
                                             map(tofrom:b[0:N])  \
                                             map(tofrom:c[0:N])  
  for(int i=0; i<N; i++)
  {
    c[i] = a[i] + b[i];
  }
  std::cout << c[0] << '\t' << c[N/2] << '\t' << c[N-1] << std::endl;
  return 0;
}
