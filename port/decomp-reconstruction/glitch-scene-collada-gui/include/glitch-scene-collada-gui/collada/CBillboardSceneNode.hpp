// glitch::collada::CBillboardSceneNode: a COLLADA node that turns to face the camera. Canonical header of the scene-owner wave. It
// replaces the recon_07 / recon_28 forward declarations of the class.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; destructors 0x60cec8 (D1) and the D0 0x60cf24 (skipped); tools/decomp_vtable.py
// glitch::collada::CBillboardSceneNode, 304 bytes, virtual base IReferenceCounted at +0x158):
//   Derives from collada::CSceneNode and adds no members (the object ends where CSceneNode's does). It has no constructor of its own:
//   CColladaFactory::createBillboard builds it with CSceneNode's. The record's `billboard` block (SNode +0x4c) says which axes turn.
//   Overrides getTransformedBoundingBox (K 0x34, 0x60cb24), updateAbsolutePosition (K 0xb8, 0x60cf88) and computeBoundingBox (K 0xf4,
//   0x60cbb0).
#pragma once

#include "glitch-scene-collada-gui/collada/CSceneNode.hpp"

namespace glitch::collada {

class CBillboardSceneNode : public CSceneNode {
public:
    using CSceneNode::CSceneNode;
    // 0x60cec8 (D1); D0 0x60cf24 is skipped.
    ~CBillboardSceneNode() override;

    // K 0x34, 0x60cb24: when the box is dirty, the local box moved by the PARENT's absolute transformation.
    const core::aabbox3d<float>& getTransformedBoundingBox() const override;
    // K 0xb8, 0x60cf88: builds the billboard's absolute transformation from the camera's.
    void updateAbsolutePosition(bool includeChildren) override;
    // K 0xf4, 0x60cbb0: CSceneNode's box, then widened to a cube of the corners' larger radius on the axes the billboard turns about.
    void computeBoundingBox() override;
};

}  // namespace glitch::collada
