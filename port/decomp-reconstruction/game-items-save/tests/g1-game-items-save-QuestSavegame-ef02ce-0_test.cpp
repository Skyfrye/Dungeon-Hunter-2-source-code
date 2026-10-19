// Test for the QuestSavegame batch (game-items-save/src/g1-game-items-save-QuestSavegame-ef02ce-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is linked whole, so the external symbols it calls are stand-ins here: the Quest members it uses
// (IsPrimary, Compile, Update, Synchronize, DBG_TraceDetailedQuestInformation, ~Quest), Character::SG_GetGameDifficulty,
// CustomFree, gAssertLevel, LC_API_STRCMP and the Arrays::v2Quests name table. Quest objects are zeroed storage (Quest is
// not polymorphic, and the batch reads and writes only m_state and m_closed). The checks cover the batch's own logic: the
// predicate searches, the current-quest verification, the primary and closed tests, compile-once, the lookup by name, the
// synchronization of the whole save and of one difficulty, and the destructor's frees.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <set>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/Quest.hpp"
#include "dh2/QuestSavegame.hpp"
#include "pydata-accessors/member_names.hpp"

// ---- stand-ins for the externals the batch calls ----
int gAssertLevel = 0;

namespace {

int g_failures = 0;
int g_difficulty = 0;       // what Character::SG_GetGameDifficulty returns

int g_questDtors = 0;       // Quest::~Quest calls
int g_compiles = 0;         // Quest::Compile calls
int g_updates = 0;          // Quest::Update calls
int g_syncCalls = 0;        // Quest::Synchronize calls
int g_syncLastPrimaryOnly = -1;
int g_traces = 0;           // Quest::DBG_TraceDetailedQuestInformation calls
std::set<const Quest*> g_primary;  // the quests IsPrimary reports true for
unsigned char g_ownerStorage[16];  // stands for a Character; only its address is used
unsigned char g_otherOwnerStorage[16];

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

// CustomFree comes from pydata-accessors/deps/stream_reader.hpp (an inline std::free) through dh2/Character.hpp.

int LC_API_STRCMP(const char* a, const char* b) {
    return std::strcmp(a, b);
}

int Character::SG_GetGameDifficulty() {
    return g_difficulty;
}

bool Quest::IsPrimary() const {
    return g_primary.count(this) != 0;
}

void Quest::Compile() {
    ++g_compiles;
}

void Quest::Update() {
    ++g_updates;
}

void Quest::Synchronize(const Quest* source, bool primaryOnly) {
    (void)source;
    ++g_syncCalls;
    g_syncLastPrimaryOnly = primaryOnly ? 1 : 0;
}

int Quest::DBG_TraceDetailedQuestInformation(__sFILE* stream) const {
    (void)stream;
    ++g_traces;
    return 0;
}

Quest::~Quest() {
    // The members of Quest are destroyed after this body, so their destructors are stand-ins too. Quest objects here
    // are never constructed, so these have nothing to release.
    ++g_questDtors;
}

ConditionList::~ConditionList() {}
ObjectiveList::~ObjectiveList() {}
RewardList::~RewardList() {}

pydata::NameTable Arrays::v2Quests::m_memberNames;

namespace {

// A zeroed Quest with the given state, primary flag and closed flag.
Quest* MakeQuest(int state, bool primary, bool closed) {
    Quest* quest = static_cast<Quest*>(std::calloc(1, sizeof(Quest)));
    quest->m_state = state;
    quest->m_closed = closed;
    if (primary) {
        g_primary.insert(quest);
    }
    return quest;
}

bool IsActive(const Quest* quest) {
    return quest->m_state == Quest::QUEST_ACTIVE;
}

bool IsLocked(const Quest* quest) {
    return quest->m_state == Quest::QUEST_LOCKED;
}

bool AnyQuest(const Quest* quest) {
    (void)quest;
    return true;
}

// Releases the quests a test made. The destructor of a QuestSavegame frees its own quests, so a list is cleared first.
void FreeListed(QuestSavegame& qs) {
    for (int d = 0; d < 3; ++d) {
        for (Quest* quest : qs.m_quests[d]) {
            if (quest != nullptr) {
                g_primary.erase(quest);
                std::free(quest);
            }
        }
        qs.m_quests[d].clear();
    }
}

}  // namespace

int main() {
    Character* owner = reinterpret_cast<Character*>(g_ownerStorage);
    Character* otherOwner = reinterpret_cast<Character*>(g_otherOwnerStorage);

    // Constructor: empty lists, nothing compiled, current quests -1, act and min act 1, no owner.
    {
        QuestSavegame fresh;
        for (int d = 0; d < 3; ++d) {
            Check(!fresh.m_compiled[d], "ctor: nothing compiled");
            Check(fresh.m_currentQuest[d] == -1, "ctor: current quest -1");
            Check(fresh.m_currentPrimaryQuest[d] == -1, "ctor: current primary quest -1");
            Check(fresh.m_act[d] == 1, "ctor: act 1");
            Check(fresh.m_minAct[d] == 1, "ctor: min act 1");
            Check(fresh.m_quests[d].empty(), "ctor: empty list");
        }
        Check(fresh.m_owner == nullptr, "ctor: no owner");
    }

    // IsActCompatible is inclusive on both ends of [min act, act].
    {
        QuestSavegame qs;
        qs.m_owner = owner;
        qs.m_minAct[0] = 1;
        qs.m_act[0] = 3;
        Check(qs.IsActCompatible(1, 0), "IsActCompatible: lower bound inclusive");
        Check(qs.IsActCompatible(3, 0), "IsActCompatible: upper bound inclusive");
        Check(qs.IsActCompatible(2, 0), "IsActCompatible: inside");
        Check(!qs.IsActCompatible(0, 0), "IsActCompatible: below");
        Check(!qs.IsActCompatible(4, 0), "IsActCompatible: above");
    }

    // The lookups and the current quest, over one list of four quests:
    //   0: active, primary; 1: available, primary; 2: active, secondary; 3: active, primary, closed.
    {
        QuestSavegame qs;
        qs.m_owner = owner;
        g_difficulty = 0;
        Quest* q0 = MakeQuest(Quest::QUEST_ACTIVE, true, false);
        Quest* q1 = MakeQuest(Quest::QUEST_AVAILABLE, true, false);
        Quest* q2 = MakeQuest(Quest::QUEST_ACTIVE, false, false);
        Quest* q3 = MakeQuest(Quest::QUEST_ACTIVE, true, false);
        qs.m_quests[0] = {q0, q1, q2, q3};

        Check(qs.SG_GetNumQuests(IsActive, 0) == 3, "SG_GetNumQuests counts active quests");
        Check(qs.SG_GetNumQuests(AnyQuest, 0) == 4, "SG_GetNumQuests counts every quest");
        Check(qs.SG_GetNumQuests(IsLocked, 0) == 0, "SG_GetNumQuests with no match");
        Check(qs.SG_GetNumQuests(AnyQuest, 1) == 0, "SG_GetNumQuests on an empty difficulty");

        Check(qs.SG_GetQuestByID(IsActive, 0, 0) == q0, "SG_GetQuestByID nth 0");
        Check(qs.SG_GetQuestByID(IsActive, 1, 0) == q2, "SG_GetQuestByID nth 1");
        Check(qs.SG_GetQuestByID(IsActive, 2, 0) == q3, "SG_GetQuestByID nth 2");
        Check(qs.SG_GetQuestByID(IsActive, 3, 0) == nullptr, "SG_GetQuestByID past the last match");
        Check(qs.SG_GetQuestByID(IsActive, -1, 0) == nullptr, "SG_GetQuestByID negative nth");

        Check(qs.SG_GetNextQuest(IsActive, 1, 0) == q2, "SG_GetNextQuest from 1");
        Check(qs.SG_GetNextQuest(IsActive, 3, 0) == q3, "SG_GetNextQuest from the last index");
        Check(qs.SG_GetNextQuest(IsActive, 4, 0) == nullptr, "SG_GetNextQuest past the end");
        Check(qs.SG_GetNextQuest(IsActive, -7, 0) == q0, "SG_GetNextQuest negative start counts as 0");
        Check(qs.SG_GetNextQuest(IsLocked, 0, 0) == nullptr, "SG_GetNextQuest with no match");

        Check(qs.SG_GetPrevQuest(IsActive, 4, 0) == q3, "SG_GetPrevQuest from past the end");
        Check(qs.SG_GetPrevQuest(IsActive, 3, 0) == q2, "SG_GetPrevQuest excludes its own index");
        Check(qs.SG_GetPrevQuest(IsActive, 1, 0) == q0, "SG_GetPrevQuest from 1");
        Check(qs.SG_GetPrevQuest(IsActive, 0, 0) == nullptr, "SG_GetPrevQuest from 0");
        Check(qs.SG_GetPrevQuest(IsActive, 99, 0) == q3, "SG_GetPrevQuest clips a large start to the list");

        // Current quest: with -1 the first primary quest in state 6 is chosen; a current quest in state 6 is kept.
        Check(qs.SG_GetCurrentPrimaryQuest(0) == -1, "SG_GetCurrentPrimaryQuest starts at -1");
        Check(qs.SG_GetCurrentQuest(0) == 0, "SG_GetCurrentQuest picks the first primary active quest");
        qs.m_currentQuest[0] = 2;
        Check(qs.SG_GetCurrentQuest(0) == 2, "SG_GetCurrentQuest keeps an active current quest");
        q2->m_state = Quest::QUEST_AVAILABLE;
        Check(qs.SG_GetCurrentQuest(0) == 0, "SG_GetCurrentQuest moves off an inactive current quest");
        q0->m_state = Quest::QUEST_AVAILABLE;
        Check(qs.SG_GetCurrentQuest(0) == 3, "SG_GetCurrentQuest finds the next primary active quest");
        q3->m_state = Quest::QUEST_AVAILABLE;
        qs.m_currentQuest[0] = -1;
        Check(qs.SG_GetCurrentQuest(0) == -1, "SG_GetCurrentQuest stays -1 when no quest qualifies");
        q3->m_state = Quest::QUEST_ACTIVE;

        // HasMainQuestUpdated: a primary quest with the closed flag. A secondary quest does not count.
        Check(!qs.HasMainQuestUpdated(0), "HasMainQuestUpdated false while no primary quest is closed");
        q3->m_closed = false;
        q2->m_closed = true;
        Check(!qs.HasMainQuestUpdated(0), "HasMainQuestUpdated ignores a closed secondary quest");
        q2->m_closed = false;
        q3->m_closed = true;
        Check(qs.HasMainQuestUpdated(0), "HasMainQuestUpdated true for a closed primary quest");
        q3->m_closed = false;

        FreeListed(qs);
    }

    // Compile: once per difficulty unless forced. The owner's difficulty picks the list.
    {
        QuestSavegame qs;
        qs.m_owner = owner;
        g_difficulty = 1;
        const int before = g_compiles;
        qs.m_quests[1] = {MakeQuest(Quest::QUEST_LOCKED, false, false), MakeQuest(Quest::QUEST_LOCKED, false, false)};
        qs.CompileQuests(false);
        Check(qs.m_compiled[1], "CompileQuests sets the compiled flag");
        Check(!qs.m_compiled[0], "CompileQuests leaves other difficulties alone");
        Check(g_compiles - before == 2, "CompileQuests compiles each quest of the owner's list");
        qs.CompileQuests(false);
        Check(g_compiles - before == 2, "CompileQuests does nothing once compiled");
        qs.CompileQuests(true);
        Check(g_compiles - before == 4, "CompileQuests with force compiles again");
        FreeListed(qs);
        g_difficulty = 0;
    }

    // SG_GetQuestByID(int, difficulty, compile): a bad id is an ASSERT and null; compile compiles the owner's list first.
    {
        QuestSavegame qs;
        qs.m_owner = owner;
        g_difficulty = 0;
        Quest* a0 = MakeQuest(Quest::QUEST_LOCKED, false, false);
        Quest* a1 = MakeQuest(Quest::QUEST_LOCKED, false, false);
        qs.m_quests[0] = {a0, a1};
        Check(qs.SG_GetQuestByID(1, 0, false) == a1, "SG_GetQuestByID(int) returns the row");
        Check(qs.SG_GetQuestByID(-1, 0, false) == nullptr, "SG_GetQuestByID(int) negative id is null");
        const int before = g_compiles;
        Check(qs.SG_GetQuestByID(2, 0, true) == nullptr, "SG_GetQuestByID(int) out-of-range id is null");
        Check(g_compiles == before, "SG_GetQuestByID(int) does not compile on a bad id");
        Check(qs.SG_GetQuestByID(0, 0, true) == a0, "SG_GetQuestByID(int) with compile returns the row");
        Check(g_compiles - before == 2, "SG_GetQuestByID(int) with compile compiles the owner's list");
        FreeListed(qs);
    }

    // SG_GetQuestByName: the name table gives the row, the row gives the quest of the difficulty.
    {
        QuestSavegame qs;
        qs.m_owner = owner;
        g_difficulty = 0;
        Quest* b0 = MakeQuest(Quest::QUEST_LOCKED, false, false);
        Quest* b1 = MakeQuest(Quest::QUEST_LOCKED, false, false);
        Quest* b2 = MakeQuest(Quest::QUEST_LOCKED, false, false);
        qs.m_quests[0] = {b0, b1, b2};
        char* names[] = {const_cast<char*>("Alpha"), const_cast<char*>("Beta"), const_cast<char*>("Gamma")};
        Arrays::v2Quests::m_memberNames.names = names;
        Arrays::v2Quests::m_memberNames.size = 3;
        Arrays::v2Quests::size = 3;  // the search bound is the table's row count
        Check(qs.SG_GetQuestByName("Beta", 0) == b1, "SG_GetQuestByName finds the row by name");
        Check(qs.SG_GetQuestByName("Gamma", 0) == b2, "SG_GetQuestByName finds the last row");
        Check(qs.SG_GetQuestByName("Delta", 0) == nullptr, "SG_GetQuestByName unknown name is null");
        Arrays::v2Quests::m_memberNames.size = 0;
        Arrays::v2Quests::size = 0;
        Check(qs.SG_GetQuestByName("Alpha", 0) == nullptr, "SG_GetQuestByName with no rows is null");
        Arrays::v2Quests::m_memberNames.names = nullptr;
        Arrays::v2Quests::m_memberNames.size = 0;
        FreeListed(qs);
    }

    // UpdateQuests: compile (once unless forced), then Update on each quest of the owner's list.
    {
        QuestSavegame qs;
        qs.m_owner = owner;
        g_difficulty = 0;
        qs.m_quests[0] = {MakeQuest(Quest::QUEST_LOCKED, false, false), MakeQuest(Quest::QUEST_LOCKED, false, false),
                          MakeQuest(Quest::QUEST_LOCKED, false, false)};
        int updates = g_updates;
        int compiles = g_compiles;
        qs.UpdateQuests(false);
        Check(g_updates - updates == 3, "UpdateQuests updates each quest once");
        Check(g_compiles - compiles == 3, "UpdateQuests compiles the list on the first call");
        updates = g_updates;
        compiles = g_compiles;
        qs.UpdateQuests(false);
        Check(g_updates - updates == 3, "UpdateQuests updates again on a second call");
        Check(g_compiles == compiles, "UpdateQuests does not recompile without force");
        qs.UpdateQuests(true);
        Check(g_compiles - compiles == 3, "UpdateQuests with force recompiles");
        FreeListed(qs);
    }

    // SG_DBG_TraceDetailedQuestInformation: all quests for a negative state, otherwise those in that state.
    {
        QuestSavegame qs;
        qs.m_owner = owner;
        g_difficulty = 0;
        qs.m_quests[0] = {MakeQuest(Quest::QUEST_ACTIVE, false, false), MakeQuest(Quest::QUEST_AVAILABLE, false, false),
                          MakeQuest(Quest::QUEST_ACTIVE, false, false)};
        int traces = g_traces;
        qs.SG_DBG_TraceDetailedQuestInformation(nullptr, -1, 0);
        Check(g_traces - traces == 3, "SG_DBG_TraceDetailedQuestInformation traces every quest for state -1");
        traces = g_traces;
        qs.SG_DBG_TraceDetailedQuestInformation(nullptr, Quest::QUEST_ACTIVE, 0);
        Check(g_traces - traces == 2, "SG_DBG_TraceDetailedQuestInformation traces only the given state");
        FreeListed(qs);
    }

    // Synchronize, whole save: owner, current quests, primary quests, act and compiled flags, then the quests of each
    // compiled list (primaryOnly false). The min act is not copied.
    {
        QuestSavegame dst;
        dst.m_owner = owner;
        dst.m_quests[0] = {MakeQuest(Quest::QUEST_LOCKED, false, false), MakeQuest(Quest::QUEST_LOCKED, false, false)};
        dst.m_quests[1] = {MakeQuest(Quest::QUEST_LOCKED, false, false)};

        QuestSavegame src;
        src.m_owner = otherOwner;
        src.m_currentQuest[0] = 0;
        src.m_currentQuest[1] = 1;
        src.m_currentQuest[2] = 2;
        src.m_currentPrimaryQuest[0] = 5;
        src.m_currentPrimaryQuest[1] = 6;
        src.m_currentPrimaryQuest[2] = 7;
        src.m_act[0] = 2;
        src.m_act[1] = 3;
        src.m_act[2] = 4;
        src.m_compiled[0] = true;
        src.m_compiled[1] = false;
        src.m_compiled[2] = false;
        src.m_minAct[0] = 9;
        src.m_quests[0] = {MakeQuest(Quest::QUEST_ACTIVE, false, false), MakeQuest(Quest::QUEST_ACTIVE, false, false)};

        const int syncBefore = g_syncCalls;
        Check(dst.Synchronize(src, false), "Synchronize whole save returns true");
        Check(dst.m_owner == otherOwner, "Synchronize whole save takes the other owner");
        Check(dst.m_currentQuest[0] == 0 && dst.m_currentQuest[1] == 1 && dst.m_currentQuest[2] == 2,
              "Synchronize whole save copies the current quests");
        Check(dst.m_currentPrimaryQuest[0] == 5 && dst.m_currentPrimaryQuest[1] == 6 && dst.m_currentPrimaryQuest[2] == 7,
              "Synchronize whole save copies the primary quests");
        Check(dst.m_act[0] == 2 && dst.m_act[1] == 3 && dst.m_act[2] == 4, "Synchronize whole save copies the acts");
        Check(dst.m_compiled[0] && !dst.m_compiled[1] && !dst.m_compiled[2], "Synchronize whole save copies compiled flags");
        Check(dst.m_minAct[0] == 1, "Synchronize whole save does not copy the min act");
        Check(g_syncCalls - syncBefore == 2, "Synchronize whole save synchronizes the compiled list only");
        Check(g_syncLastPrimaryOnly == 0, "Synchronize whole save passes primaryOnly false");

        FreeListed(dst);
        FreeListed(src);
    }

    // Synchronize with no owner on either side is false and changes nothing.
    {
        QuestSavegame dst;
        QuestSavegame src;
        src.m_owner = owner;
        src.m_act[0] = 4;
        Check(!dst.Synchronize(src, false), "Synchronize without a destination owner returns false");
        Check(dst.m_act[0] == 1, "Synchronize without an owner copies nothing");
        dst.m_owner = owner;
        src.m_owner = nullptr;
        Check(!dst.Synchronize(src, true), "Synchronize without a source owner returns false");
    }

    // Synchronize, one difficulty (the owner's): needs a primary closed quest in other, and other's act range to hold
    // this save's act. Copies the current primary quest, the act and the compiled flag, and synchronizes the list.
    {
        g_difficulty = 0;
        QuestSavegame src;
        src.m_owner = otherOwner;
        src.m_act[0] = 5;
        src.m_minAct[0] = 1;
        src.m_currentPrimaryQuest[0] = 4;
        src.m_compiled[0] = true;
        Quest* p0 = MakeQuest(Quest::QUEST_ACTIVE, true, true);
        Quest* p1 = MakeQuest(Quest::QUEST_ACTIVE, true, false);
        src.m_quests[0] = {p0, p1};

        QuestSavegame dst;
        dst.m_owner = owner;
        dst.m_act[0] = 3;
        dst.m_minAct[0] = 1;
        dst.m_currentQuest[0] = -1;
        dst.m_compiled[0] = false;
        dst.m_quests[0] = {MakeQuest(Quest::QUEST_LOCKED, false, false), MakeQuest(Quest::QUEST_LOCKED, false, false)};
        dst.m_currentPrimaryQuest[0] = -1;

        const int syncBefore = g_syncCalls;
        Check(dst.Synchronize(src, true), "Synchronize one difficulty returns true when other qualifies");
        Check(dst.m_currentQuest[0] == 4, "Synchronize one difficulty copies the current quest from other's primary");
        Check(dst.m_currentPrimaryQuest[0] == 4, "Synchronize one difficulty copies the primary quest");
        Check(dst.m_act[0] == 5, "Synchronize one difficulty copies the act");
        Check(dst.m_compiled[0], "Synchronize one difficulty copies the compiled flag");
        Check(g_syncCalls - syncBefore == 2, "Synchronize one difficulty synchronizes the list");
        Check(g_syncLastPrimaryOnly == 1, "Synchronize one difficulty passes primaryOnly true");

        // Fails when other has no closed primary quest: nothing changes.
        p0->m_closed = false;
        dst.m_act[0] = 3;
        dst.m_currentQuest[0] = -1;
        Check(!dst.Synchronize(src, true), "Synchronize one difficulty fails without a closed primary quest");
        Check(dst.m_currentQuest[0] == -1 && dst.m_act[0] == 3, "Synchronize one difficulty leaves a failed copy alone");

        // Fails when this save's act is outside other's range.
        p0->m_closed = true;
        dst.m_act[0] = 7;
        Check(!dst.Synchronize(src, true), "Synchronize one difficulty fails when the act is out of range");
        Check(dst.m_act[0] == 7, "Synchronize one difficulty keeps the act when it fails");

        FreeListed(src);
        FreeListed(dst);
    }

    // Destructor: each non-null quest is destroyed (~Quest) and freed with CustomFree; nulls are skipped. The list storage
    // goes with the members. Run in a nested scope so the destructor runs here. The free itself is not observable here
    // (the stand-in CustomFree is the inline std::free), so only the destructor calls are counted.
    {
        const int dtors = g_questDtors;
        {
            QuestSavegame qs;
            qs.m_owner = owner;
            qs.m_quests[0] = {MakeQuest(Quest::QUEST_LOCKED, false, false), MakeQuest(Quest::QUEST_LOCKED, false, false)};
            qs.m_quests[2] = {nullptr, MakeQuest(Quest::QUEST_LOCKED, false, false)};
        }
        Check(g_questDtors - dtors == 3, "~QuestSavegame destroys each non-null quest");
    }

    if (g_failures == 0) {
        std::printf("QuestSavegame batch test: all checks passed\n");
        return 0;
    }
    std::printf("QuestSavegame batch test: %d check(s) failed\n", g_failures);
    return 1;
}
