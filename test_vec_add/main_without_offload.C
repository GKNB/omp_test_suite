#include <iostream>
#include <vector>
#include <cstdlib>
int main()
{
  int N = 10000;
  int *a = (int *)malloc(N * sizeof(int));
  int *b = (int *)malloc(N * sizeof(int));
  int *c = (int *)malloc(N * sizeof(int));
  for(int i=0; i<N; i++)
  {
    a[i] = i;
    b[i] = N - i;
    c[i] = 0;
  }
#pragma omp parallel for
  for(int i=0; i<N; i++)
  {
    c[i] = a[i] + b[i];
  }
  std::cout << c[0] << '\t' << c[N/2] << '\t' << c[N-1] << std::endl;
  return 0;
}
