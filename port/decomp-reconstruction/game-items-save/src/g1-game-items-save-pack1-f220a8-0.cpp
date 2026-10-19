// Batch g1-game-items-save-pack1-f220a8-0 (owners Condition_IsLevelInState, Condition_IsPlayerAtLevel,
// Condition_IsPlayerInLevel, Condition_IsQuestInState, Condition_IsQuestInStateGeneric and Condition_IsQuestStateHigher;
// part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the symbol table
// (recovered/native/symbols/libDungeonHunter2.so/vtables-001.json). The layouts are the headers dh2/Condition_*.hpp and
// dh2/Condition.hpp: Condition is 8 bytes (vptr, then m_stub at +0x04, the Structs::v2ConditionStub row).
//
// Notes:
//  * None of the six classes adds a member. Each complete-object destructor (D1) stores the vptr and calls ~Condition().
//    An empty body in a class with no members does the same, so the D1 bodies are empty here. The vptr that Hex-Rays
//    shows in the D1 of Condition_IsQuestInState and Condition_IsQuestStateHigher is off_969200, the vtable of
//    Condition_IsQuestInStateGeneric (the base destructor's store). Their own vtables are at other addresses, so the
//    derived store is the one the optimiser removed.
//  * The deleting destructors (D0: ~X() then CustomFree(this)) are compiler generated. They are not written here (see the ledger).
//  * Row fields are the pydata offsets of Structs::v2ConditionStub on the host layout: m_w2 is the id (+0x08 in the file
//    layout) and m_w3 the value (+0x0c). Quest::m_state is the first field of Quest (+0x00).
//  * The trace name lookups read the name tables through Arrays::LevelListMemberNameAt (defined with the GatherLoot
//    helper) and Arrays::v2QuestsMemberNameAt (g1-game-items-save-pack1-f220a8-0_names.cpp). The bounds are the element
//    counts Arrays::LevelList::size and Arrays::v2Quests::size (w7_arrays_00.hpp), as in the original. A bad index prints "na".
//  * The PyDataConstants singleton is ApplicationGetPyDataConstants() (dword_99F758); the player manager is the extern
//    dword_99F76C; the application is ApplicationGetInstance().
//  * Eval of Condition_IsPlayerInLevel dereferences the current level without a check, as the original does.

#include "dh2/Condition_IsLevelInState.hpp"
#include "dh2/Condition_IsPlayerAtLevel.hpp"
#include "dh2/Condition_IsPlayerInLevel.hpp"
#include "dh2/Condition_IsQuestInState.hpp"
#include "dh2/Condition_IsQuestInStateGeneric.hpp"
#include "dh2/Condition_IsQuestStateHigher.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace Arrays {
// Defined in g1-game-items-save-Objective_GatherLoot-974c8b-0_names.cpp (member_names.hpp cannot share this unit
// with w7_arrays_00.hpp).
const char* LevelListMemberNameAt(int index);
// Defined in g1-game-items-save-pack1-f220a8-0_names.cpp, for the same reason.
const char* v2QuestsMemberNameAt(int index);
}  // namespace Arrays

// ---------------------------------------------------------------------------------------------------------------
// Condition_IsLevelInState
// ---------------------------------------------------------------------------------------------------------------

// 0x478638 _ZN24Condition_IsLevelInState4EvalEv
bool Condition_IsLevelInState::Eval() {
    return true;
}

// 0x478844 _ZN24Condition_IsLevelInStateD1Ev
// Complete-object destructor: stores the vptr (off_9691A0) and calls ~Condition(). The empty body does the same.
Condition_IsLevelInState::~Condition_IsLevelInState() {}

// 0x478fb0 _ZN24Condition_IsLevelInState37DBG_TraceDetailedConditionInformationEP7__sFILE
std::size_t Condition_IsLevelInState::DBG_TraceDetailedConditionInformation(__sFILE* stream) {
    return std::fwrite("\t  Condition_IsLevelInState\n", 1, 0x1C, reinterpret_cast<std::FILE*>(stream));
}

// 0x47917c _ZN24Condition_IsLevelInStateD0Ev: deleting destructor, compiler generated (~Condition_IsLevelInState() then
// CustomFree(this)). Not written here.

// ---------------------------------------------------------------------------------------------------------------
// Condition_IsPlayerAtLevel
// ---------------------------------------------------------------------------------------------------------------

// 0x478640 _ZN25Condition_IsPlayerAtLevel4EvalEv
bool Condition_IsPlayerAtLevel::Eval() {
    return true;
}

// 0x478810 _ZN25Condition_IsPlayerAtLevelD1Ev
// Complete-object destructor: same as Condition_IsLevelInState (vptr store off_969180, then ~Condition()).
Condition_IsPlayerAtLevel::~Condition_IsPlayerAtLevel() {}

// 0x478f94 _ZN25Condition_IsPlayerAtLevel37DBG_TraceDetailedConditionInformationEP7__sFILE
std::size_t Condition_IsPlayerAtLevel::DBG_TraceDetailedConditionInformation(__sFILE* stream) {
    return std::fwrite("\t  Condition_IsPlayerAtLevel\n", 1, 0x1D, reinterpret_cast<std::FILE*>(stream));
}

// 0x47926c _ZN25Condition_IsPlayerAtLevelD0Ev: deleting destructor, compiler generated. Not written here.

// ---------------------------------------------------------------------------------------------------------------
// Condition_IsPlayerInLevel
// ---------------------------------------------------------------------------------------------------------------

// 0x4787dc _ZN25Condition_IsPlayerInLevelD1Ev
// Complete-object destructor: vptr store (off_9691C0), then ~Condition(). No members to destroy.
Condition_IsPlayerInLevel::~Condition_IsPlayerInLevel() {}

// 0x478ba4 _ZN25Condition_IsPlayerInLevel37DBG_TraceDetailedConditionInformationEP7__sFILE
std::size_t Condition_IsPlayerInLevel::DBG_TraceDetailedConditionInformation(__sFILE* stream) {
    const std::int32_t levelIndex = m_stub->Op1;  // row +0x08
    const char* levelName = "na";
    if (levelIndex >= 0 && static_cast<std::uint32_t>(levelIndex) < Arrays::LevelList::size) {
        levelName = Arrays::LevelListMemberNameAt(levelIndex);
    }
    return static_cast<std::size_t>(
        std::fprintf(reinterpret_cast<std::FILE*>(stream), "\t    Level       : %s\n\n", levelName));
}

// 0x478d78 _ZN25Condition_IsPlayerInLevel4EvalEv
bool Condition_IsPlayerInLevel::Eval() {
    // The row's level index (+0x08) against the current level's index in the level list (Level +0x3c).
    return m_stub->Op1 == ApplicationGetInstance().GetCurrentLevel()->m_levelListIndex;
}

// 0x479230 _ZN25Condition_IsPlayerInLevelD0Ev: deleting destructor, compiler generated. Not written here.

// ---------------------------------------------------------------------------------------------------------------
// Condition_IsQuestInState (adds no members; Eval, trace and Compile come from Condition_IsQuestInStateGeneric)
// ---------------------------------------------------------------------------------------------------------------

// 0x4788e0 _ZN24Condition_IsQuestInStateD1Ev
// Complete-object destructor: the base destructor chain's vptr store (off_969200), then ~Condition(). Empty body here.
Condition_IsQuestInState::~Condition_IsQuestInState() {}

// 0x479320 _ZN24Condition_IsQuestInStateD0Ev: deleting destructor, compiler generated. Not written here.

// ---------------------------------------------------------------------------------------------------------------
// Condition_IsQuestInStateGeneric
// ---------------------------------------------------------------------------------------------------------------

// 0x4786a4 _ZN31Condition_IsQuestInStateGenericD1Ev
// Complete-object destructor: vptr store (off_969200), then ~Condition(). No members to destroy.
Condition_IsQuestInStateGeneric::~Condition_IsQuestInStateGeneric() {}

// 0x478cc4 _ZN31Condition_IsQuestInStateGeneric37DBG_TraceDetailedConditionInformationEP7__sFILE
std::size_t Condition_IsQuestInStateGeneric::DBG_TraceDetailedConditionInformation(__sFILE* stream) {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);
    const std::int32_t questIndex = m_stub->Op1;      // row +0x08: the quest's row in Arrays::v2Quests
    const std::int32_t requiredState = m_stub->Op2;   // row +0x0c
    const char* questName = "na";
    if (questIndex >= 0 && static_cast<std::uint32_t>(questIndex) < Arrays::v2Quests::size) {
        questName = Arrays::v2QuestsMemberNameAt(questIndex);
    }
    std::fprintf(out, "\t    Quest       : %s\n", questName);
    const char* stateName = ApplicationGetPyDataConstants()->getConstantName("v2QuestState", requiredState);
    return static_cast<std::size_t>(std::fprintf(out, "\t    State       : %s\n\n", stateName));
}

// 0x478fe8 _ZN31Condition_IsQuestInStateGeneric4EvalEv
bool Condition_IsQuestInStateGeneric::Eval() {
    Structs::v2ConditionStub* row = m_stub;  // Condition +0x04
    // The local player's Character (PlayerInfo +0x660, named unk_660 in the header).
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    if (character == nullptr) {
        return false;
    }
    Quest* quest = character->SG_GetQuestByID(row->Op1, -1);  // quest id (row +0x08), difficulty -1
    if (quest == nullptr) {
        return false;
    }
    const std::int32_t actual = quest->m_state;     // Quest +0x00
    const std::int32_t required = row->Op2;        // row +0x0c
    switch (m_comparator) {  // Condition_IsQuestInStateGeneric +0x08
        case COMPARE_EQUAL:
            return required == actual;
        case COMPARE_LOWER:
            return required > actual;
        case COMPARE_HIGHER:
            return required < actual;
        default:
            return false;
    }
}

// 0x4791b8 _ZN31Condition_IsQuestInStateGenericD0Ev: deleting destructor, compiler generated. Not written here.

// ---------------------------------------------------------------------------------------------------------------
// Condition_IsQuestStateHigher (adds no members; Eval and trace come from Condition_IsQuestInStateGeneric)
// ---------------------------------------------------------------------------------------------------------------

// 0x478878 _ZN28Condition_IsQuestStateHigherD1Ev
// Complete-object destructor: the base destructor chain's vptr store (off_969200), then ~Condition(). Empty body here.
Condition_IsQuestStateHigher::~Condition_IsQuestStateHigher() {}

// 0x4792a8 _ZN28Condition_IsQuestStateHigherD0Ev: deleting destructor, compiler generated. Not written here.
