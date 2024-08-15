#!/bin/bash

module use /work/twang/modulefiles
module load openmp-llvm-clang-17

export LIBOMPTARGET_DEBUG=1
