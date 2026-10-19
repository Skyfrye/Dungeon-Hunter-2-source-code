// OptimizeStatic (0x50f220): freezes a node hierarchy that never moves again. Split from w7_global_01.cpp so the body can use the
// canonical ISceneNode now that the engine scene headers are complete.

#include "core-platform/w7_global_01.hpp"

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

// 0x50f220 _Z14OptimizeStaticPN6glitch5scene10ISceneNodeE
// For the node and then, recursively, each child: the absolute position is refreshed without the children (updateAbsolutePosition,
// K 0xb8), the position is set to the absolute position (K 0xa4), the rotation is set (K 0x9c) from the quaternion that
// quaternion::operator=(CMatrix4 const&) (0x50eeb4, the symbol the listing calls) builds from the absolute transformation (K 0x38), and the animate flag (0x200) is cleared so onAnimate skips the node. The pseudocode returns
// the register of the last call; it is void here.
void OptimizeStatic(glitch::scene::ISceneNode* node) {
    node->updateAbsolutePosition(false);
    node->setPosition(node->getAbsolutePosition());
    glitch::core::quaternion rotation;
    rotation = node->getAbsoluteTransformation();  // quaternion::operator=(CMatrix4 const&) (0x50eeb4), the symbol the listing calls
    node->setRotation(rotation);
    node->flags &= ~static_cast<std::uint32_t>(glitch::scene::ESNF_ANIMATE);
    for (glitch::scene::ISceneNode* child : node->getChildren()) {
        OptimizeStatic(child);
    }
}
