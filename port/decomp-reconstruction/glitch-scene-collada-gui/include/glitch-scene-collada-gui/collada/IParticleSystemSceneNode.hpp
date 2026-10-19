// glitch::collada::IParticleSystemSceneNode: the base of the COLLADA particle system nodes (CParticleSystemSceneNode and
// CGlitchNewParticleSystemSceneNode). Canonical header of the scene-owner wave. It replaces the IParticleSystemSceneNode of the recon_22
// stand-ins (recon/slice_22.hpp) and the forward declarations of the root node.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x66792c (C1) / 0x667a98 (C2), destructors 0x66781c (D1) / 0x6678b8
// (D2), D0 0x66789c skipped; tools/decomp_vtable.py glitch::collada::IParticleSystemSceneNode, 324 bytes, virtual base IReferenceCounted
// at +0x178):
//   Derives from scene::ISceneNode (0x130 bytes) and adds
//     +0x130 uid (the empty-string constant)
//     +0x134 CColladaDatabase (record, factory)
//     +0x13c four bytes cleared by the constructor (flags the derived nodes use)
//     +0x140 a reference the constructor clears and the destructor drops (a mesh buffer in the derived nodes)
//     +0x148 a word cleared by the constructor
//     +0x14c the derived nodes' transformed box pointer (not touched by this constructor)
//     +0x150 res::vector<res::String>* the vector the node was given (the URLs of its force nodes)   +0x154 CRootSceneNode* the root (registered with it)
//     +0x158 vector<intrusive_ptr<CMaterial>> the node's materials               +0x164 a block the destructor frees with GlitchFree
//     +0x168, +0x16c words cleared by the constructor                           +0x170 a byte cleared by the constructor
//   Slots: serializeAttributes / deserializeAttributes (thunks to ISceneNode's), destructors, getMaterial (K 0x84), getMaterialCount (K 0x88),
//   clone (K 0xc0: null); then the pure interface the derived nodes fill: K 0xf4 initParticleSystem, K 0xf8 getParticleCount, K 0xfc
//   getParticleSystemParameter, K 0x100 setParticleMesh, K 0x104 init, K 0x108 attach.
#pragma once

#include <vector>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {
class CMeshBuffer;
}  // namespace glitch::scene

namespace glitch::collada {

class CRootSceneNode;
namespace particle_system {
class CForceSceneNode;
}  // namespace particle_system

class IParticleSystemSceneNode : public scene::ISceneNode {
public:
    // 0x66792c (C1) and 0x667a98 (C2): ISceneNode(-1, origin, identity rotation, unit scale), the database copied, the members cleared,
    // the material names and the root stored, the node registered with the root (CRootSceneNode::addParticleSystem) and automatic culling 2.
    IParticleSystemSceneNode(const CColladaDatabase& database, res::vector<res::String>* materialNames, CRootSceneNode* root);
    // 0x66781c (D1), 0x6678b8 (D2), 0x66789c (D0, skipped): frees the block at +0x164, the material vector, drops the reference at +0x140
    // and the database handle.
    ~IParticleSystemSceneNode() override;

    // K 0x00 / 0x04, 0x6677d0 and 0x6677d4: thunks to ISceneNode's.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // K 0x84 / 0x88, 0x66777c and 0x66779c.
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;
    std::uint32_t getMaterialCount() const override;
    // K 0xc0, 0x667774: null.
    scene::ISceneNode* clone() override;

    // K 0xf4 .. 0x108, pure here.
    virtual void initParticleSystem(video::IVideoDriver* driver, bool flag) = 0;
    virtual std::uint32_t getParticleCount() const = 0;
    virtual void* getParticleSystemParameter(const char* name) = 0;
    virtual void setParticleMesh(boost::intrusive_ptr<scene::CMeshBuffer> meshBuffer) = 0;
    virtual void init() = 0;
    virtual void attach(scene::ISceneNode* root) = 0;

    // 0x619820: adds the material built from the record (through the root's addMaterial) to the node's materials.
    void addMaterial(SMaterial& material, video::IVideoDriver* driver);

    const char* uid = "";                                       // +0x130
    CColladaDatabase database;                                  // +0x134
    std::uint8_t flags13c[4] = {};                              // +0x13c four flag bytes (CGlitchNewParticleSystemSceneNode sets them from its emitter record)
    boost::intrusive_ptr<scene::CMeshBuffer> meshBuffer;        // +0x140 the particle mesh (setParticleMesh); dropped by the destructor
    std::uint32_t lastAnimateTime = 0;                          // +0x144 the time the derived onAnimate was last called with
    void* viewMatrixParameter = nullptr;                        // +0x148 the system's "ViewMatrix" slot (a core::CMatrix4<float>)
    const core::aabbox3d<float>* transformedBox = nullptr;      // +0x14c the system's "BBox" slot (set by initParticleSystem)
    // +0x150: the vector the node was built with. The material names of the instance are what the factory hands over, but the only reader
    // (attach, 0x64f6f8 / 0x63db4c) takes every entry as the URL "#<uid>" of a force node: the vector lists the forces.
    res::vector<res::String>* materialNames = nullptr;          // +0x150
    CRootSceneNode* root = nullptr;                             // +0x154 (registered with it)
    std::vector<boost::intrusive_ptr<video::CMaterial>> materials;  // +0x158
    std::vector<particle_system::CForceSceneNode*> forces;      // +0x164 begin, +0x168 end, +0x16c capacity (GlitchAlloc storage in the original)
    bool hasTextureTransform = false;                           // +0x170 set by init when the material has a texture transform track
};

}  // namespace glitch::collada
