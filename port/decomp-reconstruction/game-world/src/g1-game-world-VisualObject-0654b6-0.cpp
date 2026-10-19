// Batch g1-game-world-VisualObject-0654b6-0: VisualObject sync, animation-controller swap, rotation
// copy, position sync and the empty apply and fade hooks. Declarations come from dh2/VisualObject.hpp.
//
// Bodies that call into scene nodes are partial. Two gaps block them. RootSceneNode (the m_node target) does not
// derive from glitch::scene::ISceneNode in the tree, so the ISceneNode calls on m_node cannot be made. The scene
// manager is the word at IDevice +0x1c, reached as Singleton<Application>::s_inst.m_device (+0x10) and then +0x1c
// (asm of 0x4709dc: LDR [s_inst,#0x10], LDR [device,#0x1c]); IDevice declares no member there, and Application's
// unk_1c (+0x1c) is not that word. Each partial body names the call it is missing.
//
// IsVisible and ForceUpdatePosition need only RootSceneNode fields that are declared (CRootSceneNode::unk_011c at
// +0x11c, RootSceneNode::unk_208 at +0x208), so they are complete.

#include "dh2/AnimController.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/XrayModularSkinnedMeshSceneNode.hpp"
#include "dh2/ShadowModularSkinnedMeshSceneNode.hpp"
#include "dh2/ShadowSkinnedMeshSceneNode.hpp"
#include "dh2/aabb.hpp"
#include "dh2/global/DeviceSceneManager.hpp"

// 0x38ba74 _ZN12VisualObject4SyncEv
void VisualObject::Sync() {
    SyncPosition();
    SyncRotation();  // 0x472948, another batch
    SyncScaling();   // 0x472860, another batch
}

// 0x4709dc _ZNK12VisualObject15GetSpecificNodeEi
// getSceneNodeFromType(typeTag, m_node) on the device scene manager (CSceneManager, vptr+0x1c).
glitch::scene::ISceneNode* VisualObject::GetSpecificNode(int typeTag) const {
    SceneManager* sm = DeviceSceneManager();
    if (sm == nullptr || m_node == nullptr) {
        return nullptr;
    }
    return sm->getSceneNodeFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(typeTag), m_node);
}

// 0x470a18 _ZNK12VisualObject15GetSpecificNodeEPKc
// getSceneNodeFromName(name, m_node) on the device scene manager (vptr+0x18).
glitch::scene::ISceneNode* VisualObject::GetSpecificNode(const char* name) const {
    SceneManager* sm = DeviceSceneManager();
    if (sm == nullptr || m_node == nullptr) {
        return nullptr;
    }
    return sm->getSceneNodeFromName(name, m_node);
}

// 0x470a54 _ZN12VisualObject12ApplyMeshBoxEv
// Hands the mesh box to the owner: m_owner->SetRelativeAABB(box, m_hasColBox) (GameObject vtable +0x9c) when the owner is set. The
// box is the six floats of m_meshBox (min corner first), which is the layout of aabb<float>.
void VisualObject::ApplyMeshBox() {
    if (m_owner != nullptr) {
        aabb<float> box;
        box.MinEdge.X = m_meshBox.MinEdge.X;
        box.MinEdge.Y = m_meshBox.MinEdge.Y;
        box.MinEdge.Z = m_meshBox.MinEdge.Z;
        box.MaxEdge.X = m_meshBox.MaxEdge.X;
        box.MaxEdge.Y = m_meshBox.MaxEdge.Y;
        box.MaxEdge.Z = m_meshBox.MaxEdge.Z;
        m_owner->SetRelativeAABB(box, m_hasColBox);
    }
}

// 0x470a84 _ZN12VisualObject17SetAnimControllerEP14AnimController
// Replaces m_animController. The previous controller is deleted through its virtual destructor
// (vptr+0x04 in the original, the deleting destructor).
void VisualObject::SetAnimController(AnimController* controller) {
    if (m_animController != controller) {
        if (m_animController != nullptr) {
            delete m_animController;
            m_animController = nullptr;
        }
        m_animController = controller;
    }
}

// 0x470ac4 _ZNK12VisualObject9IsVisibleEv
// Returns bit 0 of the scene node's flags word (CRootSceneNode::unk_011c, +0x11c), false without a node.
bool VisualObject::IsVisible() const {
    if (m_node == nullptr) {
        return false;
    }
    return (m_node->flags & 1u) != 0;
}

// 0x470ad8 _ZN12VisualObject27SetShadowSkinnedMeshVisibleEb
// Passes visible to setVisible (vtable +0x48) of every node in m_shadowSkinned (+0x80) and then every node in m_shadowModular (+0x8c).
void VisualObject::SetShadowSkinnedMeshVisible(bool visible) {
    for (ShadowSkinnedMeshSceneNode* node : m_shadowSkinned) {
        node->setVisible(visible);
    }
    for (ShadowModularSkinnedMeshSceneNode* node : m_shadowModular) {
        node->setVisible(visible);
    }
}

// 0x470b78 _ZN12VisualObject25SetXraySkinnedMeshVisibleEb
// partial: the original passes visible to vptr+0x48 (setVisible(bool)) of every node in m_xrayModular
// (+0x9c). The x-ray node class is not declared, so the call is not bound.
void VisualObject::SetXraySkinnedMeshVisible(bool visible) {
    for (XrayModularSkinnedMeshSceneNode* node : m_xrayModular) {
        node->setVisible(visible);
    }
}

// 0x470bd0 _ZN12VisualObject19ForceUpdatePositionEv
// Stores 1 in the byte at m_node +0x208 (RootSceneNode::unk_208), which onAnimate reads to refresh the position.
void VisualObject::ForceUpdatePosition() {
    if (m_node != nullptr) {
        m_node->unk_208 = true;
    }
}

// 0x470be4 _ZN12VisualObject11GetPositionER7Point3DIfE
// partial: the original copies the three floats returned by m_node's getPosition (ISceneNode::getPosition, vptr+0xa0,
// which returns a const vector3d<float>&) into out when m_node is set. RootSceneNode does not derive from ISceneNode
// (layout request), so getPosition is not callable and out is not written.
void VisualObject::GetPosition(Point3D<float>& out) {
    if (m_node == nullptr) {
        return;
    }
    const glitch::core::vector3d<float>& position = m_node->getPosition();
    out.X = position.X;
    out.Y = position.Y;
    out.Z = position.Z;
}

// 0x470c24 _ZN12VisualObject11SetPositionERK7Point3DIfE
// partial: when m_node is set, the original calls m_node->setPosition(position) (vptr+0xa4) with a copy of
// the argument, and then m_node->updateAbsolutePosition(false) (vptr+0xb8). setPosition is an ISceneNode method
// that RootSceneNode does not declare (layout request: CRootSceneNode derives from ISceneNode), so it is not bound.
// updateAbsolutePosition is declared on RootSceneNode (same slot, decomp_vtable shows it 0x0c higher) and is called.
void VisualObject::SetPosition(const Point3D<float>& position) {
    if (m_node != nullptr) {
        m_node->setPosition(glitch::core::vector3d<float>{position.X, position.Y, position.Z});
        m_node->updateAbsolutePosition(false);
    }
}

// 0x470c84 _ZN12VisualObject11GetRotationER7Point3DIfE
// Copies the owner's rotation (GameObject::m_rotation at +0x16c) into out. The original reads it only when
// m_node is set, so the copy is gated the same way.
void VisualObject::GetRotation(Point3D<float>& out) {
    if (m_node == nullptr || m_owner == nullptr) {
        return;
    }
    out = m_owner->m_rotation;
}

// 0x470cb8 _ZN12VisualObject12SyncPositionEv
// Pushes the owner's position (GameObject::m_position at +0x160) into the node through SetPosition, which
// is partial (0x470c24).
void VisualObject::SyncPosition() {
    if (m_owner != nullptr) {
        SetPosition(m_owner->m_position);
    }
}

// 0x470ccc _ZN12VisualObject13ApplyRotationEv
// Empty in the original (a bare return).
void VisualObject::ApplyRotation() {}

// 0x470cd0 _ZN12VisualObject12ApplyScalingEv
// Empty in the original (a bare return).
void VisualObject::ApplyScaling() {}

// 0x470cd4 _ZN12VisualObject13ApplyMaterialEv
// Empty in the original (a bare return).
void VisualObject::ApplyMaterial() {}

// 0x470cd8 _ZN12VisualObject12StartFadeOutEf
// Empty in the original (a bare return).
void VisualObject::StartFadeOut(float seconds) {
    (void)seconds;
}

// 0x470cdc _ZN12VisualObject11StopFadeOutEv
// Empty in the original (a bare return).
void VisualObject::StopFadeOut() {}

// 0x470ce0 _ZN12VisualObject13UpdateFadeOutEv
// Empty in the original (a bare return).
void VisualObject::UpdateFadeOut() {}

// 0x470ce4 _ZN12VisualObject11StartFadeInEf
// Empty in the original (a bare return).
void VisualObject::StartFadeIn(float seconds) {
    (void)seconds;
}
