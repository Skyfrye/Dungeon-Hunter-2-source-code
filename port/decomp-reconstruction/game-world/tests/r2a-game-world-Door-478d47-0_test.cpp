// Test for batch r2a-game-world-Door-478d47-0.
//
// The bodies under test are in game-world/src/g1-game-world-Door-478d47-0.cpp. They call GameObject, Zone, VisualObject,
// PhysicalObject, PFWorld, sfc::script::lua::Binder, PODecor, ApplicationGetInstance and NetStructBool functions that
// are not linked here, so each one is replaced by a stub that records the call. The Door storage is zero-filled and never
// constructed, so every call is qualified (non-virtual). A null m_visualObject keeps the AnimController path out of the
// test, and a null m_physicalObject keeps the filter calls out. Singleton<PFWorld>::s_inst and the Application instance
// are zero-filled storage under the names the game uses.
//
// Checked: createBindings (four registrations in order), Opened, Closed, Open, Close (state, the +0x373 byte and the
// PFWorld dead-end flag on the door's PFObject), Disabled and Enabled (the flag only when the door is not open), and
// InitPost on the MeetCondition-true path (the PODecor body on m_doorCollision, handed to SetPhysicalObject with pin
// false). Not checked: the door sound (partial), the net-struct constructor (partial), and the MeetCondition-false
// branch of InitPost, which is a virtual SetVisible call on the constructed object.

#include <cstdio>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/Door.hpp"

#include "dh2/IStreamBase.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

using BindCallback = void (*)(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*);

struct BindRecord {
    const char* name;
    bool method;
    void* user;
    BindCallback callback;
};

struct FlagRecord {
    const PFObject* object;
    bool deadEnd;
};

constexpr int kMaxBinds = 8;
constexpr int kMaxFlags = 16;

BindRecord g_binds[kMaxBinds];
int g_bindCount = 0;
FlagRecord g_flags[kMaxFlags];
int g_flagCount = 0;
int g_createBindingsCalls = 0;
int g_disabledCalls = 0;
int g_enabledCalls = 0;
int g_updateIdleSound = 0;
int g_zoneInitPostCalls = 0;
int g_setPhysicalCalls = 0;
const void* g_setPhysicalArg = nullptr;
bool g_setPhysicalPin = true;
int g_podecorCalls = 0;
const void* g_podecorThis = nullptr;
const PhysicalWorld* g_podecorWorld = nullptr;
const void* g_podecorOwner = nullptr;
bool g_meetCondition = false;
bool g_netOpen = false;
int g_readState = 0;
int g_writtenState = -1;
int g_sentinelWorld = 0;

alignas(Door) unsigned char g_door[sizeof(Door)];
alignas(16) unsigned char g_binder[sizeof(sfc::script::lua::Binder)];

Door* Storage() {
    return reinterpret_cast<Door*>(g_door);
}

sfc::script::lua::Binder* BinderStorage() {
    return reinterpret_cast<sfc::script::lua::Binder*>(g_binder);
}

void ResetRecords() {
    g_bindCount = 0;
    g_flagCount = 0;
    g_createBindingsCalls = 0;
    g_disabledCalls = 0;
    g_enabledCalls = 0;
    g_updateIdleSound = 0;
    g_zoneInitPostCalls = 0;
    g_setPhysicalCalls = 0;
    g_setPhysicalArg = nullptr;
    g_setPhysicalPin = true;
    g_podecorCalls = 0;
    g_podecorThis = nullptr;
    g_podecorWorld = nullptr;
    g_podecorOwner = nullptr;
}

// A fresh door: zero storage, then the fields the test sets.
void ResetDoor() {
    std::memset(g_door, 0, sizeof g_door);
}

void RecordBind(const char* name, bool method, void* user, BindCallback callback) {
    if (g_bindCount < kMaxBinds) {
        g_binds[g_bindCount] = BindRecord{name, method, user, callback};
    }
    ++g_bindCount;
}

}  // namespace

// The PFWorld instance the flag calls go through: Singleton<PFWorld>::s_inst, zero-filled under the game's linker name.
alignas(16) unsigned char g_pfWorldStorage[sizeof(PFWorld)] __asm__("_ZN9SingletonI7PFWorldE6s_instE");

// The Application instance, Singleton<Application>::s_inst, reached through ApplicationGetInstance().
namespace {
alignas(16) unsigned char g_application[sizeof(Application)];
}  // namespace

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_application);
}

// ---- Stubs for the functions the bodies call. ----

void GameObject::createBindings(sfc::script::lua::Binder&) { ++g_createBindingsCalls; }
void GameObject::UpdateIdleSound() { ++g_updateIdleSound; }
void GameObject::RequireOnlineUpdate() {}
void GameObject::Serialize(IStreamBase*) {}
void GameObject::Deserialize(IStreamBase*) {}
void GameObject::Disabled() { ++g_disabledCalls; }
void GameObject::Enabled() { ++g_enabledCalls; }
void GameObject::InitFinal() {}
int GameObject::CheckSpawnProbability() { return 0; }
bool GameObject::MeetCondition() const { return g_meetCondition; }
void GameObject::SetPhysicalObject(PhysicalObject* physical, bool pin) {
    ++g_setPhysicalCalls;
    g_setPhysicalArg = physical;
    g_setPhysicalPin = pin;
}
void Zone::InitPost() { ++g_zoneInitPostCalls; }
void VisualObject::Sync() {}
void VisualObject::ApplyMeshBox() {}
void PhysicalObject::disableFilter() {}
void PhysicalObject::enableFilter() {}
void Door::__Callback(glitch::scene::ITimelineController*, void*) {}
void Door::__EventCallback(const glitch::collada::STriggeredEvent&, void*) {}
const bool& NetStructMemberType<bool>::GetValue() const { return g_netOpen; }

void PFWorld::FlagFloorAsDeadEnd(const PFObject& object, bool deadEnd) {
    if (g_flagCount < kMaxFlags) {
        g_flags[g_flagCount] = FlagRecord{&object, deadEnd};
    }
    ++g_flagCount;
}

// PODecor's complete-object constructor, the symbol the Door body calls for `new PODecor(world, this, unused)`. Its
// real body builds a PhysicalObject and stores the PODecor vtable, which needs the PhysicalObject vtable, so the test
// stubs it under the game's mangled name and only records the arguments.
void PODecorConstructStub(void* self, PhysicalWorld* world, GameObject* owner, bool /*unused*/)
    __asm__("_ZN7PODecorC1EP13PhysicalWorldP10GameObjectb");
void PODecorConstructStub(void* self, PhysicalWorld* world, GameObject* owner, bool /*unused*/) {
    ++g_podecorCalls;
    g_podecorThis = self;
    g_podecorWorld = world;
    g_podecorOwner = owner;
}

namespace sfc {
namespace script {
namespace lua {

void Binder::bindMethod(const char* funcName, void (*callback)(const Arguments&, ReturnValues&, void*)) {
    RecordBind(funcName, true, nullptr, callback);
}

void Binder::bindFunction(const char* funcName, void (*callback)(const Arguments&, ReturnValues&, void*), void* user) {
    RecordBind(funcName, false, user, callback);
}

}  // namespace lua
}  // namespace script
}  // namespace sfc

template <>
void IStreamBase::readAs<Door::DoorStates>(Door::DoorStates& value) {
    value = static_cast<Door::DoorStates>(g_readState);
}

template <>
void IStreamBase::writeAs<Door::DoorStates>(const Door::DoorStates& value) {
    g_writtenState = static_cast<int>(value);
}

int main() {
    Door* d = Storage();

    // createBindings: GameObject first, then Open and Close, each bound as a function (user = the door) and as a method.
    ResetDoor();
    ResetRecords();
    d->Door::createBindings(*BinderStorage());
    EXPECT(g_createBindingsCalls == 1);
    EXPECT(g_bindCount == 4);
    EXPECT(std::strcmp(g_binds[0].name, "Open") == 0 && !g_binds[0].method && g_binds[0].user == d &&
           g_binds[0].callback == &Door::_Open);
    EXPECT(std::strcmp(g_binds[1].name, "Open") == 0 && g_binds[1].method && g_binds[1].callback == &Door::_Open);
    EXPECT(std::strcmp(g_binds[2].name, "Close") == 0 && !g_binds[2].method && g_binds[2].user == d &&
           g_binds[2].callback == &Door::_Close);
    EXPECT(std::strcmp(g_binds[3].name, "Close") == 0 && g_binds[3].method && g_binds[3].callback == &Door::_Close);

    // Opened(false): state OPENED, the dead-end flag cleared on the door's PFObject, and the +0x373 byte set.
    ResetDoor();
    ResetRecords();
    d->Door::Opened(false);
    EXPECT(d->m_state == Door::DOOR_OPENED);
    EXPECT(g_flagCount == 1);
    EXPECT(g_flags[0].object == &d->m_pfObject && g_flags[0].deadEnd == false);
    EXPECT(d->m_idleSoundMuted == 1);

    // Closed(true): state CLOSED, the dead-end flag set, and the +0x373 byte cleared.
    ResetDoor();
    ResetRecords();
    d->m_state = Door::DOOR_OPENED;
    d->m_idleSoundMuted = 1;
    d->Door::Closed(true);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    EXPECT(g_flagCount == 1);
    EXPECT(g_flags[0].object == &d->m_pfObject && g_flags[0].deadEnd == true);
    EXPECT(d->m_idleSoundMuted == 0);

    // Open(false) from CLOSED with no visual opens at once.
    ResetDoor();
    ResetRecords();
    d->m_state = Door::DOOR_CLOSED;
    d->Door::Open(false);
    EXPECT(d->m_state == Door::DOOR_OPENED);
    EXPECT(g_flagCount == 1 && g_flags[0].deadEnd == false);

    // Open does nothing while the door is moving.
    ResetDoor();
    ResetRecords();
    d->m_state = Door::DOOR_CLOSED;
    d->m_moving = true;
    d->Door::Open(false);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    EXPECT(g_flagCount == 0);

    // Close(false) from OPENED with no visual closes at once.
    ResetDoor();
    ResetRecords();
    d->m_state = Door::DOOR_OPENED;
    d->Door::Close(false);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    EXPECT(g_flagCount == 1 && g_flags[0].deadEnd == true);

    // Close does nothing when the door is not open.
    ResetDoor();
    ResetRecords();
    d->m_state = Door::DOOR_CLOSED;
    d->Door::Close(false);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    EXPECT(g_flagCount == 0);

    // Disabled and Enabled reach GameObject. The flag is set only when the door is not open.
    ResetDoor();
    ResetRecords();
    d->m_state = Door::DOOR_OPENED;
    d->Door::Disabled();
    d->Door::Enabled();
    EXPECT(g_disabledCalls == 1);
    EXPECT(g_enabledCalls == 1);
    EXPECT(g_flagCount == 0);

    d->m_state = Door::DOOR_CLOSED;
    d->Door::Disabled();
    d->Door::Enabled();
    EXPECT(g_flagCount == 2);
    EXPECT(g_flags[0].object == &d->m_pfObject && g_flags[0].deadEnd == false);
    EXPECT(g_flags[1].object == &d->m_pfObject && g_flags[1].deadEnd == true);

    // InitPost, MeetCondition true: the PODecor body is built on the physics world with this as owner, and it is
    // handed to SetPhysicalObject with pin false.
    ApplicationGetInstance().m_physicalWorld = reinterpret_cast<PhysicalWorld*>(&g_sentinelWorld);
    ResetDoor();
    ResetRecords();
    d->m_spawnProb = 100;
    d->m_doorCollision = true;
    g_meetCondition = true;
    d->Door::InitPost();
    EXPECT(g_zoneInitPostCalls == 1);
    EXPECT(g_podecorCalls == 1);
    EXPECT(g_podecorWorld == reinterpret_cast<const PhysicalWorld*>(&g_sentinelWorld));
    EXPECT(g_podecorOwner == d);
    EXPECT(g_setPhysicalCalls == 1);
    EXPECT(g_setPhysicalArg == g_podecorThis);
    EXPECT(g_setPhysicalPin == false);

    // InitPost with m_doorCollision false builds no body.
    ResetDoor();
    ResetRecords();
    d->m_spawnProb = 100;
    d->m_doorCollision = false;
    g_meetCondition = true;
    d->Door::InitPost();
    EXPECT(g_zoneInitPostCalls == 1);
    EXPECT(g_podecorCalls == 0);
    EXPECT(g_setPhysicalCalls == 0);

    g_meetCondition = false;

    if (g_failures == 0) {
        std::printf("r2a-game-world-Door-478d47-0 test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-world-Door-478d47-0 test: %d failure(s)\n", g_failures);
    return 1;
}
