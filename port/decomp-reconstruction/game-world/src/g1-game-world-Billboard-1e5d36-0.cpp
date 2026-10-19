// Batch g1-game-world-Billboard-1e5d36-0: the eleven Billboard functions. Declarations come from dh2/Billboard.hpp.
//
// Layout used here (original 32-bit offsets, kept in Billboard.hpp): +0x85 ObjectBase::unk_85 (updating flag),
// +0x120 m_tga, +0x138 m_attachTo, +0x150 m_size, +0x158 m_position, +0x164 m_isAdditive, +0x168 m_attachHandle,
// +0x174 m_attachToActiveCamera, +0x178 m_billboardNode.
//
// Partial: none. Update, InitPost, the destructor (D1 and D2) and DeclareProperties are all written (the "position"
// and "size" properties are built by hand because PropertyMap::AddProperty<T> has no instance for those two types).
// The old blockers (IDevice +0x10/+0x1c, the IVideoDriver +0xdc/+0xe0 managers, the CMaterial parameter setter and the
// CBillboardSceneNode layout) are STALE: all of them exist in the tree now.
// Skipped: the deleting destructor (D0). Reconstructed: Draw, IsZonable, IsUpdatable and the constructor (C1 and C2).

#include <string>

#include "dh2/Application.hpp"                  // ApplicationGetInstance(), the device at Application +0x10
#include "dh2/Billboard.hpp"
#include "dh2/GameObject.hpp"                   // GameObject::m_visualObject (+0x2d8)
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/RootSceneNode.hpp"                // RootSceneNode (complete) for the VisualObject::m_node upcast
#include "dh2/SceneManager.hpp"                 // the game SceneManager (complete) for DeviceSceneManager()
#include "dh2/SimpleTypeProperty.hpp"
#include "dh2/VisualObject.hpp"                 // VisualObject::m_node (+0x08)
#include "dh2/global/DeviceSceneManager.hpp"    // DeviceSceneManager(): the scene manager at device +0x1c
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/os/device.hpp"         // glitch::IDevice +0x10 driver, +0x1c scene manager
#include "glitch-scene-collada-gui/scene/CBillboardSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

// 0x3876c8 _ZNK9Billboard4DrawEv
void Billboard::Draw() const {
    // Empty in the original.
}

// 0x3876cc _ZNK9Billboard9IsZonableEv
bool Billboard::IsZonable() const {
    return false;
}

// 0x3876d4 _ZNK9Billboard11IsUpdatableEv
bool Billboard::IsUpdatable() const {
    return true;
}

// 0x3876dc _ZN9Billboard6UpdateEv
// The node gate, the attach flag gate, then the active camera takes the node's ISceneNode subobject as a child:
// CSceneManager::activeCamera (+0xe4) of the device's scene manager (+0x1c), and addChild (vtable slot +0x5c) with
// m_billboardNode + 4, which is the ISceneNode* of a CBillboardSceneNode (its ISceneNode subobject starts at +4).
// The old layout request (glitch::IDevice +0x1c) and the "no canonical CBillboardSceneNode header" note are STALE.
void Billboard::Update() {
    if (m_billboardNode == nullptr) {  // +0x178
        return;
    }
    if (!m_attachToActiveCamera) {  // +0x174
        return;
    }
    glitch::scene::CSceneManager* sceneManager = DeviceSceneManager();
    if (sceneManager == nullptr || sceneManager->activeCamera == nullptr) {
        return;   // host-necessitated guard: the original dereferences the scene manager unconditionally
    }
    sceneManager->activeCamera->addChild(m_billboardNode);   // vtable slot +0x5c
}

// 0x38781c _ZN9Billboard8InitPostEv
// The original, in order (every step is now written; the old blocker list is STALE):
//   1. texture = driver->textureManager->getTexture(m_tga.c_str(), nullptr) (device +0x10, IVideoDriver +0xe0).
//      Nothing happens when the texture is null.
//   2. node = sceneManager->addSceneNode("billBoard", sceneManager->rootNode) (device +0x1c, vtable +0x5c of
//      CSceneManager, rootNode +0x04). m_billboardNode = node, which is the ISceneNode* (the node returned is the
//      billboard's ISceneNode subobject); the ISceneNode's reference counter goes up by one.
//   3. material = driver->materialRendererManager->createMaterialInstance(m_isAdditive ? 10 : 11)
//      (IVideoDriver +0xdc); when the renderer's getParameterID(2, 0) is not 0xffff the texture is stored in it.
//   4. setMaterial(material), setSize(m_size) (IBillboard vtable +0x08), setPosition(m_position) (ISceneNode +0xa4)
//      and setVisible(false) (ISceneNode +0x48).
//   5. m_attachToActiveCamera = (m_attachTo == "ActiveCamera").
//   6. When that is false and m_attachTo is not empty, m_attachHandle = ObjectManager::GetObjectByName(m_attachTo, -1,
//      false, nullptr).
//   7. When m_attachHandle.GetObject(false) is a GameObject with a visual object (+0x2d8) whose m_node (+0x08) is set,
//      the node is added as a child of that node; with no (or a null) handle it is added to the scene manager's root
//      node. Both are addChild (vtable +0x5c).
//   8. The material and the texture references are released (the locals' destructors).
void Billboard::InitPost() {
    Application& application = ApplicationGetInstance();
    if (application.m_device == nullptr || application.m_device->videoDriver == nullptr) {
        return;   // host-necessitated guard: the original dereferences the device unconditionally
    }
    glitch::video::IVideoDriver* driver = application.m_device->videoDriver;   // +0x10
    glitch::scene::CSceneManager* sceneManager = DeviceSceneManager();         // +0x1c
    if (sceneManager == nullptr || driver->m_textureManager == nullptr ||
        driver->m_materialRendererManager == nullptr) {
        return;   // host-necessitated guard
    }

    boost::intrusive_ptr<glitch::video::ITexture> texture =
            driver->m_textureManager->getTexture(m_tga.c_str(), nullptr);      // IVideoDriver +0xe0
    if (texture.get() == nullptr) {
        return;
    }

    glitch::scene::ISceneNode* node = sceneManager->addSceneNode("billBoard", sceneManager->rootNode);  // vtable +0x5c
    m_billboardNode = static_cast<glitch::scene::CBillboardSceneNode*>(node);   // +0x178: the ISceneNode* of the billboard
    if (node == nullptr) {
        return;   // host-necessitated guard: the original dereferences the node unconditionally
    }
    ++static_cast<glitch::IReferenceCounted*>(node)->referenceCounter;          // one reference for the node

    boost::intrusive_ptr<glitch::video::CMaterial> material =
            driver->m_materialRendererManager->createMaterialInstance(
                    static_cast<glitch::video::E_MATERIAL_TYPE>(m_isAdditive ? 10 : 11));   // IVideoDriver +0xdc
    if (material.get() != nullptr && material->m_renderer.get() != nullptr) {
        const std::uint16_t parameterId =
                material->m_renderer->getParameterID(static_cast<glitch::video::E_SHADER_PARAMETER_TYPE>(2), 0);
        if (parameterId != 0xffff) {
            material->parameters.setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(parameterId, 0, texture);
        }
    }
    m_billboardNode->setMaterial(material);
    m_billboardNode->setSize(m_size);                                          // IBillboard vtable +0x08
    m_billboardNode->setPosition(m_position);                                  // ISceneNode vtable +0xa4
    m_billboardNode->setVisible(false);                                        // ISceneNode vtable +0x48

    m_attachToActiveCamera = (m_attachTo == "ActiveCamera");                   // +0x174
    if (!m_attachToActiveCamera && !m_attachTo.empty()) {
        m_attachHandle = dword_99F764->GetObjectByName(m_attachTo.c_str(), -1, false, nullptr);   // +0x168
    }

    glitch::scene::ISceneNode* holder = nullptr;
    GameObject* attached = m_attachHandle.GetObject(false) != nullptr ? static_cast<GameObject*>(m_attachHandle) : nullptr;
    if (attached != nullptr && attached->m_visualObject != nullptr) {          // GameObject +0x2d8
        holder = attached->m_visualObject->m_node;                             // VisualObject +0x08, a RootSceneNode (an ISceneNode)
    }
    if (holder == nullptr) {
        holder = sceneManager->rootNode;                                       // CSceneManager +0x04
    }
    if (holder != nullptr) {
        holder->addChild(m_billboardNode);                                     // vtable +0x5c
    }
}

// 0x387ba4 _ZN9BillboardD1Ev
// The node is dropped first (glitch::IReferenceCounted::drop through the ISceneNode virtual base of m_billboardNode;
// CBillboardSceneNode derives from ISceneNode, so the upcast is available), then the two strings and the ObjectBase
// base are destroyed by the compiler in the original order.
Billboard::~Billboard() {
    if (m_billboardNode != nullptr) {
        m_billboardNode->drop();   // the ISceneNode's IReferenceCounted virtual base
    }
}

// 0x387c1c _ZN9BillboardD0Ev
// skipped: the compiler generates the deleting destructor (~Billboard() followed by CustomFree(this)). A delete expression
// produces it, so no source is written for it.

// 0x387c38 _ZN9BillboardD2Ev
// Same body as the D1 destructor at 0x387ba4. The C++ destructor above is the one definition, so the partial note applies here too.

// 0x387d84 _ZN9BillboardC2EN10ObjectBase6GO_IDSE
// 0x38815c _ZN9BillboardC1EN10ObjectBase6GO_IDSE
// Both addresses have the same body. One C++ constructor covers them.
Billboard::Billboard(ObjectBase::GO_IDS id) : ObjectBase(id) {
    unk_85 = 1;                      // +0x85 updating flag, set by the constructor
    m_size = {};                     // +0x150 zero
    m_position = {};                 // +0x158 zero
    m_isAdditive = false;            // +0x164
    m_attachToActiveCamera = false;  // +0x174
    m_billboardNode = nullptr;       // +0x178
    // m_tga and m_attachTo are default constructed (the original allocates their 16-byte buffers, which is not observable).
    // m_attachHandle is default constructed by ObjectHandle().
}

// 0x387fc4 _ZN9Billboard17DeclarePropertiesEv
// The base properties are not re-registered here; the original builds every entry of this class directly:
// "tga" and "AttachTo" (std::string), then two SimpleTypeProperty objects built by hand for the types without a
// PropertyMap::AddProperty<T> instantiation:
//   "position": SimpleTypeProperty<glitch::core::vector3d<float>> (operator new 0x2c), field m_position, default (0, 0, 0);
//   "size":     SimpleTypeProperty<glitch::core::dimension2d<float>> (operator new 0x28), field m_size, default (0, 0);
//   "isAdditive": SimpleTypeProperty<bool> (operator new 0x24), field m_isAdditive, default false.
// The field offsets are stored relative to the PropertyMap (Billboard +0x04). The original returns the map slot of the
// last property; the virtual is void, so the value is dropped.
void Billboard::DeclareProperties() {
    AddProperty<std::string>("tga", m_tga);
    AddProperty<std::string>("AttachTo", m_attachTo);
    // PropertyMap::AddProperty<T> has no out-of-line instance for these two types (the binary inlines the
    // SimpleTypeProperty construction at the AddProperty<T> site), so the property object is built here and registered
    // through the raw-pointer overload. Its object argument is the PropertyMap subobject (what AddProperty<T> passes as
    // this; the original's Billboard +0x04), by typed conversion instead of a 32-bit byte offset.
    PropertyMap* map = this;
    map->AddProperty("position",
                     new SimpleTypeProperty<glitch::core::vector3d<float>>(
                             map, "position", &m_position,
                             glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f}));
    map->AddProperty("size",
                     new SimpleTypeProperty<glitch::core::dimension2d<float>>(
                             map, "size", &m_size,
                             glitch::core::dimension2d<float>{0.0f, 0.0f}));
    AddProperty<bool>("isAdditive", m_isAdditive, false);
}
