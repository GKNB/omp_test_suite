nvcc -O3 test_cuda_single.cu -Xcompiler -fopenmp -lgomp -arch=sm_70 -o run_cuda_nvcc_single
clang++ -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia -Xopenmp-target -march=sm_70 test_single_atomic.C -o run_openmp_single
