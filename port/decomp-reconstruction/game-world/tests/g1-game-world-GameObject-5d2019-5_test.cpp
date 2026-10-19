// Test for batch g1-game-world-GameObject-5d2019-5.
//
// Covers the state that the non-virtual methods of this unit touch: GetTargetPosition (target node and visibility),
// SetDestination, IsAtDestination (waypoint list and distance rule) and SetRotation. The object is zero-filled and never
// constructed, as in the other GameObject tests. The waypoint list is constructed in place on PFObject::m_path.
//
// UpdateRotation is not covered here. It calls GetRotationSpeed() through the vtable, and a zero-filled object has no
// vtable to dispatch through. Its engine calls (ApplicationGetInstance, Application::GetDt and VisualObject::SyncRotation)
// are stubbed only so that the unit links. The Lua bindings in the unit are partial and are not called.

#include <cstdio>
#include <cstring>
#include <new>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/TimerTrap.hpp"
#include "dh2/TriggerTrap.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/Vec3f_K.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "pydata-accessors/w7_arrays27.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(GameObject) unsigned char g_storage[sizeof(GameObject)];
alignas(Application) unsigned char g_appStorage[sizeof(Application)];

GameObject* Storage() {
    return reinterpret_cast<GameObject*>(g_storage);
}

using PathList = decltype(PFObject::m_path);

}  // namespace

// Stubs for the engine calls that UpdateRotation makes. The test never calls UpdateRotation.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

int Application::GetDt() {
    return 0;
}

void VisualObject::SyncRotation() {}

// Stubs for the callees of the Lua bindings. No test calls a binding (their arguments need the Lua wrapper, which is not
// linked here); these definitions only let the unit link. The globals are the instances the bindings read.
namespace {

alignas(sfc::script::lua::Value) unsigned char g_valueStorage[sizeof(sfc::script::lua::Value)];
alignas(ObjectSearcher::BackupObjectList) unsigned char g_backupStorage[sizeof(ObjectSearcher::BackupObjectList)];

struct InitVec3fK {
    InitVec3fK() {
        Vec3f_K.X = 0.0f;
        Vec3f_K.Y = 0.0f;
        Vec3f_K.Z = 1.0f;
    }
} g_initVec3fK;

}  // namespace

static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
Point3D<float> Vec3f_K;

namespace Arrays {
std::uint32_t TimerTraps::size = 0;
std::uint32_t GameObjectDamager::size = 0;
std::uint32_t TriggerTraps::size = 0;
std::uint32_t AnimatedEffectTable::size = 0;
std::uint32_t CharacterTable::size = 0;
}  // namespace Arrays

namespace sfc {
namespace script {
namespace lua {
const Value& Arguments::operator[](unsigned int) const { return *reinterpret_cast<const Value*>(g_valueStorage); }
float Value::getNumber() const { return 0.0f; }
unsigned int Value::getUInteger() const { return 0; }
bool Value::getBool() const { return false; }
const char* Value::getString() const { return ""; }
UserData* Value::getUserData() const { return nullptr; }
void ReturnValues::pushNumber(float) {}
void ReturnValues::pushBoolean(bool) {}
void ReturnValues::pushUserData(UserData*) {}
void ReturnValues::pushPointer(void*) {}
}  // namespace lua
}  // namespace script
}  // namespace sfc

Character* Character::CreateNPC(int, const char*, bool) { return nullptr; }
void Character::SetInitialPosition(const Point3D<float>&) {}
void Character::AddCharOIDToCache(int, unsigned int) {}
int CharStateMachine::SM_SetSpawnState(bool, bool) { return 0; }
void GameObject::SetPosition(const Point3D<float>&, bool) {}
void GameObject::ForceUpdatePosition() {}
void GameObject::GetLookAtVec(Point3D<float>& out) const {
    out.X = 0.0f;
    out.Y = 0.0f;
    out.Z = 0.0f;
}
void GameObject::ZoneEntered() {}
ObjectHandle ObjectManager::GetObjectByName(char const*, int, bool, char const*) { return ObjectHandle(); }
void ObjectManager::AddNoRoomObject(GameObject*) {}
ObjectHandle::operator GameObject*() { return nullptr; }
bool RoomZone::AddInitialObject(GameObject*) { return false; }
void RootSceneNode::ForwardAnim(std::uint32_t) {}
float PhysicalObject::getRadius() const { return 0.0f; }
glitch::scene::ISceneNode* VisualObject::GetSpecificNode(const char*) const { return nullptr; }
glitch::core::vector3d<float> glitch::scene::ISceneNode::getAbsolutePosition() const {
    return glitch::core::vector3d<float>();
}

GameObject* TimerTrap::Create(GameObject*, int, int) { return nullptr; }
GameObject* TriggerTrap::Create(GameObject*, int, int) { return nullptr; }

ObjectHandle::ObjectHandle() {}
ObjectSearcher::IObjectList::~IObjectList() {}
ObjectSearcher::CharacterList::~CharacterList() {}
ObjectSearcher::PlayerList::~PlayerList() {}
ObjectSearcher::RoomObjectList::~RoomObjectList() {}
// The list objects are built on the stack by the bindings, so their vtables are emitted here; none of these is called.
// The BackupObjectList::Get below is a DELIBERATE stub that also replaces the library's real accessor for the whole
// executable (tests link with -Wl,--allow-multiple-definition and the first definition wins), so a later check that
// walks one through TargetList::Search or SearchRect would receive null and fault in the candidate test.
void ObjectSearcher::CharacterList::Reset() {}
bool ObjectSearcher::CharacterList::AtEnd() { return true; }
void ObjectSearcher::CharacterList::Next() {}
int ObjectSearcher::CharacterList::Size() { return 0; }
GameObject* ObjectSearcher::CharacterList::Get() { return nullptr; }
Character* ObjectSearcher::CharacterList::GetChar() { return nullptr; }
void ObjectSearcher::PlayerList::Reset() {}
bool ObjectSearcher::PlayerList::AtEnd() { return true; }
void ObjectSearcher::PlayerList::Next() {}
int ObjectSearcher::PlayerList::Size() { return 0; }
GameObject* ObjectSearcher::PlayerList::Get() { return nullptr; }
Character* ObjectSearcher::PlayerList::GetChar() { return nullptr; }
void ObjectSearcher::RoomObjectList::Reset() {}
bool ObjectSearcher::RoomObjectList::AtEnd() { return true; }
void ObjectSearcher::RoomObjectList::Next() {}
int ObjectSearcher::RoomObjectList::Size() { return 0; }
GameObject* ObjectSearcher::RoomObjectList::Get() { return nullptr; }
Character* ObjectSearcher::RoomObjectList::GetChar() { return nullptr; }
void ObjectSearcher::TargetList::BackupResults(const char*) {}
ObjectSearcher::BackupObjectList& ObjectSearcher::TargetList::GetResultsBackup(const char*) {
    return *reinterpret_cast<ObjectSearcher::BackupObjectList*>(g_backupStorage);
}
void ObjectSearcher::TargetList::SearchRect(const Point3D<float>&, float, float, ObjectSearcher::IObjectList&) {}

PFWorld::PFWorld() {}
PFWorld::~PFWorld() {}
template class Singleton<PFWorld>;
bool PFWorld::GetFloorHeightAt(const Point3D<float>&, float*, Point3D<float>*, PFRoom**, PFFloor**, bool) {
    return false;
}

VisualFXManager::VisualFXManager() {}
VisualFXManager::~VisualFXManager() {}
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {}
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}
template class Singleton<VisualFXManager>;
void VisualFXManager::PlayAnimFXSet(int, const GameObject*, AnimFXSetData*) {}
void VisualFXManager::PlayAnimFXSet(int, const Point3D<float>&, const GameObject*, AnimFXSetData*) {}
AnimatedFX* VisualFXManager::GrabAnimFX(int, GameObject*) { return nullptr; }

int main() {
    // GetTargetPosition: the target node's position only when there is a node and the object is visible.
    std::memset(g_storage, 0, sizeof g_storage);
    GameObject* go = Storage();
    go->m_position = Point3D<float>{1.0f, 2.0f, 3.0f};
    go->m_targetNodePos = Point3D<float>{7.0f, 8.0f, 9.0f};
    go->m_visible = true;

    EXPECT(&go->GetTargetPosition() == &go->m_position);  // no target node
    int nodeMarker = 0;
    go->m_targetNode = reinterpret_cast<glitch::scene::ISceneNode*>(&nodeMarker);  // never dereferenced
    EXPECT(&go->GetTargetPosition() == &go->m_targetNodePos);  // node and visible
    go->m_visible = false;
    EXPECT(&go->GetTargetPosition() == &go->m_position);  // node but hidden
    go->m_visible = true;
    go->m_targetNode = nullptr;
    EXPECT(&go->GetTargetPosition() == &go->m_position);  // visible but no node

    // SetDestination: copies the three components.
    go->SetDestination(Point3D<float>{3.0f, 4.0f, 5.0f});
    EXPECT(go->m_destination.X == 3.0f && go->m_destination.Y == 4.0f && go->m_destination.Z == 5.0f);

    // IsAtDestination with an empty waypoint list: squared XY distance from m_position to m_destination below 6400.
    std::memset(g_storage, 0, sizeof g_storage);
    go = Storage();
    new (&go->m_pfObject.m_path) PathList();  // the list is constructed in place
    go->m_position = Point3D<float>{0.0f, 0.0f, 0.0f};
    go->m_destination = Point3D<float>{30.0f, 40.0f, 0.0f};  // squared distance 2500
    EXPECT(go->IsAtDestination());
    go->m_destination = Point3D<float>{80.0f, 0.0f, 0.0f};  // squared distance 6400, not below it
    EXPECT(!go->IsAtDestination());
    go->m_destination = Point3D<float>{100.0f, 0.0f, 0.0f};
    EXPECT(!go->IsAtDestination());
    go->m_destination = Point3D<float>{0.0f, 0.0f, 1000.0f};  // height is ignored
    EXPECT(go->IsAtDestination());

    // IsAtDestination with a non-empty waypoint list: the target is the path end, not m_destination.
    const PFGInnerEdge* edge = reinterpret_cast<const PFGInnerEdge*>(&nodeMarker);  // stored, never dereferenced
    go->m_pfObject.m_path.push_back(edge);
    go->m_pfObject.m_pathEnd = Point3D<float>{10.0f, 0.0f, 0.0f};
    go->m_destination = Point3D<float>{500.0f, 0.0f, 0.0f};  // far away, but the path end is near
    EXPECT(go->IsAtDestination());
    go->m_pfObject.m_pathEnd = Point3D<float>{200.0f, 0.0f, 0.0f};
    go->m_destination = Point3D<float>{0.0f, 0.0f, 0.0f};  // near, but the path end is far
    EXPECT(!go->IsAtDestination());
    go->m_pfObject.m_path.clear();  // empty again: m_destination decides
    EXPECT(go->IsAtDestination());
    go->m_pfObject.m_path.~PathList();

    // SetRotation: m_rotation takes the three components and m_targetYaw takes Z. No visual is attached.
    std::memset(g_storage, 0, sizeof g_storage);
    go = Storage();
    go->SetRotation(Point3D<float>{0.1f, 0.2f, 0.3f});
    EXPECT(go->m_rotation.X == 0.1f && go->m_rotation.Y == 0.2f && go->m_rotation.Z == 0.3f);
    EXPECT(go->m_targetYaw == 0.3f);

    if (g_failures == 0) {
        std::printf("GameObject-5d2019-5: all checks passed\n");
        return 0;
    }
    std::printf("GameObject-5d2019-5: %d failures\n", g_failures);
    return 1;
}
