// CSStunned: CharState for a stunned character. Entered through CharStateMachine::SM_SetStunState, which sets the
// stun bit that SM_IsStunned reads. OnEvent is a source no-op (bx lr).
// Vtable (_ZTV9CSStunned, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// No data members: the bodies touch only the Character and the state machine they are passed. Original 32-bit
// size 0x4 (vtable pointer only), inferred from the absence of members.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3c002c / 0x3c08c0, OnInit 0x3c8730).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSStunned : public CharState {
public:
    ~CSStunned() override;                                                                  // slot +0x00: 0x3c002c (D1), slot +0x04: 0x3c08c0 (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c8730
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int arg5, int arg6, void* data) override;                                  // slot +0x0c: 0x3c3cc0
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int arg5) override; // slot +0x10: 0x3c3b4c
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3c549c
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c0030 (no-op)
};
