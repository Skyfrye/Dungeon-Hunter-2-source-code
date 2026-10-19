// CSAttack: CharState for an attack. Its focus picks the moving or static attack animation table (Track A notes).
// Stateless: no data members, only the CharState vtable pointer.
// Vtable (_ZTV8CSAttack, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// Original 32-bit size 0x4 (vtable pointer only), inferred from the absence of members in every method body.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3c0010 / 0x3c0990, OnInit 0x3c8284).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSAttack : public CharState {
public:
    ~CSAttack() override;                                                                   // slot +0x00: 0x3c0010 (D1), slot +0x04: 0x3c0990 (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c8284
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int prevState, int eventId, void* data) override;                          // slot +0x0c: 0x3c404c
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int nextState) override;  // slot +0x10: 0x3c3f74
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3c14f8
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c1288
};
