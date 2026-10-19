#include "glitch-scene-collada-gui/ps_types.hpp"

#include "core-platform/memory.hpp"

namespace glitch::ps {

// The PD shape bodies are in src/ps/PDomain.cpp.

// 0x64d290 _ZN6glitch2ps6PS_NEWEj
void* PS_NEW(std::uint32_t size) {
    return GlitchAlloc(size, static_cast<glitch::memory::E_MEMORY_HINT>(0));
}

// 0x64d778 _ZN6glitch2ps7PS_FREEEPv
void PS_FREE(void* p) {
    GlitchFree(p);
}

}  // namespace glitch::ps
