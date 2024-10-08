#include<omp.h>
#include<cstdlib>
#include<iostream>
#include<cstdlib>
#include<cassert>

int main()
{
  constexpr int N = 1024 * 1024 * 32;
  constexpr int len = 131072;
  constexpr int nlp = 10;
  constexpr int rf = 16;  //a factor which removes possible data racing

  using dataType = int;
  dataType delta = (dataType)2e-2;
  std::cout << "We are testing atomicAdd with type " << typeid(delta).name() << std::endl;
  srand(1234);

  int *pos = (int*)malloc(sizeof(int) * N);
  dataType* data = (dataType*)malloc(sizeof(dataType) * N);
  for(int i=0; i<N; i++)
  {
    pos[i] = rand() % len;
    data[i] = rand() / (dataType)RAND_MAX;
  }

  dataType* res       = (dataType*)malloc(sizeof(dataType) * len);
  dataType* res_h     = (dataType*)malloc(sizeof(dataType) * len);
  dataType* res_d     = (dataType*)malloc(sizeof(dataType) * len);
  dataType* res_h_rf  = (dataType*)malloc(sizeof(dataType) * len * rf);
  dataType* res_d_rf  = (dataType*)malloc(sizeof(dataType) * len * rf);
  for(int i=0; i<len; i++)
    res[i] = res_h[i] = res_d[i] = res_h_rf[i*rf] = res_d_rf[i*rf] = 0.0;

  //=====================================Serial running==================================
  double tc = 0.0;
  for(int lp = 0; lp < nlp; lp++)
  {
    tc -= omp_get_wtime();
    for(int i=0; i<N; i++)
      res[pos[i]] += data[i];
    tc += omp_get_wtime();
  }
  std::cout << "Time for serial with N = " << N << " and len = " << len << " is " << tc << std::endl;

  //=====================================Openmp CPU parallel running without rf==================================
  tc = 0.0;
  for(int lp = 0; lp < nlp; lp++)
  {
    tc -= omp_get_wtime();
#pragma omp parallel for simd
    for(int i=0; i<N; i++)
    {
      res_h[pos[i]] += data[i];
    }
    tc += omp_get_wtime();
  }

  std::cout << "Time for CPU openmp atomic without rf with N = " << N << " and len = " << len << " is " << tc << std::endl;

  //=====================================Openmp GPU parallel running without rf==================================
#pragma omp target enter data map(to:res_d[0:len])
#pragma omp target enter data map(to:data[0:N])
#pragma omp target enter data map(to:pos[0:N])
  tc = 0.0;
  for(int lp = 0; lp < nlp; lp++)
  {
    tc -= omp_get_wtime();
#pragma omp target teams distribute parallel for simd
    for(int i=0; i<N; i++)
    {
      res_d[pos[i]] += data[i];
    }
    tc += omp_get_wtime();
  }
#pragma omp target exit data map(from:res_d[0:len])
#pragma omp target exit data map(release:data[0:N])
#pragma omp target exit data map(release:pos[0:N])

  std::cout << "Time for GPU openmp atomic without rf with N = " << N << " and len = " << len << " is " << tc << std::endl;

  return 0;
}
