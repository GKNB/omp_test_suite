nvcc -O3 test_cuda_no_atomic.cu -Xcompiler -fopenmp -lgomp -arch=sm_70 -o run_cuda_nvcc_no_atomic
clang++ -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia -Xopenmp-target -march=sm_70 test_openmp_no_atomic.C -o run_openmp_no_atomic
