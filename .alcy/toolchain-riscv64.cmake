# Cross-build for the riscv64-linux-gnu asset. The build runs on an
# x86_64 host with clang targeting riscv64; the sysroot and the C++
# standard library for riscv64 come from the GCC cross toolchain
# (gcc-riscv64-linux-gnu / g++-riscv64-linux-gnu). LLVM's tablegen
# tools must run on the build machine, so the configure step passes
# -DLLVM_USE_HOST_TOOLS=ON alongside this file.

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv64)
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER_TARGET riscv64-linux-gnu)
set(CMAKE_CXX_COMPILER_TARGET riscv64-linux-gnu)
set(CMAKE_SYSROOT /usr/riscv64-linux-gnu)
set(CMAKE_FIND_ROOT_PATH /usr/riscv64-linux-gnu)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
