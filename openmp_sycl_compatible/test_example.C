#include <omp.h>
#include "mkl.h"
#include "mkl_omp_offload.h" // MKL header file for OpenMP offload
int dnum = 0; 
int main() {
    float *a, *b, *c, alpha = 1.0, beta = 1.0;
    MKL_INT m = 150, n = 200, k = 128, lda = m, ldb = k, ldc = m;
    MKL_INT sizea = lda * k, sizeb = ldb * n, sizec = ldc * n;
    // allocate matrices and check pointers
    a = (float *)mkl_malloc(sizea * sizeof(float), 64);
    // initialize matrices
#pragma omp target map(c[0:sizec])
    {
        for (i = 0; i < sizec; i++) {
            c[i] = 42;
        }
    }
    // run gemm on host, use standard MKL interface
    cblas_sgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, m, n, k, alpha, a, 
lda, b, ldb, beta, c, ldc);
    // map the a, b and c matrices on the device memory
#pragma omp target data map(to:a[0:sizea],b[0:sizeb]) map(tofrom:c[0:sizec]) 
device(dnum)
    {
        // run gemm on gpu, use standard MKL interface within a variant dispatch 
construct
        // if offload is not possible, default to cpu 
        // use the use_device_ptr clause to specify that a, b and c are device 
memory
#pragma omp target variant dispatch device(dnum) use_device_ptr(a, b, c)
        {
            cblas_sgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, m, n, k, 
alpha, a, lda, b, ldb, beta, c, ldc);
        }
    }
    // Free matrices
    mkl_free(a);
 }
