// Batch g1-game-world-LightPoint-851d0a-0 (part 1 of 1): LightPoint, a light that follows another object.
// Declarations come from dh2/LightPoint.hpp. Bodies are in address order.
//
// Partial bodies (the reasons are in each comment and in the ledger rows):
//   - The scene manager the original uses is the word at IDevice +0x1c, reached through Application::m_device
//     (the global dword_99F73C is Singleton<Application>::s_inst +0x10). No header in the tree declares that word,
//     so the LightSetManager calls on the scene manager (LightSetManager at SceneManager +0x294) are not bound.
//     dh2/SceneManager.hpp carries LightSetManager as a byte array, so it is not usable as an object either.
//   - glitch::scene::CLightSceneNode is only forward-declared in the tree. Its ISceneNode base (setPosition at
//     vtable K 0xa4, see scene/ISceneNode.hpp) and its light member (the CLight pointer at node +0x134) cannot be
//     reached from here.
//
// The LightPoint side of every body is reconstructed.

#include <cstdint>
#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/LightSetManager.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CLightSceneNode.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LightPoint.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerLightTweaker.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-shared/glitch_core.hpp"  // glitch::video::SColor

namespace {

// The original turns one colour component into a byte as (unsigned int)(component * 255.0): a double multiply and
// __aeabi_d2uiz, which truncates and saturates (0 for values below 0 and NaN, 0xffffffff above the range). The byte
// store keeps the low eight bits.
std::uint8_t LightColorByte(float component) {
    const double scaled = static_cast<double>(component) * 255.0;
    std::uint32_t truncated = 0;
    if (scaled > 0.0) {
        truncated = scaled >= 4294967295.0 ? 0xffffffffu : static_cast<std::uint32_t>(scaled);
    }
    return static_cast<std::uint8_t>(truncated);
}

// A tweaker colour word as the original writes it: byte 0 is the first component, byte 1 the second, byte 2 the
// third, and byte 3 (alpha) is 0xff.
glitch::video::SColor PackLightColor(const Point3D<float>& color) {
    glitch::video::SColor packed;
    packed.setComponent(0, LightColorByte(color.X));
    packed.setComponent(1, LightColorByte(color.Y));
    packed.setComponent(2, LightColorByte(color.Z));
    packed.setComponent(3, 0xffu);
    return packed;
}

}  // namespace

// 0x40b7cc LightPoint::GetIdsFromName(char const*,int &,int &,char &)
// Reads the character after the prefix in the light's name (ObjectBase m_name, whose C string is the word at +0x44).
// 'S' gives index 0, sub 4 and tag '0'. Any other character c gives index and sub c - '0' and tag c, which is what the
// original's arithmetic reduces to (its tag is (c - '0') + '0'). Always returns true.
bool LightPoint::GetIdsFromName(const char* prefix, int& index, int& sub, char& tag) {
    const int c = m_name.c_str()[std::strlen(prefix)];
    if (c == 'S') {
        index = 0;
        sub = 4;
        tag = '0';
    } else {
        index = c - '0';
        sub = index;
        tag = static_cast<char>(c);
    }
    return true;
}

// 0x40b828 LightPoint::AssignTweaker(int,int)
// The original does nothing when index is above 4 (unsigned compare) or when m_irrLight is null. Otherwise it first
// calls LightSetManager::SetLight(set, index, m_irrLight->light) on the device's scene manager (DeviceSceneManager,
// LightSetManager at +0x294). The tweaker writes that follow go to
// Application::m_playerLightTweakers[set] (Application +0x58) at the original offsets of PlayerLightTweaker:
// m_lights +0x128, m_attenuation +0x7c, m_ambientColor +0xb8, m_diffuseColor +0xcc and m_specularColor +0xe0.
// The original does not check set against the four tweakers, and neither does this body.
void LightPoint::AssignTweaker(int set, int index) {
    if (static_cast<unsigned int>(index) > 4u || m_irrLight == nullptr) {
        return;
    }
    if (SceneManager* scene = DeviceSceneManager()) {
        scene->m_lightSetManager.SetLight(set, index, m_irrLight->light);
    }
    PlayerLightTweaker* tweaker = ApplicationGetInstance().m_playerLightTweakers[set];
    tweaker->m_lights[index] = this;  // +0x128 + 4 * index
    tweaker->m_attenuation[index] = glitch::core::vector3d<float>{m_attenuation.X, m_attenuation.Y, m_attenuation.Z};
    tweaker->m_ambientColor[index] = PackLightColor(m_ambientColor);
    tweaker->m_diffuseColor[index] = PackLightColor(m_diffuseColor);
    tweaker->m_specularColor[index] = PackLightColor(m_specularColor);
}

// 0x40ba0c LightPoint::Update()
// The base update runs first. Only when m_irrLight is set does the light get its position: the attached object's
// position (GameObject m_position at +0x160) plus m_attachedOffset, or m_attachedOffset alone when no object is
// attached. The light node then takes that position through ISceneNode::setPosition (vtable slot K 0xa4).
void LightPoint::Update() {
    LightBase::Update();
    if (m_irrLight == nullptr) {
        return;
    }
    GameObject* attached = m_attachedHandle;
    Point3D<float> position = m_attachedOffset;
    if (attached != nullptr) {
        position.X = attached->m_position.X + m_attachedOffset.X;
        position.Y = attached->m_position.Y + m_attachedOffset.Y;
        position.Z = attached->m_position.Z + m_attachedOffset.Z;
    }
    m_irrLight->setPosition(glitch::core::vector3d<float>{position.X, position.Y, position.Z});
}

// 0x40bac0 LightPoint::RefreshAttachment()
// A light named "_prim_PlayerLight_..." attaches to the local player's character (PlayerCharacter_0 when the player has
// no character) and takes its tweaker through AssignTweaker(0, 0). Then, when m_attachedTo is not empty, the named
// object is looked up through the ObjectManager and kept as m_attachedHandle when it resolves. A player head light
// that is not added yet is added to the light set, unless the EnablePlayerHeadLight debug switch is set. Then the
// flag is set and m_attachedHandle is reset to the null handle.
// partial: the light set call, LightSetManager::AddActiveLight(found, m_irrLight) on the device's scene manager
// (IDevice +0x1c, LightSetManager at SceneManager +0x294). The device's scene manager is not declared in the tree, so
// the call is made when a scene manager exists. The flag and the handle reset that follow it are bound too.
void LightPoint::RefreshAttachment() {
    if (std::strncmp("_prim_PlayerLight_", m_name.c_str(), 18) == 0) {
        m_attachedTo = "PlayerCharacter_0";
        Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // PlayerInfo +0x660 (character_660)
        if (character != nullptr) {
            m_attachedTo = character->m_name;
        }
        AssignTweaker(0, 0);
    }
    if (!m_attachedTo.empty()) {
        ObjectHandle found = dword_99F764->GetObjectByName(m_attachedTo.c_str(), unk_64, false, nullptr);
        if (found.GetObject(false) != nullptr) {
            m_attachedHandle = found;
        }
        if (m_playerHeadLight && !m_addedToLightSet) {
            DebugSwitches::s_inst.load();
            const bool enablePlayerHeadLight = DebugSwitches::s_inst.GetSwitch("EnablePlayerHeadLight");
            if (!enablePlayerHeadLight) {
                if (SceneManager* scene = DeviceSceneManager()) {
                    scene->m_lightSetManager.AddActiveLight(found, m_irrLight);
                }
                m_addedToLightSet = true;
                m_attachedHandle = ObjectHandle(static_cast<ObjectBase*>(nullptr));
            }
        }
    }
}

// 0x40bcdc LightPoint::InitPost()
// Clears the two flags, runs LightBase::InitPost, stores 0 in the 16-bit Type field of m_irrLight's light
// (CLight +0x58; the node's light member is at CLightSceneNode +0x134, both declared now) and calls RefreshAttachment
// through its virtual slot (+0x58).
void LightPoint::InitPost() {
    m_playerHeadLight = false;  // +0x1b0
    m_addedToLightSet = false;  // +0x1b1
    LightBase::InitPost();
    if (m_irrLight != nullptr && m_irrLight->light.get() != nullptr) {
        m_irrLight->light->m_type = 0;  // CLight +0x58, the 16-bit store of the listing
    }
    RefreshAttachment();
}

// 0x40bd1c LightPoint::~LightPoint()   (D1, complete object)
// 0x40bd8c LightPoint::~LightPoint()   (D2, base object: same body, one C++ definition covers both)
// The original frees m_attachedTo's buffer, then runs ~LightBase. The member and base destruction of C++ does the same
// in the same order. 0x40bd70 (D0, deleting destructor) is compiler-generated for the delete expression and is not
// defined here.
LightPoint::~LightPoint() {}

// 0x40bdd8 LightPoint::LightPoint()   (C1, complete object)
// 0x40be5c LightPoint::LightPoint()   (C2, base object: same body, one C++ definition covers both)
// Builds the LightBase with GO id 19, starts m_attachedTo empty (the string's own storage), leaves m_attachedHandle as
// the default handle and zeroes m_attachedOffset. The two flags are not set here; InitPost clears them.
LightPoint::LightPoint() : LightBase(static_cast<ObjectBase::GO_IDS>(19)) {
    m_attachedOffset = Point3D<float>{};  // +0x1a4 .. +0x1ac
}

// 0x40bfc4 LightPoint::DeclareProperties()
// The base properties first, then "attachedTo" (a string, empty by default) and "attachedOffset" (a Point3D whose
// default is the zero vector Vec3f_Origin).
void LightPoint::DeclareProperties() {
    LightBase::DeclareProperties();
    AddProperty<std::string>("attachedTo", m_attachedTo);
    AddProperty<Point3D<float>>("attachedOffset", m_attachedOffset, Vec3f_Origin);
}
