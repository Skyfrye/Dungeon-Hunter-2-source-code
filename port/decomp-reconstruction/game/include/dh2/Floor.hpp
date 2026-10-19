// Floor: a static GameObject for floor geometry. InitPost hides its visual and applies the visual's mesh box.
// Original 32-bit size 0x374 (884), the same as GameObject.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor is inlined into GetNewInstance<Floor> 0x34104c).
#pragma once

#include "dh2/GameObject.hpp"

class Floor : public GameObject {
public:
    // No standalone constructor symbol: GetNewInstance<Floor> (0x34104c) runs GameObject(id), sets m_static (+0x84)
    // and stores the primary and secondary vtables.
    explicit Floor(GO_IDS id);

    ~Floor() override;                                                  // slot 0/1: 0x388470 (D1), 0x388e10 (D0)

    // Overrides of GameObject slots, in vtable order.
    void InitPost() override;                                           // slot 0x1c: 0x3886b4 GameObject::InitPost, SetVisible(false), ApplyMeshBox, visual SetVisible(false), node polygon count
    bool IsUpdatable() const override;                                  // slot 0x38: 0x3883e4 false
    bool IsZonable() const override;                                    // slot 0xc4: 0x3883ec false
};
