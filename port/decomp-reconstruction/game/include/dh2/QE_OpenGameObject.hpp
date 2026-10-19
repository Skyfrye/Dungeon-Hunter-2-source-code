// QE_OpenGameObject: quest event raised when an interaction opens a container or door (the
// v2QuestObjectiveType "OpenGameObject" constant). It adds no members of its own: the constructing
// code in OpenableContainer::Interact (0x3a1904) writes the QE_InteractWith layout, and its vtable
// slot 0x0c is QE_InteractWith::FillNetworkMsg.
// Original 32-bit size not recovered (no allocation found); the fields end at +0x1c.
// Reconstructed from libDungeonHunter2.so: destructors 0x3a1630 (D1), 0x3a16d4 (D0).
#pragma once

#include "dh2/QE_InteractWith.hpp"

class QE_OpenGameObject : public QE_InteractWith {
public:
    ~QE_OpenGameObject() override;   // 0x3a1630 (D1), 0x3a16d4 (D0); slots 0x00, 0x04
    // FillNetworkMsg (slot 0x0c) is inherited from QE_InteractWith (0x4823c8).
};
