// Scene-node helpers of the <global> code (batch g1-game-app-global-f216b6-20, scene part): the node queries
// IsNodeVisible, IsVisibleMeshNode, IsVisibleAndNotCulled, GetNodePolyCount, the screen and world projections,
// findSceneNodeRef and CopyMeshSceneNode. Definitions are in game-app/src/g1-game-app-global-f216b6-20.cpp.
// IsNodeMesh (0x50e514) belongs to another batch of this category; it is declared here because IsVisibleMeshNode
// and GetNodePolyCount call it.
#pragma once

#include "core-platform/deps/game_types.hpp"  // Point2D<T>, Point3D<T>
#include "glitch-shared/glitch_core.hpp"      // glitch::core::vector3d<T>, glitch::core::position2d<T>

namespace glitch::scene {
class ISceneNode;
class IMeshSceneNode;
}  // namespace glitch::scene

// 0x50e514 IsNodeMesh(glitch::scene::ISceneNode*): true when the node's type tag is one of the two mesh tags.
bool IsNodeMesh(glitch::scene::ISceneNode* node);

// 0x50e568 GetNodePolyCount(glitch::scene::ISceneNode*, bool)
int GetNodePolyCount(glitch::scene::ISceneNode* node, bool includeChildren);

// 0x50e674 IsNodeVisible(glitch::scene::ISceneNode*): always 1 in the original.
int IsNodeVisible(glitch::scene::ISceneNode* node);

// 0x50e67c IsVisibleMeshNode(glitch::scene::ISceneNode*)
int IsVisibleMeshNode(glitch::scene::ISceneNode* node);

// 0x50e830 GetScreenPosFromWorldPos(glitch::core::vector3d<float> const&, glitch::core::position2d<int>&)
int GetScreenPosFromWorldPos(const glitch::core::vector3d<float>& worldPos,
                             glitch::core::position2d<int>& screenPos);

// 0x50ed8c GetWorldPosFromScreenPos(Point2D<float> const&, Point3D<float>&, float)
// The third float is part of the mangled signature; the original never reads it.
float GetWorldPosFromScreenPos(const Point2D<float>& screenPos, Point3D<float>& worldPos, float unusedArg);

// 0x50f1d4 IsVisibleAndNotCulled(glitch::scene::ISceneNode*)
int IsVisibleAndNotCulled(glitch::scene::ISceneNode* node);

// 0x50f780 findSceneNodeRef(glitch::scene::ISceneNode*, char const*)
glitch::scene::ISceneNode* findSceneNodeRef(glitch::scene::ISceneNode* root, const char* name);

// 0x50f89c CopyMeshSceneNode(glitch::scene::IMeshSceneNode*). Returns the new node object (a CMeshSceneNode).
void* CopyMeshSceneNode(glitch::scene::IMeshSceneNode* node);
