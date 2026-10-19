// Test for batch r2a-game-character-pack0-a32a82-0, the CSPreSpawn part.
//
// The bodies under test are in g1-game-character-pack5-5d9ab6-0.cpp (CSLimbus and CSPreSpawn). They are linked with this
// file only. Everything else they reference (Character, CharAnimator, CharStateMachine, GameObject, CharAI, CharState,
// DebugSwitches, PyDataConstants, the global assert level) is stubbed below and records what it was given.
//
// Character, Structs::CharAnim and CharAI::GroupInfo are never constructed: zero-filled storage stands in for them and
// only their plain fields are written and read. The state objects are stateless (vtable only), so they are constructed
// as plain objects. The paths that call a virtual method on the zero-filled Character are not run: SetVisible (reached
// from OnFocus only when m_aiStateVisible is 0) and the IsPlayer test. The CSLimbus group block and respawn branch also
// reach SetVisible, so they are not covered here.

#include "core-platform/memory.hpp"  // gAssertLevel (first: see pack5)
#include "dh2/CSPreSpawn.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharState.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::CharAnim
#include "pydata-accessors/w7_pydata12.hpp"      // PyDataConstants

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <string>

// ---- Recorded stub state ------------------------------------------------------------------------------------------

namespace {

int g_checks = 0;
int g_failures = 0;

void Check(bool cond, const char* what) {
    ++g_checks;
    if (!cond) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

// Application PyDataConstants: the bits getConstant("AnimStancedAnim", ...) returns.
int g_constBits = 0;
// Character::GetAnimStance.
int g_stance = 100;

// Character::CSM_Spawn: the result and the next state it writes.
bool g_spawnResult = true;
int g_spawnNextState = 1;
int g_spawnCalls = 0;
int g_spawnEvent = -1;
int g_spawnStateId = -1;

int g_setSpawnCalls = 0;
bool g_setSpawnDelayed = false;
bool g_setSpawnFlag = true;

int g_initPhysicalCalls = 0;
int g_setPhysicalCalls = 0;
PhysicalObject* g_setPhysicalArg = nullptr;
bool g_setPhysicalPin = true;
int g_disableCollisionsCalls = 0;

int g_animSetCalls = 0;
int g_lastAnimSet = -1;
int g_animSpeedCalls = 0;
float g_lastAnimSpeed = -1.0f;

// Zero-filled stand-ins (see the file comment).
alignas(std::max_align_t) unsigned char g_charStorage[sizeof(Character)];
alignas(std::max_align_t) unsigned char g_rowStorage[sizeof(Structs::CharAnim)];
alignas(std::max_align_t) unsigned char g_groupStorage[sizeof(CharAI::GroupInfo)];
alignas(std::max_align_t) unsigned char g_switchStorage[sizeof(DebugSwitches)];
alignas(std::max_align_t) unsigned char g_pyStorage[sizeof(PyDataConstants)];

Character* Ch() { return reinterpret_cast<Character*>(g_charStorage); }
Structs::CharAnim* Row() { return reinterpret_cast<Structs::CharAnim*>(g_rowStorage); }
CharAI::GroupInfo* Group() { return reinterpret_cast<CharAI::GroupInfo*>(g_groupStorage); }

void ResetRecords() {
    g_constBits = 0;
    g_stance = 100;
    g_spawnResult = true;
    g_spawnNextState = 1;
    g_spawnCalls = 0;
    g_spawnEvent = -1;
    g_spawnStateId = -1;
    g_setSpawnCalls = 0;
    g_setSpawnDelayed = false;
    g_setSpawnFlag = true;
    g_initPhysicalCalls = 0;
    g_setPhysicalCalls = 0;
    g_setPhysicalArg = nullptr;
    g_setPhysicalPin = true;
    g_disableCollisionsCalls = 0;
    g_animSetCalls = 0;
    g_lastAnimSet = -1;
    g_animSpeedCalls = 0;
    g_lastAnimSpeed = -1.0f;

    // Character: fields the batch reads and writes. Everything else stays zero.
    Ch()->m_aiStateVisible = true;     // OnFocus skips SetVisible (a virtual call on the stand-in)
    Ch()->m_groupRole = -1;
    Ch()->m_group = nullptr;
    Ch()->CharStateMachine::m_stateFlags = 0x100u;

    // CharAnim row for GetCharAnimTableId: m_w25 (+0x64) is the plain anim, m_w32 (+0x80) the -1 anim.
    Row()->PreSpawn = 7;
    Row()->Spawn = 9;

    Group()->m_allMembersDead = 2;
}

}  // namespace

// ---- Stubs for the external symbols the batch bodies reference ----------------------------------------------------

int gAssertLevel = 0;

DebugSwitches* DebugSwitches::GetInstance() { return reinterpret_cast<DebugSwitches*>(g_switchStorage); }

bool DebugSwitches::GetSwitch(const std::string& /*name*/) { return false; }

PyDataConstants* ApplicationGetPyDataConstants() { return reinterpret_cast<PyDataConstants*>(g_pyStorage); }

int PyDataConstants::getConstant(const char* /*className*/, const char* /*constantName*/) const { return g_constBits; }

CharState::~CharState() {}

bool Character::CSM_Spawn(int eventId, void* /*data*/, int stateId, int& nextState) {
    ++g_spawnCalls;
    g_spawnEvent = eventId;
    g_spawnStateId = stateId;
    nextState = g_spawnNextState;
    return g_spawnResult;
}

void Character::InitPhysicalObject() { ++g_initPhysicalCalls; }

void Character::Revive(GameObject* /*reviver*/, bool /*resetPhysics*/) {}

int Character::GetAnimStance() const { return g_stance; }

const Structs::CharAnim* Character::GetCharAnimTable() const { return Row(); }

int CharStateMachine::SM_SetSpawnState(bool delayed, bool flag) {
    ++g_setSpawnCalls;
    g_setSpawnDelayed = delayed;
    g_setSpawnFlag = flag;
    return 0;
}

void CharStateMachine::SM_RegisterEvent(int, int, int, bool (Character::*)(int, void*, int, int&)) {}

bool CharStateMachine::SM_IsInLimbus() const { return false; }

void CharAI::AI_ClearAllAggro() {}

void GameObject::SetPosition(const Point3D<float>& /*pos*/, bool /*setDestination*/) {}

void GameObject::SetRotation(const Point3D<float>& /*rotation*/) {}

void GameObject::SetPhysicalObject(PhysicalObject* physical, bool pin) {
    ++g_setPhysicalCalls;
    g_setPhysicalArg = physical;
    g_setPhysicalPin = pin;
}

void GameObject::DisableCollisions() { ++g_disableCollisionsCalls; }

void GameObject::EnableCollisions() {}

void CharAnimator::ANIM_Set(int animId) {
    ++g_animSetCalls;
    g_lastAnimSet = animId;
}

void CharAnimator::ANIM_SetSpeed(float speed) {
    ++g_animSpeedCalls;
    g_lastAnimSpeed = speed;
}

// ---- Tests ----------------------------------------------------------------------------------------------------------

namespace {

// Event 9, spawn accepted with the next state still 1: SetSpawnState(delayed = true, flag = false), and the spawn is
// forwarded with event 9 and the state id. A role other than 3 leaves the group alone.
void TestSpawnNoGroup() {
    ResetRecords();
    CSPreSpawn state;
    state.OnEvent(3, Ch(), nullptr, 9, nullptr);
    Check(g_spawnCalls == 1, "spawn: CSM_Spawn called once");
    Check(g_spawnEvent == 9, "spawn: CSM_Spawn gets event 9");
    Check(g_spawnStateId == 3, "spawn: CSM_Spawn gets the state id");
    Check(g_setSpawnCalls == 1, "spawn: SetSpawnState called once");
    Check(g_setSpawnDelayed && !g_setSpawnFlag, "spawn: SetSpawnState(true, false)");
    Check(Group()->m_allMembersDead == 2, "spawn: role not 3 leaves m_allMembersDead alone");
}

// Event 9 with m_groupRole 3: the group's m_allMembersDead is written 0 after the spawn.
void TestSpawnGroupRole3() {
    ResetRecords();
    Ch()->m_groupRole = 3;
    Ch()->m_group = Group();
    CSPreSpawn state;
    state.OnEvent(3, Ch(), nullptr, 9, nullptr);
    Check(g_setSpawnCalls == 1, "group spawn: SetSpawnState called");
    Check(Group()->m_allMembersDead == 0, "group spawn: m_allMembersDead written 0");
}

// Event 9 when CSM_Spawn refuses: no SetSpawnState and no group write.
void TestSpawnRefused() {
    ResetRecords();
    g_spawnResult = false;
    Ch()->m_groupRole = 3;
    Ch()->m_group = Group();
    CSPreSpawn state;
    state.OnEvent(3, Ch(), nullptr, 9, nullptr);
    Check(g_spawnCalls == 1, "refused spawn: CSM_Spawn still called");
    Check(g_setSpawnCalls == 0, "refused spawn: SetSpawnState not called");
    Check(Group()->m_allMembersDead == 2, "refused spawn: group untouched");
}

// Event 9 when CSM_Spawn changes the next state: the original asserts. With gAssertLevel 0 nothing is printed and
// the spawn state is not set, and the group is not written.
void TestSpawnChangedNextState() {
    ResetRecords();
    g_spawnNextState = 5;
    Ch()->m_groupRole = 3;
    Ch()->m_group = Group();
    CSPreSpawn state;
    state.OnEvent(3, Ch(), nullptr, 9, nullptr);
    Check(g_setSpawnCalls == 0, "changed next state: SetSpawnState not called");
    Check(Group()->m_allMembersDead == 2, "changed next state: group untouched");
}

// Event 40 "is_interactive": CharStateMachine::m_stateFlags |= 0x2000, then InitPhysicalObject.
void TestIsInteractive() {
    ResetRecords();
    CSPreSpawn state;
    state.OnEvent(3, Ch(), nullptr, 40, const_cast<char*>("is_interactive"));
    Check(Ch()->CharStateMachine::m_stateFlags == (0x100u | 0x2000u), "is_interactive: flag 0x2000 OR-ed in");
    Check(g_initPhysicalCalls == 1, "is_interactive: InitPhysicalObject called");
}

// Event 40 with another string: nothing changes.
void TestOtherString() {
    ResetRecords();
    CSPreSpawn state;
    state.OnEvent(3, Ch(), nullptr, 40, const_cast<char*>("something_else"));
    Check(Ch()->CharStateMachine::m_stateFlags == 0x100u, "other string: flags unchanged");
    Check(g_initPhysicalCalls == 0, "other string: InitPhysicalObject not called");
}

// OnFocus with a plain row (m_w25 != -1): the m_w25 anim, no stance and no speed call. The flags become 0x1300.
void TestFocusPlainAnim() {
    ResetRecords();
    g_constBits = 0;
    CSPreSpawn state;
    state.OnFocus(3, Ch(), nullptr, 0, 0, nullptr);
    Check(Ch()->CharStateMachine::m_stateFlags == 0x1300u, "focus plain: m_stateFlags = 0x1300");
    Check(g_animSetCalls == 1 && g_lastAnimSet == 7, "focus plain: ANIM_Set(m_w25)");
    Check(g_animSpeedCalls == 0, "focus plain: no ANIM_SetSpeed");
    Check(g_setPhysicalCalls == 1 && g_setPhysicalArg == nullptr && !g_setPhysicalPin,
          "focus plain: SetPhysicalObject(nullptr, false)");
    Check(g_disableCollisionsCalls == 1, "focus plain: DisableCollisions");
}

// OnFocus with m_w25 == -1 and the stance bit set: ANIM_Set(m_w32 + GetAnimStance()) and ANIM_SetSpeed(0.0).
void TestFocusMinusOneStance() {
    ResetRecords();
    Row()->PreSpawn = -1;
    g_constBits = 1;
    g_stance = 100;
    CSPreSpawn state;
    state.OnFocus(3, Ch(), nullptr, 0, 0, nullptr);
    Check(g_animSetCalls == 1 && g_lastAnimSet == 109, "focus -1 stance: ANIM_Set(m_w32 + stance = 109)");
    Check(g_animSpeedCalls == 1 && g_lastAnimSpeed == 0.0f, "focus -1 stance: ANIM_SetSpeed(0.0)");
}

// OnFocus with m_w25 == -1 and the stance bit clear: ANIM_Set(m_w32) with no stance offset.
void TestFocusMinusOneNoStance() {
    ResetRecords();
    Row()->PreSpawn = -1;
    g_constBits = 0;
    g_stance = 100;
    CSPreSpawn state;
    state.OnFocus(3, Ch(), nullptr, 0, 0, nullptr);
    Check(g_animSetCalls == 1 && g_lastAnimSet == 9, "focus -1 no stance: ANIM_Set(m_w32 = 9)");
    Check(g_animSpeedCalls == 1 && g_lastAnimSpeed == 0.0f, "focus -1 no stance: ANIM_SetSpeed(0.0)");
}

}  // namespace

int main() {
    TestSpawnNoGroup();
    TestSpawnGroupRole3();
    TestSpawnRefused();
    TestSpawnChangedNextState();
    TestIsInteractive();
    TestOtherString();
    TestFocusPlainAnim();
    TestFocusMinusOneStance();
    TestFocusMinusOneNoStance();
    std::printf("%d checks, %d failures\n", g_checks, g_failures);
    return g_failures == 0 ? 0 : 1;
}
