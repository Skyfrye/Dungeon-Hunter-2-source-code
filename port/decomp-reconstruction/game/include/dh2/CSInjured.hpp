// CSInjured: Injured character state. Focus sets the injured state flags and cancels sneaking. Blur orders the
// controller (Character +0x378) to look at CharAI::m_target (Character +0x408); blur has no null check (asm 0x3c4ba4).
// Stateless: the object holds no data, only the vtable pointer. Original 32-bit size 0x4 (vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode and the vtable (36 bytes).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSInjured : public CharState {
public:
    ~CSInjured() override;                                               // slot 0x00 D1 0x3c003c, slot 0x04 D0 0x3c0858

    // Overrides of CharState slots, in vtable order.
    void OnInit(int eventId, Character* character, CharStateMachine* machine) override;                  // slot 0x08: 0x3c8850
    void OnFocus(int eventId, Character* character, CharStateMachine* machine, int fromState, int toState, void* data) override;  // slot 0x0c: 0x3c33e8
    void OnBlur(int eventId, Character* character, CharStateMachine* machine, int nextState) override;   // slot 0x10: 0x3c4ba4
    void OnUpdate(int eventId, Character* character, CharStateMachine* machine) override;                // slot 0x14: 0x3c0040
    void OnEvent(int eventId, Character* character, CharStateMachine* machine, int event, void* data) override;  // slot 0x18: 0x3c0044
};
