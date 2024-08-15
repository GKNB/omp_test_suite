#include <iostream>
#include <type_traits>
#include <cstdlib>
#include <cmath>
#include <omp.h>
#include <cassert>

template<typename T>
struct myConstant
{
  static constexpr T epsilon = T{};
};

template<>
struct myConstant<int>
{
  static constexpr int epsilon = 1;
};

template<>
struct myConstant<float>
{
  static constexpr float epsilon = 1e-1;
};

template<>
struct myConstant<double>
{
  static constexpr double epsilon = 1e-2;
};


template<typename T>
typename std::enable_if<std::is_integral<T>::value, T>::type initialize_random(T epsilon) 
{
  return (rand() % 200) - 100;
}

template<typename T>
typename std::enable_if<std::is_floating_point<T>::value, T>::type initialize_random(T epsilon)
{
  return 2.0 * (rand() / static_cast <T> (RAND_MAX)) - 1.0;
}

template <typename T>
void reduction_kernel ( T* sum_d, T* data_d, const int N, const int nblocks, const int blocksize ) 
{
#pragma omp target teams distribute parallel for num_teams(nblocks) num_threads(blocksize) reduction(+:sum_d[0])
  for(int i=0; i<N; i++) 
  {
    sum_d[0] += data_d[i];
  }
  return; 
}

template <typename T>
T* reduction_wrapper ( const std::size_t N, const std::size_t blocksize ) 
{
  bool is_target_initial_device = false;
#pragma omp target map(tofrom: is_target_initial_device)
  if (omp_is_initial_device ()) {
    printf( "Target region being executed on host!! Aborting!!!! \n");
    is_target_initial_device = true;
  }
  if ( is_target_initial_device )
    std::abort ();

  const std::size_t threads_tot = N;
  const std::size_t nblocks     = ( threads_tot + blocksize - 1 ) / blocksize;

  const T epsilon = myConstant<T>::epsilon;
  T* data = ( T* ) malloc( sizeof( T ) * N );
  T* sum = ( T* ) malloc( sizeof( T ) * 1 );
  T init_val;

  for(int i=0; i<N; i++)
  {
    data[i] = initialize_random ( epsilon );
  }
  init_val = initialize_random ( epsilon );
  sum[0] = init_val;
#pragma omp target enter data map(to:sum[0:1])
#pragma omp target enter data map(to:data[0:N])    
  reduction_kernel( sum, data, N, nblocks, blocksize);
#pragma omp target exit data map(from:sum[0:1])

  T correct_sum = init_val;
  for(int i = 0; i < N; i++) 
  {
    correct_sum += data[i];
  }
  std::cout << "Correct_sum = " << correct_sum << std::endl;
  std::cout << "Reduction_sum = " << sum[0] << std::endl;
  std::cout << "epsilon = " << epsilon << std::endl;
  if(std::fabs( correct_sum - sum[0] ) > epsilon)
  {
    assert(0 && "Error! Two results are not the same!\n");
  }
  
  return sum; 
}

int main()
{
  reduction_wrapper<double>(1024 * 1024, 256);
  reduction_wrapper<float>(1024 * 1024, 256);
  reduction_wrapper<int>(1024 * 1024, 256);
}
