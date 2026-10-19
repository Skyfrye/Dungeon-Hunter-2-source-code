// Test for the batch g1-game-items-save-pack1-f220a8-0 (the six Condition classes). Run with:
//   bash tools/trackb/check_tu.sh --test <this file> port/decomp-reconstruction/game-items-save/src/g1-game-items-save-pack1-f220a8-0.cpp
//
// The engine parts the bodies call are replaced here: the application singleton and its current level, the local player,
// the quest lookup of a Character, the PyDataConstants table, the level and quest name tables and element counts, and the
// Condition / v2Condition base functions. Objects that the bodies only read through members (Application, Level,
// PlayerInfo, Quest, Character, PyDataConstants) are plain zeroed storage: the bodies never run their constructors here.
// The rows are real Structs::v2ConditionStub objects.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Condition.hpp"
#include "dh2/Condition_IsLevelInState.hpp"
#include "dh2/Condition_IsPlayerAtLevel.hpp"
#include "dh2/Condition_IsPlayerInLevel.hpp"
#include "dh2/Condition_IsQuestInState.hpp"
#include "dh2/Condition_IsQuestInStateGeneric.hpp"
#include "dh2/Condition_IsQuestStateHigher.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// ---------------------------------------------------------------------------------------------------------------
// Stub state
// ---------------------------------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        ++g_failures;
        std::fprintf(stderr, "FAIL: %s\n", what);
    }
}

alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_levelStorage[sizeof(Level)];
alignas(16) unsigned char g_playerStorage[sizeof(PlayerInfo)];
alignas(16) unsigned char g_questStorage[sizeof(Quest)];
unsigned char g_characterMarker = 0;   // a Character* is only compared and passed on, never dereferenced here
unsigned char g_constantsMarker = 0;   // the PyDataConstants* likewise

Level* g_currentLevel = nullptr;
int g_questIdInWorld = -1;             // the one quest id SG_GetQuestByID finds; others return null
int g_lastQuestId = -2;
int g_lastQuestDifficulty = -2;

const char* const kLevelNames[] = {"Level0", "Level1", "Level2"};   // Arrays::LevelList::size is 3
const char* const kQuestNames[] = {"Quest0", "Quest1"};            // Arrays::v2Quests::size is 2
const char* const kStateNames[] = {"v2_zero", "v2_one", "v2_two", "v2_three", "v2_four"};

}  // namespace

// ---------------------------------------------------------------------------------------------------------------
// Replacements for the functions the bodies call (defined at global scope to match the declarations)
// ---------------------------------------------------------------------------------------------------------------

static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

Level* Application::GetCurrentLevel() const {
    return g_currentLevel;
}

PyDataConstants* ApplicationGetPyDataConstants() {
    return reinterpret_cast<PyDataConstants*>(&g_constantsMarker);
}

const char* PyDataConstants::getConstantName(const char* className, int value) const {
    if (std::strcmp(className, "v2QuestState") != 0 || value < 0 || value >= 5) {
        return "";
    }
    return kStateNames[value];
}

PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    (void)localId;
    (void)flag;
    return reinterpret_cast<PlayerInfo*>(g_playerStorage);
}

Quest* Character::SG_GetQuestByID(int id, int difficulty) {
    g_lastQuestId = id;
    g_lastQuestDifficulty = difficulty;
    return id == g_questIdInWorld ? reinterpret_cast<Quest*>(g_questStorage) : nullptr;
}

namespace Arrays {
std::uint32_t LevelList::size = 3;
std::uint32_t v2Quests::size = 2;

const char* LevelListMemberNameAt(int index) {
    return kLevelNames[index];
}

const char* v2QuestsMemberNameAt(int index) {
    return kQuestNames[index];
}
}  // namespace Arrays

// The Condition base and the pydata row base are not in this batch: their constructors, destructor and virtual functions
// are defined here only so that the classes built below link.
Condition::Condition() {}
Condition::~Condition() {}
void Condition::Compile() {}
std::size_t Condition::DBG_TraceDetailedConditionInformation(__sFILE* stream) {
    (void)stream;
    return 0;
}

namespace Structs {
v2Condition::~v2Condition() {}
void v2Condition::finalize() {}
void v2Condition::read(IStreamBase* stream) {
    (void)stream;
}
v2ConditionStub::~v2ConditionStub() {}
void v2ConditionStub::finalize() {}
void v2ConditionStub::read(IStreamBase* stream) {
    (void)stream;
}
}  // namespace Structs

// ---------------------------------------------------------------------------------------------------------------
// Helpers for the tests
// ---------------------------------------------------------------------------------------------------------------

namespace {

// Runs a trace into a temporary file. Returns what it wrote and stores what it returned.
template <class Trace>
std::string CaptureTrace(Trace trace, std::size_t* returned) {
    std::FILE* fp = std::tmpfile();
    if (fp == nullptr) {
        return std::string("<no tmpfile>");
    }
    *returned = trace(reinterpret_cast<__sFILE*>(fp));
    std::fflush(fp);
    std::rewind(fp);
    std::string text;
    char buf[256];
    std::size_t n = 0;
    while ((n = std::fread(buf, 1, sizeof buf, fp)) > 0) {
        text.append(buf, n);
    }
    std::fclose(fp);
    return text;
}

// The quest row used by the Condition_IsQuestInStateGeneric tests: quest id in m_w2, required state in m_w3.
void SetRow(Structs::v2ConditionStub& row, int id, int state) {
    row.Op1 = id;
    row.Op2 = state;
}

void TestConstantConditions() {
    Condition_IsLevelInState levelInState;
    Condition_IsPlayerAtLevel playerAtLevel;
    Check(levelInState.Eval(), "Condition_IsLevelInState::Eval returns true");
    Check(playerAtLevel.Eval(), "Condition_IsPlayerAtLevel::Eval returns true");

    std::size_t ret = 0;
    std::string text = CaptureTrace(
        [&](__sFILE* s) { return levelInState.DBG_TraceDetailedConditionInformation(s); }, &ret);
    Check(ret == 0x1C, "Condition_IsLevelInState trace returns 0x1C");
    Check(text == "\t  Condition_IsLevelInState\n", "Condition_IsLevelInState trace text");

    text = CaptureTrace([&](__sFILE* s) { return playerAtLevel.DBG_TraceDetailedConditionInformation(s); }, &ret);
    Check(ret == 0x1D, "Condition_IsPlayerAtLevel trace returns 0x1D");
    Check(text == "\t  Condition_IsPlayerAtLevel\n", "Condition_IsPlayerAtLevel trace text");
}

void TestPlayerInLevel() {
    Structs::v2ConditionStub row;
    Condition_IsPlayerInLevel cond;
    cond.m_stub = &row;

    g_currentLevel = reinterpret_cast<Level*>(g_levelStorage);
    g_currentLevel->m_levelListIndex = 7;

    row.Op1 = 7;
    Check(cond.Eval(), "Condition_IsPlayerInLevel true when the row's level is the current one");
    row.Op1 = 6;
    Check(!cond.Eval(), "Condition_IsPlayerInLevel false for another level");

    std::size_t ret = 0;
    row.Op1 = 1;
    std::string text = CaptureTrace(
        [&](__sFILE* s) { return cond.DBG_TraceDetailedConditionInformation(s); }, &ret);
    const std::string expected1 = std::string("\t    Level       : ") + kLevelNames[1] + "\n\n";
    Check(text == expected1, "Condition_IsPlayerInLevel trace names level 1");
    Check(ret == expected1.size(), "Condition_IsPlayerInLevel trace returns the written length");

    row.Op1 = 3;  // at Arrays::LevelList::size
    text = CaptureTrace([&](__sFILE* s) { return cond.DBG_TraceDetailedConditionInformation(s); }, &ret);
    Check(text == "\t    Level       : na\n\n", "Condition_IsPlayerInLevel trace prints na past the table");

    row.Op1 = -1;
    text = CaptureTrace([&](__sFILE* s) { return cond.DBG_TraceDetailedConditionInformation(s); }, &ret);
    Check(text == "\t    Level       : na\n\n", "Condition_IsPlayerInLevel trace prints na for a negative index");
}

void TestQuestInStateGeneric() {
    Structs::v2ConditionStub row;
    SetRow(row, 1, 2);  // quest 1, required state 2

    PlayerInfo* player = reinterpret_cast<PlayerInfo*>(g_playerStorage);
    player->unk_660 = reinterpret_cast<Character*>(&g_characterMarker);
    Quest* quest = reinterpret_cast<Quest*>(g_questStorage);
    g_questIdInWorld = 1;

    Condition_IsQuestInStateGeneric cond;
    cond.m_stub = &row;

    struct Case {
        int comparator;
        int actual;
        bool expected;
    };
    const Case cases[] = {
        {Condition_IsQuestInStateGeneric::COMPARE_EQUAL, 2, true},
        {Condition_IsQuestInStateGeneric::COMPARE_EQUAL, 3, false},
        {Condition_IsQuestInStateGeneric::COMPARE_EQUAL, 1, false},
        {Condition_IsQuestInStateGeneric::COMPARE_LOWER, 1, true},   // required 2 > actual 1
        {Condition_IsQuestInStateGeneric::COMPARE_LOWER, 2, false},
        {Condition_IsQuestInStateGeneric::COMPARE_LOWER, 3, false},
        {Condition_IsQuestInStateGeneric::COMPARE_HIGHER, 3, true},  // required 2 < actual 3
        {Condition_IsQuestInStateGeneric::COMPARE_HIGHER, 2, false},
        {Condition_IsQuestInStateGeneric::COMPARE_HIGHER, 1, false},
        {5, 2, false},                                               // any other comparator is false
    };
    for (const Case& c : cases) {
        quest->m_state = c.actual;
        cond.m_comparator = c.comparator;
        Check(cond.Eval() == c.expected, "Condition_IsQuestInStateGeneric::Eval comparator table");
    }
    Check(g_lastQuestId == 1 && g_lastQuestDifficulty == -1, "quest lookup uses the row id and difficulty -1");

    // The derived classes share Eval.
    Condition_IsQuestInState equalCond;
    equalCond.m_stub = &row;
    equalCond.m_comparator = Condition_IsQuestInStateGeneric::COMPARE_EQUAL;
    quest->m_state = 2;
    Check(equalCond.Eval(), "Condition_IsQuestInState::Eval is true when the states are equal");
    Condition_IsQuestStateHigher higherCond;
    higherCond.m_stub = &row;
    higherCond.m_comparator = Condition_IsQuestInStateGeneric::COMPARE_HIGHER;
    quest->m_state = 3;
    Check(higherCond.Eval(), "Condition_IsQuestStateHigher::Eval is true when the quest is further on");

    // No local character, and no quest with the row's id, are both false.
    player->unk_660 = nullptr;
    cond.m_comparator = Condition_IsQuestInStateGeneric::COMPARE_EQUAL;
    quest->m_state = 2;
    Check(!cond.Eval(), "no local character gives false");
    player->unk_660 = reinterpret_cast<Character*>(&g_characterMarker);
    g_questIdInWorld = 9;
    Check(!cond.Eval(), "a missing quest gives false");
    g_questIdInWorld = 1;
}

void TestQuestTrace() {
    Structs::v2ConditionStub row;
    Condition_IsQuestInStateGeneric cond;
    cond.m_stub = &row;

    std::size_t ret = 0;
    SetRow(row, 1, 2);
    const std::string stateTail = std::string("\t    State       : ") + kStateNames[2] + "\n\n";
    const std::string expected = std::string("\t    Quest       : ") + kQuestNames[1] + "\n" + stateTail;
    std::string text = CaptureTrace([&](__sFILE* s) { return cond.DBG_TraceDetailedConditionInformation(s); }, &ret);
    Check(text == expected, "Condition_IsQuestInStateGeneric trace names the quest and the state");
    Check(ret == stateTail.size(), "Condition_IsQuestInStateGeneric trace returns the state line's length");

    SetRow(row, 5, 2);  // past Arrays::v2Quests::size
    text = CaptureTrace([&](__sFILE* s) { return cond.DBG_TraceDetailedConditionInformation(s); }, &ret);
    Check(text == std::string("\t    Quest       : na\n") + stateTail,
          "Condition_IsQuestInStateGeneric trace prints na for a quest past the table");
}

void TestDeleteThroughBase() {
    // The complete destructor chain and the compiler's deleting destructor run without a crash.
    Condition* a = new Condition_IsLevelInState();
    Condition* b = new Condition_IsPlayerInLevel();
    Condition* c = new Condition_IsQuestInState();
    Condition* d = new Condition_IsQuestStateHigher();
    delete a;
    delete b;
    delete c;
    delete d;
    Check(true, "deleting destructors run");
}

}  // namespace

int main() {
    TestConstantConditions();
    TestPlayerInLevel();
    TestQuestInStateGeneric();
    TestQuestTrace();
    TestDeleteThroughBase();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("pack1-f220a8-0 tests passed\n");
    return 0;
}
