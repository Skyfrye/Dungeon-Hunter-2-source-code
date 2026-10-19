// Test for batch g1-game-world-LightPoint-851d0a-0.
//
// Covers the logic that runs without the engine: GetIdsFromName's name parsing, and AssignTweaker's table writes into
// the player light tweaker (index limits, the null-light gate, the attenuation copy and the byte packing of the colours).
//
// No LightPoint is constructed (its base constructor belongs to another batch). The LightPoint, the Application
// singleton and the two PlayerLightTweaker objects are zero-filled storage, and only qualified (non-virtual) calls are
// made. The name is a real std::string, placement-built into the zero-filled ObjectBase::m_name.
//
// The stubs below satisfy the link for the symbols the source refers to but these checks do not run: the LightBase
// members the constructor and the destructor reach, the ObjectHandle and ObjectManager lookups, the debug switches, the
// PlayerManager lookup, the PropertyMap template instantiations used by DeclareProperties, and the LightPoint vtable's
// inherited entries. The globals (Vec3f_Origin, the ObjectManager and PlayerManager instances) are defined here as
// dh2/global/*.hpp say the integrator defines them once.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LightPoint.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerLightTweaker.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/Vec3f_Origin.hpp"

// ---- globals (defined here, see the header comment) --------------------------------------------------------------

Point3D<float> Vec3f_Origin{0.0f, 0.0f, 0.0f};
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

// ---- zero-filled storage -----------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(LightPoint) unsigned char g_lightStorage[sizeof(LightPoint)];
alignas(PlayerLightTweaker) unsigned char g_tweakerStorage[2][sizeof(PlayerLightTweaker)];
unsigned char g_fakeLightNode[64];  // stands in for the CLightSceneNode; never dereferenced by the checked bodies

LightPoint* Light() {
    return reinterpret_cast<LightPoint*>(g_lightStorage);
}

PlayerLightTweaker* Tweaker(int set) {
    return reinterpret_cast<PlayerLightTweaker*>(g_tweakerStorage[set]);
}

// Sets up a zero-filled light, the test application and two tweakers. The light's name is built in place.
void ResetFixtures(const char* name) {
    std::memset(g_lightStorage, 0, sizeof g_lightStorage);
    std::memset(g_tweakerStorage, 0, sizeof g_tweakerStorage);
    std::memset(g_appStorage, 0, sizeof g_appStorage);
    LightPoint* light = Light();
    new (&light->m_name) std::string(name);
    Application* app = reinterpret_cast<Application*>(g_appStorage);
    app->m_playerLightTweakers[0] = Tweaker(0);
    app->m_playerLightTweakers[1] = Tweaker(1);
}

// Sentinel pointers in a tweaker's m_lights, so a write can be seen.
void FillLightSentinels(PlayerLightTweaker* tweaker, LightBase* value) {
    for (LightBase*& slot : tweaker->m_lights) {
        slot = value;
    }
}

}  // namespace

// ---- link stubs --------------------------------------------------------------------------------------------------

// ApplicationGetInstance: the test's zero-filled application object.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

// The LightBase and ObjectBase members that the LightPoint constructor, destructor and vtables refer to. The checks here
// do not run them, and they are empty: the storage is never constructed by these bodies.
namespace sfc::script::lua {
UserData::~UserData() {}
const char* UserData::getUDTypeName() const {
    return "";
}
void UserData::createBindings(Binder&) {}
}  // namespace sfc::script::lua

void ISerializable::Serialize(IStreamBase*) {}
void ISerializable::Deserialize(IStreamBase*) {}
ConditionData::ConditionData() {}
ConditionData::~ConditionData() {}

ObjectBase::ObjectBase(GO_IDS) {}
ObjectBase::~ObjectBase() {}
void ObjectBase::DeclareProperties() {}
void ObjectBase::InitPost() {}
bool ObjectBase::IsUpdatable() const {
    return false;
}
void ObjectBase::Serialize(IStreamBase*) {}
void ObjectBase::Deserialize(IStreamBase*) {}
void ObjectBase::Enabled() {}
void ObjectBase::Disabled() {}
void ObjectBase::PopulateOutgoingNetStruct(bool) {}
void ObjectBase::InterpretIncomingNetStruct(bool) {}
void ObjectBase::SetVisible(bool) {}
void ObjectBase::setUpdating(bool) {}
bool ObjectBase::IsGameObject() const {
    return false;
}
bool ObjectBase::IsCharacter() const {
    return false;
}
bool ObjectBase::IsPlayer() const {
    return false;
}
bool ObjectBase::IsDead() const {
    return false;
}
bool ObjectBase::IsRemotelyUpdated() const {
    return false;
}

LightBase::LightBase(GO_IDS id) : ObjectBase(id) {}
LightBase::~LightBase() {}
void LightBase::Update() {}
void LightBase::InitPost() {}
void LightBase::DeclareProperties() {}
void LightBase::Draw() const {}
bool LightBase::IsUpdatable() const {
    return true;
}
void LightBase::RefreshAttachment() {}
void LightBase::SyncData() {}
void LightBase::TurnOn() {}
void LightBase::TurnOff() {}

// ObjectHandle members used by the LightPoint body. The checks do not run them.
ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0xFFFFFFFFu) {}
ObjectHandle::ObjectHandle(ObjectBase*) : ObjectHandle() {}
ObjectBase* ObjectHandle::GetObject(bool) {
    return nullptr;
}
ObjectHandle::operator GameObject*() {
    return nullptr;
}

ObjectHandle ObjectManager::GetObjectByName(char const*, int, bool, char const*) {
    return ObjectHandle();
}

PlayerInfo* PlayerManager::GetLocalPlayer(int, bool) {
    return nullptr;
}

DebugSwitches DebugSwitches::s_inst;
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

// PropertyMap::AddProperty, the two templates DeclareProperties uses (their bodies live in PropertyMap.cpp).
template <typename T>
void PropertyMap::AddProperty(const char*, T&, T) {}
template <typename T>
void PropertyMap::AddProperty(const char*, T&) {}
template void PropertyMap::AddProperty<Point3D<float>>(const char*, Point3D<float>&, Point3D<float>);
template void PropertyMap::AddProperty<std::string>(const char*, std::string&);

// ---- checks ------------------------------------------------------------------------------------------------------

namespace {

void CheckGetIdsFromName() {
    const char* prefix = "_prim_PlayerLight_";
    struct Case {
        const char* name;
        int index;
        int sub;
        char tag;
    };
    const Case cases[] = {
        {"_prim_PlayerLight_S", 0, 4, '0'},
        {"_prim_PlayerLight_0", 0, 0, '0'},
        {"_prim_PlayerLight_3", 3, 3, '3'},
        {"_prim_PlayerLight_9", 9, 9, '9'},
    };
    for (const Case& c : cases) {
        ResetFixtures(c.name);
        int index = -1;
        int sub = -1;
        char tag = 'x';
        const bool result = Light()->GetIdsFromName(prefix, index, sub, tag);
        EXPECT(result);
        EXPECT(index == c.index);
        EXPECT(sub == c.sub);
        EXPECT(tag == c.tag);
    }
}

void CheckAssignTweakerWrites() {
    ResetFixtures("_prim_PlayerLight_S");
    LightPoint* light = Light();
    LightBase* sentinel = reinterpret_cast<LightBase*>(&g_fakeLightNode[0]);
    FillLightSentinels(Tweaker(1), sentinel);

    // The light is attached (m_irrLight non-null), its attenuation and colours are set as InitPost leaves them.
    light->m_irrLight = reinterpret_cast<glitch::scene::CLightSceneNode*>(&g_fakeLightNode[0]);
    light->m_attenuation = Point3D<float>{0.5f, 0.25f, 2.0f};
    light->m_ambientColor = Point3D<float>{0.5f, 0.25f, 1.0f};   // bytes 127, 63, 255, 255
    light->m_diffuseColor = Point3D<float>{2.0f, 0.0f, 0.5f};    // 510 keeps its low byte 254; bytes 254, 0, 127, 255
    light->m_specularColor = Point3D<float>{-1.0f, 0.0f, 1.0f};  // negative saturates to 0; bytes 0, 0, 255, 255

    light->AssignTweaker(1, 2);
    PlayerLightTweaker* tweaker = Tweaker(1);
    EXPECT(tweaker->m_lights[2] == light);
    EXPECT(tweaker->m_lights[1] == sentinel);
    EXPECT(tweaker->m_lights[3] == sentinel);
    EXPECT(tweaker->m_attenuation[2].X == 0.5f);
    EXPECT(tweaker->m_attenuation[2].Y == 0.25f);
    EXPECT(tweaker->m_attenuation[2].Z == 2.0f);
    EXPECT(tweaker->m_ambientColor[2].component(0) == 127);
    EXPECT(tweaker->m_ambientColor[2].component(1) == 63);
    EXPECT(tweaker->m_ambientColor[2].component(2) == 255);
    EXPECT(tweaker->m_ambientColor[2].component(3) == 255);
    EXPECT(tweaker->m_diffuseColor[2].component(0) == 254);
    EXPECT(tweaker->m_diffuseColor[2].component(1) == 0);
    EXPECT(tweaker->m_diffuseColor[2].component(2) == 127);
    EXPECT(tweaker->m_diffuseColor[2].component(3) == 255);
    EXPECT(tweaker->m_specularColor[2].component(0) == 0);
    EXPECT(tweaker->m_specularColor[2].component(1) == 0);
    EXPECT(tweaker->m_specularColor[2].component(2) == 255);
    EXPECT(tweaker->m_specularColor[2].component(3) == 255);
    // Packed as one word: byte 0 is the low byte.
    EXPECT(tweaker->m_ambientColor[2].color == (127u | (63u << 8) | (255u << 16) | (255u << 24)));

    // Index 0 of the other tweaker is untouched.
    EXPECT(Tweaker(0)->m_lights[2] == nullptr);
}

void CheckAssignTweakerGates() {
    // An index above 4 writes nothing, even though the index is otherwise valid.
    ResetFixtures("_prim_PlayerLight_S");
    LightPoint* light = Light();
    LightBase* sentinel = reinterpret_cast<LightBase*>(&g_fakeLightNode[0]);
    FillLightSentinels(Tweaker(0), sentinel);
    light->m_irrLight = reinterpret_cast<glitch::scene::CLightSceneNode*>(&g_fakeLightNode[0]);
    light->m_ambientColor = Point3D<float>{1.0f, 1.0f, 1.0f};
    light->AssignTweaker(0, 5);
    light->AssignTweaker(0, -1);
    for (int i = 0; i < 5; ++i) {
        EXPECT(Tweaker(0)->m_lights[i] == sentinel);
    }

    // With no light node (m_irrLight null), nothing is written either.
    ResetFixtures("_prim_PlayerLight_S");
    light = Light();
    FillLightSentinels(Tweaker(0), sentinel);
    light->m_irrLight = nullptr;
    light->AssignTweaker(0, 1);
    for (int i = 0; i < 5; ++i) {
        EXPECT(Tweaker(0)->m_lights[i] == sentinel);
    }
}

}  // namespace

int main() {
    CheckGetIdsFromName();
    CheckAssignTweakerWrites();
    CheckAssignTweakerGates();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("LightPoint checks passed\n");
    return 0;
}
