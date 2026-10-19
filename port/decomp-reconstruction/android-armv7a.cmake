# CMake toolchain file: Android NDK clang, armv7a, ARM mode, soft-float, position independent.
#
# This is the 32-bit ARM build the armdiff differential tester runs beside the original library
# (tools/trackb/armdiff). It is not a release build: it exists so that the reconstructed sources get the
# original's data layout (4-byte pointers, 4-byte long) and calling convention (AAPCS, soft-float, which is
# why float arithmetic goes through __aeabi_fadd and friends exactly as in libDungeonHunter2.so).
#
#   cmake -S port/decomp-reconstruction -B build/tb-arm32-cmake -G Ninja \
#         -DCMAKE_TOOLCHAIN_FILE=port/decomp-reconstruction/android-armv7a.cmake
#   cmake --build build/tb-arm32-cmake --target dh2_glitch_core_io        # libraries only; tests do not link or run
#
# The NDK is found through -DDH2_ANDROID_NDK=<dir>, the environment variable of that name, ANDROID_NDK_HOME, ANDROID_NDK_ROOT or ANDROID_NDK (the NDK directory
# itself), or <ANDROID_SDK_ROOT|ANDROID_HOME>/ndk/<newest>. Override the API level with -DDH2_ANDROID_API=NN.
# tools/trackb/armdiff/build_arm.py compiles the same way, one translation unit at a time, and also records the
# LLVM IR signatures and record layouts armdiff needs; use it rather than this file for armdiff runs.

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR armv7-a)

if(NOT DH2_ANDROID_API)
  set(DH2_ANDROID_API 21)
endif()

set(_dh2_ndk_candidates "")
if(DH2_ANDROID_NDK)
  list(APPEND _dh2_ndk_candidates "${DH2_ANDROID_NDK}")
endif()
foreach(_var DH2_ANDROID_NDK ANDROID_NDK_HOME ANDROID_NDK_ROOT ANDROID_NDK)
  if(DEFINED ENV{${_var}} AND NOT "$ENV{${_var}}" STREQUAL "")
    list(APPEND _dh2_ndk_candidates "$ENV{${_var}}")
  endif()
endforeach()
foreach(_var ANDROID_SDK_ROOT ANDROID_HOME)
  if(DEFINED ENV{${_var}} AND NOT "$ENV{${_var}}" STREQUAL "")
    file(GLOB _sdk_ndks "$ENV{${_var}}/ndk/*")
    list(SORT _sdk_ndks ORDER DESCENDING)
    list(APPEND _dh2_ndk_candidates ${_sdk_ndks})
  endif()
endforeach()

# Last resort: the NDK this project was set up with on the development machine (NDK 29.0.14206865).
list(APPEND _dh2_ndk_candidates
  "<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk/ndk/29.0.14206865")

set(DH2_ANDROID_NDK_DIR "")
foreach(_c IN LISTS _dh2_ndk_candidates)
  file(GLOB _pre "${_c}/toolchains/llvm/prebuilt/*")
  if(_pre)
    set(DH2_ANDROID_NDK_DIR "${_c}")
    list(GET _pre 0 DH2_NDK_PREBUILT)
    break()
  endif()
endforeach()
if(NOT DH2_ANDROID_NDK_DIR)
  message(FATAL_ERROR "Android NDK not found. Set DH2_ANDROID_NDK to the NDK directory (for example .../ndk/29.0.14206865).")
endif()

set(_bin "${DH2_NDK_PREBUILT}/bin")
if(WIN32 OR CMAKE_HOST_WIN32)
  set(_exe ".exe")
else()
  set(_exe "")
endif()

set(CMAKE_C_COMPILER "${_bin}/clang${_exe}")
set(CMAKE_CXX_COMPILER "${_bin}/clang++${_exe}")
set(CMAKE_ASM_COMPILER "${_bin}/clang${_exe}")
set(CMAKE_AR "${_bin}/llvm-ar${_exe}" CACHE FILEPATH "")
set(CMAKE_RANLIB "${_bin}/llvm-ranlib${_exe}" CACHE FILEPATH "")
set(CMAKE_NM "${_bin}/llvm-nm${_exe}" CACHE FILEPATH "")
set(CMAKE_OBJDUMP "${_bin}/llvm-objdump${_exe}" CACHE FILEPATH "")
set(CMAKE_STRIP "${_bin}/llvm-strip${_exe}" CACHE FILEPATH "")

set(CMAKE_C_COMPILER_TARGET "armv7a-linux-androideabi${DH2_ANDROID_API}")
set(CMAKE_CXX_COMPILER_TARGET "armv7a-linux-androideabi${DH2_ANDROID_API}")
set(CMAKE_ASM_COMPILER_TARGET "armv7a-linux-androideabi${DH2_ANDROID_API}")

# ARM mode (not Thumb), soft-float ABI and calls to the __aeabi_* helpers, as the original was built.
# -Wno-everything: the sources are warning-clean for GCC; clang makes some of its diagnostics errors by default.
set(_dh2_arch_flags "-marm -mfloat-abi=soft -fPIC -ffunction-sections -fdata-sections -Wno-everything")
set(CMAKE_C_FLAGS_INIT "${_dh2_arch_flags}")
# -fno-exceptions where possible: a few translation units use throw/try and need -DDH2_ARM_EXCEPTIONS=ON.
if(DH2_ARM_EXCEPTIONS)
  set(CMAKE_CXX_FLAGS_INIT "${_dh2_arch_flags}")
else()
  set(CMAKE_CXX_FLAGS_INIT "${_dh2_arch_flags} -fno-exceptions")
endif()
set(CMAKE_C_FLAGS_RELEASE_INIT "-O1")
set(CMAKE_CXX_FLAGS_RELEASE_INIT "-O1")
set(CMAKE_C_FLAGS_DEBUG_INIT "-O1 -g")
set(CMAKE_CXX_FLAGS_DEBUG_INIT "-O1 -g")
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release CACHE STRING "" FORCE)
endif()

# No program is linked or run for armdiff: compiler checks build a static library, and nothing runs on the host.
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Used by tools/trackb/armdiff/build_arm.py to cross-check its flags (message only).
set(DH2_ARMDIFF_FLAGS "--target=armv7a-linux-androideabi${DH2_ANDROID_API} -std=c++17 -marm -O1 -fPIC -mfloat-abi=soft -fno-exceptions")
