clang++ hello.cu -o test --cuda-gpu-arch=sm_70 -L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread
#it must be a .cu file instead of .C  Maybe we can look at if we can do something like -x???

#nvc++ hello.C -o hello -cuda
#unable to use Makefile: can not write a tab....
