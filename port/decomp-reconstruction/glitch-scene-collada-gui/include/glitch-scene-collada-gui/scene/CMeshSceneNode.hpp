// glitch::scene::IMeshSceneNode and glitch::scene::CMeshSceneNode: the static mesh node. Canonical header of the
// engine unification wave (u1-scene). It replaces the CMeshSceneNode in scene_nodes.hpp (no base class, three
// members). The Collada mesh node the game derives from is glitch::collada::CMeshSceneNode (collada/CMeshSceneNode.hpp),
// a sibling of this class: both derive from IMeshSceneNode.
//
// Layout (original 32-bit offsets; constructor 0x585118 / 0x58529c):
//   IMeshSceneNode: the ISceneNode base (0x130 bytes) and nothing more (vtable 308 bytes, virtual base IReferenceCounted
//     at +0x130, vbase offset 304). It adds two pure slots after ISceneNode's: vptr+0xf4 setMesh, +0xf8 getMesh, and overrides
//     setNodeHierarchyAsShadowCaster (vptr+0xe4, 0x596cc8), which sets the shadow-caster bit (0x800) and forwards to
//     ISceneNode's.
//   CMeshSceneNode: +0x130 the mesh (a reference is held), +0x134 the render counter, then the virtual base at +0x138
//     (vbase offset 312); the constructor writes 1 into the virtual base's reference count at +0x13c.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

class IMeshSceneNode : public ISceneNode {
public:
    using ISceneNode::ISceneNode;
    // 0x35abc4 (D1), 0x35b3dc (D0): skipped, compiler-generated.
    ~IMeshSceneNode() override;

    // vptr+0xe4, 0x596cc8: sets or clears ESNF_SHADOW_CASTER, then ISceneNode::setNodeHierarchyAsShadowCaster.
    void setNodeHierarchyAsShadowCaster(bool enabled) override;
    // vptr+0xf4 / +0xf8: pure.
    virtual void setMesh(const boost::intrusive_ptr<IMesh>& mesh) = 0;
    virtual boost::intrusive_ptr<IMesh> getMesh() const = 0;
};

class CMeshSceneNode : public IMeshSceneNode {
public:
    // 0x585118 (C2) and 0x58529c (C1, a second listing): PARTIAL, see src.
    CMeshSceneNode(const boost::intrusive_ptr<IMesh>& mesh, int id, const core::vector3d<float>& position,
                   const core::quaternion& rotation, const core::vector3d<float>& scale);
    // 0x584c10 (D1), 0x584c94 (D2), 0x584cb0 (D0): skipped (the destructor drops the mesh).
    ~CMeshSceneNode() override;

    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;  // 0x584b90
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;      // 0x584ed0
    // vptr+0x10, 0x584d2c: registers the node and its materials with the scene manager.
    int onRegisterSceneNode() override;
    // vptr+0x1c, 0x585370: draws every mesh buffer.
    void render(void* renderContext) override;
    // vptr+0x30, 0x584ac0: the mesh's box (skipped: a thunk to IMesh::getBoundingBox).
    const core::aabbox3d<float>& getBoundingBox() const override;
    // vptr+0x84 / +0x88, 0x584adc and 0x584b44.
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;
    std::uint32_t getMaterialCount() const override;
    // vptr+0xbc, 0x584a98: 'mesh'.
    E_SCENE_NODE_TYPE getType() const override;
    // vptr+0xc0, 0x58521c.
    ISceneNode* clone() override;
    // vptr+0xf4 / +0xf8, 0x5850ec and 0x584aa4.
    void setMesh(const boost::intrusive_ptr<IMesh>& mesh) override;
    boost::intrusive_ptr<IMesh> getMesh() const override;

    boost::intrusive_ptr<IMesh> mesh;      // +0x130
    std::uint32_t renderCount = 0;         // +0x134 incremented by render
};

}  // namespace glitch::scene
