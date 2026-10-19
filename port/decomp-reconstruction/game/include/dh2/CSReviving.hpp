// CSReviving: CharState for a character being revived. Entered through CharStateMachine::SM_SetRevivingState.
// Vtable (_ZTV10CSReviving, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// OnUpdate and OnEvent are source no-ops (bx lr). No data members: the bodies touch only the Character and the
// state machine they are passed. Original 32-bit size 0x4 (vtable pointer only), inferred from the absence of members.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3c0054 / 0x3c0788, OnInit 0x3c8b8c).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSReviving : public CharState {
public:
    ~CSReviving() override;                                                                 // slot +0x00: 0x3c0054 (D1), slot +0x04: 0x3c0788 (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c8b8c
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int arg5, int arg6, void* data) override;                                  // slot +0x0c: 0x3c5294
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int arg5) override; // slot +0x10: 0x3c6724
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3c0058 (no-op)
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c005c (no-op)
};
