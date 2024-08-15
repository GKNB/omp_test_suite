#include<omp.h>
#include<cstdlib>
#include<iostream>
#include<cstdlib>
#include<cassert>

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

  dataType* res       = (dataType*)malloc(sizeof(dataType));
  dataType* res_h     = (dataType*)malloc(sizeof(dataType));
  dataType* res_d     = (dataType*)malloc(sizeof(dataType));
  *res = *res_h = *res_d = 0.0;

  //=====================================Serial running==================================
  double tc = 0.0;
  for(int lp = 0; lp < nlp; lp++)
  {
    tc -= omp_get_wtime();
    for(int i=0; i<N; i++)
      *res += data[i];
    tc += omp_get_wtime();
  }
  std::cout << "Time for serial with N = " << N << " is " << tc << std::endl;

  //=====================================Openmp CPU parallel running==================================
  tc = 0.0;
  for(int lp = 0; lp < nlp; lp++)
  {
    tc -= omp_get_wtime();
#pragma omp parallel for simd
    for(int i=0; i<N; i++)
    {
#pragma omp atomic update
      *res_h += data[i];
    }
    tc += omp_get_wtime();
  }

  bool do_abort = false;
  if(abs(*res_h - *res) > delta)
  {
    do_abort = true;
  }
  if(do_abort)
    assert(0 && "Error! Atomic update for Openmp CPU fail\n");

  std::cout << "Time for CPU openmp single atomic with N = " << N << " is " << tc << std::endl;

  //=====================================Openmp GPU parallel running==================================
#pragma omp target enter data map(to:res_d[0:1])
#pragma omp target enter data map(to:data[0:N])
  tc = 0.0;
  for(int lp = 0; lp < nlp; lp++)
  {
    tc -= omp_get_wtime();
#pragma omp target teams distribute parallel for simd
    for(int i=0; i<N; i++)
    {
#pragma omp atomic update
      res_d[0] += data[i];
    }
    tc += omp_get_wtime();
  }
#pragma omp target exit data map(from:res_d[0:1])
#pragma omp target exit data map(release:data[0:N])

  if(abs(*res_d - *res) > delta)
  {
    do_abort = true;
  }
  if(do_abort)
    assert(0 && "Error! Atomic update for Openmp GPU fail\n");

  std::cout << "Time for GPU openmp atomic with N = " << N << " is " << tc << std::endl;

  return 0;
}
