#icpx -fsycl -fiopenmp -fopenmp-targets=spir64 test_pi_vec_orig.C
#mpicxx -lmkl_rt main.C
