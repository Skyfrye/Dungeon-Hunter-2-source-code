// Dummy: a GameObject placeholder with no fields of its own. It reports false for update, zoning, animation and
// interaction.
// Original 32-bit size 0x374 (884), the same as GameObject.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor is inlined into GetNewInstance<Dummy> 0x3410a4).
#pragma once

#include "dh2/GameObject.hpp"

class Dummy : public GameObject {
public:
    // No standalone constructor symbol: GetNewInstance<Dummy> (0x3410a4) runs GameObject(id), sets m_static (+0x84)
    // and stores the primary and secondary vtables.
    explicit Dummy(GO_IDS id);

    ~Dummy() override;                                                  // slot 0/1: 0x341184 (D1), 0x341960 (D0)

    // Overrides of GameObject slots, in vtable order.
    bool IsUpdatable() const override;                                  // slot 0x38: 0x340134 false
    bool IsAnimated() const override;                                   // slot 0x80: 0x340144 false
    bool IsInteractive(GameObject* other) const override;               // slot 0x88: 0x34014c false
    bool IsZonable() const override;                                    // slot 0xc4: 0x34013c false
};
