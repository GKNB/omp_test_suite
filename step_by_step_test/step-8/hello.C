#include <stdio.h>
#include <iostream>
#include <cublas_v2.h>
#include <cstdlib>

int main()
{
  float *x = (float*)malloc(sizeof(float) * 1000);
  float *y = (float*)malloc(sizeof(float) * 1000);
  for(int i=0; i<1000; i++)
  {
    x[i] = float(i);
    y[i] = 3.0f * float(i);
  }
  
  float a = 1.5f;

  cublasHandle_t handle;
  cublasCreate(&handle);

#pragma omp target data map(to:x[0:1000]) map(tofrom:y[0:1000])
  {
    #pragma omp target data use_device_ptr(x,y)
    {
      cublasSaxpy(handle, 1000, &a, x, 1, y, 1);
    }
  }

  std::cout << "y[0] = " << y[0] << "\ny[45] = " << y[45] << "\ny[999] = " << y[999] << std::endl;
  
  return 0;
}
