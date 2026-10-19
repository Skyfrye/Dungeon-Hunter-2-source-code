// Test for g1-game-items-save-Quest-1defd1-1.cpp. It links only that source and this file. The bodies it reaches in other
// batches and categories are defined here as recording stubs: the list members a default-constructed Quest owns, the
// reward list's CreateRewardString (which appends the test's reward text to m_rewardString, as the real one does), the
// dialog queue, the string and pydata-constant singletons, the Application singleton and the character calls.
//
// The test covers SetState(QUEST_CLOSED), the Closed entry that builds the QuestCompletedMsgDialog body. The body must be
// the reward list's own text (RewardList::m_rewardString), copied up to its first NUL. It must not come from the
// RewardList +0x18 and +0x1c words, which the port never updates.

#include <cstdio>
#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ConditionList.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/RewardList.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                        \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__, __LINE__, #cond);  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Values the stubs record.
constexpr int kTitleId = 7;
constexpr int kClosedStyle = 99;
constexpr int kStampTime = 4242;

int g_lastScript = -1;
int g_enqueueCount = 0;
std::string g_lastTitle;
std::string g_lastBody;
int g_lastStyle = -1;
std::string g_rewardText;  // what CreateRewardString appends in this test

}  // namespace

// ---- Singletons. The objects are static so that the stubs can return references and pointers to them. ----
static Application g_app;
static PyDataConstants g_pdc(nullptr);
static StringManager g_sm;
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

Application& ApplicationGetInstance() { return g_app; }
PyDataConstants* ApplicationGetPyDataConstants() { return &g_pdc; }
StringManager* ApplicationGetStringManager() { return &g_sm; }

Application::Application() {}
Application::~Application() {}
bool Application::onEvent(const glitch::SEvent&) { return false; }

PyDataConstants::PyDataConstants(DataReloaderManager*) {}
PyDataConstants::~PyDataConstants() {}
bool PyDataConstants::reloadData(IStreamBase*, const char*) { return false; }
int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    if (std::strcmp(className, "DialogStyles") == 0 && std::strcmp(constantName, "QuestCompletedMsgDialog") == 0) {
        return kClosedStyle;
    }
    return 1;
}
const char* PyDataConstants::getConstantName(const char*, int) const { return "stub-name"; }

StringManager::StringManager() {}
StringManager::~StringManager() {}
const char* StringManager::getString(int id) const { return id == kTitleId ? "Quest Title" : "stub-text"; }

// ---- The dialog queue: record the message the Closed entry enqueues. ----
DialogMsg::DialogMsg(int, int, int, int) {}
DialogMsg::DialogMsg(const std::string& title, const std::string& text, int style, int)
    : std::string(title), m_text(text), m_style(style) {}
DialogMsg::~DialogMsg() {}

template <>
MenuMessageManager<DialogMsg, 1>::~MenuMessageManager() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static MenuMessageManager<DialogMsg, 1> g_testInstance_1{};
template <>
MenuMessageManager<DialogMsg, 1>& MenuMessageManager<DialogMsg, 1>::s_inst = g_testInstance_1;
template <>
void MenuMessageManager<DialogMsg, 1>::EnqueueMessage(const DialogMsg& message, int, bool) {
    ++g_enqueueCount;
    g_lastTitle = static_cast<const std::string&>(message);
    g_lastBody = message.m_text;
    g_lastStyle = message.m_style;
}

// ---- Pydata name table and record. Only the fields the Closed entry reads are set by the tests. ----
pydata::NameTable Arrays::v2Quests::m_memberNames;
namespace Structs {
v2Quest::~v2Quest() {}
void v2Quest::finalize() {}
void v2Quest::read(IStreamBase*) {}
// The embedded subobjects of v2Quest (m_sub60, m_sub104, m_sub160) need their destructors and vtables.
v2QuestObjective::~v2QuestObjective() {}
void v2QuestObjective::finalize() {}
void v2QuestObjective::read(IStreamBase*) {}
v2QuestObjectiveStub::~v2QuestObjectiveStub() {}
void v2QuestObjectiveStub::finalize() {}
void v2QuestObjectiveStub::read(IStreamBase*) {}
v2QuestScripts::~v2QuestScripts() {}
void v2QuestScripts::finalize() {}
void v2QuestScripts::read(IStreamBase*) {}
}  // namespace Structs

// ---- The reward list: the real constructor stores the string's address in unk_18 and unk_1c. ----
RewardList::RewardList()
    : m_count(0), m_rewards(nullptr), m_rewardString(), unk_18(&m_rewardString), unk_1c(&m_rewardString), m_pyData(nullptr) {}
RewardList::~RewardList() {}
void RewardList::AssignPyData(Structs::v2QuestRewardStub*, int) {}
void RewardList::CreateRewardString() { m_rewardString += g_rewardText; }
void RewardList::SetOwner(Character*) {}
void RewardList::DBG_TraceDetailedRewardListInformation(__sFILE*) const {}

// ---- The list members a default-constructed Quest owns. ----
ConditionList::ConditionList() {}
ConditionList::~ConditionList() {}
void ConditionList::AssignPyData(Structs::v2ConditionStub*, int) {}
void ConditionList::DBG_TraceDetailedConditionListInformation(__sFILE*) const {}

ObjectiveList::ObjectiveList() {}
ObjectiveList::~ObjectiveList() {}
void ObjectiveList::AssignPyData(Structs::v2QuestObjectiveStub*, int) {}
Objective* ObjectiveList::CreateObjectiveWithPyData(Structs::v2QuestObjectiveStub*) { return nullptr; }
void ObjectiveList::SetOwner(Character*) {}
void ObjectiveList::Unregister() {}
void ObjectiveList::Register() {}
void ObjectiveList::RemoveObjectiveMarkers() {}
void ObjectiveList::InstallObjectiveMarkers(int, int) {}
void ObjectiveList::DBG_TraceDetailedObjectiveListInformation(__sFILE*) const {}
std::string ObjectiveList::GetDesc() const { return std::string(); }

// ---- Quest members defined in the other batches of this category. ----
void Quest::ExecScript(int scriptSlot) { g_lastScript = scriptSlot; }
int Quest::GiveRewards() { return 0; }
bool Quest::TestIsScriptRunning(int) { return false; }
void Quest::HandleSaveInStateTransitonIfNeeded(int) {}
bool Quest::IsPrimary() const { return false; }
bool Quest::IsVolatileState(int) const { return false; }
int Quest::GetScriptIDFromID(int) const { return -1; }

// ---- Character and PlayerManager calls. The Closed entry makes none of them. ----
void Character::CheckForAllQuestsTrophy() {}
void Character::SG_SetCurrentAct(int, int) {}
void Character::SG_SetCurrentPrimaryQuest(int, int) {}
void Character::SG_SetCurrentQuest(int, int) {}
PlayerInfo* PlayerManager::GetLocalPlayer(int, bool) { return nullptr; }
int PlayerManager::IsLocalPlayer(const Character*) { return 0; }

namespace {

void ResetRecorders() {
    g_lastScript = -1;
    g_enqueueCount = 0;
    g_lastTitle.clear();
    g_lastBody.clear();
    g_lastStyle = -1;
    g_rewardText.clear();
}

// Runs SetState(QUEST_CLOSED) on a fresh quest whose rewards are text.
void CloseQuestWithRewards(const std::string& rewards) {
    ResetRecorders();
    g_rewardText = rewards;
    Structs::v2Quest record;
    record.Description = kTitleId;
    Quest quest(0);
    quest.m_pyData = &record;
    quest.SetState(Quest::QUEST_CLOSED);
}

// The Closed dialog body is the reward list's text.
void TestClosedBodyIsRewardText() {
    g_app.m_lastTickTime = kStampTime;
    CloseQuestWithRewards("Gold 50\nXP 20");
    CHECK(g_lastScript == 2);  // OnClosed runs first
    CHECK(g_enqueueCount == 1);
    CHECK(g_lastTitle == "Quest Title");
    CHECK(g_lastBody == "Gold 50\nXP 20");
    CHECK(g_lastStyle == kClosedStyle);
}

// The body is cut at the first NUL, as the original's C-string copy does.
void TestClosedBodyStopsAtNul() {
    CloseQuestWithRewards(std::string("Gold 50\0junk", 12));
    CHECK(g_enqueueCount == 1);
    CHECK(g_lastBody == "Gold 50");
}

// No rewards text gives an empty body, and the dialog is still queued.
void TestClosedBodyEmptyWithoutRewards() {
    CloseQuestWithRewards(std::string());
    CHECK(g_enqueueCount == 1);
    CHECK(g_lastBody.empty());
    CHECK(g_lastTitle == "Quest Title");
}

// SetState stamps the state with the application's last tick time and records the closed state.
void TestClosedStateStamp() {
    g_app.m_lastTickTime = kStampTime;
    ResetRecorders();
    Structs::v2Quest record;
    record.Description = kTitleId;
    Quest quest(0);
    quest.m_pyData = &record;
    quest.SetState(Quest::QUEST_CLOSED);
    CHECK(quest.m_state == Quest::QUEST_CLOSED);
    CHECK(quest.m_stateStamp == kStampTime);
}

}  // namespace

int main() {
    TestClosedBodyIsRewardText();
    TestClosedBodyStopsAtNul();
    TestClosedBodyEmptyWithoutRewards();
    TestClosedStateStamp();
    if (g_failures != 0) {
        std::fprintf(stderr, "g1-game-items-save-Quest-1defd1-1 test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-items-save-Quest-1defd1-1 test: all checks passed\n");
    return 0;
}
