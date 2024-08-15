#include <omp.h>
#include "mkl.h"
#include "mkl_omp_offload.h" // MKL header file for OpenMP offload

//See https://www.alcf.anl.gov/sites/default/files/2021-03/oneMKL%20Overview%20-%20Aurora%20Early%20Adopter%20Series.pdf
//See https://www.intel.com/content/www/us/en/docs/onemkl/developer-reference-c/2023-2/openmp-offload-for-onemkl.html

int main()
{
  long m = 16000;
  long n = 16000;
  long k = 16000;

  long sizea = m * n;
  long sizeb = n * k;
  long sizec = m * k;

  double *A = (double*)malloc(sizeof(double) * sizea);
  double *B = (double*)malloc(sizeof(double) * sizeb);
  double *C = (double*)malloc(sizeof(double) * sizec);

#pragma omp target data map(to:A[0:sizea],B[0:sizeb]) map(tofrom:C[0:sizec])
  {
#pragma omp target variant dispatch use_device_ptr(A, B, C)
    {
      cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, m, n, k, 1.0, A, m, B, n, 1.0, C, k);
    }
  }
}
