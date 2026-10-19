// QuestSavegame: the quest state of one player for the three difficulties. PlayerSavegame embeds two of them
// (at +0xb8 and +0x118). Each difficulty has its own list of Quest objects, a current quest index, a current
// primary quest, and act bounds, all saved per difficulty by PackQuests and read by UnpackQuests.
// Original 32-bit size 0x60 (96): PlayerSavegame places its two instances 0x60 apart.
// Reconstructed from libDungeonHunter2.so pseudocode: ctors 0x46b004 (C2) and 0x46b0a4 (C1), dtors 0x46be6c (D1),
// 0x46bf68 (D2) and 0x46bf4c (D0). The assert strings name m_quests[diff] and QuestSavegame.cpp.
#pragma once

#include <vector>

class IStreamBase;
class Character;
class Quest;
struct __sFILE;

class QuestSavegame {
public:
    using QuestPredicate = bool (*)(const Quest*);

    QuestSavegame();                                                    // 0x46b004 (C2), 0x46b0a4 (C1)
    virtual ~QuestSavegame();                                           // slot 0x00: 0x46be6c (D1); slot 0x04: 0x46bf4c (D0); D2 0x46bf68 is the same body

    bool IsActCompatible(int act, int difficulty) const;                // 0x46b144. True when m_minAct[d] <= act <= m_act[d]
    int SG_GetNumQuests(QuestPredicate pred, int difficulty) const;     // 0x46b170. Counts the quests of m_quests[d] that pred accepts
    Quest* SG_GetQuestByID(QuestPredicate pred, int nth, int difficulty) const;  // 0x46b1d0. The nth quest of m_quests[d] that pred accepts, or null
    Quest* SG_GetQuestByID(int id, int difficulty, bool compile);       // 0x46b940. m_quests[d][id]; compiles the difficulty first when compile is set
    Quest* SG_GetNextQuest(QuestPredicate pred, int from, int difficulty) const;  // 0x46b258. The first accepted quest at index from or later
    Quest* SG_GetPrevQuest(QuestPredicate pred, int from, int difficulty) const;  // 0x46b2d4. The last accepted quest before index from
    int SG_GetCurrentPrimaryQuest(int difficulty);                      // 0x46b35c. m_currentPrimaryQuest[d]
    void SG_VerifyCurrentQuest(int difficulty);                         // 0x46b510. Points m_currentQuest[d] at a primary quest whose state is 6, when one exists
    int SG_GetCurrentQuest(int difficulty);                             // 0x46b5c0. Verifies, then returns m_currentQuest[d]
    bool HasMainQuestUpdated(int difficulty) const;                     // 0x46b5dc. True when a primary quest of m_quests[d] has the byte at Quest +0x5d set
    bool Synchronize(const QuestSavegame& other, bool currentOnly);     // 0x46b644. Copies the other save's state (currentOnly: only the owner's difficulty)
    void CompileQuests(bool force);                                     // 0x46b824. Compiles m_quests[d] for the owner's difficulty, once unless force is set
    void SG_DBG_TraceDetailedQuestInformation(__sFILE* stream, int state, int difficulty);  // 0x46b8b0. Traces m_quests[d]; state -1 traces all
    Quest* SG_GetQuestByName(const char* name, int difficulty);         // 0x46ba4c. Finds the pydata row by name, then SG_GetQuestByID(row, difficulty, true)
    void UpdateQuests(bool force);                                      // 0x46bb58. CompileQuests, then Quest::Update for each quest of the owner's difficulty
    void InitQuests();                                                  // 0x46c1a8. Creates one Quest per Arrays::v2Quests row in each difficulty; resets existing ones
    void UnpackQuest(int index, int difficulty, IStreamBase* stream, bool flag);  // 0x46c344. Reads the quest index, then loads that quest's data
    void UnpackQuests(int difficulty, IStreamBase* stream, bool flag);  // 0x46c48c. Count, quests, then the three per-difficulty words
    void LoadQuests(IStreamBase* stream);                               // 0x46c550. UnpackQuests for difficulties 0..2
    void PackQuest(int index, int difficulty, IStreamBase* stream);     // 0x46c584. Writes the quest index, then that quest's data
    void PackQuests(int difficulty, IStreamBase* stream);               // 0x46c658. Count, quests, then the three per-difficulty words
    void SaveQuests(IStreamBase* stream);                               // 0x46c6fc. PackQuests for difficulties 0..2

    // Per-difficulty arrays, each of three entries (one per difficulty). The layout is the 32-bit one.
    std::vector<Quest*> m_quests[3];                                    // +0x04 .. +0x27: three 12-byte vectors (begin, end, capacity), one per difficulty
    bool m_compiled[3];                                                 // +0x28 set once CompileQuests has compiled m_quests[d]
    int m_currentQuest[3];                                              // +0x2c index into m_quests[d] of the current quest; -1 when none
    int m_currentPrimaryQuest[3];                                       // +0x38 returned by SG_GetCurrentPrimaryQuest; saved with the lists; -1 when none
    int m_act[3];                                                       // +0x44 the act of each difficulty; 1 until set. Saved and loaded as is
    int m_minAct[3];                                                    // +0x50 lower bound of the act IsActCompatible accepts; 1 until set, copied from m_act on load
    Character* m_owner;                                                 // +0x5c the owning Character; its game difficulty picks the list
};
