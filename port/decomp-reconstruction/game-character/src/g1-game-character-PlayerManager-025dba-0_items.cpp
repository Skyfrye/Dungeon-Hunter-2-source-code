// Character and item-table helpers for PlayerManager (batch g1-game-character-PlayerManager-025dba-0). The declarations are
// in dh2/global/player_manager_unpack_inventory.hpp.
//
// This file includes dh2/Character.hpp and the pydata-accessors headers. The batch source cannot include them: the pydata
// stream reader defines a second IStreamBase, and PlayerManager.hpp brings in net-transport's IStreamBase through its
// StreamBuffer member. The helpers below only forward to the members and the virtual calls the original makes.

#include <cstdint>

#include "dh2/Character.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/global/player_manager_unpack_inventory.hpp"
#include "pydata-accessors/w7_arrays27.hpp"

// Original reads Arrays::ItemTable::size at each use.
std::uint32_t ItemTableRowCount() {
    return Arrays::ItemTable::size;
}

bool CharacterIsDead(const Character* character) {
    return character->IsDead();
}

PlayerSavegame* CharacterSavegame(const Character* character) {
    return character->m_savegame;
}

int CharacterNumEquipmentSlots(const Character* character) {
    return static_cast<const ItemInventory*>(character)->GetNumEquipmentSlots();
}

void CharacterRemoveAllItems(Character* character) {
    static_cast<ItemInventory*>(character)->RemoveAllItems(true);
}

int CharacterAddItemInstance(Character* character, ItemInstance* item) {
    return character->AddItemInstance(item, true, true);
}

void CharacterEquipItemToSlot(Character* character, unsigned int first, unsigned int second) {
    character->EquipItemToSlot(first, second);
}

int CharacterUnEquipItemFromSlot(Character* character, unsigned int slot) {
    return character->UnEquipItemFromSlot(slot);
}
