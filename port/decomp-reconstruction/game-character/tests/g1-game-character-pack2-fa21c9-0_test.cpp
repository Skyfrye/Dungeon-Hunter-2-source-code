// Test for the CSDespawn and CSInjured state hooks (batch g1-game-character-pack2-fa21c9-0). The character is a
// zero-filled buffer with only the fields the hooks touch set, and the engine calls the hooks make are recorded by the
// stubs below. The checks are the state writes, the registrations and the calls, in the original's order.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include "net-session-online/c_online_impl.hpp"
#include "dh2/CSDespawn.hpp"
#include "dh2/CSInjured.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/v2Controller.hpp"

// ---- recorded engine calls ----
namespace {

struct Registration {
    int stateId;
    int eventId;
    int nextState;
};

std::vector<Registration> g_registrations;
int g_probeLoads = 0;
int g_probeSwitches = 0;
int g_setAnimCalls = 0;
int g_setAnimArg = 0;
int g_cancelSneakingCalls = 0;
int g_decAnimCalls = 0;
int g_purgeCalls = 0;
int g_unloadCalls = 0;
bool g_unloadIsEnd = false;
bool g_unloadForce = true;
int g_deleteCalls = 0;
const void* g_deleteThis = nullptr;
int g_lookAtCalls = 0;
const void* g_lookAtThis = nullptr;
const void* g_lookAtTarget = nullptr;
bool g_canRespawn = false;
bool g_isSummoned = false;

void ResetRecords() {
    g_registrations.clear();
    g_probeLoads = 0;
    g_probeSwitches = 0;
    g_setAnimCalls = 0;
    g_setAnimArg = 0;
    g_cancelSneakingCalls = 0;
    g_decAnimCalls = 0;
    g_purgeCalls = 0;
    g_unloadCalls = 0;
    g_unloadIsEnd = false;
    g_unloadForce = true;
    g_deleteCalls = 0;
    g_deleteThis = nullptr;
    g_lookAtCalls = 0;
    g_lookAtThis = nullptr;
    g_lookAtTarget = nullptr;
}

int g_failures = 0;

#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

}  // namespace

// The engine symbols the reconstructed bodies call. They record their arguments and do nothing else.

DebugSwitches DebugSwitches::s_inst;
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() { ++g_probeLoads; }
bool DebugSwitches::GetSwitch(const std::string&) {
    ++g_probeSwitches;
    return false;
}

static COnlineImpl g_testOnline;
COnline* GetOnline() { return &g_testOnline; }

CharState::~CharState() {}

std::map<int, Character*> Character::s_concurrentAI;

void CharStateMachine::SM_SetAnim(int anim) {
    ++g_setAnimCalls;
    g_setAnimArg = anim;
}

void CharStateMachine::SM_RegisterEvent(int stateId, int eventId, int nextState,
                                        bool (Character::*)(int, void*, int, int&)) {
    g_registrations.push_back(Registration{stateId, eventId, nextState});
}

void Character::CancelSneaking() { ++g_cancelSneakingCalls; }

bool Character::CanRespawn() const { return g_canRespawn; }

bool Character::IsSummoned() const { return g_isSummoned; }

void Character::UnLoadScriptProcess(std::map<int, Character*>::iterator it, bool force) {
    ++g_unloadCalls;
    g_unloadIsEnd = (it == Character::s_concurrentAI.end());
    g_unloadForce = force;
}

// The local player record: OnBlur reads its character (PlayerInfo +0x660, unk_660) to clear the object of interest. The record is zeroed
// storage; a check points unk_660 at a second character.
alignas(PlayerInfo) unsigned char g_localInfoStorage[sizeof(PlayerInfo)];
PlayerInfo* PlayerManager::GetLocalPlayer(int, bool) { return reinterpret_cast<PlayerInfo*>(g_localInfoStorage); }

void CharAnimator::DecAnimSetUsers() { ++g_decAnimCalls; }

void CharAnimator::RequestAnimPurge() { ++g_purgeCalls; }

void ObjectBase::Delete() {
    ++g_deleteCalls;
    g_deleteThis = this;
}

void v2Controller::Cmd_LookAt(GameObject* target) {
    ++g_lookAtCalls;
    g_lookAtThis = this;
    g_lookAtTarget = target;
}

namespace {

// Zero-filled storage for the character and its controller. Only the fields the hooks touch are set.
alignas(Character) unsigned char g_characterStorage[sizeof(Character)];
alignas(v2Controller) unsigned char g_controllerStorage[sizeof(v2Controller)];
int g_targetMarker = 0;

Character* ResetCharacter() {
    std::memset(g_characterStorage, 0, sizeof g_characterStorage);
    std::memset(g_controllerStorage, 0, sizeof g_controllerStorage);
    Character* character = reinterpret_cast<Character*>(g_characterStorage);
    character->m_controller = reinterpret_cast<v2Controller*>(g_controllerStorage);
    character->m_target = reinterpret_cast<GameObject*>(&g_targetMarker);
    ResetRecords();
    g_canRespawn = false;
    g_isSummoned = false;
    return character;
}

void TestDespawnInit() {
    Character* character = ResetCharacter();
    CSDespawn state;
    state.OnInit(5, character, static_cast<CharStateMachine*>(character));
    CHECK(g_registrations.size() == 2);
    if (g_registrations.size() == 2) {
        CHECK(g_registrations[0].stateId == 5 && g_registrations[0].eventId == 64 && g_registrations[0].nextState == 0);
        CHECK(g_registrations[1].stateId == 5 && g_registrations[1].eventId == 34 && g_registrations[1].nextState == 0);
    }
}

void TestDespawnFocus() {
    Character* character = ResetCharacter();
    CharStateMachine* machine = character;
    machine->m_deadAnim = 77;
    machine->m_pendingAnim = -5;
    machine->m_stateFlags = 1u;
    CSDespawn state;
    state.OnFocus(5, character, machine, 0, 0, nullptr);
    CHECK(machine->m_stateFlags == 512u);
    CHECK(machine->m_pendingAnim == 77);
    CHECK(g_setAnimCalls == 1 && g_setAnimArg == -1);
    CHECK(g_cancelSneakingCalls == 1);
    CHECK(g_probeSwitches == 2);
}

void TestDespawnBlurCanRespawn() {
    // CanRespawn() true skips the whole block: nothing is deleted, but the tail always runs.
    Character* character = ResetCharacter();
    CharStateMachine* machine = character;
    g_canRespawn = true;
    g_isSummoned = true;
    character->m_isNetSpawned = 1;
    character->m_controller->m_blocked = true;
    machine->m_limbusFlag = false;
    machine->m_stateFlags = 0x123u;
    CSDespawn state;
    state.OnBlur(5, character, machine, 0);
    CHECK(character->m_controller->m_blocked == false);
    CHECK(machine->m_limbusFlag == true);
    CHECK(machine->m_stateFlags == 0u);
    CHECK(g_deleteCalls == 0);
    CHECK(g_decAnimCalls == 1);
    CHECK(g_purgeCalls == 1);
    CHECK(g_unloadCalls == 1 && g_unloadIsEnd && !g_unloadForce);
}

void TestDespawnBlurNotSpawnedNoDelete() {
    Character* character = ResetCharacter();
    CharStateMachine* machine = character;
    g_canRespawn = false;
    g_isSummoned = false;
    character->m_isNetSpawned = 0;
    CSDespawn state;
    state.OnBlur(5, character, machine, 0);
    CHECK(g_deleteCalls == 0);
    CHECK(machine->m_stateFlags == 0u);
    CHECK(g_unloadCalls == 1);
}

void TestDespawnBlurNetSpawnedDeletes() {
    Character* character = ResetCharacter();
    CharStateMachine* machine = character;
    g_canRespawn = false;
    character->m_isNetSpawned = 1;
    CSDespawn state;
    state.OnBlur(5, character, machine, 0);
    CHECK(g_deleteCalls == 1);
    CHECK(g_deleteThis == static_cast<const void*>(character));
}

void TestDespawnBlurSummonedDeletes() {
    Character* character = ResetCharacter();
    CharStateMachine* machine = character;
    g_canRespawn = false;
    g_isSummoned = true;
    character->m_isNetSpawned = 0;
    CSDespawn state;
    state.OnBlur(5, character, machine, 0);
    CHECK(g_deleteCalls == 1);
}

void TestDespawnBlurClearsObjectOfInterest() {
    // A character that cannot respawn and is the local player's object of interest is dropped from it; any other object of interest stays.
    alignas(Character) static unsigned char localStorage[sizeof(Character)];
    std::memset(localStorage, 0, sizeof localStorage);
    Character* local = reinterpret_cast<Character*>(localStorage);
    reinterpret_cast<PlayerInfo*>(g_localInfoStorage)->unk_660 = local;

    Character* character = ResetCharacter();
    g_canRespawn = false;
    local->m_objectOfInterest = character;
    CSDespawn state;
    state.OnBlur(5, character, character, 0);
    CHECK(local->m_objectOfInterest == nullptr);

    character = ResetCharacter();
    g_canRespawn = false;
    local->m_objectOfInterest = reinterpret_cast<GameObject*>(&g_targetMarker);
    state.OnBlur(5, character, character, 0);
    CHECK(local->m_objectOfInterest == reinterpret_cast<GameObject*>(&g_targetMarker));

    // A character that can respawn leaves the local player alone.
    character = ResetCharacter();
    g_canRespawn = true;
    local->m_objectOfInterest = character;
    state.OnBlur(5, character, character, 0);
    CHECK(local->m_objectOfInterest == static_cast<GameObject*>(character));

    reinterpret_cast<PlayerInfo*>(g_localInfoStorage)->unk_660 = nullptr;
}

void TestInjuredInit() {
    Character* character = ResetCharacter();
    CSInjured state;
    state.OnInit(9, character, static_cast<CharStateMachine*>(character));
    CHECK(g_registrations.size() == 5);
    if (g_registrations.size() == 5) {
        CHECK(g_registrations[0].eventId == 34 && g_registrations[0].nextState == 3);
        CHECK(g_registrations[1].eventId == 50008 && g_registrations[1].nextState == 12);
        CHECK(g_registrations[2].eventId == 50010 && g_registrations[2].nextState == 11);
        CHECK(g_registrations[3].eventId == 50011 && g_registrations[3].nextState == 10);
        CHECK(g_registrations[4].eventId == 50005 && g_registrations[4].nextState == 6);
        for (const Registration& row : g_registrations) {
            CHECK(row.stateId == 9);
        }
    }
}

void TestInjuredFocus() {
    Character* character = ResetCharacter();
    CharStateMachine* machine = character;
    CSInjured state;
    state.OnFocus(9, character, machine, 0, 0, nullptr);
    CHECK(machine->m_stateFlags == 11073u);
    CHECK(g_setAnimCalls == 1 && g_setAnimArg == -1);
    CHECK(g_cancelSneakingCalls == 1);
    CHECK(g_probeSwitches == 2);
}

void TestInjuredBlur() {
    Character* character = ResetCharacter();
    CSInjured state;
    state.OnBlur(9, character, static_cast<CharStateMachine*>(character), 0);
    CHECK(g_lookAtCalls == 1);
    CHECK(g_lookAtThis == static_cast<const void*>(g_controllerStorage));
    CHECK(g_lookAtTarget == static_cast<const void*>(&g_targetMarker));
    CHECK(g_probeSwitches == 1);
}

}  // namespace

int main() {
    TestDespawnInit();
    TestDespawnFocus();
    TestDespawnBlurCanRespawn();
    TestDespawnBlurNotSpawnedNoDelete();
    TestDespawnBlurNetSpawnedDeletes();
    TestDespawnBlurSummonedDeletes();
    TestDespawnBlurClearsObjectOfInterest();
    TestInjuredInit();
    TestInjuredFocus();
    TestInjuredBlur();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-pack2-fa21c9-0 tests passed\n");
    return 0;
}
