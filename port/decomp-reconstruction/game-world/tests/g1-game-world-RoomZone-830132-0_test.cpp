// Test for batch g1-game-world-RoomZone-830132-0.
//
// Covers the logic that runs without the engine: the constructor's initial state, the empty IsZonable, HasInside's
// inclusive X/Y box test, AddObject and RemoveObject on the circular list, HasBeenVisited and SetVisited (null owner and
// a zero-filled Module), Activate and DeActivate (the per-object calls, the tracing lookups and the ObjectManager
// hand-off), the two forwarding thunks and the complete destructor's list clear.
//
// Not covered: Update (it reads the level camera's frustum and the local player), AddInitialObject (it calls IsZonable
// through the vtable of a GameObject) and InitObjectList (partial).
//
// The RoomZone constructor and destructor are defined in the linked source, so the RoomZone vtable is emitted there and
// it refers to every virtual of the Zone and GameObject base chain. The stubs below supply those link symbols; the
// engine bodies stay out of the link. Each stub either returns a default or records the call. The room storage is
// zero-filled. Calls on it are qualified (non-virtual), except the constructor test, which places the object in place.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <list>
#include <new>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/Module.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Call records written by the stubs below.
int g_zoneEntered = 0;
int g_zoneExited = 0;
int g_addRoomCalls = 0;
int g_delRoomCalls = 0;
std::list<GameObject*>* g_lastAddList = nullptr;
std::list<GameObject*>* g_lastDelList = nullptr;
int g_switchLoads = 0;
int g_switchLookups = 0;
int g_zoneInitPost = 0;
int g_zoneDeclareProperties = 0;
int g_zoneDtor = 0;
int g_zoneCtorCalls = 0;

void ResetCounters() {
    g_zoneEntered = g_zoneExited = 0;
    g_addRoomCalls = g_delRoomCalls = 0;
    g_lastAddList = g_lastDelList = nullptr;
    g_switchLoads = g_switchLookups = 0;
    g_zoneInitPost = g_zoneDeclareProperties = g_zoneDtor = 0;
}

// Zero-filled storage for the room, a Module (only m_visited is touched) and the ObjectManager (only its address is used).
alignas(RoomZone) unsigned char g_roomStorage[sizeof(RoomZone)];
alignas(Module) unsigned char g_moduleStorage[sizeof(Module)];
alignas(ObjectManager) unsigned char g_managerStorage[sizeof(ObjectManager)];

RoomZone* MakeRoom() {
    std::memset(g_roomStorage, 0, sizeof g_roomStorage);
    RoomZone* room = reinterpret_cast<RoomZone*>(g_roomStorage);
    new (&room->m_objects) std::list<GameObject*>();
    return room;
}

Point3D<float> MakePoint(float x, float y, float z) {
    Point3D<float> p{};
    p.X = x;
    p.Y = y;
    p.Z = z;
    return p;
}

// Object tokens: AddObject and RemoveObject only compare and store the pointers, so addresses of ints will do.
int g_tokenA = 0;
int g_tokenB = 0;
int g_tokenC = 0;

}  // namespace

// ---- link stubs: the RoomZone bodies call these, and the RoomZone vtable refers to the virtuals below. ----

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() { ++g_switchLoads; }
bool DebugSwitches::GetSwitch(const std::string&) {
    ++g_switchLookups;
    return false;
}

static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

void ObjectManager::AddRoomObjects(std::list<GameObject*>* objects) {
    ++g_addRoomCalls;
    g_lastAddList = objects;
}
void ObjectManager::DelRoomObjects(std::list<GameObject*>* objects) {
    ++g_delRoomCalls;
    g_lastDelList = objects;
}

PlayerInfo* PlayerManager::GetLocalPlayer(int, bool) { return nullptr; }

Application& ApplicationGetInstance() { std::abort(); }
Level* Application::GetCurrentLevel() const { return nullptr; }

void GameObject::ZoneEntered() { ++g_zoneEntered; }
void GameObject::ZoneExited() { ++g_zoneExited; }

void ObjectBase::InterpretIncomingNetStruct(bool) {}
void ObjectBase::PopulateOutgoingNetStruct(bool) {}
void ObjectBase::setUpdating(bool) {}
bool ObjectBase::IsCharacter() const { return false; }
bool ObjectBase::IsPlayer() const { return false; }
bool ObjectBase::IsRemotelyUpdated() const { return false; }

bool GameObject::IsGameObject() const { return true; }
const char* GameObject::getUDTypeName() const { return "GameObject"; }
void GameObject::createBindings(sfc::script::lua::Binder&) {}
void GameObject::Serialize(IStreamBase*) {}
void GameObject::Deserialize(IStreamBase*) {}
void GameObject::InitFinal() {}
bool GameObject::IsUpdatingPath() const { return false; }
bool GameObject::IsUpdatingPositionFromVisual() const { return false; }
bool GameObject::IsUpdatingPositionFromPhysics() const { return false; }
bool GameObject::IsUpdatingRotationFromVisual() const { return false; }
bool GameObject::IsUpdatingRotationFromPhysics() const { return false; }
bool GameObject::IsUpdatingVisualWithRotation() const { return false; }
int GameObject::IsValidatingFloorPosition() const { return 0; }
bool GameObject::IsValidatingCameraLimits() const { return false; }
bool GameObject::IsAvoidingObstacles() const { return false; }
bool GameObject::IsAnimated() const { return false; }
bool GameObject::IsHit() const { return false; }
bool GameObject::IsInteractive(GameObject*) const { return false; }
bool GameObject::IsInteractiveEx(GameObject*) const { return false; }
int GameObject::GetInteractionType(GameObject*) const { return -1; }
float GameObject::GetInteractionRadius() const { return 0.0f; }
void GameObject::Interact(GameObject*) {}
void GameObject::SetRelativeAABB(const aabb<float>&, bool) {}
Point3D<float> GameObject::GetFXScale() const { return Point3D<float>{}; }
int GameObject::GetFXScaleValue() const { return -1; }
float GameObject::GetSpeed() const { return 4.0f; }
float GameObject::GetRotationSpeed() const { return -1.0f; }
GameObject* GameObject::GetFocusObject() const { return nullptr; }
bool GameObject::IsObstacle() const { return false; }
float GameObject::GetObstacleRadius() const { return 0.0f; }
float GameObject::GetObstacleStrength() const { return 0.0f; }
float GameObject::GetOpacity() const { return 1.0f; }
bool GameObject::IsDead() const { return false; }
bool GameObject::IsUpdatable() const { return false; }
void GameObject::SetVisible(bool) {}
void GameObject::Enabled() {}
void GameObject::Disabled() {}

// Zone's constructor and destructor. The RoomZone constructor and destructor call them, so the link needs their
// symbols. They are aliases of counting functions written in assembly: a C++ definition here would make this TU emit
// Zone's vtable, which pulls in every GameObject virtual. The Zone base object is not built, so the arguments are
// not checked.
extern "C" void rz_zone_ctor_stub() { ++g_zoneCtorCalls; }
extern "C" void rz_zone_dtor_stub() { ++g_zoneDtor; }
asm(".globl _ZN4ZoneC1EN10ObjectBase6GO_IDSEbb\n\t"
    ".set _ZN4ZoneC1EN10ObjectBase6GO_IDSEbb, rz_zone_ctor_stub\n\t"
    ".globl _ZN4ZoneC2EN10ObjectBase6GO_IDSEbb\n\t"
    ".set _ZN4ZoneC2EN10ObjectBase6GO_IDSEbb, rz_zone_ctor_stub\n\t"
    ".globl _ZN4ZoneD1Ev\n\t"
    ".set _ZN4ZoneD1Ev, rz_zone_dtor_stub\n\t"
    ".globl _ZN4ZoneD2Ev\n\t"
    ".set _ZN4ZoneD2Ev, rz_zone_dtor_stub\n");

void Zone::InitPost() { ++g_zoneInitPost; }
void Zone::DeclareProperties() { ++g_zoneDeclareProperties; }
void Zone::OnCollision(GameObject*) {}
void Zone::OnCollisionBegins(GameObject*) {}
void Zone::OnCollisionPersists(GameObject*) {}
void Zone::OnCollisionEnds(GameObject*) {}

int main() {
    dword_99F764 = reinterpret_cast<ObjectManager*>(g_managerStorage);

    // Constructor (C1, placed in the zero-filled storage): the Zone base call, then the RoomZone fields.
    {
        std::memset(g_roomStorage, 0, sizeof g_roomStorage);
        ResetCounters();
        RoomZone* room = new (g_roomStorage) RoomZone(static_cast<ObjectBase::GO_IDS>(11));
        CHECK(g_zoneCtorCalls == 1);
        CHECK(room->m_active);
        CHECK(room->unk_388);
        CHECK(!room->m_objectListInitialized);
        CHECK(room->unk_38c == nullptr);
        CHECK(room->m_objects.empty());
    }

    // IsZonable: a room is never zonable (qualified, so no vtable dispatch on the zero-filled storage).
    {
        RoomZone* room = MakeRoom();
        CHECK(!room->RoomZone::IsZonable());
    }

    // HasInside: inclusive X/Y box, Z ignored. The box is min (-10, -20, -30) and max (10, 20, 30).
    {
        RoomZone* room = MakeRoom();
        const float box[6] = {-10.0f, -20.0f, -30.0f, 10.0f, 20.0f, 30.0f};
        std::memcpy(room->m_absAabb, box, sizeof box);
        CHECK(room->HasInside(MakePoint(0.0f, 0.0f, 0.0f)));
        CHECK(room->HasInside(MakePoint(10.0f, 20.0f, 0.0f)));
        CHECK(room->HasInside(MakePoint(-10.0f, -20.0f, 99.0f)));
        CHECK(room->HasInside(MakePoint(0.0f, 0.0f, 1.0e6f)));
        CHECK(!room->HasInside(MakePoint(10.5f, 0.0f, 0.0f)));
        CHECK(!room->HasInside(MakePoint(-10.5f, 0.0f, 0.0f)));
        CHECK(!room->HasInside(MakePoint(0.0f, -20.5f, 0.0f)));
        CHECK(!room->HasInside(MakePoint(0.0f, 20.5f, 0.0f)));
    }

    // AddObject and RemoveObject: no duplicates, insertion order, RemoveObject of a missing object does nothing.
    {
        RoomZone* room = MakeRoom();
        GameObject* a = reinterpret_cast<GameObject*>(&g_tokenA);
        GameObject* b = reinterpret_cast<GameObject*>(&g_tokenB);
        GameObject* c = reinterpret_cast<GameObject*>(&g_tokenC);
        room->AddObject(a);
        room->AddObject(b);
        room->AddObject(a);
        CHECK(room->m_objects.size() == 2);
        CHECK(room->m_objects.front() == a);
        CHECK(room->m_objects.back() == b);
        room->RemoveObject(c);
        CHECK(room->m_objects.size() == 2);
        room->RemoveObject(a);
        CHECK(room->m_objects.size() == 1);
        CHECK(room->m_objects.front() == b);
        room->RemoveObject(b);
        CHECK(room->m_objects.empty());
    }

    // HasBeenVisited and SetVisited: no owning Module counts as visited and SetVisited does nothing; with a Module the
    // visited flag is Module::m_visited.
    {
        RoomZone* room = MakeRoom();
        CHECK(room->HasBeenVisited());
        room->SetVisited(false);
        CHECK(room->HasBeenVisited());

        std::memset(g_moduleStorage, 0, sizeof g_moduleStorage);
        Module* module = reinterpret_cast<Module*>(g_moduleStorage);
        module->m_visited = false;
        room->unk_38c = module;
        CHECK(!room->HasBeenVisited());
        room->SetVisited(true);
        CHECK(module->m_visited);
        CHECK(room->HasBeenVisited());
        room->SetVisited(false);
        CHECK(!module->m_visited);
    }

    // Activate: ZoneEntered per listed object, one tracing pair per object plus the leading one, then AddRoomObjects.
    {
        RoomZone* room = MakeRoom();
        room->AddObject(reinterpret_cast<GameObject*>(&g_tokenA));
        room->AddObject(reinterpret_cast<GameObject*>(&g_tokenB));
        ResetCounters();
        room->Activate();
        CHECK(g_zoneEntered == 2);
        CHECK(g_zoneExited == 0);
        CHECK(g_switchLoads == 3);
        CHECK(g_switchLookups == 3);
        CHECK(g_addRoomCalls == 1);
        CHECK(g_lastAddList == &room->m_objects);
        CHECK(g_delRoomCalls == 0);
    }

    // DeActivate: ZoneExited per listed object, then DelRoomObjects on the same list.
    {
        RoomZone* room = MakeRoom();
        room->AddObject(reinterpret_cast<GameObject*>(&g_tokenA));
        room->AddObject(reinterpret_cast<GameObject*>(&g_tokenB));
        room->AddObject(reinterpret_cast<GameObject*>(&g_tokenC));
        ResetCounters();
        room->DeActivate();
        CHECK(g_zoneExited == 3);
        CHECK(g_zoneEntered == 0);
        CHECK(g_switchLoads == 4);
        CHECK(g_switchLookups == 4);
        CHECK(g_delRoomCalls == 1);
        CHECK(g_lastDelList == &room->m_objects);
        CHECK(g_addRoomCalls == 0);
    }

    // Activate and DeActivate on an empty room: no object calls, the hand-off still happens.
    {
        RoomZone* room = MakeRoom();
        ResetCounters();
        room->Activate();
        CHECK(g_zoneEntered == 0);
        CHECK(g_switchLookups == 1);
        CHECK(g_addRoomCalls == 1);
        room->DeActivate();
        CHECK(g_zoneExited == 0);
        CHECK(g_switchLookups == 2);
        CHECK(g_delRoomCalls == 1);
    }

    // Forwarding thunks: InitPost and DeclareProperties call the Zone versions and nothing else.
    {
        RoomZone* room = MakeRoom();
        ResetCounters();
        room->RoomZone::InitPost();
        room->RoomZone::DeclareProperties();
        CHECK(g_zoneInitPost == 1);
        CHECK(g_zoneDeclareProperties == 1);
    }

    // Complete destructor: frees the list nodes (no ZoneExited calls), then Zone::~Zone runs.
    {
        RoomZone* room = MakeRoom();
        room->AddObject(reinterpret_cast<GameObject*>(&g_tokenA));
        room->AddObject(reinterpret_cast<GameObject*>(&g_tokenB));
        ResetCounters();
        room->RoomZone::~RoomZone();
        CHECK(room->m_objects.empty());
        CHECK(g_zoneDtor == 1);
        CHECK(g_zoneExited == 0);
    }

    if (g_failures == 0) {
        std::printf("RoomZone tests: all passed\n");
        return 0;
    }
    std::printf("RoomZone tests: %d failure(s)\n", g_failures);
    return 1;
}
