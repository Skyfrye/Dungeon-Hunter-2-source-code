// ShadowSkinnedMeshSceneNode: the shadow-projection copy of a skinned mesh. It is BaseMeshSceneNode over
// glitch's CSkinnedMeshSceneNode. It keeps one shadow material ("SH_SHADOW_SKINNED") with its vertex map,
// per-material vectors sized from the mesh's material count, and the ISceneNode it shadows. Bounds
// come from that node.
// Original 32-bit size not recorded. The virtual base IReferenceCounted at +0x1a4 (vptr, refcount 1 at
// +0x1a8) ends the object at 0x1ac.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x361b54 / 0x361f24, dtors 0x360b7c / 0x360c60 /
// 0x360c7c, methods 0x35dc98, 0x35dcb4, 0x35f780, 0x35ffb8, 0x3607a0, 0x360948).
//
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-shared/glitch_core.hpp"

#include "dh2/BaseMeshSceneNode.hpp"

#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"

class ShadowSkinnedMeshSceneNode : public BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode> {
public:
    ShadowSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> mesh,
                               const glitch::scene::ISceneNode* node);  // 0x361b54 (complete), 0x361f24 (VTT form)
    ~ShadowSkinnedMeshSceneNode() override;                             // 0x360b7c (base-object dtor), 0x360c60 (deleting), 0x360c7c (VTT form)

    // Overrides of the base slots, in vtable order.
    const glitch::core::aabbox3d<float>& getBoundingBox() const override;                 // slot 0x3c: 0x35dc98, forwards to the node at +0x1a0 (its vptr+48)
    const glitch::core::aabbox3d<float>& getTransformedBoundingBox() const override;      // slot 0x40: 0x35dcb4, forwards to the node at +0x1a0 (its vptr+52)
    int onRegisterSceneNode() override;                                 // slot 0x1c: 0x35ffb8
    void render(void* context) override;                                // slot 0x28: 0x360948

    // Methods not in the vtable.
    void UpdateShadow();                                                // 0x35f780, ends with the virtual ISceneNode::setAbsoluteTransformation(CMatrix4&) (vptr+60, slot 0x48)
    void renderMesh(void* context);                                     // 0x3607a0, context is a 1-based mesh buffer index (buffer = context - 1); the return value is unused

    // Own part of the object, from +0x180 to +0x1a3. BaseMeshSceneNode occupies +0x00 .. +0x17f (render flag at +0x17c).
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>> unk_180;                  // +0x180 one entry per mesh material, sized by the ctor, dropped element by element
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>> unk_18c; // +0x18c one entry per mesh material, sized by the ctor
    boost::intrusive_ptr<glitch::video::CMaterial> m_shadowMaterial;                      // +0x198 material "SH_SHADOW_SKINNED", created by the ctor, flag byte +8 cleared
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> unk_19c;             // +0x19c vertex map allocated from m_shadowMaterial + 4
    const glitch::scene::ISceneNode* unk_1a0;                                             // +0x1a0 ctor argument: the node this shadow follows
                                                                       // +0x1a4 virtual base IReferenceCounted: vptr at +0x1a4, refcount at +0x1a8 (1 from the complete ctor)
};
