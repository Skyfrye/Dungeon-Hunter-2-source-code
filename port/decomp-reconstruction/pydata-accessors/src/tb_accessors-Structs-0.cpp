// Structs::X::read(IStreamBase*) for batch e1-pydata-accessors-Structs-0 (20 functions, class Structs).
// Declarations are in include/pydata-accessors/structs_records.hpp, w7_structs_2.hpp and w7_structs_5.hpp.
// Layout comments give the original 32-bit offsets. Each read follows the Hex-Rays body in order: the
// stream reads, the frees before each reallocation, and the allocation and its element loop.
//
// Element tables (ItemListEntryList, CharTemplate, ClassFuncList, AnimTpl) hold the element class found from
// the vtable of the table's element pointer: ItemListEntry (listing stride 12), CharInfoName (8), ClassFunc (24)
// and AnimStep (56). They are built and destroyed through pydata::NewAndReadElementTable / DeleteElementTable
// (element_table.hpp): host objects constructed in place at sizeof(Elem), reached through a typed pointer, with the
// original 32-bit stride (Structs::ListingStride, struct_strides.hpp) written to the stride word. The table header
// (stride, count) sits before the members, as in the original, so the destructor loop reads the count from the block.
#include <cstddef>
#include <cstdint>

#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/struct_strides.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace {

// Original int32 word table: free the old block if set, allocate count * 4 bytes (hint 1), read each word.
// The count word has already been stored by the caller.
void ReadInt32Words(IStreamBase* stream, void*& words, std::uint32_t count) {
    if (words != nullptr) CustomFree(words);
    words = ::operator new[](sizeof(std::int32_t) * static_cast<std::size_t>(count), kPydataBufferHint);
    std::int32_t* const values = static_cast<std::int32_t*>(words);
    for (std::uint32_t i = 0; i < count; ++i) {
        values[i] = StreamReader::readAs<std::int32_t>(stream);
    }
}

// Original length-prefixed string field: the length word is already stored. The old buffer is freed, a buffer
// of len + 1 bytes is allocated (hint 1) and stored, len bytes are read (hint 0), and buf[len] is set to NUL.
void ReadStringField(IStreamBase* stream, std::uint32_t len, void*& buf) {
    if (buf != nullptr) CustomFree(buf);
    buf = ::operator new[](static_cast<std::size_t>(len) + 1, kPydataBufferHint);
    char* const chars = static_cast<char*>(buf);
    StreamReader::readStringEx(stream, chars, len);
    chars[len] = '\0';
}

}  // namespace

namespace Structs {

// 0x4dbb5c Structs::Inventory::read(IStreamBase*)
void Inventory::read(IStreamBase* stream) {
    StreamReader::readAs<std::int16_t>(stream, &MaxItems);  // +0x4
}

// 0x4dc790 Structs::ItemListEntryList::read(IStreamBase*)
void ItemListEntryList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4, element count
    pydata::DeleteElementTable<ItemListEntry>(list_entries);  // +0x8
    list_entries = pydata::NewAndReadElementTable<ItemListEntry>(ListingStride::ItemListEntry, list_entriesSize, stream);  // +0x8
}

// 0x4dcd38 Structs::CharTemplate::read(IStreamBase*)
void CharTemplate::read(IStreamBase* stream) {
    CharInfoSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4, element count
    pydata::DeleteElementTable<CharInfoName>(CharInfo);  // +0x8
    CharInfo = pydata::NewAndReadElementTable<CharInfoName>(ListingStride::CharInfoName, CharInfoSize, stream);  // +0x8
}

// 0x4dcfec Structs::ClassFuncList::read(IStreamBase*)
void ClassFuncList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4, element count
    pydata::DeleteElementTable<ClassFunc>(list_entries);  // +0x8
    list_entries = pydata::NewAndReadElementTable<ClassFunc>(ListingStride::ClassFunc, list_entriesSize, stream);  // +0x8
}

// 0x4dd5a8 Structs::v2QuestScripts::read(IStreamBase*)
void v2QuestScripts::read(IStreamBase* stream) {
    OnActiveSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    ReadStringField(stream, OnActiveSize, OnActive);  // +0x8
    OnAvailableSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    ReadStringField(stream, OnAvailableSize, OnAvailable);  // +0x10
    OnClosedSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14
    ReadStringField(stream, OnClosedSize, OnClosed);  // +0x18
    OnCompleteSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x1c
    ReadStringField(stream, OnCompleteSize, OnComplete);  // +0x20
    OnFailedSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x24
    ReadStringField(stream, OnFailedSize, OnFailed);  // +0x28
    OnPostActiveSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x2c
    ReadStringField(stream, OnPostActiveSize, OnPostActive);  // +0x30
    OnPostAvailableSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x34
    ReadStringField(stream, OnPostAvailableSize, OnPostAvailable);  // +0x38
    OnPostClosedSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x3c
    ReadStringField(stream, OnPostClosedSize, OnPostClosed);  // +0x40
    OnPostCompleteSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x44
    ReadStringField(stream, OnPostCompleteSize, OnPostComplete);  // +0x48
    OnPostLockedSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4c
    ReadStringField(stream, OnPostLockedSize, OnPostLocked);  // +0x50
    OnPreActiveSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x54
    ReadStringField(stream, OnPreActiveSize, OnPreActive);  // +0x58
    OnPreAvailableSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x5c
    ReadStringField(stream, OnPreAvailableSize, OnPreAvailable);  // +0x60
    OnPreClosedSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x64
    ReadStringField(stream, OnPreClosedSize, OnPreClosed);  // +0x68
    OnPreCompleteSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x6c
    ReadStringField(stream, OnPreCompleteSize, OnPreComplete);  // +0x70
}

// 0x4ea830 Structs::SkillList::read(IStreamBase*)
void SkillList::read(IStreamBase* stream) {
    ListSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4, count
    ReadInt32Words(stream, List, ListSize);  // +0x8
}

// 0x4eab9c Structs::FaeryList::read(IStreamBase*)
void FaeryList::read(IStreamBase* stream) {
    ListSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4, count
    ReadInt32Words(stream, List, ListSize);  // +0x8
}

// 0x4eb4d8 Structs::WorldMapLocker::read(IStreamBase*)
void WorldMapLocker::read(IStreamBase* stream) {
    OnState = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    QuestID = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4eb5a8 Structs::WldMapLocation::read(IStreamBase*)
void WldMapLocation::read(IStreamBase* stream) {
    Name = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    State = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    LocationLevelsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc, count
    ReadInt32Words(stream, LocationLevels, LocationLevelsSize);  // +0x10
}

// 0x4ebeb0 Structs::Skill::read(IStreamBase*)
void Skill::read(IStreamBase* stream) {
    Anim = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    AnimIsMoving = StreamReader::readAs<bool>(stream);  // +0x8
    DisplayPropsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc, count
    ReadInt32Words(stream, DisplayProps, DisplayPropsSize);  // +0x10
    ElementalType = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    FairieDependantText = StreamReader::readAs<bool>(stream);  // +0x18
    Flags = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    Level = StreamReader::readAs<std::int32_t>(stream);  // +0x20
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x24, length
    ReadStringField(stream, ScriptSize, Script);  // +0x28
    SkillAssignable = StreamReader::readAs<bool>(stream);  // +0x2c
    SkillCurrLevel = StreamReader::readAs<std::int32_t>(stream);  // +0x30
    SkillDescription = StreamReader::readAs<std::int32_t>(stream);  // +0x34
    SkillIconSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x38, length
    ReadStringField(stream, SkillIconSize, SkillIcon);  // +0x3c
    SkillName = StreamReader::readAs<std::int32_t>(stream);  // +0x40
    SkillNextLevel = StreamReader::readAs<std::int32_t>(stream);  // +0x44
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x48
}

// 0x4ec47c Structs::ItemBase::read(IStreamBase*)
void ItemBase::read(IStreamBase* stream) {
    IconNameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4, length
    ReadStringField(stream, IconNameSize, IconName);  // +0x8
    PickUpType = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    DistType = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    SwooshSoundFX = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    SwooshFX = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    Stackable = StreamReader::readAs<bool>(stream);  // +0x1c
    StreamReader::readAs<float>(stream, &WarriorEquipValue);  // +0x20
    StreamReader::readAs<float>(stream, &MageEquipValue);  // +0x24
    StreamReader::readAs<float>(stream, &RogueEquipValue);  // +0x28
    StreamReader::readAs<float>(stream, &PaladdinEquipValue);  // +0x2c
    StreamReader::readAs<float>(stream, &BerserkerEquipValue);  // +0x30
    StreamReader::readAs<float>(stream, &AssassinEquipValue);  // +0x34
    StreamReader::readAs<float>(stream, &ArcherEquipValue);  // +0x38
    StreamReader::readAs<float>(stream, &NecromancerEquipValue);  // +0x3c
    StreamReader::readAs<float>(stream, &IllusionistEquipValue);  // +0x40
}

// 0x4ec9f0 Structs::AnimStep::read(IStreamBase*)
void AnimStep::read(IStreamBase* stream) {
    AnchorFX = StreamReader::readAs<bool>(stream);  // +0x4
    Anim = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    BlendOut = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Cam = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    CamDir = StreamReader::readAs<bool>(stream);  // +0x14
    FX = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    MoveGO = StreamReader::readAs<bool>(stream);  // +0x1c
    RandomCamSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x20, count
    ReadInt32Words(stream, RandomCam, RandomCamSize);  // +0x24
    Redir = StreamReader::readAs<std::int32_t>(stream);  // +0x28
    Sound = StreamReader::readAs<std::int32_t>(stream);  // +0x2c
    StreamReader::readAs<float>(stream, &Speed);  // +0x30
    Swoosh = StreamReader::readAs<bool>(stream);  // +0x34
}

// 0x4ed280 Structs::ItemListEntry::read(IStreamBase*)
void ItemListEntry::read(IStreamBase* stream) {
    ItemID = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    StreamReader::readAs<std::int16_t>(stream, &Prob);  // +0x8
    StreamReader::readAs<std::int8_t>(stream, &Qty);  // +0xa
}

// 0x4ef05c Structs::CamAnimSet::read(IStreamBase*)
void CamAnimSet::read(IStreamBase* stream) {
    CamAnimsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4, count
    ReadInt32Words(stream, CamAnims, CamAnimsSize);  // +0x8
    Crit = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Idle = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Shake = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    Template = StreamReader::readAs<std::int32_t>(stream);  // +0x18
}

// 0x4ef2f0 Structs::AnimTpl::read(IStreamBase*)
void AnimTpl::read(IStreamBase* stream) {
    Loop = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    StepsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8, element count
    pydata::DeleteElementTable<AnimStep>(Steps);  // +0xc
    // The original's vptr loop also zeroes element +0x24 (AnimStep::RandomCam, the int32 array pointer); construction gives
    // it its default nullptr.
    Steps = pydata::NewAndReadElementTable<AnimStep>(ListingStride::AnimStep, StepsSize, stream);  // +0xc
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x10
}

// 0x4ef64c Structs::CharAnim::read(IStreamBase*)
void CharAnim::read(IStreamBase* stream) {
    Attack = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    AttackStatic = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Blocking = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    DeadlyGreatKB = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Despawn = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    DespawnGreatKB = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    Died = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    Dodging = StreamReader::readAs<std::int32_t>(stream);  // +0x20
    GreatKnockedBack = StreamReader::readAs<std::int32_t>(stream);  // +0x24
    Idle = StreamReader::readAs<std::int32_t>(stream);  // +0x28
    IdleFromOOC = StreamReader::readAs<std::int32_t>(stream);  // +0x2c
    IdleOOC = StreamReader::readAs<std::int32_t>(stream);  // +0x30
    IdleSneak = StreamReader::readAs<std::int32_t>(stream);  // +0x34
    IdleToOOC = StreamReader::readAs<std::int32_t>(stream);  // +0x38
    Injured = StreamReader::readAs<std::int32_t>(stream);  // +0x3c
    InteractSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x40, count
    ReadInt32Words(stream, Interact, InteractSize);  // +0x44
    KnockedBack = StreamReader::readAs<std::int32_t>(stream);  // +0x48
    LiftDrop = StreamReader::readAs<std::int32_t>(stream);  // +0x4c
    LiftIdle = StreamReader::readAs<std::int32_t>(stream);  // +0x50
    LiftMove = StreamReader::readAs<std::int32_t>(stream);  // +0x54
    Limbus = StreamReader::readAs<std::int32_t>(stream);  // +0x58
    MenuIdle = StreamReader::readAs<std::int32_t>(stream);  // +0x5c
    MenuOnSelect = StreamReader::readAs<std::int32_t>(stream);  // +0x60
    PreSpawn = StreamReader::readAs<std::int32_t>(stream);  // +0x64
    Revived = StreamReader::readAs<std::int32_t>(stream);  // +0x68
    Reviving = StreamReader::readAs<std::int32_t>(stream);  // +0x6c
    Run = StreamReader::readAs<std::int32_t>(stream);  // +0x70
    Run180 = StreamReader::readAs<std::int32_t>(stream);  // +0x74
    RunSneak = StreamReader::readAs<std::int32_t>(stream);  // +0x78
    Scared = StreamReader::readAs<std::int32_t>(stream);  // +0x7c
    Spawn = StreamReader::readAs<std::int32_t>(stream);  // +0x80
    SpellsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x84, count
    ReadInt32Words(stream, Spells, SpellsSize);  // +0x88
    Stunned = StreamReader::readAs<std::int32_t>(stream);  // +0x8c
    Template = StreamReader::readAs<std::int32_t>(stream);  // +0x90
    Walk = StreamReader::readAs<std::int32_t>(stream);  // +0x94
    Walk180 = StreamReader::readAs<std::int32_t>(stream);  // +0x98
    WalkSneak = StreamReader::readAs<std::int32_t>(stream);  // +0x9c
}

// 0x4f19dc Structs::ClassFunc::read(IStreamBase*)
void ClassFunc::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Param1 = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Param2 = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Param3 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4f1c90 Structs::CharInfoName::read(IStreamBase*)
void CharInfoName::read(IStreamBase* stream) {
    Name = StreamReader::readAs<std::int32_t>(stream);  // +0x4
}

// 0x4fc068 Structs::Item::read(IStreamBase*)
void Item::read(IStreamBase* stream) {
    ItemBase::read(stream);  // base read first
    Name = StreamReader::readAs<std::int32_t>(stream);  // +0x44
    Material = StreamReader::readAs<std::int32_t>(stream);  // +0x48
    ModularModuleSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4c, length
    ReadStringField(stream, ModularModuleSize, ModularModule);  // +0x50
    AudioVisualID = StreamReader::readAs<std::int32_t>(stream);  // +0x54
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x58
    BaseStat = StreamReader::readAs<std::int32_t>(stream);  // +0x5c
    BaseProp = StreamReader::readAs<std::int32_t>(stream);  // +0x60
    BaseElement = StreamReader::readAs<std::int32_t>(stream);  // +0x64
    EquipmentSlottingType = StreamReader::readAs<std::int32_t>(stream);  // +0x68
    Value = StreamReader::readAs<std::int32_t>(stream);  // +0x6c
    GoldValueMultiplier = StreamReader::readAs<std::int32_t>(stream);  // +0x70
    LevelRequirement = StreamReader::readAs<std::int32_t>(stream);  // +0x74
    StrengthRequirement = StreamReader::readAs<std::int32_t>(stream);  // +0x78
    DexterityRequirement = StreamReader::readAs<std::int32_t>(stream);  // +0x7c
    EnduranceRequirement = StreamReader::readAs<std::int32_t>(stream);  // +0x80
    EnergyRequirement = StreamReader::readAs<std::int32_t>(stream);  // +0x84
    ClassRequirement = StreamReader::readAs<std::int32_t>(stream);  // +0x88
    Param1 = StreamReader::readAs<std::int32_t>(stream);  // +0x8c
    Param2 = StreamReader::readAs<std::int32_t>(stream);  // +0x90
    Param3 = StreamReader::readAs<std::int32_t>(stream);  // +0x94
    Param4 = StreamReader::readAs<std::int32_t>(stream);  // +0x98
    Param5 = StreamReader::readAs<std::int32_t>(stream);  // +0x9c
    Param6 = StreamReader::readAs<std::int32_t>(stream);  // +0xa0
}

// 0x4fca84 Structs::LevelDeclaration::read(IStreamBase*)
void LevelDeclaration::read(IStreamBase* stream) {
    Dbg_IsStable = StreamReader::readAs<bool>(stream);  // +0x4
    DynamicBusRoutingSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8, length
    ReadStringField(stream, DynamicBusRoutingSize, DynamicBusRouting);  // +0xc
    Hub = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    IsRandom = StreamReader::readAs<bool>(stream);  // +0x14
    LevelDescription = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    LevelFileSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x1c, length
    ReadStringField(stream, LevelFileSize, LevelFile);  // +0x20
    LevelName = StreamReader::readAs<std::int32_t>(stream);  // +0x24
    LevelState = StreamReader::readAs<std::int32_t>(stream);  // +0x28
    MapName = StreamReader::readAs<std::int32_t>(stream);  // +0x2c
    MonsterLvlMax = StreamReader::readAs<std::int32_t>(stream);  // +0x30
    MonsterLvlMaxHard = StreamReader::readAs<std::int32_t>(stream);  // +0x34
    MonsterLvlMaxNightmare = StreamReader::readAs<std::int32_t>(stream);  // +0x38
    MonsterLvlMin = StreamReader::readAs<std::int32_t>(stream);  // +0x3c
    MonsterLvlMinHard = StreamReader::readAs<std::int32_t>(stream);  // +0x40
    MonsterLvlMinNightmare = StreamReader::readAs<std::int32_t>(stream);  // +0x44
}

}  // namespace Structs
