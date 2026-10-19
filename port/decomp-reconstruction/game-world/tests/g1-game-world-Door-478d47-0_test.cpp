// Test for batch g1-game-world-Door-478d47-0.
//
// The Door bodies call GameObject, Zone, VisualObject, PhysicalObject, IStreamBase and NetStructBool
// functions that are not linked here, so each one is replaced by a stub that only records the call.
// The Door storage is zero-filled and never constructed, so every call goes through a qualified
// (non-virtual) name. A null m_visualObject keeps the AnimController path out of the test; the state,
// moving and flag transitions are what the test checks. The PFWorld flag calls, the Lua binder and the
// PODecor body are stubbed so the bodies link; r2a-game-world-Door-478d47-0_test.cpp checks them.

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

int g_updateIdleSound = 0;
int g_requireOnlineUpdate = 0;
int g_serializeCalls = 0;
int g_deserializeCalls = 0;
int g_disabledCalls = 0;
int g_enabledCalls = 0;
int g_writtenState = -1;
int g_readState = 0;
bool g_netOpen = false;

alignas(Door) unsigned char g_door[sizeof(Door)];
alignas(16) unsigned char g_dummyStream[64];
alignas(16) unsigned char g_dummyArgs[16];
alignas(16) unsigned char g_dummyRet[16];

Door* Storage() {
    return reinterpret_cast<Door*>(g_door);
}

void ResetStorage() {
    std::memset(g_door, 0, sizeof g_door);
    g_updateIdleSound = 0;
    g_requireOnlineUpdate = 0;
    g_serializeCalls = 0;
    g_deserializeCalls = 0;
    g_disabledCalls = 0;
    g_enabledCalls = 0;
    g_writtenState = -1;
}

IStreamBase* DummyStream() {
    return reinterpret_cast<IStreamBase*>(g_dummyStream);
}

}  // namespace

// ---- Stubs for the functions the Door bodies call directly. ----

void GameObject::createBindings(sfc::script::lua::Binder&) {}
void GameObject::UpdateIdleSound() { ++g_updateIdleSound; }
void GameObject::RequireOnlineUpdate() { ++g_requireOnlineUpdate; }
void GameObject::Serialize(IStreamBase*) { ++g_serializeCalls; }
void GameObject::Deserialize(IStreamBase*) { ++g_deserializeCalls; }
void GameObject::Disabled() { ++g_disabledCalls; }
void GameObject::Enabled() { ++g_enabledCalls; }
void GameObject::InitFinal() {}
int GameObject::CheckSpawnProbability() { return 0; }
bool GameObject::MeetCondition() const { return false; }
void Zone::InitPost() {}
void VisualObject::Sync() {}
void VisualObject::ApplyMeshBox() {}
void PhysicalObject::disableFilter() {}
void PhysicalObject::enableFilter() {}
void Door::__Callback(glitch::scene::ITimelineController*, void*) {}
void Door::__EventCallback(const glitch::collada::STriggeredEvent&, void*) {}
const bool& NetStructMemberType<bool>::GetValue() const { return g_netOpen; }

template <>
void IStreamBase::readAs<Door::DoorStates>(Door::DoorStates& value) {
    value = static_cast<Door::DoorStates>(g_readState);
}

template <>
void IStreamBase::writeAs<Door::DoorStates>(const Door::DoorStates& value) {
    g_writtenState = static_cast<int>(value);
}

// Stubs for the calls the Door bodies make into PFWorld, the Lua binder, PODecor and the Application instance.
// Only the links matter here: the flag, binding and body calls are checked in the r2a test.
alignas(16) unsigned char g_g1PFWorldStorage[sizeof(PFWorld)] __asm__("_ZN9SingletonI7PFWorldE6s_instE");
namespace {
alignas(16) unsigned char g_g1Application[sizeof(Application)];
}  // namespace
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_g1Application);
}
void PFWorld::FlagFloorAsDeadEnd(const PFObject&, bool) {}
void GameObject::SetPhysicalObject(PhysicalObject*, bool) {}
void PODecorConstructStub(void*, PhysicalWorld*, GameObject*, bool)
    __asm__("_ZN7PODecorC1EP13PhysicalWorldP10GameObjectb");
void PODecorConstructStub(void*, PhysicalWorld*, GameObject*, bool) {}
namespace sfc {
namespace script {
namespace lua {
void Binder::bindMethod(const char*, void (*)(const Arguments&, ReturnValues&, void*)) {}
void Binder::bindFunction(const char*, void (*)(const Arguments&, ReturnValues&, void*), void*) {}
}  // namespace lua
}  // namespace script
}  // namespace sfc

int main() {
    Door* d = Storage();

    // Predicates and the type name.
    ResetStorage();
    EXPECT(d->Door::IsUpdatable() == true);
    EXPECT(d->Door::IsAnimated() == true);
    EXPECT(d->Door::IsInteractive(nullptr) == false);
    EXPECT(d->Door::IsZonable() == true);
    EXPECT(std::strcmp(d->Door::getUDTypeName(), "Door") == 0);

    // Open from closed with no visual: settles in DOOR_OPENED and sets the byte at +0x373.
    ResetStorage();
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    d->Door::Open(false);
    EXPECT(d->m_state == Door::DOOR_OPENED);
    EXPECT(d->m_moving == false);
    EXPECT(d->m_idleSoundMuted == 1);

    // Close from opened with no visual: settles in DOOR_CLOSED and clears the byte.
    d->Door::Close(false);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    EXPECT(d->m_moving == false);
    EXPECT(d->m_idleSoundMuted == 0);

    // Close while already closed does nothing: the byte keeps its value.
    ResetStorage();
    d->m_idleSoundMuted = 7;
    d->Door::Close(false);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    EXPECT(d->m_idleSoundMuted == 7);

    // Open while moving does nothing.
    ResetStorage();
    d->m_moving = true;
    d->Door::Open(false);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    EXPECT(d->m_moving == true);

    // Close while moving does nothing.
    ResetStorage();
    d->m_state = Door::DOOR_OPENED;
    d->m_moving = true;
    d->Door::Close(false);
    EXPECT(d->m_state == Door::DOOR_OPENED);

    // Instant open with no visual.
    ResetStorage();
    d->Door::Open(true);
    EXPECT(d->m_state == Door::DOOR_OPENED);

    // Opened and Closed with silent set do not play a clip (no visual here) but still set the state.
    ResetStorage();
    d->Door::Opened(true);
    EXPECT(d->m_state == Door::DOOR_OPENED);
    EXPECT(d->m_idleSoundMuted == 1);
    d->Door::Closed(true);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    EXPECT(d->m_idleSoundMuted == 0);

    // The Lua callbacks take the Door from the user pointer (third argument).
    ResetStorage();
    const sfc::script::lua::Arguments& args = reinterpret_cast<const sfc::script::lua::Arguments&>(g_dummyArgs);
    sfc::script::lua::ReturnValues& ret = reinterpret_cast<sfc::script::lua::ReturnValues&>(g_dummyRet);
    Door::_Open(args, ret, d);
    EXPECT(d->m_state == Door::DOOR_OPENED);
    Door::_Close(args, ret, d);
    EXPECT(d->m_state == Door::DOOR_CLOSED);

    // Serialize writes the state as a DoorStates word after the GameObject part.
    ResetStorage();
    d->m_state = Door::DOOR_OPENING;
    d->Door::Serialize(DummyStream());
    EXPECT(g_serializeCalls == 1);
    EXPECT(g_writtenState == 3);

    // Deserialize reads the state, then settles: an opening or opened state comes back as DOOR_OPENED.
    ResetStorage();
    g_readState = Door::DOOR_OPENING;
    d->Door::Deserialize(DummyStream());
    EXPECT(g_deserializeCalls == 1);
    EXPECT(d->m_state == Door::DOOR_OPENED);

    // A closing state settles as DOOR_CLOSED.
    ResetStorage();
    g_readState = Door::DOOR_CLOSING;
    d->Door::Deserialize(DummyStream());
    EXPECT(d->m_state == Door::DOOR_CLOSED);

    // InterpretIncomingNetStruct follows the incoming open flag only when forced.
    ResetStorage();
    g_netOpen = true;
    d->Door::InterpretIncomingNetStruct(false);
    EXPECT(d->m_state == Door::DOOR_CLOSED);
    d->Door::InterpretIncomingNetStruct(true);
    EXPECT(d->m_state == Door::DOOR_OPENED);

    // With the flag cleared and the door opened, a forced pass closes it.
    g_netOpen = false;
    d->Door::InterpretIncomingNetStruct(true);
    EXPECT(d->m_state == Door::DOOR_CLOSED);

    // Update: idle sound only when m_idleSoundId >= 0, and RequireOnlineUpdate always.
    ResetStorage();
    d->m_idleSoundId = 0;
    d->Door::Update();
    EXPECT(g_updateIdleSound == 1);
    EXPECT(g_requireOnlineUpdate == 1);
    d->m_idleSoundId = -1;
    d->Door::Update();
    EXPECT(g_updateIdleSound == 1);
    EXPECT(g_requireOnlineUpdate == 2);

    // Disabled and Enabled reach GameObject; their PFWorld flag call is partial.
    ResetStorage();
    d->Door::Disabled();
    d->Door::Enabled();
    EXPECT(g_disabledCalls == 1);
    EXPECT(g_enabledCalls == 1);

    if (g_failures == 0) {
        std::printf("g1-game-world-Door-478d47-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-world-Door-478d47-0 test: %d failure(s)\n", g_failures);
    return 1;
}
