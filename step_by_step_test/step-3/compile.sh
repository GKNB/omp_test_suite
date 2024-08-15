clang++ hello.cu -o test --cuda-gpu-arch=sm_70 -L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -lcublas
# if got error message like ./test: error while loading shared libraries: libcublas.so.11: cannot open shared object file: No such file or directory, that means we need to check if libcublas.so.11 can be found in LD_LIBRARY_PATH

#nvc++ hello.C -o hello -cuda -cudalib=cublas
# unable to use Makefile: can not write a tab....

# Notice if we do not specify the lib name to be linked, there will be an error
# nvc++ hello.C -o hello -cuda -cudalib
# error!

# Fortunately, cublas and cufft can both be linked:
# nvc++ hello.C -o hello -cuda -cudalib=cublas,cufft
# successfully!
