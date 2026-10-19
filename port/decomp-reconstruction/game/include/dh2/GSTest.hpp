// GSTest: debug state. Update runs the Lua test script "data/scripts/test" when the first gamepad's
// trigger is pressed past half. Draw is empty.
// Original 32-bit size not recovered (no operator new size in class-facts); the ctor only sets the vptr.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x386a5c, 0x386a80).
#pragma once

#include "dh2/StateBase.hpp"

class StateMachine;

class GSTest : public StateBase {
public:
    GSTest();                                                       // 0x386a5c / 0x386a80
    ~GSTest() override;                                             // 0x386aa4, 0x386aa8 (D2/D1), 0x386b4c (D0)

    // Overrides of StateBase slots, in vtable order. Slots +0x10 .. +0x28 (Pause, Resume, Draw2D,
    // Sleep, WakeUp) are inherited unchanged.
    void Ctor(const StateMachine* machine) override;                // slot 0x08: 0x386aac empty
    void Dtor(const StateMachine* machine) override;                // slot 0x0c: 0x386ab0 empty
    void Update(StateMachine* machine, double dt) override;         // slot 0x18: 0x386f90
    void Draw(const StateMachine* machine) override;                // slot 0x1c: 0x386adc empty

    // StateBase occupies +0x00 .. +0x03 (vptr). No other instance data is touched.
};
