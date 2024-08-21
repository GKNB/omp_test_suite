#icpx -fsycl -fiopenmp -fopenmp-targets=spir64 test_pi_vec_orig.C
#mpicxx -lmkl_rt main.C
mpicxx -lmkl_rt test_onemkl_rng_cpu.C -o test_onemkl_rng_cpu
mpicxx -fiopenmp -fopenmp-targets=spir64_gen -Xopenmp-target-backend "-device pvc" -lmkl_rt test_onemkl_rng_gpu.C -o test_onemkl_rng_gpu
mpicxx -fiopenmp -fopenmp-targets=spir64_gen -Xopenmp-target-backend "-device pvc" -fsycl -fsycl-device-lib=all -lmkl_rt -lsycl test_pi_vec_indep.C -o test_pi_vec_indep
mpicxx -fiopenmp -fopenmp-targets=spir64_gen -Xopenmp-target-backend "-device pvc" -fsycl -fsycl-device-lib=all -lmkl_rt -lsycl test_pi_vec_depend.C -o test_pi_vec_depend

