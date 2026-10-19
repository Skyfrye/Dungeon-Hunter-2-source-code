// CSPreSpawn: PreSpawn character state, before the character's spawn. Blur makes the actor visible and revives it. Update is a no-op.
// Stateless: the object holds no data, only the vtable pointer. Original 32-bit size 0x4 (vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode and the vtable (36 bytes).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSPreSpawn : public CharState {
public:
    ~CSPreSpawn() override;                                                  // slot 0x00 D1 0x3c006c, slot 0x04 D0 0x3c0720

    // Overrides of CharState slots, in vtable order.
    void OnInit(int eventId, Character* character, CharStateMachine* machine) override;                  // slot 0x08: 0x3c8d24
    void OnFocus(int eventId, Character* character, CharStateMachine* machine, int fromState, int toState, void* data) override;  // slot 0x0c: 0x3c688c
    void OnBlur(int eventId, Character* character, CharStateMachine* machine, int nextState) override;   // slot 0x10: 0x3c67d4
    void OnUpdate(int eventId, Character* character, CharStateMachine* machine) override;                // slot 0x14: 0x3c0070
    void OnEvent(int eventId, Character* character, CharStateMachine* machine, int event, void* data) override;  // slot 0x18: 0x3c2810
};
