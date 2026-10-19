#pragma once

// Structs::X records of slice structs_2 (pydata-accessors wave 7). Definitions are in
// src/w7_structs_2.cpp. Field names follow structs_records.hpp: m_wN is word N (offset 4*N), m_offN an
// unaligned offset. Each comment carries the original offset. Element arrays hold host records reached through
// typed pointers (element_table.hpp; NOTES.md, "Element tables"). See the notes in the .cpp for the omitted read bodies.
#include <cstdint>

#include "pydata-accessors/array_element.hpp"
#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/script_cmd.hpp"
#include "pydata-accessors/structs_records.hpp"

namespace Structs {

class v2QuestAutomatic : public v2QuestObjectiveStub {
public:
    ~v2QuestAutomatic() override;
    void finalize() override;
    void read(IStreamBase* stream) override;  // 0x504a90, thunk: forwards to v2QuestObjectiveStub::read
    // NO members of its own. The original header (v2quests_pystruct.h) declares
    // `class v2QuestAutomatic : public v2QuestObjectiveStub` with ZERO fields, so sizeof stays at the
    // base's 0x2c. This class previously re-declared Str1Size and Str2Size here with `// +0x10` / `// +0x18`
    // comments: because v2QuestObjectiveStub already has those names at +0x10/+0x18, they were NEW
    // members SHADOWING the base ones, living at +0x2c/+0x30 and making sizeof 0x34. finalize then wrote
    // the shadowed members and left the real size words at +0x10/+0x18 stale. The listing at 0x4d0054
    // clears +0x10/+0x18 (CustomFree on +0x14/+0x1c, zero the +0x10/+0x18 size words) and then calls
    // v2QuestObjectiveStub::finalize(this) - i.e. the base words. Removing the two declarations makes the
    // unqualified Str1Size/Str2Size in the body resolve to the base members, at the offsets their comments claim.
};
void DeletingDestructor(v2QuestAutomatic* self);




class v2CondAnd {
public:
    static constexpr int kCount = 2;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~v2CondAnd();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t CondsSize = 0;  // +0x4, element count
    void* Conds = nullptr;  // +0x8, element array (v2ConditionStub, stride 16)
    std::int32_t Type = 0;  // +0xc
};
void DeletingDestructor(v2CondAnd* self);


class SpawnGroup {
public:
    static constexpr int kCount = 3;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~SpawnGroup();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    bool ActiveSpotOnly = false;  // +0x4
    std::int32_t Delay = 0;  // +0x8
    std::uint32_t SpawnsSize = 0;  // +0xc, element count
    void* Spawns = nullptr;  // +0x10, element array (SpawnInfo, stride 16)
};
void DeletingDestructor(SpawnGroup* self);


class CharSounds {
public:
    static constexpr int kCount = 6;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~CharSounds();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t DieSize = 0;  // +0x4, count of m_w2
    void* Die = nullptr;  // +0x8, int32 array
    std::uint32_t HurtSize = 0;  // +0xc, count of m_w4
    void* Hurt = nullptr;  // +0x10, int32 array
    std::uint32_t ImpactVsFleshSize = 0;  // +0x14, count of m_w6
    void* ImpactVsFlesh = nullptr;  // +0x18, int32 array
    std::uint32_t ImpactVsMetalSize = 0;  // +0x1c, count of m_w8
    void* ImpactVsMetal = nullptr;  // +0x20, int32 array
    bool IsFlesh = false;  // +0x24
    bool IsMetallic = false;  // +0x25
};
void DeletingDestructor(CharSounds* self);


class Sound {
public:
    static constexpr int kCount = 9;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Sound();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Bank = 0;  // +0x4
    std::int32_t Channel = 0;  // +0x8
    std::uint32_t FileNameSize = 0;  // +0xc, string length
    void* FileName = nullptr;  // +0x10, string buffer (len + 1 bytes)
    std::int32_t Format = 0;  // +0x14
    std::int32_t Group = 0;  // +0x18
    std::int32_t LoadType = 0;  // +0x1c
    std::int32_t Priority = 0;  // +0x20
    std::int32_t Repeat = 0;  // +0x24
    std::int32_t Volume = 0;  // +0x28
};
void DeletingDestructor(Sound* self);


class SoundGroup {
public:
    static constexpr int kCount = 2;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~SoundGroup();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t EnteringBusSize = 0;  // +0x4, string length
    void* EnteringBus = nullptr;  // +0x8, string buffer (len + 1 bytes)
    std::int32_t Positioning3D = 0;  // +0xc
};
void DeletingDestructor(SoundGroup* self);


class HideHUD : public HideFlash {
public:
    ~HideHUD() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(HideHUD* self);


class ShowHUD : public ShowFlash {
public:
    ~ShowHUD() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(ShowHUD* self);


class SceneFile {
public:
    virtual ~SceneFile();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t NameSize = 0;  // +0x4, string length
    void* Name = nullptr;  // +0x8, string buffer (len + 1 bytes)
};
void DeletingDestructor(SceneFile* self);


class ItemTypeListList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~ItemTypeListList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t list_entriesSize = 0;  // +0x4, byte count of m_w2
    void* list_entries = nullptr;  // +0x8, int8 array
};
void DeletingDestructor(ItemTypeListList* self);


class Merchant {
public:
    static constexpr int kCount = 3;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Merchant();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t BuyMultiplier = 0;  // +0x4
    std::int32_t SellMultiplier = 0;  // +0x8
    std::uint32_t MerchandiseListSize = 0;  // +0xc, element count
    void* MerchandiseList = nullptr;  // +0x10, element array (MerchandiseListEntry, stride 12)
};
void DeletingDestructor(Merchant* self);


class TileOffsetList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~TileOffsetList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t list_entriesSize = 0;  // +0x4, element count
    void* list_entries = nullptr;  // +0x8, element array (TileOffset, stride 8)
};
void DeletingDestructor(TileOffsetList* self);


class NumProbList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~NumProbList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t list_entriesSize = 0;  // +0x4, element count
    void* list_entries = nullptr;  // +0x8, element array (NumProb, stride 8)
};
void DeletingDestructor(NumProbList* self);


class ItemListEntryList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~ItemListEntryList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t list_entriesSize = 0;  // +0x4, element count
    void* list_entries = nullptr;  // +0x8, element array (ItemListEntry, stride 12)
};
void DeletingDestructor(ItemListEntryList* self);


class Loot {
public:
    static constexpr int kCount = 5;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Loot();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t RollType = 0;  // +0x4
    std::int32_t NumRandomItemProbs = 0;  // +0x8
    std::uint32_t RandomLootEntriesSize = 0;  // +0xc, element count of m_w4
    void* RandomLootEntries = nullptr;  // +0x10, element array (LootEntry, stride 36)
    std::uint32_t FixedLootEntriesSize = 0;  // +0x14, element count of m_w6
    void* FixedLootEntries = nullptr;  // +0x18, element array (LootEntry, stride 36)
    std::uint32_t SubLootsSize = 0;  // +0x1c, element count of m_w8 (int32 elements)
    void* SubLoots = nullptr;  // +0x20, int32 array
};
void DeletingDestructor(Loot* self);


class WeaponRef : public ItemBase {
public:
    ~WeaponRef() override;
    void finalize() override;
    void read(IStreamBase* stream);
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer (len + 1 bytes)
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t BaseStat = 0;  // +0x5c
    std::int32_t BaseProp = 0;  // +0x60
    std::int32_t BaseElement = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t Value = 0;  // +0x6c
    std::int32_t GoldValueMultiplier = 0;  // +0x70
    std::int32_t LevelRequirement = 0;  // +0x74
    std::int32_t StrengthRequirement = 0;  // +0x78
    std::int32_t DexterityRequirement = 0;  // +0x7c
    std::int32_t EnduranceRequirement = 0;  // +0x80
    std::int32_t EnergyRequirement = 0;  // +0x84
    std::int32_t ClassRequirement = 0;  // +0x88
    std::int32_t minDamage = 0;  // +0x8c
    std::int32_t maxDamage = 0;  // +0x90
    std::int32_t DmgType = 0;  // +0x94
    std::int32_t Param4 = 0;  // +0x98
    std::int32_t maxRange = 0;  // +0x9c
    std::int32_t Param6 = 0;  // +0xa0
};
void DeletingDestructor(WeaponRef* self);


class RangedWeaponRef : public ItemBase {
public:
    ~RangedWeaponRef() override;
    void finalize() override;
    void read(IStreamBase* stream);
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer (len + 1 bytes)
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t BaseStat = 0;  // +0x5c
    std::int32_t BaseProp = 0;  // +0x60
    std::int32_t BaseElement = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t Value = 0;  // +0x6c
    std::int32_t GoldValueMultiplier = 0;  // +0x70
    std::int32_t LevelRequirement = 0;  // +0x74
    std::int32_t StrengthRequirement = 0;  // +0x78
    std::int32_t DexterityRequirement = 0;  // +0x7c
    std::int32_t EnduranceRequirement = 0;  // +0x80
    std::int32_t EnergyRequirement = 0;  // +0x84
    std::int32_t ClassRequirement = 0;  // +0x88
    std::int32_t minDamage = 0;  // +0x8c
    std::int32_t maxDamage = 0;  // +0x90
    std::int32_t DmgType = 0;  // +0x94
    std::int32_t minRange = 0;  // +0x98
    std::int32_t maxRange = 0;  // +0x9c
    std::int32_t ProjectileID = 0;  // +0xa0
};
void DeletingDestructor(RangedWeaponRef* self);


class ShieldRef : public ItemBase {
public:
    ~ShieldRef() override;
    void finalize() override;
    void read(IStreamBase* stream);
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer (len + 1 bytes)
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t Unused10 = 0;  // +0x5c
    std::int32_t Unused11 = 0;  // +0x60
    std::int32_t Unused12 = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t Value = 0;  // +0x6c
    std::int32_t GoldValueMultiplier = 0;  // +0x70
    std::int32_t LevelRequirement = 0;  // +0x74
    std::int32_t StrengthRequirement = 0;  // +0x78
    std::int32_t DexterityRequirement = 0;  // +0x7c
    std::int32_t EnduranceRequirement = 0;  // +0x80
    std::int32_t EnergyRequirement = 0;  // +0x84
    std::int32_t ClassRequirement = 0;  // +0x88
    std::int32_t ArmorRating = 0;  // +0x8c
    std::int32_t BlockModifier = 0;  // +0x90
    std::int32_t Unused1 = 0;  // +0x94
    std::int32_t Param4 = 0;  // +0x98
    std::int32_t Param5 = 0;  // +0x9c
    std::int32_t Param6 = 0;  // +0xa0
};
void DeletingDestructor(ShieldRef* self);


class JewelryRef : public ItemBase {
public:
    ~JewelryRef() override;
    void finalize() override;
    void read(IStreamBase* stream);
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer (len + 1 bytes)
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t Unused10 = 0;  // +0x5c
    std::int32_t Unused11 = 0;  // +0x60
    std::int32_t Unused12 = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t Value = 0;  // +0x6c
    std::int32_t GoldValueMultiplier = 0;  // +0x70
    std::int32_t LevelRequirement = 0;  // +0x74
    std::int32_t StrengthRequirement = 0;  // +0x78
    std::int32_t DexterityRequirement = 0;  // +0x7c
    std::int32_t EnduranceRequirement = 0;  // +0x80
    std::int32_t EnergyRequirement = 0;  // +0x84
    std::int32_t ClassRequirement = 0;  // +0x88
    std::int32_t Unused1 = 0;  // +0x8c
    std::int32_t Unused2 = 0;  // +0x90
    std::int32_t Unused3 = 0;  // +0x94
    std::int32_t Param4 = 0;  // +0x98
    std::int32_t Param5 = 0;  // +0x9c
    std::int32_t Param6 = 0;  // +0xa0
};
void DeletingDestructor(JewelryRef* self);


class ArmorRef : public ItemBase {
public:
    void finalize() override;
    void read(IStreamBase* stream);
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer (len + 1 bytes)
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t Unused10 = 0;  // +0x5c
    std::int32_t Unused11 = 0;  // +0x60
    std::int32_t Unused12 = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t Value = 0;  // +0x6c
    std::int32_t GoldValueMultiplier = 0;  // +0x70
    std::int32_t LevelRequirement = 0;  // +0x74
    std::int32_t StrengthRequirement = 0;  // +0x78
    std::int32_t DexterityRequirement = 0;  // +0x7c
    std::int32_t EnduranceRequirement = 0;  // +0x80
    std::int32_t EnergyRequirement = 0;  // +0x84
    std::int32_t ClassRequirement = 0;  // +0x88
    std::int32_t ArmorRating = 0;  // +0x8c
    std::int32_t Unused1 = 0;  // +0x90
    std::int32_t Unused2 = 0;  // +0x94
    std::int32_t Param4 = 0;  // +0x98
    std::int32_t Param5 = 0;  // +0x9c
    std::int32_t Param6 = 0;  // +0xa0
};


class Valuable : public ItemBase {
public:
    void finalize() override;
    void read(IStreamBase* stream);
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer (len + 1 bytes)
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t Unused10 = 0;  // +0x5c
    std::int32_t Unused11 = 0;  // +0x60
    std::int32_t Unused12 = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t Value = 0;  // +0x6c
    std::int32_t GoldValueMultiplier = 0;  // +0x70
    std::int32_t LevelRequirement = 0;  // +0x74
    std::int32_t StrengthRequirement = 0;  // +0x78
    std::int32_t DexterityRequirement = 0;  // +0x7c
    std::int32_t EnduranceRequirement = 0;  // +0x80
    std::int32_t EnergyRequirement = 0;  // +0x84
    std::int32_t ClassRequirement = 0;  // +0x88
    std::int32_t Param1 = 0;  // +0x8c
    std::int32_t Param2 = 0;  // +0x90
    std::int32_t Param3 = 0;  // +0x94
    std::int32_t Param4 = 0;  // +0x98
    std::int32_t Param5 = 0;  // +0x9c
    std::int32_t Param6 = 0;  // +0xa0
};


class Potion : public ItemBase {
public:
    void finalize() override;
    void read(IStreamBase* stream);
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer (len + 1 bytes)
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t Unused10 = 0;  // +0x5c
    std::int32_t Unused11 = 0;  // +0x60
    std::int32_t Unused12 = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t Value = 0;  // +0x6c
    std::int32_t GoldValueMultiplier = 0;  // +0x70
    std::int32_t HP_Recovery_Percentage = 0;  // +0x74
    std::int32_t HP_Recovery_Minimum = 0;  // +0x78
    std::int32_t MP_Recovery_Percentage = 0;  // +0x7c
    std::int32_t MP_Recovery_Minimum = 0;  // +0x80
    std::int32_t Unused1 = 0;  // +0x84
    std::int32_t Unused2 = 0;  // +0x88
    std::int32_t Unused3 = 0;  // +0x8c
    std::int32_t Unused4 = 0;  // +0x90
    std::int32_t Unused5 = 0;  // +0x94
    std::int32_t Param4 = 0;  // +0x98
    std::int32_t Param5 = 0;  // +0x9c
    std::int32_t Param6 = 0;  // +0xa0
};


class GoldItem : public ItemBase {
public:
    void finalize() override;
    void read(IStreamBase* stream);
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer (len + 1 bytes)
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t Unused10 = 0;  // +0x5c
    std::int32_t Unused11 = 0;  // +0x60
    std::int32_t Unused12 = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t MinValue = 0;  // +0x6c
    std::int32_t MaxValue = 0;  // +0x70
    std::int32_t Unused1 = 0;  // +0x74
    std::int32_t Unused2 = 0;  // +0x78
    std::int32_t Unused3 = 0;  // +0x7c
    std::int32_t Unused4 = 0;  // +0x80
    std::int32_t Unused5 = 0;  // +0x84
    std::int32_t Unused6 = 0;  // +0x88
    std::int32_t Unused7 = 0;  // +0x8c
    std::int32_t Unused8 = 0;  // +0x90
    std::int32_t Unused9 = 0;  // +0x94
    std::int32_t Param4 = 0;  // +0x98
    std::int32_t Param5 = 0;  // +0x9c
    std::int32_t Param6 = 0;  // +0xa0
};


class Item : public ItemBase {
public:
    static constexpr int kCount = 38;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    void finalize() override;
    void read(IStreamBase* stream) override;
    // IconNameSize (+0x4, zeroed by finalize) is ItemBase::IconNameSize: the record does not declare a second one.
    std::int32_t Name = 0;  // +0x44
    std::int32_t Material = 0;  // +0x48
    std::uint32_t ModularModuleSize = 0;  // +0x4c, string length
    void* ModularModule = nullptr;  // +0x50, string buffer
    std::int32_t AudioVisualID = 0;  // +0x54
    std::int32_t Type = 0;  // +0x58
    std::int32_t BaseStat = 0;  // +0x5c
    std::int32_t BaseProp = 0;  // +0x60
    std::int32_t BaseElement = 0;  // +0x64
    std::int32_t EquipmentSlottingType = 0;  // +0x68
    std::int32_t Value = 0;  // +0x6c
    std::int32_t GoldValueMultiplier = 0;  // +0x70
    std::int32_t LevelRequirement = 0;  // +0x74
    std::int32_t StrengthRequirement = 0;  // +0x78
    std::int32_t DexterityRequirement = 0;  // +0x7c
    std::int32_t EnduranceRequirement = 0;  // +0x80
    std::int32_t EnergyRequirement = 0;  // +0x84
    std::int32_t ClassRequirement = 0;  // +0x88
    std::int32_t Param1 = 0;  // +0x8c
    std::int32_t Param2 = 0;  // +0x90
    std::int32_t Param3 = 0;  // +0x94
    std::int32_t Param4 = 0;  // +0x98
    std::int32_t Param5 = 0;  // +0x9c
    std::int32_t Param6 = 0;  // +0xa0
};


class BeltRef : public ArmorRef {
public:
    void finalize() override;
    void read(IStreamBase* stream);
};


class HelmRef : public ArmorRef {
public:
    void finalize() override;
    void read(IStreamBase* stream);
};


class GloveRef : public ArmorRef {
public:
    void finalize() override;
    void read(IStreamBase* stream);
};


class BootsRef : public ArmorRef {
public:
    void finalize() override;
    void read(IStreamBase* stream);
};


}  // namespace Structs
