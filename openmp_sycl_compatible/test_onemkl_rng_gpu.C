#include <stdio.h>
#include <iostream>
#include <omp.h>
#include <stdlib.h>
#include <mkl.h>
#include <mkl_vsl.h>
#include <mkl_omp_offload.h>

int main() {
    // Define variables
    VSLStreamStatePtr stream;
    int seed = 777; 
    int n = 10;     
    float *random_numbers = (float *)malloc(n * sizeof(float));  
#pragma omp target enter data map(alloc: random_numbers[0:n])

#pragma omp target variant dispatch
    {
        vslNewStream(&stream, VSL_BRNG_MT19937, seed);
    }
    std::cout << "Initial data, all should be zero or random memory" << std::endl;
    for (int i = 0; i < n; i++)
        printf("%f\n", random_numbers[i]);

#pragma omp target variant dispatch use_device_ptr(random_numbers)    
    {
        vsRngUniform(VSL_RNG_METHOD_UNIFORM_STD, stream, n, random_numbers, 0.0, 1.0);
    }

    std::cout << "After GPU finish generating data, before copying data from GPU" << std::endl;
    for (int i = 0; i < n; i++)
        printf("%f\n", random_numbers[i]);

#pragma omp target exit data map(from: random_numbers[0:n])        
    
    std::cout << "After copying data from GPU" << std::endl;
    for (int i = 0; i < n; i++)
        printf("%f\n", random_numbers[i]);

    vslDeleteStream(&stream);
    free(random_numbers);
}
