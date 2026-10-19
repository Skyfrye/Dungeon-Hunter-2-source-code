// Tests for reconstruction slice 18. Returns 1 on the first failed check.
#include "glitch-scene-collada-gui/recon/slice_18.hpp"

#include <cmath>
#include <cstdio>

using namespace glitch::collada::recon_18;

namespace {

bool near(float a, float b) {
    return std::fabs(a - b) < 1e-4f;
}

int g_drawCounter = 0;
float countingDraw(PSRandom*) {
    static const float values[] = {0.1f, 0.2f, 0.3f};
    return values[g_drawCounter++];
}

float halfDraw(PSRandom*) {
    return 0.5f;
}

}  // namespace

int main() {
    // hashString (0x63b44c) moved to the canonical glitch::ps::IParticleContext<GNPSParticle>::hashString; it is
    // checked in tests/ps_particle_context_test.cpp, together with the 0xff sign-extension and the sequential
    // fold the old slice-local copy got wrong.

    // PSManager::getInstance returns the same object every time.
    if (&PSManager_getInstance() != &PSManager_getInstance()) {
        std::printf("getInstance identity failed\n");
        return 1;
    }

    // getEffectName copies the name argument.
    alignas(CColladaDatabase*) char dummyDb[sizeof(void*)] = {};
    const CColladaDatabase& db = *reinterpret_cast<const CColladaDatabase*>(dummyDb);
    if (CColladaFactory_getEffectName(db, "unused", "effectName") != "effectName") {
        std::printf("getEffectName failed\n");
        return 1;
    }

    // GNPSParticle copy: 39 floats.
    float src[kGNPSParticleFloats];
    float dst[kGNPSParticleFloats] = {};
    for (std::size_t i = 0; i < kGNPSParticleFloats; ++i) {
        src[i] = static_cast<float>(i) * 0.5f;
    }
    GNPSParticle_copy(dst, src);
    for (std::size_t i = 0; i < kGNPSParticleFloats; ++i) {
        if (dst[i] != src[i]) {
            std::printf("GNPSParticle_copy failed at %zu\n", i);
            return 1;
        }
    }

    // PSRandom::RandVec draws three values in order.
    float vec[3] = {};
    g_drawCounter = 0;
    PSRandom_RandVec(vec, countingDraw, nullptr);
    if (!near(vec[0], 0.1f) || !near(vec[1], 0.2f) || !near(vec[2], 0.3f)) {
        std::printf("RandVec failed\n");
        return 1;
    }

    // initPLife: base 2, range 4, draw 0.5 gives 2 + (4*0.5 - 2) = 2; life field cleared.
    const float life[3] = {0.0f, 2.0f, 4.0f};
    float particle[kGNPSParticleFloats] = {};
    particle[22] = 7.0f;
    GNPSLifeModel_initPLife(life, particle, particle + kGNPSParticleFloats, nullptr, halfDraw);
    if (particle[22] != 0.0f || !near(particle[23], 2.0f)) {
        std::printf("initPLife failed\n");
        return 1;
    }

    // applyGravity (stride 25): direction (0,-1,0), strength 1, decay 0, timeStep 1 -> velocity y -1000.
    ForceOwner owner{};
    owner.direction[1] = -1.0f;
    GravityForce gravity{&owner, 1.0f, 0.0f, 0};
    float sparticles[2 * kSParticleFloats] = {};
    applyGravity<kSParticleFloats>(&gravity, sparticles, sparticles + 2 * kSParticleFloats, 1.0f);
    if (!near(sparticles[4], -1000.0f) || !near(sparticles[kSParticleFloats + 4], -1000.0f)) {
        std::printf("applyGravity failed\n");
        return 1;
    }

    // applyWind (stride 25) through the proxy: strength 1, dir +x, timeStep 0.01 -> x moves 0.1.
    ForceOwner windOwner{};
    windOwner.direction[0] = 1.0f;
    WindForce wind{&windOwner, 1.0f, 0.0f, 0.0f, 0.0f, 0};
    float wp[kSParticleFloats] = {};
    PForceProxy_applyWind<kSParticleFloats>(&wind, wp, wp + kSParticleFloats, 0.01f, nullptr);
    if (!near(wp[0], 0.1f)) {
        std::printf("applyWind failed: %f\n", static_cast<double>(wp[0]));
        return 1;
    }

    std::printf("slice 18 tests passed\n");
    return 0;
}
