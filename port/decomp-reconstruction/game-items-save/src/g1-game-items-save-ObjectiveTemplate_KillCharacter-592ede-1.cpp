// Batch g1-game-items-save-ObjectiveTemplate_KillCharacter-592ede-1 (owner ObjectiveTemplate_KillCharacter, part 2 of 2:
// the four handleEvent instantiations, one per kill row). Compile, GetPositions, DBG and the destructors are in part 1.
// The layout and declarations are dh2/ObjectiveTemplate_KillCharacter.hpp; the row is Structs::v2Quest*Enem* from
// pydata-accessors (its words m_wN sit at 4*N, so m_w8 is +0x20 and m_w9 is +0x24).
//
// The four original functions have one control flow. They differ in one word only: the row word the event must match.
//   v2QuestKillEnemies, v2QuestKillEnemyTemplate         compare row +0x20 (m_w8)  with the event matchId (+0x18)
//   v2QuestClearEnemies, v2QuestClearEnemyTemplate       compare row +0x24 (m_w9)  with the event matchId (+0x18)
// Each specialization below names its row word and calls CountKillEvent. The header declares handleEvent only, so
// each definition is an explicit specialization of the member (the mangled names are the instantiations' names).
//
// The event is written by the original (flag0 at +0x10, value at +0x14). The interface passes it as const, but the
// raiser (Character::Kill) owns a non-const event object, so the const is removed for those two stores.
//
// Every path of the original returns 0, so every specialization returns false.

#include "dh2/ObjectiveTemplate_KillCharacter.hpp"

#include <cstdint>

#include "dh2/Objective.hpp"
#include "dh2/Objective_SavedQty.hpp"
#include "dh2/QE_ClearEnemies.hpp"
#include "dh2/QE_ClearEnemyTemplate.hpp"
#include "dh2/QE_KillEnemies.hpp"
#include "dh2/QE_KillEnemyTemplate.hpp"
#include "dh2/TestCharPropId.hpp"
#include "dh2/TestCharTemplate.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

namespace {

// The body shared by the four handleEvent instantiations (Hex-Rays and the assembly agree: 0x47f100 and its three
// siblings differ only in the row word passed as rowMatchId).
//   self        the objective. m_currentQty (Objective_Qty, +0x20) is the kill count; m_requiredQty (+0x2c) the requirement.
//   kill        the quest event. flag0 (+0x10) is set when the event starts a count; flag1 (+0x11) says it already has one;
//               value (+0x14) is that count; matchId (+0x18) is the id the row must match.
//   rowMatchId  the row word (m_w8 or m_w9 of the v2Quest row).
template <typename TObjective, typename TEvent>
void CountKillEvent(TObjective& self, TEvent* kill, std::int32_t rowMatchId) {
    if (kill->m_matchId != rowMatchId) {  // event +0x18 against the row
        return;
    }

    std::int32_t count = 0;
    if (kill->m_flag1 != 0) {  // event +0x11: the event already carries a count
        count = kill->m_value;  // event +0x14
        if (self.m_currentQty >= count) {  // +0x20: the objective has counted at least this many already
            return;
        }
        self.m_currentQty = count;  // +0x20
    } else {
        ++self.m_currentQty;                // +0x20
        kill->m_flag0 = 1;                  // event +0x10
        kill->m_value = self.m_currentQty;  // event +0x14
        count = self.m_currentQty;          // +0x20
    }

    if (self.m_requiredQty > count) {  // +0x2c
        return;
    }
    self.SetIsCompleted();  // Objective::SetIsCompleted, a direct call in the original (0x47ba10)
    self.Unregister();      // vtable slot 0x1c (Objective::Unregister), a virtual call
}

}  // namespace

// 0x47f100 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::handleEvent(IEvent const*,EventManager const*)
template <>
bool ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::handleEvent(
        const IEvent* event, const EventManager* /*manager*/) {
    QE_KillEnemies* kill = const_cast<QE_KillEnemies*>(static_cast<const QE_KillEnemies*>(event));
    CountKillEvent(*this, kill, m_questRow->EnemyType);  // row +0x20
    return false;
}

// 0x47f228 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::handleEvent(IEvent const*,EventManager const*)
template <>
bool ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::handleEvent(
        const IEvent* event, const EventManager* /*manager*/) {
    QE_ClearEnemies* kill = const_cast<QE_ClearEnemies*>(static_cast<const QE_ClearEnemies*>(event));
    CountKillEvent(*this, kill, m_questRow->EnemyType);  // row +0x24
    return false;
}

// 0x47f2bc ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::handleEvent(IEvent const*,EventManager const*)
template <>
bool ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::handleEvent(
        const IEvent* event, const EventManager* /*manager*/) {
    QE_KillEnemyTemplate* kill = const_cast<QE_KillEnemyTemplate*>(static_cast<const QE_KillEnemyTemplate*>(event));
    CountKillEvent(*this, kill, m_questRow->EnemyType);  // row +0x20
    return false;
}

// 0x47f350 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::handleEvent(IEvent const*,EventManager const*)
template <>
bool ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::handleEvent(
        const IEvent* event, const EventManager* /*manager*/) {
    QE_ClearEnemyTemplate* kill = const_cast<QE_ClearEnemyTemplate*>(static_cast<const QE_ClearEnemyTemplate*>(event));
    CountKillEvent(*this, kill, m_questRow->EnemyType);  // row +0x24
    return false;
}
