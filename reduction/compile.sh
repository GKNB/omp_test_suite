#clang++ -O3 -fopenmp -fopenmp-targets=nvptx64 reduction.C
mpicxx -fiopenmp -fopenmp-targets=spir64_gen -Xopenmp-target-backend "-device pvc" reduction.C
