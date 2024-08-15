clang++ hello.cu -o test --cuda-gpu-arch=sm_70 -L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread
#it must be a .cu file at this moment, ...., -x???

#nvc++ hello.C -o hello -cuda
#unable to use Makefile: can not write a tab....
