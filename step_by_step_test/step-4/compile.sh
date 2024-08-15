clang++ -fopenmp -fopenmp-targets=nvptx64-nvidia -Xopenmp-target -march=sm_70 hello.C -o test
#clang++ -fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target -march=sm_70 hello.C -o test


#clang++ hello.cu -o test --cuda-gpu-arch=sm_70 -L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target -march=sm_70
# despite we can compite that we hello.C, to compile with cuda library calls later, we use .cu now
# unfortunately this fails since some openmp function can not be recognized!

#nvc++ hello.C -o hello -mp=gpu
# unable to use Makefile: can not write a tab....
