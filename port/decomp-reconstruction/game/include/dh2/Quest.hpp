// Quest: one quest of the player's quest savegame. m_state is a v2QuestState constant (14 states, Locked
// through PostClosed). Update runs the handler of the current state; each handler tests the quest's scripts
// and its conditions or objectives and moves the state on through SetState. AssignPyData binds the pydata
// record (Structs::v2Quest): the title and description string IDs, the act, the 14 script slots, the accept
// and end objectives, the objectives, the three reward stub pairs and the pre-requisite conditions.
// Script slots, as the debug trace names them: 0 OnActive, 1 OnAvailable, 2 OnClosed, 3 OnComplete, 4 OnFailed,
// 5 OnPostActive, 6 OnPostAvailable, 7 OnPostClosed, 8 OnPostComplete, 9 OnPostLocked, 10 OnPreActive,
// 11 OnPreAvailable, 12 OnPreClosed, 13 OnPreComplete. Not polymorphic: no vtable.
// QuestSavegame::InitQuests creates one Quest per Arrays::v2Quests row, in one of three QuestSavegame lists;
// the constructor argument is that list index.
// Original 32-bit size 0x6c (108): operator new(0x6c) in QuestSavegame::InitQuests.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x4808e4 / 0x480944, dtors 0x4809a4 / 0x480a14,
// AssignPyData 0x48081c, SetState 0x480c78, Update 0x481818, Compile 0x480178, _saveQuestData 0x47f734,
// _loadQuestData 0x47f78c, DBG trace 0x480328). Return types are as Hex-Rays gives them, except that a value
// which is only register residue of a tail call is declared void.
#pragma once

#include <cstdint>
#include <string>

#include "dh2/ConditionList.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/RewardList.hpp"

class IStreamBase;
class Objective;
class Character;
struct __sFILE;

namespace Structs {
class v2Quest;
}  // namespace Structs

class Quest {
public:
    // Values of m_state, in the order Update runs them. The numbers are inferred from the SetState switch, where
    // each state runs the script slot named for it, and from the names UpdateX moves to. The names are the
    // v2QuestState constants. Confirm the numbers against the PyDataConstants table.
    enum QuestStates {
        QUEST_LOCKED = 0,
        QUEST_POST_LOCKED = 1,
        QUEST_PRE_AVAILABLE = 2,
        QUEST_AVAILABLE = 3,
        QUEST_POST_AVAILABLE = 4,
        QUEST_PRE_ACTIVE = 5,
        QUEST_ACTIVE = 6,
        QUEST_POST_ACTIVE = 7,
        QUEST_PRE_COMPLETED = 8,
        QUEST_COMPLETED = 9,
        QUEST_POST_COMPLETED = 10,
        QUEST_PRE_CLOSED = 11,
        QUEST_CLOSED = 12,
        QUEST_POST_CLOSED = 13,
    };

    explicit Quest(int listIndex);                                              // 0x4808e4 (C1), 0x480944 (C2)
    ~Quest();                                                                   // 0x4809a4 (D1), 0x480a14 (D2). Non-virtual.

    // State queries and names.
    bool IsVolatileState(int state) const;                                      // 0x47f70c: CSWTCH_6217 entry for states 2..11, 0 otherwise
    bool IsDialog() const;                                                      // 0x47f7fc: pydata priority is the "Dialog" constant
    bool IsDebug() const;                                                       // 0x47f850: pydata priority is the "Debug" constant
    bool IsSecondary() const;                                                   // 0x47f8a4: pydata priority is the "Secondary" constant
    bool IsPrimary() const;                                                     // 0x47f8f8: pydata priority is the "Primary" constant
    const char* DBG_GetCurrentStateName() const;                                // 0x47f704

    // Pydata text and scripts.
    const char* GetTitle() const;                                               // 0x47f9dc: string ID at pydata +4; "not specified" when unset (1835016) or negative
    const char* GetPreDescription() const;                                      // 0x47f984: string ID at pydata +8, same unset rule
    const char* GetPostDescription() const;                                     // 0x47f94c: "not specified" when pydata +12 is unset, else ""
    std::string GetObjectiveDescription() const;                                // 0x480a84: string ID at pydata +16, else the ObjectiveList description
    int GetScriptIDFromID(int scriptSlot) const;                                // 0x47fa80: script ID at pydata +168 + 8 * slot (slots 0..13), -1 otherwise
    bool TestIsScriptRunning(int scriptSlot);                                   // 0x47fde4: ScriptManager reports the slot's script running; false when the slot has no script
    void ExecScript(int scriptSlot);                                            // 0x47ff20: starts the slot's script through ScriptManager

    // Rewards.
    int GiveRewards();                                                          // 0x48015c: RewardList::Give, then clears m_rewardsPending

    // Saving and loading. The state is the first int of the record, then the accept and end objectives' data
    // and the ObjectiveList data.
    void _saveQuestData(IStreamBase* stream);                                   // 0x47f734: the tail call ObjectiveList::_saveData returns void, so the result is residue
    int _loadQuestData(IStreamBase* stream, bool flag);                         // 0x47f78c: flag is not read by the body; sets m_needsReinit for a volatile state
    void Synchronize(const Quest* source, bool primaryOnly);                    // 0x4802b4: primaryOnly true copies only for a primary quest whose source state is above 11, then ReInit and Compile; false copies state, stamp and m_needsReinit

    // Objectives, owner and pydata binding.
    void Compile();                                                             // 0x480178: compiles the lists and the accept and end objectives; in Active registers the ObjectiveList and installs its markers
    void SetOwnerToChildren();                                                  // 0x4807d8: gives m_owner to m_objectives, m_rewards, and the accept and end objectives
    void AssignPyData(Structs::v2Quest* pyData);                                // 0x48081c: binds the record, the lists, the accept and end objectives, the reward stub pair of m_listIndex, and m_act

    // State machine.
    void SetState(int state);                                                   // 0x480c78: ignored above 13; a change stamps m_stateStamp, leaves the old state's objectives, saves for a volatile state, then runs the new state's entry actions
    void HandleSaveInStateTransitonIfNeeded(int state);                         // 0x47fb74: for a volatile state with its script IDs present and m_needsReinit clear, quick-saves the level and saves the local character
    void ReinitStateAfterLoading();                                             // 0x481150: SetState to the current m_state
    void DBG_IncState();                                                        // 0x481158: SetState to the next state, modulo 14
    void ReInit();                                                              // 0x480060: undoes the markers and registrations of the current state, then sets m_state to the record's initial state (pydata +156)
    void Update();                                                              // 0x481818: clears m_needsReinit through ReinitStateAfterLoading, then runs the handler of the current state

    // Per-state handlers, in the order Update calls them.
    void UpdateLocked();                                                        // 0x4817b4: to PostLocked when m_preReqs evaluates true
    void UpdatePostLocked();                                                    // 0x4813e4: to PreAvailable unless script 9 runs
    void UpdatePreAvailable();                                                  // 0x481380: to Available unless script 11 runs
    void UpdateAvailable();                                                     // 0x481700: to Locked when m_preReqs fails; to PostAvailable when the accept objective is flagged and script 1 is idle
    void UpdatePostAvailable();                                                 // 0x48131c: to PreActive unless script 6 runs
    void UpdatePreActive();                                                     // 0x4815d4: to Active unless script 10 runs; online, sends the quest index to the match
    void UpdateActive();                                                        // 0x481688: to PostActive when the ObjectiveList evaluates true and script 0 is idle
    void UpdatePostActive();                                                    // 0x4812b8: to PreCompleted unless script 8 runs (the body checks slot 8, as the original does)
    void UpdatePreCompleted();                                                  // 0x481254: to Completed unless script 13 runs
    void UpdateCompleted();                                                     // 0x4814d8: when the end objective is flagged and script 3 is idle, gives the rewards and to PostCompleted
    void UpdatePostCompleted();                                                 // 0x4811f0: to PreClosed unless script 8 runs
    void UpdatePreClosed();                                                     // 0x481184: sets m_closed; to Closed unless script 12 runs
    void UpdateClosed();                                                        // 0x481448: sets m_closed; to PostClosed unless script 2 runs; checks the local player's quest trophies
    void UpdatePostClosed();                                                    // 0x47f700: empty

    // Debug trace.
    int DBG_TraceDetailedQuestInformation(__sFILE* stream) const;               // 0x480328: name, title, descriptions, conditions, objectives, rewards, accept and end, target level, repeatable, state, priority and the 14 script IDs

    // Fields, in original order. The 32-bit offsets are kept as comments.
    int m_state;                                // +0x00 v2QuestState value (QuestStates), -1 when constructed; the first int saved
    int m_stateStamp;                           // +0x04 stamped from a global on every state change; Synchronize copies it with the state
    int m_pyDataIndex;                          // +0x08 row index in Arrays::v2Quests, -1 until set; the trace prints its name, the SG calls take it as the quest ID
    int m_act;                                  // +0x0c act, pydata +280 (1 until AssignPyData)
    int m_listIndex;                            // +0x10 constructor argument, 0..2, the QuestSavegame list; AssignPyData picks the reward stub pair by it
    const char* m_name;                         // +0x14 the pydata name (Arrays::v2Quests::m_memberNames[row]), set by QuestSavegame::InitQuests; zeroed by the constructor
    Objective* m_acceptType;                    // +0x18 accept objective, built from pydata +60 by AssignPyData ("Accept Type" in the trace)
    Objective* m_endType;                       // +0x1c end objective, built from pydata +104 by AssignPyData ("End Type" in the trace)
    ConditionList m_preReqs;                    // +0x20 pre-requisite conditions ("PreReqs" in the trace), 12 bytes
    ObjectiveList m_objectives;                 // +0x2c objectives ("Objectives" in the trace), 12 bytes
    RewardList m_rewards;                       // +0x38 rewards ("Rewards" in the trace), 36 bytes
    bool m_rewardsPending;                      // +0x5c 1 from the constructor, 0 after GiveRewards; Compile compiles m_rewards while it is set
    bool m_closed;                              // +0x5d set by UpdatePreClosed and UpdateClosed, zeroed by the constructor
    uint8_t pad_5e[2];                          // +0x5e
    Character* m_owner;                         // +0x60 owning Character; QuestSavegame sets it after the constructor, which does not zero it
    bool m_needsReinit;                         // +0x64 set by _loadQuestData for a volatile state and copied by Synchronize; Update clears it
    uint8_t pad_65[3];                          // +0x65
    Structs::v2Quest* m_pyData;                 // +0x68 pydata record, zero until AssignPyData
};
