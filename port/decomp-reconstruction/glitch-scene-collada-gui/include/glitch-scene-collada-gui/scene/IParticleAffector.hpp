// glitch::scene::IParticleAffector and the per-kind affector interfaces. Canonical header of the scene residue pass 2; it replaces
// the stand-ins of scene_simple_accessors.hpp (a destructor and a type tag each, no base, no slots).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::scene::IParticleAffector, 92 bytes): the class
// derives from glitch::io::IAttributeExchangingObject (primary base, vptr at +0) and has glitch::IReferenceCounted as a virtual
// base. Slots (vptr+K):
//   +0x00 serializeAttributes (const; 0x6f837c empty)   +0x04 deserializeAttributes(IAttributes*, options*) (inherited, empty)
//   +0x08 D1 (0x6f8414, empty), +0x0c D0 (0x6f8678)       +0x10 affect(now, SParticle*, count), pure
//   +0x14 setEnabled (0x6f836c)                           +0x18 getEnabled (0x6f8374)
//   +0x1c deserializeAttributes(int index, IAttributes*, options*) (0x6f8390: returns the index)
//   +0x20 getType, pure
// Object: +0x04 `enabled` (a byte, set to 1 by every constructor, tested by every affect); the concrete affectors continue at +0x08
// (the fade-out affector keeps its colour at the unaligned +0x05). The per-kind interfaces add pure setters and getters after
// getType and override getType.
#pragma once

#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/SParticle.hpp"

namespace glitch::scene {

// getType() results (0x6f8398, 0x6fa47c, 0x6fa9f4, 0x6fcd00, 0x6fd1e4, 0x6fe2ac).
enum E_PARTICLE_AFFECTOR_TYPE : std::uint32_t {
    EPAT_NONE = 0,
    EPAT_ATTRACT = 1,
    EPAT_FADE_OUT = 2,
    EPAT_GRAVITY = 3,
    EPAT_ROTATE = 4,
    EPAT_SIZE = 5,
    EPAT_SPIN = 6,
};

class IParticleAffector : public io::IAttributeExchangingObject, public virtual glitch::IReferenceCounted {
public:
    // vptr+0x00, 0x6f837c: empty body.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x08 (D1) 0x6f8414, vptr+0x0c (D0) 0x6f8678: empty body.
    ~IParticleAffector() override;

    // vptr+0x10. Updates `count` particles starting at `particles` at time `now`.
    virtual void affect(std::uint32_t now, SParticle* particles, std::uint32_t count) = 0;
    virtual void setEnabled(bool enabled);                                                   // vptr+0x14, 0x6f836c
    virtual bool getEnabled() const;                                                         // vptr+0x18, 0x6f8374
    // vptr+0x1c, 0x6f8390: reads nothing and returns 0.
    virtual int deserializeAttributes(int index, io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);
    virtual E_PARTICLE_AFFECTOR_TYPE getType() const = 0;                                    // vptr+0x20

    using io::IAttributeExchangingObject::deserializeAttributes;

    bool enabled = false;  // +0x04
};

class IParticleAttractionAffector : public IParticleAffector {
public:
    ~IParticleAttractionAffector() override;                                                 // 0x6f8438
    E_PARTICLE_AFFECTOR_TYPE getType() const override;                                       // 0x6f8398: EPAT_ATTRACT
    virtual void setPoint(const core::vector3d<float>& point) = 0;                           // vptr+0x24
    virtual void setAttract(bool attract) = 0;                                               // vptr+0x28
    virtual void setAffectX(bool affect) = 0;                                                // vptr+0x2c
    virtual void setAffectY(bool affect) = 0;                                                // vptr+0x30
    virtual void setAffectZ(bool affect) = 0;                                                // vptr+0x34
    virtual const core::vector3d<float>& getPoint() const = 0;                               // vptr+0x38
    virtual bool getAttract() const = 0;                                                     // vptr+0x3c
    virtual bool getAffectX() const = 0;                                                     // vptr+0x40
    virtual bool getAffectY() const = 0;                                                     // vptr+0x44
    virtual bool getAffectZ() const = 0;                                                     // vptr+0x48
};

class IParticleFadeOutAffector : public IParticleAffector {
public:
    ~IParticleFadeOutAffector() override;                                                    // 0x6fa4b0
    E_PARTICLE_AFFECTOR_TYPE getType() const override;                                       // 0x6fa47c: EPAT_FADE_OUT
    virtual void setTargetColor(const video::SColor& color) = 0;                             // vptr+0x24
    virtual void setFadeOutTime(float time) = 0;                                             // vptr+0x28
    virtual const video::SColor& getTargetColor() const = 0;                                 // vptr+0x2c
    virtual float getFadeOutTime() const = 0;                                                // vptr+0x30
};

class IParticleGravityAffector : public IParticleAffector {
public:
    ~IParticleGravityAffector() override;                                                    // 0x6faa30
    E_PARTICLE_AFFECTOR_TYPE getType() const override;                                       // 0x6fa9f4: EPAT_GRAVITY
    virtual void setTimeForceLost(float time) = 0;                                           // vptr+0x24
    virtual void setGravity(const core::vector3d<float>& gravity) = 0;                       // vptr+0x28
    virtual float getTimeForceLost() const = 0;                                              // vptr+0x2c
    virtual const core::vector3d<float>& getGravity() const = 0;                             // vptr+0x30
};

class IParticleRotationAffector : public IParticleAffector {
public:
    ~IParticleRotationAffector() override;                                                   // 0x6fcd50
    E_PARTICLE_AFFECTOR_TYPE getType() const override;                                       // 0x6fcd00: EPAT_ROTATE
    virtual void setPivotPoint(const core::vector3d<float>& pivot) = 0;                      // vptr+0x24
    virtual void setSpeed(const core::vector3d<float>& speed) = 0;                           // vptr+0x28
    virtual const core::vector3d<float>& getPivotPoint() const = 0;                          // vptr+0x2c
    virtual const core::vector3d<float>& getSpeed() const = 0;                               // vptr+0x30
};

class IParticleSizeAffector : public IParticleAffector {
public:
    ~IParticleSizeAffector() override;                                                       // 0x6fd22c
    E_PARTICLE_AFFECTOR_TYPE getType() const override;                                       // 0x6fd1e4: EPAT_SIZE
    virtual void setTargetSize(float size) = 0;                                              // vptr+0x24
    virtual void setVariation(float variation) = 0;                                          // vptr+0x28
    virtual void setGrowForTime(float time) = 0;                                             // vptr+0x2c
    virtual void setFadeForTime(float time) = 0;                                             // vptr+0x30
    virtual float getTargetSize() const = 0;                                                 // vptr+0x34
    virtual float getVariation() const = 0;                                                  // vptr+0x38
    virtual float getGrowForTime() const = 0;                                                // vptr+0x3c
    virtual float getFadeForTime() const = 0;                                                // vptr+0x40
};

class IParticleSpinAffector : public IParticleAffector {
public:
    ~IParticleSpinAffector() override;                                                       // 0x6fe2ec
    E_PARTICLE_AFFECTOR_TYPE getType() const override;                                       // 0x6fe2ac: EPAT_SPIN
    virtual void setSpinTime(float time) = 0;                                                // vptr+0x24
    virtual void setVariation(float variation) = 0;                                          // vptr+0x28
    virtual float getSpinTime() const = 0;                                                   // vptr+0x2c
    virtual float getVariation() const = 0;                                                  // vptr+0x30
};

}  // namespace glitch::scene
