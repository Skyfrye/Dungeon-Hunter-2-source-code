#include "glitch-scene-collada-gui/irr_alloc.hpp"

#include "core-platform/memory.hpp"

extern "C" {

// 0x5341a0 irr_malloc: GlitchAlloc(size, hint 0), the engine allocator (core-platform/memory.hpp).
void* irr_malloc(std::size_t size) {
    return GlitchAlloc(static_cast<unsigned>(size), glitch::memory::EMH_UNRECOVERED);
}

// 0x534180 irr_free: GlitchFree.
void irr_free(void* block) {
    GlitchFree(block);
}

}  // extern "C"
