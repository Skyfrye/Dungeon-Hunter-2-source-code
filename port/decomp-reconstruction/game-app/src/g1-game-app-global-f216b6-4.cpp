// Batch g1-game-app-global-f216b6-4 (<global>, part 5 of 22): the GetNewState<CS*>() state factories and the
// armor-set trophy checks TrophyCheckArmorSet{Decay,Phantasm,...,Lordly}(ItemInventory*).
// Declarations: dh2/global/GetNewState.hpp and dh2/global/TrophyCheckArmorSet.hpp.

#include "dh2/CSAnim.hpp"
#include "dh2/CSDead.hpp"
#include "dh2/CSInjured.hpp"
#include "dh2/CSInteract.hpp"
#include "dh2/CSKnockedBack.hpp"
#include "dh2/CSLiftingIdle.hpp"
#include "dh2/CSLiftingMove.hpp"
#include "dh2/CSPreSpawn.hpp"
#include "dh2/CSReviving.hpp"
#include "dh2/CSRevived.hpp"
#include "dh2/CSStunned.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/GetNewState.hpp"
#include "dh2/global/TrophyCheckArmorSet.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

// Name lookup of the pydata table (pydata-accessors/member_names.hpp declares it, but that header cannot share a
// translation unit with the w7 record headers). Same declaration as the other <global> trophy batches.
namespace Arrays {
struct TrophyTable;
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

// 0x3c0550 CharState* GetNewState<CSStunned>()
template <>
CharState* GetNewState<CSStunned>() {
    return &Singleton<CSStunned>::s_inst;
}

// 0x3c056c CharState* GetNewState<CSKnockedBack>()
template <>
CharState* GetNewState<CSKnockedBack>() {
    return &Singleton<CSKnockedBack>::s_inst;
}

// 0x3c0588 CharState* GetNewState<CSInjured>()
template <>
CharState* GetNewState<CSInjured>() {
    return &Singleton<CSInjured>::s_inst;
}

// 0x3c05a4 CharState* GetNewState<CSDead>()
template <>
CharState* GetNewState<CSDead>() {
    return &Singleton<CSDead>::s_inst;
}

// 0x3c05c0 CharState* GetNewState<CSInteract>()
template <>
CharState* GetNewState<CSInteract>() {
    return &Singleton<CSInteract>::s_inst;
}

// 0x3c05dc CharState* GetNewState<CSAnim>()
template <>
CharState* GetNewState<CSAnim>() {
    return &Singleton<CSAnim>::s_inst;
}

// 0x3c05f8 CharState* GetNewState<CSReviving>()
template <>
CharState* GetNewState<CSReviving>() {
    return &Singleton<CSReviving>::s_inst;
}

// 0x3c0614 CharState* GetNewState<CSRevived>()
template <>
CharState* GetNewState<CSRevived>() {
    return &Singleton<CSRevived>::s_inst;
}

// 0x3c0630 CharState* GetNewState<CSPreSpawn>()
template <>
CharState* GetNewState<CSPreSpawn>() {
    return &Singleton<CSPreSpawn>::s_inst;
}

// 0x3c064c CharState* GetNewState<CSLiftingIdle>()
template <>
CharState* GetNewState<CSLiftingIdle>() {
    return &Singleton<CSLiftingIdle>::s_inst;
}

// 0x3c0668 CharState* GetNewState<CSLiftingMove>()
// The Hex-Rays prototype prints int*; the demangled symbol (CharState*) is the one declared in GetNewState.hpp. The
// body is the same singleton address load.
template <>
CharState* GetNewState<CSLiftingMove>() {
    return &Singleton<CSLiftingMove>::s_inst;
}

// Armor-set trophy checks. The original looks at the five equipment slots of the inventory (3, 4, 8, 0 and 7) and
// reads each equipped item through ItemInstance::GetItem() (the Structs::Item row, 164 bytes, at
// Arrays::ItemTable::members + 164 * index) or ItemInstance::GetItemId() (the table index). They all end with
// Arrays::GetMemberIDByString<Arrays::TrophyTable>(name) when the set matches and return -1 otherwise.
// Decay, Phantasm and Shadow are reconstructed: dh2/ItemInstance.hpp and dh2/ItemInventory.hpp exist now, and the
// Structs::Item row (pydata-accessors/w7_structs_2.hpp) has m_w34 at +0x88. Marksman, Angelic, Rage, Archmage, Jester
// and Lordly are defined in game-app/src/r2a-game-app-global-f216b6-3.cpp (batch r2a-game-app-global-f216b6-3). A set
// that does not match returns -1, the original's "no armor set" result. The sets, in the original's order:
//   same m_w34 (+0x88 of the Structs::Item row) in all five slots: Decay 8 "gear_necromancer", Phantasm 9
//   "gear_illusionist", Shadow 5 "gear_assassin", Marksman 6 "gear_archer", Angelic 3 "gear_paladin", Rage 2
//   "gear_berserker"; item id in each slot's list: Archmage "gear_mage", Jester "gear_rogue", Lordly "gear_warrior"
//   (the id lists are in the ledger notes).

namespace {

// Structs::Item::m_w34 (+0x88) of the item equipped in `slot`: ItemInventory::GetEquippedItem(slot), then the item's
// row through ItemInstance::GetItem(). The original dereferences both without a null check. Its callers
// (ItemInventory::TrophyCheckArmorSet) first require IsEquipmentSlotTaken for slots 3, 4, 8, 0 and 7.
int TrophyArmorSlotClass(ItemInventory* inventory, unsigned int slot) {
    return inventory->GetEquippedItem(slot)->GetItem()->ClassRequirement;
}

}  // namespace

// 0x3fc6e8 int TrophyCheckArmorSetDecay(ItemInventory*)
// Slots are tested in the original's order (3, 4, 8, 0, 7) with short-circuit &&, so the first mismatch stops the chain.
int TrophyCheckArmorSetDecay(ItemInventory* inventory) {
    if (TrophyArmorSlotClass(inventory, 3) == 8 && TrophyArmorSlotClass(inventory, 4) == 8 &&
        TrophyArmorSlotClass(inventory, 8) == 8 && TrophyArmorSlotClass(inventory, 0) == 8 &&
        TrophyArmorSlotClass(inventory, 7) == 8) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_necromancer");
    }
    return -1;
}

// 0x3fc790 int TrophyCheckArmorSetPhantasm(ItemInventory*)
// Same five-slot chain as Decay with m_w34 == 9.
int TrophyCheckArmorSetPhantasm(ItemInventory* inventory) {
    if (TrophyArmorSlotClass(inventory, 3) == 9 && TrophyArmorSlotClass(inventory, 4) == 9 &&
        TrophyArmorSlotClass(inventory, 8) == 9 && TrophyArmorSlotClass(inventory, 0) == 9 &&
        TrophyArmorSlotClass(inventory, 7) == 9) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_illusionist");
    }
    return -1;
}

// 0x3fc83c int TrophyCheckArmorSetShadow(ItemInventory*)
// Same five-slot chain as Decay with m_w34 == 5.
int TrophyCheckArmorSetShadow(ItemInventory* inventory) {
    if (TrophyArmorSlotClass(inventory, 3) == 5 && TrophyArmorSlotClass(inventory, 4) == 5 &&
        TrophyArmorSlotClass(inventory, 8) == 5 && TrophyArmorSlotClass(inventory, 0) == 5 &&
        TrophyArmorSlotClass(inventory, 7) == 5) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_assassin");
    }
    return -1;
}

// The six trophy checks from Marksman to Lordly (ELF 0x3fc8e8 .. 0x3fce48) are defined in
// game-app/src/r2a-game-app-global-f216b6-3.cpp (batch r2a-game-app-global-f216b6-3).
