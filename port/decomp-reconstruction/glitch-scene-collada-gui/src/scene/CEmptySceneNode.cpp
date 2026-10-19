// Bodies of glitch::scene::CEmptySceneNode and glitch::scene::CSceneManagerRootNode (canonical classes:
// scene/CEmptySceneNode.hpp). This file replaces the bodies in src/scene_nodes.cpp and
// src/tb_scene-collada-gui-glitch_scene_CEmptySceneNode-0.cpp.
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"

namespace glitch::scene {

// 0x5839d8 _ZN6glitch5scene15CEmptySceneNodeC2Ei (base object)
// 0x583b34 _ZN6glitch5scene15CEmptySceneNodeC1Ei (complete object; its second listing takes the VTT)
// ISceneNode(id, position (0,0,0), rotation (0,0,0,1), scale (1,1,1)), the box (-1..1) at +0x130, automatic culling 0.
CEmptySceneNode::CEmptySceneNode(int nodeId)
    : ISceneNode(nodeId, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    setAutomaticCulling(0);
}

// 0x35c2a4 _ZN6glitch5scene15CEmptySceneNodeD1Ev (skipped; D0 0x35db04 likewise)
CEmptySceneNode::~CEmptySceneNode() = default;

// 0x5839ac _ZN6glitch5scene15CEmptySceneNode6renderEPv
void CEmptySceneNode::render(void* /*renderContext*/) {}

// 0x5839b0 _ZNK6glitch5scene15CEmptySceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CEmptySceneNode::getBoundingBox() const {
    return boundingBox;
}

// 0x35bea4 _ZNK6glitch5scene15CEmptySceneNode7getTypeEv
E_SCENE_NODE_TYPE CEmptySceneNode::getType() const {
    return ESNT_EMPTY;
}

// 0x583ad0 _ZN6glitch5scene15CEmptySceneNode5cloneEv
// A new node with the same id, the base members copied (cloneMembers) and the box copied.
ISceneNode* CEmptySceneNode::clone() {
    auto* copy = new CEmptySceneNode(id);
    copy->cloneMembers(this);
    copy->boundingBox = boundingBox;
    return copy;
}

// 0x58a070 _ZN6glitch5scene21CSceneManagerRootNodeC1EPNS0_13CSceneManagerE
CSceneManagerRootNode::CSceneManagerRootNode(CSceneManager* manager) : CEmptySceneNode(-1) {
    setSceneManager(manager);
}

// 0x5899c8 _ZN6glitch5scene21CSceneManagerRootNodeD1Ev (skipped; D0 0x58c088 likewise)
CSceneManagerRootNode::~CSceneManagerRootNode() = default;

// 0x588f84 _ZNK6glitch5scene21CSceneManagerRootNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneManagerRootNode::serializeAttributes(io::IAttributes* /*attributes*/, io::SAttributeReadWriteOptions* /*options*/) const {}

// 0x588fb0 _ZN6glitch5scene21CSceneManagerRootNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneManagerRootNode::deserializeAttributes(io::IAttributes* /*attributes*/, io::SAttributeReadWriteOptions* /*options*/) {}

// 0x588fdc _ZNK6glitch5scene21CSceneManagerRootNode7getTypeEv
E_SCENE_NODE_TYPE CSceneManagerRootNode::getType() const {
    return ESNT_SCENE_MANAGER_ROOT;
}

}  // namespace glitch::scene
