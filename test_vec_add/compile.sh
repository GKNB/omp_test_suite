#clang++ -fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target -march=sm_70 main.C -o test

#clang++ -O3 -fopenmp -fopenmp-targets=nvptx64 main.C
mpicxx -fiopenmp -fopenmp-targets=spir64_gen -Xopenmp-target-backend "-device pvc" main.C -o vec_add_test
mpicxx -fiopenmp -fopenmp-targets=spir64_gen -Xopenmp-target-backend "-device pvc" memory_opt.C -o vec_add_test_mem
