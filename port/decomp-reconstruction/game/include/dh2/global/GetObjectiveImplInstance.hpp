// Free <global> factories GetObjectiveImplInstance<T>() for the quest objective classes (batch
// g1-game-app-global-f216b6-19 and its sibling batches). Each allocates one objective of class T, runs its
// constructors, writes the fields its factory sets and returns it as an Objective*. The primary template is
// declared but not defined; every instance is an explicit specialization, declared here so that callers never
// fall back to an implicit instantiation.
// The classes are forward-declared on purpose: a caller that needs an objective's members includes its header.
// The ObjectiveTemplate_* templates are forward-declared too, because their headers pull in Objective.hpp.
#pragma once

class Objective;
class Objective_Automatic;
class Objective_TalkToNPC;
class Objective_SavedQty;
class TestCharPropId;
class TestCharTemplate;
class QE_DestroyGameObject;
class QE_TriggerPlate;
class QE_ClearEnemies;
class QE_KillEnemies;
class QE_KillEnemyTemplate;
class QE_PickedUpLiftable;
class QE_TriggerOn;
class QE_OpenGameObject;

namespace Structs {
class v2QuestDestroyGameObject;
class v2QuestTriggerPlate;
class v2QuestClearEnemies;
class v2QuestKillEnemies;
class v2QuestKillEnemyTemplate;
class v2QuestPickedUpLiftable;
class v2QuestTriggerOn;
class v2QuestOpenGameObject;
}  // namespace Structs

template <typename TStruct, typename TEvent>
class ObjectiveTemplate_InteractWith;

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
class ObjectiveTemplate_KillCharacter;

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
class ObjectiveTemplate_KillEnemies;

template <class T>
Objective* GetObjectiveImplInstance();

template <>
Objective* GetObjectiveImplInstance<Objective_Automatic>();                 // 0x47bf70
template <>
Objective* GetObjectiveImplInstance<Objective_TalkToNPC>();                 // 0x47cec4
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>>();  // 0x47cf20
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>>();            // 0x47cf78
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>>();  // 0x47cfd0
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>>();      // 0x47d02c
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>>();  // 0x47d088
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>>();              // 0x47d0e4
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>>();                            // 0x47d13c
template <>
Objective* GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>>();                  // 0x47d194
