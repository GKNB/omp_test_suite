clang++ -fopenmp -fopenmp-targets=nvptx64-nvidia -Xopenmp-target -march=sm_70 -I/usr/local/cuda/include  -L/usr/local/cuda/lib64 -lcudart -ldl -lrt -pthread -lcublas hello.C -o test

#nvc++ hello.C -o hello -mp=gpu -cuda -cudalib=cublas
#unable to use Makefile: can not write a tab....
