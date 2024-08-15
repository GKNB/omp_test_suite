#clang++ -fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target -march=sm_70 main.C -o test

clang++ -O3 -fopenmp -fopenmp-targets=nvptx64 main.C
