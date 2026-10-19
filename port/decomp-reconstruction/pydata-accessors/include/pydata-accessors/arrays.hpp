#pragma once

// Arrays::X: the one definition of each of the 71 PyData table classes. Each class is the original's static-only
// class (e.g. _ZN6Arrays9ModelDict7membersE). The four slices that used to declare their own subsets
// (member_names.hpp, w7_arrays_00.hpp, w7_arrays_02.hpp and w7_arrays27.hpp) include this header, so a translation
// unit can use any of them together.
//   members, size   the table: element 0 and the element count (the block header is the original 32-bit stride word
//                   at members - 8, the count word at members - 4); definitions in w7_arrays_00/02/27.cpp
//   finalize, read  the element-table destructor loop and the stream reader (w7_arrays_*.cpp); the tables of
//                   w7_arrays_01.hpp finalize through its free FinalizeX functions
//   m_memberNames, finalizeNames, readNames, skipNames   the member-name table (name_readers.cpp)
// Element types and the original 32-bit strides: element_table.hpp and array_strides.hpp.
#include <cstdint>

#include "pydata-accessors/name_table.hpp"

namespace Arrays {

struct Sounds {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct StrID_Languages {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct GameObjectDict {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ProjectileDict {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct EffectDict {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct AnimDict {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ModelDict {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b86f0
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct WorldMapLockers {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct WorldMap {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct v2Quests {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b8acc
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct v2Events {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct v2Conditions {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct TrophyTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct SpawnGroups {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct Sounds_bak {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct SoundGroupsRouting {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct SoundBankPlayback {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct Listeners {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct CharSoundsTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct SkillTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b9810
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct SkillListTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b9964
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ProjectileTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b9ab0
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct NumProbArray {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b9bf4
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct MerchantTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b9d40
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct LootTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b9e8c
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ItemTypeList {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4b9fe0
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ItemList {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4ba27c
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct InventoryTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4ba3c8
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct DropTilePriorityTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4ba4fc
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ItemAudioVisualTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4ba648
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct LevelList {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4ba794
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct FastTravelList {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4ba8e4
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct ItemBonusAttrMonopoly {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);  // 0x4baa30
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct CharAnimTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct CamAnimSetTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct AnimTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct AIFactionTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct AITable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct GameDifficulties {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct DesignSettingsTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct RectTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct StatListTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct StatAutoAssignSchemeTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ItemPowerTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays14ItemPowerTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct HintPages {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays9HintPages8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct HelpPages {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays9HelpPages8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct TriggerTraps {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays12TriggerTraps8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct TriggerPlates {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays13TriggerPlates8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct TriggerObjects {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays14TriggerObjects8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct TimerTraps {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays10TimerTraps8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct ProjectileTraps {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays15ProjectileTraps8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct OpenableContainers {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays18OpenableContainers8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct LiftableObjects {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays15LiftableObjects8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct GameObjectDamager {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays17GameObjectDamager8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ExplosiveTraps {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays14ExplosiveTraps8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct Doors {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays5Doors8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct DestructibleContainers {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays22DestructibleContainers8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct FontPalette {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays11FontPalette8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct FootstepEffectTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays19FootstepEffectTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct CharEffectTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays15CharEffectTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct AnimatedEffectTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays19AnimatedEffectTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct Dialogs {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays7Dialogs8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct DialogActors {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays12DialogActors8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct GameOptionTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays15GameOptionTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct ItemPowerList {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays13ItemPowerList8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct FaeryTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays10FaeryTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct FaeryListTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays14FaeryListTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct Charater_Templates {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays18Charater_Templates8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct CharacterTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays14CharacterTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};
struct ClassTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays10ClassTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
    static void skipNames(IStreamBase* stream);
};
struct ItemTable {
    static std::uint8_t* members;
    static std::uint32_t size;
    static void finalize();  // _ZN6Arrays9ItemTable8finalizeEv, body in src/od_arrays_finalize.cpp
    static void read(IStreamBase* stream);
    static pydata::NameTable m_memberNames;
    static void finalizeNames();
    static void readNames(IStreamBase* stream);
};

}  // namespace Arrays
