// Batch g1-game-world-LightBase-85fa51-0 (redo pass r2a-game-world-LightBase-85fa51-0 completed the bodies in place):
// LightBase update and sync hooks, scene attach and detach hooks, the debug draw hook, constructor and destructor,
// property declaration, the colour and attenuation setters. Declarations come from dh2/LightBase.hpp. Bodies are in
// address order.
//
// The light data is glitch::video::CLight, reached through CLightSceneNode::light (the node light is at +0x134); both come from the
// canonical headers of the engine unification wave.

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/LightBase.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/Draw3DWireFrameBox.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/light.hpp"

namespace {

// Vec3f_Origin (ELF .bss 0x99f854), the zero Point3D<float> global. Same value as in CameraBase.
constexpr Point3D<float> kVec3fOrigin{0.0f, 0.0f, 0.0f};

}  // namespace

// 0x40a708 LightBase::RefreshAttachment()
void LightBase::RefreshAttachment() {}

// 0x40a70c LightBase::IsUpdatable() const
bool LightBase::IsUpdatable() const {
    return true;
}

// 0x40a714 LightBase::Update()
// The original calls vtable slot +0x5c (SyncData) on this. The call is virtual here too.
void LightBase::Update() {
    SyncData();
}

// 0x40a728 LightBase::TurnOn()
// Adds the light node to the root node of the device scene manager (ISceneNode::addChild, vtable +0x5c).
void LightBase::TurnOn() {
    DeviceSceneManager()->rootNode->addChild(m_irrLight);
}

// 0x40a768 LightBase::TurnOff()
// Removes the light node from its parent (ISceneNode::remove, vtable +0x68).
void LightBase::TurnOff() {
    m_irrLight->remove();
}

// 0x40a784 LightBase::Draw() const
// With the IsRenderingLightPosition switch on and a light node present, a wire box of half-size 10 around the node absolute
// position is drawn in colour 0x8500ffff.
void LightBase::Draw() const {
    if (DebugSwitches::GetInstance()->GetSwitch("IsRenderingLightPosition") && m_irrLight != nullptr) {
        const glitch::core::vector3d<float> position = m_irrLight->getAbsolutePosition();
        glitch::core::aabbox3d<float> box;
        box.MinEdge = {position.X - 10.0f, position.Y - 10.0f, position.Z - 10.0f};
        box.MaxEdge = {position.X + 10.0f, position.Y + 10.0f, position.Z + 10.0f};
        glitch::video::SColor color;
        color.color = 0x8500ffffu;
        Draw3DWireFrameBox(box, color);
    }
}

// 0x40a8f8 LightBase::SyncData()
// When m_dae is empty or the TestMultiPlayerLight switch is on, the members are copied into the light of the node: radius (only
// above 0.01), attenuation, ambient, diffuse and specular colours (alpha 1.0).
void LightBase::SyncData() {
    if (m_dae.empty() || DebugSwitches::GetInstance()->GetSwitch("TestMultiPlayerLight")) {
        boost::intrusive_ptr<glitch::video::CLight> light = m_irrLight->light;   // node +0x134
        if (m_radius > 0.01f) {
            light->m_radius = m_radius;                  // +0x40
        }
        light->m_attenuation.X = m_attenuation.X;        // +0x34
        light->m_attenuation.Y = m_attenuation.Y;
        light->m_attenuation.Z = m_attenuation.Z;
        light->m_ambientColor = glitch::video::SColorf{m_ambientColor.X, m_ambientColor.Y, m_ambientColor.Z, 1.0f};     // +0x04
        light->m_diffuseColor = glitch::video::SColorf{m_diffuseColor.X, m_diffuseColor.Y, m_diffuseColor.Z, 1.0f};     // +0x14
        light->m_specularColor = glitch::video::SColorf{m_specularColor.X, m_specularColor.Y, m_specularColor.Z, 1.0f}; // +0x24
    }
}

// 0x40aaa0 LightBase::~LightBase()   (D1, complete object)
// 0x40ab34 LightBase::~LightBase()   (D2, base object: same body, compiler-generated)
// 0x40ab18 LightBase::~LightBase()   (D0, deleting destructor: compiler-generated for delete, not defined here)
// Drops the light node through its IReferenceCounted virtual base and clears the pointer. The member destructors (m_dae) and
// ~ObjectBase run as in C++.
LightBase::~LightBase() {
    if (m_irrLight != nullptr) {
        m_irrLight->drop();
        m_irrLight = nullptr;
    }
}

// 0x40aba4 LightBase::LightBase(ObjectBase::GO_IDS)   (C1, complete object)
// 0x40ac58 LightBase::LightBase(ObjectBase::GO_IDS)   (C2, base object: same body, compiler-generated)
LightBase::LightBase(GO_IDS id) : ObjectBase(id) {
    m_irrLight = nullptr;                // +0x120
    m_position = Point3D<float>{};       // +0x124
    // +0x130 (radius) and +0x164 (automatic) are not written by the original constructor, so they are not set here.
    m_attenuation = Point3D<float>{};    // +0x134
    m_ambientColor = Point3D<float>{};   // +0x140
    m_diffuseColor = Point3D<float>{};   // +0x14c
    m_specularColor = Point3D<float>{};  // +0x158
    unk_85 = 1;                          // ObjectBase +0x85, set by LightBase on construction
}

// 0x40adf0 LightBase::DeclareProperties()
// Properties in the original order: position, radius (default 2.0), attenuation, ambientColor, diffuseColor,
// specularColor, automatic (default false), dae (default empty).
void LightBase::DeclareProperties() {
    AddProperty<Point3D<float>>("position", m_position, kVec3fOrigin);
    AddProperty<float>("radius", m_radius, 2.0f);
    AddProperty<Point3D<float>>("attenuation", m_attenuation, Point3D<float>{});
    AddProperty<Point3D<float>>("ambientColor", m_ambientColor, Point3D<float>{});
    AddProperty<Point3D<float>>("diffuseColor", m_diffuseColor, Point3D<float>{});
    AddProperty<Point3D<float>>("specularColor", m_specularColor, Point3D<float>{});
    AddProperty<bool>("automatic", m_automatic, false);
    AddProperty<std::string>("dae", m_dae);
}

// 0x40b0c0 LightBase::InitPost()
// The colours are divided by 255 (component by component), attenuation y by 1e3 and z by 1e6. A non-empty m_dae loads that scene
// and takes the first light of the loaded root (the root is added to the scene root and the loaded scene reference dropped).
// Without a light a new CLightSceneNode is created and added to the scene root. The node is grabbed; an automatic light is
// registered with the light set manager of the scene manager. Finally SyncData() (vtable +0x5c).
void LightBase::InitPost() {
    // Point3D<float>::operator/= (0x34d04c) divides each component. The three colours are divided component by component.
    for (Point3D<float>* color : {&m_ambientColor, &m_diffuseColor, &m_specularColor}) {
        color->X /= 255.0f;
        color->Y /= 255.0f;
        color->Z /= 255.0f;
    }
    m_attenuation.Y /= 1000.0f;     // +0x138
    m_attenuation.Z /= 1000000.0f;  // +0x13c

    if (!m_dae.empty()) {
        glitch::scene::ISceneNode* loaded = DeviceSceneManager()->LoadScene(m_dae.c_str(), "", false, false);
        if (loaded != nullptr) {
            glitch::collada::CRootSceneNode* root = static_cast<glitch::collada::CRootSceneNode*>(loaded);
            m_irrLight = root->lights.empty() ? nullptr : *root->lights.begin();   // root +0x188
            DeviceSceneManager()->rootNode->addChild(m_irrLight);
            loaded->drop();
        }
    }
    if (m_irrLight == nullptr) {
        glitch::scene::CLightSceneNode* node = new glitch::scene::CLightSceneNode(true);
        m_irrLight = node;
        DeviceSceneManager()->rootNode->addChild(node);
        m_irrLight->drop();
        if (m_irrLight == nullptr) {
            // ASSERT(m_irrLight && "Can't create a Light scene node") at LightBase.cpp:94
        }
    }
    ++m_irrLight->referenceCounter;   // grab: the count of the IReferenceCounted base
    if (m_automatic) {
        DeviceSceneManager()->m_lightSetManager.unk_190.push_back(this);
    }
    SyncData();
}

// 0x40b3c8 LightBase::SetAttenuation(Point3D<float>)
// The member and the light get the attenuation (x as given, y divided by 1e3, z divided by 1e6, single precision).
void LightBase::SetAttenuation(Point3D<float> attenuation) {
    boost::intrusive_ptr<glitch::video::CLight> light = m_irrLight->light;
    m_attenuation.X = attenuation.X;                  // +0x134
    m_attenuation.Y = attenuation.Y;
    m_attenuation.Z = attenuation.Z;
    m_attenuation.Y = attenuation.Y / 1000.0f;
    m_attenuation.Z = attenuation.Z / 1000000.0f;
    light->m_attenuation.X = attenuation.X;
    light->m_attenuation.Y = attenuation.Y / 1000.0f;
    light->m_attenuation.Z = attenuation.Z / 1000000.0f;
}

// 0x40b498 LightBase::setLightNode(glitch::scene::CLightSceneNode*)
// Takes the node (the old one is dropped) and reads the light values back into the members; the node is grabbed.
void LightBase::setLightNode(glitch::scene::CLightSceneNode* node) {
    if (m_irrLight != nullptr) {
        m_irrLight->drop();
        m_irrLight = nullptr;
    }
    m_irrLight = node;
    boost::intrusive_ptr<glitch::video::CLight> light = node->light;
    m_attenuation.X = light->m_attenuation.X;
    m_attenuation.Y = light->m_attenuation.Y;
    m_attenuation.Z = light->m_attenuation.Z;
    m_ambientColor = Point3D<float>{light->m_ambientColor.r, light->m_ambientColor.g, light->m_ambientColor.b};
    m_diffuseColor = Point3D<float>{light->m_diffuseColor.r, light->m_diffuseColor.g, light->m_diffuseColor.b};
    m_specularColor = Point3D<float>{light->m_specularColor.r, light->m_specularColor.g, light->m_specularColor.b};
    m_radius = light->m_radius;
    ++m_irrLight->referenceCounter;   // grab: the count of the IReferenceCounted base
}

// 0x40b5c8 LightBase::SetSpecularColor(Point3D<float>)
// The member and the light specular colour (alpha 1.0).
void LightBase::SetSpecularColor(Point3D<float> color) {
    boost::intrusive_ptr<glitch::video::CLight> light = m_irrLight->light;
    m_specularColor = color;
    light->m_specularColor = glitch::video::SColorf{color.X, color.Y, color.Z, 1.0f};
}

// 0x40b674 LightBase::SetDiffuseColor(Point3D<float>)
// The member and the light diffuse colour (alpha 1.0).
void LightBase::SetDiffuseColor(Point3D<float> color) {
    boost::intrusive_ptr<glitch::video::CLight> light = m_irrLight->light;
    m_diffuseColor = color;
    light->m_diffuseColor = glitch::video::SColorf{color.X, color.Y, color.Z, 1.0f};
}

// 0x40b720 LightBase::SetAmbientColor(Point3D<float>)
// The member and the light ambient colour (alpha 1.0).
void LightBase::SetAmbientColor(Point3D<float> color) {
    boost::intrusive_ptr<glitch::video::CLight> light = m_irrLight->light;
    m_ambientColor = color;
    light->m_ambientColor = glitch::video::SColorf{color.X, color.Y, color.Z, 1.0f};
}
