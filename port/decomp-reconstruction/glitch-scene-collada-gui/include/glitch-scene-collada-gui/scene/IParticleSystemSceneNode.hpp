// glitch::scene::IParticleSystemSceneNode: the base of the scene particle system node. Canonical header of the scene-owner wave,
// completed in residue pass 2 with its 22 pure virtual slots. It is the glitch::scene counterpart of
// collada::IParticleSystemSceneNode (collada/IParticleSystemSceneNode.hpp, a different class in another namespace, kept as it is).
// It adds no members of its own: the object is the ISceneNode.
//
// Evidence (libDungeonHunter2.so, ARM): constructor 0x6c23f4 (C2): converts the rotation vector (radians) to a quaternion
// (quaternion::set) and calls ISceneNode::ISceneNode(id, position, rotation, scale). The vtable (tools/decomp_vtable.py
// glitch::scene::IParticleSystemSceneNode) adds the pure slots at listing +0x100 .. +0x154 (vptr+0xf4 .. +0x148), in this order:
// setParticleSize, setParticlesAreGlobal, getEmitter, setEmitter, addAffector, removeAllAffectors,
// createAnimatedMeshSceneNodeEmitter, createBoxEmitter, createCylinderEmitter, createMeshEmitter, createPointEmitter,
// createRingEmitter, createSphereEmitter, createAttractionAffector, createFadeOutParticleAffector, createGravityAffector,
// createRotationAffector, createSizeAffector, createSpinAffector, getNumberOfParticles, setBillboardType, setTransparency.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

class IMesh;
class IAnimatedMeshSceneNode;
class IParticleEmitter;
class IParticleAffector;
class IParticleAnimatedMeshSceneNodeEmitter;
class IParticleBoxEmitter;
class IParticleCylinderEmitter;
class IParticleMeshEmitter;
class IParticleRingEmitter;
class IParticleSphereEmitter;
class IParticleAttractionAffector;
class IParticleFadeOutAffector;
class IParticleGravityAffector;
class IParticleRotationAffector;
class IParticleSizeAffector;
class IParticleSpinAffector;

// The billboard mode word stored at +0x17c of the particle node by setBillboardType (0x6c0f0c). The enumerators are not known.
enum E_PARTICLE_BILLBOARD_TYPE : std::uint32_t {};

class IParticleSystemSceneNode : public ISceneNode {
public:
    // 0x6c23f4 (C2). The rotation vector (radians) is converted with quaternion::set.
    IParticleSystemSceneNode(int id, const core::vector3d<float>& position, const core::vector3d<float>& rotation,
                             const core::vector3d<float>& scale);
    // 0x6c1724 (D1), D0 0x6c3028: only the ISceneNode destruction.
    ~IParticleSystemSceneNode() override;

    virtual void setParticleSize(const core::dimension2d<float>& size) = 0;
    virtual void setParticlesAreGlobal(bool global) = 0;
    virtual IParticleEmitter* getEmitter() = 0;
    virtual void setEmitter(IParticleEmitter* emitter) = 0;
    virtual void addAffector(IParticleAffector* affector) = 0;
    virtual void removeAllAffectors() = 0;
    virtual IParticleAnimatedMeshSceneNodeEmitter* createAnimatedMeshSceneNodeEmitter(
        IAnimatedMeshSceneNode* node, bool useNormalDirection, const core::vector3d<float>& direction,
        float normalDirectionModifier, int meshBufferNumber, bool everyMeshVertex, unsigned int minParticlesPerSecond,
        unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
        unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) = 0;
    virtual IParticleBoxEmitter* createBoxEmitter(const core::aabbox3d<float>& box, const core::vector3d<float>& direction,
                                                  unsigned int minParticlesPerSecond, unsigned int maxParticlesPerSecond,
                                                  const video::SColor& minStartColor, const video::SColor& maxStartColor,
                                                  unsigned int lifeTimeMin, unsigned int lifeTimeMax,
                                                  int maxAngleDegrees) = 0;
    virtual IParticleCylinderEmitter* createCylinderEmitter(
        const core::vector3d<float>& center, float radius, const core::vector3d<float>& normal, float length,
        bool outlineOnly, const core::vector3d<float>& direction, unsigned int minParticlesPerSecond,
        unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
        unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) = 0;
    virtual IParticleMeshEmitter* createMeshEmitter(
        const boost::intrusive_ptr<const IMesh>& mesh, bool useNormalDirection, const core::vector3d<float>& direction,
        float normalDirectionModifier, int meshBufferNumber, bool everyMeshVertex, unsigned int minParticlesPerSecond,
        unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
        unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) = 0;
    virtual IParticleEmitter* createPointEmitter(const core::vector3d<float>& direction, unsigned int minParticlesPerSecond,
                                                 unsigned int maxParticlesPerSecond, const video::SColor& minStartColor,
                                                 const video::SColor& maxStartColor, unsigned int lifeTimeMin,
                                                 unsigned int lifeTimeMax, int maxAngleDegrees) = 0;
    virtual IParticleRingEmitter* createRingEmitter(const core::vector3d<float>& center, float radius, float ringThickness,
                                                    const core::vector3d<float>& direction,
                                                    unsigned int minParticlesPerSecond,
                                                    unsigned int maxParticlesPerSecond, const video::SColor& minStartColor,
                                                    const video::SColor& maxStartColor, unsigned int lifeTimeMin,
                                                    unsigned int lifeTimeMax, int maxAngleDegrees) = 0;
    virtual IParticleSphereEmitter* createSphereEmitter(const core::vector3d<float>& center, float radius,
                                                        const core::vector3d<float>& direction,
                                                        unsigned int minParticlesPerSecond,
                                                        unsigned int maxParticlesPerSecond,
                                                        const video::SColor& minStartColor,
                                                        const video::SColor& maxStartColor, unsigned int lifeTimeMin,
                                                        unsigned int lifeTimeMax, int maxAngleDegrees) = 0;
    virtual IParticleAttractionAffector* createAttractionAffector(const core::vector3d<float>& point, float speed,
                                                                  bool attract, bool affectX, bool affectY,
                                                                  bool affectZ) = 0;
    virtual IParticleFadeOutAffector* createFadeOutParticleAffector(const video::SColor& targetColor,
                                                                    unsigned int fadeOutTime) = 0;
    virtual IParticleGravityAffector* createGravityAffector(const core::vector3d<float>& gravity,
                                                            unsigned int timeForceLost) = 0;
    virtual IParticleRotationAffector* createRotationAffector(const core::vector3d<float>& pivotPoint,
                                                              const core::vector3d<float>& speed) = 0;
    virtual IParticleSizeAffector* createSizeAffector(float targetSize, float variation, unsigned int growForTime,
                                                      unsigned int fadeForTime) = 0;
    virtual IParticleSpinAffector* createSpinAffector(unsigned int spinTime, float variation) = 0;
    virtual int getNumberOfParticles() const = 0;
    virtual void setBillboardType(E_PARTICLE_BILLBOARD_TYPE type) = 0;
    virtual void setTransparency(float alpha) = 0;
};

}  // namespace glitch::scene
