// Batch g1-game-items-save-QuestSavegame-ef02ce-0 (part 1 of 2): QuestSavegame, the quest state of one player for the
// three difficulties. Declarations and layout come from dh2/QuestSavegame.hpp. The Quest members used here (m_state,
// m_closed, IsPrimary, Compile, Update, Synchronize, DBG_TraceDetailedQuestInformation, ~Quest) come from dh2/Quest.hpp,
// and the owner's difficulty from Character::SG_GetGameDifficulty in dh2/Character.hpp.
//
// Conventions in this file:
//  * ASSERT: gAssertLevel 2 aborts (the original writes to address 0 to force a crash, as GCSingleton does), 1 prints
//    the ASSERT line and carries on, 0 stays silent. The messages and line numbers are the original's.
//  * Quest state 6 is Quest::QUEST_ACTIVE (dh2/Quest.hpp). The original compares the literal 6.
//  * m_quests[d] is std::vector<Quest*>. The original's three 12-byte vectors (begin, end, capacity) are released by
//    the members' own destructors after the destructor body. The original's loop frees them with CustomFree above 128
//    bytes and with the STL node allocator at 128 bytes or less; the STL runtime is out of scope.
//  * A Quest is destroyed explicitly (~Quest) and freed with CustomFree, as the original does.
//
// Partial in this batch:
//
// Not written here:
//  * ~QuestSavegame, the deleting destructor (0x46bf4c, D0): compiler-generated (~QuestSavegame, then the release).

#include "dh2/QuestSavegame.hpp"

#include <algorithm>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
#include "dh2/Quest.hpp"
#include "dh2/global/runtime_support.hpp"  // PushProfilingContext, PopProfilingContext
#include "pydata-accessors/arrays.hpp"

namespace {

// The original's source name for the ASSERT messages of this file.
const char kQuestSavegameSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\QuestSavegame.cpp";

// A failed ASSERT(expr) at the given line: level 2 crashes on purpose, level 1 prints the message and carries on.
void QuestSavegameAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        // The original writes to address 0 here to force a crash.
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kQuestSavegameSource, line);
    }
}

}  // namespace

// 0x46b004 _ZN13QuestSavegameC2Ev
// The C1 constructor (0x46b0a4, _ZN13QuestSavegameC1Ev) has the same body; this is the one definition.
// The three quest vectors start empty (the members are default-constructed, the original zeroes their pointers). Each
// difficulty's compiled flag is clear, its current quest and current primary quest are -1, its act and min act are 1.
// The owner is null.
QuestSavegame::QuestSavegame() {
    for (int d = 0; d < 3; ++d) {
        m_compiled[d] = false;
        m_currentQuest[d] = -1;
        m_currentPrimaryQuest[d] = -1;
        m_act[d] = 1;
        m_minAct[d] = 1;
    }
    m_owner = nullptr;
}

// 0x46b144 _ZNK13QuestSavegame15IsActCompatibleEii
// True when the act lies in [m_minAct[d], m_act[d]].
bool QuestSavegame::IsActCompatible(int act, int difficulty) const {
    return m_minAct[difficulty] <= act && act <= m_act[difficulty];
}

// 0x46b170 _ZNK13QuestSavegame15SG_GetNumQuestsEPFbPK5QuestEi
// Counts the quests of m_quests[d] that pred accepts.
int QuestSavegame::SG_GetNumQuests(QuestPredicate pred, int difficulty) const {
    int count = 0;
    for (Quest* quest : m_quests[difficulty]) {
        if (pred(quest)) {
            ++count;
        }
    }
    return count;
}

// 0x46b1d0 _ZNK13QuestSavegame15SG_GetQuestByIDEPFbPK5QuestEii
// The nth quest of m_quests[d] that pred accepts (counting from 0), or null.
Quest* QuestSavegame::SG_GetQuestByID(QuestPredicate pred, int nth, int difficulty) const {
    int matched = 0;
    for (Quest* quest : m_quests[difficulty]) {
        if (pred(quest)) {
            if (matched == nth) {
                return quest;
            }
            ++matched;
        }
    }
    return nullptr;
}

// 0x46b258 _ZNK13QuestSavegame15SG_GetNextQuestEPFbPK5QuestEii
// The first quest at index from or later that pred accepts, or null. A negative from counts as 0.
Quest* QuestSavegame::SG_GetNextQuest(QuestPredicate pred, int from, int difficulty) const {
    const std::vector<Quest*>& quests = m_quests[difficulty];
    const std::size_t start = from < 0 ? 0 : static_cast<std::size_t>(from);
    for (std::size_t i = start; i < quests.size(); ++i) {
        if (pred(quests[i])) {
            return quests[i];
        }
    }
    return nullptr;
}

// 0x46b2d4 _ZNK13QuestSavegame15SG_GetPrevQuestEPFbPK5QuestEii
// The last quest before index from that pred accepts, or null. The search starts at min(size, from) - 1 and runs down.
// The original reads past the list for a negative from; the port returns null there.
Quest* QuestSavegame::SG_GetPrevQuest(QuestPredicate pred, int from, int difficulty) const {
    const std::vector<Quest*>& quests = m_quests[difficulty];
    int end = static_cast<int>(quests.size());
    if (from < end) {
        end = from;
    }
    for (int i = end - 1; i >= 0; --i) {
        const std::size_t index = static_cast<std::size_t>(i);
        if (pred(quests[index])) {
            return quests[index];
        }
    }
    return nullptr;
}

// 0x46b35c _ZN13QuestSavegame25SG_GetCurrentPrimaryQuestEi
// m_currentPrimaryQuest[d]; -1 when none.
int QuestSavegame::SG_GetCurrentPrimaryQuest(int difficulty) {
    return m_currentPrimaryQuest[difficulty];
}

// 0x46b510 _ZN13QuestSavegame21SG_VerifyCurrentQuestEi
// Keeps m_currentQuest[d] when it names a quest in state 6 (QUEST_ACTIVE). Otherwise it points m_currentQuest[d] at the
// first primary quest in state 6, when there is one. The binary's return value is register residue (the caller
// SG_GetCurrentQuest ignores it), so the function is void.
void QuestSavegame::SG_VerifyCurrentQuest(int difficulty) {
    const std::vector<Quest*>& quests = m_quests[difficulty];
    const int current = m_currentQuest[difficulty];
    if (current != -1 && quests[static_cast<std::size_t>(current)]->m_state == Quest::QUEST_ACTIVE) {
        return;
    }
    for (std::size_t i = 0; i < quests.size(); ++i) {
        if (quests[i]->IsPrimary() && quests[i]->m_state == Quest::QUEST_ACTIVE) {
            m_currentQuest[difficulty] = static_cast<int>(i);
            return;
        }
    }
}

// 0x46b5c0 _ZN13QuestSavegame18SG_GetCurrentQuestEi
// Verifies the current quest of difficulty d, then returns m_currentQuest[d] (an index; -1 when none).
int QuestSavegame::SG_GetCurrentQuest(int difficulty) {
    SG_VerifyCurrentQuest(difficulty);
    return m_currentQuest[difficulty];
}

// 0x46b5dc _ZNK13QuestSavegame19HasMainQuestUpdatedEi
// True when some primary quest of m_quests[d] has the byte at Quest +0x5d set, which is Quest::m_closed.
bool QuestSavegame::HasMainQuestUpdated(int difficulty) const {
    for (const Quest* quest : m_quests[difficulty]) {
        if (quest->IsPrimary() && quest->m_closed) {
            return true;
        }
    }
    return false;
}

// 0x46b644 _ZN13QuestSavegame11SynchronizeERKS_b
// currentOnly false copies the whole save from other: the owner, then for each difficulty the current quest, the current
// primary quest, the act and the compiled flag. When other is compiled for a difficulty, each quest of that list is
// synchronized (Quest::Synchronize, primaryOnly false). Returns true.
// currentOnly true copies only the owner's difficulty, and only when other has a primary quest in state 6 with its
// closed flag set and the act is in other's range (HasMainQuestUpdated and IsActCompatible). Returns false otherwise.
// Both forms return false when either save has no owner.
bool QuestSavegame::Synchronize(const QuestSavegame& other, bool currentOnly) {
    if (m_owner == nullptr || other.m_owner == nullptr) {
        return false;
    }
    if (!currentOnly) {
        m_owner = other.m_owner;
        for (int d = 0; d < 3; ++d) {
            m_currentQuest[d] = other.m_currentQuest[d];
            m_currentPrimaryQuest[d] = other.m_currentPrimaryQuest[d];
            m_act[d] = other.m_act[d];
            m_compiled[d] = other.m_compiled[d];
            if (other.m_compiled[d]) {
                // The original walks this list and indexes other's list at the same position. The port stops at the
                // shorter list, which only changes behaviour where the original reads past the end of other's list.
                const std::size_t count = std::min(m_quests[d].size(), other.m_quests[d].size());
                for (std::size_t i = 0; i < count; ++i) {
                    m_quests[d][i]->Synchronize(other.m_quests[d][i], false);
                }
            }
        }
        return true;
    }

    const int difficulty = m_owner->SG_GetGameDifficulty();
    if (!other.HasMainQuestUpdated(difficulty) || !other.IsActCompatible(m_act[difficulty], difficulty)) {
        return false;
    }
    m_currentQuest[difficulty] = other.m_currentPrimaryQuest[difficulty];
    m_currentPrimaryQuest[difficulty] = other.m_currentPrimaryQuest[difficulty];
    m_act[difficulty] = other.m_act[difficulty];
    m_compiled[difficulty] = other.m_compiled[difficulty];
    const std::size_t count = std::min(m_quests[difficulty].size(), other.m_quests[difficulty].size());
    for (std::size_t i = 0; i < count; ++i) {
        m_quests[difficulty][i]->Synchronize(other.m_quests[difficulty][i], true);
    }
    return true;
}

// 0x46b824 _ZN13QuestSavegame13CompileQuestsEb
// Compiles the owner's difficulty list once: unless force is set, nothing happens after the first call. The compiled flag
// is set first, then Quest::Compile runs on each quest in list order.
void QuestSavegame::CompileQuests(bool force) {
    const int difficulty = m_owner->SG_GetGameDifficulty();
    if (!force && m_compiled[difficulty]) {
        return;
    }
    m_compiled[difficulty] = true;
    const std::size_t count = m_quests[difficulty].size();
    for (std::size_t i = 0; i < count; ++i) {
        m_quests[difficulty][i]->Compile();
    }
}

// 0x46b8b0 _ZN13QuestSavegame36SG_DBG_TraceDetailedQuestInformationEP7__sFILEii
// Compiles the owner's list (CompileQuests(false)), then traces each quest of difficulty d to the stream: all of them when
// state is negative, otherwise only those whose m_state equals state. The binary's return value is r0 left by the last
// call (the last quest examined, the trace's int, or CompileQuests' residue for an empty list), not a result, so the
// function is void. PlayerSavegame::SG_DBG_TraceDetailedQuestInformation returns nullptr for it.
void QuestSavegame::SG_DBG_TraceDetailedQuestInformation(__sFILE* stream, int state, int difficulty) {
    CompileQuests(false);
    const std::size_t count = m_quests[difficulty].size();
    for (std::size_t i = 0; i < count; ++i) {
        Quest* quest = m_quests[difficulty][i];
        if (state >= 0 && quest->m_state != state) {
            continue;
        }
        quest->DBG_TraceDetailedQuestInformation(stream);
    }
}

// 0x46b940 _ZN13QuestSavegame15SG_GetQuestByIDEiib
// m_quests[difficulty][id]. An id outside the list is an ASSERT and returns null. With compile set, the owner's list is
// compiled before the read.
Quest* QuestSavegame::SG_GetQuestByID(int id, int difficulty, bool compile) {
    if (id < 0 || id >= static_cast<int>(m_quests[difficulty].size())) {
        QuestSavegameAssert("id >= 0 && id < (int)m_quests[diff].size()", 294);
        return nullptr;
    }
    if (compile) {
        CompileQuests(false);
    }
    return m_quests[difficulty][static_cast<std::size_t>(id)];
}

// 0x46ba4c _ZN13QuestSavegame17SG_GetQuestByNameEPKci
// Finds the first Arrays::v2Quests row (up to Arrays::v2Quests::size) whose name equals name and returns
// SG_GetQuestByID(row, difficulty, true); null when none matches. A null name is an ASSERT (line 308); the original then
// compares it with strcmp, which faults while the table is not empty; the port returns null there.
Quest* QuestSavegame::SG_GetQuestByName(const char* name, int difficulty) {
    if (name == nullptr) {
        QuestSavegameAssert("name", 308);
    }
    const int rows = static_cast<int>(Arrays::v2Quests::size);
    if (rows <= 0 || name == nullptr) {
        return nullptr;
    }
    for (int row = 0; row < rows; ++row) {
        if (LC_API_STRCMP(name, Arrays::v2Quests::m_memberNames.names[row]) == 0) {
            return SG_GetQuestByID(row, difficulty, true);
        }
    }
    return nullptr;
}

// 0x46bb58 _ZN13QuestSavegame12UpdateQuestsEb
// CompileQuests(force), then Quest::Update on each quest of the owner's difficulty, bracketed by the profiler markers
// PushProfilingContext("QuestSavegame::UpdateQuests") and PopProfilingContext. The original re-reads the owner's difficulty on
// each step; the getter has no side effects, so it is read once here.
void QuestSavegame::UpdateQuests(bool force) {
    PushProfilingContext("QuestSavegame::UpdateQuests");
    CompileQuests(force);
    const int difficulty = m_owner->SG_GetGameDifficulty();
    const std::size_t count = m_quests[difficulty].size();
    for (std::size_t i = 0; i < count; ++i) {
        m_quests[difficulty][i]->Update();
    }
    PopProfilingContext("QuestSavegame::UpdateQuests");
}

// 0x46bf68 _ZN13QuestSavegameD2Ev
// The base-object destructor. The D1 destructor (0x46be6c, _ZN13QuestSavegameD1Ev) has the same body; this is the one
// definition. The deleting destructor (D0, 0x46bf4c) is compiler-generated and is not written here.
// Each quest of the three lists is destroyed and freed with CustomFree, and its slot is cleared. The vector storage is
// released by the std::vector members after this body.
QuestSavegame::~QuestSavegame() {
    for (int d = 0; d < 3; ++d) {
        for (std::size_t i = 0; i < m_quests[d].size(); ++i) {
            Quest* quest = m_quests[d][i];
            if (quest != nullptr) {
                quest->~Quest();
                CustomFree(quest);
                m_quests[d][i] = nullptr;
            }
        }
    }
}
