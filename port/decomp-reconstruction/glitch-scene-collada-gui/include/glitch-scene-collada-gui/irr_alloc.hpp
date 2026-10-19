// C allocation wrappers of the Irrlicht layer. The original forwards to GlitchAlloc
// (hint 0) and GlitchFree, which core-platform owns (core-platform/memory.hpp).
#pragma once

#include <cstddef>

extern "C" {

// 0x5341a0 irr_malloc
void* irr_malloc(std::size_t size);
// 0x534180 irr_free
void irr_free(void* block);

}  // extern "C"
