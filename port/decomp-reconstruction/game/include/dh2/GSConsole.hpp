// GSConsole: the state that shows the debug console over the running game. It holds no data of its own;
// it forwards Ctor, Dtor, Update and Draw to the global Console object (Application::m_console, dword_99F774)
// and toggles it. Static instance: GSConsole::s_inst (0x9a244c, .bss, 4 bytes).
// Original 32-bit size 0x4 (4): the StateBase vtable pointer only (the ctor writes nothing else).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x383274, vtable _ZTV9GSConsole).
// Partial: only Draw2D waits on a member that is not declared (the object at glitch::IDevice +0x18 and its vtable
// slot +0x0c; see the note in game-app/src/g1-game-app-GSConsole-adb367-0.cpp). Ctor, Dtor and Update are written
// (Console::open_ is public in core-platform/w7_console_01.hpp). Toggle is reconstructed (redo: StateMachine::m_stack
// is public). Pause, Resume, Sleep and WakeUp are inherited StateBase slots +0x10, +0x14, +0x24 and +0x28 and are not
// redeclared here.
#pragma once

#include "dh2/StateBase.hpp"

class StateMachine;

class GSConsole : public StateBase {
public:
    GSConsole();                                                    // 0x383274 (C2) / 0x383298 (C1)
    ~GSConsole() override;                                          // slot +0x00 0x3832c0 (D1), slot +0x04 0x383394 (D0, deleting); 0x3832bc (D2)

    // Overrides of StateBase slots, in vtable order.
    void Ctor(const StateMachine* machine) override;                // slot +0x08 0x383360: toggles the console open when it is closed
    void Dtor(const StateMachine* machine) override;                // slot +0x0c 0x38332c: toggles the console closed when it is open
    void Update(StateMachine* machine, double dt) override;         // slot +0x18 0x383304: forwards to Console::Update
    void Draw(const StateMachine* machine) override;                // slot +0x1c 0x3832fc: StateMachine::RecurseDraw
    void Draw2D(const StateMachine* machine) override;              // slot +0x20 0x3832c4: calls slot +0x0c of the object at IDevice +0x18 (not modelled)

    void Toggle();                                                  // 0x3833e4

    static GSConsole s_inst;                                        // GSConsole::s_inst, 0x9a244c; pushed and popped by Toggle
};
