// ItemInventory: item list, two equipment sets, gold and potion stack of one character.
// Embedded by value in Character at +0x37c (892); the next Character member (CharTimers) sits at +0x3b4,
// so the original 32-bit size is 0x38.
// Vtable (_ZTV13ItemInventory, 44 bytes): slots 0/1 destructors, then the nine virtuals declared below.
#pragma once

#include <cstdint>
#include <list>
#include <vector>

class Character;
class ItemInstance;

namespace Structs {
class Item;
class ItemListEntryList;
class ItemPowerEntryList;
class Loot;
class LootEntry;
}

class ItemInventory {
public:
    // One inventory entry: 8 bytes, allocated with operator new(8) and released with CustomFree.
    struct ItemSlot {
        ItemInstance* m_item;                     // +0x00
        int8_t m_equipSlot[2];                    // +0x04 equipment slot per equipment set, -1 = not equipped
        uint8_t pad_06[2];                        // +0x06
    };

    // Item listing entry returned by GetItemListForSlot / GetValuableItems. 12 bytes.
    struct Item {
        ItemInstance* m_item;                     // +0x00
        int8_t m_equipSlot[2];                    // +0x04
        uint8_t pad_06[2];                        // +0x06
        uint32_t m_index;                         // +0x08 index in m_items
    };

    // One rolled loot result, 16 bytes (built in _AddLootItems).
    struct LootInfo {
        int16_t m_itemId;                         // +0x00 index into Arrays::ItemTable
        uint8_t pad_02[2];                        // +0x02
        const Structs::LootEntry* m_entry;        // +0x04 the loot entry that was rolled
        uint8_t m_flag;                           // +0x08 byte +10 of the ItemListEntry
        uint8_t pad_09[3];                        // +0x09
        const Structs::Item* m_row;               // +0x0c Arrays::ItemTable row (164 bytes per row)
    };

    // Node payload of m_activeQuestGatheredItemIds (list node is 16 bytes: next, prev, then this).
    struct QuestGatheredItem {
        int m_itemId;                             // +0x08 within the node
        uint8_t m_refCount;                       // +0x0c within the node
    };

    ItemInventory();                              // 0x3ff330
    virtual ~ItemInventory();                     // slot 0 (0x3ff460 / 0x3ff50c), slot 1 deleting (0x3ff528)

    // Virtual slots 2..8
    virtual bool CanRangeAttack() const;                              // slot 2, 0x400014
    virtual bool CanRangeAttack(int& a, int& b, int& c) const;        // slot 3, 0x3ffebc
    virtual int EquipItemAuto(unsigned int itemIdx);                  // slot 4, 0x400c84
    virtual int UnEquipItemAuto(unsigned int itemIdx);                // slot 5, 0x400630
    virtual int EquipItemToSlot(unsigned int slot, unsigned int itemIdx);  // slot 6, 0x4009f0 (asserts: slotIdx first, itemIdx second)
    virtual int EquipSlotAuto(unsigned int slot, Character* c);       // slot 7, 0x401940
    virtual void UnEquipItemFromSlot(unsigned int slot, int equipSet);  // slot 8, 0x40050c

    // Items
    int GetNumItems() const;                      // 0x3fc608
    ItemInstance* GetItem(unsigned int idx);      // 0x3fc61c
    ItemInstance* GetItem(unsigned int idx) const;  // 0x3fdbf8
    int GetItemIndex(const ItemInstance* item) const;  // 0x3fc63c
    ItemInstance* FindItem(int itemId);           // 0x3fd15c
    int AddItemInstance(ItemInstance* item, bool stack, bool convertGold);  // 0x3ffd1c
    void RemoveItem(unsigned int idx);            // 0x3fe448
    int TryConsuming(int itemId, int qty);        // 0x3fe658
    void RemoveAllItems(bool all);                // 0x3fe6bc
    void UpdateLocalizationForItems();            // 0x3fdfa0
    bool IsInventoryFull() const;                 // 0x3fe330
    int GetItemListForSlot(unsigned int slot, std::vector<Item>* out);  // 0x3fed48
    int GetValuableItems(std::vector<Item>* out); // 0x3fee50
    void TrophyCheckArmorSet();                   // 0x3fcff8

    int TransferItemTo(unsigned int idx, ItemInventory& dst, int qty, bool stack, bool convertGold);  // 0x3ff858
    int TransferItemTo(unsigned int idx, ItemInventory& dst, bool stack, bool convertGold);          // 0x3ffa44
    int TransferInventoryTo(ItemInventory& dst, bool stack, bool convertGold);                      // 0x3ffa68

    // Gold and potions
    void SetGold(int amount);                     // 0x3fdfd8
    void AddGold(int amount);                     // 0x3fe164
    void TransferGoldTo(int amount, ItemInventory& dst);  // 0x3fe1a8
    int GetNumPotions() const;                    // 0x3fc690
    void SetPotionQty(int qty);                   // 0x3ffc40
    void RemoveOnePotion();                       // 0x3fe878

    // Equipment sets
    int GetCurrentSkillSet(int slot);             // 0x3fc6a0 (always 0)
    int GetCurrentEquipSet(int slot) const;       // 0x3fc6a8
    void SwapEquipmentSet();                      // 0x3fc6c8
    int GetNumEquipmentSlots() const;             // 0x3ffd20
    ItemInstance* GetEquippedItem(unsigned int slot) const;  // 0x3ffdec
    ItemInstance* GetEquippedItem(unsigned int slot);        // 0x3ffe3c
    bool IsItemEquipped(unsigned int itemIdx) const;         // 0x3fdaf0
    bool IsItemEquippedInSlot(unsigned int itemIdx, unsigned int slot) const;  // 0x3fda20
    bool IsItemEquippable(unsigned int itemIdx, unsigned int slot) const;      // 0x3fdcbc
    bool IsItemEquippable(unsigned int itemIdx) const;       // 0x3fdeec
    bool IsEquipmentSlotLeftHand(unsigned int slot) const;   // 0x40022c
    bool IsEquipmentSlotTaken(unsigned int slot) const;      // 0x4002d8
    const char* GetModularCategoryName(unsigned int category) const;  // 0x3ffd54

    // Combat queries
    bool CanMeleeAttack() const;                  // 0x3ffd38
    bool CanMeleeAttack(int& a) const;            // 0x3fff30
    bool HasMainHandWeapon() const;               // 0x3ffe8c
    bool HasRangedWeapon() const;                 // 0x3fffa4
    bool HasAxeOrMace() const;                    // 0x400018
    bool HasBow() const;                          // 0x400080
    bool HasStaff() const;                        // 0x4000c8
    bool HasShield() const;                       // 0x400110
    bool HasOffHandWeapon() const;                // 0x400158
    bool IsDualWielding() const;                  // 0x40019c
    bool HasTwoHander(bool offHandToo) const;     // 0x4001a0

    // Loot
    void AddLoot(int lootTableId, int a, int b, int c, bool flag);  // 0x40407c
    static void CalcLootItemValue(ItemInstance* item, int level);   // 0x4020b4 (returns nothing; sets the item value)
    void DBG_DropAllLoots();                      // 0x404658

    // Quest gathering bookkeeping (defined in a separate, later part of the binary)
    void UnregisterQuestGatheringItemId(int itemId);  // 0x47d5fc

public:
    int _AddItemInstance(ItemInstance* item, bool stack, bool convertGold);  // 0x3ff5d4
    void _DelItemInstance(ItemInstance* item);    // 0x3fe7d8
    int _HasItemInstanceLike(const ItemInstance* item, unsigned int& idx);   // 0x3fe1cc
    void _UnEquipItemFromSlot(unsigned int slot, int equipSet);  // 0x4003a4
    int _UnEquipItemAuto(unsigned int itemIdx);   // 0x400510
    int _EquipItemToSlot(unsigned int slot, unsigned int itemIdx, bool flag);  // 0x400634 (asserts: slotIdx first, itemIdx second)
    int _EquipItemAuto(unsigned int itemIdx);     // 0x4009f8
    int _EquipSlotAuto(unsigned int slot, Character* c);  // 0x4016e4

    // The loot helpers below use no ItemInventory state (their first argument is the entry, list or item they work
    // on), so they are static members in the original.
    static int _GetProbQuantity(int numProbId, int bonus);                   // 0x401b90
    static int _GetRandomItem(const Structs::ItemListEntryList& list);       // 0x401dbc
    static int _GetRandomItemPowerEntry(const Structs::ItemPowerEntryList& list);  // 0x401f38
    static bool _IsLootEntryUsingPct(const Structs::LootEntry& entry);       // 0x4027a4
    static int _GetEffectiveProb(const Structs::LootEntry& entry);           // 0x402854
    static unsigned int _GetRandomLootEntry(const std::vector<const Structs::LootEntry*>& entries);  // 0x4028d0
    static unsigned int _GetRandomLootEntry(const Structs::Loot& loot);      // 0x402a60
    static bool _DoPctRoll(const Structs::LootEntry& entry);                 // 0x402bdc
    static void _DoPctRolls(std::vector<const Structs::LootEntry*>& out, const std::vector<const Structs::LootEntry*>& in);  // 0x402ce4
    static void _DoPctRolls(std::vector<const Structs::LootEntry*>& out, const Structs::LootEntry* entry, int count);       // 0x402d70
    static void _AddLootItems(const std::vector<const Structs::LootEntry*>& entries, std::vector<LootInfo>& out, bool all);  // 0x402dfc
    static void _AddLootItemPowers(const Structs::LootEntry* entry, ItemInstance* item, int a, int b, int c);  // 0x403310
    static void _AddLootTable(int lootTableId, std::vector<const Structs::LootEntry*>& out, std::vector<const Structs::LootEntry*>* extra);  // 0x4039a0

    // _vptr                                      // +0x00
    Character* m_character;                       // +0x04 owner
    std::vector<ItemSlot*> m_items;               // +0x08 (begin +0x08, end +0x0c, cap +0x10)
    std::vector<std::vector<ItemSlot*>> m_equipment;  // +0x14 two equipment sets of 9 slots each (begin +0x14, end +0x18, cap +0x1c)
    int m_gold;                                   // +0x20 clamped to m_maxGold by SetGold
    ItemInstance* m_potion;                       // +0x24 the potion stack (item type 14), null when none; qty is an int16 at +0x50 of the instance
    int m_maxGold;                                // +0x28 0x7fffffff by default
    int8_t m_maxPotions;                          // +0x2c ctor -1; 0 rejects potions, otherwise the potion stack cap
    bool m_dropAllLoot;                           // +0x2d DBG_DropAllLoots sets it around AddLoot
    int8_t m_equipSet;                            // +0x2e current equipment set (0 or 1), toggled by SwapEquipmentSet
    bool m_infiniteInventory;                     // +0x2f suppresses the 100 item limit in IsInventoryFull
    std::list<QuestGatheredItem> m_activeQuestGatheredItemIds;  // +0x30 (STLport list, 8-byte header)
};
