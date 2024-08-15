#include<omp.h>
#include<cstdlib>
#include<iostream>
#include<cstdlib>
#include<cassert>

#include<cuda.h>

template<typename T>
__global__ void test_atomic_add(T* res, T* data, int size)
{
  int i = blockIdx.x * blockDim.x + threadIdx.x;
  if(i < size)
  {
    atomicAdd(res, data[i]);
  }
}

int main()
{
  constexpr int N = 1024 * 1024 * 32;
  constexpr int nlp = 10;

  using dataType = int;
  dataType delta = (dataType)2e-2;
  std::cout << "We are testing atomicAdd with type " << typeid(delta).name() << std::endl;
  srand(1234);

  dataType* data = (dataType*)malloc(sizeof(dataType) * N);
  for(int i=0; i<N; i++)
  {
    data[i] = rand() / (dataType)RAND_MAX;
  }

  dataType* res   = (dataType*)malloc(sizeof(dataType));
  dataType* res_h = (dataType*)malloc(sizeof(dataType));
  *res = *res_h = 0.0;

  dataType* res_d;
  cudaMalloc((void**)&res_d, sizeof(dataType));
  cudaMemcpy(res_d, res_h, sizeof(dataType), cudaMemcpyHostToDevice);

  dataType* data_d;
  cudaMalloc((void**)&data_d, sizeof(dataType) * N);
  cudaMemcpy(data_d, data, sizeof(dataType) * N, cudaMemcpyHostToDevice);

  //=====================================Serial running==================================
  double tc = 0.0;
  for(int lp = 0; lp < nlp; lp++)
  {
    tc -= omp_get_wtime();
    for(int i=0; i<N; i++)
      res[0] += data[i];
    tc += omp_get_wtime();
  }
  std::cout << "Time for serial with N = " << N << " is " << tc << std::endl;

  //=====================================CUDA running==================================
  tc = 0.0;
  tc -= omp_get_wtime();
  for(int lp = 0; lp < nlp; lp++)
  {
    test_atomic_add<<<N/512,512>>>(res_d, data_d, N);
  }
  cudaDeviceSynchronize();
  tc += omp_get_wtime();

  cudaMemcpy(res_h, res_d, sizeof(dataType), cudaMemcpyDeviceToHost);

  bool do_abort = false;
  
  if(abs(*res_h - *res) > delta)
  {
    do_abort = true;
  }
  
  if(do_abort)
    assert(0 && "Error! Atomic update for CUDA fail\n");

  std::cout << "Time for CUDA with N = " << N << " is " << tc << std::endl;

  return 0;
}
