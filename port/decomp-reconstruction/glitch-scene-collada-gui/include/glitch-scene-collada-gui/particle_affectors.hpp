// glitch::scene particle affectors: attraction, gravity, rotation, size, spin and fade-out. Each concrete affector derives from
// its per-kind interface (scene/IParticleAffector.hpp), which derives from IParticleAffector (IAttributeExchangingObject +
// virtual IReferenceCounted). Members sit at the original offsets (kept as comments); the shared enabled flag at +0x04 is
// IParticleAffector::enabled (set to 1 by every constructor). The slot order follows tools/decomp_vtable.py: the interface
// slots first, then the concrete additions (CParticleAttractionAffector::setSpeed/getSpeed).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/scene/IParticleAffector.hpp"

namespace glitch::scene {

class CParticleAttractionAffector : public IParticleAttractionAffector {
public:
    // 0x6f845c (C2) / 0x6f8528 (C1): the point is copied, lastTime starts at zero.
    CParticleAttractionAffector(const core::vector3d<float>& point, float speed, bool attract, bool affectX, bool affectY,
                                bool affectZ);
    ~CParticleAttractionAffector() override;  // 0x6f8634 (D1), 0x6f88b4 (D0)

    // vptr+0x10, 0x6f86cc: moves every particle towards (or away from) the point by dt * speed along the normalized
    // direction, on the enabled axes. The first call only records the time.
    void affect(std::uint32_t now, SParticle* particles, std::uint32_t count) override;

    void setPoint(const core::vector3d<float>& value) override;             // 0x6f83a0
    void setAttract(bool value) override;                                   // 0x6f83c4
    void setAffectX(bool value) override;                                   // 0x6f83cc
    void setAffectY(bool value) override;                                   // 0x6f83d4
    void setAffectZ(bool value) override;                                   // 0x6f83dc
    const core::vector3d<float>& getPoint() const override;                 // 0x6f83e4
    bool getAttract() const override;                                       // 0x6f83f4
    bool getAffectX() const override;                                       // 0x6f83fc
    bool getAffectY() const override;                                       // 0x6f8404
    bool getAffectZ() const override;                                       // 0x6f840c
    virtual void setSpeed(float value);                                     // 0x6f83bc
    virtual float getSpeed() const;                                         // 0x6f83ec

    core::vector3d<float> point;     // +0x08
    float speed = 0.0f;              // +0x14
    bool affectX = false;            // +0x18
    bool affectY = false;            // +0x19
    bool affectZ = false;            // +0x1a
    bool attract = false;            // +0x1b
    std::uint32_t lastTime = 0;      // +0x1c
};

class CParticleGravityAffector : public IParticleGravityAffector {
public:
    // 0x6faa54 (C2) / 0x6fab1c (C1): timeForceLost is stored as a float.
    CParticleGravityAffector(const core::vector3d<float>& gravity, std::uint32_t timeForceLost);
    ~CParticleGravityAffector() override;  // 0x6fad94 (D1), 0x6faf24 (D0)

    // vptr+0x00, 0x6fad3c: Gravity, TimeForceLost.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x1c, 0x6fadd8: reads the two attributes starting at `index`; returns the index after the last one read.
    int deserializeAttributes(int index, io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    using IParticleAffector::deserializeAttributes;
    // vptr+0x10, 0x6fac14: blends every particle's velocity from its start vector to the gravity over timeForceLost.
    void affect(std::uint32_t now, SParticle* particles, std::uint32_t count) override;

    void setTimeForceLost(float value) override;                            // 0x6fa9fc
    void setGravity(const core::vector3d<float>& value) override;           // 0x6faa04
    float getTimeForceLost() const override;                                // 0x6faa20
    const core::vector3d<float>& getGravity() const override;               // 0x6faa28

    float timeForceLost = 0.0f;      // +0x08
    core::vector3d<float> gravity;   // +0x0c
};

class CParticleRotationAffector : public IParticleRotationAffector {
public:
    // 0x6fcd74 (C2) / 0x6fce34 (C1): the pivot point and speed are copied; lastTime starts at zero.
    CParticleRotationAffector(const core::vector3d<float>& pivotPoint, const core::vector3d<float>& speed);
    ~CParticleRotationAffector() override;  // 0x6fcf28 (D1), 0x6fd14c (D0)

    // vptr+0x10, 0x6fcf6c: rotates every particle position about the pivot by dt * speed on each axis (YZ, XZ, XY).
    void affect(std::uint32_t now, SParticle* particles, std::uint32_t count) override;

    void setPivotPoint(const core::vector3d<float>& value) override;        // 0x6fcd08
    void setSpeed(const core::vector3d<float>& value) override;             // 0x6fcd24
    const core::vector3d<float>& getPivotPoint() const override;            // 0x6fcd40
    const core::vector3d<float>& getSpeed() const override;                 // 0x6fcd48

    core::vector3d<float> pivotPoint;  // +0x08
    core::vector3d<float> speed;       // +0x14
    std::uint32_t lastTime = 0;        // +0x20
};

class CParticleSizeAffector : public IParticleSizeAffector {
public:
    // 0x6fd250 (C2) / 0x6fd310 (C1): the two uint times are converted to floats.
    CParticleSizeAffector(float targetSize, float variation, std::uint32_t growForTime, std::uint32_t fadeForTime);
    ~CParticleSizeAffector() override;  // 0x6fd4a0 (D1), 0x6fd84c (D0)

    // vptr+0x00, 0x6fd400: TargetSize, Variation, GrowForTime, FadeForTime.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x1c, 0x6fd4e4.
    int deserializeAttributes(int index, io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    using IParticleAffector::deserializeAttributes;
    // vptr+0x10, 0x6fd63c: size = target size, reduced by the per-particle variation percentage, scaled up over growForTime
    // after the birth and down over fadeForTime before the death.
    void affect(std::uint32_t now, SParticle* particles, std::uint32_t count) override;

    void setTargetSize(float value) override;                               // 0x6fd1ec
    void setVariation(float value) override;                                // 0x6fd1f4
    void setGrowForTime(float value) override;                              // 0x6fd1fc
    void setFadeForTime(float value) override;                              // 0x6fd204
    float getTargetSize() const override;                                   // 0x6fd20c
    float getVariation() const override;                                    // 0x6fd214
    float getGrowForTime() const override;                                  // 0x6fd21c
    float getFadeForTime() const override;                                  // 0x6fd224

    float targetSize = 0.0f;   // +0x08
    float variation = 0.0f;    // +0x0c
    float growForTime = 0.0f;  // +0x10
    float fadeForTime = 0.0f;  // +0x14
};

class CParticleSpinAffector : public IParticleSpinAffector {
public:
    // 0x6fe310 (C2) / 0x6fe3bc (C1).
    CParticleSpinAffector(std::uint32_t spinTime, float variation);
    ~CParticleSpinAffector() override;  // 0x6fe4fc (D1), 0x6fe7ac (D0)

    // vptr+0x00, 0x6fe498: SpinTime (as a float), Variation.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x1c, 0x6fe540.
    int deserializeAttributes(int index, io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    using IParticleAffector::deserializeAttributes;
    // vptr+0x10, 0x6fe600: rotation = 2 * pi * ((now - startTime) mod period) / period, with a per-particle variation.
    void affect(std::uint32_t now, SParticle* particles, std::uint32_t count) override;

    void setSpinTime(float value) override;                                 // 0x6fe2b4
    void setVariation(float value) override;                                // 0x6fe2cc
    float getSpinTime() const override;                                     // 0x6fe2d4
    float getVariation() const override;                                    // 0x6fe2e4

    std::uint32_t spinTime = 0;  // +0x08
    float variation = 0.0f;      // +0x0c
};

class CParticleFadeOutAffector : public IParticleFadeOutAffector {
public:
    // 0x6fa4d4 (C2) / 0x6fa5a4 (C1): the colour is copied to +0x05 (unaligned in the original); a zero time becomes 1.0.
    CParticleFadeOutAffector(const video::SColor& targetColor, std::uint32_t fadeOutTime);
    ~CParticleFadeOutAffector() override;  // 0x6fa7c0 (D1), 0x6fa94c (D0)

    // vptr+0x00, 0x6fa750: TargetColor, FadeOutTime.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x1c, 0x6fa804.
    int deserializeAttributes(int index, io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    using IParticleAffector::deserializeAttributes;
    // vptr+0x10, 0x6fa69c: inside the last fadeOutTime ms of its life a particle's colour is its start colour blended
    // towards the target colour.
    void affect(std::uint32_t now, SParticle* particles, std::uint32_t count) override;

    void setTargetColor(const video::SColor& value) override;               // 0x6fa484
    void setFadeOutTime(float value) override;                              // 0x6fa498
    const video::SColor& getTargetColor() const override;                   // 0x6fa4a0
    float getFadeOutTime() const override;                                  // 0x6fa4a8

    video::SColor targetColor;   // +0x05 (unaligned in the original)
    float fadeOutTime = 0.0f;    // +0x0c
};

}  // namespace glitch::scene
