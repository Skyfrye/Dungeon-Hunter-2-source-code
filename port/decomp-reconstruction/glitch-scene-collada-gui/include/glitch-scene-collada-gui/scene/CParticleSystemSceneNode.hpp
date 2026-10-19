// glitch::scene::CParticleSystemSceneNode: the particle system node (tag 'ptcl'). Canonical header of the scene-owner wave, rewritten
// in residue pass 2 with the full layout and the emitter/affector code. It derives from scene::IParticleSystemSceneNode, as the
// original does. The glitch::collada::CParticleSystemSceneNode is a different class (collada_scene_accessors.hpp) and is left alone.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x6c2478 (C1) / 0x6c2598 (C2), destructor 0x6c1cec, doParticleSystem
// 0x6c2880, clone 0x6c309c, operator new(0x190) in clone):
//   +0x000 IParticleSystemSceneNode (ISceneNode, ends at +0x130)
//   +0x130 affector list: a circular list of heap entries {next, prev, affector} whose two-word sentinel is the object itself
//   +0x138 emitter (a counted reference), +0x13c particle vector (begin, end, capacity; 0x44-byte SParticle records)
//   +0x148 particle width, +0x14c particle height (5 x 5 at construction; setParticleSize 0x6c0ef4)
//   +0x150 time of the last doParticleSystem call (0 until the first call)        +0x154 a word set to 0xffff, never read here
//   +0x158 bounding box (-1..1 at construction)                                    +0x170 a counted reference, dropped by the destructor
//   +0x174 material (boost::intrusive_ptr<CMaterial>; getMaterial 0x6c0e50 returns its address, onRegisterSceneNode registers it)
//   +0x178 a word cloned by clone()    +0x17c billboard type (setBillboardType 0x6c0f0c)
//   +0x180 particles-are-global byte (1 at construction; setParticlesAreGlobal 0x6c0eec)
//   +0x184 transparency (1.0; setTransparency 0x6c0ed8)
//   +0x188 glitch::IReferenceCounted virtual base (vptr), +0x18c its count; the object is 0x190 bytes.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/IParticleAffector.hpp"
#include "glitch-scene-collada-gui/scene/IParticleEmitter.hpp"
#include "glitch-scene-collada-gui/scene/IParticleSystemSceneNode.hpp"
#include "glitch-video/material.hpp"

namespace glitch::scene {

class CParticleSystemSceneNode : public IParticleSystemSceneNode {
public:
    // One entry of the affector list: the list link (next, prev) and the affector it holds a use of (GlitchAlloc(0xc) in addAffector).
    struct SAffectorEntry : SListLink {
        IParticleAffector* affector = nullptr;  // +0x08
    };

    // 0x6c2478 (C1) / 0x6c2598 (C2). The leading bool is not used by either body. The rotation is a vector of angles in radians.
    CParticleSystemSceneNode(bool unused, int id, const core::vector3d<float>& position, const core::vector3d<float>& rotation,
                             const core::vector3d<float>& scale);
    // 0x6c1cec (D1), 0x6c1dfc (D2), D0 0x6c1de0: drops the emitter, removes the affectors, releases the material.
    ~CParticleSystemSceneNode() override;

    // vptr+0x34 (K 0xbc), 0x6c0dc4: returns 'ptcl'.
    E_SCENE_NODE_TYPE getType() const override;
    // 0x6c0ee4: the box at +0x158.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // 0x6c0e58: returns 1.
    std::uint32_t getMaterialCount() const override;
    // 0x6c0ee0: empty (the particles are drawn from the registered material by the scene manager's passes).
    void render(void* renderContext) override;
    // 0x6c0e60: when particles exist, registers the node with the scene manager (material at +0x174, user data 1, pass 3,
    // sort order 0x7fffffff). Returns 1.
    int onRegisterSceneNode() override;
    // 0x6c2ff8: ISceneNode::onAnimate, then doParticleSystem with the current timer value unless the timer is stopped.
    void onAnimate(std::uint32_t timeMs) override;
    // 0x6c309c: a node with the same transform, material, affectors and a copy of the emitter.
    ISceneNode* clone() override;
    // 0x6c1554: the base attributes, GlobalParticles, ParticleWidth, ParticleHeight, the Emitter type and its attributes, then
    // every affector's type and attributes.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // 0x6c1790: reads them back and rebuilds the emitter and the affectors (defaults for the types it creates).
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    void setParticleSize(const core::dimension2d<float>& size) override;     // 0x6c0ef4
    void setParticlesAreGlobal(bool global) override;                        // 0x6c0eec
    IParticleEmitter* getEmitter() override;                                 // 0x6c0df8
    void setEmitter(IParticleEmitter* newEmitter) override;                  // 0x6c0e00
    void addAffector(IParticleAffector* affector) override;                  // 0x6c1c54
    void removeAllAffectors() override;                                      // 0x6c1ca0
    IParticleAnimatedMeshSceneNodeEmitter* createAnimatedMeshSceneNodeEmitter(
        IAnimatedMeshSceneNode* node, bool useNormalDirection, const core::vector3d<float>& direction,
        float normalDirectionModifier, int meshBufferNumber, bool everyMeshVertex, unsigned int minParticlesPerSecond,
        unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
        unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) override;  // 0x6c2364
    IParticleBoxEmitter* createBoxEmitter(const core::aabbox3d<float>& box, const core::vector3d<float>& direction,
                                          unsigned int minParticlesPerSecond, unsigned int maxParticlesPerSecond,
                                          const video::SColor& minStartColor, const video::SColor& maxStartColor,
                                          unsigned int lifeTimeMin, unsigned int lifeTimeMax,
                                          int maxAngleDegrees) override;  // 0x6c22dc
    IParticleCylinderEmitter* createCylinderEmitter(
        const core::vector3d<float>& center, float radius, const core::vector3d<float>& normal, float length,
        bool outlineOnly, const core::vector3d<float>& direction, unsigned int minParticlesPerSecond,
        unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
        unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) override;  // 0x6c224c
    IParticleMeshEmitter* createMeshEmitter(
        const boost::intrusive_ptr<const IMesh>& mesh, bool useNormalDirection, const core::vector3d<float>& direction,
        float normalDirectionModifier, int meshBufferNumber, bool everyMeshVertex, unsigned int minParticlesPerSecond,
        unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
        unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) override;  // 0x6c21bc
    IParticleEmitter* createPointEmitter(const core::vector3d<float>& direction, unsigned int minParticlesPerSecond,
                                         unsigned int maxParticlesPerSecond, const video::SColor& minStartColor,
                                         const video::SColor& maxStartColor, unsigned int lifeTimeMin,
                                         unsigned int lifeTimeMax, int maxAngleDegrees) override;  // 0x6c213c
    IParticleRingEmitter* createRingEmitter(const core::vector3d<float>& center, float radius, float ringThickness,
                                            const core::vector3d<float>& direction, unsigned int minParticlesPerSecond,
                                            unsigned int maxParticlesPerSecond, const video::SColor& minStartColor,
                                            const video::SColor& maxStartColor, unsigned int lifeTimeMin,
                                            unsigned int lifeTimeMax, int maxAngleDegrees) override;  // 0x6c20bc
    IParticleSphereEmitter* createSphereEmitter(const core::vector3d<float>& center, float radius,
                                                const core::vector3d<float>& direction,
                                                unsigned int minParticlesPerSecond, unsigned int maxParticlesPerSecond,
                                                const video::SColor& minStartColor, const video::SColor& maxStartColor,
                                                unsigned int lifeTimeMin, unsigned int lifeTimeMax,
                                                int maxAngleDegrees) override;  // 0x6c2044
    IParticleAttractionAffector* createAttractionAffector(const core::vector3d<float>& point, float speed, bool attract,
                                                          bool affectX, bool affectY, bool affectZ) override;  // 0x6c1fec
    IParticleFadeOutAffector* createFadeOutParticleAffector(const video::SColor& targetColor,
                                                            unsigned int fadeOutTime) override;  // 0x6c1fbc
    IParticleGravityAffector* createGravityAffector(const core::vector3d<float>& gravity,
                                                    unsigned int timeForceLost) override;  // 0x6c1f8c
    IParticleRotationAffector* createRotationAffector(const core::vector3d<float>& pivotPoint,
                                                      const core::vector3d<float>& speed) override;  // 0x6c1f5c
    IParticleSizeAffector* createSizeAffector(float targetSize, float variation, unsigned int growForTime,
                                              unsigned int fadeForTime) override;  // 0x6c1f14
    IParticleSpinAffector* createSpinAffector(unsigned int spinTime, float variation) override;  // 0x6c1ee4
    int getNumberOfParticles() const override;                               // 0x6c0dd0
    void setBillboardType(E_PARTICLE_BILLBOARD_TYPE type) override;          // 0x6c0f0c
    void setTransparency(float alpha) override;                              // 0x6c0ed8
    // vptr+0x14c (K), 0x6c0e50: the address of the material reference at +0x174.
    virtual boost::intrusive_ptr<video::CMaterial>& getMaterial(std::uint32_t index);
    using ISceneNode::getMaterial;

    // 0x6c0f08: empty.
    void reallocateBuffers();
    // 0x6c2880: emits new particles, moves and ages the existing ones, runs the affectors and rebuilds the bounding box.
    void doParticleSystem(std::uint32_t now);

    SListLink affectors;                                    // +0x130 (sentinel of the circular list of SAffectorEntry)
    boost::intrusive_ptr<IParticleEmitter> emitter;         // +0x138
    std::vector<SParticle> particles;                       // +0x13c
    core::dimension2d<float> particleSize{5.0f, 5.0f};      // +0x148
    std::uint32_t lastEmitTime = 0;                         // +0x150
    std::uint32_t unk_154 = 0xFFFFu;                        // +0x154
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x158
    boost::intrusive_ptr<glitch::IReferenceCounted> unk_170;  // +0x170
    boost::intrusive_ptr<video::CMaterial> material;        // +0x174
    // +0x178: a pointer to an emitter holder, not a word. Evidence: AnimatedFX::SetEndPoint (0x492560) reads
    // node +0x178, takes the word at holder +4 and stores a float at subobject +44 (0x2c); AnimatedFX::HasCompleted
    // (0x4924e0) reads node +0x178, holder +4 and then subobject +8. Both sites dereference it, so the row is a
    // pointer and holder +4 is a counted reference to one of its subobjects.
    void* unk_178 = nullptr;                                // +0x178 emitter holder (see the note above)
    std::uint32_t billboardType = 0;                        // +0x17c
    bool particlesAreGlobal = true;                         // +0x180
    float transparency = 1.0f;                              // +0x184
};

}  // namespace glitch::scene
