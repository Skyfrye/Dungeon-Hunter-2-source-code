// Batch g1-game-world-VisualObject-0654b6-2 (part 3 of 4): VisualObject mesh visibility and box, the scale and
// rotation setters and their owner forwarders, parenting, the constructor and destructor, shadow and x-ray mesh
// creation, weapon skins, the x-ray and base material passes, the mesh flush and the modular module id.
// Declarations come from dh2/VisualObject.hpp; no header change is needed.
//
// Most bodies are partial. They reach a scene node through m_node (RootSceneNode*) or through the device's scene
// manager, and neither can be bound yet:
//   - RootSceneNode derives from glitch::collada::CRootSceneNode, which has no base in root_scene_node.hpp, so the
//     ISceneNode calls the original makes on m_node (getScale, setPosition, setVisible, remove, ...) are not declared
//     on it. The ISceneNode vtable slots used here follow the original's vptr+N numbering (N is the pseudocode offset).
//   - DeviceSceneManager() is the one point for the scene manager (IDevice +0x1c); it returns null without a device, so the scene-manager calls are skipped then.
// The bodies that do not need those reads are written in full: the constructor's field setup, the owner forwarders,
// the modular module name and the box normalise-and-centre step (CenterMeshBox, called once the box reads are bound).

#include <cfloat>
#include <cstdint>
#include <cstddef>
#include <string>
#include <utility>
#include <vector>

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/AssetManager.hpp"
#include "dh2/BaseMeshSceneNode.hpp"
#include "core-platform/w7_global_01.hpp"
#include "core-platform/w7_global_02.hpp"
#include "dh2/ColladaFactory.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/ShadowModularSkinnedMeshSceneNode.hpp"
#include "dh2/ShadowSkinnedMeshSceneNode.hpp"
#include "dh2/XrayModularSkinnedMeshSceneNode.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada_scene_accessors.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace {

// Names of VisualObject::SetWeaponSkin(char const*,int,int)::s_slotMapping, a three-entry table in .data.rel.ro at
// 0x956ad8. Its entries are relocated to the strings at 0x8cd710, 0x8cd730 and 0x8cd750 in libDungeonHunter2.so.
// Slot 0..2 picks the mount node. The original indexes it without a range check.
const char* const kSlotMapping[3] = {
    "anchor_shield_left_offset",
    "anchor_weapon_right_offset",
    "anchor_weapon_left_offset",
};

// Orders one axis so that the lower value is in lo: the original's min/max pair per axis, 0x47211c tail.
void OrderAxis(float& lo, float& hi) {
    if (hi < lo) {
        std::swap(lo, hi);
    }
}

// 0x47211c, tail: each axis is ordered (min <= max), and the box is then centred on Vec3f_Origin with its half extents
// (min = origin - half, max = origin + half).
void CenterMeshBox(glitch::core::aabbox3d<float>& box) {
    OrderAxis(box.MinEdge.X, box.MaxEdge.X);
    OrderAxis(box.MinEdge.Y, box.MaxEdge.Y);
    OrderAxis(box.MinEdge.Z, box.MaxEdge.Z);

    const float halfX = (box.MaxEdge.X - box.MinEdge.X) * 0.5f;
    const float halfY = (box.MaxEdge.Y - box.MinEdge.Y) * 0.5f;
    const float halfZ = (box.MaxEdge.Z - box.MinEdge.Z) * 0.5f;

    box.MinEdge.X = Vec3f_Origin.X - halfX;
    box.MaxEdge.X = halfX + Vec3f_Origin.X;
    box.MinEdge.Y = Vec3f_Origin.Y - halfY;
    box.MaxEdge.Y = halfY + Vec3f_Origin.Y;
    box.MinEdge.Z = Vec3f_Origin.Z - halfZ;
    box.MaxEdge.Z = halfZ + Vec3f_Origin.Z;
}

// The release the original destructor (0x473abc) gives a node that it owns: removeAnimators (vptr+0x74), remove
// (vptr+0x68), then the reference drop, and the slot is cleared. Used for the weapon nodes at +0x30 and +0x34.
void ReleaseSceneNode(glitch::scene::ISceneNode*& node) {
    if (node == nullptr) {
        return;
    }
    node->removeAnimators();
    node->remove();
    node->drop();
    node = nullptr;
}

}  // namespace

// The device's scene manager, the object at +0x1c of the device pointer that the original reads as dword_99F73C (Application::m_device). Null without a device.
SceneManager* DeviceSceneManager() {
    glitch::IDevice* device = ApplicationGetInstance().m_device;
    return device != nullptr ? reinterpret_cast<SceneManager*>(device->sceneManager) : nullptr;
}

// 0x471f1c _ZN12VisualObject14SetMeshVisibleEb
// The three typed node lists under m_node (tags 1835360612, 1936023908, 1298489700) get setVisible. The
// shadow nodes and the x-ray nodes get it too once they exist.
void VisualObject::SetMeshVisible(bool visible) {
    if (m_node == nullptr) {
        return;
    }
    const std::uint32_t tags[3] = {1835360612u, 1936023908u, 1298489700u};
    for (std::uint32_t tag : tags) {
        glitch::core::svector<glitch::scene::ISceneNode*> nodes;
        m_node->getSceneNodesFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(tag), nodes);
        for (glitch::scene::ISceneNode* node : nodes) {
            node->setVisible(visible);
        }
    }
    if (m_shadowCreated) {
        for (ShadowSkinnedMeshSceneNode* node : m_shadowSkinned) {
            node->setVisible(visible);
        }
        for (ShadowModularSkinnedMeshSceneNode* node : m_shadowModular) {
            node->setVisible(visible);
        }
    }
    if (m_xrayCreated) {
        for (XrayModularSkinnedMeshSceneNode* node : m_xrayModular) {
            node->setVisible(visible);
        }
    }
}

// 0x47211c _ZN12VisualObject11CalcMeshBoxEv
// Fills m_meshBox. With a collision box node (+0x0c) the box is the bounds of that node scaled by the scale of its parent. Without
// one the box grows over the bounds of the mesh nodes under m_node (the nodes of tag 1936023908, or when there are none those of
// tag 1835360612; each box is scaled by the scale of its parent when it has one), starting from an empty box; when no node is
// found the box is zeroed and the function returns. Then the corners go through the relative transformation of m_node (its
// translation cleared), each axis is ordered, and the box is centred on Vec3f_Origin with its half extents (CenterMeshBox).
void VisualObject::CalcMeshBox() {
    if (m_colBoxNode != nullptr) {
        const glitch::core::aabbox3d<float>& bounds = m_colBoxNode->getBoundingBox();
        m_meshBox.MinEdge = bounds.MinEdge;
        m_meshBox.MaxEdge = bounds.MaxEdge;
        const glitch::core::vector3d<float>& scale = m_colBoxNode->getParent()->getScale();
        m_meshBox.MinEdge.X = m_meshBox.MinEdge.X * scale.X;
        m_meshBox.MinEdge.Y = m_meshBox.MinEdge.Y * scale.Y;
        m_meshBox.MinEdge.Z = m_meshBox.MinEdge.Z * scale.Z;
        const glitch::core::vector3d<float>& scale2 = m_colBoxNode->getParent()->getScale();
        m_meshBox.MaxEdge.X = m_meshBox.MaxEdge.X * scale2.X;
        m_meshBox.MaxEdge.Y = m_meshBox.MaxEdge.Y * scale2.Y;
        m_meshBox.MaxEdge.Z = m_meshBox.MaxEdge.Z * scale2.Z;
    } else {
        m_meshBox.MinEdge.X = FLT_MAX;
        m_meshBox.MinEdge.Y = FLT_MAX;
        m_meshBox.MinEdge.Z = FLT_MAX;
        m_meshBox.MaxEdge.X = -FLT_MAX;
        m_meshBox.MaxEdge.Y = -FLT_MAX;
        m_meshBox.MaxEdge.Z = -FLT_MAX;
        SceneManager* sm = DeviceSceneManager();
        glitch::core::svector<glitch::scene::ISceneNode*> nodes;
        sm->getSceneNodesFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(1936023908u), nodes, m_node);
        if (nodes.empty()) {
            sm->getSceneNodesFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(1835360612u), nodes, m_node);
        }
        if (nodes.empty()) {
            m_meshBox.MinEdge.X = m_meshBox.MinEdge.Y = m_meshBox.MinEdge.Z = 0.0f;
            m_meshBox.MaxEdge.X = m_meshBox.MaxEdge.Y = m_meshBox.MaxEdge.Z = 0.0f;
            return;
        }
        for (glitch::scene::ISceneNode* node : nodes) {
            const glitch::core::aabbox3d<float>& bounds = node->getBoundingBox();
            float minX = bounds.MinEdge.X, minY = bounds.MinEdge.Y, minZ = bounds.MinEdge.Z;
            float maxX = bounds.MaxEdge.X, maxY = bounds.MaxEdge.Y, maxZ = bounds.MaxEdge.Z;
            if (node->getParent() != nullptr) {
                const glitch::core::vector3d<float>& scale = node->getParent()->getScale();
                minX = minX * scale.X;
                minY = minY * scale.Y;
                minZ = minZ * scale.Z;
                const glitch::core::vector3d<float>& scale2 = node->getParent()->getScale();
                maxX = maxX * scale2.X;
                maxY = maxY * scale2.Y;
                maxZ = maxZ * scale2.Z;
            }
            if (m_meshBox.MinEdge.X > minX) m_meshBox.MinEdge.X = minX;
            if (m_meshBox.MinEdge.Y > minY) m_meshBox.MinEdge.Y = minY;
            if (m_meshBox.MinEdge.Z > minZ) m_meshBox.MinEdge.Z = minZ;
            if (m_meshBox.MaxEdge.X < maxX) m_meshBox.MaxEdge.X = maxX;
            if (m_meshBox.MaxEdge.Y < maxY) m_meshBox.MaxEdge.Y = maxY;
            if (m_meshBox.MaxEdge.Z < maxZ) m_meshBox.MaxEdge.Z = maxZ;
        }
    }
    glitch::core::CMatrix4<float> matrix = m_node->getRelativeTransformation();
    matrix.M[12] = 0.0f;
    matrix.M[13] = 0.0f;
    matrix.M[14] = 0.0f;
    matrix.flag = false;
    reinterpret_cast<Point3D<float>&>(m_meshBox.MinEdge).transform(matrix);
    reinterpret_cast<Point3D<float>&>(m_meshBox.MaxEdge).transform(matrix);
    CenterMeshBox(m_meshBox);
}

// 0x472708 _ZN12VisualObject10SetScalingEf
// Compares m_node's scale with (uniform, uniform, uniform); when any axis differs, sets it, then CalcMeshBox and ApplyMeshBox.
void VisualObject::SetScaling(float uniform) {
    if (m_node == nullptr) {
        return;
    }
    const glitch::core::vector3d<float>& current = m_node->getScale();
    if (current.X != uniform || current.Y != uniform || current.Z != uniform) {
        m_node->setScale(glitch::core::vector3d<float>{uniform, uniform, uniform});
        CalcMeshBox();
        ApplyMeshBox();
    }
}

// 0x4727ac _ZN12VisualObject10SetScalingERK7Point3DIfE
// Same as the uniform overload, with the vector (scale.X, scale.Y, scale.Z).
void VisualObject::SetScaling(const Point3D<float>& scale) {
    if (m_node == nullptr) {
        return;
    }
    const glitch::core::vector3d<float>& current = m_node->getScale();
    if (current.X != scale.X || current.Y != scale.Y || current.Z != scale.Z) {
        m_node->setScale(glitch::core::vector3d<float>{scale.X, scale.Y, scale.Z});
        CalcMeshBox();
        ApplyMeshBox();
    }
}

// 0x472860 _ZN12VisualObject11SyncScalingEv
// Forwards the owner's scale (GameObject::m_scale, +0x120) to SetScaling. The target is partial (0x4727ac).
void VisualObject::SyncScaling() {
    if (m_owner != nullptr) {
        SetScaling(m_owner->m_scale);
    }
}

// 0x472874 _ZN12VisualObject11SetRotationERK7Point3DIfE
// Builds the quaternion from the angles as (Y, -X, -Z). When it differs from m_node's rotation in any component, sets it,
// then CalcMeshBox and ApplyMeshBox.
void VisualObject::SetRotation(const Point3D<float>& rotation) {
    if (m_node == nullptr) {
        return;
    }
    glitch::core::quaternion q;
    q.set(rotation.Y, -rotation.X, -rotation.Z);
    const glitch::core::quaternion& current = m_node->getRotation();
    if (current.X != q.X || current.Y != q.Y || current.Z != q.Z || current.W != q.W) {
        m_node->setRotation(q);
        CalcMeshBox();
        ApplyMeshBox();
    }
}

// 0x472948 _ZN12VisualObject12SyncRotationEv
// Forwards the owner's rotation (GameObject::m_rotation, +0x16c) to SetRotation. The target is partial (0x472874).
void VisualObject::SyncRotation() {
    if (m_owner != nullptr) {
        SetRotation(m_owner->m_rotation);
    }
}

// 0x47295c _ZN12VisualObject9SetParentEP10GameObject
// Stores the owner. Without an owner nothing else happens. When the owner is not static, or it is static and animated (IsAnimated,
// vtable +0x80), Sync runs and the whole node tree gets the animate flag (RecursiveSetBoolOnNode with setOnAnimateEnabled). A static
// owner that is not animated gets Sync, the node position set to itself (getPosition, setPosition) and OptimizeStatic on the node.
void VisualObject::SetParent(GameObject* owner) {
    m_owner = owner;
    if (owner == nullptr) {
        return;
    }
    if (!owner->m_static || owner->IsAnimated()) {
        Sync();
        RecursiveSetBoolOnNode(m_node, true, setOnAnimateEnabled);
        return;
    }
    Sync();
    m_node->setPosition(m_node->getPosition());
    OptimizeStatic(m_node);
}

// 0x472c5c _ZN12VisualObjectC2EP10GameObjectRKSsS3_
// 0x472a0c (_ZN12VisualObjectC1EP10GameObjectRKSsS3_) is the complete-object copy of the same constructor. The fields are set up, then
// the model is loaded through the asset manager (model name, variant name or none when it is empty, flag false, option 255). When a
// node comes back: the owner is attached (SetParent), the bounding box refreshed, the modular skin node looked up, the node added to
// the scene root and ForceRegister called; a node named "_colbox_" below it becomes the collision box node (kept with an extra use,
// render flag cleared, setVisible(false)) and sets m_hasColBox; then the mesh box is computed and handed to the owner, and a new
// AnimController(m_node, false) is installed.
// The original does not set m_shadowCreated (+0x98) or m_xrayCreated (+0xa8); they are set false here.
VisualObject::VisualObject(GameObject* owner, const std::string& model, const std::string& variant) {
    m_owner = owner;
    m_node = nullptr;
    m_colBoxNode = nullptr;
    m_hasColBox = false;
    m_meshBox.MinEdge.X = 0.0f;
    m_meshBox.MinEdge.Y = 0.0f;
    m_meshBox.MinEdge.Z = 0.0f;
    m_meshBox.MaxEdge.X = 0.0f;
    m_meshBox.MaxEdge.Y = 0.0f;
    m_meshBox.MaxEdge.Z = 0.0f;
    m_modularNode = nullptr;
    m_weaponNodeMain = nullptr;
    m_weaponNodeOff = nullptr;
    m_animController = nullptr;
    unk_3c = false;
    unk_40 = 0;
    m_effectColor[0] = -1.0f;
    m_effectColor[1] = -1.0f;
    m_effectColor[2] = -1.0f;
    m_effectParamB = -1.0f;
    m_effectParamA = -1.0f;
    unk_6c = false;
    unk_74 = -1.0f;
    unk_7c = false;
    unk_7d = false;
    m_rimLight = false;
    m_hasModularNode = false;
    m_shadowCreated = false;
    m_xrayCreated = false;
    m_xrayMask = false;

    const char* variantName = variant.empty() ? nullptr : variant.c_str();
    m_node = static_cast<RootSceneNode*>(AssetManager::GetAssetManager()->loadSceneNode(model.c_str(), variantName, false, 255));
    if (m_node == nullptr) {
        return;
    }
    SetParent(owner);
    m_node->RefreshBoundingBox();
    _FindModularSkinnedMeshNode();
    SceneManager* sm = DeviceSceneManager();
    sm->rootNode->addChild(m_node);
    sm->ForceRegister();
    glitch::scene::ISceneNode* colBox = sm->SearchByName(m_node, "_colbox_", true);
    if (colBox != nullptr) {
        m_hasColBox = true;
        m_colBoxNode = sm->getSceneNodeFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(1835360612u), colBox);
        if (m_colBoxNode != nullptr) {
            ++static_cast<glitch::IReferenceCounted*>(m_colBoxNode)->referenceCounter;
            static_cast<BaseMeshSceneNode<glitch::collada::CMeshSceneNode>*>(m_colBoxNode)->m_renderEnabled = false;
            m_colBoxNode->setVisible(false);
        }
    }
    CalcMeshBox();
    ApplyMeshBox();
    SetAnimController(new AnimController(m_node, false));
}

// 0x4732ac _ZN12VisualObject16CreateShadowMeshEv
// Without a node nothing happens. Sets the shadow flag, then builds the shadow copies: one ShadowSkinnedMeshSceneNode (428 bytes)
// per node of tag 1936023908 under m_node and one ShadowModularSkinnedMeshSceneNode (472 bytes) per node of tag 1298489700, each on
// the mesh of its source node (the node getMesh, vtable +0xf8). Every copy is added to the scene root, and ForceRegister ends it.
void VisualObject::CreateShadowMesh() {
    if (m_node == nullptr) {
        return;
    }
    m_shadowCreated = true;
    SceneManager* sm = DeviceSceneManager();
    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    m_node->getSceneNodesFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(1936023908u), nodes);
    m_shadowSkinned.resize(nodes.size(), nullptr);
    for (std::size_t i = 0; i < nodes.size(); ++i) {
        boost::intrusive_ptr<glitch::collada::IMesh> mesh = static_cast<glitch::collada::CMeshSceneNode*>(nodes[i])->mesh;
        ShadowSkinnedMeshSceneNode* shadow = new ShadowSkinnedMeshSceneNode(mesh, nodes[i]);
        m_shadowSkinned[i] = shadow;
        sm->rootNode->addChild(shadow);
    }
    nodes.clear();
    m_node->getSceneNodesFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(1298489700u), nodes);
    m_shadowModular.resize(nodes.size(), nullptr);
    for (std::size_t i = 0; i < nodes.size(); ++i) {
        boost::intrusive_ptr<glitch::collada::IMesh> mesh = static_cast<glitch::collada::CMeshSceneNode*>(nodes[i])->mesh;
        ShadowModularSkinnedMeshSceneNode* shadow = new ShadowModularSkinnedMeshSceneNode(mesh, nodes[i], m_node);
        m_shadowModular[i] = shadow;
        sm->rootNode->addChild(shadow);
    }
    sm->ForceRegister();
}

// 0x4736e4 _ZN12VisualObject14CreateXrayMeshEv
// Without a node nothing happens. Sets the x-ray flag (+0xa8) and builds one XrayModularSkinnedMeshSceneNode (468 bytes) per node of
// tag 1298489700 under m_node, on the mesh of the source node. Every copy is added to the scene root, and ForceRegister ends it.
void VisualObject::CreateXrayMesh() {
    if (m_node == nullptr) {
        return;
    }
    m_xrayCreated = true;
    SceneManager* sm = DeviceSceneManager();
    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    m_node->getSceneNodesFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(1298489700u), nodes);
    m_xrayModular.resize(nodes.size(), nullptr);
    for (std::size_t i = 0; i < nodes.size(); ++i) {
        boost::intrusive_ptr<glitch::collada::IMesh> mesh = static_cast<glitch::collada::CMeshSceneNode*>(nodes[i])->mesh;
        XrayModularSkinnedMeshSceneNode* xray = new XrayModularSkinnedMeshSceneNode(mesh, nodes[i]);
        m_xrayModular[i] = xray;
        sm->rootNode->addChild(xray);
    }
    sm->ForceRegister();
}

// 0x473abc _ZN12VisualObjectD2Ev
// 0x473884 (_ZN12VisualObjectD1Ev) is the complete-object copy of the same destructor.
// SetAnimController(nullptr); the collision box node (+0x0c) gets a plain drop; the model root m_node (+0x08) and each weapon
// node (+0x30 main, +0x34 off) get removeAnimators (vptr+0x74), remove (vptr+0x68) and drop; then ForceRegister on the device
// scene manager. The light filter (+0x44) and the node vectors are std::vector members, released with the object.
VisualObject::~VisualObject() {
    SetAnimController(nullptr);
    if (m_colBoxNode != nullptr) {
        m_colBoxNode->drop();
        m_colBoxNode = nullptr;
    }
    if (m_node != nullptr) {
        m_node->removeAnimators();
        m_node->remove();
        m_node->drop();
        m_node = nullptr;
    }
    ReleaseSceneNode(m_weaponNodeMain);
    ReleaseSceneNode(m_weaponNodeOff);
    if (SceneManager* sm = DeviceSceneManager()) {
        sm->ForceRegister();
    }
}

// 0x473cd8 _ZN12VisualObject13SetWeaponSkinEPKcii
// With a weapon name the scene "data/3d/characters/prince/weapons/<weapon>.bdae" is loaded (flag true, ColladaFactory::s_factory);
// without one the new node is null. Kind 1 is the main hand (m_weaponNodeMain) and any other kind the off hand
// (m_weaponNodeOff): the previous node of that slot is removed and dropped, and the slot takes the new node. The node named by
// s_slotMapping[slot] below m_node (SearchByName, no flag) gets the new node as a child. The mount node is returned; the original
// returns a leftover register when it exists (no caller reads the result).
glitch::scene::ISceneNode* VisualObject::SetWeaponSkin(const char* weapon, int kind, int slot) {
    glitch::scene::ISceneNode* loaded = nullptr;
    if (weapon != nullptr) {
        std::string path = "data/3d/characters/prince/weapons/";
        path += weapon;
        path += ".bdae";
        glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
        loaded = glitch::collada::CColladaDatabase::constructScene(driver, path.c_str(), true, &ColladaFactory::s_factory);
    }
    glitch::scene::ISceneNode*& target = (kind == 1) ? m_weaponNodeMain : m_weaponNodeOff;
    if (target != nullptr) {
        target->remove();
        target->drop();
    }
    target = loaded;
    glitch::scene::ISceneNode* mount = DeviceSceneManager()->SearchByName(m_node, kSlotMapping[slot], false);
    if (mount != nullptr) {
        mount->addChild(loaded);
    }
    return mount;
}

// 0x473ea0 _ZN12VisualObject17ApplyXrayMaterialEv
// For each x-ray node: regenerateXrayMaterial(). Then, for each material in the node's m_xrayMaterials (+0x1b0):
// ChangeCustomXrayTechnique(sm, material, 1, 1), updateXrayMaterial() on the node, SetMaterialRimLightEffects(sm, material,
// 4.0, "char_rim_light_xray.tga") and SetMaterialEffects(sm, material, (0, 0, 1), 0.98, -1.0). The engine's routine reads
// only the second and third flags of ChangeCustomXrayTechnique, so the third header flag is passed as false. The getType()
// result at vptr+0xbc is discarded and left out.
void VisualObject::ApplyXrayMaterial() {
    if (!m_xrayCreated) {
        return;
    }
    SceneManager* sm = DeviceSceneManager();
    if (sm == nullptr) {
        return;
    }
    for (XrayModularSkinnedMeshSceneNode* node : m_xrayModular) {
        node->regenerateXrayMaterial();
        for (auto& material : node->m_xrayMaterials) {
            sm->ChangeCustomXrayTechnique(material, true, true, false);
            node->updateXrayMaterial();
            sm->SetMaterialRimLightEffects(material, 4.0f, std::string("char_rim_light_xray.tga"));
            sm->SetMaterialEffects(material, glitch::core::vector3d<float>{0.0f, 0.0f, 1.0f}, 0.98f, -1.0f);
        }
    }
}

// 0x474140 _ZN12VisualObject11FlushMeshesEv
// Collects the nodes of the three mesh tags (1835360612, 1936023908, 1298489700) under m_node, flushes the mesh of each one
// (FlushMeshBuffers(mesh, vertices, indices, not forced)) and returns the model file name, which is the file name of the database
// of m_node.
std::string VisualObject::FlushMeshes() {
    SceneManager* sm = DeviceSceneManager();
    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    sm->SearchByType(m_node, nodes, 1835360612u);
    sm->SearchByType(m_node, nodes, 1936023908u);
    sm->SearchByType(m_node, nodes, 1298489700u);
    for (glitch::scene::ISceneNode* node : nodes) {
        boost::intrusive_ptr<glitch::collada::IMesh> mesh = static_cast<glitch::collada::CMeshSceneNode*>(node)->mesh;
        FlushMeshBuffers(mesh.get(), true, true, false);
    }
    const char* name = m_node->database.fileName();
    return std::string(name != nullptr ? name : "");
}

// 0x474318 _ZN12VisualObject22ApplyMaterialBaseParamEv
// For each node of the three typed lists under m_node (SearchByType tags 1835360612, 1936023908, 1298489700): with m_rimLight
// set, SetMaterialRimLightEffects(node, 1.9, the current level's rim light file); with m_xrayMask set, reload the debug switches
// and, when "RENDERING_EnableXray" is on, SetMaskXray(node, true).
void VisualObject::ApplyMaterialBaseParam() {
    SceneManager* sm = DeviceSceneManager();
    if (sm == nullptr || m_node == nullptr) {
        return;
    }
    const std::uint32_t tags[3] = {1835360612u, 1936023908u, 1298489700u};
    for (std::uint32_t tag : tags) {
        glitch::core::svector<glitch::scene::ISceneNode*> nodes;
        sm->SearchByType(m_node, nodes, tag);
        for (glitch::scene::ISceneNode* node : nodes) {
            if (m_rimLight) {
                Level* level = ApplicationGetInstance().GetCurrentLevel();
                if (level != nullptr) {
                    sm->SetMaterialRimLightEffects(node, 1.9f, level->GetRimLightFile());
                }
            }
            if (m_xrayMask) {
                DebugSwitches* switches = DebugSwitches::GetInstance();
                switches->load();
                if (switches->GetSwitch("RENDERING_EnableXray")) {
                    sm->SetMaskXray(node, true);
                }
            }
        }
    }
}

// 0x474568 _ZNK12VisualObject18GetModularModuleIdEiPKc
// Builds "#<module>-mesh-skin" and asks the modular skinned node for its module id. The category argument is unused in
// the original too. Returns -1 without a modular node.
int VisualObject::GetModularModuleId(int categoryId, const char* module) const {
    (void)categoryId;
    std::string name = "#";
    name += module;
    name += "-mesh-skin";
    if (m_modularNode == nullptr) {
        return -1;
    }
    return m_modularNode->getModuleId(name.c_str());
}
