// Member layouts for the glitch::ps PD (particle domain) classes and the
// glitch::scene particle emitter/affector classes (placed in glitch::ps::scene),
// from the Hex-Rays pseudocode in recovered/native/hexrays-all (32-bit ARM offsets).
// Declarations only: no function bodies. Each named member cites the body that
// touches it in its comment. Anything not touched by a cited body is a pad marked
// "not confirmed". The vtable pointer at +0x00 is a 4-byte pad because the
// 32-bit guest layout puts it there (vptr stores in every ctor).
// PSRandom is not declared here: none of the cited bodies reads a PSRandom field
// directly; it is only reached through its Rand/RandVec/NRandf member calls.
// ICursorControl (gui namespace) is not declared here.
#ifndef GLITCH_SCENE_COLLADA_GUI_LAYOUTS_PS_MEMBERS_HPP
#define GLITCH_SCENE_COLLADA_GUI_LAYOUTS_PS_MEMBERS_HPP

#include <cstddef>
#include <cstdint>

// The PD domain layouts moved into the canonical ps/PDomain.hpp.

namespace glitch::ps::scene {

// glitch::scene::CParticleBoxEmitter. serializeAttributes (0x6f8d5c) reads box corners
// (+0x10 min, +0x1C max) and derives the half-extent, then Direction (+0x28, 3 floats),
// the particle rate, colors, life and angle. Bytes 0x00..0x0F and 0x4C..0x53 are not read by
// serializeAttributes; the 0x4C gap is not confirmed.
struct CParticleBoxEmitter {
    std::uint8_t pad_0x00[16];          // +0x00..+0x0F not read by serializeAttributes (base class / vtable, not confirmed)
    float box_min[3];                   // +0x10 (x, y, z) min corner; serializeAttributes (0x6f8d5c) reads it
    float box_max[3];                   // +0x1C (x, y, z) max corner; serializeAttributes (0x6f8d5c) reads it
    float direction[3];                 // +0x28 emission direction; serializeAttributes passes its address to the Direction setter
    std::int32_t min_particles_per_second;  // +0x34 int, serialized via vtbl+0x4C (int setter, inferred)
    std::int32_t max_particles_per_second;  // +0x38 int, serialized via vtbl+0x4C (int setter, inferred)
    std::uint32_t min_start_color;      // +0x3C packed color, serialized via vtbl+0x118
    std::uint32_t max_start_color;      // +0x40 packed color, serialized via vtbl+0x118
    std::int32_t min_life_time;         // +0x44 int, serialized via vtbl+0x4C (int setter, inferred)
    std::int32_t max_life_time;         // +0x48 int, serialized via vtbl+0x4C (int setter, inferred)
    std::uint8_t pad_0x4c[8];           // +0x4C..+0x53 not read by serializeAttributes (not confirmed)
    std::int32_t max_angle_degrees;     // +0x54 int, serialized via vtbl+0x4C (int setter, inferred)
};
static_assert(offsetof(CParticleBoxEmitter, box_min) == 0x10, "CParticleBoxEmitter::box_min");
static_assert(offsetof(CParticleBoxEmitter, box_max) == 0x1C, "CParticleBoxEmitter::box_max");
static_assert(offsetof(CParticleBoxEmitter, direction) == 0x28, "CParticleBoxEmitter::direction");
static_assert(offsetof(CParticleBoxEmitter, min_particles_per_second) == 0x34, "CParticleBoxEmitter::min_particles_per_second");
static_assert(offsetof(CParticleBoxEmitter, max_particles_per_second) == 0x38, "CParticleBoxEmitter::max_particles_per_second");
static_assert(offsetof(CParticleBoxEmitter, min_start_color) == 0x3C, "CParticleBoxEmitter::min_start_color");
static_assert(offsetof(CParticleBoxEmitter, max_start_color) == 0x40, "CParticleBoxEmitter::max_start_color");
static_assert(offsetof(CParticleBoxEmitter, min_life_time) == 0x44, "CParticleBoxEmitter::min_life_time");
static_assert(offsetof(CParticleBoxEmitter, max_life_time) == 0x48, "CParticleBoxEmitter::max_life_time");
static_assert(offsetof(CParticleBoxEmitter, max_angle_degrees) == 0x54, "CParticleBoxEmitter::max_angle_degrees");

// glitch::scene::CParticlePointEmitter. serializeAttributes (0x6fbcd8) reads Direction (+0x48)
// and the same rate/color/life/angle group as the box emitter, shifted by +0x30.
// Bytes 0x00..0x47 are not read by serializeAttributes (not confirmed).
struct CParticlePointEmitter {
    std::uint8_t pad_0x00[72];          // +0x00..+0x47 not read by serializeAttributes (base class / vtable, not confirmed)
    float direction[3];                 // +0x48 emission direction; serializeAttributes (0x6fbcd8) passes its address
    std::int32_t min_particles_per_second;  // +0x54 int, serialized via vtbl+0x4C (int setter, inferred)
    std::int32_t max_particles_per_second;  // +0x58 int, serialized via vtbl+0x4C (int setter, inferred)
    std::uint32_t min_start_color;      // +0x5C packed color, serialized via vtbl+0x118
    std::uint32_t max_start_color;      // +0x60 packed color, serialized via vtbl+0x118
    std::int32_t min_life_time;         // +0x64 int, serialized via vtbl+0x4C (int setter, inferred)
    std::int32_t max_life_time;         // +0x68 int, serialized via vtbl+0x4C (int setter, inferred)
    std::int32_t max_angle_degrees;     // +0x6C int, serialized via vtbl+0x4C (int setter, inferred)
};
static_assert(offsetof(CParticlePointEmitter, direction) == 0x48, "CParticlePointEmitter::direction");
static_assert(offsetof(CParticlePointEmitter, min_particles_per_second) == 0x54, "CParticlePointEmitter::min_particles_per_second");
static_assert(offsetof(CParticlePointEmitter, max_particles_per_second) == 0x58, "CParticlePointEmitter::max_particles_per_second");
static_assert(offsetof(CParticlePointEmitter, min_start_color) == 0x5C, "CParticlePointEmitter::min_start_color");
static_assert(offsetof(CParticlePointEmitter, max_start_color) == 0x60, "CParticlePointEmitter::max_start_color");
static_assert(offsetof(CParticlePointEmitter, min_life_time) == 0x64, "CParticlePointEmitter::min_life_time");
static_assert(offsetof(CParticlePointEmitter, max_life_time) == 0x68, "CParticlePointEmitter::max_life_time");
static_assert(offsetof(CParticlePointEmitter, max_angle_degrees) == 0x6C, "CParticlePointEmitter::max_angle_degrees");

// glitch::scene::CParticleFadeOutAffector. serializeAttributes (0x6fa750) packs TargetColor from
// the four bytes at +0x05..+0x08 and writes FadeOutTime (+0x0C). deserializeAttributes (0x6fa804)
// stores a 32-bit color at +0x05 (unaligned), so it is kept as a byte array.
struct CParticleFadeOutAffector {
    std::uint8_t pad_0x00[5];           // +0x00..+0x04 not read by the (de)serializers (not confirmed)
    std::uint8_t target_color_bytes[4]; // +0x05 packed TargetColor, one byte each (b0 at +0x05, b3 at +0x08); serialize (0x6fa750) and deserialize (0x6fa804) use it
    std::uint8_t pad_0x09[3];           // +0x09..+0x0B not read by the (de)serializers (not confirmed)
    float fade_out_time;                // +0x0C FadeOutTime; serialize (0x6fa750) via vtbl+0x64, deserialize (0x6fa804) via vtbl+0x74
};
static_assert(offsetof(CParticleFadeOutAffector, target_color_bytes) == 0x05, "CParticleFadeOutAffector::target_color_bytes");
static_assert(offsetof(CParticleFadeOutAffector, fade_out_time) == 0x0C, "CParticleFadeOutAffector::fade_out_time");

// glitch::scene::CParticleGravityAffector. serializeAttributes (0x6fad3c) writes Gravity (+0x0C,
// vec3) and TimeForceLost (+0x08). deserializeAttributes (0x6fadd8) stores the same fields.
struct CParticleGravityAffector {
    std::uint8_t pad_0x00[8];           // +0x00..+0x07 not read by the (de)serializers (vtable / base, not confirmed)
    float time_force_lost;              // +0x08 TimeForceLost; serialize (0x6fad3c) via vtbl+0x64, deserialize (0x6fadd8) via vtbl+0x74
    float gravity[3];                   // +0x0C (x, y, z) Gravity vector; serialize (0x6fad3c) via vtbl+0x1A8, deserialize (0x6fadd8) via vtbl+0x1B8
};
static_assert(offsetof(CParticleGravityAffector, time_force_lost) == 0x08, "CParticleGravityAffector::time_force_lost");
static_assert(offsetof(CParticleGravityAffector, gravity) == 0x0C, "CParticleGravityAffector::gravity");

// glitch::scene::CParticleSizeAffector. serializeAttributes (0x6fd400) writes TargetSize (+0x08),
// Variation (+0x0C), GrowForTime (+0x10) and FadeForTime (+0x14). deserializeAttributes (0x6fd4e4)
// reads them in that order. Field types follow the float setter (vtbl+0x64).
struct CParticleSizeAffector {
    std::uint8_t pad_0x00[8];           // +0x00..+0x07 not read by the (de)serializers (vtable / base, not confirmed)
    float target_size;                  // +0x08 TargetSize; serialize (0x6fd400), deserialize (0x6fd4e4)
    float variation;                    // +0x0C Variation; serialize (0x6fd400), deserialize (0x6fd4e4)
    float grow_for_time;                // +0x10 GrowForTime; serialize (0x6fd400), deserialize (0x6fd4e4)
    float fade_for_time;                // +0x14 FadeForTime; serialize (0x6fd400), deserialize (0x6fd4e4)
};
static_assert(offsetof(CParticleSizeAffector, target_size) == 0x08, "CParticleSizeAffector::target_size");
static_assert(offsetof(CParticleSizeAffector, variation) == 0x0C, "CParticleSizeAffector::variation");
static_assert(offsetof(CParticleSizeAffector, grow_for_time) == 0x10, "CParticleSizeAffector::grow_for_time");
static_assert(offsetof(CParticleSizeAffector, fade_for_time) == 0x14, "CParticleSizeAffector::fade_for_time");

// glitch::scene::CParticleSpinAffector. serializeAttributes (0x6fe498) writes SpinTime as float
// converted from the unsigned value at +0x08, and Variation (+0x0C). deserializeAttributes
// (0x6fe540) converts the float back into the unsigned slot at +0x08.
struct CParticleSpinAffector {
    std::uint8_t pad_0x00[8];           // +0x00..+0x07 not read by the (de)serializers (vtable / base, not confirmed)
    std::uint32_t spin_time;            // +0x08 SpinTime, unsigned; serialize (0x6fe498) converts to float, deserialize (0x6fe540) truncates back
    float variation;                    // +0x0C Variation; serialize (0x6fe498), deserialize (0x6fe540)
};
static_assert(offsetof(CParticleSpinAffector, spin_time) == 0x08, "CParticleSpinAffector::spin_time");
static_assert(offsetof(CParticleSpinAffector, variation) == 0x0C, "CParticleSpinAffector::variation");

}  // namespace glitch::ps::scene

#endif  // GLITCH_SCENE_COLLADA_GUI_LAYOUTS_PS_MEMBERS_HPP
