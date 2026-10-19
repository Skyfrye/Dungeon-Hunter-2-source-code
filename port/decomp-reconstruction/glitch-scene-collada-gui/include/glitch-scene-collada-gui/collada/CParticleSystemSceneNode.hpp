// glitch::collada::CParticleSystemSceneNode: the COLLADA node of the old particle system (tag 'daep'). It owns a glitch::ps particle system
// of SParticle (PSManager::createPCloudSystem), feeds it the emitter record's values by name and draws its particles as camera-facing
// quads (a billboard) or as copies of a mesh buffer. Canonical header of residue pass ob; it replaces the accessor class of
// collada_scene_accessors.hpp and the stand-in functions of recon/slice_20 and slice_21. (glitch::scene::CParticleSystemSceneNode
// is a different class, the one of the Irrlicht-style emitters/affectors.)
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x64ed94 (C1) / 0x64ee44 (C2), destructors 0x64ecac / 0x64ed34;
// the factory allocates 0x198 bytes, 0x634c64):
//   +0x000 IParticleSystemSceneNode (to +0x174, see collada/IParticleSystemSceneNode.hpp): +0x130 uid (the emitter's name), +0x140 the
//          particle mesh, +0x148 the "ViewMatrix" slot, +0x14c the "BBox" slot, +0x150 the force-URL vector, +0x158 the materials,
//          +0x164 the force nodes, +0x170 the texture-transform flag
//   +0x174 uint16 the material's colour parameter (CMaterialRenderer::getParameterID(6, 0)), read by onAnimate and render
//   +0x178 IParticleSystem<SParticle>* the system (owned; the destructor deletes it)
//   +0x17c bool billboard (initParticleSystem's second argument)
//   +0x180 IVideoDriver* driver
//   +0x184 the attribute mask of the particle vertices (0x60003 for a billboard, 0x20003 for a mesh)
//   +0x188 not touched by any function of the class
//   +0x18c SEmitter* the emitter record
//   +0x190 glitch::IReferenceCounted virtual base (vptr and count; the object is 0x198 bytes)
// Slots: getBoundingBox (K 0x30, 0x64ce44), getUID (K 0x54, 0x64bb78), getTransformedBoundingBox (K 0x34, 0x64bbc0), getType (K 0xbc,
// 0x64bb84), onRegisterSceneNode (K 0x10, 0x64da1c), onAnimate (K 0x14, 0x64dac0), render (K 0x1c, 0x6572b8) and the interface of
// IParticleSystemSceneNode: initParticleSystem (K 0xf4, 0x656450), getParticleCount (K 0xf8, 0x64bb90), getParticleSystemParameter
// (K 0xfc, 0x651924), setParticleMesh (K 0x100, 0x65615c), init (K 0x104, 0x64fd60), attach (K 0x108, 0x64f6f8).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/collada/IParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/ps/IParticleSystem.hpp"

namespace glitch::video {
class IBuffer;
class IVideoDriver;
}  // namespace glitch::video

namespace glitch::collada {

class CParticleSystemSceneNode : public IParticleSystemSceneNode {
public:
    // 0x64ed94 (C1) / 0x64ee44 (C2): IParticleSystemSceneNode(database, forceUrls, root), the emitter record stored, the uid set to the
    // record's name and automatic culling 2.
    CParticleSystemSceneNode(const CColladaDatabase& database, SEmitter& emitter, res::vector<res::String>* forceUrls, CRootSceneNode* root);
    // 0x64ecac (D1) / 0x64ed34 (D2), D0 0x64ed18 skipped: deletes the particle system; the base destructor follows.
    ~CParticleSystemSceneNode() override;

    // K 0xbc, 0x64bb84: 'daep'.
    scene::E_SCENE_NODE_TYPE getType() const override;
    // K 0x54, 0x64bb78: the emitter record's name.
    const char* getUID() const override;
    // K 0x34, 0x64bbc0: the system's box (the slot at +0x14c).
    const core::aabbox3d<float>& getTransformedBoundingBox() const override;
    // K 0x30, 0x64ce44: the system's box moved by minus the node's translation, in a function-local static.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // K 0x10, 0x64da1c: with particles alive, registers the node with the scene manager (the first material, pass 8, sort order 0x7fffffff).
    int onRegisterSceneNode() override;
    // K 0x14, 0x64dac0: ISceneNode::onAnimate, then the system is given the parent's absolute transformation and stepped by the time.
    void onAnimate(std::uint32_t timeMs) override;
    // K 0x1c, 0x6572b8: draws the particles through the system's render data.
    void render(void* renderContext) override;

    // K 0xf4, 0x656450: creates the system and gives it the emitter record's values; with `billboard` it draws quads from the shared
    // billboard mesh buffer and index buffer.
    void initParticleSystem(video::IVideoDriver* videoDriver, bool billboard) override;
    // K 0xf8, 0x64bb90: the number of live particles.
    std::uint32_t getParticleCount() const override;
    // K 0xfc, 0x651924: the storage the system registered under `name` (the slot is created empty when missing).
    void* getParticleSystemParameter(const char* name) override;
    // K 0x100, 0x65615c: takes the mesh buffer; without a billboard builds the index buffer that repeats its indices for every particle.
    void setParticleMesh(boost::intrusive_ptr<scene::CMeshBuffer> mesh) override;
    // K 0x104, 0x64fd60: reads the colour and texture-transform tracks of every material from the file, binds the material to the
    // system and initialises it.
    void init() override;
    // K 0x108, 0x64f6f8: binds the force nodes the force URLs name (children of the named nodes with the type 'daef').
    void attach(scene::ISceneNode* sceneRoot) override;

    // 0x64f39c: drops the shared billboard mesh buffer and index buffer (CSceneManager's destructor calls it).
    static void deleteSharedBuffer();

    // The buffers the billboard systems share (0x9f6ffc, 0x9f7000) and the particle count the index buffer was built for (0x9f7004).
    static boost::intrusive_ptr<scene::CMeshBuffer> BillboardMeshBuffer;
    static boost::intrusive_ptr<video::IBuffer> OutBillboardIndexBuffer;
    static std::int32_t BillboardMaxParticles;

    std::uint16_t particleParameterId = 0xffff;                // +0x174
    ps::IParticleSystem<ps::SParticle>* system = nullptr;      // +0x178
    bool billboard = false;                                    // +0x17c
    video::IVideoDriver* driver = nullptr;                     // +0x180
    std::uint32_t attributeMask = 0;                           // +0x184
    std::uint32_t unk_188 = 0;                                 // +0x188
    SEmitter* emitter = nullptr;                               // +0x18c
};

}  // namespace glitch::collada
