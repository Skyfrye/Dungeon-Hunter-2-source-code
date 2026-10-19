// Test for the Quest state handlers and Quest::Update (game-items-save/src/g1-game-items-save-Quest-1defd1-2.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Only the batch source is linked. The definitions below are recording stand-ins for code in other batches:
//   ConditionList::Eval and ObjectiveList::Eval (the pre-requisites and the objectives),
//   Quest::SetState (sets m_state and records the value), Quest::TestIsScriptRunning (per slot, from a table),
//   Quest::ReinitStateAfterLoading, the Quest handlers that Update calls and that are not in this batch,
//   the pydata state names (the 14 v2QuestState values, in the order of Quest::QuestStates),
//   the Application singleton (its IsOnlineGame flag), the PlayerManager and ObjectManager globals, and CMatching::Get.
// Quest, Objective, Character, PlayerInfo, PlayerSavegame, ObjectManager, PlayerManager and Application are not
// constructed. The test keeps zeroed storage for each and writes only the fields the bodies read. The online branch of
// UpdatePreActive is not run here: it reaches CMatching, which has no test object.

#include <cstddef>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ConditionList.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/Quest.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/charai_ai.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// The globals the bodies read. Declared extern in dh2/global/IsMultiplayerGame.hpp and ObjectManagerInstance.hpp.
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                        \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__, __LINE__, #cond);  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Recorded calls, in order, and the values the stand-ins return.
std::vector<std::string> g_calls;
bool g_preReqs = true;
bool g_objectives = true;
bool g_scriptRunning[14] = {};
bool g_online = false;
bool g_hosting = false;

alignas(std::max_align_t) unsigned char g_questStorage[sizeof(Quest)];
alignas(std::max_align_t) unsigned char g_objectiveStorage[sizeof(Objective)];
alignas(std::max_align_t) unsigned char g_playerStorage[sizeof(PlayerInfo)];
alignas(std::max_align_t) unsigned char g_characterStorage[sizeof(Character)];
alignas(std::max_align_t) unsigned char g_saveStorage[sizeof(PlayerSavegame)];
alignas(std::max_align_t) unsigned char g_objectManagerStorage[sizeof(ObjectManager)];
alignas(std::max_align_t) unsigned char g_playerManagerStorage[sizeof(PlayerManager)];
alignas(std::max_align_t) unsigned char g_applicationStorage[sizeof(Application)];
alignas(std::max_align_t) unsigned char g_pyDataStorage[sizeof(PyDataConstants)];

// The 14 v2QuestState names, in the order of Quest::QuestStates (the values the stand-in returns).
const char* const kStateNames[14] = {
    "Locked",     "PostLocked", "PreAvailable", "Available",  "PostAvailable", "PreActive", "Active",
    "PostActive", "PreCompleted", "Completed",  "PostCompleted", "PreClosed",  "Closed",   "PostClosed",
};

// Clears the recorded calls and the flags, zeroes the local player, and points the globals at their storage.
void ResetCase() {
    g_calls.clear();
    g_preReqs = true;
    g_objectives = true;
    for (bool& running : g_scriptRunning) {
        running = false;
    }
    g_online = false;
    g_hosting = false;
    std::memset(g_playerStorage, 0, sizeof g_playerStorage);  // unk_660 (the local Character) is null
    std::memset(g_objectManagerStorage, 0, sizeof g_objectManagerStorage);
    dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
    dword_99F764 = reinterpret_cast<ObjectManager*>(g_objectManagerStorage);
}

// A zeroed Quest in state `state`, with no accept objective.
Quest* MakeQuest(int state) {
    std::memset(g_questStorage, 0, sizeof g_questStorage);
    Quest* quest = reinterpret_cast<Quest*>(g_questStorage);
    quest->m_state = state;
    return quest;
}

// Sets the local player's Character, with or without a save slot. The flags are written through the member pointers.
void SetLocalCharacter(bool withSave, bool questSynced) {
    std::memset(g_characterStorage, 0, sizeof g_characterStorage);
    std::memset(g_saveStorage, 0, sizeof g_saveStorage);
    Character* character = reinterpret_cast<Character*>(g_characterStorage);
    reinterpret_cast<PlayerInfo*>(g_playerStorage)->unk_660 = character;
    if (withSave) {
        PlayerSavegame* save = reinterpret_cast<PlayerSavegame*>(g_saveStorage);
        save->m_questSynced = questSynced;
        character->m_savegame = save;
    }
}

// The accept objective of a Quest: an Objective whose completed flag is set or clear.
void SetAcceptObjective(Quest* quest, bool completed) {
    std::memset(g_objectiveStorage, 0, sizeof g_objectiveStorage);
    Objective* accept = reinterpret_cast<Objective*>(g_objectiveStorage);
    accept->m_completed = completed;
    quest->m_acceptType = accept;
}

// The recorded calls, joined for a failure message.
std::string Joined() {
    std::string out;
    for (const std::string& call : g_calls) {
        if (!out.empty()) {
            out += ", ";
        }
        out += call;
    }
    return out.empty() ? std::string("(none)") : out;
}

// Each check compares the recorded calls with the expected list, and the state with the expected value.
void CheckCalls(const char* label, const std::vector<std::string>& expected) {
    if (g_calls != expected) {
        std::fprintf(stderr, "%s: calls were [%s]\n", label, Joined().c_str());
        ++g_failures;
    }
}

void CheckState(const char* label, const Quest* quest, int expected) {
    if (quest->m_state != expected) {
        std::fprintf(stderr, "%s: state is %d, expected %d\n", label, quest->m_state, expected);
        ++g_failures;
    }
}

}  // namespace

// ---- Stand-ins for the other batches. Global scope, because the batch source calls them by their declared names.

PyDataConstants* ApplicationGetPyDataConstants() { return reinterpret_cast<PyDataConstants*>(g_pyDataStorage); }

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_applicationStorage); }

bool Application::IsOnlineGame() { return g_online; }

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    if (std::strcmp(className, "v2QuestState") != 0) {
        return -1;
    }
    for (int i = 0; i < 14; ++i) {
        if (std::strcmp(constantName, kStateNames[i]) == 0) {
            return i;
        }
    }
    return -1;
}

PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    (void)localId;
    (void)flag;
    return reinterpret_cast<PlayerInfo*>(g_playerStorage);
}

int PlayerManager::IsLocalPlayerHosting() { return g_hosting ? 1 : 0; }

// DELIBERATE TEST STUB, not a real object. CMatching is abstract here (LocalMemberId, ServerMemberId and MemberBit
// are pure virtual) and this port's CMatching vtable order is a known defect (see the KNOWN DEFECT block in
// net-session-online/include/net-session-online/c_matching_base.hpp), so no usable CMatching object can be built in
// this file. Because tests link with -Wl,--allow-multiple-definition and the FIRST definition wins, this stub also
// disables the library's real CMatching::Get for the whole executable: ANY later call added to this test's batch
// that reaches CMatching::Get()->LocalMemberId() (Quest::UpdatePreActive's online branch, the batch's line with
// GetRoomAttributes/SendGameParameters) would dereference null and fault. Nothing in the checks below reaches it.
CMatching* CMatching::Get() { return nullptr; }

bool ConditionList::Eval() {
    g_calls.push_back("ConditionList::Eval");
    return g_preReqs;
}

bool ObjectiveList::Eval() {
    g_calls.push_back("ObjectiveList::Eval");
    return g_objectives;
}

void Quest::SetState(int state) {
    g_calls.push_back("SetState(" + std::to_string(state) + ")");
    m_state = state;
}

bool Quest::TestIsScriptRunning(int scriptSlot) {
    g_calls.push_back("Script(" + std::to_string(scriptSlot) + ")");
    return g_scriptRunning[scriptSlot];
}

void Quest::ReinitStateAfterLoading() { g_calls.push_back("ReinitStateAfterLoading"); }

void Quest::UpdatePostLocked() { g_calls.push_back("UpdatePostLocked"); }
void Quest::UpdatePreAvailable() { g_calls.push_back("UpdatePreAvailable"); }
void Quest::UpdatePostAvailable() { g_calls.push_back("UpdatePostAvailable"); }
void Quest::UpdatePostActive() { g_calls.push_back("UpdatePostActive"); }
void Quest::UpdatePreCompleted() { g_calls.push_back("UpdatePreCompleted"); }
void Quest::UpdateCompleted() { g_calls.push_back("UpdateCompleted"); }
void Quest::UpdatePostCompleted() { g_calls.push_back("UpdatePostCompleted"); }
void Quest::UpdatePreClosed() { g_calls.push_back("UpdatePreClosed"); }
void Quest::UpdateClosed() { g_calls.push_back("UpdateClosed"); }
void Quest::UpdatePostClosed() { g_calls.push_back("UpdatePostClosed"); }

// ---- Checks.

namespace {

void TestUpdateLocked() {
    ResetCase();
    Quest* quest = MakeQuest(Quest::QUEST_LOCKED);
    g_preReqs = true;
    quest->UpdateLocked();
    CheckCalls("UpdateLocked met", {"ConditionList::Eval", "SetState(1)"});
    CheckState("UpdateLocked met", quest, Quest::QUEST_POST_LOCKED);

    ResetCase();
    quest = MakeQuest(Quest::QUEST_LOCKED);
    g_preReqs = false;
    quest->UpdateLocked();
    CheckCalls("UpdateLocked unmet", {"ConditionList::Eval"});
    CheckState("UpdateLocked unmet", quest, Quest::QUEST_LOCKED);
}

void TestUpdateAvailable() {
    // Pre-requisites fail: back to Locked.
    ResetCase();
    Quest* quest = MakeQuest(Quest::QUEST_AVAILABLE);
    g_preReqs = false;
    quest->UpdateAvailable();
    CheckCalls("UpdateAvailable failed prereqs", {"ConditionList::Eval", "SetState(0)"});
    CheckState("UpdateAvailable failed prereqs", quest, Quest::QUEST_LOCKED);

    // Pre-requisites hold, no accept objective: nothing.
    ResetCase();
    quest = MakeQuest(Quest::QUEST_AVAILABLE);
    g_preReqs = true;
    quest->UpdateAvailable();
    CheckCalls("UpdateAvailable no accept", {"ConditionList::Eval"});
    CheckState("UpdateAvailable no accept", quest, Quest::QUEST_AVAILABLE);

    // Accept objective not completed: the script slot is not tested.
    ResetCase();
    quest = MakeQuest(Quest::QUEST_AVAILABLE);
    SetAcceptObjective(quest, false);
    quest->UpdateAvailable();
    CheckCalls("UpdateAvailable accept open", {"ConditionList::Eval"});
    CheckState("UpdateAvailable accept open", quest, Quest::QUEST_AVAILABLE);

    // Accept objective completed, script 1 idle: PostAvailable.
    ResetCase();
    quest = MakeQuest(Quest::QUEST_AVAILABLE);
    SetAcceptObjective(quest, true);
    quest->UpdateAvailable();
    CheckCalls("UpdateAvailable accept done", {"ConditionList::Eval", "Script(1)", "SetState(4)"});
    CheckState("UpdateAvailable accept done", quest, Quest::QUEST_POST_AVAILABLE);

    // Accept objective completed, script 1 running: wait.
    ResetCase();
    g_scriptRunning[1] = true;
    quest = MakeQuest(Quest::QUEST_AVAILABLE);
    SetAcceptObjective(quest, true);
    quest->UpdateAvailable();
    CheckCalls("UpdateAvailable script running", {"ConditionList::Eval", "Script(1)"});
    CheckState("UpdateAvailable script running", quest, Quest::QUEST_AVAILABLE);
}

void TestUpdateActive() {
    // Objectives not all done: nothing, and the script is not tested.
    ResetCase();
    g_objectives = false;
    Quest* quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->UpdateActive();
    CheckCalls("UpdateActive objectives open", {"ObjectiveList::Eval"});
    CheckState("UpdateActive objectives open", quest, Quest::QUEST_ACTIVE);

    // Objectives done, script 0 running: wait.
    ResetCase();
    g_scriptRunning[0] = true;
    quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->UpdateActive();
    CheckCalls("UpdateActive script running", {"ObjectiveList::Eval", "Script(0)"});
    CheckState("UpdateActive script running", quest, Quest::QUEST_ACTIVE);

    // Objectives done, script 0 idle: PostActive.
    ResetCase();
    quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->UpdateActive();
    CheckCalls("UpdateActive done", {"ObjectiveList::Eval", "Script(0)", "SetState(7)"});
    CheckState("UpdateActive done", quest, Quest::QUEST_POST_ACTIVE);
}

void TestUpdatePreActiveOffline() {
    // Script 10 running: nothing changes.
    ResetCase();
    g_scriptRunning[10] = true;
    Quest* quest = MakeQuest(Quest::QUEST_PRE_ACTIVE);
    quest->m_pyDataIndex = 42;
    quest->UpdatePreActive();
    CheckCalls("UpdatePreActive script running", {"Script(10)"});
    CheckState("UpdatePreActive script running", quest, Quest::QUEST_PRE_ACTIVE);

    // Script 10 idle, offline: Active, and nothing else (the online branch is not taken).
    ResetCase();
    quest = MakeQuest(Quest::QUEST_PRE_ACTIVE);
    quest->m_pyDataIndex = 42;
    quest->UpdatePreActive();
    CheckCalls("UpdatePreActive offline", {"Script(10)", "SetState(6)"});
    CheckState("UpdatePreActive offline", quest, Quest::QUEST_ACTIVE);
}

void TestUpdateDispatch() {
    // A null local character runs the state checks. Locked with its pre-requisites met moves on to PostLocked, and the
    // PostLocked handler then runs in the same call, because Update reads the state again for each check.
    ResetCase();
    Quest* quest = MakeQuest(Quest::QUEST_LOCKED);
    quest->Update();
    CheckCalls("Update chained", {"ConditionList::Eval", "SetState(1)", "UpdatePostLocked"});
    CheckState("Update chained", quest, Quest::QUEST_POST_LOCKED);

    // The pending reinit runs first and clears the flag. UpdateLocked does not move on, so only the reinit and the
    // pre-requisite test are recorded.
    ResetCase();
    g_preReqs = false;
    quest = MakeQuest(Quest::QUEST_LOCKED);
    quest->m_needsReinit = true;
    quest->Update();
    CheckCalls("Update reinit", {"ReinitStateAfterLoading", "ConditionList::Eval"});
    CheckState("Update reinit", quest, Quest::QUEST_LOCKED);
    CHECK(!quest->m_needsReinit);

    // Active, objectives done, script idle: PostActive, then its handler.
    ResetCase();
    quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->Update();
    CheckCalls("Update active", {"ObjectiveList::Eval", "Script(0)", "SetState(7)", "UpdatePostActive"});
    CheckState("Update active", quest, Quest::QUEST_POST_ACTIVE);

    // Closed: UpdateClosed does not move the state here, so the final check of "Closed" runs UpdatePostClosed.
    ResetCase();
    quest = MakeQuest(Quest::QUEST_CLOSED);
    quest->Update();
    CheckCalls("Update closed", {"UpdateClosed", "UpdatePostClosed"});
    CheckState("Update closed", quest, Quest::QUEST_CLOSED);

    // PostClosed has no check of its own: nothing runs.
    ResetCase();
    quest = MakeQuest(Quest::QUEST_POST_CLOSED);
    quest->Update();
    CheckCalls("Update post-closed", {});
    CheckState("Update post-closed", quest, Quest::QUEST_POST_CLOSED);
}

void TestUpdateGate() {
    // A save slot that is absent: the body does not run.
    ResetCase();
    SetLocalCharacter(false, false);
    Quest* quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->Update();
    CheckCalls("gate no save", {});
    CheckState("gate no save", quest, Quest::QUEST_ACTIVE);

    // A save slot that is not synced: the body does not run.
    ResetCase();
    SetLocalCharacter(true, false);
    quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->Update();
    CheckCalls("gate not synced", {});
    CheckState("gate not synced", quest, Quest::QUEST_ACTIVE);

    // Synced, offline: the body runs.
    ResetCase();
    SetLocalCharacter(true, true);
    quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->Update();
    CheckCalls("gate offline", {"ObjectiveList::Eval", "Script(0)", "SetState(7)", "UpdatePostActive"});
    CheckState("gate offline", quest, Quest::QUEST_POST_ACTIVE);

    // Synced, online, not hosting, and the object manager flag clear: the body does not run.
    ResetCase();
    g_online = true;
    SetLocalCharacter(true, true);
    quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->Update();
    CheckCalls("gate online idle", {});
    CheckState("gate online idle", quest, Quest::QUEST_ACTIVE);

    // Synced, online, hosting: the body runs.
    ResetCase();
    g_online = true;
    g_hosting = true;
    SetLocalCharacter(true, true);
    quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->Update();
    CheckCalls("gate online hosting", {"ObjectiveList::Eval", "Script(0)", "SetState(7)", "UpdatePostActive"});
    CheckState("gate online hosting", quest, Quest::QUEST_POST_ACTIVE);

    // Synced, online, not hosting, but the object manager flag at +0x160 is set: the body runs.
    ResetCase();
    g_online = true;
    SetLocalCharacter(true, true);
    reinterpret_cast<ObjectManager*>(g_objectManagerStorage)->unk_160 = 1;
    quest = MakeQuest(Quest::QUEST_ACTIVE);
    quest->Update();
    CheckCalls("gate online flag", {"ObjectiveList::Eval", "Script(0)", "SetState(7)", "UpdatePostActive"});
    CheckState("gate online flag", quest, Quest::QUEST_POST_ACTIVE);
}

}  // namespace

int main() {
    TestUpdateLocked();
    TestUpdateAvailable();
    TestUpdateActive();
    TestUpdatePreActiveOffline();
    TestUpdateDispatch();
    TestUpdateGate();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("Quest-1defd1-2: all checks passed\n");
    return 0;
}
