// Batch g1-game-items-save-ItemInventory-cf6f6b-1 (owner ItemInventory, part 2 of 5).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Layouts come from dh2/ItemInventory.hpp.
//
// Shared conventions in this file:
//  * Item row: an item's row in Arrays::ItemTable is 164 bytes and is Structs::Item here. Its +0x58 is the item
//    type (pydata m_w22; 13 = gold, 14 = potion) and its +0x68 is the equipment category (pydata m_w26).
//    RemoveItem folds the category as the original does: -2 -> 5, -3 and -4 -> 1, -1 stays.
//  * ItemSlot records come from CustomAlloc and go back through CustomFree, as the original's operator new(8)
//    and CustomFree pair does. Items are released with delete (the original calls the virtual deleting destructor).
//  * gAssertLevel: level 2 aborts (the original writes to address 0), level 1 prints the ASSERT line. The original
//    then indexes past the end of m_items, which is undefined; this port returns without changing anything.

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/QE_GatherLoot.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

// Declarations of the pydata accessor used by SetPotionQty (same declarations as pydata-accessors/member_names.hpp,
// which cannot be included next to w7_structs_2.hpp: both define the Structs table classes).
namespace Arrays {
struct ItemTable;
struct TrophyTable;
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

// Companion TU r2a-game-items-save-ItemInventory-cf6f6b-0_players.cpp: the PlayerManager local-player test.
namespace ItemInventoryTrophyPlayers {
bool IsLocalPlayer(const Character* character);
}  // namespace ItemInventoryTrophyPlayers

namespace {

const char kItemInventorySource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp";

// The original ASSERT(...) macro: level 2 forces a crash (abort here), level 1 prints the message and continues.
void ItemInventoryAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kItemInventorySource, line);
    }
}

// Equipment category fold of the item row value (the same fold ItemInventory::IsItemEquipped uses).
int FoldEquipCategory(int category) {
    if (category >= -4 && category < 0) {
        if (category > -3) {  // -2 or -1
            if (category == -2) {
                category = 5;
            }
        } else {  // -3 or -4
            category = 1;
        }
    }
    return category;
}

// Erases entry idx of an m_items-style vector. The original memmoves the tail down one pointer and drops end by 4.
void EraseItemSlot(std::vector<ItemInventory::ItemSlot*>& items, std::size_t idx) {
    items.erase(items.begin() + static_cast<std::ptrdiff_t>(idx));
}

}  // namespace

// 0x3ff200 _ZN13ItemInventoryC1Ev
// 0x3ff330 _ZN13ItemInventoryC2Ev
// Constructor (C1 and C2 are two copies of the same body): empty item list, two equipment sets of nine empty slots.
ItemInventory::ItemInventory()
    : m_character(nullptr),
      m_gold(0),
      m_potion(nullptr),
      m_maxGold(0x7FFFFFFF),       // +0x28
      m_maxPotions(-1),            // +0x2c
      m_dropAllLoot(false),        // +0x2d
      m_equipSet(0),               // +0x2e
      m_infiniteInventory(false) { // +0x2f
    for (int set = 0; set < 2; ++set) {
        m_equipment.push_back(std::vector<ItemSlot*>(9u, nullptr));
    }
}

// 0x3ff460 _ZN13ItemInventoryD1Ev
// 0x3ff528 _ZN13ItemInventoryD2Ev
// Destructor (D1 and D2 have the same body): removes every item, then the members are destroyed as in the original
// (the quest-gathered list, the equipment sets and the item list).
ItemInventory::~ItemInventory() {
    RemoveAllItems(true);
}

// 0x3ff50c _ZN13ItemInventoryD0Ev
// Deleting destructor: compiler-generated (~ItemInventory() then CustomFree(this)), not written here.

// 0x3fe448 _ZN13ItemInventory10RemoveItemEj
void ItemInventory::RemoveItem(unsigned int a2) {
    if (a2 >= m_items.size()) {
        ItemInventoryAssert("itemIdx < m_items.size()", 269);
        return;
    }
    ItemSlot* slot = m_items[a2];
    const int category = FoldEquipCategory(slot->m_item->GetItem()->EquipmentSlottingType);  // Structs::Item +0x68

    // Clear the item from the current equipment set, swap sets, clear it from the other one, and swap back.
    const int set = GetCurrentEquipSet(category);
    if (IsItemEquipped(a2)) {
        m_equipment[static_cast<std::size_t>(set)][static_cast<std::size_t>(slot->m_equipSlot[set])] = nullptr;
    }
    SwapEquipmentSet();
    if (IsItemEquipped(a2)) {
        const int otherSet = GetCurrentEquipSet(category);
        m_equipment[static_cast<std::size_t>(otherSet)]
                   [static_cast<std::size_t>(slot->m_equipSlot[otherSet])] = nullptr;
    }
    SwapEquipmentSet();

    ItemInstance* item = slot->m_item;
    if (item == m_potion) {
        m_potion = nullptr;
    }
    if (item) {
        delete item;
        slot->m_item = nullptr;
    }
    CustomFree(slot);
    EraseItemSlot(m_items, a2);
}

// 0x3fe658 _ZN13ItemInventory12TryConsumingEii
int ItemInventory::TryConsuming(int a2, int a3) {
    ItemInstance* item = FindItem(a2);
    if (!item) {
        return 0;
    }
    const int qty = item->m_qty;  // ItemInstance +0x50, int16
    if (a3 > qty) {
        return 0;
    }
    item->SetQty(qty - a3);
    if (item->m_qty <= 0) {
        RemoveItem(static_cast<unsigned int>(GetItemIndex(item)));
    }
    return 1;
}

// 0x3fe6bc _ZN13ItemInventory14RemoveAllItemsEb
void ItemInventory::RemoveAllItems(bool all) {
    if (all) {
        // Clear every equipment entry of both sets, then delete and free every item slot.
        for (auto& set : m_equipment) {
            for (auto& entry : set) {
                entry = nullptr;
            }
        }
        for (ItemSlot* slot : m_items) {
            if (slot->m_item) {
                delete slot->m_item;
                slot->m_item = nullptr;
            }
            CustomFree(slot);
        }
        m_items.clear();
        SetGold(0);
    } else {
        // Remove every item that is not equipped in the current set.
        std::size_t idx = 0;
        while (idx < m_items.size()) {
            if (IsItemEquipped(static_cast<unsigned int>(idx))) {
                ++idx;
            } else {
                RemoveItem(static_cast<unsigned int>(idx));
            }
        }
    }
    m_potion = nullptr;
}

// 0x3fe7d8 _ZN13ItemInventory16_DelItemInstanceEP12ItemInstance
void ItemInventory::_DelItemInstance(ItemInstance* a2) {
    if (m_potion == a2) {
        m_potion = nullptr;
    }
    for (std::size_t i = 0; i < m_items.size(); ++i) {
        ItemSlot* slot = m_items[i];
        if (slot->m_item != a2) {
            continue;
        }
        if (a2) {
            delete a2;
        }
        CustomFree(slot);
        EraseItemSlot(m_items, i);
        return;
    }
}

// 0x3fe878 _ZN13ItemInventory15RemoveOnePotionEv
void ItemInventory::RemoveOnePotion() {
    ItemInstance* potion = m_potion;
    if (potion) {
        if (potion->m_qty <= 1) {
            _DelItemInstance(potion);
        } else {
            potion->AddQty(-1);
        }
    }
}

// 0x3fed48 _ZN13ItemInventory18GetItemListForSlotEjPSt6vectorINS_4ItemESaIS1_EE
int ItemInventory::GetItemListForSlot(unsigned int a2, std::vector<Item>* a3) {
    if (a3) {
        a3->clear();
    }
    if (m_items.empty()) {
        return 0;
    }
    int count = 0;
    for (std::size_t i = 0; i < m_items.size(); ++i) {
        const unsigned int idx = static_cast<unsigned int>(i);
        if (!IsItemEquippable(idx, a2)) {
            continue;
        }
        ++count;
        if (a3) {
            const ItemSlot* slot = m_items[i];
            Item entry{};
            entry.m_item = slot->m_item;
            entry.m_equipSlot[0] = slot->m_equipSlot[0];
            entry.m_equipSlot[1] = slot->m_equipSlot[1];
            entry.m_index = idx;
            a3->push_back(entry);
        }
    }
    return count;
}

// 0x3fee50 _ZN13ItemInventory16GetValuableItemsEPSt6vectorINS_4ItemESaIS1_EE
int ItemInventory::GetValuableItems(std::vector<Item>* a2) {
    if (a2) {
        a2->clear();
    }
    int count = 0;
    for (std::size_t i = 0; i < m_items.size(); ++i) {
        const ItemSlot* slot = m_items[i];
        if (slot->m_item->GetItem()->EquipmentSlottingType != -1) {  // Structs::Item +0x68 must be -1
            continue;
        }
        ++count;
        if (a2) {
            Item entry{};
            entry.m_item = slot->m_item;
            entry.m_equipSlot[0] = slot->m_equipSlot[0];
            entry.m_equipSlot[1] = slot->m_equipSlot[1];
            entry.m_index = static_cast<unsigned int>(i);
            a2->push_back(entry);
        }
    }
    return count;
}

// 0x3ff5d4 _ZN13ItemInventory16_AddItemInstanceEP12ItemInstancebb
// The full_inventory trophy unlocks when the inventory is full (IsInventoryFull), the owner is a player character and
// that character is the local player (ItemInventoryTrophyPlayers::IsLocalPlayer, companion TU).
// The third argument is tested with !a3 before the stacking scan (see ledger notes on the parameter name).
int ItemInventory::_AddItemInstance(ItemInstance* a2, bool a3, bool a4) {
    if (m_maxPotions == 0 && a2->GetItem()->Type == 14) {
        delete a2;
        return -1;
    }
    if (m_potion != nullptr || a2->GetItem()->Type != 14) {
        if (a4 && a2->GetItem()->Type == 13) {
            AddGold(a2->m_value);  // ItemInstance +0x54: the gold amount of a gold item
            delete a2;
            return -1;
        }
    } else {
        m_potion = a2;
    }

    if (a2->IsStackable() && !a3) {
        for (std::size_t i = 0; i < m_items.size(); ++i) {
            ItemSlot* slot = m_items[i];
            if (slot->m_item == nullptr) {
                continue;
            }
            if (IsItemEquipped(static_cast<unsigned int>(i)) || !(*slot->m_item == *a2)) {
                continue;
            }
            const int qty = a2->m_qty;
            int add = qty;
            if (a2->GetItem()->Type == 14) {
                // Potions stack up to the cap in m_maxPotions (int8, -1 by default).
                const int room = static_cast<int>(m_maxPotions) - slot->m_item->m_qty;
                if (room < qty) {
                    add = std::max(room, 0);
                }
            }
            slot->m_item->AddQty(add);
            delete a2;
            return static_cast<int>(i);
        }
    }

    ItemSlot* slot = static_cast<ItemSlot*>(CustomAlloc(sizeof(ItemSlot)));
    slot->m_item = a2;
    slot->m_equipSlot[0] = -1;
    slot->m_equipSlot[1] = -1;
    m_items.push_back(slot);
    if (IsInventoryFull() && m_character->IsPlayer() && ItemInventoryTrophyPlayers::IsLocalPlayer(m_character)) {
        TrophyManager::s_instance->UnlockTrophy(Arrays::GetMemberIDByString<Arrays::TrophyTable>("full_inventory"));
    }
    return static_cast<int>(m_items.size()) - 1;
}

// 0x3ffd1c _ZN13ItemInventory15AddItemInstanceEP12ItemInstancebb
// Thunk: forwards to _AddItemInstance.
int ItemInventory::AddItemInstance(ItemInstance* a2, bool a3, bool a4) {
    return _AddItemInstance(a2, a3, a4);
}

// 0x3ff858 _ZN13ItemInventory14TransferItemToEjRS_ibb
int ItemInventory::TransferItemTo(unsigned int a2, ItemInventory& a3, int a4, bool a5, bool a6) {
    if (a2 >= m_items.size()) {
        ItemInventoryAssert("itemIdx < m_items.size()", 426);
        return -1;
    }
    if (a4 <= 0) {
        return -1;
    }
    ItemSlot* slot = m_items[a2];
    const int qty = slot->m_item->m_qty;
    if (qty < a4) {
        if (qty == 0) {
            return 0;
        }
        // Fewer units than asked for: the whole stack moves (falls through below).
    } else if (qty != a4) {
        // More units than asked for: split off a4 units and add that part to the other inventory.
        ItemInstance* part = slot->m_item->Split(a4);
        return a3._AddItemInstance(part, a5, a6);
    }

    // The whole stack moves: unequip it from both sets first (through the virtual slot 8).
    const int equipped0 = slot->m_equipSlot[0];
    if (equipped0 != -1) {
        UnEquipItemFromSlot(static_cast<unsigned int>(equipped0), 0);
    }
    slot = m_items[a2];
    const int equipped1 = slot->m_equipSlot[1];
    if (equipped1 != -1) {
        UnEquipItemFromSlot(static_cast<unsigned int>(equipped1), 1);
    }
    slot = m_items[a2];
    ItemInstance* moved = slot->m_item;
    if (moved == m_potion) {
        m_potion = nullptr;
    }
    const int result = a3._AddItemInstance(moved, a5, a6);
    CustomFree(slot);
    EraseItemSlot(m_items, a2);
    return result;
}

// 0x3ffa44 _ZN13ItemInventory14TransferItemToEjRS_bb
int ItemInventory::TransferItemTo(unsigned int a2, ItemInventory& a3, bool a4, bool a5) {
    return TransferItemTo(a2, a3, 0x7FFFFFFF, a4, a5);
}

// 0x3ffa68 _ZN13ItemInventory19TransferInventoryToERS_bb
// Moves every item to a2 (_AddItemInstance), frees the slot and, when a2 belongs to a player character whose active quest
// list holds the item id, raises a QE_GatherLoot on the current level (the PyData "v2QuestObjectiveType"/"GatherLoot" id, the
// character, -1 for target and value, the item id as the match id; EventManager::RaiseAsync). Then the gold goes over
// (TransferGoldTo). The original returns what TransferGoldTo leaves in r0 (declared void here); this returns 0.
int ItemInventory::TransferInventoryTo(ItemInventory& a2, bool a3, bool a4) {
    for (ItemSlot* slot : m_items) {
        // Deviation (W2, AddressSanitizer heap-use-after-free): the listing calls _AddItemInstance first and then reads the id through the old
        // slot->m_item; for a stackable item _AddItemInstance merges it into an existing stack and deletes it, so the read is of freed memory
        // (the 32-bit allocator leaves the stale value intact). The id does not change by the add, so it is read before.
        const int itemId = slot->m_item->GetItemId();
        a2._AddItemInstance(slot->m_item, a3, a4);
        Character* owner = a2.m_character;
        if (owner != nullptr && owner->IsPlayer()) {
            const auto& wanted = a2.m_activeQuestGatheredItemIds;
            const bool listed = std::any_of(wanted.begin(), wanted.end(),
                                            [itemId](const QuestGatheredItem& entry) { return entry.m_itemId == itemId; });
            if (listed) {
                Level* level = ApplicationGetInstance().GetCurrentLevel();
                if (level != nullptr) {
                    const std::int32_t gatherLootId =
                        ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "GatherLoot");
                    QE_GatherLoot event(gatherLootId, owner, -1, -1, itemId);
                    level->RaiseAsync(event);
                }
            }
        }
        CustomFree(slot);
    }
    m_items.clear();
    TransferGoldTo(m_gold, a2);
    return 0;
}

// 0x3ffc40 _ZN13ItemInventory12SetPotionQtyEi
// The "Potion0" lookup walks Arrays::ItemTable::m_memberNames up to Arrays::ItemTable::size (the original inlines the loop),
// and the id is -1 when no name matches. When no potion exists the new potion is created with that id.
void ItemInventory::SetPotionQty(int a2) {
    if (m_potion) {
        if (a2) {
            m_potion->SetQty(a2);
        } else {
            _DelItemInstance(m_potion);
        }
        return;
    }
    int itemId = -1;
    for (std::uint32_t i = 0; i < Arrays::ItemTable::size; ++i) {
        if (std::strcmp("Potion0", Arrays::ItemTable::m_memberNames.names[i]) == 0) {
            itemId = static_cast<int>(i);
            break;
        }
    }
    ItemInstance* potion = new ItemInstance(itemId, static_cast<unsigned int>(a2));
    _AddItemInstance(potion, true, false);
}

// 0x3ffd20 _ZNK13ItemInventory20GetNumEquipmentSlotsEv
int ItemInventory::GetNumEquipmentSlots() const {
    return static_cast<int>(m_equipment[0].size());
}

// 0x3ffd38 _ZNK13ItemInventory14CanMeleeAttackEv
// The original calls the virtual CanRangeAttack (vtable slot 2) and inverts the result.
bool ItemInventory::CanMeleeAttack() const {
    return !CanRangeAttack();
}
