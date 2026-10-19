// Free <global> function that UnderlaySceneNode::render calls once for each underlay node (batch
// g1-game-world-pack4-608cd6-0). Its body is not in the tree: the core-platform row for 0x381a10 is skipped, so the
// call is a link dependency until that function is reconstructed.
#pragma once

namespace glitch::scene {
class ISceneNode;
}  // namespace glitch::scene

// 0x381a10 _Z48TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalissePN6glitch5scene10ISceneNodeE
void TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(glitch::scene::ISceneNode* node);
