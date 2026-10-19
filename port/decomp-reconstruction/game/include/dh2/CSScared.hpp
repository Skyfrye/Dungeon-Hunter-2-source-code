// CSScared: CharState for a character that is scared (fleeing). Entered through CharStateMachine::SM_SetScareState,
// which sets the scare bit that SM_IsScared reads.
// Vtable (_ZTV8CSScared, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// No data members: the bodies touch only the Character and the state machine they are passed. Original 32-bit
// size 0x4 (vtable pointer only), inferred from the absence of members.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3c0028 / 0x3c08f4, OnInit 0x3c861c).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSScared : public CharState {
public:
    ~CSScared() override;                                                                   // slot +0x00: 0x3c0028 (D1), slot +0x04: 0x3c08f4 (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c861c
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int arg5, int arg6, void* data) override;                                  // slot +0x0c: 0x3c45c4
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int arg5) override; // slot +0x10: 0x3c4834
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3c4788
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c2b28
};
