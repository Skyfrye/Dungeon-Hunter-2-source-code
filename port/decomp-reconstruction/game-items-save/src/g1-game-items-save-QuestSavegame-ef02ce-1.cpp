// Batch g1-game-items-save-QuestSavegame-ef02ce-1 (owner QuestSavegame, part 2 of 2): InitQuests, the unpack and pack
// pair for one difficulty, and the load and save entry points. Reconstructed from the Hex-Rays pseudocode of
// libDungeonHunter2.so. Declarations and layout come from dh2/QuestSavegame.hpp and dh2/Quest.hpp.
//
// Shared conventions in this file:
//  * Savegame layout. Each difficulty is written as: the quest count (uint32), then each quest as its index (int32)
//    followed by the quest's own data (Quest::_saveQuestData), then three int32 words: m_currentQuest,
//    m_currentPrimaryQuest and m_act. Every word is decoded and encoded on its own through IStreamBase::readAs and
//    writeAs, at the 32-bit file layout (TRACK-B decision 2). No host struct is copied from the file.
//  * Pydata rows. Arrays::v2Quests::members holds host Structs::v2Quest records at host stride (TRACK-B decision 3).
//    Row i is reached as an element of the typed table (PyDataQuestRow below), never by stepping the 284-byte listing
//    stride on bytes.
//  * Asserts: gAssertLevel 2 aborts (the original writes to address 0 to force a crash), level 1 prints the ASSERT line
//    and carries on, and any other level is silent.
//  * UnpackQuest and PackQuest in the original also build and free an empty std::string on the stack. Nothing reads it
//    and it has no effect on the stream or the lists, so it is not rebuilt.
//
// Partial in this batch: InitQuests, which does not store the pydata name at Quest +0x14 (see its comment).

#include "dh2/QuestSavegame.hpp"

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/Quest.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

namespace {

// The source path that the original passes to its ASSERT, as printed to stderr.
const char kQuestSavegameSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\QuestSavegame.cpp";

// The original's ASSERT(expr). Level 2 aborts; level 1 prints the message and the caller goes on.
void QuestSavegameAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kQuestSavegameSource, line);
    }
}

// Pydata row `index` of Arrays::v2Quests: element `index` of the host-stride table whose element 0 is members.
Structs::v2Quest* PyDataQuestRow(int index) {
    return reinterpret_cast<Structs::v2Quest*>(Arrays::v2Quests::members) + index;
}

}  // namespace

// 0x46c1a8 QuestSavegame::InitQuests()
// Each difficulty's list is either reset or built. A list that already holds quests gets Quest::ReInit on each entry,
// up to the pydata row count. An empty list is sized to the row count with null entries, and each entry is then a new
// Quest of that difficulty, owned by the save's owner, bound to its pydata row and reset.
void QuestSavegame::InitQuests() {
    const std::uint32_t rowCount = Arrays::v2Quests::size;
    for (int difficulty = 0; difficulty != 3; ++difficulty) {
        std::vector<Quest*>& quests = m_quests[difficulty];
        if (!quests.empty()) {
            // The original walks rowCount entries. The list was sized to rowCount when it was built, so the two bounds
            // agree. The min() keeps this port inside the vector if the pydata count ever differs from it.
            const std::size_t count = std::min<std::size_t>(rowCount, quests.size());
            for (std::size_t i = 0; i < count; ++i) {
                quests[i]->ReInit();
            }
            continue;
        }
        quests.resize(rowCount, static_cast<Quest*>(nullptr));
        for (std::uint32_t i = 0; i < rowCount; ++i) {
            Quest* quest = new Quest(difficulty);
            quest->m_owner = m_owner;
            quest->SetOwnerToChildren();
            quest->m_name = Arrays::v2Quests::m_memberNames.names[i];  // the pydata name at Quest +0x14
            quest->m_pyDataIndex = static_cast<int>(i);
            quest->AssignPyData(PyDataQuestRow(static_cast<int>(i)));
            quest->ReInit();
            quests[i] = quest;
        }
    }
}

// 0x46c344 QuestSavegame::UnpackQuest(int, int, IStreamBase*, bool)
// Reads the quest's index from the stream (the stored value replaces the index argument), then loads that quest's data
// into the entry of the difficulty's list at that index. A null entry takes the ASSERT path and nothing is loaded. An
// index outside the list reads past the end of the list in the original, which is undefined; this port treats it as a
// null entry, so it takes the same ASSERT path.
void QuestSavegame::UnpackQuest(int index, int difficulty, IStreamBase* stream, bool flag) {
    int questIndex = index;
    stream->readAs(questIndex);
    const std::vector<Quest*>& quests = m_quests[difficulty];
    Quest* quest = nullptr;
    if (questIndex >= 0 && static_cast<std::size_t>(questIndex) < quests.size()) {
        quest = quests[static_cast<std::size_t>(questIndex)];
    }
    if (quest != nullptr) {
        quest->_loadQuestData(stream, flag);
    } else {
        QuestSavegameAssert("quest", 194);
    }
}

// 0x46c48c QuestSavegame::UnpackQuests(int, IStreamBase*, bool)
// Reads the quest count. When the count matches the difficulty's list, each quest is read, then the three per-difficulty
// words, and the act is copied into m_minAct. When the count does not match, the stream is left just after the count.
void QuestSavegame::UnpackQuests(int difficulty, IStreamBase* stream, bool flag) {
    std::uint32_t count = 0;
    stream->readAs(count);
    const std::vector<Quest*>& quests = m_quests[difficulty];
    if (count != static_cast<std::uint32_t>(quests.size())) {
        return;
    }
    for (std::uint32_t i = 0; i < count; ++i) {
        UnpackQuest(static_cast<int>(i), difficulty, stream, flag);
    }
    stream->readAs(m_currentQuest[difficulty]);
    stream->readAs(m_currentPrimaryQuest[difficulty]);
    stream->readAs(m_act[difficulty]);
    m_minAct[difficulty] = m_act[difficulty];
}

// 0x46c550 QuestSavegame::LoadQuests(IStreamBase*)
void QuestSavegame::LoadQuests(IStreamBase* stream) {
    for (int difficulty = 0; difficulty != 3; ++difficulty) {
        UnpackQuests(difficulty, stream, false);
    }
}

// 0x46c584 QuestSavegame::PackQuest(int, int, IStreamBase*)
// Writes the quest's index, then the quest's own data through Quest::_saveQuestData.
void QuestSavegame::PackQuest(int index, int difficulty, IStreamBase* stream) {
    Quest* quest = m_quests[difficulty][static_cast<std::size_t>(index)];
    stream->writeAs(index);
    quest->_saveQuestData(stream);
}

// 0x46c658 QuestSavegame::PackQuests(int, IStreamBase*)
// Writes the quest count, each quest, then the three per-difficulty words.
void QuestSavegame::PackQuests(int difficulty, IStreamBase* stream) {
    const std::uint32_t count = static_cast<std::uint32_t>(m_quests[difficulty].size());
    stream->writeAs(count);
    for (std::uint32_t i = 0; i < count; ++i) {
        PackQuest(static_cast<int>(i), difficulty, stream);
    }
    stream->writeAs(m_currentQuest[difficulty]);
    stream->writeAs(m_currentPrimaryQuest[difficulty]);
    stream->writeAs(m_act[difficulty]);
}

// 0x46c6fc QuestSavegame::SaveQuests(IStreamBase*)
void QuestSavegame::SaveQuests(IStreamBase* stream) {
    for (int difficulty = 0; difficulty != 3; ++difficulty) {
        PackQuests(difficulty, stream);
    }
}
