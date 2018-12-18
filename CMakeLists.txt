cmake_minimum_required(VERSION 3.7)

project(GSE VERSION 0.1.0
        LANGUAGES CXX CUDA)
find_package(CUDA REQUIRED)

set(CMAKE_BUILD_TYPE Debug)
add_executable(gse cpu_gse.cpp gpu_gse.cu   )
#target_sources(gse PUBLIC )

target_sources(gse PUBLIC CpuEwaldDirect.cpp  )
target_sources(gse PUBLIC CpuEwaldRecip.cpp )
target_sources(gse PUBLIC cuda/EnergyVirial.cpp)
target_sources(gse PUBLIC cuda/CudaEnergyVirial.cu)
target_sources(gse PUBLIC cuda/cuda_utils.cu)
target_sources(gse PUBLIC cuda/XYZQ.cu)
target_sources(gse PUBLIC cuda/CudaPMERecip.cu)
target_sources(gse PUBLIC cuda/Force.cu)
target_sources(gse PUBLIC cuda/CudaTopExcl.cu)
target_sources(gse PUBLIC cuda/CudaNeighborList.cu)
target_sources(gse PUBLIC cuda/CudaNeighborListSort.cu)
target_sources(gse PUBLIC cuda/CudaNeighborListBuild.cu)
target_sources(gse PUBLIC cuda/CudaPMEDirectForce.cu)
target_sources(gse PUBLIC cuda/CudaPMERecip.cu)
target_sources(gse PUBLIC cuda/Matrix3d.cu)
target_sources(gse PUBLIC cuda/reduce.cu)
target_sources(gse PUBLIC cuda/CudaDirectForceKernels.cu)


## Add CUDA's NVTX and cufft libraries
find_library( NVTX_LIBRARY nvToolsExt PATHS ENV LD_LIBRARY_PATH )
target_link_libraries(gse ${NVTX_LIBRARY}  ${CUDA_CUFFT_LIBRARIES})
