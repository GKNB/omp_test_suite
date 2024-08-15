#include <stdio.h>
#include <cublas_v2.h>
#include <iostream>
#include <cstdlib>

__global__ void hello()
{
  printf("Hello from block: %u, thread: %u\n", blockIdx.x, threadIdx.x);
}

//__global__ void myAxpy(int n, float a, float *x, float *y)
//{
//  int idx = threadIdx.x + blockIdx.x * blockDim.x;
//  if(idx < n)
//    y[idx] = y[idx] + a * x[idx];
//}

int main()
{
  hello<<<2,2>>>();

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

  float a = 1.5f;

  cublasStatus_t stat;
  cublasHandle_t handle;
  stat = cublasCreate(&handle);

  stat = cublasSaxpy(handle, 1000, &a, dx, 1, dy, 1);

  cudaMemcpy(y, dy, sizeof(float) * 1000, cudaMemcpyDeviceToHost);

  std::cout << "y[0] = " << y[0] << "\ny[45] = " << y[45] << "\ny[999] = " << y[999] << std::endl;
  
  return 0;
}
