// CSMove: Move character state. Focus selects the move animation type; blur stops the actor.
// Stateless: the object holds no data, only the vtable pointer. Original 32-bit size 0x4 (vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode and the vtable (36 bytes).
//
// The five non-destructor methods are CharState vtable slots 0x08..0x18, overridden below.
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSMove : public CharState {
public:
    ~CSMove() override;                                                  // slot 0x00 D1 0x3c0008, slot 0x04 D0 0x3c09c4

    // Overrides of CharState slots, in vtable order. The parameter names follow CSAnim's slot signatures; OnFocus's
    // trailing arguments and OnEvent's are not read by the bodies.
    void OnInit(int stateId, Character* character, CharStateMachine* machine) override;                         // slot 0x08: 0x3c80ac
    void OnFocus(int stateId, Character* character, CharStateMachine* machine,
                 int prevState, int eventId, void* data) override;                                              // slot 0x0c: 0x3c3bf8
    void OnBlur(int stateId, Character* character, CharStateMachine* machine, int nextState) override;          // slot 0x10: 0x3c3aa4
    void OnUpdate(int stateId, Character* character, CharStateMachine* machine) override;                       // slot 0x14: 0x3c1184
    void OnEvent(int stateId, Character* character, CharStateMachine* machine, int eventId, void* data) override; // slot 0x18: 0x3c000c

    // Non-virtual helper, not a vtable slot. Returns nothing: the original's int result is never read by the
    // callers in this class (OnUpdate and OnFocus both discard it).
    void UpdateType(Character* character, CharStateMachine* machine);  // 0x3c0f18
};
