// Batch g1-game-items-save-ItemInstance-594b18-0 (owner ItemInstance, 20 functions).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so, checked against dh2/ItemInstance.hpp and the pydata
// records (Structs::Item, Structs::ItemPowerRef, Structs::FontColorDef).
//
// Shared conventions in this file:
//  * Table rows. Arrays::ItemTable (164 bytes per row in the original), Arrays::ItemPowerTable (40) and Arrays::FontPalette
//    (12) hold host records at host stride (TRACK-B decisions 2 and 3). A row is reached as an element of the typed table
//    (TableRow below), never by stepping the 32-bit listing stride on bytes.
//  * Pydata field names. Structs::Item m_w2 (+0x08) is the icon name string buffer, m_w3 (+0x0c) the item's pick-up type,
//    m_w7 (+0x1c) the stackable flag, m_w26 (+0x68) the equipment category, m_w22 (+0x58) the item type, m_w27 and m_w28
//    the value factors, m_w29..m_w34 (+0x74..+0x88) the attribute and class requirements. Structs::FontColorDef m_w2 (+0x08)
//    is the colour value.
//  * std::string members are read through c_str(). The original reads the string buffer pointer from the object at +0x1c
//    (m_name, operator<) and from the PowerInfo element at +0x1c (m_desc, GetPowerDesc); c_str() yields that buffer.
//  * GetFontDef(int) and GetColor(int) are static (see dh2/ItemInstance.hpp): the count arrives in the first argument
//    register and the object is never read.
//  * Asserts: gAssertLevel 2 aborts (the original writes to address 0), level 1 prints the ASSERT line and goes on. Where the
//    original goes on after an ASSERT with a power index past the end (undefined), this port returns a defined value; the
//    ledger notes name each place.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"

// Name-lookup template (pydata-accessors/member_names.hpp declares it, but that header cannot share a translation unit with
// the w7 record headers). CharacterTable has an explicit specialization in pydata-accessors/src/tb_accessors-Arrays-0.cpp.
namespace Arrays {
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

namespace {

const char kItemInstanceSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp";

// The original's ASSERT(expr) at ItemInstance.cpp:line. Level 2 aborts; level 1 prints and the caller goes on.
void ItemInstanceAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kItemInstanceSource, line);
    }
}

// Typed row of a pydata table: element `index` of the host-stride table whose element 0 is `members`.
template <class Row>
const Row* TableRow(const std::uint8_t* members, int index) {
    return reinterpret_cast<const Row*>(members) + index;
}

}  // namespace

// 0x3faa64 ItemInstance::~ItemInstance()
// The original sets the vptr, destroys m_powers (each PowerInfo string included), then frees the strings at +0x38, +0x20
// and +0x08. Implicit member destruction runs the same members in the reverse declaration order: m_powers, m_requirements,
// m_stats, m_name.
ItemInstance::~ItemInstance() = default;

// 0x3f9d78 ItemInstance::operator==(ItemInstance const&) const
// Equal when the item ids match and the power lists have the same length and the same power ids in order. The original
// compares element 0 first and then elements 1 to count-1; this loop covers the same elements.
bool ItemInstance::operator==(const ItemInstance& other) const {
    if (m_itemId != other.m_itemId) {
        return false;
    }
    const std::size_t count = m_powers.size();
    if (count != other.m_powers.size()) {
        return false;
    }
    for (std::size_t i = 0; i < count; ++i) {
        if (m_powers[i].m_powerId != other.m_powers[i].m_powerId) {
            return false;
        }
    }
    return true;
}

// 0x3f9e00 ItemInstance::GetItemId(void) const
int ItemInstance::GetItemId() const {
    return m_itemId;
}

// 0x3f9e08 ItemInstance::GetItem(void) const
// The Arrays::ItemTable row for m_itemId.
const Structs::Item* ItemInstance::GetItem() const {
    return TableRow<Structs::Item>(Arrays::ItemTable::members, m_itemId);
}

// 0x3f9e34 ItemInstance::GetPickUpType(void) const
// m_pickUpType when set, or the item row's pick-up type (+0x0c) when m_pickUpType is -1.
int ItemInstance::GetPickUpType() const {
    if (m_pickUpType == -1) {
        return GetItem()->PickUpType;
    }
    return m_pickUpType;
}

// 0x3f9e58 ItemInstance::IsStackable(void) const
// The item row's stackable byte (+0x1c).
bool ItemInstance::IsStackable() const {
    return GetItem()->Stackable;
}

// 0x3f9e68 ItemInstance::IsEquippable(void) const
// The item row's equipment category (+0x68) is any value other than -1.
bool ItemInstance::IsEquippable() const {
    return GetItem()->EquipmentSlottingType != -1;
}

// 0x3f9e80 ItemInstance::GetNumPowers(void) const
int ItemInstance::GetNumPowers() const {
    return static_cast<int>(m_powers.size());
}

// 0x3f9e94 ItemInstance::GetIconName(void) const
// The item row's +0x08 word is the icon name string buffer (pydata ItemBase m_w2), returned as a C string.
const char* ItemInstance::GetIconName() const {
    return static_cast<const char*>(GetItem()->IconName);
}

// 0x3f9ec4 ItemInstance::GetPower(unsigned int) const
// The Arrays::ItemPowerTable row (ItemPowerRef) of power idx, read as bytes for the caller (ItemInventory::CalcLootItemValue
// casts it back to Structs::ItemPowerRef).
// Deviation: after the ASSERT for an index past the end (level 1), the original reads past the vector; this port returns
// nullptr there.
const std::uint8_t* ItemInstance::GetPower(unsigned int idx) const {
    if (idx >= m_powers.size()) {
        ItemInstanceAssert("powerIdx < m_powers.size()", 709);
        return nullptr;
    }
    return reinterpret_cast<const std::uint8_t*>(
        TableRow<Structs::ItemPowerRef>(Arrays::ItemPowerTable::members, m_powers[idx].m_powerId));
}

// 0x3f9f88 ItemInstance::GetPowerDesc(unsigned int) const
// The description buffer of power idx. Deviation: an index past the end (after the ASSERT, level 1) gives "" here.
const char* ItemInstance::GetPowerDesc(unsigned int idx) const {
    if (idx >= m_powers.size()) {
        ItemInstanceAssert("powerIdx < m_powers.size()", 698);
        return "";
    }
    return m_powers[idx].m_desc.c_str();
}

// 0x3fa038 ItemInstance::GetPowerId(unsigned int) const
// The power id of power idx. Deviation: an index past the end (after the ASSERT, level 1) gives -1 here.
int ItemInstance::GetPowerId(unsigned int idx) const {
    if (idx >= m_powers.size()) {
        ItemInstanceAssert("powerIdx < m_powers.size()", 687);
        return -1;
    }
    return m_powers[idx].m_powerId;
}

// 0x3fa0e4 ItemInstance::SetQty(int)
// A negative quantity asserts (level 1 prints) and is stored anyway. The original stores the low 16 bits in m_qty.
void ItemInstance::SetQty(int qty) {
    if (qty < 0) {
        ItemInstanceAssert("qty >= 0", 547);
    }
    m_qty = static_cast<std::int16_t>(qty);
}

// 0x3fa17c ItemInstance::AddQty(int)
void ItemInstance::AddQty(int delta) {
    SetQty(delta + m_qty);
}

// 0x3fa1fc ItemInstance::operator<(ItemInstance const&) const
// With equal power counts, orders by the display name (strcmp on the name buffer, sign bit of the result). With different
// counts the item with more powers sorts first.
bool ItemInstance::operator<(const ItemInstance& other) const {
    const int powers = GetNumPowers();
    if (powers == other.GetNumPowers()) {
        return std::strcmp(m_name.c_str(), other.m_name.c_str()) < 0;
    }
    return powers > other.GetNumPowers();
}

// 0x3fa330 ItemInstance::IsEquippableBy(Character *) const
// A null character asserts (ItemInstance.cpp:495) and answers false. In an online game a remotely updated character may equip
// anything (ObjectBase::IsRemotelyUpdated, vtable +0x54). Otherwise the character's sheet (Character::m_props, the words at
// Character +0x1044 and +0x124c..+0x1268) must meet the item's requirements, each shifted left by 8: the level word m_w20
// against Item m_w29, and the four attribute words, each the sum of two sheet words (m_w154 + m_w150, m_w155 + m_w151,
// m_w156 + m_w152, m_w157 + m_w153), against Item m_w30 to m_w33. The class requirement (Item m_w34) names a CharacterTable row
// through the name lookup; the item is equippable when that class (or the character's own when the item has none) is the
// character's player class.
bool ItemInstance::IsEquippableBy(Character* character) const {
    if (character == nullptr) {
        ItemInstanceAssert("c", 495);
        return false;
    }

    if (GetOnlineGameFlag() && character->IsRemotelyUpdated()) {
        return true;
    }

    const Structs::Item* row = GetItem();
    int playerClass = character->SG_GetPlayerClass();
    switch (row->ClassRequirement) {
        case 1:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase");
            break;
        case 2:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase_Berserker");
            break;
        case 3:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase_Paladin");
            break;
        case 4:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase");
            break;
        case 5:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase_Assassin");
            break;
        case 6:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase_Archer");
            break;
        case 7:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase");
            break;
        case 8:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase_Necromancer");
            break;
        case 9:
            playerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase_Illusionist");
            break;
        default:
            break;
    }

    const Structs::CharacterProperties& stats = character->m_props;
    if (stats.Level >= (row->LevelRequirement << 8) && stats.Prereq_Strength + stats.Stat_Strength >= (row->StrengthRequirement << 8) &&
        stats.Prereq_Dexterity + stats.Stat_Dexterity >= (row->DexterityRequirement << 8) && stats.Prereq_Endurance + stats.Stat_Endurance >= (row->EnduranceRequirement << 8) &&
        stats.Prereq_Energy + stats.Stat_Energy >= (row->EnergyRequirement << 8)) {
        return playerClass == character->SG_GetPlayerClass();
    }
    return false;
}

// 0x3fa5cc ItemInstance::GetFontDef(int)
// Static. The power count selects the ItemPowerColor constant "zero" .. "four"; any other count gives 2.
int ItemInstance::GetFontDef(int powerCount) {
    switch (powerCount) {
        case 0:
            return ApplicationGetPyDataConstants()->getConstant("ItemPowerColor", "zero");
        case 1:
            return ApplicationGetPyDataConstants()->getConstant("ItemPowerColor", "one");
        case 2:
            return ApplicationGetPyDataConstants()->getConstant("ItemPowerColor", "two");
        case 3:
            return ApplicationGetPyDataConstants()->getConstant("ItemPowerColor", "three");
        case 4:
            return ApplicationGetPyDataConstants()->getConstant("ItemPowerColor", "four");
        default:
            return 2;
    }
}

// 0x3fa6cc ItemInstance::GetFontDef(void) const
int ItemInstance::GetFontDef() const {
    return GetFontDef(GetNumPowers());
}

// 0x3fa6dc ItemInstance::GetColor(int)
// Static. The colour is the Arrays::FontPalette row GetFontDef(powerCount) (Structs::FontColorDef m_w2, +0x08).
int ItemInstance::GetColor(int powerCount) {
    return TableRow<Structs::FontColorDef>(Arrays::FontPalette::members, GetFontDef(powerCount))->textcolor;
}

// 0x3fa710 ItemInstance::GetColor(void) const
int ItemInstance::GetColor() const {
    return GetColor(GetNumPowers());
}
