// Arrays::X::read(IStreamBase*) for slice arrays_27 (the 28 tables declared in w7_arrays27.hpp) and the 11 tables whose
// storage is declared in w7_arrays_00.hpp. Each function carries its address and mangled symbol.
//
// Shared body, from the Hex-Rays pseudocode of every row (pydata::ReadArrayTable<Elem>, element_table.hpp):
//   1. count = readAs<uint32>(stream)
//   2. Table::finalize() on the old table
//   3. size = count; one block of count elements plus the two header words (the original 32-bit stride, count);
//      members = first element
//   4. each element gets its vptr and the listed zeroed words
//   5. each element's read slot (+0xc) runs in order, with the stream
// The file is read sequentially, field by field, by the element's own read (StreamReader::readAs); the 32-bit stride
// is the size of the ORIGINAL in-memory element, not a stride in the file. The port keeps it as the named constant
// Arrays::ListingStride::X (array_strides.hpp, from the Hex-Rays body: `*result = N`, `operator new[](N * count + 8)`)
// and stores it in the stride word of the block. The elements themselves are host objects: constructed in place at
// sizeof(Elem) (80 against 72 for Structs::Projectile, 80 against 68 for DestructibleContainer) and reached through
// the typed pointer, so the 32-bit stride is never used to address host memory.
// Step 4: construction gives the vptr, and the words the listing zeroes are pointer members whose `= nullptr`
// default does the same (each comment below names the member; the offsets are the original 32-bit ones).
#include "pydata-accessors/w7_arrays27.hpp"

#include <cstddef>
#include <cstdint>

#include "pydata-accessors/array_strides.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_arrays_01.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace Arrays {

// Static storage of the 28 tables declared in w7_arrays27.hpp (the tables of w7_arrays_00.hpp own theirs).
std::uint8_t* ItemPowerTable::members = nullptr;
std::uint32_t ItemPowerTable::size = 0;
std::uint8_t* HintPages::members = nullptr;
std::uint32_t HintPages::size = 0;
std::uint8_t* HelpPages::members = nullptr;
std::uint32_t HelpPages::size = 0;
std::uint8_t* TriggerTraps::members = nullptr;
std::uint32_t TriggerTraps::size = 0;
std::uint8_t* TriggerPlates::members = nullptr;
std::uint32_t TriggerPlates::size = 0;
std::uint8_t* TriggerObjects::members = nullptr;
std::uint32_t TriggerObjects::size = 0;
std::uint8_t* TimerTraps::members = nullptr;
std::uint32_t TimerTraps::size = 0;
std::uint8_t* ProjectileTraps::members = nullptr;
std::uint32_t ProjectileTraps::size = 0;
std::uint8_t* OpenableContainers::members = nullptr;
std::uint32_t OpenableContainers::size = 0;
std::uint8_t* LiftableObjects::members = nullptr;
std::uint32_t LiftableObjects::size = 0;
std::uint8_t* GameObjectDamager::members = nullptr;
std::uint32_t GameObjectDamager::size = 0;
std::uint8_t* ExplosiveTraps::members = nullptr;
std::uint32_t ExplosiveTraps::size = 0;
std::uint8_t* Doors::members = nullptr;
std::uint32_t Doors::size = 0;
std::uint8_t* DestructibleContainers::members = nullptr;
std::uint32_t DestructibleContainers::size = 0;
std::uint8_t* FontPalette::members = nullptr;
std::uint32_t FontPalette::size = 0;
std::uint8_t* FootstepEffectTable::members = nullptr;
std::uint32_t FootstepEffectTable::size = 0;
std::uint8_t* CharEffectTable::members = nullptr;
std::uint32_t CharEffectTable::size = 0;
std::uint8_t* AnimatedEffectTable::members = nullptr;
std::uint32_t AnimatedEffectTable::size = 0;
std::uint8_t* Dialogs::members = nullptr;
std::uint32_t Dialogs::size = 0;
std::uint8_t* DialogActors::members = nullptr;
std::uint32_t DialogActors::size = 0;
std::uint8_t* GameOptionTable::members = nullptr;
std::uint32_t GameOptionTable::size = 0;
std::uint8_t* ItemPowerList::members = nullptr;
std::uint32_t ItemPowerList::size = 0;
std::uint8_t* FaeryTable::members = nullptr;
std::uint32_t FaeryTable::size = 0;
std::uint8_t* FaeryListTable::members = nullptr;
std::uint32_t FaeryListTable::size = 0;
std::uint8_t* Charater_Templates::members = nullptr;
std::uint32_t Charater_Templates::size = 0;
std::uint8_t* CharacterTable::members = nullptr;
std::uint32_t CharacterTable::size = 0;
std::uint8_t* ClassTable::members = nullptr;
std::uint32_t ClassTable::size = 0;
std::uint8_t* ItemTable::members = nullptr;
std::uint32_t ItemTable::size = 0;

// 0x4b9ab0 _ZN6Arrays15ProjectileTable4readEP11IStreamBase
// Element Structs::Projectile, listing stride 72 (ListingStride::ProjectileTable). Listing zeroes: none.
void ProjectileTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Projectile>(members, size, ListingStride::ProjectileTable, stream, [] { finalize(); });
    ProjectileTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b9d40 _ZN6Arrays13MerchantTable4readEP11IStreamBase
// Element Structs::Merchant, listing stride 20 (ListingStride::MerchantTable). Listing zeroes: +0x10 (m_w4).
void MerchantTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Merchant>(members, size, ListingStride::MerchantTable, stream, [] { finalize(); });
    MerchantTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b9fe0 _ZN6Arrays12ItemTypeList4readEP11IStreamBase
// Element Structs::ItemTypeListList, listing stride 12 (ListingStride::ItemTypeList). Listing zeroes: +0x8 (m_w2).
void ItemTypeList::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ItemTypeListList>(members, size, ListingStride::ItemTypeList, stream, [] { finalize(); });
    ItemTypeList::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4ba648 _ZN6Arrays20ItemAudioVisualTable4readEP11IStreamBase
// Element Structs::ItemAudioVisual, listing stride 20 (ListingStride::ItemAudioVisualTable). Listing zeroes: +0x10 (m_w4).
void ItemAudioVisualTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ItemAudioVisual>(members, size, ListingStride::ItemAudioVisualTable, stream, [] { finalize(); });
    ItemAudioVisualTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4ba794 _ZN6Arrays9LevelList4readEP11IStreamBase
// Element Structs::LevelDeclaration, listing stride 72 (ListingStride::LevelList). Listing zeroes: +0xc (m_w3), +0x20 (m_w8).
void LevelList::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::LevelDeclaration>(members, size, ListingStride::LevelList, stream, [] { finalize(); });
    LevelList::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4ba8e4 _ZN6Arrays14FastTravelList4readEP11IStreamBase
// Element Structs::FastTravelDestination, listing stride 28 (ListingStride::FastTravelList). Listing zeroes: +0x10 (m_w4).
void FastTravelList::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::FastTravelDestination>(members, size, ListingStride::FastTravelList, stream, [] { finalize(); });
    FastTravelList::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b9e8c _ZN6Arrays9LootTable4readEP11IStreamBase
// Element Structs::Loot, listing stride 36 (ListingStride::LootTable). Listing zeroes: +0x10 (m_w4), +0x18 (m_w6), +0x20 (m_w8).
void LootTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Loot>(members, size, ListingStride::LootTable, stream, [] { finalize(); });
    LootTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4ba27c _ZN6Arrays8ItemList4readEP11IStreamBase
// Element Structs::ItemListEntryList, listing stride 12 (ListingStride::ItemList). Listing zeroes: +0x8 (m_w2).
void ItemList::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ItemListEntryList>(members, size, ListingStride::ItemList, stream, [] { finalize(); });
    ItemList::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4ba4fc _ZN6Arrays21DropTilePriorityTable4readEP11IStreamBase
// Element Structs::TileOffsetList, listing stride 12 (ListingStride::DropTilePriorityTable). Listing zeroes: +0x8 (m_w2).
void DropTilePriorityTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::TileOffsetList>(members, size, ListingStride::DropTilePriorityTable, stream, [] { finalize(); });
    DropTilePriorityTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b86f0 _ZN6Arrays9ModelDict4readEP11IStreamBase
// Element Structs::ColladaFile, listing stride 12 (ListingStride::ModelDict). Listing zeroes: +0x8 (m_w2).
void ModelDict::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ColladaFile>(members, size, ListingStride::ModelDict, stream, [] { finalize(); });
    ModelDict::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b8acc _ZN6Arrays8v2Quests4readEP11IStreamBase
// Element Structs::v2Quest, listing stride 284 (ListingStride::v2Quests). The listing loop also installs the vptrs of
// the three embedded objects and zeroes 23 pointer words (the five element-table pointers and the embedded
// objects' buffers); all of them are null by construction.
void v2Quests::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::v2Quest>(members, size, ListingStride::v2Quests, stream, [] { finalize(); });
    v2Quests::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// ---- Tables declared in w7_arrays27.hpp (finalize from w7_arrays_01.hpp) ----

// 0x4bab7c _ZN6Arrays14ItemPowerTable4readEP11IStreamBase
// Element Structs::ItemPowerRef, listing stride 40 (ListingStride::ItemPowerTable). Listing zeroes: +0x10 (m_w4).
void ItemPowerTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ItemPowerRef>(members, size, ListingStride::ItemPowerTable, stream, [] { FinalizeItemPowerTable(members, size); });
    ItemPowerTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bae14 _ZN6Arrays9HintPages4readEP11IStreamBase
// Element Structs::HintPage, listing stride 12 (ListingStride::HintPages). Listing zeroes: none.
void HintPages::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::HintPage>(members, size, ListingStride::HintPages, stream, [] { FinalizeHintPages(members, size); });
    HintPages::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4baf58 _ZN6Arrays9HelpPages4readEP11IStreamBase
// Element Structs::HelpPage, listing stride 12 (ListingStride::HelpPages). Listing zeroes: none.
void HelpPages::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::HelpPage>(members, size, ListingStride::HelpPages, stream, [] { FinalizeHelpPages(members, size); });
    HelpPages::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bb09c _ZN6Arrays12TriggerTraps4readEP11IStreamBase
// Element Structs::TriggerTrap, listing stride 28 (ListingStride::TriggerTraps). Listing zeroes: +0x10 (m_w4).
void TriggerTraps::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::TriggerTrap>(members, size, ListingStride::TriggerTraps, stream, [] { FinalizeTriggerTraps(members, size); });
    TriggerTraps::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bb1e8 _ZN6Arrays13TriggerPlates4readEP11IStreamBase
// Element Structs::TriggerPlate, listing stride 32 (ListingStride::TriggerPlates). Listing zeroes: none.
void TriggerPlates::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::TriggerPlate>(members, size, ListingStride::TriggerPlates, stream, [] { FinalizeTriggerPlates(members, size); });
    TriggerPlates::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bb320 _ZN6Arrays14TriggerObjects4readEP11IStreamBase
// Element Structs::TriggerObject, listing stride 24 (ListingStride::TriggerObjects). Listing zeroes: +0xc (m_w3).
void TriggerObjects::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::TriggerObject>(members, size, ListingStride::TriggerObjects, stream, [] { FinalizeTriggerObjects(members, size); });
    TriggerObjects::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bb46c _ZN6Arrays10TimerTraps4readEP11IStreamBase
// Element Structs::TimerTrap, listing stride 32 (ListingStride::TimerTraps). Listing zeroes: +0x14 (m_w5).
void TimerTraps::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::TimerTrap>(members, size, ListingStride::TimerTraps, stream, [] { FinalizeTimerTraps(members, size); });
    TimerTraps::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bb5ac _ZN6Arrays15ProjectileTraps4readEP11IStreamBase
// Element Structs::ProjectileTrap, listing stride 40 (ListingStride::ProjectileTraps). Listing zeroes: +0x1c (m_w7).
void ProjectileTraps::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ProjectileTrap>(members, size, ListingStride::ProjectileTraps, stream, [] { FinalizeProjectileTraps(members, size); });
    ProjectileTraps::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bb6f8 _ZN6Arrays18OpenableContainers4readEP11IStreamBase
// Element Structs::OpenableContainer, listing stride 40 (ListingStride::OpenableContainers). Listing zeroes: +0x18 (m_w6).
void OpenableContainers::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::OpenableContainer>(members, size, ListingStride::OpenableContainers, stream, [] { FinalizeOpenableContainers(members, size); });
    OpenableContainers::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bb844 _ZN6Arrays15LiftableObjects4readEP11IStreamBase
// Element Structs::LiftableObject, listing stride 8 (ListingStride::LiftableObjects). Listing zeroes: none.
void LiftableObjects::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::LiftableObject>(members, size, ListingStride::LiftableObjects, stream, [] { FinalizeLiftableObjects(members, size); });
    LiftableObjects::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bb978 _ZN6Arrays17GameObjectDamager4readEP11IStreamBase
// Element Structs::GameObjectDamage, listing stride 24 (ListingStride::GameObjectDamager). Listing zeroes: none.
void GameObjectDamager::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::GameObjectDamage>(members, size, ListingStride::GameObjectDamager, stream, [] { FinalizeGameObjectDamager(members, size); });
    GameObjectDamager::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bbabc _ZN6Arrays14ExplosiveTraps4readEP11IStreamBase
// Element Structs::ExplosiveTrap, listing stride 24 (ListingStride::ExplosiveTraps). Listing zeroes: +0x10 (m_w4).
void ExplosiveTraps::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ExplosiveTrap>(members, size, ListingStride::ExplosiveTraps, stream, [] { FinalizeExplosiveTraps(members, size); });
    ExplosiveTraps::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bbc04 _ZN6Arrays5Doors4readEP11IStreamBase
// Element Structs::Door, listing stride 24 (ListingStride::Doors). Listing zeroes: +0x8 (m_w2).
void Doors::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Door>(members, size, ListingStride::Doors, stream, [] { FinalizeDoors(members, size); });
    Doors::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bbd50 _ZN6Arrays22DestructibleContainers4readEP11IStreamBase
// Element Structs::DestructibleContainer, listing stride 68 (ListingStride::DestructibleContainers). Listing zeroes: +0x30 (m_w12).
void DestructibleContainers::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::DestructibleContainer>(members, size, ListingStride::DestructibleContainers, stream, [] { FinalizeDestructibleContainers(members, size); });
    DestructibleContainers::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bbe9c _ZN6Arrays11FontPalette4readEP11IStreamBase
// Element Structs::FontColorDef, listing stride 12 (ListingStride::FontPalette). Listing zeroes: none.
void FontPalette::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::FontColorDef>(members, size, ListingStride::FontPalette, stream, [] { FinalizeFontPalette(members, size); });
    FontPalette::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bc278 _ZN6Arrays19FootstepEffectTable4readEP11IStreamBase
// Element Structs::FootstepEffect, listing stride 32 (ListingStride::FootstepEffectTable). Listing zeroes: +0xc (m_w3), +0x14 (m_w5), +0x1c (m_w7).
void FootstepEffectTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::FootstepEffect>(members, size, ListingStride::FootstepEffectTable, stream, [] { FinalizeFootstepEffectTable(members, size); });
    FootstepEffectTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bc3c0 _ZN6Arrays15CharEffectTable4readEP11IStreamBase
// Element Structs::CharEffect, listing stride 24 (ListingStride::CharEffectTable). Listing zeroes: none.
void CharEffectTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::CharEffect>(members, size, ListingStride::CharEffectTable, stream, [] { FinalizeCharEffectTable(members, size); });
    CharEffectTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bc504 _ZN6Arrays19AnimatedEffectTable4readEP11IStreamBase
// Element Structs::AnimFXTpl, listing stride 24 (ListingStride::AnimatedEffectTable). Listing zeroes: +0x10 (m_w4).
void AnimatedEffectTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::AnimFXTpl>(members, size, ListingStride::AnimatedEffectTable, stream, [] { FinalizeAnimatedEffectTable(members, size); });
    AnimatedEffectTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bc64c _ZN6Arrays7Dialogs4readEP11IStreamBase
// Element Structs::DialogStepList, listing stride 12 (ListingStride::Dialogs). Listing zeroes: +0x8 (m_w2).
void Dialogs::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::DialogStepList>(members, size, ListingStride::Dialogs, stream, [] { FinalizeDialogs(members, size); });
    Dialogs::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bc798 _ZN6Arrays12DialogActors4readEP11IStreamBase
// Element Structs::DialogActor, listing stride 20 (ListingStride::DialogActors). Listing zeroes: +0xc (m_w3).
void DialogActors::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::DialogActor>(members, size, ListingStride::DialogActors, stream, [] { FinalizeDialogActors(members, size); });
    DialogActors::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bc8e0 _ZN6Arrays15GameOptionTable4readEP11IStreamBase
// Element Structs::GameOption, listing stride 32 (ListingStride::GameOptionTable). Listing zeroes: none.
void GameOptionTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::GameOption>(members, size, ListingStride::GameOptionTable, stream, [] { FinalizeGameOptionTable(members, size); });
    GameOptionTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bacc8 _ZN6Arrays13ItemPowerList4readEP11IStreamBase
// Element Structs::ItemPowerEntryList, listing stride 12 (ListingStride::ItemPowerList). Listing zeroes: +0x8 (m_w2).
void ItemPowerList::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ItemPowerEntryList>(members, size, ListingStride::ItemPowerList, stream, [] { FinalizeItemPowerList(members, size); });
    ItemPowerList::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bbfe0 _ZN6Arrays10FaeryTable4readEP11IStreamBase
// Element Structs::Faery, listing stride 36 (ListingStride::FaeryTable). Listing zeroes: +0x18 (m_w6).
void FaeryTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Faery>(members, size, ListingStride::FaeryTable, stream, [] { FinalizeFaeryTable(members, size); });
    FaeryTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4bc12c _ZN6Arrays14FaeryListTable4readEP11IStreamBase
// Element Structs::FaeryList, listing stride 12 (ListingStride::FaeryListTable). Listing zeroes: +0x8 (m_w2).
void FaeryListTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::FaeryList>(members, size, ListingStride::FaeryListTable, stream, [] { FinalizeFaeryListTable(members, size); });
    FaeryListTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b3f5c _ZN6Arrays18Charater_Templates4readEP11IStreamBase
// Element Structs::CharTemplate, listing stride 12 (ListingStride::Charater_Templates). Listing zeroes: +0x8 (m_w2).
void Charater_Templates::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::CharTemplate>(members, size, ListingStride::Charater_Templates, stream, [] { FinalizeCharater_Templates(members, size); });
    Charater_Templates::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b4340 _ZN6Arrays14CharacterTable4readEP11IStreamBase
// Element Structs::CharacterProperties, listing stride 900 (ListingStride::CharacterTable). Listing zeroes: none.
void CharacterTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::CharacterProperties>(members, size, ListingStride::CharacterTable, stream, [] { FinalizeCharacterTable(members, size); });
    CharacterTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b4484 _ZN6Arrays10ClassTable4readEP11IStreamBase
// Element Structs::ClassFuncList, listing stride 12 (ListingStride::ClassTable). Listing zeroes: +0x8 (m_w2).
void ClassTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ClassFuncList>(members, size, ListingStride::ClassTable, stream, [] { FinalizeClassTable(members, size); });
    ClassTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4ba12c _ZN6Arrays9ItemTable4readEP11IStreamBase
// Element Structs::Item, listing stride 164 (ListingStride::ItemTable). Listing zeroes +0x8 (m_w2 of ItemBase) and
// +0x50 (m_w20): the two buffer pointers, null by construction. The finalize of the table runs the element
// finalize first (it clears both pointers), so the Item-family destructors, which free +0x8 in the derived class
// and again in ItemBase as the listing does, find nothing to free.
void ItemTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Item>(members, size, ListingStride::ItemTable, stream,
                                          [] { FinalizeItemTable(members, size); });
    ItemTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

}  // namespace Arrays
