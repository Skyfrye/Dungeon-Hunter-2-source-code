// glitch::ps shape types and the particle-system heap helpers. The stand-in IParticleSystem / model templates this header used to hold
// were retired by the residue pass ob: the canonical classes are in ps/IParticleSystem.hpp, ps/ParticleModels.hpp, ps/PForce.hpp and
// ps/PSManager.hpp (the empty initialisers, the colour track tests and getWorldMatrixPtr are real members there).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/ps/PDomain.hpp"

namespace glitch::ps {

// The shapes (PDPoint .. PDCylinder) and PSRandom are the canonical classes of ps/PDomain.hpp.

// Particle-system heap helpers. 0x64d290 _ZN6glitch2ps6PS_NEWEj is GlitchAlloc(size, hint 0); 0x64d778 _ZN6glitch2ps7PS_FREEEPv is
// GlitchFree (a thunk).
void* PS_NEW(std::uint32_t size);
void PS_FREE(void* p);

}  // namespace glitch::ps
