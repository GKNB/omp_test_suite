#clang++ -DBOOST_ALL_NO_LIB -DKOKKOS_DEPENDENCE -DWireCellGenKokkos_EXPORTS -I/work/twang/wc-04142022-nc/wire-cell-gen-kokkos/.cmake-kokkos/../inc -I/work/twang/software/eigen/v3_4_0/include/eigen3 -I/work/software/larwire/product/jsoncpp/v1_7_7e/Linux64bit+5.4-2.31-e20-prof/include -I/work/software/larwire/product/jsonnet/v0_12_1a/Linux64bit+5.4-2.31-e20-prof/include -I/work/software/larwire/product/spdlog/v1_8_2/Linux64bit+5.4-2.31-e20-prof/include -I/work/software/larwire/product/wirecell/v0_14_0e/Linux64bit+5.4-2.31-e20-prof/include -c -g -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia -Xopenmp-target -march=sm_70 -pedantic -Wall main.C -o hello

#Working version!
#clang++ -g -O3 -x cuda --cuda-path=/usr/local/cuda-11.2 --cuda-gpu-arch=sm_70 -fopenmp  -fopenmp-targets=nvptx64-nvidia -Xopenmp-target -march=sm_70 -pedantic -Wall -c main.C -o hello.o
#clang++ -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia -Xopenmp-target -march=sm_70 main.C
#nvc++ -mp=gpu -O3 -cuda -cudalib=cublas,cufft -Minfo=mp main.C

#The following one use gcc 11.3
#/work/twang/software/gcc-offload-12052022/install/bin/g++ -O3 -fopenmp -foffload=nvptx-none main.C

#nvc++ -mp=gpu -O3 -cuda main.C


clang++ -O3 -fopenmp -fopenmp-targets=nvptx64 reduction.C
