// ItemInstance: one item in an inventory or on the ground. It holds the item row id (Arrays::ItemTable), the
// display name, stats and requirement texts (rebuilt from the row and the StringManager by _UpdateName,
// _UpdateStats and _UpdateReqs), the quantity, the value, an optional pick-up type and the list of powers.
// Original 32-bit size 0x6c (108), from operator new(108) in Split (0x3fc3e0).
// Vtable (_ZTV12ItemInstance, 16 bytes): slots 0/1 are the destructors and there are no other virtuals.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x3fc26c C1 / 0x3fc494 C2, dtors 0x3faa64 D1 /
// 0x3faab0 D0 / 0x3faacc D2).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

class Character;

namespace Structs {
class Item;
}  // namespace Structs

class ItemInstance {
public:
    // One power on the item. Original 32-bit size 0x20 (32), the elements of m_powers.
    struct PowerInfo {
        int m_powerId;                                                  // +0x00 power id (Arrays::ItemPowerTable row), compared by operator==
        int unk_04;                                                     // +0x04 ItemPowerTable value; AddPower's insertion step compares it, swap leaves it in place
        std::string m_desc;                                             // +0x08 description, GetPowerDesc returns its data pointer (24 bytes in the original)

        void swap(PowerInfo& other);                                    // 0x3fb570 swaps m_powerId and m_desc only
    };

    ItemInstance(int itemId, unsigned int qty);                         // 0x3fc26c (C1), 0x3fc494 (C2)
    virtual ~ItemInstance();                                            // 0x3faacc (D2), 0x3faa64 (D1), 0x3faab0 (D0)

    bool operator==(const ItemInstance& other) const;                   // 0x3f9d78
    bool operator<(const ItemInstance& other) const;                    // 0x3fa1fc

    int GetItemId() const;                                              // 0x3f9e00
    const Structs::Item* GetItem() const;                               // 0x3f9e08 Arrays::ItemTable row (164 bytes) for m_itemId
    int GetPickUpType() const;                                          // 0x3f9e34 m_pickUpType, or the row's type when it is -1
    bool IsStackable() const;                                           // 0x3f9e58
    bool IsEquippable() const;                                          // 0x3f9e68
    int GetNumPowers() const;                                           // 0x3f9e80
    const char* GetIconName() const;                                    // 0x3f9e94 icon name string buffer from the row at +0x08 (ItemBase m_w2)
    const std::uint8_t* GetPower(unsigned int idx) const;               // 0x3f9ec4 Arrays::ItemPowerTable row (40 bytes); pydata row type not declared here
    const char* GetPowerDesc(unsigned int idx) const;                   // 0x3f9f88
    int GetPowerId(unsigned int idx) const;                             // 0x3fa038
    bool IsEquippableBy(Character* character) const;                    // 0x3fa330

    void SetQty(int qty);                                               // 0x3fa0e4 stores the low 16 bits in m_qty
    void AddQty(int delta);                                             // 0x3fa17c
    ItemInstance* Split(int qty);                                       // 0x3fc3e0 new instance of qty, or null when not stackable
    void SetValue(int value);                                           // 0x3fbc58
    void AddPower(int powerId, int variant);                            // 0x3fbc60 variant 1 and 2 pick the _Hard and _VeryHard powers, -1 for none
    void UpdateLocalization();                                          // 0x3fc1b4

    static int GetFontDef(int powerCount);                              // 0x3fa5cc static: the count arrives in r0, this is not read
    int GetFontDef() const;                                             // 0x3fa6cc
    static int GetColor(int powerCount);                                // 0x3fa6dc static (same as GetFontDef(int))
    int GetColor() const;                                               // 0x3fa710

public:
    void _UpdateName();                                                 // 0x3fb754 rebuilds m_name from the row
    void _UpdateStats();                                                // 0x3fb290 rebuilds m_stats from the row
    void _UpdateReqs();                                                 // 0x3facdc rebuilds m_requirements from the row

public:
    // +0x00 vptr (not declared: the vtable pointer is the first word of every virtual class)
    int m_itemId;                                                       // +0x04 index into Arrays::ItemTable; the constructor asserts it is not negative
    std::string m_name;                                                 // +0x08 display name (_UpdateName), 24 bytes in the original
    std::string m_stats;                                                // +0x20 stats line (_UpdateStats), 24 bytes in the original
    std::string m_requirements;                                         // +0x38 requirements line (_UpdateReqs), 24 bytes in the original
    std::int16_t m_qty;                                                 // +0x50 quantity; SetQty, AddQty and Split read it as signed
    std::uint8_t pad_52[2];                                             // +0x52
    int m_value;                                                        // +0x54 value (SetValue); _UpdateName passes it to StringManager::parse
    std::int16_t m_pickUpType;                                          // +0x58 pick-up type override, -1 means use the item row's type
    std::uint8_t pad_5a[2];                                             // +0x5a
    std::vector<PowerInfo> m_powers;                                    // +0x5c begin, +0x60 end, +0x64 capacity (12 bytes in the original)
    bool unk_68;                                                        // +0x68 set to 1 by the constructor; Split copies it to the new instance. Track A calls it identified (unconfirmed)
    bool unk_69;                                                        // +0x69 name: m_buyback (ItemBuyback reads it, game-app f216b6-12). Set to 0 by the constructor
    std::uint8_t pad_6a[2];                                             // +0x6a
};
