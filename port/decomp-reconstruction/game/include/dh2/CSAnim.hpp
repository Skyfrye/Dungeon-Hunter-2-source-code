// CSAnim: CharState that plays one animation. Stateless: no data members, only the CharState vtable pointer.
// Vtable (_ZTV6CSAnim, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// Original 32-bit size 0x4 (vtable pointer only), inferred from the absence of members in every method body.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3c0050 / 0x3c07bc, OnInit 0x3c8b28).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSAnim : public CharState {
public:
    ~CSAnim() override;                                                                     // slot +0x00: 0x3c0050 (D1), slot +0x04: 0x3c07bc (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c8b28
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int prevState, int eventId, void* data) override;                          // slot +0x0c: 0x3c324c
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int nextState) override;  // slot +0x10: 0x3c2dd0
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3c1a3c
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c1a14
};
