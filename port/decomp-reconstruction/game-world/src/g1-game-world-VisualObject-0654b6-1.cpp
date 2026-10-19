// Batch g1-game-world-VisualObject-0654b6-1: the empty fade and update hooks, the modular skin queries,
// the shadow and material hooks, light set and position application, visibility sync and the
// modular node search. Declarations come from dh2/VisualObject.hpp; no member was added.
//
// The scene manager is the word at device +0x1c (dword_99F73C is Singleton<Application>::s_inst.m_device,
// so the manager is IDevice +0x1c, not Application +0x1c). No header declares it yet, so every original call
// made through it is left out and named in a comment. Bodies with such a call are PARTIAL.
// dh2/ShadowSkinnedMeshSceneNode.hpp and dh2/ShadowModularSkinnedMeshSceneNode.hpp do not compile yet
// (BaseMeshSceneNode<CSkinnedMeshSceneNode> is incomplete), so the shadow loops only walk the node pointers.

#include "dh2/GameObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/ShadowModularSkinnedMeshSceneNode.hpp"
#include "dh2/ShadowSkinnedMeshSceneNode.hpp"
#include "dh2/XrayModularSkinnedMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/collada_scene_accessors.hpp"

#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

namespace {
constexpr auto kTypeModular = static_cast<glitch::scene::E_SCENE_NODE_TYPE>(0x4D656164);  // "Mead"
}  // namespace

// 0x470ce8 _ZN12VisualObject10StopFadeInEv
// Empty in the original (bare return).
void VisualObject::StopFadeIn() {}

// 0x470cec _ZN12VisualObject12UpdateFadeInEv
// Empty in the original (bare return).
void VisualObject::UpdateFadeIn() {}

// 0x470cf0 _ZN12VisualObject6UpdateEv
// Virtual slot 2. Empty in the original (bare return).
void VisualObject::Update() {}

// 0x470cf4 _ZNK12VisualObject4DrawEv
// Virtual slot 3. Empty in the original (bare return).
void VisualObject::Draw() const {}

// 0x470e18 _ZN12VisualObject14SetModularSkinEii
// Sets the module of a category on the modular node, then tells the scene manager that visibility changed.
void VisualObject::SetModularSkin(int categoryId, int moduleId) {
    if (m_modularNode == nullptr || categoryId == -1) {
        return;
    }
    m_modularNode->setCategoryModule(categoryId, moduleId);
    if (SceneManager* sm = DeviceSceneManager()) {
        sm->notifyVisibilityChanged();
    }
}

// 0x470e5c _ZNK12VisualObject20GetModularCategoryIdEPKc
// Category id from the modular node, or -1 when there is no modular node.
int VisualObject::GetModularCategoryId(const char* category) const {
    if (m_modularNode != nullptr) {
        return m_modularNode->getCategoryId(category);
    }
    return -1;
}

// 0x470e74 _ZNK12VisualObject20GetModularModuleNameEii
// Module name from the modular node, or "???" when there is no modular node.
const char* VisualObject::GetModularModuleName(int categoryId, int moduleId) const {
    if (m_modularNode != nullptr) {
        return m_modularNode->getModuleName(categoryId, moduleId);
    }
    return "???";
}

// 0x470e94 _ZNK12VisualObject21GetModularModuleCountEi
// Hex-Rays types the result as a node pointer. The null path returns the null word, which is 0 as an int.
int VisualObject::GetModularModuleCount(int categoryId) const {
    if (m_modularNode != nullptr) {
        return static_cast<int>(m_modularNode->getCategoryModuleCount(categoryId));
    }
    return 0;
}

// 0x470ea4 _ZNK12VisualObject23GetModularCategoryCountEv
// Same shape as GetModularModuleCount: the category count of the modular node, 0 without one.
int VisualObject::GetModularCategoryCount() const {
    if (m_modularNode != nullptr) {
        return static_cast<int>(m_modularNode->getCategoryCount());
    }
    return 0;
}

// 0x470eb4 _ZN12VisualObject35ApplyShadowProjectionMaterialEffectEN6glitch4core8vector3dIfEEff
// Does nothing unless one of the three values is above -0.5 and the shadow nodes exist. Every skinned shadow node passes its shadow
// material (+0x198) and every modular shadow node each of its shadow materials (+0x1b0) to SetShadowProjectionMaterialEffects.
void VisualObject::ApplyShadowProjectionMaterialEffect(glitch::core::vector3d<float> color, float a, float b) {
    if (!(color.X > -0.5f || a > -0.5f || b > -0.5f)) {
        return;
    }
    if (!m_shadowCreated) {
        return;
    }
    SceneManager* sm = DeviceSceneManager();
    for (ShadowSkinnedMeshSceneNode* node : m_shadowSkinned) {
        sm->SetShadowProjectionMaterialEffects(node->m_shadowMaterial, color, a, b);
    }
    for (ShadowModularSkinnedMeshSceneNode* node : m_shadowModular) {
        for (auto& material : node->unk_1b0) {
            sm->SetShadowProjectionMaterialEffects(material, color, a, b);
        }
    }
}

// 0x4710f0 _ZN12VisualObject19ApplyShadowMaterialEv
// For each modular shadow node: regenerateShadowMaterial(), then ChangeCustomShadowProjectionTechnique(sm, material, flag)
// for each material in the +0x1b0 vector. The engine routine never reads its second flag, so it is passed as false.
// The getType() result at vptr+0xbc is discarded and left out.
void VisualObject::ApplyShadowMaterial() {
    if (!m_shadowCreated) {
        return;
    }
    SceneManager* sm = DeviceSceneManager();
    for (ShadowModularSkinnedMeshSceneNode* node : m_shadowModular) {
        node->regenerateShadowMaterial();
        if (sm == nullptr) {
            continue;
        }
        for (auto& material : node->unk_1b0) {
            sm->ChangeCustomShadowProjectionTechnique(material, true, false);
        }
    }
}

// 0x471214 _ZN12VisualObject13ApplyLightSetEv
// The original tail-calls SceneManager::UpdateLightSet(sm, index, filter, node) with the device's scene manager, index = unk_40 (+0x40, the light set id), filter = the
// std::vector<bool> light filter at +0x44 and node = m_node (+0x08).
void VisualObject::ApplyLightSet() {
    if (SceneManager* sceneManager = DeviceSceneManager()) {
        sceneManager->UpdateLightSet(unk_40, m_lightFilter, m_node);
    }
}

// 0x47124c _ZN12VisualObject13ApplyPositionEv
// PARTIAL: the original reads the node position into a local with GetPosition (0x470be4, partial: it leaves its
// output unset) and then calls GameObject::SetPosition(pos, false) on m_owner. Until GetPosition fills its output,
// the owner would be set to (0, 0, 0), so the SetPosition call is left out. The m_owner guard is kept.
void VisualObject::ApplyPosition() {
    if (m_owner == nullptr) {
        return;
    }
    Point3D<float> pos;
    GetPosition(pos);
    m_owner->SetPosition(pos, false);
}

// 0x471298 _ZN12VisualObject16ExternalNodeSyncEP13RootSceneNode
// Copies the owner's transform into the given scene node: position, absolute update, rotation as the quaternion
// (Y, -X, -Z) of the owner's rotation, and scale.
void VisualObject::ExternalNodeSync(RootSceneNode* node) {
    if (node == nullptr || m_owner == nullptr) {
        return;
    }
    const Point3D<float>& pos = m_owner->m_position;
    const Point3D<float>& rot = m_owner->m_rotation;
    const Point3D<float>& scale = m_owner->m_scale;
    node->setPosition(glitch::core::vector3d<float>{pos.X, pos.Y, pos.Z});
    node->updateAbsolutePosition(false);
    glitch::core::quaternion q;
    q.set(rot.Y, -rot.X, -rot.Z);
    node->setRotation(q);
    node->setScale(glitch::core::vector3d<float>{scale.X, scale.Y, scale.Z});
}

// 0x471368 _ZN12VisualObject10SetVisibleEb
// PARTIAL: when the node is set, the original calls SceneManager::ForceRegister() if the requested flag differs
// from bit 0 of the node's flags word (CRootSceneNode +0x11c, unk_011c), then the node's setVisible(bool)
// (vptr+0x48). The ForceRegister call is left out (scene manager not reachable); setVisible is made.
void VisualObject::SetVisible(bool visible) {
    if (m_node == nullptr) {
        return;
    }
    if (visible != ((m_node->flags & 1u) != 0)) {
        if (SceneManager* sm = DeviceSceneManager()) {
            sm->ForceRegister();
        }
    }
    m_node->setVisible(visible);
}

// 0x4713d0 _ZN12VisualObject14SyncVisibilityEv
// Visible when the owner's visible flag (+0x80, m_visible) is set and either the owner is not zonable
// (IsZonable, vptr+0xc4), zoning is off (m_zoningEnabled at +0x2ee is 0) or the owner is in a zone (m_inZone at
// +0x2f0 is set). The result goes to SetVisible. This body is complete; SetVisible (0x471368) is partial only in
// its ForceRegister call.
void VisualObject::SyncVisibility() {
    if (m_owner == nullptr) {
        return;
    }
    const bool visible = m_owner->m_visible &&
                         (!m_owner->IsZonable() || m_owner->m_zoningEnabled == 0 || m_owner->m_inZone != 0);
    SetVisible(visible);
}

// 0x4718f0 _ZN12VisualObject27_FindModularSkinnedMeshNodeEv
// The original asserts m_node (VisualObject.cpp line 1023); here a null m_node returns. The scene manager returns every
// 0x4D656164 node under m_node, and each one becomes m_modularNode, with m_hasModularNode set.
void VisualObject::_FindModularSkinnedMeshNode() {
    if (m_node == nullptr) {
        return;
    }
    SceneManager* sm = DeviceSceneManager();
    if (sm == nullptr) {
        return;
    }
    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    sm->getSceneNodesFromType(kTypeModular, nodes, m_node);
    for (glitch::scene::ISceneNode* node : nodes) {
        m_modularNode = static_cast<glitch::collada::CModularSkinnedMeshSceneNode*>(node);
        m_hasModularNode = true;
    }
}

// 0x471a0c _ZN12VisualObject13ResetSkinningEv
// For each 0x4D656164 node under m_node and each category i of this object's modular node: id = node->getCurrentModuleId(i),
// then SetModularSkin(i, id == 0) and SetModularSkin(i, id). A null m_node returns (the original asserts).
void VisualObject::ResetSkinning() {
    if (m_node == nullptr) {
        return;
    }
    SceneManager* sm = DeviceSceneManager();
    if (sm == nullptr) {
        return;
    }
    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    sm->getSceneNodesFromType(kTypeModular, nodes, m_node);
    const int categories = GetModularCategoryCount();
    for (glitch::scene::ISceneNode* node : nodes) {
        auto* modular = static_cast<glitch::collada::CModularSkinnedMeshSceneNode*>(node);
        for (int i = 0; i < categories; ++i) {
            const int id = modular->getCurrentModuleId(i);
            SetModularSkin(i, id == 0 ? 1 : 0);
            SetModularSkin(i, id);
        }
    }
}

// 0x471b7c _ZN12VisualObject19ApplyMaterialEffectEN6glitch4core8vector3dIfEEff
// PARTIAL: the effect state is updated exactly as in the original: the colour (+0x58..+0x60), param a (+0x68)
// and param b (+0x64), each compared with its previous value before it is stored. When one of the three changed,
// the original searches the scene manager for nodes of types 0x6D656164, 0x73656164 and 0x4D656164 under m_node
// and calls SetMaterialEffects(node, color, a, b) on each. Those searches and per-node calls are left out (scene
// manager not reachable). The final ApplyShadowProjectionMaterialEffect((-1, -1, -1), b, -1) call is made.
void VisualObject::ApplyMaterialEffect(glitch::core::vector3d<float> color, float a, float b) {
    const bool colorChanged = (color.X != m_effectColor[0] || color.Y != m_effectColor[1] ||
                               color.Z != m_effectColor[2]) && color.X > -0.5f;
    const bool paramAChanged = m_effectParamA != a && a > -0.5f;
    const bool paramBChanged = m_effectParamB != b && b > -0.5f;
    m_effectColor[0] = color.X;
    m_effectColor[1] = color.Y;
    m_effectColor[2] = color.Z;
    m_effectParamA = a;
    m_effectParamB = b;
    if (!(colorChanged || paramAChanged || paramBChanged)) {
        return;
    }
    if (SceneManager* sm = DeviceSceneManager()) {
        if (m_node != nullptr) {
            const std::uint32_t types[3] = {0x6D656164, 0x73656164, 0x4D656164};
            for (std::uint32_t type : types) {
                glitch::core::svector<glitch::scene::ISceneNode*> nodes;
                sm->SearchByType(m_node, nodes, type);
                for (glitch::scene::ISceneNode* node : nodes) {
                    sm->SetMaterialEffects(node, color, a, b);
                }
            }
        }
    }
    ApplyShadowProjectionMaterialEffect(glitch::core::vector3d<float>{-1.0f, -1.0f, -1.0f}, b, -1.0f);
}

// 0x471dc4 _ZN12VisualObject23ApplyUnlitColorMaterialEv
// Collects the 0x73656164 nodes under m_node. For each whose parent's name is not "SP_shadow" (first 9 bytes),
// ResetCustomTechniqueToDefault(m_node, false, false, 0, true, true, ?). The getType() result is discarded and left out.
// A node without a parent is skipped (the original would fault on it). The seventh flag is false (the asm stores a zero register).
void VisualObject::ApplyUnlitColorMaterial() {
    if (m_node == nullptr) {
        return;
    }
    SceneManager* sm = DeviceSceneManager();
    if (sm == nullptr) {
        return;
    }
    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    sm->SearchByType(m_node, nodes, static_cast<std::uint32_t>(0x73656164));
    for (glitch::scene::ISceneNode* node : nodes) {
        glitch::scene::ISceneNode* parent = node->getParent();
        if (parent == nullptr) {
            continue;
        }
        if (std::strncmp(parent->getName(), "SP_shadow", 9) != 0) {
            sm->ResetCustomTechniqueToDefault(m_node, false, false, 0, true, true, false);
        }
    }
}
