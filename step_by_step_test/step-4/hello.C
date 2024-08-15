#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main(int argc, char *argv[])
{
  int iaccel, naccel;

#pragma omp target
{
  if(omp_is_initial_device()) 
  {
    printf("Hello World from Host.\n");
  } 
  else 
  {
    printf("Hello World from Accelerator(s).\n");
  }
}
  // no accelerator
  if (0 == (naccel = omp_get_num_devices()))
  {
    printf("\n%d Accelerator(s) found\n", naccel);
  }
  // one or more accelerator(s)
  else
  {
    printf("\n%d Accelerator(s) found\n", naccel);
  }
  return 0;
}
