// Test for the PlayerSavegame batch g1-game-items-save-PlayerSavegame-56ccee-2
// (game-items-save/src/g1-game-items-save-PlayerSavegame-56ccee-2.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Covers the level-state table (SG_SetLevelState, SG_GetLevelState, SG_IsMapLocSeen), the skill-set walks
// (SG_GetSkillInSlot, SG_GetSkillSlot, SG_TellSlots, SG_HasSkillSlots), SG_GenerateSeeds, SG_ReloadSkills and the quest
// forwarders. The other PlayerSavegame and QuestSavegame batches, the core memory, the glitch timer and the pydata
// table size are stand-ins here. SG_UnpackQuestSync needs a StreamBuffer and is not covered.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

namespace {

int g_checks = 0;
int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        ++g_checks;                                                              \
        if (!(cond)) {                                                           \
            ++g_failures;                                                        \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
        }                                                                        \
    } while (0)

// Stand-in state, written by the stubs below.
std::uint32_t g_now = 0;
int g_mapLocState = 0;
int g_mapLocLocation = -1;
int g_mapLocDifficulty = -1;
int g_initSkillsCalls = 0;
int g_loadCalls = 0;
int g_loadMode = -1;
int g_loadResult = 0;
int g_questDifficulty = -1;
int g_numQuestsResult = 0;
int g_currentQuestResult = 0;
QuestSavegame g_questLog;

struct Told {
    int slot;
    unsigned int row;
    void* user;
};

// The callback SG_TellSlots invokes. The user pointer is the vector it appends to.
void RecordTold(int slot, unsigned int row, void* user) {
    static_cast<std::vector<Told>*>(user)->push_back(Told{slot, row, user});
}

bool AcceptAll(const Quest*) { return true; }

}  // namespace

// Stand-ins for symbols the batch source uses but other batches define.
int gAssertLevel = 0;
std::uint32_t Arrays::LevelList::size = 4;
std::int32_t PlayerSavegame::m_difficultyLevel = 0;
void CustomFree(void* p) { std::free(p); }
std::uint32_t glitch::os::Timer::getRealTime() { return g_now; }

PlayerSavegame::PlayerSavegame() {}
PlayerSavegame::~PlayerSavegame() {}
int PlayerSavegame::SG_GetMapLocState(int location, int difficulty) const {
    g_mapLocLocation = location;
    g_mapLocDifficulty = difficulty;
    return g_mapLocState;
}
QuestSavegame* PlayerSavegame::SG_GetQuestSG() { return &g_questLog; }
const QuestSavegame* PlayerSavegame::SG_GetQuestSG() const { return &g_questLog; }
void PlayerSavegame::_InitSkills() { ++g_initSkillsCalls; }
int PlayerSavegame::SG_Load(int loadMode) {
    ++g_loadCalls;
    g_loadMode = loadMode;
    return g_loadResult;
}

QuestSavegame::QuestSavegame() {}
QuestSavegame::~QuestSavegame() {}
void QuestSavegame::InitQuests() {}
void QuestSavegame::UnpackQuests(int, IStreamBase*, bool) {}
void QuestSavegame::CompileQuests(bool) {}
void QuestSavegame::SG_VerifyCurrentQuest(int difficulty) { g_questDifficulty = difficulty; }
int QuestSavegame::SG_GetCurrentPrimaryQuest(int difficulty) {
    g_questDifficulty = difficulty;
    return 0;
}
int QuestSavegame::SG_GetCurrentQuest(int difficulty) {
    g_questDifficulty = difficulty;
    return g_currentQuestResult;
}
Quest* QuestSavegame::SG_GetPrevQuest(QuestPredicate, int, int difficulty) const {
    g_questDifficulty = difficulty;
    return nullptr;
}
Quest* QuestSavegame::SG_GetNextQuest(QuestPredicate, int, int difficulty) const {
    g_questDifficulty = difficulty;
    return nullptr;
}
Quest* QuestSavegame::SG_GetQuestByID(QuestPredicate, int, int difficulty) const {
    g_questDifficulty = difficulty;
    return nullptr;
}
int QuestSavegame::SG_GetNumQuests(QuestPredicate, int difficulty) const {
    g_questDifficulty = difficulty;
    return g_numQuestsResult;
}
void QuestSavegame::SG_DBG_TraceDetailedQuestInformation(__sFILE*, int, int) {}
Quest* QuestSavegame::SG_GetQuestByName(const char*, int difficulty) {
    g_questDifficulty = difficulty;
    return nullptr;
}
Quest* QuestSavegame::SG_GetQuestByID(int, int difficulty, bool) {
    g_questDifficulty = difficulty;
    return nullptr;
}

namespace {

void TestLevelStates() {
    std::int32_t levels0[8] = {0};
    std::int32_t levels1[8] = {0};
    std::int32_t levels2[8] = {0};
    PlayerSavegame ps;
    ps.m_levelStates[0] = levels0;
    ps.m_levelStates[1] = levels1;
    ps.m_levelStates[2] = levels2;

    // SG_SetLevelState(level, state, difficulty): the level indexes the table, the state is stored.
    ps.SG_SetLevelState(3, 1, 0);
    CHECK(levels0[3] == 1);
    CHECK(levels0[1] == 0);
    CHECK(ps.SG_GetLevelState(3, 0) == 1);
    ps.SG_SetLevelState(5, 0, 2);
    CHECK(levels2[5] == 0);
    CHECK(levels0[5] == 0);
    CHECK(levels1[3] == 0);
    CHECK(ps.SG_GetLevelState(5, 2) == 0);

    // SG_IsMapLocSeen is the map state 2, asked for the given location and difficulty.
    g_mapLocState = 2;
    CHECK(ps.SG_IsMapLocSeen(4, 1));
    CHECK(g_mapLocLocation == 4);
    CHECK(g_mapLocDifficulty == 1);
    g_mapLocState = 1;
    CHECK(!ps.SG_IsMapLocSeen(4, 1));
}

void TestSkillSets() {
    PlayerSavegame ps;
    ps.m_skillsSize = 2;
    ps.m_skills = nullptr;
    ps.m_skillSets.assign(1, std::map<int, int>());
    ps.m_skillSets[0] = std::map<int, int>{{1, 10}, {3, 30}, {4, 10}};

    // SG_GetSkillInSlot: the row of the slot, or -1.
    CHECK(ps.SG_GetSkillInSlot(1) == 10);
    CHECK(ps.SG_GetSkillInSlot(3) == 30);
    CHECK(ps.SG_GetSkillInSlot(2) == -1);
    CHECK(ps.SG_GetSkillInSlot(0) == -1);
    CHECK(ps.SG_GetSkillInSlot(9) == -1);

    // SG_GetSkillSlot: the first slot in slot order whose row equals the argument, or -1.
    CHECK(ps.SG_GetSkillSlot(30) == 3);
    CHECK(ps.SG_GetSkillSlot(10) == 1);
    CHECK(ps.SG_GetSkillSlot(77) == -1);
    CHECK(ps.SG_GetSkillSlot(0) == -1);

    // SG_HasSkillSlots: true with entries, false when the set is empty.
    CHECK(ps.SG_HasSkillSlots());
    PlayerSavegame empty;
    empty.m_skillSets.assign(1, std::map<int, int>());
    CHECK(!empty.SG_HasSkillSlots());
    CHECK(empty.SG_GetSkillInSlot(1) == -1);
    CHECK(empty.SG_GetSkillSlot(10) == -1);

    // SG_TellSlots: callback(slot, row, user) in slot order, with the user pointer passed through.
    std::vector<Told> told;
    ps.SG_TellSlots(RecordTold, &told);
    CHECK(told.size() == 3);
    if (told.size() == 3) {
        CHECK(told[0].slot == 1 && told[0].row == 10 && told[0].user == &told);
        CHECK(told[1].slot == 3 && told[1].row == 30);
        CHECK(told[2].slot == 4 && told[2].row == 10);
    }
    // A null callback makes no calls (the original's crash path is not reproduced).
    ps.SG_TellSlots(nullptr, &told);
    CHECK(told.size() == 3);

    std::vector<Told> none;
    empty.SG_TellSlots(RecordTold, &none);
    CHECK(none.empty());
}

void TestSeeds() {
    PlayerSavegame ps;
    g_now = 1000;
    ps.SG_GenerateSeeds();
    CHECK(ps.m_seeds[0] == 1000);
    CHECK(ps.m_seeds[1] == 1000 + 21371);
    CHECK(ps.m_seeds[2] == 1000 + 86186);

    // The sums wrap as the 32-bit original does.
    g_now = 0xFFFFFFFFu;
    ps.SG_GenerateSeeds();
    CHECK(ps.m_seeds[0] == -1);
    CHECK(ps.m_seeds[1] == 21370);
    CHECK(ps.m_seeds[2] == 86185);
}

void TestReloadSkills() {
    PlayerSavegame ps;
    ps.m_skillsSize = 2;
    ps.m_skills = static_cast<PlayerSavegame::SkillRecord*>(std::malloc(2 * sizeof(PlayerSavegame::SkillRecord)));
    g_initSkillsCalls = 0;
    g_loadCalls = 0;
    g_loadResult = 42;
    const int result = ps.SG_ReloadSkills();
    CHECK(result == 42);
    CHECK(ps.m_skills == nullptr);
    CHECK(g_initSkillsCalls == 1);
    CHECK(g_loadCalls == 1);
    CHECK(g_loadMode == 8);

    // With no skill rows yet, nothing is freed and the rest runs the same way.
    g_initSkillsCalls = 0;
    g_loadResult = 0;
    CHECK(ps.SG_ReloadSkills() == 0);
    CHECK(g_initSkillsCalls == 1);
}

void TestQuestForwarders() {
    PlayerSavegame ps;

    g_numQuestsResult = 7;
    CHECK(ps.SG_GetNumQuests(AcceptAll, 2) == 7);
    CHECK(g_questDifficulty == 2);

    g_currentQuestResult = 5;
    CHECK(ps.SG_GetCurrentQuest(1) == 5);
    CHECK(g_questDifficulty == 1);

    ps.SG_VerifyCurrentQuest(0);
    CHECK(g_questDifficulty == 0);

    CHECK(ps.SG_GetQuestByName("quest", 2) == nullptr);
    CHECK(g_questDifficulty == 2);
}

}  // namespace

int main() {
    TestLevelStates();
    TestSkillSets();
    TestSeeds();
    TestReloadSkills();
    TestQuestForwarders();
    std::printf("%d checks, %d failures\n", g_checks, g_failures);
    return g_failures == 0 ? 0 : 1;
}
