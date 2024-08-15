#include <CL/sycl.hpp>
#include <omp.h>
#include <iostream>

//See https://www.intel.com/content/www/us/en/docs/oneapi/programming-guide/2024-1/c-c-openmp-and-sycl-composability.html

void double_omp(float *A, unsigned N)
{
#pragma omp target map(tofrom: A[0:N])
  {
#pragma omp target teams distribute parallel for simd
    for(int i=0; i<N; i++)
    {
      A[i] = A[i] * 2.0;
    }
  }
}

void add_1(float *A, unsigned N)
{
  cl::sycl::range<1> R(N);
  cl::sycl::buffer<float, 1> AB(A, R);
  cl::sycl::queue().submit([&](cl::sycl::handler &cgh) {
    auto AA = AB.template get_access<cl::sycl::access::mode::write>(cgh);
    cgh.parallel_for<class Iota>(R, [=](cl::sycl::id<1> I) {
      AA[I] = AA[I] + 1.0;
    });
  });
}

void iota(float *A, unsigned N) {
  cl::sycl::range<1> R(N);
  cl::sycl::buffer<float, 1> AB(A, R);
  cl::sycl::queue().submit([&](cl::sycl::handler &cgh) {
    auto AA = AB.template get_access<cl::sycl::access::mode::write>(cgh);
    cgh.parallel_for<class Iota>(R, [=](cl::sycl::id<1> I) {
      AA[I] = I;
    });
  });
}


int main() {
  std::array<float, 1024u> Vec;
  iota(Vec.data(), Vec.size());
  double_omp(Vec.data(), Vec.size());
  add_1(Vec.data(), Vec.size());

  std::cout << "Vec[128] = " << Vec[128] << std::endl;
  std::cout << "Vec[256] = " << Vec[256] << std::endl;
  std::cout << "Vec[512] = " << Vec[512] << std::endl;
  return 0;
}
