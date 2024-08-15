#include <CL/sycl.hpp>
#include <omp.h>
#include <iostream>

//See https://www.intel.com/content/www/us/en/docs/oneapi/programming-guide/2024-1/c-c-openmp-and-sycl-composability.html

float computePi(unsigned N) {
  float Pi;
#pragma omp target map(from : Pi)
#pragma omp teams distribute parallel for simd reduction(+ : Pi)
  for (unsigned I = 0; I < N; ++I) {
    float T = (I + 0.5f) / N;
    Pi += 4.0f / (1.0 + T * T);
  }
  return Pi / N;
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
  float Pi;


#pragma omp parallel sections
  {
#pragma omp section
    iota(Vec.data(), Vec.size());
#pragma omp section
    Pi = computePi(8192u);
  }


  std::cout << "Vec[512] = " << Vec[512] << std::endl;
  std::cout << "Pi = " << Pi << std::endl;
  return 0;
}
