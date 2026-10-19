// CSRevived: Revived character state, entered after a revive. Update and event are no-ops.
// Stateless: the object holds no data, only the vtable pointer. Original 32-bit size 0x4 (vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode and the vtable (36 bytes).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSRevived : public CharState {
public:
    ~CSRevived() override;                                                  // slot 0x00 D1 0x3c0060, slot 0x04 D0 0x3c0754

    // Overrides of CharState slots, in vtable order.
    void OnInit(int eventId, Character* character, CharStateMachine* machine) override;                  // slot 0x08: 0x3c8cec
    void OnFocus(int eventId, Character* character, CharStateMachine* machine, int fromState, int toState, void* data) override;  // slot 0x0c: 0x3c34cc
    void OnBlur(int eventId, Character* character, CharStateMachine* machine, int nextState) override;   // slot 0x10: 0x3c53ec
    void OnUpdate(int eventId, Character* character, CharStateMachine* machine) override;                // slot 0x14: 0x3c0064
    void OnEvent(int eventId, Character* character, CharStateMachine* machine, int event, void* data) override;  // slot 0x18: 0x3c0068
};
