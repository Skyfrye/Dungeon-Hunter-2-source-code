// glitch::collada::CSceneNode: the COLLADA scene node, a CEmptySceneNode that remembers the file record (SNode) it was built from.
// Canonical header of the scene-owner wave. It replaces the CSceneNode of collada_scene_accessors.hpp (an accessor class that mapped
// the box and the record pointer, without a base class), the recon_07/recon_28 forward declarations, the `layouts` evidence of the
// class and the address-named stubs of generated_stubs.hpp (getType 0x65cd1c).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x65d150 (C1, complete object) / 0x65d2b4 (C2, base object),
// destructors 0x35c444 (D1) / 0x60ce44 (a clone of D1) / 0x65af4c (D2, base object), D0 0x35c4e0 (skipped);
// tools/decomp_vtable.py glitch::collada::CSceneNode, 304 bytes, virtual base IReferenceCounted at +0x158):
//   +0x000 scene::CEmptySceneNode (ISceneNode up to +0x130, the box at +0x130 .. +0x148)
//   +0x148 a string word, set to the empty-string constant (unk_9F6F08) by the constructor and never read by a CSceneNode body. The
//          camera, light and mesh nodes store their record's uid in the same place.
//   +0x14c CColladaDatabase (record, factory): copied from the constructor argument (the record gets a use) and dropped by the destructor
//   +0x154 SNode* node: the file record. Everything the node answers about its identity (uid, scope id, user property) comes from it.
//   +0x158 glitch::IReferenceCounted virtual base (vptr, then the count at +0x15c, set to 1 by the complete-object constructor)
// The constructor copies the record's name, translation, rotation and scale into the node. The vtable overrides the destructors,
// getUID (K 0x54), getScopeID (K 0x58), getUserProperty (K 0xa8), getUserPropertyStr (K 0xac), getType (K 0xbc, 'daen'), resetTransform
// (K 0xe0), and adds computeBoundingBox() at K 0xf4 (listing +0x100). render, getBoundingBox and clone are CEmptySceneNode's.
// Port notes: the database handle is a plain pair (see collada/CColladaDatabase.hpp), so the destructor drops the record's use with
// dropDatabase.
#pragma once

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"

namespace glitch::collada {

class CSceneNode : public scene::CEmptySceneNode {
public:
    // 0x65d150 (C1) and 0x65d2b4 (C2): CEmptySceneNode(-1), the database copied, the record stored; with a record, the node takes its name
    // (ISceneNode::setName), position, rotation and scale.
    CSceneNode(const CColladaDatabase& database, SNode* node);
    // 0x35c444 / 0x60ce44 (D1), 0x65af4c (D2); 0x35c4e0 (D0) is skipped. Drops the database handle.
    ~CSceneNode() override;

    // K 0x54 / 0x58, 0x65cd28 and 0x65cd4c: the record's uid and scope id, "" without a record.
    const char* getUID() const override;
    const char* getScopeID() const override;
    // K 0xa8 / 0xac, 0x65cd70 and 0x65cd80: the record's user property (null without one) and its text.
    const scene::SUserProperty* getUserProperty() const override;
    const char* getUserPropertyStr() const override;
    // K 0xbc, 0x65cd1c: 'daen'.
    scene::E_SCENE_NODE_TYPE getType() const override;
    // K 0xe0, 0x65cc2c: with a record, restores position, rotation and scale from it; when `recurse` is set, resets every child.
    void resetTransform(bool recurse) override;
    // K 0xf4 (listing +0x100), 0x65cda8: the box (+0x130) becomes the union of the children's boxes in this node's space, taken from the
    // mesh, skinned mesh, modular skinned mesh and node children ('daem', 'daes', 'daeM', 'daen'); node children are computed first.
    virtual void computeBoundingBox();
    // 0x65cf8c: the same union over the children's transformed boxes, written to `box`; true when at least one child contributed.
    // A 'daen' child contributes the result of its own computeBoundingBox(box) when that is true.
    bool computeBoundingBox(core::aabbox3d<float>& box) const;

    const char* uid = "";                // +0x148 (the empty-string constant)
    CColladaDatabase database;           // +0x14c / +0x150
    SNode* node = nullptr;               // +0x154
};

}  // namespace glitch::collada
