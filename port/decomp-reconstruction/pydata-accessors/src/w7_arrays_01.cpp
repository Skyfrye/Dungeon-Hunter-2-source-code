// Arrays::X::finalize, 32 tables (slice arrays_01). Shared body: pydata::FinalizeArrayTable<Elem>
// (element_table.hpp), the same body as the 33 finalize functions of w7_arrays_00.cpp.
// Elements are host objects reached through the typed pointer Elem*. The 32-bit stride the original steps by is
// `Arrays::ListingStride::X` (array_strides.hpp) and is kept in the comment on each function; it is never used to
// walk the table here. Tables whose element class was unknown when this slice was written now name the class
// that the table's read (Hex-Rays, vptr of the first element) installs.
#include "pydata-accessors/w7_arrays_01.hpp"

#include "pydata-accessors/array_strides.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace Arrays {

// 0x4a5f80  _ZN6Arrays9ItemTable8finalizeEv
void FinalizeItemTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::Item>(members, size);  // listing stride 164; element by the vtable in 0x4ba12c
}

// 0x4a6b74  _ZN6Arrays14ItemPowerTable8finalizeEv
void FinalizeItemPowerTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::ItemPowerRef>(members, size);  // listing stride 40
}

// 0x4a6cf4  _ZN6Arrays13ItemPowerList8finalizeEv
void FinalizeItemPowerList(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::ItemPowerEntryList>(members, size);  // listing stride 12; element by the vtable in 0x4bacc8
}

// 0x4a6e74  _ZN6Arrays9HintPages8finalizeEv
void FinalizeHintPages(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::HintPage>(members, size);  // listing stride 12
}

// 0x4a6ff4  _ZN6Arrays9HelpPages8finalizeEv
void FinalizeHelpPages(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::HelpPage>(members, size);  // listing stride 12
}

// 0x4a7174  _ZN6Arrays12TriggerTraps8finalizeEv
void FinalizeTriggerTraps(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::TriggerTrap>(members, size);  // listing stride 28
}

// 0x4a72f4  _ZN6Arrays13TriggerPlates8finalizeEv
void FinalizeTriggerPlates(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::TriggerPlate>(members, size);  // listing stride 32
}

// 0x4a7468  _ZN6Arrays14TriggerObjects8finalizeEv
void FinalizeTriggerObjects(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::TriggerObject>(members, size);  // listing stride 24
}

// 0x4a75e8  _ZN6Arrays10TimerTraps8finalizeEv
void FinalizeTimerTraps(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::TimerTrap>(members, size);  // listing stride 32
}

// 0x4a775c  _ZN6Arrays15ProjectileTraps8finalizeEv
void FinalizeProjectileTraps(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::ProjectileTrap>(members, size);  // listing stride 40
}

// 0x4a78dc  _ZN6Arrays18OpenableContainers8finalizeEv
void FinalizeOpenableContainers(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::OpenableContainer>(members, size);  // listing stride 40
}

// 0x4a7a5c  _ZN6Arrays15LiftableObjects8finalizeEv
void FinalizeLiftableObjects(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::LiftableObject>(members, size);  // listing stride 8
}

// 0x4a7bd0  _ZN6Arrays17GameObjectDamager8finalizeEv
void FinalizeGameObjectDamager(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::GameObjectDamage>(members, size);  // listing stride 24
}

// 0x4a7d50  _ZN6Arrays14ExplosiveTraps8finalizeEv
void FinalizeExplosiveTraps(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::ExplosiveTrap>(members, size);  // listing stride 24
}

// 0x4a7ed0  _ZN6Arrays5Doors8finalizeEv
void FinalizeDoors(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::Door>(members, size);  // listing stride 24
}

// 0x4a8050  _ZN6Arrays22DestructibleContainers8finalizeEv
void FinalizeDestructibleContainers(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::DestructibleContainer>(members, size);  // listing stride 68
}

// 0x4a81d0  _ZN6Arrays11FontPalette8finalizeEv
void FinalizeFontPalette(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::FontColorDef>(members, size);  // listing stride 12
}

// 0x4a8350  _ZN6Arrays10FaeryTable8finalizeEv
void FinalizeFaeryTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::Faery>(members, size);  // listing stride 36; element by the vtable in 0x4bbfe0
}

// 0x4a84d0  _ZN6Arrays14FaeryListTable8finalizeEv
void FinalizeFaeryListTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::FaeryList>(members, size);  // listing stride 12; element by the vtable in 0x4bc12c
}

// 0x4a8650  _ZN6Arrays19FootstepEffectTable8finalizeEv
void FinalizeFootstepEffectTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::FootstepEffect>(members, size);  // listing stride 32
}

// 0x4a87c4  _ZN6Arrays15CharEffectTable8finalizeEv
void FinalizeCharEffectTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::CharEffect>(members, size);  // listing stride 24
}

// 0x4a8944  _ZN6Arrays19AnimatedEffectTable8finalizeEv
void FinalizeAnimatedEffectTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::AnimFXTpl>(members, size);  // listing stride 24
}

// 0x4a8ac4  _ZN6Arrays7Dialogs8finalizeEv
void FinalizeDialogs(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::DialogStepList>(members, size);  // listing stride 12
}

// 0x4a8c44  _ZN6Arrays12DialogActors8finalizeEv
void FinalizeDialogActors(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::DialogActor>(members, size);  // listing stride 20
}

// 0x4a8dc4  _ZN6Arrays15GameOptionTable8finalizeEv
void FinalizeGameOptionTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::GameOption>(members, size);  // listing stride 32
}

// 0x4a8f38  _ZN6Arrays16GameDifficulties8finalizeEv
void FinalizeGameDifficulties(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::GameDifficulty>(members, size);  // listing stride 24
}

// 0x4a90b8  _ZN6Arrays19DesignSettingsTable8finalizeEv
void FinalizeDesignSettingsTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::DesignSettings>(members, size);  // listing stride 176
}

// 0x4a9238  _ZN6Arrays9RectTable8finalizeEv
void FinalizeRectTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::Rect>(members, size);  // listing stride 20
}

// 0x4a93b8  _ZN6Arrays18Charater_Templates8finalizeEv
void FinalizeCharater_Templates(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::CharTemplate>(members, size);  // listing stride 12; element by the vtable in 0x4b3f5c
}

// 0x4a9538  _ZN6Arrays13StatListTable8finalizeEv
void FinalizeStatListTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::StatListList>(members, size);  // listing stride 12
}

// 0x4a96b8  _ZN6Arrays25StatAutoAssignSchemeTable8finalizeEv
void FinalizeStatAutoAssignSchemeTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::StatAutoAssignTargetList>(members, size);  // listing stride 12
}

// 0x4a9838  _ZN6Arrays14CharacterTable8finalizeEv
void FinalizeCharacterTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::CharacterProperties>(members, size);  // listing stride 900; element by the vtable in 0x4b4340
}

// 0x4a99b8  _ZN6Arrays10ClassTable8finalizeEv
void FinalizeClassTable(std::uint8_t*& members, std::uint32_t size) {
    pydata::FinalizeArrayTable<Structs::ClassFuncList>(members, size);  // listing stride 12; element by the vtable in 0x4b4484
}


}  // namespace Arrays
