// Batch r1-vox-audio-pack0-5b0f48-0. Only the function that had no body anywhere lives here.
// The other functions of the batch were completed in place in their existing sources (see
// vox_alloc.cpp, voxengine.cpp, voxengine-facade/engine_instance.cpp, engine-internal-data/,
// engine-internal-emitter/, decoder-mswav-mpc8/ and w10-parsefile/).

#include <cstddef>

#include "vox-audio/vox/memory.hpp"

// 0x889494 VoxAlloc_c. Verified from the listing: the whole body is the single ARM
// instruction `B _Z8VoxAllocjPKcS0_i`, so this C-linkage entry point tail-branches to
// VoxAlloc(uint, char const*, char const*, int) at 0x31068c, and the forward above reproduces it
// exactly (the four arguments pass through unchanged, the unsigned line becoming the int the
// symbol declares). The target, VoxAlloc(0x31068c), now forwards to core-platform's CustomAlloc, which has the
// gAssertLevel 1/2 out-of-memory branches (see vox_alloc.cpp).
extern "C" void* VoxAlloc_c(std::size_t size, const char* file, const char* function, unsigned int line) {
    return VoxAlloc(size, file, function, static_cast<int>(line));
}
