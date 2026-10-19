// glitch::scene::IParticleEmitter and the per-shape emitter interfaces. Canonical header of the scene residue pass 2; it replaces
// the stand-ins of scene_simple_accessors.hpp (a destructor and a type tag each, no base, no slots).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::scene::IParticleEmitter, 124 bytes): the
// class derives from glitch::io::IAttributeExchangingObject (primary base, vptr at +0) and has glitch::IReferenceCounted as a
// virtual base (the vbase offset in the vtable is 4 for the interface and grows with each concrete emitter). Slots (vptr+K):
//   +0x00 serializeAttributes (const; 0x6f76d0 empty)       +0x04 deserializeAttributes(IAttributes*, options*) (inherited, empty)
//   +0x08 D1, +0x0c D0 (0x6f77d8, empty body)                +0x10 emitt(now, timeSinceLastCall, SParticle*& out), pure
//   +0x14 setDirection  +0x18 setMinParticlesPerSecond  +0x1c setMaxParticlesPerSecond  +0x20 setMinStartColor  +0x24 setMaxStartColor
//   +0x28 getDirection  +0x2c getMinParticlesPerSecond  +0x30 getMaxParticlesPerSecond  +0x34 getMinStartColor  +0x38 getMaxStartColor
//   +0x3c deserializeAttributes(int index, IAttributes*, options*) (0x6f76e4: returns the index, i.e. reads nothing)
//   +0x40 getType (0x6f76ec: 0 = EPET_POINT)
// The shape interfaces add pure slots from +0x44 on (IParticleBoxEmitter: setBox, getBox; IParticleCylinderEmitter: five setters and
// five getters; IParticleRingEmitter 3 + 3; IParticleSphereEmitter 2 + 2; IParticleMeshEmitter and
// IParticleAnimatedMeshSceneNodeEmitter 8 each) and override getType. The concrete emitters add getMinLifeTime, getMaxLifeTime and
// getMaxAngleDegrees (and for the mesh emitters getUseNormalDirection and getMBNumber) after those.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/SParticle.hpp"

namespace glitch::scene {

class IMesh;
class IAnimatedMeshSceneNode;

// getType() results (0x6f76ec, 0x6f76f4, 0x6f894c, 0x6f9a00, 0x6fafcc, 0x6fc3c4, 0x6fd8f4).
enum E_PARTICLE_EMITTER_TYPE : std::uint32_t {
    EPET_POINT = 0,
    EPET_ANIMATED_MESH = 1,
    EPET_BOX = 2,
    EPET_CYLINDER = 3,
    EPET_MESH = 4,
    EPET_RING = 5,
    EPET_SPHERE = 6,
};

class IParticleEmitter : public io::IAttributeExchangingObject, public virtual glitch::IReferenceCounted {
public:
    // vptr+0x00, 0x6f76d0: empty body.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x08 (D1) 0x6f77d8, vptr+0x0c (D0) 0x6f7848: empty body.
    ~IParticleEmitter() override;

    // vptr+0x10. Produces new particles; returns their count and sets `outArray` to the first.
    virtual int emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) = 0;
    virtual void setDirection(const core::vector3d<float>& direction) = 0;                  // vptr+0x14
    virtual void setMinParticlesPerSecond(std::uint32_t value) = 0;                          // vptr+0x18
    virtual void setMaxParticlesPerSecond(std::uint32_t value) = 0;                          // vptr+0x1c
    virtual void setMinStartColor(const video::SColor& color) = 0;                           // vptr+0x20
    virtual void setMaxStartColor(const video::SColor& color) = 0;                           // vptr+0x24
    virtual const core::vector3d<float>& getDirection() const = 0;                           // vptr+0x28
    virtual std::uint32_t getMinParticlesPerSecond() const = 0;                              // vptr+0x2c
    virtual std::uint32_t getMaxParticlesPerSecond() const = 0;                              // vptr+0x30
    virtual const video::SColor& getMinStartColor() const = 0;                               // vptr+0x34
    virtual const video::SColor& getMaxStartColor() const = 0;                               // vptr+0x38
    // vptr+0x3c, 0x6f76e4: reads nothing and returns 0. The concrete emitters read their attributes starting at `index`.
    virtual int deserializeAttributes(int index, io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);
    // vptr+0x40, 0x6f76ec: EPET_POINT.
    virtual E_PARTICLE_EMITTER_TYPE getType() const;

    // Keep the two-argument overload of the base visible next to the indexed one.
    using io::IAttributeExchangingObject::deserializeAttributes;
};

class IParticleBoxEmitter : public IParticleEmitter {
public:
    ~IParticleBoxEmitter() override;                                                         // 0x6f8a24
    E_PARTICLE_EMITTER_TYPE getType() const override;                                        // vptr+0x40, 0x6f894c: EPET_BOX
    virtual void setBox(const core::aabbox3d<float>& box) = 0;                               // vptr+0x44
    virtual const core::aabbox3d<float>& getBox() const = 0;                                 // vptr+0x48
};

class IParticleCylinderEmitter : public IParticleEmitter {
public:
    ~IParticleCylinderEmitter() override;                                                    // 0x6f9b14
    E_PARTICLE_EMITTER_TYPE getType() const override;                                        // vptr+0x40, 0x6f9a00: EPET_CYLINDER
    virtual void setCenter(const core::vector3d<float>& center) = 0;                         // vptr+0x44
    virtual void setNormal(const core::vector3d<float>& normal) = 0;                         // vptr+0x48
    virtual void setRadius(float radius) = 0;                                                // vptr+0x4c
    virtual void setLength(float length) = 0;                                                // vptr+0x50
    virtual void setOutlineOnly(bool outlineOnly) = 0;                                       // vptr+0x54
    virtual const core::vector3d<float>& getCenter() const = 0;                              // vptr+0x58
    virtual const core::vector3d<float>& getNormal() const = 0;                              // vptr+0x5c
    virtual float getRadius() const = 0;                                                     // vptr+0x60
    virtual float getLength() const = 0;                                                     // vptr+0x64
    virtual bool getOutlineOnly() const = 0;                                                 // vptr+0x68
};

class IParticleRingEmitter : public IParticleEmitter {
public:
    ~IParticleRingEmitter() override;                                                        // 0x6fc4a4
    E_PARTICLE_EMITTER_TYPE getType() const override;                                        // vptr+0x40, 0x6fc3c4: EPET_RING
    virtual void setCenter(const core::vector3d<float>& center) = 0;                         // vptr+0x44
    virtual void setRadius(float radius) = 0;                                                // vptr+0x48
    virtual void setRingThickness(float thickness) = 0;                                      // vptr+0x4c
    virtual const core::vector3d<float>& getCenter() const = 0;                              // vptr+0x50
    virtual float getRadius() const = 0;                                                     // vptr+0x54
    virtual float getRingThickness() const = 0;                                              // vptr+0x58
};

class IParticleSphereEmitter : public IParticleEmitter {
public:
    ~IParticleSphereEmitter() override;                                                      // 0x6fd9c4
    E_PARTICLE_EMITTER_TYPE getType() const override;                                        // vptr+0x40, 0x6fd8f4: EPET_SPHERE
    virtual void setCenter(const core::vector3d<float>& center) = 0;                         // vptr+0x44
    virtual void setRadius(float radius) = 0;                                                // vptr+0x48
    virtual const core::vector3d<float>& getCenter() const = 0;                              // vptr+0x4c
    virtual float getRadius() const = 0;                                                     // vptr+0x50
};

class IParticleMeshEmitter : public IParticleEmitter {
public:
    ~IParticleMeshEmitter() override;                                                        // 0x6fb0b0
    E_PARTICLE_EMITTER_TYPE getType() const override;                                        // vptr+0x40, 0x6fafcc: EPET_MESH
    virtual void setMesh(const boost::intrusive_ptr<const IMesh>& mesh) = 0;                 // vptr+0x44
    virtual void setUseNormalDirection(bool value) = 0;                                      // vptr+0x48
    virtual void setNormalDirectionModifier(float value) = 0;                                // vptr+0x4c
    virtual void setEveryMeshVertex(bool value) = 0;                                         // vptr+0x50
    virtual const boost::intrusive_ptr<const IMesh>& getMesh() const = 0;                    // vptr+0x54
    virtual bool isUsingNormalDirection() const = 0;                                         // vptr+0x58
    virtual float getNormalDirectionModifier() const = 0;                                    // vptr+0x5c
    virtual bool getEveryMeshVertex() const = 0;                                             // vptr+0x60
};

class IParticleAnimatedMeshSceneNodeEmitter : public IParticleEmitter {
public:
    ~IParticleAnimatedMeshSceneNodeEmitter() override;                                       // 0x6f77fc
    E_PARTICLE_EMITTER_TYPE getType() const override;                                        // vptr+0x40, 0x6f76f4: EPET_ANIMATED_MESH
    virtual void setAnimatedMeshSceneNode(IAnimatedMeshSceneNode* node) = 0;                 // vptr+0x44
    virtual void setUseNormalDirection(bool value) = 0;                                      // vptr+0x48
    virtual void setNormalDirectionModifier(float value) = 0;                                // vptr+0x4c
    virtual void setEveryMeshVertex(bool value) = 0;                                         // vptr+0x50
    virtual IAnimatedMeshSceneNode* getAnimatedMeshSceneNode() const = 0;                    // vptr+0x54
    virtual bool isUsingNormalDirection() const = 0;                                         // vptr+0x58
    virtual float getNormalDirectionModifier() const = 0;                                    // vptr+0x5c
    virtual bool getEveryMeshVertex() const = 0;                                             // vptr+0x60
};

}  // namespace glitch::scene
