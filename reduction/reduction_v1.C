#include <iostream>
#include <type_traits>
#include <cstdlib>
#include <cmath>
#include <omp.h>

template <typename T>
T initialize_random ( T epsilon ) 
{
  if (std::is_same <float, T>::value) {
    return 2.0 * (rand() / static_cast <T> (RAND_MAX)) - 1.0;
  }
  if (std::is_same <double, T>::value) {
    return 2.0 * (rand() / static_cast <T> (RAND_MAX)) - 1.0;
  }
  if (std::is_same <int, T>::value) {
    return (rand() % 200) - 100;
  }
}

template <typename T>
T* reduction_wrapper ( const std::size_t N, const std::size_t blocksize ) 
{
  const std::size_t threads_tot = N;
  const std::size_t nblocks     = ( threads_tot + blocksize - 1 ) / blocksize;
 
  T* data = ( T* ) malloc( sizeof( T ) * N );
  for(int i=0; i<N; i++)
  {
    data[i] = 2.5;
//    data[i] = initialize_random ( epsilon );
  }

  T init_val = 1.5;
//  T init_val = initialize_random(epsilon);
  T* sum = ( T* ) malloc( sizeof( T ) * 1 );
  *sum = init_val;

#pragma omp target enter data map(to:sum[0:1])
#pragma omp target enter data map(to:data[0:N])
#pragma omp target teams distribute parallel for reduction(+:sum[0])  
  for(int i=0; i<N; i++)
  {
    sum[0] += data[i];
  }
#pragma omp target exit data map(from:sum[0:1])
  std::cout << "sum = " << *sum << std::endl;

  return sum;
}

int main()
{
  reduction_wrapper<float>(1024 * 16, 256);
}
