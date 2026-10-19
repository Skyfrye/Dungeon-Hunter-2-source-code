// Batch g1-game-items-save-pack2-1b7c6e-0 (owners Condition_IsQuestStateLower, ObjectiveTemplate_KillEnemies and
// Objective_Automatic). Declarations come from the owner headers, which already declare every method in this batch.
//
// Covered:
//   Condition_IsQuestStateLower   complete-object destructor (0x4788ac). The deleting destructor (0x4792e4) is compiler generated.
//   ObjectiveTemplate_KillEnemies complete-object destructors (0x47d1f4, 0x47d2e4) and the two Compile instances (0x47ed70,
//                                 0x47ee18). The deleting destructors (0x47e83c, 0x47e894) are compiler generated.
//   Objective_Automatic           GetPositions, Register, Unregister (all empty), the complete-object destructor (0x47a864),
//                                 DBG_TraceDetailedObjectiveInformation (0x47b364) and Compile (0x47bd80). The deleting
//                                 destructor (0x47c6b4) is compiler generated.
//
// Notes:
//  * ObjectiveTemplate_KillEnemies::Compile is one template for both instances. The row is m_pyData (+0x0c), typed
//    Structs::v2QuestObjectiveStub. The enemy id is row +0x20 (m_w8) and the level id is row +0x24 (m_w9). The required
//    quantity is row +0x28 (m_w10), stored at +0x2c. This is the reverse of the Clear rows in ObjectiveTemplate_KillCharacter.
//  * The listing's second argument of Compile is the level argument of HasEnemyOfTypeLoaded. It is an unset register on entry
//    (Compile is called through the vtable with no arguments). HasEnemyOfTypeLoaded never reads it (see
//    g1-game-items-save-Objective_EventReceiver-4e7672-0.cpp), so this port passes -1.
//  * The listing returns an int from Compile (the level pointer on the early exit, the Unregister result on the completed path).
//    The header declares void, and no caller reads the value.
//  * Objective_Automatic::DBG reads the type name through Application::m_pyDataConstants (dword_99F758 in the listing) and the
//    row's v2QuestObjectiveType id (row +0x04, m_w1). The stream is converted to std::FILE* with reinterpret_cast before the
//    stdio calls, as in g1-game-items-save-Objective-50c892-0.cpp.
//  * Objective_Automatic::Compile is the valid flag and Objective::SetIsCompleted. SetIsCompleted starts the row script through
//    ScriptManager, so it has no standalone test.

#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Condition_IsQuestStateLower.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectiveTemplate_KillEnemies.hpp"
#include "dh2/Objective_Automatic.hpp"
#include "dh2/Objective_EventReceiver.hpp"
#include "dh2/Objective_SavedQty.hpp"
#include "dh2/TestCharPropId.hpp"
#include "dh2/TestCharTemplate.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// The row structs and the quest event classes are only named here, as template arguments.
namespace Structs {
class v2QuestKillEnemyTemplate;
class v2QuestKillEnemies;
}  // namespace Structs
class QE_KillEnemyTemplate;
class QE_KillEnemies;

// ---------------------------------------------------------------------------------------------------------------------
// Condition_IsQuestStateLower: complete-object destructor (D1). The original stores the Condition_IsQuestStateLower vtable
// and calls Condition::~Condition. The defaulted destructor does the same through the base destructors. It adds no members.

// 0x4788ac Condition_IsQuestStateLower::~Condition_IsQuestStateLower()
Condition_IsQuestStateLower::~Condition_IsQuestStateLower() = default;

// ---------------------------------------------------------------------------------------------------------------------
// ObjectiveTemplate_KillEnemies: complete-object destructor (D1). The listing stores the vtable pointers and calls the base
// destructor (Objective_Qty chain). Those stores are the compiler's, so the body is empty. The deleting form (D0) is
// compiler generated: see the ledger.

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
ObjectiveTemplate_KillEnemies<TStruct, TEvent, TTest, TBase>::~ObjectiveTemplate_KillEnemies() {}

// 0x47d1f4 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
template ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate,
                                       Objective_SavedQty>::~ObjectiveTemplate_KillEnemies();

// 0x47d2e4 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
template ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId,
                                       Objective_SavedQty>::~ObjectiveTemplate_KillEnemies();

// ---------------------------------------------------------------------------------------------------------------------
// ObjectiveTemplate_KillEnemies::Compile (slot 0x08). Copies the row to m_questRow, stores the row quantity (row +0x28) as the
// required quantity, and counts the loaded enemies of the row's type (row +0x20). The objective is valid when the row level
// is -1 or equals the current level's index (Level +0x3c), and when the count and the required quantity are both positive.
// It completes, and Unregisters, once the current quantity reaches the required quantity.

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
void ObjectiveTemplate_KillEnemies<TStruct, TEvent, TTest, TBase>::Compile() {
    const Structs::v2QuestObjectiveStub& row = *this->m_pyData;     // +0x0c
    this->m_questRow = reinterpret_cast<TStruct*>(this->m_pyData);  // +0x24 <- +0x0c
    this->m_requiredQty = row.Value;                                // +0x2c <- row +0x28

    // The second argument of the original is an unset register here (see the notes at the top of this file). HasEnemyOfTypeLoaded
    // never reads it, so -1 is passed.
    const int enemyCount = Objective_EventReceiver::HasEnemyOfTypeLoaded<TTest>(row.OID1, -1);  // row +0x20, the enemy id

    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (row.OID2 != -1 && row.OID2 != level->m_levelListIndex) {  // row +0x24 is the level id; Level +0x3c is the current index
        this->m_valid = false;                                    // +0x08
        return;
    }
    if (enemyCount > 0 && this->m_requiredQty > 0) {
        this->m_valid = true;  // +0x08
        if (this->m_currentQty >= this->m_requiredQty) {  // +0x20 >= +0x2c
            this->SetIsCompleted();
            this->Unregister();  // vtable slot 0x1c
        }
    } else {
        this->m_valid = false;  // +0x08
    }
}

// 0x47ed70 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::Compile()
template void ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId,
                                            Objective_SavedQty>::Compile();

// 0x47ee18 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::Compile()
template void ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate,
                                            Objective_SavedQty>::Compile();

// ---------------------------------------------------------------------------------------------------------------------
// Objective_Automatic: a v2QuestAutomatic objective. It has no positions and no event subscription.

// 0x47a1d8 Objective_Automatic::GetPositions(Vector3DFList &)
void Objective_Automatic::GetPositions(Vector3DFList& /*positions*/) const {}

// 0x47a1dc Objective_Automatic::Register(void)
void Objective_Automatic::Register() {}

// 0x47a1e0 Objective_Automatic::Unregister(void)
void Objective_Automatic::Unregister() {}

// 0x47a864 Objective_Automatic::~Objective_Automatic() (D1). The listing stores the vtable pointer and calls Objective::~Objective.
Objective_Automatic::~Objective_Automatic() = default;

// 0x47b364 Objective_Automatic::DBG_TraceDetailedObjectiveInformation(__sFILE *) const
// The header line, then the type name of the row's v2QuestObjectiveType (row +0x04) from the pydata constants.
int Objective_Automatic::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);
    static_cast<void>(std::fwrite("\t  v2QuestAutomatic\n", 1, 0x14, out));
    const Structs::v2QuestObjectiveStub* row = m_pyData;  // +0x0c
    const char* typeName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestObjectiveType", row->Type);  // row +0x04
    return std::fprintf(out, "\t    Type : %s\n\n", typeName);
}

// 0x47bd80 Objective_Automatic::Compile(void)
// Marks the objective valid, then completes it at once (Objective::SetIsCompleted, not virtual).
void Objective_Automatic::Compile() {
    m_valid = true;  // +0x08
    Objective::SetIsCompleted();
}
