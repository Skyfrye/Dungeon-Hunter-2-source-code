#pragma once

// Arrays::X::finalize for the 32 tables of arrays_01 (see NOTES.md, "Element tables").
// The static `members` (element 0) and `size` of these tables are owned by the slice that reads them
// (w7_arrays27.hpp, w7_arrays_00.hpp), so each function takes them by reference. The shared body is
// pydata::FinalizeArrayTable<Elem> (element_table.hpp); the element class is typed per table, so no stride
// is passed.
#include <cstddef>
#include <cstdint>

namespace Arrays {

// 0x4a5f80  _ZN6Arrays9ItemTable8finalizeEv
void FinalizeItemTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a6b74  _ZN6Arrays14ItemPowerTable8finalizeEv
void FinalizeItemPowerTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a6cf4  _ZN6Arrays13ItemPowerList8finalizeEv
void FinalizeItemPowerList(std::uint8_t*& members, std::uint32_t size);

// 0x4a6e74  _ZN6Arrays9HintPages8finalizeEv
void FinalizeHintPages(std::uint8_t*& members, std::uint32_t size);

// 0x4a6ff4  _ZN6Arrays9HelpPages8finalizeEv
void FinalizeHelpPages(std::uint8_t*& members, std::uint32_t size);

// 0x4a7174  _ZN6Arrays12TriggerTraps8finalizeEv
void FinalizeTriggerTraps(std::uint8_t*& members, std::uint32_t size);

// 0x4a72f4  _ZN6Arrays13TriggerPlates8finalizeEv
void FinalizeTriggerPlates(std::uint8_t*& members, std::uint32_t size);

// 0x4a7468  _ZN6Arrays14TriggerObjects8finalizeEv
void FinalizeTriggerObjects(std::uint8_t*& members, std::uint32_t size);

// 0x4a75e8  _ZN6Arrays10TimerTraps8finalizeEv
void FinalizeTimerTraps(std::uint8_t*& members, std::uint32_t size);

// 0x4a775c  _ZN6Arrays15ProjectileTraps8finalizeEv
void FinalizeProjectileTraps(std::uint8_t*& members, std::uint32_t size);

// 0x4a78dc  _ZN6Arrays18OpenableContainers8finalizeEv
void FinalizeOpenableContainers(std::uint8_t*& members, std::uint32_t size);

// 0x4a7a5c  _ZN6Arrays15LiftableObjects8finalizeEv
void FinalizeLiftableObjects(std::uint8_t*& members, std::uint32_t size);

// 0x4a7bd0  _ZN6Arrays17GameObjectDamager8finalizeEv
void FinalizeGameObjectDamager(std::uint8_t*& members, std::uint32_t size);

// 0x4a7d50  _ZN6Arrays14ExplosiveTraps8finalizeEv
void FinalizeExplosiveTraps(std::uint8_t*& members, std::uint32_t size);

// 0x4a7ed0  _ZN6Arrays5Doors8finalizeEv
void FinalizeDoors(std::uint8_t*& members, std::uint32_t size);

// 0x4a8050  _ZN6Arrays22DestructibleContainers8finalizeEv
void FinalizeDestructibleContainers(std::uint8_t*& members, std::uint32_t size);

// 0x4a81d0  _ZN6Arrays11FontPalette8finalizeEv
void FinalizeFontPalette(std::uint8_t*& members, std::uint32_t size);

// 0x4a8350  _ZN6Arrays10FaeryTable8finalizeEv
void FinalizeFaeryTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a84d0  _ZN6Arrays14FaeryListTable8finalizeEv
void FinalizeFaeryListTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a8650  _ZN6Arrays19FootstepEffectTable8finalizeEv
void FinalizeFootstepEffectTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a87c4  _ZN6Arrays15CharEffectTable8finalizeEv
void FinalizeCharEffectTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a8944  _ZN6Arrays19AnimatedEffectTable8finalizeEv
void FinalizeAnimatedEffectTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a8ac4  _ZN6Arrays7Dialogs8finalizeEv
void FinalizeDialogs(std::uint8_t*& members, std::uint32_t size);

// 0x4a8c44  _ZN6Arrays12DialogActors8finalizeEv
void FinalizeDialogActors(std::uint8_t*& members, std::uint32_t size);

// 0x4a8dc4  _ZN6Arrays15GameOptionTable8finalizeEv
void FinalizeGameOptionTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a8f38  _ZN6Arrays16GameDifficulties8finalizeEv
void FinalizeGameDifficulties(std::uint8_t*& members, std::uint32_t size);

// 0x4a90b8  _ZN6Arrays19DesignSettingsTable8finalizeEv
void FinalizeDesignSettingsTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a9238  _ZN6Arrays9RectTable8finalizeEv
void FinalizeRectTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a93b8  _ZN6Arrays18Charater_Templates8finalizeEv
void FinalizeCharater_Templates(std::uint8_t*& members, std::uint32_t size);

// 0x4a9538  _ZN6Arrays13StatListTable8finalizeEv
void FinalizeStatListTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a96b8  _ZN6Arrays25StatAutoAssignSchemeTable8finalizeEv
void FinalizeStatAutoAssignSchemeTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a9838  _ZN6Arrays14CharacterTable8finalizeEv
void FinalizeCharacterTable(std::uint8_t*& members, std::uint32_t size);

// 0x4a99b8  _ZN6Arrays10ClassTable8finalizeEv
void FinalizeClassTable(std::uint8_t*& members, std::uint32_t size);


}  // namespace Arrays
