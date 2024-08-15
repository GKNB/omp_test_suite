nvcc -O3 test_cuda_single_v2.cu -Xcompiler -fopenmp -lgomp -arch=sm_70 -o run_cuda_nvcc_single_v2
clang++ -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia -Xopenmp-target -march=sm_70 test_openmp_single_v2.C -o run_openmp_single_v2
