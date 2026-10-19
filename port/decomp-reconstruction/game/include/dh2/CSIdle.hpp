// CSIdle: Idle character state. Default resting state; its update runs the shared IdleCommonUpdate,
// which CSLiftingIdle reuses. Stateless: the object holds no data, only the vtable pointer.
// Original 32-bit size 0x4 (vptr only). Reconstructed from libDungeonHunter2.so pseudocode and the vtable (36 bytes).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSIdle : public CharState {
public:
    ~CSIdle() override;                                                  // slot 0x00 D1 0x3c0000, slot 0x04 D0 0x3c09f8

    // Overrides of CharState slots, in vtable order.
    void OnInit(int eventId, Character* character, CharStateMachine* machine) override;                  // slot 0x08: 0x3c7e60
    void OnFocus(int eventId, Character* character, CharStateMachine* machine, int fromState, int toState, void* data) override;  // slot 0x0c: 0x3c3020
    void OnBlur(int eventId, Character* character, CharStateMachine* machine, int nextState) override;   // slot 0x10: 0x3c2d3c
    void OnUpdate(int eventId, Character* character, CharStateMachine* machine) override;                // slot 0x14: 0x3c0e80
    void OnEvent(int eventId, Character* character, CharStateMachine* machine, int event, void* data) override;  // slot 0x18: 0x3c0004

    // Non-virtual helper, not a vtable slot. Shared update used by OnUpdate and by CSLiftingIdle.
    // static: the original never reads a this. OnUpdate passes eventId in the first argument register. Returns nothing here (see the source row).
    static void IdleCommonUpdate(int eventId, Character* character, CharStateMachine* machine);  // 0x3c0b78
};
