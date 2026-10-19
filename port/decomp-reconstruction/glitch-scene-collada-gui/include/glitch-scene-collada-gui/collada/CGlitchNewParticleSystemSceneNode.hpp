// glitch::collada::CGlitchNewParticleSystemSceneNode: the COLLADA node of the new particle system (tag 'daeg'). It owns a glitch::ps
// particle system of GNPSParticle (PSManager::createGNPSSystem) and draws its particles like CParticleSystemSceneNode does. Canonical
// header of residue pass ob; it replaces the accessor class of collada_scene_accessors.hpp and the stand-in functions of recon/slice_18
// and slice_19.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x63cb10 (C1) / 0x63cc0c (C2), destructors 0x63ca28 (D1) / 0x63cab0
// (D2), D0 0x63ca94; the factory allocates 0x198 bytes, 0x63133c):
//   +0x000 IParticleSystemSceneNode (to +0x174): +0x130 uid (the emitter's name), +0x13c four bytes, set from the emitter's "scale over
//          life" bytes (size +0x3c, speed +0x4c, spin +0x80, motion random +0xc0), +0x140 the particle mesh, +0x148 the "ViewMatrix"
//          slot, +0x14c the "BBox" slot, +0x150 the force-URL vector, +0x158 the materials, +0x164 the force nodes, +0x170 the
//          texture-transform flag
//   +0x174 uint16 the material's colour parameter
//   +0x178 IParticleSystem<GNPSParticle>* the system (owned)
//   +0x17c SGNPSEmitter* the emitter record
//   +0x180 the system's "ViewRotMatrix" slot (onAnimate refreshes it with the camera's view matrix)
//   +0x184 bool billboard, +0x188 IVideoDriver*, +0x18c the attribute mask (0x60003)
//   +0x190 glitch::IReferenceCounted virtual base (the object is 0x198 bytes)
// Slots as CParticleSystemSceneNode (0x637b84 getTransformedBoundingBox, 0x637b78 getType 'daeg', 0x637b3c getUID, 0x63b1d0
// getBoundingBox, 0x63b620 onRegisterSceneNode, 0x63fed4 onAnimate, 0x643ea8 render, 0x642e58 initParticleSystem, 0x637b48
// getParticleCount, 0x63f07c getParticleSystemParameter, 0x63f1c8 setParticleMesh, 0x63f214 init, 0x63db4c attach).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/collada/IParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/ps/IParticleSystem.hpp"

namespace glitch::video {
class IBuffer;
class IVideoDriver;
}  // namespace glitch::video

namespace glitch::collada {

class CGlitchNewParticleSystemSceneNode : public IParticleSystemSceneNode {
public:
    // 0x63cb10 (C1) / 0x63cc0c (C2): IParticleSystemSceneNode(database, forceUrls, root), the emitter stored, the four flag bytes
    // (+0x13c) set from the emitter's scale-over-life bytes, the uid the emitter's name, the node added to the root's particle
    // systems once more (the base constructor already added it) and automatic culling 2.
    CGlitchNewParticleSystemSceneNode(const CColladaDatabase& database, SGNPSEmitter& emitter, res::vector<res::String>* forceUrls,
                                      CRootSceneNode* root);
    // 0x63ca28 (D1) / 0x63cab0 (D2), D0 0x63ca94: deletes the particle system; the base destructor follows.
    ~CGlitchNewParticleSystemSceneNode() override;

    scene::E_SCENE_NODE_TYPE getType() const override;                             // K 0xbc, 0x637b78: 'daeg'
    const char* getUID() const override;                                           // K 0x54, 0x637b3c
    const core::aabbox3d<float>& getTransformedBoundingBox() const override;       // K 0x34, 0x637b84
    const core::aabbox3d<float>& getBoundingBox() const override;                  // K 0x30, 0x63b1d0
    int onRegisterSceneNode() override;                                            // K 0x10, 0x63b620
    void onAnimate(std::uint32_t timeMs) override;                                 // K 0x14, 0x63fed4
    void render(void* renderContext) override;                                     // K 0x1c, 0x643ea8

    void initParticleSystem(video::IVideoDriver* videoDriver, bool billboard) override;  // K 0xf4, 0x642e58
    std::uint32_t getParticleCount() const override;                               // K 0xf8, 0x637b48
    void* getParticleSystemParameter(const char* name) override;                   // K 0xfc, 0x63f07c
    void setParticleMesh(boost::intrusive_ptr<scene::CMeshBuffer> mesh) override;  // K 0x100, 0x63f1c8
    void init() override;                                                          // K 0x104, 0x63f214
    void attach(scene::ISceneNode* sceneRoot) override;                            // K 0x108, 0x63db4c

    // 0x63dcc0: drops the shared billboard mesh buffer and index buffer.
    static void deleteSharedBuffer();

    // 0x9f6f78, 0x9f6f7c, 0x9f6f80: this class's own copies of the shared billboard buffers (not the old node's).
    static boost::intrusive_ptr<scene::CMeshBuffer> BillboardMeshBuffer;
    static boost::intrusive_ptr<video::IBuffer> OutBillboardIndexBuffer;
    static std::int32_t BillboardMaxParticles;

    std::uint16_t particleParameterId = 0xffff;                  // +0x174
    ps::IParticleSystem<ps::GNPSParticle>* system = nullptr;     // +0x178
    SGNPSEmitter* emitter = nullptr;                             // +0x17c
    void* viewRotMatrixParameter = nullptr;                      // +0x180
    bool billboard = false;                                      // +0x184
    video::IVideoDriver* driver = nullptr;                       // +0x188
    std::uint32_t attributeMask = 0;                             // +0x18c
};

}  // namespace glitch::collada
