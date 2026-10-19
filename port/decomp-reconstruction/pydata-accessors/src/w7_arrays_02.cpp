// Arrays::X::finalize() and read(IStreamBase*) for slice arrays_02 (27 tables). Shared bodies (element_table.hpp):
//   pydata::FinalizeArrayTable<Elem>: finalize slot +0x8 on each element (forward), then the element slot +0x0 (D1) from
//     the last element back to the first, then the block at members - 8 is freed; members is cleared.
//   pydata::ReadArrayTable<Elem>: count (readAs<uint32>), Table::finalize(), size = count, one block of count elements with
//     the header words (the original 32-bit stride, count), members = first element, each element constructed (vptr and the
//     listed zeroed words) and then read through its read slot +0xc, in order.
// Element tables hold host objects. The file stream is read field by field by each element's read; the 32-bit stride
// of the original (Arrays::ListingStride::X, array_strides.hpp, from the Hex-Rays `*result = N`) is only the size of the
// original's in-memory element, kept in the stride word of the block. The host elements are constructed in place at
// sizeof(Elem) and reached through the typed pointer; no 32-bit stride addresses host memory.
// The words that the listing zeroes after the vptr store are pointer members; their `= nullptr` default does the same
// (each read comment names the member, the offset is the original 32-bit one).
#include "pydata-accessors/w7_arrays_02.hpp"

#include <cstddef>
#include <cstdint>

#include "pydata-accessors/array_strides.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_01.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace Arrays {

// Static storage of the tables whose finalize or read this slice owns.
std::uint8_t* CharAnimTable::members = nullptr;
std::uint32_t CharAnimTable::size = 0;
std::uint8_t* CamAnimSetTable::members = nullptr;
std::uint32_t CamAnimSetTable::size = 0;
std::uint8_t* AnimTable::members = nullptr;
std::uint32_t AnimTable::size = 0;
std::uint8_t* AIFactionTable::members = nullptr;
std::uint32_t AIFactionTable::size = 0;
std::uint8_t* AITable::members = nullptr;
std::uint32_t AITable::size = 0;
std::uint8_t* GameDifficulties::members = nullptr;
std::uint32_t GameDifficulties::size = 0;
std::uint8_t* DesignSettingsTable::members = nullptr;
std::uint32_t DesignSettingsTable::size = 0;
std::uint8_t* RectTable::members = nullptr;
std::uint32_t RectTable::size = 0;
std::uint8_t* StatListTable::members = nullptr;
std::uint32_t StatListTable::size = 0;
std::uint8_t* StatAutoAssignSchemeTable::members = nullptr;
std::uint32_t StatAutoAssignSchemeTable::size = 0;

// ---- finalize ----

// 0x4a9b38 _ZN6Arrays13CharAnimTable8finalizeEv
// listing stride 160 (ListingStride::CharAnimTable); element Structs::CharAnim
void CharAnimTable::finalize() { pydata::FinalizeArrayTable<Structs::CharAnim>(members, size); }

// 0x4a9cb8 _ZN6Arrays15CamAnimSetTable8finalizeEv
// listing stride 28 (ListingStride::CamAnimSetTable); element Structs::CamAnimSet
void CamAnimSetTable::finalize() { pydata::FinalizeArrayTable<Structs::CamAnimSet>(members, size); }

// 0x4a9e38 _ZN6Arrays9AnimTable8finalizeEv
// listing stride 20 (ListingStride::AnimTable); element Structs::AnimTpl
void AnimTable::finalize() { pydata::FinalizeArrayTable<Structs::AnimTpl>(members, size); }

// 0x4a9fb8 _ZN6Arrays14AIFactionTable8finalizeEv
// listing stride 12 (ListingStride::AIFactionTable); element Structs::AIFactions
void AIFactionTable::finalize() { pydata::FinalizeArrayTable<Structs::AIFactions>(members, size); }

// 0x4aa138 _ZN6Arrays7AITable8finalizeEv
// listing stride 68 (ListingStride::AITable); element Structs::AIProps
void AITable::finalize() { pydata::FinalizeArrayTable<Structs::AIProps>(members, size); }

// 0x4a8f38 _ZN6Arrays16GameDifficulties8finalizeEv
// listing stride 24 (ListingStride::GameDifficulties); element Structs::GameDifficulty
// The shared body is Arrays::FinalizeGameDifficulties (w7_arrays_01.cpp, which owns this finalize row); this member forwards to it.
void GameDifficulties::finalize() { FinalizeGameDifficulties(members, size); }

// 0x4a90b8 _ZN6Arrays19DesignSettingsTable8finalizeEv
// listing stride 176 (ListingStride::DesignSettingsTable); element Structs::DesignSettings
// The shared body is Arrays::FinalizeDesignSettingsTable (w7_arrays_01.cpp, which owns this finalize row); this member forwards to it.
void DesignSettingsTable::finalize() { FinalizeDesignSettingsTable(members, size); }

// 0x4a9238 _ZN6Arrays9RectTable8finalizeEv
// listing stride 20 (ListingStride::RectTable); element Structs::Rect
// The shared body is Arrays::FinalizeRectTable (w7_arrays_01.cpp, which owns this finalize row); this member forwards to it.
void RectTable::finalize() { FinalizeRectTable(members, size); }

// 0x4a9538 _ZN6Arrays13StatListTable8finalizeEv
// listing stride 12 (ListingStride::StatListTable); element Structs::StatListList
// The shared body is Arrays::FinalizeStatListTable (w7_arrays_01.cpp, which owns this finalize row); this member forwards to it.
void StatListTable::finalize() { FinalizeStatListTable(members, size); }

// 0x4a96b8 _ZN6Arrays25StatAutoAssignSchemeTable8finalizeEv
// listing stride 12 (ListingStride::StatAutoAssignSchemeTable); element Structs::StatAutoAssignTargetList
// The shared body is Arrays::FinalizeStatAutoAssignSchemeTable (w7_arrays_01.cpp, which owns this finalize row); this member forwards to it.
void StatAutoAssignSchemeTable::finalize() { FinalizeStatAutoAssignSchemeTable(members, size); }

// ---- read ----

// 0x4b45d0 _ZN6Arrays13CharAnimTable4readEP11IStreamBase
// Element Structs::CharAnim, listing stride 160 (ListingStride::CharAnimTable). Listing zeroes: +0x44 (m_w17), +0x88 (m_w34).
void CharAnimTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::CharAnim>(members, size, ListingStride::CharAnimTable, stream, [] { finalize(); });
    CharAnimTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b37a4 _ZN6Arrays15CamAnimSetTable4readEP11IStreamBase
// Element Structs::CamAnimSet, listing stride 28 (ListingStride::CamAnimSetTable). Listing zeroes: +0x8 (m_w2).
void CamAnimSetTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::CamAnimSet>(members, size, ListingStride::CamAnimSetTable, stream, [] { finalize(); });
    CamAnimSetTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b38f0 _ZN6Arrays9AnimTable4readEP11IStreamBase
// Element Structs::AnimTpl, listing stride 20 (ListingStride::AnimTable). Listing zeroes: +0xc (m_w3).
void AnimTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::AnimTpl>(members, size, ListingStride::AnimTable, stream, [] { finalize(); });
    AnimTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4af5e8 _ZN6Arrays16GameDifficulties4readEP11IStreamBase
// Element Structs::GameDifficulty, listing stride 24 (ListingStride::GameDifficulties). Listing zeroes: none.
void GameDifficulties::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::GameDifficulty>(members, size, ListingStride::GameDifficulties, stream, [] { finalize(); });
    GameDifficulties::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b3a38 _ZN6Arrays14AIFactionTable4readEP11IStreamBase
// Element Structs::AIFactions, listing stride 12 (ListingStride::AIFactionTable). Listing zeroes: +0x8 (m_w2).
void AIFactionTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::AIFactions>(members, size, ListingStride::AIFactionTable, stream, [] { finalize(); });
    AIFactionTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b3b84 _ZN6Arrays7AITable4readEP11IStreamBase
// Element Structs::AIProps, listing stride 68 (ListingStride::AITable). Listing zeroes: +0x2c (m_w11).
void AITable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::AIProps>(members, size, ListingStride::AITable, stream, [] { finalize(); });
    AITable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b3cd0 _ZN6Arrays19DesignSettingsTable4readEP11IStreamBase
// Element Structs::DesignSettings, listing stride 176 (ListingStride::DesignSettingsTable). Listing zeroes: none.
void DesignSettingsTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::DesignSettings>(members, size, ListingStride::DesignSettingsTable, stream, [] { finalize(); });
    DesignSettingsTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b3e18 _ZN6Arrays9RectTable4readEP11IStreamBase
// Element Structs::Rect, listing stride 20 (ListingStride::RectTable). Listing zeroes: none.
void RectTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Rect>(members, size, ListingStride::RectTable, stream, [] { finalize(); });
    RectTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b40a8 _ZN6Arrays13StatListTable4readEP11IStreamBase
// Element Structs::StatListList, listing stride 12 (ListingStride::StatListTable). Listing zeroes: +0x8 (m_w2).
void StatListTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::StatListList>(members, size, ListingStride::StatListTable, stream, [] { finalize(); });
    StatListTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b41f4 _ZN6Arrays25StatAutoAssignSchemeTable4readEP11IStreamBase
// Element Structs::StatAutoAssignTargetList, listing stride 12 (ListingStride::StatAutoAssignSchemeTable). Listing zeroes: +0x8 (m_w2).
void StatAutoAssignSchemeTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::StatAutoAssignTargetList>(members, size, ListingStride::StatAutoAssignSchemeTable, stream, [] { finalize(); });
    StatAutoAssignSchemeTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b53f8 _ZN6Arrays15StrID_Languages4readEP11IStreamBase
// Element Structs::LangSheetList, listing stride 12 (ListingStride::StrID_Languages). Listing zeroes: +0x8 (m_w2).
void StrID_Languages::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::LangSheetList>(members, size, ListingStride::StrID_Languages, stream, [] { finalize(); });
    StrID_Languages::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b5544 _ZN6Arrays14GameObjectDict4readEP11IStreamBase
// Element Structs::ColladaFile, listing stride 12 (ListingStride::GameObjectDict). Listing zeroes: +0x8 (m_w2).
void GameObjectDict::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ColladaFile>(members, size, ListingStride::GameObjectDict, stream, [] { finalize(); });
    GameObjectDict::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b5690 _ZN6Arrays6Sounds4readEP11IStreamBase
// Element Structs::SoundAutoGen, listing stride 12 (ListingStride::Sounds). Listing zeroes: none.
void Sounds::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::SoundAutoGen>(members, size, ListingStride::Sounds, stream, [] { finalize(); });
    Sounds::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b830c _ZN6Arrays14ProjectileDict4readEP11IStreamBase
// Element Structs::ColladaFile, listing stride 12 (ListingStride::ProjectileDict). Listing zeroes: +0x8 (m_w2).
void ProjectileDict::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ColladaFile>(members, size, ListingStride::ProjectileDict, stream, [] { finalize(); });
    ProjectileDict::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b8458 _ZN6Arrays10EffectDict4readEP11IStreamBase
// Element Structs::ColladaFile, listing stride 12 (ListingStride::EffectDict). Listing zeroes: +0x8 (m_w2).
void EffectDict::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ColladaFile>(members, size, ListingStride::EffectDict, stream, [] { finalize(); });
    EffectDict::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b85a4 _ZN6Arrays8AnimDict4readEP11IStreamBase
// Element Structs::ColladaFile, listing stride 12 (ListingStride::AnimDict). Listing zeroes: +0x8 (m_w2).
void AnimDict::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ColladaFile>(members, size, ListingStride::AnimDict, stream, [] { finalize(); });
    AnimDict::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b883c _ZN6Arrays15WorldMapLockers4readEP11IStreamBase
// Element Structs::WorldMapLocker, listing stride 12 (ListingStride::WorldMapLockers). Listing zeroes: none.
void WorldMapLockers::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::WorldMapLocker>(members, size, ListingStride::WorldMapLockers, stream, [] { finalize(); });
    WorldMapLockers::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b8980 _ZN6Arrays8WorldMap4readEP11IStreamBase
// Element Structs::WldMapLocation, listing stride 20 (ListingStride::WorldMap). Listing zeroes: +0x10 (m_w4).
void WorldMap::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::WldMapLocation>(members, size, ListingStride::WorldMap, stream, [] { finalize(); });
    WorldMap::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b8c9c _ZN6Arrays8v2Events4readEP11IStreamBase
// Element Structs::v2Event, listing stride 24 (ListingStride::v2Events). Listing zeroes: +0xc (m_w3), +0x14 (m_w5).
void v2Events::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::v2Event>(members, size, ListingStride::v2Events, stream, [] { finalize(); });
    v2Events::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b8dec _ZN6Arrays12v2Conditions4readEP11IStreamBase
// Element Structs::v2CondAnd, listing stride 16 (ListingStride::v2Conditions). Listing zeroes: +0x8 (m_w2).
void v2Conditions::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::v2CondAnd>(members, size, ListingStride::v2Conditions, stream, [] { finalize(); });
    v2Conditions::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b8f28 _ZN6Arrays11TrophyTable4readEP11IStreamBase
// Element Structs::Trophy, listing stride 32 (ListingStride::TrophyTable). Listing zeroes: none.
void TrophyTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Trophy>(members, size, ListingStride::TrophyTable, stream, [] { finalize(); });
    TrophyTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b9060 _ZN6Arrays11SpawnGroups4readEP11IStreamBase
// Element Structs::SpawnGroup, listing stride 20 (ListingStride::SpawnGroups). Listing zeroes: +0x10 (m_w4).
void SpawnGroups::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::SpawnGroup>(members, size, ListingStride::SpawnGroups, stream, [] { finalize(); });
    SpawnGroups::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b91ac _ZN6Arrays10Sounds_bak4readEP11IStreamBase
// Element Structs::Sound, listing stride 44 (ListingStride::Sounds_bak). Listing zeroes: +0x10 (m_w4).
void Sounds_bak::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Sound>(members, size, ListingStride::Sounds_bak, stream, [] { finalize(); });
    Sounds_bak::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b92f8 _ZN6Arrays18SoundGroupsRouting4readEP11IStreamBase
// Element Structs::SoundGroup, listing stride 16 (ListingStride::SoundGroupsRouting). Listing zeroes: +0x8 (m_w2).
void SoundGroupsRouting::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::SoundGroup>(members, size, ListingStride::SoundGroupsRouting, stream, [] { finalize(); });
    SoundGroupsRouting::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b9434 _ZN6Arrays17SoundBankPlayback4readEP11IStreamBase
// Element Structs::SoundBank, listing stride 12 (ListingStride::SoundBankPlayback). Listing zeroes: none.
void SoundBankPlayback::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::SoundBank>(members, size, ListingStride::SoundBankPlayback, stream, [] { finalize(); });
    SoundBankPlayback::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b9578 _ZN6Arrays9Listeners4readEP11IStreamBase
// Element Structs::Listener, listing stride 28 (ListingStride::Listeners). Listing zeroes: none.
void Listeners::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Listener>(members, size, ListingStride::Listeners, stream, [] { finalize(); });
    Listeners::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b96bc _ZN6Arrays15CharSoundsTable4readEP11IStreamBase
// Element Structs::CharSounds, listing stride 40 (ListingStride::CharSoundsTable). Listing zeroes: +0x8 (m_w2), +0x10 (m_w4), +0x18 (m_w6), +0x20 (m_w8).
void CharSoundsTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::CharSounds>(members, size, ListingStride::CharSoundsTable, stream, [] { finalize(); });
    CharSoundsTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

}  // namespace Arrays
