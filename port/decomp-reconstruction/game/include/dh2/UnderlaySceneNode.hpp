// UnderlaySceneNode: a scene node that keeps a list of underlay scene nodes and renders their hierarchies
// through the level's render path. render clears the level's render state around the underlay nodes,
// onRegisterSceneNode submits one material to the scene manager unless the IsUsingToggleDisplayMode or
// IsUsingCharacterShowRoom debug switch is set, and getBoundingBox is not supported (it asserts).
// Original 32-bit size not recorded (no operator new site and no ctor in class-facts or the queue).
// The base ISceneNode occupies +0x00 .. +0x12f. The underlay vector starts at +0x130. The virtual base
// glitch::IReferenceCounted, which ISceneNode declares, follows the vector at +0x13c in the complete object. It has no
// member here: the compiler stores its vptr at +0x13c (dtor 0x381ad4 stores _ZTV17UnderlaySceneNode+0x120 there).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x381ad4 / 0x381b54, methods 0x326fcc,
// 0x381b90, 0x381cf0, 0x381e48).
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-shared/glitch_core.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

class UnderlaySceneNode : public glitch::scene::ISceneNode {
public:
    // Frees the underlay list (the std::vector member) and resets both vptrs, then runs ~ISceneNode.
    // Vtable K 0x08 (complete, 0x381ad4) and K 0x0c (deleting, 0x381b54); the bases are canonical in scene/ISceneNode.hpp.
    ~UnderlaySceneNode() override;

    // Virtual slots of the original, in vtable order. K is the Hex-Rays call offset (scene/ISceneNode.hpp numbering).
    int onRegisterSceneNode() override;                                 // K 0x10: 0x381cf0, returns 1 when a material was submitted
    void render(void* renderContext) override;                          // K 0x1c: 0x381b90, renders each underlay hierarchy
    const glitch::core::aabbox3d<float>& getBoundingBox() const override;  // K 0x30: 0x381e48, asserts "not supported" and returns null

    // Adds node to the underlay list unless it is already there, then calls the node's setVisible(false) (ISceneNode
    // K 0x48). The Hex-Rays signature returns a pointer, which looks like register residue, so void here.
    void AddUnderlayNode(glitch::scene::ISceneNode* node);              // 0x326fcc

    // ISceneNode occupies +0x00 .. +0x12f. The virtual base glitch::IReferenceCounted sits at +0x13c and has no member here.
    std::vector<glitch::scene::ISceneNode*> m_underlayNodes;            // +0x130 begin, +0x134 end, +0x138 end of storage
};
