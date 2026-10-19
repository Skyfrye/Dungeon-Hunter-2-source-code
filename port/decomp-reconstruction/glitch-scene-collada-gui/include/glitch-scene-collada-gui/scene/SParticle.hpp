// glitch::scene::SParticle: one particle record, 0x44 (68) bytes in the original (17 words). Canonical header of the scene
// residue pass 2; it replaces the opaque `struct SParticle;` forward declarations and CParticleSystemSceneNode::SParticleRecord.
//
// Evidence (libDungeonHunter2.so, ARM): the emitters' emitt() bodies fill the record, the affectors' affect() bodies walk the
// array with a stride of 68 bytes (0x6f86cc, 0x6fa69c, 0x6fac14, 0x6fcf6c, 0x6fd63c, 0x6fe600) and CParticleSystemSceneNode::
// doParticleSystem (0x6c2880) moves the particles and ages them out:
//   +0x00 pos             (emitters zero it, the node moves it by vector * dt)
//   +0x0c vector          direction/velocity (the gravity affector rewrites it)
//   +0x18 startTime       the time of emission
//   +0x1c endTime         startTime + life time; the node removes the particle once now > endTime
//   +0x20 color           the fade-out affector rewrites it
//   +0x24 startColor
//   +0x28 startVector     copy of the emission vector
//   +0x34 size            the size affector's output
//   +0x38 sizeVariation   random percentage kept by the size affector
//   +0x3c rotation        the spin affector's angle in radians
//   +0x40 rotationVariation
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"

namespace glitch::scene {

struct SParticle {
    core::vector3d<float> pos;           // +0x00
    core::vector3d<float> vector;        // +0x0c
    std::uint32_t startTime = 0;         // +0x18
    std::uint32_t endTime = 0;           // +0x1c
    video::SColor color;                 // +0x20
    video::SColor startColor;            // +0x24
    core::vector3d<float> startVector;   // +0x28
    float size = 0.0f;                   // +0x34
    float sizeVariation = 0.0f;          // +0x38
    float rotation = 0.0f;               // +0x3c
    float rotationVariation = 0.0f;      // +0x40
};

static_assert(sizeof(SParticle) == 0x44, "SParticle is 17 words");

}  // namespace glitch::scene
