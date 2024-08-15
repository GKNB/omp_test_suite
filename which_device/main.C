#include <stdio.h>
#include <omp.h>

int main(int argc, char *argv[])
{
  int iaccel, naccel;

  /*
   * NOTE: The behavior of an OpenMP API function may be defined differently
   * for inside and outside of the target region.
   */
#pragma omp target
{
  if (omp_is_initial_device()) {
    printf("Hello World from Host.\n");
  } else {
    printf("Hello World from Accelerator(s).\n");
  }
}
  // no accelerator
  if (0 == (naccel = omp_get_num_devices())) return 0;
  // one or more accelerator(s)
  printf("\n%d Accelerator(s) found\n", naccel);
  return 0;
}
