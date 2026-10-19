// glitch_malloc (0x7030fc): the C-linkage forwarder to GlitchAlloc with the default memory hint.
#include <cstddef>

#include "core-platform/memory.hpp"

extern "C" void* glitch_malloc(std::size_t size) {
    return GlitchAlloc(static_cast<unsigned>(size), static_cast<glitch::memory::E_MEMORY_HINT>(0));
}
