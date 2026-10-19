// Free <global> factories for the progression conditions and quest objectives (batch g1-game-app-global-f216b6-18).
// GetConditionImplInstance<T>() builds one Condition subclass and returns it as a Condition*. GetObjectiveImplInstance<T>()
// builds one Objective subclass and returns it as an Objective*. The primary templates are declared but not defined;
// every instance is an explicit specialization, declared here so that callers never fall back to an implicit
// instantiation. The classes are forward-declared on purpose: a caller that needs a class's members includes its own header.
#pragma once

class Condition;
class Condition_IsEventInState;
class Condition_IsPlayerAtLevel;
class Condition_IsLevelInState;
class Condition_IsPlayerInLevel;
class Condition_IsQuestStateHigher;
class Condition_IsQuestStateLower;
class Condition_IsQuestInState;

class Objective;
class Objective_GatherLoot;
class Objective_MoveInZone;
class Objective_SavedQty;
class QE_ClearEnemyTemplate;
class TestCharTemplate;

namespace Structs {
class v2QuestClearEnemyTemplate;
}  // namespace Structs

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
class ObjectiveTemplate_KillCharacter;

template <class T>
Condition* GetConditionImplInstance();

template <class T>
Objective* GetObjectiveImplInstance();

template <>
Condition* GetConditionImplInstance<Condition_IsEventInState>();          // 0x47899c
template <>
Condition* GetConditionImplInstance<Condition_IsPlayerAtLevel>();         // 0x4789e8
template <>
Condition* GetConditionImplInstance<Condition_IsLevelInState>();          // 0x478a34
template <>
Condition* GetConditionImplInstance<Condition_IsPlayerInLevel>();         // 0x478a80
template <>
Condition* GetConditionImplInstance<Condition_IsQuestStateHigher>();      // 0x478acc
template <>
Condition* GetConditionImplInstance<Condition_IsQuestStateLower>();       // 0x478b14
template <>
Condition* GetConditionImplInstance<Condition_IsQuestInState>();          // 0x478b5c

template <>
Objective* GetObjectiveImplInstance<Objective_GatherLoot>();              // 0x47be74
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>>();  // 0x47bec4
template <>
Objective* GetObjectiveImplInstance<Objective_MoveInZone>();              // 0x47bf20
