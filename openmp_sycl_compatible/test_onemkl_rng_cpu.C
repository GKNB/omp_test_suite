#include <stdio.h>
#include <stdlib.h>
#include <mkl.h>
#include <mkl_vsl.h>

int main() {
    // Define variables
    VSLStreamStatePtr stream;
    int seed = 777; 
    int n = 100;     
    float *random_numbers = (float *)malloc(n * sizeof(float));  

    vslNewStream(&stream, VSL_BRNG_MT19937, seed);
    vsRngUniform(VSL_RNG_METHOD_UNIFORM_STD, stream, n, random_numbers, 0.0, 1.0);

    for (int i = 0; i < n; i++)
        printf("%f\n", random_numbers[i]);

    vslDeleteStream(&stream);
    free(random_numbers);
}
