// Batch g1-game-character-Character-ee9946-1: the Character queries on the AI, AI faction, model and animation
// table ids and rows, the AI type and flag predicates built on the AI row, and HasLoot.
// Declarations come from dh2/Character.hpp.
//
// The four table ids are raw words of the CharProperties final sheet m_props, which Character inherits at +0x560.
// The original reads them from the object: Character +0xff8 (AI faction), +0xffc (AI), +0x1000 (animation table) and
// +0x1004 (model). Those are m_props words m_w1..m_w4. Property id i is word m_w(i+1) of a sheet, so the four words
// are PROPS_Get(0, false) .. PROPS_Get(3, false). PROPS_Get is public and, with useTemp false, reads m_props only
// (g1-game-character-CharProperties-53ed14-0.cpp).
//
// Table rows are indexed through the host element types the pydata tables are built with (Structs::AIProps,
// Structs::AIFactions, Structs::CharAnim, element_table.hpp). The original listing strides (68, 12 and 160 bytes) are
// not applied to the table bytes. Each body keeps the original control flow.
//
// HasLoot is complete because GetLoot reads m_props.m_w10 (batch -0).

#include <cstdint>

#include "dh2/Character.hpp"

#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace {

// The original range check of a table-id word: a value below zero, or at or past the table size (compared as an
// unsigned value), gives the fallback.
int RowIndexOrFallback(std::int32_t raw, std::uint32_t tableSize, int fallback) {
    if (raw < 0 || static_cast<std::uint32_t>(raw) >= tableSize) {
        return fallback;
    }
    return raw;
}

// The original tests bit `bit` of a flag word with a logical shift: (word >> bit) & 1.
bool FlagBit(std::int32_t flags, unsigned int bit) {
    return ((static_cast<std::uint32_t>(flags) >> bit) & 1u) != 0;
}

}  // namespace

// 0x3a2fd8 _ZNK9Character7HasLootEv
// GetLoot() != -1, with GetLoot (0x3a2fcc) reading m_props.m_w10 (batch g1-game-character-Character-ee9946-0).
bool Character::HasLoot() const {
    return GetLoot() != -1;
}

// 0x3a2fec _ZNK9Character11GetCharAIIdEv
// The raw word at +0xffc, PROPS_Get(1, false) (m_props m_w2). A word that indexes Arrays::AITable is returned,
// otherwise 8.
int Character::GetCharAIId() const {
    return RowIndexOrFallback(PROPS_Get(1, false), Arrays::AITable::size, 8);
}

// 0x3a3024 _ZNK9Character9GetCharAIEv
// Arrays::AITable::members + 68 * GetCharAIId(), as a host Structs::AIProps row (the element type of the table).
const Structs::AIProps* Character::GetCharAI() const {
    return reinterpret_cast<const Structs::AIProps*>(Arrays::AITable::members) + GetCharAIId();
}

// 0x3a3054 _ZNK9Character11GetCharTypeEv
// The word at +0x38 of the AI row (Structs::AIProps m_w14).
int Character::GetCharType() const {
    return GetCharAI()->Type;
}

// 0x3a3064 _ZNK9Character9IsMonsterEv
// GetCharType() == 4.
bool Character::IsMonster() const {
    return GetCharType() == 4;
}

// 0x3a307c _ZNK9Character10IsFollowerEv
// GetCharType() == 2.
bool Character::IsFollower() const {
    return GetCharType() == 2;
}

// 0x3a3094 _ZNK9Character8IsFaerieEv
// GetCharType() == 3.
bool Character::IsFaerie() const {
    return GetCharType() == 3;
}

// 0x3a30ac _ZNK9Character10IsSummonedEv
// GetCharType() == 5.
bool Character::IsSummoned() const {
    return GetCharType() == 5;
}

// 0x3a30c4 _ZNK9Character10IsMerchantEv
// GetCharType() == 7.
bool Character::IsMerchant() const {
    return GetCharType() == 7;
}

// 0x3a30dc _ZNK9Character14IsInvisibleManEv
// GetCharType() == 9.
bool Character::IsInvisibleMan() const {
    return GetCharType() == 9;
}

// 0x3a30f4 _ZNK9Character9IsCleanerEv
// GetCharType() == 8.
bool Character::IsCleaner() const {
    return GetCharType() == 8;
}

// 0x3a310c _ZNK9Character5IsNPCEv
// Type 6, or IsMerchant(), or IsCleaner(), in the original's short-circuit order.
bool Character::IsNPC() const {
    return GetCharType() == 6 || IsMerchant() || IsCleaner();
}

// 0x3a3144 _ZNK9Character10IsMiniBossEv
// Bit 1 of the AI row flag word (Structs::AIProps m_w5, +0x14).
bool Character::IsMiniBoss() const {
    return FlagBit(GetCharAI()->Flags, 1);
}

// 0x3a3158 _ZNK9Character6IsBossEv
// Bit 2 of the AI row flag word (Structs::AIProps m_w5, +0x14).
bool Character::IsBoss() const {
    return FlagBit(GetCharAI()->Flags, 2);
}

// 0x3a316c _ZNK9Character13IsCharSittingEv
// Bit 3 of the AI row flag word (Structs::AIProps m_w5, +0x14).
bool Character::IsCharSitting() const {
    return FlagBit(GetCharAI()->Flags, 3);
}

// 0x3a3180 _ZNK9Character18GetCharAIFactionIdEv
// The raw word at +0xff8, PROPS_Get(0, false) (m_props m_w1). A word that indexes Arrays::AIFactionTable is returned,
// otherwise 10.
int Character::GetCharAIFactionId() const {
    return RowIndexOrFallback(PROPS_Get(0, false), Arrays::AIFactionTable::size, 10);
}

// 0x3a31b8 _ZNK9Character16GetCharAIFactionEv
// Arrays::AIFactionTable::members + 12 * GetCharAIFactionId(), as a host Structs::AIFactions element. The table is
// built from Structs::AIFactions (w7_arrays_02.cpp, FinalizeArrayTable<Structs::AIFactions>), and AIFactionTable::read
// (0x4b3a38) gives each element the vptr of vtable for Structs::AIFactions.
const Structs::AIFactions* Character::GetCharAIFaction() const {
    return reinterpret_cast<const Structs::AIFactions*>(Arrays::AIFactionTable::members) + GetCharAIFactionId();
}

// 0x3a31e8 Character::GetCharModelId(void)
// The raw word m_props.m_w4 (+0x1004, PROPS_Get(3, false)) is returned when it indexes Arrays::ModelDict, otherwise -1.
int Character::GetCharModelId() const {
    const int raw = PROPS_Get(3, false);
    if (raw < 0 || static_cast<std::uint32_t>(raw) >= Arrays::ModelDict::size) {
        return -1;
    }
    return raw;
}

// 0x3a3228 _ZNK9Character18GetCharAnimTableIdEv
// The raw word at +0x1000, PROPS_Get(2, false) (m_props m_w3). A word that indexes Arrays::CharAnimTable is returned,
// otherwise 17.
int Character::GetCharAnimTableId() const {
    return RowIndexOrFallback(PROPS_Get(2, false), Arrays::CharAnimTable::size, 17);
}

// 0x3a3264 _ZNK9Character16GetCharAnimTableEv
// Arrays::CharAnimTable::members + 160 * GetCharAnimTableId(), as a host Structs::CharAnim element (the pydata element
// of CharAnimTable). The original 160-byte listing stride is not applied to the bytes: the host element is 176 bytes.
const Structs::CharAnim* Character::GetCharAnimTable() const {
    return reinterpret_cast<const Structs::CharAnim*>(Arrays::CharAnimTable::members) + GetCharAnimTableId();
}
