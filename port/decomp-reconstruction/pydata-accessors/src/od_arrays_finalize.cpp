// Arrays::X::finalize members for the tables whose bodies live in w7_arrays_01.cpp as the free functions Arrays::FinalizeX(members, size).
// The original symbol is Arrays::X::finalize() (rule 10), so each table gets its real static member here; the member forwards to the free body.
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/w7_arrays_01.hpp"

namespace Arrays {

// 0x4a8944 _ZN6Arrays19AnimatedEffectTable8finalizeEv
void AnimatedEffectTable::finalize() { FinalizeAnimatedEffectTable(members, size); }
// 0x4a87c4 _ZN6Arrays15CharEffectTable8finalizeEv
void CharEffectTable::finalize() { FinalizeCharEffectTable(members, size); }
// 0x4a9838 _ZN6Arrays14CharacterTable8finalizeEv
void CharacterTable::finalize() { FinalizeCharacterTable(members, size); }
// 0x4a93b8 _ZN6Arrays18Charater_Templates8finalizeEv
void Charater_Templates::finalize() { FinalizeCharater_Templates(members, size); }
// 0x4a99b8 _ZN6Arrays10ClassTable8finalizeEv
void ClassTable::finalize() { FinalizeClassTable(members, size); }
// 0x4a8050 _ZN6Arrays22DestructibleContainers8finalizeEv
void DestructibleContainers::finalize() { FinalizeDestructibleContainers(members, size); }
// 0x4a8c44 _ZN6Arrays12DialogActors8finalizeEv
void DialogActors::finalize() { FinalizeDialogActors(members, size); }
// 0x4a8ac4 _ZN6Arrays7Dialogs8finalizeEv
void Dialogs::finalize() { FinalizeDialogs(members, size); }
// 0x4a7ed0 _ZN6Arrays5Doors8finalizeEv
void Doors::finalize() { FinalizeDoors(members, size); }
// 0x4a7d50 _ZN6Arrays14ExplosiveTraps8finalizeEv
void ExplosiveTraps::finalize() { FinalizeExplosiveTraps(members, size); }
// 0x4a84d0 _ZN6Arrays14FaeryListTable8finalizeEv
void FaeryListTable::finalize() { FinalizeFaeryListTable(members, size); }
// 0x4a8350 _ZN6Arrays10FaeryTable8finalizeEv
void FaeryTable::finalize() { FinalizeFaeryTable(members, size); }
// 0x4a81d0 _ZN6Arrays11FontPalette8finalizeEv
void FontPalette::finalize() { FinalizeFontPalette(members, size); }
// 0x4a8650 _ZN6Arrays19FootstepEffectTable8finalizeEv
void FootstepEffectTable::finalize() { FinalizeFootstepEffectTable(members, size); }
// 0x4a7bd0 _ZN6Arrays17GameObjectDamager8finalizeEv
void GameObjectDamager::finalize() { FinalizeGameObjectDamager(members, size); }
// 0x4a8dc4 _ZN6Arrays15GameOptionTable8finalizeEv
void GameOptionTable::finalize() { FinalizeGameOptionTable(members, size); }
// 0x4a6ff4 _ZN6Arrays9HelpPages8finalizeEv
void HelpPages::finalize() { FinalizeHelpPages(members, size); }
// 0x4a6e74 _ZN6Arrays9HintPages8finalizeEv
void HintPages::finalize() { FinalizeHintPages(members, size); }
// 0x4a6cf4 _ZN6Arrays13ItemPowerList8finalizeEv
void ItemPowerList::finalize() { FinalizeItemPowerList(members, size); }
// 0x4a6b74 _ZN6Arrays14ItemPowerTable8finalizeEv
void ItemPowerTable::finalize() { FinalizeItemPowerTable(members, size); }
// 0x4a5f80 _ZN6Arrays9ItemTable8finalizeEv
void ItemTable::finalize() { FinalizeItemTable(members, size); }
// 0x4a7a5c _ZN6Arrays15LiftableObjects8finalizeEv
void LiftableObjects::finalize() { FinalizeLiftableObjects(members, size); }
// 0x4a78dc _ZN6Arrays18OpenableContainers8finalizeEv
void OpenableContainers::finalize() { FinalizeOpenableContainers(members, size); }
// 0x4a775c _ZN6Arrays15ProjectileTraps8finalizeEv
void ProjectileTraps::finalize() { FinalizeProjectileTraps(members, size); }
// 0x4a75e8 _ZN6Arrays10TimerTraps8finalizeEv
void TimerTraps::finalize() { FinalizeTimerTraps(members, size); }
// 0x4a7468 _ZN6Arrays14TriggerObjects8finalizeEv
void TriggerObjects::finalize() { FinalizeTriggerObjects(members, size); }
// 0x4a72f4 _ZN6Arrays13TriggerPlates8finalizeEv
void TriggerPlates::finalize() { FinalizeTriggerPlates(members, size); }
// 0x4a7174 _ZN6Arrays12TriggerTraps8finalizeEv
void TriggerTraps::finalize() { FinalizeTriggerTraps(members, size); }

}  // namespace Arrays
