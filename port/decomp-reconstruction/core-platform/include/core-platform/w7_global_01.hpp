// Declarations for the glitch scene-node debug and traversal helpers recovered in
// src/w7_global_01.cpp. Only the functions that compile are declared here.
#pragma once

namespace glitch::scene {
class ISceneNode;
}  // namespace glitch::scene

namespace glitch::video {
// Underlying type assumed to be int; the original enum values are not recovered.
enum E_MATERIAL_TYPE : int;
}  // namespace glitch::video

// 0x50e3d8 _Z14RecursiveCountPN6glitch5scene10ISceneNodeE
int RecursiveCount(glitch::scene::ISceneNode* node);

// 0x50e46c _Z19setOnAnimateEnabledPN6glitch5scene10ISceneNodeEb
void setOnAnimateEnabled(glitch::scene::ISceneNode* node, bool enable);

// 0x50e484 _Z22RecursiveSetBoolOnNodePN6glitch5scene10ISceneNodeEbPFvS2_bE
void RecursiveSetBoolOnNode(glitch::scene::ISceneNode* node, bool enable,
                            void (*callback)(glitch::scene::ISceneNode*, bool));

// 0x50f220 _Z14OptimizeStaticPN6glitch5scene10ISceneNodeE (core-platform/src/w7_optimize_static.cpp)
void OptimizeStatic(glitch::scene::ISceneNode* node);

// 0x50e4d0 _Z21NodeRemoveAllChildrenPN6glitch5scene10ISceneNodeE
void NodeRemoveAllChildren(glitch::scene::ISceneNode* node);

// 0x50eb90 _Z15ChangeMaterialsPN6glitch5scene10ISceneNodeENS_5video15E_MATERIAL_TYPEE
void ChangeMaterials(glitch::scene::ISceneNode* node, glitch::video::E_MATERIAL_TYPE type);

// 0x50ec18 _Z15ChangeMaterialsPN6glitch5scene10ISceneNodeENS_5video15E_MATERIAL_TYPEES4_
void ChangeMaterials(glitch::scene::ISceneNode* node, glitch::video::E_MATERIAL_TYPE from,
                     glitch::video::E_MATERIAL_TYPE to);

// 0x50eca0 _Z25DBG_TraverseAllGlitchNodePN6glitch5scene10ISceneNodeEPFvS2_EPFbS2_E
void DBG_TraverseAllGlitchNode(glitch::scene::ISceneNode* node,
                               void (*visit)(glitch::scene::ISceneNode*),
                               bool (*filter)(glitch::scene::ISceneNode*));
