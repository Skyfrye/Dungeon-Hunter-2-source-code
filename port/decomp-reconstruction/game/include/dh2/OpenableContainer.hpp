// OpenableContainer: a chest that can be locked. Its key is named by the key_name property, needs key_qty items,
// and is consumed when key_consume is set. It counts as locked while its state is PRESPAWN, SPAWN or IDLE and a key
// is set. Original 32-bit size 0x718 (1816), from the operator new in GetNewInstance<OpenableContainer> (game-app
// f216b6-1_objects.cpp). The last member ends at +0x713 (Container is 0x6f0).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3a1cb0 / 0x3a1d2c).
#pragma once

#include <cstdint>
#include <string>

#include "dh2/Container.hpp"

class Character;

class OpenableContainer : public Container {
public:
    explicit OpenableContainer(ObjectBase::GO_IDS id);                  // 0x3a1cb0 (C1) / 0x3a1d2c (C2)
    ~OpenableContainer() override;                                      // 0x3a1bf4 (D1), 0x3a1c48 (D0), 0x3a1c64 (D2)

    // Overrides of Container / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x3a1e8c "key_name", "key_qty", "key_consume"
    void InitPost() override;                                           // slot 0x1c: 0x3a1b64 maps key_name to an Arrays::ItemTable index
    int GetInteractionType(GameObject* other) const override;           // slot 0x90: 0x3a16cc returns 0
    void Interact(GameObject* other) override;                          // slot 0x98: 0x3a1904 tries the lock, then opens the container
    const char* GetScript() const override;                             // slot 0xc8: 0x3a1634
    int GetVisual() const override;                                     // slot 0xcc: 0x3a1670
    int GetDataId() const override;                                     // slot 0xd0: 0x3a1844 index of the data_desc string, -1 when empty
    int GetLoot() const override;                                       // slot 0xd4: 0x3a1804
    int GetSound() const override;                                      // slot 0xd8: 0x3a17c4
    bool KeepPhysics() const override;                                  // slot 0xdc: 0x3a177c

    // ---- non-virtual ----
    bool IsLocked() const;                                              // 0x3a16a8 state is PRESPAWN, SPAWN or IDLE, and m_keyItemIndex is set
    int TryUnlocking(GameObject* other);                                // 0x3a18bc returns 1 when not locked, else the result of Unlock
    int Unlock(Character* character);                                   // 0x3a1860 takes m_keyQty of the key item when the character holds it

    // Container occupies +0x00 .. +0x6ef.
    std::string m_keyName;                                              // +0x6f0 property "key_name" (24 bytes in the original, ends at +0x707)
    std::int32_t m_keyQty;                                              // +0x708 property "key_qty", default 1
    bool m_keyConsume;                                                  // +0x70c property "key_consume", default true
    std::uint8_t pad_70d[3];                                            // +0x70d
    std::int32_t m_keyItemIndex;                                        // +0x710 Arrays::ItemTable index of key_name, -1 when none
};
