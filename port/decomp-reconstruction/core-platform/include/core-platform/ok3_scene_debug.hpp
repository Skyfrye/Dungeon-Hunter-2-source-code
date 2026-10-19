// Scene-node debug and helper free functions of the <global> code that are defined in core-platform/src/ok3-global.cpp
// (owner K3). The ones the game headers already declare (DBG_TraceAllLoaded*, DBG_TraceSceneNode*, setCullingMode, IsNodeMesh,
// GetNodePolyCount, findSceneNodeRef, TabarnakDe..., ...) are not repeated here.
#pragma once

#include <string>

namespace glitch::scene {
class ISceneNode;
}  // namespace glitch::scene

// 0x3301f0 HideAllIrrlicheNodeExcept(glitch::scene::ISceneNode*): hides every visible child of the scene root but the one given.
void HideAllIrrlicheNodeExcept(glitch::scene::ISceneNode* except);

// 0x51049c DBG_GetDetailedNodeName(glitch::scene::ISceneNode*): the node's display name (returned through a hidden result pointer).
std::string DBG_GetDetailedNodeName(glitch::scene::ISceneNode* node);

// 0x50e6a0 DBG_DrawGlitchNodeBoundingBox(glitch::scene::ISceneNode*)
void DBG_DrawGlitchNodeBoundingBox(glitch::scene::ISceneNode* node);

// 0x50e8a4 TraceEveryGlitchRefCountingShitKnownToManKind(char const*)
void TraceEveryGlitchRefCountingShitKnownToManKind(const char* label);

// 0x50f2d0 AddToSceneMgr(glitch::scene::ISceneNode*, glitch::scene::ISceneNode*)
void AddToSceneMgr(glitch::scene::ISceneNode* node, glitch::scene::ISceneNode* target);

// 0x50f3d4 PrintNodeProperties(glitch::scene::ISceneNode*, bool, int): returns the number of nodes printed.
int PrintNodeProperties(glitch::scene::ISceneNode* node, bool children, int depth);

// 0x50f7fc findSceneNode(glitch::scene::ISceneNode*, char const*)
glitch::scene::ISceneNode* findSceneNode(glitch::scene::ISceneNode* node, const char* name);

// 0x50fbd0 OptimizeHierarchy(glitch::scene::ISceneNode*, bool): returns the number of nodes removed.
int OptimizeHierarchy(glitch::scene::ISceneNode* node, bool flag);
