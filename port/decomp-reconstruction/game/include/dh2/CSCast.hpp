// CSCast: CharState for casting a spell. Its focus clears the animation and cancels sneaking (Track A notes).
// OnUpdate and OnEvent are source no-ops. Stateless: no data members, only the CharState vtable pointer.
// Vtable (_ZTV6CSCast, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// Original 32-bit size 0x4 (vtable pointer only), inferred from the absence of members in every method body.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3c001c / 0x3c0928, OnInit 0x3c85b8).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSCast : public CharState {
public:
    ~CSCast() override;                                                                     // slot +0x00: 0x3c001c (D1), slot +0x04: 0x3c0928 (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c85b8
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int prevState, int eventId, void* data) override;                          // slot +0x0c: 0x3c39d0
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int nextState) override;  // slot +0x10: 0x3c3934
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3c0020 (no-op)
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c0024 (no-op)
};
