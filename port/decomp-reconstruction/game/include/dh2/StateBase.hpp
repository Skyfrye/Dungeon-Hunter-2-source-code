// StateBase: the abstract state that a StateMachine runs. Subclasses (GSInit, GSConsole, GSTest, ...)
// override the lifecycle and frame slots below. It holds no data of its own.
// Original 32-bit size 0x4 (4): the vptr only. Vtable _ZTV9StateBase is 52 bytes: 8 bytes of
// offset-to-top and typeinfo, then 11 slots of 4 bytes (slots +0x00 .. +0x28).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x38324c, 0x3833b0; Ctor 0x383250).
#pragma once

class StateMachine;

class StateBase {
public:
    // Vtable slots, in vtable order. The destructor takes slots +0x00 (D1) and +0x04 (D0).
    virtual ~StateBase();                                           // 0x38324c (D1), 0x3833b0 (D0)

    // Lifecycle and frame slots. Empty in StateBase; subclasses override them.
    virtual void Ctor(const StateMachine* machine);                 // slot +0x08 0x383250
    virtual void Dtor(const StateMachine* machine);                 // slot +0x0c 0x383254
    virtual void Pause(const StateMachine* machine);                // slot +0x10 0x383258
    virtual void Resume(const StateMachine* machine);               // slot +0x14 0x38325c
    virtual void Update(StateMachine* machine, double dt);          // slot +0x18 0x383260
    virtual void Draw(const StateMachine* machine);                 // slot +0x1c 0x383264
    virtual void Draw2D(const StateMachine* machine);               // slot +0x20 0x383268
    virtual void Sleep(const StateMachine* machine);                // slot +0x24 0x38326c
    virtual void WakeUp(const StateMachine* machine);               // slot +0x28 0x383270

    // StateBase occupies +0x00 .. +0x03 (vptr). No other instance data.
};
