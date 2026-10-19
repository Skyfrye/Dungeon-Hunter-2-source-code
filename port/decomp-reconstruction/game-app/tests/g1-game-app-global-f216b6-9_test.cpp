// Test for batch g1-game-app-global-f216b6-9. Covers the quest state predicates (IsNonDebugQuestClosedQuest,
// IsNonDebugQuestActiveButNotClosedQuest, the IsDebugQuest thunk), the hint-page pick of NativeGetLoadingTipStrID
// and the credit value of NativeGetCreditMovement. Exit status 0 means every check passed.
//
// Quest::IsDebug and IsNonDebugQuest are defined in other batches, so this test defines them with the bodies the
// pseudocode gives (IsNonDebugQuest is !Quest::IsDebug). Quest is never constructed: the predicates read only
// m_state (+0x00) and pass the address on, so the test uses a raw buffer for each quest.
#include <cstdint>
#include <cstdio>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/native_app_bindings.hpp"
#include "dh2/global/quest_predicates.hpp"
#include "dh2/v2Controller.hpp"

namespace {

int g_failures = 0;

// The one quest that IsDebug reports as a debug quest. Null means no quest is a debug quest.
const Quest* g_debugQuest = nullptr;

// Engine state for NativeGetPlayerChar and NativeHUDSpell. The objects are raw storage that is never constructed:
// the natives and the stand-ins below only read or write the fields named in the test (unk_660, m_controller,
// m_playerManager).
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(PlayerManager) unsigned char g_playerManagerStorage[sizeof(PlayerManager)];
alignas(PlayerInfo) unsigned char g_localStorage[2][sizeof(PlayerInfo)];
alignas(PlayerInfo) unsigned char g_remoteStorage[2][sizeof(PlayerInfo)];
alignas(Character) unsigned char g_characterStorage[4][sizeof(Character)];
alignas(v2Controller) unsigned char g_controllerStorage[sizeof(v2Controller)];
int g_numPlayers = 2;
int g_lastLocalIndex = -1;
bool g_lastLocalFlag = false;
int g_lastRemoteIndex = -1;
bool g_lastRemoteFlag = false;
bool g_ctrlAllowed = false;
const Character* g_lastCtrlThis = nullptr;
std::string g_castLog;
bool g_lastCastPrimary = true;
const v2Controller* g_lastCastThis = nullptr;

Character* Char(int index) {
    return reinterpret_cast<Character*>(g_characterStorage[index]);
}

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

struct FakeQuest {
    alignas(Quest) unsigned char bytes[sizeof(Quest)];
};

// Stores the state at +0x00 (m_state) of the buffer and returns it as a Quest pointer.
const Quest* MakeQuest(FakeQuest& storage, int state) {
    Quest* quest = reinterpret_cast<Quest*>(storage.bytes);
    quest->m_state = state;
    return quest;
}

}  // namespace

// Defined elsewhere in the tree (Quest.cpp, and the batch that covers 0x43b4dc). Bodies as in the pseudocode.
bool Quest::IsDebug() const {
    return this == g_debugQuest;
}

bool IsNonDebugQuest(const Quest* quest) {
    return !quest->IsDebug();
}

// Engine stand-ins for NativeGetPlayerChar and NativeHUDSpell. They record the calls and return the storage the
// test set up (see TestPlayerCharacters and TestHudSpell).
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

int PlayerManager::GetNumPlayers() {
    return g_numPlayers;
}

PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    g_lastLocalIndex = localId;
    g_lastLocalFlag = flag;
    return reinterpret_cast<PlayerInfo*>(g_localStorage[localId]);
}

PlayerInfo* PlayerManager::GetRemotePlayer(int remoteId, bool flag) {
    g_lastRemoteIndex = remoteId;
    g_lastRemoteFlag = flag;
    return reinterpret_cast<PlayerInfo*>(g_remoteStorage[remoteId]);
}

bool Character::CTRLIsAllowed() const {
    g_lastCtrlThis = this;
    return g_ctrlAllowed;
}

void v2Controller::Cmd_BeginCast(bool primary) {
    g_castLog += 'B';
    g_lastCastPrimary = primary;
    g_lastCastThis = this;
}

void v2Controller::Cmd_EndCast(bool primary) {
    g_castLog += 'E';
    g_lastCastPrimary = primary;
    g_lastCastThis = this;
}

namespace {

// The natives never read their argument, so raw storage is enough.
const gameswf::fn_call& DummyCall() {
    alignas(8) static unsigned char storage[64];
    return reinterpret_cast<const gameswf::fn_call&>(storage);
}

// Wires the raw storage: the Application's PlayerManager, and the controller of character 0.
void SetupEngine() {
    reinterpret_cast<Application*>(g_appStorage)->m_playerManager =
        reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
    Char(0)->m_controller = reinterpret_cast<v2Controller*>(g_controllerStorage);
}

void TestPlayerCharacters() {
    // Local i is character i, remote i is character 2 + i. Only unk_660 of each PlayerInfo is set.
    g_numPlayers = 2;
    reinterpret_cast<PlayerInfo*>(g_localStorage[0])->unk_660 = Char(0);
    reinterpret_cast<PlayerInfo*>(g_localStorage[1])->unk_660 = Char(1);
    reinterpret_cast<PlayerInfo*>(g_remoteStorage[0])->unk_660 = Char(2);
    reinterpret_cast<PlayerInfo*>(g_remoteStorage[1])->unk_660 = Char(3);

    Check(NativeGetPlayerChar(0, false) == Char(0), "local player 0 gives character 0");
    Check(g_lastLocalIndex == 0 && g_lastLocalFlag == false, "local lookup is GetLocalPlayer(0, false)");
    Check(NativeGetPlayerChar(1, false) == Char(1), "local player 1 gives character 1");
    Check(NativeGetPlayerChar(0, true) == Char(2), "remote player 0 gives character 2");
    Check(g_lastRemoteIndex == 0 && g_lastRemoteFlag == false, "remote lookup is GetRemotePlayer(0, false)");
    Check(NativeGetPlayerChar(1, true) == Char(3), "remote player 1 gives character 3");

    g_lastLocalIndex = -1;
    g_lastRemoteIndex = -1;
    Check(NativeGetPlayerChar(-1, false) == nullptr, "a negative index gives no character");
    Check(NativeGetPlayerChar(-1, true) == nullptr, "a negative remote index gives no character");
    Check(NativeGetPlayerChar(2, false) == nullptr, "an index equal to the player count gives no character");
    Check(g_lastLocalIndex == -1 && g_lastRemoteIndex == -1, "an out of range index does not look a player up");
    g_numPlayers = 1;
    Check(NativeGetPlayerChar(1, false) == nullptr, "the count from GetNumPlayers is the bound");
    g_numPlayers = 2;
}

void TestHudSpell() {
    Character* local0 = Char(0);
    g_castLog.clear();
    g_lastCtrlThis = nullptr;

    // Not allowed: CTRLIsAllowed is asked of the local player 0 character, and no cast runs.
    g_ctrlAllowed = false;
    NativeHUDSpell(DummyCall());
    Check(g_lastLocalIndex == 0 && g_lastLocalFlag == true, "HUD spell looks up GetLocalPlayer(0, true)");
    Check(g_lastCtrlThis == local0, "HUD spell asks the local player 0 character");
    Check(g_castLog.empty(), "a character that is not allowed to act casts nothing");

    // Allowed: BeginCast(false) then EndCast(false) on the character's controller.
    g_ctrlAllowed = true;
    NativeHUDSpell(DummyCall());
    Check(g_castLog == "BE", "an allowed character runs BeginCast, then EndCast");
    Check(g_lastCastPrimary == false, "both casts pass false");
    Check(g_lastCastThis == reinterpret_cast<v2Controller*>(g_controllerStorage), "casts run on the controller");

    // No character: nothing is asked and nothing runs.
    reinterpret_cast<PlayerInfo*>(g_localStorage[0])->unk_660 = nullptr;
    g_castLog.clear();
    g_lastCtrlThis = nullptr;
    NativeHUDSpell(DummyCall());
    Check(g_lastCtrlThis == nullptr && g_castLog.empty(), "without a character HUD spell does nothing");
    reinterpret_cast<PlayerInfo*>(g_localStorage[0])->unk_660 = local0;
    g_ctrlAllowed = false;
}

void TestNonDebugStatePredicates() {
    FakeQuest storage;
    g_debugQuest = nullptr;
    for (int state = 0; state <= 13; ++state) {
        const Quest* quest = MakeQuest(storage, state);
        Check(IsNonDebugQuestClosedQuest(quest) == (state > 12),
              "IsNonDebugQuestClosedQuest is true only above QUEST_CLOSED (states 13)");
        Check(IsNonDebugQuestActiveButNotClosedQuest(quest) == (state >= 6 && state <= 12),
              "IsNonDebugQuestActiveButNotClosedQuest covers states 6 to 12");
    }
}

void TestDebugQuestRejected() {
    FakeQuest storage;
    const Quest* quest = MakeQuest(storage, 9);

    g_debugQuest = quest;
    Check(IsDebugQuest(quest) == 1, "IsDebugQuest forwards to Quest::IsDebug and reports true");
    Check(IsNonDebugQuestClosedQuest(quest) == 0, "a debug quest is never a closed non-debug quest");
    Check(IsNonDebugQuestActiveButNotClosedQuest(quest) == 0, "a debug quest is never an active non-debug quest");

    g_debugQuest = nullptr;
    Check(IsDebugQuest(quest) == 0, "IsDebugQuest reports false for a non-debug quest");
    Check(IsNonDebugQuestActiveButNotClosedQuest(quest) == 1, "state 9 is active-but-not-closed when not debug");
    g_debugQuest = nullptr;
}

void TestPickHintPageOffset() {
    // Expected values come from the 32-bit LCG (59051 * seed + 177149) % 0xDAF26B with wraparound.
    std::uint32_t seed = 1;
    std::uint32_t offset = PickHintPageOffset(seed, 5);
    Check(offset == 0 && seed == 236200u, "seed 1 with 5 pages: seed becomes 236200, row 0, offset 0");

    offset = PickHintPageOffset(seed, 10);
    Check(offset == 36 && seed == 1302343u, "seed 236200 with 10 pages: seed becomes 1302343, row 3, offset 36");

    const std::uint32_t before = seed;
    offset = PickHintPageOffset(seed, 0);
    Check(offset == 0 && seed == before, "an empty table gives offset 0 and leaves the seed alone");
}

void TestCreditMovementValue() {
    Check(CreditMovementValue(true, 0) == 2.0, "HTC device: credit movement is 2.0");
    Check(CreditMovementValue(true, 500) == 2.0, "HTC device ignores the frame time");
    Check(CreditMovementValue(false, 0) == 1.0, "frame time 0 gives 1");
    Check(CreditMovementValue(false, 24) == 1.0, "24 ms gives 1");
    Check(CreditMovementValue(false, 25) == 2.0, "25 ms gives 2");
    Check(CreditMovementValue(false, 50) == 3.0, "50 ms gives 3");
    Check(CreditMovementValue(false, -1) == 171798692.0, "a negative frame time divides as unsigned");
}

}  // namespace

int main() {
    SetupEngine();
    TestPlayerCharacters();
    TestHudSpell();
    TestNonDebugStatePredicates();
    TestDebugQuestRejected();
    TestPickHintPageOffset();
    TestCreditMovementValue();
    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-9 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
