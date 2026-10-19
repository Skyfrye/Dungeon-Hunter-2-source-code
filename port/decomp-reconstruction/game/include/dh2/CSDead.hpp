// CSDead: CharState for a dead character. Its focus runs the dead-focus prelude (debug tracing switch, per Track A).
// Stateless: no data members, only the CharState vtable pointer.
// Vtable (_ZTV6CSDead, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// Original 32-bit size 0x4 (vtable pointer only), inferred from the absence of members in every method body.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3c0048 / 0x3c0824, OnInit 0x3c8920).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSDead : public CharState {
public:
    ~CSDead() override;                                                                     // slot +0x00: 0x3c0048 (D1), slot +0x04: 0x3c0824 (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c8920
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int prevState, int eventId, void* data) override;                          // slot +0x0c: 0x3c4d50
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int nextState) override;  // slot +0x10: 0x3c499c
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3c004c (no-op)
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c4c3c
};
