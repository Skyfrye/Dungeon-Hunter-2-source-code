// CharState: the abstract base of the character state objects. The vtable is two header words, a
// destructor pair (D1 at slot 0x00, D0 at slot 0x04) and five pure virtual slots (0x08 to 0x18). Every CS*
// subclass overrides all five with the signatures below: the vtable symbols (_ZTV<class>) of the 20 states
// agree on them. No data members are recovered for this class.
// Original 32-bit vtable size 0x24 (36). Destructor D0 frees the object with CustomFree.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x3bffdc and 0x3c0684).
#pragma once

#include <cstdint>

class Character;
class CharStateMachine;

class CharState {
public:
    virtual ~CharState();                                               // 0x3bffdc (D1), 0x3c0684 (D0)

    // Pure virtual slots, vtable order. Parameter names follow CSAnim; the types come from the binary.
    virtual void OnInit(int stateId, Character* character, CharStateMachine* sm) = 0;                       // +0x08
    virtual void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                         int prevState, int eventId, void* data) = 0;                                       // +0x0c
    virtual void OnBlur(int stateId, Character* character, CharStateMachine* sm, int nextState) = 0;        // +0x10
    virtual void OnUpdate(int stateId, Character* character, CharStateMachine* sm) = 0;                     // +0x14
    virtual void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                         int eventId, void* data) = 0;                                                      // +0x18
};
