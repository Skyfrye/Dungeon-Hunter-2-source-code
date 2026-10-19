// glitch::scene::CEmptySceneNode and glitch::scene::CSceneManagerRootNode: the node that only groups children, and the
// scene manager's root. Canonical header of the engine unification wave (u1-scene). They replace the pad stand-ins in
// scene_nodes.hpp (0x130 bytes of pad before the box) and layouts/scene_evidence.hpp (evidence::CEmptySceneNode).
//
// Layout (original 32-bit offsets; constructor 0x5839d8 / 0x583b34):
//   +0x000 ISceneNode (0x130 bytes)
//   +0x130 aabbox3d box: min (-1,-1,-1), max (1,1,1) (the constructor writes the six words)
//   +0x148 glitch::IReferenceCounted virtual base (vbase offset 328)
// The vtable (tools/decomp_vtable.py glitch::scene::CEmptySceneNode) fills render (+0x1c, empty), getBoundingBox (+0x30), getType
// (+0xbc, 'emty') and clone (+0xc0). The constructor ends with setAutomaticCulling(0).
// CSceneManagerRootNode adds nothing: its type is 'smgr', its attribute slots are inert thunks, and its constructor
// (0x58a070) builds a CEmptySceneNode with id -1 and calls setSceneManager.
#pragma once

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

class CEmptySceneNode : public ISceneNode {
public:
    // 0x5839d8 (C2) and 0x583b34 (C1): ISceneNode(id, position 0, rotation (0,0,0,1), scale 1), the box, automatic culling 0.
    explicit CEmptySceneNode(int id);
    // 0x35c2a4 (D1) and 0x35db04 (D0): skipped.
    ~CEmptySceneNode() override;

    // vptr+0x1c, 0x5839ac: empty.
    void render(void* renderContext) override;
    // vptr+0x30, 0x5839b0: the box at +0x130.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // vptr+0xbc, 0x35bea4: 'emty'.
    E_SCENE_NODE_TYPE getType() const override;
    // vptr+0xc0, 0x583ad0: a new CEmptySceneNode (operator new(0x150)) with the base members and the box copied.
    ISceneNode* clone() override;

    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x130
};

class CSceneManagerRootNode : public CEmptySceneNode {
public:
    // 0x58a070: CEmptySceneNode(-1), then ISceneNode::setSceneManager(manager).
    explicit CSceneManagerRootNode(CSceneManager* manager);
    // 0x5899c8 (D1) and 0x58c088 (D0): skipped.
    ~CSceneManagerRootNode() override;

    // vptr+0x00 / +0x04, 0x588f84 and 0x588fb0: empty bodies (skipped in the ledger).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // vptr+0xbc, 0x588fdc: 'smgr'.
    E_SCENE_NODE_TYPE getType() const override;
};

}  // namespace glitch::scene
