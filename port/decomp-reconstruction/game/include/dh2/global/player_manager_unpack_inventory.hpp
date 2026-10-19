// Free <global> helpers for PlayerManager::_UnpackInventory and the quest-sync and death checks (batch
// g1-game-character-PlayerManager-025dba-0).
//
// Each helper is defined in game-character/src/g1-game-character-PlayerManager-025dba-0_items.cpp. That file includes
// dh2/Character.hpp, which pulls in the pydata stream reader, and the pydata IStreamBase clashes with the net-transport
// IStreamBase that PlayerManager.hpp needs (its StreamBuffer member). So the batch source cannot include Character.hpp and
// calls these helpers instead. The Character and ItemInventory members are reached only through them.
#pragma once

#include <cstdint>

class Character;
class ItemInstance;
class PlayerSavegame;

// Arrays::ItemTable::size (pydata-accessors, w7_arrays27.hpp): the number of item rows that item ids are checked against.
std::uint32_t ItemTableRowCount();

// Character::IsDead() const, vtable slot 13 (+0x34).
bool CharacterIsDead(const Character* character);

// Character::m_savegame (+0x14e8), the PlayerSavegame of the character, or null.
PlayerSavegame* CharacterSavegame(const Character* character);

// ItemInventory::GetNumEquipmentSlots() on the inventory base of the character (+0x37c).
int CharacterNumEquipmentSlots(const Character* character);

// ItemInventory::RemoveAllItems(true) on the inventory base of the character (+0x37c).
void CharacterRemoveAllItems(Character* character);

// Character::AddItemInstance(item, true, true), vtable +0x12c. Returns the value the original keeps in r0.
int CharacterAddItemInstance(Character* character, ItemInstance* item);

// Character::EquipItemToSlot, vtable +0x13c. The two arguments are passed in the order the original passes them, which is
// (loop slot index, result of CharacterAddItemInstance).
void CharacterEquipItemToSlot(Character* character, unsigned int first, unsigned int second);

// Character::UnEquipItemFromSlot(slot), vtable +0x144.
int CharacterUnEquipItemFromSlot(Character* character, unsigned int slot);
