// CSLiftingMove: Lifting move character state, registered for the lifting branch of the state machine.
// Stateless: the object holds no data, only the vtable pointer. Original 32-bit size 0x4 (vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode and the vtable (36 bytes).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSLiftingMove : public CharState {
public:
    ~CSLiftingMove() override;                                                  // slot 0x00 D1 0x3c0078, slot 0x04 D0 0x3c06b8

    // Overrides of CharState slots, in vtable order.
    void OnInit(int eventId, Character* character, CharStateMachine* machine) override;                  // slot 0x08: 0x3c8ee0
    void OnFocus(int eventId, Character* character, CharStateMachine* machine, int fromState, int toState, void* data) override;  // slot 0x0c: 0x3c3e40
    void OnBlur(int eventId, Character* character, CharStateMachine* machine, int nextState) override;   // slot 0x10: 0x3c5198
    void OnUpdate(int eventId, Character* character, CharStateMachine* machine) override;                // slot 0x14: 0x3c0ea0
    void OnEvent(int eventId, Character* character, CharStateMachine* machine, int event, void* data) override;  // slot 0x18: 0x3c663c
};
