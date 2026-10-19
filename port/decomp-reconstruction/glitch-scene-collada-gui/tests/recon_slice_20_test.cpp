// Slice 20 reconstruction tests: the empty render-data bodies.
// The hash fold (0x64d0bc) moved to the canonical glitch::ps::IParticleContext<SParticle>::hashString and is
// checked in tests/ps_particle_context_test.cpp.
#include "glitch-scene-collada-gui/recon/slice_20.hpp"

#include <cstdint>

int main() {
    // Empty-body pseudocode functions must be callable with no side effects.
    glitch::collada::recon_20::RDB_NullColor_initPRenderData();
    glitch::collada::recon_20::RDB_BillboardColor_initPRenderData();

    return 0;
}
