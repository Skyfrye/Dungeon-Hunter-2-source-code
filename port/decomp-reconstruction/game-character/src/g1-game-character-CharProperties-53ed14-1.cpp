// CharProperties: sheet resets, the constructor, property add and table loads, the class and gear loaders,
// the damage-over-time tick and the bonus getters (batch g1-game-character-CharProperties-53ed14-1, part 2 of 4).
//
// Layout facts used here, from the 32-bit original and checked against its listings:
//   - Sheets are Structs::CharacterProperties: m_baseProps +0x008, m_savedProps +0x38c, m_gearProps +0x710,
//     m_props +0xa94 (the final sheet), s_temp (static). Each ResetXxx thunk is "ADD R1, R0, #off; B _ResetProperties",
//     so each one resets exactly its own sheet.
//   - ResetAllProperties resets base, saved and gears, then m_props. The constructor resets all sheets through it and
//     then resets s_temp (not m_props).
//   - m_buffs (+0xe18) is an STLport map. The constructor's stores there (header self-links, parent 0, count 0) are the
//     empty-map state that std::map gives by default, so they are not repeated here.
//   - Arrays::CharacterTable holds Structs::CharacterProperties rows (stride 900 in the original; the port uses
//     host-sized elements reached through a typed pointer). A load copies the 224 property words m_w1..m_w224 of
//     the row and not its vptr, which is what the original's 0x380-byte memcpy from +4 does.
//   - Character derives publicly from ItemInventory (+0x37c) and CharProperties (+0x560). Character::IsDead is the
//     virtual at vtable +0x34. Calls that the original makes directly to ItemInventory:: and ItemInstance:: members
//     are written as qualified calls, so no virtual dispatch is added.
//   - Structs::Faery (an Arrays::FaeryTable row, stride 36): m_w2 is the word at +0x8. Structs::Item (an Arrays::ItemTable
//     row, 164 bytes): m_w37 is the word at +0x94.
#include "dh2/CharProperties.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

// Engine assert level, declared in core-platform/memory.hpp. That header is not included here (see the note in
// g1-game-character-CharProperties-53ed14-0.cpp).
extern int gAssertLevel;

namespace {

// Source location of the original's ASSERT in PROPS_ApplyClassToSheet (Windows project path, kept verbatim).
constexpr char kCharPropsCpp[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp";

constexpr int kPropertyCount = 224;   // property ids 0..223, stored in words m_w1..m_w224 of a sheet
constexpr int kMagicToHitBase = 19200;  // added to the magic to-hit when a faery is current (0x4b00)

// Original assert handling, as in the other CharProperties units. Level 2 writes to address 0 in the original, which
// crashes; the rebuild aborts. Level 1 prints the ASSERT line to stderr and carries on.
[[noreturn]] void CrashOnAssert() { std::abort(); }

void ReportAssert(const char* condition, const char* file, int line) {
    std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", condition, file, line);
}

// Signed 32-bit addition with the original's wrap-around (the ARM ADD does not trap).
int AddWrap(int a, int b) {
    return static_cast<int>(static_cast<std::uint32_t>(a) + static_cast<std::uint32_t>(b));
}

}  // namespace

// 0x3defac CharProperties::ResetGearsProperties(void)
// Forwards to _ResetProperties with the gear sheet (this + 0x710).
void CharProperties::ResetGearsProperties() { _ResetProperties(m_gearProps); }

// 0x3defb4 CharProperties::ResetSavedProperties(void)
// Forwards to _ResetProperties with the saved sheet (this + 0x38c).
void CharProperties::ResetSavedProperties() { _ResetProperties(m_savedProps); }

// 0x3defbc CharProperties::ResetBaseProperties(void)
// Forwards to _ResetProperties with the base sheet (this + 0x8).
void CharProperties::ResetBaseProperties() { _ResetProperties(m_baseProps); }

// 0x3defc4 CharProperties::ResetAllProperties(void)
// Base, saved and gear sheets in that order, then the final sheet m_props (this + 0xa94).
void CharProperties::ResetAllProperties() {
    ResetBaseProperties();
    ResetSavedProperties();
    ResetGearsProperties();
    _ResetProperties(m_props);
}

// 0x3deff4 CharProperties::CharProperties(void)   [C1 copy]
// 0x3df084 CharProperties::CharProperties(void)   [C2 copy]
// Both copies are the same code. The header declares the constructor at 0x3df084. The sheets' vptrs and the empty
// map are set by their own constructors and the std::map default constructor. The original also stores
// m_character = 0, unk_e30 = 0, then resets all sheets and then s_temp.
CharProperties::CharProperties()
    : m_character(nullptr) {
    unk_e30 = 0;  // +0xe30
    ResetAllProperties();
    _ResetProperties(s_temp);
}

// 0x3df114 CharProperties::_IsPropertySet(Structs::CharacterProperties const&,int) const
// True when the property differs from its default in the default table (_GetDefault).
bool CharProperties::_IsPropertySet(const Structs::CharacterProperties& sheet, int propId) const {
    return _GetProperty(sheet, propId) != _GetDefault(propId);
}

// 0x3df140 CharProperties::_AddProperty(Structs::CharacterProperties&,int,int)
// A property that is set keeps its value and gains the increment. One that still holds its default is replaced by
// the increment. The original's _SetProperty return value is not part of the void header.
void CharProperties::_AddProperty(Structs::CharacterProperties& sheet, int propId, int value) {
    int next = value;
    if (_IsPropertySet(sheet, propId)) {
        next = AddWrap(_GetProperty(sheet, propId), value);
    }
    _SetProperty(sheet, propId, next);
}

// 0x3df250 CharProperties::_LoadFromCharTable(Structs::CharacterProperties&,int)
// Copies the 224 property words of table row charTableId into the sheet. A row outside [0, size) leaves the sheet
// alone. The original's memcpy of 0x380 bytes from row +4 to sheet +4 is the same as this copy of m_w1..m_w224.
void CharProperties::_LoadFromCharTable(Structs::CharacterProperties& sheet, int charTableId) {
    if (charTableId < 0 || static_cast<std::uint32_t>(charTableId) >= Arrays::CharacterTable::size) return;
    const auto* row =
        reinterpret_cast<const Structs::CharacterProperties*>(Arrays::CharacterTable::members) + charTableId;
    std::memcpy(&sheet.AIFaction, &row->AIFaction, kPropertyCount * sizeof(std::int32_t));
}

// 0x3df2a4 CharProperties::LoadBaseProperties(int)
// Loads the base sheet from table row charTableId.
void CharProperties::LoadBaseProperties(int charTableId) { _LoadFromCharTable(m_baseProps, charTableId); }

// 0x3df2b0 CharProperties::UnLoadPropNames(void)
// s_propNames is a std::vector<char*> (start +0, finish +4 in the original, 12 bytes). Each non-null name is freed and
// cleared, then the vector is emptied (the original sets finish to start when they differ).
void CharProperties::UnLoadPropNames() {
    for (char*& name : s_propNames) {
        if (name != nullptr) {
            CustomFree(name);
            name = nullptr;
        }
    }
    s_propNames.clear();
}

// 0x3df314 CharProperties::PROPS_ApplyClassToSheet(int,Structs::CharacterProperties *)
// With a sheet, loads class classId into it (useTemp = true). Without one, the original's ASSERT(sheet) fires:
// level 2 crashes and level 1 prints the message. The original returns this here; the void header drops that.
void CharProperties::PROPS_ApplyClassToSheet(int classId, Structs::CharacterProperties* sheet) {
    if (sheet != nullptr) {
        _LoadClass(*sheet, classId, true);
        return;
    }
    if (gAssertLevel == 2) {
        CrashOnAssert();
    } else if (gAssertLevel == 1) {
        ReportAssert("sheet", kCharPropsCpp, 796);
    }
}

// 0x3df3b8 CharProperties::PROPS_ApplyClass(int,bool)
// useTemp selects s_temp and passes useTemp through; otherwise the live final sheet m_props is loaded.
void CharProperties::PROPS_ApplyClass(int classId, bool useTemp) {
    if (useTemp) {
        _LoadClass(s_temp, classId, true);
    } else {
        _LoadClass(m_props, classId, false);
    }
}

// 0x3df3f0 CharProperties::HandleDots(void)
// Ticks six damage-over-time properties, ids 126..131 (loop index i = -1..4, passed as the DoT element). For each one
// with a positive value, unless the character is dead, it builds a DoT attack record on the character and applies it.
// The apply flag is the IsDead result, which is always 0 (false) on that path.
void CharProperties::HandleDots() {
    for (int i = -1; i != 5; ++i) {
        const int value = _GetProperty(m_props, i + 127);
        if (value <= 0) continue;
        if (m_character->IsDead()) continue;
        Character::AttackResult result{};  // the original's 40-byte stack record, zeroed here before it is filled
        m_character->F_DotAttack(result, m_character, m_character, value, i);
        m_character->F_ApplyResult(result, m_character, m_character, false);
    }
}

// 0x3df480 CharProperties::LoadGearsProperties(void)
// Walks the equipment slots of the character's ItemInventory (base at +0x37c). For each equipped item it loads the
// item's gear stats (with its left-hand flag) and then the gear power of each of its powers. The original's unsigned
// return value (the slot count) is not part of the void header.
void CharProperties::LoadGearsProperties() {
    ItemInventory& inventory = *m_character;
    unsigned int slotCount = static_cast<unsigned int>(inventory.ItemInventory::GetNumEquipmentSlots());
    if (slotCount == 0) return;

    unsigned int slot = 0;
    do {
        ItemInstance* item = inventory.ItemInventory::GetEquippedItem(slot);
        if (item != nullptr) {
            const int itemId = item->ItemInstance::GetItemId();
            _LoadGearStats(itemId, inventory.ItemInventory::IsEquipmentSlotLeftHand(slot));
            for (unsigned int power = 0; power < static_cast<unsigned int>(item->ItemInstance::GetNumPowers());
                 ++power) {
                const int powerId = item->ItemInstance::GetPowerId(power);
                _LoadGearPower(powerId, inventory.ItemInventory::IsEquipmentSlotLeftHand(slot));
            }
        }
        ++slot;
        slotCount = static_cast<unsigned int>(inventory.ItemInventory::GetNumEquipmentSlots());
    } while (slot < slotCount);
}

// 0x3df6e0 CharProperties::PROPS_GetInt(int,bool) const
// Reads the property from s_temp (useTemp) or from m_props, and returns the integer part (raw >> 8).
int CharProperties::PROPS_GetInt(int propId, bool useTemp) const {
    const Structs::CharacterProperties& sheet = useTemp ? s_temp : m_props;
    return _GetProperty(sheet, propId) >> 8;
}

// 0x3df718 CharProperties::PROPS_GetMagicDamageBonus(void) const
// The current faery of the character (through its Character base) gives a property id (faery word m_w2 + 166). The
// value is read from the character's own CharProperties. No current faery (m_w2 == -1) gives 0.
int CharProperties::PROPS_GetMagicDamageBonus() const {
    Character* character = m_character;
    const int faeryId = character->Character::SG_GetCurrentFaerieId(-1);
    const auto* faery = static_cast<const Structs::Faery*>(character->Character::GetCharFaery(faeryId));
    const int propBase = faery->Elemental;  // +0x08
    if (propBase == -1) return 0;
    return character->CharProperties::_GetProperty(character->CharProperties::m_props, AddWrap(propBase, 166));
}

// 0x3df76c CharProperties::PROPS_GetMagicToHit(void) const
// Same lookup as the magic damage bonus with property id m_w2 + 159. Adds the 19200 base. No current faery gives 19200.
int CharProperties::PROPS_GetMagicToHit() const {
    Character* character = m_character;
    const int faeryId = character->Character::SG_GetCurrentFaerieId(-1);
    const auto* faery = static_cast<const Structs::Faery*>(character->Character::GetCharFaery(faeryId));
    const int propBase = faery->Elemental;  // +0x08
    if (propBase == -1) return kMagicToHitBase;
    return AddWrap(character->CharProperties::_GetProperty(character->CharProperties::m_props,
                                                           AddWrap(propBase, 159)),
                   kMagicToHitBase);
}

// 0x3df7c4 CharProperties::PROPS_GetBonusCritRating(bool) const
// Crit rating bonus of the weapon in the main hand (offHand false, slot 1) or the off hand (slot 2). The weapon's item
// row word m_w37 gives a property id (+64). No weapon, or m_w37 == -1, gives 0.
int CharProperties::PROPS_GetBonusCritRating(bool offHand) const {
    ItemInventory& inventory = *m_character;
    const unsigned int slot = offHand ? 2u : 1u;
    ItemInstance* equipped = inventory.ItemInventory::GetEquippedItem(slot);
    if (equipped == nullptr) return 0;
    const int propBase = equipped->ItemInstance::GetItem()->Param3;  // Structs::Item +0x94
    if (propBase == -1) return 0;
    return _GetProperty(m_props, AddWrap(propBase, 64));
}

// 0x3df81c CharProperties::PROPS_GetBonusAttackRating(bool) const
// Attack rating bonus of the weapon in the given hand. The weapon's item row word m_w37 gives a property id (+51). When
// the character is dual-wielding, the property at id 58 is added as well. No weapon, or m_w37 == -1, gives 0.
int CharProperties::PROPS_GetBonusAttackRating(bool offHand) const {
    ItemInventory& inventory = *m_character;
    const unsigned int slot = offHand ? 2u : 1u;
    ItemInstance* equipped = inventory.ItemInventory::GetEquippedItem(slot);
    if (equipped == nullptr) return 0;
    const int propBase = equipped->ItemInstance::GetItem()->Param3;  // Structs::Item +0x94
    if (propBase == -1) return 0;
    const int property = _GetProperty(m_props, AddWrap(propBase, 51));
    if (inventory.ItemInventory::IsDualWielding()) {
        return AddWrap(_GetProperty(m_props, 58), property);
    }
    return property;
}
