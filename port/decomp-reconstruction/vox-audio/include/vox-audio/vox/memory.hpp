// Allocation entry points (Utils/memory.cpp in the original).
#pragma once

#include <cstddef>

namespace vox {

enum VoxMemHint : int {
    kVoxMemHintDefault = 0,
};

// Receives the "Out of memory:" report that VoxAlloc makes before returning null.
// The original prints memory statistics and asserts depending on gAssertLevel;
// the port routes that through this hook instead.
using OutOfMemoryHook = void (*)(const char* what);
void SetOutOfMemoryHook(OutOfMemoryHook hook);

}  // namespace vox

void* VoxAlloc(std::size_t size);
void* VoxAlloc(std::size_t size, vox::VoxMemHint hint);
// Debug variants (0x31068c and 0x310664): file, function and line are accepted and not used.
void* VoxAlloc(std::size_t size, const char* file, const char* function, int line);
void* VoxAlloc(std::size_t size, vox::VoxMemHint hint, const char* file, const char* function, int line);
void VoxFree(void* ptr);
// 0x889494 VoxAlloc_c: C-linkage thunk to the four-argument VoxAlloc (0x31068c). Defined in
// src/r1-vox-audio-pack0-5b0f48-0.cpp.
extern "C" void* VoxAlloc_c(std::size_t size, const char* file, const char* function, unsigned int line);
