#include <stdio.h>
#include <iostream>
#include <cstdlib>

__global__ void hello()
{
  printf("Hello from block: %u, thread: %u\n", blockIdx.x, threadIdx.x);
}

//Add this function since printf on cori gpu does not seem working
__global__ void easy(float *da, int n)
{
  int idx = threadIdx.x + blockIdx.x * blockDim.x;
  if(idx < n)
    da[idx] = da[idx] * 3.0;
}

int main(){

  int n = 64;
  hello<<<2,2>>>();

  float *ha;
  ha = (float*)malloc(sizeof(float) * n);
  for(int i=0; i<n; i++)
    ha[i] = float(i);

  float *da;
  cudaMalloc(&da, sizeof(float) * n);
  cudaMemcpy(da, ha, sizeof(float) * n, cudaMemcpyHostToDevice);
  easy<<<2,32>>>(da, n);

  cudaMemcpy(ha, da, sizeof(float) * n, cudaMemcpyDeviceToHost);
  for(int i=0; i<n; i++)
    std::cout << ha[i] << std::endl;

  return 0;
}
