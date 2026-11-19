# Cross-build for the riscv64-linux-gnu asset. The build runs on an
# x86_64 host with clang targeting riscv64; the sysroot and the C++
# standard library for riscv64 come from the GCC cross toolchain
# (gcc-riscv64-linux-gnu / g++-riscv64-linux-gnu). LLVM's tablegen
# tools must run on the build machine, so the configure step passes
# -DLLVM_USE_HOST_TOOLS=ON alongside this file.
#
# No CMAKE_SYSROOT is set: clang's riscv64-linux-gnu driver locates the
# GCC cross toolchain and the multiarch libraries under /usr on its own,
# while a sysroot prefix would re-root the absolute library paths the
# linker receives into the sysroot and fail.

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv64)
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER_TARGET riscv64-linux-gnu)
set(CMAKE_CXX_COMPILER_TARGET riscv64-linux-gnu)
